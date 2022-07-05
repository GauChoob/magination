SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    ldh [rDIV], a                                 ; $4000: $E0 $04
    ld a, [hl-]                                   ; $4002: $3A
    rlca                                          ; $4003: $07
    ldh [$FC], a                                  ; $4004: $E0 $FC
    add hl, sp                                    ; $4006: $39
    rlca                                          ; $4007: $07
    ldh [$F4], a                                  ; $4008: $E0 $F4
    jr c, jr_00E_4013                             ; $400A: $38 $07

    add sp, $04                                   ; $400C: $E8 $04
    dec a                                         ; $400E: $3D
    rlca                                          ; $400F: $07
    add sp, -$04                                  ; $4010: $E8 $FC
    inc a                                         ; $4012: $3C

jr_00E_4013:
    rlca                                          ; $4013: $07
    add sp, -$0C                                  ; $4014: $E8 $F4
    dec sp                                        ; $4016: $3B
    rlca                                          ; $4017: $07
    ldh a, [$FC]                                  ; $4018: $F0 $FC
    ccf                                           ; $401A: $3F
    rlca                                          ; $401B: $07
    ldh a, [$F4]                                  ; $401C: $F0 $F4
    ld a, $07                                     ; $401E: $3E $07
    ldh a, [rDIV]                                 ; $4020: $F0 $04
    ld b, b                                       ; $4022: $40
    rlca                                          ; $4023: $07
    ld hl, sp+$04                                 ; $4024: $F8 $04
    ld b, e                                       ; $4026: $43
    rlca                                          ; $4027: $07
    ld hl, sp-$04                                 ; $4028: $F8 $FC
    ld b, d                                       ; $402A: $42
    rlca                                          ; $402B: $07
    ld hl, sp-$0C                                 ; $402C: $F8 $F4
    ld b, c                                       ; $402E: $41
    rlca                                          ; $402F: $07
    nop                                           ; $4030: $00
    inc b                                         ; $4031: $04
    ld b, [hl]                                    ; $4032: $46
    rlca                                          ; $4033: $07
    nop                                           ; $4034: $00
    db $FC                                        ; $4035: $FC
    ld b, l                                       ; $4036: $45
    rlca                                          ; $4037: $07
    nop                                           ; $4038: $00
    db $F4                                        ; $4039: $F4
    ld b, h                                       ; $403A: $44
    rlca                                          ; $403B: $07
    add b                                         ; $403C: $80
    ldh [$F4], a                                  ; $403D: $E0 $F4
    ld a, [hl-]                                   ; $403F: $3A
    daa                                           ; $4040: $27
    ldh [$FC], a                                  ; $4041: $E0 $FC
    add hl, sp                                    ; $4043: $39
    daa                                           ; $4044: $27
    ldh [rDIV], a                                 ; $4045: $E0 $04
    jr c, jr_00E_4070                             ; $4047: $38 $27

    add sp, -$0C                                  ; $4049: $E8 $F4
    dec a                                         ; $404B: $3D
    daa                                           ; $404C: $27
    add sp, -$04                                  ; $404D: $E8 $FC
    inc a                                         ; $404F: $3C
    daa                                           ; $4050: $27
    add sp, $04                                   ; $4051: $E8 $04
    dec sp                                        ; $4053: $3B
    daa                                           ; $4054: $27
    ldh a, [$FC]                                  ; $4055: $F0 $FC
    ccf                                           ; $4057: $3F
    daa                                           ; $4058: $27
    ldh a, [rDIV]                                 ; $4059: $F0 $04
    ld a, $27                                     ; $405B: $3E $27
    ldh a, [$F4]                                  ; $405D: $F0 $F4
    ld b, b                                       ; $405F: $40
    daa                                           ; $4060: $27
    ld hl, sp-$0C                                 ; $4061: $F8 $F4
    ld b, e                                       ; $4063: $43
    daa                                           ; $4064: $27
    ld hl, sp-$04                                 ; $4065: $F8 $FC
    ld b, d                                       ; $4067: $42
    daa                                           ; $4068: $27
    ld hl, sp+$04                                 ; $4069: $F8 $04
    ld b, c                                       ; $406B: $41
    daa                                           ; $406C: $27
    nop                                           ; $406D: $00
    db $F4                                        ; $406E: $F4
    ld b, [hl]                                    ; $406F: $46

jr_00E_4070:
    daa                                           ; $4070: $27
    nop                                           ; $4071: $00
    db $FC                                        ; $4072: $FC
    ld b, l                                       ; $4073: $45
    daa                                           ; $4074: $27
    nop                                           ; $4075: $00
    inc b                                         ; $4076: $04
    ld b, h                                       ; $4077: $44
    daa                                           ; $4078: $27
    add b                                         ; $4079: $80
    nop                                           ; $407A: $00
    inc b                                         ; $407B: $04
    ld [de], a                                    ; $407C: $12
    rlca                                          ; $407D: $07
    nop                                           ; $407E: $00
    db $FC                                        ; $407F: $FC
    ld de, $0007                                  ; $4080: $11 $07 $00
    db $F4                                        ; $4083: $F4
    stop                                          ; $4084: $10 $00
    ld hl, sp+$04                                 ; $4086: $F8 $04
    rrca                                          ; $4088: $0F
    rlca                                          ; $4089: $07
    ld hl, sp-$04                                 ; $408A: $F8 $FC
    ld c, $07                                     ; $408C: $0E $07
    ld hl, sp-$0C                                 ; $408E: $F8 $F4
    dec c                                         ; $4090: $0D
    rlca                                          ; $4091: $07
    ldh a, [rDIV]                                 ; $4092: $F0 $04
    inc c                                         ; $4094: $0C
    rlca                                          ; $4095: $07
    ldh a, [$FC]                                  ; $4096: $F0 $FC
    dec bc                                        ; $4098: $0B
    rlca                                          ; $4099: $07
    ldh a, [$F4]                                  ; $409A: $F0 $F4
    ld a, [bc]                                    ; $409C: $0A
    rlca                                          ; $409D: $07
    jp hl                                         ; $409E: $E9


    inc b                                         ; $409F: $04
    ld [bc], a                                    ; $40A0: $02
    daa                                           ; $40A1: $27
    jp hl                                         ; $40A2: $E9


    db $FC                                        ; $40A3: $FC
    inc bc                                        ; $40A4: $03
    rlca                                          ; $40A5: $07
    jp hl                                         ; $40A6: $E9


    db $F4                                        ; $40A7: $F4
    ld [bc], a                                    ; $40A8: $02
    rlca                                          ; $40A9: $07
    pop hl                                        ; $40AA: $E1
    inc b                                         ; $40AB: $04
    nop                                           ; $40AC: $00
    daa                                           ; $40AD: $27
    pop hl                                        ; $40AE: $E1
    db $FC                                        ; $40AF: $FC
    ld bc, $E107                                  ; $40B0: $01 $07 $E1
    db $F4                                        ; $40B3: $F4
    nop                                           ; $40B4: $00
    rlca                                          ; $40B5: $07
    add b                                         ; $40B6: $80
    nop                                           ; $40B7: $00
    inc b                                         ; $40B8: $04
    ld [$0027], sp                                ; $40B9: $08 $27 $00
    db $FC                                        ; $40BC: $FC
    add hl, bc                                    ; $40BD: $09
    rlca                                          ; $40BE: $07
    nop                                           ; $40BF: $00
    db $F4                                        ; $40C0: $F4
    ld [$F807], sp                                ; $40C1: $08 $07 $F8
    inc b                                         ; $40C4: $04
    ld b, $27                                     ; $40C5: $06 $27
    ld hl, sp-$04                                 ; $40C7: $F8 $FC
    rlca                                          ; $40C9: $07
    rlca                                          ; $40CA: $07
    ld hl, sp-$0C                                 ; $40CB: $F8 $F4
    ld b, $07                                     ; $40CD: $06 $07
    ldh a, [rDIV]                                 ; $40CF: $F0 $04
    inc b                                         ; $40D1: $04
    daa                                           ; $40D2: $27
    ldh a, [$FC]                                  ; $40D3: $F0 $FC
    dec b                                         ; $40D5: $05
    rlca                                          ; $40D6: $07
    ldh a, [$F4]                                  ; $40D7: $F0 $F4
    inc b                                         ; $40D9: $04
    rlca                                          ; $40DA: $07
    add sp, $04                                   ; $40DB: $E8 $04
    ld [bc], a                                    ; $40DD: $02
    daa                                           ; $40DE: $27
    add sp, -$04                                  ; $40DF: $E8 $FC
    inc bc                                        ; $40E1: $03
    rlca                                          ; $40E2: $07
    add sp, -$0C                                  ; $40E3: $E8 $F4
    ld [bc], a                                    ; $40E5: $02
    rlca                                          ; $40E6: $07
    ldh [rDIV], a                                 ; $40E7: $E0 $04
    nop                                           ; $40E9: $00
    daa                                           ; $40EA: $27
    ldh [$FC], a                                  ; $40EB: $E0 $FC
    ld bc, $E007                                  ; $40ED: $01 $07 $E0
    db $F4                                        ; $40F0: $F4
    nop                                           ; $40F1: $00
    rlca                                          ; $40F2: $07
    add b                                         ; $40F3: $80
    nop                                           ; $40F4: $00
    db $F4                                        ; $40F5: $F4
    ld [de], a                                    ; $40F6: $12
    daa                                           ; $40F7: $27
    nop                                           ; $40F8: $00

jr_00E_40F9:
    db $FC                                        ; $40F9: $FC
    ld de, $0027                                  ; $40FA: $11 $27 $00
    inc b                                         ; $40FD: $04
    db $10                                        ; $40FE: $10
    jr nz, jr_00E_40F9                            ; $40FF: $20 $F8

    db $F4                                        ; $4101: $F4
    rrca                                          ; $4102: $0F
    daa                                           ; $4103: $27
    ld hl, sp-$04                                 ; $4104: $F8 $FC
    ld c, $27                                     ; $4106: $0E $27
    ld hl, sp+$04                                 ; $4108: $F8 $04
    dec c                                         ; $410A: $0D
    daa                                           ; $410B: $27
    ldh a, [$F4]                                  ; $410C: $F0 $F4
    inc c                                         ; $410E: $0C
    daa                                           ; $410F: $27
    ldh a, [$FC]                                  ; $4110: $F0 $FC
    dec bc                                        ; $4112: $0B
    daa                                           ; $4113: $27
    ldh a, [rDIV]                                 ; $4114: $F0 $04
    ld a, [bc]                                    ; $4116: $0A
    daa                                           ; $4117: $27
    jp hl                                         ; $4118: $E9


    inc b                                         ; $4119: $04
    ld [bc], a                                    ; $411A: $02
    daa                                           ; $411B: $27
    jp hl                                         ; $411C: $E9


    db $FC                                        ; $411D: $FC
    inc bc                                        ; $411E: $03
    rlca                                          ; $411F: $07
    jp hl                                         ; $4120: $E9


    db $F4                                        ; $4121: $F4
    ld [bc], a                                    ; $4122: $02
    rlca                                          ; $4123: $07
    pop hl                                        ; $4124: $E1
    inc b                                         ; $4125: $04
    nop                                           ; $4126: $00
    daa                                           ; $4127: $27
    pop hl                                        ; $4128: $E1
    db $FC                                        ; $4129: $FC
    ld bc, $E107                                  ; $412A: $01 $07 $E1
    db $F4                                        ; $412D: $F4
    nop                                           ; $412E: $00
    rlca                                          ; $412F: $07
    add b                                         ; $4130: $80
    nop                                           ; $4131: $00
    inc b                                         ; $4132: $04
    ld hl, $0007                                  ; $4133: $21 $07 $00
    db $FC                                        ; $4136: $FC
    jr nz, @+$09                                  ; $4137: $20 $07

    nop                                           ; $4139: $00
    db $F4                                        ; $413A: $F4
    rra                                           ; $413B: $1F
    rlca                                          ; $413C: $07
    ld hl, sp-$04                                 ; $413D: $F8 $FC
    jr jr_00E_4148                                ; $413F: $18 $07

    ld hl, sp+$04                                 ; $4141: $F8 $04
    add hl, de                                    ; $4143: $19
    daa                                           ; $4144: $27
    ld hl, sp-$0C                                 ; $4145: $F8 $F4
    add hl, de                                    ; $4147: $19

jr_00E_4148:
    rlca                                          ; $4148: $07
    pop af                                        ; $4149: $F1
    inc b                                         ; $414A: $04
    rla                                           ; $414B: $17
    daa                                           ; $414C: $27
    pop af                                        ; $414D: $F1
    db $FC                                        ; $414E: $FC
    jr jr_00E_4158                                ; $414F: $18 $07

    pop af                                        ; $4151: $F1
    db $F4                                        ; $4152: $F4
    rla                                           ; $4153: $17
    rlca                                          ; $4154: $07
    jp hl                                         ; $4155: $E9


    inc b                                         ; $4156: $04
    dec d                                         ; $4157: $15

jr_00E_4158:
    daa                                           ; $4158: $27
    jp hl                                         ; $4159: $E9


    db $FC                                        ; $415A: $FC
    ld d, $07                                     ; $415B: $16 $07
    jp hl                                         ; $415D: $E9


    db $F4                                        ; $415E: $F4
    dec d                                         ; $415F: $15
    rlca                                          ; $4160: $07
    pop hl                                        ; $4161: $E1
    inc b                                         ; $4162: $04
    inc de                                        ; $4163: $13
    daa                                           ; $4164: $27
    pop hl                                        ; $4165: $E1
    db $FC                                        ; $4166: $FC
    inc d                                         ; $4167: $14
    rlca                                          ; $4168: $07
    pop hl                                        ; $4169: $E1
    db $F4                                        ; $416A: $F4
    inc de                                        ; $416B: $13
    rlca                                          ; $416C: $07
    add b                                         ; $416D: $80
    ld hl, sp-$04                                 ; $416E: $F8 $FC
    jr jr_00E_4179                                ; $4170: $18 $07

    ld hl, sp+$04                                 ; $4172: $F8 $04
    add hl, de                                    ; $4174: $19
    daa                                           ; $4175: $27
    ld hl, sp-$0C                                 ; $4176: $F8 $F4
    add hl, de                                    ; $4178: $19

jr_00E_4179:
    rlca                                          ; $4179: $07
    nop                                           ; $417A: $00
    inc b                                         ; $417B: $04
    ld a, [de]                                    ; $417C: $1A
    daa                                           ; $417D: $27
    nop                                           ; $417E: $00
    db $FC                                        ; $417F: $FC
    dec de                                        ; $4180: $1B
    rlca                                          ; $4181: $07
    nop                                           ; $4182: $00
    db $F4                                        ; $4183: $F4
    ld a, [de]                                    ; $4184: $1A
    rlca                                          ; $4185: $07
    ldh a, [rDIV]                                 ; $4186: $F0 $04
    rla                                           ; $4188: $17
    daa                                           ; $4189: $27
    ldh a, [$FC]                                  ; $418A: $F0 $FC
    jr jr_00E_4195                                ; $418C: $18 $07

    ldh a, [$F4]                                  ; $418E: $F0 $F4
    rla                                           ; $4190: $17
    rlca                                          ; $4191: $07
    add sp, $04                                   ; $4192: $E8 $04
    dec d                                         ; $4194: $15

jr_00E_4195:
    daa                                           ; $4195: $27
    add sp, -$04                                  ; $4196: $E8 $FC
    ld d, $07                                     ; $4198: $16 $07
    add sp, -$0C                                  ; $419A: $E8 $F4
    dec d                                         ; $419C: $15
    rlca                                          ; $419D: $07
    ldh [rDIV], a                                 ; $419E: $E0 $04
    inc de                                        ; $41A0: $13
    daa                                           ; $41A1: $27
    ldh [$FC], a                                  ; $41A2: $E0 $FC
    inc d                                         ; $41A4: $14
    rlca                                          ; $41A5: $07
    ldh [$F4], a                                  ; $41A6: $E0 $F4
    inc de                                        ; $41A8: $13
    rlca                                          ; $41A9: $07
    add b                                         ; $41AA: $80
    nop                                           ; $41AB: $00
    db $F4                                        ; $41AC: $F4
    ld hl, $0027                                  ; $41AD: $21 $27 $00
    db $FC                                        ; $41B0: $FC
    jr nz, jr_00E_41DA                            ; $41B1: $20 $27

    nop                                           ; $41B3: $00
    inc b                                         ; $41B4: $04
    rra                                           ; $41B5: $1F
    daa                                           ; $41B6: $27
    ld hl, sp-$04                                 ; $41B7: $F8 $FC
    jr jr_00E_41E2                                ; $41B9: $18 $27

    ld hl, sp-$0C                                 ; $41BB: $F8 $F4
    add hl, de                                    ; $41BD: $19
    rlca                                          ; $41BE: $07
    ld hl, sp+$04                                 ; $41BF: $F8 $04
    add hl, de                                    ; $41C1: $19
    daa                                           ; $41C2: $27
    pop af                                        ; $41C3: $F1
    inc b                                         ; $41C4: $04
    rla                                           ; $41C5: $17
    daa                                           ; $41C6: $27
    pop af                                        ; $41C7: $F1
    db $FC                                        ; $41C8: $FC
    jr jr_00E_41D2                                ; $41C9: $18 $07

    pop af                                        ; $41CB: $F1
    db $F4                                        ; $41CC: $F4
    rla                                           ; $41CD: $17
    rlca                                          ; $41CE: $07
    jp hl                                         ; $41CF: $E9


    inc b                                         ; $41D0: $04
    dec d                                         ; $41D1: $15

jr_00E_41D2:
    daa                                           ; $41D2: $27
    jp hl                                         ; $41D3: $E9


    db $FC                                        ; $41D4: $FC
    ld d, $07                                     ; $41D5: $16 $07
    jp hl                                         ; $41D7: $E9


    db $F4                                        ; $41D8: $F4
    dec d                                         ; $41D9: $15

jr_00E_41DA:
    rlca                                          ; $41DA: $07
    pop hl                                        ; $41DB: $E1
    inc b                                         ; $41DC: $04
    inc de                                        ; $41DD: $13
    daa                                           ; $41DE: $27
    pop hl                                        ; $41DF: $E1
    db $FC                                        ; $41E0: $FC
    inc d                                         ; $41E1: $14

jr_00E_41E2:
    rlca                                          ; $41E2: $07
    pop hl                                        ; $41E3: $E1
    db $F4                                        ; $41E4: $F4
    inc de                                        ; $41E5: $13
    rlca                                          ; $41E6: $07
    add b                                         ; $41E7: $80
    ldh a, [rP1]                                  ; $41E8: $F0 $00
    inc hl                                        ; $41EA: $23
    rlca                                          ; $41EB: $07
    ldh a, [$F8]                                  ; $41EC: $F0 $F8
    ld [hl+], a                                   ; $41EE: $22
    rlca                                          ; $41EF: $07
    ld hl, sp+$00                                 ; $41F0: $F8 $00
    dec h                                         ; $41F2: $25
    rlca                                          ; $41F3: $07
    ld hl, sp-$08                                 ; $41F4: $F8 $F8
    inc h                                         ; $41F6: $24
    rlca                                          ; $41F7: $07
    nop                                           ; $41F8: $00
    nop                                           ; $41F9: $00
    daa                                           ; $41FA: $27
    rlca                                          ; $41FB: $07
    nop                                           ; $41FC: $00
    ld hl, sp+$26                                 ; $41FD: $F8 $26
    rlca                                          ; $41FF: $07
    jp hl                                         ; $4200: $E9


    nop                                           ; $4201: $00
    dec hl                                        ; $4202: $2B
    rlca                                          ; $4203: $07
    jp hl                                         ; $4204: $E9


    ld hl, sp+$2A                                 ; $4205: $F8 $2A
    rlca                                          ; $4207: $07
    pop hl                                        ; $4208: $E1
    nop                                           ; $4209: $00
    add hl, hl                                    ; $420A: $29
    rlca                                          ; $420B: $07
    pop hl                                        ; $420C: $E1
    ld hl, sp+$28                                 ; $420D: $F8 $28
    rlca                                          ; $420F: $07
    add b                                         ; $4210: $80
    nop                                           ; $4211: $00
    nop                                           ; $4212: $00
    ld sp, $0007                                  ; $4213: $31 $07 $00
    ld hl, sp+$30                                 ; $4216: $F8 $30
    rlca                                          ; $4218: $07
    ld hl, sp+$00                                 ; $4219: $F8 $00
    cpl                                           ; $421B: $2F
    rlca                                          ; $421C: $07
    ld hl, sp-$08                                 ; $421D: $F8 $F8
    ld l, $07                                     ; $421F: $2E $07
    ldh a, [rP1]                                  ; $4221: $F0 $00
    dec l                                         ; $4223: $2D
    rlca                                          ; $4224: $07
    ldh a, [$F8]                                  ; $4225: $F0 $F8
    inc l                                         ; $4227: $2C
    rlca                                          ; $4228: $07
    add sp, $00                                   ; $4229: $E8 $00
    dec hl                                        ; $422B: $2B
    rlca                                          ; $422C: $07
    add sp, -$08                                  ; $422D: $E8 $F8
    ld a, [hl+]                                   ; $422F: $2A
    rlca                                          ; $4230: $07
    ldh [rP1], a                                  ; $4231: $E0 $00
    add hl, hl                                    ; $4233: $29
    rlca                                          ; $4234: $07
    ldh [$F8], a                                  ; $4235: $E0 $F8
    jr z, @+$09                                   ; $4237: $28 $07

    add b                                         ; $4239: $80
    nop                                           ; $423A: $00
    nop                                           ; $423B: $00
    scf                                           ; $423C: $37
    rlca                                          ; $423D: $07
    nop                                           ; $423E: $00
    ld hl, sp+$36                                 ; $423F: $F8 $36
    rlca                                          ; $4241: $07
    ld hl, sp+$00                                 ; $4242: $F8 $00
    dec [hl]                                      ; $4244: $35
    rlca                                          ; $4245: $07
    ld hl, sp-$08                                 ; $4246: $F8 $F8
    inc [hl]                                      ; $4248: $34
    rlca                                          ; $4249: $07
    ldh a, [rP1]                                  ; $424A: $F0 $00
    inc sp                                        ; $424C: $33
    rlca                                          ; $424D: $07
    ldh a, [$F8]                                  ; $424E: $F0 $F8
    ld [hl-], a                                   ; $4250: $32
    rlca                                          ; $4251: $07
    jp hl                                         ; $4252: $E9


    nop                                           ; $4253: $00
    dec hl                                        ; $4254: $2B
    rlca                                          ; $4255: $07
    jp hl                                         ; $4256: $E9


    ld hl, sp+$2A                                 ; $4257: $F8 $2A
    rlca                                          ; $4259: $07
    pop hl                                        ; $425A: $E1
    nop                                           ; $425B: $00
    add hl, hl                                    ; $425C: $29
    rlca                                          ; $425D: $07
    pop hl                                        ; $425E: $E1
    ld hl, sp+$28                                 ; $425F: $F8 $28
    rlca                                          ; $4261: $07
    add b                                         ; $4262: $80
    ldh a, [$F9]                                  ; $4263: $F0 $F9
    inc hl                                        ; $4265: $23
    daa                                           ; $4266: $27
    ldh a, [rSB]                                  ; $4267: $F0 $01
    ld [hl+], a                                   ; $4269: $22
    daa                                           ; $426A: $27
    ld hl, sp-$07                                 ; $426B: $F8 $F9
    dec h                                         ; $426D: $25
    daa                                           ; $426E: $27
    ld hl, sp+$01                                 ; $426F: $F8 $01
    inc h                                         ; $4271: $24
    daa                                           ; $4272: $27
    nop                                           ; $4273: $00
    ld sp, hl                                     ; $4274: $F9
    daa                                           ; $4275: $27
    daa                                           ; $4276: $27
    nop                                           ; $4277: $00
    ld bc, $2726                                  ; $4278: $01 $26 $27
    jp hl                                         ; $427B: $E9


    ld sp, hl                                     ; $427C: $F9
    dec hl                                        ; $427D: $2B
    daa                                           ; $427E: $27
    jp hl                                         ; $427F: $E9


    ld bc, $272A                                  ; $4280: $01 $2A $27
    pop hl                                        ; $4283: $E1
    ld sp, hl                                     ; $4284: $F9
    add hl, hl                                    ; $4285: $29
    daa                                           ; $4286: $27
    pop hl                                        ; $4287: $E1
    ld bc, $2728                                  ; $4288: $01 $28 $27
    add b                                         ; $428B: $80
    nop                                           ; $428C: $00
    ld sp, hl                                     ; $428D: $F9
    ld sp, $0027                                  ; $428E: $31 $27 $00
    ld bc, $2730                                  ; $4291: $01 $30 $27
    ld hl, sp-$07                                 ; $4294: $F8 $F9
    cpl                                           ; $4296: $2F
    daa                                           ; $4297: $27
    ld hl, sp+$01                                 ; $4298: $F8 $01
    ld l, $27                                     ; $429A: $2E $27
    ldh a, [$F9]                                  ; $429C: $F0 $F9
    dec l                                         ; $429E: $2D
    daa                                           ; $429F: $27
    ldh a, [rSB]                                  ; $42A0: $F0 $01
    inc l                                         ; $42A2: $2C
    daa                                           ; $42A3: $27
    add sp, -$07                                  ; $42A4: $E8 $F9
    dec hl                                        ; $42A6: $2B
    daa                                           ; $42A7: $27
    add sp, $01                                   ; $42A8: $E8 $01
    ld a, [hl+]                                   ; $42AA: $2A
    daa                                           ; $42AB: $27
    ldh [$F9], a                                  ; $42AC: $E0 $F9
    add hl, hl                                    ; $42AE: $29
    daa                                           ; $42AF: $27
    ldh [rSB], a                                  ; $42B0: $E0 $01
    jr z, @+$29                                   ; $42B2: $28 $27

    add b                                         ; $42B4: $80
    nop                                           ; $42B5: $00
    ld sp, hl                                     ; $42B6: $F9
    scf                                           ; $42B7: $37
    daa                                           ; $42B8: $27
    nop                                           ; $42B9: $00
    ld bc, $2736                                  ; $42BA: $01 $36 $27
    ld hl, sp-$07                                 ; $42BD: $F8 $F9
    dec [hl]                                      ; $42BF: $35
    daa                                           ; $42C0: $27
    ld hl, sp+$01                                 ; $42C1: $F8 $01
    inc [hl]                                      ; $42C3: $34
    daa                                           ; $42C4: $27
    ldh a, [$F9]                                  ; $42C5: $F0 $F9
    inc sp                                        ; $42C7: $33
    daa                                           ; $42C8: $27
    ldh a, [rSB]                                  ; $42C9: $F0 $01
    ld [hl-], a                                   ; $42CB: $32
    daa                                           ; $42CC: $27
    jp hl                                         ; $42CD: $E9


    ld sp, hl                                     ; $42CE: $F9
    dec hl                                        ; $42CF: $2B
    daa                                           ; $42D0: $27
    jp hl                                         ; $42D1: $E9


    ld bc, $272A                                  ; $42D2: $01 $2A $27
    pop hl                                        ; $42D5: $E1
    ld sp, hl                                     ; $42D6: $F9
    add hl, hl                                    ; $42D7: $29
    daa                                           ; $42D8: $27
    pop hl                                        ; $42D9: $E1
    ld bc, $2728                                  ; $42DA: $01 $28 $27
    add b                                         ; $42DD: $80
    ld hl, sp+$00                                 ; $42DE: $F8 $00
    ld [$F807], sp                                ; $42E0: $08 $07 $F8
    ld [$2712], sp                                ; $42E3: $08 $12 $27
    ld hl, sp-$08                                 ; $42E6: $F8 $F8
    ld [de], a                                    ; $42E8: $12
    rlca                                          ; $42E9: $07
    ldh a, [rP1]                                  ; $42EA: $F0 $00
    ld b, $07                                     ; $42EC: $06 $07
    ldh a, [$08]                                  ; $42EE: $F0 $08
    rrca                                          ; $42F0: $0F
    daa                                           ; $42F1: $27
    ldh a, [$F8]                                  ; $42F2: $F0 $F8
    rrca                                          ; $42F4: $0F
    rlca                                          ; $42F5: $07
    add sp, $08                                   ; $42F6: $E8 $08
    ld c, $27                                     ; $42F8: $0E $27
    add sp, -$08                                  ; $42FA: $E8 $F8
    ld c, $07                                     ; $42FC: $0E $07
    nop                                           ; $42FE: $00
    ld [$2714], sp                                ; $42FF: $08 $14 $27
    nop                                           ; $4302: $00
    nop                                           ; $4303: $00
    dec d                                         ; $4304: $15
    rlca                                          ; $4305: $07
    nop                                           ; $4306: $00
    ld hl, sp+$14                                 ; $4307: $F8 $14
    rlca                                          ; $4309: $07
    add sp, $00                                   ; $430A: $E8 $00
    inc b                                         ; $430C: $04
    rlca                                          ; $430D: $07
    ldh [$08], a                                  ; $430E: $E0 $08

jr_00E_4310:
    nop                                           ; $4310: $00
    daa                                           ; $4311: $27
    ldh [rP1], a                                  ; $4312: $E0 $00
    ld bc, $E007                                  ; $4314: $01 $07 $E0
    ld hl, sp+$00                                 ; $4317: $F8 $00
    rlca                                          ; $4319: $07
    add b                                         ; $431A: $80
    add sp, $10                                   ; $431B: $E8 $10
    ld [bc], a                                    ; $431D: $02
    jr nz, jr_00E_4310                            ; $431E: $20 $F0

    ldh a, [rNR11]                                ; $4320: $F0 $11
    daa                                           ; $4322: $27
    ldh a, [rNR10]                                ; $4323: $F0 $10
    ld de, $E807                                  ; $4325: $11 $07 $E8
    ldh a, [rSC]                                  ; $4328: $F0 $02
    nop                                           ; $432A: $00
    ldh a, [$08]                                  ; $432B: $F0 $08
    dec b                                         ; $432D: $05
    daa                                           ; $432E: $27
    ldh a, [$F8]                                  ; $432F: $F0 $F8
    dec b                                         ; $4331: $05
    rlca                                          ; $4332: $07
    ld hl, sp+$08                                 ; $4333: $F8 $08
    rlca                                          ; $4335: $07
    daa                                           ; $4336: $27
    ld hl, sp+$00                                 ; $4337: $F8 $00
    ld [$F807], sp                                ; $4339: $08 $07 $F8
    ld hl, sp+$07                                 ; $433C: $F8 $07
    rlca                                          ; $433E: $07
    ldh a, [rP1]                                  ; $433F: $F0 $00
    ld b, $07                                     ; $4341: $06 $07
    nop                                           ; $4343: $00
    ld [$2714], sp                                ; $4344: $08 $14 $27
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    dec d                                         ; $4349: $15
    rlca                                          ; $434A: $07
    nop                                           ; $434B: $00
    ld hl, sp+$14                                 ; $434C: $F8 $14
    rlca                                          ; $434E: $07
    add sp, $08                                   ; $434F: $E8 $08
    inc bc                                        ; $4351: $03
    daa                                           ; $4352: $27
    add sp, $00                                   ; $4353: $E8 $00
    inc b                                         ; $4355: $04
    rlca                                          ; $4356: $07
    add sp, -$08                                  ; $4357: $E8 $F8
    inc bc                                        ; $4359: $03
    rlca                                          ; $435A: $07
    ldh [$08], a                                  ; $435B: $E0 $08
    nop                                           ; $435D: $00
    daa                                           ; $435E: $27
    ldh [rP1], a                                  ; $435F: $E0 $00
    ld bc, $E007                                  ; $4361: $01 $07 $E0
    ld hl, sp+$00                                 ; $4364: $F8 $00
    rlca                                          ; $4366: $07
    add b                                         ; $4367: $80
    dec b                                         ; $4368: $05
    inc b                                         ; $4369: $04
    dec bc                                        ; $436A: $0B
    rlca                                          ; $436B: $07
    dec b                                         ; $436C: $05
    ei                                            ; $436D: $FB

jr_00E_436E:
    dec bc                                        ; $436E: $0B
    daa                                           ; $436F: $27
    db $FD                                        ; $4370: $FD
    ld [$2709], sp                                ; $4371: $08 $09 $27
    db $FD                                        ; $4374: $FD
    nop                                           ; $4375: $00
    ld a, [bc]                                    ; $4376: $0A
    rlca                                          ; $4377: $07
    db $FD                                        ; $4378: $FD
    ld hl, sp+$09                                 ; $4379: $F8 $09
    rlca                                          ; $437B: $07
    push hl                                       ; $437C: $E5
    db $10                                        ; $437D: $10
    ld [bc], a                                    ; $437E: $02
    jr nz, jr_00E_436E                            ; $437F: $20 $ED

    ldh a, [rNR11]                                ; $4381: $F0 $11
    daa                                           ; $4383: $27
    db $ED                                        ; $4384: $ED
    db $10                                        ; $4385: $10
    ld de, $E507                                  ; $4386: $11 $07 $E5
    ldh a, [rSC]                                  ; $4389: $F0 $02
    nop                                           ; $438B: $00
    db $ED                                        ; $438C: $ED
    ld [$2705], sp                                ; $438D: $08 $05 $27
    db $ED                                        ; $4390: $ED
    ld hl, sp+$05                                 ; $4391: $F8 $05
    rlca                                          ; $4393: $07
    push af                                       ; $4394: $F5
    ld [$2707], sp                                ; $4395: $08 $07 $27
    push af                                       ; $4398: $F5
    nop                                           ; $4399: $00
    ld [$F507], sp                                ; $439A: $08 $07 $F5
    ld hl, sp+$07                                 ; $439D: $F8 $07
    rlca                                          ; $439F: $07
    db $ED                                        ; $43A0: $ED
    nop                                           ; $43A1: $00
    ld b, $07                                     ; $43A2: $06 $07
    push hl                                       ; $43A4: $E5
    ld [$2703], sp                                ; $43A5: $08 $03 $27
    push hl                                       ; $43A8: $E5
    nop                                           ; $43A9: $00
    inc b                                         ; $43AA: $04
    rlca                                          ; $43AB: $07
    push hl                                       ; $43AC: $E5
    ld hl, sp+$03                                 ; $43AD: $F8 $03
    rlca                                          ; $43AF: $07
    db $DD                                        ; $43B0: $DD
    ld [$2700], sp                                ; $43B1: $08 $00 $27
    db $DD                                        ; $43B4: $DD
    nop                                           ; $43B5: $00
    ld bc, $DD07                                  ; $43B6: $01 $07 $DD
    ld hl, sp+$00                                 ; $43B9: $F8 $00
    rlca                                          ; $43BB: $07
    add b                                         ; $43BC: $80
    ld [bc], a                                    ; $43BD: $02
    inc b                                         ; $43BE: $04
    jr nc, jr_00E_43E1                            ; $43BF: $30 $20

    ld [bc], a                                    ; $43C1: $02
    db $FC                                        ; $43C2: $FC
    jr nc, jr_00E_43C5                            ; $43C3: $30 $00

jr_00E_43C5:
    ld [bc], a                                    ; $43C5: $02
    inc b                                         ; $43C6: $04
    dec bc                                        ; $43C7: $0B

jr_00E_43C8:
    rlca                                          ; $43C8: $07
    ld [bc], a                                    ; $43C9: $02
    ei                                            ; $43CA: $FB
    dec bc                                        ; $43CB: $0B
    daa                                           ; $43CC: $27
    ld a, [$0908]                                 ; $43CD: $FA $08 $09
    daa                                           ; $43D0: $27
    ld a, [$0A00]                                 ; $43D1: $FA $00 $0A
    rlca                                          ; $43D4: $07
    ld a, [$09F8]                                 ; $43D5: $FA $F8 $09
    rlca                                          ; $43D8: $07
    ld [c], a                                     ; $43D9: $E2
    db $10                                        ; $43DA: $10
    ld [bc], a                                    ; $43DB: $02
    jr nz, jr_00E_43C8                            ; $43DC: $20 $EA

    ldh a, [rNR11]                                ; $43DE: $F0 $11
    daa                                           ; $43E0: $27

jr_00E_43E1:
    ld [$1110], a                                 ; $43E1: $EA $10 $11
    rlca                                          ; $43E4: $07
    push hl                                       ; $43E5: $E5
    ldh a, [rSC]                                  ; $43E6: $F0 $02
    nop                                           ; $43E8: $00
    ld [$0508], a                                 ; $43E9: $EA $08 $05
    daa                                           ; $43EC: $27
    ld [$05F8], a                                 ; $43ED: $EA $F8 $05
    rlca                                          ; $43F0: $07
    ld a, [c]                                     ; $43F1: $F2
    ld [$2707], sp                                ; $43F2: $08 $07 $27
    ld a, [c]                                     ; $43F5: $F2
    nop                                           ; $43F6: $00
    ld [$F207], sp                                ; $43F7: $08 $07 $F2
    ld hl, sp+$07                                 ; $43FA: $F8 $07
    rlca                                          ; $43FC: $07
    ld [$0600], a                                 ; $43FD: $EA $00 $06
    rlca                                          ; $4400: $07
    ld [c], a                                     ; $4401: $E2
    ld [$2703], sp                                ; $4402: $08 $03 $27
    ld [c], a                                     ; $4405: $E2
    nop                                           ; $4406: $00
    inc b                                         ; $4407: $04
    rlca                                          ; $4408: $07
    ld [c], a                                     ; $4409: $E2
    ld hl, sp+$03                                 ; $440A: $F8 $03
    rlca                                          ; $440C: $07
    jp c, $0008                                   ; $440D: $DA $08 $00

    daa                                           ; $4410: $27
    jp c, Boot                                    ; $4411: $DA $00 $01

    rlca                                          ; $4414: $07
    jp c, $00F8                                   ; $4415: $DA $F8 $00

    rlca                                          ; $4418: $07
    add b                                         ; $4419: $80
    ld [bc], a                                    ; $441A: $02
    inc b                                         ; $441B: $04
    cpl                                           ; $441C: $2F
    jr nz, jr_00E_4421                            ; $441D: $20 $02

    db $FC                                        ; $441F: $FC
    cpl                                           ; $4420: $2F

jr_00E_4421:
    nop                                           ; $4421: $00
    cp $04                                        ; $4422: $FE $04
    dec bc                                        ; $4424: $0B
    rlca                                          ; $4425: $07
    cp $FB                                        ; $4426: $FE $FB
    dec bc                                        ; $4428: $0B
    daa                                           ; $4429: $27
    or $08                                        ; $442A: $F6 $08
    add hl, bc                                    ; $442C: $09
    daa                                           ; $442D: $27
    or $00                                        ; $442E: $F6 $00
    ld a, [bc]                                    ; $4430: $0A
    rlca                                          ; $4431: $07
    or $F8                                        ; $4432: $F6 $F8
    add hl, bc                                    ; $4434: $09
    rlca                                          ; $4435: $07
    sbc $10                                       ; $4436: $DE $10
    ld [bc], a                                    ; $4438: $02
    jr nz, jr_00E_4421                            ; $4439: $20 $E6

    ldh a, [rNR11]                                ; $443B: $F0 $11
    daa                                           ; $443D: $27
    and $10                                       ; $443E: $E6 $10
    ld de, $DE07                                  ; $4440: $11 $07 $DE
    ldh a, [rSC]                                  ; $4443: $F0 $02
    nop                                           ; $4445: $00
    and $08                                       ; $4446: $E6 $08
    dec b                                         ; $4448: $05
    daa                                           ; $4449: $27
    and $F8                                       ; $444A: $E6 $F8
    dec b                                         ; $444C: $05
    rlca                                          ; $444D: $07
    xor $08                                       ; $444E: $EE $08
    rlca                                          ; $4450: $07
    daa                                           ; $4451: $27
    xor $00                                       ; $4452: $EE $00
    ld [$EE07], sp                                ; $4454: $08 $07 $EE
    ld hl, sp+$07                                 ; $4457: $F8 $07
    rlca                                          ; $4459: $07
    and $00                                       ; $445A: $E6 $00
    ld b, $07                                     ; $445C: $06 $07
    sbc $08                                       ; $445E: $DE $08
    inc bc                                        ; $4460: $03
    daa                                           ; $4461: $27
    sbc $00                                       ; $4462: $DE $00
    inc b                                         ; $4464: $04
    rlca                                          ; $4465: $07
    sbc $F8                                       ; $4466: $DE $F8
    inc bc                                        ; $4468: $03
    rlca                                          ; $4469: $07
    sub $08                                       ; $446A: $D6 $08
    nop                                           ; $446C: $00
    daa                                           ; $446D: $27
    sub $00                                       ; $446E: $D6 $00
    ld bc, $D607                                  ; $4470: $01 $07 $D6
    ld hl, sp+$00                                 ; $4473: $F8 $00
    rlca                                          ; $4475: $07
    add b                                         ; $4476: $80
    ld [bc], a                                    ; $4477: $02
    inc b                                         ; $4478: $04
    ld l, $20                                     ; $4479: $2E $20

jr_00E_447B:
    ld [bc], a                                    ; $447B: $02
    db $FC                                        ; $447C: $FC
    ld l, $00                                     ; $447D: $2E $00
    ei                                            ; $447F: $FB
    inc b                                         ; $4480: $04
    dec bc                                        ; $4481: $0B
    rlca                                          ; $4482: $07
    ei                                            ; $4483: $FB
    ei                                            ; $4484: $FB
    dec bc                                        ; $4485: $0B
    daa                                           ; $4486: $27
    di                                            ; $4487: $F3
    ld [$2709], sp                                ; $4488: $08 $09 $27
    di                                            ; $448B: $F3
    nop                                           ; $448C: $00
    ld a, [bc]                                    ; $448D: $0A
    rlca                                          ; $448E: $07
    di                                            ; $448F: $F3
    ld hl, sp+$09                                 ; $4490: $F8 $09
    rlca                                          ; $4492: $07
    db $DB                                        ; $4493: $DB
    db $10                                        ; $4494: $10
    ld [bc], a                                    ; $4495: $02
    jr nz, jr_00E_447B                            ; $4496: $20 $E3

    ldh a, [rNR11]                                ; $4498: $F0 $11
    daa                                           ; $449A: $27
    db $E3                                        ; $449B: $E3
    db $10                                        ; $449C: $10
    ld de, $DB07                                  ; $449D: $11 $07 $DB
    ldh a, [rSC]                                  ; $44A0: $F0 $02
    nop                                           ; $44A2: $00
    db $E3                                        ; $44A3: $E3
    ld [$2705], sp                                ; $44A4: $08 $05 $27
    db $E3                                        ; $44A7: $E3
    ld hl, sp+$05                                 ; $44A8: $F8 $05
    rlca                                          ; $44AA: $07
    db $EB                                        ; $44AB: $EB
    ld [$2707], sp                                ; $44AC: $08 $07 $27
    db $EB                                        ; $44AF: $EB
    nop                                           ; $44B0: $00
    ld [$EB07], sp                                ; $44B1: $08 $07 $EB
    ld hl, sp+$07                                 ; $44B4: $F8 $07
    rlca                                          ; $44B6: $07
    db $E3                                        ; $44B7: $E3
    nop                                           ; $44B8: $00
    ld b, $07                                     ; $44B9: $06 $07
    db $DB                                        ; $44BB: $DB
    ld [$2703], sp                                ; $44BC: $08 $03 $27
    db $DB                                        ; $44BF: $DB
    nop                                           ; $44C0: $00
    inc b                                         ; $44C1: $04
    rlca                                          ; $44C2: $07
    db $DB                                        ; $44C3: $DB
    ld hl, sp+$03                                 ; $44C4: $F8 $03
    rlca                                          ; $44C6: $07
    db $D3                                        ; $44C7: $D3
    ld [$2700], sp                                ; $44C8: $08 $00 $27
    db $D3                                        ; $44CB: $D3
    nop                                           ; $44CC: $00
    ld bc, $D307                                  ; $44CD: $01 $07 $D3
    ld hl, sp+$00                                 ; $44D0: $F8 $00
    rlca                                          ; $44D2: $07
    add b                                         ; $44D3: $80
    push af                                       ; $44D4: $F5
    ld [$270C], sp                                ; $44D5: $08 $0C $27
    push af                                       ; $44D8: $F5
    ld hl, sp+$0C                                 ; $44D9: $F8 $0C
    rlca                                          ; $44DB: $07
    ld [bc], a                                    ; $44DC: $02
    inc b                                         ; $44DD: $04
    cpl                                           ; $44DE: $2F
    jr nz, jr_00E_44E3                            ; $44DF: $20 $02

    db $FC                                        ; $44E1: $FC
    cpl                                           ; $44E2: $2F

jr_00E_44E3:
    nop                                           ; $44E3: $00
    db $FD                                        ; $44E4: $FD
    inc b                                         ; $44E5: $04
    dec bc                                        ; $44E6: $0B
    rlca                                          ; $44E7: $07
    db $FD                                        ; $44E8: $FD
    ei                                            ; $44E9: $FB
    dec bc                                        ; $44EA: $0B
    daa                                           ; $44EB: $27
    push af                                       ; $44EC: $F5
    nop                                           ; $44ED: $00
    ld a, [bc]                                    ; $44EE: $0A
    rlca                                          ; $44EF: $07
    db $DD                                        ; $44F0: $DD
    db $10                                        ; $44F1: $10
    ld [bc], a                                    ; $44F2: $02
    jr nz, @-$19                                  ; $44F3: $20 $E5

    ldh a, [rNR11]                                ; $44F5: $F0 $11
    daa                                           ; $44F7: $27
    push hl                                       ; $44F8: $E5
    db $10                                        ; $44F9: $10
    ld de, $DD07                                  ; $44FA: $11 $07 $DD
    ldh a, [rSC]                                  ; $44FD: $F0 $02
    nop                                           ; $44FF: $00
    push hl                                       ; $4500: $E5
    ld [$2705], sp                                ; $4501: $08 $05 $27
    push hl                                       ; $4504: $E5
    ld hl, sp+$05                                 ; $4505: $F8 $05
    rlca                                          ; $4507: $07
    db $ED                                        ; $4508: $ED
    ld [$2707], sp                                ; $4509: $08 $07 $27
    db $ED                                        ; $450C: $ED
    nop                                           ; $450D: $00
    ld [$ED07], sp                                ; $450E: $08 $07 $ED
    ld hl, sp+$07                                 ; $4511: $F8 $07
    rlca                                          ; $4513: $07
    push hl                                       ; $4514: $E5
    nop                                           ; $4515: $00
    ld b, $07                                     ; $4516: $06 $07
    db $DD                                        ; $4518: $DD
    ld [$2703], sp                                ; $4519: $08 $03 $27
    db $DD                                        ; $451C: $DD
    nop                                           ; $451D: $00
    inc b                                         ; $451E: $04
    rlca                                          ; $451F: $07
    db $DD                                        ; $4520: $DD
    ld hl, sp+$03                                 ; $4521: $F8 $03
    rlca                                          ; $4523: $07
    push de                                       ; $4524: $D5
    ld [$2700], sp                                ; $4525: $08 $00 $27
    push de                                       ; $4528: $D5
    nop                                           ; $4529: $00
    ld bc, $D507                                  ; $452A: $01 $07 $D5
    ld hl, sp+$00                                 ; $452D: $F8 $00
    rlca                                          ; $452F: $07
    add b                                         ; $4530: $80
    rst $30                                       ; $4531: $F7
    ld [$270D], sp                                ; $4532: $08 $0D $27
    rst $30                                       ; $4535: $F7
    ld hl, sp+$0D                                 ; $4536: $F8 $0D
    rlca                                          ; $4538: $07

jr_00E_4539:
    ld [bc], a                                    ; $4539: $02
    inc b                                         ; $453A: $04
    jr nc, jr_00E_455D                            ; $453B: $30 $20

    ld [bc], a                                    ; $453D: $02
    db $FC                                        ; $453E: $FC
    jr nc, jr_00E_4541                            ; $453F: $30 $00

jr_00E_4541:
    rst $38                                       ; $4541: $FF
    inc b                                         ; $4542: $04
    dec bc                                        ; $4543: $0B
    rlca                                          ; $4544: $07
    rst $38                                       ; $4545: $FF
    ei                                            ; $4546: $FB
    dec bc                                        ; $4547: $0B
    daa                                           ; $4548: $27
    rst $30                                       ; $4549: $F7
    nop                                           ; $454A: $00
    ld a, [bc]                                    ; $454B: $0A
    rlca                                          ; $454C: $07
    rst $18                                       ; $454D: $DF
    db $10                                        ; $454E: $10
    ld [bc], a                                    ; $454F: $02
    jr nz, jr_00E_4539                            ; $4550: $20 $E7

    ldh a, [rNR11]                                ; $4552: $F0 $11
    daa                                           ; $4554: $27
    rst $20                                       ; $4555: $E7
    db $10                                        ; $4556: $10
    ld de, $DF07                                  ; $4557: $11 $07 $DF
    ldh a, [rSC]                                  ; $455A: $F0 $02
    nop                                           ; $455C: $00

jr_00E_455D:
    rst $20                                       ; $455D: $E7
    ld [$2705], sp                                ; $455E: $08 $05 $27
    rst $20                                       ; $4561: $E7
    ld hl, sp+$05                                 ; $4562: $F8 $05
    rlca                                          ; $4564: $07
    rst $28                                       ; $4565: $EF
    ld [$2707], sp                                ; $4566: $08 $07 $27
    rst $28                                       ; $4569: $EF
    nop                                           ; $456A: $00
    ld [$EF07], sp                                ; $456B: $08 $07 $EF
    ld hl, sp+$07                                 ; $456E: $F8 $07
    rlca                                          ; $4570: $07
    rst $20                                       ; $4571: $E7
    nop                                           ; $4572: $00
    ld b, $07                                     ; $4573: $06 $07
    rst $18                                       ; $4575: $DF
    ld [$2703], sp                                ; $4576: $08 $03 $27
    rst $18                                       ; $4579: $DF
    nop                                           ; $457A: $00
    inc b                                         ; $457B: $04
    rlca                                          ; $457C: $07
    rst $18                                       ; $457D: $DF
    ld hl, sp+$03                                 ; $457E: $F8 $03
    rlca                                          ; $4580: $07
    rst $10                                       ; $4581: $D7
    ld [$2700], sp                                ; $4582: $08 $00 $27
    rst $10                                       ; $4585: $D7
    nop                                           ; $4586: $00
    ld bc, $D707                                  ; $4587: $01 $07 $D7
    ld hl, sp+$00                                 ; $458A: $F8 $00
    rlca                                          ; $458C: $07
    add b                                         ; $458D: $80
    ldh a, [$08]                                  ; $458E: $F0 $08
    dec de                                        ; $4590: $1B
    daa                                           ; $4591: $27
    ldh a, [$F8]                                  ; $4592: $F0 $F8
    dec de                                        ; $4594: $1B
    rlca                                          ; $4595: $07
    ldh a, [rP1]                                  ; $4596: $F0 $00
    ld b, $07                                     ; $4598: $06 $07
    ld hl, sp+$00                                 ; $459A: $F8 $00
    ld [$E807], sp                                ; $459C: $08 $07 $E8
    nop                                           ; $459F: $00
    inc b                                         ; $45A0: $04
    rlca                                          ; $45A1: $07
    rst $28                                       ; $45A2: $EF
    db $10                                        ; $45A3: $10
    inc e                                         ; $45A4: $1C
    daa                                           ; $45A5: $27
    rst $28                                       ; $45A6: $EF
    ldh a, [rNR32]                                ; $45A7: $F0 $1C
    rlca                                          ; $45A9: $07
    add sp, $08                                   ; $45AA: $E8 $08
    jr @+$29                                      ; $45AC: $18 $27

    rst $20                                       ; $45AE: $E7
    db $10                                        ; $45AF: $10
    rla                                           ; $45B0: $17
    daa                                           ; $45B1: $27
    add sp, -$08                                  ; $45B2: $E8 $F8
    jr jr_00E_45BD                                ; $45B4: $18 $07

    add sp, -$10                                  ; $45B6: $E8 $F0
    rla                                           ; $45B8: $17
    nop                                           ; $45B9: $00
    ld hl, sp+$08                                 ; $45BA: $F8 $08
    inc de                                        ; $45BC: $13

jr_00E_45BD:
    daa                                           ; $45BD: $27
    ld hl, sp-$08                                 ; $45BE: $F8 $F8
    inc de                                        ; $45C0: $13
    rlca                                          ; $45C1: $07
    nop                                           ; $45C2: $00
    ld [$2714], sp                                ; $45C3: $08 $14 $27
    nop                                           ; $45C6: $00
    nop                                           ; $45C7: $00
    dec d                                         ; $45C8: $15
    rlca                                          ; $45C9: $07
    nop                                           ; $45CA: $00
    ld hl, sp+$14                                 ; $45CB: $F8 $14
    rlca                                          ; $45CD: $07
    ldh [$08], a                                  ; $45CE: $E0 $08
    nop                                           ; $45D0: $00
    daa                                           ; $45D1: $27
    ldh [rP1], a                                  ; $45D2: $E0 $00
    ld bc, $E007                                  ; $45D4: $01 $07 $E0
    ld hl, sp+$00                                 ; $45D7: $F8 $00
    rlca                                          ; $45D9: $07
    add b                                         ; $45DA: $80
    ldh a, [rP1]                                  ; $45DB: $F0 $00
    ld b, $07                                     ; $45DD: $06 $07
    ldh a, [$F8]                                  ; $45DF: $F0 $F8
    dec de                                        ; $45E1: $1B
    rlca                                          ; $45E2: $07
    ldh a, [$08]                                  ; $45E3: $F0 $08
    dec de                                        ; $45E5: $1B
    daa                                           ; $45E6: $27
    ld hl, sp+$00                                 ; $45E7: $F8 $00
    ld [$E007], sp                                ; $45E9: $08 $07 $E0
    nop                                           ; $45EC: $00
    ld d, $07                                     ; $45ED: $16 $07
    add sp, $00                                   ; $45EF: $E8 $00
    add hl, de                                    ; $45F1: $19
    rlca                                          ; $45F2: $07
    rst $28                                       ; $45F3: $EF
    db $10                                        ; $45F4: $10
    inc e                                         ; $45F5: $1C
    daa                                           ; $45F6: $27
    rst $28                                       ; $45F7: $EF
    ldh a, [rNR32]                                ; $45F8: $F0 $1C
    rlca                                          ; $45FA: $07
    add sp, $08                                   ; $45FB: $E8 $08
    jr jr_00E_4626                                ; $45FD: $18 $27

    rst $20                                       ; $45FF: $E7
    db $10                                        ; $4600: $10
    rla                                           ; $4601: $17
    daa                                           ; $4602: $27
    add sp, -$08                                  ; $4603: $E8 $F8
    jr jr_00E_460E                                ; $4605: $18 $07

    add sp, -$10                                  ; $4607: $E8 $F0
    rla                                           ; $4609: $17
    nop                                           ; $460A: $00
    ld hl, sp+$08                                 ; $460B: $F8 $08
    inc de                                        ; $460D: $13

jr_00E_460E:
    daa                                           ; $460E: $27
    ld hl, sp-$08                                 ; $460F: $F8 $F8
    inc de                                        ; $4611: $13
    rlca                                          ; $4612: $07
    nop                                           ; $4613: $00
    ld [$2714], sp                                ; $4614: $08 $14 $27
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    dec d                                         ; $4619: $15
    rlca                                          ; $461A: $07
    nop                                           ; $461B: $00
    ld hl, sp+$14                                 ; $461C: $F8 $14
    rlca                                          ; $461E: $07
    ldh [$08], a                                  ; $461F: $E0 $08
    nop                                           ; $4621: $00
    daa                                           ; $4622: $27
    ldh [$F8], a                                  ; $4623: $E0 $F8
    nop                                           ; $4625: $00

jr_00E_4626:
    rlca                                          ; $4626: $07
    add b                                         ; $4627: $80
    ldh a, [$08]                                  ; $4628: $F0 $08
    dec e                                         ; $462A: $1D
    daa                                           ; $462B: $27
    ldh a, [$F8]                                  ; $462C: $F0 $F8
    dec e                                         ; $462E: $1D
    rlca                                          ; $462F: $07
    ldh a, [rP1]                                  ; $4630: $F0 $00
    ld e, $07                                     ; $4632: $1E $07
    ld hl, sp+$00                                 ; $4634: $F8 $00
    ld [$E107], sp                                ; $4636: $08 $07 $E1
    nop                                           ; $4639: $00
    ld d, $07                                     ; $463A: $16 $07
    jp hl                                         ; $463C: $E9


    nop                                           ; $463D: $00
    add hl, de                                    ; $463E: $19
    rlca                                          ; $463F: $07
    ldh a, [rNR10]                                ; $4640: $F0 $10
    inc e                                         ; $4642: $1C
    daa                                           ; $4643: $27

Call_00E_4644:
    ldh a, [$F0]                                  ; $4644: $F0 $F0
    inc e                                         ; $4646: $1C
    rlca                                          ; $4647: $07
    jp hl                                         ; $4648: $E9


    ld [$2718], sp                                ; $4649: $08 $18 $27
    add sp, $10                                   ; $464C: $E8 $10
    rla                                           ; $464E: $17
    daa                                           ; $464F: $27

Call_00E_4650:
    jp hl                                         ; $4650: $E9


    ld hl, sp+$18                                 ; $4651: $F8 $18
    rlca                                          ; $4653: $07
    jp hl                                         ; $4654: $E9


    ldh a, [rNR22]                                ; $4655: $F0 $17
    nop                                           ; $4657: $00
    ld hl, sp+$08                                 ; $4658: $F8 $08
    inc de                                        ; $465A: $13
    daa                                           ; $465B: $27
    ld hl, sp-$08                                 ; $465C: $F8 $F8
    inc de                                        ; $465E: $13
    rlca                                          ; $465F: $07
    nop                                           ; $4660: $00
    ld [$2714], sp                                ; $4661: $08 $14 $27
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    dec d                                         ; $4666: $15
    rlca                                          ; $4667: $07
    nop                                           ; $4668: $00
    ld hl, sp+$14                                 ; $4669: $F8 $14
    rlca                                          ; $466B: $07

Jump_00E_466C:
    pop hl                                        ; $466C: $E1
    ld [$2700], sp                                ; $466D: $08 $00 $27
    pop hl                                        ; $4670: $E1
    ld hl, sp+$00                                 ; $4671: $F8 $00
    rlca                                          ; $4673: $07
    add b                                         ; $4674: $80
    ldh a, [rNR10]                                ; $4675: $F0 $10
    ld [hl+], a                                   ; $4677: $22
    rlca                                          ; $4678: $07
    ldh a, [$F8]                                  ; $4679: $F0 $F8
    rra                                           ; $467B: $1F

Call_00E_467C:
    rlca                                          ; $467C: $07
    ldh a, [$08]                                  ; $467D: $F0 $08
    ld hl, $F007                                  ; $467F: $21 $07 $F0
    nop                                           ; $4682: $00
    jr nz, jr_00E_468C                            ; $4683: $20 $07

    ld hl, sp+$0A                                 ; $4685: $F8 $0A
    ld h, $07                                     ; $4687: $26 $07
    ld hl, sp+$02                                 ; $4689: $F8 $02
    dec h                                         ; $468B: $25

jr_00E_468C:
    rlca                                          ; $468C: $07
    ld hl, sp-$06                                 ; $468D: $F8 $FA
    inc h                                         ; $468F: $24
    rlca                                          ; $4690: $07
    ld hl, sp-$0E                                 ; $4691: $F8 $F2
    inc hl                                        ; $4693: $23
    rlca                                          ; $4694: $07
    nop                                           ; $4695: $00
    db $10                                        ; $4696: $10
    dec hl                                        ; $4697: $2B
    rlca                                          ; $4698: $07
    nop                                           ; $4699: $00
    ld [$072A], sp                                ; $469A: $08 $2A $07
    nop                                           ; $469D: $00
    nop                                           ; $469E: $00
    add hl, hl                                    ; $469F: $29
    rlca                                          ; $46A0: $07
    nop                                           ; $46A1: $00
    ld hl, sp+$28                                 ; $46A2: $F8 $28
    rlca                                          ; $46A4: $07
    nop                                           ; $46A5: $00
    ldh a, [$27]                                  ; $46A6: $F0 $27
    rlca                                          ; $46A8: $07
    add b                                         ; $46A9: $80
    add sp, $10                                   ; $46AA: $E8 $10
    ld [bc], a                                    ; $46AC: $02
    daa                                           ; $46AD: $27
    add sp, $08                                   ; $46AE: $E8 $08
    inc bc                                        ; $46B0: $03
    daa                                           ; $46B1: $27
    ld hl, sp+$08                                 ; $46B2: $F8 $08
    inc de                                        ; $46B4: $13
    daa                                           ; $46B5: $27
    ldh a, [$08]                                  ; $46B6: $F0 $08
    dec de                                        ; $46B8: $1B
    daa                                           ; $46B9: $27
    ldh a, [rNR10]                                ; $46BA: $F0 $10
    ld a, [de]                                    ; $46BC: $1A
    daa                                           ; $46BD: $27
    ld hl, sp+$00                                 ; $46BE: $F8 $00
    ld [$F807], sp                                ; $46C0: $08 $07 $F8
    ld hl, sp+$12                                 ; $46C3: $F8 $12
    rlca                                          ; $46C5: $07
    ldh a, [rP1]                                  ; $46C6: $F0 $00
    ld b, $07                                     ; $46C8: $06 $07
    ldh a, [$F8]                                  ; $46CA: $F0 $F8
    rrca                                          ; $46CC: $0F
    rlca                                          ; $46CD: $07
    add sp, -$08                                  ; $46CE: $E8 $F8
    ld c, $07                                     ; $46D0: $0E $07
    nop                                           ; $46D2: $00
    ld [$2714], sp                                ; $46D3: $08 $14 $27
    nop                                           ; $46D6: $00
    nop                                           ; $46D7: $00
    dec d                                         ; $46D8: $15
    rlca                                          ; $46D9: $07
    nop                                           ; $46DA: $00
    ld hl, sp+$14                                 ; $46DB: $F8 $14
    rlca                                          ; $46DD: $07
    add sp, $00                                   ; $46DE: $E8 $00
    inc b                                         ; $46E0: $04
    rlca                                          ; $46E1: $07
    ldh [$08], a                                  ; $46E2: $E0 $08
    nop                                           ; $46E4: $00
    daa                                           ; $46E5: $27
    ldh [rP1], a                                  ; $46E6: $E0 $00
    ld bc, $E007                                  ; $46E8: $01 $07 $E0
    ld hl, sp+$00                                 ; $46EB: $F8 $00
    rlca                                          ; $46ED: $07
    add b                                         ; $46EE: $80
    db $ED                                        ; $46EF: $ED
    rrca                                          ; $46F0: $0F
    inc l                                         ; $46F1: $2C
    nop                                           ; $46F2: $00
    add sp, $10                                   ; $46F3: $E8 $10
    ld [bc], a                                    ; $46F5: $02
    daa                                           ; $46F6: $27
    add sp, $08                                   ; $46F7: $E8 $08
    inc bc                                        ; $46F9: $03
    daa                                           ; $46FA: $27
    ld hl, sp+$08                                 ; $46FB: $F8 $08
    inc de                                        ; $46FD: $13
    daa                                           ; $46FE: $27
    ldh a, [$08]                                  ; $46FF: $F0 $08
    dec de                                        ; $4701: $1B
    daa                                           ; $4702: $27
    ldh a, [rNR10]                                ; $4703: $F0 $10
    ld a, [de]                                    ; $4705: $1A
    daa                                           ; $4706: $27
    ld hl, sp+$00                                 ; $4707: $F8 $00
    ld [$F807], sp                                ; $4709: $08 $07 $F8
    ld hl, sp+$12                                 ; $470C: $F8 $12
    rlca                                          ; $470E: $07
    ldh a, [rP1]                                  ; $470F: $F0 $00
    ld b, $07                                     ; $4711: $06 $07
    ldh a, [$F8]                                  ; $4713: $F0 $F8
    rrca                                          ; $4715: $0F
    rlca                                          ; $4716: $07
    add sp, -$08                                  ; $4717: $E8 $F8
    ld c, $07                                     ; $4719: $0E $07
    nop                                           ; $471B: $00
    ld [$2714], sp                                ; $471C: $08 $14 $27
    nop                                           ; $471F: $00
    nop                                           ; $4720: $00
    dec d                                         ; $4721: $15
    rlca                                          ; $4722: $07
    nop                                           ; $4723: $00
    ld hl, sp+$14                                 ; $4724: $F8 $14
    rlca                                          ; $4726: $07
    add sp, $00                                   ; $4727: $E8 $00

jr_00E_4729:
    inc b                                         ; $4729: $04
    rlca                                          ; $472A: $07
    ldh [$08], a                                  ; $472B: $E0 $08
    nop                                           ; $472D: $00
    daa                                           ; $472E: $27
    ldh [rP1], a                                  ; $472F: $E0 $00
    ld bc, $E007                                  ; $4731: $01 $07 $E0
    ld hl, sp+$00                                 ; $4734: $F8 $00
    rlca                                          ; $4736: $07
    add b                                         ; $4737: $80
    add sp, $10                                   ; $4738: $E8 $10
    ld [bc], a                                    ; $473A: $02
    jr nz, jr_00E_4729                            ; $473B: $20 $EC

    rrca                                          ; $473D: $0F
    dec l                                         ; $473E: $2D
    nop                                           ; $473F: $00
    add sp, $08                                   ; $4740: $E8 $08
    inc bc                                        ; $4742: $03
    daa                                           ; $4743: $27
    ld hl, sp+$08                                 ; $4744: $F8 $08
    inc de                                        ; $4746: $13
    daa                                           ; $4747: $27
    ldh a, [$08]                                  ; $4748: $F0 $08
    dec de                                        ; $474A: $1B
    daa                                           ; $474B: $27
    ldh a, [rNR10]                                ; $474C: $F0 $10
    ld a, [de]                                    ; $474E: $1A
    daa                                           ; $474F: $27
    ld hl, sp+$00                                 ; $4750: $F8 $00
    ld [$F807], sp                                ; $4752: $08 $07 $F8
    ld hl, sp+$12                                 ; $4755: $F8 $12
    rlca                                          ; $4757: $07
    ldh a, [rP1]                                  ; $4758: $F0 $00
    ld b, $07                                     ; $475A: $06 $07
    ldh a, [$F8]                                  ; $475C: $F0 $F8
    rrca                                          ; $475E: $0F
    rlca                                          ; $475F: $07
    add sp, -$08                                  ; $4760: $E8 $F8
    ld c, $07                                     ; $4762: $0E $07
    nop                                           ; $4764: $00
    ld [$2714], sp                                ; $4765: $08 $14 $27
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    dec d                                         ; $476A: $15
    rlca                                          ; $476B: $07
    nop                                           ; $476C: $00
    ld hl, sp+$14                                 ; $476D: $F8 $14
    rlca                                          ; $476F: $07
    add sp, $00                                   ; $4770: $E8 $00
    inc b                                         ; $4772: $04
    rlca                                          ; $4773: $07
    ldh [$08], a                                  ; $4774: $E0 $08
    nop                                           ; $4776: $00
    daa                                           ; $4777: $27
    ldh [rP1], a                                  ; $4778: $E0 $00
    ld bc, $E007                                  ; $477A: $01 $07 $E0
    ld hl, sp+$00                                 ; $477D: $F8 $00
    rlca                                          ; $477F: $07
    add b                                         ; $4780: $80
    ld c, h                                       ; $4781: $4C
    rst $38                                       ; $4782: $FF
    nop                                           ; $4783: $00
    nop                                           ; $4784: $00
    or a                                          ; $4785: $B7
    ld b, b                                       ; $4786: $40
    nop                                           ; $4787: $00
    ld b, [hl]                                    ; $4788: $46
    add c                                         ; $4789: $81
    ld b, a                                       ; $478A: $47
    ld c, h                                       ; $478B: $4C
    rst $38                                       ; $478C: $FF
    nop                                           ; $478D: $00
    nop                                           ; $478E: $00
    ld l, [hl]                                    ; $478F: $6E
    ld b, c                                       ; $4790: $41
    nop                                           ; $4791: $00
    ld b, [hl]                                    ; $4792: $46
    adc e                                         ; $4793: $8B
    ld b, a                                       ; $4794: $47
    ld c, h                                       ; $4795: $4C
    rst $38                                       ; $4796: $FF
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    adc h                                         ; $4799: $8C
    ld b, d                                       ; $479A: $42
    nop                                           ; $479B: $00
    ld b, [hl]                                    ; $479C: $46
    sub l                                         ; $479D: $95
    ld b, a                                       ; $479E: $47
    ld c, h                                       ; $479F: $4C
    rst $38                                       ; $47A0: $FF
    nop                                           ; $47A1: $00
    nop                                           ; $47A2: $00
    ld de, $0042                                  ; $47A3: $11 $42 $00
    ld b, [hl]                                    ; $47A6: $46
    sbc a                                         ; $47A7: $9F
    ld b, a                                       ; $47A8: $47
    ld c, h                                       ; $47A9: $4C
    rst $38                                       ; $47AA: $FF
    nop                                           ; $47AB: $00
    nop                                           ; $47AC: $00
    dec a                                         ; $47AD: $3D
    ld b, b                                       ; $47AE: $40
    nop                                           ; $47AF: $00
    ld b, [hl]                                    ; $47B0: $46
    xor c                                         ; $47B1: $A9
    ld b, a                                       ; $47B2: $47
    ld c, h                                       ; $47B3: $4C
    rst $38                                       ; $47B4: $FF
    nop                                           ; $47B5: $00
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    ld b, b                                       ; $47B8: $40
    nop                                           ; $47B9: $00
    ld b, [hl]                                    ; $47BA: $46
    or e                                          ; $47BB: $B3
    ld b, a                                       ; $47BC: $47
    ld c, l                                       ; $47BD: $4D
    ld [$0008], sp                                ; $47BE: $08 $08 $00
    rst $38                                       ; $47C1: $FF
    ld sp, $6E41                                  ; $47C2: $31 $41 $6E
    ld b, c                                       ; $47C5: $41
    xor e                                         ; $47C6: $AB
    ld b, c                                       ; $47C7: $41
    ld l, [hl]                                    ; $47C8: $6E
    ld b, c                                       ; $47C9: $41
    ld b, [hl]                                    ; $47CA: $46
    cp l                                          ; $47CB: $BD
    ld b, a                                       ; $47CC: $47
    ld c, l                                       ; $47CD: $4D
    ld [$0008], sp                                ; $47CE: $08 $08 $00
    ld bc, $407A                                  ; $47D1: $01 $7A $40
    or a                                          ; $47D4: $B7
    ld b, b                                       ; $47D5: $40
    db $F4                                        ; $47D6: $F4
    ld b, b                                       ; $47D7: $40
    or a                                          ; $47D8: $B7
    ld b, b                                       ; $47D9: $40
    ld b, [hl]                                    ; $47DA: $46
    call $4D47                                    ; $47DB: $CD $47 $4D
    ld [$0108], sp                                ; $47DE: $08 $08 $01
    nop                                           ; $47E1: $00
    add sp, $41                                   ; $47E2: $E8 $41
    ld de, $3A42                                  ; $47E4: $11 $42 $3A
    ld b, d                                       ; $47E7: $42
    ld de, $4642                                  ; $47E8: $11 $42 $46
    db $DD                                        ; $47EB: $DD
    ld b, a                                       ; $47EC: $47
    ld c, l                                       ; $47ED: $4D
    ld [$FF08], sp                                ; $47EE: $08 $08 $FF
    nop                                           ; $47F1: $00
    ld h, e                                       ; $47F2: $63
    ld b, d                                       ; $47F3: $42
    adc h                                         ; $47F4: $8C
    ld b, d                                       ; $47F5: $42
    or l                                          ; $47F6: $B5
    ld b, d                                       ; $47F7: $42
    adc h                                         ; $47F8: $8C
    ld b, d                                       ; $47F9: $42
    ld b, [hl]                                    ; $47FA: $46
    db $ED                                        ; $47FB: $ED
    ld b, a                                       ; $47FC: $47
    ld c, h                                       ; $47FD: $4C
    rst $38                                       ; $47FE: $FF
    nop                                           ; $47FF: $00
    nop                                           ; $4800: $00
    sbc $42                                       ; $4801: $DE $42
    nop                                           ; $4803: $00
    ld b, [hl]                                    ; $4804: $46
    db $FD                                        ; $4805: $FD
    ld b, a                                       ; $4806: $47
    ld c, h                                       ; $4807: $4C
    jr nz, jr_00E_480A                            ; $4808: $20 $00

jr_00E_480A:
    nop                                           ; $480A: $00
    dec de                                        ; $480B: $1B
    ld b, e                                       ; $480C: $43
    ld [rRAMG], sp                                ; $480D: $08 $00 $00
    ld l, b                                       ; $4810: $68
    ld b, e                                       ; $4811: $43
    ld [rRAMG], sp                                ; $4812: $08 $00 $00
    cp l                                          ; $4815: $BD
    ld b, e                                       ; $4816: $43
    ld [rRAMG], sp                                ; $4817: $08 $00 $00
    ld a, [de]                                    ; $481A: $1A
    ld b, h                                       ; $481B: $44
    nop                                           ; $481C: $00
    ld c, l                                       ; $481D: $4D
    ld [$0008], sp                                ; $481E: $08 $08 $00
    nop                                           ; $4821: $00
    ld [hl], a                                    ; $4822: $77
    ld b, h                                       ; $4823: $44
    call nc, $3144                                ; $4824: $D4 $44 $31
    ld b, l                                       ; $4827: $45
    call nc, Call_00E_4644                        ; $4828: $D4 $44 $46
    dec e                                         ; $482B: $1D
    ld c, b                                       ; $482C: $48
    ld c, l                                       ; $482D: $4D
    jr nz, jr_00E_4834                            ; $482E: $20 $04

    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    xor d                                         ; $4832: $AA
    ld b, [hl]                                    ; $4833: $46

jr_00E_4834:
    rst $28                                       ; $4834: $EF
    ld b, [hl]                                    ; $4835: $46
    jr c, jr_00E_487F                             ; $4836: $38 $47

    rst $28                                       ; $4838: $EF
    ld b, [hl]                                    ; $4839: $46
    xor d                                         ; $483A: $AA
    ld b, [hl]                                    ; $483B: $46
    rst $28                                       ; $483C: $EF
    ld b, [hl]                                    ; $483D: $46
    jr c, jr_00E_4887                             ; $483E: $38 $47

    rst $28                                       ; $4840: $EF
    ld b, [hl]                                    ; $4841: $46
    xor d                                         ; $4842: $AA
    ld b, [hl]                                    ; $4843: $46
    rst $28                                       ; $4844: $EF
    ld b, [hl]                                    ; $4845: $46
    jr c, jr_00E_488F                             ; $4846: $38 $47

    rst $28                                       ; $4848: $EF
    ld b, [hl]                                    ; $4849: $46
    xor d                                         ; $484A: $AA
    ld b, [hl]                                    ; $484B: $46
    rst $28                                       ; $484C: $EF
    ld b, [hl]                                    ; $484D: $46
    jr c, jr_00E_4897                             ; $484E: $38 $47

    rst $28                                       ; $4850: $EF
    ld b, [hl]                                    ; $4851: $46
    ld c, h                                       ; $4852: $4C
    jr nz, jr_00E_4855                            ; $4853: $20 $00

jr_00E_4855:
    nop                                           ; $4855: $00
    xor d                                         ; $4856: $AA
    ld b, [hl]                                    ; $4857: $46
    nop                                           ; $4858: $00
    ld b, [hl]                                    ; $4859: $46
    db $FD                                        ; $485A: $FD
    ld b, a                                       ; $485B: $47
    ld c, h                                       ; $485C: $4C
    ld [rRAMG], sp                                ; $485D: $08 $00 $00
    adc [hl]                                      ; $4860: $8E
    ld b, l                                       ; $4861: $45
    ld b, b                                       ; $4862: $40
    nop                                           ; $4863: $00
    nop                                           ; $4864: $00
    jr z, jr_00E_48AD                             ; $4865: $28 $46

    nop                                           ; $4867: $00
    ld c, l                                       ; $4868: $4D
    inc b                                         ; $4869: $04
    ld [rRAMG], sp                                ; $486A: $08 $00 $00
    db $DB                                        ; $486D: $DB
    ld b, l                                       ; $486E: $45
    jr z, jr_00E_48B7                             ; $486F: $28 $46

    ld b, [hl]                                    ; $4871: $46
    ld l, b                                       ; $4872: $68
    ld c, b                                       ; $4873: $48
    ld c, h                                       ; $4874: $4C
    rst $38                                       ; $4875: $FF
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    ld [hl], l                                    ; $4878: $75
    ld b, [hl]                                    ; $4879: $46
    nop                                           ; $487A: $00
    ld b, [hl]                                    ; $487B: $46
    ld [hl], h                                    ; $487C: $74
    ld c, b                                       ; $487D: $48
    ld c, h                                       ; $487E: $4C

jr_00E_487F:
    add b                                         ; $487F: $80
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    sbc $42                                       ; $4882: $DE $42
    jr nz, jr_00E_4886                            ; $4884: $20 $00

jr_00E_4886:
    nop                                           ; $4886: $00

jr_00E_4887:
    adc [hl]                                      ; $4887: $8E
    ld b, l                                       ; $4888: $45
    nop                                           ; $4889: $00
    ld c, h                                       ; $488A: $4C
    rst $38                                       ; $488B: $FF
    nop                                           ; $488C: $00
    nop                                           ; $488D: $00
    db $DB                                        ; $488E: $DB

jr_00E_488F:
    ld b, l                                       ; $488F: $45
    nop                                           ; $4890: $00
    ld b, [hl]                                    ; $4891: $46
    adc d                                         ; $4892: $8A
    ld c, b                                       ; $4893: $48
    ld c, h                                       ; $4894: $4C
    ld b, b                                       ; $4895: $40
    nop                                           ; $4896: $00

jr_00E_4897:
    nop                                           ; $4897: $00
    ld [hl], l                                    ; $4898: $75
    ld b, [hl]                                    ; $4899: $46
    nop                                           ; $489A: $00
    ld c, b                                       ; $489B: $48
    ld c, h                                       ; $489C: $4C
    inc b                                         ; $489D: $04
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    ld [hl], l                                    ; $48A0: $75
    ld b, [hl]                                    ; $48A1: $46
    nop                                           ; $48A2: $00
    ld c, b                                       ; $48A3: $48
    ld c, h                                       ; $48A4: $4C
    inc b                                         ; $48A5: $04
    nop                                           ; $48A6: $00
    nop                                           ; $48A7: $00
    ld [hl], l                                    ; $48A8: $75
    ld b, [hl]                                    ; $48A9: $46
    nop                                           ; $48AA: $00
    ld c, b                                       ; $48AB: $48
    ld c, h                                       ; $48AC: $4C

jr_00E_48AD:
    inc b                                         ; $48AD: $04
    nop                                           ; $48AE: $00
    nop                                           ; $48AF: $00
    ld [hl], l                                    ; $48B0: $75
    ld b, [hl]                                    ; $48B1: $46
    nop                                           ; $48B2: $00
    ld c, b                                       ; $48B3: $48
    ld c, h                                       ; $48B4: $4C
    inc b                                         ; $48B5: $04
    nop                                           ; $48B6: $00

jr_00E_48B7:
    nop                                           ; $48B7: $00
    ld [hl], l                                    ; $48B8: $75
    ld b, [hl]                                    ; $48B9: $46
    nop                                           ; $48BA: $00
    ld c, b                                       ; $48BB: $48
    ld c, h                                       ; $48BC: $4C
    ld [bc], a                                    ; $48BD: $02
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    ld [hl], l                                    ; $48C0: $75
    ld b, [hl]                                    ; $48C1: $46
    nop                                           ; $48C2: $00
    ld c, b                                       ; $48C3: $48
    ld c, h                                       ; $48C4: $4C
    ld [bc], a                                    ; $48C5: $02
    nop                                           ; $48C6: $00
    nop                                           ; $48C7: $00
    ld [hl], l                                    ; $48C8: $75
    ld b, [hl]                                    ; $48C9: $46
    nop                                           ; $48CA: $00
    ld c, b                                       ; $48CB: $48
    ld c, h                                       ; $48CC: $4C
    ld [bc], a                                    ; $48CD: $02
    nop                                           ; $48CE: $00
    nop                                           ; $48CF: $00
    ld [hl], l                                    ; $48D0: $75
    ld b, [hl]                                    ; $48D1: $46
    nop                                           ; $48D2: $00
    ld c, b                                       ; $48D3: $48
    ld c, h                                       ; $48D4: $4C
    ld [bc], a                                    ; $48D5: $02
    nop                                           ; $48D6: $00
    nop                                           ; $48D7: $00
    ld [hl], l                                    ; $48D8: $75
    ld b, [hl]                                    ; $48D9: $46
    nop                                           ; $48DA: $00
    ld c, b                                       ; $48DB: $48
    ld c, h                                       ; $48DC: $4C
    ld [bc], a                                    ; $48DD: $02
    nop                                           ; $48DE: $00
    nop                                           ; $48DF: $00
    ld [hl], l                                    ; $48E0: $75
    ld b, [hl]                                    ; $48E1: $46
    nop                                           ; $48E2: $00
    ld c, b                                       ; $48E3: $48
    ld c, h                                       ; $48E4: $4C
    ld [bc], a                                    ; $48E5: $02
    nop                                           ; $48E6: $00
    nop                                           ; $48E7: $00
    ld [hl], l                                    ; $48E8: $75
    ld b, [hl]                                    ; $48E9: $46
    nop                                           ; $48EA: $00
    ld c, b                                       ; $48EB: $48
    ld c, h                                       ; $48EC: $4C
    ld [bc], a                                    ; $48ED: $02
    nop                                           ; $48EE: $00
    nop                                           ; $48EF: $00
    ld [hl], l                                    ; $48F0: $75
    ld b, [hl]                                    ; $48F1: $46
    nop                                           ; $48F2: $00
    ld c, b                                       ; $48F3: $48
    ld c, h                                       ; $48F4: $4C
    ld [bc], a                                    ; $48F5: $02
    nop                                           ; $48F6: $00
    nop                                           ; $48F7: $00
    ld [hl], l                                    ; $48F8: $75
    ld b, [hl]                                    ; $48F9: $46
    nop                                           ; $48FA: $00
    ld c, b                                       ; $48FB: $48
    ld c, h                                       ; $48FC: $4C
    ld bc, $0000                                  ; $48FD: $01 $00 $00
    ld [hl], l                                    ; $4900: $75
    ld b, [hl]                                    ; $4901: $46
    nop                                           ; $4902: $00
    ld c, b                                       ; $4903: $48
    ld c, h                                       ; $4904: $4C
    ld bc, $0000                                  ; $4905: $01 $00 $00
    ld [hl], l                                    ; $4908: $75
    ld b, [hl]                                    ; $4909: $46
    nop                                           ; $490A: $00
    ld c, b                                       ; $490B: $48
    ld c, h                                       ; $490C: $4C
    ld bc, $0000                                  ; $490D: $01 $00 $00
    ld [hl], l                                    ; $4910: $75
    ld b, [hl]                                    ; $4911: $46
    nop                                           ; $4912: $00
    ld c, b                                       ; $4913: $48
    ld c, h                                       ; $4914: $4C
    ld bc, $0000                                  ; $4915: $01 $00 $00
    ld [hl], l                                    ; $4918: $75
    ld b, [hl]                                    ; $4919: $46
    nop                                           ; $491A: $00
    ld c, b                                       ; $491B: $48
    ld c, h                                       ; $491C: $4C
    ld bc, $0000                                  ; $491D: $01 $00 $00
    ld [hl], l                                    ; $4920: $75
    ld b, [hl]                                    ; $4921: $46
    nop                                           ; $4922: $00
    ld c, b                                       ; $4923: $48
    ld c, h                                       ; $4924: $4C
    ld bc, $0000                                  ; $4925: $01 $00 $00
    ld [hl], l                                    ; $4928: $75
    ld b, [hl]                                    ; $4929: $46
    nop                                           ; $492A: $00
    ld c, b                                       ; $492B: $48
    ld c, h                                       ; $492C: $4C
    ld bc, $0000                                  ; $492D: $01 $00 $00
    ld [hl], l                                    ; $4930: $75
    ld b, [hl]                                    ; $4931: $46
    nop                                           ; $4932: $00
    ld c, b                                       ; $4933: $48
    ld c, h                                       ; $4934: $4C
    ld bc, $0000                                  ; $4935: $01 $00 $00
    ld [hl], l                                    ; $4938: $75
    ld b, [hl]                                    ; $4939: $46
    nop                                           ; $493A: $00
    ld c, b                                       ; $493B: $48
    ld c, h                                       ; $493C: $4C
    ld bc, $0000                                  ; $493D: $01 $00 $00
    ld [hl], l                                    ; $4940: $75
    ld b, [hl]                                    ; $4941: $46
    nop                                           ; $4942: $00
    ld c, b                                       ; $4943: $48
    ld c, h                                       ; $4944: $4C
    ld bc, $0000                                  ; $4945: $01 $00 $00
    ld [hl], l                                    ; $4948: $75
    ld b, [hl]                                    ; $4949: $46
    nop                                           ; $494A: $00
    ld c, b                                       ; $494B: $48
    ld c, h                                       ; $494C: $4C
    ld bc, $0000                                  ; $494D: $01 $00 $00
    ld [hl], l                                    ; $4950: $75
    ld b, [hl]                                    ; $4951: $46
    nop                                           ; $4952: $00
    ld c, b                                       ; $4953: $48
    ld c, h                                       ; $4954: $4C
    ld bc, $0000                                  ; $4955: $01 $00 $00
    ld [hl], l                                    ; $4958: $75
    ld b, [hl]                                    ; $4959: $46
    nop                                           ; $495A: $00
    ld c, b                                       ; $495B: $48
    ld c, h                                       ; $495C: $4C
    ld bc, $0000                                  ; $495D: $01 $00 $00
    ld [hl], l                                    ; $4960: $75
    ld b, [hl]                                    ; $4961: $46
    nop                                           ; $4962: $00
    ld c, b                                       ; $4963: $48
    ld c, h                                       ; $4964: $4C
    ld bc, $0000                                  ; $4965: $01 $00 $00
    ld [hl], l                                    ; $4968: $75
    ld b, [hl]                                    ; $4969: $46
    nop                                           ; $496A: $00
    ld c, b                                       ; $496B: $48
    ld c, h                                       ; $496C: $4C
    ld bc, $0000                                  ; $496D: $01 $00 $00
    ld [hl], l                                    ; $4970: $75
    ld b, [hl]                                    ; $4971: $46
    nop                                           ; $4972: $00
    ld c, b                                       ; $4973: $48
    ld c, h                                       ; $4974: $4C
    ld bc, $0000                                  ; $4975: $01 $00 $00
    ld [hl], l                                    ; $4978: $75
    ld b, [hl]                                    ; $4979: $46
    nop                                           ; $497A: $00
    ld c, b                                       ; $497B: $48
    ld b, d                                       ; $497C: $42
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    dec d                                         ; $497F: $15
    rlca                                          ; $4980: $07
    nop                                           ; $4981: $00
    ld hl, sp+$14                                 ; $4982: $F8 $14
    rlca                                          ; $4984: $07
    ld hl, sp+$00                                 ; $4985: $F8 $00
    add hl, bc                                    ; $4987: $09
    dec b                                         ; $4988: $05
    ld hl, sp-$08                                 ; $4989: $F8 $F8
    ld [$F006], sp                                ; $498B: $08 $06 $F0
    nop                                           ; $498E: $00
    ld bc, $F006                                  ; $498F: $01 $06 $F0
    ld hl, sp+$00                                 ; $4992: $F8 $00
    ld b, $80                                     ; $4994: $06 $80
    ldh a, [rP1]                                  ; $4996: $F0 $00
    cpl                                           ; $4998: $2F
    ld b, $F0                                     ; $4999: $06 $F0
    ld hl, sp+$2E                                 ; $499B: $F8 $2E
    ld b, $00                                     ; $499D: $06 $00
    ld hl, sp+$15                                 ; $499F: $F8 $15
    daa                                           ; $49A1: $27
    nop                                           ; $49A2: $00
    nop                                           ; $49A3: $00
    inc d                                         ; $49A4: $14
    daa                                           ; $49A5: $27
    ld hl, sp-$08                                 ; $49A6: $F8 $F8
    add hl, bc                                    ; $49A8: $09
    dec h                                         ; $49A9: $25
    ld hl, sp+$00                                 ; $49AA: $F8 $00
    ld [$8026], sp                                ; $49AC: $08 $26 $80
    nop                                           ; $49AF: $00
    nop                                           ; $49B0: $00
    add hl, de                                    ; $49B1: $19
    rlca                                          ; $49B2: $07
    nop                                           ; $49B3: $00
    ld hl, sp+$18                                 ; $49B4: $F8 $18
    rlca                                          ; $49B6: $07
    ld hl, sp+$00                                 ; $49B7: $F8 $00
    rrca                                          ; $49B9: $0F
    ld b, $F8                                     ; $49BA: $06 $F8
    ld hl, sp+$0E                                 ; $49BC: $F8 $0E
    ld b, $F0                                     ; $49BE: $06 $F0
    nop                                           ; $49C0: $00
    ld b, $06                                     ; $49C1: $06 $06
    ldh a, [$F8]                                  ; $49C3: $F0 $F8
    dec b                                         ; $49C5: $05
    ld b, $80                                     ; $49C6: $06 $80
    nop                                           ; $49C8: $00
    ld hl, sp+$19                                 ; $49C9: $F8 $19
    daa                                           ; $49CB: $27
    nop                                           ; $49CC: $00
    nop                                           ; $49CD: $00
    jr jr_00E_49F7                                ; $49CE: $18 $27

    ld hl, sp-$08                                 ; $49D0: $F8 $F8
    rrca                                          ; $49D2: $0F
    ld h, $F8                                     ; $49D3: $26 $F8
    nop                                           ; $49D5: $00
    ld c, $26                                     ; $49D6: $0E $26
    ldh a, [$F8]                                  ; $49D8: $F0 $F8
    ld b, $26                                     ; $49DA: $06 $26
    ldh a, [rP1]                                  ; $49DC: $F0 $00
    dec b                                         ; $49DE: $05
    ld h, $80                                     ; $49DF: $26 $80
    ld hl, sp+$00                                 ; $49E1: $F8 $00
    ld de, $F806                                  ; $49E3: $11 $06 $F8
    ld hl, sp+$10                                 ; $49E6: $F8 $10
    ld b, $00                                     ; $49E8: $06 $00
    db $FC                                        ; $49EA: $FC
    ld a, [de]                                    ; $49EB: $1A
    rlca                                          ; $49EC: $07
    pop af                                        ; $49ED: $F1
    nop                                           ; $49EE: $00
    inc bc                                        ; $49EF: $03
    ld b, $F1                                     ; $49F0: $06 $F1
    ld hl, sp+$02                                 ; $49F2: $F8 $02
    ld b, $80                                     ; $49F4: $06 $80
    nop                                           ; $49F6: $00

jr_00E_49F7:
    ld sp, hl                                     ; $49F7: $F9
    ld d, $27                                     ; $49F8: $16 $27
    nop                                           ; $49FA: $00
    nop                                           ; $49FB: $00
    ld d, $07                                     ; $49FC: $16 $07
    ld hl, sp+$00                                 ; $49FE: $F8 $00
    dec bc                                        ; $4A00: $0B
    ld b, $F8                                     ; $4A01: $06 $F8
    ld hl, sp+$0A                                 ; $4A03: $F8 $0A
    ld b, $F0                                     ; $4A05: $06 $F0
    nop                                           ; $4A07: $00
    inc bc                                        ; $4A08: $03
    ld b, $F0                                     ; $4A09: $06 $F0
    ld hl, sp+$02                                 ; $4A0B: $F8 $02
    ld b, $80                                     ; $4A0D: $06 $80
    ld hl, sp+$00                                 ; $4A0F: $F8 $00
    inc l                                         ; $4A11: $2C
    ld b, $F8                                     ; $4A12: $06 $F8
    ld hl, sp+$2B                                 ; $4A14: $F8 $2B
    ld b, $00                                     ; $4A16: $06 $00
    db $FC                                        ; $4A18: $FC
    ld a, [de]                                    ; $4A19: $1A
    daa                                           ; $4A1A: $27
    pop af                                        ; $4A1B: $F1
    nop                                           ; $4A1C: $00
    inc bc                                        ; $4A1D: $03
    ld b, $F1                                     ; $4A1E: $06 $F1
    ld hl, sp+$02                                 ; $4A20: $F8 $02
    ld b, $80                                     ; $4A22: $06 $80
    nop                                           ; $4A24: $00
    nop                                           ; $4A25: $00
    inc e                                         ; $4A26: $1C
    rlca                                          ; $4A27: $07
    nop                                           ; $4A28: $00
    ld hl, sp+$1B                                 ; $4A29: $F8 $1B
    rlca                                          ; $4A2B: $07
    ld sp, hl                                     ; $4A2C: $F9
    nop                                           ; $4A2D: $00
    inc de                                        ; $4A2E: $13
    ld b, $F9                                     ; $4A2F: $06 $F9
    ld hl, sp+$12                                 ; $4A31: $F8 $12
    ld b, $F1                                     ; $4A33: $06 $F1
    ld hl, sp+$04                                 ; $4A35: $F8 $04
    ld h, $F1                                     ; $4A37: $26 $F1
    nop                                           ; $4A39: $00
    inc b                                         ; $4A3A: $04
    ld b, $80                                     ; $4A3B: $06 $80
    nop                                           ; $4A3D: $00
    ld sp, hl                                     ; $4A3E: $F9
    rla                                           ; $4A3F: $17
    daa                                           ; $4A40: $27
    nop                                           ; $4A41: $00
    nop                                           ; $4A42: $00
    rla                                           ; $4A43: $17
    rlca                                          ; $4A44: $07
    ld hl, sp+$00                                 ; $4A45: $F8 $00
    dec c                                         ; $4A47: $0D
    ld b, $F8                                     ; $4A48: $06 $F8
    ld hl, sp+$0C                                 ; $4A4A: $F8 $0C
    ld b, $F0                                     ; $4A4C: $06 $F0
    ld hl, sp+$04                                 ; $4A4E: $F8 $04
    ld h, $F0                                     ; $4A50: $26 $F0
    nop                                           ; $4A52: $00
    inc b                                         ; $4A53: $04
    ld b, $80                                     ; $4A54: $06 $80
    nop                                           ; $4A56: $00
    ld hl, sp+$1C                                 ; $4A57: $F8 $1C
    daa                                           ; $4A59: $27
    nop                                           ; $4A5A: $00
    nop                                           ; $4A5B: $00
    dec de                                        ; $4A5C: $1B
    daa                                           ; $4A5D: $27
    ld sp, hl                                     ; $4A5E: $F9
    ld hl, sp+$13                                 ; $4A5F: $F8 $13
    ld h, $F9                                     ; $4A61: $26 $F9
    nop                                           ; $4A63: $00
    ld [de], a                                    ; $4A64: $12
    ld h, $F1                                     ; $4A65: $26 $F1
    ld hl, sp+$04                                 ; $4A67: $F8 $04
    ld h, $F1                                     ; $4A69: $26 $F1
    nop                                           ; $4A6B: $00
    inc b                                         ; $4A6C: $04
    ld b, $80                                     ; $4A6D: $06 $80
    nop                                           ; $4A6F: $00
    nop                                           ; $4A70: $00
    ld h, $07                                     ; $4A71: $26 $07
    nop                                           ; $4A73: $00
    ld hl, sp+$25                                 ; $4A74: $F8 $25
    rlca                                          ; $4A76: $07
    ld hl, sp+$00                                 ; $4A77: $F8 $00
    jr nz, jr_00E_4A81                            ; $4A79: $20 $06

    ld hl, sp-$08                                 ; $4A7B: $F8 $F8
    rra                                           ; $4A7D: $1F
    ld b, $F1                                     ; $4A7E: $06 $F1
    nop                                           ; $4A80: $00

jr_00E_4A81:
    ld e, $06                                     ; $4A81: $1E $06
    pop af                                        ; $4A83: $F1
    ld hl, sp+$1D                                 ; $4A84: $F8 $1D
    ld b, $80                                     ; $4A86: $06 $80
    nop                                           ; $4A88: $00
    nop                                           ; $4A89: $00
    jr z, jr_00E_4A93                             ; $4A8A: $28 $07

    nop                                           ; $4A8C: $00
    ld hl, sp+$27                                 ; $4A8D: $F8 $27
    rlca                                          ; $4A8F: $07
    ld hl, sp+$00                                 ; $4A90: $F8 $00
    ld [hl+], a                                   ; $4A92: $22

jr_00E_4A93:
    nop                                           ; $4A93: $00
    ld hl, sp-$08                                 ; $4A94: $F8 $F8
    ld hl, $F006                                  ; $4A96: $21 $06 $F0
    nop                                           ; $4A99: $00
    ld e, $06                                     ; $4A9A: $1E $06
    ldh a, [$F8]                                  ; $4A9C: $F0 $F8
    dec e                                         ; $4A9E: $1D
    ld b, $80                                     ; $4A9F: $06 $80
    nop                                           ; $4AA1: $00
    nop                                           ; $4AA2: $00
    ld a, [hl+]                                   ; $4AA3: $2A
    rlca                                          ; $4AA4: $07
    nop                                           ; $4AA5: $00
    ld hl, sp+$29                                 ; $4AA6: $F8 $29
    rlca                                          ; $4AA8: $07
    ld hl, sp+$00                                 ; $4AA9: $F8 $00
    inc h                                         ; $4AAB: $24
    nop                                           ; $4AAC: $00
    ld hl, sp-$08                                 ; $4AAD: $F8 $F8
    inc hl                                        ; $4AAF: $23
    ld b, $F1                                     ; $4AB0: $06 $F1
    nop                                           ; $4AB2: $00
    ld e, $06                                     ; $4AB3: $1E $06
    pop af                                        ; $4AB5: $F1
    ld hl, sp+$1D                                 ; $4AB6: $F8 $1D
    ld b, $80                                     ; $4AB8: $06 $80
    pop af                                        ; $4ABA: $F1
    ld hl, sp+$2D                                 ; $4ABB: $F8 $2D
    ld b, $00                                     ; $4ABD: $06 $00
    ld hl, sp+$26                                 ; $4ABF: $F8 $26
    daa                                           ; $4AC1: $27
    nop                                           ; $4AC2: $00
    nop                                           ; $4AC3: $00
    dec h                                         ; $4AC4: $25
    daa                                           ; $4AC5: $27
    ld hl, sp-$08                                 ; $4AC6: $F8 $F8
    jr nz, @+$28                                  ; $4AC8: $20 $26

    ld hl, sp+$00                                 ; $4ACA: $F8 $00
    rra                                           ; $4ACC: $1F
    ld h, $F1                                     ; $4ACD: $26 $F1
    nop                                           ; $4ACF: $00
    dec e                                         ; $4AD0: $1D
    ld h, $80                                     ; $4AD1: $26 $80
    ldh a, [$F8]                                  ; $4AD3: $F0 $F8
    dec l                                         ; $4AD5: $2D
    ld b, $00                                     ; $4AD6: $06 $00
    ld hl, sp+$28                                 ; $4AD8: $F8 $28
    daa                                           ; $4ADA: $27
    nop                                           ; $4ADB: $00

jr_00E_4ADC:
    nop                                           ; $4ADC: $00
    daa                                           ; $4ADD: $27
    daa                                           ; $4ADE: $27
    ld hl, sp-$08                                 ; $4ADF: $F8 $F8
    ld [hl+], a                                   ; $4AE1: $22
    jr nz, jr_00E_4ADC                            ; $4AE2: $20 $F8

    nop                                           ; $4AE4: $00
    ld hl, $F026                                  ; $4AE5: $21 $26 $F0
    nop                                           ; $4AE8: $00
    dec e                                         ; $4AE9: $1D
    ld h, $80                                     ; $4AEA: $26 $80
    pop af                                        ; $4AEC: $F1
    ld hl, sp+$2D                                 ; $4AED: $F8 $2D
    ld b, $00                                     ; $4AEF: $06 $00
    ld hl, sp+$2A                                 ; $4AF1: $F8 $2A
    daa                                           ; $4AF3: $27
    nop                                           ; $4AF4: $00

jr_00E_4AF5:
    nop                                           ; $4AF5: $00
    add hl, hl                                    ; $4AF6: $29
    daa                                           ; $4AF7: $27
    ld hl, sp-$08                                 ; $4AF8: $F8 $F8
    inc h                                         ; $4AFA: $24
    jr nz, jr_00E_4AF5                            ; $4AFB: $20 $F8

    nop                                           ; $4AFD: $00
    inc hl                                        ; $4AFE: $23
    ld h, $F1                                     ; $4AFF: $26 $F1
    nop                                           ; $4B01: $00
    dec e                                         ; $4B02: $1D
    ld h, $80                                     ; $4B03: $26 $80
    ld c, l                                       ; $4B05: $4D
    ld [$0008], sp                                ; $4B06: $08 $08 $00
    rst $38                                       ; $4B09: $FF
    inc h                                         ; $4B0A: $24
    ld c, d                                       ; $4B0B: $4A
    dec a                                         ; $4B0C: $3D
    ld c, d                                       ; $4B0D: $4A
    ld d, [hl]                                    ; $4B0E: $56
    ld c, d                                       ; $4B0F: $4A
    dec a                                         ; $4B10: $3D
    ld c, d                                       ; $4B11: $4A
    ld b, [hl]                                    ; $4B12: $46
    dec b                                         ; $4B13: $05
    ld c, e                                       ; $4B14: $4B
    ld c, l                                       ; $4B15: $4D
    ld [$0008], sp                                ; $4B16: $08 $08 $00
    ld bc, $49E1                                  ; $4B19: $01 $E1 $49
    or $49                                        ; $4B1C: $F6 $49
    rrca                                          ; $4B1E: $0F
    ld c, d                                       ; $4B1F: $4A
    or $49                                        ; $4B20: $F6 $49
    ld b, [hl]                                    ; $4B22: $46
    dec d                                         ; $4B23: $15
    ld c, e                                       ; $4B24: $4B
    ld c, l                                       ; $4B25: $4D
    ld [$FF08], sp                                ; $4B26: $08 $08 $FF
    nop                                           ; $4B29: $00
    cp d                                          ; $4B2A: $BA
    ld c, d                                       ; $4B2B: $4A
    db $D3                                        ; $4B2C: $D3
    ld c, d                                       ; $4B2D: $4A
    db $EC                                        ; $4B2E: $EC
    ld c, d                                       ; $4B2F: $4A
    db $D3                                        ; $4B30: $D3
    ld c, d                                       ; $4B31: $4A
    ld b, [hl]                                    ; $4B32: $46
    dec h                                         ; $4B33: $25
    ld c, e                                       ; $4B34: $4B
    ld c, l                                       ; $4B35: $4D
    ld [$0108], sp                                ; $4B36: $08 $08 $01
    nop                                           ; $4B39: $00
    ld l, a                                       ; $4B3A: $6F
    ld c, d                                       ; $4B3B: $4A
    adc b                                         ; $4B3C: $88
    ld c, d                                       ; $4B3D: $4A
    and c                                         ; $4B3E: $A1
    ld c, d                                       ; $4B3F: $4A
    adc b                                         ; $4B40: $88
    ld c, d                                       ; $4B41: $4A
    ld b, [hl]                                    ; $4B42: $46
    dec [hl]                                      ; $4B43: $35
    ld c, e                                       ; $4B44: $4B
    ld c, l                                       ; $4B45: $4D
    ld [$0008], sp                                ; $4B46: $08 $08 $00
    cp $24                                        ; $4B49: $FE $24
    ld c, d                                       ; $4B4B: $4A
    dec a                                         ; $4B4C: $3D
    ld c, d                                       ; $4B4D: $4A
    ld d, [hl]                                    ; $4B4E: $56
    ld c, d                                       ; $4B4F: $4A
    dec a                                         ; $4B50: $3D
    ld c, d                                       ; $4B51: $4A
    ld b, [hl]                                    ; $4B52: $46
    ld b, l                                       ; $4B53: $45
    ld c, e                                       ; $4B54: $4B
    ld c, l                                       ; $4B55: $4D
    ld [$0008], sp                                ; $4B56: $08 $08 $00
    ld [bc], a                                    ; $4B59: $02
    pop hl                                        ; $4B5A: $E1
    ld c, c                                       ; $4B5B: $49
    or $49                                        ; $4B5C: $F6 $49
    rrca                                          ; $4B5E: $0F
    ld c, d                                       ; $4B5F: $4A
    or $49                                        ; $4B60: $F6 $49
    ld b, [hl]                                    ; $4B62: $46
    ld d, l                                       ; $4B63: $55
    ld c, e                                       ; $4B64: $4B
    ld c, l                                       ; $4B65: $4D
    ld [$FE08], sp                                ; $4B66: $08 $08 $FE
    nop                                           ; $4B69: $00
    cp d                                          ; $4B6A: $BA
    ld c, d                                       ; $4B6B: $4A
    db $D3                                        ; $4B6C: $D3
    ld c, d                                       ; $4B6D: $4A
    db $EC                                        ; $4B6E: $EC
    ld c, d                                       ; $4B6F: $4A
    db $D3                                        ; $4B70: $D3
    ld c, d                                       ; $4B71: $4A
    ld b, [hl]                                    ; $4B72: $46
    ld h, l                                       ; $4B73: $65
    ld c, e                                       ; $4B74: $4B
    ld c, l                                       ; $4B75: $4D
    ld [$0208], sp                                ; $4B76: $08 $08 $02
    nop                                           ; $4B79: $00
    ld l, a                                       ; $4B7A: $6F
    ld c, d                                       ; $4B7B: $4A
    adc b                                         ; $4B7C: $88
    ld c, d                                       ; $4B7D: $4A
    and c                                         ; $4B7E: $A1
    ld c, d                                       ; $4B7F: $4A
    adc b                                         ; $4B80: $88
    ld c, d                                       ; $4B81: $4A
    ld b, [hl]                                    ; $4B82: $46
    ld [hl], l                                    ; $4B83: $75
    ld c, e                                       ; $4B84: $4B
    ld c, h                                       ; $4B85: $4C
    rst $38                                       ; $4B86: $FF
    nop                                           ; $4B87: $00
    nop                                           ; $4B88: $00
    dec a                                         ; $4B89: $3D
    ld c, d                                       ; $4B8A: $4A
    nop                                           ; $4B8B: $00
    ld b, [hl]                                    ; $4B8C: $46
    add l                                         ; $4B8D: $85
    ld c, e                                       ; $4B8E: $4B
    ld c, h                                       ; $4B8F: $4C
    rst $38                                       ; $4B90: $FF
    nop                                           ; $4B91: $00
    nop                                           ; $4B92: $00
    or $49                                        ; $4B93: $F6 $49
    nop                                           ; $4B95: $00
    ld b, [hl]                                    ; $4B96: $46
    adc a                                         ; $4B97: $8F
    ld c, e                                       ; $4B98: $4B
    ld c, h                                       ; $4B99: $4C
    rst $38                                       ; $4B9A: $FF
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    db $D3                                        ; $4B9D: $D3
    ld c, d                                       ; $4B9E: $4A
    nop                                           ; $4B9F: $00
    ld b, [hl]                                    ; $4BA0: $46
    sbc c                                         ; $4BA1: $99
    ld c, e                                       ; $4BA2: $4B
    ld c, h                                       ; $4BA3: $4C
    rst $38                                       ; $4BA4: $FF
    nop                                           ; $4BA5: $00
    nop                                           ; $4BA6: $00
    adc b                                         ; $4BA7: $88
    ld c, d                                       ; $4BA8: $4A
    nop                                           ; $4BA9: $00
    ld b, [hl]                                    ; $4BAA: $46
    and e                                         ; $4BAB: $A3
    ld c, e                                       ; $4BAC: $4B
    ld c, h                                       ; $4BAD: $4C
    rst $38                                       ; $4BAE: $FF
    nop                                           ; $4BAF: $00
    nop                                           ; $4BB0: $00
    ret z                                         ; $4BB1: $C8

    ld c, c                                       ; $4BB2: $49
    nop                                           ; $4BB3: $00
    ld b, [hl]                                    ; $4BB4: $46
    xor l                                         ; $4BB5: $AD
    ld c, e                                       ; $4BB6: $4B
    ld c, h                                       ; $4BB7: $4C
    rst $38                                       ; $4BB8: $FF
    nop                                           ; $4BB9: $00
    nop                                           ; $4BBA: $00
    xor a                                         ; $4BBB: $AF
    ld c, c                                       ; $4BBC: $49
    nop                                           ; $4BBD: $00
    ld b, [hl]                                    ; $4BBE: $46
    or a                                          ; $4BBF: $B7
    ld c, e                                       ; $4BC0: $4B
    ld c, h                                       ; $4BC1: $4C
    rst $38                                       ; $4BC2: $FF
    nop                                           ; $4BC3: $00
    nop                                           ; $4BC4: $00
    sub [hl]                                      ; $4BC5: $96
    ld c, c                                       ; $4BC6: $49
    nop                                           ; $4BC7: $00
    ld b, [hl]                                    ; $4BC8: $46
    pop bc                                        ; $4BC9: $C1
    ld c, e                                       ; $4BCA: $4B
    ld c, h                                       ; $4BCB: $4C
    rst $38                                       ; $4BCC: $FF
    nop                                           ; $4BCD: $00
    nop                                           ; $4BCE: $00
    ld a, l                                       ; $4BCF: $7D
    ld c, c                                       ; $4BD0: $49
    nop                                           ; $4BD1: $00
    ld b, [hl]                                    ; $4BD2: $46
    bit 1, e                                      ; $4BD3: $CB $4B
    ld c, e                                       ; $4BD5: $4B
    inc bc                                        ; $4BD6: $03
    ld c, $00                                     ; $4BD7: $0E $00
    nop                                           ; $4BD9: $00
    db $EC                                        ; $4BDA: $EC
    ld c, e                                       ; $4BDB: $4B
    ld c, $03                                     ; $4BDC: $0E $03
    nop                                           ; $4BDE: $00
    di                                            ; $4BDF: $F3
    ld c, e                                       ; $4BE0: $4B
    ld c, $02                                     ; $4BE1: $0E $02
    nop                                           ; $4BE3: $00
    ld bc, $0E4C                                  ; $4BE4: $01 $4C $0E
    ld bc, $FA00                                  ; $4BE7: $01 $00 $FA
    ld c, e                                       ; $4BEA: $4B
    rst $38                                       ; $4BEB: $FF
    inc d                                         ; $4BEC: $14
    ld c, $85                                     ; $4BED: $0E $85
    ld c, e                                       ; $4BEF: $4B
    ld h, d                                       ; $4BF0: $62
    ld bc, $1412                                  ; $4BF1: $01 $12 $14
    ld c, $8F                                     ; $4BF4: $0E $8F
    ld c, e                                       ; $4BF6: $4B
    ld h, d                                       ; $4BF7: $62
    ld bc, $1412                                  ; $4BF8: $01 $12 $14
    ld c, $99                                     ; $4BFB: $0E $99
    ld c, e                                       ; $4BFD: $4B
    ld h, d                                       ; $4BFE: $62
    ld bc, $1412                                  ; $4BFF: $01 $12 $14
    ld c, $A3                                     ; $4C02: $0E $A3
    ld c, e                                       ; $4C04: $4B
    ld h, d                                       ; $4C05: $62
    ld bc, $F812                                  ; $4C06: $01 $12 $F8
    nop                                           ; $4C09: $00
    rlca                                          ; $4C0A: $07
    ld b, $F8                                     ; $4C0B: $06 $F8
    ld hl, sp+$06                                 ; $4C0D: $F8 $06
    ld b, $F0                                     ; $4C0F: $06 $F0
    nop                                           ; $4C11: $00
    ld bc, $F006                                  ; $4C12: $01 $06 $F0
    ld hl, sp+$00                                 ; $4C15: $F8 $00
    ld b, $80                                     ; $4C17: $06 $80
    ld hl, sp+$00                                 ; $4C19: $F8 $00
    add hl, bc                                    ; $4C1B: $09
    ld b, $F8                                     ; $4C1C: $06 $F8
    ld hl, sp+$08                                 ; $4C1E: $F8 $08
    ld b, $F1                                     ; $4C20: $06 $F1
    nop                                           ; $4C22: $00
    ld bc, $F106                                  ; $4C23: $01 $06 $F1
    ld hl, sp+$00                                 ; $4C26: $F8 $00
    ld b, $80                                     ; $4C28: $06 $80
    ld hl, sp+$00                                 ; $4C2A: $F8 $00
    dec bc                                        ; $4C2C: $0B
    ld b, $F8                                     ; $4C2D: $06 $F8
    ld hl, sp+$0A                                 ; $4C2F: $F8 $0A
    ld b, $F0                                     ; $4C31: $06 $F0
    ld hl, sp+$02                                 ; $4C33: $F8 $02
    ld h, $F0                                     ; $4C35: $26 $F0
    nop                                           ; $4C37: $00
    ld [bc], a                                    ; $4C38: $02
    ld b, $80                                     ; $4C39: $06 $80
    nop                                           ; $4C3B: $00
    nop                                           ; $4C3C: $00
    ld d, $25                                     ; $4C3D: $16 $25
    nop                                           ; $4C3F: $00
    ld hl, sp+$16                                 ; $4C40: $F8 $16
    dec b                                         ; $4C42: $05
    ld hl, sp+$00                                 ; $4C43: $F8 $00
    dec c                                         ; $4C45: $0D
    ld b, $F8                                     ; $4C46: $06 $F8
    ld hl, sp+$0C                                 ; $4C48: $F8 $0C
    ld b, $F0                                     ; $4C4A: $06 $F0
    ld hl, sp+$03                                 ; $4C4C: $F8 $03
    ld h, $F0                                     ; $4C4E: $26 $F0
    nop                                           ; $4C50: $00
    inc bc                                        ; $4C51: $03
    ld b, $80                                     ; $4C52: $06 $80
    ld hl, sp+$08                                 ; $4C54: $F8 $08
    rrca                                          ; $4C56: $0F
    ld b, $F8                                     ; $4C57: $06 $F8
    nop                                           ; $4C59: $00
    ld c, $00                                     ; $4C5A: $0E $00
    ldh a, [$08]                                  ; $4C5C: $F0 $08
    dec b                                         ; $4C5E: $05
    ld b, $F0                                     ; $4C5F: $06 $F0
    nop                                           ; $4C61: $00
    inc b                                         ; $4C62: $04

Jump_00E_4C63:
    ld b, $80                                     ; $4C63: $06 $80
    ld hl, sp+$08                                 ; $4C65: $F8 $08
    ld de, $F800                                  ; $4C67: $11 $00 $F8
    nop                                           ; $4C6A: $00
    db $10                                        ; $4C6B: $10
    ld b, $F1                                     ; $4C6C: $06 $F1
    ld [$0605], sp                                ; $4C6E: $08 $05 $06
    pop af                                        ; $4C71: $F1
    nop                                           ; $4C72: $00

jr_00E_4C73:
    inc b                                         ; $4C73: $04
    ld b, $80                                     ; $4C74: $06 $80

Call_00E_4C76:
Jump_00E_4C76:
    ldh a, [$F0]                                  ; $4C76: $F0 $F0
    inc de                                        ; $4C78: $13
    ld b, $F8                                     ; $4C79: $06 $F8
    ldh a, [rIF]                                  ; $4C7B: $F0 $0F
    ld h, $F8                                     ; $4C7D: $26 $F8
    ld hl, sp+$0E                                 ; $4C7F: $F8 $0E
    jr nz, jr_00E_4C73                            ; $4C81: $20 $F0

    ld hl, sp+$04                                 ; $4C83: $F8 $04
    ld h, $80                                     ; $4C85: $26 $80
    pop af                                        ; $4C87: $F1

jr_00E_4C88:
    ldh a, [rNR13]                                ; $4C88: $F0 $13
    ld b, $F8                                     ; $4C8A: $06 $F8
    ldh a, [rNR11]                                ; $4C8C: $F0 $11
    jr nz, jr_00E_4C88                            ; $4C8E: $20 $F8

    ld hl, sp+$10                                 ; $4C90: $F8 $10
    ld h, $F1                                     ; $4C92: $26 $F1
    ld hl, sp+$04                                 ; $4C94: $F8 $04
    ld h, $80                                     ; $4C96: $26 $80
    ld [$0600], sp                                ; $4C98: $08 $00 $06
    dec b                                         ; $4C9B: $05
    ld [$05F8], sp                                ; $4C9C: $08 $F8 $05
    dec b                                         ; $4C9F: $05
    nop                                           ; $4CA0: $00
    cp $04                                        ; $4CA1: $FE $04
    dec b                                         ; $4CA3: $05
    ld hl, sp+$00                                 ; $4CA4: $F8 $00
    inc bc                                        ; $4CA6: $03
    nop                                           ; $4CA7: $00
    ld hl, sp-$08                                 ; $4CA8: $F8 $F8
    ld [bc], a                                    ; $4CAA: $02
    ld b, $F0                                     ; $4CAB: $06 $F0
    nop                                           ; $4CAD: $00
    ld bc, $F006                                  ; $4CAE: $01 $06 $F0
    ld hl, sp+$00                                 ; $4CB1: $F8 $00
    ld b, $80                                     ; $4CB3: $06 $80
    rst $38                                       ; $4CB5: $FF
    rst $38                                       ; $4CB6: $FF
    rlca                                          ; $4CB7: $07
    dec b                                         ; $4CB8: $05
    rlca                                          ; $4CB9: $07
    nop                                           ; $4CBA: $00
    add hl, bc                                    ; $4CBB: $09
    dec b                                         ; $4CBC: $05
    rlca                                          ; $4CBD: $07
    ld hl, sp+$08                                 ; $4CBE: $F8 $08
    nop                                           ; $4CC0: $00
    rst $30                                       ; $4CC1: $F7
    nop                                           ; $4CC2: $00
    inc bc                                        ; $4CC3: $03
    nop                                           ; $4CC4: $00
    rst $30                                       ; $4CC5: $F7
    ld hl, sp+$02                                 ; $4CC6: $F8 $02
    ld b, $EF                                     ; $4CC8: $06 $EF
    nop                                           ; $4CCA: $00
    ld bc, $EF06                                  ; $4CCB: $01 $06 $EF
    ld hl, sp+$00                                 ; $4CCE: $F8 $00
    ld b, $80                                     ; $4CD0: $06 $80
    ld b, $00                                     ; $4CD2: $06 $00
    dec bc                                        ; $4CD4: $0B
    dec b                                         ; $4CD5: $05
    ld b, $F8                                     ; $4CD6: $06 $F8
    ld a, [bc]                                    ; $4CD8: $0A
    nop                                           ; $4CD9: $00
    cp $FF                                        ; $4CDA: $FE $FF
    rlca                                          ; $4CDC: $07
    dec b                                         ; $4CDD: $05
    or $00                                        ; $4CDE: $F6 $00
    inc bc                                        ; $4CE0: $03
    nop                                           ; $4CE1: $00
    or $F8                                        ; $4CE2: $F6 $F8
    ld [bc], a                                    ; $4CE4: $02
    ld b, $EE                                     ; $4CE5: $06 $EE
    nop                                           ; $4CE7: $00
    ld bc, $EE06                                  ; $4CE8: $01 $06 $EE
    ld hl, sp+$00                                 ; $4CEB: $F8 $00
    ld b, $80                                     ; $4CED: $06 $80
    ld [$06F8], sp                                ; $4CEF: $08 $F8 $06
    dec h                                         ; $4CF2: $25
    ld [$0500], sp                                ; $4CF3: $08 $00 $05
    jr nz, jr_00E_4CF8                            ; $4CF6: $20 $00

jr_00E_4CF8:
    ld a, [$2504]                                 ; $4CF8: $FA $04 $25
    ld hl, sp-$08                                 ; $4CFB: $F8 $F8
    inc bc                                        ; $4CFD: $03
    jr nz, jr_00E_4CF8                            ; $4CFE: $20 $F8

    nop                                           ; $4D00: $00
    ld [bc], a                                    ; $4D01: $02
    ld h, $F0                                     ; $4D02: $26 $F0
    ld hl, sp+$01                                 ; $4D04: $F8 $01
    ld h, $F0                                     ; $4D06: $26 $F0
    nop                                           ; $4D08: $00
    nop                                           ; $4D09: $00
    ld h, $80                                     ; $4D0A: $26 $80
    rst $38                                       ; $4D0C: $FF
    ld sp, hl                                     ; $4D0D: $F9
    rlca                                          ; $4D0E: $07
    dec h                                         ; $4D0F: $25
    rlca                                          ; $4D10: $07
    ld hl, sp+$09                                 ; $4D11: $F8 $09
    dec h                                         ; $4D13: $25

jr_00E_4D14:
    rlca                                          ; $4D14: $07
    nop                                           ; $4D15: $00
    ld [$F720], sp                                ; $4D16: $08 $20 $F7
    ld hl, sp+$03                                 ; $4D19: $F8 $03
    jr nz, jr_00E_4D14                            ; $4D1B: $20 $F7

    nop                                           ; $4D1D: $00
    ld [bc], a                                    ; $4D1E: $02
    ld h, $EF                                     ; $4D1F: $26 $EF
    ld hl, sp+$01                                 ; $4D21: $F8 $01
    ld h, $EF                                     ; $4D23: $26 $EF
    nop                                           ; $4D25: $00
    nop                                           ; $4D26: $00
    ld h, $80                                     ; $4D27: $26 $80
    ld b, $F8                                     ; $4D29: $06 $F8
    dec bc                                        ; $4D2B: $0B
    dec h                                         ; $4D2C: $25
    ld b, $00                                     ; $4D2D: $06 $00
    ld a, [bc]                                    ; $4D2F: $0A

jr_00E_4D30:
    jr nz, jr_00E_4D30                            ; $4D30: $20 $FE

    ld sp, hl                                     ; $4D32: $F9
    rlca                                          ; $4D33: $07
    dec h                                         ; $4D34: $25
    or $F8                                        ; $4D35: $F6 $F8
    inc bc                                        ; $4D37: $03
    jr nz, jr_00E_4D30                            ; $4D38: $20 $F6

    nop                                           ; $4D3A: $00
    ld [bc], a                                    ; $4D3B: $02
    ld h, $EE                                     ; $4D3C: $26 $EE
    ld hl, sp+$01                                 ; $4D3E: $F8 $01
    ld h, $EE                                     ; $4D40: $26 $EE
    nop                                           ; $4D42: $00
    nop                                           ; $4D43: $00
    ld h, $80                                     ; $4D44: $26 $80
    ld [$11F8], sp                                ; $4D46: $08 $F8 $11
    jr nz, jr_00E_4D53                            ; $4D49: $20 $08

    nop                                           ; $4D4B: $00
    ld de, $0000                                  ; $4D4C: $11 $00 $00
    ld hl, sp+$10                                 ; $4D4F: $F8 $10
    dec h                                         ; $4D51: $25
    nop                                           ; $4D52: $00

jr_00E_4D53:
    nop                                           ; $4D53: $00
    db $10                                        ; $4D54: $10
    dec b                                         ; $4D55: $05
    ld hl, sp+$00                                 ; $4D56: $F8 $00

Jump_00E_4D58:
    rrca                                          ; $4D58: $0F
    ld b, $F8                                     ; $4D59: $06 $F8
    ld hl, sp+$0E                                 ; $4D5B: $F8 $0E
    ld b, $F0                                     ; $4D5D: $06 $F0
    ld hl, sp+$0D                                 ; $4D5F: $F8 $0D
    ld h, $F0                                     ; $4D61: $26 $F0
    nop                                           ; $4D63: $00
    dec c                                         ; $4D64: $0D
    ld b, $80                                     ; $4D65: $06 $80
    ld [$13F8], sp                                ; $4D67: $08 $F8 $13
    jr nz, jr_00E_4D74                            ; $4D6A: $20 $08

    nop                                           ; $4D6C: $00

Jump_00E_4D6D:
    inc de                                        ; $4D6D: $13
    nop                                           ; $4D6E: $00
    nop                                           ; $4D6F: $00
    ld hl, sp+$12                                 ; $4D70: $F8 $12
    dec h                                         ; $4D72: $25
    nop                                           ; $4D73: $00

jr_00E_4D74:
    nop                                           ; $4D74: $00
    ld [de], a                                    ; $4D75: $12
    dec b                                         ; $4D76: $05
    ld hl, sp+$00                                 ; $4D77: $F8 $00
    rrca                                          ; $4D79: $0F
    ld b, $F8                                     ; $4D7A: $06 $F8
    ld hl, sp+$0E                                 ; $4D7C: $F8 $0E
    ld b, $F0                                     ; $4D7E: $06 $F0
    ld hl, sp+$0D                                 ; $4D80: $F8 $0D
    ld h, $F0                                     ; $4D82: $26 $F0
    nop                                           ; $4D84: $00
    dec c                                         ; $4D85: $0D
    ld b, $80                                     ; $4D86: $06 $80
    ld [$14F8], sp                                ; $4D88: $08 $F8 $14
    dec h                                         ; $4D8B: $25
    ld [$1400], sp                                ; $4D8C: $08 $00 $14
    dec b                                         ; $4D8F: $05
    nop                                           ; $4D90: $00
    ld hl, sp+$12                                 ; $4D91: $F8 $12
    dec h                                         ; $4D93: $25
    nop                                           ; $4D94: $00
    nop                                           ; $4D95: $00
    ld [de], a                                    ; $4D96: $12
    dec b                                         ; $4D97: $05
    ld hl, sp+$00                                 ; $4D98: $F8 $00
    rrca                                          ; $4D9A: $0F
    ld b, $F8                                     ; $4D9B: $06 $F8
    ld hl, sp+$0E                                 ; $4D9D: $F8 $0E
    ld b, $F0                                     ; $4D9F: $06 $F0
    ld hl, sp+$0D                                 ; $4DA1: $F8 $0D
    ld h, $F0                                     ; $4DA3: $26 $F0
    nop                                           ; $4DA5: $00
    dec c                                         ; $4DA6: $0D
    ld b, $80                                     ; $4DA7: $06 $80
    ld c, l                                       ; $4DA9: $4D
    inc b                                         ; $4DAA: $04
    ld [rRAMG], sp                                ; $4DAB: $08 $00 $00
    ld a, [hl+]                                   ; $4DAE: $2A
    ld c, h                                       ; $4DAF: $4C
    dec sp                                        ; $4DB0: $3B
    ld c, h                                       ; $4DB1: $4C
    ld b, [hl]                                    ; $4DB2: $46
    xor c                                         ; $4DB3: $A9
    ld c, l                                       ; $4DB4: $4D
    ld c, l                                       ; $4DB5: $4D
    inc b                                         ; $4DB6: $04
    ld [rRAMG], sp                                ; $4DB7: $08 $00 $00
    ld [$194C], sp                                ; $4DBA: $08 $4C $19
    ld c, h                                       ; $4DBD: $4C
    ld b, [hl]                                    ; $4DBE: $46
    or l                                          ; $4DBF: $B5
    ld c, l                                       ; $4DC0: $4D
    ld c, l                                       ; $4DC1: $4D
    inc b                                         ; $4DC2: $04
    ld [rRAMG], sp                                ; $4DC3: $08 $00 $00
    ld d, h                                       ; $4DC6: $54
    ld c, h                                       ; $4DC7: $4C
    ld h, l                                       ; $4DC8: $65
    ld c, h                                       ; $4DC9: $4C
    ld b, [hl]                                    ; $4DCA: $46
    pop bc                                        ; $4DCB: $C1
    ld c, l                                       ; $4DCC: $4D
    ld c, l                                       ; $4DCD: $4D
    inc b                                         ; $4DCE: $04
    ld [rRAMG], sp                                ; $4DCF: $08 $00 $00
    halt                                          ; $4DD2: $76
    ld c, h                                       ; $4DD3: $4C
    add a                                         ; $4DD4: $87
    ld c, h                                       ; $4DD5: $4C
    ld b, [hl]                                    ; $4DD6: $46
    call $4C4D                                    ; $4DD7: $CD $4D $4C
    ld bc, $FF00                                  ; $4DDA: $01 $00 $FF
    ld a, [hl+]                                   ; $4DDD: $2A
    ld c, h                                       ; $4DDE: $4C
    ld [bc], a                                    ; $4DDF: $02
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    ld a, [hl+]                                   ; $4DE2: $2A
    ld c, h                                       ; $4DE3: $4C
    ld bc, $FF00                                  ; $4DE4: $01 $00 $FF
    ld a, [hl+]                                   ; $4DE7: $2A
    ld c, h                                       ; $4DE8: $4C
    ld [bc], a                                    ; $4DE9: $02
    nop                                           ; $4DEA: $00
    nop                                           ; $4DEB: $00
    ld a, [hl+]                                   ; $4DEC: $2A
    ld c, h                                       ; $4DED: $4C
    ld bc, $FF00                                  ; $4DEE: $01 $00 $FF
    ld a, [hl+]                                   ; $4DF1: $2A
    ld c, h                                       ; $4DF2: $4C
    ld [bc], a                                    ; $4DF3: $02
    nop                                           ; $4DF4: $00
    nop                                           ; $4DF5: $00
    ld a, [hl+]                                   ; $4DF6: $2A
    ld c, h                                       ; $4DF7: $4C
    ld bc, $FF00                                  ; $4DF8: $01 $00 $FF
    ld a, [hl+]                                   ; $4DFB: $2A
    ld c, h                                       ; $4DFC: $4C
    ld [bc], a                                    ; $4DFD: $02
    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    ld a, [hl+]                                   ; $4E00: $2A
    ld c, h                                       ; $4E01: $4C
    ld bc, $FF00                                  ; $4E02: $01 $00 $FF
    dec sp                                        ; $4E05: $3B
    ld c, h                                       ; $4E06: $4C
    ld bc, $0000                                  ; $4E07: $01 $00 $00
    dec sp                                        ; $4E0A: $3B
    ld c, h                                       ; $4E0B: $4C
    ld bc, $FF00                                  ; $4E0C: $01 $00 $FF
    dec sp                                        ; $4E0F: $3B
    ld c, h                                       ; $4E10: $4C
    ld bc, $0000                                  ; $4E11: $01 $00 $00
    dec sp                                        ; $4E14: $3B
    ld c, h                                       ; $4E15: $4C
    ld bc, $FE00                                  ; $4E16: $01 $00 $FE
    dec sp                                        ; $4E19: $3B
    ld c, h                                       ; $4E1A: $4C
    ld bc, $0000                                  ; $4E1B: $01 $00 $00
    dec sp                                        ; $4E1E: $3B
    ld c, h                                       ; $4E1F: $4C
    ld bc, $FD00                                  ; $4E20: $01 $00 $FD
    dec sp                                        ; $4E23: $3B
    ld c, h                                       ; $4E24: $4C
    ld bc, $0000                                  ; $4E25: $01 $00 $00
    dec sp                                        ; $4E28: $3B
    ld c, h                                       ; $4E29: $4C
    ld bc, $FE00                                  ; $4E2A: $01 $00 $FE
    dec sp                                        ; $4E2D: $3B
    ld c, h                                       ; $4E2E: $4C
    ld bc, $0000                                  ; $4E2F: $01 $00 $00
    dec sp                                        ; $4E32: $3B
    ld c, h                                       ; $4E33: $4C
    ld bc, $FF00                                  ; $4E34: $01 $00 $FF
    dec sp                                        ; $4E37: $3B
    ld c, h                                       ; $4E38: $4C
    ld bc, $0000                                  ; $4E39: $01 $00 $00
    dec sp                                        ; $4E3C: $3B
    ld c, h                                       ; $4E3D: $4C
    ld bc, $FF00                                  ; $4E3E: $01 $00 $FF
    dec sp                                        ; $4E41: $3B
    ld c, h                                       ; $4E42: $4C
    ld [bc], a                                    ; $4E43: $02
    nop                                           ; $4E44: $00
    nop                                           ; $4E45: $00
    dec sp                                        ; $4E46: $3B
    ld c, h                                       ; $4E47: $4C
    ld bc, $FF00                                  ; $4E48: $01 $00 $FF
    dec sp                                        ; $4E4B: $3B
    ld c, h                                       ; $4E4C: $4C
    ld [bc], a                                    ; $4E4D: $02
    nop                                           ; $4E4E: $00
    nop                                           ; $4E4F: $00
    dec sp                                        ; $4E50: $3B
    ld c, h                                       ; $4E51: $4C
    nop                                           ; $4E52: $00
    ld b, [hl]                                    ; $4E53: $46
    reti                                          ; $4E54: $D9


    ld c, l                                       ; $4E55: $4D
    ld c, h                                       ; $4E56: $4C
    ld bc, $0100                                  ; $4E57: $01 $00 $01
    ld [$024C], sp                                ; $4E5A: $08 $4C $02
    nop                                           ; $4E5D: $00
    nop                                           ; $4E5E: $00
    ld [HeaderMaskROMVersion], sp                 ; $4E5F: $08 $4C $01
    nop                                           ; $4E62: $00
    ld bc, $4C08                                  ; $4E63: $01 $08 $4C
    ld [bc], a                                    ; $4E66: $02
    nop                                           ; $4E67: $00
    nop                                           ; $4E68: $00
    ld [HeaderMaskROMVersion], sp                 ; $4E69: $08 $4C $01
    nop                                           ; $4E6C: $00
    ld bc, $4C08                                  ; $4E6D: $01 $08 $4C
    ld [bc], a                                    ; $4E70: $02
    nop                                           ; $4E71: $00
    nop                                           ; $4E72: $00
    ld [HeaderMaskROMVersion], sp                 ; $4E73: $08 $4C $01
    nop                                           ; $4E76: $00
    ld bc, $4C08                                  ; $4E77: $01 $08 $4C
    ld [bc], a                                    ; $4E7A: $02
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    ld [HeaderMaskROMVersion], sp                 ; $4E7D: $08 $4C $01
    nop                                           ; $4E80: $00
    ld bc, $4C19                                  ; $4E81: $01 $19 $4C
    ld bc, $0000                                  ; $4E84: $01 $00 $00
    add hl, de                                    ; $4E87: $19
    ld c, h                                       ; $4E88: $4C
    ld bc, $0100                                  ; $4E89: $01 $00 $01
    add hl, de                                    ; $4E8C: $19
    ld c, h                                       ; $4E8D: $4C
    ld bc, $0000                                  ; $4E8E: $01 $00 $00
    add hl, de                                    ; $4E91: $19
    ld c, h                                       ; $4E92: $4C
    ld bc, $0200                                  ; $4E93: $01 $00 $02
    add hl, de                                    ; $4E96: $19
    ld c, h                                       ; $4E97: $4C
    ld bc, $0000                                  ; $4E98: $01 $00 $00
    add hl, de                                    ; $4E9B: $19
    ld c, h                                       ; $4E9C: $4C
    ld bc, $0300                                  ; $4E9D: $01 $00 $03
    add hl, de                                    ; $4EA0: $19
    ld c, h                                       ; $4EA1: $4C
    ld bc, $0000                                  ; $4EA2: $01 $00 $00
    add hl, de                                    ; $4EA5: $19
    ld c, h                                       ; $4EA6: $4C
    ld bc, $0200                                  ; $4EA7: $01 $00 $02
    add hl, de                                    ; $4EAA: $19
    ld c, h                                       ; $4EAB: $4C
    ld bc, $0000                                  ; $4EAC: $01 $00 $00
    add hl, de                                    ; $4EAF: $19
    ld c, h                                       ; $4EB0: $4C
    ld bc, $0100                                  ; $4EB1: $01 $00 $01
    add hl, de                                    ; $4EB4: $19
    ld c, h                                       ; $4EB5: $4C
    ld bc, $0000                                  ; $4EB6: $01 $00 $00
    add hl, de                                    ; $4EB9: $19
    ld c, h                                       ; $4EBA: $4C
    ld bc, $0100                                  ; $4EBB: $01 $00 $01
    add hl, de                                    ; $4EBE: $19
    ld c, h                                       ; $4EBF: $4C
    ld [bc], a                                    ; $4EC0: $02
    nop                                           ; $4EC1: $00
    nop                                           ; $4EC2: $00
    add hl, de                                    ; $4EC3: $19
    ld c, h                                       ; $4EC4: $4C
    ld bc, $0100                                  ; $4EC5: $01 $00 $01
    add hl, de                                    ; $4EC8: $19
    ld c, h                                       ; $4EC9: $4C
    ld [bc], a                                    ; $4ECA: $02
    nop                                           ; $4ECB: $00
    nop                                           ; $4ECC: $00
    add hl, de                                    ; $4ECD: $19
    ld c, h                                       ; $4ECE: $4C
    nop                                           ; $4ECF: $00
    ld b, [hl]                                    ; $4ED0: $46
    ld d, [hl]                                    ; $4ED1: $56
    ld c, [hl]                                    ; $4ED2: $4E
    ld c, h                                       ; $4ED3: $4C
    ld bc, $00FF                                  ; $4ED4: $01 $FF $00
    halt                                          ; $4ED7: $76
    ld c, h                                       ; $4ED8: $4C
    ld [bc], a                                    ; $4ED9: $02
    nop                                           ; $4EDA: $00
    nop                                           ; $4EDB: $00
    halt                                          ; $4EDC: $76
    ld c, h                                       ; $4EDD: $4C
    ld bc, $00FF                                  ; $4EDE: $01 $FF $00
    halt                                          ; $4EE1: $76
    ld c, h                                       ; $4EE2: $4C
    ld [bc], a                                    ; $4EE3: $02
    nop                                           ; $4EE4: $00
    nop                                           ; $4EE5: $00
    halt                                          ; $4EE6: $76
    ld c, h                                       ; $4EE7: $4C
    ld bc, $00FF                                  ; $4EE8: $01 $FF $00
    halt                                          ; $4EEB: $76
    ld c, h                                       ; $4EEC: $4C
    ld [bc], a                                    ; $4EED: $02
    nop                                           ; $4EEE: $00
    nop                                           ; $4EEF: $00
    halt                                          ; $4EF0: $76
    ld c, h                                       ; $4EF1: $4C
    ld bc, $00FF                                  ; $4EF2: $01 $FF $00
    halt                                          ; $4EF5: $76
    ld c, h                                       ; $4EF6: $4C
    ld [bc], a                                    ; $4EF7: $02
    nop                                           ; $4EF8: $00
    nop                                           ; $4EF9: $00
    halt                                          ; $4EFA: $76
    ld c, h                                       ; $4EFB: $4C
    ld bc, $00FF                                  ; $4EFC: $01 $FF $00
    add a                                         ; $4EFF: $87
    ld c, h                                       ; $4F00: $4C
    ld bc, $0000                                  ; $4F01: $01 $00 $00
    add a                                         ; $4F04: $87
    ld c, h                                       ; $4F05: $4C
    ld bc, $00FF                                  ; $4F06: $01 $FF $00
    add a                                         ; $4F09: $87
    ld c, h                                       ; $4F0A: $4C
    ld bc, $0000                                  ; $4F0B: $01 $00 $00
    add a                                         ; $4F0E: $87
    ld c, h                                       ; $4F0F: $4C
    ld bc, $00FE                                  ; $4F10: $01 $FE $00
    add a                                         ; $4F13: $87
    ld c, h                                       ; $4F14: $4C
    ld bc, $0000                                  ; $4F15: $01 $00 $00
    add a                                         ; $4F18: $87
    ld c, h                                       ; $4F19: $4C
    ld bc, $00FD                                  ; $4F1A: $01 $FD $00
    add a                                         ; $4F1D: $87
    ld c, h                                       ; $4F1E: $4C
    ld bc, $0000                                  ; $4F1F: $01 $00 $00
    add a                                         ; $4F22: $87
    ld c, h                                       ; $4F23: $4C
    ld bc, $00FE                                  ; $4F24: $01 $FE $00
    add a                                         ; $4F27: $87
    ld c, h                                       ; $4F28: $4C
    ld bc, $0000                                  ; $4F29: $01 $00 $00
    add a                                         ; $4F2C: $87
    ld c, h                                       ; $4F2D: $4C
    ld bc, $00FF                                  ; $4F2E: $01 $FF $00
    add a                                         ; $4F31: $87
    ld c, h                                       ; $4F32: $4C
    ld bc, $0000                                  ; $4F33: $01 $00 $00
    add a                                         ; $4F36: $87
    ld c, h                                       ; $4F37: $4C
    ld bc, $00FF                                  ; $4F38: $01 $FF $00
    add a                                         ; $4F3B: $87
    ld c, h                                       ; $4F3C: $4C
    ld [bc], a                                    ; $4F3D: $02
    nop                                           ; $4F3E: $00
    nop                                           ; $4F3F: $00
    add a                                         ; $4F40: $87
    ld c, h                                       ; $4F41: $4C
    ld bc, $00FF                                  ; $4F42: $01 $FF $00
    add a                                         ; $4F45: $87
    ld c, h                                       ; $4F46: $4C
    ld [bc], a                                    ; $4F47: $02
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00
    add a                                         ; $4F4A: $87
    ld c, h                                       ; $4F4B: $4C
    nop                                           ; $4F4C: $00
    ld b, [hl]                                    ; $4F4D: $46
    db $D3                                        ; $4F4E: $D3
    ld c, [hl]                                    ; $4F4F: $4E
    ld c, h                                       ; $4F50: $4C
    ld bc, $0001                                  ; $4F51: $01 $01 $00
    ld d, h                                       ; $4F54: $54
    ld c, h                                       ; $4F55: $4C
    ld [bc], a                                    ; $4F56: $02
    nop                                           ; $4F57: $00
    nop                                           ; $4F58: $00
    ld d, h                                       ; $4F59: $54
    ld c, h                                       ; $4F5A: $4C
    ld bc, $0001                                  ; $4F5B: $01 $01 $00
    ld d, h                                       ; $4F5E: $54
    ld c, h                                       ; $4F5F: $4C
    ld [bc], a                                    ; $4F60: $02
    nop                                           ; $4F61: $00
    nop                                           ; $4F62: $00
    ld d, h                                       ; $4F63: $54
    ld c, h                                       ; $4F64: $4C
    ld bc, $0001                                  ; $4F65: $01 $01 $00
    ld d, h                                       ; $4F68: $54
    ld c, h                                       ; $4F69: $4C
    ld [bc], a                                    ; $4F6A: $02
    nop                                           ; $4F6B: $00
    nop                                           ; $4F6C: $00
    ld d, h                                       ; $4F6D: $54
    ld c, h                                       ; $4F6E: $4C
    ld bc, $0001                                  ; $4F6F: $01 $01 $00
    ld d, h                                       ; $4F72: $54
    ld c, h                                       ; $4F73: $4C
    ld [bc], a                                    ; $4F74: $02
    nop                                           ; $4F75: $00
    nop                                           ; $4F76: $00
    ld d, h                                       ; $4F77: $54
    ld c, h                                       ; $4F78: $4C
    ld bc, $0001                                  ; $4F79: $01 $01 $00
    ld h, l                                       ; $4F7C: $65
    ld c, h                                       ; $4F7D: $4C
    ld bc, $0000                                  ; $4F7E: $01 $00 $00
    ld h, l                                       ; $4F81: $65
    ld c, h                                       ; $4F82: $4C
    ld bc, $0001                                  ; $4F83: $01 $01 $00
    ld h, l                                       ; $4F86: $65
    ld c, h                                       ; $4F87: $4C
    ld bc, $0000                                  ; $4F88: $01 $00 $00
    ld h, l                                       ; $4F8B: $65
    ld c, h                                       ; $4F8C: $4C
    ld bc, $0002                                  ; $4F8D: $01 $02 $00
    ld h, l                                       ; $4F90: $65
    ld c, h                                       ; $4F91: $4C
    ld bc, $0000                                  ; $4F92: $01 $00 $00
    ld h, l                                       ; $4F95: $65
    ld c, h                                       ; $4F96: $4C
    ld bc, $0003                                  ; $4F97: $01 $03 $00
    ld h, l                                       ; $4F9A: $65
    ld c, h                                       ; $4F9B: $4C
    ld bc, $0000                                  ; $4F9C: $01 $00 $00
    ld h, l                                       ; $4F9F: $65
    ld c, h                                       ; $4FA0: $4C
    ld bc, $0002                                  ; $4FA1: $01 $02 $00
    ld h, l                                       ; $4FA4: $65
    ld c, h                                       ; $4FA5: $4C
    ld bc, $0000                                  ; $4FA6: $01 $00 $00
    ld h, l                                       ; $4FA9: $65
    ld c, h                                       ; $4FAA: $4C
    ld bc, $0001                                  ; $4FAB: $01 $01 $00
    ld h, l                                       ; $4FAE: $65
    ld c, h                                       ; $4FAF: $4C
    ld bc, $0000                                  ; $4FB0: $01 $00 $00
    ld h, l                                       ; $4FB3: $65
    ld c, h                                       ; $4FB4: $4C
    ld bc, $0001                                  ; $4FB5: $01 $01 $00
    ld h, l                                       ; $4FB8: $65
    ld c, h                                       ; $4FB9: $4C
    ld [bc], a                                    ; $4FBA: $02
    nop                                           ; $4FBB: $00
    nop                                           ; $4FBC: $00
    ld h, l                                       ; $4FBD: $65
    ld c, h                                       ; $4FBE: $4C
    ld bc, $0001                                  ; $4FBF: $01 $01 $00
    ld h, l                                       ; $4FC2: $65
    ld c, h                                       ; $4FC3: $4C
    ld [bc], a                                    ; $4FC4: $02
    nop                                           ; $4FC5: $00
    nop                                           ; $4FC6: $00
    ld h, l                                       ; $4FC7: $65
    ld c, h                                       ; $4FC8: $4C
    nop                                           ; $4FC9: $00
    ld b, [hl]                                    ; $4FCA: $46
    ld d, b                                       ; $4FCB: $50
    ld c, a                                       ; $4FCC: $4F
    ld c, h                                       ; $4FCD: $4C
    inc b                                         ; $4FCE: $04
    nop                                           ; $4FCF: $00
    nop                                           ; $4FD0: $00
    halt                                          ; $4FD1: $76
    ld c, h                                       ; $4FD2: $4C
    nop                                           ; $4FD3: $00
    ld b, d                                       ; $4FD4: $42
    ld c, h                                       ; $4FD5: $4C
    inc b                                         ; $4FD6: $04
    nop                                           ; $4FD7: $00
    nop                                           ; $4FD8: $00
    ld d, h                                       ; $4FD9: $54
    ld c, h                                       ; $4FDA: $4C
    nop                                           ; $4FDB: $00
    ld b, d                                       ; $4FDC: $42
    ld c, l                                       ; $4FDD: $4D
    ld [$0008], sp                                ; $4FDE: $08 $08 $00
    nop                                           ; $4FE1: $00
    sbc b                                         ; $4FE2: $98
    ld c, h                                       ; $4FE3: $4C
    or l                                          ; $4FE4: $B5
    ld c, h                                       ; $4FE5: $4C
    jp nc, $B54C                                  ; $4FE6: $D2 $4C $B5

    ld c, h                                       ; $4FE9: $4C
    ld b, [hl]                                    ; $4FEA: $46
    db $DD                                        ; $4FEB: $DD
    ld c, a                                       ; $4FEC: $4F
    ld c, l                                       ; $4FED: $4D
    ld [$0008], sp                                ; $4FEE: $08 $08 $00
    nop                                           ; $4FF1: $00
    rst $28                                       ; $4FF2: $EF
    ld c, h                                       ; $4FF3: $4C
    inc c                                         ; $4FF4: $0C
    ld c, l                                       ; $4FF5: $4D
    add hl, hl                                    ; $4FF6: $29
    ld c, l                                       ; $4FF7: $4D
    inc c                                         ; $4FF8: $0C
    ld c, l                                       ; $4FF9: $4D
    ld b, [hl]                                    ; $4FFA: $46
    db $ED                                        ; $4FFB: $ED
    ld c, a                                       ; $4FFC: $4F
    ld c, l                                       ; $4FFD: $4D
    ld [$0008], sp                                ; $4FFE: $08 $08 $00
    cp $46                                        ; $5001: $FE $46
    ld c, l                                       ; $5003: $4D
    ld h, a                                       ; $5004: $67
    ld c, l                                       ; $5005: $4D
    adc b                                         ; $5006: $88
    ld c, l                                       ; $5007: $4D
    ld h, a                                       ; $5008: $67
    ld c, l                                       ; $5009: $4D
    ld b, [hl]                                    ; $500A: $46
    db $FD                                        ; $500B: $FD
    ld c, a                                       ; $500C: $4F

    db $00, $00, $14, $02, $00, $F8, $13, $02, $F8, $00, $09, $03, $F8, $F8, $08, $03
    db $F0, $00, $01, $03, $F0, $F8, $00, $03, $80, $00, $F8, $14, $22, $00, $00, $13
    db $22, $F8, $F8, $09, $23, $F8, $00, $08, $23, $F0, $F8, $01, $23, $F0, $00, $00
    db $23, $80, $00, $00, $18, $02, $00, $F8, $17, $02, $F8, $00, $0E, $03, $F8, $F8
    db $0D, $03, $F0, $00, $07, $03, $F0, $F8, $06, $03, $80, $00, $F8, $18, $22, $00
    db $00, $17, $22, $F8, $F8, $0E, $23, $F8, $00, $0D, $23, $F0, $F8, $07, $23, $F0
    db $00, $06, $23, $80, $00, $FC, $19, $02, $F8, $00, $10, $03, $F8, $F8, $0F, $03
    db $F1, $00, $03, $03, $F1, $F8, $02, $03, $80, $00, $F9, $15, $22, $00, $00, $15
    db $02, $F8, $00, $0B, $03, $F8, $F8, $0A, $03, $F0, $00, $03, $03, $F0, $F8, $02
    db $03, $80, $00, $FC, $19, $22, $F8, $F8, $10, $23, $F8, $00, $0F, $23, $F1, $00
    db $03, $03, $F1, $F8, $02, $03, $80, $00, $00, $1B, $02, $00, $F8, $1A, $02, $F8
    db $00, $12, $03, $F8, $F8, $11, $03, $F1, $00, $05, $03, $F1, $F8, $04, $03, $80
    db $00, $F9, $16, $22, $00, $00, $16, $02, $F8, $F8, $0C, $23, $F8, $00, $0C, $03
    db $F0, $00, $05, $03, $F0, $F8, $04, $03, $80, $00, $F8, $1B, $22, $00, $00, $1A
    db $22, $F8, $F8, $12, $23, $F8, $00, $11, $23, $F1, $00, $05, $03, $F1, $F8, $04
    db $03, $80, $00, $00, $25, $02, $00, $F8, $24, $02, $F8, $00, $1F, $03, $F8, $F8
    db $1E, $03, $F1, $00, $1D, $03, $F1, $F8, $1C, $03, $80, $00, $00, $27, $02, $00
    db $F8, $26, $02, $F8, $00, $21, $03, $F8, $F8, $20, $03, $F0, $00, $1D, $03, $F0
    db $F8, $1C, $03, $80, $00, $00, $29, $02, $00, $F8, $28, $02, $F8, $00, $23, $03
    db $F8, $F8, $22, $03, $F1, $00, $1D, $03, $F1, $F8, $1C, $03, $80, $00, $F8, $25
    db $22, $00, $00, $24, $22, $F8, $F8, $1F, $23, $F8, $00, $1E, $23, $F1, $F8, $1D
    db $23, $F1, $00, $1C, $23, $80, $00, $F8, $27, $22, $00, $00, $26, $22, $F8, $F8
    db $21, $23, $F8, $00, $20, $23, $F0, $F8, $1D, $23, $F0, $00, $1C, $23, $80, $00
    db $F8, $29, $22, $00, $00, $28, $22, $F8, $F8, $23, $23, $F8, $00, $22, $23, $F1
    db $F8, $1D, $23, $F1, $00, $1C, $23, $80, $00, $F9, $15, $22, $00, $00, $15, $02
    db $F9, $00, $2B, $03, $F9, $F8, $2A, $03, $F1, $00, $03, $03, $F1, $F8, $02, $03
    db $80

    ld hl, sp+$00                                 ; $51AE: $F8 $00
    dec bc                                        ; $51B0: $0B
    inc bc                                        ; $51B1: $03
    ld hl, sp-$08                                 ; $51B2: $F8 $F8
    ld a, [bc]                                    ; $51B4: $0A
    inc bc                                        ; $51B5: $03
    ldh a, [rP1]                                  ; $51B6: $F0 $00
    inc bc                                        ; $51B8: $03
    inc bc                                        ; $51B9: $03
    ldh a, [$F8]                                  ; $51BA: $F0 $F8
    ld [bc], a                                    ; $51BC: $02
    inc bc                                        ; $51BD: $03
    add b                                         ; $51BE: $80
    nop                                           ; $51BF: $00
    nop                                           ; $51C0: $00
    ld [hl], $02                                  ; $51C1: $36 $02
    nop                                           ; $51C3: $00
    ld hl, sp+$35                                 ; $51C4: $F8 $35
    ld [bc], a                                    ; $51C6: $02
    ld hl, sp+$00                                 ; $51C7: $F8 $00
    inc [hl]                                      ; $51C9: $34
    inc bc                                        ; $51CA: $03
    ld hl, sp-$08                                 ; $51CB: $F8 $F8
    inc sp                                        ; $51CD: $33
    inc bc                                        ; $51CE: $03
    ldh a, [rP1]                                  ; $51CF: $F0 $00
    ld [hl-], a                                   ; $51D1: $32
    inc bc                                        ; $51D2: $03
    ldh a, [$F8]                                  ; $51D3: $F0 $F8
    ld sp, $F003                                  ; $51D5: $31 $03 $F0
    ldh a, [$30]                                  ; $51D8: $F0 $30
    inc bc                                        ; $51DA: $03
    add b                                         ; $51DB: $80
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    dec a                                         ; $51DE: $3D
    ld [bc], a                                    ; $51DF: $02
    nop                                           ; $51E0: $00
    ld hl, sp+$35                                 ; $51E1: $F8 $35
    ld [bc], a                                    ; $51E3: $02
    ld hl, sp+$08                                 ; $51E4: $F8 $08
    inc a                                         ; $51E6: $3C
    inc bc                                        ; $51E7: $03
    ld hl, sp+$00                                 ; $51E8: $F8 $00
    dec sp                                        ; $51EA: $3B
    inc bc                                        ; $51EB: $03
    ld hl, sp-$08                                 ; $51EC: $F8 $F8
    ld a, [hl-]                                   ; $51EE: $3A
    inc bc                                        ; $51EF: $03
    ldh a, [$08]                                  ; $51F0: $F0 $08
    add hl, sp                                    ; $51F2: $39
    inc bc                                        ; $51F3: $03
    ldh a, [rP1]                                  ; $51F4: $F0 $00
    jr c, jr_00E_51FB                             ; $51F6: $38 $03

    ldh a, [$F8]                                  ; $51F8: $F0 $F8
    scf                                           ; $51FA: $37

jr_00E_51FB:
    inc bc                                        ; $51FB: $03
    add b                                         ; $51FC: $80
    nop                                           ; $51FD: $00
    ld [$033E], sp                                ; $51FE: $08 $3E $03
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    dec a                                         ; $5203: $3D
    ld [bc], a                                    ; $5204: $02
    ld hl, sp-$08                                 ; $5205: $F8 $F8
    ccf                                           ; $5207: $3F
    inc bc                                        ; $5208: $03
    ldh a, [rP1]                                  ; $5209: $F0 $00
    ld [hl-], a                                   ; $520B: $32
    inc bc                                        ; $520C: $03
    ldh a, [$F8]                                  ; $520D: $F0 $F8
    scf                                           ; $520F: $37
    inc bc                                        ; $5210: $03
    ld hl, sp+$08                                 ; $5211: $F8 $08
    ld b, c                                       ; $5213: $41
    inc bc                                        ; $5214: $03
    ld hl, sp+$00                                 ; $5215: $F8 $00
    ld b, b                                       ; $5217: $40
    inc bc                                        ; $5218: $03
    nop                                           ; $5219: $00
    ld hl, sp+$35                                 ; $521A: $F8 $35
    ld [bc], a                                    ; $521C: $02
    add b                                         ; $521D: $80
    nop                                           ; $521E: $00
    ld hl, sp+$36                                 ; $521F: $F8 $36
    ld [hl+], a                                   ; $5221: $22
    nop                                           ; $5222: $00
    nop                                           ; $5223: $00
    dec [hl]                                      ; $5224: $35
    ld [hl+], a                                   ; $5225: $22
    ld hl, sp-$08                                 ; $5226: $F8 $F8
    inc [hl]                                      ; $5228: $34
    inc hl                                        ; $5229: $23
    ld hl, sp+$00                                 ; $522A: $F8 $00
    inc sp                                        ; $522C: $33
    inc hl                                        ; $522D: $23
    ldh a, [$F8]                                  ; $522E: $F0 $F8
    ld [hl-], a                                   ; $5230: $32
    inc hl                                        ; $5231: $23
    ldh a, [rP1]                                  ; $5232: $F0 $00
    ld sp, $F023                                  ; $5234: $31 $23 $F0
    ld [$2330], sp                                ; $5237: $08 $30 $23
    add b                                         ; $523A: $80
    nop                                           ; $523B: $00
    ld hl, sp+$3D                                 ; $523C: $F8 $3D
    ld [hl+], a                                   ; $523E: $22
    nop                                           ; $523F: $00
    nop                                           ; $5240: $00
    dec [hl]                                      ; $5241: $35
    ld [hl+], a                                   ; $5242: $22
    ld hl, sp-$10                                 ; $5243: $F8 $F0
    inc a                                         ; $5245: $3C
    inc hl                                        ; $5246: $23
    ld hl, sp-$08                                 ; $5247: $F8 $F8
    dec sp                                        ; $5249: $3B
    inc hl                                        ; $524A: $23
    ld hl, sp+$00                                 ; $524B: $F8 $00
    ld a, [hl-]                                   ; $524D: $3A
    inc hl                                        ; $524E: $23
    ldh a, [$F0]                                  ; $524F: $F0 $F0
    add hl, sp                                    ; $5251: $39
    inc hl                                        ; $5252: $23
    ldh a, [$F8]                                  ; $5253: $F0 $F8
    jr c, jr_00E_527A                             ; $5255: $38 $23

    ldh a, [rP1]                                  ; $5257: $F0 $00
    scf                                           ; $5259: $37
    inc hl                                        ; $525A: $23
    add b                                         ; $525B: $80
    nop                                           ; $525C: $00
    ldh a, [$3E]                                  ; $525D: $F0 $3E
    inc hl                                        ; $525F: $23
    nop                                           ; $5260: $00
    ld hl, sp+$3D                                 ; $5261: $F8 $3D
    ld [hl+], a                                   ; $5263: $22
    ld hl, sp+$00                                 ; $5264: $F8 $00
    ccf                                           ; $5266: $3F
    inc hl                                        ; $5267: $23
    ldh a, [$F8]                                  ; $5268: $F0 $F8
    ld [hl-], a                                   ; $526A: $32
    inc hl                                        ; $526B: $23
    ldh a, [rP1]                                  ; $526C: $F0 $00
    scf                                           ; $526E: $37
    inc hl                                        ; $526F: $23
    ld hl, sp-$10                                 ; $5270: $F8 $F0
    ld b, c                                       ; $5272: $41
    inc hl                                        ; $5273: $23
    ld hl, sp-$08                                 ; $5274: $F8 $F8
    ld b, b                                       ; $5276: $40
    inc hl                                        ; $5277: $23
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00

jr_00E_527A:
    dec [hl]                                      ; $527A: $35
    ld [hl+], a                                   ; $527B: $22
    add b                                         ; $527C: $80
    nop                                           ; $527D: $00
    nop                                           ; $527E: $00
    ld [hl], $03                                  ; $527F: $36 $03
    nop                                           ; $5281: $00
    ld hl, sp+$35                                 ; $5282: $F8 $35
    inc bc                                        ; $5284: $03
    nop                                           ; $5285: $00
    ld hl, sp+$34                                 ; $5286: $F8 $34
    ld [bc], a                                    ; $5288: $02
    ld hl, sp+$00                                 ; $5289: $F8 $00
    inc sp                                        ; $528B: $33
    inc bc                                        ; $528C: $03
    ld hl, sp-$08                                 ; $528D: $F8 $F8
    ld [hl-], a                                   ; $528F: $32
    inc bc                                        ; $5290: $03
    ldh a, [rP1]                                  ; $5291: $F0 $00
    ld sp, $F003                                  ; $5293: $31 $03 $F0
    ld hl, sp+$30                                 ; $5296: $F8 $30
    inc bc                                        ; $5298: $03
    add b                                         ; $5299: $80
    ld [$3D0C], sp                                ; $529A: $08 $0C $3D
    inc bc                                        ; $529D: $03
    ld [$3C04], sp                                ; $529E: $08 $04 $3C
    inc bc                                        ; $52A1: $03
    ld [$3BFC], sp                                ; $52A2: $08 $FC $3B
    inc bc                                        ; $52A5: $03
    nop                                           ; $52A6: $00
    inc c                                         ; $52A7: $0C
    ld a, [hl-]                                   ; $52A8: $3A
    inc bc                                        ; $52A9: $03
    nop                                           ; $52AA: $00
    inc b                                         ; $52AB: $04
    add hl, sp                                    ; $52AC: $39
    inc bc                                        ; $52AD: $03
    nop                                           ; $52AE: $00
    db $FC                                        ; $52AF: $FC
    jr c, jr_00E_52B4                             ; $52B0: $38 $02

    nop                                           ; $52B2: $00
    db $F4                                        ; $52B3: $F4

jr_00E_52B4:
    scf                                           ; $52B4: $37
    ld [bc], a                                    ; $52B5: $02
    add b                                         ; $52B6: $80
    nop                                           ; $52B7: $00
    ld hl, sp+$36                                 ; $52B8: $F8 $36
    inc hl                                        ; $52BA: $23
    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    dec [hl]                                      ; $52BD: $35
    inc hl                                        ; $52BE: $23
    nop                                           ; $52BF: $00
    nop                                           ; $52C0: $00
    inc [hl]                                      ; $52C1: $34
    ld [hl+], a                                   ; $52C2: $22
    ld hl, sp-$08                                 ; $52C3: $F8 $F8
    inc sp                                        ; $52C5: $33
    inc hl                                        ; $52C6: $23
    ld hl, sp+$00                                 ; $52C7: $F8 $00
    ld [hl-], a                                   ; $52C9: $32
    inc hl                                        ; $52CA: $23
    ldh a, [$F8]                                  ; $52CB: $F0 $F8
    ld sp, $F023                                  ; $52CD: $31 $23 $F0
    nop                                           ; $52D0: $00
    jr nc, jr_00E_52F6                            ; $52D1: $30 $23

    add b                                         ; $52D3: $80
    ld [$3DEC], sp                                ; $52D4: $08 $EC $3D
    inc hl                                        ; $52D7: $23
    ld [$3CF4], sp                                ; $52D8: $08 $F4 $3C
    inc hl                                        ; $52DB: $23
    ld [$3BFC], sp                                ; $52DC: $08 $FC $3B
    inc hl                                        ; $52DF: $23
    nop                                           ; $52E0: $00
    db $EC                                        ; $52E1: $EC
    ld a, [hl-]                                   ; $52E2: $3A
    inc hl                                        ; $52E3: $23
    nop                                           ; $52E4: $00
    db $F4                                        ; $52E5: $F4
    add hl, sp                                    ; $52E6: $39
    inc hl                                        ; $52E7: $23
    nop                                           ; $52E8: $00
    db $FC                                        ; $52E9: $FC
    jr c, jr_00E_530E                             ; $52EA: $38 $22

    nop                                           ; $52EC: $00
    inc b                                         ; $52ED: $04
    scf                                           ; $52EE: $37
    ld [hl+], a                                   ; $52EF: $22
    add b                                         ; $52F0: $80
    rst $38                                       ; $52F1: $FF
    ld [$043C], sp                                ; $52F2: $08 $3C $04
    rst $38                                       ; $52F5: $FF

jr_00E_52F6:
    nop                                           ; $52F6: $00
    dec sp                                        ; $52F7: $3B
    inc b                                         ; $52F8: $04
    rst $38                                       ; $52F9: $FF
    ld hl, sp+$3A                                 ; $52FA: $F8 $3A
    inc b                                         ; $52FC: $04
    rst $30                                       ; $52FD: $F7
    ld [$0439], sp                                ; $52FE: $08 $39 $04
    rst $30                                       ; $5301: $F7
    nop                                           ; $5302: $00
    jr c, jr_00E_5309                             ; $5303: $38 $04

    rst $30                                       ; $5305: $F7
    ld hl, sp+$37                                 ; $5306: $F8 $37
    inc b                                         ; $5308: $04

jr_00E_5309:
    nop                                           ; $5309: $00
    cp $33                                        ; $530A: $FE $33
    ld [bc], a                                    ; $530C: $02
    ld sp, hl                                     ; $530D: $F9

jr_00E_530E:
    cp $32                                        ; $530E: $FE $32
    inc bc                                        ; $5310: $03
    pop af                                        ; $5311: $F1
    nop                                           ; $5312: $00
    ld sp, $F103                                  ; $5313: $31 $03 $F1
    ld hl, sp+$30                                 ; $5316: $F8 $30
    inc bc                                        ; $5318: $03
    add b                                         ; $5319: $80
    cp $08                                        ; $531A: $FE $08
    inc a                                         ; $531C: $3C
    inc b                                         ; $531D: $04
    cp $00                                        ; $531E: $FE $00
    dec sp                                        ; $5320: $3B
    inc b                                         ; $5321: $04
    cp $F8                                        ; $5322: $FE $F8
    ld a, [hl-]                                   ; $5324: $3A
    inc b                                         ; $5325: $04
    or $08                                        ; $5326: $F6 $08
    add hl, sp                                    ; $5328: $39
    inc b                                         ; $5329: $04
    or $00                                        ; $532A: $F6 $00
    jr c, jr_00E_5332                             ; $532C: $38 $04

    or $F8                                        ; $532E: $F6 $F8
    scf                                           ; $5330: $37
    inc b                                         ; $5331: $04

jr_00E_5332:
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    dec [hl]                                      ; $5334: $35
    ld [bc], a                                    ; $5335: $02
    nop                                           ; $5336: $00
    ld hl, sp+$34                                 ; $5337: $F8 $34
    ld [bc], a                                    ; $5339: $02
    ld hl, sp-$02                                 ; $533A: $F8 $FE
    ld [hl-], a                                   ; $533C: $32
    inc bc                                        ; $533D: $03
    ldh a, [rP1]                                  ; $533E: $F0 $00
    ld sp, $F003                                  ; $5340: $31 $03 $F0
    ld hl, sp+$30                                 ; $5343: $F8 $30
    inc bc                                        ; $5345: $03
    add b                                         ; $5346: $80
    rst $38                                       ; $5347: $FF
    ld [$043C], sp                                ; $5348: $08 $3C $04
    rst $38                                       ; $534B: $FF
    nop                                           ; $534C: $00
    dec sp                                        ; $534D: $3B
    inc b                                         ; $534E: $04
    rst $38                                       ; $534F: $FF
    ld hl, sp+$3A                                 ; $5350: $F8 $3A
    inc b                                         ; $5352: $04
    rst $30                                       ; $5353: $F7
    ld [$0439], sp                                ; $5354: $08 $39 $04
    rst $30                                       ; $5357: $F7
    nop                                           ; $5358: $00
    jr c, jr_00E_535F                             ; $5359: $38 $04

    rst $30                                       ; $535B: $F7
    ld hl, sp+$37                                 ; $535C: $F8 $37
    inc b                                         ; $535E: $04

jr_00E_535F:
    nop                                           ; $535F: $00
    db $FD                                        ; $5360: $FD
    ld [hl], $02                                  ; $5361: $36 $02
    ld sp, hl                                     ; $5363: $F9
    cp $32                                        ; $5364: $FE $32
    inc bc                                        ; $5366: $03
    pop af                                        ; $5367: $F1
    nop                                           ; $5368: $00
    ld sp, $F103                                  ; $5369: $31 $03 $F1
    ld hl, sp+$30                                 ; $536C: $F8 $30
    inc bc                                        ; $536E: $03
    add b                                         ; $536F: $80

    db $4D, $08, $08, $00, $FF, $B4, $50, $CD, $50, $E6, $50, $CD, $50, $46, $70, $53
    db $4D, $08, $08, $00, $01, $71, $50, $86, $50, $9F, $50, $86, $50, $46, $80, $53
    db $4D, $08, $08, $FF, $00, $4A, $51, $63, $51, $7C, $51, $63, $51, $46, $90, $53
    db $4D, $08, $08, $01, $00, $FF, $50, $18, $51, $31, $51, $18, $51, $46, $A0, $53
    db $4D

    db $08                                        ; $53B1: $08

    db $08, $00, $FE, $B4, $50

    call $E650                                    ; $53B7: $CD $50 $E6
    ld d, b                                       ; $53BA: $50
    call Call_00E_4650                            ; $53BB: $CD $50 $46
    or b                                          ; $53BE: $B0
    ld d, e                                       ; $53BF: $53

    db $4D, $08, $08, $00, $02, $71, $50, $86, $50, $9F, $50, $86, $50, $46, $C0, $53
    db $4D, $08, $08, $FE, $00, $4A, $51, $63, $51, $7C, $51, $63, $51, $46, $D0, $53

    ld c, l                                       ; $53E0: $4D
    ld [$0208], sp                                ; $53E1: $08 $08 $02
    nop                                           ; $53E4: $00
    rst $38                                       ; $53E5: $FF
    ld d, b                                       ; $53E6: $50
    jr @+$53                                      ; $53E7: $18 $51

    ld sp, $1851                                  ; $53E9: $31 $51 $18
    ld d, c                                       ; $53EC: $51
    ld b, [hl]                                    ; $53ED: $46
    ldh [rHDMA3], a                               ; $53EE: $E0 $53

    db $4C, $FF, $00, $00, $CD, $50, $00, $46, $F0, $53, $4C, $FF, $00, $00, $86, $50
    db $00, $46, $FA, $53, $4C, $FF, $00, $00, $63, $51, $00, $46, $04, $54, $4C, $FF
    db $00, $00, $18, $51, $00, $46, $0E, $54, $4C, $FF, $00, $00, $58, $50

    nop                                           ; $541E: $00
    ld b, [hl]                                    ; $541F: $46
    jr @+$56                                      ; $5420: $18 $54

    db $4C, $FF, $00, $00, $3F, $50, $00, $46, $22, $54, $4C, $FF, $00, $00, $26, $50

    nop                                           ; $5432: $00
    ld b, [hl]                                    ; $5433: $46
    inc l                                         ; $5434: $2C
    ld d, h                                       ; $5435: $54

    db $4C, $FF, $00, $00, $0D, $50, $00, $46, $36, $54

    ld c, h                                       ; $5440: $4C
    rst $38                                       ; $5441: $FF
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    xor [hl]                                      ; $5444: $AE
    ld d, c                                       ; $5445: $51
    nop                                           ; $5446: $00
    ld b, [hl]                                    ; $5447: $46
    ld b, b                                       ; $5448: $40
    ld d, h                                       ; $5449: $54
    ld c, h                                       ; $544A: $4C
    ld bc, $0000                                  ; $544B: $01 $00 $00
    sub l                                         ; $544E: $95
    ld d, c                                       ; $544F: $51
    nop                                           ; $5450: $00
    ld b, [hl]                                    ; $5451: $46
    ld c, d                                       ; $5452: $4A
    ld d, h                                       ; $5453: $54

    db $4C, $04, $00, $00, $86, $50, $04, $00, $00, $95, $51, $04, $00, $00, $86, $50
    db $04, $00, $00, $95, $51, $10, $00, $00, $86, $50, $04, $00, $00, $95, $51, $04
    db $00, $00, $86, $50, $04, $00, $00, $95, $51, $10, $00, $00, $86, $50, $10, $00
    db $00, $95, $51, $04, $00, $00, $86, $50, $04, $00, $00, $95, $51, $08, $00, $00
    db $86, $50, $04, $00, $00, $95, $51, $08, $00, $00, $86, $50, $04, $00, $00, $95
    db $51, $00, $46, $54, $54

    ld c, h                                       ; $54A9: $4C
    stop                                          ; $54AA: $10 $00
    nop                                           ; $54AC: $00
    cp a                                          ; $54AD: $BF
    ld d, c                                       ; $54AE: $51
    ld [rRAMG], sp                                ; $54AF: $08 $00 $00
    db $FD                                        ; $54B2: $FD
    ld d, c                                       ; $54B3: $51
    stop                                          ; $54B4: $10 $00
    nop                                           ; $54B6: $00
    call c, $0051                                 ; $54B7: $DC $51 $00
    ld b, [hl]                                    ; $54BA: $46
    xor c                                         ; $54BB: $A9
    ld d, h                                       ; $54BC: $54
    ld c, h                                       ; $54BD: $4C
    stop                                          ; $54BE: $10 $00
    nop                                           ; $54C0: $00
    ld e, $52                                     ; $54C1: $1E $52
    ld [rRAMG], sp                                ; $54C3: $08 $00 $00
    ld e, h                                       ; $54C6: $5C
    ld d, d                                       ; $54C7: $52
    stop                                          ; $54C8: $10 $00
    nop                                           ; $54CA: $00
    dec sp                                        ; $54CB: $3B
    ld d, d                                       ; $54CC: $52
    nop                                           ; $54CD: $00
    ld b, [hl]                                    ; $54CE: $46
    cp l                                          ; $54CF: $BD
    ld d, h                                       ; $54D0: $54
    ld c, h                                       ; $54D1: $4C
    rst $38                                       ; $54D2: $FF
    nop                                           ; $54D3: $00
    nop                                           ; $54D4: $00
    ld e, $52                                     ; $54D5: $1E $52
    nop                                           ; $54D7: $00
    ld b, [hl]                                    ; $54D8: $46
    pop de                                        ; $54D9: $D1
    ld d, h                                       ; $54DA: $54
    ld c, h                                       ; $54DB: $4C
    inc b                                         ; $54DC: $04
    nop                                           ; $54DD: $00
    nop                                           ; $54DE: $00
    db $FD                                        ; $54DF: $FD
    ld d, c                                       ; $54E0: $51
    inc b                                         ; $54E1: $04
    nop                                           ; $54E2: $00
    nop                                           ; $54E3: $00
    call c, $0051                                 ; $54E4: $DC $51 $00
    ld b, [hl]                                    ; $54E7: $46
    db $DB                                        ; $54E8: $DB
    ld d, h                                       ; $54E9: $54
    ld c, h                                       ; $54EA: $4C
    inc b                                         ; $54EB: $04
    nop                                           ; $54EC: $00
    nop                                           ; $54ED: $00
    ld e, h                                       ; $54EE: $5C
    ld d, d                                       ; $54EF: $52
    inc b                                         ; $54F0: $04
    nop                                           ; $54F1: $00
    nop                                           ; $54F2: $00
    dec sp                                        ; $54F3: $3B
    ld d, d                                       ; $54F4: $52
    nop                                           ; $54F5: $00
    ld b, [hl]                                    ; $54F6: $46
    ld [$4C54], a                                 ; $54F7: $EA $54 $4C
    stop                                          ; $54FA: $10 $00
    nop                                           ; $54FC: $00
    or a                                          ; $54FD: $B7
    ld d, d                                       ; $54FE: $52
    nop                                           ; $54FF: $00
    ld c, h                                       ; $5500: $4C
    ld bc, $0000                                  ; $5501: $01 $00 $00
    call nc, $0052                                ; $5504: $D4 $52 $00
    ld b, [hl]                                    ; $5507: $46
    nop                                           ; $5508: $00
    ld d, l                                       ; $5509: $55
    ld c, h                                       ; $550A: $4C
    stop                                          ; $550B: $10 $00
    nop                                           ; $550D: $00
    ld a, l                                       ; $550E: $7D
    ld d, d                                       ; $550F: $52
    nop                                           ; $5510: $00
    ld c, h                                       ; $5511: $4C
    ld bc, $0000                                  ; $5512: $01 $00 $00
    sbc d                                         ; $5515: $9A
    ld d, d                                       ; $5516: $52
    nop                                           ; $5517: $00
    ld b, [hl]                                    ; $5518: $46
    ld de, $4D55                                  ; $5519: $11 $55 $4D
    ld [$0008], sp                                ; $551C: $08 $08 $00
    ld bc, $52F1                                  ; $551F: $01 $F1 $52
    ld a, [de]                                    ; $5522: $1A
    ld d, e                                       ; $5523: $53
    ld b, a                                       ; $5524: $47
    ld d, e                                       ; $5525: $53
    ld a, [de]                                    ; $5526: $1A
    ld d, e                                       ; $5527: $53
    ld b, [hl]                                    ; $5528: $46
    dec de                                        ; $5529: $1B
    ld d, l                                       ; $552A: $55
    ld c, h                                       ; $552B: $4C
    ld [rRAMG], sp                                ; $552C: $08 $00 $00
    pop af                                        ; $552F: $F1
    ld d, d                                       ; $5530: $52
    nop                                           ; $5531: $00
    ld b, [hl]                                    ; $5532: $46
    dec hl                                        ; $5533: $2B
    ld d, l                                       ; $5534: $55
    ld c, e                                       ; $5535: $4B
    inc bc                                        ; $5536: $03
    ld c, $00                                     ; $5537: $0E $00
    nop                                           ; $5539: $00
    ld c, h                                       ; $553A: $4C
    ld d, l                                       ; $553B: $55
    ld c, $03                                     ; $553C: $0E $03
    nop                                           ; $553E: $00
    ld d, e                                       ; $553F: $53
    ld d, l                                       ; $5540: $55
    ld c, $02                                     ; $5541: $0E $02
    nop                                           ; $5543: $00
    ld h, c                                       ; $5544: $61
    ld d, l                                       ; $5545: $55
    ld c, $01                                     ; $5546: $0E $01
    nop                                           ; $5548: $00
    ld e, d                                       ; $5549: $5A
    ld d, l                                       ; $554A: $55
    rst $38                                       ; $554B: $FF
    inc d                                         ; $554C: $14
    ld c, $F0                                     ; $554D: $0E $F0
    ld d, e                                       ; $554F: $53
    ld h, d                                       ; $5550: $62
    ld bc, $1412                                  ; $5551: $01 $12 $14
    ld c, $FA                                     ; $5554: $0E $FA
    ld d, e                                       ; $5556: $53
    ld h, d                                       ; $5557: $62
    ld bc, $1412                                  ; $5558: $01 $12 $14
    ld c, $04                                     ; $555B: $0E $04
    ld d, h                                       ; $555D: $54
    ld h, d                                       ; $555E: $62
    ld bc, $1412                                  ; $555F: $01 $12 $14
    ld c, $0E                                     ; $5562: $0E $0E
    ld d, h                                       ; $5564: $54
    ld h, d                                       ; $5565: $62
    ld bc, $F012                                  ; $5566: $01 $12 $F0
    ld hl, sp+$01                                 ; $5569: $F8 $01
    inc b                                         ; $556B: $04
    ldh a, [rIE]                                  ; $556C: $F0 $FF
    ld bc, $F824                                  ; $556E: $01 $24 $F8
    ld hl, sp+$06                                 ; $5571: $F8 $06
    inc b                                         ; $5573: $04
    ld hl, sp+$00                                 ; $5574: $F8 $00
    rlca                                          ; $5576: $07
    inc b                                         ; $5577: $04
    nop                                           ; $5578: $00
    ld hl, sp+$11                                 ; $5579: $F8 $11
    inc b                                         ; $557B: $04
    nop                                           ; $557C: $00
    nop                                           ; $557D: $00
    ld [de], a                                    ; $557E: $12
    inc b                                         ; $557F: $04
    add b                                         ; $5580: $80
    ldh a, [$F9]                                  ; $5581: $F0 $F9
    ld bc, $F000                                  ; $5583: $01 $00 $F0
    nop                                           ; $5586: $00
    ld bc, $F820                                  ; $5587: $01 $20 $F8
    nop                                           ; $558A: $00
    ld b, $24                                     ; $558B: $06 $24
    ld hl, sp-$08                                 ; $558D: $F8 $F8
    rlca                                          ; $558F: $07
    inc h                                         ; $5590: $24
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    ld de, $0024                                  ; $5593: $11 $24 $00
    ld hl, sp+$12                                 ; $5596: $F8 $12
    inc h                                         ; $5598: $24
    add b                                         ; $5599: $80
    ldh a, [$F8]                                  ; $559A: $F0 $F8
    ld bc, $F000                                  ; $559C: $01 $00 $F0
    nop                                           ; $559F: $00
    ld [bc], a                                    ; $55A0: $02
    nop                                           ; $55A1: $00
    ld hl, sp-$08                                 ; $55A2: $F8 $F8
    dec bc                                        ; $55A4: $0B
    nop                                           ; $55A5: $00
    ld hl, sp+$00                                 ; $55A6: $F8 $00
    inc c                                         ; $55A8: $0C
    inc b                                         ; $55A9: $04
    nop                                           ; $55AA: $00
    ld hl, sp+$16                                 ; $55AB: $F8 $16
    inc b                                         ; $55AD: $04
    nop                                           ; $55AE: $00
    nop                                           ; $55AF: $00
    rla                                           ; $55B0: $17
    inc b                                         ; $55B1: $04
    add b                                         ; $55B2: $80
    ldh a, [rP1]                                  ; $55B3: $F0 $00
    ld bc, $F020                                  ; $55B5: $01 $20 $F0

jr_00E_55B8:
    ld hl, sp+$02                                 ; $55B8: $F8 $02
    jr nz, @-$06                                  ; $55BA: $20 $F8

    nop                                           ; $55BC: $00
    dec bc                                        ; $55BD: $0B
    jr nz, jr_00E_55B8                            ; $55BE: $20 $F8

    ld hl, sp+$0C                                 ; $55C0: $F8 $0C

jr_00E_55C2:
    inc h                                         ; $55C2: $24
    nop                                           ; $55C3: $00
    nop                                           ; $55C4: $00
    ld d, $24                                     ; $55C5: $16 $24
    nop                                           ; $55C7: $00
    ld hl, sp+$17                                 ; $55C8: $F8 $17
    inc h                                         ; $55CA: $24
    add b                                         ; $55CB: $80
    pop af                                        ; $55CC: $F1
    ld sp, hl                                     ; $55CD: $F9
    nop                                           ; $55CE: $00
    jr nz, jr_00E_55C2                            ; $55CF: $20 $F1

    rst $38                                       ; $55D1: $FF
    nop                                           ; $55D2: $00
    nop                                           ; $55D3: $00
    ld sp, hl                                     ; $55D4: $F9
    ld hl, sp+$08                                 ; $55D5: $F8 $08
    inc b                                         ; $55D7: $04
    ld sp, hl                                     ; $55D8: $F9
    nop                                           ; $55D9: $00
    add hl, bc                                    ; $55DA: $09
    inc b                                         ; $55DB: $04
    nop                                           ; $55DC: $00
    ld hl, sp+$18                                 ; $55DD: $F8 $18
    inc b                                         ; $55DF: $04
    nop                                           ; $55E0: $00
    nop                                           ; $55E1: $00
    add hl, de                                    ; $55E2: $19
    inc b                                         ; $55E3: $04
    add b                                         ; $55E4: $80

    db $F8, $F8, $08, $04, $F8, $00, $09, $04, $00, $F7, $13, $04, $00, $FF, $14, $04
    db $F0, $FF, $00, $00, $F0, $F9, $00, $20, $80

    pop af                                        ; $55FE: $F1
    ld sp, hl                                     ; $55FF: $F9
    nop                                           ; $5600: $00
    jr nz, @-$0D                                  ; $5601: $20 $F1

    rst $38                                       ; $5603: $FF
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    ld sp, hl                                     ; $5606: $F9
    nop                                           ; $5607: $00
    ld [$F924], sp                                ; $5608: $08 $24 $F9
    ld hl, sp+$09                                 ; $560B: $F8 $09
    inc h                                         ; $560D: $24
    nop                                           ; $560E: $00
    rst $38                                       ; $560F: $FF
    jr @+$26                                      ; $5610: $18 $24

    nop                                           ; $5612: $00
    rst $30                                       ; $5613: $F7
    add hl, de                                    ; $5614: $19
    inc h                                         ; $5615: $24
    add b                                         ; $5616: $80
    pop af                                        ; $5617: $F1
    ld a, [$2000]                                 ; $5618: $FA $00 $20
    pop af                                        ; $561B: $F1
    nop                                           ; $561C: $00
    nop                                           ; $561D: $00
    nop                                           ; $561E: $00
    ld hl, sp-$08                                 ; $561F: $F8 $F8
    rrca                                          ; $5621: $0F
    nop                                           ; $5622: $00
    ld hl, sp+$00                                 ; $5623: $F8 $00
    stop                                          ; $5625: $10 $00
    nop                                           ; $5627: $00
    ld hl, sp+$1A                                 ; $5628: $F8 $1A
    inc b                                         ; $562A: $04
    nop                                           ; $562B: $00
    nop                                           ; $562C: $00
    dec de                                        ; $562D: $1B
    inc b                                         ; $562E: $04
    add b                                         ; $562F: $80

    db $00, $00, $15, $04, $00, $FA, $15, $24, $F8, $00, $0A, $00, $F8, $FA, $0A, $20
    db $F0, $00, $00, $00, $F0, $FA, $00, $20, $80

    pop af                                        ; $5649: $F1
    ld a, [$2000]                                 ; $564A: $FA $00 $20
    pop af                                        ; $564D: $F1

jr_00E_564E:
    nop                                           ; $564E: $00
    nop                                           ; $564F: $00
    nop                                           ; $5650: $00
    ld hl, sp+$02                                 ; $5651: $F8 $02
    rrca                                          ; $5653: $0F
    jr nz, jr_00E_564E                            ; $5654: $20 $F8

    ld a, [$2010]                                 ; $5656: $FA $10 $20
    nop                                           ; $5659: $00
    ld [bc], a                                    ; $565A: $02
    ld a, [de]                                    ; $565B: $1A
    inc h                                         ; $565C: $24
    nop                                           ; $565D: $00
    ld a, [$241B]                                 ; $565E: $FA $1B $24
    add b                                         ; $5661: $80
    pop af                                        ; $5662: $F1
    ld hl, sp+$04                                 ; $5663: $F8 $04
    nop                                           ; $5665: $00
    pop af                                        ; $5666: $F1
    nop                                           ; $5667: $00
    dec b                                         ; $5668: $05
    nop                                           ; $5669: $00
    nop                                           ; $566A: $00
    ld hl, sp+$22                                 ; $566B: $F8 $22
    inc b                                         ; $566D: $04
    nop                                           ; $566E: $00
    nop                                           ; $566F: $00
    inc hl                                        ; $5670: $23
    inc b                                         ; $5671: $04
    ld hl, sp-$08                                 ; $5672: $F8 $F8
    inc e                                         ; $5674: $1C
    inc b                                         ; $5675: $04
    ld hl, sp+$00                                 ; $5676: $F8 $00
    dec e                                         ; $5678: $1D
    inc b                                         ; $5679: $04
    add b                                         ; $567A: $80

    db $F0, $F8, $04, $00, $F0, $00, $05, $04, $00, $F8, $20, $04, $00, $00, $21, $04
    db $F8, $F8, $1E, $04, $F8, $00, $1F, $04, $80

    pop af                                        ; $5694: $F1
    nop                                           ; $5695: $00
    inc b                                         ; $5696: $04
    jr nz, @-$0D                                  ; $5697: $20 $F1

    ld hl, sp+$05                                 ; $5699: $F8 $05
    jr nz, jr_00E_569D                            ; $569B: $20 $00

jr_00E_569D:
    nop                                           ; $569D: $00
    ld [hl+], a                                   ; $569E: $22
    inc h                                         ; $569F: $24
    nop                                           ; $56A0: $00
    ld hl, sp+$23                                 ; $56A1: $F8 $23
    inc h                                         ; $56A3: $24
    ld hl, sp+$00                                 ; $56A4: $F8 $00
    inc e                                         ; $56A6: $1C
    inc h                                         ; $56A7: $24
    ld hl, sp-$08                                 ; $56A8: $F8 $F8
    dec e                                         ; $56AA: $1D
    inc h                                         ; $56AB: $24
    add b                                         ; $56AC: $80

    db $F0, $00, $04, $20, $F0, $F8, $05, $24, $00, $00, $20, $24, $00, $F8, $21, $24
    db $F8, $00, $1E, $24, $F8, $F8, $1F, $24, $80

    ld c, h                                       ; $56C6: $4C
    ld bc, $FF00                                  ; $56C7: $01 $00 $FF
    rla                                           ; $56CA: $17
    ld d, [hl]                                    ; $56CB: $56
    ld bc, $0000                                  ; $56CC: $01 $00 $00
    rla                                           ; $56CF: $17
    ld d, [hl]                                    ; $56D0: $56
    ld bc, $FF00                                  ; $56D1: $01 $00 $FF
    rla                                           ; $56D4: $17
    ld d, [hl]                                    ; $56D5: $56
    ld bc, $0000                                  ; $56D6: $01 $00 $00
    rla                                           ; $56D9: $17
    ld d, [hl]                                    ; $56DA: $56
    ld bc, $FF00                                  ; $56DB: $01 $00 $FF
    rla                                           ; $56DE: $17
    ld d, [hl]                                    ; $56DF: $56
    ld bc, $0000                                  ; $56E0: $01 $00 $00
    rla                                           ; $56E3: $17
    ld d, [hl]                                    ; $56E4: $56
    ld bc, $FF00                                  ; $56E5: $01 $00 $FF
    rla                                           ; $56E8: $17
    ld d, [hl]                                    ; $56E9: $56
    ld bc, $0000                                  ; $56EA: $01 $00 $00
    rla                                           ; $56ED: $17
    ld d, [hl]                                    ; $56EE: $56
    ld bc, $FF00                                  ; $56EF: $01 $00 $FF
    jr nc, @+$58                                  ; $56F2: $30 $56

    ld bc, $0000                                  ; $56F4: $01 $00 $00
    jr nc, @+$58                                  ; $56F7: $30 $56

    ld bc, $FF00                                  ; $56F9: $01 $00 $FF
    jr nc, @+$58                                  ; $56FC: $30 $56

    ld bc, $0000                                  ; $56FE: $01 $00 $00
    jr nc, @+$58                                  ; $5701: $30 $56

    ld bc, $FF00                                  ; $5703: $01 $00 $FF
    jr nc, @+$58                                  ; $5706: $30 $56

    ld bc, $0000                                  ; $5708: $01 $00 $00
    jr nc, @+$58                                  ; $570B: $30 $56

    ld bc, $FF00                                  ; $570D: $01 $00 $FF
    jr nc, jr_00E_5768                            ; $5710: $30 $56

    ld bc, $0000                                  ; $5712: $01 $00 $00
    jr nc, @+$58                                  ; $5715: $30 $56

    ld bc, $FF00                                  ; $5717: $01 $00 $FF
    ld c, c                                       ; $571A: $49
    ld d, [hl]                                    ; $571B: $56
    ld bc, $0000                                  ; $571C: $01 $00 $00
    ld c, c                                       ; $571F: $49
    ld d, [hl]                                    ; $5720: $56
    ld bc, $FF00                                  ; $5721: $01 $00 $FF
    ld c, c                                       ; $5724: $49
    ld d, [hl]                                    ; $5725: $56
    ld bc, $0000                                  ; $5726: $01 $00 $00
    ld c, c                                       ; $5729: $49
    ld d, [hl]                                    ; $572A: $56
    ld bc, $FF00                                  ; $572B: $01 $00 $FF
    ld c, c                                       ; $572E: $49
    ld d, [hl]                                    ; $572F: $56
    ld bc, $0000                                  ; $5730: $01 $00 $00
    ld c, c                                       ; $5733: $49
    ld d, [hl]                                    ; $5734: $56
    ld bc, $FF00                                  ; $5735: $01 $00 $FF
    ld c, c                                       ; $5738: $49
    ld d, [hl]                                    ; $5739: $56
    ld bc, $0000                                  ; $573A: $01 $00 $00
    ld c, c                                       ; $573D: $49
    ld d, [hl]                                    ; $573E: $56
    ld bc, $FF00                                  ; $573F: $01 $00 $FF
    jr nc, @+$58                                  ; $5742: $30 $56

    ld bc, $0000                                  ; $5744: $01 $00 $00
    jr nc, @+$58                                  ; $5747: $30 $56

    ld bc, $FF00                                  ; $5749: $01 $00 $FF
    jr nc, @+$58                                  ; $574C: $30 $56

    ld bc, $0000                                  ; $574E: $01 $00 $00
    jr nc, @+$58                                  ; $5751: $30 $56

    ld bc, $FF00                                  ; $5753: $01 $00 $FF
    jr nc, @+$58                                  ; $5756: $30 $56

    ld bc, $0000                                  ; $5758: $01 $00 $00
    jr nc, @+$58                                  ; $575B: $30 $56

    ld bc, $FF00                                  ; $575D: $01 $00 $FF
    jr nc, @+$58                                  ; $5760: $30 $56

    ld bc, $0000                                  ; $5762: $01 $00 $00
    jr nc, @+$58                                  ; $5765: $30 $56

    nop                                           ; $5767: $00

jr_00E_5768:
    ld b, [hl]                                    ; $5768: $46
    add $56                                       ; $5769: $C6 $56
    ld c, h                                       ; $576B: $4C
    ld bc, $0100                                  ; $576C: $01 $00 $01
    call z, $0155                                 ; $576F: $CC $55 $01
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    call z, $0155                                 ; $5774: $CC $55 $01
    nop                                           ; $5777: $00
    ld bc, $55CC                                  ; $5778: $01 $CC $55
    ld bc, $0000                                  ; $577B: $01 $00 $00
    call z, $0155                                 ; $577E: $CC $55 $01
    nop                                           ; $5781: $00
    ld bc, $55CC                                  ; $5782: $01 $CC $55
    ld bc, $0000                                  ; $5785: $01 $00 $00
    call z, $0155                                 ; $5788: $CC $55 $01
    nop                                           ; $578B: $00
    ld bc, $55CC                                  ; $578C: $01 $CC $55
    ld bc, $0000                                  ; $578F: $01 $00 $00
    call z, $0155                                 ; $5792: $CC $55 $01
    nop                                           ; $5795: $00
    ld bc, $55E5                                  ; $5796: $01 $E5 $55
    ld bc, $0000                                  ; $5799: $01 $00 $00
    push hl                                       ; $579C: $E5
    ld d, l                                       ; $579D: $55
    ld bc, $0100                                  ; $579E: $01 $00 $01
    push hl                                       ; $57A1: $E5
    ld d, l                                       ; $57A2: $55
    ld bc, $0000                                  ; $57A3: $01 $00 $00
    push hl                                       ; $57A6: $E5
    ld d, l                                       ; $57A7: $55
    ld bc, $0100                                  ; $57A8: $01 $00 $01
    push hl                                       ; $57AB: $E5
    ld d, l                                       ; $57AC: $55
    ld bc, $0000                                  ; $57AD: $01 $00 $00
    push hl                                       ; $57B0: $E5
    ld d, l                                       ; $57B1: $55
    ld bc, $0100                                  ; $57B2: $01 $00 $01
    push hl                                       ; $57B5: $E5
    ld d, l                                       ; $57B6: $55
    ld bc, $0000                                  ; $57B7: $01 $00 $00
    push hl                                       ; $57BA: $E5
    ld d, l                                       ; $57BB: $55
    ld bc, $0100                                  ; $57BC: $01 $00 $01
    cp $55                                        ; $57BF: $FE $55
    ld bc, $0000                                  ; $57C1: $01 $00 $00
    cp $55                                        ; $57C4: $FE $55
    ld bc, $0100                                  ; $57C6: $01 $00 $01
    cp $55                                        ; $57C9: $FE $55
    ld bc, $0000                                  ; $57CB: $01 $00 $00
    cp $55                                        ; $57CE: $FE $55
    ld bc, $0100                                  ; $57D0: $01 $00 $01
    cp $55                                        ; $57D3: $FE $55
    ld bc, $0000                                  ; $57D5: $01 $00 $00
    cp $55                                        ; $57D8: $FE $55
    ld bc, $0100                                  ; $57DA: $01 $00 $01
    cp $55                                        ; $57DD: $FE $55
    ld bc, $0000                                  ; $57DF: $01 $00 $00
    cp $55                                        ; $57E2: $FE $55
    ld bc, $0100                                  ; $57E4: $01 $00 $01
    push hl                                       ; $57E7: $E5
    ld d, l                                       ; $57E8: $55
    ld bc, $0000                                  ; $57E9: $01 $00 $00
    push hl                                       ; $57EC: $E5
    ld d, l                                       ; $57ED: $55
    ld bc, $0100                                  ; $57EE: $01 $00 $01
    push hl                                       ; $57F1: $E5
    ld d, l                                       ; $57F2: $55
    ld bc, $0000                                  ; $57F3: $01 $00 $00
    push hl                                       ; $57F6: $E5
    ld d, l                                       ; $57F7: $55
    ld bc, $0100                                  ; $57F8: $01 $00 $01
    push hl                                       ; $57FB: $E5
    ld d, l                                       ; $57FC: $55
    ld bc, $0000                                  ; $57FD: $01 $00 $00
    push hl                                       ; $5800: $E5
    ld d, l                                       ; $5801: $55
    ld bc, $0100                                  ; $5802: $01 $00 $01
    push hl                                       ; $5805: $E5
    ld d, l                                       ; $5806: $55
    ld bc, $0000                                  ; $5807: $01 $00 $00
    push hl                                       ; $580A: $E5
    ld d, l                                       ; $580B: $55
    nop                                           ; $580C: $00
    ld b, [hl]                                    ; $580D: $46
    ld l, e                                       ; $580E: $6B
    ld d, a                                       ; $580F: $57
    ld c, h                                       ; $5810: $4C
    ld bc, $00FF                                  ; $5811: $01 $FF $00
    sub h                                         ; $5814: $94
    ld d, [hl]                                    ; $5815: $56
    ld bc, $0000                                  ; $5816: $01 $00 $00
    sub h                                         ; $5819: $94
    ld d, [hl]                                    ; $581A: $56
    ld bc, $00FF                                  ; $581B: $01 $FF $00
    sub h                                         ; $581E: $94
    ld d, [hl]                                    ; $581F: $56
    ld bc, $0000                                  ; $5820: $01 $00 $00
    sub h                                         ; $5823: $94
    ld d, [hl]                                    ; $5824: $56
    ld bc, $00FF                                  ; $5825: $01 $FF $00
    sub h                                         ; $5828: $94
    ld d, [hl]                                    ; $5829: $56
    ld bc, $0000                                  ; $582A: $01 $00 $00
    sub h                                         ; $582D: $94
    ld d, [hl]                                    ; $582E: $56
    ld bc, $00FF                                  ; $582F: $01 $FF $00
    sub h                                         ; $5832: $94
    ld d, [hl]                                    ; $5833: $56
    ld bc, $0000                                  ; $5834: $01 $00 $00
    sub h                                         ; $5837: $94
    ld d, [hl]                                    ; $5838: $56
    ld bc, $00FF                                  ; $5839: $01 $FF $00
    xor l                                         ; $583C: $AD
    ld d, [hl]                                    ; $583D: $56
    ld bc, $0000                                  ; $583E: $01 $00 $00
    xor l                                         ; $5841: $AD
    ld d, [hl]                                    ; $5842: $56
    ld bc, $00FF                                  ; $5843: $01 $FF $00
    xor l                                         ; $5846: $AD
    ld d, [hl]                                    ; $5847: $56
    ld bc, $0000                                  ; $5848: $01 $00 $00
    xor l                                         ; $584B: $AD
    ld d, [hl]                                    ; $584C: $56
    ld bc, $00FF                                  ; $584D: $01 $FF $00
    xor l                                         ; $5850: $AD
    ld d, [hl]                                    ; $5851: $56
    ld bc, $0000                                  ; $5852: $01 $00 $00
    xor l                                         ; $5855: $AD
    ld d, [hl]                                    ; $5856: $56
    ld bc, $00FF                                  ; $5857: $01 $FF $00
    xor l                                         ; $585A: $AD
    ld d, [hl]                                    ; $585B: $56
    ld bc, $0000                                  ; $585C: $01 $00 $00
    xor l                                         ; $585F: $AD
    ld d, [hl]                                    ; $5860: $56
    nop                                           ; $5861: $00
    ld b, [hl]                                    ; $5862: $46
    db $10                                        ; $5863: $10
    ld e, b                                       ; $5864: $58
    ld c, h                                       ; $5865: $4C
    ld bc, $0001                                  ; $5866: $01 $01 $00
    ld h, d                                       ; $5869: $62
    ld d, [hl]                                    ; $586A: $56
    ld bc, $0000                                  ; $586B: $01 $00 $00
    ld h, d                                       ; $586E: $62
    ld d, [hl]                                    ; $586F: $56
    ld bc, $0001                                  ; $5870: $01 $01 $00
    ld h, d                                       ; $5873: $62
    ld d, [hl]                                    ; $5874: $56
    ld bc, $0000                                  ; $5875: $01 $00 $00
    ld h, d                                       ; $5878: $62
    ld d, [hl]                                    ; $5879: $56
    ld bc, $0001                                  ; $587A: $01 $01 $00
    ld h, d                                       ; $587D: $62
    ld d, [hl]                                    ; $587E: $56
    ld bc, $0000                                  ; $587F: $01 $00 $00
    ld h, d                                       ; $5882: $62
    ld d, [hl]                                    ; $5883: $56
    ld bc, $0001                                  ; $5884: $01 $01 $00
    ld h, d                                       ; $5887: $62
    ld d, [hl]                                    ; $5888: $56
    ld bc, $0000                                  ; $5889: $01 $00 $00
    ld h, d                                       ; $588C: $62
    ld d, [hl]                                    ; $588D: $56
    ld bc, $0001                                  ; $588E: $01 $01 $00
    ld a, e                                       ; $5891: $7B
    ld d, [hl]                                    ; $5892: $56
    ld bc, $0000                                  ; $5893: $01 $00 $00
    ld a, e                                       ; $5896: $7B
    ld d, [hl]                                    ; $5897: $56
    ld bc, $0001                                  ; $5898: $01 $01 $00
    ld a, e                                       ; $589B: $7B
    ld d, [hl]                                    ; $589C: $56
    ld bc, $0000                                  ; $589D: $01 $00 $00
    ld a, e                                       ; $58A0: $7B
    ld d, [hl]                                    ; $58A1: $56
    ld bc, $0001                                  ; $58A2: $01 $01 $00
    ld a, e                                       ; $58A5: $7B
    ld d, [hl]                                    ; $58A6: $56
    ld bc, $0000                                  ; $58A7: $01 $00 $00
    ld a, e                                       ; $58AA: $7B
    ld d, [hl]                                    ; $58AB: $56
    ld bc, $0001                                  ; $58AC: $01 $01 $00
    ld a, e                                       ; $58AF: $7B
    ld d, [hl]                                    ; $58B0: $56
    ld bc, $0000                                  ; $58B1: $01 $00 $00
    ld a, e                                       ; $58B4: $7B
    ld d, [hl]                                    ; $58B5: $56
    nop                                           ; $58B6: $00
    ld b, [hl]                                    ; $58B7: $46
    ld h, l                                       ; $58B8: $65
    ld e, b                                       ; $58B9: $58
    ld c, l                                       ; $58BA: $4D
    ld [$0008], sp                                ; $58BB: $08 $08 $00
    rst $38                                       ; $58BE: $FF
    rla                                           ; $58BF: $17
    ld d, [hl]                                    ; $58C0: $56
    jr nc, @+$58                                  ; $58C1: $30 $56

    ld c, c                                       ; $58C3: $49
    ld d, [hl]                                    ; $58C4: $56
    jr nc, @+$58                                  ; $58C5: $30 $56

    ld b, [hl]                                    ; $58C7: $46
    cp d                                          ; $58C8: $BA
    ld e, b                                       ; $58C9: $58
    ld c, l                                       ; $58CA: $4D
    ld [$0008], sp                                ; $58CB: $08 $08 $00
    ld bc, $55CC                                  ; $58CE: $01 $CC $55
    push hl                                       ; $58D1: $E5
    ld d, l                                       ; $58D2: $55
    cp $55                                        ; $58D3: $FE $55
    push hl                                       ; $58D5: $E5
    ld d, l                                       ; $58D6: $55
    ld b, [hl]                                    ; $58D7: $46
    jp z, Jump_00E_4D58                           ; $58D8: $CA $58 $4D

    ld [$FF08], sp                                ; $58DB: $08 $08 $FF
    nop                                           ; $58DE: $00
    sub h                                         ; $58DF: $94
    ld d, [hl]                                    ; $58E0: $56
    xor l                                         ; $58E1: $AD
    ld d, [hl]                                    ; $58E2: $56
    sub h                                         ; $58E3: $94
    ld d, [hl]                                    ; $58E4: $56
    xor l                                         ; $58E5: $AD
    ld d, [hl]                                    ; $58E6: $56
    ld b, [hl]                                    ; $58E7: $46
    jp c, Jump_00E_4D58                           ; $58E8: $DA $58 $4D

    ld [$0108], sp                                ; $58EB: $08 $08 $01
    nop                                           ; $58EE: $00
    ld h, d                                       ; $58EF: $62
    ld d, [hl]                                    ; $58F0: $56
    ld a, e                                       ; $58F1: $7B
    ld d, [hl]                                    ; $58F2: $56
    ld h, d                                       ; $58F3: $62
    ld d, [hl]                                    ; $58F4: $56
    ld a, e                                       ; $58F5: $7B
    ld d, [hl]                                    ; $58F6: $56
    ld b, [hl]                                    ; $58F7: $46
    db $EA                                        ; $58F8: $EA
    ld e, b                                       ; $58F9: $58

    db $4C, $FF, $00, $00, $30, $56

    nop                                           ; $5900: $00
    ld b, [hl]                                    ; $5901: $46
    db $FA                                        ; $5902: $FA
    ld e, b                                       ; $5903: $58

    db $4C, $FF, $00, $00, $E5, $55, $00, $46, $04, $59, $4C, $FF, $00, $00, $AD, $56
    db $00, $46, $0E, $59, $4C, $FF, $00, $00, $7B, $56

    nop                                           ; $591E: $00
    ld b, [hl]                                    ; $591F: $46
    jr @+$5B                                      ; $5920: $18 $59

    ld c, h                                       ; $5922: $4C
    rst $38                                       ; $5923: $FF
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    or e                                          ; $5926: $B3
    ld d, l                                       ; $5927: $55
    nop                                           ; $5928: $00
    ld b, [hl]                                    ; $5929: $46
    ld [hl+], a                                   ; $592A: $22
    ld e, c                                       ; $592B: $59
    ld c, h                                       ; $592C: $4C
    rst $38                                       ; $592D: $FF
    nop                                           ; $592E: $00
    nop                                           ; $592F: $00
    sbc d                                         ; $5930: $9A
    ld d, l                                       ; $5931: $55
    nop                                           ; $5932: $00
    ld b, [hl]                                    ; $5933: $46
    inc l                                         ; $5934: $2C
    ld e, c                                       ; $5935: $59
    ld c, h                                       ; $5936: $4C
    rst $38                                       ; $5937: $FF
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    add c                                         ; $593A: $81
    ld d, l                                       ; $593B: $55
    nop                                           ; $593C: $00
    ld b, [hl]                                    ; $593D: $46
    ld [hl], $59                                  ; $593E: $36 $59
    ld c, h                                       ; $5940: $4C
    rst $38                                       ; $5941: $FF
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    ld l, b                                       ; $5944: $68
    ld d, l                                       ; $5945: $55
    nop                                           ; $5946: $00
    ld b, [hl]                                    ; $5947: $46
    ld b, b                                       ; $5948: $40
    ld e, c                                       ; $5949: $59

    db $4B, $03, $0E, $00, $00, $61, $59, $0E, $03

    nop                                           ; $5953: $00
    ld l, b                                       ; $5954: $68
    ld e, c                                       ; $5955: $59

    db $0E, $02, $00, $76, $59, $0E, $01, $00, $6F, $59

    rst $38                                       ; $5960: $FF

    db $14, $0E, $FA, $58, $62, $01, $12

    inc d                                         ; $5968: $14
    ld c, $04                                     ; $5969: $0E $04
    ld e, c                                       ; $596B: $59
    ld h, d                                       ; $596C: $62
    db $01                                        ; $596D: $01
    ld [de], a                                    ; $596E: $12

    db $14, $0E, $0E, $59, $62, $01, $12, $14, $0E, $18, $59, $62, $01, $12

    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    dec d                                         ; $597F: $15
    inc b                                         ; $5980: $04
    nop                                           ; $5981: $00
    ld hl, sp+$14                                 ; $5982: $F8 $14
    inc b                                         ; $5984: $04
    ld hl, sp+$00                                 ; $5985: $F8 $00
    add hl, bc                                    ; $5987: $09
    inc b                                         ; $5988: $04
    ld hl, sp-$08                                 ; $5989: $F8 $F8
    ld [$F004], sp                                ; $598B: $08 $04 $F0
    nop                                           ; $598E: $00
    ld bc, $F004                                  ; $598F: $01 $04 $F0
    ld hl, sp+$00                                 ; $5992: $F8 $00
    inc b                                         ; $5994: $04
    add b                                         ; $5995: $80
    nop                                           ; $5996: $00
    ld hl, sp+$15                                 ; $5997: $F8 $15
    inc h                                         ; $5999: $24
    nop                                           ; $599A: $00
    nop                                           ; $599B: $00
    inc d                                         ; $599C: $14
    inc h                                         ; $599D: $24
    ld hl, sp-$08                                 ; $599E: $F8 $F8
    add hl, bc                                    ; $59A0: $09
    inc h                                         ; $59A1: $24
    ld hl, sp+$00                                 ; $59A2: $F8 $00
    ld [$F024], sp                                ; $59A4: $08 $24 $F0
    ld hl, sp+$01                                 ; $59A7: $F8 $01
    inc h                                         ; $59A9: $24
    ldh a, [rP1]                                  ; $59AA: $F0 $00
    nop                                           ; $59AC: $00
    inc h                                         ; $59AD: $24
    add b                                         ; $59AE: $80
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    dec de                                        ; $59B1: $1B
    inc b                                         ; $59B2: $04
    nop                                           ; $59B3: $00
    ld hl, sp+$1A                                 ; $59B4: $F8 $1A
    inc b                                         ; $59B6: $04
    ld hl, sp+$00                                 ; $59B7: $F8 $00
    rrca                                          ; $59B9: $0F
    inc b                                         ; $59BA: $04
    ld hl, sp-$08                                 ; $59BB: $F8 $F8
    ld c, $04                                     ; $59BD: $0E $04
    ldh a, [rP1]                                  ; $59BF: $F0 $00
    rlca                                          ; $59C1: $07
    inc b                                         ; $59C2: $04
    ldh a, [$F8]                                  ; $59C3: $F0 $F8
    ld b, $04                                     ; $59C5: $06 $04
    add b                                         ; $59C7: $80
    nop                                           ; $59C8: $00
    ld hl, sp+$1B                                 ; $59C9: $F8 $1B
    inc h                                         ; $59CB: $24
    nop                                           ; $59CC: $00
    nop                                           ; $59CD: $00
    ld a, [de]                                    ; $59CE: $1A
    inc h                                         ; $59CF: $24
    ld hl, sp-$08                                 ; $59D0: $F8 $F8
    rrca                                          ; $59D2: $0F
    inc h                                         ; $59D3: $24
    ld hl, sp+$00                                 ; $59D4: $F8 $00
    ld c, $24                                     ; $59D6: $0E $24
    ldh a, [$F8]                                  ; $59D8: $F0 $F8
    rlca                                          ; $59DA: $07
    inc h                                         ; $59DB: $24
    ldh a, [rP1]                                  ; $59DC: $F0 $00
    ld b, $24                                     ; $59DE: $06 $24
    add b                                         ; $59E0: $80
    nop                                           ; $59E1: $00
    nop                                           ; $59E2: $00
    dec e                                         ; $59E3: $1D
    inc b                                         ; $59E4: $04
    nop                                           ; $59E5: $00
    ld hl, sp+$1C                                 ; $59E6: $F8 $1C
    inc b                                         ; $59E8: $04
    ld hl, sp+$00                                 ; $59E9: $F8 $00
    ld de, $F804                                  ; $59EB: $11 $04 $F8
    ld hl, sp+$10                                 ; $59EE: $F8 $10
    inc b                                         ; $59F0: $04
    pop af                                        ; $59F1: $F1
    nop                                           ; $59F2: $00
    inc bc                                        ; $59F3: $03
    inc b                                         ; $59F4: $04
    pop af                                        ; $59F5: $F1
    ld hl, sp+$02                                 ; $59F6: $F8 $02
    inc b                                         ; $59F8: $04
    add b                                         ; $59F9: $80
    nop                                           ; $59FA: $00
    nop                                           ; $59FB: $00
    rla                                           ; $59FC: $17
    inc b                                         ; $59FD: $04
    nop                                           ; $59FE: $00
    ld hl, sp+$16                                 ; $59FF: $F8 $16
    inc b                                         ; $5A01: $04
    ld hl, sp+$00                                 ; $5A02: $F8 $00
    dec bc                                        ; $5A04: $0B
    inc b                                         ; $5A05: $04
    ld hl, sp-$08                                 ; $5A06: $F8 $F8
    ld a, [bc]                                    ; $5A08: $0A
    inc b                                         ; $5A09: $04
    ldh a, [rP1]                                  ; $5A0A: $F0 $00
    inc bc                                        ; $5A0C: $03
    inc b                                         ; $5A0D: $04
    ldh a, [$F8]                                  ; $5A0E: $F0 $F8
    ld [bc], a                                    ; $5A10: $02
    inc b                                         ; $5A11: $04
    add b                                         ; $5A12: $80
    nop                                           ; $5A13: $00
    ld hl, sp+$1D                                 ; $5A14: $F8 $1D
    inc h                                         ; $5A16: $24
    nop                                           ; $5A17: $00
    nop                                           ; $5A18: $00
    inc e                                         ; $5A19: $1C
    inc h                                         ; $5A1A: $24
    ld hl, sp-$08                                 ; $5A1B: $F8 $F8
    ld de, $F824                                  ; $5A1D: $11 $24 $F8
    nop                                           ; $5A20: $00
    db $10                                        ; $5A21: $10
    inc h                                         ; $5A22: $24
    pop af                                        ; $5A23: $F1
    nop                                           ; $5A24: $00
    inc bc                                        ; $5A25: $03
    inc b                                         ; $5A26: $04
    pop af                                        ; $5A27: $F1
    ld hl, sp+$02                                 ; $5A28: $F8 $02
    inc b                                         ; $5A2A: $04
    add b                                         ; $5A2B: $80
    nop                                           ; $5A2C: $00
    nop                                           ; $5A2D: $00
    rra                                           ; $5A2E: $1F
    nop                                           ; $5A2F: $00
    nop                                           ; $5A30: $00
    ld hl, sp+$1E                                 ; $5A31: $F8 $1E
    inc b                                         ; $5A33: $04
    ld hl, sp+$00                                 ; $5A34: $F8 $00
    inc de                                        ; $5A36: $13
    inc b                                         ; $5A37: $04
    ld hl, sp-$08                                 ; $5A38: $F8 $F8
    ld [de], a                                    ; $5A3A: $12
    inc b                                         ; $5A3B: $04
    pop af                                        ; $5A3C: $F1
    nop                                           ; $5A3D: $00
    dec b                                         ; $5A3E: $05
    inc b                                         ; $5A3F: $04
    pop af                                        ; $5A40: $F1
    ld hl, sp+$04                                 ; $5A41: $F8 $04
    inc b                                         ; $5A43: $04
    add b                                         ; $5A44: $80
    nop                                           ; $5A45: $00
    nop                                           ; $5A46: $00
    add hl, de                                    ; $5A47: $19
    inc b                                         ; $5A48: $04
    nop                                           ; $5A49: $00
    ld hl, sp+$18                                 ; $5A4A: $F8 $18
    inc b                                         ; $5A4C: $04
    ld hl, sp+$00                                 ; $5A4D: $F8 $00
    dec c                                         ; $5A4F: $0D
    inc b                                         ; $5A50: $04
    ld hl, sp-$08                                 ; $5A51: $F8 $F8
    inc c                                         ; $5A53: $0C
    inc b                                         ; $5A54: $04
    ldh a, [rP1]                                  ; $5A55: $F0 $00
    dec b                                         ; $5A57: $05
    inc b                                         ; $5A58: $04
    ldh a, [$F8]                                  ; $5A59: $F0 $F8
    inc b                                         ; $5A5B: $04
    inc b                                         ; $5A5C: $04
    add b                                         ; $5A5D: $80
    nop                                           ; $5A5E: $00
    ld hl, sp+$1F                                 ; $5A5F: $F8 $1F
    jr nz, jr_00E_5A63                            ; $5A61: $20 $00

jr_00E_5A63:
    nop                                           ; $5A63: $00
    ld e, $24                                     ; $5A64: $1E $24
    ld hl, sp-$08                                 ; $5A66: $F8 $F8
    inc de                                        ; $5A68: $13
    inc h                                         ; $5A69: $24
    ld hl, sp+$00                                 ; $5A6A: $F8 $00
    ld [de], a                                    ; $5A6C: $12
    inc h                                         ; $5A6D: $24
    pop af                                        ; $5A6E: $F1
    nop                                           ; $5A6F: $00
    dec b                                         ; $5A70: $05
    inc b                                         ; $5A71: $04
    pop af                                        ; $5A72: $F1
    ld hl, sp+$04                                 ; $5A73: $F8 $04
    inc b                                         ; $5A75: $04
    add b                                         ; $5A76: $80
    nop                                           ; $5A77: $00
    nop                                           ; $5A78: $00
    add hl, hl                                    ; $5A79: $29
    inc b                                         ; $5A7A: $04
    nop                                           ; $5A7B: $00
    ld hl, sp+$28                                 ; $5A7C: $F8 $28
    inc b                                         ; $5A7E: $04
    ld hl, sp+$00                                 ; $5A7F: $F8 $00
    inc hl                                        ; $5A81: $23
    inc b                                         ; $5A82: $04
    ld hl, sp-$08                                 ; $5A83: $F8 $F8
    ld [hl+], a                                   ; $5A85: $22
    inc b                                         ; $5A86: $04
    pop af                                        ; $5A87: $F1
    nop                                           ; $5A88: $00
    ld hl, $F104                                  ; $5A89: $21 $04 $F1
    ld hl, sp+$20                                 ; $5A8C: $F8 $20
    inc b                                         ; $5A8E: $04
    add b                                         ; $5A8F: $80
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    dec hl                                        ; $5A92: $2B
    inc b                                         ; $5A93: $04
    nop                                           ; $5A94: $00
    ld hl, sp+$2A                                 ; $5A95: $F8 $2A
    inc b                                         ; $5A97: $04
    ld hl, sp+$00                                 ; $5A98: $F8 $00
    dec h                                         ; $5A9A: $25
    inc b                                         ; $5A9B: $04
    ld hl, sp-$08                                 ; $5A9C: $F8 $F8
    inc h                                         ; $5A9E: $24
    inc b                                         ; $5A9F: $04
    ldh a, [rP1]                                  ; $5AA0: $F0 $00
    ld hl, $F004                                  ; $5AA2: $21 $04 $F0
    ld hl, sp+$20                                 ; $5AA5: $F8 $20
    inc b                                         ; $5AA7: $04
    add b                                         ; $5AA8: $80
    nop                                           ; $5AA9: $00
    nop                                           ; $5AAA: $00
    dec l                                         ; $5AAB: $2D
    inc b                                         ; $5AAC: $04
    nop                                           ; $5AAD: $00
    ld hl, sp+$2C                                 ; $5AAE: $F8 $2C
    inc b                                         ; $5AB0: $04
    ld hl, sp+$00                                 ; $5AB1: $F8 $00
    daa                                           ; $5AB3: $27
    inc b                                         ; $5AB4: $04
    ld hl, sp-$08                                 ; $5AB5: $F8 $F8
    ld h, $04                                     ; $5AB7: $26 $04
    pop af                                        ; $5AB9: $F1
    nop                                           ; $5ABA: $00
    ld hl, $F104                                  ; $5ABB: $21 $04 $F1
    ld hl, sp+$20                                 ; $5ABE: $F8 $20
    inc b                                         ; $5AC0: $04
    add b                                         ; $5AC1: $80
    nop                                           ; $5AC2: $00
    ld hl, sp+$29                                 ; $5AC3: $F8 $29
    inc h                                         ; $5AC5: $24
    nop                                           ; $5AC6: $00
    nop                                           ; $5AC7: $00
    jr z, @+$26                                   ; $5AC8: $28 $24

    ld hl, sp-$08                                 ; $5ACA: $F8 $F8
    inc hl                                        ; $5ACC: $23
    inc h                                         ; $5ACD: $24
    ld hl, sp+$00                                 ; $5ACE: $F8 $00
    ld [hl+], a                                   ; $5AD0: $22
    inc h                                         ; $5AD1: $24
    pop af                                        ; $5AD2: $F1
    ld hl, sp+$21                                 ; $5AD3: $F8 $21
    inc h                                         ; $5AD5: $24
    pop af                                        ; $5AD6: $F1
    nop                                           ; $5AD7: $00
    jr nz, jr_00E_5AFE                            ; $5AD8: $20 $24

    add b                                         ; $5ADA: $80
    nop                                           ; $5ADB: $00
    ld hl, sp+$2B                                 ; $5ADC: $F8 $2B
    inc h                                         ; $5ADE: $24
    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    ld a, [hl+]                                   ; $5AE1: $2A
    inc h                                         ; $5AE2: $24
    ld hl, sp-$08                                 ; $5AE3: $F8 $F8
    dec h                                         ; $5AE5: $25
    inc h                                         ; $5AE6: $24
    ld hl, sp+$00                                 ; $5AE7: $F8 $00
    inc h                                         ; $5AE9: $24
    inc h                                         ; $5AEA: $24
    ldh a, [$F8]                                  ; $5AEB: $F0 $F8
    ld hl, $F024                                  ; $5AED: $21 $24 $F0
    nop                                           ; $5AF0: $00
    jr nz, jr_00E_5B17                            ; $5AF1: $20 $24

    add b                                         ; $5AF3: $80
    nop                                           ; $5AF4: $00
    ld hl, sp+$2D                                 ; $5AF5: $F8 $2D
    inc h                                         ; $5AF7: $24
    nop                                           ; $5AF8: $00
    nop                                           ; $5AF9: $00
    inc l                                         ; $5AFA: $2C
    inc h                                         ; $5AFB: $24
    ld hl, sp-$08                                 ; $5AFC: $F8 $F8

jr_00E_5AFE:
    daa                                           ; $5AFE: $27
    inc h                                         ; $5AFF: $24
    ld hl, sp+$00                                 ; $5B00: $F8 $00
    ld h, $24                                     ; $5B02: $26 $24
    pop af                                        ; $5B04: $F1
    ld hl, sp+$21                                 ; $5B05: $F8 $21
    inc h                                         ; $5B07: $24
    pop af                                        ; $5B08: $F1
    nop                                           ; $5B09: $00
    jr nz, jr_00E_5B30                            ; $5B0A: $20 $24

    add b                                         ; $5B0C: $80
    ld hl, sp+$08                                 ; $5B0D: $F8 $08
    ld b, [hl]                                    ; $5B0F: $46
    inc b                                         ; $5B10: $04
    ld hl, sp+$10                                 ; $5B11: $F8 $10
    ld h, [hl]                                    ; $5B13: $66
    inc b                                         ; $5B14: $04
    nop                                           ; $5B15: $00
    db $10                                        ; $5B16: $10

jr_00E_5B17:
    ld d, a                                       ; $5B17: $57
    inc b                                         ; $5B18: $04
    nop                                           ; $5B19: $00
    ld [$0456], sp                                ; $5B1A: $08 $56 $04
    ldh a, [rNR10]                                ; $5B1D: $F0 $10
    ld a, [hl-]                                   ; $5B1F: $3A
    inc b                                         ; $5B20: $04
    ldh a, [$08]                                  ; $5B21: $F0 $08
    add hl, sp                                    ; $5B23: $39
    inc b                                         ; $5B24: $04
    nop                                           ; $5B25: $00
    nop                                           ; $5B26: $00
    ld d, l                                       ; $5B27: $55
    inc b                                         ; $5B28: $04
    nop                                           ; $5B29: $00
    ld hl, sp+$54                                 ; $5B2A: $F8 $54
    inc b                                         ; $5B2C: $04
    ld hl, sp+$00                                 ; $5B2D: $F8 $00
    ld b, l                                       ; $5B2F: $45

jr_00E_5B30:
    inc b                                         ; $5B30: $04
    ld hl, sp-$08                                 ; $5B31: $F8 $F8
    ld b, h                                       ; $5B33: $44
    inc b                                         ; $5B34: $04
    ldh a, [rP1]                                  ; $5B35: $F0 $00
    ld sp, $F004                                  ; $5B37: $31 $04 $F0
    ld hl, sp+$30                                 ; $5B3A: $F8 $30
    inc b                                         ; $5B3C: $04
    add b                                         ; $5B3D: $80
    ldh a, [$08]                                  ; $5B3E: $F0 $08
    ld b, d                                       ; $5B40: $42
    inc b                                         ; $5B41: $04
    ld hl, sp-$08                                 ; $5B42: $F8 $F8
    ld b, a                                       ; $5B44: $47
    inc b                                         ; $5B45: $04
    nop                                           ; $5B46: $00
    nop                                           ; $5B47: $00
    ld e, b                                       ; $5B48: $58
    inc b                                         ; $5B49: $04
    ld hl, sp+$00                                 ; $5B4A: $F8 $00
    ld c, b                                       ; $5B4C: $48
    inc b                                         ; $5B4D: $04
    ldh a, [rP1]                                  ; $5B4E: $F0 $00
    inc [hl]                                      ; $5B50: $34
    inc b                                         ; $5B51: $04
    ldh a, [$F8]                                  ; $5B52: $F0 $F8
    inc sp                                        ; $5B54: $33
    inc b                                         ; $5B55: $04
    ld hl, sp+$08                                 ; $5B56: $F8 $08
    ld b, [hl]                                    ; $5B58: $46
    inc b                                         ; $5B59: $04
    ld hl, sp+$10                                 ; $5B5A: $F8 $10
    ld h, [hl]                                    ; $5B5C: $66
    inc b                                         ; $5B5D: $04
    nop                                           ; $5B5E: $00
    db $10                                        ; $5B5F: $10
    ld d, a                                       ; $5B60: $57
    inc b                                         ; $5B61: $04
    nop                                           ; $5B62: $00
    ld [$0456], sp                                ; $5B63: $08 $56 $04
    ldh a, [rNR10]                                ; $5B66: $F0 $10
    ld a, [hl-]                                   ; $5B68: $3A
    inc b                                         ; $5B69: $04
    nop                                           ; $5B6A: $00
    ld hl, sp+$54                                 ; $5B6B: $F8 $54
    inc b                                         ; $5B6D: $04
    add b                                         ; $5B6E: $80
    ld hl, sp+$00                                 ; $5B6F: $F8 $00
    ld c, d                                       ; $5B71: $4A
    inc b                                         ; $5B72: $04
    ldh a, [rP1]                                  ; $5B73: $F0 $00
    ld [hl], $04                                  ; $5B75: $36 $04
    ldh a, [$08]                                  ; $5B77: $F0 $08
    dec sp                                        ; $5B79: $3B
    inc b                                         ; $5B7A: $04
    ld hl, sp+$08                                 ; $5B7B: $F8 $08
    ld c, e                                       ; $5B7D: $4B
    inc b                                         ; $5B7E: $04
    ld hl, sp-$08                                 ; $5B7F: $F8 $F8
    ld b, a                                       ; $5B81: $47
    inc b                                         ; $5B82: $04
    nop                                           ; $5B83: $00
    nop                                           ; $5B84: $00
    ld e, b                                       ; $5B85: $58
    inc b                                         ; $5B86: $04
    ldh a, [$F8]                                  ; $5B87: $F0 $F8
    inc sp                                        ; $5B89: $33
    inc b                                         ; $5B8A: $04
    ld hl, sp+$10                                 ; $5B8B: $F8 $10
    ld h, [hl]                                    ; $5B8D: $66
    inc b                                         ; $5B8E: $04
    nop                                           ; $5B8F: $00
    db $10                                        ; $5B90: $10
    ld d, a                                       ; $5B91: $57
    inc b                                         ; $5B92: $04
    nop                                           ; $5B93: $00
    ld [$0456], sp                                ; $5B94: $08 $56 $04
    ldh a, [rNR10]                                ; $5B97: $F0 $10
    ld a, [hl-]                                   ; $5B99: $3A
    inc b                                         ; $5B9A: $04
    nop                                           ; $5B9B: $00
    ld hl, sp+$54                                 ; $5B9C: $F8 $54
    inc b                                         ; $5B9E: $04
    add b                                         ; $5B9F: $80
    ldh a, [$08]                                  ; $5BA0: $F0 $08
    ld [hl-], a                                   ; $5BA2: $32
    inc b                                         ; $5BA3: $04
    ld hl, sp+$08                                 ; $5BA4: $F8 $08
    ld b, [hl]                                    ; $5BA6: $46
    inc b                                         ; $5BA7: $04
    nop                                           ; $5BA8: $00
    ld [$0456], sp                                ; $5BA9: $08 $56 $04
    ld hl, sp-$08                                 ; $5BAC: $F8 $F8
    ld c, h                                       ; $5BAE: $4C
    inc b                                         ; $5BAF: $04
    nop                                           ; $5BB0: $00
    ld hl, sp+$59                                 ; $5BB1: $F8 $59
    inc b                                         ; $5BB3: $04
    nop                                           ; $5BB4: $00
    nop                                           ; $5BB5: $00
    ld e, d                                       ; $5BB6: $5A
    inc b                                         ; $5BB7: $04
    ld hl, sp+$00                                 ; $5BB8: $F8 $00
    ld c, l                                       ; $5BBA: $4D
    inc b                                         ; $5BBB: $04
    ldh a, [rP1]                                  ; $5BBC: $F0 $00
    ld [hl], $04                                  ; $5BBE: $36 $04
    ldh a, [$F8]                                  ; $5BC0: $F0 $F8
    inc sp                                        ; $5BC2: $33
    inc b                                         ; $5BC3: $04
    ld hl, sp+$10                                 ; $5BC4: $F8 $10
    ld h, [hl]                                    ; $5BC6: $66
    inc b                                         ; $5BC7: $04
    nop                                           ; $5BC8: $00
    db $10                                        ; $5BC9: $10
    ld d, a                                       ; $5BCA: $57
    inc b                                         ; $5BCB: $04
    ldh a, [rNR10]                                ; $5BCC: $F0 $10
    ld a, [hl-]                                   ; $5BCE: $3A
    inc b                                         ; $5BCF: $04
    add b                                         ; $5BD0: $80
    ldh a, [rP1]                                  ; $5BD1: $F0 $00
    jr c, jr_00E_5BD9                             ; $5BD3: $38 $04

    ldh a, [$F8]                                  ; $5BD5: $F0 $F8
    scf                                           ; $5BD7: $37
    inc b                                         ; $5BD8: $04

jr_00E_5BD9:
    ld hl, sp+$00                                 ; $5BD9: $F8 $00
    ld c, a                                       ; $5BDB: $4F
    inc b                                         ; $5BDC: $04
    ld hl, sp-$08                                 ; $5BDD: $F8 $F8
    ld c, [hl]                                    ; $5BDF: $4E
    inc b                                         ; $5BE0: $04
    nop                                           ; $5BE1: $00
    nop                                           ; $5BE2: $00
    ld e, h                                       ; $5BE3: $5C
    inc b                                         ; $5BE4: $04
    nop                                           ; $5BE5: $00
    ld hl, sp+$5B                                 ; $5BE6: $F8 $5B
    inc b                                         ; $5BE8: $04
    ldh a, [$08]                                  ; $5BE9: $F0 $08
    ld [hl-], a                                   ; $5BEB: $32
    inc b                                         ; $5BEC: $04
    ld hl, sp+$08                                 ; $5BED: $F8 $08
    ld b, [hl]                                    ; $5BEF: $46
    inc b                                         ; $5BF0: $04
    nop                                           ; $5BF1: $00
    ld [$0456], sp                                ; $5BF2: $08 $56 $04
    ld hl, sp+$10                                 ; $5BF5: $F8 $10
    ld h, [hl]                                    ; $5BF7: $66
    inc b                                         ; $5BF8: $04
    nop                                           ; $5BF9: $00
    db $10                                        ; $5BFA: $10
    ld d, a                                       ; $5BFB: $57
    inc b                                         ; $5BFC: $04
    ldh a, [rNR10]                                ; $5BFD: $F0 $10
    ld a, [hl-]                                   ; $5BFF: $3A
    inc b                                         ; $5C00: $04
    add b                                         ; $5C01: $80
    ldh a, [$08]                                  ; $5C02: $F0 $08
    dec sp                                        ; $5C04: $3B
    inc b                                         ; $5C05: $04
    nop                                           ; $5C06: $00
    nop                                           ; $5C07: $00
    ld e, [hl]                                    ; $5C08: $5E
    nop                                           ; $5C09: $00
    nop                                           ; $5C0A: $00
    ld hl, sp+$5D                                 ; $5C0B: $F8 $5D
    nop                                           ; $5C0D: $00
    ld hl, sp+$08                                 ; $5C0E: $F8 $08
    ld d, c                                       ; $5C10: $51
    inc b                                         ; $5C11: $04
    ld hl, sp+$00                                 ; $5C12: $F8 $00
    ld d, b                                       ; $5C14: $50
    inc b                                         ; $5C15: $04
    ldh a, [rP1]                                  ; $5C16: $F0 $00
    jr c, jr_00E_5C1E                             ; $5C18: $38 $04

    ldh a, [$F8]                                  ; $5C1A: $F0 $F8
    scf                                           ; $5C1C: $37
    inc b                                         ; $5C1D: $04

jr_00E_5C1E:
    ld hl, sp-$08                                 ; $5C1E: $F8 $F8
    ld c, [hl]                                    ; $5C20: $4E
    inc b                                         ; $5C21: $04
    nop                                           ; $5C22: $00
    ld [$0456], sp                                ; $5C23: $08 $56 $04
    ld hl, sp+$10                                 ; $5C26: $F8 $10
    ld h, [hl]                                    ; $5C28: $66
    inc b                                         ; $5C29: $04
    nop                                           ; $5C2A: $00
    db $10                                        ; $5C2B: $10
    ld d, a                                       ; $5C2C: $57
    inc b                                         ; $5C2D: $04
    ldh a, [rNR10]                                ; $5C2E: $F0 $10
    ld a, [hl-]                                   ; $5C30: $3A
    inc b                                         ; $5C31: $04
    add b                                         ; $5C32: $80
    ld hl, sp+$08                                 ; $5C33: $F8 $08
    ld d, e                                       ; $5C35: $53
    inc b                                         ; $5C36: $04
    ld hl, sp+$00                                 ; $5C37: $F8 $00
    ld d, d                                       ; $5C39: $52
    inc b                                         ; $5C3A: $04
    ldh a, [$08]                                  ; $5C3B: $F0 $08
    dec a                                         ; $5C3D: $3D
    inc b                                         ; $5C3E: $04
    ldh a, [rP1]                                  ; $5C3F: $F0 $00
    inc a                                         ; $5C41: $3C
    inc b                                         ; $5C42: $04
    nop                                           ; $5C43: $00
    nop                                           ; $5C44: $00
    ld e, [hl]                                    ; $5C45: $5E
    nop                                           ; $5C46: $00
    nop                                           ; $5C47: $00
    ld hl, sp+$5D                                 ; $5C48: $F8 $5D
    nop                                           ; $5C4A: $00
    ldh a, [$F8]                                  ; $5C4B: $F0 $F8
    scf                                           ; $5C4D: $37
    inc b                                         ; $5C4E: $04
    ld hl, sp-$08                                 ; $5C4F: $F8 $F8
    ld c, [hl]                                    ; $5C51: $4E
    inc b                                         ; $5C52: $04
    nop                                           ; $5C53: $00
    ld [$0456], sp                                ; $5C54: $08 $56 $04
    ld hl, sp+$10                                 ; $5C57: $F8 $10
    ld h, [hl]                                    ; $5C59: $66
    inc b                                         ; $5C5A: $04
    nop                                           ; $5C5B: $00
    db $10                                        ; $5C5C: $10
    ld d, a                                       ; $5C5D: $57
    inc b                                         ; $5C5E: $04
    ldh a, [rNR10]                                ; $5C5F: $F0 $10
    ld a, [hl-]                                   ; $5C61: $3A
    inc b                                         ; $5C62: $04
    add b                                         ; $5C63: $80
    ldh a, [rNR10]                                ; $5C64: $F0 $10
    ld b, b                                       ; $5C66: $40
    nop                                           ; $5C67: $00
    ldh a, [$08]                                  ; $5C68: $F0 $08
    ccf                                           ; $5C6A: $3F
    inc b                                         ; $5C6B: $04
    ldh a, [rP1]                                  ; $5C6C: $F0 $00
    ld a, $04                                     ; $5C6E: $3E $04
    ld hl, sp+$00                                 ; $5C70: $F8 $00
    ld e, a                                       ; $5C72: $5F
    inc b                                         ; $5C73: $04
    ld hl, sp+$10                                 ; $5C74: $F8 $10
    ld h, c                                       ; $5C76: $61
    inc b                                         ; $5C77: $04
    ld hl, sp+$08                                 ; $5C78: $F8 $08
    ld h, b                                       ; $5C7A: $60
    inc b                                         ; $5C7B: $04
    nop                                           ; $5C7C: $00
    nop                                           ; $5C7D: $00
    ld e, [hl]                                    ; $5C7E: $5E
    nop                                           ; $5C7F: $00
    nop                                           ; $5C80: $00
    ld hl, sp+$5D                                 ; $5C81: $F8 $5D
    nop                                           ; $5C83: $00
    ldh a, [$F8]                                  ; $5C84: $F0 $F8
    scf                                           ; $5C86: $37
    inc b                                         ; $5C87: $04
    ld hl, sp-$08                                 ; $5C88: $F8 $F8
    ld c, [hl]                                    ; $5C8A: $4E
    inc b                                         ; $5C8B: $04
    nop                                           ; $5C8C: $00
    ld [$0456], sp                                ; $5C8D: $08 $56 $04
    nop                                           ; $5C90: $00
    db $10                                        ; $5C91: $10
    ld d, a                                       ; $5C92: $57
    inc b                                         ; $5C93: $04
    add b                                         ; $5C94: $80
    ldh a, [rP1]                                  ; $5C95: $F0 $00
    ld a, $04                                     ; $5C97: $3E $04
    nop                                           ; $5C99: $00
    ld [$0468], sp                                ; $5C9A: $08 $68 $04
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    ld h, a                                       ; $5C9F: $67
    inc b                                         ; $5CA0: $04
    ld hl, sp+$10                                 ; $5CA1: $F8 $10
    ld h, h                                       ; $5CA3: $64
    inc b                                         ; $5CA4: $04
    ld hl, sp+$08                                 ; $5CA5: $F8 $08
    ld h, e                                       ; $5CA7: $63
    inc b                                         ; $5CA8: $04
    ld hl, sp+$00                                 ; $5CA9: $F8 $00
    ld h, d                                       ; $5CAB: $62
    inc b                                         ; $5CAC: $04
    nop                                           ; $5CAD: $00
    ld hl, sp+$5D                                 ; $5CAE: $F8 $5D
    nop                                           ; $5CB0: $00
    ldh a, [$F8]                                  ; $5CB1: $F0 $F8
    scf                                           ; $5CB3: $37
    inc b                                         ; $5CB4: $04
    ld hl, sp-$08                                 ; $5CB5: $F8 $F8
    ld c, [hl]                                    ; $5CB7: $4E
    inc b                                         ; $5CB8: $04
    nop                                           ; $5CB9: $00
    db $10                                        ; $5CBA: $10
    ld d, a                                       ; $5CBB: $57
    inc b                                         ; $5CBC: $04
    add b                                         ; $5CBD: $80
    ldh a, [rP1]                                  ; $5CBE: $F0 $00
    ld a, $04                                     ; $5CC0: $3E $04
    rst $38                                       ; $5CC2: $FF
    ld [$0468], sp                                ; $5CC3: $08 $68 $04
    nop                                           ; $5CC6: $00
    nop                                           ; $5CC7: $00
    ld h, a                                       ; $5CC8: $67
    inc b                                         ; $5CC9: $04
    rst $30                                       ; $5CCA: $F7
    db $10                                        ; $5CCB: $10
    ld h, h                                       ; $5CCC: $64
    inc b                                         ; $5CCD: $04
    rst $30                                       ; $5CCE: $F7
    ld [$0463], sp                                ; $5CCF: $08 $63 $04
    ld hl, sp+$00                                 ; $5CD2: $F8 $00
    ld h, d                                       ; $5CD4: $62
    inc b                                         ; $5CD5: $04
    nop                                           ; $5CD6: $00
    ld hl, sp+$5D                                 ; $5CD7: $F8 $5D
    nop                                           ; $5CD9: $00
    ldh a, [$F8]                                  ; $5CDA: $F0 $F8
    scf                                           ; $5CDC: $37
    inc b                                         ; $5CDD: $04
    ld hl, sp-$08                                 ; $5CDE: $F8 $F8
    ld c, [hl]                                    ; $5CE0: $4E
    inc b                                         ; $5CE1: $04
    rst $38                                       ; $5CE2: $FF
    db $10                                        ; $5CE3: $10
    ld d, a                                       ; $5CE4: $57
    inc b                                         ; $5CE5: $04
    add b                                         ; $5CE6: $80
    ld hl, sp-$08                                 ; $5CE7: $F8 $F8
    ld b, h                                       ; $5CE9: $44
    inc b                                         ; $5CEA: $04
    ld hl, sp+$00                                 ; $5CEB: $F8 $00
    ld h, l                                       ; $5CED: $65
    inc b                                         ; $5CEE: $04
    ldh a, [$F8]                                  ; $5CEF: $F0 $F8
    jr nc, jr_00E_5CF7                            ; $5CF1: $30 $04

    ldh a, [rP1]                                  ; $5CF3: $F0 $00
    ld b, c                                       ; $5CF5: $41
    inc b                                         ; $5CF6: $04

jr_00E_5CF7:
    ldh a, [$08]                                  ; $5CF7: $F0 $08
    ld b, d                                       ; $5CF9: $42
    inc b                                         ; $5CFA: $04
    nop                                           ; $5CFB: $00
    nop                                           ; $5CFC: $00
    ld e, b                                       ; $5CFD: $58
    inc b                                         ; $5CFE: $04
    ld hl, sp+$08                                 ; $5CFF: $F8 $08
    ld b, [hl]                                    ; $5D01: $46
    inc b                                         ; $5D02: $04
    ld hl, sp+$10                                 ; $5D03: $F8 $10
    ld h, [hl]                                    ; $5D05: $66
    inc b                                         ; $5D06: $04
    nop                                           ; $5D07: $00
    db $10                                        ; $5D08: $10
    ld d, a                                       ; $5D09: $57
    inc b                                         ; $5D0A: $04
    nop                                           ; $5D0B: $00
    ld [$0456], sp                                ; $5D0C: $08 $56 $04
    ldh a, [rNR10]                                ; $5D0F: $F0 $10
    ld a, [hl-]                                   ; $5D11: $3A
    inc b                                         ; $5D12: $04
    nop                                           ; $5D13: $00
    ld hl, sp+$54                                 ; $5D14: $F8 $54
    inc b                                         ; $5D16: $04
    add b                                         ; $5D17: $80
    ld hl, sp+$10                                 ; $5D18: $F8 $10
    ld h, [hl]                                    ; $5D1A: $66
    inc b                                         ; $5D1B: $04
    nop                                           ; $5D1C: $00
    db $10                                        ; $5D1D: $10
    ld d, a                                       ; $5D1E: $57
    inc b                                         ; $5D1F: $04
    nop                                           ; $5D20: $00
    ld [$0456], sp                                ; $5D21: $08 $56 $04
    ld hl, sp+$08                                 ; $5D24: $F8 $08
    ld b, [hl]                                    ; $5D26: $46
    inc b                                         ; $5D27: $04
    ldh a, [rNR10]                                ; $5D28: $F0 $10
    ld a, [hl-]                                   ; $5D2A: $3A
    inc b                                         ; $5D2B: $04
    ldh a, [$08]                                  ; $5D2C: $F0 $08
    add hl, sp                                    ; $5D2E: $39
    inc b                                         ; $5D2F: $04
    ldh a, [rP1]                                  ; $5D30: $F0 $00
    ld l, d                                       ; $5D32: $6A
    inc b                                         ; $5D33: $04
    ldh a, [$F8]                                  ; $5D34: $F0 $F8
    ld l, c                                       ; $5D36: $69
    inc b                                         ; $5D37: $04
    ld hl, sp+$00                                 ; $5D38: $F8 $00
    ld l, h                                       ; $5D3A: $6C
    inc b                                         ; $5D3B: $04
    ld hl, sp-$08                                 ; $5D3C: $F8 $F8
    ld l, e                                       ; $5D3E: $6B
    inc b                                         ; $5D3F: $04
    nop                                           ; $5D40: $00
    nop                                           ; $5D41: $00
    ld l, [hl]                                    ; $5D42: $6E
    inc b                                         ; $5D43: $04
    nop                                           ; $5D44: $00
    ld hl, sp+$6D                                 ; $5D45: $F8 $6D
    inc b                                         ; $5D47: $04
    add b                                         ; $5D48: $80
    ld c, l                                       ; $5D49: $4D
    ld [$0008], sp                                ; $5D4A: $08 $08 $00
    rst $38                                       ; $5D4D: $FF
    inc l                                         ; $5D4E: $2C
    ld e, d                                       ; $5D4F: $5A
    ld b, l                                       ; $5D50: $45
    ld e, d                                       ; $5D51: $5A
    ld e, [hl]                                    ; $5D52: $5E
    ld e, d                                       ; $5D53: $5A
    ld b, l                                       ; $5D54: $45
    ld e, d                                       ; $5D55: $5A
    ld b, [hl]                                    ; $5D56: $46
    ld c, c                                       ; $5D57: $49
    ld e, l                                       ; $5D58: $5D
    ld c, l                                       ; $5D59: $4D
    ld [$0008], sp                                ; $5D5A: $08 $08 $00
    ld bc, $59E1                                  ; $5D5D: $01 $E1 $59
    ld a, [$1359]                                 ; $5D60: $FA $59 $13
    ld e, d                                       ; $5D63: $5A
    ld a, [$4659]                                 ; $5D64: $FA $59 $46
    ld e, c                                       ; $5D67: $59
    ld e, l                                       ; $5D68: $5D
    ld c, l                                       ; $5D69: $4D
    ld [$FF08], sp                                ; $5D6A: $08 $08 $FF
    nop                                           ; $5D6D: $00
    jp nz, $DB5A                                  ; $5D6E: $C2 $5A $DB

    ld e, d                                       ; $5D71: $5A
    db $F4                                        ; $5D72: $F4
    ld e, d                                       ; $5D73: $5A
    db $DB                                        ; $5D74: $DB
    ld e, d                                       ; $5D75: $5A
    ld b, [hl]                                    ; $5D76: $46
    ld l, c                                       ; $5D77: $69
    ld e, l                                       ; $5D78: $5D
    ld c, l                                       ; $5D79: $4D
    ld [$0108], sp                                ; $5D7A: $08 $08 $01
    nop                                           ; $5D7D: $00
    ld [hl], a                                    ; $5D7E: $77
    ld e, d                                       ; $5D7F: $5A
    sub b                                         ; $5D80: $90
    ld e, d                                       ; $5D81: $5A
    xor c                                         ; $5D82: $A9
    ld e, d                                       ; $5D83: $5A
    sub b                                         ; $5D84: $90
    ld e, d                                       ; $5D85: $5A
    ld b, [hl]                                    ; $5D86: $46
    ld a, c                                       ; $5D87: $79
    ld e, l                                       ; $5D88: $5D
    ld c, l                                       ; $5D89: $4D
    ld [$0008], sp                                ; $5D8A: $08 $08 $00
    cp $2C                                        ; $5D8D: $FE $2C
    ld e, d                                       ; $5D8F: $5A
    ld b, l                                       ; $5D90: $45
    ld e, d                                       ; $5D91: $5A
    ld e, [hl]                                    ; $5D92: $5E
    ld e, d                                       ; $5D93: $5A
    ld b, l                                       ; $5D94: $45
    ld e, d                                       ; $5D95: $5A
    ld b, [hl]                                    ; $5D96: $46
    adc c                                         ; $5D97: $89
    ld e, l                                       ; $5D98: $5D
    ld c, l                                       ; $5D99: $4D
    ld [$0008], sp                                ; $5D9A: $08 $08 $00
    ld [bc], a                                    ; $5D9D: $02
    pop hl                                        ; $5D9E: $E1
    ld e, c                                       ; $5D9F: $59
    ld a, [$1359]                                 ; $5DA0: $FA $59 $13
    ld e, d                                       ; $5DA3: $5A
    ld a, [$4659]                                 ; $5DA4: $FA $59 $46
    sbc c                                         ; $5DA7: $99
    ld e, l                                       ; $5DA8: $5D
    ld c, l                                       ; $5DA9: $4D
    ld [$FE08], sp                                ; $5DAA: $08 $08 $FE
    nop                                           ; $5DAD: $00
    jp nz, $DB5A                                  ; $5DAE: $C2 $5A $DB

    ld e, d                                       ; $5DB1: $5A
    db $F4                                        ; $5DB2: $F4
    ld e, d                                       ; $5DB3: $5A
    db $DB                                        ; $5DB4: $DB
    ld e, d                                       ; $5DB5: $5A
    ld b, [hl]                                    ; $5DB6: $46
    xor c                                         ; $5DB7: $A9
    ld e, l                                       ; $5DB8: $5D
    ld c, l                                       ; $5DB9: $4D
    ld [$0208], sp                                ; $5DBA: $08 $08 $02
    nop                                           ; $5DBD: $00
    ld [hl], a                                    ; $5DBE: $77
    ld e, d                                       ; $5DBF: $5A
    sub b                                         ; $5DC0: $90
    ld e, d                                       ; $5DC1: $5A
    xor c                                         ; $5DC2: $A9
    ld e, d                                       ; $5DC3: $5A
    sub b                                         ; $5DC4: $90
    ld e, d                                       ; $5DC5: $5A
    ld b, [hl]                                    ; $5DC6: $46
    cp c                                          ; $5DC7: $B9
    ld e, l                                       ; $5DC8: $5D
    ld c, h                                       ; $5DC9: $4C
    rst $38                                       ; $5DCA: $FF
    nop                                           ; $5DCB: $00
    nop                                           ; $5DCC: $00
    ld b, l                                       ; $5DCD: $45
    ld e, d                                       ; $5DCE: $5A
    nop                                           ; $5DCF: $00
    ld b, [hl]                                    ; $5DD0: $46
    ret                                           ; $5DD1: $C9


    ld e, l                                       ; $5DD2: $5D
    ld c, h                                       ; $5DD3: $4C
    rst $38                                       ; $5DD4: $FF
    nop                                           ; $5DD5: $00
    nop                                           ; $5DD6: $00
    ld a, [$0059]                                 ; $5DD7: $FA $59 $00
    ld b, [hl]                                    ; $5DDA: $46
    db $D3                                        ; $5DDB: $D3
    ld e, l                                       ; $5DDC: $5D
    ld c, h                                       ; $5DDD: $4C
    rst $38                                       ; $5DDE: $FF
    nop                                           ; $5DDF: $00
    nop                                           ; $5DE0: $00
    db $DB                                        ; $5DE1: $DB
    ld e, d                                       ; $5DE2: $5A
    nop                                           ; $5DE3: $00
    ld b, [hl]                                    ; $5DE4: $46
    db $DD                                        ; $5DE5: $DD
    ld e, l                                       ; $5DE6: $5D
    ld c, h                                       ; $5DE7: $4C
    rst $38                                       ; $5DE8: $FF
    nop                                           ; $5DE9: $00
    nop                                           ; $5DEA: $00
    sub b                                         ; $5DEB: $90
    ld e, d                                       ; $5DEC: $5A
    nop                                           ; $5DED: $00
    ld b, [hl]                                    ; $5DEE: $46
    rst $20                                       ; $5DEF: $E7
    ld e, l                                       ; $5DF0: $5D
    ld c, h                                       ; $5DF1: $4C
    rst $38                                       ; $5DF2: $FF
    nop                                           ; $5DF3: $00
    nop                                           ; $5DF4: $00
    ret z                                         ; $5DF5: $C8

    ld e, c                                       ; $5DF6: $59
    nop                                           ; $5DF7: $00
    ld b, [hl]                                    ; $5DF8: $46
    pop af                                        ; $5DF9: $F1
    ld e, l                                       ; $5DFA: $5D
    ld c, h                                       ; $5DFB: $4C
    rst $38                                       ; $5DFC: $FF
    nop                                           ; $5DFD: $00
    nop                                           ; $5DFE: $00
    xor a                                         ; $5DFF: $AF
    ld e, c                                       ; $5E00: $59
    nop                                           ; $5E01: $00
    ld b, [hl]                                    ; $5E02: $46
    ei                                            ; $5E03: $FB
    ld e, l                                       ; $5E04: $5D
    ld c, h                                       ; $5E05: $4C
    rst $38                                       ; $5E06: $FF
    nop                                           ; $5E07: $00
    nop                                           ; $5E08: $00
    sub [hl]                                      ; $5E09: $96
    ld e, c                                       ; $5E0A: $59
    nop                                           ; $5E0B: $00
    ld b, [hl]                                    ; $5E0C: $46
    dec b                                         ; $5E0D: $05
    ld e, [hl]                                    ; $5E0E: $5E
    ld c, h                                       ; $5E0F: $4C
    rst $38                                       ; $5E10: $FF
    nop                                           ; $5E11: $00
    nop                                           ; $5E12: $00
    ld a, l                                       ; $5E13: $7D
    ld e, c                                       ; $5E14: $59
    nop                                           ; $5E15: $00
    ld b, [hl]                                    ; $5E16: $46
    rrca                                          ; $5E17: $0F
    ld e, [hl]                                    ; $5E18: $5E
    ld c, h                                       ; $5E19: $4C
    jr nz, jr_00E_5E1C                            ; $5E1A: $20 $00

jr_00E_5E1C:
    nop                                           ; $5E1C: $00
    jr jr_00E_5E7C                                ; $5E1D: $18 $5D

    ld [rRAMG], sp                                ; $5E1F: $08 $00 $00
    dec c                                         ; $5E22: $0D
    ld e, e                                       ; $5E23: $5B
    ld [rRAMG], sp                                ; $5E24: $08 $00 $00
    ld a, $5B                                     ; $5E27: $3E $5B
    stop                                          ; $5E29: $10 $00
    nop                                           ; $5E2B: $00
    ld l, a                                       ; $5E2C: $6F
    ld e, e                                       ; $5E2D: $5B
    inc b                                         ; $5E2E: $04
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    and b                                         ; $5E31: $A0
    ld e, e                                       ; $5E32: $5B
    stop                                          ; $5E33: $10 $00
    nop                                           ; $5E35: $00
    pop de                                        ; $5E36: $D1
    ld e, e                                       ; $5E37: $5B
    inc b                                         ; $5E38: $04
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    ld [bc], a                                    ; $5E3B: $02
    ld e, h                                       ; $5E3C: $5C
    ld [rRAMG], sp                                ; $5E3D: $08 $00 $00
    inc sp                                        ; $5E40: $33
    ld e, h                                       ; $5E41: $5C
    inc b                                         ; $5E42: $04
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    ld h, h                                       ; $5E45: $64
    ld e, h                                       ; $5E46: $5C
    ld [rRAMG], sp                                ; $5E47: $08 $00 $00
    sub l                                         ; $5E4A: $95
    ld e, h                                       ; $5E4B: $5C
    inc b                                         ; $5E4C: $04
    nop                                           ; $5E4D: $00
    nop                                           ; $5E4E: $00
    cp [hl]                                       ; $5E4F: $BE
    ld e, h                                       ; $5E50: $5C
    inc b                                         ; $5E51: $04
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    sub l                                         ; $5E54: $95
    ld e, h                                       ; $5E55: $5C
    ld [bc], a                                    ; $5E56: $02
    nop                                           ; $5E57: $00
    nop                                           ; $5E58: $00
    cp [hl]                                       ; $5E59: $BE
    ld e, h                                       ; $5E5A: $5C
    ld [bc], a                                    ; $5E5B: $02
    nop                                           ; $5E5C: $00
    nop                                           ; $5E5D: $00
    sub l                                         ; $5E5E: $95
    ld e, h                                       ; $5E5F: $5C
    ld [bc], a                                    ; $5E60: $02
    nop                                           ; $5E61: $00
    nop                                           ; $5E62: $00
    cp [hl]                                       ; $5E63: $BE
    ld e, h                                       ; $5E64: $5C
    ld [bc], a                                    ; $5E65: $02
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    sub l                                         ; $5E68: $95
    ld e, h                                       ; $5E69: $5C
    ld [bc], a                                    ; $5E6A: $02
    nop                                           ; $5E6B: $00
    nop                                           ; $5E6C: $00
    cp [hl]                                       ; $5E6D: $BE
    ld e, h                                       ; $5E6E: $5C
    inc b                                         ; $5E6F: $04
    nop                                           ; $5E70: $00
    nop                                           ; $5E71: $00
    sub l                                         ; $5E72: $95
    ld e, h                                       ; $5E73: $5C
    inc b                                         ; $5E74: $04
    nop                                           ; $5E75: $00
    nop                                           ; $5E76: $00
    cp [hl]                                       ; $5E77: $BE
    ld e, h                                       ; $5E78: $5C
    ld [rRAMG], sp                                ; $5E79: $08 $00 $00

jr_00E_5E7C:
    sub l                                         ; $5E7C: $95
    ld e, h                                       ; $5E7D: $5C
    inc b                                         ; $5E7E: $04
    nop                                           ; $5E7F: $00
    nop                                           ; $5E80: $00
    ld h, h                                       ; $5E81: $64
    ld e, h                                       ; $5E82: $5C
    ld [rRAMG], sp                                ; $5E83: $08 $00 $00
    inc sp                                        ; $5E86: $33
    ld e, h                                       ; $5E87: $5C
    inc b                                         ; $5E88: $04
    nop                                           ; $5E89: $00
    nop                                           ; $5E8A: $00
    ld [bc], a                                    ; $5E8B: $02
    ld e, h                                       ; $5E8C: $5C
    ld [rRAMG], sp                                ; $5E8D: $08 $00 $00
    pop de                                        ; $5E90: $D1
    ld e, e                                       ; $5E91: $5B
    ld [rRAMG], sp                                ; $5E92: $08 $00 $00
    and b                                         ; $5E95: $A0
    ld e, e                                       ; $5E96: $5B
    ld [rRAMG], sp                                ; $5E97: $08 $00 $00
    ld l, a                                       ; $5E9A: $6F
    ld e, e                                       ; $5E9B: $5B
    nop                                           ; $5E9C: $00
    ld c, h                                       ; $5E9D: $4C
    rst $38                                       ; $5E9E: $FF
    nop                                           ; $5E9F: $00
    nop                                           ; $5EA0: $00
    rst $20                                       ; $5EA1: $E7
    ld e, h                                       ; $5EA2: $5C
    nop                                           ; $5EA3: $00
    ld b, l                                       ; $5EA4: $45
    ld c, $9D                                     ; $5EA5: $0E $9D
    ld e, [hl]                                    ; $5EA7: $5E
    ld c, h                                       ; $5EA8: $4C
    rst $38                                       ; $5EA9: $FF
    nop                                           ; $5EAA: $00
    nop                                           ; $5EAB: $00
    jr jr_00E_5F0B                                ; $5EAC: $18 $5D

    nop                                           ; $5EAE: $00
    ld b, l                                       ; $5EAF: $45
    ld c, $A8                                     ; $5EB0: $0E $A8
    ld e, [hl]                                    ; $5EB2: $5E
    ld c, e                                       ; $5EB3: $4B
    inc bc                                        ; $5EB4: $03
    ld c, $00                                     ; $5EB5: $0E $00
    nop                                           ; $5EB7: $00
    jp z, $0E5E                                   ; $5EB8: $CA $5E $0E

    inc bc                                        ; $5EBB: $03
    nop                                           ; $5EBC: $00
    pop de                                        ; $5EBD: $D1
    ld e, [hl]                                    ; $5EBE: $5E
    ld c, $02                                     ; $5EBF: $0E $02
    nop                                           ; $5EC1: $00
    rst $18                                       ; $5EC2: $DF
    ld e, [hl]                                    ; $5EC3: $5E
    ld c, $01                                     ; $5EC4: $0E $01
    nop                                           ; $5EC6: $00
    ret c                                         ; $5EC7: $D8

    ld e, [hl]                                    ; $5EC8: $5E
    rst $38                                       ; $5EC9: $FF
    inc d                                         ; $5ECA: $14
    ld c, $C9                                     ; $5ECB: $0E $C9
    ld e, l                                       ; $5ECD: $5D
    ld h, d                                       ; $5ECE: $62
    ld bc, $1412                                  ; $5ECF: $01 $12 $14
    ld c, $D3                                     ; $5ED2: $0E $D3
    ld e, l                                       ; $5ED4: $5D
    ld h, d                                       ; $5ED5: $62
    ld bc, $1412                                  ; $5ED6: $01 $12 $14
    ld c, $DD                                     ; $5ED9: $0E $DD
    ld e, l                                       ; $5EDB: $5D
    ld h, d                                       ; $5EDC: $62
    ld bc, $1412                                  ; $5EDD: $01 $12 $14
    ld c, $E7                                     ; $5EE0: $0E $E7
    ld e, l                                       ; $5EE2: $5D
    ld h, d                                       ; $5EE3: $62
    ld bc, $0012                                  ; $5EE4: $01 $12 $00
    nop                                           ; $5EE7: $00
    inc de                                        ; $5EE8: $13
    ld [bc], a                                    ; $5EE9: $02
    nop                                           ; $5EEA: $00
    ld hl, sp+$12                                 ; $5EEB: $F8 $12
    ld [bc], a                                    ; $5EED: $02
    ld hl, sp+$00                                 ; $5EEE: $F8 $00
    add hl, bc                                    ; $5EF0: $09
    inc b                                         ; $5EF1: $04
    ld hl, sp-$08                                 ; $5EF2: $F8 $F8
    ld [$F004], sp                                ; $5EF4: $08 $04 $F0
    nop                                           ; $5EF7: $00
    ld bc, $F004                                  ; $5EF8: $01 $04 $F0
    ld hl, sp+$00                                 ; $5EFB: $F8 $00
    inc b                                         ; $5EFD: $04
    add b                                         ; $5EFE: $80
    nop                                           ; $5EFF: $00
    ld hl, sp+$13                                 ; $5F00: $F8 $13
    ld [hl+], a                                   ; $5F02: $22
    nop                                           ; $5F03: $00
    nop                                           ; $5F04: $00
    ld [de], a                                    ; $5F05: $12
    ld [hl+], a                                   ; $5F06: $22
    ld hl, sp-$08                                 ; $5F07: $F8 $F8
    add hl, bc                                    ; $5F09: $09
    inc h                                         ; $5F0A: $24

jr_00E_5F0B:
    ld hl, sp+$00                                 ; $5F0B: $F8 $00
    ld [$F024], sp                                ; $5F0D: $08 $24 $F0
    ld hl, sp+$01                                 ; $5F10: $F8 $01
    inc h                                         ; $5F12: $24
    ldh a, [rP1]                                  ; $5F13: $F0 $00
    nop                                           ; $5F15: $00
    inc h                                         ; $5F16: $24
    add b                                         ; $5F17: $80
    nop                                           ; $5F18: $00
    cp $16                                        ; $5F19: $FE $16
    ld [bc], a                                    ; $5F1B: $02
    ld hl, sp-$03                                 ; $5F1C: $F8 $FD
    dec c                                         ; $5F1E: $0D
    inc b                                         ; $5F1F: $04
    ldh a, [rP1]                                  ; $5F20: $F0 $00
    rlca                                          ; $5F22: $07
    inc b                                         ; $5F23: $04
    ldh a, [$F8]                                  ; $5F24: $F0 $F8
    ld b, $04                                     ; $5F26: $06 $04
    add b                                         ; $5F28: $80
    nop                                           ; $5F29: $00
    ld a, [$2216]                                 ; $5F2A: $FA $16 $22
    ld hl, sp-$05                                 ; $5F2D: $F8 $FB
    dec c                                         ; $5F2F: $0D
    inc h                                         ; $5F30: $24
    ldh a, [$F8]                                  ; $5F31: $F0 $F8
    rlca                                          ; $5F33: $07
    inc h                                         ; $5F34: $24
    ldh a, [rP1]                                  ; $5F35: $F0 $00
    ld b, $24                                     ; $5F37: $06 $24
    add b                                         ; $5F39: $80
    ld hl, sp+$00                                 ; $5F3A: $F8 $00
    rrca                                          ; $5F3C: $0F
    inc b                                         ; $5F3D: $04
    ld hl, sp-$08                                 ; $5F3E: $F8 $F8
    ld c, $04                                     ; $5F40: $0E $04
    nop                                           ; $5F42: $00
    db $FC                                        ; $5F43: $FC
    rla                                           ; $5F44: $17
    ld [bc], a                                    ; $5F45: $02
    pop af                                        ; $5F46: $F1
    nop                                           ; $5F47: $00
    inc bc                                        ; $5F48: $03
    inc b                                         ; $5F49: $04
    pop af                                        ; $5F4A: $F1
    ld hl, sp+$02                                 ; $5F4B: $F8 $02
    inc b                                         ; $5F4D: $04
    add b                                         ; $5F4E: $80
    nop                                           ; $5F4F: $00
    nop                                           ; $5F50: $00
    inc d                                         ; $5F51: $14
    ld [hl+], a                                   ; $5F52: $22
    nop                                           ; $5F53: $00
    ld hl, sp+$14                                 ; $5F54: $F8 $14
    ld [bc], a                                    ; $5F56: $02
    ld hl, sp+$00                                 ; $5F57: $F8 $00
    ld a, [bc]                                    ; $5F59: $0A
    inc h                                         ; $5F5A: $24
    ld hl, sp-$08                                 ; $5F5B: $F8 $F8
    ld a, [bc]                                    ; $5F5D: $0A
    inc b                                         ; $5F5E: $04
    ldh a, [rP1]                                  ; $5F5F: $F0 $00
    inc bc                                        ; $5F61: $03
    inc b                                         ; $5F62: $04
    ldh a, [$F8]                                  ; $5F63: $F0 $F8
    ld [bc], a                                    ; $5F65: $02
    inc b                                         ; $5F66: $04
    add b                                         ; $5F67: $80
    ld hl, sp-$08                                 ; $5F68: $F8 $F8
    rrca                                          ; $5F6A: $0F
    inc h                                         ; $5F6B: $24
    ld hl, sp+$00                                 ; $5F6C: $F8 $00
    ld c, $24                                     ; $5F6E: $0E $24
    nop                                           ; $5F70: $00
    db $FC                                        ; $5F71: $FC
    rla                                           ; $5F72: $17
    ld [hl+], a                                   ; $5F73: $22
    pop af                                        ; $5F74: $F1
    nop                                           ; $5F75: $00
    inc bc                                        ; $5F76: $03
    inc b                                         ; $5F77: $04
    pop af                                        ; $5F78: $F1
    ld hl, sp+$02                                 ; $5F79: $F8 $02
    inc b                                         ; $5F7B: $04
    add b                                         ; $5F7C: $80
    pop af                                        ; $5F7D: $F1
    nop                                           ; $5F7E: $00
    dec b                                         ; $5F7F: $05
    inc b                                         ; $5F80: $04
    pop af                                        ; $5F81: $F1
    ld hl, sp+$04                                 ; $5F82: $F8 $04
    inc b                                         ; $5F84: $04
    nop                                           ; $5F85: $00
    db $FC                                        ; $5F86: $FC
    jr jr_00E_5F8B                                ; $5F87: $18 $02

    ld hl, sp+$00                                 ; $5F89: $F8 $00

jr_00E_5F8B:
    ld de, $F804                                  ; $5F8B: $11 $04 $F8
    ld hl, sp+$10                                 ; $5F8E: $F8 $10
    inc b                                         ; $5F90: $04
    add b                                         ; $5F91: $80
    nop                                           ; $5F92: $00
    ld hl, sp+$15                                 ; $5F93: $F8 $15
    ld [hl+], a                                   ; $5F95: $22
    nop                                           ; $5F96: $00
    nop                                           ; $5F97: $00
    dec d                                         ; $5F98: $15
    ld [bc], a                                    ; $5F99: $02
    ld hl, sp+$00                                 ; $5F9A: $F8 $00
    inc c                                         ; $5F9C: $0C
    inc b                                         ; $5F9D: $04
    ld hl, sp-$08                                 ; $5F9E: $F8 $F8
    dec bc                                        ; $5FA0: $0B
    inc b                                         ; $5FA1: $04
    ldh a, [rP1]                                  ; $5FA2: $F0 $00
    dec b                                         ; $5FA4: $05
    inc b                                         ; $5FA5: $04
    ldh a, [$F8]                                  ; $5FA6: $F0 $F8
    inc b                                         ; $5FA8: $04
    inc b                                         ; $5FA9: $04
    add b                                         ; $5FAA: $80
    nop                                           ; $5FAB: $00
    db $FC                                        ; $5FAC: $FC
    jr jr_00E_5FD1                                ; $5FAD: $18 $22

    ld hl, sp-$08                                 ; $5FAF: $F8 $F8
    ld de, $F824                                  ; $5FB1: $11 $24 $F8
    nop                                           ; $5FB4: $00
    db $10                                        ; $5FB5: $10
    inc h                                         ; $5FB6: $24
    pop af                                        ; $5FB7: $F1
    nop                                           ; $5FB8: $00
    dec b                                         ; $5FB9: $05
    inc b                                         ; $5FBA: $04
    pop af                                        ; $5FBB: $F1
    ld hl, sp+$04                                 ; $5FBC: $F8 $04
    inc b                                         ; $5FBE: $04
    add b                                         ; $5FBF: $80
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    rra                                           ; $5FC2: $1F
    ld [bc], a                                    ; $5FC3: $02
    nop                                           ; $5FC4: $00
    ld hl, sp+$1E                                 ; $5FC5: $F8 $1E
    ld [bc], a                                    ; $5FC7: $02
    ld hl, sp-$04                                 ; $5FC8: $F8 $FC
    dec de                                        ; $5FCA: $1B
    inc b                                         ; $5FCB: $04
    pop af                                        ; $5FCC: $F1
    nop                                           ; $5FCD: $00
    ld a, [de]                                    ; $5FCE: $1A
    inc b                                         ; $5FCF: $04
    pop af                                        ; $5FD0: $F1

jr_00E_5FD1:
    ld hl, sp+$19                                 ; $5FD1: $F8 $19
    inc b                                         ; $5FD3: $04
    add b                                         ; $5FD4: $80
    nop                                           ; $5FD5: $00
    nop                                           ; $5FD6: $00
    ld hl, $0002                                  ; $5FD7: $21 $02 $00
    ld hl, sp+$20                                 ; $5FDA: $F8 $20
    ld [bc], a                                    ; $5FDC: $02
    ld hl, sp-$03                                 ; $5FDD: $F8 $FD
    inc e                                         ; $5FDF: $1C
    inc b                                         ; $5FE0: $04
    ldh a, [rP1]                                  ; $5FE1: $F0 $00
    ld a, [de]                                    ; $5FE3: $1A
    inc b                                         ; $5FE4: $04
    ldh a, [$F8]                                  ; $5FE5: $F0 $F8
    add hl, de                                    ; $5FE7: $19
    inc b                                         ; $5FE8: $04
    add b                                         ; $5FE9: $80
    nop                                           ; $5FEA: $00
    nop                                           ; $5FEB: $00
    rra                                           ; $5FEC: $1F
    ld [bc], a                                    ; $5FED: $02
    nop                                           ; $5FEE: $00
    ld hl, sp+$1E                                 ; $5FEF: $F8 $1E
    ld [bc], a                                    ; $5FF1: $02
    ld hl, sp-$04                                 ; $5FF2: $F8 $FC
    dec e                                         ; $5FF4: $1D
    inc b                                         ; $5FF5: $04
    pop af                                        ; $5FF6: $F1
    nop                                           ; $5FF7: $00
    ld a, [de]                                    ; $5FF8: $1A
    inc b                                         ; $5FF9: $04
    pop af                                        ; $5FFA: $F1
    ld hl, sp+$19                                 ; $5FFB: $F8 $19
    inc b                                         ; $5FFD: $04
    add b                                         ; $5FFE: $80
    nop                                           ; $5FFF: $00
    ld hl, sp+$1F                                 ; $6000: $F8 $1F
    ld [hl+], a                                   ; $6002: $22
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    ld e, $22                                     ; $6005: $1E $22
    ld hl, sp-$04                                 ; $6007: $F8 $FC
    dec de                                        ; $6009: $1B
    inc h                                         ; $600A: $24
    pop af                                        ; $600B: $F1
    ld hl, sp+$1A                                 ; $600C: $F8 $1A
    inc h                                         ; $600E: $24
    pop af                                        ; $600F: $F1
    nop                                           ; $6010: $00
    add hl, de                                    ; $6011: $19
    inc h                                         ; $6012: $24
    add b                                         ; $6013: $80
    nop                                           ; $6014: $00
    ld hl, sp+$21                                 ; $6015: $F8 $21
    ld [hl+], a                                   ; $6017: $22
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    jr nz, jr_00E_603E                            ; $601A: $20 $22

    ld hl, sp-$05                                 ; $601C: $F8 $FB
    inc e                                         ; $601E: $1C
    inc h                                         ; $601F: $24
    ldh a, [$F8]                                  ; $6020: $F0 $F8
    ld a, [de]                                    ; $6022: $1A
    inc h                                         ; $6023: $24
    ldh a, [rP1]                                  ; $6024: $F0 $00
    add hl, de                                    ; $6026: $19
    inc h                                         ; $6027: $24
    add b                                         ; $6028: $80
    nop                                           ; $6029: $00
    ld hl, sp+$1F                                 ; $602A: $F8 $1F
    ld [hl+], a                                   ; $602C: $22
    nop                                           ; $602D: $00
    nop                                           ; $602E: $00
    ld e, $22                                     ; $602F: $1E $22
    ld hl, sp-$04                                 ; $6031: $F8 $FC
    dec e                                         ; $6033: $1D
    inc h                                         ; $6034: $24
    pop af                                        ; $6035: $F1
    ld hl, sp+$1A                                 ; $6036: $F8 $1A
    inc h                                         ; $6038: $24
    pop af                                        ; $6039: $F1
    nop                                           ; $603A: $00
    add hl, de                                    ; $603B: $19
    inc h                                         ; $603C: $24
    add b                                         ; $603D: $80

jr_00E_603E:
    ld hl, sp+$00                                 ; $603E: $F8 $00
    ld a, [bc]                                    ; $6040: $0A
    inc h                                         ; $6041: $24
    ld hl, sp-$08                                 ; $6042: $F8 $F8
    ld a, [bc]                                    ; $6044: $0A
    inc b                                         ; $6045: $04
    ldh a, [rP1]                                  ; $6046: $F0 $00
    inc bc                                        ; $6048: $03
    inc b                                         ; $6049: $04
    ldh a, [$F8]                                  ; $604A: $F0 $F8
    ld [bc], a                                    ; $604C: $02
    inc b                                         ; $604D: $04
    add b                                         ; $604E: $80
    ld c, l                                       ; $604F: $4D
    ld [$0008], sp                                ; $6050: $08 $08 $00
    rst $38                                       ; $6053: $FF
    ld a, l                                       ; $6054: $7D
    ld e, a                                       ; $6055: $5F
    sub d                                         ; $6056: $92
    ld e, a                                       ; $6057: $5F
    xor e                                         ; $6058: $AB
    ld e, a                                       ; $6059: $5F
    sub d                                         ; $605A: $92
    ld e, a                                       ; $605B: $5F
    ld b, [hl]                                    ; $605C: $46
    ld c, a                                       ; $605D: $4F
    ld h, b                                       ; $605E: $60
    ld c, l                                       ; $605F: $4D
    ld [$0008], sp                                ; $6060: $08 $08 $00
    ld bc, $5F3A                                  ; $6063: $01 $3A $5F
    ld c, a                                       ; $6066: $4F
    ld e, a                                       ; $6067: $5F
    ld l, b                                       ; $6068: $68
    ld e, a                                       ; $6069: $5F
    ld c, a                                       ; $606A: $4F
    ld e, a                                       ; $606B: $5F
    ld b, [hl]                                    ; $606C: $46
    ld e, a                                       ; $606D: $5F
    ld h, b                                       ; $606E: $60
    ld c, l                                       ; $606F: $4D
    ld [$FF08], sp                                ; $6070: $08 $08 $FF
    nop                                           ; $6073: $00
    rst $38                                       ; $6074: $FF
    ld e, a                                       ; $6075: $5F
    inc d                                         ; $6076: $14
    ld h, b                                       ; $6077: $60
    add hl, hl                                    ; $6078: $29
    ld h, b                                       ; $6079: $60
    inc d                                         ; $607A: $14
    ld h, b                                       ; $607B: $60
    ld b, [hl]                                    ; $607C: $46
    ld l, a                                       ; $607D: $6F
    ld h, b                                       ; $607E: $60
    ld c, l                                       ; $607F: $4D
    ld [$0108], sp                                ; $6080: $08 $08 $01
    nop                                           ; $6083: $00
    ret nz                                        ; $6084: $C0

    ld e, a                                       ; $6085: $5F
    push de                                       ; $6086: $D5
    ld e, a                                       ; $6087: $5F
    ld [$D55F], a                                 ; $6088: $EA $5F $D5
    ld e, a                                       ; $608B: $5F
    ld b, [hl]                                    ; $608C: $46
    ld a, a                                       ; $608D: $7F
    ld h, b                                       ; $608E: $60
    ld c, l                                       ; $608F: $4D
    ld [$0008], sp                                ; $6090: $08 $08 $00
    cp $7D                                        ; $6093: $FE $7D
    ld e, a                                       ; $6095: $5F
    sub d                                         ; $6096: $92
    ld e, a                                       ; $6097: $5F
    xor e                                         ; $6098: $AB
    ld e, a                                       ; $6099: $5F
    sub d                                         ; $609A: $92
    ld e, a                                       ; $609B: $5F
    ld b, [hl]                                    ; $609C: $46
    adc a                                         ; $609D: $8F
    ld h, b                                       ; $609E: $60
    ld c, l                                       ; $609F: $4D
    ld [$0008], sp                                ; $60A0: $08 $08 $00
    ld [bc], a                                    ; $60A3: $02
    ld a, [hl-]                                   ; $60A4: $3A
    ld e, a                                       ; $60A5: $5F
    ld c, a                                       ; $60A6: $4F
    ld e, a                                       ; $60A7: $5F
    ld l, b                                       ; $60A8: $68
    ld e, a                                       ; $60A9: $5F
    ld c, a                                       ; $60AA: $4F
    ld e, a                                       ; $60AB: $5F
    ld b, [hl]                                    ; $60AC: $46
    sbc a                                         ; $60AD: $9F
    ld h, b                                       ; $60AE: $60
    ld c, l                                       ; $60AF: $4D
    ld [$FE08], sp                                ; $60B0: $08 $08 $FE
    nop                                           ; $60B3: $00
    rst $38                                       ; $60B4: $FF
    ld e, a                                       ; $60B5: $5F
    inc d                                         ; $60B6: $14
    ld h, b                                       ; $60B7: $60
    add hl, hl                                    ; $60B8: $29
    ld h, b                                       ; $60B9: $60
    inc d                                         ; $60BA: $14
    ld h, b                                       ; $60BB: $60
    ld b, [hl]                                    ; $60BC: $46
    xor a                                         ; $60BD: $AF
    ld h, b                                       ; $60BE: $60
    ld c, l                                       ; $60BF: $4D
    ld [$0208], sp                                ; $60C0: $08 $08 $02
    nop                                           ; $60C3: $00
    ret nz                                        ; $60C4: $C0

    ld e, a                                       ; $60C5: $5F
    push de                                       ; $60C6: $D5
    ld e, a                                       ; $60C7: $5F
    ld [$D55F], a                                 ; $60C8: $EA $5F $D5
    ld e, a                                       ; $60CB: $5F
    ld b, [hl]                                    ; $60CC: $46
    cp a                                          ; $60CD: $BF
    ld h, b                                       ; $60CE: $60
    ld c, h                                       ; $60CF: $4C
    rst $38                                       ; $60D0: $FF
    nop                                           ; $60D1: $00
    nop                                           ; $60D2: $00
    sub d                                         ; $60D3: $92
    ld e, a                                       ; $60D4: $5F
    nop                                           ; $60D5: $00
    ld b, [hl]                                    ; $60D6: $46
    rst $08                                       ; $60D7: $CF
    ld h, b                                       ; $60D8: $60
    ld c, h                                       ; $60D9: $4C
    rst $38                                       ; $60DA: $FF
    nop                                           ; $60DB: $00
    nop                                           ; $60DC: $00
    ld c, a                                       ; $60DD: $4F
    ld e, a                                       ; $60DE: $5F
    nop                                           ; $60DF: $00
    ld b, [hl]                                    ; $60E0: $46
    reti                                          ; $60E1: $D9


    ld h, b                                       ; $60E2: $60
    ld c, h                                       ; $60E3: $4C
    rst $38                                       ; $60E4: $FF
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    inc d                                         ; $60E7: $14
    ld h, b                                       ; $60E8: $60
    nop                                           ; $60E9: $00
    ld b, [hl]                                    ; $60EA: $46
    db $E3                                        ; $60EB: $E3
    ld h, b                                       ; $60EC: $60
    ld c, h                                       ; $60ED: $4C
    rst $38                                       ; $60EE: $FF
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    push de                                       ; $60F1: $D5
    ld e, a                                       ; $60F2: $5F
    nop                                           ; $60F3: $00
    ld b, [hl]                                    ; $60F4: $46
    db $ED                                        ; $60F5: $ED
    ld h, b                                       ; $60F6: $60
    ld c, h                                       ; $60F7: $4C
    rst $38                                       ; $60F8: $FF
    nop                                           ; $60F9: $00
    nop                                           ; $60FA: $00
    add hl, hl                                    ; $60FB: $29
    ld e, a                                       ; $60FC: $5F
    nop                                           ; $60FD: $00
    ld b, [hl]                                    ; $60FE: $46
    rst $30                                       ; $60FF: $F7
    ld h, b                                       ; $6100: $60
    ld c, h                                       ; $6101: $4C
    rst $38                                       ; $6102: $FF
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00
    jr @+$61                                      ; $6105: $18 $5F

    nop                                           ; $6107: $00
    ld b, [hl]                                    ; $6108: $46
    ld bc, $4C61                                  ; $6109: $01 $61 $4C
    rst $38                                       ; $610C: $FF
    nop                                           ; $610D: $00
    nop                                           ; $610E: $00
    rst $38                                       ; $610F: $FF
    ld e, [hl]                                    ; $6110: $5E
    nop                                           ; $6111: $00
    ld b, [hl]                                    ; $6112: $46
    dec bc                                        ; $6113: $0B
    ld h, c                                       ; $6114: $61
    ld c, h                                       ; $6115: $4C
    rst $38                                       ; $6116: $FF
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    and $5E                                       ; $6119: $E6 $5E
    nop                                           ; $611B: $00
    ld b, [hl]                                    ; $611C: $46
    dec d                                         ; $611D: $15
    ld h, c                                       ; $611E: $61
    ld c, h                                       ; $611F: $4C
    rst $38                                       ; $6120: $FF
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    ld a, $60                                     ; $6123: $3E $60
    nop                                           ; $6125: $00
    ld b, [hl]                                    ; $6126: $46
    rra                                           ; $6127: $1F
    ld h, c                                       ; $6128: $61
    ld c, e                                       ; $6129: $4B
    inc bc                                        ; $612A: $03
    ld c, $00                                     ; $612B: $0E $00
    nop                                           ; $612D: $00
    ld b, b                                       ; $612E: $40
    ld h, c                                       ; $612F: $61
    ld c, $03                                     ; $6130: $0E $03
    nop                                           ; $6132: $00
    ld b, a                                       ; $6133: $47
    ld h, c                                       ; $6134: $61
    ld c, $02                                     ; $6135: $0E $02
    nop                                           ; $6137: $00
    ld d, l                                       ; $6138: $55
    ld h, c                                       ; $6139: $61
    ld c, $01                                     ; $613A: $0E $01
    nop                                           ; $613C: $00
    ld c, [hl]                                    ; $613D: $4E
    ld h, c                                       ; $613E: $61
    rst $38                                       ; $613F: $FF
    inc d                                         ; $6140: $14
    ld c, $CF                                     ; $6141: $0E $CF
    ld h, b                                       ; $6143: $60
    ld h, d                                       ; $6144: $62
    ld bc, $1412                                  ; $6145: $01 $12 $14
    ld c, $D9                                     ; $6148: $0E $D9
    ld h, b                                       ; $614A: $60
    ld h, d                                       ; $614B: $62
    ld bc, $1412                                  ; $614C: $01 $12 $14
    ld c, $E3                                     ; $614F: $0E $E3
    ld h, b                                       ; $6151: $60
    ld h, d                                       ; $6152: $62
    ld bc, $1412                                  ; $6153: $01 $12 $14
    ld c, $ED                                     ; $6156: $0E $ED
    ld h, b                                       ; $6158: $60
    ld h, d                                       ; $6159: $62
    ld bc, $F012                                  ; $615A: $01 $12 $F0
    ld hl, sp+$00                                 ; $615D: $F8 $00
    ld b, $F0                                     ; $615F: $06 $F0
    nop                                           ; $6161: $00
    ld bc, $F806                                  ; $6162: $01 $06 $F8
    ld hl, sp+$08                                 ; $6165: $F8 $08
    ld b, $F8                                     ; $6167: $06 $F8
    nop                                           ; $6169: $00
    add hl, bc                                    ; $616A: $09
    ld b, $00                                     ; $616B: $06 $00
    ld hl, sp+$13                                 ; $616D: $F8 $13
    ld [bc], a                                    ; $616F: $02
    nop                                           ; $6170: $00
    nop                                           ; $6171: $00
    inc d                                         ; $6172: $14
    ld [bc], a                                    ; $6173: $02
    add b                                         ; $6174: $80
    ldh a, [rP1]                                  ; $6175: $F0 $00
    nop                                           ; $6177: $00
    ld h, $F0                                     ; $6178: $26 $F0
    ld hl, sp+$01                                 ; $617A: $F8 $01
    ld h, $F8                                     ; $617C: $26 $F8
    nop                                           ; $617E: $00
    ld [$F826], sp                                ; $617F: $08 $26 $F8
    ld hl, sp+$09                                 ; $6182: $F8 $09
    ld h, $00                                     ; $6184: $26 $00
    nop                                           ; $6186: $00
    inc de                                        ; $6187: $13
    ld [hl+], a                                   ; $6188: $22
    nop                                           ; $6189: $00
    ld hl, sp+$14                                 ; $618A: $F8 $14
    ld [hl+], a                                   ; $618C: $22
    add b                                         ; $618D: $80
    ldh a, [$F8]                                  ; $618E: $F0 $F8
    ld b, $06                                     ; $6190: $06 $06
    ldh a, [rP1]                                  ; $6192: $F0 $00
    rlca                                          ; $6194: $07
    ld b, $F8                                     ; $6195: $06 $F8
    ld hl, sp+$0D                                 ; $6197: $F8 $0D
    ld b, $F8                                     ; $6199: $06 $F8
    nop                                           ; $619B: $00
    ld c, $06                                     ; $619C: $0E $06
    nop                                           ; $619E: $00
    ld hl, sp+$17                                 ; $619F: $F8 $17
    ld [bc], a                                    ; $61A1: $02
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    jr @+$04                                      ; $61A4: $18 $02

    add b                                         ; $61A6: $80
    ldh a, [rP1]                                  ; $61A7: $F0 $00
    ld b, $26                                     ; $61A9: $06 $26
    ldh a, [$F8]                                  ; $61AB: $F0 $F8
    rlca                                          ; $61AD: $07
    ld h, $F8                                     ; $61AE: $26 $F8
    nop                                           ; $61B0: $00
    dec c                                         ; $61B1: $0D
    ld h, $F8                                     ; $61B2: $26 $F8
    ld hl, sp+$0E                                 ; $61B4: $F8 $0E
    ld h, $00                                     ; $61B6: $26 $00
    nop                                           ; $61B8: $00
    rla                                           ; $61B9: $17
    ld [hl+], a                                   ; $61BA: $22
    nop                                           ; $61BB: $00
    ld hl, sp+$18                                 ; $61BC: $F8 $18
    ld [hl+], a                                   ; $61BE: $22
    add b                                         ; $61BF: $80
    pop af                                        ; $61C0: $F1
    ld hl, sp+$02                                 ; $61C1: $F8 $02
    ld b, $F1                                     ; $61C3: $06 $F1
    nop                                           ; $61C5: $00
    inc bc                                        ; $61C6: $03
    ld b, $F8                                     ; $61C7: $06 $F8
    ld hl, sp+$0F                                 ; $61C9: $F8 $0F
    ld b, $F8                                     ; $61CB: $06 $F8
    nop                                           ; $61CD: $00
    db $10                                        ; $61CE: $10
    ld b, $00                                     ; $61CF: $06 $00
    ld hl, sp+$19                                 ; $61D1: $F8 $19
    ld [bc], a                                    ; $61D3: $02
    nop                                           ; $61D4: $00
    nop                                           ; $61D5: $00
    ld a, [de]                                    ; $61D6: $1A
    ld [bc], a                                    ; $61D7: $02
    add b                                         ; $61D8: $80
    ldh a, [$F8]                                  ; $61D9: $F0 $F8
    ld [bc], a                                    ; $61DB: $02
    ld b, $F0                                     ; $61DC: $06 $F0
    nop                                           ; $61DE: $00
    inc bc                                        ; $61DF: $03
    ld b, $F8                                     ; $61E0: $06 $F8
    ld hl, sp+$0A                                 ; $61E2: $F8 $0A
    ld b, $F8                                     ; $61E4: $06 $F8
    nop                                           ; $61E6: $00
    ld a, [bc]                                    ; $61E7: $0A
    ld h, $00                                     ; $61E8: $26 $00
    ld hl, sp+$15                                 ; $61EA: $F8 $15
    ld [hl+], a                                   ; $61EC: $22
    nop                                           ; $61ED: $00
    nop                                           ; $61EE: $00
    dec d                                         ; $61EF: $15
    ld [bc], a                                    ; $61F0: $02
    add b                                         ; $61F1: $80
    pop af                                        ; $61F2: $F1
    ld hl, sp+$02                                 ; $61F3: $F8 $02
    ld b, $F1                                     ; $61F5: $06 $F1
    nop                                           ; $61F7: $00
    inc bc                                        ; $61F8: $03
    ld b, $F8                                     ; $61F9: $06 $F8
    nop                                           ; $61FB: $00
    rrca                                          ; $61FC: $0F
    ld h, $F8                                     ; $61FD: $26 $F8
    ld hl, sp+$10                                 ; $61FF: $F8 $10
    ld h, $00                                     ; $6201: $26 $00
    nop                                           ; $6203: $00
    add hl, de                                    ; $6204: $19
    ld [hl+], a                                   ; $6205: $22
    nop                                           ; $6206: $00
    ld hl, sp+$1A                                 ; $6207: $F8 $1A
    ld [hl+], a                                   ; $6209: $22
    add b                                         ; $620A: $80
    pop af                                        ; $620B: $F1
    ld hl, sp+$04                                 ; $620C: $F8 $04
    ld b, $F1                                     ; $620E: $06 $F1
    nop                                           ; $6210: $00
    dec b                                         ; $6211: $05
    ld b, $F8                                     ; $6212: $06 $F8
    ld hl, sp+$11                                 ; $6214: $F8 $11
    ld b, $F8                                     ; $6216: $06 $F8
    nop                                           ; $6218: $00
    ld [de], a                                    ; $6219: $12
    ld b, $00                                     ; $621A: $06 $00
    ld hl, sp+$1B                                 ; $621C: $F8 $1B
    ld [bc], a                                    ; $621E: $02
    nop                                           ; $621F: $00
    nop                                           ; $6220: $00
    inc e                                         ; $6221: $1C
    ld [bc], a                                    ; $6222: $02
    add b                                         ; $6223: $80
    ldh a, [$F8]                                  ; $6224: $F0 $F8
    inc b                                         ; $6226: $04
    ld b, $F0                                     ; $6227: $06 $F0
    nop                                           ; $6229: $00
    dec b                                         ; $622A: $05
    ld b, $F8                                     ; $622B: $06 $F8
    ld hl, sp+$0B                                 ; $622D: $F8 $0B
    ld b, $F8                                     ; $622F: $06 $F8
    nop                                           ; $6231: $00
    inc c                                         ; $6232: $0C
    ld b, $00                                     ; $6233: $06 $00
    nop                                           ; $6235: $00
    ld d, $02                                     ; $6236: $16 $02
    nop                                           ; $6238: $00
    ld sp, hl                                     ; $6239: $F9
    ld d, $22                                     ; $623A: $16 $22
    add b                                         ; $623C: $80
    pop af                                        ; $623D: $F1
    ld hl, sp+$04                                 ; $623E: $F8 $04
    ld b, $F1                                     ; $6240: $06 $F1
    nop                                           ; $6242: $00
    dec b                                         ; $6243: $05
    ld b, $00                                     ; $6244: $06 $00
    ld bc, $221B                                  ; $6246: $01 $1B $22
    nop                                           ; $6249: $00
    ld sp, hl                                     ; $624A: $F9
    inc e                                         ; $624B: $1C
    ld [hl+], a                                   ; $624C: $22
    ld hl, sp-$08                                 ; $624D: $F8 $F8
    inc [hl]                                      ; $624F: $34
    ld b, $F8                                     ; $6250: $06 $F8
    nop                                           ; $6252: $00
    dec [hl]                                      ; $6253: $35
    ld b, $80                                     ; $6254: $06 $80
    pop af                                        ; $6256: $F1
    ld hl, sp+$1D                                 ; $6257: $F8 $1D
    ld b, $F1                                     ; $6259: $06 $F1
    nop                                           ; $625B: $00
    ld e, $06                                     ; $625C: $1E $06
    ld hl, sp-$08                                 ; $625E: $F8 $F8
    rra                                           ; $6260: $1F
    ld b, $F8                                     ; $6261: $06 $F8
    nop                                           ; $6263: $00
    jr nz, jr_00E_626C                            ; $6264: $20 $06

    nop                                           ; $6266: $00
    ld hl, sp+$25                                 ; $6267: $F8 $25
    ld [bc], a                                    ; $6269: $02
    nop                                           ; $626A: $00
    nop                                           ; $626B: $00

jr_00E_626C:
    ld h, $02                                     ; $626C: $26 $02
    add b                                         ; $626E: $80
    ldh a, [$F8]                                  ; $626F: $F0 $F8
    dec e                                         ; $6271: $1D
    ld b, $F0                                     ; $6272: $06 $F0
    nop                                           ; $6274: $00
    ld e, $06                                     ; $6275: $1E $06
    ld hl, sp-$08                                 ; $6277: $F8 $F8
    ld hl, $F806                                  ; $6279: $21 $06 $F8
    nop                                           ; $627C: $00
    ld [hl+], a                                   ; $627D: $22
    ld b, $00                                     ; $627E: $06 $00
    ld hl, sp+$27                                 ; $6280: $F8 $27
    ld [bc], a                                    ; $6282: $02
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    jr z, jr_00E_6289                             ; $6285: $28 $02

    add b                                         ; $6287: $80
    pop af                                        ; $6288: $F1

jr_00E_6289:
    ld hl, sp+$1D                                 ; $6289: $F8 $1D
    ld b, $F1                                     ; $628B: $06 $F1
    nop                                           ; $628D: $00
    ld e, $06                                     ; $628E: $1E $06
    ld hl, sp-$08                                 ; $6290: $F8 $F8
    inc hl                                        ; $6292: $23
    ld b, $F8                                     ; $6293: $06 $F8
    nop                                           ; $6295: $00
    inc h                                         ; $6296: $24
    ld b, $00                                     ; $6297: $06 $00
    ld hl, sp+$29                                 ; $6299: $F8 $29
    ld [bc], a                                    ; $629B: $02
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    ld a, [hl+]                                   ; $629E: $2A
    ld [bc], a                                    ; $629F: $02
    add b                                         ; $62A0: $80
    pop af                                        ; $62A1: $F1
    nop                                           ; $62A2: $00
    dec e                                         ; $62A3: $1D
    ld h, $F1                                     ; $62A4: $26 $F1
    ld hl, sp+$1E                                 ; $62A6: $F8 $1E
    ld h, $F8                                     ; $62A8: $26 $F8
    nop                                           ; $62AA: $00
    rra                                           ; $62AB: $1F
    ld h, $F8                                     ; $62AC: $26 $F8
    ld hl, sp+$20                                 ; $62AE: $F8 $20
    ld h, $00                                     ; $62B0: $26 $00
    nop                                           ; $62B2: $00
    dec h                                         ; $62B3: $25
    ld [hl+], a                                   ; $62B4: $22
    nop                                           ; $62B5: $00
    ld hl, sp+$26                                 ; $62B6: $F8 $26
    ld [hl+], a                                   ; $62B8: $22
    add b                                         ; $62B9: $80
    ldh a, [rP1]                                  ; $62BA: $F0 $00
    dec e                                         ; $62BC: $1D
    ld h, $F0                                     ; $62BD: $26 $F0
    ld hl, sp+$1E                                 ; $62BF: $F8 $1E
    ld h, $F8                                     ; $62C1: $26 $F8
    nop                                           ; $62C3: $00
    ld hl, $F826                                  ; $62C4: $21 $26 $F8
    ld hl, sp+$22                                 ; $62C7: $F8 $22
    ld h, $00                                     ; $62C9: $26 $00
    nop                                           ; $62CB: $00
    daa                                           ; $62CC: $27
    ld [hl+], a                                   ; $62CD: $22
    nop                                           ; $62CE: $00
    ld hl, sp+$28                                 ; $62CF: $F8 $28
    ld [hl+], a                                   ; $62D1: $22
    add b                                         ; $62D2: $80
    pop af                                        ; $62D3: $F1
    nop                                           ; $62D4: $00
    dec e                                         ; $62D5: $1D
    ld h, $F1                                     ; $62D6: $26 $F1
    ld hl, sp+$1E                                 ; $62D8: $F8 $1E
    ld h, $F8                                     ; $62DA: $26 $F8
    nop                                           ; $62DC: $00
    inc hl                                        ; $62DD: $23
    ld h, $F8                                     ; $62DE: $26 $F8
    ld hl, sp+$24                                 ; $62E0: $F8 $24
    ld h, $00                                     ; $62E2: $26 $00
    nop                                           ; $62E4: $00
    add hl, hl                                    ; $62E5: $29
    ld [hl+], a                                   ; $62E6: $22
    nop                                           ; $62E7: $00
    ld hl, sp+$2A                                 ; $62E8: $F8 $2A
    ld [hl+], a                                   ; $62EA: $22
    add b                                         ; $62EB: $80
    ldh a, [$F8]                                  ; $62EC: $F0 $F8
    dec hl                                        ; $62EE: $2B
    ld b, $F0                                     ; $62EF: $06 $F0
    nop                                           ; $62F1: $00
    inc l                                         ; $62F2: $2C
    ld b, $F8                                     ; $62F3: $06 $F8
    ld hl, sp+$2D                                 ; $62F5: $F8 $2D
    ld b, $F8                                     ; $62F7: $06 $F8
    nop                                           ; $62F9: $00
    ld l, $06                                     ; $62FA: $2E $06
    nop                                           ; $62FC: $00
    ld hl, sp+$13                                 ; $62FD: $F8 $13
    ld [bc], a                                    ; $62FF: $02
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    inc d                                         ; $6302: $14
    ld [bc], a                                    ; $6303: $02
    add b                                         ; $6304: $80
    ldh a, [rP1]                                  ; $6305: $F0 $00
    dec hl                                        ; $6307: $2B
    ld h, $F0                                     ; $6308: $26 $F0
    ld hl, sp+$2C                                 ; $630A: $F8 $2C
    ld h, $F8                                     ; $630C: $26 $F8
    nop                                           ; $630E: $00
    dec l                                         ; $630F: $2D
    ld h, $F8                                     ; $6310: $26 $F8
    ld hl, sp+$2E                                 ; $6312: $F8 $2E
    ld h, $00                                     ; $6314: $26 $00
    nop                                           ; $6316: $00
    inc de                                        ; $6317: $13
    ld [hl+], a                                   ; $6318: $22
    nop                                           ; $6319: $00
    ld hl, sp+$14                                 ; $631A: $F8 $14
    ld [hl+], a                                   ; $631C: $22
    add b                                         ; $631D: $80
    ldh a, [$F8]                                  ; $631E: $F0 $F8
    cpl                                           ; $6320: $2F
    ld b, $F0                                     ; $6321: $06 $F0
    nop                                           ; $6323: $00
    jr nc, jr_00E_632C                            ; $6324: $30 $06

    ld hl, sp-$08                                 ; $6326: $F8 $F8
    ld sp, $F806                                  ; $6328: $31 $06 $F8
    nop                                           ; $632B: $00

jr_00E_632C:
    ld [hl-], a                                   ; $632C: $32
    ld b, $00                                     ; $632D: $06 $00
    nop                                           ; $632F: $00
    inc sp                                        ; $6330: $33
    ld [bc], a                                    ; $6331: $02
    nop                                           ; $6332: $00
    ld hl, sp+$17                                 ; $6333: $F8 $17
    ld [bc], a                                    ; $6335: $02
    add b                                         ; $6336: $80
    ldh a, [rP1]                                  ; $6337: $F0 $00
    cpl                                           ; $6339: $2F
    ld h, $F0                                     ; $633A: $26 $F0
    ld hl, sp+$30                                 ; $633C: $F8 $30
    ld h, $F8                                     ; $633E: $26 $F8
    nop                                           ; $6340: $00
    ld sp, $F826                                  ; $6341: $31 $26 $F8
    ld hl, sp+$32                                 ; $6344: $F8 $32
    ld h, $00                                     ; $6346: $26 $00
    ld hl, sp+$33                                 ; $6348: $F8 $33
    ld [hl+], a                                   ; $634A: $22
    nop                                           ; $634B: $00
    nop                                           ; $634C: $00
    rla                                           ; $634D: $17
    ld [hl+], a                                   ; $634E: $22
    add b                                         ; $634F: $80
    ld c, l                                       ; $6350: $4D
    ld [$0008], sp                                ; $6351: $08 $08 $00
    rst $38                                       ; $6354: $FF
    dec bc                                        ; $6355: $0B
    ld h, d                                       ; $6356: $62
    inc h                                         ; $6357: $24
    ld h, d                                       ; $6358: $62
    dec a                                         ; $6359: $3D
    ld h, d                                       ; $635A: $62
    inc h                                         ; $635B: $24
    ld h, d                                       ; $635C: $62
    ld b, [hl]                                    ; $635D: $46
    ld d, b                                       ; $635E: $50
    ld h, e                                       ; $635F: $63
    ld c, l                                       ; $6360: $4D
    ld [$0008], sp                                ; $6361: $08 $08 $00
    ld bc, $61C0                                  ; $6364: $01 $C0 $61
    reti                                          ; $6367: $D9


    ld h, c                                       ; $6368: $61
    ld a, [c]                                     ; $6369: $F2
    ld h, c                                       ; $636A: $61
    reti                                          ; $636B: $D9


    ld h, c                                       ; $636C: $61
    ld b, [hl]                                    ; $636D: $46
    ld h, b                                       ; $636E: $60
    ld h, e                                       ; $636F: $63
    ld c, l                                       ; $6370: $4D
    ld [$FF08], sp                                ; $6371: $08 $08 $FF
    nop                                           ; $6374: $00
    and c                                         ; $6375: $A1
    ld h, d                                       ; $6376: $62
    cp d                                          ; $6377: $BA
    ld h, d                                       ; $6378: $62
    db $D3                                        ; $6379: $D3
    ld h, d                                       ; $637A: $62
    cp d                                          ; $637B: $BA
    ld h, d                                       ; $637C: $62
    ld b, [hl]                                    ; $637D: $46
    ld [hl], b                                    ; $637E: $70
    ld h, e                                       ; $637F: $63
    ld c, l                                       ; $6380: $4D
    ld [$0108], sp                                ; $6381: $08 $08 $01
    nop                                           ; $6384: $00
    ld d, [hl]                                    ; $6385: $56
    ld h, d                                       ; $6386: $62
    ld l, a                                       ; $6387: $6F
    ld h, d                                       ; $6388: $62
    adc b                                         ; $6389: $88
    ld h, d                                       ; $638A: $62
    ld l, a                                       ; $638B: $6F
    ld h, d                                       ; $638C: $62
    ld b, [hl]                                    ; $638D: $46
    add b                                         ; $638E: $80
    ld h, e                                       ; $638F: $63
    ld c, l                                       ; $6390: $4D
    ld [$0008], sp                                ; $6391: $08 $08 $00
    cp $0B                                        ; $6394: $FE $0B
    ld h, d                                       ; $6396: $62
    inc h                                         ; $6397: $24
    ld h, d                                       ; $6398: $62
    dec a                                         ; $6399: $3D
    ld h, d                                       ; $639A: $62
    inc h                                         ; $639B: $24
    ld h, d                                       ; $639C: $62
    ld b, [hl]                                    ; $639D: $46
    sub b                                         ; $639E: $90
    ld h, e                                       ; $639F: $63
    ld c, l                                       ; $63A0: $4D
    ld [$0008], sp                                ; $63A1: $08 $08 $00
    ld [bc], a                                    ; $63A4: $02
    ret nz                                        ; $63A5: $C0

    ld h, c                                       ; $63A6: $61
    reti                                          ; $63A7: $D9


    ld h, c                                       ; $63A8: $61
    ld a, [c]                                     ; $63A9: $F2
    ld h, c                                       ; $63AA: $61
    reti                                          ; $63AB: $D9


    ld h, c                                       ; $63AC: $61
    ld b, [hl]                                    ; $63AD: $46
    and b                                         ; $63AE: $A0
    ld h, e                                       ; $63AF: $63
    ld c, l                                       ; $63B0: $4D
    ld [$FE08], sp                                ; $63B1: $08 $08 $FE
    nop                                           ; $63B4: $00
    and c                                         ; $63B5: $A1
    ld h, d                                       ; $63B6: $62
    cp d                                          ; $63B7: $BA
    ld h, d                                       ; $63B8: $62
    db $D3                                        ; $63B9: $D3
    ld h, d                                       ; $63BA: $62
    cp d                                          ; $63BB: $BA
    ld h, d                                       ; $63BC: $62
    ld b, [hl]                                    ; $63BD: $46
    or b                                          ; $63BE: $B0
    ld h, e                                       ; $63BF: $63
    ld c, l                                       ; $63C0: $4D
    ld [$0208], sp                                ; $63C1: $08 $08 $02
    nop                                           ; $63C4: $00
    ld d, [hl]                                    ; $63C5: $56
    ld h, d                                       ; $63C6: $62
    ld l, a                                       ; $63C7: $6F
    ld h, d                                       ; $63C8: $62
    adc b                                         ; $63C9: $88
    ld h, d                                       ; $63CA: $62
    ld l, a                                       ; $63CB: $6F
    ld h, d                                       ; $63CC: $62
    ld b, [hl]                                    ; $63CD: $46
    ret nz                                        ; $63CE: $C0

    ld h, e                                       ; $63CF: $63
    ld c, h                                       ; $63D0: $4C
    rst $38                                       ; $63D1: $FF
    nop                                           ; $63D2: $00
    nop                                           ; $63D3: $00
    inc h                                         ; $63D4: $24
    ld h, d                                       ; $63D5: $62
    nop                                           ; $63D6: $00
    ld b, [hl]                                    ; $63D7: $46
    ret nc                                        ; $63D8: $D0

    ld h, e                                       ; $63D9: $63
    ld c, h                                       ; $63DA: $4C
    rst $38                                       ; $63DB: $FF
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    reti                                          ; $63DE: $D9


    ld h, c                                       ; $63DF: $61
    nop                                           ; $63E0: $00
    ld b, [hl]                                    ; $63E1: $46
    jp c, Jump_00E_4C63                           ; $63E2: $DA $63 $4C

    rst $38                                       ; $63E5: $FF
    nop                                           ; $63E6: $00
    nop                                           ; $63E7: $00
    cp d                                          ; $63E8: $BA
    ld h, d                                       ; $63E9: $62
    nop                                           ; $63EA: $00
    ld b, [hl]                                    ; $63EB: $46
    db $E4                                        ; $63EC: $E4
    ld h, e                                       ; $63ED: $63
    ld c, h                                       ; $63EE: $4C
    rst $38                                       ; $63EF: $FF
    nop                                           ; $63F0: $00
    nop                                           ; $63F1: $00
    ld l, a                                       ; $63F2: $6F
    ld h, d                                       ; $63F3: $62
    nop                                           ; $63F4: $00
    ld b, [hl]                                    ; $63F5: $46
    xor $63                                       ; $63F6: $EE $63
    ld c, h                                       ; $63F8: $4C
    rst $38                                       ; $63F9: $FF
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    and a                                         ; $63FC: $A7
    ld h, c                                       ; $63FD: $61
    nop                                           ; $63FE: $00
    ld b, [hl]                                    ; $63FF: $46
    ld hl, sp+$63                                 ; $6400: $F8 $63
    ld c, h                                       ; $6402: $4C
    rst $38                                       ; $6403: $FF
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    adc [hl]                                      ; $6406: $8E
    ld h, c                                       ; $6407: $61
    nop                                           ; $6408: $00
    ld b, [hl]                                    ; $6409: $46
    ld [bc], a                                    ; $640A: $02
    ld h, h                                       ; $640B: $64
    ld c, h                                       ; $640C: $4C
    rst $38                                       ; $640D: $FF
    nop                                           ; $640E: $00
    nop                                           ; $640F: $00
    ld [hl], l                                    ; $6410: $75
    ld h, c                                       ; $6411: $61
    nop                                           ; $6412: $00
    ld b, [hl]                                    ; $6413: $46
    inc c                                         ; $6414: $0C
    ld h, h                                       ; $6415: $64
    ld c, h                                       ; $6416: $4C
    rst $38                                       ; $6417: $FF
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    ld e, h                                       ; $641A: $5C
    ld h, c                                       ; $641B: $61
    nop                                           ; $641C: $00
    ld b, [hl]                                    ; $641D: $46
    ld d, $64                                     ; $641E: $16 $64
    ld c, h                                       ; $6420: $4C
    rst $38                                       ; $6421: $FF
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    scf                                           ; $6424: $37
    ld h, e                                       ; $6425: $63
    nop                                           ; $6426: $00
    ld b, [hl]                                    ; $6427: $46
    jr nz, jr_00E_648E                            ; $6428: $20 $64

    ld c, h                                       ; $642A: $4C
    rst $38                                       ; $642B: $FF
    nop                                           ; $642C: $00
    nop                                           ; $642D: $00
    ld e, $63                                     ; $642E: $1E $63
    nop                                           ; $6430: $00
    ld b, [hl]                                    ; $6431: $46
    ld a, [hl+]                                   ; $6432: $2A
    ld h, h                                       ; $6433: $64
    ld c, h                                       ; $6434: $4C
    rst $38                                       ; $6435: $FF
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00
    dec b                                         ; $6438: $05
    ld h, e                                       ; $6439: $63
    nop                                           ; $643A: $00
    ld b, [hl]                                    ; $643B: $46
    inc [hl]                                      ; $643C: $34
    ld h, h                                       ; $643D: $64
    ld c, h                                       ; $643E: $4C
    rst $38                                       ; $643F: $FF
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    db $EC                                        ; $6442: $EC
    ld h, d                                       ; $6443: $62
    nop                                           ; $6444: $00
    ld b, [hl]                                    ; $6445: $46
    ld a, $64                                     ; $6446: $3E $64
    ld c, e                                       ; $6448: $4B
    inc bc                                        ; $6449: $03
    ld c, $00                                     ; $644A: $0E $00
    nop                                           ; $644C: $00
    ld e, a                                       ; $644D: $5F
    ld h, h                                       ; $644E: $64
    ld c, $03                                     ; $644F: $0E $03
    nop                                           ; $6451: $00
    ld h, [hl]                                    ; $6452: $66
    ld h, h                                       ; $6453: $64
    ld c, $02                                     ; $6454: $0E $02
    nop                                           ; $6456: $00
    ld [hl], h                                    ; $6457: $74
    ld h, h                                       ; $6458: $64
    ld c, $01                                     ; $6459: $0E $01
    nop                                           ; $645B: $00
    ld l, l                                       ; $645C: $6D
    ld h, h                                       ; $645D: $64
    rst $38                                       ; $645E: $FF
    inc d                                         ; $645F: $14
    ld c, $D0                                     ; $6460: $0E $D0
    ld h, e                                       ; $6462: $63
    ld h, d                                       ; $6463: $62
    ld bc, $1412                                  ; $6464: $01 $12 $14
    ld c, $DA                                     ; $6467: $0E $DA
    ld h, e                                       ; $6469: $63
    ld h, d                                       ; $646A: $62
    ld bc, $1412                                  ; $646B: $01 $12 $14
    ld c, $E4                                     ; $646E: $0E $E4
    ld h, e                                       ; $6470: $63
    ld h, d                                       ; $6471: $62
    ld bc, $1412                                  ; $6472: $01 $12 $14
    ld c, $EE                                     ; $6475: $0E $EE
    ld h, e                                       ; $6477: $63
    ld h, d                                       ; $6478: $62
    ld bc, $F012                                  ; $6479: $01 $12 $F0
    ld hl, sp+$00                                 ; $647C: $F8 $00
    ld b, $F0                                     ; $647E: $06 $F0
    nop                                           ; $6480: $00
    ld bc, $F806                                  ; $6481: $01 $06 $F8
    ld hl, sp+$07                                 ; $6484: $F8 $07
    ld b, $F8                                     ; $6486: $06 $F8
    nop                                           ; $6488: $00
    ld [$0006], sp                                ; $6489: $08 $06 $00
    ld hl, sp+$11                                 ; $648C: $F8 $11

jr_00E_648E:
    ld b, $00                                     ; $648E: $06 $00
    nop                                           ; $6490: $00
    ld [de], a                                    ; $6491: $12
    ld b, $80                                     ; $6492: $06 $80
    ldh a, [rP1]                                  ; $6494: $F0 $00
    nop                                           ; $6496: $00
    ld h, $F0                                     ; $6497: $26 $F0
    ld hl, sp+$01                                 ; $6499: $F8 $01
    ld h, $F8                                     ; $649B: $26 $F8
    nop                                           ; $649D: $00
    rlca                                          ; $649E: $07
    ld h, $F8                                     ; $649F: $26 $F8
    ld hl, sp+$08                                 ; $64A1: $F8 $08
    ld h, $00                                     ; $64A3: $26 $00
    nop                                           ; $64A5: $00
    ld de, $0026                                  ; $64A6: $11 $26 $00
    ld hl, sp+$12                                 ; $64A9: $F8 $12
    ld h, $80                                     ; $64AB: $26 $80
    ldh a, [$F8]                                  ; $64AD: $F0 $F8
    dec b                                         ; $64AF: $05
    ld b, $F0                                     ; $64B0: $06 $F0
    nop                                           ; $64B2: $00
    ld b, $06                                     ; $64B3: $06 $06
    ld hl, sp-$02                                 ; $64B5: $F8 $FE
    inc c                                         ; $64B7: $0C
    ld b, $00                                     ; $64B8: $06 $00
    cp $17                                        ; $64BA: $FE $17
    ld b, $80                                     ; $64BC: $06 $80
    ldh a, [rDIV]                                 ; $64BE: $F0 $04
    dec b                                         ; $64C0: $05
    ld h, $F0                                     ; $64C1: $26 $F0
    db $FC                                        ; $64C3: $FC
    ld b, $26                                     ; $64C4: $06 $26
    ld hl, sp-$02                                 ; $64C6: $F8 $FE
    inc c                                         ; $64C8: $0C
    ld h, $00                                     ; $64C9: $26 $00
    cp $17                                        ; $64CB: $FE $17
    ld h, $80                                     ; $64CD: $26 $80
    pop af                                        ; $64CF: $F1
    ld hl, sp+$02                                 ; $64D0: $F8 $02
    ld b, $F1                                     ; $64D2: $06 $F1
    nop                                           ; $64D4: $00
    inc bc                                        ; $64D5: $03
    ld b, $F8                                     ; $64D6: $06 $F8
    ld hl, sp+$0D                                 ; $64D8: $F8 $0D
    ld b, $F8                                     ; $64DA: $06 $F8
    nop                                           ; $64DC: $00
    ld c, $06                                     ; $64DD: $0E $06
    nop                                           ; $64DF: $00
    db $FC                                        ; $64E0: $FC
    jr jr_00E_64E9                                ; $64E1: $18 $06

    add b                                         ; $64E3: $80
    ldh a, [$F8]                                  ; $64E4: $F0 $F8
    ld [bc], a                                    ; $64E6: $02
    ld b, $F0                                     ; $64E7: $06 $F0

jr_00E_64E9:
    nop                                           ; $64E9: $00
    inc bc                                        ; $64EA: $03
    ld b, $F8                                     ; $64EB: $06 $F8
    ld hl, sp+$09                                 ; $64ED: $F8 $09
    ld b, $F8                                     ; $64EF: $06 $F8
    nop                                           ; $64F1: $00
    ld a, [bc]                                    ; $64F2: $0A
    ld b, $00                                     ; $64F3: $06 $00
    ld hl, sp+$13                                 ; $64F5: $F8 $13
    ld b, $00                                     ; $64F7: $06 $00
    nop                                           ; $64F9: $00
    inc d                                         ; $64FA: $14
    ld b, $80                                     ; $64FB: $06 $80
    pop af                                        ; $64FD: $F1
    ld hl, sp+$02                                 ; $64FE: $F8 $02
    ld b, $F1                                     ; $6500: $06 $F1
    nop                                           ; $6502: $00
    inc bc                                        ; $6503: $03
    ld b, $00                                     ; $6504: $06 $00
    db $FC                                        ; $6506: $FC
    jr @+$28                                      ; $6507: $18 $26

    ld hl, sp-$08                                 ; $6509: $F8 $F8
    daa                                           ; $650B: $27
    ld b, $F8                                     ; $650C: $06 $F8
    nop                                           ; $650E: $00
    jr z, jr_00E_6517                             ; $650F: $28 $06

    add b                                         ; $6511: $80
    pop af                                        ; $6512: $F1
    ld hl, sp+$04                                 ; $6513: $F8 $04
    ld b, $F1                                     ; $6515: $06 $F1

jr_00E_6517:
    nop                                           ; $6517: $00
    inc b                                         ; $6518: $04
    ld h, $F8                                     ; $6519: $26 $F8
    ld hl, sp+$0F                                 ; $651B: $F8 $0F
    ld b, $F8                                     ; $651D: $06 $F8
    nop                                           ; $651F: $00
    db $10                                        ; $6520: $10
    ld b, $00                                     ; $6521: $06 $00
    ld hl, sp+$19                                 ; $6523: $F8 $19
    ld b, $00                                     ; $6525: $06 $00
    nop                                           ; $6527: $00
    ld a, [de]                                    ; $6528: $1A
    ld b, $80                                     ; $6529: $06 $80
    ldh a, [$F8]                                  ; $652B: $F0 $F8
    inc b                                         ; $652D: $04
    ld b, $F0                                     ; $652E: $06 $F0
    nop                                           ; $6530: $00
    inc b                                         ; $6531: $04
    ld h, $00                                     ; $6532: $26 $00
    ld hl, sp+$15                                 ; $6534: $F8 $15
    ld b, $00                                     ; $6536: $06 $00
    nop                                           ; $6538: $00
    ld d, $06                                     ; $6539: $16 $06
    ld hl, sp-$08                                 ; $653B: $F8 $F8
    dec bc                                        ; $653D: $0B
    ld b, $F8                                     ; $653E: $06 $F8
    nop                                           ; $6540: $00
    dec bc                                        ; $6541: $0B
    ld h, $80                                     ; $6542: $26 $80
    pop af                                        ; $6544: $F1
    ld hl, sp+$04                                 ; $6545: $F8 $04
    ld b, $F1                                     ; $6547: $06 $F1
    nop                                           ; $6549: $00
    inc b                                         ; $654A: $04
    ld h, $F8                                     ; $654B: $26 $F8
    nop                                           ; $654D: $00
    rrca                                          ; $654E: $0F
    ld h, $F8                                     ; $654F: $26 $F8
    ld hl, sp+$10                                 ; $6551: $F8 $10
    ld h, $00                                     ; $6553: $26 $00
    nop                                           ; $6555: $00
    add hl, de                                    ; $6556: $19
    ld h, $00                                     ; $6557: $26 $00
    ld hl, sp+$1A                                 ; $6559: $F8 $1A
    ld h, $80                                     ; $655B: $26 $80
    pop af                                        ; $655D: $F1
    ld hl, sp+$1B                                 ; $655E: $F8 $1B
    ld b, $F1                                     ; $6560: $06 $F1
    nop                                           ; $6562: $00
    inc e                                         ; $6563: $1C
    ld b, $F8                                     ; $6564: $06 $F8
    ld hl, sp+$1D                                 ; $6566: $F8 $1D
    ld b, $F8                                     ; $6568: $06 $F8
    nop                                           ; $656A: $00
    ld e, $06                                     ; $656B: $1E $06
    nop                                           ; $656D: $00
    ld hl, sp+$22                                 ; $656E: $F8 $22
    ld b, $00                                     ; $6570: $06 $00
    nop                                           ; $6572: $00
    inc hl                                        ; $6573: $23
    ld b, $80                                     ; $6574: $06 $80
    ldh a, [$F8]                                  ; $6576: $F0 $F8
    dec de                                        ; $6578: $1B
    ld b, $F0                                     ; $6579: $06 $F0
    nop                                           ; $657B: $00
    inc e                                         ; $657C: $1C
    ld b, $00                                     ; $657D: $06 $00
    db $FD                                        ; $657F: $FD
    inc h                                         ; $6580: $24
    ld b, $F8                                     ; $6581: $06 $F8
    db $FC                                        ; $6583: $FC
    rra                                           ; $6584: $1F
    ld b, $80                                     ; $6585: $06 $80
    pop af                                        ; $6587: $F1
    ld hl, sp+$1B                                 ; $6588: $F8 $1B
    ld b, $F1                                     ; $658A: $06 $F1
    nop                                           ; $658C: $00
    inc e                                         ; $658D: $1C
    ld b, $00                                     ; $658E: $06 $00
    ld hl, sp+$25                                 ; $6590: $F8 $25
    ld b, $00                                     ; $6592: $06 $00
    nop                                           ; $6594: $00
    ld h, $06                                     ; $6595: $26 $06
    ld hl, sp-$08                                 ; $6597: $F8 $F8
    jr nz, jr_00E_65A1                            ; $6599: $20 $06

    ld hl, sp+$00                                 ; $659B: $F8 $00
    ld hl, $8006                                  ; $659D: $21 $06 $80
    pop af                                        ; $65A0: $F1

jr_00E_65A1:
    nop                                           ; $65A1: $00
    dec de                                        ; $65A2: $1B
    ld h, $F1                                     ; $65A3: $26 $F1
    ld hl, sp+$1C                                 ; $65A5: $F8 $1C
    ld h, $F8                                     ; $65A7: $26 $F8
    nop                                           ; $65A9: $00
    dec e                                         ; $65AA: $1D
    ld h, $F8                                     ; $65AB: $26 $F8
    ld hl, sp+$1E                                 ; $65AD: $F8 $1E
    ld h, $00                                     ; $65AF: $26 $00
    nop                                           ; $65B1: $00
    ld [hl+], a                                   ; $65B2: $22
    ld h, $00                                     ; $65B3: $26 $00
    ld hl, sp+$23                                 ; $65B5: $F8 $23
    ld h, $80                                     ; $65B7: $26 $80
    ldh a, [rP1]                                  ; $65B9: $F0 $00
    dec de                                        ; $65BB: $1B
    ld h, $F0                                     ; $65BC: $26 $F0
    ld hl, sp+$1C                                 ; $65BE: $F8 $1C
    ld h, $00                                     ; $65C0: $26 $00
    ei                                            ; $65C2: $FB
    inc h                                         ; $65C3: $24
    ld h, $F8                                     ; $65C4: $26 $F8
    db $FC                                        ; $65C6: $FC
    rra                                           ; $65C7: $1F
    ld h, $80                                     ; $65C8: $26 $80
    pop af                                        ; $65CA: $F1
    nop                                           ; $65CB: $00
    dec de                                        ; $65CC: $1B
    ld h, $F1                                     ; $65CD: $26 $F1
    ld hl, sp+$1C                                 ; $65CF: $F8 $1C
    ld h, $00                                     ; $65D1: $26 $00
    nop                                           ; $65D3: $00
    dec h                                         ; $65D4: $25
    ld h, $00                                     ; $65D5: $26 $00
    ld hl, sp+$26                                 ; $65D7: $F8 $26
    ld h, $F8                                     ; $65D9: $26 $F8
    nop                                           ; $65DB: $00
    jr nz, jr_00E_6604                            ; $65DC: $20 $26

    ld hl, sp-$08                                 ; $65DE: $F8 $F8
    ld hl, $8026                                  ; $65E0: $21 $26 $80
    ld c, l                                       ; $65E3: $4D
    ld [$0008], sp                                ; $65E4: $08 $08 $00
    rst $38                                       ; $65E7: $FF
    ld [de], a                                    ; $65E8: $12
    ld h, l                                       ; $65E9: $65
    dec hl                                        ; $65EA: $2B
    ld h, l                                       ; $65EB: $65
    ld b, h                                       ; $65EC: $44
    ld h, l                                       ; $65ED: $65
    dec hl                                        ; $65EE: $2B
    ld h, l                                       ; $65EF: $65
    ld b, [hl]                                    ; $65F0: $46
    db $E3                                        ; $65F1: $E3
    ld h, l                                       ; $65F2: $65
    ld c, l                                       ; $65F3: $4D
    ld [$0008], sp                                ; $65F4: $08 $08 $00
    ld bc, $64CF                                  ; $65F7: $01 $CF $64
    db $E4                                        ; $65FA: $E4
    ld h, h                                       ; $65FB: $64
    db $FD                                        ; $65FC: $FD
    ld h, h                                       ; $65FD: $64
    db $E4                                        ; $65FE: $E4
    ld h, h                                       ; $65FF: $64
    ld b, [hl]                                    ; $6600: $46
    di                                            ; $6601: $F3
    ld h, l                                       ; $6602: $65
    ld c, l                                       ; $6603: $4D

jr_00E_6604:
    ld [$FF08], sp                                ; $6604: $08 $08 $FF
    nop                                           ; $6607: $00
    and b                                         ; $6608: $A0
    ld h, l                                       ; $6609: $65
    cp c                                          ; $660A: $B9
    ld h, l                                       ; $660B: $65
    jp z, $B965                                   ; $660C: $CA $65 $B9

    ld h, l                                       ; $660F: $65
    ld b, [hl]                                    ; $6610: $46
    inc bc                                        ; $6611: $03
    ld h, [hl]                                    ; $6612: $66
    ld c, l                                       ; $6613: $4D
    ld [$0108], sp                                ; $6614: $08 $08 $01
    nop                                           ; $6617: $00
    ld e, l                                       ; $6618: $5D
    ld h, l                                       ; $6619: $65
    halt                                          ; $661A: $76
    ld h, l                                       ; $661B: $65
    add a                                         ; $661C: $87
    ld h, l                                       ; $661D: $65
    halt                                          ; $661E: $76
    ld h, l                                       ; $661F: $65
    ld b, [hl]                                    ; $6620: $46
    inc de                                        ; $6621: $13
    ld h, [hl]                                    ; $6622: $66
    ld c, l                                       ; $6623: $4D
    ld [$0008], sp                                ; $6624: $08 $08 $00
    cp $12                                        ; $6627: $FE $12
    ld h, l                                       ; $6629: $65
    dec hl                                        ; $662A: $2B
    ld h, l                                       ; $662B: $65
    ld b, h                                       ; $662C: $44
    ld h, l                                       ; $662D: $65
    dec hl                                        ; $662E: $2B
    ld h, l                                       ; $662F: $65
    ld b, [hl]                                    ; $6630: $46
    inc hl                                        ; $6631: $23
    ld h, [hl]                                    ; $6632: $66
    ld c, l                                       ; $6633: $4D
    ld [$0008], sp                                ; $6634: $08 $08 $00
    ld [bc], a                                    ; $6637: $02
    rst $08                                       ; $6638: $CF
    ld h, h                                       ; $6639: $64
    db $E4                                        ; $663A: $E4
    ld h, h                                       ; $663B: $64
    db $FD                                        ; $663C: $FD
    ld h, h                                       ; $663D: $64
    db $E4                                        ; $663E: $E4
    ld h, h                                       ; $663F: $64
    ld b, [hl]                                    ; $6640: $46
    inc sp                                        ; $6641: $33
    ld h, [hl]                                    ; $6642: $66
    ld c, l                                       ; $6643: $4D
    ld [$FE08], sp                                ; $6644: $08 $08 $FE
    nop                                           ; $6647: $00
    and b                                         ; $6648: $A0
    ld h, l                                       ; $6649: $65
    cp c                                          ; $664A: $B9
    ld h, l                                       ; $664B: $65
    jp z, $B965                                   ; $664C: $CA $65 $B9

    ld h, l                                       ; $664F: $65
    ld b, [hl]                                    ; $6650: $46
    ld b, e                                       ; $6651: $43
    ld h, [hl]                                    ; $6652: $66
    ld c, l                                       ; $6653: $4D
    ld [$0208], sp                                ; $6654: $08 $08 $02
    nop                                           ; $6657: $00
    ld e, l                                       ; $6658: $5D
    ld h, l                                       ; $6659: $65
    halt                                          ; $665A: $76
    ld h, l                                       ; $665B: $65
    add a                                         ; $665C: $87
    ld h, l                                       ; $665D: $65
    halt                                          ; $665E: $76
    ld h, l                                       ; $665F: $65
    ld b, [hl]                                    ; $6660: $46
    ld d, e                                       ; $6661: $53
    ld h, [hl]                                    ; $6662: $66
    ld c, h                                       ; $6663: $4C
    rst $38                                       ; $6664: $FF
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    dec hl                                        ; $6667: $2B
    ld h, l                                       ; $6668: $65
    nop                                           ; $6669: $00
    ld b, [hl]                                    ; $666A: $46
    ld h, e                                       ; $666B: $63
    ld h, [hl]                                    ; $666C: $66
    ld c, h                                       ; $666D: $4C
    rst $38                                       ; $666E: $FF
    nop                                           ; $666F: $00
    nop                                           ; $6670: $00
    db $E4                                        ; $6671: $E4
    ld h, h                                       ; $6672: $64
    nop                                           ; $6673: $00
    ld b, [hl]                                    ; $6674: $46
    ld l, l                                       ; $6675: $6D
    ld h, [hl]                                    ; $6676: $66
    ld c, h                                       ; $6677: $4C
    rst $38                                       ; $6678: $FF
    nop                                           ; $6679: $00
    nop                                           ; $667A: $00
    cp c                                          ; $667B: $B9
    ld h, l                                       ; $667C: $65
    nop                                           ; $667D: $00
    ld b, [hl]                                    ; $667E: $46
    ld [hl], a                                    ; $667F: $77
    ld h, [hl]                                    ; $6680: $66
    ld c, h                                       ; $6681: $4C
    rst $38                                       ; $6682: $FF
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    halt                                          ; $6685: $76
    ld h, l                                       ; $6686: $65
    nop                                           ; $6687: $00
    ld b, [hl]                                    ; $6688: $46
    add c                                         ; $6689: $81
    ld h, [hl]                                    ; $668A: $66
    ld c, h                                       ; $668B: $4C
    rst $38                                       ; $668C: $FF
    nop                                           ; $668D: $00
    nop                                           ; $668E: $00
    cp [hl]                                       ; $668F: $BE
    ld h, h                                       ; $6690: $64
    nop                                           ; $6691: $00
    ld b, [hl]                                    ; $6692: $46
    adc e                                         ; $6693: $8B
    ld h, [hl]                                    ; $6694: $66
    ld c, h                                       ; $6695: $4C
    rst $38                                       ; $6696: $FF
    nop                                           ; $6697: $00

jr_00E_6698:
    nop                                           ; $6698: $00
    xor l                                         ; $6699: $AD
    ld h, h                                       ; $669A: $64
    nop                                           ; $669B: $00
    ld b, [hl]                                    ; $669C: $46
    sub l                                         ; $669D: $95
    ld h, [hl]                                    ; $669E: $66
    ld c, h                                       ; $669F: $4C
    rst $38                                       ; $66A0: $FF
    nop                                           ; $66A1: $00
    nop                                           ; $66A2: $00
    sub h                                         ; $66A3: $94
    ld h, h                                       ; $66A4: $64
    nop                                           ; $66A5: $00
    ld b, [hl]                                    ; $66A6: $46
    sbc a                                         ; $66A7: $9F
    ld h, [hl]                                    ; $66A8: $66
    ld c, h                                       ; $66A9: $4C
    rst $38                                       ; $66AA: $FF
    nop                                           ; $66AB: $00
    nop                                           ; $66AC: $00
    ld a, e                                       ; $66AD: $7B
    ld h, h                                       ; $66AE: $64
    nop                                           ; $66AF: $00
    ld b, [hl]                                    ; $66B0: $46
    xor c                                         ; $66B1: $A9
    ld h, [hl]                                    ; $66B2: $66
    ld c, e                                       ; $66B3: $4B
    inc bc                                        ; $66B4: $03
    ld c, $00                                     ; $66B5: $0E $00
    nop                                           ; $66B7: $00
    jp z, $0E66                                   ; $66B8: $CA $66 $0E

    inc bc                                        ; $66BB: $03
    nop                                           ; $66BC: $00
    pop de                                        ; $66BD: $D1
    ld h, [hl]                                    ; $66BE: $66
    ld c, $02                                     ; $66BF: $0E $02
    nop                                           ; $66C1: $00
    rst $18                                       ; $66C2: $DF
    ld h, [hl]                                    ; $66C3: $66
    ld c, $01                                     ; $66C4: $0E $01
    nop                                           ; $66C6: $00
    ret c                                         ; $66C7: $D8

    ld h, [hl]                                    ; $66C8: $66
    rst $38                                       ; $66C9: $FF
    inc d                                         ; $66CA: $14
    ld c, $63                                     ; $66CB: $0E $63
    ld h, [hl]                                    ; $66CD: $66
    ld h, d                                       ; $66CE: $62
    ld bc, $1412                                  ; $66CF: $01 $12 $14
    ld c, $6D                                     ; $66D2: $0E $6D
    ld h, [hl]                                    ; $66D4: $66
    ld h, d                                       ; $66D5: $62
    ld bc, $1412                                  ; $66D6: $01 $12 $14
    ld c, $77                                     ; $66D9: $0E $77
    ld h, [hl]                                    ; $66DB: $66
    ld h, d                                       ; $66DC: $62
    ld bc, $1412                                  ; $66DD: $01 $12 $14
    ld c, $81                                     ; $66E0: $0E $81
    ld h, [hl]                                    ; $66E2: $66
    ld h, d                                       ; $66E3: $62
    db $01                                        ; $66E4: $01
    ld [de], a                                    ; $66E5: $12

    db $00, $00, $13, $02, $00, $F8, $12, $02, $F8, $00, $09, $00, $F8, $F8, $08, $00
    db $F0, $00, $01, $00, $F0, $F8, $00, $00, $80

    nop                                           ; $66FF: $00
    ld hl, sp+$13                                 ; $6700: $F8 $13
    ld [hl+], a                                   ; $6702: $22
    nop                                           ; $6703: $00

jr_00E_6704:
    nop                                           ; $6704: $00
    ld [de], a                                    ; $6705: $12
    ld [hl+], a                                   ; $6706: $22
    ld hl, sp-$08                                 ; $6707: $F8 $F8
    add hl, bc                                    ; $6709: $09
    jr nz, jr_00E_6704                            ; $670A: $20 $F8

    nop                                           ; $670C: $00
    ld [$F020], sp                                ; $670D: $08 $20 $F0
    ld hl, sp+$01                                 ; $6710: $F8 $01
    jr nz, jr_00E_6704                            ; $6712: $20 $F0

    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    jr nz, jr_00E_6698                            ; $6716: $20 $80

    db $00, $00, $17, $02, $00, $F8, $16, $02, $F8, $00, $0D, $00, $F8, $F8, $0C, $00
    db $F0, $00, $07, $00, $F0, $F8, $06, $00, $80

    nop                                           ; $6731: $00

jr_00E_6732:
    ld hl, sp+$17                                 ; $6732: $F8 $17
    ld [hl+], a                                   ; $6734: $22
    nop                                           ; $6735: $00

jr_00E_6736:
    nop                                           ; $6736: $00
    ld d, $22                                     ; $6737: $16 $22
    ld hl, sp-$08                                 ; $6739: $F8 $F8
    dec c                                         ; $673B: $0D
    jr nz, jr_00E_6736                            ; $673C: $20 $F8

    nop                                           ; $673E: $00
    inc c                                         ; $673F: $0C
    jr nz, jr_00E_6732                            ; $6740: $20 $F0

    ld hl, sp+$07                                 ; $6742: $F8 $07
    jr nz, jr_00E_6736                            ; $6744: $20 $F0

    nop                                           ; $6746: $00
    ld b, $20                                     ; $6747: $06 $20
    add b                                         ; $6749: $80
    nop                                           ; $674A: $00
    db $FC                                        ; $674B: $FC
    jr jr_00E_6750                                ; $674C: $18 $02

    ld hl, sp+$00                                 ; $674E: $F8 $00

jr_00E_6750:
    rrca                                          ; $6750: $0F
    nop                                           ; $6751: $00
    ld hl, sp-$08                                 ; $6752: $F8 $F8
    ld c, $00                                     ; $6754: $0E $00
    pop af                                        ; $6756: $F1
    nop                                           ; $6757: $00
    inc bc                                        ; $6758: $03
    nop                                           ; $6759: $00
    pop af                                        ; $675A: $F1
    ld hl, sp+$02                                 ; $675B: $F8 $02
    nop                                           ; $675D: $00
    add b                                         ; $675E: $80
    nop                                           ; $675F: $00
    nop                                           ; $6760: $00
    inc d                                         ; $6761: $14
    ld [bc], a                                    ; $6762: $02
    nop                                           ; $6763: $00

jr_00E_6764:
    ld sp, hl                                     ; $6764: $F9
    inc d                                         ; $6765: $14
    ld [hl+], a                                   ; $6766: $22
    ld hl, sp+$00                                 ; $6767: $F8 $00
    ld a, [bc]                                    ; $6769: $0A
    jr nz, jr_00E_6764                            ; $676A: $20 $F8

    ld hl, sp+$0A                                 ; $676C: $F8 $0A
    nop                                           ; $676E: $00
    ldh a, [rP1]                                  ; $676F: $F0 $00
    inc bc                                        ; $6771: $03
    nop                                           ; $6772: $00
    ldh a, [$F8]                                  ; $6773: $F0 $F8
    ld [bc], a                                    ; $6775: $02
    nop                                           ; $6776: $00
    add b                                         ; $6777: $80
    nop                                           ; $6778: $00

jr_00E_6779:
    db $FC                                        ; $6779: $FC
    jr @+$24                                      ; $677A: $18 $22

    ld hl, sp-$08                                 ; $677C: $F8 $F8
    rrca                                          ; $677E: $0F
    jr nz, jr_00E_6779                            ; $677F: $20 $F8

    nop                                           ; $6781: $00
    ld c, $20                                     ; $6782: $0E $20
    pop af                                        ; $6784: $F1
    nop                                           ; $6785: $00
    inc bc                                        ; $6786: $03
    nop                                           ; $6787: $00
    pop af                                        ; $6788: $F1
    ld hl, sp+$02                                 ; $6789: $F8 $02
    nop                                           ; $678B: $00
    add b                                         ; $678C: $80

    db $00, $00, $1A, $02, $00, $F8, $19, $02, $F8, $00, $11, $00, $F8, $F8, $10, $00
    db $F1, $00, $05, $00, $F1, $F8, $04, $00, $80, $00, $F9, $15, $22, $00, $00, $15
    db $02, $F8, $F9, $0B, $20, $F8, $00, $0B, $00, $F0, $00, $05, $00, $F0, $F8, $04
    db $00, $80, $00, $F9, $1A, $22, $00, $01, $19, $22, $F8, $F9, $11, $20, $F8, $01
    db $10, $20, $F1, $00, $05, $00, $F1, $F8, $04, $00, $80, $00, $00, $23, $02, $00
    db $F8, $22, $02, $F8, $00, $1E, $00, $F8, $F8, $1D, $00, $F1, $00, $1C, $00, $F1
    db $F8, $1B, $00, $80, $00, $00, $25, $02, $00, $F8, $24, $02, $F8, $FC, $1F, $00
    db $F0, $00, $1C, $00, $F0, $F8, $1B, $00, $80, $F8, $00, $21, $00, $F8, $F8, $20
    db $00, $00, $00, $27, $02, $00, $F8, $26, $02, $F1, $00, $1C, $00, $F1, $F8, $1B
    db $00, $80, $00, $F8, $23, $22, $00, $00, $22, $22, $F8, $F8, $1E, $20, $F8, $00
    db $1D, $20, $F1, $F8, $1C, $20, $F1, $00, $1B, $20, $80, $00, $F8, $25, $22, $00
    db $00, $24, $22, $F8, $FC, $1F, $20, $F0, $F8, $1C, $20, $F0, $00, $1B, $20, $80
    db $F8, $F8, $21, $20, $F8, $00, $20, $20, $00, $F8, $27, $22, $00, $00, $26, $22
    db $F1, $F8, $1C, $20, $F1, $00, $1B, $20, $80, $4D, $08, $08, $00, $FF, $8D, $67
    db $A6, $67, $BF, $67, $A6, $67, $46, $66, $68

    ld c, l                                       ; $6876: $4D
    ld [$0008], sp                                ; $6877: $08 $08 $00
    ld bc, $674A                                  ; $687A: $01 $4A $67
    ld e, a                                       ; $687D: $5F
    ld h, a                                       ; $687E: $67
    ld a, b                                       ; $687F: $78
    ld h, a                                       ; $6880: $67
    ld e, a                                       ; $6881: $5F
    ld h, a                                       ; $6882: $67
    ld b, [hl]                                    ; $6883: $46
    halt                                          ; $6884: $76
    ld l, b                                       ; $6885: $68

    db $4D, $08, $08, $FF, $00, $1F, $68, $38, $68, $4D, $68

    jr c, jr_00E_68FB                             ; $6891: $38 $68

    ld b, [hl]                                    ; $6893: $46
    add [hl]                                      ; $6894: $86
    ld l, b                                       ; $6895: $68

    db $4D, $08, $08, $01, $00, $D8, $67, $F1, $67, $06, $68

    pop af                                        ; $68A1: $F1
    ld h, a                                       ; $68A2: $67
    ld b, [hl]                                    ; $68A3: $46
    sub [hl]                                      ; $68A4: $96
    ld l, b                                       ; $68A5: $68
    ld c, l                                       ; $68A6: $4D
    ld [$0008], sp                                ; $68A7: $08 $08 $00
    cp $8D                                        ; $68AA: $FE $8D
    ld h, a                                       ; $68AC: $67
    and [hl]                                      ; $68AD: $A6
    ld h, a                                       ; $68AE: $67
    cp a                                          ; $68AF: $BF
    ld h, a                                       ; $68B0: $67
    and [hl]                                      ; $68B1: $A6
    ld h, a                                       ; $68B2: $67
    ld b, [hl]                                    ; $68B3: $46
    and [hl]                                      ; $68B4: $A6
    ld l, b                                       ; $68B5: $68
    ld c, l                                       ; $68B6: $4D
    ld [$0008], sp                                ; $68B7: $08 $08 $00
    ld [bc], a                                    ; $68BA: $02
    ld c, d                                       ; $68BB: $4A
    ld h, a                                       ; $68BC: $67
    ld e, a                                       ; $68BD: $5F
    ld h, a                                       ; $68BE: $67
    ld a, b                                       ; $68BF: $78
    ld h, a                                       ; $68C0: $67
    ld e, a                                       ; $68C1: $5F
    ld h, a                                       ; $68C2: $67
    ld b, [hl]                                    ; $68C3: $46
    or [hl]                                       ; $68C4: $B6
    ld l, b                                       ; $68C5: $68
    ld c, l                                       ; $68C6: $4D
    ld [$FE08], sp                                ; $68C7: $08 $08 $FE
    nop                                           ; $68CA: $00
    rra                                           ; $68CB: $1F
    ld l, b                                       ; $68CC: $68
    jr c, jr_00E_6937                             ; $68CD: $38 $68

    ld c, l                                       ; $68CF: $4D
    ld l, b                                       ; $68D0: $68
    jr c, jr_00E_693B                             ; $68D1: $38 $68

    ld b, [hl]                                    ; $68D3: $46
    add $68                                       ; $68D4: $C6 $68
    ld c, l                                       ; $68D6: $4D
    ld [$0208], sp                                ; $68D7: $08 $08 $02
    nop                                           ; $68DA: $00
    ret c                                         ; $68DB: $D8

    ld h, a                                       ; $68DC: $67
    pop af                                        ; $68DD: $F1
    ld h, a                                       ; $68DE: $67
    ld b, $68                                     ; $68DF: $06 $68
    pop af                                        ; $68E1: $F1
    ld h, a                                       ; $68E2: $67
    ld b, [hl]                                    ; $68E3: $46
    sub $68                                       ; $68E4: $D6 $68

    db $4C, $FF, $00, $00, $A6, $67, $00, $46, $E6, $68

    ld c, h                                       ; $68F0: $4C
    rst $38                                       ; $68F1: $FF
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    ld e, a                                       ; $68F4: $5F
    ld h, a                                       ; $68F5: $67
    nop                                           ; $68F6: $00
    ld b, [hl]                                    ; $68F7: $46
    ldh a, [rBCPS]                                ; $68F8: $F0 $68
    ld c, h                                       ; $68FA: $4C

jr_00E_68FB:
    rst $38                                       ; $68FB: $FF
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    jr c, jr_00E_6968                             ; $68FE: $38 $68

    nop                                           ; $6900: $00
    ld b, [hl]                                    ; $6901: $46
    db $FA                                        ; $6902: $FA
    ld l, b                                       ; $6903: $68

    db $4C, $FF, $00, $00, $F1, $67, $00, $46, $04, $69

    ld c, h                                       ; $690E: $4C
    rst $38                                       ; $690F: $FF
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    ld sp, $0067                                  ; $6912: $31 $67 $00
    ld b, [hl]                                    ; $6915: $46
    ld c, $69                                     ; $6916: $0E $69

    db $4C, $FF, $00, $00, $18, $67

    nop                                           ; $691E: $00
    ld b, [hl]                                    ; $691F: $46
    jr @+$6B                                      ; $6920: $18 $69

    ld c, h                                       ; $6922: $4C
    rst $38                                       ; $6923: $FF
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    rst $38                                       ; $6926: $FF
    ld h, [hl]                                    ; $6927: $66
    nop                                           ; $6928: $00
    ld b, [hl]                                    ; $6929: $46
    ld [hl+], a                                   ; $692A: $22
    ld l, c                                       ; $692B: $69

    db $4C, $FF, $00, $00, $E6, $66, $00, $46, $2C, $69

    ld c, h                                       ; $6936: $4C

jr_00E_6937:
    ld bc, $0100                                  ; $6937: $01 $00 $01
    and [hl]                                      ; $693A: $A6

jr_00E_693B:
    ld h, a                                       ; $693B: $67
    inc bc                                        ; $693C: $03
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00
    and [hl]                                      ; $693F: $A6
    ld h, a                                       ; $6940: $67
    nop                                           ; $6941: $00
    ld b, [hl]                                    ; $6942: $46
    ld [hl], $69                                  ; $6943: $36 $69
    ld c, e                                       ; $6945: $4B
    inc bc                                        ; $6946: $03
    ld c, $00                                     ; $6947: $0E $00
    nop                                           ; $6949: $00
    ld e, h                                       ; $694A: $5C
    ld l, c                                       ; $694B: $69
    ld c, $03                                     ; $694C: $0E $03
    nop                                           ; $694E: $00
    ld h, e                                       ; $694F: $63
    ld l, c                                       ; $6950: $69
    ld c, $02                                     ; $6951: $0E $02
    nop                                           ; $6953: $00
    ld [hl], c                                    ; $6954: $71
    ld l, c                                       ; $6955: $69
    ld c, $01                                     ; $6956: $0E $01
    nop                                           ; $6958: $00
    ld l, d                                       ; $6959: $6A
    ld l, c                                       ; $695A: $69
    rst $38                                       ; $695B: $FF
    inc d                                         ; $695C: $14
    ld c, $E6                                     ; $695D: $0E $E6
    ld l, b                                       ; $695F: $68
    ld h, d                                       ; $6960: $62
    ld bc, $1412                                  ; $6961: $01 $12 $14
    ld c, $F0                                     ; $6964: $0E $F0
    ld l, b                                       ; $6966: $68
    ld h, d                                       ; $6967: $62

jr_00E_6968:
    ld bc, $1412                                  ; $6968: $01 $12 $14
    ld c, $FA                                     ; $696B: $0E $FA
    ld l, b                                       ; $696D: $68
    ld h, d                                       ; $696E: $62
    ld bc, $1412                                  ; $696F: $01 $12 $14
    ld c, $04                                     ; $6972: $0E $04
    ld l, c                                       ; $6974: $69
    ld h, d                                       ; $6975: $62
    ld bc, $0012                                  ; $6976: $01 $12 $00
    nop                                           ; $6979: $00
    ld de, $0007                                  ; $697A: $11 $07 $00
    ld hl, sp+$10                                 ; $697D: $F8 $10
    rlca                                          ; $697F: $07
    ld hl, sp+$00                                 ; $6980: $F8 $00
    rlca                                          ; $6982: $07
    ld [bc], a                                    ; $6983: $02
    ld hl, sp-$08                                 ; $6984: $F8 $F8
    ld b, $02                                     ; $6986: $06 $02
    ldh a, [rP1]                                  ; $6988: $F0 $00
    ld bc, $F003                                  ; $698A: $01 $03 $F0
    ld hl, sp+$00                                 ; $698D: $F8 $00
    inc bc                                        ; $698F: $03
    add b                                         ; $6990: $80

    db $00, $F8, $11, $27, $00, $00, $10, $27, $F8, $F8, $07, $22, $F8, $00, $06, $22
    db $F0, $F8, $01, $23, $F0, $00, $00, $23, $80

    nop                                           ; $69AA: $00
    nop                                           ; $69AB: $00
    dec d                                         ; $69AC: $15
    rlca                                          ; $69AD: $07
    nop                                           ; $69AE: $00
    ld hl, sp+$14                                 ; $69AF: $F8 $14
    rlca                                          ; $69B1: $07
    ld hl, sp+$00                                 ; $69B2: $F8 $00
    dec bc                                        ; $69B4: $0B
    ld [bc], a                                    ; $69B5: $02
    ld hl, sp-$08                                 ; $69B6: $F8 $F8
    ld a, [bc]                                    ; $69B8: $0A
    ld [bc], a                                    ; $69B9: $02
    ldh a, [rP1]                                  ; $69BA: $F0 $00
    dec b                                         ; $69BC: $05
    inc bc                                        ; $69BD: $03
    ldh a, [$F8]                                  ; $69BE: $F0 $F8
    inc b                                         ; $69C0: $04
    nop                                           ; $69C1: $00
    add b                                         ; $69C2: $80

    db $00, $F8, $15, $27, $00, $00, $14, $27, $F8, $F8, $0B, $22, $F8, $00, $0A, $22
    db $F0, $F8, $05, $23, $F0, $00, $04, $20, $80

    ld hl, sp+$00                                 ; $69DC: $F8 $00
    dec c                                         ; $69DE: $0D
    ld [bc], a                                    ; $69DF: $02
    ld hl, sp-$08                                 ; $69E0: $F8 $F8
    inc c                                         ; $69E2: $0C
    ld [bc], a                                    ; $69E3: $02
    nop                                           ; $69E4: $00
    db $FC                                        ; $69E5: $FC
    ld d, $07                                     ; $69E6: $16 $07
    pop af                                        ; $69E8: $F1
    nop                                           ; $69E9: $00
    ld [bc], a                                    ; $69EA: $02
    inc bc                                        ; $69EB: $03
    pop af                                        ; $69EC: $F1
    ld hl, sp+$02                                 ; $69ED: $F8 $02
    inc hl                                        ; $69EF: $23
    add b                                         ; $69F0: $80
    nop                                           ; $69F1: $00
    nop                                           ; $69F2: $00
    ld [de], a                                    ; $69F3: $12
    rlca                                          ; $69F4: $07
    nop                                           ; $69F5: $00
    ld sp, hl                                     ; $69F6: $F9
    ld [de], a                                    ; $69F7: $12
    daa                                           ; $69F8: $27
    ld hl, sp+$00                                 ; $69F9: $F8 $00
    ld [$F802], sp                                ; $69FB: $08 $02 $F8
    ld hl, sp+$08                                 ; $69FE: $F8 $08
    ld [hl+], a                                   ; $6A00: $22
    ldh a, [rP1]                                  ; $6A01: $F0 $00
    ld [bc], a                                    ; $6A03: $02
    inc bc                                        ; $6A04: $03
    ldh a, [$F8]                                  ; $6A05: $F0 $F8
    ld [bc], a                                    ; $6A07: $02
    inc hl                                        ; $6A08: $23
    add b                                         ; $6A09: $80
    ld hl, sp-$08                                 ; $6A0A: $F8 $F8
    dec c                                         ; $6A0C: $0D
    ld [hl+], a                                   ; $6A0D: $22
    ld hl, sp+$00                                 ; $6A0E: $F8 $00
    inc c                                         ; $6A10: $0C
    ld [hl+], a                                   ; $6A11: $22
    nop                                           ; $6A12: $00
    db $FC                                        ; $6A13: $FC
    ld d, $27                                     ; $6A14: $16 $27
    pop af                                        ; $6A16: $F1
    nop                                           ; $6A17: $00
    ld [bc], a                                    ; $6A18: $02
    inc bc                                        ; $6A19: $03
    pop af                                        ; $6A1A: $F1
    ld hl, sp+$02                                 ; $6A1B: $F8 $02
    inc hl                                        ; $6A1D: $23
    add b                                         ; $6A1E: $80

    db $00, $00, $18, $07, $00, $F8, $17, $07, $F8, $00, $0F, $02, $F8, $F8, $0E, $02
    db $F1, $00, $03, $03, $F1, $F8, $03, $23, $80, $00, $00, $13, $07, $00, $F9, $13
    db $27, $F8, $00, $09, $02, $F8, $F8, $09, $22, $F0, $00, $03, $03, $F0, $F8, $03
    db $23, $80, $00, $F8, $18, $27, $00, $00, $17, $27, $F8, $F8, $0F, $22, $F8, $00
    db $0E, $22, $F1, $00, $03, $03, $F1, $F8, $03, $23, $80

    nop                                           ; $6A6A: $00
    nop                                           ; $6A6B: $00
    ld hl, $0007                                  ; $6A6C: $21 $07 $00
    ld hl, sp+$20                                 ; $6A6F: $F8 $20
    rlca                                          ; $6A71: $07
    ld hl, sp+$00                                 ; $6A72: $F8 $00
    inc e                                         ; $6A74: $1C
    ld [bc], a                                    ; $6A75: $02
    ld hl, sp-$08                                 ; $6A76: $F8 $F8
    dec de                                        ; $6A78: $1B
    ld [bc], a                                    ; $6A79: $02
    pop af                                        ; $6A7A: $F1
    nop                                           ; $6A7B: $00
    ld a, [de]                                    ; $6A7C: $1A
    inc bc                                        ; $6A7D: $03
    pop af                                        ; $6A7E: $F1
    ld hl, sp+$19                                 ; $6A7F: $F8 $19
    inc bc                                        ; $6A81: $03
    add b                                         ; $6A82: $80
    nop                                           ; $6A83: $00
    nop                                           ; $6A84: $00
    inc hl                                        ; $6A85: $23
    rlca                                          ; $6A86: $07
    nop                                           ; $6A87: $00
    ld hl, sp+$22                                 ; $6A88: $F8 $22
    rlca                                          ; $6A8A: $07
    ld hl, sp-$04                                 ; $6A8B: $F8 $FC
    dec e                                         ; $6A8D: $1D
    ld [bc], a                                    ; $6A8E: $02
    ldh a, [rP1]                                  ; $6A8F: $F0 $00
    ld a, [de]                                    ; $6A91: $1A
    inc bc                                        ; $6A92: $03
    ldh a, [$F8]                                  ; $6A93: $F0 $F8
    add hl, de                                    ; $6A95: $19
    inc bc                                        ; $6A96: $03
    add b                                         ; $6A97: $80
    nop                                           ; $6A98: $00
    nop                                           ; $6A99: $00
    dec h                                         ; $6A9A: $25
    rlca                                          ; $6A9B: $07
    nop                                           ; $6A9C: $00
    ld hl, sp+$24                                 ; $6A9D: $F8 $24
    rlca                                          ; $6A9F: $07
    ld hl, sp+$00                                 ; $6AA0: $F8 $00
    rra                                           ; $6AA2: $1F
    ld [bc], a                                    ; $6AA3: $02
    ld hl, sp-$08                                 ; $6AA4: $F8 $F8
    ld e, $02                                     ; $6AA6: $1E $02
    pop af                                        ; $6AA8: $F1
    nop                                           ; $6AA9: $00
    ld a, [de]                                    ; $6AAA: $1A
    inc bc                                        ; $6AAB: $03
    pop af                                        ; $6AAC: $F1
    ld hl, sp+$19                                 ; $6AAD: $F8 $19
    inc bc                                        ; $6AAF: $03
    add b                                         ; $6AB0: $80
    nop                                           ; $6AB1: $00
    ld hl, sp+$21                                 ; $6AB2: $F8 $21
    daa                                           ; $6AB4: $27
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    jr nz, jr_00E_6AE0                            ; $6AB7: $20 $27

    ld hl, sp-$08                                 ; $6AB9: $F8 $F8
    inc e                                         ; $6ABB: $1C
    ld [hl+], a                                   ; $6ABC: $22
    ld hl, sp+$00                                 ; $6ABD: $F8 $00
    dec de                                        ; $6ABF: $1B
    ld [hl+], a                                   ; $6AC0: $22
    pop af                                        ; $6AC1: $F1
    ld hl, sp+$1A                                 ; $6AC2: $F8 $1A
    inc hl                                        ; $6AC4: $23
    pop af                                        ; $6AC5: $F1
    nop                                           ; $6AC6: $00
    add hl, de                                    ; $6AC7: $19
    inc hl                                        ; $6AC8: $23
    add b                                         ; $6AC9: $80

    db $00, $F8, $23, $27, $00, $00, $22, $27, $F8, $FC, $1D, $22, $F0, $F8, $1A, $23
    db $F0, $00, $19, $23, $80

    nop                                           ; $6ADF: $00

jr_00E_6AE0:
    ld hl, sp+$25                                 ; $6AE0: $F8 $25
    daa                                           ; $6AE2: $27
    nop                                           ; $6AE3: $00
    nop                                           ; $6AE4: $00
    inc h                                         ; $6AE5: $24
    daa                                           ; $6AE6: $27
    ld hl, sp-$08                                 ; $6AE7: $F8 $F8
    rra                                           ; $6AE9: $1F
    ld [hl+], a                                   ; $6AEA: $22
    ld hl, sp+$00                                 ; $6AEB: $F8 $00
    ld e, $22                                     ; $6AED: $1E $22
    pop af                                        ; $6AEF: $F1
    ld hl, sp+$1A                                 ; $6AF0: $F8 $1A
    inc hl                                        ; $6AF2: $23
    pop af                                        ; $6AF3: $F1
    nop                                           ; $6AF4: $00
    add hl, de                                    ; $6AF5: $19
    inc hl                                        ; $6AF6: $23
    add b                                         ; $6AF7: $80

    db $4D, $08, $08, $00, $FF, $1F, $6A, $38, $6A, $51, $6A, $38, $6A, $46, $F8, $6A

    ld c, l                                       ; $6B08: $4D
    ld [$0008], sp                                ; $6B09: $08 $08 $00
    ld bc, $69DC                                  ; $6B0C: $01 $DC $69
    pop af                                        ; $6B0F: $F1
    ld l, c                                       ; $6B10: $69
    ld a, [bc]                                    ; $6B11: $0A
    ld l, d                                       ; $6B12: $6A
    pop af                                        ; $6B13: $F1
    ld l, c                                       ; $6B14: $69
    ld b, [hl]                                    ; $6B15: $46
    ld [$4D6B], sp                                ; $6B16: $08 $6B $4D
    ld [$FF08], sp                                ; $6B19: $08 $08 $FF
    nop                                           ; $6B1C: $00
    or c                                          ; $6B1D: $B1
    ld l, d                                       ; $6B1E: $6A
    jp z, $DF6A                                   ; $6B1F: $CA $6A $DF

    ld l, d                                       ; $6B22: $6A
    jp z, $466A                                   ; $6B23: $CA $6A $46

    jr @+$6D                                      ; $6B26: $18 $6B

    ld c, l                                       ; $6B28: $4D
    ld [$0108], sp                                ; $6B29: $08 $08 $01
    nop                                           ; $6B2C: $00
    ld l, d                                       ; $6B2D: $6A
    ld l, d                                       ; $6B2E: $6A
    add e                                         ; $6B2F: $83
    ld l, d                                       ; $6B30: $6A
    sbc b                                         ; $6B31: $98
    ld l, d                                       ; $6B32: $6A
    add e                                         ; $6B33: $83
    ld l, d                                       ; $6B34: $6A
    ld b, [hl]                                    ; $6B35: $46
    jr z, @+$6D                                   ; $6B36: $28 $6B

    ld c, l                                       ; $6B38: $4D
    ld [$0008], sp                                ; $6B39: $08 $08 $00
    cp $1F                                        ; $6B3C: $FE $1F
    ld l, d                                       ; $6B3E: $6A
    jr c, jr_00E_6BAB                             ; $6B3F: $38 $6A

    ld d, c                                       ; $6B41: $51
    ld l, d                                       ; $6B42: $6A
    jr c, jr_00E_6BAF                             ; $6B43: $38 $6A

    ld b, [hl]                                    ; $6B45: $46
    jr c, jr_00E_6BB3                             ; $6B46: $38 $6B

    ld c, l                                       ; $6B48: $4D
    ld [$0008], sp                                ; $6B49: $08 $08 $00
    ld [bc], a                                    ; $6B4C: $02
    call c, $F169                                 ; $6B4D: $DC $69 $F1
    ld l, c                                       ; $6B50: $69
    ld a, [bc]                                    ; $6B51: $0A
    ld l, d                                       ; $6B52: $6A
    pop af                                        ; $6B53: $F1
    ld l, c                                       ; $6B54: $69
    ld b, [hl]                                    ; $6B55: $46
    ld c, b                                       ; $6B56: $48
    ld l, e                                       ; $6B57: $6B
    ld c, l                                       ; $6B58: $4D
    ld [$FE08], sp                                ; $6B59: $08 $08 $FE
    nop                                           ; $6B5C: $00
    or c                                          ; $6B5D: $B1
    ld l, d                                       ; $6B5E: $6A
    jp z, $DF6A                                   ; $6B5F: $CA $6A $DF

    ld l, d                                       ; $6B62: $6A
    jp z, $466A                                   ; $6B63: $CA $6A $46

    ld e, b                                       ; $6B66: $58
    ld l, e                                       ; $6B67: $6B
    ld c, l                                       ; $6B68: $4D
    ld [$0208], sp                                ; $6B69: $08 $08 $02
    nop                                           ; $6B6C: $00
    ld l, d                                       ; $6B6D: $6A
    ld l, d                                       ; $6B6E: $6A
    add e                                         ; $6B6F: $83
    ld l, d                                       ; $6B70: $6A
    sbc b                                         ; $6B71: $98
    ld l, d                                       ; $6B72: $6A
    add e                                         ; $6B73: $83
    ld l, d                                       ; $6B74: $6A
    ld b, [hl]                                    ; $6B75: $46
    ld l, b                                       ; $6B76: $68
    ld l, e                                       ; $6B77: $6B

    db $4C, $FF, $00, $00, $38, $6A, $00, $46, $78, $6B

    ld c, h                                       ; $6B82: $4C
    rst $38                                       ; $6B83: $FF
    nop                                           ; $6B84: $00
    nop                                           ; $6B85: $00
    pop af                                        ; $6B86: $F1
    ld l, c                                       ; $6B87: $69
    nop                                           ; $6B88: $00
    ld b, [hl]                                    ; $6B89: $46
    add d                                         ; $6B8A: $82
    ld l, e                                       ; $6B8B: $6B

    db $4C, $FF, $00, $00, $CA, $6A, $00, $46, $8C, $6B

    ld c, h                                       ; $6B96: $4C
    rst $38                                       ; $6B97: $FF
    nop                                           ; $6B98: $00
    nop                                           ; $6B99: $00
    add e                                         ; $6B9A: $83
    ld l, d                                       ; $6B9B: $6A
    nop                                           ; $6B9C: $00
    ld b, [hl]                                    ; $6B9D: $46
    sub [hl]                                      ; $6B9E: $96
    ld l, e                                       ; $6B9F: $6B

    db $4C, $FF, $00, $00, $C3, $69, $00, $46, $A0, $6B

    ld c, h                                       ; $6BAA: $4C

jr_00E_6BAB:
    rst $38                                       ; $6BAB: $FF
    nop                                           ; $6BAC: $00
    nop                                           ; $6BAD: $00
    xor d                                         ; $6BAE: $AA

jr_00E_6BAF:
    ld l, c                                       ; $6BAF: $69
    nop                                           ; $6BB0: $00
    ld b, [hl]                                    ; $6BB1: $46
    xor d                                         ; $6BB2: $AA

jr_00E_6BB3:
    ld l, e                                       ; $6BB3: $6B

    db $4C, $FF, $00, $00, $91, $69, $00, $46, $B4, $6B

    ld c, h                                       ; $6BBE: $4C
    rst $38                                       ; $6BBF: $FF
    nop                                           ; $6BC0: $00
    nop                                           ; $6BC1: $00
    ld a, b                                       ; $6BC2: $78
    ld l, c                                       ; $6BC3: $69
    nop                                           ; $6BC4: $00
    ld b, [hl]                                    ; $6BC5: $46
    cp [hl]                                       ; $6BC6: $BE
    ld l, e                                       ; $6BC7: $6B
    ld c, h                                       ; $6BC8: $4C
    ld bc, $0100                                  ; $6BC9: $01 $00 $01
    jr c, @+$6C                                   ; $6BCC: $38 $6A

    inc bc                                        ; $6BCE: $03
    nop                                           ; $6BCF: $00
    nop                                           ; $6BD0: $00
    jr c, jr_00E_6C3D                             ; $6BD1: $38 $6A

    nop                                           ; $6BD3: $00
    ld b, [hl]                                    ; $6BD4: $46
    ret z                                         ; $6BD5: $C8

    ld l, e                                       ; $6BD6: $6B
    ld c, e                                       ; $6BD7: $4B
    inc bc                                        ; $6BD8: $03
    ld c, $00                                     ; $6BD9: $0E $00
    nop                                           ; $6BDB: $00
    xor $6B                                       ; $6BDC: $EE $6B
    ld c, $03                                     ; $6BDE: $0E $03
    nop                                           ; $6BE0: $00
    push af                                       ; $6BE1: $F5
    ld l, e                                       ; $6BE2: $6B
    ld c, $02                                     ; $6BE3: $0E $02
    nop                                           ; $6BE5: $00
    inc bc                                        ; $6BE6: $03
    ld l, h                                       ; $6BE7: $6C
    ld c, $01                                     ; $6BE8: $0E $01
    nop                                           ; $6BEA: $00
    db $FC                                        ; $6BEB: $FC
    ld l, e                                       ; $6BEC: $6B
    rst $38                                       ; $6BED: $FF
    inc d                                         ; $6BEE: $14
    ld c, $78                                     ; $6BEF: $0E $78
    ld l, e                                       ; $6BF1: $6B
    ld h, d                                       ; $6BF2: $62
    ld bc, $1412                                  ; $6BF3: $01 $12 $14
    ld c, $82                                     ; $6BF6: $0E $82
    ld l, e                                       ; $6BF8: $6B
    ld h, d                                       ; $6BF9: $62
    ld bc, $1412                                  ; $6BFA: $01 $12 $14
    ld c, $8C                                     ; $6BFD: $0E $8C
    ld l, e                                       ; $6BFF: $6B
    ld h, d                                       ; $6C00: $62
    ld bc, $1412                                  ; $6C01: $01 $12 $14
    ld c, $96                                     ; $6C04: $0E $96
    ld l, e                                       ; $6C06: $6B
    ld h, d                                       ; $6C07: $62
    db $01                                        ; $6C08: $01
    ld [de], a                                    ; $6C09: $12

    db $00, $00, $15, $02, $00, $F8, $14, $02, $F8, $00, $09, $03, $F8, $F8, $08, $03
    db $F0, $00, $01, $03, $F0, $F8, $00, $03, $80

    nop                                           ; $6C23: $00
    ld hl, sp+$15                                 ; $6C24: $F8 $15
    ld [hl+], a                                   ; $6C26: $22
    nop                                           ; $6C27: $00
    nop                                           ; $6C28: $00
    inc d                                         ; $6C29: $14
    ld [hl+], a                                   ; $6C2A: $22
    ld hl, sp-$08                                 ; $6C2B: $F8 $F8
    add hl, bc                                    ; $6C2D: $09
    inc hl                                        ; $6C2E: $23
    ld hl, sp+$00                                 ; $6C2F: $F8 $00
    ld [$F023], sp                                ; $6C31: $08 $23 $F0
    ld hl, sp+$01                                 ; $6C34: $F8 $01
    inc hl                                        ; $6C36: $23
    ldh a, [rP1]                                  ; $6C37: $F0 $00
    nop                                           ; $6C39: $00
    inc hl                                        ; $6C3A: $23
    add b                                         ; $6C3B: $80
    nop                                           ; $6C3C: $00

jr_00E_6C3D:
    nop                                           ; $6C3D: $00
    add hl, de                                    ; $6C3E: $19
    ld [bc], a                                    ; $6C3F: $02
    nop                                           ; $6C40: $00
    ld hl, sp+$18                                 ; $6C41: $F8 $18
    ld [bc], a                                    ; $6C43: $02
    ld hl, sp+$00                                 ; $6C44: $F8 $00
    rrca                                          ; $6C46: $0F
    inc bc                                        ; $6C47: $03
    ld hl, sp-$08                                 ; $6C48: $F8 $F8
    ld c, $03                                     ; $6C4A: $0E $03
    ldh a, [rP1]                                  ; $6C4C: $F0 $00
    rlca                                          ; $6C4E: $07
    inc bc                                        ; $6C4F: $03
    ldh a, [$F8]                                  ; $6C50: $F0 $F8
    ld b, $03                                     ; $6C52: $06 $03
    add b                                         ; $6C54: $80
    nop                                           ; $6C55: $00
    ld hl, sp+$19                                 ; $6C56: $F8 $19
    ld [hl+], a                                   ; $6C58: $22
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00
    jr jr_00E_6C7F                                ; $6C5B: $18 $22

    ld hl, sp-$08                                 ; $6C5D: $F8 $F8
    rrca                                          ; $6C5F: $0F
    inc hl                                        ; $6C60: $23
    ld hl, sp+$00                                 ; $6C61: $F8 $00
    ld c, $23                                     ; $6C63: $0E $23
    ldh a, [$F8]                                  ; $6C65: $F0 $F8
    rlca                                          ; $6C67: $07
    inc hl                                        ; $6C68: $23
    ldh a, [rP1]                                  ; $6C69: $F0 $00
    ld b, $23                                     ; $6C6B: $06 $23
    add b                                         ; $6C6D: $80
    nop                                           ; $6C6E: $00
    nop                                           ; $6C6F: $00
    dec de                                        ; $6C70: $1B
    ld [bc], a                                    ; $6C71: $02
    nop                                           ; $6C72: $00
    ld hl, sp+$1A                                 ; $6C73: $F8 $1A
    ld [bc], a                                    ; $6C75: $02
    ld hl, sp+$00                                 ; $6C76: $F8 $00
    ld de, $F803                                  ; $6C78: $11 $03 $F8
    ld hl, sp+$10                                 ; $6C7B: $F8 $10
    inc bc                                        ; $6C7D: $03
    pop af                                        ; $6C7E: $F1

jr_00E_6C7F:
    nop                                           ; $6C7F: $00
    inc bc                                        ; $6C80: $03
    inc bc                                        ; $6C81: $03
    pop af                                        ; $6C82: $F1
    ld hl, sp+$02                                 ; $6C83: $F8 $02
    inc bc                                        ; $6C85: $03
    add b                                         ; $6C86: $80

    db $00, $F9, $16, $22, $00, $00, $16, $02, $F8, $00, $0B, $03, $F8, $F8, $0A, $03
    db $F0, $00, $03, $03, $F0, $F8, $02, $03, $80

    nop                                           ; $6CA0: $00
    ld hl, sp+$1B                                 ; $6CA1: $F8 $1B
    ld [hl+], a                                   ; $6CA3: $22
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    ld a, [de]                                    ; $6CA6: $1A
    ld [hl+], a                                   ; $6CA7: $22
    pop af                                        ; $6CA8: $F1
    nop                                           ; $6CA9: $00
    inc bc                                        ; $6CAA: $03
    inc bc                                        ; $6CAB: $03
    pop af                                        ; $6CAC: $F1
    ld hl, sp+$02                                 ; $6CAD: $F8 $02
    inc bc                                        ; $6CAF: $03
    ld hl, sp+$00                                 ; $6CB0: $F8 $00
    dec l                                         ; $6CB2: $2D
    inc bc                                        ; $6CB3: $03
    ld hl, sp-$08                                 ; $6CB4: $F8 $F8
    inc l                                         ; $6CB6: $2C
    inc bc                                        ; $6CB7: $03
    add b                                         ; $6CB8: $80

    db $00, $00, $1D, $02, $00, $F8, $1C, $02, $F8, $00, $13, $03, $F8, $F8, $12, $03
    db $F1, $00, $05, $03, $F1, $F8, $04, $03, $80, $00, $F9, $17, $22, $00, $00, $17
    db $02, $F8, $00, $0D, $03, $F8, $F8, $0C, $03, $F0, $00, $05, $03, $F0, $F8, $04
    db $03, $80, $F8, $00, $2F, $03, $F8, $F8, $2E, $03, $00, $F9, $1D, $22, $00, $01
    db $1C, $22, $F1, $00, $05, $03, $F1, $F8, $04, $03, $80

    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    daa                                           ; $6D06: $27
    ld [bc], a                                    ; $6D07: $02
    nop                                           ; $6D08: $00
    ld hl, sp+$26                                 ; $6D09: $F8 $26
    ld [bc], a                                    ; $6D0B: $02
    ld hl, sp+$00                                 ; $6D0C: $F8 $00
    ld hl, $F803                                  ; $6D0E: $21 $03 $F8
    ld hl, sp+$20                                 ; $6D11: $F8 $20
    inc bc                                        ; $6D13: $03
    pop af                                        ; $6D14: $F1
    nop                                           ; $6D15: $00
    rra                                           ; $6D16: $1F
    inc bc                                        ; $6D17: $03
    pop af                                        ; $6D18: $F1
    ld hl, sp+$1E                                 ; $6D19: $F8 $1E
    inc bc                                        ; $6D1B: $03
    add b                                         ; $6D1C: $80
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    add hl, hl                                    ; $6D1F: $29
    ld [bc], a                                    ; $6D20: $02
    nop                                           ; $6D21: $00
    ld hl, sp+$28                                 ; $6D22: $F8 $28
    ld [bc], a                                    ; $6D24: $02
    ld hl, sp+$00                                 ; $6D25: $F8 $00
    inc hl                                        ; $6D27: $23
    nop                                           ; $6D28: $00
    ld hl, sp-$08                                 ; $6D29: $F8 $F8
    ld [hl+], a                                   ; $6D2B: $22
    inc bc                                        ; $6D2C: $03
    ldh a, [rP1]                                  ; $6D2D: $F0 $00
    rra                                           ; $6D2F: $1F
    inc bc                                        ; $6D30: $03
    ldh a, [$F8]                                  ; $6D31: $F0 $F8
    ld e, $03                                     ; $6D33: $1E $03
    add b                                         ; $6D35: $80
    nop                                           ; $6D36: $00
    nop                                           ; $6D37: $00
    dec hl                                        ; $6D38: $2B
    ld [bc], a                                    ; $6D39: $02
    nop                                           ; $6D3A: $00
    ld hl, sp+$2A                                 ; $6D3B: $F8 $2A
    ld [bc], a                                    ; $6D3D: $02
    ld hl, sp+$00                                 ; $6D3E: $F8 $00
    dec h                                         ; $6D40: $25
    inc bc                                        ; $6D41: $03
    ld hl, sp-$08                                 ; $6D42: $F8 $F8
    inc h                                         ; $6D44: $24
    inc bc                                        ; $6D45: $03
    pop af                                        ; $6D46: $F1
    nop                                           ; $6D47: $00
    rra                                           ; $6D48: $1F
    inc bc                                        ; $6D49: $03
    pop af                                        ; $6D4A: $F1
    ld hl, sp+$1E                                 ; $6D4B: $F8 $1E
    inc bc                                        ; $6D4D: $03
    add b                                         ; $6D4E: $80

    db $00, $F8, $27, $22, $00, $00, $26, $22, $F8, $F8, $21, $23, $F8, $00, $20, $23
    db $F1, $F8, $1F, $23, $F1, $00, $1E, $23, $80, $00, $F8, $29, $22, $00, $00, $28
    db $22, $F8, $F8, $23, $20, $F8, $00, $22, $23, $F0, $F8, $1F, $23, $F0, $00, $1E
    db $23, $80

    nop                                           ; $6D81: $00
    ld hl, sp+$2B                                 ; $6D82: $F8 $2B
    ld [hl+], a                                   ; $6D84: $22
    nop                                           ; $6D85: $00
    nop                                           ; $6D86: $00
    ld a, [hl+]                                   ; $6D87: $2A
    ld [hl+], a                                   ; $6D88: $22
    ld hl, sp-$08                                 ; $6D89: $F8 $F8
    dec h                                         ; $6D8B: $25
    inc hl                                        ; $6D8C: $23
    ld hl, sp+$00                                 ; $6D8D: $F8 $00
    inc h                                         ; $6D8F: $24
    inc hl                                        ; $6D90: $23
    pop af                                        ; $6D91: $F1
    ld hl, sp+$1F                                 ; $6D92: $F8 $1F
    inc hl                                        ; $6D94: $23
    pop af                                        ; $6D95: $F1
    nop                                           ; $6D96: $00
    ld e, $23                                     ; $6D97: $1E $23
    add b                                         ; $6D99: $80

    db $4D, $08, $08, $00, $FF, $B9, $6C, $D2, $6C, $EB, $6C, $D2, $6C, $46, $9A, $6D

    ld c, l                                       ; $6DAA: $4D
    ld [$0008], sp                                ; $6DAB: $08 $08 $00
    ld bc, $6C6E                                  ; $6DAE: $01 $6E $6C
    add a                                         ; $6DB1: $87
    ld l, h                                       ; $6DB2: $6C
    and b                                         ; $6DB3: $A0
    ld l, h                                       ; $6DB4: $6C
    add a                                         ; $6DB5: $87
    ld l, h                                       ; $6DB6: $6C
    ld b, [hl]                                    ; $6DB7: $46
    xor d                                         ; $6DB8: $AA
    ld l, l                                       ; $6DB9: $6D
    ld c, l                                       ; $6DBA: $4D
    ld [$FF08], sp                                ; $6DBB: $08 $08 $FF
    nop                                           ; $6DBE: $00
    ld c, a                                       ; $6DBF: $4F
    ld l, l                                       ; $6DC0: $6D
    ld l, b                                       ; $6DC1: $68
    ld l, l                                       ; $6DC2: $6D
    add c                                         ; $6DC3: $81
    ld l, l                                       ; $6DC4: $6D
    ld l, b                                       ; $6DC5: $68
    ld l, l                                       ; $6DC6: $6D
    ld b, [hl]                                    ; $6DC7: $46
    cp d                                          ; $6DC8: $BA
    ld l, l                                       ; $6DC9: $6D
    ld c, l                                       ; $6DCA: $4D
    ld [$0108], sp                                ; $6DCB: $08 $08 $01
    nop                                           ; $6DCE: $00
    inc b                                         ; $6DCF: $04
    ld l, l                                       ; $6DD0: $6D
    dec e                                         ; $6DD1: $1D
    ld l, l                                       ; $6DD2: $6D
    ld [hl], $6D                                  ; $6DD3: $36 $6D
    dec e                                         ; $6DD5: $1D
    ld l, l                                       ; $6DD6: $6D
    ld b, [hl]                                    ; $6DD7: $46
    db $CA                                        ; $6DD8: $CA
    ld l, l                                       ; $6DD9: $6D

    db $4D

    db $08                                        ; $6DDB: $08

    db $08, $00, $FE, $B9, $6C

    jp nc, $EB6C                                  ; $6DE1: $D2 $6C $EB

    ld l, h                                       ; $6DE4: $6C
    jp nc, Jump_00E_466C                          ; $6DE5: $D2 $6C $46

    jp c, Jump_00E_4D6D                           ; $6DE8: $DA $6D $4D

    ld [$0008], sp                                ; $6DEB: $08 $08 $00
    ld [bc], a                                    ; $6DEE: $02
    ld l, [hl]                                    ; $6DEF: $6E
    ld l, h                                       ; $6DF0: $6C
    add a                                         ; $6DF1: $87
    ld l, h                                       ; $6DF2: $6C
    and b                                         ; $6DF3: $A0
    ld l, h                                       ; $6DF4: $6C
    add a                                         ; $6DF5: $87
    ld l, h                                       ; $6DF6: $6C
    ld b, [hl]                                    ; $6DF7: $46
    db $EA                                        ; $6DF8: $EA
    ld l, l                                       ; $6DF9: $6D

    db $4D, $08, $08, $FE, $00, $4F, $6D, $68, $6D

    add c                                         ; $6E03: $81
    ld l, l                                       ; $6E04: $6D
    ld l, b                                       ; $6E05: $68
    ld l, l                                       ; $6E06: $6D
    ld b, [hl]                                    ; $6E07: $46
    ld a, [$4D6D]                                 ; $6E08: $FA $6D $4D
    ld [$0208], sp                                ; $6E0B: $08 $08 $02
    nop                                           ; $6E0E: $00
    inc b                                         ; $6E0F: $04
    ld l, l                                       ; $6E10: $6D
    dec e                                         ; $6E11: $1D
    ld l, l                                       ; $6E12: $6D
    ld [hl], $6D                                  ; $6E13: $36 $6D
    dec e                                         ; $6E15: $1D
    ld l, l                                       ; $6E16: $6D
    ld b, [hl]                                    ; $6E17: $46
    ld a, [bc]                                    ; $6E18: $0A
    ld l, [hl]                                    ; $6E19: $6E

    db $4C, $FF, $00, $00, $D2, $6C, $00, $46, $1A, $6E, $4C, $FF, $00, $00, $87, $6C

    nop                                           ; $6E2A: $00
    ld b, [hl]                                    ; $6E2B: $46
    inc h                                         ; $6E2C: $24
    ld l, [hl]                                    ; $6E2D: $6E
    ld c, h                                       ; $6E2E: $4C
    rst $38                                       ; $6E2F: $FF
    nop                                           ; $6E30: $00
    nop                                           ; $6E31: $00
    ld l, b                                       ; $6E32: $68
    ld l, l                                       ; $6E33: $6D
    nop                                           ; $6E34: $00
    ld b, [hl]                                    ; $6E35: $46
    ld l, $6E                                     ; $6E36: $2E $6E
    ld c, h                                       ; $6E38: $4C
    rst $38                                       ; $6E39: $FF
    nop                                           ; $6E3A: $00
    nop                                           ; $6E3B: $00
    dec e                                         ; $6E3C: $1D
    ld l, l                                       ; $6E3D: $6D
    nop                                           ; $6E3E: $00
    ld b, [hl]                                    ; $6E3F: $46
    jr c, @+$70                                   ; $6E40: $38 $6E

    ld c, h                                       ; $6E42: $4C
    rst $38                                       ; $6E43: $FF
    nop                                           ; $6E44: $00
    nop                                           ; $6E45: $00
    ld d, l                                       ; $6E46: $55
    ld l, h                                       ; $6E47: $6C
    nop                                           ; $6E48: $00
    ld b, [hl]                                    ; $6E49: $46
    ld b, d                                       ; $6E4A: $42
    ld l, [hl]                                    ; $6E4B: $6E
    ld c, h                                       ; $6E4C: $4C
    rst $38                                       ; $6E4D: $FF
    nop                                           ; $6E4E: $00
    nop                                           ; $6E4F: $00
    inc a                                         ; $6E50: $3C
    ld l, h                                       ; $6E51: $6C
    nop                                           ; $6E52: $00
    ld b, [hl]                                    ; $6E53: $46
    ld c, h                                       ; $6E54: $4C
    ld l, [hl]                                    ; $6E55: $6E
    ld c, h                                       ; $6E56: $4C
    rst $38                                       ; $6E57: $FF
    nop                                           ; $6E58: $00
    nop                                           ; $6E59: $00
    inc hl                                        ; $6E5A: $23
    ld l, h                                       ; $6E5B: $6C
    nop                                           ; $6E5C: $00
    ld b, [hl]                                    ; $6E5D: $46
    ld d, [hl]                                    ; $6E5E: $56
    ld l, [hl]                                    ; $6E5F: $6E

    db $4C, $FF, $00, $00, $0A, $6C, $00, $46, $60, $6E

    ld c, e                                       ; $6E6A: $4B
    inc bc                                        ; $6E6B: $03
    ld c, $00                                     ; $6E6C: $0E $00
    nop                                           ; $6E6E: $00
    add c                                         ; $6E6F: $81
    ld l, [hl]                                    ; $6E70: $6E
    ld c, $03                                     ; $6E71: $0E $03
    nop                                           ; $6E73: $00
    adc b                                         ; $6E74: $88
    ld l, [hl]                                    ; $6E75: $6E
    ld c, $02                                     ; $6E76: $0E $02
    nop                                           ; $6E78: $00
    sub [hl]                                      ; $6E79: $96
    ld l, [hl]                                    ; $6E7A: $6E
    ld c, $01                                     ; $6E7B: $0E $01
    nop                                           ; $6E7D: $00
    adc a                                         ; $6E7E: $8F
    ld l, [hl]                                    ; $6E7F: $6E
    rst $38                                       ; $6E80: $FF
    inc d                                         ; $6E81: $14
    ld c, $1A                                     ; $6E82: $0E $1A
    ld l, [hl]                                    ; $6E84: $6E
    ld h, d                                       ; $6E85: $62
    ld bc, $1412                                  ; $6E86: $01 $12 $14
    ld c, $24                                     ; $6E89: $0E $24
    ld l, [hl]                                    ; $6E8B: $6E
    ld h, d                                       ; $6E8C: $62
    ld bc, $1412                                  ; $6E8D: $01 $12 $14
    ld c, $2E                                     ; $6E90: $0E $2E
    ld l, [hl]                                    ; $6E92: $6E
    ld h, d                                       ; $6E93: $62
    ld bc, $1412                                  ; $6E94: $01 $12 $14
    ld c, $38                                     ; $6E97: $0E $38
    ld l, [hl]                                    ; $6E99: $6E
    ld h, d                                       ; $6E9A: $62
    db $01                                        ; $6E9B: $01
    ld [de], a                                    ; $6E9C: $12

    db $F0, $F8, $01, $07, $F0, $00, $02, $07, $F8, $F8, $07, $07, $F8, $00, $08, $07
    db $00, $F8, $11, $02, $00, $00, $12, $02, $80, $F0, $00, $01, $27, $F0, $F8, $02
    db $27, $F8, $00, $07, $27, $F8, $F8, $08, $27, $00, $00, $11, $22, $00, $F8, $12
    db $22, $80

    ldh a, [$F8]                                  ; $6ECF: $F0 $F8
    inc b                                         ; $6ED1: $04
    rlca                                          ; $6ED2: $07
    ldh a, [rP1]                                  ; $6ED3: $F0 $00
    dec b                                         ; $6ED5: $05
    rlca                                          ; $6ED6: $07
    ld hl, sp-$08                                 ; $6ED7: $F8 $F8
    ld a, [bc]                                    ; $6ED9: $0A
    rlca                                          ; $6EDA: $07
    ld hl, sp+$00                                 ; $6EDB: $F8 $00
    dec bc                                        ; $6EDD: $0B
    rlca                                          ; $6EDE: $07
    nop                                           ; $6EDF: $00
    ld hl, sp+$14                                 ; $6EE0: $F8 $14
    ld [bc], a                                    ; $6EE2: $02
    nop                                           ; $6EE3: $00
    nop                                           ; $6EE4: $00
    dec d                                         ; $6EE5: $15
    ld [bc], a                                    ; $6EE6: $02
    add b                                         ; $6EE7: $80
    nop                                           ; $6EE8: $00
    nop                                           ; $6EE9: $00
    inc d                                         ; $6EEA: $14
    ld [hl+], a                                   ; $6EEB: $22
    nop                                           ; $6EEC: $00
    ld hl, sp+$15                                 ; $6EED: $F8 $15
    ld [hl+], a                                   ; $6EEF: $22
    ld hl, sp+$00                                 ; $6EF0: $F8 $00
    ld a, [bc]                                    ; $6EF2: $0A
    daa                                           ; $6EF3: $27
    ld hl, sp-$08                                 ; $6EF4: $F8 $F8
    dec bc                                        ; $6EF6: $0B
    daa                                           ; $6EF7: $27
    ldh a, [rP1]                                  ; $6EF8: $F0 $00
    inc b                                         ; $6EFA: $04
    daa                                           ; $6EFB: $27
    ldh a, [$F8]                                  ; $6EFC: $F0 $F8
    dec b                                         ; $6EFE: $05
    daa                                           ; $6EFF: $27
    add b                                         ; $6F00: $80

    db $F1, $F8, $00, $07, $F1, $00, $00, $27, $F8, $F8, $0C, $07, $F8, $00, $0D, $07
    db $00, $FC, $16, $02, $80, $F0, $F8, $00, $07, $F0, $00, $00, $27, $F8, $F8, $06
    db $07, $F8, $00, $06, $27, $00, $F8, $10, $22, $00, $00, $10, $02, $80, $F1, $F8
    db $00, $07, $F1, $00, $00, $27, $F8, $00, $0C, $27, $F8, $F8, $0D, $27, $00, $FC
    db $16, $22, $80, $F1, $F8, $03, $07, $F1, $00, $03, $27, $00, $F8, $17, $02, $00
    db $00, $18, $02, $F8, $F8, $0E, $07, $F8, $00, $0F, $07, $80, $F0, $F8, $03, $07
    db $F0, $00, $03, $27, $F8, $F8, $09, $07, $F8, $00, $09, $27, $00, $F8, $13, $22
    db $00, $00, $13, $02, $80, $F1, $F8, $03, $07, $F1, $00, $03, $27, $F8, $00, $0E
    db $27, $F8, $F8, $0F, $27, $00, $00, $17, $22, $00, $F8, $18, $22, $80, $F1, $F8
    db $19, $07, $F1, $00, $1A, $07, $F8, $F8, $1B, $07, $F8, $00, $1C, $07, $00, $F8
    db $20, $02, $00, $00, $21, $02, $80, $F0, $F8, $19, $07, $F0, $00, $1A, $07, $F8
    db $FC, $1D, $07, $00, $F8, $22, $02, $00, $00, $23, $02, $80

    nop                                           ; $6FBD: $00
    ld hl, sp+$24                                 ; $6FBE: $F8 $24
    ld [bc], a                                    ; $6FC0: $02
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    dec h                                         ; $6FC3: $25
    ld [bc], a                                    ; $6FC4: $02
    pop af                                        ; $6FC5: $F1
    ld hl, sp+$19                                 ; $6FC6: $F8 $19
    rlca                                          ; $6FC8: $07
    pop af                                        ; $6FC9: $F1
    nop                                           ; $6FCA: $00
    ld a, [de]                                    ; $6FCB: $1A
    rlca                                          ; $6FCC: $07
    ld hl, sp-$08                                 ; $6FCD: $F8 $F8
    ld e, $07                                     ; $6FCF: $1E $07
    ld hl, sp+$00                                 ; $6FD1: $F8 $00
    rra                                           ; $6FD3: $1F
    rlca                                          ; $6FD4: $07
    add b                                         ; $6FD5: $80

    db $F1, $00, $19, $27, $F1, $F8, $1A, $27, $F8, $00, $1B, $27, $F8, $F8, $1C, $27
    db $00, $00, $20, $22, $00, $F8, $21, $22, $80, $F0, $00, $19, $27, $F0, $F8, $1A
    db $27, $F8, $FC, $1D, $27, $00, $00, $22, $22, $00, $F8, $23, $22, $80, $00, $00
    db $24, $22, $00, $F8, $25, $22, $F1, $00, $19, $27, $F1, $F8, $1A, $27, $F8, $00
    db $1E, $27, $F8, $F8, $1F, $27, $80, $F8, $F8, $26, $07, $F8, $00, $27, $07, $00
    db $F8, $28, $02, $00, $00, $29, $02, $80, $F8, $00, $26, $27, $F8, $F8, $27, $27
    db $00, $00, $28, $22, $00, $F8, $29, $22, $80

    ld hl, sp+$00                                 ; $703F: $F8 $00
    inc sp                                        ; $7041: $33
    rlca                                          ; $7042: $07
    ld hl, sp-$08                                 ; $7043: $F8 $F8
    ld [hl-], a                                   ; $7045: $32
    rlca                                          ; $7046: $07
    ldh a, [rP1]                                  ; $7047: $F0 $00
    ld sp, $F007                                  ; $7049: $31 $07 $F0
    ld hl, sp+$30                                 ; $704C: $F8 $30
    rlca                                          ; $704E: $07
    add b                                         ; $704F: $80
    pop af                                        ; $7050: $F1
    nop                                           ; $7051: $00
    ld sp, $F107                                  ; $7052: $31 $07 $F1
    ld hl, sp+$30                                 ; $7055: $F8 $30
    rlca                                          ; $7057: $07
    ld sp, hl                                     ; $7058: $F9
    nop                                           ; $7059: $00
    dec [hl]                                      ; $705A: $35
    rlca                                          ; $705B: $07
    ld sp, hl                                     ; $705C: $F9
    ld hl, sp+$34                                 ; $705D: $F8 $34
    rlca                                          ; $705F: $07
    add b                                         ; $7060: $80
    ld hl, sp-$08                                 ; $7061: $F8 $F8
    inc sp                                        ; $7063: $33
    daa                                           ; $7064: $27
    ld hl, sp+$00                                 ; $7065: $F8 $00
    ld [hl-], a                                   ; $7067: $32
    daa                                           ; $7068: $27
    ldh a, [$F8]                                  ; $7069: $F0 $F8
    ld sp, $F027                                  ; $706B: $31 $27 $F0
    nop                                           ; $706E: $00
    jr nc, @+$29                                  ; $706F: $30 $27

    add b                                         ; $7071: $80
    pop af                                        ; $7072: $F1
    ld hl, sp+$31                                 ; $7073: $F8 $31
    daa                                           ; $7075: $27
    pop af                                        ; $7076: $F1
    nop                                           ; $7077: $00
    jr nc, jr_00E_70A1                            ; $7078: $30 $27

    ld sp, hl                                     ; $707A: $F9
    ld hl, sp+$35                                 ; $707B: $F8 $35
    daa                                           ; $707D: $27
    ld sp, hl                                     ; $707E: $F9
    nop                                           ; $707F: $00
    inc [hl]                                      ; $7080: $34
    daa                                           ; $7081: $27
    add b                                         ; $7082: $80
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    add hl, bc                                    ; $7085: $09
    ld [bc], a                                    ; $7086: $02
    nop                                           ; $7087: $00
    ld hl, sp+$08                                 ; $7088: $F8 $08
    ld [bc], a                                    ; $708A: $02
    ldh a, [rP1]                                  ; $708B: $F0 $00
    inc d                                         ; $708D: $14
    rlca                                          ; $708E: $07
    ldh a, [$F8]                                  ; $708F: $F0 $F8
    inc de                                        ; $7091: $13
    rlca                                          ; $7092: $07
    ld hl, sp+$00                                 ; $7093: $F8 $00
    ld d, $07                                     ; $7095: $16 $07
    ld hl, sp-$08                                 ; $7097: $F8 $F8
    dec d                                         ; $7099: $15
    rlca                                          ; $709A: $07
    add b                                         ; $709B: $80
    nop                                           ; $709C: $00
    ld hl, sp+$09                                 ; $709D: $F8 $09
    ld [hl+], a                                   ; $709F: $22
    nop                                           ; $70A0: $00

jr_00E_70A1:
    nop                                           ; $70A1: $00
    ld [$F022], sp                                ; $70A2: $08 $22 $F0
    ld hl, sp+$14                                 ; $70A5: $F8 $14
    daa                                           ; $70A7: $27
    ldh a, [rP1]                                  ; $70A8: $F0 $00
    inc de                                        ; $70AA: $13
    daa                                           ; $70AB: $27
    ld hl, sp-$08                                 ; $70AC: $F8 $F8
    ld d, $27                                     ; $70AE: $16 $27
    ld hl, sp+$00                                 ; $70B0: $F8 $00
    dec d                                         ; $70B2: $15
    daa                                           ; $70B3: $27
    add b                                         ; $70B4: $80
    nop                                           ; $70B5: $00
    nop                                           ; $70B6: $00
    inc c                                         ; $70B7: $0C
    ld [bc], a                                    ; $70B8: $02
    nop                                           ; $70B9: $00
    ld sp, hl                                     ; $70BA: $F9
    inc c                                         ; $70BB: $0C
    ld [hl+], a                                   ; $70BC: $22
    ld hl, sp+$00                                 ; $70BD: $F8 $00
    dec bc                                        ; $70BF: $0B
    daa                                           ; $70C0: $27
    ld hl, sp-$08                                 ; $70C1: $F8 $F8
    dec bc                                        ; $70C3: $0B
    rlca                                          ; $70C4: $07
    ldh a, [rP1]                                  ; $70C5: $F0 $00
    ld a, [bc]                                    ; $70C7: $0A
    daa                                           ; $70C8: $27
    ldh a, [$F8]                                  ; $70C9: $F0 $F8
    ld a, [bc]                                    ; $70CB: $0A
    rlca                                          ; $70CC: $07
    add b                                         ; $70CD: $80
    ld hl, sp+$00                                 ; $70CE: $F8 $00
    ld c, $07                                     ; $70D0: $0E $07
    ld hl, sp-$08                                 ; $70D2: $F8 $F8
    dec c                                         ; $70D4: $0D
    rlca                                          ; $70D5: $07
    nop                                           ; $70D6: $00
    ldh a, [rIF]                                  ; $70D7: $F0 $0F
    rlca                                          ; $70D9: $07
    nop                                           ; $70DA: $00
    ld [$0712], sp                                ; $70DB: $08 $12 $07
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    ld de, $0002                                  ; $70E0: $11 $02 $00
    ld hl, sp+$10                                 ; $70E3: $F8 $10
    ld [bc], a                                    ; $70E5: $02
    add b                                         ; $70E6: $80
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    inc c                                         ; $70E9: $0C
    ld [bc], a                                    ; $70EA: $02
    nop                                           ; $70EB: $00
    ld hl, sp+$0C                                 ; $70EC: $F8 $0C
    ld [hl+], a                                   ; $70EE: $22
    ld hl, sp+$00                                 ; $70EF: $F8 $00
    jr @+$29                                      ; $70F1: $18 $27

    ld hl, sp-$08                                 ; $70F3: $F8 $F8
    jr jr_00E_70FE                                ; $70F5: $18 $07

    ldh a, [rP1]                                  ; $70F7: $F0 $00
    ld [hl+], a                                   ; $70F9: $22
    daa                                           ; $70FA: $27
    ldh a, [$F8]                                  ; $70FB: $F0 $F8
    ld [hl+], a                                   ; $70FD: $22

jr_00E_70FE:
    rlca                                          ; $70FE: $07
    add b                                         ; $70FF: $80
    or $08                                        ; $7100: $F6 $08
    ld a, [de]                                    ; $7102: $1A
    rlca                                          ; $7103: $07
    ld hl, sp+$00                                 ; $7104: $F8 $00
    add hl, de                                    ; $7106: $19
    rlca                                          ; $7107: $07
    ld hl, sp-$08                                 ; $7108: $F8 $F8
    jr @+$09                                      ; $710A: $18 $07

    ldh a, [rP1]                                  ; $710C: $F0 $00
    rla                                           ; $710E: $17
    rlca                                          ; $710F: $07
    ldh a, [$F8]                                  ; $7110: $F0 $F8
    ld hl, $0007                                  ; $7112: $21 $07 $00
    nop                                           ; $7115: $00
    inc c                                         ; $7116: $0C
    ld [bc], a                                    ; $7117: $02
    nop                                           ; $7118: $00
    ld hl, sp+$0C                                 ; $7119: $F8 $0C
    ld [hl+], a                                   ; $711B: $22
    add b                                         ; $711C: $80
    ldh a, [$F8]                                  ; $711D: $F0 $F8
    ld [hl+], a                                   ; $711F: $22
    rlca                                          ; $7120: $07
    ld hl, sp+$00                                 ; $7121: $F8 $00
    dec e                                         ; $7123: $1D
    rlca                                          ; $7124: $07
    ld hl, sp-$08                                 ; $7125: $F8 $F8
    inc e                                         ; $7127: $1C
    rlca                                          ; $7128: $07
    ldh a, [rP1]                                  ; $7129: $F0 $00
    dec de                                        ; $712B: $1B
    rlca                                          ; $712C: $07
    or $08                                        ; $712D: $F6 $08
    ld a, [de]                                    ; $712F: $1A
    rlca                                          ; $7130: $07
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    inc c                                         ; $7133: $0C
    ld [bc], a                                    ; $7134: $02
    nop                                           ; $7135: $00
    ld hl, sp+$0C                                 ; $7136: $F8 $0C
    ld [hl+], a                                   ; $7138: $22
    add b                                         ; $7139: $80
    ldh a, [$F8]                                  ; $713A: $F0 $F8
    dec b                                         ; $713C: $05
    rlca                                          ; $713D: $07
    ld hl, sp+$00                                 ; $713E: $F8 $00
    jr nz, @+$09                                  ; $7140: $20 $07

    ld hl, sp-$08                                 ; $7142: $F8 $F8
    rra                                           ; $7144: $1F
    rlca                                          ; $7145: $07
    ldh a, [rP1]                                  ; $7146: $F0 $00
    ld e, $07                                     ; $7148: $1E $07
    or $08                                        ; $714A: $F6 $08
    ld a, [de]                                    ; $714C: $1A
    rlca                                          ; $714D: $07
    nop                                           ; $714E: $00
    nop                                           ; $714F: $00
    inc c                                         ; $7150: $0C
    ld [bc], a                                    ; $7151: $02
    nop                                           ; $7152: $00
    ld hl, sp+$0C                                 ; $7153: $F8 $0C
    ld [hl+], a                                   ; $7155: $22
    add b                                         ; $7156: $80
    ld hl, sp-$08                                 ; $7157: $F8 $F8
    dec d                                         ; $7159: $15
    rlca                                          ; $715A: $07
    ldh a, [rP1]                                  ; $715B: $F0 $00
    ld bc, $F007                                  ; $715D: $01 $07 $F0
    ld hl, sp+$04                                 ; $7160: $F8 $04
    rlca                                          ; $7162: $07
    ld hl, sp+$00                                 ; $7163: $F8 $00
    nop                                           ; $7165: $00
    rlca                                          ; $7166: $07
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    add hl, bc                                    ; $7169: $09
    ld [bc], a                                    ; $716A: $02
    nop                                           ; $716B: $00
    ld hl, sp+$08                                 ; $716C: $F8 $08
    ld [bc], a                                    ; $716E: $02
    add b                                         ; $716F: $80
    ld hl, sp+$06                                 ; $7170: $F8 $06
    ld [bc], a                                    ; $7172: $02
    nop                                           ; $7173: $00
    ld hl, sp-$08                                 ; $7174: $F8 $F8
    dec d                                         ; $7176: $15
    rlca                                          ; $7177: $07
    ldh a, [rP1]                                  ; $7178: $F0 $00
    ld bc, $F007                                  ; $717A: $01 $07 $F0
    ld hl, sp+$04                                 ; $717D: $F8 $04
    rlca                                          ; $717F: $07
    ld hl, sp+$00                                 ; $7180: $F8 $00
    nop                                           ; $7182: $00
    rlca                                          ; $7183: $07
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    add hl, bc                                    ; $7186: $09
    ld [bc], a                                    ; $7187: $02
    nop                                           ; $7188: $00
    ld hl, sp+$08                                 ; $7189: $F8 $08
    ld [bc], a                                    ; $718B: $02
    add b                                         ; $718C: $80
    db $F4                                        ; $718D: $F4
    dec b                                         ; $718E: $05
    inc bc                                        ; $718F: $03
    nop                                           ; $7190: $00
    ld hl, sp-$08                                 ; $7191: $F8 $F8
    dec d                                         ; $7193: $15
    rlca                                          ; $7194: $07
    ldh a, [rP1]                                  ; $7195: $F0 $00
    ld bc, $F007                                  ; $7197: $01 $07 $F0
    ld hl, sp+$04                                 ; $719A: $F8 $04
    rlca                                          ; $719C: $07
    ld hl, sp+$00                                 ; $719D: $F8 $00
    nop                                           ; $719F: $00
    rlca                                          ; $71A0: $07
    nop                                           ; $71A1: $00
    nop                                           ; $71A2: $00
    add hl, bc                                    ; $71A3: $09
    ld [bc], a                                    ; $71A4: $02
    nop                                           ; $71A5: $00
    ld hl, sp+$08                                 ; $71A6: $F8 $08
    ld [bc], a                                    ; $71A8: $02
    add b                                         ; $71A9: $80
    ldh a, [rP1]                                  ; $71AA: $F0 $00
    ld hl, $F027                                  ; $71AC: $21 $27 $F0
    ld hl, sp+$21                                 ; $71AF: $F8 $21
    rlca                                          ; $71B1: $07
    nop                                           ; $71B2: $00
    nop                                           ; $71B3: $00
    inc c                                         ; $71B4: $0C
    ld [bc], a                                    ; $71B5: $02
    nop                                           ; $71B6: $00
    ld hl, sp+$0C                                 ; $71B7: $F8 $0C
    ld [hl+], a                                   ; $71B9: $22
    ld hl, sp+$00                                 ; $71BA: $F8 $00
    jr @+$29                                      ; $71BC: $18 $27

    ld hl, sp-$08                                 ; $71BE: $F8 $F8
    jr @+$09                                      ; $71C0: $18 $07

    add b                                         ; $71C2: $80

    db $4D, $08, $08, $00, $FF, $44, $6F, $5D, $6F, $76, $6F, $5D, $6F, $46, $C3, $71

    ld c, l                                       ; $71D3: $4D
    ld [$0008], sp                                ; $71D4: $08 $08 $00
    ld bc, $6F01                                  ; $71D7: $01 $01 $6F
    ld d, $6F                                     ; $71DA: $16 $6F
    cpl                                           ; $71DC: $2F
    ld l, a                                       ; $71DD: $6F
    ld d, $6F                                     ; $71DE: $16 $6F
    ld b, [hl]                                    ; $71E0: $46
    db $D3                                        ; $71E1: $D3
    ld [hl], c                                    ; $71E2: $71
    ld c, l                                       ; $71E3: $4D
    ld [$FF08], sp                                ; $71E4: $08 $08 $FF
    nop                                           ; $71E7: $00
    sub $6F                                       ; $71E8: $D6 $6F
    rst $28                                       ; $71EA: $EF
    ld l, a                                       ; $71EB: $6F
    inc b                                         ; $71EC: $04
    ld [hl], b                                    ; $71ED: $70
    rst $28                                       ; $71EE: $EF
    ld l, a                                       ; $71EF: $6F
    ld b, [hl]                                    ; $71F0: $46
    db $E3                                        ; $71F1: $E3
    ld [hl], c                                    ; $71F2: $71

    db $4D, $08, $08, $01, $00, $8F, $6F, $A8, $6F

    cp l                                          ; $71FC: $BD
    ld l, a                                       ; $71FD: $6F
    xor b                                         ; $71FE: $A8
    ld l, a                                       ; $71FF: $6F
    ld b, [hl]                                    ; $7200: $46
    di                                            ; $7201: $F3
    ld [hl], c                                    ; $7202: $71

    db $4D, $08, $08, $00, $FE, $44, $6F, $5D, $6F, $76, $6F, $5D, $6F, $46, $03, $72
    db $4D, $08, $08, $00, $02, $01, $6F, $16, $6F, $2F, $6F, $16, $6F, $46, $13, $72
    db $4D, $08, $08, $FE, $00, $D6, $6F, $EF, $6F, $04, $70, $EF, $6F, $46, $23, $72
    db $4D, $08, $08, $02, $00, $8F, $6F, $A8, $6F

    cp l                                          ; $723C: $BD
    ld l, a                                       ; $723D: $6F
    xor b                                         ; $723E: $A8
    ld l, a                                       ; $723F: $6F
    ld b, [hl]                                    ; $7240: $46
    inc sp                                        ; $7241: $33
    ld [hl], d                                    ; $7242: $72

    db $4C, $FF, $00, $00, $5D, $6F, $00, $46, $43, $72, $4C, $FF, $00, $00, $16, $6F
    db $00, $46, $4D, $72, $4C, $FF, $00, $00, $EF, $6F, $00, $46, $57, $72, $4C, $FF
    db $00, $00, $A8, $6F, $00, $46, $61, $72

    ld c, h                                       ; $726B: $4C
    rst $38                                       ; $726C: $FF
    nop                                           ; $726D: $00
    nop                                           ; $726E: $00
    add sp, $6E                                   ; $726F: $E8 $6E
    nop                                           ; $7271: $00
    ld b, [hl]                                    ; $7272: $46
    ld l, e                                       ; $7273: $6B
    ld [hl], d                                    ; $7274: $72
    ld c, h                                       ; $7275: $4C
    rst $38                                       ; $7276: $FF
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    rst $08                                       ; $7279: $CF
    ld l, [hl]                                    ; $727A: $6E
    nop                                           ; $727B: $00
    ld b, [hl]                                    ; $727C: $46
    ld [hl], l                                    ; $727D: $75
    ld [hl], d                                    ; $727E: $72

    db $4C, $FF, $00, $00, $B6, $6E

    nop                                           ; $7285: $00
    ld b, [hl]                                    ; $7286: $46
    ld a, a                                       ; $7287: $7F
    ld [hl], d                                    ; $7288: $72

    db $4C, $FF, $00, $00, $9D, $6E

    nop                                           ; $728F: $00
    ld b, [hl]                                    ; $7290: $46
    adc c                                         ; $7291: $89
    ld [hl], d                                    ; $7292: $72
    ld c, h                                       ; $7293: $4C
    rst $38                                       ; $7294: $FF
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    ld l, $70                                     ; $7297: $2E $70
    nop                                           ; $7299: $00
    ld b, [hl]                                    ; $729A: $46
    sub e                                         ; $729B: $93
    ld [hl], d                                    ; $729C: $72

    db $4C, $FF, $00, $00, $1D, $70

    nop                                           ; $72A3: $00
    ld b, [hl]                                    ; $72A4: $46
    sbc l                                         ; $72A5: $9D
    ld [hl], d                                    ; $72A6: $72
    ld c, l                                       ; $72A7: $4D
    inc b                                         ; $72A8: $04
    inc b                                         ; $72A9: $04
    ld bc, $1DFC                                  ; $72AA: $01 $FC $1D
    ld [hl], b                                    ; $72AD: $70
    ld l, $70                                     ; $72AE: $2E $70
    ld b, [hl]                                    ; $72B0: $46
    and a                                         ; $72B1: $A7
    ld [hl], d                                    ; $72B2: $72

    db $4D, $04, $04, $00, $04, $1D, $70, $2E, $70, $46, $B3, $72

    ld c, l                                       ; $72BF: $4D
    inc b                                         ; $72C0: $04
    ld [rRAMG], sp                                ; $72C1: $08 $00 $00
    ld h, c                                       ; $72C4: $61
    ld [hl], b                                    ; $72C5: $70
    ld [hl], d                                    ; $72C6: $72
    ld [hl], b                                    ; $72C7: $70
    ld b, [hl]                                    ; $72C8: $46
    cp a                                          ; $72C9: $BF
    ld [hl], d                                    ; $72CA: $72
    ld c, l                                       ; $72CB: $4D
    inc b                                         ; $72CC: $04
    ld [rRAMG], sp                                ; $72CD: $08 $00 $00
    ccf                                           ; $72D0: $3F
    ld [hl], b                                    ; $72D1: $70
    ld d, b                                       ; $72D2: $50
    ld [hl], b                                    ; $72D3: $70
    ld b, [hl]                                    ; $72D4: $46
    bit 6, d                                      ; $72D5: $CB $72
    ld c, h                                       ; $72D7: $4C
    add b                                         ; $72D8: $80
    nop                                           ; $72D9: $00
    nop                                           ; $72DA: $00
    xor d                                         ; $72DB: $AA
    ld [hl], c                                    ; $72DC: $71
    ld h, b                                       ; $72DD: $60
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    sbc h                                         ; $72E0: $9C
    ld [hl], b                                    ; $72E1: $70
    add b                                         ; $72E2: $80
    nop                                           ; $72E3: $00
    nop                                           ; $72E4: $00
    xor d                                         ; $72E5: $AA
    ld [hl], c                                    ; $72E6: $71
    ld h, b                                       ; $72E7: $60
    nop                                           ; $72E8: $00
    nop                                           ; $72E9: $00
    add e                                         ; $72EA: $83
    ld [hl], b                                    ; $72EB: $70
    nop                                           ; $72EC: $00
    ld b, [hl]                                    ; $72ED: $46
    rst $10                                       ; $72EE: $D7
    ld [hl], d                                    ; $72EF: $72
    ld c, h                                       ; $72F0: $4C
    stop                                          ; $72F1: $10 $00
    nop                                           ; $72F3: $00
    rst $20                                       ; $72F4: $E7
    ld [hl], b                                    ; $72F5: $70
    jr nz, jr_00E_72F8                            ; $72F6: $20 $00

jr_00E_72F8:
    nop                                           ; $72F8: $00
    ld a, [hl-]                                   ; $72F9: $3A
    ld [hl], c                                    ; $72FA: $71
    nop                                           ; $72FB: $00
    ld c, h                                       ; $72FC: $4C
    inc b                                         ; $72FD: $04
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    dec e                                         ; $7300: $1D
    ld [hl], c                                    ; $7301: $71
    inc b                                         ; $7302: $04
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    ld [hl], c                                    ; $7306: $71
    stop                                          ; $7307: $10 $00
    nop                                           ; $7309: $00
    dec e                                         ; $730A: $1D
    ld [hl], c                                    ; $730B: $71
    stop                                          ; $730C: $10 $00
    nop                                           ; $730E: $00
    ld a, [hl-]                                   ; $730F: $3A
    ld [hl], c                                    ; $7310: $71
    nop                                           ; $7311: $00
    ld b, [hl]                                    ; $7312: $46
    db $FC                                        ; $7313: $FC
    ld [hl], d                                    ; $7314: $72
    ld c, l                                       ; $7315: $4D
    jr nz, jr_00E_731C                            ; $7316: $20 $04

    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    ld d, a                                       ; $731A: $57
    ld [hl], c                                    ; $731B: $71

jr_00E_731C:
    ld [hl], b                                    ; $731C: $70
    ld [hl], c                                    ; $731D: $71
    adc l                                         ; $731E: $8D
    ld [hl], c                                    ; $731F: $71
    ld [hl], b                                    ; $7320: $70
    ld [hl], c                                    ; $7321: $71
    ld d, a                                       ; $7322: $57
    ld [hl], c                                    ; $7323: $71
    ld [hl], b                                    ; $7324: $70
    ld [hl], c                                    ; $7325: $71
    adc l                                         ; $7326: $8D
    ld [hl], c                                    ; $7327: $71
    ld [hl], b                                    ; $7328: $70
    ld [hl], c                                    ; $7329: $71
    ld d, a                                       ; $732A: $57
    ld [hl], c                                    ; $732B: $71
    ld [hl], b                                    ; $732C: $70
    ld [hl], c                                    ; $732D: $71
    adc l                                         ; $732E: $8D
    ld [hl], c                                    ; $732F: $71
    ld [hl], b                                    ; $7330: $70
    ld [hl], c                                    ; $7331: $71
    ld d, a                                       ; $7332: $57
    ld [hl], c                                    ; $7333: $71
    ld [hl], b                                    ; $7334: $70
    ld [hl], c                                    ; $7335: $71
    adc l                                         ; $7336: $8D
    ld [hl], c                                    ; $7337: $71
    ld [hl], b                                    ; $7338: $70
    ld [hl], c                                    ; $7339: $71
    ld c, h                                       ; $733A: $4C
    jr nz, jr_00E_733D                            ; $733B: $20 $00

jr_00E_733D:
    nop                                           ; $733D: $00
    ld d, a                                       ; $733E: $57
    ld [hl], c                                    ; $733F: $71
    nop                                           ; $7340: $00
    ld b, [hl]                                    ; $7341: $46
    rst $10                                       ; $7342: $D7
    ld [hl], d                                    ; $7343: $72
    ld c, h                                       ; $7344: $4C
    rst $38                                       ; $7345: $FF
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    or l                                          ; $7348: $B5
    ld [hl], b                                    ; $7349: $70
    nop                                           ; $734A: $00
    ld b, [hl]                                    ; $734B: $46
    ld c, [hl]                                    ; $734C: $4E
    ld [hl], e                                    ; $734D: $73
    ld c, h                                       ; $734E: $4C
    rst $38                                       ; $734F: $FF
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    adc $70                                       ; $7352: $CE $70
    nop                                           ; $7354: $00
    ld b, [hl]                                    ; $7355: $46
    ld c, [hl]                                    ; $7356: $4E
    ld [hl], e                                    ; $7357: $73
    ld c, e                                       ; $7358: $4B
    inc bc                                        ; $7359: $03
    ld c, $00                                     ; $735A: $0E $00
    nop                                           ; $735C: $00
    ld l, a                                       ; $735D: $6F
    ld [hl], e                                    ; $735E: $73
    ld c, $03                                     ; $735F: $0E $03
    nop                                           ; $7361: $00
    halt                                          ; $7362: $76
    ld [hl], e                                    ; $7363: $73
    ld c, $02                                     ; $7364: $0E $02
    nop                                           ; $7366: $00
    add h                                         ; $7367: $84
    ld [hl], e                                    ; $7368: $73
    ld c, $01                                     ; $7369: $0E $01
    nop                                           ; $736B: $00
    ld a, l                                       ; $736C: $7D
    ld [hl], e                                    ; $736D: $73
    rst $38                                       ; $736E: $FF
    inc d                                         ; $736F: $14
    ld c, $43                                     ; $7370: $0E $43
    ld [hl], d                                    ; $7372: $72
    ld h, d                                       ; $7373: $62
    ld bc, $1412                                  ; $7374: $01 $12 $14
    ld c, $4D                                     ; $7377: $0E $4D
    ld [hl], d                                    ; $7379: $72
    ld h, d                                       ; $737A: $62
    ld bc, $1412                                  ; $737B: $01 $12 $14
    ld c, $57                                     ; $737E: $0E $57
    ld [hl], d                                    ; $7380: $72
    ld h, d                                       ; $7381: $62
    ld bc, $1412                                  ; $7382: $01 $12 $14
    ld c, $61                                     ; $7385: $0E $61
    ld [hl], d                                    ; $7387: $72
    ld h, d                                       ; $7388: $62
    ld bc, $F012                                  ; $7389: $01 $12 $F0
    ld hl, sp+$00                                 ; $738C: $F8 $00
    rlca                                          ; $738E: $07
    ldh a, [rP1]                                  ; $738F: $F0 $00
    ld bc, $F807                                  ; $7391: $01 $07 $F8
    ld hl, sp+$08                                 ; $7394: $F8 $08
    rlca                                          ; $7396: $07
    ld hl, sp+$00                                 ; $7397: $F8 $00
    add hl, bc                                    ; $7399: $09
    rlca                                          ; $739A: $07
    nop                                           ; $739B: $00
    ld hl, sp+$12                                 ; $739C: $F8 $12
    ld [bc], a                                    ; $739E: $02
    nop                                           ; $739F: $00
    nop                                           ; $73A0: $00
    inc de                                        ; $73A1: $13
    ld [bc], a                                    ; $73A2: $02
    add b                                         ; $73A3: $80
    ldh a, [rP1]                                  ; $73A4: $F0 $00
    nop                                           ; $73A6: $00
    daa                                           ; $73A7: $27
    ldh a, [$F8]                                  ; $73A8: $F0 $F8
    ld bc, $F827                                  ; $73AA: $01 $27 $F8
    nop                                           ; $73AD: $00
    ld [$F827], sp                                ; $73AE: $08 $27 $F8
    ld hl, sp+$09                                 ; $73B1: $F8 $09
    daa                                           ; $73B3: $27
    nop                                           ; $73B4: $00
    nop                                           ; $73B5: $00
    ld [de], a                                    ; $73B6: $12
    ld [hl+], a                                   ; $73B7: $22
    nop                                           ; $73B8: $00
    ld hl, sp+$13                                 ; $73B9: $F8 $13
    ld [hl+], a                                   ; $73BB: $22
    add b                                         ; $73BC: $80
    ldh a, [$F8]                                  ; $73BD: $F0 $F8
    ld b, $07                                     ; $73BF: $06 $07
    ldh a, [rP1]                                  ; $73C1: $F0 $00
    rlca                                          ; $73C3: $07
    rlca                                          ; $73C4: $07
    ld hl, sp-$08                                 ; $73C5: $F8 $F8
    inc c                                         ; $73C7: $0C
    rlca                                          ; $73C8: $07
    ld hl, sp+$00                                 ; $73C9: $F8 $00
    dec c                                         ; $73CB: $0D
    rlca                                          ; $73CC: $07
    nop                                           ; $73CD: $00
    ld hl, sp+$16                                 ; $73CE: $F8 $16
    ld [bc], a                                    ; $73D0: $02
    nop                                           ; $73D1: $00
    nop                                           ; $73D2: $00
    rla                                           ; $73D3: $17
    ld [bc], a                                    ; $73D4: $02
    add b                                         ; $73D5: $80
    ldh a, [rP1]                                  ; $73D6: $F0 $00
    ld b, $27                                     ; $73D8: $06 $27
    ldh a, [$F8]                                  ; $73DA: $F0 $F8
    rlca                                          ; $73DC: $07
    daa                                           ; $73DD: $27
    ld hl, sp+$00                                 ; $73DE: $F8 $00
    inc c                                         ; $73E0: $0C
    daa                                           ; $73E1: $27
    ld hl, sp-$08                                 ; $73E2: $F8 $F8
    dec c                                         ; $73E4: $0D
    daa                                           ; $73E5: $27
    nop                                           ; $73E6: $00
    nop                                           ; $73E7: $00
    ld d, $22                                     ; $73E8: $16 $22
    nop                                           ; $73EA: $00
    ld hl, sp+$17                                 ; $73EB: $F8 $17
    ld [hl+], a                                   ; $73ED: $22
    add b                                         ; $73EE: $80
    pop af                                        ; $73EF: $F1
    ld hl, sp+$02                                 ; $73F0: $F8 $02
    rlca                                          ; $73F2: $07
    pop af                                        ; $73F3: $F1
    nop                                           ; $73F4: $00
    inc bc                                        ; $73F5: $03
    rlca                                          ; $73F6: $07
    ld hl, sp-$08                                 ; $73F7: $F8 $F8
    ld c, $07                                     ; $73F9: $0E $07
    ld hl, sp+$00                                 ; $73FB: $F8 $00
    rrca                                          ; $73FD: $0F
    rlca                                          ; $73FE: $07
    nop                                           ; $73FF: $00
    db $FC                                        ; $7400: $FC
    jr @+$04                                      ; $7401: $18 $02

    add b                                         ; $7403: $80
    ldh a, [$F8]                                  ; $7404: $F0 $F8
    ld [bc], a                                    ; $7406: $02
    rlca                                          ; $7407: $07
    ldh a, [rP1]                                  ; $7408: $F0 $00
    inc bc                                        ; $740A: $03
    rlca                                          ; $740B: $07
    ld hl, sp-$08                                 ; $740C: $F8 $F8
    ld a, [bc]                                    ; $740E: $0A
    daa                                           ; $740F: $27
    ld hl, sp+$00                                 ; $7410: $F8 $00
    ld a, [bc]                                    ; $7412: $0A
    rlca                                          ; $7413: $07
    nop                                           ; $7414: $00
    ld hl, sp+$14                                 ; $7415: $F8 $14
    ld [hl+], a                                   ; $7417: $22
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    inc d                                         ; $741A: $14
    ld [bc], a                                    ; $741B: $02
    add b                                         ; $741C: $80
    pop af                                        ; $741D: $F1
    nop                                           ; $741E: $00
    ld [bc], a                                    ; $741F: $02
    daa                                           ; $7420: $27
    pop af                                        ; $7421: $F1
    ld hl, sp+$03                                 ; $7422: $F8 $03
    daa                                           ; $7424: $27
    ld hl, sp+$00                                 ; $7425: $F8 $00
    ld c, $27                                     ; $7427: $0E $27
    ld hl, sp-$08                                 ; $7429: $F8 $F8
    rrca                                          ; $742B: $0F
    daa                                           ; $742C: $27
    nop                                           ; $742D: $00
    db $FC                                        ; $742E: $FC
    jr jr_00E_7453                                ; $742F: $18 $22

    add b                                         ; $7431: $80
    pop af                                        ; $7432: $F1
    nop                                           ; $7433: $00
    dec b                                         ; $7434: $05
    rlca                                          ; $7435: $07
    ld hl, sp-$08                                 ; $7436: $F8 $F8
    db $10                                        ; $7438: $10
    rlca                                          ; $7439: $07
    ld hl, sp+$00                                 ; $743A: $F8 $00
    ld de, $0007                                  ; $743C: $11 $07 $00
    ld hl, sp+$19                                 ; $743F: $F8 $19
    ld [bc], a                                    ; $7441: $02
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    ld a, [de]                                    ; $7444: $1A
    ld [bc], a                                    ; $7445: $02
    pop af                                        ; $7446: $F1
    ld hl, sp+$04                                 ; $7447: $F8 $04
    rlca                                          ; $7449: $07
    add b                                         ; $744A: $80
    ldh a, [$F8]                                  ; $744B: $F0 $F8
    inc b                                         ; $744D: $04
    rlca                                          ; $744E: $07
    ldh a, [rP1]                                  ; $744F: $F0 $00
    dec b                                         ; $7451: $05
    rlca                                          ; $7452: $07

jr_00E_7453:
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    dec d                                         ; $7455: $15
    ld [bc], a                                    ; $7456: $02
    nop                                           ; $7457: $00
    ld hl, sp+$15                                 ; $7458: $F8 $15
    ld [hl+], a                                   ; $745A: $22
    ld hl, sp+$00                                 ; $745B: $F8 $00
    dec bc                                        ; $745D: $0B
    rlca                                          ; $745E: $07
    ld hl, sp-$08                                 ; $745F: $F8 $F8
    dec bc                                        ; $7461: $0B
    daa                                           ; $7462: $27
    add b                                         ; $7463: $80
    pop af                                        ; $7464: $F1
    nop                                           ; $7465: $00
    dec b                                         ; $7466: $05
    rlca                                          ; $7467: $07
    ld hl, sp+$00                                 ; $7468: $F8 $00
    db $10                                        ; $746A: $10
    daa                                           ; $746B: $27
    ld hl, sp-$08                                 ; $746C: $F8 $F8
    ld de, $0027                                  ; $746E: $11 $27 $00
    nop                                           ; $7471: $00
    add hl, de                                    ; $7472: $19
    ld [hl+], a                                   ; $7473: $22
    nop                                           ; $7474: $00
    ld hl, sp+$1A                                 ; $7475: $F8 $1A
    ld [hl+], a                                   ; $7477: $22
    pop af                                        ; $7478: $F1
    ld hl, sp+$04                                 ; $7479: $F8 $04
    rlca                                          ; $747B: $07
    add b                                         ; $747C: $80
    pop af                                        ; $747D: $F1
    ld hl, sp+$1B                                 ; $747E: $F8 $1B
    rlca                                          ; $7480: $07
    pop af                                        ; $7481: $F1
    nop                                           ; $7482: $00
    inc e                                         ; $7483: $1C
    rlca                                          ; $7484: $07
    ld hl, sp-$08                                 ; $7485: $F8 $F8
    dec e                                         ; $7487: $1D
    rlca                                          ; $7488: $07
    ld hl, sp+$00                                 ; $7489: $F8 $00
    ld e, $07                                     ; $748B: $1E $07
    nop                                           ; $748D: $00
    ld hl, sp+$23                                 ; $748E: $F8 $23
    ld [bc], a                                    ; $7490: $02
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    inc h                                         ; $7493: $24
    ld [bc], a                                    ; $7494: $02
    add b                                         ; $7495: $80
    ldh a, [$F8]                                  ; $7496: $F0 $F8
    dec de                                        ; $7498: $1B
    rlca                                          ; $7499: $07
    ldh a, [rP1]                                  ; $749A: $F0 $00
    inc e                                         ; $749C: $1C
    rlca                                          ; $749D: $07
    nop                                           ; $749E: $00
    ld hl, sp+$25                                 ; $749F: $F8 $25
    ld [bc], a                                    ; $74A1: $02
    nop                                           ; $74A2: $00
    nop                                           ; $74A3: $00
    ld h, $02                                     ; $74A4: $26 $02
    ld hl, sp-$08                                 ; $74A6: $F8 $F8
    rra                                           ; $74A8: $1F
    rlca                                          ; $74A9: $07
    ld hl, sp+$00                                 ; $74AA: $F8 $00
    jr nz, jr_00E_74B5                            ; $74AC: $20 $07

    add b                                         ; $74AE: $80
    pop af                                        ; $74AF: $F1
    ld hl, sp+$1B                                 ; $74B0: $F8 $1B
    rlca                                          ; $74B2: $07
    pop af                                        ; $74B3: $F1
    nop                                           ; $74B4: $00

jr_00E_74B5:
    inc e                                         ; $74B5: $1C
    rlca                                          ; $74B6: $07
    ld hl, sp-$08                                 ; $74B7: $F8 $F8
    ld hl, $F807                                  ; $74B9: $21 $07 $F8
    nop                                           ; $74BC: $00
    ld [hl+], a                                   ; $74BD: $22
    rlca                                          ; $74BE: $07
    nop                                           ; $74BF: $00
    ld hl, sp+$27                                 ; $74C0: $F8 $27
    ld [bc], a                                    ; $74C2: $02
    nop                                           ; $74C3: $00
    nop                                           ; $74C4: $00
    jr z, jr_00E_74C9                             ; $74C5: $28 $02

    add b                                         ; $74C7: $80
    pop af                                        ; $74C8: $F1

jr_00E_74C9:
    nop                                           ; $74C9: $00
    dec de                                        ; $74CA: $1B
    daa                                           ; $74CB: $27
    pop af                                        ; $74CC: $F1
    ld hl, sp+$1C                                 ; $74CD: $F8 $1C
    daa                                           ; $74CF: $27
    ld hl, sp+$00                                 ; $74D0: $F8 $00
    dec e                                         ; $74D2: $1D
    daa                                           ; $74D3: $27
    ld hl, sp-$08                                 ; $74D4: $F8 $F8
    ld e, $27                                     ; $74D6: $1E $27
    nop                                           ; $74D8: $00
    nop                                           ; $74D9: $00
    inc hl                                        ; $74DA: $23
    ld [hl+], a                                   ; $74DB: $22
    nop                                           ; $74DC: $00
    ld hl, sp+$24                                 ; $74DD: $F8 $24
    ld [hl+], a                                   ; $74DF: $22
    add b                                         ; $74E0: $80
    ldh a, [rP1]                                  ; $74E1: $F0 $00
    dec de                                        ; $74E3: $1B
    daa                                           ; $74E4: $27
    ldh a, [$F8]                                  ; $74E5: $F0 $F8
    inc e                                         ; $74E7: $1C
    daa                                           ; $74E8: $27
    nop                                           ; $74E9: $00
    nop                                           ; $74EA: $00
    dec h                                         ; $74EB: $25
    ld [hl+], a                                   ; $74EC: $22
    nop                                           ; $74ED: $00
    ld hl, sp+$26                                 ; $74EE: $F8 $26
    ld [hl+], a                                   ; $74F0: $22
    ld hl, sp+$00                                 ; $74F1: $F8 $00
    rra                                           ; $74F3: $1F
    daa                                           ; $74F4: $27
    ld hl, sp-$08                                 ; $74F5: $F8 $F8
    jr nz, jr_00E_7520                            ; $74F7: $20 $27

    add b                                         ; $74F9: $80
    pop af                                        ; $74FA: $F1
    nop                                           ; $74FB: $00
    dec de                                        ; $74FC: $1B
    daa                                           ; $74FD: $27
    pop af                                        ; $74FE: $F1
    ld hl, sp+$1C                                 ; $74FF: $F8 $1C
    daa                                           ; $7501: $27
    ld hl, sp+$00                                 ; $7502: $F8 $00
    ld hl, $F827                                  ; $7504: $21 $27 $F8
    ld hl, sp+$22                                 ; $7507: $F8 $22
    daa                                           ; $7509: $27
    nop                                           ; $750A: $00
    nop                                           ; $750B: $00
    daa                                           ; $750C: $27
    ld [hl+], a                                   ; $750D: $22
    nop                                           ; $750E: $00
    ld hl, sp+$28                                 ; $750F: $F8 $28
    ld [hl+], a                                   ; $7511: $22
    add b                                         ; $7512: $80
    ld hl, sp+$00                                 ; $7513: $F8 $00
    inc de                                        ; $7515: $13
    rlca                                          ; $7516: $07
    ld hl, sp-$08                                 ; $7517: $F8 $F8
    ld [bc], a                                    ; $7519: $02
    rlca                                          ; $751A: $07
    nop                                           ; $751B: $00
    nop                                           ; $751C: $00
    dec d                                         ; $751D: $15
    ld [bc], a                                    ; $751E: $02
    nop                                           ; $751F: $00

jr_00E_7520:
    ld hl, sp+$14                                 ; $7520: $F8 $14
    ld [bc], a                                    ; $7522: $02
    ldh a, [rP1]                                  ; $7523: $F0 $00
    ld bc, $F007                                  ; $7525: $01 $07 $F0
    ld hl, sp+$00                                 ; $7528: $F8 $00
    rlca                                          ; $752A: $07
    add b                                         ; $752B: $80
    ld hl, sp-$08                                 ; $752C: $F8 $F8
    inc de                                        ; $752E: $13
    daa                                           ; $752F: $27
    ld hl, sp+$00                                 ; $7530: $F8 $00
    ld [bc], a                                    ; $7532: $02
    daa                                           ; $7533: $27
    nop                                           ; $7534: $00
    ld hl, sp+$15                                 ; $7535: $F8 $15
    ld [hl+], a                                   ; $7537: $22
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    inc d                                         ; $753A: $14
    ld [hl+], a                                   ; $753B: $22
    ldh a, [$F8]                                  ; $753C: $F0 $F8
    ld bc, $F027                                  ; $753E: $01 $27 $F0
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    daa                                           ; $7543: $27
    add b                                         ; $7544: $80
    nop                                           ; $7545: $00
    ld sp, hl                                     ; $7546: $F9
    ld a, [bc]                                    ; $7547: $0A
    ld [hl+], a                                   ; $7548: $22
    nop                                           ; $7549: $00
    nop                                           ; $754A: $00
    ld a, [bc]                                    ; $754B: $0A
    ld [bc], a                                    ; $754C: $02
    ld hl, sp-$08                                 ; $754D: $F8 $F8
    ld e, $27                                     ; $754F: $1E $27
    ld hl, sp+$00                                 ; $7551: $F8 $00
    ld e, $07                                     ; $7553: $1E $07
    ldh a, [rP1]                                  ; $7555: $F0 $00
    rla                                           ; $7557: $17
    rlca                                          ; $7558: $07
    ldh a, [$F8]                                  ; $7559: $F0 $F8
    ld d, $07                                     ; $755B: $16 $07
    add b                                         ; $755D: $80
    ld hl, sp+$00                                 ; $755E: $F8 $00
    add hl, de                                    ; $7560: $19
    rlca                                          ; $7561: $07
    ld hl, sp-$08                                 ; $7562: $F8 $F8
    jr jr_00E_756D                                ; $7564: $18 $07

    nop                                           ; $7566: $00
    ld sp, hl                                     ; $7567: $F9
    ld a, [bc]                                    ; $7568: $0A
    ld [hl+], a                                   ; $7569: $22
    nop                                           ; $756A: $00
    nop                                           ; $756B: $00
    ld a, [bc]                                    ; $756C: $0A

jr_00E_756D:
    ld [bc], a                                    ; $756D: $02
    ldh a, [rP1]                                  ; $756E: $F0 $00
    rla                                           ; $7570: $17
    rlca                                          ; $7571: $07
    ldh a, [$F8]                                  ; $7572: $F0 $F8
    ld d, $07                                     ; $7574: $16 $07
    add b                                         ; $7576: $80
    ld hl, sp-$08                                 ; $7577: $F8 $F8
    ld a, [de]                                    ; $7579: $1A
    daa                                           ; $757A: $27
    ld hl, sp+$00                                 ; $757B: $F8 $00
    ld a, [de]                                    ; $757D: $1A
    rlca                                          ; $757E: $07
    nop                                           ; $757F: $00
    ld sp, hl                                     ; $7580: $F9
    ld a, [bc]                                    ; $7581: $0A
    ld [hl+], a                                   ; $7582: $22
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    ld a, [bc]                                    ; $7585: $0A
    ld [bc], a                                    ; $7586: $02
    ldh a, [rP1]                                  ; $7587: $F0 $00
    rla                                           ; $7589: $17
    rlca                                          ; $758A: $07
    ldh a, [$F8]                                  ; $758B: $F0 $F8
    ld d, $07                                     ; $758D: $16 $07
    add b                                         ; $758F: $80
    ld hl, sp-$10                                 ; $7590: $F8 $F0
    inc e                                         ; $7592: $1C
    daa                                           ; $7593: $27
    ld hl, sp-$08                                 ; $7594: $F8 $F8
    dec de                                        ; $7596: $1B
    daa                                           ; $7597: $27
    ld hl, sp+$08                                 ; $7598: $F8 $08
    inc e                                         ; $759A: $1C
    rlca                                          ; $759B: $07
    ld hl, sp+$00                                 ; $759C: $F8 $00
    dec de                                        ; $759E: $1B
    rlca                                          ; $759F: $07
    nop                                           ; $75A0: $00
    ld sp, hl                                     ; $75A1: $F9
    ld a, [bc]                                    ; $75A2: $0A
    ld [hl+], a                                   ; $75A3: $22
    nop                                           ; $75A4: $00
    nop                                           ; $75A5: $00
    ld a, [bc]                                    ; $75A6: $0A
    ld [bc], a                                    ; $75A7: $02
    ldh a, [rP1]                                  ; $75A8: $F0 $00
    rla                                           ; $75AA: $17
    rlca                                          ; $75AB: $07
    ldh a, [$F8]                                  ; $75AC: $F0 $F8
    ld d, $07                                     ; $75AE: $16 $07
    add b                                         ; $75B0: $80
    nop                                           ; $75B1: $00
    nop                                           ; $75B2: $00
    ld a, [bc]                                    ; $75B3: $0A
    ld [bc], a                                    ; $75B4: $02
    nop                                           ; $75B5: $00
    ld sp, hl                                     ; $75B6: $F9
    ld a, [bc]                                    ; $75B7: $0A
    ld [hl+], a                                   ; $75B8: $22
    ld hl, sp+$00                                 ; $75B9: $F8 $00
    add hl, bc                                    ; $75BB: $09
    daa                                           ; $75BC: $27
    ld hl, sp-$08                                 ; $75BD: $F8 $F8
    add hl, bc                                    ; $75BF: $09
    rlca                                          ; $75C0: $07
    ldh a, [rP1]                                  ; $75C1: $F0 $00
    dec e                                         ; $75C3: $1D
    rlca                                          ; $75C4: $07
    ldh a, [$F8]                                  ; $75C5: $F0 $F8
    ld [$8007], sp                                ; $75C7: $08 $07 $80
    ld a, [c]                                     ; $75CA: $F2
    nop                                           ; $75CB: $00
    inc c                                         ; $75CC: $0C
    rlca                                          ; $75CD: $07
    ld a, [c]                                     ; $75CE: $F2
    ld hl, sp+$0B                                 ; $75CF: $F8 $0B
    rlca                                          ; $75D1: $07
    ld [bc], a                                    ; $75D2: $02
    nop                                           ; $75D3: $00
    ld [de], a                                    ; $75D4: $12
    ld [bc], a                                    ; $75D5: $02
    ld [bc], a                                    ; $75D6: $02
    ld hl, sp+$11                                 ; $75D7: $F8 $11
    ld [bc], a                                    ; $75D9: $02
    ld [bc], a                                    ; $75DA: $02
    ldh a, [rNR10]                                ; $75DB: $F0 $10
    rlca                                          ; $75DD: $07
    ld a, [$0F00]                                 ; $75DE: $FA $00 $0F
    rlca                                          ; $75E1: $07
    ld a, [$0EF8]                                 ; $75E2: $FA $F8 $0E
    rlca                                          ; $75E5: $07
    ld a, [$0DF0]                                 ; $75E6: $FA $F0 $0D
    rlca                                          ; $75E9: $07
    add b                                         ; $75EA: $80
    ldh a, [rP1]                                  ; $75EB: $F0 $00
    ld bc, $F007                                  ; $75ED: $01 $07 $F0
    ld hl, sp+$00                                 ; $75F0: $F8 $00
    rlca                                          ; $75F2: $07
    ld hl, sp-$08                                 ; $75F3: $F8 $F8
    ld [bc], a                                    ; $75F5: $02
    rlca                                          ; $75F6: $07
    ld hl, sp+$00                                 ; $75F7: $F8 $00
    rlca                                          ; $75F9: $07
    rlca                                          ; $75FA: $07
    nop                                           ; $75FB: $00
    nop                                           ; $75FC: $00
    ld b, $02                                     ; $75FD: $06 $02
    nop                                           ; $75FF: $00
    ld hl, sp+$05                                 ; $7600: $F8 $05
    ld [bc], a                                    ; $7602: $02
    add b                                         ; $7603: $80
    ld sp, hl                                     ; $7604: $F9
    rlca                                          ; $7605: $07
    inc b                                         ; $7606: $04
    nop                                           ; $7607: $00
    ldh a, [rP1]                                  ; $7608: $F0 $00
    ld bc, $F007                                  ; $760A: $01 $07 $F0
    ld hl, sp+$00                                 ; $760D: $F8 $00
    rlca                                          ; $760F: $07
    ld hl, sp-$08                                 ; $7610: $F8 $F8
    ld [bc], a                                    ; $7612: $02
    rlca                                          ; $7613: $07
    ld hl, sp+$00                                 ; $7614: $F8 $00
    rlca                                          ; $7616: $07
    rlca                                          ; $7617: $07
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    ld b, $02                                     ; $761A: $06 $02
    nop                                           ; $761C: $00
    ld hl, sp+$05                                 ; $761D: $F8 $05
    ld [bc], a                                    ; $761F: $02
    add b                                         ; $7620: $80
    ld hl, sp+$07                                 ; $7621: $F8 $07
    inc bc                                        ; $7623: $03
    nop                                           ; $7624: $00
    ldh a, [rP1]                                  ; $7625: $F0 $00
    ld bc, $F007                                  ; $7627: $01 $07 $F0
    ld hl, sp+$00                                 ; $762A: $F8 $00
    rlca                                          ; $762C: $07
    ld hl, sp-$08                                 ; $762D: $F8 $F8
    ld [bc], a                                    ; $762F: $02
    rlca                                          ; $7630: $07
    ld hl, sp+$00                                 ; $7631: $F8 $00
    rlca                                          ; $7633: $07
    rlca                                          ; $7634: $07
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    ld b, $02                                     ; $7637: $06 $02
    nop                                           ; $7639: $00
    ld hl, sp+$05                                 ; $763A: $F8 $05
    ld [bc], a                                    ; $763C: $02
    add b                                         ; $763D: $80
    ld c, l                                       ; $763E: $4D
    ld [$0008], sp                                ; $763F: $08 $08 $00
    rst $38                                       ; $7642: $FF
    ld [hl-], a                                   ; $7643: $32
    ld [hl], h                                    ; $7644: $74
    ld c, e                                       ; $7645: $4B
    ld [hl], h                                    ; $7646: $74
    ld h, h                                       ; $7647: $64
    ld [hl], h                                    ; $7648: $74
    ld c, e                                       ; $7649: $4B
    ld [hl], h                                    ; $764A: $74
    ld b, [hl]                                    ; $764B: $46
    ld a, $76                                     ; $764C: $3E $76
    ld c, l                                       ; $764E: $4D
    ld [$0008], sp                                ; $764F: $08 $08 $00
    ld bc, $73EF                                  ; $7652: $01 $EF $73
    inc b                                         ; $7655: $04
    ld [hl], h                                    ; $7656: $74
    dec e                                         ; $7657: $1D
    ld [hl], h                                    ; $7658: $74
    inc b                                         ; $7659: $04
    ld [hl], h                                    ; $765A: $74
    ld b, [hl]                                    ; $765B: $46
    ld c, [hl]                                    ; $765C: $4E
    halt                                          ; $765D: $76
    ld c, l                                       ; $765E: $4D
    ld [$FF08], sp                                ; $765F: $08 $08 $FF
    nop                                           ; $7662: $00
    ret z                                         ; $7663: $C8

    ld [hl], h                                    ; $7664: $74
    pop hl                                        ; $7665: $E1
    ld [hl], h                                    ; $7666: $74
    ld a, [$E174]                                 ; $7667: $FA $74 $E1
    ld [hl], h                                    ; $766A: $74
    ld b, [hl]                                    ; $766B: $46
    ld e, [hl]                                    ; $766C: $5E
    halt                                          ; $766D: $76
    ld c, l                                       ; $766E: $4D
    ld [$0108], sp                                ; $766F: $08 $08 $01
    nop                                           ; $7672: $00
    ld a, l                                       ; $7673: $7D
    ld [hl], h                                    ; $7674: $74
    sub [hl]                                      ; $7675: $96
    ld [hl], h                                    ; $7676: $74
    xor a                                         ; $7677: $AF
    ld [hl], h                                    ; $7678: $74
    sub [hl]                                      ; $7679: $96
    ld [hl], h                                    ; $767A: $74
    ld b, [hl]                                    ; $767B: $46
    ld l, [hl]                                    ; $767C: $6E
    halt                                          ; $767D: $76
    ld c, l                                       ; $767E: $4D
    ld [$0008], sp                                ; $767F: $08 $08 $00
    cp $32                                        ; $7682: $FE $32
    ld [hl], h                                    ; $7684: $74
    ld c, e                                       ; $7685: $4B
    ld [hl], h                                    ; $7686: $74
    ld h, h                                       ; $7687: $64
    ld [hl], h                                    ; $7688: $74
    ld c, e                                       ; $7689: $4B
    ld [hl], h                                    ; $768A: $74
    ld b, [hl]                                    ; $768B: $46
    ld a, [hl]                                    ; $768C: $7E
    halt                                          ; $768D: $76
    ld c, l                                       ; $768E: $4D
    ld [$0008], sp                                ; $768F: $08 $08 $00
    ld [bc], a                                    ; $7692: $02
    rst $28                                       ; $7693: $EF
    ld [hl], e                                    ; $7694: $73
    inc b                                         ; $7695: $04
    ld [hl], h                                    ; $7696: $74
    dec e                                         ; $7697: $1D
    ld [hl], h                                    ; $7698: $74
    inc b                                         ; $7699: $04
    ld [hl], h                                    ; $769A: $74
    ld b, [hl]                                    ; $769B: $46
    adc [hl]                                      ; $769C: $8E
    halt                                          ; $769D: $76
    ld c, l                                       ; $769E: $4D
    ld [$FE08], sp                                ; $769F: $08 $08 $FE
    nop                                           ; $76A2: $00
    ret z                                         ; $76A3: $C8

    ld [hl], h                                    ; $76A4: $74
    pop hl                                        ; $76A5: $E1
    ld [hl], h                                    ; $76A6: $74
    ld a, [$E174]                                 ; $76A7: $FA $74 $E1
    ld [hl], h                                    ; $76AA: $74
    ld b, [hl]                                    ; $76AB: $46
    sbc [hl]                                      ; $76AC: $9E
    halt                                          ; $76AD: $76
    ld c, l                                       ; $76AE: $4D
    ld [$0208], sp                                ; $76AF: $08 $08 $02
    nop                                           ; $76B2: $00
    ld a, l                                       ; $76B3: $7D
    ld [hl], h                                    ; $76B4: $74
    sub [hl]                                      ; $76B5: $96
    ld [hl], h                                    ; $76B6: $74
    xor a                                         ; $76B7: $AF
    ld [hl], h                                    ; $76B8: $74
    sub [hl]                                      ; $76B9: $96
    ld [hl], h                                    ; $76BA: $74
    ld b, [hl]                                    ; $76BB: $46
    xor [hl]                                      ; $76BC: $AE
    halt                                          ; $76BD: $76
    ld c, h                                       ; $76BE: $4C
    rst $38                                       ; $76BF: $FF
    nop                                           ; $76C0: $00
    nop                                           ; $76C1: $00
    ld c, e                                       ; $76C2: $4B
    ld [hl], h                                    ; $76C3: $74
    nop                                           ; $76C4: $00
    ld b, [hl]                                    ; $76C5: $46
    cp [hl]                                       ; $76C6: $BE
    halt                                          ; $76C7: $76
    ld c, h                                       ; $76C8: $4C
    rst $38                                       ; $76C9: $FF
    nop                                           ; $76CA: $00
    nop                                           ; $76CB: $00
    inc b                                         ; $76CC: $04
    ld [hl], h                                    ; $76CD: $74
    nop                                           ; $76CE: $00
    ld b, [hl]                                    ; $76CF: $46
    ret z                                         ; $76D0: $C8

    halt                                          ; $76D1: $76
    ld c, h                                       ; $76D2: $4C
    rst $38                                       ; $76D3: $FF
    nop                                           ; $76D4: $00
    nop                                           ; $76D5: $00
    pop hl                                        ; $76D6: $E1
    ld [hl], h                                    ; $76D7: $74
    nop                                           ; $76D8: $00
    ld b, [hl]                                    ; $76D9: $46
    jp nc, Jump_00E_4C76                          ; $76DA: $D2 $76 $4C

    rst $38                                       ; $76DD: $FF
    nop                                           ; $76DE: $00
    nop                                           ; $76DF: $00
    sub [hl]                                      ; $76E0: $96
    ld [hl], h                                    ; $76E1: $74
    nop                                           ; $76E2: $00
    ld b, [hl]                                    ; $76E3: $46
    call c, Call_00E_4C76                         ; $76E4: $DC $76 $4C
    rst $38                                       ; $76E7: $FF
    nop                                           ; $76E8: $00
    nop                                           ; $76E9: $00
    sub $73                                       ; $76EA: $D6 $73
    nop                                           ; $76EC: $00
    ld b, [hl]                                    ; $76ED: $46
    and $76                                       ; $76EE: $E6 $76
    ld c, h                                       ; $76F0: $4C
    rst $38                                       ; $76F1: $FF
    nop                                           ; $76F2: $00
    nop                                           ; $76F3: $00
    cp l                                          ; $76F4: $BD
    ld [hl], e                                    ; $76F5: $73
    nop                                           ; $76F6: $00
    ld b, [hl]                                    ; $76F7: $46
    ldh a, [rPCM12]                               ; $76F8: $F0 $76
    ld c, h                                       ; $76FA: $4C
    rst $38                                       ; $76FB: $FF
    nop                                           ; $76FC: $00
    nop                                           ; $76FD: $00
    and h                                         ; $76FE: $A4
    ld [hl], e                                    ; $76FF: $73
    nop                                           ; $7700: $00
    ld b, [hl]                                    ; $7701: $46
    ld a, [$4C76]                                 ; $7702: $FA $76 $4C
    rst $38                                       ; $7705: $FF
    nop                                           ; $7706: $00
    nop                                           ; $7707: $00
    adc e                                         ; $7708: $8B
    ld [hl], e                                    ; $7709: $73
    nop                                           ; $770A: $00
    ld b, [hl]                                    ; $770B: $46
    inc b                                         ; $770C: $04
    ld [hl], a                                    ; $770D: $77
    ld c, h                                       ; $770E: $4C
    ld h, b                                       ; $770F: $60
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    ld b, l                                       ; $7712: $45
    ld [hl], l                                    ; $7713: $75
    add b                                         ; $7714: $80
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    inc de                                        ; $7717: $13
    ld [hl], l                                    ; $7718: $75
    ld h, b                                       ; $7719: $60
    nop                                           ; $771A: $00
    nop                                           ; $771B: $00
    ld b, l                                       ; $771C: $45
    ld [hl], l                                    ; $771D: $75
    add b                                         ; $771E: $80
    nop                                           ; $771F: $00
    nop                                           ; $7720: $00
    inc l                                         ; $7721: $2C
    ld [hl], l                                    ; $7722: $75
    nop                                           ; $7723: $00
    ld b, [hl]                                    ; $7724: $46
    ld c, $77                                     ; $7725: $0E $77
    ld c, l                                       ; $7727: $4D
    ld [$0008], sp                                ; $7728: $08 $08 $00
    nop                                           ; $772B: $00
    ld b, l                                       ; $772C: $45
    ld [hl], l                                    ; $772D: $75
    ld e, [hl]                                    ; $772E: $5E
    ld [hl], l                                    ; $772F: $75
    ld [hl], a                                    ; $7730: $77
    ld [hl], l                                    ; $7731: $75
    sub b                                         ; $7732: $90
    ld [hl], l                                    ; $7733: $75
    ld b, [hl]                                    ; $7734: $46
    daa                                           ; $7735: $27
    ld [hl], a                                    ; $7736: $77
    ld c, l                                       ; $7737: $4D
    jr nz, jr_00E_773E                            ; $7738: $20 $04

    nop                                           ; $773A: $00
    nop                                           ; $773B: $00
    db $EB                                        ; $773C: $EB
    ld [hl], l                                    ; $773D: $75

jr_00E_773E:
    inc b                                         ; $773E: $04
    halt                                          ; $773F: $76
    ld hl, $0476                                  ; $7740: $21 $76 $04
    halt                                          ; $7743: $76
    db $EB                                        ; $7744: $EB
    ld [hl], l                                    ; $7745: $75
    inc b                                         ; $7746: $04
    halt                                          ; $7747: $76
    ld hl, $0476                                  ; $7748: $21 $76 $04
    halt                                          ; $774B: $76
    db $EB                                        ; $774C: $EB
    ld [hl], l                                    ; $774D: $75
    inc b                                         ; $774E: $04
    halt                                          ; $774F: $76
    ld hl, $0476                                  ; $7750: $21 $76 $04
    halt                                          ; $7753: $76
    db $EB                                        ; $7754: $EB
    ld [hl], l                                    ; $7755: $75
    inc b                                         ; $7756: $04
    halt                                          ; $7757: $76
    ld hl, $0476                                  ; $7758: $21 $76 $04
    halt                                          ; $775B: $76
    ld c, h                                       ; $775C: $4C
    jr nz, jr_00E_775F                            ; $775D: $20 $00

jr_00E_775F:
    nop                                           ; $775F: $00
    db $EB                                        ; $7760: $EB
    ld [hl], l                                    ; $7761: $75
    nop                                           ; $7762: $00
    ld b, [hl]                                    ; $7763: $46
    ld c, $77                                     ; $7764: $0E $77
    ld c, h                                       ; $7766: $4C
    rst $38                                       ; $7767: $FF
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    or c                                          ; $776A: $B1
    ld [hl], l                                    ; $776B: $75
    nop                                           ; $776C: $00
    ld b, [hl]                                    ; $776D: $46
    ld h, [hl]                                    ; $776E: $66
    ld [hl], a                                    ; $776F: $77
    ld c, h                                       ; $7770: $4C
    rst $38                                       ; $7771: $FF
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    jp z, $0075                                   ; $7774: $CA $75 $00

    ld b, [hl]                                    ; $7777: $46
    ld [hl], b                                    ; $7778: $70
    ld [hl], a                                    ; $7779: $77
    ld c, e                                       ; $777A: $4B
    inc bc                                        ; $777B: $03
    ld c, $00                                     ; $777C: $0E $00
    nop                                           ; $777E: $00
    sub c                                         ; $777F: $91
    ld [hl], a                                    ; $7780: $77
    ld c, $03                                     ; $7781: $0E $03
    nop                                           ; $7783: $00
    sbc b                                         ; $7784: $98
    ld [hl], a                                    ; $7785: $77
    ld c, $02                                     ; $7786: $0E $02
    nop                                           ; $7788: $00
    and [hl]                                      ; $7789: $A6
    ld [hl], a                                    ; $778A: $77
    ld c, $01                                     ; $778B: $0E $01
    nop                                           ; $778D: $00
    sbc a                                         ; $778E: $9F
    ld [hl], a                                    ; $778F: $77
    rst $38                                       ; $7790: $FF
    inc d                                         ; $7791: $14
    ld c, $BE                                     ; $7792: $0E $BE
    halt                                          ; $7794: $76
    ld h, d                                       ; $7795: $62
    ld bc, $1412                                  ; $7796: $01 $12 $14
    ld c, $C8                                     ; $7799: $0E $C8
    halt                                          ; $779B: $76
    ld h, d                                       ; $779C: $62
    ld bc, $1412                                  ; $779D: $01 $12 $14
    ld c, $D2                                     ; $77A0: $0E $D2
    halt                                          ; $77A2: $76
    ld h, d                                       ; $77A3: $62
    ld bc, $1412                                  ; $77A4: $01 $12 $14
    ld c, $DC                                     ; $77A7: $0E $DC
    halt                                          ; $77A9: $76
    ld h, d                                       ; $77AA: $62
    ld bc, $F012                                  ; $77AB: $01 $12 $F0
    ld hl, sp+$00                                 ; $77AE: $F8 $00
    inc bc                                        ; $77B0: $03
    ldh a, [rP1]                                  ; $77B1: $F0 $00
    ld bc, $F803                                  ; $77B3: $01 $03 $F8
    ld hl, sp+$08                                 ; $77B6: $F8 $08
    inc bc                                        ; $77B8: $03
    ld hl, sp+$00                                 ; $77B9: $F8 $00
    add hl, bc                                    ; $77BB: $09
    inc bc                                        ; $77BC: $03
    nop                                           ; $77BD: $00
    ld hl, sp+$12                                 ; $77BE: $F8 $12
    ld [bc], a                                    ; $77C0: $02
    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    inc de                                        ; $77C3: $13
    ld [bc], a                                    ; $77C4: $02
    add b                                         ; $77C5: $80
    ldh a, [rP1]                                  ; $77C6: $F0 $00
    nop                                           ; $77C8: $00
    inc hl                                        ; $77C9: $23
    ldh a, [$F8]                                  ; $77CA: $F0 $F8
    ld bc, $F823                                  ; $77CC: $01 $23 $F8
    nop                                           ; $77CF: $00
    ld [$F823], sp                                ; $77D0: $08 $23 $F8
    ld hl, sp+$09                                 ; $77D3: $F8 $09
    inc hl                                        ; $77D5: $23
    nop                                           ; $77D6: $00
    nop                                           ; $77D7: $00
    ld [de], a                                    ; $77D8: $12
    ld [hl+], a                                   ; $77D9: $22
    nop                                           ; $77DA: $00
    ld hl, sp+$13                                 ; $77DB: $F8 $13
    ld [hl+], a                                   ; $77DD: $22
    add b                                         ; $77DE: $80
    ldh a, [$F8]                                  ; $77DF: $F0 $F8
    ld b, $03                                     ; $77E1: $06 $03
    ldh a, [rP1]                                  ; $77E3: $F0 $00
    rlca                                          ; $77E5: $07
    inc bc                                        ; $77E6: $03
    ld hl, sp-$08                                 ; $77E7: $F8 $F8
    inc c                                         ; $77E9: $0C
    inc bc                                        ; $77EA: $03
    ld hl, sp+$00                                 ; $77EB: $F8 $00
    dec c                                         ; $77ED: $0D
    inc bc                                        ; $77EE: $03
    nop                                           ; $77EF: $00
    ld hl, sp+$16                                 ; $77F0: $F8 $16
    ld [bc], a                                    ; $77F2: $02
    nop                                           ; $77F3: $00
    nop                                           ; $77F4: $00
    rla                                           ; $77F5: $17
    ld [bc], a                                    ; $77F6: $02
    add b                                         ; $77F7: $80
    ldh a, [rP1]                                  ; $77F8: $F0 $00
    ld b, $23                                     ; $77FA: $06 $23
    ldh a, [$F8]                                  ; $77FC: $F0 $F8
    rlca                                          ; $77FE: $07
    inc hl                                        ; $77FF: $23
    ld hl, sp+$00                                 ; $7800: $F8 $00
    inc c                                         ; $7802: $0C
    inc hl                                        ; $7803: $23
    ld hl, sp-$08                                 ; $7804: $F8 $F8
    dec c                                         ; $7806: $0D
    inc hl                                        ; $7807: $23
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    ld d, $22                                     ; $780A: $16 $22
    nop                                           ; $780C: $00
    ld hl, sp+$17                                 ; $780D: $F8 $17
    ld [hl+], a                                   ; $780F: $22
    add b                                         ; $7810: $80
    pop af                                        ; $7811: $F1
    ld hl, sp+$02                                 ; $7812: $F8 $02
    inc bc                                        ; $7814: $03
    pop af                                        ; $7815: $F1
    nop                                           ; $7816: $00
    inc bc                                        ; $7817: $03
    inc bc                                        ; $7818: $03
    ld hl, sp-$08                                 ; $7819: $F8 $F8
    ld c, $03                                     ; $781B: $0E $03
    ld hl, sp+$00                                 ; $781D: $F8 $00
    rrca                                          ; $781F: $0F
    inc bc                                        ; $7820: $03
    nop                                           ; $7821: $00
    ld hl, sp+$18                                 ; $7822: $F8 $18
    ld [bc], a                                    ; $7824: $02
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    add hl, de                                    ; $7827: $19
    ld [bc], a                                    ; $7828: $02
    add b                                         ; $7829: $80
    ldh a, [$F8]                                  ; $782A: $F0 $F8
    ld [bc], a                                    ; $782C: $02
    inc bc                                        ; $782D: $03
    ldh a, [rP1]                                  ; $782E: $F0 $00
    inc bc                                        ; $7830: $03
    inc bc                                        ; $7831: $03
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    inc d                                         ; $7834: $14
    ld [bc], a                                    ; $7835: $02
    nop                                           ; $7836: $00
    ld sp, hl                                     ; $7837: $F9
    inc d                                         ; $7838: $14
    ld [hl+], a                                   ; $7839: $22
    ld hl, sp+$00                                 ; $783A: $F8 $00
    ld a, [bc]                                    ; $783C: $0A
    inc bc                                        ; $783D: $03
    ld hl, sp-$08                                 ; $783E: $F8 $F8
    ld a, [bc]                                    ; $7840: $0A
    inc hl                                        ; $7841: $23
    add b                                         ; $7842: $80
    pop af                                        ; $7843: $F1
    ld hl, sp+$02                                 ; $7844: $F8 $02
    inc bc                                        ; $7846: $03
    pop af                                        ; $7847: $F1
    nop                                           ; $7848: $00
    inc bc                                        ; $7849: $03
    inc bc                                        ; $784A: $03
    ld hl, sp+$00                                 ; $784B: $F8 $00
    ld c, $23                                     ; $784D: $0E $23
    ld hl, sp-$08                                 ; $784F: $F8 $F8
    rrca                                          ; $7851: $0F
    inc hl                                        ; $7852: $23
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    jr jr_00E_7879                                ; $7855: $18 $22

    nop                                           ; $7857: $00
    ld hl, sp+$19                                 ; $7858: $F8 $19
    ld [hl+], a                                   ; $785A: $22
    add b                                         ; $785B: $80
    pop af                                        ; $785C: $F1
    ld hl, sp+$04                                 ; $785D: $F8 $04
    inc bc                                        ; $785F: $03
    pop af                                        ; $7860: $F1
    nop                                           ; $7861: $00
    dec b                                         ; $7862: $05
    inc bc                                        ; $7863: $03
    ld hl, sp-$08                                 ; $7864: $F8 $F8
    db $10                                        ; $7866: $10
    inc bc                                        ; $7867: $03
    ld hl, sp+$00                                 ; $7868: $F8 $00
    ld de, $0003                                  ; $786A: $11 $03 $00
    ld hl, sp+$1A                                 ; $786D: $F8 $1A
    ld [bc], a                                    ; $786F: $02
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    dec de                                        ; $7872: $1B
    ld [bc], a                                    ; $7873: $02
    add b                                         ; $7874: $80
    ldh a, [$F8]                                  ; $7875: $F0 $F8
    inc b                                         ; $7877: $04
    inc bc                                        ; $7878: $03

jr_00E_7879:
    ldh a, [rP1]                                  ; $7879: $F0 $00
    dec b                                         ; $787B: $05
    inc bc                                        ; $787C: $03
    ld hl, sp+$00                                 ; $787D: $F8 $00
    dec bc                                        ; $787F: $0B
    inc bc                                        ; $7880: $03
    ld hl, sp-$08                                 ; $7881: $F8 $F8
    dec bc                                        ; $7883: $0B
    inc hl                                        ; $7884: $23
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    dec d                                         ; $7887: $15
    ld [bc], a                                    ; $7888: $02
    nop                                           ; $7889: $00
    ld sp, hl                                     ; $788A: $F9
    dec d                                         ; $788B: $15
    ld [hl+], a                                   ; $788C: $22
    add b                                         ; $788D: $80
    pop af                                        ; $788E: $F1
    ld hl, sp+$04                                 ; $788F: $F8 $04
    inc bc                                        ; $7891: $03
    pop af                                        ; $7892: $F1
    nop                                           ; $7893: $00
    dec b                                         ; $7894: $05
    inc bc                                        ; $7895: $03
    ld hl, sp+$00                                 ; $7896: $F8 $00
    db $10                                        ; $7898: $10
    inc hl                                        ; $7899: $23
    ld hl, sp-$08                                 ; $789A: $F8 $F8
    ld de, $0023                                  ; $789C: $11 $23 $00
    nop                                           ; $789F: $00
    ld a, [de]                                    ; $78A0: $1A
    ld [hl+], a                                   ; $78A1: $22
    nop                                           ; $78A2: $00
    ld hl, sp+$1B                                 ; $78A3: $F8 $1B
    ld [hl+], a                                   ; $78A5: $22
    add b                                         ; $78A6: $80
    pop af                                        ; $78A7: $F1
    ld hl, sp+$1C                                 ; $78A8: $F8 $1C
    inc bc                                        ; $78AA: $03
    pop af                                        ; $78AB: $F1
    nop                                           ; $78AC: $00
    dec e                                         ; $78AD: $1D
    inc bc                                        ; $78AE: $03
    ld hl, sp-$08                                 ; $78AF: $F8 $F8
    ld e, $03                                     ; $78B1: $1E $03
    ld hl, sp+$00                                 ; $78B3: $F8 $00
    rra                                           ; $78B5: $1F
    inc bc                                        ; $78B6: $03
    nop                                           ; $78B7: $00
    ld hl, sp+$24                                 ; $78B8: $F8 $24
    ld [bc], a                                    ; $78BA: $02
    nop                                           ; $78BB: $00
    nop                                           ; $78BC: $00
    dec h                                         ; $78BD: $25
    ld [bc], a                                    ; $78BE: $02
    add b                                         ; $78BF: $80
    ldh a, [$F8]                                  ; $78C0: $F0 $F8
    inc e                                         ; $78C2: $1C
    inc bc                                        ; $78C3: $03
    ldh a, [rP1]                                  ; $78C4: $F0 $00
    dec e                                         ; $78C6: $1D
    inc bc                                        ; $78C7: $03
    nop                                           ; $78C8: $00
    ld hl, sp+$26                                 ; $78C9: $F8 $26
    ld [bc], a                                    ; $78CB: $02
    nop                                           ; $78CC: $00
    nop                                           ; $78CD: $00
    daa                                           ; $78CE: $27
    ld [bc], a                                    ; $78CF: $02
    ld hl, sp-$08                                 ; $78D0: $F8 $F8
    jr nz, @+$05                                  ; $78D2: $20 $03

    ld hl, sp+$00                                 ; $78D4: $F8 $00
    ld hl, $8003                                  ; $78D6: $21 $03 $80
    pop af                                        ; $78D9: $F1
    ld hl, sp+$1C                                 ; $78DA: $F8 $1C
    inc bc                                        ; $78DC: $03
    pop af                                        ; $78DD: $F1
    nop                                           ; $78DE: $00
    dec e                                         ; $78DF: $1D
    inc bc                                        ; $78E0: $03
    nop                                           ; $78E1: $00
    ld hl, sp+$28                                 ; $78E2: $F8 $28
    ld [bc], a                                    ; $78E4: $02
    nop                                           ; $78E5: $00
    nop                                           ; $78E6: $00
    add hl, hl                                    ; $78E7: $29
    ld [bc], a                                    ; $78E8: $02
    ld hl, sp-$08                                 ; $78E9: $F8 $F8
    ld [hl+], a                                   ; $78EB: $22
    inc bc                                        ; $78EC: $03
    ld hl, sp+$00                                 ; $78ED: $F8 $00
    inc hl                                        ; $78EF: $23
    inc bc                                        ; $78F0: $03
    add b                                         ; $78F1: $80
    pop af                                        ; $78F2: $F1
    nop                                           ; $78F3: $00
    inc e                                         ; $78F4: $1C
    inc hl                                        ; $78F5: $23
    pop af                                        ; $78F6: $F1
    ld hl, sp+$1D                                 ; $78F7: $F8 $1D
    inc hl                                        ; $78F9: $23
    ld hl, sp+$00                                 ; $78FA: $F8 $00
    ld e, $23                                     ; $78FC: $1E $23
    ld hl, sp-$08                                 ; $78FE: $F8 $F8
    rra                                           ; $7900: $1F
    inc hl                                        ; $7901: $23
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    inc h                                         ; $7904: $24
    ld [hl+], a                                   ; $7905: $22
    nop                                           ; $7906: $00
    ld hl, sp+$25                                 ; $7907: $F8 $25
    ld [hl+], a                                   ; $7909: $22
    add b                                         ; $790A: $80
    ldh a, [rP1]                                  ; $790B: $F0 $00
    inc e                                         ; $790D: $1C
    inc hl                                        ; $790E: $23
    ldh a, [$F8]                                  ; $790F: $F0 $F8
    dec e                                         ; $7911: $1D
    inc hl                                        ; $7912: $23
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    ld h, $22                                     ; $7915: $26 $22
    nop                                           ; $7917: $00
    ld hl, sp+$27                                 ; $7918: $F8 $27
    ld [hl+], a                                   ; $791A: $22
    ld hl, sp+$00                                 ; $791B: $F8 $00
    jr nz, jr_00E_7942                            ; $791D: $20 $23

    ld hl, sp-$08                                 ; $791F: $F8 $F8
    ld hl, $8023                                  ; $7921: $21 $23 $80
    pop af                                        ; $7924: $F1
    nop                                           ; $7925: $00
    inc e                                         ; $7926: $1C
    inc hl                                        ; $7927: $23
    pop af                                        ; $7928: $F1
    ld hl, sp+$1D                                 ; $7929: $F8 $1D
    inc hl                                        ; $792B: $23
    nop                                           ; $792C: $00
    nop                                           ; $792D: $00
    jr z, @+$24                                   ; $792E: $28 $22

    nop                                           ; $7930: $00
    ld hl, sp+$29                                 ; $7931: $F8 $29
    ld [hl+], a                                   ; $7933: $22
    ld hl, sp+$00                                 ; $7934: $F8 $00
    ld [hl+], a                                   ; $7936: $22
    inc hl                                        ; $7937: $23
    ld hl, sp-$08                                 ; $7938: $F8 $F8
    inc hl                                        ; $793A: $23
    inc hl                                        ; $793B: $23
    add b                                         ; $793C: $80
    ld c, l                                       ; $793D: $4D
    ld [$0008], sp                                ; $793E: $08 $08 $00
    rst $38                                       ; $7941: $FF

jr_00E_7942:
    ld e, h                                       ; $7942: $5C
    ld a, b                                       ; $7943: $78
    ld [hl], l                                    ; $7944: $75
    ld a, b                                       ; $7945: $78
    adc [hl]                                      ; $7946: $8E
    ld a, b                                       ; $7947: $78
    ld [hl], l                                    ; $7948: $75
    ld a, b                                       ; $7949: $78
    ld b, [hl]                                    ; $794A: $46
    dec a                                         ; $794B: $3D
    ld a, c                                       ; $794C: $79
    ld c, l                                       ; $794D: $4D
    ld [$0008], sp                                ; $794E: $08 $08 $00
    ld bc, $7811                                  ; $7951: $01 $11 $78
    ld a, [hl+]                                   ; $7954: $2A
    ld a, b                                       ; $7955: $78
    ld b, e                                       ; $7956: $43
    ld a, b                                       ; $7957: $78
    ld a, [hl+]                                   ; $7958: $2A
    ld a, b                                       ; $7959: $78
    ld b, [hl]                                    ; $795A: $46
    ld c, l                                       ; $795B: $4D
    ld a, c                                       ; $795C: $79
    ld c, l                                       ; $795D: $4D
    ld [$FF08], sp                                ; $795E: $08 $08 $FF
    nop                                           ; $7961: $00
    ld a, [c]                                     ; $7962: $F2
    ld a, b                                       ; $7963: $78
    dec bc                                        ; $7964: $0B
    ld a, c                                       ; $7965: $79
    inc h                                         ; $7966: $24
    ld a, c                                       ; $7967: $79
    dec bc                                        ; $7968: $0B
    ld a, c                                       ; $7969: $79
    ld b, [hl]                                    ; $796A: $46
    ld e, l                                       ; $796B: $5D
    ld a, c                                       ; $796C: $79
    ld c, l                                       ; $796D: $4D
    ld [$0108], sp                                ; $796E: $08 $08 $01
    nop                                           ; $7971: $00
    and a                                         ; $7972: $A7
    ld a, b                                       ; $7973: $78
    ret nz                                        ; $7974: $C0

    ld a, b                                       ; $7975: $78
    reti                                          ; $7976: $D9


    ld a, b                                       ; $7977: $78
    ret nz                                        ; $7978: $C0

    ld a, b                                       ; $7979: $78
    ld b, [hl]                                    ; $797A: $46
    ld l, l                                       ; $797B: $6D
    ld a, c                                       ; $797C: $79
    ld c, l                                       ; $797D: $4D
    ld [$0008], sp                                ; $797E: $08 $08 $00
    cp $5C                                        ; $7981: $FE $5C
    ld a, b                                       ; $7983: $78
    ld [hl], l                                    ; $7984: $75
    ld a, b                                       ; $7985: $78
    adc [hl]                                      ; $7986: $8E
    ld a, b                                       ; $7987: $78
    ld [hl], l                                    ; $7988: $75
    ld a, b                                       ; $7989: $78
    ld b, [hl]                                    ; $798A: $46
    ld a, l                                       ; $798B: $7D
    ld a, c                                       ; $798C: $79
    ld c, l                                       ; $798D: $4D
    ld [$0008], sp                                ; $798E: $08 $08 $00
    ld [bc], a                                    ; $7991: $02
    ld de, $2A78                                  ; $7992: $11 $78 $2A
    ld a, b                                       ; $7995: $78
    ld b, e                                       ; $7996: $43
    ld a, b                                       ; $7997: $78
    ld a, [hl+]                                   ; $7998: $2A
    ld a, b                                       ; $7999: $78
    ld b, [hl]                                    ; $799A: $46
    adc l                                         ; $799B: $8D
    ld a, c                                       ; $799C: $79
    ld c, l                                       ; $799D: $4D
    ld [$FE08], sp                                ; $799E: $08 $08 $FE
    nop                                           ; $79A1: $00
    ld a, [c]                                     ; $79A2: $F2
    ld a, b                                       ; $79A3: $78
    dec bc                                        ; $79A4: $0B
    ld a, c                                       ; $79A5: $79
    inc h                                         ; $79A6: $24
    ld a, c                                       ; $79A7: $79
    dec bc                                        ; $79A8: $0B
    ld a, c                                       ; $79A9: $79
    ld b, [hl]                                    ; $79AA: $46
    sbc l                                         ; $79AB: $9D
    ld a, c                                       ; $79AC: $79
    ld c, l                                       ; $79AD: $4D
    ld [$0208], sp                                ; $79AE: $08 $08 $02
    nop                                           ; $79B1: $00
    and a                                         ; $79B2: $A7
    ld a, b                                       ; $79B3: $78
    ret nz                                        ; $79B4: $C0

    ld a, b                                       ; $79B5: $78
    reti                                          ; $79B6: $D9


    ld a, b                                       ; $79B7: $78
    ret nz                                        ; $79B8: $C0

    ld a, b                                       ; $79B9: $78
    ld b, [hl]                                    ; $79BA: $46
    xor l                                         ; $79BB: $AD
    ld a, c                                       ; $79BC: $79
    ld c, h                                       ; $79BD: $4C
    rst $38                                       ; $79BE: $FF
    nop                                           ; $79BF: $00
    nop                                           ; $79C0: $00
    ld [hl], l                                    ; $79C1: $75
    ld a, b                                       ; $79C2: $78
    nop                                           ; $79C3: $00
    ld b, [hl]                                    ; $79C4: $46
    cp l                                          ; $79C5: $BD
    ld a, c                                       ; $79C6: $79
    ld c, h                                       ; $79C7: $4C
    rst $38                                       ; $79C8: $FF
    nop                                           ; $79C9: $00
    nop                                           ; $79CA: $00
    ld a, [hl+]                                   ; $79CB: $2A
    ld a, b                                       ; $79CC: $78
    nop                                           ; $79CD: $00
    ld b, [hl]                                    ; $79CE: $46
    rst $00                                       ; $79CF: $C7
    ld a, c                                       ; $79D0: $79
    ld c, h                                       ; $79D1: $4C
    rst $38                                       ; $79D2: $FF
    nop                                           ; $79D3: $00
    nop                                           ; $79D4: $00
    dec bc                                        ; $79D5: $0B
    ld a, c                                       ; $79D6: $79
    nop                                           ; $79D7: $00
    ld b, [hl]                                    ; $79D8: $46
    pop de                                        ; $79D9: $D1
    ld a, c                                       ; $79DA: $79
    ld c, h                                       ; $79DB: $4C
    rst $38                                       ; $79DC: $FF
    nop                                           ; $79DD: $00
    nop                                           ; $79DE: $00
    ret nz                                        ; $79DF: $C0

    ld a, b                                       ; $79E0: $78
    nop                                           ; $79E1: $00
    ld b, [hl]                                    ; $79E2: $46
    db $DB                                        ; $79E3: $DB
    ld a, c                                       ; $79E4: $79
    ld c, h                                       ; $79E5: $4C
    rst $38                                       ; $79E6: $FF
    nop                                           ; $79E7: $00
    nop                                           ; $79E8: $00
    ld hl, sp+$77                                 ; $79E9: $F8 $77
    nop                                           ; $79EB: $00
    ld b, [hl]                                    ; $79EC: $46
    push hl                                       ; $79ED: $E5
    ld a, c                                       ; $79EE: $79
    ld c, h                                       ; $79EF: $4C
    rst $38                                       ; $79F0: $FF
    nop                                           ; $79F1: $00
    nop                                           ; $79F2: $00
    rst $18                                       ; $79F3: $DF
    ld [hl], a                                    ; $79F4: $77
    nop                                           ; $79F5: $00
    ld b, [hl]                                    ; $79F6: $46
    rst $28                                       ; $79F7: $EF
    ld a, c                                       ; $79F8: $79
    ld c, h                                       ; $79F9: $4C
    rst $38                                       ; $79FA: $FF
    nop                                           ; $79FB: $00
    nop                                           ; $79FC: $00
    add $77                                       ; $79FD: $C6 $77
    nop                                           ; $79FF: $00
    ld b, [hl]                                    ; $7A00: $46
    ld sp, hl                                     ; $7A01: $F9
    ld a, c                                       ; $7A02: $79
    ld c, h                                       ; $7A03: $4C
    rst $38                                       ; $7A04: $FF
    nop                                           ; $7A05: $00
    nop                                           ; $7A06: $00
    xor l                                         ; $7A07: $AD
    ld [hl], a                                    ; $7A08: $77
    nop                                           ; $7A09: $00
    ld b, [hl]                                    ; $7A0A: $46
    inc bc                                        ; $7A0B: $03
    ld a, d                                       ; $7A0C: $7A
    ld c, e                                       ; $7A0D: $4B
    inc bc                                        ; $7A0E: $03
    ld c, $00                                     ; $7A0F: $0E $00
    nop                                           ; $7A11: $00
    inc h                                         ; $7A12: $24
    ld a, d                                       ; $7A13: $7A
    ld c, $03                                     ; $7A14: $0E $03
    nop                                           ; $7A16: $00
    dec hl                                        ; $7A17: $2B
    ld a, d                                       ; $7A18: $7A
    ld c, $02                                     ; $7A19: $0E $02
    nop                                           ; $7A1B: $00
    add hl, sp                                    ; $7A1C: $39
    ld a, d                                       ; $7A1D: $7A
    ld c, $01                                     ; $7A1E: $0E $01
    nop                                           ; $7A20: $00
    ld [hl-], a                                   ; $7A21: $32
    ld a, d                                       ; $7A22: $7A
    rst $38                                       ; $7A23: $FF
    inc d                                         ; $7A24: $14
    ld c, $BD                                     ; $7A25: $0E $BD
    ld a, c                                       ; $7A27: $79
    ld h, d                                       ; $7A28: $62
    ld bc, $1412                                  ; $7A29: $01 $12 $14
    ld c, $C7                                     ; $7A2C: $0E $C7
    ld a, c                                       ; $7A2E: $79
    ld h, d                                       ; $7A2F: $62
    ld bc, $1412                                  ; $7A30: $01 $12 $14
    ld c, $D1                                     ; $7A33: $0E $D1
    ld a, c                                       ; $7A35: $79
    ld h, d                                       ; $7A36: $62
    ld bc, $1412                                  ; $7A37: $01 $12 $14
    ld c, $DB                                     ; $7A3A: $0E $DB
    ld a, c                                       ; $7A3C: $79
    ld h, d                                       ; $7A3D: $62
    db $01                                        ; $7A3E: $01
    ld [de], a                                    ; $7A3F: $12

    db $F8, $00, $09, $07, $F8, $F8, $08, $07, $00, $00, $14, $02, $00, $F8, $13, $02
    db $F0, $00, $01, $07, $F0, $F8, $00, $07, $80

    nop                                           ; $7A59: $00
    ld hl, sp+$14                                 ; $7A5A: $F8 $14
    ld [hl+], a                                   ; $7A5C: $22
    nop                                           ; $7A5D: $00
    nop                                           ; $7A5E: $00
    inc de                                        ; $7A5F: $13
    ld [hl+], a                                   ; $7A60: $22
    ld hl, sp-$08                                 ; $7A61: $F8 $F8
    add hl, bc                                    ; $7A63: $09
    daa                                           ; $7A64: $27
    ld hl, sp+$00                                 ; $7A65: $F8 $00
    ld [$F027], sp                                ; $7A67: $08 $27 $F0
    ld hl, sp+$01                                 ; $7A6A: $F8 $01
    daa                                           ; $7A6C: $27
    ldh a, [rP1]                                  ; $7A6D: $F0 $00
    nop                                           ; $7A6F: $00
    daa                                           ; $7A70: $27
    add b                                         ; $7A71: $80

    db $F0, $00, $05, $07, $F0, $F8, $04, $07, $00, $00, $18, $02, $00, $F8, $17, $02
    db $F8, $00, $0E, $07, $F8, $F8, $0D, $07, $80

    ld hl, sp-$08                                 ; $7A8B: $F8 $F8
    ld c, $27                                     ; $7A8D: $0E $27
    ld hl, sp+$00                                 ; $7A8F: $F8 $00
    dec c                                         ; $7A91: $0D
    daa                                           ; $7A92: $27
    nop                                           ; $7A93: $00
    ld hl, sp+$18                                 ; $7A94: $F8 $18
    ld [hl+], a                                   ; $7A96: $22
    nop                                           ; $7A97: $00
    nop                                           ; $7A98: $00
    rla                                           ; $7A99: $17
    ld [hl+], a                                   ; $7A9A: $22
    ldh a, [$F8]                                  ; $7A9B: $F0 $F8
    dec b                                         ; $7A9D: $05
    daa                                           ; $7A9E: $27
    ldh a, [rP1]                                  ; $7A9F: $F0 $00
    inc b                                         ; $7AA1: $04
    daa                                           ; $7AA2: $27
    add b                                         ; $7AA3: $80

    db $00, $00, $1A, $02, $00, $F8, $19, $02, $F8, $00, $10, $07, $F8, $F8, $0F, $07
    db $F1, $00, $02, $27, $F1, $F8, $02, $07, $80, $00, $00, $15, $02, $00, $F9, $15
    db $22, $F8, $00, $0B, $07, $F8, $F8, $0A, $07, $F0, $00, $02, $27, $F0, $F8, $02
    db $07, $80, $00, $F8, $1A, $22, $00, $00, $19, $22, $F8, $F8, $10, $27, $F8, $00
    db $0F, $27, $F1, $00, $02, $27, $F1, $F8, $02, $07, $80, $F8, $F8, $0C, $07, $F8
    db $00, $2A, $07, $00, $FC, $1B, $02, $F0, $00, $03, $27, $F0, $F8, $03, $07, $80
    db $F9, $F8, $0C, $07, $F9, $00, $2A, $07, $00, $00, $16, $02, $00, $F9, $16, $22
    db $F1, $00, $03, $27, $F1, $F8, $03, $07, $80, $F8, $00, $2A, $07, $F8, $F8, $0C
    db $07, $F0, $00, $03, $27, $F0, $F8, $03, $07, $00, $FC, $1B, $22, $80, $00, $00
    db $26, $02, $00, $F8, $25, $02, $F8, $00, $20, $07, $F8, $F8, $1F, $07, $F1, $00
    db $1E, $07, $F1, $F8, $1D, $07, $80, $00, $00, $28, $02, $00, $F8, $27, $02, $F8
    db $00, $22, $07, $F8, $F8, $21, $07, $F0, $00, $1E, $07, $F0, $F8, $1D, $07, $80
    db $00, $00, $26, $02, $00, $F8, $25, $02, $F8, $00, $24, $07, $F8, $F8, $23, $07
    db $F1, $00, $1E, $07, $F1, $F8, $1D, $07, $80, $00, $F8, $26, $22, $00, $00, $25
    db $22, $F8, $F8, $20, $27, $F8, $00, $1F, $27, $F1, $F8, $1E, $27, $F1, $00, $1D
    db $27, $80, $00, $F8, $28, $22, $00, $00, $27, $22, $F8, $F8, $22, $27, $F8, $00
    db $21, $27, $F0, $F8, $1E, $27, $F0, $00, $1D, $27, $80, $00, $F8, $26, $22, $00
    db $00, $25, $22, $F8, $F8, $24, $27, $F8, $00, $23, $27, $F1, $F8, $1E, $27, $F1
    db $00, $1D, $27, $80

    ld hl, sp+$00                                 ; $7BC8: $F8 $00
    ld bc, $F807                                  ; $7BCA: $01 $07 $F8
    ld hl, sp+$00                                 ; $7BCD: $F8 $00
    rlca                                          ; $7BCF: $07
    ldh a, [$F8]                                  ; $7BD0: $F0 $F8
    cpl                                           ; $7BD2: $2F
    ld h, b                                       ; $7BD3: $60
    ldh a, [rP1]                                  ; $7BD4: $F0 $00
    inc e                                         ; $7BD6: $1C
    nop                                           ; $7BD7: $00
    nop                                           ; $7BD8: $00
    ld [$072E], sp                                ; $7BD9: $08 $2E $07
    nop                                           ; $7BDC: $00
    ldh a, [$2D]                                  ; $7BDD: $F0 $2D
    rlca                                          ; $7BDF: $07
    nop                                           ; $7BE0: $00
    nop                                           ; $7BE1: $00
    inc l                                         ; $7BE2: $2C
    ld [bc], a                                    ; $7BE3: $02
    nop                                           ; $7BE4: $00
    ld hl, sp+$2B                                 ; $7BE5: $F8 $2B
    ld [bc], a                                    ; $7BE7: $02
    add b                                         ; $7BE8: $80
    ld hl, sp+$00                                 ; $7BE9: $F8 $00
    ld bc, $F807                                  ; $7BEB: $01 $07 $F8
    ld hl, sp+$00                                 ; $7BEE: $F8 $00
    rlca                                          ; $7BF0: $07
    ldh a, [$F8]                                  ; $7BF1: $F0 $F8
    inc e                                         ; $7BF3: $1C
    nop                                           ; $7BF4: $00
    ldh a, [rP1]                                  ; $7BF5: $F0 $00
    cpl                                           ; $7BF7: $2F
    nop                                           ; $7BF8: $00
    nop                                           ; $7BF9: $00
    ld [$072E], sp                                ; $7BFA: $08 $2E $07
    nop                                           ; $7BFD: $00
    ldh a, [$2D]                                  ; $7BFE: $F0 $2D
    rlca                                          ; $7C00: $07
    nop                                           ; $7C01: $00
    nop                                           ; $7C02: $00
    inc l                                         ; $7C03: $2C
    ld [bc], a                                    ; $7C04: $02
    nop                                           ; $7C05: $00
    ld hl, sp+$2B                                 ; $7C06: $F8 $2B
    ld [bc], a                                    ; $7C08: $02
    add b                                         ; $7C09: $80
    ld hl, sp+$00                                 ; $7C0A: $F8 $00
    ld bc, $F807                                  ; $7C0C: $01 $07 $F8
    ld hl, sp+$00                                 ; $7C0F: $F8 $00
    rlca                                          ; $7C11: $07
    ldh a, [$F8]                                  ; $7C12: $F0 $F8
    cpl                                           ; $7C14: $2F
    ld h, b                                       ; $7C15: $60
    ldh a, [rP1]                                  ; $7C16: $F0 $00
    cpl                                           ; $7C18: $2F
    jr nz, jr_00E_7C1B                            ; $7C19: $20 $00

jr_00E_7C1B:
    ld [$072E], sp                                ; $7C1B: $08 $2E $07
    nop                                           ; $7C1E: $00
    ldh a, [$2D]                                  ; $7C1F: $F0 $2D
    rlca                                          ; $7C21: $07
    nop                                           ; $7C22: $00
    nop                                           ; $7C23: $00
    inc l                                         ; $7C24: $2C
    ld [bc], a                                    ; $7C25: $02
    nop                                           ; $7C26: $00
    ld hl, sp+$2B                                 ; $7C27: $F8 $2B
    ld [bc], a                                    ; $7C29: $02
    add b                                         ; $7C2A: $80

    db $F8, $F8, $01, $27, $F8, $00, $00, $27, $F0, $F8, $2F, $40, $F0, $00, $1C, $20
    db $00, $F0, $2E, $27, $00, $08, $2D, $27, $00, $F8, $2C, $22, $00, $00, $2B, $22
    db $80, $F8, $F8, $01, $27, $F8, $00, $00, $27, $F0, $F8, $1C, $20, $F0, $00, $2F
    db $20, $00, $F0, $2E, $27, $00, $08, $2D, $27, $00, $F8, $2C, $22, $00, $00, $2B
    db $22, $80, $F8, $F8, $01, $27, $F8, $00, $00, $27, $F0, $F8, $2F, $40, $F0, $00
    db $2F, $00, $00, $F0, $2E, $27, $00, $08, $2D, $27, $00, $F8, $2C, $22, $00, $00
    db $2B, $22, $80, $F8, $F8, $01, $27, $F8, $00, $00, $27, $00, $F0, $2E, $27, $00
    db $08, $2D, $27, $00, $F8, $2C, $22, $00, $00, $2B, $22, $80, $F8, $00, $01, $07
    db $F8, $F8, $00, $07, $00, $F0, $2D, $07, $00, $00, $2C, $02, $00, $F8, $2B, $02
    db $80

    rst $30                                       ; $7CBC: $F7
    nop                                           ; $7CBD: $00
    inc bc                                        ; $7CBE: $03
    rlca                                          ; $7CBF: $07
    rst $30                                       ; $7CC0: $F7
    ld hl, sp+$02                                 ; $7CC1: $F8 $02
    rlca                                          ; $7CC3: $07
    rst $28                                       ; $7CC4: $EF
    nop                                           ; $7CC5: $00
    ld bc, $EF07                                  ; $7CC6: $01 $07 $EF
    ld hl, sp+$00                                 ; $7CC9: $F8 $00
    rlca                                          ; $7CCB: $07
    add b                                         ; $7CCC: $80
    ldh a, [rP1]                                  ; $7CCD: $F0 $00
    ld bc, $F007                                  ; $7CCF: $01 $07 $F0
    ld hl, sp+$00                                 ; $7CD2: $F8 $00
    rlca                                          ; $7CD4: $07
    ld hl, sp+$00                                 ; $7CD5: $F8 $00
    dec b                                         ; $7CD7: $05
    rlca                                          ; $7CD8: $07
    ld hl, sp-$08                                 ; $7CD9: $F8 $F8
    inc b                                         ; $7CDB: $04
    rlca                                          ; $7CDC: $07
    add b                                         ; $7CDD: $80
    rst $30                                       ; $7CDE: $F7
    ld hl, sp+$03                                 ; $7CDF: $F8 $03
    daa                                           ; $7CE1: $27
    rst $30                                       ; $7CE2: $F7
    nop                                           ; $7CE3: $00
    ld [bc], a                                    ; $7CE4: $02
    daa                                           ; $7CE5: $27
    rst $28                                       ; $7CE6: $EF
    ld hl, sp+$01                                 ; $7CE7: $F8 $01
    daa                                           ; $7CE9: $27
    rst $28                                       ; $7CEA: $EF
    nop                                           ; $7CEB: $00
    nop                                           ; $7CEC: $00
    daa                                           ; $7CED: $27
    add b                                         ; $7CEE: $80
    ldh a, [$F8]                                  ; $7CEF: $F0 $F8
    ld bc, $F027                                  ; $7CF1: $01 $27 $F0
    nop                                           ; $7CF4: $00
    nop                                           ; $7CF5: $00
    daa                                           ; $7CF6: $27
    ld hl, sp-$08                                 ; $7CF7: $F8 $F8
    dec b                                         ; $7CF9: $05
    daa                                           ; $7CFA: $27
    ld hl, sp+$00                                 ; $7CFB: $F8 $00
    inc b                                         ; $7CFD: $04
    daa                                           ; $7CFE: $27
    add b                                         ; $7CFF: $80
    ldh a, [$F8]                                  ; $7D00: $F0 $F8
    ld [$F027], sp                                ; $7D02: $08 $27 $F0
    nop                                           ; $7D05: $00
    ld [$0007], sp                                ; $7D06: $08 $07 $00
    ld sp, hl                                     ; $7D09: $F9
    ld a, [bc]                                    ; $7D0A: $0A
    ld [hl+], a                                   ; $7D0B: $22
    nop                                           ; $7D0C: $00
    nop                                           ; $7D0D: $00
    ld a, [bc]                                    ; $7D0E: $0A
    ld [bc], a                                    ; $7D0F: $02
    ld hl, sp+$00                                 ; $7D10: $F8 $00
    add hl, de                                    ; $7D12: $19
    rlca                                          ; $7D13: $07
    ld hl, sp-$08                                 ; $7D14: $F8 $F8
    jr jr_00E_7D1F                                ; $7D16: $18 $07

    add b                                         ; $7D18: $80
    ld hl, sp-$08                                 ; $7D19: $F8 $F8
    ld de, $F807                                  ; $7D1B: $11 $07 $F8
    nop                                           ; $7D1E: $00

jr_00E_7D1F:
    ld [de], a                                    ; $7D1F: $12
    rlca                                          ; $7D20: $07
    ldh a, [$F8]                                  ; $7D21: $F0 $F8
    ld [$F027], sp                                ; $7D23: $08 $27 $F0
    nop                                           ; $7D26: $00
    ld [$0007], sp                                ; $7D27: $08 $07 $00
    ld sp, hl                                     ; $7D2A: $F9
    ld a, [bc]                                    ; $7D2B: $0A
    ld [hl+], a                                   ; $7D2C: $22
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    ld a, [bc]                                    ; $7D2F: $0A
    ld [bc], a                                    ; $7D30: $02
    add b                                         ; $7D31: $80
    ld hl, sp-$08                                 ; $7D32: $F8 $F8
    ld de, $F807                                  ; $7D34: $11 $07 $F8
    nop                                           ; $7D37: $00
    inc de                                        ; $7D38: $13
    rlca                                          ; $7D39: $07
    ldh a, [$F8]                                  ; $7D3A: $F0 $F8
    ld [$F027], sp                                ; $7D3C: $08 $27 $F0
    nop                                           ; $7D3F: $00
    ld [$0007], sp                                ; $7D40: $08 $07 $00
    ld sp, hl                                     ; $7D43: $F9
    ld a, [bc]                                    ; $7D44: $0A
    ld [hl+], a                                   ; $7D45: $22
    nop                                           ; $7D46: $00
    nop                                           ; $7D47: $00
    ld a, [bc]                                    ; $7D48: $0A
    ld [bc], a                                    ; $7D49: $02
    add b                                         ; $7D4A: $80
    ldh a, [rP1]                                  ; $7D4B: $F0 $00
    inc c                                         ; $7D4D: $0C
    rlca                                          ; $7D4E: $07
    ldh a, [$F8]                                  ; $7D4F: $F0 $F8
    dec bc                                        ; $7D51: $0B
    rlca                                          ; $7D52: $07
    nop                                           ; $7D53: $00
    nop                                           ; $7D54: $00
    rla                                           ; $7D55: $17
    ld [bc], a                                    ; $7D56: $02
    nop                                           ; $7D57: $00
    ld hl, sp+$16                                 ; $7D58: $F8 $16
    ld [bc], a                                    ; $7D5A: $02
    ld hl, sp+$00                                 ; $7D5B: $F8 $00
    dec d                                         ; $7D5D: $15
    rlca                                          ; $7D5E: $07
    ld hl, sp-$08                                 ; $7D5F: $F8 $F8
    inc d                                         ; $7D61: $14
    rlca                                          ; $7D62: $07
    add b                                         ; $7D63: $80
    ldh a, [$F8]                                  ; $7D64: $F0 $F8
    inc c                                         ; $7D66: $0C
    daa                                           ; $7D67: $27
    ldh a, [rP1]                                  ; $7D68: $F0 $00
    dec bc                                        ; $7D6A: $0B
    daa                                           ; $7D6B: $27
    nop                                           ; $7D6C: $00
    ld hl, sp+$17                                 ; $7D6D: $F8 $17
    ld [hl+], a                                   ; $7D6F: $22
    nop                                           ; $7D70: $00
    nop                                           ; $7D71: $00
    ld d, $22                                     ; $7D72: $16 $22
    ld hl, sp-$08                                 ; $7D74: $F8 $F8
    dec d                                         ; $7D76: $15
    daa                                           ; $7D77: $27
    ld hl, sp+$00                                 ; $7D78: $F8 $00
    inc d                                         ; $7D7A: $14
    daa                                           ; $7D7B: $27
    add b                                         ; $7D7C: $80
    ldh a, [$F8]                                  ; $7D7D: $F0 $F8
    ld [$F027], sp                                ; $7D7F: $08 $27 $F0
    nop                                           ; $7D82: $00
    ld [$0007], sp                                ; $7D83: $08 $07 $00
    ld sp, hl                                     ; $7D86: $F9
    ld a, [bc]                                    ; $7D87: $0A
    ld [hl+], a                                   ; $7D88: $22
    nop                                           ; $7D89: $00
    nop                                           ; $7D8A: $00
    ld a, [bc]                                    ; $7D8B: $0A
    ld [bc], a                                    ; $7D8C: $02
    ld hl, sp-$08                                 ; $7D8D: $F8 $F8
    add hl, bc                                    ; $7D8F: $09
    daa                                           ; $7D90: $27
    ld hl, sp+$00                                 ; $7D91: $F8 $00
    add hl, bc                                    ; $7D93: $09
    rlca                                          ; $7D94: $07
    add b                                         ; $7D95: $80
    ld hl, sp+$00                                 ; $7D96: $F8 $00
    inc c                                         ; $7D98: $0C
    rlca                                          ; $7D99: $07
    ld hl, sp-$08                                 ; $7D9A: $F8 $F8
    dec bc                                        ; $7D9C: $0B
    rlca                                          ; $7D9D: $07
    nop                                           ; $7D9E: $00
    ld [$0710], sp                                ; $7D9F: $08 $10 $07
    nop                                           ; $7DA2: $00
    nop                                           ; $7DA3: $00
    rrca                                          ; $7DA4: $0F
    ld [bc], a                                    ; $7DA5: $02
    nop                                           ; $7DA6: $00
    ld hl, sp+$0E                                 ; $7DA7: $F8 $0E
    ld [bc], a                                    ; $7DA9: $02
    nop                                           ; $7DAA: $00
    ldh a, [$0D]                                  ; $7DAB: $F0 $0D
    rlca                                          ; $7DAD: $07
    add b                                         ; $7DAE: $80
    ld hl, sp+$00                                 ; $7DAF: $F8 $00
    inc bc                                        ; $7DB1: $03
    rlca                                          ; $7DB2: $07
    ldh a, [rP1]                                  ; $7DB3: $F0 $00
    ld bc, $F007                                  ; $7DB5: $01 $07 $F0
    ld hl, sp+$00                                 ; $7DB8: $F8 $00
    rlca                                          ; $7DBA: $07
    ld hl, sp-$08                                 ; $7DBB: $F8 $F8
    ld [bc], a                                    ; $7DBD: $02
    rlca                                          ; $7DBE: $07
    nop                                           ; $7DBF: $00
    nop                                           ; $7DC0: $00
    dec b                                         ; $7DC1: $05
    ld [bc], a                                    ; $7DC2: $02
    nop                                           ; $7DC3: $00
    ld hl, sp+$04                                 ; $7DC4: $F8 $04
    ld [bc], a                                    ; $7DC6: $02
    add b                                         ; $7DC7: $80
    ld hl, sp+$02                                 ; $7DC8: $F8 $02
    ld b, $00                                     ; $7DCA: $06 $00
    ld hl, sp+$00                                 ; $7DCC: $F8 $00
    inc bc                                        ; $7DCE: $03
    rlca                                          ; $7DCF: $07
    ldh a, [rP1]                                  ; $7DD0: $F0 $00
    ld bc, $F007                                  ; $7DD2: $01 $07 $F0
    ld hl, sp+$00                                 ; $7DD5: $F8 $00
    rlca                                          ; $7DD7: $07
    ld hl, sp-$08                                 ; $7DD8: $F8 $F8
    ld [bc], a                                    ; $7DDA: $02
    rlca                                          ; $7DDB: $07
    nop                                           ; $7DDC: $00
    nop                                           ; $7DDD: $00
    dec b                                         ; $7DDE: $05
    ld [bc], a                                    ; $7DDF: $02
    nop                                           ; $7DE0: $00
    ld hl, sp+$04                                 ; $7DE1: $F8 $04
    ld [bc], a                                    ; $7DE3: $02
    add b                                         ; $7DE4: $80
    ld hl, sp+$02                                 ; $7DE5: $F8 $02
    rlca                                          ; $7DE7: $07
    nop                                           ; $7DE8: $00
    ld hl, sp+$00                                 ; $7DE9: $F8 $00
    inc bc                                        ; $7DEB: $03
    rlca                                          ; $7DEC: $07
    ldh a, [rP1]                                  ; $7DED: $F0 $00
    ld bc, $F007                                  ; $7DEF: $01 $07 $F0
    ld hl, sp+$00                                 ; $7DF2: $F8 $00
    rlca                                          ; $7DF4: $07
    ld hl, sp-$08                                 ; $7DF5: $F8 $F8
    ld [bc], a                                    ; $7DF7: $02
    rlca                                          ; $7DF8: $07
    nop                                           ; $7DF9: $00
    nop                                           ; $7DFA: $00
    dec b                                         ; $7DFB: $05
    ld [bc], a                                    ; $7DFC: $02
    nop                                           ; $7DFD: $00
    ld hl, sp+$04                                 ; $7DFE: $F8 $04
    ld [bc], a                                    ; $7E00: $02
    add b                                         ; $7E01: $80

    db $4D, $08, $08, $00, $FF, $EF, $7A, $04, $7B, $1D, $7B, $04, $7B, $46, $02, $7E

    ld c, l                                       ; $7E12: $4D
    ld [$0008], sp                                ; $7E13: $08 $08 $00
    ld bc, $7AA4                                  ; $7E16: $01 $A4 $7A
    cp l                                          ; $7E19: $BD
    ld a, d                                       ; $7E1A: $7A
    sub $7A                                       ; $7E1B: $D6 $7A
    cp l                                          ; $7E1D: $BD
    ld a, d                                       ; $7E1E: $7A
    ld b, [hl]                                    ; $7E1F: $46
    ld [de], a                                    ; $7E20: $12
    ld a, [hl]                                    ; $7E21: $7E

    db $4D, $08, $08, $FF, $00, $7D, $7B, $96, $7B

    xor a                                         ; $7E2B: $AF
    ld a, e                                       ; $7E2C: $7B
    sub [hl]                                      ; $7E2D: $96
    ld a, e                                       ; $7E2E: $7B
    ld b, [hl]                                    ; $7E2F: $46
    ld [hl+], a                                   ; $7E30: $22
    ld a, [hl]                                    ; $7E31: $7E
    ld c, l                                       ; $7E32: $4D
    ld [$0108], sp                                ; $7E33: $08 $08 $01
    nop                                           ; $7E36: $00
    ld [hl-], a                                   ; $7E37: $32
    ld a, e                                       ; $7E38: $7B
    ld c, e                                       ; $7E39: $4B
    ld a, e                                       ; $7E3A: $7B
    ld h, h                                       ; $7E3B: $64
    ld a, e                                       ; $7E3C: $7B
    ld c, e                                       ; $7E3D: $4B
    ld a, e                                       ; $7E3E: $7B
    ld b, [hl]                                    ; $7E3F: $46
    ld [hl-], a                                   ; $7E40: $32
    ld a, [hl]                                    ; $7E41: $7E

    db $4D, $08, $08, $00, $FE, $EF, $7A, $04, $7B, $1D, $7B, $04, $7B, $46, $42, $7E
    db $4D, $08, $08, $00, $02, $A4, $7A, $BD, $7A, $D6, $7A, $BD, $7A, $46, $52, $7E
    db $4D, $08, $08, $FE, $00, $7D, $7B, $96, $7B, $AF, $7B

    sub [hl]                                      ; $7E6D: $96
    ld a, e                                       ; $7E6E: $7B
    ld b, [hl]                                    ; $7E6F: $46
    ld h, d                                       ; $7E70: $62
    ld a, [hl]                                    ; $7E71: $7E

    db $4D, $08, $08, $02, $00, $32, $7B, $4B, $7B, $64, $7B, $4B, $7B

    ld b, [hl]                                    ; $7E7F: $46
    ld [hl], d                                    ; $7E80: $72
    ld a, [hl]                                    ; $7E81: $7E

    db $4C, $FF, $00, $00, $04, $7B, $00, $46, $82, $7E, $4C, $FF, $00, $00, $BD, $7A
    db $00, $46, $8C, $7E, $4C, $FF, $00, $00, $96, $7B, $00, $46, $96, $7E, $4C, $FF
    db $00, $00, $4B, $7B, $00, $46, $A0, $7E

    ld c, h                                       ; $7EAA: $4C
    rst $38                                       ; $7EAB: $FF
    nop                                           ; $7EAC: $00
    nop                                           ; $7EAD: $00
    adc e                                         ; $7EAE: $8B
    ld a, d                                       ; $7EAF: $7A
    nop                                           ; $7EB0: $00
    ld b, [hl]                                    ; $7EB1: $46
    xor d                                         ; $7EB2: $AA
    ld a, [hl]                                    ; $7EB3: $7E

    db $4C, $FF, $00, $00, $72, $7A

    nop                                           ; $7EBA: $00
    ld b, [hl]                                    ; $7EBB: $46
    or h                                          ; $7EBC: $B4
    ld a, [hl]                                    ; $7EBD: $7E
    ld c, h                                       ; $7EBE: $4C
    rst $38                                       ; $7EBF: $FF
    nop                                           ; $7EC0: $00
    nop                                           ; $7EC1: $00
    ld e, c                                       ; $7EC2: $59
    ld a, d                                       ; $7EC3: $7A
    nop                                           ; $7EC4: $00
    ld b, [hl]                                    ; $7EC5: $46
    cp [hl]                                       ; $7EC6: $BE
    ld a, [hl]                                    ; $7EC7: $7E

    db $4C, $FF, $00, $00, $40, $7A

    nop                                           ; $7ECE: $00
    ld b, [hl]                                    ; $7ECF: $46
    ret z                                         ; $7ED0: $C8

    ld a, [hl]                                    ; $7ED1: $7E

    db $4D, $06, $08, $00, $00, $2B, $7C, $4C, $7C, $6D, $7C, $46, $D2, $7E

    ld c, l                                       ; $7EE0: $4D
    ld b, $08                                     ; $7EE1: $06 $08
    nop                                           ; $7EE3: $00
    nop                                           ; $7EE4: $00
    ret z                                         ; $7EE5: $C8

    ld a, e                                       ; $7EE6: $7B
    jp hl                                         ; $7EE7: $E9


    ld a, e                                       ; $7EE8: $7B
    ld a, [bc]                                    ; $7EE9: $0A
    ld a, h                                       ; $7EEA: $7C
    ld b, [hl]                                    ; $7EEB: $46
    ldh [$7E], a                                  ; $7EEC: $E0 $7E
    ld c, l                                       ; $7EEE: $4D
    inc b                                         ; $7EEF: $04
    inc b                                         ; $7EF0: $04
    rst $38                                       ; $7EF1: $FF
    db $FC                                        ; $7EF2: $FC
    and a                                         ; $7EF3: $A7
    ld a, h                                       ; $7EF4: $7C
    adc [hl]                                      ; $7EF5: $8E
    ld a, h                                       ; $7EF6: $7C
    ld b, [hl]                                    ; $7EF7: $46
    xor $7E                                       ; $7EF8: $EE $7E

    db $4D, $04, $04, $00, $04, $A7, $7C, $8E, $7C, $46, $FA, $7E

    ld c, l                                       ; $7F06: $4D
    ld [$0008], sp                                ; $7F07: $08 $08 $00
    nop                                           ; $7F0A: $00
    ld c, e                                       ; $7F0B: $4B
    ld a, e                                       ; $7F0C: $7B
    inc b                                         ; $7F0D: $04
    ld a, e                                       ; $7F0E: $7B
    sub [hl]                                      ; $7F0F: $96
    ld a, e                                       ; $7F10: $7B
    cp l                                          ; $7F11: $BD
    ld a, d                                       ; $7F12: $7A
    ld b, [hl]                                    ; $7F13: $46
    ld b, $7F                                     ; $7F14: $06 $7F
    ld c, h                                       ; $7F16: $4C
    ld bc, $0004                                  ; $7F17: $01 $04 $00
    ld a, l                                       ; $7F1A: $7D
    ld a, e                                       ; $7F1B: $7B
    nop                                           ; $7F1C: $00
    ld b, [hl]                                    ; $7F1D: $46
    ld d, $7F                                     ; $7F1E: $16 $7F
    ld c, h                                       ; $7F20: $4C
    ld bc, $00FC                                  ; $7F21: $01 $FC $00
    ld [hl-], a                                   ; $7F24: $32
    ld a, e                                       ; $7F25: $7B
    nop                                           ; $7F26: $00
    ld b, [hl]                                    ; $7F27: $46
    jr nz, jr_00E_7FA9                            ; $7F28: $20 $7F

    ld c, l                                       ; $7F2A: $4D
    inc b                                         ; $7F2B: $04
    ld [rRAMG], sp                                ; $7F2C: $08 $00 $00
    sbc $7C                                       ; $7F2F: $DE $7C
    rst $28                                       ; $7F31: $EF
    ld a, h                                       ; $7F32: $7C
    ld b, [hl]                                    ; $7F33: $46
    ld a, [hl+]                                   ; $7F34: $2A
    ld a, a                                       ; $7F35: $7F
    ld c, l                                       ; $7F36: $4D
    inc b                                         ; $7F37: $04
    ld [rRAMG], sp                                ; $7F38: $08 $00 $00
    cp h                                          ; $7F3B: $BC
    ld a, h                                       ; $7F3C: $7C
    call Call_00E_467C                            ; $7F3D: $CD $7C $46
    ld [hl], $7F                                  ; $7F40: $36 $7F
    ld c, h                                       ; $7F42: $4C
    ld h, b                                       ; $7F43: $60
    nop                                           ; $7F44: $00
    nop                                           ; $7F45: $00
    nop                                           ; $7F46: $00
    ld a, l                                       ; $7F47: $7D
    ld h, b                                       ; $7F48: $60
    nop                                           ; $7F49: $00
    nop                                           ; $7F4A: $00
    ld h, h                                       ; $7F4B: $64
    ld a, l                                       ; $7F4C: $7D
    ld h, b                                       ; $7F4D: $60
    nop                                           ; $7F4E: $00
    nop                                           ; $7F4F: $00
    nop                                           ; $7F50: $00
    ld a, l                                       ; $7F51: $7D
    ld h, b                                       ; $7F52: $60
    nop                                           ; $7F53: $00
    nop                                           ; $7F54: $00
    ld c, e                                       ; $7F55: $4B
    ld a, l                                       ; $7F56: $7D
    nop                                           ; $7F57: $00
    ld b, [hl]                                    ; $7F58: $46
    ld b, d                                       ; $7F59: $42
    ld a, a                                       ; $7F5A: $7F
    ld c, h                                       ; $7F5B: $4C
    jr nz, jr_00E_7F5E                            ; $7F5C: $20 $00

jr_00E_7F5E:
    nop                                           ; $7F5E: $00
    nop                                           ; $7F5F: $00
    ld a, l                                       ; $7F60: $7D
    nop                                           ; $7F61: $00
    ld c, l                                       ; $7F62: $4D
    inc b                                         ; $7F63: $04
    stop                                          ; $7F64: $10 $00
    nop                                           ; $7F66: $00
    add hl, de                                    ; $7F67: $19
    ld a, l                                       ; $7F68: $7D
    ld [hl-], a                                   ; $7F69: $32
    ld a, l                                       ; $7F6A: $7D
    ld b, [hl]                                    ; $7F6B: $46
    ld h, d                                       ; $7F6C: $62
    ld a, a                                       ; $7F6D: $7F
    ld c, l                                       ; $7F6E: $4D
    jr nz, jr_00E_7F75                            ; $7F6F: $20 $04

    nop                                           ; $7F71: $00
    nop                                           ; $7F72: $00
    xor a                                         ; $7F73: $AF
    ld a, l                                       ; $7F74: $7D

jr_00E_7F75:
    ret z                                         ; $7F75: $C8

    ld a, l                                       ; $7F76: $7D
    push hl                                       ; $7F77: $E5
    ld a, l                                       ; $7F78: $7D
    ret z                                         ; $7F79: $C8

    ld a, l                                       ; $7F7A: $7D
    xor a                                         ; $7F7B: $AF
    ld a, l                                       ; $7F7C: $7D
    ret z                                         ; $7F7D: $C8

    ld a, l                                       ; $7F7E: $7D
    push hl                                       ; $7F7F: $E5
    ld a, l                                       ; $7F80: $7D
    ret z                                         ; $7F81: $C8

    ld a, l                                       ; $7F82: $7D
    xor a                                         ; $7F83: $AF
    ld a, l                                       ; $7F84: $7D
    ret z                                         ; $7F85: $C8

    ld a, l                                       ; $7F86: $7D
    push hl                                       ; $7F87: $E5
    ld a, l                                       ; $7F88: $7D
    ret z                                         ; $7F89: $C8

    ld a, l                                       ; $7F8A: $7D
    xor a                                         ; $7F8B: $AF
    ld a, l                                       ; $7F8C: $7D
    ret z                                         ; $7F8D: $C8

    ld a, l                                       ; $7F8E: $7D
    push hl                                       ; $7F8F: $E5
    ld a, l                                       ; $7F90: $7D
    ret z                                         ; $7F91: $C8

    ld a, l                                       ; $7F92: $7D
    ld c, h                                       ; $7F93: $4C
    jr nz, jr_00E_7F96                            ; $7F94: $20 $00

jr_00E_7F96:
    nop                                           ; $7F96: $00
    xor a                                         ; $7F97: $AF
    ld a, l                                       ; $7F98: $7D
    nop                                           ; $7F99: $00
    ld b, [hl]                                    ; $7F9A: $46
    ld b, d                                       ; $7F9B: $42
    ld a, a                                       ; $7F9C: $7F
    ld c, h                                       ; $7F9D: $4C
    rst $38                                       ; $7F9E: $FF
    nop                                           ; $7F9F: $00
    nop                                           ; $7FA0: $00
    ld a, l                                       ; $7FA1: $7D
    ld a, l                                       ; $7FA2: $7D
    nop                                           ; $7FA3: $00
    ld b, [hl]                                    ; $7FA4: $46
    sbc l                                         ; $7FA5: $9D
    ld a, a                                       ; $7FA6: $7F
    ld c, h                                       ; $7FA7: $4C
    rst $38                                       ; $7FA8: $FF

jr_00E_7FA9:
    nop                                           ; $7FA9: $00
    nop                                           ; $7FAA: $00
    sub [hl]                                      ; $7FAB: $96
    ld a, l                                       ; $7FAC: $7D
    nop                                           ; $7FAD: $00
    ld b, [hl]                                    ; $7FAE: $46
    and a                                         ; $7FAF: $A7
    ld a, a                                       ; $7FB0: $7F
    ld c, h                                       ; $7FB1: $4C
    ld bc, $0000                                  ; $7FB2: $01 $00 $00
    sub [hl]                                      ; $7FB5: $96
    ld a, e                                       ; $7FB6: $7B
    nop                                           ; $7FB7: $00
    ld c, b                                       ; $7FB8: $48
    ld b, [hl]                                    ; $7FB9: $46
    or c                                          ; $7FBA: $B1
    ld a, a                                       ; $7FBB: $7F
    ld c, e                                       ; $7FBC: $4B
    inc bc                                        ; $7FBD: $03
    ld c, $00                                     ; $7FBE: $0E $00
    nop                                           ; $7FC0: $00
    db $D3                                        ; $7FC1: $D3
    ld a, a                                       ; $7FC2: $7F
    ld c, $03                                     ; $7FC3: $0E $03
    nop                                           ; $7FC5: $00
    jp c, $0E7F                                   ; $7FC6: $DA $7F $0E

    ld [bc], a                                    ; $7FC9: $02
    nop                                           ; $7FCA: $00
    add sp, $7F                                   ; $7FCB: $E8 $7F
    ld c, $01                                     ; $7FCD: $0E $01
    nop                                           ; $7FCF: $00
    pop hl                                        ; $7FD0: $E1
    ld a, a                                       ; $7FD1: $7F
    rst $38                                       ; $7FD2: $FF
    inc d                                         ; $7FD3: $14
    ld c, $82                                     ; $7FD4: $0E $82
    ld a, [hl]                                    ; $7FD6: $7E
    ld h, d                                       ; $7FD7: $62
    ld bc, $1412                                  ; $7FD8: $01 $12 $14
    ld c, $8C                                     ; $7FDB: $0E $8C
    ld a, [hl]                                    ; $7FDD: $7E
    ld h, d                                       ; $7FDE: $62
    ld bc, $1412                                  ; $7FDF: $01 $12 $14
    ld c, $96                                     ; $7FE2: $0E $96
    ld a, [hl]                                    ; $7FE4: $7E
    ld h, d                                       ; $7FE5: $62
    ld bc, $1412                                  ; $7FE6: $01 $12 $14
    ld c, $A0                                     ; $7FE9: $0E $A0
    ld a, [hl]                                    ; $7FEB: $7E
    ld h, d                                       ; $7FEC: $62
    ld bc, $7E12                                  ; $7FED: $01 $12 $7E
    ld h, d                                       ; $7FF0: $62
    ld bc, $0012                                  ; $7FF1: $01 $12 $00
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
