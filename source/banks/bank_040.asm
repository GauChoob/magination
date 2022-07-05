SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    ld bc, $0F00                                  ; $4002: $01 $00 $0F
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    inc bc                                        ; $4008: $03
    nop                                           ; $4009: $00
    inc c                                         ; $400A: $0C
    nop                                           ; $400B: $00
    nop                                           ; $400C: $00
    nop                                           ; $400D: $00
    ld bc, $0F00                                  ; $400E: $01 $00 $0F
    nop                                           ; $4011: $00
    pop af                                        ; $4012: $F1
    ld c, $0D                                     ; $4013: $0E $0D
    cp $BD                                        ; $4015: $FE $BD
    ld a, [hl]                                    ; $4017: $7E
    ld a, d                                       ; $4018: $7A
    db $FC                                        ; $4019: $FC
    cp d                                          ; $401A: $BA
    ld a, h                                       ; $401B: $7C
    sub d                                         ; $401C: $92

jr_040_401D:
    ld a, h                                       ; $401D: $7C
    ld l, d                                       ; $401E: $6A
    sub h                                         ; $401F: $94
    ld [bc], a                                    ; $4020: $02
    ld bc, $0003                                  ; $4021: $01 $03 $00
    inc b                                         ; $4024: $04
    nop                                           ; $4025: $00
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    nop                                           ; $402A: $00
    nop                                           ; $402B: $00
    nop                                           ; $402C: $00
    nop                                           ; $402D: $00
    nop                                           ; $402E: $00
    nop                                           ; $402F: $00
    sub [hl]                                      ; $4030: $96
    nop                                           ; $4031: $00
    inc d                                         ; $4032: $14
    nop                                           ; $4033: $00
    inc h                                         ; $4034: $24
    nop                                           ; $4035: $00
    inc h                                         ; $4036: $24
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    nop                                           ; $403A: $00
    nop                                           ; $403B: $00
    nop                                           ; $403C: $00
    nop                                           ; $403D: $00
    nop                                           ; $403E: $00
    nop                                           ; $403F: $00
    inc c                                         ; $4040: $0C
    inc bc                                        ; $4041: $03
    jr nc, jr_040_4053                            ; $4042: $30 $0F

    ld c, l                                       ; $4044: $4D
    ld a, $DD                                     ; $4045: $3E $DD
    ld a, $2A                                     ; $4047: $3E $2A
    inc e                                         ; $4049: $1C
    ld d, d                                       ; $404A: $52
    inc l                                         ; $404B: $2C
    ld l, h                                       ; $404C: $6C
    nop                                           ; $404D: $00
    adc b                                         ; $404E: $88
    nop                                           ; $404F: $00
    ld bc, $0600                                  ; $4050: $01 $00 $06

jr_040_4053:
    nop                                           ; $4053: $00
    ld a, [bc]                                    ; $4054: $0A
    inc b                                         ; $4055: $04
    inc d                                         ; $4056: $14
    ld [$1068], sp                                ; $4057: $08 $68 $10
    sub b                                         ; $405A: $90
    ld h, b                                       ; $405B: $60
    db $10                                        ; $405C: $10
    ldh [rNR41], a                                ; $405D: $E0 $20
    ret nz                                        ; $405F: $C0

    inc bc                                        ; $4060: $03
    nop                                           ; $4061: $00
    dec b                                         ; $4062: $05
    nop                                           ; $4063: $00
    ld a, [bc]                                    ; $4064: $0A
    nop                                           ; $4065: $00
    inc b                                         ; $4066: $04
    nop                                           ; $4067: $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406A: $00
    nop                                           ; $406B: $00
    nop                                           ; $406C: $00
    nop                                           ; $406D: $00
    nop                                           ; $406E: $00
    nop                                           ; $406F: $00
    ld bc, $0200                                  ; $4070: $01 $00 $02
    nop                                           ; $4073: $00
    inc c                                         ; $4074: $0C
    nop                                           ; $4075: $00
    inc d                                         ; $4076: $14
    ld [$1028], sp                                ; $4077: $08 $28 $10
    ld d, b                                       ; $407A: $50
    jr nz, jr_040_401D                            ; $407B: $20 $A0

    ld b, b                                       ; $407D: $40
    ret nz                                        ; $407E: $C0

    nop                                           ; $407F: $00
    ld bc, $0200                                  ; $4080: $01 $00 $02
    nop                                           ; $4083: $00
    inc b                                         ; $4084: $04
    nop                                           ; $4085: $00
    ld [$1000], sp                                ; $4086: $08 $00 $10
    nop                                           ; $4089: $00
    jr nz, jr_040_408C                            ; $408A: $20 $00

jr_040_408C:
    ld b, b                                       ; $408C: $40
    nop                                           ; $408D: $00
    add b                                         ; $408E: $80
    nop                                           ; $408F: $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    ld [$1810], sp                                ; $4096: $08 $10 $18
    nop                                           ; $4099: $00
    nop                                           ; $409A: $00
    nop                                           ; $409B: $00
    nop                                           ; $409C: $00
    nop                                           ; $409D: $00
    nop                                           ; $409E: $00
    nop                                           ; $409F: $00
    jr z, @+$16                                   ; $40A0: $28 $14

    ld [hl-], a                                   ; $40A2: $32
    ld h, b                                       ; $40A3: $60
    pop hl                                        ; $40A4: $E1
    ld b, b                                       ; $40A5: $40
    ld b, c                                       ; $40A6: $41
    add b                                         ; $40A7: $80
    add c                                         ; $40A8: $81
    nop                                           ; $40A9: $00
    inc bc                                        ; $40AA: $03
    add d                                         ; $40AB: $82
    ld b, h                                       ; $40AC: $44
    ld b, $3C                                     ; $40AD: $06 $3C
    nop                                           ; $40AF: $00
    ld [bc], a                                    ; $40B0: $02
    dec b                                         ; $40B1: $05
    ld [$0610], sp                                ; $40B2: $08 $10 $06
    jr z, @+$4A                                   ; $40B5: $28 $48

    inc e                                         ; $40B7: $1C
    ld d, b                                       ; $40B8: $50
    ld [$8020], sp                                ; $40B9: $08 $20 $80
    add b                                         ; $40BC: $80
    nop                                           ; $40BD: $00
    nop                                           ; $40BE: $00
    add b                                         ; $40BF: $80
    ldh [rP1], a                                  ; $40C0: $E0 $00
    jr jr_040_40C4                                ; $40C2: $18 $00

jr_040_40C4:
    inc b                                         ; $40C4: $04
    nop                                           ; $40C5: $00
    ld [bc], a                                    ; $40C6: $02
    nop                                           ; $40C7: $00
    ld [bc], a                                    ; $40C8: $02
    nop                                           ; $40C9: $00
    ld bc, $0100                                  ; $40CA: $01 $00 $01
    nop                                           ; $40CD: $00
    nop                                           ; $40CE: $00
    ld bc, $0000                                  ; $40CF: $01 $00 $00
    nop                                           ; $40D2: $00
    nop                                           ; $40D3: $00
    ld bc, $1806                                  ; $40D4: $01 $06 $18
    nop                                           ; $40D7: $00
    ld b, e                                       ; $40D8: $43
    jr nz, jr_040_40E7                            ; $40D9: $20 $0C

    add b                                         ; $40DB: $80
    jr c, jr_040_40DE                             ; $40DC: $38 $00

jr_040_40DE:
    ld c, b                                       ; $40DE: $48
    jr nc, jr_040_40E1                            ; $40DF: $30 $00

jr_040_40E1:
    nop                                           ; $40E1: $00
    nop                                           ; $40E2: $00
    nop                                           ; $40E3: $00
    ldh a, [rP1]                                  ; $40E4: $F0 $00
    inc c                                         ; $40E6: $0C

jr_040_40E7:
    nop                                           ; $40E7: $00
    inc bc                                        ; $40E8: $03
    nop                                           ; $40E9: $00
    nop                                           ; $40EA: $00
    nop                                           ; $40EB: $00
    nop                                           ; $40EC: $00
    nop                                           ; $40ED: $00
    nop                                           ; $40EE: $00
    nop                                           ; $40EF: $00
    nop                                           ; $40F0: $00
    nop                                           ; $40F1: $00
    nop                                           ; $40F2: $00
    nop                                           ; $40F3: $00
    nop                                           ; $40F4: $00
    nop                                           ; $40F5: $00
    nop                                           ; $40F6: $00
    nop                                           ; $40F7: $00
    nop                                           ; $40F8: $00
    nop                                           ; $40F9: $00
    add b                                         ; $40FA: $80
    nop                                           ; $40FB: $00
    ld b, b                                       ; $40FC: $40
    nop                                           ; $40FD: $00
    jr nz, jr_040_4100                            ; $40FE: $20 $00

jr_040_4100:
    nop                                           ; $4100: $00
    inc b                                         ; $4101: $04
    add hl, bc                                    ; $4102: $09
    nop                                           ; $4103: $00
    ld [bc], a                                    ; $4104: $02
    add hl, bc                                    ; $4105: $09
    ld [de], a                                    ; $4106: $12
    ld bc, $0017                                  ; $4107: $01 $17 $00
    inc h                                         ; $410A: $24
    nop                                           ; $410B: $00
    jr z, jr_040_410E                             ; $410C: $28 $00

jr_040_410E:
    ld [$F020], sp                                ; $410E: $08 $20 $F0
    ld h, b                                       ; $4111: $60
    ret nc                                        ; $4112: $D0

    ldh [$A0], a                                  ; $4113: $E0 $A0
    ret nz                                        ; $4115: $C0

    ret nz                                        ; $4116: $C0

    nop                                           ; $4117: $00
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    nop                                           ; $411A: $00
    nop                                           ; $411B: $00
    nop                                           ; $411C: $00
    nop                                           ; $411D: $00
    nop                                           ; $411E: $00
    nop                                           ; $411F: $00
    stop                                          ; $4120: $10 $00
    stop                                          ; $4122: $10 $00
    ld [$0800], sp                                ; $4124: $08 $00 $08
    nop                                           ; $4127: $00
    inc b                                         ; $4128: $04
    nop                                           ; $4129: $00
    inc b                                         ; $412A: $04
    nop                                           ; $412B: $00
    inc b                                         ; $412C: $04
    nop                                           ; $412D: $00
    inc b                                         ; $412E: $04
    nop                                           ; $412F: $00
    jr nc, jr_040_4132                            ; $4130: $30 $00

jr_040_4132:
    jr nz, jr_040_4134                            ; $4132: $20 $00

jr_040_4134:
    ld b, b                                       ; $4134: $40
    nop                                           ; $4135: $00
    ld b, b                                       ; $4136: $40
    nop                                           ; $4137: $00
    ld b, b                                       ; $4138: $40
    nop                                           ; $4139: $00
    add b                                         ; $413A: $80
    nop                                           ; $413B: $00
    add b                                         ; $413C: $80
    nop                                           ; $413D: $00
    add b                                         ; $413E: $80
    nop                                           ; $413F: $00
    ld bc, $0300                                  ; $4140: $01 $00 $03
    nop                                           ; $4143: $00
    inc bc                                        ; $4144: $03
    nop                                           ; $4145: $00
    ld b, $00                                     ; $4146: $06 $00
    inc c                                         ; $4148: $0C
    nop                                           ; $4149: $00
    inc c                                         ; $414A: $0C
    nop                                           ; $414B: $00
    jr jr_040_414E                                ; $414C: $18 $00

jr_040_414E:
    stop                                          ; $414E: $10 $00
    inc bc                                        ; $4150: $03
    nop                                           ; $4151: $00
    rlca                                          ; $4152: $07
    nop                                           ; $4153: $00
    ld c, $00                                     ; $4154: $0E $00
    inc e                                         ; $4156: $1C
    nop                                           ; $4157: $00
    jr c, jr_040_415A                             ; $4158: $38 $00

jr_040_415A:
    ld [hl], b                                    ; $415A: $70
    nop                                           ; $415B: $00
    ldh [rP1], a                                  ; $415C: $E0 $00
    ret nz                                        ; $415E: $C0

    nop                                           ; $415F: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    nop                                           ; $4164: $00
    nop                                           ; $4165: $00
    inc bc                                        ; $4166: $03
    nop                                           ; $4167: $00
    ld c, $00                                     ; $4168: $0E $00
    inc e                                         ; $416A: $1C
    nop                                           ; $416B: $00
    ld [hl], b                                    ; $416C: $70
    nop                                           ; $416D: $00
    ldh [rP1], a                                  ; $416E: $E0 $00
    rlca                                          ; $4170: $07
    nop                                           ; $4171: $00
    jr c, jr_040_4174                             ; $4172: $38 $00

jr_040_4174:
    ret nz                                        ; $4174: $C0

    nop                                           ; $4175: $00
    add b                                         ; $4176: $80
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00
    nop                                           ; $417C: $00
    nop                                           ; $417D: $00
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    ld bc, $0900                                  ; $4180: $01 $00 $09
    ld b, $20                                     ; $4183: $06 $20
    rra                                           ; $4185: $1F
    ld d, b                                       ; $4186: $50
    ccf                                           ; $4187: $3F
    ld c, d                                       ; $4188: $4A
    ccf                                           ; $4189: $3F
    dec hl                                        ; $418A: $2B
    ld e, a                                       ; $418B: $5F
    ccf                                           ; $418C: $3F
    ld c, a                                       ; $418D: $4F
    cp a                                          ; $418E: $BF
    ld c, a                                       ; $418F: $4F
    and b                                         ; $4190: $A0
    ld b, b                                       ; $4191: $40
    add sp, $10                                   ; $4192: $E8 $10
    or h                                          ; $4194: $B4
    ld c, b                                       ; $4195: $48
    ld a, [$2304]                                 ; $4196: $FA $04 $23
    call c, $FCC2                                 ; $4199: $DC $C2 $FC
    rst $20                                       ; $419C: $E7
    ld hl, sp-$79                                 ; $419D: $F8 $87
    ld hl, sp-$52                                 ; $419F: $F8 $AE
    ld e, a                                       ; $41A1: $5F
    inc l                                         ; $41A2: $2C
    rst $18                                       ; $41A3: $DF
    ld a, [bc]                                    ; $41A4: $0A
    db $FD                                        ; $41A5: $FD
    inc d                                         ; $41A6: $14
    ld a, e                                       ; $41A7: $7B
    ld h, $19                                     ; $41A8: $26 $19
    ld a, [bc]                                    ; $41AA: $0A
    dec c                                         ; $41AB: $0D
    add hl, bc                                    ; $41AC: $09
    ld b, $07                                     ; $41AD: $06 $07
    nop                                           ; $41AF: $00

jr_040_41B0:
    ld c, $F0                                     ; $41B0: $0E $F0
    ld c, $F0                                     ; $41B2: $0E $F0
    ld c, $F0                                     ; $41B4: $0E $F0
    ld a, [hl]                                    ; $41B6: $7E
    ldh [$0E], a                                  ; $41B7: $E0 $0E
    ldh a, [$84]                                  ; $41B9: $F0 $84
    ld a, b                                       ; $41BB: $78
    ld hl, sp+$00                                 ; $41BC: $F8 $00

jr_040_41BE:
    and b                                         ; $41BE: $A0
    nop                                           ; $41BF: $00
    nop                                           ; $41C0: $00
    nop                                           ; $41C1: $00
    ld b, $01                                     ; $41C2: $06 $01
    ld [de], a                                    ; $41C4: $12
    rrca                                          ; $41C5: $0F
    jr nz, @+$21                                  ; $41C6: $20 $1F

    inc c                                         ; $41C8: $0C
    scf                                           ; $41C9: $37
    ld e, d                                       ; $41CA: $5A
    daa                                           ; $41CB: $27
    or a                                          ; $41CC: $B7
    ld c, a                                       ; $41CD: $4F
    ccf                                           ; $41CE: $3F
    rst $08                                       ; $41CF: $CF
    nop                                           ; $41D0: $00
    nop                                           ; $41D1: $00
    ld hl, sp+$00                                 ; $41D2: $F8 $00

jr_040_41D4:
    inc [hl]                                      ; $41D4: $34
    ret z                                         ; $41D5: $C8

    ld l, $D0                                     ; $41D6: $2E $D0
    jr z, jr_040_41B0                             ; $41D8: $28 $D6

    db $DB                                        ; $41DA: $DB
    db $E4                                        ; $41DB: $E4
    db $EB                                        ; $41DC: $EB
    db $F4                                        ; $41DD: $F4
    ldh a, [rIE]                                  ; $41DE: $F0 $FF
    rrca                                          ; $41E0: $0F
    rst $38                                       ; $41E1: $FF
    sbc b                                         ; $41E2: $98
    ld a, a                                       ; $41E3: $7F
    ld b, d                                       ; $41E4: $42
    dec a                                         ; $41E5: $3D
    ld [$0C37], sp                                ; $41E6: $08 $37 $0C
    inc sp                                        ; $41E9: $33
    jr z, @+$19                                   ; $41EA: $28 $17

    rlca                                          ; $41EC: $07
    jr @+$09                                      ; $41ED: $18 $07

    nop                                           ; $41EF: $00
    sub e                                         ; $41F0: $93
    db $FC                                        ; $41F1: $FC
    ld [bc], a                                    ; $41F2: $02
    db $FD                                        ; $41F3: $FD
    rlca                                          ; $41F4: $07
    ld hl, sp+$1E                                 ; $41F5: $F8 $1E
    ldh [$BE], a                                  ; $41F7: $E0 $BE
    ret nz                                        ; $41F9: $C0

    cp h                                          ; $41FA: $BC
    ret nz                                        ; $41FB: $C0

    jr c, jr_040_41BE                             ; $41FC: $38 $C0

    sub b                                         ; $41FE: $90
    ld h, b                                       ; $41FF: $60
    rlca                                          ; $4200: $07
    nop                                           ; $4201: $00
    ld [$0507], sp                                ; $4202: $08 $07 $05
    dec de                                        ; $4205: $1B
    ld c, l                                       ; $4206: $4D
    inc sp                                        ; $4207: $33
    ld a, [de]                                    ; $4208: $1A
    rst $20                                       ; $4209: $E7
    rla                                           ; $420A: $17
    rst $28                                       ; $420B: $EF
    rra                                           ; $420C: $1F
    rst $38                                       ; $420D: $FF
    cp a                                          ; $420E: $BF
    ld a, a                                       ; $420F: $7F
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00
    jr nz, jr_040_41D4                            ; $4212: $20 $C0

    inc e                                         ; $4214: $1C
    ldh [$0A], a                                  ; $4215: $E0 $0A
    db $F4                                        ; $4217: $F4
    sbc [hl]                                      ; $4218: $9E
    ldh [$D6], a                                  ; $4219: $E0 $D6
    add sp, -$2F                                  ; $421B: $E8 $D1
    xor $EF                                       ; $421D: $EE $EF
    ldh a, [rLCDC]                                ; $421F: $F0 $40
    ld a, a                                       ; $4221: $7F
    ret nz                                        ; $4222: $C0

    ld a, a                                       ; $4223: $7F
    or b                                          ; $4224: $B0
    ld c, a                                       ; $4225: $4F
    and d                                         ; $4226: $A2
    ld e, a                                       ; $4227: $5F
    ld d, d                                       ; $4228: $52
    cpl                                           ; $4229: $2F
    add hl, hl                                    ; $422A: $29
    ld d, $19                                     ; $422B: $16 $19
    ld b, $0C                                     ; $422D: $06 $0C
    inc bc                                        ; $422F: $03
    and a                                         ; $4230: $A7
    ld hl, sp+$21                                 ; $4231: $F8 $21
    cp $0F                                        ; $4233: $FE $0F
    ldh a, [$0E]                                  ; $4235: $F0 $0E
    ldh a, [$FC]                                  ; $4237: $F0 $FC
    nop                                           ; $4239: $00
    ld hl, sp+$00                                 ; $423A: $F8 $00
    or b                                          ; $423C: $B0
    ld b, b                                       ; $423D: $40
    ret nz                                        ; $423E: $C0

    nop                                           ; $423F: $00
    ld bc, $1000                                  ; $4240: $01 $00 $10
    rrca                                          ; $4243: $0F
    daa                                           ; $4244: $27
    jr jr_040_4256                                ; $4245: $18 $0F

    jr nc, jr_040_424C                            ; $4247: $30 $03

    ccf                                           ; $4249: $3F
    rra                                           ; $424A: $1F
    ccf                                           ; $424B: $3F

jr_040_424C:
    dec hl                                        ; $424C: $2B
    ld a, a                                       ; $424D: $7F
    sub l                                         ; $424E: $95
    ld l, e                                       ; $424F: $6B
    and b                                         ; $4250: $A0
    ld b, b                                       ; $4251: $40
    db $10                                        ; $4252: $10
    ldh [$A0], a                                  ; $4253: $E0 $A0
    ld a, b                                       ; $4255: $78

jr_040_4256:
    ld b, h                                       ; $4256: $44
    ld hl, sp-$7E                                 ; $4257: $F8 $82
    db $FC                                        ; $4259: $FC
    db $E3                                        ; $425A: $E3
    db $FC                                        ; $425B: $FC
    xor $F1                                       ; $425C: $EE $F1
    ld [$30F5], a                                 ; $425E: $EA $F5 $30
    rst $08                                       ; $4261: $CF
    add b                                         ; $4262: $80
    ld a, a                                       ; $4263: $7F
    inc h                                         ; $4264: $24
    ld e, a                                       ; $4265: $5F
    ld h, h                                       ; $4266: $64
    rra                                           ; $4267: $1F
    inc sp                                        ; $4268: $33
    inc c                                         ; $4269: $0C
    scf                                           ; $426A: $37
    ld [$0817], sp                                ; $426B: $08 $17 $08
    rrca                                          ; $426E: $0F
    nop                                           ; $426F: $00
    ld l, l                                       ; $4270: $6D
    ld a, [c]                                     ; $4271: $F2
    ld l, $F1                                     ; $4272: $2E $F1
    rlca                                          ; $4274: $07
    ld hl, sp+$01                                 ; $4275: $F8 $01
    cp $9A                                        ; $4277: $FE $9A
    ld h, h                                       ; $4279: $64
    db $F4                                        ; $427A: $F4
    ld [$00F0], sp                                ; $427B: $08 $F0 $00
    ret nz                                        ; $427E: $C0

    nop                                           ; $427F: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    ld [$120C], sp                                ; $4284: $08 $0C $12
    inc e                                         ; $4287: $1C
    inc b                                         ; $4288: $04
    jr c, jr_040_42C7                             ; $4289: $38 $3C

    nop                                           ; $428B: $00
    ld [rRAMG], sp                                ; $428C: $08 $00 $00
    nop                                           ; $428F: $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    inc [hl]                                      ; $4294: $34
    jr c, jr_040_42E5                             ; $4295: $38 $4E

    jr nc, jr_040_42D5                            ; $4297: $30 $3C

    nop                                           ; $4299: $00
    nop                                           ; $429A: $00
    nop                                           ; $429B: $00
    nop                                           ; $429C: $00
    nop                                           ; $429D: $00
    nop                                           ; $429E: $00
    nop                                           ; $429F: $00
    nop                                           ; $42A0: $00
    nop                                           ; $42A1: $00
    nop                                           ; $42A2: $00
    nop                                           ; $42A3: $00
    jr c, jr_040_42B6                             ; $42A4: $38 $10

    inc [hl]                                      ; $42A6: $34
    jr c, jr_040_42D5                             ; $42A7: $38 $2C

    db $10                                        ; $42A9: $10
    inc e                                         ; $42AA: $1C
    nop                                           ; $42AB: $00
    ld [rRAMG], sp                                ; $42AC: $08 $00 $00
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00
    nop                                           ; $42B2: $00
    nop                                           ; $42B3: $00
    nop                                           ; $42B4: $00
    nop                                           ; $42B5: $00

jr_040_42B6:
    ld [$1810], sp                                ; $42B6: $08 $10 $18
    nop                                           ; $42B9: $00
    nop                                           ; $42BA: $00
    nop                                           ; $42BB: $00
    nop                                           ; $42BC: $00
    nop                                           ; $42BD: $00
    nop                                           ; $42BE: $00
    nop                                           ; $42BF: $00
    ldh [$3D], a                                  ; $42C0: $E0 $3D
    nop                                           ; $42C2: $00
    nop                                           ; $42C3: $00
    ld l, $7D                                     ; $42C4: $2E $7D
    sbc a                                         ; $42C6: $9F

jr_040_42C7:
    cpl                                           ; $42C7: $2F
    rra                                           ; $42C8: $1F
    ld a, h                                       ; $42C9: $7C
    rra                                           ; $42CA: $1F
    ld a, h                                       ; $42CB: $7C
    rra                                           ; $42CC: $1F
    ld a, h                                       ; $42CD: $7C
    rra                                           ; $42CE: $1F
    ld a, h                                       ; $42CF: $7C
    rra                                           ; $42D0: $1F
    ld a, h                                       ; $42D1: $7C
    rra                                           ; $42D2: $1F
    ld a, h                                       ; $42D3: $7C
    rra                                           ; $42D4: $1F

jr_040_42D5:
    ld a, h                                       ; $42D5: $7C
    rra                                           ; $42D6: $1F
    ld a, h                                       ; $42D7: $7C
    rra                                           ; $42D8: $1F
    ld a, h                                       ; $42D9: $7C
    rra                                           ; $42DA: $1F
    ld a, h                                       ; $42DB: $7C
    rra                                           ; $42DC: $1F
    ld a, h                                       ; $42DD: $7C
    rra                                           ; $42DE: $1F
    ld a, h                                       ; $42DF: $7C
    rra                                           ; $42E0: $1F
    ld a, h                                       ; $42E1: $7C
    rra                                           ; $42E2: $1F
    ld a, h                                       ; $42E3: $7C
    rra                                           ; $42E4: $1F

jr_040_42E5:
    ld a, h                                       ; $42E5: $7C
    rra                                           ; $42E6: $1F
    ld a, h                                       ; $42E7: $7C
    rra                                           ; $42E8: $1F
    ld a, h                                       ; $42E9: $7C
    rra                                           ; $42EA: $1F
    ld a, h                                       ; $42EB: $7C
    rra                                           ; $42EC: $1F
    ld a, h                                       ; $42ED: $7C
    rra                                           ; $42EE: $1F
    ld a, h                                       ; $42EF: $7C
    rra                                           ; $42F0: $1F
    ld a, h                                       ; $42F1: $7C
    rra                                           ; $42F2: $1F
    ld a, h                                       ; $42F3: $7C
    rra                                           ; $42F4: $1F
    ld a, h                                       ; $42F5: $7C
    rra                                           ; $42F6: $1F
    ld a, h                                       ; $42F7: $7C
    rra                                           ; $42F8: $1F
    ld a, h                                       ; $42F9: $7C
    rra                                           ; $42FA: $1F
    ld a, h                                       ; $42FB: $7C
    rra                                           ; $42FC: $1F
    ld a, h                                       ; $42FD: $7C
    rra                                           ; $42FE: $1F
    ld a, h                                       ; $42FF: $7C
    rst $38                                       ; $4300: $FF
    ld a, a                                       ; $4301: $7F
    nop                                           ; $4302: $00
    nop                                           ; $4303: $00
    ld h, e                                       ; $4304: $63
    inc c                                         ; $4305: $0C
    adc $39                                       ; $4306: $CE $39
    rra                                           ; $4308: $1F
    ld a, h                                       ; $4309: $7C
    rra                                           ; $430A: $1F
    ld a, h                                       ; $430B: $7C
    rra                                           ; $430C: $1F
    ld a, h                                       ; $430D: $7C
    rra                                           ; $430E: $1F
    ld a, h                                       ; $430F: $7C
    rra                                           ; $4310: $1F
    ld a, h                                       ; $4311: $7C
    rra                                           ; $4312: $1F
    ld a, h                                       ; $4313: $7C
    rra                                           ; $4314: $1F
    ld a, h                                       ; $4315: $7C
    rra                                           ; $4316: $1F
    ld a, h                                       ; $4317: $7C
    rra                                           ; $4318: $1F
    ld a, h                                       ; $4319: $7C
    rra                                           ; $431A: $1F
    ld a, h                                       ; $431B: $7C
    rra                                           ; $431C: $1F
    ld a, h                                       ; $431D: $7C
    rra                                           ; $431E: $1F
    ld a, h                                       ; $431F: $7C
    rra                                           ; $4320: $1F
    ld a, h                                       ; $4321: $7C
    rra                                           ; $4322: $1F
    ld a, h                                       ; $4323: $7C
    rra                                           ; $4324: $1F
    ld a, h                                       ; $4325: $7C
    rra                                           ; $4326: $1F
    ld a, h                                       ; $4327: $7C
    rra                                           ; $4328: $1F
    ld a, h                                       ; $4329: $7C
    rra                                           ; $432A: $1F
    ld a, h                                       ; $432B: $7C
    rra                                           ; $432C: $1F
    ld a, h                                       ; $432D: $7C
    rra                                           ; $432E: $1F
    ld a, h                                       ; $432F: $7C
    rra                                           ; $4330: $1F
    ld a, h                                       ; $4331: $7C
    rra                                           ; $4332: $1F
    ld a, h                                       ; $4333: $7C
    rra                                           ; $4334: $1F
    ld a, h                                       ; $4335: $7C
    rra                                           ; $4336: $1F
    ld a, h                                       ; $4337: $7C
    rra                                           ; $4338: $1F
    ld a, h                                       ; $4339: $7C
    rra                                           ; $433A: $1F
    ld a, h                                       ; $433B: $7C
    rra                                           ; $433C: $1F
    ld a, h                                       ; $433D: $7C
    rra                                           ; $433E: $1F
    ld a, h                                       ; $433F: $7C
    nop                                           ; $4340: $00
    ld b, d                                       ; $4341: $42
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    call z, $BB04                                 ; $4344: $CC $04 $BB
    ld h, $1F                                     ; $4347: $26 $1F
    ld a, h                                       ; $4349: $7C
    rra                                           ; $434A: $1F
    ld a, h                                       ; $434B: $7C
    rra                                           ; $434C: $1F
    ld a, h                                       ; $434D: $7C
    rra                                           ; $434E: $1F
    ld a, h                                       ; $434F: $7C
    rra                                           ; $4350: $1F
    ld a, h                                       ; $4351: $7C
    rra                                           ; $4352: $1F
    ld a, h                                       ; $4353: $7C
    rra                                           ; $4354: $1F
    ld a, h                                       ; $4355: $7C
    rra                                           ; $4356: $1F
    ld a, h                                       ; $4357: $7C
    rra                                           ; $4358: $1F
    ld a, h                                       ; $4359: $7C
    rra                                           ; $435A: $1F
    ld a, h                                       ; $435B: $7C
    rra                                           ; $435C: $1F
    ld a, h                                       ; $435D: $7C
    rra                                           ; $435E: $1F
    ld a, h                                       ; $435F: $7C
    rra                                           ; $4360: $1F
    ld a, h                                       ; $4361: $7C
    rra                                           ; $4362: $1F
    ld a, h                                       ; $4363: $7C
    rra                                           ; $4364: $1F
    ld a, h                                       ; $4365: $7C
    rra                                           ; $4366: $1F
    ld a, h                                       ; $4367: $7C
    rra                                           ; $4368: $1F
    ld a, h                                       ; $4369: $7C
    rra                                           ; $436A: $1F
    ld a, h                                       ; $436B: $7C
    rra                                           ; $436C: $1F
    ld a, h                                       ; $436D: $7C
    rra                                           ; $436E: $1F
    ld a, h                                       ; $436F: $7C
    rra                                           ; $4370: $1F
    ld a, h                                       ; $4371: $7C
    rra                                           ; $4372: $1F
    ld a, h                                       ; $4373: $7C
    rra                                           ; $4374: $1F
    ld a, h                                       ; $4375: $7C
    rra                                           ; $4376: $1F
    ld a, h                                       ; $4377: $7C
    rra                                           ; $4378: $1F
    ld a, h                                       ; $4379: $7C
    rra                                           ; $437A: $1F
    ld a, h                                       ; $437B: $7C
    rra                                           ; $437C: $1F
    ld a, h                                       ; $437D: $7C
    rra                                           ; $437E: $1F
    ld a, h                                       ; $437F: $7C
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    inc a                                         ; $4383: $3C
    ldh a, [$7D]                                  ; $4384: $F0 $7D
    rst $38                                       ; $4386: $FF
    inc bc                                        ; $4387: $03
    rra                                           ; $4388: $1F
    nop                                           ; $4389: $00
    rra                                           ; $438A: $1F
    nop                                           ; $438B: $00
    rra                                           ; $438C: $1F
    nop                                           ; $438D: $00
    rra                                           ; $438E: $1F
    nop                                           ; $438F: $00
    rra                                           ; $4390: $1F
    nop                                           ; $4391: $00
    rra                                           ; $4392: $1F
    nop                                           ; $4393: $00
    rra                                           ; $4394: $1F
    nop                                           ; $4395: $00
    rra                                           ; $4396: $1F
    nop                                           ; $4397: $00
    rra                                           ; $4398: $1F
    nop                                           ; $4399: $00
    rra                                           ; $439A: $1F
    nop                                           ; $439B: $00
    rra                                           ; $439C: $1F
    nop                                           ; $439D: $00
    rra                                           ; $439E: $1F
    nop                                           ; $439F: $00
    rra                                           ; $43A0: $1F
    nop                                           ; $43A1: $00
    rra                                           ; $43A2: $1F
    nop                                           ; $43A3: $00
    rra                                           ; $43A4: $1F
    nop                                           ; $43A5: $00
    rra                                           ; $43A6: $1F
    nop                                           ; $43A7: $00
    rra                                           ; $43A8: $1F
    nop                                           ; $43A9: $00
    rra                                           ; $43AA: $1F
    nop                                           ; $43AB: $00
    rra                                           ; $43AC: $1F
    nop                                           ; $43AD: $00
    rra                                           ; $43AE: $1F
    nop                                           ; $43AF: $00
    rra                                           ; $43B0: $1F
    nop                                           ; $43B1: $00
    rra                                           ; $43B2: $1F
    nop                                           ; $43B3: $00
    rra                                           ; $43B4: $1F
    nop                                           ; $43B5: $00
    rra                                           ; $43B6: $1F
    nop                                           ; $43B7: $00
    rra                                           ; $43B8: $1F
    nop                                           ; $43B9: $00
    rra                                           ; $43BA: $1F
    nop                                           ; $43BB: $00
    rra                                           ; $43BC: $1F
    nop                                           ; $43BD: $00
    rra                                           ; $43BE: $1F
    nop                                           ; $43BF: $00

    db $00, $00, $04, $00, $FF, $05, $FF, $7F, $00, $00, $0B, $28, $AE, $50, $20, $2A
    db $00, $00, $27, $04, $71, $1D, $FE, $57, $00, $00, $00, $7C, $E0, $7F, $FF, $7F
    db $00, $00, $63, $0C, $CE, $39, $FF, $7F, $00, $00, $26, $00, $8E, $00, $38, $01
    db $00, $00, $41, $00, $86, $01, $11, $0B, $00, $00, $05, $00, $1F, $00, $1F, $21

    ldh a, [rNR14]                                ; $4400: $F0 $14
    inc bc                                        ; $4402: $03
    ld h, b                                       ; $4403: $60
    ldh a, [rNR32]                                ; $4404: $F0 $1C
    ld [bc], a                                    ; $4406: $02
    ld h, b                                       ; $4407: $60
    db $E4                                        ; $4408: $E4
    inc c                                         ; $4409: $0C
    inc bc                                        ; $440A: $03
    ld h, b                                       ; $440B: $60
    db $E4                                        ; $440C: $E4
    inc d                                         ; $440D: $14
    ld [bc], a                                    ; $440E: $02
    ld h, b                                       ; $440F: $60
    ldh [rP1], a                                  ; $4410: $E0 $00
    inc bc                                        ; $4412: $03
    ld h, b                                       ; $4413: $60
    ldh [$08], a                                  ; $4414: $E0 $08
    ld [bc], a                                    ; $4416: $02
    ld h, b                                       ; $4417: $60
    ldh [$F4], a                                  ; $4418: $E0 $F4
    inc bc                                        ; $441A: $03
    ld h, b                                       ; $441B: $60
    ldh [$FC], a                                  ; $441C: $E0 $FC
    ld [bc], a                                    ; $441E: $02
    ld h, b                                       ; $441F: $60
    ld hl, sp+$14                                 ; $4420: $F8 $14
    ld bc, $F860                                  ; $4422: $01 $60 $F8
    inc e                                         ; $4425: $1C
    nop                                           ; $4426: $00
    ld h, b                                       ; $4427: $60
    db $EC                                        ; $4428: $EC
    inc c                                         ; $4429: $0C
    ld bc, $EC60                                  ; $442A: $01 $60 $EC
    inc d                                         ; $442D: $14
    nop                                           ; $442E: $00
    ld h, b                                       ; $442F: $60
    add sp, $00                                   ; $4430: $E8 $00
    ld bc, $E860                                  ; $4432: $01 $60 $E8
    ld [$6000], sp                                ; $4435: $08 $00 $60
    add sp, -$0C                                  ; $4438: $E8 $F4
    ld bc, $E860                                  ; $443A: $01 $60 $E8
    db $FC                                        ; $443D: $FC
    nop                                           ; $443E: $00
    ld h, b                                       ; $443F: $60
    inc b                                         ; $4440: $04
    db $E4                                        ; $4441: $E4
    inc bc                                        ; $4442: $03
    nop                                           ; $4443: $00
    inc b                                         ; $4444: $04
    call c, $0002                                 ; $4445: $DC $02 $00
    db $FC                                        ; $4448: $FC
    db $E4                                        ; $4449: $E4
    ld bc, $FC00                                  ; $444A: $01 $00 $FC
    call c, RST_00                                ; $444D: $DC $00 $00
    db $10                                        ; $4450: $10
    db $EC                                        ; $4451: $EC
    inc bc                                        ; $4452: $03
    nop                                           ; $4453: $00
    db $10                                        ; $4454: $10
    db $E4                                        ; $4455: $E4
    ld [bc], a                                    ; $4456: $02
    nop                                           ; $4457: $00
    ld [$01EC], sp                                ; $4458: $08 $EC $01
    nop                                           ; $445B: $00
    ld [$00E4], sp                                ; $445C: $08 $E4 $00
    nop                                           ; $445F: $00
    inc d                                         ; $4460: $14
    inc b                                         ; $4461: $04
    inc bc                                        ; $4462: $03
    nop                                           ; $4463: $00
    inc d                                         ; $4464: $14
    db $FC                                        ; $4465: $FC
    ld [bc], a                                    ; $4466: $02
    nop                                           ; $4467: $00
    inc c                                         ; $4468: $0C
    inc b                                         ; $4469: $04
    ld bc, $0C00                                  ; $446A: $01 $00 $0C
    db $FC                                        ; $446D: $FC
    nop                                           ; $446E: $00
    nop                                           ; $446F: $00
    inc d                                         ; $4470: $14
    ld hl, sp+$03                                 ; $4471: $F8 $03
    nop                                           ; $4473: $00
    inc d                                         ; $4474: $14
    ldh a, [rSC]                                  ; $4475: $F0 $02
    nop                                           ; $4477: $00
    inc c                                         ; $4478: $0C
    ld hl, sp+$01                                 ; $4479: $F8 $01
    nop                                           ; $447B: $00
    inc c                                         ; $447C: $0C
    ldh a, [rP1]                                  ; $447D: $F0 $00
    nop                                           ; $447F: $00
    add b                                         ; $4480: $80
    ld hl, sp+$14                                 ; $4481: $F8 $14
    inc b                                         ; $4483: $04
    ld h, b                                       ; $4484: $60
    db $EC                                        ; $4485: $EC
    inc c                                         ; $4486: $0C
    inc b                                         ; $4487: $04
    ld h, b                                       ; $4488: $60
    add sp, $00                                   ; $4489: $E8 $00
    inc b                                         ; $448B: $04
    ld h, b                                       ; $448C: $60
    add sp, -$0C                                  ; $448D: $E8 $F4
    inc b                                         ; $448F: $04
    ld h, b                                       ; $4490: $60
    nop                                           ; $4491: $00
    inc c                                         ; $4492: $0C
    dec b                                         ; $4493: $05
    ld h, b                                       ; $4494: $60
    db $F4                                        ; $4495: $F4
    inc b                                         ; $4496: $04
    dec b                                         ; $4497: $05
    ld h, b                                       ; $4498: $60
    ldh a, [$F8]                                  ; $4499: $F0 $F8
    dec b                                         ; $449B: $05
    ld h, b                                       ; $449C: $60
    ldh a, [$EC]                                  ; $449D: $F0 $EC
    dec b                                         ; $449F: $05
    ld h, b                                       ; $44A0: $60
    nop                                           ; $44A1: $00
    ldh [rDIV], a                                 ; $44A2: $E0 $04
    nop                                           ; $44A4: $00
    ld hl, sp-$18                                 ; $44A5: $F8 $E8
    dec b                                         ; $44A7: $05
    nop                                           ; $44A8: $00
    inc c                                         ; $44A9: $0C
    add sp, $04                                   ; $44AA: $E8 $04
    nop                                           ; $44AC: $00
    inc b                                         ; $44AD: $04
    ldh a, [rTIMA]                                ; $44AE: $F0 $05
    nop                                           ; $44B0: $00
    stop                                          ; $44B1: $10 $00
    inc b                                         ; $44B3: $04
    nop                                           ; $44B4: $00
    ld [$0508], sp                                ; $44B5: $08 $08 $05
    nop                                           ; $44B8: $00
    db $10                                        ; $44B9: $10
    db $F4                                        ; $44BA: $F4
    inc b                                         ; $44BB: $04
    nop                                           ; $44BC: $00
    ld [$05FC], sp                                ; $44BD: $08 $FC $05
    nop                                           ; $44C0: $00
    add b                                         ; $44C1: $80
    ld hl, sp+$14                                 ; $44C2: $F8 $14
    ld b, $60                                     ; $44C4: $06 $60
    ldh a, [$08]                                  ; $44C6: $F0 $08
    ld b, $60                                     ; $44C8: $06 $60
    db $EC                                        ; $44CA: $EC
    db $FC                                        ; $44CB: $FC
    ld b, $60                                     ; $44CC: $06 $60
    db $EC                                        ; $44CE: $EC
    ldh a, [rTMA]                                 ; $44CF: $F0 $06
    ld h, b                                       ; $44D1: $60
    nop                                           ; $44D2: $00
    inc c                                         ; $44D3: $0C
    rlca                                          ; $44D4: $07
    ld h, b                                       ; $44D5: $60
    ld hl, sp+$00                                 ; $44D6: $F8 $00
    rlca                                          ; $44D8: $07
    ld h, b                                       ; $44D9: $60
    db $F4                                        ; $44DA: $F4
    db $F4                                        ; $44DB: $F4
    rlca                                          ; $44DC: $07
    ld h, b                                       ; $44DD: $60
    db $F4                                        ; $44DE: $F4
    add sp, $07                                   ; $44DF: $E8 $07
    ld h, b                                       ; $44E1: $60
    nop                                           ; $44E2: $00
    ldh [rTMA], a                                 ; $44E3: $E0 $06
    nop                                           ; $44E5: $00
    ld hl, sp-$18                                 ; $44E6: $F8 $E8
    rlca                                          ; $44E8: $07
    nop                                           ; $44E9: $00
    ld [$06EC], sp                                ; $44EA: $08 $EC $06
    nop                                           ; $44ED: $00
    nop                                           ; $44EE: $00
    db $F4                                        ; $44EF: $F4
    rlca                                          ; $44F0: $07
    nop                                           ; $44F1: $00
    inc c                                         ; $44F2: $0C
    inc b                                         ; $44F3: $04
    ld b, $00                                     ; $44F4: $06 $00
    inc b                                         ; $44F6: $04
    inc c                                         ; $44F7: $0C
    rlca                                          ; $44F8: $07
    nop                                           ; $44F9: $00
    inc c                                         ; $44FA: $0C
    ld hl, sp+$06                                 ; $44FB: $F8 $06
    nop                                           ; $44FD: $00
    inc b                                         ; $44FE: $04
    nop                                           ; $44FF: $00
    rlca                                          ; $4500: $07
    nop                                           ; $4501: $00
    add b                                         ; $4502: $80
    inc b                                         ; $4503: $04
    ld [$6008], sp                                ; $4504: $08 $08 $60
    db $FC                                        ; $4507: $FC
    db $FC                                        ; $4508: $FC
    ld [$F860], sp                                ; $4509: $08 $60 $F8
    ldh a, [$08]                                  ; $450C: $F0 $08
    ld h, b                                       ; $450E: $60
    db $F4                                        ; $450F: $F4
    db $EC                                        ; $4510: $EC
    ld [$FC00], sp                                ; $4511: $08 $00 $FC
    ld hl, sp+$08                                 ; $4514: $F8 $08
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    inc b                                         ; $4518: $04
    ld [$8000], sp                                ; $4519: $08 $00 $80
    db $FC                                        ; $451C: $FC
    db $FC                                        ; $451D: $FC
    nop                                           ; $451E: $00
    ld bc, $FC80                                  ; $451F: $01 $80 $FC
    db $FC                                        ; $4522: $FC
    ld bc, $8001                                  ; $4523: $01 $01 $80
    nop                                           ; $4526: $00
    ld hl, sp+$03                                 ; $4527: $F8 $03
    ld h, c                                       ; $4529: $61
    nop                                           ; $452A: $00
    nop                                           ; $452B: $00
    ld [bc], a                                    ; $452C: $02
    ld h, c                                       ; $452D: $61
    ld hl, sp+$00                                 ; $452E: $F8 $00
    inc bc                                        ; $4530: $03
    ld bc, $F8F8                                  ; $4531: $01 $F8 $F8
    ld [bc], a                                    ; $4534: $02
    ld bc, $0880                                  ; $4535: $01 $80 $08
    ld [$4106], sp                                ; $4538: $08 $06 $41
    ldh a, [$F0]                                  ; $453B: $F0 $F0
    ld b, $21                                     ; $453D: $06 $21
    nop                                           ; $453F: $00
    ldh a, [$09]                                  ; $4540: $F0 $09
    ld h, c                                       ; $4542: $61
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    ld [$0061], sp                                ; $4545: $08 $61 $00
    ld [$6107], sp                                ; $4548: $08 $07 $61
    ld [$06F0], sp                                ; $454B: $08 $F0 $06
    ld h, c                                       ; $454E: $61
    ld [$05F8], sp                                ; $454F: $08 $F8 $05
    ld h, c                                       ; $4552: $61
    ld [$0400], sp                                ; $4553: $08 $00 $04
    ld h, c                                       ; $4556: $61
    ld hl, sp+$08                                 ; $4557: $F8 $08
    add hl, bc                                    ; $4559: $09
    ld bc, $F8F8                                  ; $455A: $01 $F8 $F8
    ld [$F801], sp                                ; $455D: $08 $01 $F8
    ldh a, [rTAC]                                 ; $4560: $F0 $07
    ld bc, $08F0                                  ; $4562: $01 $F0 $08
    ld b, $01                                     ; $4565: $06 $01
    ldh a, [rP1]                                  ; $4567: $F0 $00
    dec b                                         ; $4569: $05
    ld bc, $F8F0                                  ; $456A: $01 $F0 $F8
    inc b                                         ; $456D: $04
    ld bc, $EF80                                  ; $456E: $01 $80 $EF
    rst $28                                       ; $4571: $EF
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    ld hl, sp-$17                                 ; $4574: $F8 $E9
    nop                                           ; $4576: $00
    ld bc, $E900                                  ; $4577: $01 $00 $E9
    nop                                           ; $457A: $00
    ld bc, $EF09                                  ; $457B: $01 $09 $EF
    nop                                           ; $457E: $00
    ld bc, $F80F                                  ; $457F: $01 $0F $F8
    nop                                           ; $4582: $00
    ld bc, $000F                                  ; $4583: $01 $0F $00
    nop                                           ; $4586: $00
    ld bc, $0909                                  ; $4587: $01 $09 $09
    nop                                           ; $458A: $00
    ld bc, $0F00                                  ; $458B: $01 $00 $0F
    nop                                           ; $458E: $00
    ld bc, $0FF8                                  ; $458F: $01 $F8 $0F
    nop                                           ; $4592: $00
    ld bc, $09EF                                  ; $4593: $01 $EF $09
    nop                                           ; $4596: $00
    ld bc, $F8E9                                  ; $4597: $01 $E9 $F8
    nop                                           ; $459A: $00
    ld bc, $00E9                                  ; $459B: $01 $E9 $00
    nop                                           ; $459E: $00
    ld bc, $F880                                  ; $459F: $01 $80 $F8
    jr jr_040_45A8                                ; $45A2: $18 $04

    nop                                           ; $45A4: $00
    ldh a, [rNR10]                                ; $45A5: $F0 $10
    inc b                                         ; $45A7: $04

jr_040_45A8:
    nop                                           ; $45A8: $00
    add sp, $08                                   ; $45A9: $E8 $08
    inc b                                         ; $45AB: $04
    nop                                           ; $45AC: $00
    add b                                         ; $45AD: $80
    ld hl, sp+$18                                 ; $45AE: $F8 $18
    inc b                                         ; $45B0: $04
    nop                                           ; $45B1: $00
    ld hl, sp+$10                                 ; $45B2: $F8 $10
    inc bc                                        ; $45B4: $03
    nop                                           ; $45B5: $00
    ldh a, [rNR10]                                ; $45B6: $F0 $10
    inc b                                         ; $45B8: $04
    nop                                           ; $45B9: $00
    ldh a, [$08]                                  ; $45BA: $F0 $08
    inc bc                                        ; $45BC: $03
    nop                                           ; $45BD: $00
    add sp, $08                                   ; $45BE: $E8 $08
    inc b                                         ; $45C0: $04
    nop                                           ; $45C1: $00
    add sp, $00                                   ; $45C2: $E8 $00
    inc bc                                        ; $45C4: $03
    nop                                           ; $45C5: $00
    add b                                         ; $45C6: $80
    ld hl, sp+$18                                 ; $45C7: $F8 $18
    inc b                                         ; $45C9: $04
    nop                                           ; $45CA: $00
    ld hl, sp+$10                                 ; $45CB: $F8 $10
    inc bc                                        ; $45CD: $03
    nop                                           ; $45CE: $00
    nop                                           ; $45CF: $00
    ld [$0002], sp                                ; $45D0: $08 $02 $00
    ld [$0200], sp                                ; $45D3: $08 $00 $02
    nop                                           ; $45D6: $00
    ldh a, [rNR10]                                ; $45D7: $F0 $10
    inc b                                         ; $45D9: $04
    nop                                           ; $45DA: $00
    ldh a, [$08]                                  ; $45DB: $F0 $08
    inc bc                                        ; $45DD: $03
    nop                                           ; $45DE: $00
    ld hl, sp+$00                                 ; $45DF: $F8 $00
    ld [bc], a                                    ; $45E1: $02
    nop                                           ; $45E2: $00
    nop                                           ; $45E3: $00
    ld hl, sp+$02                                 ; $45E4: $F8 $02
    nop                                           ; $45E6: $00
    add sp, $08                                   ; $45E7: $E8 $08
    inc b                                         ; $45E9: $04
    nop                                           ; $45EA: $00
    add sp, $00                                   ; $45EB: $E8 $00
    inc bc                                        ; $45ED: $03
    nop                                           ; $45EE: $00
    ldh a, [$F8]                                  ; $45EF: $F0 $F8
    ld [bc], a                                    ; $45F1: $02
    nop                                           ; $45F2: $00
    ld hl, sp-$10                                 ; $45F3: $F8 $F0
    ld [bc], a                                    ; $45F5: $02
    nop                                           ; $45F6: $00
    add b                                         ; $45F7: $80
    ld hl, sp+$18                                 ; $45F8: $F8 $18
    inc b                                         ; $45FA: $04
    nop                                           ; $45FB: $00
    ld hl, sp+$10                                 ; $45FC: $F8 $10
    inc bc                                        ; $45FE: $03
    nop                                           ; $45FF: $00
    nop                                           ; $4600: $00
    ld [$0002], sp                                ; $4601: $08 $02 $00
    ld [$0200], sp                                ; $4604: $08 $00 $02
    nop                                           ; $4607: $00
    db $10                                        ; $4608: $10
    ld hl, sp+$01                                 ; $4609: $F8 $01
    nop                                           ; $460B: $00
    ldh a, [rNR10]                                ; $460C: $F0 $10
    inc b                                         ; $460E: $04
    nop                                           ; $460F: $00
    ldh a, [$08]                                  ; $4610: $F0 $08
    inc bc                                        ; $4612: $03
    nop                                           ; $4613: $00
    ld hl, sp+$00                                 ; $4614: $F8 $00
    ld [bc], a                                    ; $4616: $02
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    ld hl, sp+$02                                 ; $4619: $F8 $02
    nop                                           ; $461B: $00
    ld [$01F0], sp                                ; $461C: $08 $F0 $01
    nop                                           ; $461F: $00
    add sp, $08                                   ; $4620: $E8 $08
    inc b                                         ; $4622: $04
    nop                                           ; $4623: $00
    add sp, $00                                   ; $4624: $E8 $00
    inc bc                                        ; $4626: $03
    nop                                           ; $4627: $00
    ldh a, [$F8]                                  ; $4628: $F0 $F8
    ld [bc], a                                    ; $462A: $02
    nop                                           ; $462B: $00
    ld hl, sp-$10                                 ; $462C: $F8 $F0
    ld [bc], a                                    ; $462E: $02
    nop                                           ; $462F: $00
    nop                                           ; $4630: $00
    add sp, $01                                   ; $4631: $E8 $01
    nop                                           ; $4633: $00
    add b                                         ; $4634: $80
    ld hl, sp+$10                                 ; $4635: $F8 $10
    inc bc                                        ; $4637: $03
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    ld [$0002], sp                                ; $463A: $08 $02 $00
    ld [$0200], sp                                ; $463D: $08 $00 $02
    nop                                           ; $4640: $00
    db $10                                        ; $4641: $10
    ld hl, sp+$01                                 ; $4642: $F8 $01
    nop                                           ; $4644: $00
    jr @-$06                                      ; $4645: $18 $F8

    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    ldh a, [$08]                                  ; $4649: $F0 $08
    inc bc                                        ; $464B: $03
    nop                                           ; $464C: $00
    ld hl, sp+$00                                 ; $464D: $F8 $00
    ld [bc], a                                    ; $464F: $02
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    ld hl, sp+$02                                 ; $4652: $F8 $02
    nop                                           ; $4654: $00
    ld [$01F0], sp                                ; $4655: $08 $F0 $01
    nop                                           ; $4658: $00
    db $10                                        ; $4659: $10
    ldh a, [rP1]                                  ; $465A: $F0 $00
    nop                                           ; $465C: $00
    add sp, $00                                   ; $465D: $E8 $00
    inc bc                                        ; $465F: $03
    nop                                           ; $4660: $00
    ldh a, [$F8]                                  ; $4661: $F0 $F8
    ld [bc], a                                    ; $4663: $02
    nop                                           ; $4664: $00
    ld hl, sp-$10                                 ; $4665: $F8 $F0
    ld [bc], a                                    ; $4667: $02
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    add sp, $01                                   ; $466A: $E8 $01
    nop                                           ; $466C: $00
    ld [$00E8], sp                                ; $466D: $08 $E8 $00
    nop                                           ; $4670: $00
    add b                                         ; $4671: $80
    nop                                           ; $4672: $00
    ld [$0002], sp                                ; $4673: $08 $02 $00
    ld [$0200], sp                                ; $4676: $08 $00 $02
    nop                                           ; $4679: $00
    db $10                                        ; $467A: $10
    ld hl, sp+$01                                 ; $467B: $F8 $01
    nop                                           ; $467D: $00
    jr @-$06                                      ; $467E: $18 $F8

    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    ld hl, sp+$00                                 ; $4682: $F8 $00
    ld [bc], a                                    ; $4684: $02
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    ld hl, sp+$02                                 ; $4687: $F8 $02
    nop                                           ; $4689: $00
    ld [$01F0], sp                                ; $468A: $08 $F0 $01
    nop                                           ; $468D: $00
    db $10                                        ; $468E: $10
    ldh a, [rP1]                                  ; $468F: $F0 $00
    nop                                           ; $4691: $00
    ldh a, [$F8]                                  ; $4692: $F0 $F8
    ld [bc], a                                    ; $4694: $02
    nop                                           ; $4695: $00
    ld hl, sp-$10                                 ; $4696: $F8 $F0
    ld [bc], a                                    ; $4698: $02
    nop                                           ; $4699: $00
    nop                                           ; $469A: $00
    add sp, $01                                   ; $469B: $E8 $01
    nop                                           ; $469D: $00
    ld [$00E8], sp                                ; $469E: $08 $E8 $00

jr_040_46A1:
    nop                                           ; $46A1: $00
    add b                                         ; $46A2: $80
    db $10                                        ; $46A3: $10
    ld hl, sp+$01                                 ; $46A4: $F8 $01
    nop                                           ; $46A6: $00
    jr jr_040_46A1                                ; $46A7: $18 $F8

    nop                                           ; $46A9: $00
    nop                                           ; $46AA: $00
    ld [$01F0], sp                                ; $46AB: $08 $F0 $01
    nop                                           ; $46AE: $00
    db $10                                        ; $46AF: $10
    ldh a, [rP1]                                  ; $46B0: $F0 $00
    nop                                           ; $46B2: $00
    nop                                           ; $46B3: $00
    add sp, $01                                   ; $46B4: $E8 $01

jr_040_46B6:
    nop                                           ; $46B6: $00
    ld [$00E8], sp                                ; $46B7: $08 $E8 $00
    nop                                           ; $46BA: $00
    add b                                         ; $46BB: $80
    jr jr_040_46B6                                ; $46BC: $18 $F8

    nop                                           ; $46BE: $00
    nop                                           ; $46BF: $00
    db $10                                        ; $46C0: $10
    ldh a, [rP1]                                  ; $46C1: $F0 $00

jr_040_46C3:
    nop                                           ; $46C3: $00
    ld [$00E8], sp                                ; $46C4: $08 $E8 $00
    nop                                           ; $46C7: $00
    add b                                         ; $46C8: $80
    ld hl, sp-$20                                 ; $46C9: $F8 $E0

jr_040_46CB:
    inc b                                         ; $46CB: $04
    jr nz, jr_040_46B6                            ; $46CC: $20 $E8

    ldh a, [rDIV]                                 ; $46CE: $F0 $04
    jr nz, @-$0E                                  ; $46D0: $20 $F0

    add sp, $04                                   ; $46D2: $E8 $04
    jr nz, @-$7E                                  ; $46D4: $20 $80

    ld hl, sp-$20                                 ; $46D6: $F8 $E0
    inc b                                         ; $46D8: $04
    jr nz, jr_040_46C3                            ; $46D9: $20 $E8

jr_040_46DB:
    ldh a, [rDIV]                                 ; $46DB: $F0 $04

jr_040_46DD:
    jr nz, @-$06                                  ; $46DD: $20 $F8

    add sp, $03                                   ; $46DF: $E8 $03
    jr nz, jr_040_46CB                            ; $46E1: $20 $E8

    ld hl, sp+$03                                 ; $46E3: $F8 $03
    jr nz, @-$0E                                  ; $46E5: $20 $F0

    add sp, $04                                   ; $46E7: $E8 $04
    jr nz, jr_040_46DB                            ; $46E9: $20 $F0

    ldh a, [$03]                                  ; $46EB: $F0 $03
    jr nz, @-$7E                                  ; $46ED: $20 $80

    ld hl, sp-$20                                 ; $46EF: $F8 $E0
    inc b                                         ; $46F1: $04
    jr nz, @-$16                                  ; $46F2: $20 $E8

    ldh a, [rDIV]                                 ; $46F4: $F0 $04
    jr nz, @-$06                                  ; $46F6: $20 $F8

jr_040_46F8:
    add sp, $03                                   ; $46F8: $E8 $03
    jr nz, @-$16                                  ; $46FA: $20 $E8

    ld hl, sp+$03                                 ; $46FC: $F8 $03
    jr nz, jr_040_46F8                            ; $46FE: $20 $F8

jr_040_4700:
    ld [$2002], sp                                ; $4700: $08 $02 $20
    ldh a, [rP1]                                  ; $4703: $F0 $00
    ld [bc], a                                    ; $4705: $02
    jr nz, jr_040_4710                            ; $4706: $20 $08

    ld hl, sp+$02                                 ; $4708: $F8 $02
    jr nz, jr_040_470C                            ; $470A: $20 $00

jr_040_470C:
    ldh a, [rSC]                                  ; $470C: $F0 $02

jr_040_470E:
    jr nz, jr_040_4700                            ; $470E: $20 $F0

jr_040_4710:
    add sp, $04                                   ; $4710: $E8 $04
    jr nz, @-$0E                                  ; $4712: $20 $F0

jr_040_4714:
    ldh a, [$03]                                  ; $4714: $F0 $03
    jr nz, jr_040_4718                            ; $4716: $20 $00

jr_040_4718:
    nop                                           ; $4718: $00
    ld [bc], a                                    ; $4719: $02
    jr nz, jr_040_4714                            ; $471A: $20 $F8

    ld hl, sp+$02                                 ; $471C: $F8 $02
    jr nz, @-$7E                                  ; $471E: $20 $80

    ld [$0010], sp                                ; $4720: $08 $10 $00
    jr nz, @+$1A                                  ; $4723: $20 $18

    nop                                           ; $4725: $00
    nop                                           ; $4726: $00

jr_040_4727:
    jr nz, @-$06                                  ; $4727: $20 $F8

    add sp, $03                                   ; $4729: $E8 $03
    jr nz, @-$16                                  ; $472B: $20 $E8

    ld hl, sp+$03                                 ; $472D: $F8 $03
    jr nz, jr_040_4731                            ; $472F: $20 $00

jr_040_4731:
    db $10                                        ; $4731: $10
    ld bc, $1020                                  ; $4732: $01 $20 $10
    nop                                           ; $4735: $00
    ld bc, $F820                                  ; $4736: $01 $20 $F8

jr_040_4739:
    ld [$2002], sp                                ; $4739: $08 $02 $20
    ldh a, [rP1]                                  ; $473C: $F0 $00
    ld [bc], a                                    ; $473E: $02
    jr nz, jr_040_4749                            ; $473F: $20 $08

    ld hl, sp+$02                                 ; $4741: $F8 $02
    jr nz, jr_040_4745                            ; $4743: $20 $00

jr_040_4745:
    ldh a, [rSC]                                  ; $4745: $F0 $02
    jr nz, jr_040_4739                            ; $4747: $20 $F0

jr_040_4749:
    ldh a, [$03]                                  ; $4749: $F0 $03
    jr nz, jr_040_475D                            ; $474B: $20 $10

    ld [rROMB0], sp                                ; $474D: $08 $00 $20
    ld [$0108], sp                                ; $4750: $08 $08 $01
    jr nz, jr_040_4755                            ; $4753: $20 $00

jr_040_4755:
    nop                                           ; $4755: $00
    ld [bc], a                                    ; $4756: $02
    jr nz, @-$06                                  ; $4757: $20 $F8

    ld hl, sp+$02                                 ; $4759: $F8 $02
    jr nz, jr_040_46DD                            ; $475B: $20 $80

jr_040_475D:
    ld [$0010], sp                                ; $475D: $08 $10 $00
    jr nz, jr_040_477A                            ; $4760: $20 $18

    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    jr nz, jr_040_4766                            ; $4764: $20 $00

jr_040_4766:
    db $10                                        ; $4766: $10
    ld bc, $1020                                  ; $4767: $01 $20 $10
    nop                                           ; $476A: $00
    ld bc, $F820                                  ; $476B: $01 $20 $F8
    ld [$2002], sp                                ; $476E: $08 $02 $20
    ldh a, [rP1]                                  ; $4771: $F0 $00
    ld [bc], a                                    ; $4773: $02
    jr nz, jr_040_477E                            ; $4774: $20 $08

    ld hl, sp+$02                                 ; $4776: $F8 $02
    jr nz, jr_040_477A                            ; $4778: $20 $00

jr_040_477A:
    ldh a, [rSC]                                  ; $477A: $F0 $02
    jr nz, jr_040_478E                            ; $477C: $20 $10

jr_040_477E:
    ld [rROMB0], sp                                ; $477E: $08 $00 $20
    ld [$0108], sp                                ; $4781: $08 $08 $01
    jr nz, jr_040_4786                            ; $4784: $20 $00

jr_040_4786:
    nop                                           ; $4786: $00
    ld [bc], a                                    ; $4787: $02
    jr nz, @-$06                                  ; $4788: $20 $F8

    ld hl, sp+$02                                 ; $478A: $F8 $02
    jr nz, jr_040_470E                            ; $478C: $20 $80

jr_040_478E:
    ld [$0010], sp                                ; $478E: $08 $10 $00
    jr nz, @+$1A                                  ; $4791: $20 $18

    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    jr nz, jr_040_4797                            ; $4795: $20 $00

jr_040_4797:
    db $10                                        ; $4797: $10
    ld bc, $1020                                  ; $4798: $01 $20 $10
    nop                                           ; $479B: $00
    ld bc, $1020                                  ; $479C: $01 $20 $10
    ld [rROMB0], sp                                ; $479F: $08 $00 $20
    ld [$0108], sp                                ; $47A2: $08 $08 $01
    jr nz, jr_040_4727                            ; $47A5: $20 $80

    ld [$0010], sp                                ; $47A7: $08 $10 $00
    jr nz, jr_040_47C4                            ; $47AA: $20 $18

    nop                                           ; $47AC: $00
    nop                                           ; $47AD: $00
    jr nz, @+$12                                  ; $47AE: $20 $10

    ld [rROMB0], sp                                ; $47B0: $08 $00 $20
    add b                                         ; $47B3: $80
    nop                                           ; $47B4: $00
    nop                                           ; $47B5: $00
    inc bc                                        ; $47B6: $03
    ld [bc], a                                    ; $47B7: $02
    nop                                           ; $47B8: $00
    ld hl, sp+$02                                 ; $47B9: $F8 $02
    ld [bc], a                                    ; $47BB: $02
    ld hl, sp+$00                                 ; $47BC: $F8 $00
    ld bc, $F802                                  ; $47BE: $01 $02 $F8
    ld hl, sp+$00                                 ; $47C1: $F8 $00
    ld [bc], a                                    ; $47C3: $02

jr_040_47C4:
    add b                                         ; $47C4: $80
    nop                                           ; $47C5: $00
    nop                                           ; $47C6: $00
    rlca                                          ; $47C7: $07
    ld [bc], a                                    ; $47C8: $02
    nop                                           ; $47C9: $00
    ld hl, sp+$06                                 ; $47CA: $F8 $06
    ld [bc], a                                    ; $47CC: $02
    ld hl, sp+$00                                 ; $47CD: $F8 $00
    dec b                                         ; $47CF: $05
    ld [bc], a                                    ; $47D0: $02
    ld hl, sp-$08                                 ; $47D1: $F8 $F8
    inc b                                         ; $47D3: $04
    ld [bc], a                                    ; $47D4: $02
    add b                                         ; $47D5: $80
    nop                                           ; $47D6: $00
    nop                                           ; $47D7: $00
    dec bc                                        ; $47D8: $0B
    ld [bc], a                                    ; $47D9: $02
    nop                                           ; $47DA: $00
    ld hl, sp+$0A                                 ; $47DB: $F8 $0A
    ld [bc], a                                    ; $47DD: $02
    ld hl, sp+$00                                 ; $47DE: $F8 $00
    add hl, bc                                    ; $47E0: $09
    ld [bc], a                                    ; $47E1: $02
    ld hl, sp-$08                                 ; $47E2: $F8 $F8
    ld [$8002], sp                                ; $47E4: $08 $02 $80
    nop                                           ; $47E7: $00
    nop                                           ; $47E8: $00
    rrca                                          ; $47E9: $0F
    ld [bc], a                                    ; $47EA: $02
    nop                                           ; $47EB: $00
    ld hl, sp+$0E                                 ; $47EC: $F8 $0E
    ld [bc], a                                    ; $47EE: $02
    ld hl, sp+$00                                 ; $47EF: $F8 $00
    dec c                                         ; $47F1: $0D
    ld [bc], a                                    ; $47F2: $02
    ld hl, sp-$08                                 ; $47F3: $F8 $F8
    inc c                                         ; $47F5: $0C
    ld [bc], a                                    ; $47F6: $02
    add b                                         ; $47F7: $80
    nop                                           ; $47F8: $00
    ld hl, sp+$0F                                 ; $47F9: $F8 $0F
    ld [hl+], a                                   ; $47FB: $22
    nop                                           ; $47FC: $00
    nop                                           ; $47FD: $00
    ld c, $22                                     ; $47FE: $0E $22
    ld hl, sp-$08                                 ; $4800: $F8 $F8
    dec c                                         ; $4802: $0D
    ld [hl+], a                                   ; $4803: $22
    ld hl, sp+$00                                 ; $4804: $F8 $00
    inc c                                         ; $4806: $0C
    ld [hl+], a                                   ; $4807: $22
    add b                                         ; $4808: $80
    nop                                           ; $4809: $00
    ld hl, sp+$0B                                 ; $480A: $F8 $0B
    ld [hl+], a                                   ; $480C: $22
    nop                                           ; $480D: $00
    nop                                           ; $480E: $00
    ld a, [bc]                                    ; $480F: $0A
    ld [hl+], a                                   ; $4810: $22
    ld hl, sp-$08                                 ; $4811: $F8 $F8
    add hl, bc                                    ; $4813: $09
    ld [hl+], a                                   ; $4814: $22
    ld hl, sp+$00                                 ; $4815: $F8 $00
    ld [$8022], sp                                ; $4817: $08 $22 $80
    nop                                           ; $481A: $00
    ld hl, sp+$07                                 ; $481B: $F8 $07
    ld [hl+], a                                   ; $481D: $22
    nop                                           ; $481E: $00
    nop                                           ; $481F: $00
    ld b, $22                                     ; $4820: $06 $22
    ld hl, sp-$08                                 ; $4822: $F8 $F8
    dec b                                         ; $4824: $05
    ld [hl+], a                                   ; $4825: $22
    ld hl, sp+$00                                 ; $4826: $F8 $00
    inc b                                         ; $4828: $04
    ld [hl+], a                                   ; $4829: $22
    add b                                         ; $482A: $80
    nop                                           ; $482B: $00
    ld hl, sp+$03                                 ; $482C: $F8 $03
    ld [hl+], a                                   ; $482E: $22
    nop                                           ; $482F: $00
    nop                                           ; $4830: $00
    ld [bc], a                                    ; $4831: $02
    ld [hl+], a                                   ; $4832: $22
    ld hl, sp-$08                                 ; $4833: $F8 $F8
    ld bc, $F822                                  ; $4835: $01 $22 $F8
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    ld [hl+], a                                   ; $483A: $22
    add b                                         ; $483B: $80
    nop                                           ; $483C: $00
    ld [bc], a                                    ; $483D: $02
    ld [de], a                                    ; $483E: $12
    ld [bc], a                                    ; $483F: $02
    rst $38                                       ; $4840: $FF
    cp $10                                        ; $4841: $FE $10
    ld [bc], a                                    ; $4843: $02
    ld [bc], a                                    ; $4844: $02
    ei                                            ; $4845: $FB
    ld de, $0002                                  ; $4846: $11 $02 $00
    ld sp, hl                                     ; $4849: $F9
    db $10                                        ; $484A: $10
    ld [bc], a                                    ; $484B: $02
    cp $F6                                        ; $484C: $FE $F6
    db $10                                        ; $484E: $10
    ld [bc], a                                    ; $484F: $02
    ld a, [$11F8]                                 ; $4850: $FA $F8 $11
    ld [bc], a                                    ; $4853: $02
    db $FD                                        ; $4854: $FD
    ld bc, $0210                                  ; $4855: $01 $10 $02
    ld a, [$1203]                                 ; $4858: $FA $03 $12
    ld [bc], a                                    ; $485B: $02
    db $FD                                        ; $485C: $FD
    ld a, [$0212]                                 ; $485D: $FA $12 $02
    db $FD                                        ; $4860: $FD
    cp $11                                        ; $4861: $FE $11
    ld [bc], a                                    ; $4863: $02
    ld hl, sp-$02                                 ; $4864: $F8 $FE
    db $10                                        ; $4866: $10
    ld [bc], a                                    ; $4867: $02
    rst $30                                       ; $4868: $F7
    ei                                            ; $4869: $FB
    db $10                                        ; $486A: $10
    ld [bc], a                                    ; $486B: $02
    add b                                         ; $486C: $80
    inc bc                                        ; $486D: $03
    ld [$0210], sp                                ; $486E: $08 $10 $02
    dec b                                         ; $4871: $05
    ld bc, $0210                                  ; $4872: $01 $10 $02
    dec b                                         ; $4875: $05
    db $F4                                        ; $4876: $F4
    db $10                                        ; $4877: $10
    ld [bc], a                                    ; $4878: $02
    cp $FA                                        ; $4879: $FE $FA
    db $10                                        ; $487B: $10
    ld [bc], a                                    ; $487C: $02
    cp $F2                                        ; $487D: $FE $F2
    ld [de], a                                    ; $487F: $12
    ld [bc], a                                    ; $4880: $02
    ld hl, sp-$0B                                 ; $4881: $F8 $F5
    ld [de], a                                    ; $4883: $12
    ld [bc], a                                    ; $4884: $02
    db $FC                                        ; $4885: $FC
    ld b, $11                                     ; $4886: $06 $11
    ld [bc], a                                    ; $4888: $02
    ld a, [$1205]                                 ; $4889: $FA $05 $12
    ld [bc], a                                    ; $488C: $02
    ld bc, $12FA                                  ; $488D: $01 $FA $12
    ld [bc], a                                    ; $4890: $02
    rst $38                                       ; $4891: $FF
    rst $38                                       ; $4892: $FF
    ld de, $F302                                  ; $4893: $11 $02 $F3
    inc bc                                        ; $4896: $03
    ld de, $F502                                  ; $4897: $11 $02 $F5
    ei                                            ; $489A: $FB
    db $10                                        ; $489B: $10
    ld [bc], a                                    ; $489C: $02
    add b                                         ; $489D: $80
    dec b                                         ; $489E: $05
    inc c                                         ; $489F: $0C
    db $10                                        ; $48A0: $10
    ld [bc], a                                    ; $48A1: $02
    ld [$1104], sp                                ; $48A2: $08 $04 $11
    ld [bc], a                                    ; $48A5: $02
    add hl, bc                                    ; $48A6: $09
    ld a, [c]                                     ; $48A7: $F2
    ld de, $0202                                  ; $48A8: $11 $02 $02
    rst $30                                       ; $48AB: $F7
    ld [de], a                                    ; $48AC: $12
    ld [bc], a                                    ; $48AD: $02
    nop                                           ; $48AE: $00
    rst $28                                       ; $48AF: $EF
    db $10                                        ; $48B0: $10
    ld [bc], a                                    ; $48B1: $02
    or $F3                                        ; $48B2: $F6 $F3
    db $10                                        ; $48B4: $10
    ld [bc], a                                    ; $48B5: $02
    cp $0D                                        ; $48B6: $FE $0D
    ld [de], a                                    ; $48B8: $12
    ld [bc], a                                    ; $48B9: $02
    ld sp, hl                                     ; $48BA: $F9
    dec bc                                        ; $48BB: $0B
    ld de, $0902                                  ; $48BC: $11 $02 $09
    ld sp, hl                                     ; $48BF: $F9
    db $10                                        ; $48C0: $10
    ld [bc], a                                    ; $48C1: $02
    nop                                           ; $48C2: $00
    ld [bc], a                                    ; $48C3: $02
    db $10                                        ; $48C4: $10
    ld [bc], a                                    ; $48C5: $02
    pop af                                        ; $48C6: $F1
    ld b, $12                                     ; $48C7: $06 $12
    ld [bc], a                                    ; $48C9: $02
    ld a, [c]                                     ; $48CA: $F2
    ld a, [$0212]                                 ; $48CB: $FA $12 $02
    add b                                         ; $48CE: $80
    ld [$130E], sp                                ; $48CF: $08 $0E $13
    ld [bc], a                                    ; $48D2: $02
    inc c                                         ; $48D3: $0C
    dec b                                         ; $48D4: $05
    inc de                                        ; $48D5: $13
    ld [bc], a                                    ; $48D6: $02
    ld c, $EE                                     ; $48D7: $0E $EE
    inc de                                        ; $48D9: $13
    ld [bc], a                                    ; $48DA: $02
    ld b, $F3                                     ; $48DB: $06 $F3
    inc de                                        ; $48DD: $13
    ld [bc], a                                    ; $48DE: $02
    ld bc, $13EA                                  ; $48DF: $01 $EA $13
    ld [bc], a                                    ; $48E2: $02
    db $F4                                        ; $48E3: $F4
    rst $28                                       ; $48E4: $EF
    inc de                                        ; $48E5: $13
    ld [bc], a                                    ; $48E6: $02
    rst $38                                       ; $48E7: $FF
    inc de                                        ; $48E8: $13
    inc de                                        ; $48E9: $13
    ld [bc], a                                    ; $48EA: $02
    rst $30                                       ; $48EB: $F7
    rrca                                          ; $48EC: $0F
    inc de                                        ; $48ED: $13
    ld [bc], a                                    ; $48EE: $02
    ld de, $13F9                                  ; $48EF: $11 $F9 $13
    ld [bc], a                                    ; $48F2: $02
    inc bc                                        ; $48F3: $03
    dec b                                         ; $48F4: $05
    inc de                                        ; $48F5: $13
    ld [bc], a                                    ; $48F6: $02
    db $ED                                        ; $48F7: $ED
    ld [$0213], sp                                ; $48F8: $08 $13 $02
    rst $28                                       ; $48FB: $EF
    ld sp, hl                                     ; $48FC: $F9
    inc de                                        ; $48FD: $13
    ld [bc], a                                    ; $48FE: $02
    add b                                         ; $48FF: $80
    ld [$06E8], sp                                ; $4900: $08 $E8 $06
    ld b, b                                       ; $4903: $40
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    dec d                                         ; $4906: $15
    ld b, b                                       ; $4907: $40
    nop                                           ; $4908: $00
    ld hl, sp+$14                                 ; $4909: $F8 $14
    ld b, b                                       ; $490B: $40
    nop                                           ; $490C: $00
    ldh a, [rNR13]                                ; $490D: $F0 $13
    ld b, b                                       ; $490F: $40
    nop                                           ; $4910: $00
    add sp, $12                                   ; $4911: $E8 $12
    ld b, b                                       ; $4913: $40
    nop                                           ; $4914: $00
    ldh [rNR11], a                                ; $4915: $E0 $11
    ld b, b                                       ; $4917: $40
    ldh a, [$E0]                                  ; $4918: $F0 $E0
    nop                                           ; $491A: $00
    nop                                           ; $491B: $00
    ldh a, [rP1]                                  ; $491C: $F0 $00
    inc bc                                        ; $491E: $03
    nop                                           ; $491F: $00
    ldh a, [$F8]                                  ; $4920: $F0 $F8
    ld [bc], a                                    ; $4922: $02
    nop                                           ; $4923: $00
    ldh a, [$F0]                                  ; $4924: $F0 $F0
    ld bc, $F800                                  ; $4926: $01 $00 $F8
    nop                                           ; $4929: $00
    dec bc                                        ; $492A: $0B
    nop                                           ; $492B: $00
    ld hl, sp-$08                                 ; $492C: $F8 $F8
    ld a, [bc]                                    ; $492E: $0A
    nop                                           ; $492F: $00
    ld hl, sp-$10                                 ; $4930: $F8 $F0
    add hl, bc                                    ; $4932: $09
    nop                                           ; $4933: $00
    ld hl, sp-$18                                 ; $4934: $F8 $E8
    ld [$F800], sp                                ; $4936: $08 $00 $F8
    ldh [rTAC], a                                 ; $4939: $E0 $07
    nop                                           ; $493B: $00
    add b                                         ; $493C: $80
    ld [$0300], sp                                ; $493D: $08 $00 $03
    ld b, b                                       ; $4940: $40
    ld [$02F8], sp                                ; $4941: $08 $F8 $02
    ld b, b                                       ; $4944: $40
    ld [$01F0], sp                                ; $4945: $08 $F0 $01
    ld b, b                                       ; $4948: $40
    ld [$00E0], sp                                ; $4949: $08 $E0 $00
    ld b, b                                       ; $494C: $40
    nop                                           ; $494D: $00
    nop                                           ; $494E: $00
    dec bc                                        ; $494F: $0B
    ld b, b                                       ; $4950: $40
    nop                                           ; $4951: $00
    ld hl, sp+$0A                                 ; $4952: $F8 $0A
    ld b, b                                       ; $4954: $40
    nop                                           ; $4955: $00
    ldh a, [$09]                                  ; $4956: $F0 $09
    ld b, b                                       ; $4958: $40
    nop                                           ; $4959: $00
    add sp, $08                                   ; $495A: $E8 $08
    ld b, b                                       ; $495C: $40
    nop                                           ; $495D: $00
    ldh [rTAC], a                                 ; $495E: $E0 $07
    ld b, b                                       ; $4960: $40
    ldh a, [$F8]                                  ; $4961: $F0 $F8
    dec b                                         ; $4963: $05
    nop                                           ; $4964: $00
    ldh a, [$F0]                                  ; $4965: $F0 $F0
    inc b                                         ; $4967: $04
    nop                                           ; $4968: $00
    ld hl, sp+$00                                 ; $4969: $F8 $00
    stop                                          ; $496B: $10 $00
    ld hl, sp-$08                                 ; $496D: $F8 $F8
    rrca                                          ; $496F: $0F

jr_040_4970:
    nop                                           ; $4970: $00
    ld hl, sp-$10                                 ; $4971: $F8 $F0
    ld c, $00                                     ; $4973: $0E $00
    ld hl, sp-$18                                 ; $4975: $F8 $E8
    dec c                                         ; $4977: $0D
    nop                                           ; $4978: $00
    ld hl, sp-$20                                 ; $4979: $F8 $E0
    inc c                                         ; $497B: $0C
    nop                                           ; $497C: $00
    add b                                         ; $497D: $80
    ld [$05F8], sp                                ; $497E: $08 $F8 $05
    ld b, b                                       ; $4981: $40
    ld [$04F0], sp                                ; $4982: $08 $F0 $04
    ld b, b                                       ; $4985: $40
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    db $10                                        ; $4988: $10
    ld b, b                                       ; $4989: $40
    nop                                           ; $498A: $00
    ld hl, sp+$0F                                 ; $498B: $F8 $0F
    ld b, b                                       ; $498D: $40
    nop                                           ; $498E: $00
    ldh a, [$0E]                                  ; $498F: $F0 $0E
    ld b, b                                       ; $4991: $40
    nop                                           ; $4992: $00
    add sp, $0D                                   ; $4993: $E8 $0D
    ld b, b                                       ; $4995: $40
    nop                                           ; $4996: $00
    ldh [$0C], a                                  ; $4997: $E0 $0C
    ld b, b                                       ; $4999: $40
    ldh a, [$E8]                                  ; $499A: $F0 $E8
    ld b, $00                                     ; $499C: $06 $00
    ld hl, sp+$00                                 ; $499E: $F8 $00
    dec d                                         ; $49A0: $15
    nop                                           ; $49A1: $00
    ld hl, sp-$08                                 ; $49A2: $F8 $F8
    inc d                                         ; $49A4: $14
    nop                                           ; $49A5: $00
    ld hl, sp-$10                                 ; $49A6: $F8 $F0
    inc de                                        ; $49A8: $13
    nop                                           ; $49A9: $00
    ld hl, sp-$18                                 ; $49AA: $F8 $E8
    ld [de], a                                    ; $49AC: $12
    nop                                           ; $49AD: $00
    ld hl, sp-$20                                 ; $49AE: $F8 $E0
    ld de, $8000                                  ; $49B0: $11 $00 $80
    ld [$0618], sp                                ; $49B3: $08 $18 $06
    ld h, b                                       ; $49B6: $60
    nop                                           ; $49B7: $00
    ld hl, sp+$15                                 ; $49B8: $F8 $15
    ld h, b                                       ; $49BA: $60
    nop                                           ; $49BB: $00
    nop                                           ; $49BC: $00
    inc d                                         ; $49BD: $14
    ld h, b                                       ; $49BE: $60
    nop                                           ; $49BF: $00

jr_040_49C0:
    ld [$6013], sp                                ; $49C0: $08 $13 $60
    nop                                           ; $49C3: $00

jr_040_49C4:
    db $10                                        ; $49C4: $10
    ld [de], a                                    ; $49C5: $12
    ld h, b                                       ; $49C6: $60
    nop                                           ; $49C7: $00

jr_040_49C8:
    jr jr_040_49DB                                ; $49C8: $18 $11

    ld h, b                                       ; $49CA: $60
    ldh a, [rNR23]                                ; $49CB: $F0 $18
    nop                                           ; $49CD: $00
    jr nz, jr_040_49C0                            ; $49CE: $20 $F0

    ld hl, sp+$03                                 ; $49D0: $F8 $03
    jr nz, jr_040_49C4                            ; $49D2: $20 $F0

    nop                                           ; $49D4: $00
    ld [bc], a                                    ; $49D5: $02
    jr nz, jr_040_49C8                            ; $49D6: $20 $F0

jr_040_49D8:
    ld [$2001], sp                                ; $49D8: $08 $01 $20

jr_040_49DB:
    ld hl, sp-$08                                 ; $49DB: $F8 $F8
    dec bc                                        ; $49DD: $0B
    jr nz, jr_040_49D8                            ; $49DE: $20 $F8

    nop                                           ; $49E0: $00
    ld a, [bc]                                    ; $49E1: $0A
    jr nz, @-$06                                  ; $49E2: $20 $F8

    ld [$2009], sp                                ; $49E4: $08 $09 $20
    ld hl, sp+$10                                 ; $49E7: $F8 $10
    ld [$F820], sp                                ; $49E9: $08 $20 $F8
    jr @+$09                                      ; $49EC: $18 $07

    jr nz, jr_040_4970                            ; $49EE: $20 $80

    ld [$03F8], sp                                ; $49F0: $08 $F8 $03
    ld h, b                                       ; $49F3: $60
    ld [$0200], sp                                ; $49F4: $08 $00 $02
    ld h, b                                       ; $49F7: $60
    ld [$0108], sp                                ; $49F8: $08 $08 $01
    ld h, b                                       ; $49FB: $60
    ld [$0018], sp                                ; $49FC: $08 $18 $00
    ld h, b                                       ; $49FF: $60
    nop                                           ; $4A00: $00
    ld hl, sp+$0B                                 ; $4A01: $F8 $0B
    ld h, b                                       ; $4A03: $60
    nop                                           ; $4A04: $00
    nop                                           ; $4A05: $00
    ld a, [bc]                                    ; $4A06: $0A
    ld h, b                                       ; $4A07: $60
    nop                                           ; $4A08: $00

jr_040_4A09:
    ld [$6009], sp                                ; $4A09: $08 $09 $60
    nop                                           ; $4A0C: $00
    db $10                                        ; $4A0D: $10
    ld [$0060], sp                                ; $4A0E: $08 $60 $00
    jr @+$09                                      ; $4A11: $18 $07

    ld h, b                                       ; $4A13: $60
    ldh a, [rP1]                                  ; $4A14: $F0 $00
    dec b                                         ; $4A16: $05
    jr nz, jr_040_4A09                            ; $4A17: $20 $F0

jr_040_4A19:
    ld [$2004], sp                                ; $4A19: $08 $04 $20
    ld hl, sp-$08                                 ; $4A1C: $F8 $F8
    db $10                                        ; $4A1E: $10
    jr nz, jr_040_4A19                            ; $4A1F: $20 $F8

    nop                                           ; $4A21: $00
    rrca                                          ; $4A22: $0F
    jr nz, @-$06                                  ; $4A23: $20 $F8

jr_040_4A25:
    ld [$200E], sp                                ; $4A25: $08 $0E $20
    ld hl, sp+$10                                 ; $4A28: $F8 $10
    dec c                                         ; $4A2A: $0D
    jr nz, jr_040_4A25                            ; $4A2B: $20 $F8

    jr @+$0E                                      ; $4A2D: $18 $0C

    jr nz, @-$7E                                  ; $4A2F: $20 $80

    ld [$0500], sp                                ; $4A31: $08 $00 $05
    ld h, b                                       ; $4A34: $60
    ld [$0408], sp                                ; $4A35: $08 $08 $04
    ld h, b                                       ; $4A38: $60
    nop                                           ; $4A39: $00
    ld hl, sp+$10                                 ; $4A3A: $F8 $10
    ld h, b                                       ; $4A3C: $60
    nop                                           ; $4A3D: $00
    nop                                           ; $4A3E: $00
    rrca                                          ; $4A3F: $0F
    ld h, b                                       ; $4A40: $60
    nop                                           ; $4A41: $00
    ld [$600E], sp                                ; $4A42: $08 $0E $60
    nop                                           ; $4A45: $00
    db $10                                        ; $4A46: $10
    dec c                                         ; $4A47: $0D
    ld h, b                                       ; $4A48: $60
    nop                                           ; $4A49: $00
    jr jr_040_4A58                                ; $4A4A: $18 $0C

    ld h, b                                       ; $4A4C: $60
    ldh a, [rNR10]                                ; $4A4D: $F0 $10
    ld b, $20                                     ; $4A4F: $06 $20
    ld hl, sp-$08                                 ; $4A51: $F8 $F8
    dec d                                         ; $4A53: $15
    jr nz, @-$06                                  ; $4A54: $20 $F8

    nop                                           ; $4A56: $00
    inc d                                         ; $4A57: $14

jr_040_4A58:
    jr nz, @-$06                                  ; $4A58: $20 $F8

jr_040_4A5A:
    ld [$2013], sp                                ; $4A5A: $08 $13 $20
    ld hl, sp+$10                                 ; $4A5D: $F8 $10
    ld [de], a                                    ; $4A5F: $12
    jr nz, jr_040_4A5A                            ; $4A60: $20 $F8

    jr jr_040_4A75                                ; $4A62: $18 $11

    jr nz, @-$7E                                  ; $4A64: $20 $80

    db $FD                                        ; $4A66: $FD
    ld sp, hl                                     ; $4A67: $F9
    add hl, bc                                    ; $4A68: $09
    nop                                           ; $4A69: $00
    rst $38                                       ; $4A6A: $FF
    nop                                           ; $4A6B: $00
    ld a, [bc]                                    ; $4A6C: $0A
    nop                                           ; $4A6D: $00
    ld a, [$0900]                                 ; $4A6E: $FA $00 $09
    nop                                           ; $4A71: $00
    or $01                                        ; $4A72: $F6 $01
    add hl, bc                                    ; $4A74: $09

jr_040_4A75:
    nop                                           ; $4A75: $00
    ld sp, hl                                     ; $4A76: $F9
    or $09                                        ; $4A77: $F6 $09
    nop                                           ; $4A79: $00
    ld bc, $09F6                                  ; $4A7A: $01 $F6 $09
    nop                                           ; $4A7D: $00
    inc b                                         ; $4A7E: $04
    nop                                           ; $4A7F: $00
    add hl, bc                                    ; $4A80: $09
    nop                                           ; $4A81: $00
    ld bc, $0905                                  ; $4A82: $01 $05 $09
    nop                                           ; $4A85: $00
    nop                                           ; $4A86: $00
    ld hl, sp+$00                                 ; $4A87: $F8 $00
    ld b, d                                       ; $4A89: $42
    nop                                           ; $4A8A: $00
    nop                                           ; $4A8B: $00
    nop                                           ; $4A8C: $00
    ld h, d                                       ; $4A8D: $62
    ld hl, sp+$00                                 ; $4A8E: $F8 $00
    nop                                           ; $4A90: $00
    ld [hl+], a                                   ; $4A91: $22
    ld hl, sp-$08                                 ; $4A92: $F8 $F8
    nop                                           ; $4A94: $00
    ld [bc], a                                    ; $4A95: $02
    add b                                         ; $4A96: $80
    rst $38                                       ; $4A97: $FF
    rst $30                                       ; $4A98: $F7
    ld a, [bc]                                    ; $4A99: $0A
    nop                                           ; $4A9A: $00
    ld bc, $0B02                                  ; $4A9B: $01 $02 $0B
    nop                                           ; $4A9E: $00
    ld sp, hl                                     ; $4A9F: $F9
    inc bc                                        ; $4AA0: $03
    ld a, [bc]                                    ; $4AA1: $0A
    nop                                           ; $4AA2: $00
    rst $30                                       ; $4AA3: $F7
    ldh a, [$09]                                  ; $4AA4: $F0 $09
    nop                                           ; $4AA6: $00
    rlca                                          ; $4AA7: $07
    di                                            ; $4AA8: $F3
    add hl, bc                                    ; $4AA9: $09
    nop                                           ; $4AAA: $00
    ld a, [bc]                                    ; $4AAB: $0A
    ld [bc], a                                    ; $4AAC: $02
    add hl, bc                                    ; $4AAD: $09
    nop                                           ; $4AAE: $00
    dec b                                         ; $4AAF: $05
    inc c                                         ; $4AB0: $0C
    add hl, bc                                    ; $4AB1: $09
    nop                                           ; $4AB2: $00
    ld a, [c]                                     ; $4AB3: $F2
    add hl, bc                                    ; $4AB4: $09
    add hl, bc                                    ; $4AB5: $09
    nop                                           ; $4AB6: $00
    nop                                           ; $4AB7: $00
    nop                                           ; $4AB8: $00
    inc b                                         ; $4AB9: $04
    nop                                           ; $4ABA: $00
    nop                                           ; $4ABB: $00
    ld hl, sp+$03                                 ; $4ABC: $F8 $03
    nop                                           ; $4ABE: $00
    ld hl, sp+$00                                 ; $4ABF: $F8 $00
    ld [bc], a                                    ; $4AC1: $02
    nop                                           ; $4AC2: $00
    ld hl, sp-$08                                 ; $4AC3: $F8 $F8
    ld bc, $8000                                  ; $4AC5: $01 $00 $80
    inc b                                         ; $4AC8: $04
    push af                                       ; $4AC9: $F5
    dec bc                                        ; $4ACA: $0B
    nop                                           ; $4ACB: $00
    inc bc                                        ; $4ACC: $03
    inc b                                         ; $4ACD: $04
    inc c                                         ; $4ACE: $0C
    nop                                           ; $4ACF: $00
    ld a, [$0B09]                                 ; $4AD0: $FA $09 $0B
    nop                                           ; $4AD3: $00
    dec c                                         ; $4AD4: $0D
    pop af                                        ; $4AD5: $F1
    add hl, bc                                    ; $4AD6: $09
    nop                                           ; $4AD7: $00
    db $10                                        ; $4AD8: $10
    dec b                                         ; $4AD9: $05
    add hl, bc                                    ; $4ADA: $09
    nop                                           ; $4ADB: $00
    add hl, bc                                    ; $4ADC: $09
    ld de, $0009                                  ; $4ADD: $11 $09 $00
    rst $28                                       ; $4AE0: $EF
    db $10                                        ; $4AE1: $10
    add hl, bc                                    ; $4AE2: $09
    nop                                           ; $4AE3: $00
    nop                                           ; $4AE4: $00
    nop                                           ; $4AE5: $00
    rlca                                          ; $4AE6: $07
    nop                                           ; $4AE7: $00
    nop                                           ; $4AE8: $00
    ld hl, sp+$06                                 ; $4AE9: $F8 $06
    nop                                           ; $4AEB: $00
    ld hl, sp+$00                                 ; $4AEC: $F8 $00
    dec b                                         ; $4AEE: $05
    nop                                           ; $4AEF: $00
    add b                                         ; $4AF0: $80
    rlca                                          ; $4AF1: $07
    di                                            ; $4AF2: $F3
    add hl, bc                                    ; $4AF3: $09
    nop                                           ; $4AF4: $00
    inc b                                         ; $4AF5: $04
    dec b                                         ; $4AF6: $05
    ld a, [bc]                                    ; $4AF7: $0A
    nop                                           ; $4AF8: $00
    ld sp, hl                                     ; $4AF9: $F9
    dec c                                         ; $4AFA: $0D
    add hl, bc                                    ; $4AFB: $09
    nop                                           ; $4AFC: $00
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    ld [$8000], sp                                ; $4AFF: $08 $00 $80
    dec b                                         ; $4B02: $05
    rlca                                          ; $4B03: $07

jr_040_4B04:
    add hl, bc                                    ; $4B04: $09
    nop                                           ; $4B05: $00
    add b                                         ; $4B06: $80
    nop                                           ; $4B07: $00
    nop                                           ; $4B08: $00
    nop                                           ; $4B09: $00
    ld b, b                                       ; $4B0A: $40
    ld hl, sp+$00                                 ; $4B0B: $F8 $00
    nop                                           ; $4B0D: $00
    nop                                           ; $4B0E: $00
    add b                                         ; $4B0F: $80
    nop                                           ; $4B10: $00
    ld [$4003], sp                                ; $4B11: $08 $03 $40
    ld [$0208], sp                                ; $4B14: $08 $08 $02
    ld b, b                                       ; $4B17: $40
    ld [$0100], sp                                ; $4B18: $08 $00 $01
    ld b, b                                       ; $4B1B: $40
    ld hl, sp+$08                                 ; $4B1C: $F8 $08
    inc bc                                        ; $4B1E: $03
    nop                                           ; $4B1F: $00
    ldh a, [$08]                                  ; $4B20: $F0 $08
    ld [bc], a                                    ; $4B22: $02
    nop                                           ; $4B23: $00
    ldh a, [rP1]                                  ; $4B24: $F0 $00
    ld bc, $8000                                  ; $4B26: $01 $00 $80
    nop                                           ; $4B29: $00
    db $10                                        ; $4B2A: $10
    ld a, [bc]                                    ; $4B2B: $0A
    ld b, b                                       ; $4B2C: $40
    db $10                                        ; $4B2D: $10
    db $10                                        ; $4B2E: $10
    ld b, $40                                     ; $4B2F: $06 $40
    db $10                                        ; $4B31: $10
    ld [$4005], sp                                ; $4B32: $08 $05 $40
    stop                                          ; $4B35: $10 $00
    inc b                                         ; $4B37: $04
    ld b, b                                       ; $4B38: $40
    ld [$0910], sp                                ; $4B39: $08 $10 $09
    ld b, b                                       ; $4B3C: $40
    ld [$0808], sp                                ; $4B3D: $08 $08 $08
    ld b, b                                       ; $4B40: $40
    ld [$0700], sp                                ; $4B41: $08 $00 $07
    ld b, b                                       ; $4B44: $40
    ld hl, sp+$10                                 ; $4B45: $F8 $10
    ld a, [bc]                                    ; $4B47: $0A
    nop                                           ; $4B48: $00
    ldh a, [rNR10]                                ; $4B49: $F0 $10
    add hl, bc                                    ; $4B4B: $09
    nop                                           ; $4B4C: $00
    ldh a, [$08]                                  ; $4B4D: $F0 $08
    ld [$F000], sp                                ; $4B4F: $08 $00 $F0
    nop                                           ; $4B52: $00
    rlca                                          ; $4B53: $07
    nop                                           ; $4B54: $00
    add sp, $10                                   ; $4B55: $E8 $10
    ld b, $00                                     ; $4B57: $06 $00
    add sp, $08                                   ; $4B59: $E8 $08
    dec b                                         ; $4B5B: $05
    nop                                           ; $4B5C: $00
    add sp, $00                                   ; $4B5D: $E8 $00
    inc b                                         ; $4B5F: $04
    nop                                           ; $4B60: $00
    add b                                         ; $4B61: $80
    nop                                           ; $4B62: $00
    jr jr_040_4B72                                ; $4B63: $18 $0D

    ld b, b                                       ; $4B65: $40
    ld [$0C18], sp                                ; $4B66: $08 $18 $0C
    ld b, b                                       ; $4B69: $40
    db $10                                        ; $4B6A: $10
    db $10                                        ; $4B6B: $10
    dec bc                                        ; $4B6C: $0B
    ld b, b                                       ; $4B6D: $40
    ld hl, sp+$18                                 ; $4B6E: $F8 $18
    dec c                                         ; $4B70: $0D
    nop                                           ; $4B71: $00

jr_040_4B72:
    ldh a, [rNR23]                                ; $4B72: $F0 $18
    inc c                                         ; $4B74: $0C
    nop                                           ; $4B75: $00
    add sp, $10                                   ; $4B76: $E8 $10
    dec bc                                        ; $4B78: $0B
    nop                                           ; $4B79: $00
    add b                                         ; $4B7A: $80
    nop                                           ; $4B7B: $00
    ld hl, sp+$00                                 ; $4B7C: $F8 $00
    ld h, b                                       ; $4B7E: $60
    ld hl, sp-$08                                 ; $4B7F: $F8 $F8
    nop                                           ; $4B81: $00
    jr nz, jr_040_4B04                            ; $4B82: $20 $80

    nop                                           ; $4B84: $00

jr_040_4B85:
    ldh a, [$03]                                  ; $4B85: $F0 $03
    ld h, b                                       ; $4B87: $60
    ld [$02F0], sp                                ; $4B88: $08 $F0 $02
    ld h, b                                       ; $4B8B: $60
    ld [$01F8], sp                                ; $4B8C: $08 $F8 $01
    ld h, b                                       ; $4B8F: $60
    ld hl, sp-$10                                 ; $4B90: $F8 $F0
    inc bc                                        ; $4B92: $03
    jr nz, jr_040_4B85                            ; $4B93: $20 $F0

    ldh a, [rSC]                                  ; $4B95: $F0 $02
    jr nz, @-$0E                                  ; $4B97: $20 $F0

    ld hl, sp+$01                                 ; $4B99: $F8 $01
    jr nz, @-$7E                                  ; $4B9B: $20 $80

    nop                                           ; $4B9D: $00
    add sp, $0A                                   ; $4B9E: $E8 $0A
    ld h, b                                       ; $4BA0: $60
    db $10                                        ; $4BA1: $10
    add sp, $06                                   ; $4BA2: $E8 $06
    ld h, b                                       ; $4BA4: $60
    db $10                                        ; $4BA5: $10
    ldh a, [rTIMA]                                ; $4BA6: $F0 $05
    ld h, b                                       ; $4BA8: $60
    db $10                                        ; $4BA9: $10
    ld hl, sp+$04                                 ; $4BAA: $F8 $04
    ld h, b                                       ; $4BAC: $60
    ld [$09E8], sp                                ; $4BAD: $08 $E8 $09
    ld h, b                                       ; $4BB0: $60
    ld [$08F0], sp                                ; $4BB1: $08 $F0 $08
    ld h, b                                       ; $4BB4: $60
    ld [$07F8], sp                                ; $4BB5: $08 $F8 $07
    ld h, b                                       ; $4BB8: $60
    ld hl, sp-$18                                 ; $4BB9: $F8 $E8
    ld a, [bc]                                    ; $4BBB: $0A
    nop                                           ; $4BBC: $00
    ldh a, [$E8]                                  ; $4BBD: $F0 $E8
    add hl, bc                                    ; $4BBF: $09
    jr nz, @-$0E                                  ; $4BC0: $20 $F0

    ldh a, [$08]                                  ; $4BC2: $F0 $08
    jr nz, @-$0E                                  ; $4BC4: $20 $F0

    ld hl, sp+$07                                 ; $4BC6: $F8 $07
    jr nz, @-$16                                  ; $4BC8: $20 $E8

    add sp, $06                                   ; $4BCA: $E8 $06
    jr nz, @-$16                                  ; $4BCC: $20 $E8

    ldh a, [rTIMA]                                ; $4BCE: $F0 $05
    jr nz, @-$16                                  ; $4BD0: $20 $E8

    ld hl, sp+$04                                 ; $4BD2: $F8 $04
    jr nz, @-$7E                                  ; $4BD4: $20 $80

    nop                                           ; $4BD6: $00

jr_040_4BD7:
    ldh [$0D], a                                  ; $4BD7: $E0 $0D
    ld h, b                                       ; $4BD9: $60
    ld [$0CE0], sp                                ; $4BDA: $08 $E0 $0C
    ld h, b                                       ; $4BDD: $60
    db $10                                        ; $4BDE: $10
    add sp, $0B                                   ; $4BDF: $E8 $0B
    ld h, b                                       ; $4BE1: $60
    ld hl, sp-$20                                 ; $4BE2: $F8 $E0
    dec c                                         ; $4BE4: $0D
    jr nz, jr_040_4BD7                            ; $4BE5: $20 $F0

    ldh [$0C], a                                  ; $4BE7: $E0 $0C
    jr nz, @-$16                                  ; $4BE9: $20 $E8

    add sp, $0B                                   ; $4BEB: $E8 $0B
    jr nz, @-$7E                                  ; $4BED: $20 $80

    db $FC                                        ; $4BEF: $FC
    db $FC                                        ; $4BF0: $FC
    nop                                           ; $4BF1: $00
    inc bc                                        ; $4BF2: $03
    add b                                         ; $4BF3: $80
    nop                                           ; $4BF4: $00
    ld hl, sp+$01                                 ; $4BF5: $F8 $01
    ld b, e                                       ; $4BF7: $43
    nop                                           ; $4BF8: $00
    nop                                           ; $4BF9: $00
    ld bc, $F863                                  ; $4BFA: $01 $63 $F8
    nop                                           ; $4BFD: $00
    ld bc, $F823                                  ; $4BFE: $01 $23 $F8
    ld hl, sp+$01                                 ; $4C01: $F8 $01
    inc bc                                        ; $4C03: $03
    add b                                         ; $4C04: $80
    nop                                           ; $4C05: $00
    ld hl, sp+$02                                 ; $4C06: $F8 $02
    ld b, e                                       ; $4C08: $43
    nop                                           ; $4C09: $00
    nop                                           ; $4C0A: $00
    ld [bc], a                                    ; $4C0B: $02
    ld h, e                                       ; $4C0C: $63
    ld hl, sp+$00                                 ; $4C0D: $F8 $00
    ld [bc], a                                    ; $4C0F: $02
    inc hl                                        ; $4C10: $23
    ld hl, sp-$08                                 ; $4C11: $F8 $F8
    ld [bc], a                                    ; $4C13: $02
    inc bc                                        ; $4C14: $03
    ld [$01F8], sp                                ; $4C15: $08 $F8 $01
    ld b, e                                       ; $4C18: $43
    ld [$0100], sp                                ; $4C19: $08 $00 $01
    ld h, e                                       ; $4C1C: $63
    ldh a, [rP1]                                  ; $4C1D: $F0 $00
    ld bc, $F023                                  ; $4C1F: $01 $23 $F0
    ld hl, sp+$01                                 ; $4C22: $F8 $01
    inc bc                                        ; $4C24: $03
    add b                                         ; $4C25: $80
    nop                                           ; $4C26: $00
    nop                                           ; $4C27: $00
    inc bc                                        ; $4C28: $03
    inc hl                                        ; $4C29: $23
    ld hl, sp+$00                                 ; $4C2A: $F8 $00
    inc bc                                        ; $4C2C: $03
    inc hl                                        ; $4C2D: $23
    nop                                           ; $4C2E: $00
    ld hl, sp+$03                                 ; $4C2F: $F8 $03
    inc bc                                        ; $4C31: $03
    ld hl, sp-$08                                 ; $4C32: $F8 $F8
    inc bc                                        ; $4C34: $03
    inc bc                                        ; $4C35: $03
    ld [$02F8], sp                                ; $4C36: $08 $F8 $02
    ld b, e                                       ; $4C39: $43
    ld [$0200], sp                                ; $4C3A: $08 $00 $02
    ld h, e                                       ; $4C3D: $63
    ldh a, [rP1]                                  ; $4C3E: $F0 $00
    ld [bc], a                                    ; $4C40: $02
    inc hl                                        ; $4C41: $23
    ldh a, [$F8]                                  ; $4C42: $F0 $F8
    ld [bc], a                                    ; $4C44: $02
    inc bc                                        ; $4C45: $03
    db $10                                        ; $4C46: $10
    ld hl, sp+$01                                 ; $4C47: $F8 $01
    ld b, e                                       ; $4C49: $43
    stop                                          ; $4C4A: $10 $00
    ld bc, $E863                                  ; $4C4C: $01 $63 $E8
    nop                                           ; $4C4F: $00
    ld bc, $E823                                  ; $4C50: $01 $23 $E8
    ld hl, sp+$01                                 ; $4C53: $F8 $01
    inc bc                                        ; $4C55: $03
    add b                                         ; $4C56: $80
    nop                                           ; $4C57: $00
    db $10                                        ; $4C58: $10
    dec bc                                        ; $4C59: $0B
    inc b                                         ; $4C5A: $04
    ld hl, sp+$00                                 ; $4C5B: $F8 $00
    inc bc                                        ; $4C5D: $03
    inc b                                         ; $4C5E: $04
    nop                                           ; $4C5F: $00
    ld [$040A], sp                                ; $4C60: $08 $0A $04
    nop                                           ; $4C63: $00
    nop                                           ; $4C64: $00
    add hl, bc                                    ; $4C65: $09
    inc b                                         ; $4C66: $04
    nop                                           ; $4C67: $00
    ld hl, sp+$08                                 ; $4C68: $F8 $08
    inc b                                         ; $4C6A: $04
    nop                                           ; $4C6B: $00
    ldh a, [rTAC]                                 ; $4C6C: $F0 $07
    inc b                                         ; $4C6E: $04
    nop                                           ; $4C6F: $00
    add sp, $06                                   ; $4C70: $E8 $06
    inc b                                         ; $4C72: $04
    ld hl, sp+$10                                 ; $4C73: $F8 $10
    dec b                                         ; $4C75: $05
    inc b                                         ; $4C76: $04
    ld hl, sp+$08                                 ; $4C77: $F8 $08
    inc b                                         ; $4C79: $04
    inc b                                         ; $4C7A: $04
    ld hl, sp-$08                                 ; $4C7B: $F8 $F8
    ld [bc], a                                    ; $4C7D: $02
    inc b                                         ; $4C7E: $04
    ld hl, sp-$10                                 ; $4C7F: $F8 $F0
    ld bc, $F804                                  ; $4C81: $01 $04 $F8
    add sp, $00                                   ; $4C84: $E8 $00
    inc b                                         ; $4C86: $04
    add b                                         ; $4C87: $80
    nop                                           ; $4C88: $00
    db $10                                        ; $4C89: $10
    rla                                           ; $4C8A: $17
    inc b                                         ; $4C8B: $04
    nop                                           ; $4C8C: $00
    add hl, bc                                    ; $4C8D: $09
    ld d, $04                                     ; $4C8E: $16 $04
    nop                                           ; $4C90: $00
    ld bc, $0415                                  ; $4C91: $01 $15 $04
    nop                                           ; $4C94: $00
    ld sp, hl                                     ; $4C95: $F9
    inc d                                         ; $4C96: $14
    inc b                                         ; $4C97: $04
    nop                                           ; $4C98: $00
    pop af                                        ; $4C99: $F1
    inc de                                        ; $4C9A: $13
    inc b                                         ; $4C9B: $04
    nop                                           ; $4C9C: $00
    jp hl                                         ; $4C9D: $E9


    ld [de], a                                    ; $4C9E: $12
    inc b                                         ; $4C9F: $04
    ld hl, sp+$11                                 ; $4CA0: $F8 $11
    ld de, $F804                                  ; $4CA2: $11 $04 $F8
    add hl, bc                                    ; $4CA5: $09
    db $10                                        ; $4CA6: $10
    inc b                                         ; $4CA7: $04
    ld hl, sp+$01                                 ; $4CA8: $F8 $01
    rrca                                          ; $4CAA: $0F
    inc b                                         ; $4CAB: $04
    ld hl, sp-$07                                 ; $4CAC: $F8 $F9
    ld c, $04                                     ; $4CAE: $0E $04
    ld hl, sp-$0F                                 ; $4CB0: $F8 $F1
    dec c                                         ; $4CB2: $0D
    inc b                                         ; $4CB3: $04
    ld hl, sp-$17                                 ; $4CB4: $F8 $E9
    inc c                                         ; $4CB6: $0C
    inc b                                         ; $4CB7: $04
    add b                                         ; $4CB8: $80
    ld hl, sp-$18                                 ; $4CB9: $F8 $E8
    dec bc                                        ; $4CBB: $0B
    ld h, h                                       ; $4CBC: $64
    nop                                           ; $4CBD: $00
    ld hl, sp+$03                                 ; $4CBE: $F8 $03
    ld h, h                                       ; $4CC0: $64
    ld hl, sp-$10                                 ; $4CC1: $F8 $F0
    ld a, [bc]                                    ; $4CC3: $0A
    ld h, h                                       ; $4CC4: $64
    ld hl, sp-$08                                 ; $4CC5: $F8 $F8
    add hl, bc                                    ; $4CC7: $09
    ld h, h                                       ; $4CC8: $64
    ld hl, sp+$00                                 ; $4CC9: $F8 $00
    ld [$F864], sp                                ; $4CCB: $08 $64 $F8
    ld [$6407], sp                                ; $4CCE: $08 $07 $64
    ld hl, sp+$10                                 ; $4CD1: $F8 $10
    ld b, $64                                     ; $4CD3: $06 $64
    nop                                           ; $4CD5: $00
    add sp, $05                                   ; $4CD6: $E8 $05
    ld h, h                                       ; $4CD8: $64
    nop                                           ; $4CD9: $00
    ldh a, [rDIV]                                 ; $4CDA: $F0 $04
    ld h, h                                       ; $4CDC: $64
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    ld [bc], a                                    ; $4CDF: $02
    ld h, h                                       ; $4CE0: $64
    nop                                           ; $4CE1: $00
    ld [$6401], sp                                ; $4CE2: $08 $01 $64
    nop                                           ; $4CE5: $00
    stop                                          ; $4CE6: $10 $00
    ld h, h                                       ; $4CE8: $64
    add b                                         ; $4CE9: $80
    ld hl, sp-$18                                 ; $4CEA: $F8 $E8
    rla                                           ; $4CEC: $17
    ld h, h                                       ; $4CED: $64
    ld hl, sp-$10                                 ; $4CEE: $F8 $F0
    ld d, $64                                     ; $4CF0: $16 $64
    ld hl, sp-$08                                 ; $4CF2: $F8 $F8
    dec d                                         ; $4CF4: $15
    ld h, h                                       ; $4CF5: $64
    ld hl, sp+$00                                 ; $4CF6: $F8 $00
    inc d                                         ; $4CF8: $14
    ld h, h                                       ; $4CF9: $64
    ld hl, sp+$08                                 ; $4CFA: $F8 $08
    inc de                                        ; $4CFC: $13
    ld h, h                                       ; $4CFD: $64
    ld hl, sp+$10                                 ; $4CFE: $F8 $10
    ld [de], a                                    ; $4D00: $12
    ld h, h                                       ; $4D01: $64
    nop                                           ; $4D02: $00
    add sp, $11                                   ; $4D03: $E8 $11
    ld h, h                                       ; $4D05: $64
    nop                                           ; $4D06: $00
    ldh a, [rNR10]                                ; $4D07: $F0 $10
    ld h, h                                       ; $4D09: $64
    nop                                           ; $4D0A: $00
    ld hl, sp+$0F                                 ; $4D0B: $F8 $0F
    ld h, h                                       ; $4D0D: $64
    nop                                           ; $4D0E: $00
    nop                                           ; $4D0F: $00
    ld c, $64                                     ; $4D10: $0E $64
    nop                                           ; $4D12: $00
    ld [$640D], sp                                ; $4D13: $08 $0D $64
    nop                                           ; $4D16: $00
    db $10                                        ; $4D17: $10
    inc c                                         ; $4D18: $0C
    ld h, h                                       ; $4D19: $64
    add b                                         ; $4D1A: $80
    nop                                           ; $4D1B: $00
    inc c                                         ; $4D1C: $0C
    dec bc                                        ; $4D1D: $0B
    inc b                                         ; $4D1E: $04
    nop                                           ; $4D1F: $00
    inc b                                         ; $4D20: $04
    ld a, [bc]                                    ; $4D21: $0A
    inc b                                         ; $4D22: $04
    nop                                           ; $4D23: $00
    db $FC                                        ; $4D24: $FC
    ld [$0004], sp                                ; $4D25: $08 $04 $00
    db $F4                                        ; $4D28: $F4
    rlca                                          ; $4D29: $07
    inc b                                         ; $4D2A: $04
    nop                                           ; $4D2B: $00
    db $EC                                        ; $4D2C: $EC
    ld b, $04                                     ; $4D2D: $06 $04
    ld hl, sp+$0C                                 ; $4D2F: $F8 $0C
    dec b                                         ; $4D31: $05
    inc b                                         ; $4D32: $04
    ld hl, sp+$04                                 ; $4D33: $F8 $04
    inc b                                         ; $4D35: $04
    inc b                                         ; $4D36: $04
    ld hl, sp-$04                                 ; $4D37: $F8 $FC
    ld [bc], a                                    ; $4D39: $02
    inc b                                         ; $4D3A: $04
    ld hl, sp-$0C                                 ; $4D3B: $F8 $F4
    ld bc, $F804                                  ; $4D3D: $01 $04 $F8
    db $EC                                        ; $4D40: $EC
    nop                                           ; $4D41: $00
    inc b                                         ; $4D42: $04
    add b                                         ; $4D43: $80
    nop                                           ; $4D44: $00
    inc c                                         ; $4D45: $0C
    rla                                           ; $4D46: $17
    inc b                                         ; $4D47: $04
    nop                                           ; $4D48: $00
    inc b                                         ; $4D49: $04
    ld d, $04                                     ; $4D4A: $16 $04
    nop                                           ; $4D4C: $00
    db $FD                                        ; $4D4D: $FD
    inc d                                         ; $4D4E: $14
    inc b                                         ; $4D4F: $04
    nop                                           ; $4D50: $00
    push af                                       ; $4D51: $F5
    inc de                                        ; $4D52: $13
    inc b                                         ; $4D53: $04
    nop                                           ; $4D54: $00
    db $ED                                        ; $4D55: $ED
    ld [de], a                                    ; $4D56: $12
    inc b                                         ; $4D57: $04
    ld hl, sp+$0C                                 ; $4D58: $F8 $0C
    ld de, $F804                                  ; $4D5A: $11 $04 $F8
    inc b                                         ; $4D5D: $04
    db $10                                        ; $4D5E: $10
    inc b                                         ; $4D5F: $04
    ld hl, sp-$03                                 ; $4D60: $F8 $FD
    ld c, $04                                     ; $4D62: $0E $04
    ld hl, sp-$0B                                 ; $4D64: $F8 $F5
    dec c                                         ; $4D66: $0D
    inc b                                         ; $4D67: $04
    ld hl, sp-$13                                 ; $4D68: $F8 $ED
    inc c                                         ; $4D6A: $0C
    inc b                                         ; $4D6B: $04
    add b                                         ; $4D6C: $80
    ld hl, sp-$14                                 ; $4D6D: $F8 $EC
    dec bc                                        ; $4D6F: $0B
    ld h, h                                       ; $4D70: $64
    ld hl, sp-$0C                                 ; $4D71: $F8 $F4
    ld a, [bc]                                    ; $4D73: $0A
    ld h, h                                       ; $4D74: $64
    ld hl, sp-$04                                 ; $4D75: $F8 $FC
    ld [$F864], sp                                ; $4D77: $08 $64 $F8
    inc b                                         ; $4D7A: $04
    rlca                                          ; $4D7B: $07
    ld h, h                                       ; $4D7C: $64
    ld hl, sp+$0C                                 ; $4D7D: $F8 $0C
    ld b, $64                                     ; $4D7F: $06 $64
    nop                                           ; $4D81: $00
    db $EC                                        ; $4D82: $EC
    dec b                                         ; $4D83: $05
    ld h, h                                       ; $4D84: $64
    nop                                           ; $4D85: $00
    db $F4                                        ; $4D86: $F4
    inc b                                         ; $4D87: $04
    ld h, h                                       ; $4D88: $64
    nop                                           ; $4D89: $00
    db $FC                                        ; $4D8A: $FC
    ld [bc], a                                    ; $4D8B: $02
    ld h, h                                       ; $4D8C: $64
    nop                                           ; $4D8D: $00
    inc b                                         ; $4D8E: $04
    ld bc, $0064                                  ; $4D8F: $01 $64 $00
    inc c                                         ; $4D92: $0C
    nop                                           ; $4D93: $00
    ld h, h                                       ; $4D94: $64
    add b                                         ; $4D95: $80
    ld hl, sp-$14                                 ; $4D96: $F8 $EC
    rla                                           ; $4D98: $17
    ld h, h                                       ; $4D99: $64
    ld hl, sp-$0C                                 ; $4D9A: $F8 $F4
    ld d, $64                                     ; $4D9C: $16 $64
    ld hl, sp-$04                                 ; $4D9E: $F8 $FC
    inc d                                         ; $4DA0: $14
    ld h, h                                       ; $4DA1: $64
    ld hl, sp+$04                                 ; $4DA2: $F8 $04
    inc de                                        ; $4DA4: $13
    ld h, h                                       ; $4DA5: $64
    ld hl, sp+$0C                                 ; $4DA6: $F8 $0C
    ld [de], a                                    ; $4DA8: $12
    ld h, h                                       ; $4DA9: $64
    nop                                           ; $4DAA: $00
    db $EC                                        ; $4DAB: $EC
    ld de, $0064                                  ; $4DAC: $11 $64 $00
    db $F4                                        ; $4DAF: $F4
    db $10                                        ; $4DB0: $10
    ld h, h                                       ; $4DB1: $64
    nop                                           ; $4DB2: $00
    db $FC                                        ; $4DB3: $FC
    ld c, $64                                     ; $4DB4: $0E $64
    nop                                           ; $4DB6: $00
    inc b                                         ; $4DB7: $04
    dec c                                         ; $4DB8: $0D
    ld h, h                                       ; $4DB9: $64
    nop                                           ; $4DBA: $00
    inc c                                         ; $4DBB: $0C
    inc c                                         ; $4DBC: $0C
    ld h, h                                       ; $4DBD: $64
    add b                                         ; $4DBE: $80
    nop                                           ; $4DBF: $00
    ld [$040B], sp                                ; $4DC0: $08 $0B $04
    nop                                           ; $4DC3: $00
    nop                                           ; $4DC4: $00
    ld a, [bc]                                    ; $4DC5: $0A
    inc b                                         ; $4DC6: $04
    nop                                           ; $4DC7: $00
    ld hl, sp+$07                                 ; $4DC8: $F8 $07
    inc b                                         ; $4DCA: $04
    nop                                           ; $4DCB: $00
    ldh a, [rTMA]                                 ; $4DCC: $F0 $06
    inc b                                         ; $4DCE: $04
    ld hl, sp+$08                                 ; $4DCF: $F8 $08
    dec b                                         ; $4DD1: $05
    inc b                                         ; $4DD2: $04
    ld hl, sp+$00                                 ; $4DD3: $F8 $00
    inc b                                         ; $4DD5: $04
    inc b                                         ; $4DD6: $04
    ld hl, sp-$08                                 ; $4DD7: $F8 $F8
    ld bc, $F804                                  ; $4DD9: $01 $04 $F8
    ldh a, [rP1]                                  ; $4DDC: $F0 $00
    inc b                                         ; $4DDE: $04
    add b                                         ; $4DDF: $80
    nop                                           ; $4DE0: $00
    ld [$0417], sp                                ; $4DE1: $08 $17 $04
    nop                                           ; $4DE4: $00
    nop                                           ; $4DE5: $00
    ld d, $04                                     ; $4DE6: $16 $04
    nop                                           ; $4DE8: $00
    ld hl, sp+$13                                 ; $4DE9: $F8 $13
    inc b                                         ; $4DEB: $04
    nop                                           ; $4DEC: $00
    ldh a, [rNR12]                                ; $4DED: $F0 $12
    inc b                                         ; $4DEF: $04
    ld hl, sp+$08                                 ; $4DF0: $F8 $08
    ld de, $F804                                  ; $4DF2: $11 $04 $F8
    nop                                           ; $4DF5: $00
    db $10                                        ; $4DF6: $10
    inc b                                         ; $4DF7: $04
    ld hl, sp-$08                                 ; $4DF8: $F8 $F8
    dec c                                         ; $4DFA: $0D
    inc b                                         ; $4DFB: $04
    ld hl, sp-$10                                 ; $4DFC: $F8 $F0
    inc c                                         ; $4DFE: $0C
    inc b                                         ; $4DFF: $04
    add b                                         ; $4E00: $80
    ld hl, sp-$08                                 ; $4E01: $F8 $F8
    ld a, [bc]                                    ; $4E03: $0A
    ld h, h                                       ; $4E04: $64
    ld hl, sp-$10                                 ; $4E05: $F8 $F0
    dec bc                                        ; $4E07: $0B
    ld h, h                                       ; $4E08: $64
    ld hl, sp+$00                                 ; $4E09: $F8 $00
    rlca                                          ; $4E0B: $07
    ld h, h                                       ; $4E0C: $64
    ld hl, sp+$08                                 ; $4E0D: $F8 $08
    ld b, $64                                     ; $4E0F: $06 $64
    nop                                           ; $4E11: $00
    ldh a, [rTIMA]                                ; $4E12: $F0 $05
    ld h, h                                       ; $4E14: $64
    nop                                           ; $4E15: $00
    ld hl, sp+$04                                 ; $4E16: $F8 $04
    ld h, h                                       ; $4E18: $64
    nop                                           ; $4E19: $00
    nop                                           ; $4E1A: $00
    ld bc, $0064                                  ; $4E1B: $01 $64 $00
    ld [$6400], sp                                ; $4E1E: $08 $00 $64
    add b                                         ; $4E21: $80
    ld hl, sp-$10                                 ; $4E22: $F8 $F0
    rla                                           ; $4E24: $17
    ld h, h                                       ; $4E25: $64
    ld hl, sp-$08                                 ; $4E26: $F8 $F8
    ld d, $64                                     ; $4E28: $16 $64
    ld hl, sp+$00                                 ; $4E2A: $F8 $00
    inc de                                        ; $4E2C: $13
    ld h, h                                       ; $4E2D: $64
    ld hl, sp+$08                                 ; $4E2E: $F8 $08
    ld [de], a                                    ; $4E30: $12
    ld h, h                                       ; $4E31: $64
    nop                                           ; $4E32: $00
    ldh a, [rNR11]                                ; $4E33: $F0 $11
    ld h, h                                       ; $4E35: $64
    nop                                           ; $4E36: $00
    ld hl, sp+$10                                 ; $4E37: $F8 $10
    ld h, h                                       ; $4E39: $64
    nop                                           ; $4E3A: $00
    nop                                           ; $4E3B: $00
    dec c                                         ; $4E3C: $0D
    ld h, h                                       ; $4E3D: $64
    nop                                           ; $4E3E: $00
    ld [$640C], sp                                ; $4E3F: $08 $0C $64
    add b                                         ; $4E42: $80
    nop                                           ; $4E43: $00
    nop                                           ; $4E44: $00
    dec bc                                        ; $4E45: $0B
    inc b                                         ; $4E46: $04
    nop                                           ; $4E47: $00
    ld hl, sp+$06                                 ; $4E48: $F8 $06
    inc b                                         ; $4E4A: $04
    ld hl, sp+$00                                 ; $4E4B: $F8 $00
    dec b                                         ; $4E4D: $05
    inc b                                         ; $4E4E: $04
    ld hl, sp-$08                                 ; $4E4F: $F8 $F8
    nop                                           ; $4E51: $00
    inc b                                         ; $4E52: $04
    add b                                         ; $4E53: $80
    nop                                           ; $4E54: $00
    nop                                           ; $4E55: $00
    rla                                           ; $4E56: $17
    inc b                                         ; $4E57: $04
    nop                                           ; $4E58: $00
    ld hl, sp+$12                                 ; $4E59: $F8 $12
    inc b                                         ; $4E5B: $04
    ld hl, sp+$00                                 ; $4E5C: $F8 $00
    ld de, $F804                                  ; $4E5E: $11 $04 $F8
    ld hl, sp+$0C                                 ; $4E61: $F8 $0C
    inc b                                         ; $4E63: $04
    add b                                         ; $4E64: $80
    ld hl, sp-$08                                 ; $4E65: $F8 $F8
    dec bc                                        ; $4E67: $0B
    ld h, h                                       ; $4E68: $64
    ld hl, sp+$00                                 ; $4E69: $F8 $00
    ld b, $64                                     ; $4E6B: $06 $64
    nop                                           ; $4E6D: $00
    ld hl, sp+$05                                 ; $4E6E: $F8 $05
    ld h, h                                       ; $4E70: $64
    nop                                           ; $4E71: $00
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    ld h, h                                       ; $4E74: $64
    add b                                         ; $4E75: $80
    ld hl, sp-$08                                 ; $4E76: $F8 $F8
    rla                                           ; $4E78: $17
    ld h, h                                       ; $4E79: $64
    ld hl, sp+$00                                 ; $4E7A: $F8 $00
    ld [de], a                                    ; $4E7C: $12
    ld h, h                                       ; $4E7D: $64
    nop                                           ; $4E7E: $00
    ld hl, sp+$11                                 ; $4E7F: $F8 $11
    ld h, h                                       ; $4E81: $64
    nop                                           ; $4E82: $00
    nop                                           ; $4E83: $00
    inc c                                         ; $4E84: $0C
    ld h, h                                       ; $4E85: $64
    add b                                         ; $4E86: $80
    ld hl, sp-$08                                 ; $4E87: $F8 $F8
    ld [bc], a                                    ; $4E89: $02
    nop                                           ; $4E8A: $00
    ldh a, [$F8]                                  ; $4E8B: $F0 $F8
    ld bc, $F800                                  ; $4E8D: $01 $00 $F8
    nop                                           ; $4E90: $00
    nop                                           ; $4E91: $00
    nop                                           ; $4E92: $00
    add b                                         ; $4E93: $80
    nop                                           ; $4E94: $00
    ld hl, sp+$04                                 ; $4E95: $F8 $04
    nop                                           ; $4E97: $00
    ld hl, sp-$08                                 ; $4E98: $F8 $F8
    inc bc                                        ; $4E9A: $03
    nop                                           ; $4E9B: $00
    ld hl, sp+$00                                 ; $4E9C: $F8 $00
    nop                                           ; $4E9E: $00
    nop                                           ; $4E9F: $00
    add b                                         ; $4EA0: $80
    nop                                           ; $4EA1: $00
    ld hl, sp+$06                                 ; $4EA2: $F8 $06
    nop                                           ; $4EA4: $00
    ld hl, sp-$08                                 ; $4EA5: $F8 $F8
    dec b                                         ; $4EA7: $05
    nop                                           ; $4EA8: $00
    ld hl, sp+$00                                 ; $4EA9: $F8 $00
    nop                                           ; $4EAB: $00
    nop                                           ; $4EAC: $00
    add b                                         ; $4EAD: $80
    nop                                           ; $4EAE: $00
    ld hl, sp+$08                                 ; $4EAF: $F8 $08
    nop                                           ; $4EB1: $00
    ld hl, sp-$08                                 ; $4EB2: $F8 $F8
    rlca                                          ; $4EB4: $07
    nop                                           ; $4EB5: $00
    ld hl, sp+$00                                 ; $4EB6: $F8 $00
    nop                                           ; $4EB8: $00
    nop                                           ; $4EB9: $00
    add b                                         ; $4EBA: $80
    nop                                           ; $4EBB: $00
    nop                                           ; $4EBC: $00
    ld b, $22                                     ; $4EBD: $06 $22
    ld hl, sp+$00                                 ; $4EBF: $F8 $00
    dec b                                         ; $4EC1: $05
    ld [hl+], a                                   ; $4EC2: $22
    ld hl, sp+$08                                 ; $4EC3: $F8 $08
    inc b                                         ; $4EC5: $04
    ld [hl+], a                                   ; $4EC6: $22
    ldh a, [rP1]                                  ; $4EC7: $F0 $00
    inc bc                                        ; $4EC9: $03
    ld [hl+], a                                   ; $4ECA: $22
    ldh a, [$08]                                  ; $4ECB: $F0 $08
    ld [bc], a                                    ; $4ECD: $02
    ld [hl+], a                                   ; $4ECE: $22
    add sp, $00                                   ; $4ECF: $E8 $00
    ld bc, $E022                                  ; $4ED1: $01 $22 $E0
    nop                                           ; $4ED4: $00
    nop                                           ; $4ED5: $00
    ld [hl+], a                                   ; $4ED6: $22
    nop                                           ; $4ED7: $00
    ld hl, sp+$06                                 ; $4ED8: $F8 $06
    ld [bc], a                                    ; $4EDA: $02
    ld hl, sp-$08                                 ; $4EDB: $F8 $F8
    dec b                                         ; $4EDD: $05
    ld [bc], a                                    ; $4EDE: $02
    ld hl, sp-$10                                 ; $4EDF: $F8 $F0
    inc b                                         ; $4EE1: $04
    ld [bc], a                                    ; $4EE2: $02
    ldh a, [$F8]                                  ; $4EE3: $F0 $F8
    inc bc                                        ; $4EE5: $03
    ld [bc], a                                    ; $4EE6: $02
    ldh a, [$F0]                                  ; $4EE7: $F0 $F0
    ld [bc], a                                    ; $4EE9: $02
    ld [bc], a                                    ; $4EEA: $02
    add sp, -$08                                  ; $4EEB: $E8 $F8
    ld bc, $E002                                  ; $4EED: $01 $02 $E0
    ld hl, sp+$00                                 ; $4EF0: $F8 $00
    ld [bc], a                                    ; $4EF2: $02
    add b                                         ; $4EF3: $80
    nop                                           ; $4EF4: $00
    nop                                           ; $4EF5: $00
    ld de, $0022                                  ; $4EF6: $11 $22 $00
    ld [$220F], sp                                ; $4EF9: $08 $0F $22
    nop                                           ; $4EFC: $00
    db $10                                        ; $4EFD: $10
    ld c, $22                                     ; $4EFE: $0E $22
    ld hl, sp+$00                                 ; $4F00: $F8 $00
    dec c                                         ; $4F02: $0D
    ld [hl+], a                                   ; $4F03: $22
    ld hl, sp+$08                                 ; $4F04: $F8 $08
    inc c                                         ; $4F06: $0C
    ld [hl+], a                                   ; $4F07: $22
    ld hl, sp+$10                                 ; $4F08: $F8 $10
    dec bc                                        ; $4F0A: $0B
    ld [hl+], a                                   ; $4F0B: $22
    ldh a, [rP1]                                  ; $4F0C: $F0 $00
    ld a, [bc]                                    ; $4F0E: $0A
    ld [hl+], a                                   ; $4F0F: $22
    ldh a, [$08]                                  ; $4F10: $F0 $08
    add hl, bc                                    ; $4F12: $09
    ld [hl+], a                                   ; $4F13: $22
    add sp, $00                                   ; $4F14: $E8 $00
    ld [$E822], sp                                ; $4F16: $08 $22 $E8
    ld [$2207], sp                                ; $4F19: $08 $07 $22
    nop                                           ; $4F1C: $00
    ld hl, sp+$11                                 ; $4F1D: $F8 $11
    ld [bc], a                                    ; $4F1F: $02
    nop                                           ; $4F20: $00
    ldh a, [rIF]                                  ; $4F21: $F0 $0F
    ld [bc], a                                    ; $4F23: $02
    nop                                           ; $4F24: $00
    add sp, $0E                                   ; $4F25: $E8 $0E
    ld [bc], a                                    ; $4F27: $02
    ld hl, sp-$08                                 ; $4F28: $F8 $F8
    dec c                                         ; $4F2A: $0D
    ld [bc], a                                    ; $4F2B: $02
    ld hl, sp-$10                                 ; $4F2C: $F8 $F0
    inc c                                         ; $4F2E: $0C
    ld [bc], a                                    ; $4F2F: $02
    ld hl, sp-$18                                 ; $4F30: $F8 $E8
    dec bc                                        ; $4F32: $0B
    ld [bc], a                                    ; $4F33: $02
    ldh a, [$F8]                                  ; $4F34: $F0 $F8
    ld a, [bc]                                    ; $4F36: $0A
    ld [bc], a                                    ; $4F37: $02
    ldh a, [$F0]                                  ; $4F38: $F0 $F0
    add hl, bc                                    ; $4F3A: $09
    ld [bc], a                                    ; $4F3B: $02
    add sp, -$08                                  ; $4F3C: $E8 $F8
    ld [$E802], sp                                ; $4F3E: $08 $02 $E8
    ldh a, [rTAC]                                 ; $4F41: $F0 $07
    ld [bc], a                                    ; $4F43: $02
    add b                                         ; $4F44: $80
    ld [$1E00], sp                                ; $4F45: $08 $00 $1E
    ld [hl+], a                                   ; $4F48: $22
    ld [$1D08], sp                                ; $4F49: $08 $08 $1D
    ld [hl+], a                                   ; $4F4C: $22
    ld [$1C10], sp                                ; $4F4D: $08 $10 $1C
    ld [hl+], a                                   ; $4F50: $22
    nop                                           ; $4F51: $00
    nop                                           ; $4F52: $00
    dec de                                        ; $4F53: $1B
    ld [hl+], a                                   ; $4F54: $22
    nop                                           ; $4F55: $00
    ld [$221A], sp                                ; $4F56: $08 $1A $22
    nop                                           ; $4F59: $00
    db $10                                        ; $4F5A: $10
    add hl, de                                    ; $4F5B: $19
    ld [hl+], a                                   ; $4F5C: $22
    nop                                           ; $4F5D: $00
    jr jr_040_4F78                                ; $4F5E: $18 $18

    ld [hl+], a                                   ; $4F60: $22
    ld hl, sp+$00                                 ; $4F61: $F8 $00
    rla                                           ; $4F63: $17
    ld [hl+], a                                   ; $4F64: $22
    ld hl, sp+$08                                 ; $4F65: $F8 $08
    ld d, $22                                     ; $4F67: $16 $22
    ld hl, sp+$10                                 ; $4F69: $F8 $10
    dec d                                         ; $4F6B: $15
    ld [hl+], a                                   ; $4F6C: $22
    ldh a, [rNR10]                                ; $4F6D: $F0 $10
    inc d                                         ; $4F6F: $14
    ld [hl+], a                                   ; $4F70: $22
    add sp, $10                                   ; $4F71: $E8 $10
    inc de                                        ; $4F73: $13
    ld [hl+], a                                   ; $4F74: $22
    ldh a, [rP1]                                  ; $4F75: $F0 $00
    ld [de], a                                    ; $4F77: $12

jr_040_4F78:
    ld [hl+], a                                   ; $4F78: $22

Call_040_4F79:
    ld [$1EF8], sp                                ; $4F79: $08 $F8 $1E
    ld [bc], a                                    ; $4F7C: $02

Jump_040_4F7D:
    ld [$1DF0], sp                                ; $4F7D: $08 $F0 $1D
    ld [bc], a                                    ; $4F80: $02
    ld [$1CE8], sp                                ; $4F81: $08 $E8 $1C
    ld [bc], a                                    ; $4F84: $02
    nop                                           ; $4F85: $00
    ld hl, sp+$1B                                 ; $4F86: $F8 $1B
    ld [bc], a                                    ; $4F88: $02
    nop                                           ; $4F89: $00
    ldh a, [rNR30]                                ; $4F8A: $F0 $1A
    ld [bc], a                                    ; $4F8C: $02
    nop                                           ; $4F8D: $00
    add sp, $19                                   ; $4F8E: $E8 $19
    ld [bc], a                                    ; $4F90: $02
    nop                                           ; $4F91: $00
    ldh [rNR23], a                                ; $4F92: $E0 $18
    ld [bc], a                                    ; $4F94: $02
    ld hl, sp-$08                                 ; $4F95: $F8 $F8
    rla                                           ; $4F97: $17
    ld [bc], a                                    ; $4F98: $02
    ld hl, sp-$10                                 ; $4F99: $F8 $F0
    ld d, $02                                     ; $4F9B: $16 $02
    ld hl, sp-$18                                 ; $4F9D: $F8 $E8
    dec d                                         ; $4F9F: $15
    ld [bc], a                                    ; $4FA0: $02
    ldh a, [$E8]                                  ; $4FA1: $F0 $E8
    inc d                                         ; $4FA3: $14
    ld [bc], a                                    ; $4FA4: $02
    add sp, -$18                                  ; $4FA5: $E8 $E8
    inc de                                        ; $4FA7: $13
    ld [bc], a                                    ; $4FA8: $02
    ldh a, [$F8]                                  ; $4FA9: $F0 $F8
    ld [de], a                                    ; $4FAB: $12
    ld [bc], a                                    ; $4FAC: $02
    add b                                         ; $4FAD: $80
    ld hl, sp+$10                                 ; $4FAE: $F8 $10
    rra                                           ; $4FB0: $1F
    ld [hl+], a                                   ; $4FB1: $22
    ld [$2600], sp                                ; $4FB2: $08 $00 $26
    ld [hl+], a                                   ; $4FB5: $22
    ld [$2508], sp                                ; $4FB6: $08 $08 $25
    ld [hl+], a                                   ; $4FB9: $22
    nop                                           ; $4FBA: $00
    nop                                           ; $4FBB: $00
    inc h                                         ; $4FBC: $24
    ld [hl+], a                                   ; $4FBD: $22
    nop                                           ; $4FBE: $00
    ld [$2223], sp                                ; $4FBF: $08 $23 $22
    nop                                           ; $4FC2: $00
    db $10                                        ; $4FC3: $10
    ld [hl+], a                                   ; $4FC4: $22
    ld [hl+], a                                   ; $4FC5: $22
    nop                                           ; $4FC6: $00
    jr jr_040_4FEA                                ; $4FC7: $18 $21

    ld [hl+], a                                   ; $4FC9: $22
    ld hl, sp+$00                                 ; $4FCA: $F8 $00
    jr nz, @+$24                                  ; $4FCC: $20 $22

    ld [$26F8], sp                                ; $4FCE: $08 $F8 $26
    ld [bc], a                                    ; $4FD1: $02
    ld [$25F0], sp                                ; $4FD2: $08 $F0 $25
    ld [bc], a                                    ; $4FD5: $02
    nop                                           ; $4FD6: $00
    ld hl, sp+$24                                 ; $4FD7: $F8 $24
    ld [bc], a                                    ; $4FD9: $02
    nop                                           ; $4FDA: $00
    ldh a, [rNR44]                                ; $4FDB: $F0 $23
    ld [bc], a                                    ; $4FDD: $02
    nop                                           ; $4FDE: $00
    add sp, $22                                   ; $4FDF: $E8 $22
    ld [bc], a                                    ; $4FE1: $02
    nop                                           ; $4FE2: $00
    ldh [rNR42], a                                ; $4FE3: $E0 $21
    ld [bc], a                                    ; $4FE5: $02
    ld hl, sp-$08                                 ; $4FE6: $F8 $F8
    jr nz, jr_040_4FEC                            ; $4FE8: $20 $02

jr_040_4FEA:
    ld hl, sp-$18                                 ; $4FEA: $F8 $E8

jr_040_4FEC:
    rra                                           ; $4FEC: $1F
    ld [bc], a                                    ; $4FED: $02
    add b                                         ; $4FEE: $80
    ld [$2C00], sp                                ; $4FEF: $08 $00 $2C
    ld [hl+], a                                   ; $4FF2: $22
    ld [$2CF8], sp                                ; $4FF3: $08 $F8 $2C
    ld [bc], a                                    ; $4FF6: $02
    ld [$2B08], sp                                ; $4FF7: $08 $08 $2B
    ld [hl+], a                                   ; $4FFA: $22
    ld [$2A10], sp                                ; $4FFB: $08 $10 $2A
    ld [hl+], a                                   ; $4FFE: $22
    nop                                           ; $4FFF: $00
    db $10                                        ; $5000: $10
    add hl, hl                                    ; $5001: $29
    ld [hl+], a                                   ; $5002: $22
    nop                                           ; $5003: $00
    jr jr_040_502E                                ; $5004: $18 $28

    ld [hl+], a                                   ; $5006: $22
    ld hl, sp+$10                                 ; $5007: $F8 $10
    daa                                           ; $5009: $27
    ld [hl+], a                                   ; $500A: $22
    ld [$2BF0], sp                                ; $500B: $08 $F0 $2B
    ld [bc], a                                    ; $500E: $02
    ld [$2AE8], sp                                ; $500F: $08 $E8 $2A
    ld [bc], a                                    ; $5012: $02
    nop                                           ; $5013: $00
    add sp, $29                                   ; $5014: $E8 $29
    ld [bc], a                                    ; $5016: $02
    nop                                           ; $5017: $00
    ldh [$28], a                                  ; $5018: $E0 $28
    ld [bc], a                                    ; $501A: $02
    ld hl, sp-$18                                 ; $501B: $F8 $E8
    daa                                           ; $501D: $27
    ld [bc], a                                    ; $501E: $02
    add b                                         ; $501F: $80
    ld sp, hl                                     ; $5020: $F9
    db $FC                                        ; $5021: $FC
    ld c, $03                                     ; $5022: $0E $03
    pop af                                        ; $5024: $F1
    db $FC                                        ; $5025: $FC
    dec c                                         ; $5026: $0D
    inc bc                                        ; $5027: $03
    pop af                                        ; $5028: $F1
    db $F4                                        ; $5029: $F4
    inc c                                         ; $502A: $0C
    inc bc                                        ; $502B: $03
    pop af                                        ; $502C: $F1
    db $EC                                        ; $502D: $EC

jr_040_502E:
    dec bc                                        ; $502E: $0B
    inc bc                                        ; $502F: $03
    jp hl                                         ; $5030: $E9


    db $EC                                        ; $5031: $EC
    ld a, [bc]                                    ; $5032: $0A
    inc bc                                        ; $5033: $03
    pop hl                                        ; $5034: $E1
    db $EC                                        ; $5035: $EC
    add hl, bc                                    ; $5036: $09
    inc bc                                        ; $5037: $03
    reti                                          ; $5038: $D9


    db $F4                                        ; $5039: $F4
    ld [$D103], sp                                ; $503A: $08 $03 $D1
    db $F4                                        ; $503D: $F4
    rlca                                          ; $503E: $07
    inc bc                                        ; $503F: $03
    pop de                                        ; $5040: $D1
    db $EC                                        ; $5041: $EC
    ld b, $03                                     ; $5042: $06 $03
    pop de                                        ; $5044: $D1
    db $E4                                        ; $5045: $E4
    dec b                                         ; $5046: $05
    inc bc                                        ; $5047: $03
    pop de                                        ; $5048: $D1
    call c, $0304                                 ; $5049: $DC $04 $03
    pop de                                        ; $504C: $D1
    call nc, $0303                                ; $504D: $D4 $03 $03
    ret                                           ; $5050: $C9


    call nc, $0302                                ; $5051: $D4 $02 $03
    pop bc                                        ; $5054: $C1
    call c, $0301                                 ; $5055: $DC $01 $03
    pop bc                                        ; $5058: $C1
    call nc, $0300                                ; $5059: $D4 $00 $03
    add b                                         ; $505C: $80
    ld a, [$18FB]                                 ; $505D: $FA $FB $18
    inc bc                                        ; $5060: $03
    pop af                                        ; $5061: $F1
    ld a, [c]                                     ; $5062: $F2
    rla                                           ; $5063: $17
    inc bc                                        ; $5064: $03
    jp hl                                         ; $5065: $E9


    ld a, [c]                                     ; $5066: $F2
    ld d, $03                                     ; $5067: $16 $03
    jp hl                                         ; $5069: $E9


    ld [$0315], a                                 ; $506A: $EA $15 $03
    jp hl                                         ; $506D: $E9


    ld [c], a                                     ; $506E: $E2
    inc d                                         ; $506F: $14
    inc bc                                        ; $5070: $03
    pop hl                                        ; $5071: $E1
    jp c, $0313                                   ; $5072: $DA $13 $03

    reti                                          ; $5075: $D9


    jp c, $0312                                   ; $5076: $DA $12 $03

    pop de                                        ; $5079: $D1
    jp c, $0311                                   ; $507A: $DA $11 $03

    ret                                           ; $507D: $C9


    ld [c], a                                     ; $507E: $E2
    db $10                                        ; $507F: $10
    inc bc                                        ; $5080: $03
    pop bc                                        ; $5081: $C1
    ld [c], a                                     ; $5082: $E2
    rrca                                          ; $5083: $0F
    inc bc                                        ; $5084: $03
    add b                                         ; $5085: $80
    ei                                            ; $5086: $FB
    db $FC                                        ; $5087: $FC
    jr nz, jr_040_508D                            ; $5088: $20 $03

    di                                            ; $508A: $F3
    db $FC                                        ; $508B: $FC
    rra                                           ; $508C: $1F

jr_040_508D:
    inc bc                                        ; $508D: $03
    di                                            ; $508E: $F3
    db $F4                                        ; $508F: $F4
    ld e, $03                                     ; $5090: $1E $03
    db $EB                                        ; $5092: $EB
    db $F4                                        ; $5093: $F4
    dec e                                         ; $5094: $1D
    inc bc                                        ; $5095: $03
    db $E3                                        ; $5096: $E3
    db $F4                                        ; $5097: $F4
    inc e                                         ; $5098: $1C
    inc bc                                        ; $5099: $03
    db $DB                                        ; $509A: $DB
    db $F4                                        ; $509B: $F4
    dec de                                        ; $509C: $1B
    inc bc                                        ; $509D: $03
    db $D3                                        ; $509E: $D3
    db $F4                                        ; $509F: $F4
    ld a, [de]                                    ; $50A0: $1A
    inc bc                                        ; $50A1: $03
    set 6, h                                      ; $50A2: $CB $F4
    add hl, de                                    ; $50A4: $19
    inc bc                                        ; $50A5: $03
    add b                                         ; $50A6: $80
    nop                                           ; $50A7: $00
    nop                                           ; $50A8: $00
    inc h                                         ; $50A9: $24
    inc bc                                        ; $50AA: $03
    nop                                           ; $50AB: $00
    ld hl, sp+$23                                 ; $50AC: $F8 $23
    inc bc                                        ; $50AE: $03
    ld hl, sp+$00                                 ; $50AF: $F8 $00
    ld [hl+], a                                   ; $50B1: $22
    inc bc                                        ; $50B2: $03
    ld hl, sp-$08                                 ; $50B3: $F8 $F8
    ld hl, $8003                                  ; $50B5: $21 $03 $80
    nop                                           ; $50B8: $00
    nop                                           ; $50B9: $00
    jr z, jr_040_50BF                             ; $50BA: $28 $03

    nop                                           ; $50BC: $00
    ld hl, sp+$27                                 ; $50BD: $F8 $27

jr_040_50BF:
    inc bc                                        ; $50BF: $03
    ld hl, sp+$00                                 ; $50C0: $F8 $00
    ld h, $03                                     ; $50C2: $26 $03
    ld hl, sp-$08                                 ; $50C4: $F8 $F8
    dec h                                         ; $50C6: $25
    inc bc                                        ; $50C7: $03
    add b                                         ; $50C8: $80
    nop                                           ; $50C9: $00
    nop                                           ; $50CA: $00
    inc l                                         ; $50CB: $2C
    inc bc                                        ; $50CC: $03
    nop                                           ; $50CD: $00
    ld hl, sp+$2B                                 ; $50CE: $F8 $2B
    inc bc                                        ; $50D0: $03
    ld hl, sp+$00                                 ; $50D1: $F8 $00
    ld a, [hl+]                                   ; $50D3: $2A
    inc bc                                        ; $50D4: $03
    ld hl, sp-$08                                 ; $50D5: $F8 $F8
    add hl, hl                                    ; $50D7: $29
    inc bc                                        ; $50D8: $03
    add b                                         ; $50D9: $80
    nop                                           ; $50DA: $00
    nop                                           ; $50DB: $00
    ld l, $03                                     ; $50DC: $2E $03
    nop                                           ; $50DE: $00
    ld hl, sp+$2D                                 ; $50DF: $F8 $2D
    inc bc                                        ; $50E1: $03
    add b                                         ; $50E2: $80
    nop                                           ; $50E3: $00
    nop                                           ; $50E4: $00
    cpl                                           ; $50E5: $2F
    inc hl                                        ; $50E6: $23
    nop                                           ; $50E7: $00
    ld hl, sp+$2F                                 ; $50E8: $F8 $2F
    inc bc                                        ; $50EA: $03
    add b                                         ; $50EB: $80
    nop                                           ; $50EC: $00
    ldh a, [rTAC]                                 ; $50ED: $F0 $07
    ld h, c                                       ; $50EF: $61
    nop                                           ; $50F0: $00
    ld hl, sp+$06                                 ; $50F1: $F8 $06
    ld h, c                                       ; $50F3: $61
    nop                                           ; $50F4: $00
    nop                                           ; $50F5: $00
    dec b                                         ; $50F6: $05
    ld h, c                                       ; $50F7: $61
    nop                                           ; $50F8: $00
    ld [$6104], sp                                ; $50F9: $08 $04 $61
    ld [$03F0], sp                                ; $50FC: $08 $F0 $03
    ld h, c                                       ; $50FF: $61
    ld [$02F8], sp                                ; $5100: $08 $F8 $02
    ld h, c                                       ; $5103: $61
    ld [$0100], sp                                ; $5104: $08 $00 $01
    ld h, c                                       ; $5107: $61
    ld [$0008], sp                                ; $5108: $08 $08 $00
    ld h, c                                       ; $510B: $61
    ld hl, sp+$08                                 ; $510C: $F8 $08
    rlca                                          ; $510E: $07
    ld bc, $00F8                                  ; $510F: $01 $F8 $00
    ld b, $01                                     ; $5112: $06 $01
    ld hl, sp-$08                                 ; $5114: $F8 $F8
    dec b                                         ; $5116: $05
    ld bc, $F0F8                                  ; $5117: $01 $F8 $F0
    inc b                                         ; $511A: $04
    ld bc, $08F0                                  ; $511B: $01 $F0 $08
    inc bc                                        ; $511E: $03
    ld bc, $00F0                                  ; $511F: $01 $F0 $00
    ld [bc], a                                    ; $5122: $02
    ld bc, $F8F0                                  ; $5123: $01 $F0 $F8
    ld bc, $F001                                  ; $5126: $01 $01 $F0
    ldh a, [rP1]                                  ; $5129: $F0 $00
    ld bc, $0080                                  ; $512B: $01 $80 $00
    ldh a, [rIF]                                  ; $512E: $F0 $0F
    ld h, c                                       ; $5130: $61
    nop                                           ; $5131: $00
    ld hl, sp+$0E                                 ; $5132: $F8 $0E
    ld h, c                                       ; $5134: $61
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    dec c                                         ; $5137: $0D
    ld h, c                                       ; $5138: $61
    nop                                           ; $5139: $00
    ld [$610C], sp                                ; $513A: $08 $0C $61
    ld [$0BF0], sp                                ; $513D: $08 $F0 $0B
    ld h, c                                       ; $5140: $61
    ld [$0AF8], sp                                ; $5141: $08 $F8 $0A
    ld h, c                                       ; $5144: $61
    ld [$0900], sp                                ; $5145: $08 $00 $09
    ld h, c                                       ; $5148: $61
    ld [$0808], sp                                ; $5149: $08 $08 $08
    ld h, c                                       ; $514C: $61
    ld hl, sp+$08                                 ; $514D: $F8 $08
    rrca                                          ; $514F: $0F
    ld bc, $00F8                                  ; $5150: $01 $F8 $00
    ld c, $01                                     ; $5153: $0E $01
    ld hl, sp-$08                                 ; $5155: $F8 $F8
    dec c                                         ; $5157: $0D
    ld bc, $F0F8                                  ; $5158: $01 $F8 $F0
    inc c                                         ; $515B: $0C
    ld bc, $08F0                                  ; $515C: $01 $F0 $08
    dec bc                                        ; $515F: $0B
    ld bc, $00F0                                  ; $5160: $01 $F0 $00
    ld a, [bc]                                    ; $5163: $0A
    ld bc, $F8F0                                  ; $5164: $01 $F0 $F8
    add hl, bc                                    ; $5167: $09
    ld bc, $F0F0                                  ; $5168: $01 $F0 $F0
    ld [$8001], sp                                ; $516B: $08 $01 $80
    nop                                           ; $516E: $00
    ldh a, [rNR22]                                ; $516F: $F0 $17
    ld h, c                                       ; $5171: $61
    nop                                           ; $5172: $00
    ld hl, sp+$16                                 ; $5173: $F8 $16
    ld h, c                                       ; $5175: $61
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    dec d                                         ; $5178: $15
    ld h, c                                       ; $5179: $61
    nop                                           ; $517A: $00
    ld [$6114], sp                                ; $517B: $08 $14 $61
    ld [$13F0], sp                                ; $517E: $08 $F0 $13
    ld h, c                                       ; $5181: $61
    ld [$12F8], sp                                ; $5182: $08 $F8 $12
    ld h, c                                       ; $5185: $61
    ld [$1100], sp                                ; $5186: $08 $00 $11
    ld h, c                                       ; $5189: $61
    ld [$1008], sp                                ; $518A: $08 $08 $10
    ld h, c                                       ; $518D: $61
    ld hl, sp+$08                                 ; $518E: $F8 $08
    rla                                           ; $5190: $17
    ld bc, $00F8                                  ; $5191: $01 $F8 $00
    ld d, $01                                     ; $5194: $16 $01
    ld hl, sp-$08                                 ; $5196: $F8 $F8
    dec d                                         ; $5198: $15
    ld bc, $F0F8                                  ; $5199: $01 $F8 $F0
    inc d                                         ; $519C: $14
    ld bc, $08F0                                  ; $519D: $01 $F0 $08
    inc de                                        ; $51A0: $13
    ld bc, $00F0                                  ; $51A1: $01 $F0 $00
    ld [de], a                                    ; $51A4: $12
    ld bc, $F8F0                                  ; $51A5: $01 $F0 $F8
    ld de, $F001                                  ; $51A8: $11 $01 $F0
    ldh a, [rNR10]                                ; $51AB: $F0 $10
    ld bc, $0080                                  ; $51AD: $01 $80 $00
    ldh a, [$1F]                                  ; $51B0: $F0 $1F
    ld h, c                                       ; $51B2: $61
    nop                                           ; $51B3: $00
    ld hl, sp+$1E                                 ; $51B4: $F8 $1E
    ld h, c                                       ; $51B6: $61
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    dec e                                         ; $51B9: $1D
    ld h, c                                       ; $51BA: $61
    nop                                           ; $51BB: $00
    ld [$611C], sp                                ; $51BC: $08 $1C $61
    ld [$1BF0], sp                                ; $51BF: $08 $F0 $1B
    ld h, c                                       ; $51C2: $61
    ld [$1AF8], sp                                ; $51C3: $08 $F8 $1A
    ld h, c                                       ; $51C6: $61
    ld [$1900], sp                                ; $51C7: $08 $00 $19
    ld h, c                                       ; $51CA: $61
    ld [$1808], sp                                ; $51CB: $08 $08 $18
    ld h, c                                       ; $51CE: $61
    ld hl, sp+$08                                 ; $51CF: $F8 $08
    rra                                           ; $51D1: $1F
    ld bc, $00F8                                  ; $51D2: $01 $F8 $00
    ld e, $01                                     ; $51D5: $1E $01
    ld hl, sp-$08                                 ; $51D7: $F8 $F8
    dec e                                         ; $51D9: $1D
    ld bc, $F0F8                                  ; $51DA: $01 $F8 $F0
    inc e                                         ; $51DD: $1C
    ld bc, $08F0                                  ; $51DE: $01 $F0 $08
    dec de                                        ; $51E1: $1B
    ld bc, $00F0                                  ; $51E2: $01 $F0 $00
    ld a, [de]                                    ; $51E5: $1A
    ld bc, $F8F0                                  ; $51E6: $01 $F0 $F8
    add hl, de                                    ; $51E9: $19
    ld bc, $F0F0                                  ; $51EA: $01 $F0 $F0
    jr jr_040_51F0                                ; $51ED: $18 $01

    add b                                         ; $51EF: $80

jr_040_51F0:
    ld hl, sp+$00                                 ; $51F0: $F8 $00
    inc b                                         ; $51F2: $04
    inc h                                         ; $51F3: $24
    ldh a, [$F8]                                  ; $51F4: $F0 $F8
    inc bc                                        ; $51F6: $03
    inc b                                         ; $51F7: $04
    add sp, $00                                   ; $51F8: $E8 $00
    ld [bc], a                                    ; $51FA: $02
    inc h                                         ; $51FB: $24
    add sp, $08                                   ; $51FC: $E8 $08
    ld bc, $E024                                  ; $51FE: $01 $24 $E0
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    inc h                                         ; $5203: $24
    ld hl, sp-$08                                 ; $5204: $F8 $F8
    inc b                                         ; $5206: $04
    inc b                                         ; $5207: $04
    ldh a, [rP1]                                  ; $5208: $F0 $00
    inc bc                                        ; $520A: $03
    inc h                                         ; $520B: $24
    add sp, -$08                                  ; $520C: $E8 $F8
    ld [bc], a                                    ; $520E: $02
    inc b                                         ; $520F: $04
    add sp, -$10                                  ; $5210: $E8 $F0
    ld bc, $E004                                  ; $5212: $01 $04 $E0
    ld hl, sp+$00                                 ; $5215: $F8 $00
    inc b                                         ; $5217: $04
    add b                                         ; $5218: $80
    ldh a, [$F8]                                  ; $5219: $F0 $F8
    dec bc                                        ; $521B: $0B
    inc b                                         ; $521C: $04
    add sp, -$08                                  ; $521D: $E8 $F8
    ld a, [bc]                                    ; $521F: $0A
    inc b                                         ; $5220: $04
    add sp, -$10                                  ; $5221: $E8 $F0
    add hl, bc                                    ; $5223: $09
    inc b                                         ; $5224: $04
    ldh [$F8], a                                  ; $5225: $E0 $F8
    ld [$E004], sp                                ; $5227: $08 $04 $E0
    ldh a, [rTAC]                                 ; $522A: $F0 $07
    inc b                                         ; $522C: $04
    ret c                                         ; $522D: $D8

    ld hl, sp+$06                                 ; $522E: $F8 $06
    inc b                                         ; $5230: $04
    ret c                                         ; $5231: $D8

    ldh a, [rTIMA]                                ; $5232: $F0 $05
    inc b                                         ; $5234: $04
    ldh a, [rP1]                                  ; $5235: $F0 $00
    dec bc                                        ; $5237: $0B
    inc h                                         ; $5238: $24
    add sp, $00                                   ; $5239: $E8 $00
    ld a, [bc]                                    ; $523B: $0A
    inc h                                         ; $523C: $24
    add sp, $08                                   ; $523D: $E8 $08
    add hl, bc                                    ; $523F: $09
    inc h                                         ; $5240: $24
    ldh [rP1], a                                  ; $5241: $E0 $00
    ld [$E024], sp                                ; $5243: $08 $24 $E0
    ld [$2407], sp                                ; $5246: $08 $07 $24
    ret c                                         ; $5249: $D8

    nop                                           ; $524A: $00
    ld b, $24                                     ; $524B: $06 $24
    ret c                                         ; $524D: $D8

    ld [$2405], sp                                ; $524E: $08 $05 $24
    add b                                         ; $5251: $80
    ldh a, [rP1]                                  ; $5252: $F0 $00
    add hl, de                                    ; $5254: $19
    inc h                                         ; $5255: $24
    ldh a, [$08]                                  ; $5256: $F0 $08
    jr jr_040_527E                                ; $5258: $18 $24

    ldh a, [rNR10]                                ; $525A: $F0 $10
    rla                                           ; $525C: $17
    inc h                                         ; $525D: $24
    add sp, $00                                   ; $525E: $E8 $00
    ld d, $24                                     ; $5260: $16 $24
    add sp, $08                                   ; $5262: $E8 $08
    dec d                                         ; $5264: $15
    inc h                                         ; $5265: $24
    add sp, $10                                   ; $5266: $E8 $10
    inc d                                         ; $5268: $14
    inc h                                         ; $5269: $24
    ldh [rP1], a                                  ; $526A: $E0 $00
    inc de                                        ; $526C: $13
    inc h                                         ; $526D: $24
    ldh [$08], a                                  ; $526E: $E0 $08
    ld [de], a                                    ; $5270: $12
    inc h                                         ; $5271: $24
    ldh [rNR10], a                                ; $5272: $E0 $10
    ld de, $E024                                  ; $5274: $11 $24 $E0
    jr @+$12                                      ; $5277: $18 $10

    inc h                                         ; $5279: $24
    ldh a, [$F8]                                  ; $527A: $F0 $F8
    add hl, de                                    ; $527C: $19
    inc b                                         ; $527D: $04

jr_040_527E:
    ldh a, [$F0]                                  ; $527E: $F0 $F0
    jr jr_040_5286                                ; $5280: $18 $04

    ldh a, [$E8]                                  ; $5282: $F0 $E8
    rla                                           ; $5284: $17
    inc b                                         ; $5285: $04

jr_040_5286:
    add sp, -$08                                  ; $5286: $E8 $F8
    ld d, $04                                     ; $5288: $16 $04
    add sp, -$10                                  ; $528A: $E8 $F0
    dec d                                         ; $528C: $15
    inc b                                         ; $528D: $04
    add sp, -$18                                  ; $528E: $E8 $E8
    inc d                                         ; $5290: $14
    inc b                                         ; $5291: $04
    ldh [$F8], a                                  ; $5292: $E0 $F8
    inc de                                        ; $5294: $13
    inc b                                         ; $5295: $04
    ldh [$F0], a                                  ; $5296: $E0 $F0
    ld [de], a                                    ; $5298: $12
    inc b                                         ; $5299: $04
    ldh [$E8], a                                  ; $529A: $E0 $E8
    ld de, $E004                                  ; $529C: $11 $04 $E0
    ldh [rNR10], a                                ; $529F: $E0 $10
    inc b                                         ; $52A1: $04
    ret c                                         ; $52A2: $D8

    ld hl, sp+$0F                                 ; $52A3: $F8 $0F
    inc b                                         ; $52A5: $04
    ret c                                         ; $52A6: $D8

    ldh a, [$0E]                                  ; $52A7: $F0 $0E
    inc b                                         ; $52A9: $04
    ret nc                                        ; $52AA: $D0

    ld hl, sp+$0D                                 ; $52AB: $F8 $0D
    inc b                                         ; $52AD: $04
    ret nc                                        ; $52AE: $D0

    ldh a, [$0C]                                  ; $52AF: $F0 $0C
    inc b                                         ; $52B1: $04
    ret c                                         ; $52B2: $D8

    nop                                           ; $52B3: $00
    rrca                                          ; $52B4: $0F
    inc h                                         ; $52B5: $24
    ret c                                         ; $52B6: $D8

    ld [$240E], sp                                ; $52B7: $08 $0E $24
    ret nc                                        ; $52BA: $D0

    nop                                           ; $52BB: $00
    dec c                                         ; $52BC: $0D
    inc h                                         ; $52BD: $24
    ret nc                                        ; $52BE: $D0

    ld [$240C], sp                                ; $52BF: $08 $0C $24
    add b                                         ; $52C2: $80
    ldh [$E8], a                                  ; $52C3: $E0 $E8
    rra                                           ; $52C5: $1F
    inc b                                         ; $52C6: $04
    ldh [$E0], a                                  ; $52C7: $E0 $E0
    ld e, $04                                     ; $52C9: $1E $04
    ret c                                         ; $52CB: $D8

    ld hl, sp+$1D                                 ; $52CC: $F8 $1D
    inc b                                         ; $52CE: $04
    ret c                                         ; $52CF: $D8

    ldh a, [rNR32]                                ; $52D0: $F0 $1C
    inc b                                         ; $52D2: $04
    ret c                                         ; $52D3: $D8

    add sp, $1B                                   ; $52D4: $E8 $1B
    inc b                                         ; $52D6: $04
    ret nc                                        ; $52D7: $D0

    ldh a, [rNR30]                                ; $52D8: $F0 $1A
    inc b                                         ; $52DA: $04
    ldh a, [$F8]                                  ; $52DB: $F0 $F8
    daa                                           ; $52DD: $27
    inc b                                         ; $52DE: $04
    ldh a, [$E8]                                  ; $52DF: $F0 $E8
    ld h, $04                                     ; $52E1: $26 $04
    add sp, -$08                                  ; $52E3: $E8 $F8
    dec h                                         ; $52E5: $25
    inc b                                         ; $52E6: $04
    add sp, -$10                                  ; $52E7: $E8 $F0
    inc h                                         ; $52E9: $24
    inc b                                         ; $52EA: $04
    add sp, -$18                                  ; $52EB: $E8 $E8
    inc hl                                        ; $52ED: $23
    inc b                                         ; $52EE: $04
    add sp, -$20                                  ; $52EF: $E8 $E0
    ld [hl+], a                                   ; $52F1: $22
    inc b                                         ; $52F2: $04
    ldh [$F8], a                                  ; $52F3: $E0 $F8
    ld hl, $E004                                  ; $52F5: $21 $04 $E0
    ldh a, [rNR41]                                ; $52F8: $F0 $20
    inc b                                         ; $52FA: $04
    ldh a, [rP1]                                  ; $52FB: $F0 $00
    daa                                           ; $52FD: $27
    inc h                                         ; $52FE: $24
    ldh a, [rNR10]                                ; $52FF: $F0 $10
    ld h, $24                                     ; $5301: $26 $24
    add sp, $00                                   ; $5303: $E8 $00
    dec h                                         ; $5305: $25
    inc h                                         ; $5306: $24
    add sp, $08                                   ; $5307: $E8 $08
    inc h                                         ; $5309: $24
    inc h                                         ; $530A: $24
    add sp, $10                                   ; $530B: $E8 $10
    inc hl                                        ; $530D: $23
    inc h                                         ; $530E: $24
    add sp, $18                                   ; $530F: $E8 $18
    ld [hl+], a                                   ; $5311: $22
    inc h                                         ; $5312: $24
    ldh [rP1], a                                  ; $5313: $E0 $00
    ld hl, $E024                                  ; $5315: $21 $24 $E0
    ld [$2420], sp                                ; $5318: $08 $20 $24
    ldh [rNR10], a                                ; $531B: $E0 $10
    rra                                           ; $531D: $1F
    inc h                                         ; $531E: $24
    ldh [rNR23], a                                ; $531F: $E0 $18
    ld e, $24                                     ; $5321: $1E $24
    ret c                                         ; $5323: $D8

    nop                                           ; $5324: $00
    dec e                                         ; $5325: $1D
    inc h                                         ; $5326: $24
    ret c                                         ; $5327: $D8

    ld [$241C], sp                                ; $5328: $08 $1C $24
    ret c                                         ; $532B: $D8

    db $10                                        ; $532C: $10
    dec de                                        ; $532D: $1B
    inc h                                         ; $532E: $24
    ret nc                                        ; $532F: $D0

    ld [$241A], sp                                ; $5330: $08 $1A $24
    add b                                         ; $5333: $80
    ldh a, [$F8]                                  ; $5334: $F0 $F8
    scf                                           ; $5336: $37
    inc b                                         ; $5337: $04
    ldh a, [$E8]                                  ; $5338: $F0 $E8
    ld [hl], $04                                  ; $533A: $36 $04
    ldh a, [$E0]                                  ; $533C: $F0 $E0
    dec [hl]                                      ; $533E: $35
    inc b                                         ; $533F: $04
    add sp, -$08                                  ; $5340: $E8 $F8
    inc [hl]                                      ; $5342: $34
    inc b                                         ; $5343: $04
    add sp, -$10                                  ; $5344: $E8 $F0
    inc sp                                        ; $5346: $33
    inc b                                         ; $5347: $04
    add sp, -$18                                  ; $5348: $E8 $E8
    ld [hl-], a                                   ; $534A: $32
    inc b                                         ; $534B: $04
    add sp, -$20                                  ; $534C: $E8 $E0
    ld sp, $E004                                  ; $534E: $31 $04 $E0
    ld hl, sp+$30                                 ; $5351: $F8 $30
    inc b                                         ; $5353: $04
    ldh a, [rP1]                                  ; $5354: $F0 $00
    scf                                           ; $5356: $37
    inc h                                         ; $5357: $24
    ldh a, [rNR10]                                ; $5358: $F0 $10
    ld [hl], $24                                  ; $535A: $36 $24
    ldh a, [rNR23]                                ; $535C: $F0 $18
    dec [hl]                                      ; $535E: $35
    inc h                                         ; $535F: $24
    add sp, $00                                   ; $5360: $E8 $00
    inc [hl]                                      ; $5362: $34
    inc h                                         ; $5363: $24
    add sp, $08                                   ; $5364: $E8 $08
    inc sp                                        ; $5366: $33
    inc h                                         ; $5367: $24
    add sp, $10                                   ; $5368: $E8 $10
    ld [hl-], a                                   ; $536A: $32
    inc h                                         ; $536B: $24
    add sp, $18                                   ; $536C: $E8 $18
    ld sp, $E024                                  ; $536E: $31 $24 $E0
    nop                                           ; $5371: $00
    jr nc, jr_040_5398                            ; $5372: $30 $24

    ldh [$08], a                                  ; $5374: $E0 $08
    cpl                                           ; $5376: $2F
    inc h                                         ; $5377: $24
    ldh [rNR10], a                                ; $5378: $E0 $10
    ld l, $24                                     ; $537A: $2E $24
    ldh [rNR23], a                                ; $537C: $E0 $18
    dec l                                         ; $537E: $2D
    inc h                                         ; $537F: $24
    ret c                                         ; $5380: $D8

    nop                                           ; $5381: $00
    inc l                                         ; $5382: $2C
    inc h                                         ; $5383: $24
    ret c                                         ; $5384: $D8

    ld [$242B], sp                                ; $5385: $08 $2B $24
    ret c                                         ; $5388: $D8

    db $10                                        ; $5389: $10
    ld a, [hl+]                                   ; $538A: $2A
    inc h                                         ; $538B: $24
    ret c                                         ; $538C: $D8

    jr jr_040_53B8                                ; $538D: $18 $29

    inc h                                         ; $538F: $24
    ret nc                                        ; $5390: $D0

    db $10                                        ; $5391: $10
    jr z, jr_040_53B8                             ; $5392: $28 $24

    ldh [$F0], a                                  ; $5394: $E0 $F0
    cpl                                           ; $5396: $2F
    inc b                                         ; $5397: $04

jr_040_5398:
    ldh [$E8], a                                  ; $5398: $E0 $E8
    ld l, $04                                     ; $539A: $2E $04
    ldh [$E0], a                                  ; $539C: $E0 $E0
    dec l                                         ; $539E: $2D
    inc b                                         ; $539F: $04
    ret c                                         ; $53A0: $D8

    ld hl, sp+$2C                                 ; $53A1: $F8 $2C
    inc b                                         ; $53A3: $04
    ret c                                         ; $53A4: $D8

    ldh a, [$2B]                                  ; $53A5: $F0 $2B
    inc b                                         ; $53A7: $04
    ret c                                         ; $53A8: $D8

    add sp, $2A                                   ; $53A9: $E8 $2A
    inc b                                         ; $53AB: $04
    ret c                                         ; $53AC: $D8

    ldh [$29], a                                  ; $53AD: $E0 $29
    inc b                                         ; $53AF: $04
    ret nc                                        ; $53B0: $D0

    add sp, $28                                   ; $53B1: $E8 $28
    inc b                                         ; $53B3: $04
    add b                                         ; $53B4: $80
    add b                                         ; $53B5: $80
    ld hl, sp+$08                                 ; $53B6: $F8 $08

jr_040_53B8:
    ld bc, $F804                                  ; $53B8: $01 $04 $F8
    nop                                           ; $53BB: $00
    nop                                           ; $53BC: $00
    inc b                                         ; $53BD: $04
    add b                                         ; $53BE: $80
    ld hl, sp+$10                                 ; $53BF: $F8 $10
    dec bc                                        ; $53C1: $0B
    inc b                                         ; $53C2: $04
    ld hl, sp+$08                                 ; $53C3: $F8 $08
    ld a, [bc]                                    ; $53C5: $0A
    inc b                                         ; $53C6: $04
    ld hl, sp+$00                                 ; $53C7: $F8 $00
    add hl, bc                                    ; $53C9: $09
    inc b                                         ; $53CA: $04
    ldh a, [rNR10]                                ; $53CB: $F0 $10
    ld [$F004], sp                                ; $53CD: $08 $04 $F0
    ld [$0407], sp                                ; $53D0: $08 $07 $04
    ldh a, [rP1]                                  ; $53D3: $F0 $00
    ld b, $04                                     ; $53D5: $06 $04
    ldh a, [$F8]                                  ; $53D7: $F0 $F8
    dec b                                         ; $53D9: $05
    inc b                                         ; $53DA: $04
    add sp, $10                                   ; $53DB: $E8 $10
    inc b                                         ; $53DD: $04
    inc b                                         ; $53DE: $04
    add sp, $08                                   ; $53DF: $E8 $08
    inc bc                                        ; $53E1: $03
    inc b                                         ; $53E2: $04
    add sp, $00                                   ; $53E3: $E8 $00
    ld [bc], a                                    ; $53E5: $02
    inc b                                         ; $53E6: $04
    add b                                         ; $53E7: $80
    ld hl, sp+$08                                 ; $53E8: $F8 $08
    dec d                                         ; $53EA: $15
    inc b                                         ; $53EB: $04
    ld hl, sp+$00                                 ; $53EC: $F8 $00
    inc d                                         ; $53EE: $14
    inc b                                         ; $53EF: $04
    ld hl, sp-$08                                 ; $53F0: $F8 $F8
    inc de                                        ; $53F2: $13
    inc b                                         ; $53F3: $04
    ldh a, [rNR10]                                ; $53F4: $F0 $10
    ld [de], a                                    ; $53F6: $12
    inc b                                         ; $53F7: $04
    ldh a, [$08]                                  ; $53F8: $F0 $08
    ld de, $F004                                  ; $53FA: $11 $04 $F0
    nop                                           ; $53FD: $00
    db $10                                        ; $53FE: $10
    inc b                                         ; $53FF: $04
    ldh a, [$F8]                                  ; $5400: $F0 $F8
    rrca                                          ; $5402: $0F
    inc b                                         ; $5403: $04
    add sp, $10                                   ; $5404: $E8 $10
    ld c, $04                                     ; $5406: $0E $04
    add sp, $08                                   ; $5408: $E8 $08
    dec c                                         ; $540A: $0D
    inc b                                         ; $540B: $04
    add sp, $00                                   ; $540C: $E8 $00
    inc c                                         ; $540E: $0C
    inc b                                         ; $540F: $04
    add b                                         ; $5410: $80
    ld hl, sp+$10                                 ; $5411: $F8 $10
    inc hl                                        ; $5413: $23
    inc b                                         ; $5414: $04
    ld hl, sp+$08                                 ; $5415: $F8 $08
    ld [hl+], a                                   ; $5417: $22
    inc b                                         ; $5418: $04
    ld hl, sp+$00                                 ; $5419: $F8 $00
    ld hl, $F804                                  ; $541B: $21 $04 $F8
    ld hl, sp+$20                                 ; $541E: $F8 $20
    inc b                                         ; $5420: $04
    ld hl, sp-$10                                 ; $5421: $F8 $F0
    rra                                           ; $5423: $1F
    inc b                                         ; $5424: $04
    ld hl, sp-$18                                 ; $5425: $F8 $E8
    ld e, $04                                     ; $5427: $1E $04
    ldh a, [rNR10]                                ; $5429: $F0 $10
    dec e                                         ; $542B: $1D
    inc b                                         ; $542C: $04
    ldh a, [$08]                                  ; $542D: $F0 $08
    inc e                                         ; $542F: $1C
    inc b                                         ; $5430: $04
    ldh a, [$F0]                                  ; $5431: $F0 $F0
    dec de                                        ; $5433: $1B
    inc b                                         ; $5434: $04
    ldh a, [$E8]                                  ; $5435: $F0 $E8
    ld a, [de]                                    ; $5437: $1A
    inc b                                         ; $5438: $04
    add sp, $10                                   ; $5439: $E8 $10
    add hl, de                                    ; $543B: $19
    inc b                                         ; $543C: $04
    add sp, -$08                                  ; $543D: $E8 $F8
    jr jr_040_5445                                ; $543F: $18 $04

    add sp, -$10                                  ; $5441: $E8 $F0
    rla                                           ; $5443: $17
    inc b                                         ; $5444: $04

jr_040_5445:
    add sp, -$18                                  ; $5445: $E8 $E8
    ld d, $04                                     ; $5447: $16 $04
    add b                                         ; $5449: $80
    ld hl, sp+$00                                 ; $544A: $F8 $00
    cpl                                           ; $544C: $2F
    inc b                                         ; $544D: $04
    ld hl, sp-$08                                 ; $544E: $F8 $F8
    ld l, $04                                     ; $5450: $2E $04
    ld hl, sp-$10                                 ; $5452: $F8 $F0
    dec l                                         ; $5454: $2D
    inc b                                         ; $5455: $04
    ld hl, sp-$18                                 ; $5456: $F8 $E8
    inc l                                         ; $5458: $2C
    inc b                                         ; $5459: $04
    ldh a, [$E8]                                  ; $545A: $F0 $E8
    dec hl                                        ; $545C: $2B
    inc b                                         ; $545D: $04
    add sp, -$08                                  ; $545E: $E8 $F8
    ld a, [hl+]                                   ; $5460: $2A
    inc b                                         ; $5461: $04
    add sp, -$10                                  ; $5462: $E8 $F0
    add hl, hl                                    ; $5464: $29
    inc b                                         ; $5465: $04
    add sp, -$18                                  ; $5466: $E8 $E8
    jr z, jr_040_546E                             ; $5468: $28 $04

    ldh [$08], a                                  ; $546A: $E0 $08
    daa                                           ; $546C: $27
    inc b                                         ; $546D: $04

jr_040_546E:
    ldh [rP1], a                                  ; $546E: $E0 $00
    ld h, $04                                     ; $5470: $26 $04
    ldh [$F8], a                                  ; $5472: $E0 $F8
    dec h                                         ; $5474: $25
    inc b                                         ; $5475: $04
    ldh [$F0], a                                  ; $5476: $E0 $F0
    inc h                                         ; $5478: $24
    inc b                                         ; $5479: $04
    add b                                         ; $547A: $80
    add sp, $10                                   ; $547B: $E8 $10
    ld [hl], $04                                  ; $547D: $36 $04
    add sp, $08                                   ; $547F: $E8 $08
    dec [hl]                                      ; $5481: $35
    inc b                                         ; $5482: $04
    add sp, $00                                   ; $5483: $E8 $00
    inc [hl]                                      ; $5485: $34
    inc b                                         ; $5486: $04
    add sp, -$08                                  ; $5487: $E8 $F8
    inc sp                                        ; $5489: $33
    inc b                                         ; $548A: $04
    ldh [rNR10], a                                ; $548B: $E0 $10
    ld [hl-], a                                   ; $548D: $32
    inc b                                         ; $548E: $04
    ldh [$08], a                                  ; $548F: $E0 $08
    ld sp, $E004                                  ; $5491: $31 $04 $E0
    nop                                           ; $5494: $00
    jr nc, @+$06                                  ; $5495: $30 $04

    add b                                         ; $5497: $80
    add sp, $10                                   ; $5498: $E8 $10
    ld bc, $E804                                  ; $549A: $01 $04 $E8
    ld [$0400], sp                                ; $549D: $08 $00 $04
    add b                                         ; $54A0: $80
    nop                                           ; $54A1: $00
    ld hl, sp+$00                                 ; $54A2: $F8 $00
    ld b, e                                       ; $54A4: $43
    nop                                           ; $54A5: $00
    nop                                           ; $54A6: $00
    nop                                           ; $54A7: $00
    ld h, e                                       ; $54A8: $63
    ld hl, sp+$00                                 ; $54A9: $F8 $00
    nop                                           ; $54AB: $00
    inc hl                                        ; $54AC: $23
    ld hl, sp-$08                                 ; $54AD: $F8 $F8
    nop                                           ; $54AF: $00
    inc bc                                        ; $54B0: $03
    add b                                         ; $54B1: $80
    nop                                           ; $54B2: $00
    ld hl, sp+$03                                 ; $54B3: $F8 $03
    ld h, e                                       ; $54B5: $63
    nop                                           ; $54B6: $00
    nop                                           ; $54B7: $00
    ld [bc], a                                    ; $54B8: $02
    ld h, e                                       ; $54B9: $63
    nop                                           ; $54BA: $00
    ld [$6301], sp                                ; $54BB: $08 $01 $63
    ld hl, sp+$00                                 ; $54BE: $F8 $00
    inc bc                                        ; $54C0: $03
    inc bc                                        ; $54C1: $03
    ld hl, sp-$08                                 ; $54C2: $F8 $F8
    ld [bc], a                                    ; $54C4: $02
    inc bc                                        ; $54C5: $03
    ld hl, sp-$10                                 ; $54C6: $F8 $F0
    ld bc, $8003                                  ; $54C8: $01 $03 $80
    nop                                           ; $54CB: $00
    ldh a, [$09]                                  ; $54CC: $F0 $09
    ld h, e                                       ; $54CE: $63
    nop                                           ; $54CF: $00
    ld hl, sp+$08                                 ; $54D0: $F8 $08
    ld h, e                                       ; $54D2: $63
    nop                                           ; $54D3: $00
    nop                                           ; $54D4: $00
    rlca                                          ; $54D5: $07
    ld h, e                                       ; $54D6: $63
    ld [$0600], sp                                ; $54D7: $08 $00 $06
    ld h, e                                       ; $54DA: $63
    ld [$0508], sp                                ; $54DB: $08 $08 $05
    ld h, e                                       ; $54DE: $63
    db $10                                        ; $54DF: $10
    ld [$6304], sp                                ; $54E0: $08 $04 $63
    ld hl, sp+$08                                 ; $54E3: $F8 $08
    add hl, bc                                    ; $54E5: $09
    inc bc                                        ; $54E6: $03
    ld hl, sp+$00                                 ; $54E7: $F8 $00
    ld [$F803], sp                                ; $54E9: $08 $03 $F8
    ld hl, sp+$07                                 ; $54EC: $F8 $07
    inc bc                                        ; $54EE: $03
    ldh a, [$F8]                                  ; $54EF: $F0 $F8
    ld b, $03                                     ; $54F1: $06 $03
    ldh a, [$F0]                                  ; $54F3: $F0 $F0
    dec b                                         ; $54F5: $05
    inc bc                                        ; $54F6: $03
    add sp, -$10                                  ; $54F7: $E8 $F0
    inc b                                         ; $54F9: $04
    inc bc                                        ; $54FA: $03
    add b                                         ; $54FB: $80
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
    rrca                                          ; $54FE: $0F
    ld h, e                                       ; $54FF: $63
    nop                                           ; $5500: $00
    ld [$630E], sp                                ; $5501: $08 $0E $63
    ld [$0D00], sp                                ; $5504: $08 $00 $0D
    ld h, e                                       ; $5507: $63
    stop                                          ; $5508: $10 $00
    inc c                                         ; $550A: $0C
    ld h, e                                       ; $550B: $63
    jr jr_040_550E                                ; $550C: $18 $00

jr_040_550E:
    dec bc                                        ; $550E: $0B
    ld h, e                                       ; $550F: $63
    jr nz, jr_040_5512                            ; $5510: $20 $00

jr_040_5512:
    ld a, [bc]                                    ; $5512: $0A
    ld h, e                                       ; $5513: $63
    ld hl, sp+$00                                 ; $5514: $F8 $00
    rrca                                          ; $5516: $0F
    inc hl                                        ; $5517: $23
    ld hl, sp+$08                                 ; $5518: $F8 $08
    ld c, $23                                     ; $551A: $0E $23
    ldh a, [rP1]                                  ; $551C: $F0 $00
    dec c                                         ; $551E: $0D
    inc hl                                        ; $551F: $23
    add sp, $00                                   ; $5520: $E8 $00
    inc c                                         ; $5522: $0C
    inc hl                                        ; $5523: $23
    ldh [rP1], a                                  ; $5524: $E0 $00
    dec bc                                        ; $5526: $0B
    inc hl                                        ; $5527: $23
    ret c                                         ; $5528: $D8

    nop                                           ; $5529: $00
    ld a, [bc]                                    ; $552A: $0A
    inc hl                                        ; $552B: $23
    nop                                           ; $552C: $00
    ld hl, sp+$0F                                 ; $552D: $F8 $0F
    ld b, e                                       ; $552F: $43
    nop                                           ; $5530: $00
    ldh a, [$0E]                                  ; $5531: $F0 $0E
    ld b, e                                       ; $5533: $43
    ld [$0DF8], sp                                ; $5534: $08 $F8 $0D
    ld b, e                                       ; $5537: $43
    db $10                                        ; $5538: $10
    ld hl, sp+$0C                                 ; $5539: $F8 $0C
    ld b, e                                       ; $553B: $43
    jr @-$06                                      ; $553C: $18 $F8

    dec bc                                        ; $553E: $0B
    ld b, e                                       ; $553F: $43
    jr nz, @-$06                                  ; $5540: $20 $F8

    ld a, [bc]                                    ; $5542: $0A
    ld b, e                                       ; $5543: $43
    ld hl, sp-$08                                 ; $5544: $F8 $F8
    rrca                                          ; $5546: $0F
    inc bc                                        ; $5547: $03
    ld hl, sp-$10                                 ; $5548: $F8 $F0
    ld c, $03                                     ; $554A: $0E $03
    ldh a, [$F8]                                  ; $554C: $F0 $F8
    dec c                                         ; $554E: $0D
    inc bc                                        ; $554F: $03
    add sp, -$08                                  ; $5550: $E8 $F8
    inc c                                         ; $5552: $0C
    inc bc                                        ; $5553: $03
    ldh [$F8], a                                  ; $5554: $E0 $F8
    dec bc                                        ; $5556: $0B
    inc bc                                        ; $5557: $03
    ret c                                         ; $5558: $D8

    ld hl, sp+$0A                                 ; $5559: $F8 $0A
    inc bc                                        ; $555B: $03
    add b                                         ; $555C: $80
    nop                                           ; $555D: $00
    ld [$4309], sp                                ; $555E: $08 $09 $43
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    ld [$0043], sp                                ; $5563: $08 $43 $00
    ld hl, sp+$07                                 ; $5566: $F8 $07
    ld b, e                                       ; $5568: $43
    ld [$06F8], sp                                ; $5569: $08 $F8 $06
    ld b, e                                       ; $556C: $43
    ld [$05F0], sp                                ; $556D: $08 $F0 $05
    ld b, e                                       ; $5570: $43
    db $10                                        ; $5571: $10
    ldh a, [rDIV]                                 ; $5572: $F0 $04
    ld b, e                                       ; $5574: $43
    ld hl, sp-$10                                 ; $5575: $F8 $F0
    add hl, bc                                    ; $5577: $09
    inc hl                                        ; $5578: $23
    ld hl, sp-$08                                 ; $5579: $F8 $F8
    ld [$F823], sp                                ; $557B: $08 $23 $F8
    nop                                           ; $557E: $00
    rlca                                          ; $557F: $07
    inc hl                                        ; $5580: $23
    ldh a, [rP1]                                  ; $5581: $F0 $00
    ld b, $23                                     ; $5583: $06 $23
    ldh a, [$08]                                  ; $5585: $F0 $08
    dec b                                         ; $5587: $05
    inc hl                                        ; $5588: $23
    add sp, $08                                   ; $5589: $E8 $08
    inc b                                         ; $558B: $04
    inc hl                                        ; $558C: $23
    add b                                         ; $558D: $80
    nop                                           ; $558E: $00
    nop                                           ; $558F: $00
    inc bc                                        ; $5590: $03
    ld b, e                                       ; $5591: $43
    nop                                           ; $5592: $00
    ld hl, sp+$02                                 ; $5593: $F8 $02
    ld b, e                                       ; $5595: $43
    nop                                           ; $5596: $00
    ldh a, [rSB]                                  ; $5597: $F0 $01
    ld b, e                                       ; $5599: $43
    ld hl, sp-$08                                 ; $559A: $F8 $F8
    inc bc                                        ; $559C: $03
    inc hl                                        ; $559D: $23
    ld hl, sp+$00                                 ; $559E: $F8 $00
    ld [bc], a                                    ; $55A0: $02
    inc hl                                        ; $55A1: $23
    ld hl, sp+$08                                 ; $55A2: $F8 $08
    ld bc, $8023                                  ; $55A4: $01 $23 $80
    nop                                           ; $55A7: $00
    ld hl, sp+$00                                 ; $55A8: $F8 $00
    ld b, e                                       ; $55AA: $43
    nop                                           ; $55AB: $00
    nop                                           ; $55AC: $00
    nop                                           ; $55AD: $00
    ld h, e                                       ; $55AE: $63
    ld hl, sp+$00                                 ; $55AF: $F8 $00
    nop                                           ; $55B1: $00
    inc hl                                        ; $55B2: $23
    ld hl, sp-$08                                 ; $55B3: $F8 $F8
    nop                                           ; $55B5: $00
    inc bc                                        ; $55B6: $03
    add b                                         ; $55B7: $80
    stop                                          ; $55B8: $10 $00
    rrca                                          ; $55BA: $0F
    inc hl                                        ; $55BB: $23
    db $10                                        ; $55BC: $10
    ld [$230E], sp                                ; $55BD: $08 $0E $23
    ld [$0D00], sp                                ; $55C0: $08 $00 $0D
    inc hl                                        ; $55C3: $23
    ld [$0C08], sp                                ; $55C4: $08 $08 $0C
    inc hl                                        ; $55C7: $23
    ld [$0B10], sp                                ; $55C8: $08 $10 $0B
    inc hl                                        ; $55CB: $23
    nop                                           ; $55CC: $00
    nop                                           ; $55CD: $00
    ld a, [bc]                                    ; $55CE: $0A
    inc hl                                        ; $55CF: $23
    nop                                           ; $55D0: $00
    ld [$2309], sp                                ; $55D1: $08 $09 $23
    nop                                           ; $55D4: $00
    db $10                                        ; $55D5: $10
    ld [$F823], sp                                ; $55D6: $08 $23 $F8
    nop                                           ; $55D9: $00
    rlca                                          ; $55DA: $07
    inc hl                                        ; $55DB: $23
    ld hl, sp+$08                                 ; $55DC: $F8 $08
    ld b, $23                                     ; $55DE: $06 $23
    ld hl, sp+$10                                 ; $55E0: $F8 $10
    dec b                                         ; $55E2: $05
    inc hl                                        ; $55E3: $23
    ldh a, [rP1]                                  ; $55E4: $F0 $00
    inc b                                         ; $55E6: $04
    inc hl                                        ; $55E7: $23
    ldh a, [$08]                                  ; $55E8: $F0 $08
    inc bc                                        ; $55EA: $03
    inc hl                                        ; $55EB: $23
    ldh a, [rNR10]                                ; $55EC: $F0 $10
    ld [bc], a                                    ; $55EE: $02
    inc hl                                        ; $55EF: $23
    add sp, $00                                   ; $55F0: $E8 $00
    ld bc, $E823                                  ; $55F2: $01 $23 $E8
    ld [$2300], sp                                ; $55F5: $08 $00 $23
    db $10                                        ; $55F8: $10
    ld hl, sp+$0F                                 ; $55F9: $F8 $0F
    inc bc                                        ; $55FB: $03
    db $10                                        ; $55FC: $10
    ldh a, [$0E]                                  ; $55FD: $F0 $0E
    inc bc                                        ; $55FF: $03
    ld [$0DF8], sp                                ; $5600: $08 $F8 $0D
    inc bc                                        ; $5603: $03
    ld [$0CF0], sp                                ; $5604: $08 $F0 $0C
    inc bc                                        ; $5607: $03
    ld [$0BE8], sp                                ; $5608: $08 $E8 $0B
    inc bc                                        ; $560B: $03
    nop                                           ; $560C: $00
    ld hl, sp+$0A                                 ; $560D: $F8 $0A
    inc bc                                        ; $560F: $03
    nop                                           ; $5610: $00
    ldh a, [$09]                                  ; $5611: $F0 $09
    inc bc                                        ; $5613: $03
    nop                                           ; $5614: $00
    add sp, $08                                   ; $5615: $E8 $08
    inc bc                                        ; $5617: $03
    ld hl, sp-$08                                 ; $5618: $F8 $F8
    rlca                                          ; $561A: $07
    inc bc                                        ; $561B: $03
    ld hl, sp-$10                                 ; $561C: $F8 $F0
    ld b, $03                                     ; $561E: $06 $03
    ld hl, sp-$18                                 ; $5620: $F8 $E8
    dec b                                         ; $5622: $05
    inc bc                                        ; $5623: $03
    ldh a, [$F8]                                  ; $5624: $F0 $F8
    inc b                                         ; $5626: $04
    inc bc                                        ; $5627: $03
    ldh a, [$F0]                                  ; $5628: $F0 $F0
    inc bc                                        ; $562A: $03
    inc bc                                        ; $562B: $03
    ldh a, [$E8]                                  ; $562C: $F0 $E8
    ld [bc], a                                    ; $562E: $02
    inc bc                                        ; $562F: $03
    add sp, -$08                                  ; $5630: $E8 $F8
    ld bc, $E803                                  ; $5632: $01 $03 $E8
    ldh a, [rP1]                                  ; $5635: $F0 $00
    inc bc                                        ; $5637: $03
    add b                                         ; $5638: $80
    nop                                           ; $5639: $00
    nop                                           ; $563A: $00
    inc de                                        ; $563B: $13
    inc bc                                        ; $563C: $03
    nop                                           ; $563D: $00
    ld hl, sp+$12                                 ; $563E: $F8 $12
    inc bc                                        ; $5640: $03
    ld hl, sp+$00                                 ; $5641: $F8 $00
    ld de, $F803                                  ; $5643: $11 $03 $F8
    ld hl, sp+$10                                 ; $5646: $F8 $10
    inc bc                                        ; $5648: $03
    add b                                         ; $5649: $80
    nop                                           ; $564A: $00
    nop                                           ; $564B: $00
    rla                                           ; $564C: $17
    inc bc                                        ; $564D: $03
    nop                                           ; $564E: $00
    ld hl, sp+$16                                 ; $564F: $F8 $16
    inc bc                                        ; $5651: $03
    ld hl, sp+$00                                 ; $5652: $F8 $00
    dec d                                         ; $5654: $15
    inc bc                                        ; $5655: $03
    ld hl, sp-$08                                 ; $5656: $F8 $F8
    inc d                                         ; $5658: $14
    inc bc                                        ; $5659: $03
    add b                                         ; $565A: $80
    ld hl, sp-$08                                 ; $565B: $F8 $F8
    inc de                                        ; $565D: $13
    ld h, e                                       ; $565E: $63
    ld hl, sp+$00                                 ; $565F: $F8 $00
    ld [de], a                                    ; $5661: $12
    ld h, e                                       ; $5662: $63
    nop                                           ; $5663: $00
    ld hl, sp+$11                                 ; $5664: $F8 $11
    ld h, e                                       ; $5666: $63
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    db $10                                        ; $5669: $10
    ld h, e                                       ; $566A: $63
    add b                                         ; $566B: $80
    ld hl, sp-$08                                 ; $566C: $F8 $F8
    rla                                           ; $566E: $17
    ld h, e                                       ; $566F: $63
    ld hl, sp+$00                                 ; $5670: $F8 $00
    ld d, $63                                     ; $5672: $16 $63
    nop                                           ; $5674: $00
    ld hl, sp+$15                                 ; $5675: $F8 $15
    ld h, e                                       ; $5677: $63
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    inc d                                         ; $567A: $14
    ld h, e                                       ; $567B: $63
    add b                                         ; $567C: $80
    db $FC                                        ; $567D: $FC
    db $FC                                        ; $567E: $FC
    jr jr_040_5684                                ; $567F: $18 $03

    add b                                         ; $5681: $80
    db $FC                                        ; $5682: $FC
    db $FC                                        ; $5683: $FC

jr_040_5684:
    jr jr_040_56A9                                ; $5684: $18 $23

    add b                                         ; $5686: $80
    db $FC                                        ; $5687: $FC
    db $FC                                        ; $5688: $FC
    jr jr_040_56EE                                ; $5689: $18 $63

    add b                                         ; $568B: $80
    db $FC                                        ; $568C: $FC
    db $FC                                        ; $568D: $FC
    jr @+$45                                      ; $568E: $18 $43

    add b                                         ; $5690: $80
    nop                                           ; $5691: $00
    ld hl, sp+$19                                 ; $5692: $F8 $19
    ld b, e                                       ; $5694: $43
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    add hl, de                                    ; $5697: $19
    ld h, e                                       ; $5698: $63
    ld hl, sp+$00                                 ; $5699: $F8 $00
    add hl, de                                    ; $569B: $19
    inc hl                                        ; $569C: $23
    ld hl, sp-$08                                 ; $569D: $F8 $F8
    add hl, de                                    ; $569F: $19
    inc bc                                        ; $56A0: $03
    add b                                         ; $56A1: $80
    nop                                           ; $56A2: $00
    ld hl, sp+$1B                                 ; $56A3: $F8 $1B
    ld h, e                                       ; $56A5: $63
    nop                                           ; $56A6: $00
    nop                                           ; $56A7: $00
    ld a, [de]                                    ; $56A8: $1A

jr_040_56A9:
    ld h, e                                       ; $56A9: $63
    ld hl, sp+$00                                 ; $56AA: $F8 $00
    dec de                                        ; $56AC: $1B
    inc bc                                        ; $56AD: $03
    ld hl, sp-$08                                 ; $56AE: $F8 $F8
    ld a, [de]                                    ; $56B0: $1A
    inc bc                                        ; $56B1: $03
    add b                                         ; $56B2: $80
    nop                                           ; $56B3: $00
    ld hl, sp+$1D                                 ; $56B4: $F8 $1D
    ld h, e                                       ; $56B6: $63
    nop                                           ; $56B7: $00
    nop                                           ; $56B8: $00
    inc e                                         ; $56B9: $1C
    ld h, e                                       ; $56BA: $63
    ld hl, sp+$00                                 ; $56BB: $F8 $00
    dec e                                         ; $56BD: $1D
    inc bc                                        ; $56BE: $03
    ld hl, sp-$08                                 ; $56BF: $F8 $F8
    inc e                                         ; $56C1: $1C
    inc bc                                        ; $56C2: $03
    add b                                         ; $56C3: $80
    nop                                           ; $56C4: $00
    ld hl, sp+$1F                                 ; $56C5: $F8 $1F
    ld h, e                                       ; $56C7: $63
    nop                                           ; $56C8: $00
    nop                                           ; $56C9: $00
    ld e, $63                                     ; $56CA: $1E $63
    ld hl, sp+$00                                 ; $56CC: $F8 $00
    rra                                           ; $56CE: $1F
    inc bc                                        ; $56CF: $03
    ld hl, sp-$08                                 ; $56D0: $F8 $F8
    ld e, $03                                     ; $56D2: $1E $03
    add b                                         ; $56D4: $80
    db $FC                                        ; $56D5: $FC
    db $FC                                        ; $56D6: $FC
    jr nz, jr_040_56DC                            ; $56D7: $20 $03

    add b                                         ; $56D9: $80
    db $FC                                        ; $56DA: $FC
    db $FC                                        ; $56DB: $FC

jr_040_56DC:
    ld hl, $8003                                  ; $56DC: $21 $03 $80
    db $FC                                        ; $56DF: $FC
    db $FC                                        ; $56E0: $FC
    ld [hl+], a                                   ; $56E1: $22
    inc bc                                        ; $56E2: $03
    add b                                         ; $56E3: $80
    db $FC                                        ; $56E4: $FC
    db $FC                                        ; $56E5: $FC
    inc hl                                        ; $56E6: $23
    inc bc                                        ; $56E7: $03
    add b                                         ; $56E8: $80
    nop                                           ; $56E9: $00
    ld hl, sp+$00                                 ; $56EA: $F8 $00
    ld b, c                                       ; $56EC: $41
    nop                                           ; $56ED: $00

jr_040_56EE:
    nop                                           ; $56EE: $00
    nop                                           ; $56EF: $00
    ld h, c                                       ; $56F0: $61
    ld hl, sp+$00                                 ; $56F1: $F8 $00
    nop                                           ; $56F3: $00
    ld hl, $F8F8                                  ; $56F4: $21 $F8 $F8
    nop                                           ; $56F7: $00
    ld bc, $0080                                  ; $56F8: $01 $80 $00
    nop                                           ; $56FB: $00
    ld b, $01                                     ; $56FC: $06 $01
    nop                                           ; $56FE: $00
    ld hl, sp+$05                                 ; $56FF: $F8 $05
    ld bc, $00F8                                  ; $5701: $01 $F8 $00
    inc b                                         ; $5704: $04
    ld bc, $F8F8                                  ; $5705: $01 $F8 $F8
    inc bc                                        ; $5708: $03
    ld bc, $00F0                                  ; $5709: $01 $F0 $00
    ld [bc], a                                    ; $570C: $02
    ld bc, $F8F0                                  ; $570D: $01 $F0 $F8
    ld bc, $8001                                  ; $5710: $01 $01 $80
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    dec c                                         ; $5715: $0D
    ld bc, $F800                                  ; $5716: $01 $00 $F8
    inc c                                         ; $5719: $0C
    ld bc, $08F8                                  ; $571A: $01 $F8 $08
    dec bc                                        ; $571D: $0B
    ld bc, $00F8                                  ; $571E: $01 $F8 $00
    ld a, [bc]                                    ; $5721: $0A
    ld bc, $F8F8                                  ; $5722: $01 $F8 $F8
    add hl, bc                                    ; $5725: $09
    ld bc, $00F0                                  ; $5726: $01 $F0 $00
    ld [$F001], sp                                ; $5729: $08 $01 $F0
    ld hl, sp+$07                                 ; $572C: $F8 $07
    ld bc, $0080                                  ; $572E: $01 $80 $00
    nop                                           ; $5731: $00
    inc d                                         ; $5732: $14
    ld bc, $F800                                  ; $5733: $01 $00 $F8
    inc de                                        ; $5736: $13
    ld bc, $08F8                                  ; $5737: $01 $F8 $08
    ld [de], a                                    ; $573A: $12
    ld bc, $00F8                                  ; $573B: $01 $F8 $00
    ld de, $F801                                  ; $573E: $11 $01 $F8
    ld hl, sp+$10                                 ; $5741: $F8 $10
    ld bc, $08F0                                  ; $5743: $01 $F0 $08
    rrca                                          ; $5746: $0F
    ld bc, $00F0                                  ; $5747: $01 $F0 $00
    ld c, $01                                     ; $574A: $0E $01
    add b                                         ; $574C: $80
    nop                                           ; $574D: $00
    nop                                           ; $574E: $00
    add hl, de                                    ; $574F: $19
    ld bc, $F800                                  ; $5750: $01 $00 $F8
    jr @+$03                                      ; $5753: $18 $01

    ld hl, sp+$08                                 ; $5755: $F8 $08
    rla                                           ; $5757: $17
    ld bc, $00F8                                  ; $5758: $01 $F8 $00
    ld d, $01                                     ; $575B: $16 $01
    ld hl, sp-$08                                 ; $575D: $F8 $F8
    dec d                                         ; $575F: $15
    ld bc, $FC80                                  ; $5760: $01 $80 $FC
    db $FC                                        ; $5763: $FC
    ld a, [de]                                    ; $5764: $1A
    ld bc, $8080                                  ; $5765: $01 $80 $80
    nop                                           ; $5768: $00
    add sp, $05                                   ; $5769: $E8 $05
    ld b, $80                                     ; $576B: $06 $80
    nop                                           ; $576D: $00
    ldh a, [rTMA]                                 ; $576E: $F0 $06
    ld b, $00                                     ; $5770: $06 $00
    add sp, $05                                   ; $5772: $E8 $05
    ld b, $80                                     ; $5774: $06 $80
    ld [$07F8], sp                                ; $5776: $08 $F8 $07
    ld b, $00                                     ; $5779: $06 $00
    ldh a, [rTMA]                                 ; $577B: $F0 $06
    ld b, $00                                     ; $577D: $06 $00
    add sp, $05                                   ; $577F: $E8 $05
    ld b, $80                                     ; $5781: $06 $80
    ld [$0300], sp                                ; $5783: $08 $00 $03
    ld h, [hl]                                    ; $5786: $66
    ld [$07F8], sp                                ; $5787: $08 $F8 $07
    ld b, $00                                     ; $578A: $06 $00
    ldh a, [rTMA]                                 ; $578C: $F0 $06
    ld b, $00                                     ; $578E: $06 $00
    add sp, $05                                   ; $5790: $E8 $05
    ld b, $80                                     ; $5792: $06 $80
    ld [$0300], sp                                ; $5794: $08 $00 $03
    ld h, [hl]                                    ; $5797: $66
    ld [$0208], sp                                ; $5798: $08 $08 $02
    ld h, [hl]                                    ; $579B: $66
    ld [$07F8], sp                                ; $579C: $08 $F8 $07
    ld b, $00                                     ; $579F: $06 $00
    ldh a, [rTMA]                                 ; $57A1: $F0 $06
    ld b, $00                                     ; $57A3: $06 $00
    add sp, $05                                   ; $57A5: $E8 $05
    ld b, $80                                     ; $57A7: $06 $80
    ld [$0300], sp                                ; $57A9: $08 $00 $03
    ld h, [hl]                                    ; $57AC: $66
    ld [$0208], sp                                ; $57AD: $08 $08 $02
    ld h, [hl]                                    ; $57B0: $66
    ld [$0110], sp                                ; $57B1: $08 $10 $01
    ld h, [hl]                                    ; $57B4: $66
    ld [$07F8], sp                                ; $57B5: $08 $F8 $07
    ld b, $00                                     ; $57B8: $06 $00
    ldh a, [rTMA]                                 ; $57BA: $F0 $06
    ld b, $00                                     ; $57BC: $06 $00
    add sp, $05                                   ; $57BE: $E8 $05
    ld b, $80                                     ; $57C0: $06 $80
    ld [$0300], sp                                ; $57C2: $08 $00 $03
    ld h, [hl]                                    ; $57C5: $66
    ld [$0208], sp                                ; $57C6: $08 $08 $02
    ld h, [hl]                                    ; $57C9: $66
    ld [$0110], sp                                ; $57CA: $08 $10 $01
    ld h, [hl]                                    ; $57CD: $66
    ld [$0018], sp                                ; $57CE: $08 $18 $00
    ld h, [hl]                                    ; $57D1: $66
    ld [$07F8], sp                                ; $57D2: $08 $F8 $07
    ld b, $00                                     ; $57D5: $06 $00
    ldh a, [rTMA]                                 ; $57D7: $F0 $06
    ld b, $00                                     ; $57D9: $06 $00
    add sp, $05                                   ; $57DB: $E8 $05
    ld b, $80                                     ; $57DD: $06 $80
    nop                                           ; $57DF: $00
    jr jr_040_57E6                                ; $57E0: $18 $04

    ld h, [hl]                                    ; $57E2: $66
    ld [$0300], sp                                ; $57E3: $08 $00 $03

jr_040_57E6:
    ld h, [hl]                                    ; $57E6: $66
    ld [$0208], sp                                ; $57E7: $08 $08 $02
    ld h, [hl]                                    ; $57EA: $66
    ld [$0110], sp                                ; $57EB: $08 $10 $01
    ld h, [hl]                                    ; $57EE: $66
    ld [$0018], sp                                ; $57EF: $08 $18 $00
    ld h, [hl]                                    ; $57F2: $66
    ld [$07F8], sp                                ; $57F3: $08 $F8 $07
    ld b, $00                                     ; $57F6: $06 $00
    ldh a, [rTMA]                                 ; $57F8: $F0 $06
    ld b, $00                                     ; $57FA: $06 $00
    add sp, $05                                   ; $57FC: $E8 $05
    ld b, $80                                     ; $57FE: $06 $80
    ld hl, sp+$10                                 ; $5800: $F8 $10
    dec b                                         ; $5802: $05
    ld h, [hl]                                    ; $5803: $66
    nop                                           ; $5804: $00
    jr jr_040_580B                                ; $5805: $18 $04

    ld h, [hl]                                    ; $5807: $66
    ld [$0300], sp                                ; $5808: $08 $00 $03

jr_040_580B:
    ld h, [hl]                                    ; $580B: $66
    ld [$0208], sp                                ; $580C: $08 $08 $02
    ld h, [hl]                                    ; $580F: $66
    ld [$0110], sp                                ; $5810: $08 $10 $01
    ld h, [hl]                                    ; $5813: $66
    ld [$0018], sp                                ; $5814: $08 $18 $00
    ld h, [hl]                                    ; $5817: $66
    ld [$07F8], sp                                ; $5818: $08 $F8 $07
    ld b, $00                                     ; $581B: $06 $00
    ldh a, [rTMA]                                 ; $581D: $F0 $06
    ld b, $00                                     ; $581F: $06 $00
    add sp, $05                                   ; $5821: $E8 $05
    ld b, $80                                     ; $5823: $06 $80
    ld hl, sp+$10                                 ; $5825: $F8 $10
    dec b                                         ; $5827: $05
    ld h, [hl]                                    ; $5828: $66
    nop                                           ; $5829: $00
    jr jr_040_5830                                ; $582A: $18 $04

    ld h, [hl]                                    ; $582C: $66
    ld [$0300], sp                                ; $582D: $08 $00 $03

jr_040_5830:
    ld h, [hl]                                    ; $5830: $66
    ld [$0208], sp                                ; $5831: $08 $08 $02
    ld h, [hl]                                    ; $5834: $66
    ld [$0110], sp                                ; $5835: $08 $10 $01
    ld h, [hl]                                    ; $5838: $66
    ld [$0018], sp                                ; $5839: $08 $18 $00
    ld h, [hl]                                    ; $583C: $66
    ld [$07F8], sp                                ; $583D: $08 $F8 $07
    ld b, $00                                     ; $5840: $06 $00
    ldh a, [rTMA]                                 ; $5842: $F0 $06
    ld b, $00                                     ; $5844: $06 $00
    add sp, $05                                   ; $5846: $E8 $05
    ld b, $F0                                     ; $5848: $06 $F0
    ldh a, [rSC]                                  ; $584A: $F0 $02
    ld b, $80                                     ; $584C: $06 $80
    ldh a, [$E8]                                  ; $584E: $F0 $E8
    ld bc, $F806                                  ; $5850: $01 $06 $F8
    db $10                                        ; $5853: $10
    dec b                                         ; $5854: $05
    ld h, [hl]                                    ; $5855: $66
    nop                                           ; $5856: $00
    jr jr_040_585D                                ; $5857: $18 $04

    ld h, [hl]                                    ; $5859: $66
    ld [$0300], sp                                ; $585A: $08 $00 $03

jr_040_585D:
    ld h, [hl]                                    ; $585D: $66
    ld [$0208], sp                                ; $585E: $08 $08 $02
    ld h, [hl]                                    ; $5861: $66
    ld [$0110], sp                                ; $5862: $08 $10 $01
    ld h, [hl]                                    ; $5865: $66
    ld [$0018], sp                                ; $5866: $08 $18 $00
    ld h, [hl]                                    ; $5869: $66
    ld [$07F8], sp                                ; $586A: $08 $F8 $07
    ld b, $00                                     ; $586D: $06 $00
    ldh a, [rTMA]                                 ; $586F: $F0 $06
    ld b, $00                                     ; $5871: $06 $00
    add sp, $05                                   ; $5873: $E8 $05
    ld b, $F0                                     ; $5875: $06 $F0
    ldh a, [rSC]                                  ; $5877: $F0 $02
    ld b, $80                                     ; $5879: $06 $80
    ldh a, [$E8]                                  ; $587B: $F0 $E8
    ld bc, $F006                                  ; $587D: $01 $06 $F0
    ldh [rP1], a                                  ; $5880: $E0 $00
    ld b, $F8                                     ; $5882: $06 $F8
    db $10                                        ; $5884: $10
    dec b                                         ; $5885: $05
    ld h, [hl]                                    ; $5886: $66
    nop                                           ; $5887: $00
    jr jr_040_588E                                ; $5888: $18 $04

    ld h, [hl]                                    ; $588A: $66
    ld [$0300], sp                                ; $588B: $08 $00 $03

jr_040_588E:
    ld h, [hl]                                    ; $588E: $66
    ld [$0208], sp                                ; $588F: $08 $08 $02
    ld h, [hl]                                    ; $5892: $66
    ld [$0110], sp                                ; $5893: $08 $10 $01
    ld h, [hl]                                    ; $5896: $66
    ld [$0018], sp                                ; $5897: $08 $18 $00
    ld h, [hl]                                    ; $589A: $66
    ld [$07F8], sp                                ; $589B: $08 $F8 $07
    ld b, $00                                     ; $589E: $06 $00
    ldh a, [rTMA]                                 ; $58A0: $F0 $06
    ld b, $00                                     ; $58A2: $06 $00
    add sp, $05                                   ; $58A4: $E8 $05
    ld b, $F0                                     ; $58A6: $06 $F0
    ldh a, [rSC]                                  ; $58A8: $F0 $02
    ld b, $80                                     ; $58AA: $06 $80
    ld hl, sp-$20                                 ; $58AC: $F8 $E0
    inc b                                         ; $58AE: $04
    ld b, $F0                                     ; $58AF: $06 $F0
    add sp, $01                                   ; $58B1: $E8 $01
    ld b, $F0                                     ; $58B3: $06 $F0
    ldh [rP1], a                                  ; $58B5: $E0 $00
    ld b, $F8                                     ; $58B7: $06 $F8
    db $10                                        ; $58B9: $10
    dec b                                         ; $58BA: $05
    ld h, [hl]                                    ; $58BB: $66
    nop                                           ; $58BC: $00
    jr jr_040_58C3                                ; $58BD: $18 $04

    ld h, [hl]                                    ; $58BF: $66
    ld [$0300], sp                                ; $58C0: $08 $00 $03

jr_040_58C3:
    ld h, [hl]                                    ; $58C3: $66
    ld [$0208], sp                                ; $58C4: $08 $08 $02
    ld h, [hl]                                    ; $58C7: $66
    ld [$0110], sp                                ; $58C8: $08 $10 $01
    ld h, [hl]                                    ; $58CB: $66
    ld [$0018], sp                                ; $58CC: $08 $18 $00
    ld h, [hl]                                    ; $58CF: $66
    ld [$07F8], sp                                ; $58D0: $08 $F8 $07
    ld b, $00                                     ; $58D3: $06 $00
    ldh a, [rTMA]                                 ; $58D5: $F0 $06
    ld b, $00                                     ; $58D7: $06 $00
    add sp, $05                                   ; $58D9: $E8 $05
    ld b, $F0                                     ; $58DB: $06 $F0
    ldh a, [rSC]                                  ; $58DD: $F0 $02
    ld b, $80                                     ; $58DF: $06 $80
    push af                                       ; $58E1: $F5
    nop                                           ; $58E2: $00
    dec bc                                        ; $58E3: $0B
    ld h, [hl]                                    ; $58E4: $66
    db $FD                                        ; $58E5: $FD
    ld [$660A], sp                                ; $58E6: $08 $0A $66
    dec b                                         ; $58E9: $05
    nop                                           ; $58EA: $00
    add hl, bc                                    ; $58EB: $09
    ld h, [hl]                                    ; $58EC: $66
    dec b                                         ; $58ED: $05
    ld [$6608], sp                                ; $58EE: $08 $08 $66
    inc b                                         ; $58F1: $04
    ld hl, sp+$0B                                 ; $58F2: $F8 $0B
    ld b, $FC                                     ; $58F4: $06 $FC
    ldh a, [$0A]                                  ; $58F6: $F0 $0A
    ld b, $F4                                     ; $58F8: $06 $F4
    ld hl, sp+$09                                 ; $58FA: $F8 $09
    ld b, $F4                                     ; $58FC: $06 $F4
    ldh a, [$08]                                  ; $58FE: $F0 $08
    ld b, $80                                     ; $5900: $06 $80
    ld hl, sp+$00                                 ; $5902: $F8 $00
    ld c, $66                                     ; $5904: $0E $66
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    dec c                                         ; $5908: $0D
    ld h, [hl]                                    ; $5909: $66
    nop                                           ; $590A: $00
    ld [$660C], sp                                ; $590B: $08 $0C $66
    ld [bc], a                                    ; $590E: $02
    ld hl, sp+$0E                                 ; $590F: $F8 $0E
    ld b, $FA                                     ; $5911: $06 $FA
    ld hl, sp+$0D                                 ; $5913: $F8 $0D
    ld b, $FA                                     ; $5915: $06 $FA
    ldh a, [$0C]                                  ; $5917: $F0 $0C
    ld b, $80                                     ; $5919: $06 $80
    or $F9                                        ; $591B: $F6 $F9
    ld de, $0345                                  ; $591D: $11 $45 $03
    cp $11                                        ; $5920: $FE $11
    dec h                                         ; $5922: $25
    ei                                            ; $5923: $FB
    ld b, $12                                     ; $5924: $06 $12
    ld h, l                                       ; $5926: $65
    rst $38                                       ; $5927: $FF
    db $F4                                        ; $5928: $F4
    ld de, $FA25                                  ; $5929: $11 $25 $FA
    xor $12                                       ; $592C: $EE $12
    dec b                                         ; $592E: $05
    inc bc                                        ; $592F: $03
    ld b, $11                                     ; $5930: $06 $11
    dec b                                         ; $5932: $05
    rst $38                                       ; $5933: $FF
    add hl, bc                                    ; $5934: $09
    ld [de], a                                    ; $5935: $12
    ld h, l                                       ; $5936: $65
    or $F2                                        ; $5937: $F6 $F2
    ld de, $F865                                  ; $5939: $11 $65 $F8
    nop                                           ; $593C: $00
    ld c, $66                                     ; $593D: $0E $66
    nop                                           ; $593F: $00
    nop                                           ; $5940: $00
    dec c                                         ; $5941: $0D
    ld h, [hl]                                    ; $5942: $66
    nop                                           ; $5943: $00
    ld [$660C], sp                                ; $5944: $08 $0C $66
    ld [bc], a                                    ; $5947: $02
    ld hl, sp+$0E                                 ; $5948: $F8 $0E
    ld b, $FA                                     ; $594A: $06 $FA
    ld hl, sp+$0D                                 ; $594C: $F8 $0D
    ld b, $FA                                     ; $594E: $06 $FA
    ldh a, [$0C]                                  ; $5950: $F0 $0C
    ld b, $80                                     ; $5952: $06 $80
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    ld bc, $0000                                  ; $5956: $01 $00 $00
    ld hl, sp+$00                                 ; $5959: $F8 $00
    nop                                           ; $595B: $00
    add b                                         ; $595C: $80
    nop                                           ; $595D: $00
    nop                                           ; $595E: $00
    inc b                                         ; $595F: $04
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    ld hl, sp+$03                                 ; $5962: $F8 $03
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    ldh a, [rSC]                                  ; $5966: $F0 $02
    nop                                           ; $5968: $00
    add b                                         ; $5969: $80
    nop                                           ; $596A: $00
    nop                                           ; $596B: $00
    ld a, [bc]                                    ; $596C: $0A
    nop                                           ; $596D: $00
    nop                                           ; $596E: $00
    ld hl, sp+$09                                 ; $596F: $F8 $09
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    ldh a, [$08]                                  ; $5973: $F0 $08
    nop                                           ; $5975: $00
    ld hl, sp+$10                                 ; $5976: $F8 $10
    rlca                                          ; $5978: $07
    nop                                           ; $5979: $00
    ld hl, sp+$08                                 ; $597A: $F8 $08
    ld b, $00                                     ; $597C: $06 $00
    ld hl, sp+$00                                 ; $597E: $F8 $00
    dec b                                         ; $5980: $05
    nop                                           ; $5981: $00
    add b                                         ; $5982: $80
    ld [$12F0], sp                                ; $5983: $08 $F0 $12
    nop                                           ; $5986: $00
    ld [$11E8], sp                                ; $5987: $08 $E8 $11
    nop                                           ; $598A: $00
    nop                                           ; $598B: $00
    nop                                           ; $598C: $00
    stop                                          ; $598D: $10 $00
    nop                                           ; $598F: $00
    ld hl, sp+$0F                                 ; $5990: $F8 $0F
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    ldh a, [$0E]                                  ; $5994: $F0 $0E
    nop                                           ; $5996: $00
    ld hl, sp+$10                                 ; $5997: $F8 $10
    dec c                                         ; $5999: $0D
    nop                                           ; $599A: $00
    ld hl, sp+$08                                 ; $599B: $F8 $08
    inc c                                         ; $599D: $0C
    nop                                           ; $599E: $00
    ld hl, sp+$00                                 ; $599F: $F8 $00
    dec bc                                        ; $59A1: $0B
    nop                                           ; $59A2: $00
    add b                                         ; $59A3: $80
    ld hl, sp+$00                                 ; $59A4: $F8 $00
    rra                                           ; $59A6: $1F
    nop                                           ; $59A7: $00
    ld [$1EF0], sp                                ; $59A8: $08 $F0 $1E
    nop                                           ; $59AB: $00
    ld [$1DE8], sp                                ; $59AC: $08 $E8 $1D
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    ld [$001C], sp                                ; $59B1: $08 $1C $00
    nop                                           ; $59B4: $00
    nop                                           ; $59B5: $00
    dec de                                        ; $59B6: $1B
    nop                                           ; $59B7: $00
    nop                                           ; $59B8: $00
    ld hl, sp+$1A                                 ; $59B9: $F8 $1A
    nop                                           ; $59BB: $00
    nop                                           ; $59BC: $00
    ldh a, [rNR24]                                ; $59BD: $F0 $19
    nop                                           ; $59BF: $00
    nop                                           ; $59C0: $00
    add sp, $18                                   ; $59C1: $E8 $18
    nop                                           ; $59C3: $00
    ld hl, sp+$10                                 ; $59C4: $F8 $10
    rla                                           ; $59C6: $17
    nop                                           ; $59C7: $00
    ld hl, sp+$08                                 ; $59C8: $F8 $08
    ld d, $00                                     ; $59CA: $16 $00
    ld hl, sp+$00                                 ; $59CC: $F8 $00
    dec d                                         ; $59CE: $15
    nop                                           ; $59CF: $00
    ldh a, [rNR23]                                ; $59D0: $F0 $18
    inc d                                         ; $59D2: $14
    nop                                           ; $59D3: $00
    ld hl, sp-$08                                 ; $59D4: $F8 $F8
    inc de                                        ; $59D6: $13
    nop                                           ; $59D7: $00
    add b                                         ; $59D8: $80
    nop                                           ; $59D9: $00
    nop                                           ; $59DA: $00
    inc bc                                        ; $59DB: $03
    ld b, $00                                     ; $59DC: $06 $00
    ld hl, sp+$02                                 ; $59DE: $F8 $02
    ld b, $F8                                     ; $59E0: $06 $F8
    nop                                           ; $59E2: $00
    ld bc, $F806                                  ; $59E3: $01 $06 $F8
    ld hl, sp+$00                                 ; $59E6: $F8 $00
    ld b, $80                                     ; $59E8: $06 $80
    nop                                           ; $59EA: $00
    nop                                           ; $59EB: $00
    ld sp, $0006                                  ; $59EC: $31 $06 $00
    ld hl, sp+$30                                 ; $59EF: $F8 $30
    ld b, $F8                                     ; $59F1: $06 $F8
    nop                                           ; $59F3: $00
    ld hl, $F806                                  ; $59F4: $21 $06 $F8
    ld hl, sp+$20                                 ; $59F7: $F8 $20
    ld b, $F0                                     ; $59F9: $06 $F0
    nop                                           ; $59FB: $00
    ld de, $F006                                  ; $59FC: $11 $06 $F0
    ld hl, sp+$10                                 ; $59FF: $F8 $10
    ld b, $80                                     ; $5A01: $06 $80
    nop                                           ; $5A03: $00
    nop                                           ; $5A04: $00
    add hl, sp                                    ; $5A05: $39
    ld b, $00                                     ; $5A06: $06 $00
    ld hl, sp+$38                                 ; $5A08: $F8 $38
    ld b, $F8                                     ; $5A0A: $06 $F8
    nop                                           ; $5A0C: $00
    add hl, hl                                    ; $5A0D: $29
    ld b, $F8                                     ; $5A0E: $06 $F8
    ld hl, sp+$28                                 ; $5A10: $F8 $28
    ld b, $F0                                     ; $5A12: $06 $F0
    nop                                           ; $5A14: $00
    add hl, de                                    ; $5A15: $19
    ld b, $F0                                     ; $5A16: $06 $F0
    ld hl, sp+$18                                 ; $5A18: $F8 $18
    ld b, $80                                     ; $5A1A: $06 $80
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    rlca                                          ; $5A1E: $07
    ld b, $00                                     ; $5A1F: $06 $00
    ld hl, sp+$06                                 ; $5A21: $F8 $06
    ld b, $F8                                     ; $5A23: $06 $F8
    nop                                           ; $5A25: $00
    dec b                                         ; $5A26: $05
    ld b, $F8                                     ; $5A27: $06 $F8
    ld hl, sp+$04                                 ; $5A29: $F8 $04
    ld b, $80                                     ; $5A2B: $06 $80
    nop                                           ; $5A2D: $00
    nop                                           ; $5A2E: $00
    inc sp                                        ; $5A2F: $33
    ld b, $00                                     ; $5A30: $06 $00
    ld hl, sp+$32                                 ; $5A32: $F8 $32
    ld b, $F8                                     ; $5A34: $06 $F8
    nop                                           ; $5A36: $00
    inc hl                                        ; $5A37: $23
    ld b, $F8                                     ; $5A38: $06 $F8
    ld hl, sp+$22                                 ; $5A3A: $F8 $22
    ld b, $F0                                     ; $5A3C: $06 $F0
    nop                                           ; $5A3E: $00
    inc de                                        ; $5A3F: $13
    ld b, $F0                                     ; $5A40: $06 $F0
    ld hl, sp+$12                                 ; $5A42: $F8 $12
    ld b, $80                                     ; $5A44: $06 $80
    nop                                           ; $5A46: $00
    nop                                           ; $5A47: $00
    dec sp                                        ; $5A48: $3B
    ld b, $00                                     ; $5A49: $06 $00
    ld hl, sp+$3A                                 ; $5A4B: $F8 $3A
    ld b, $F8                                     ; $5A4D: $06 $F8
    nop                                           ; $5A4F: $00
    dec hl                                        ; $5A50: $2B
    ld b, $F8                                     ; $5A51: $06 $F8
    ld hl, sp+$2A                                 ; $5A53: $F8 $2A
    ld b, $F0                                     ; $5A55: $06 $F0
    nop                                           ; $5A57: $00
    dec de                                        ; $5A58: $1B
    ld b, $F0                                     ; $5A59: $06 $F0
    ld hl, sp+$1A                                 ; $5A5B: $F8 $1A
    ld b, $80                                     ; $5A5D: $06 $80
    nop                                           ; $5A5F: $00
    nop                                           ; $5A60: $00
    dec bc                                        ; $5A61: $0B
    ld b, $00                                     ; $5A62: $06 $00
    ld hl, sp+$0A                                 ; $5A64: $F8 $0A
    ld b, $F8                                     ; $5A66: $06 $F8
    nop                                           ; $5A68: $00
    add hl, bc                                    ; $5A69: $09
    ld b, $F8                                     ; $5A6A: $06 $F8
    ld hl, sp+$08                                 ; $5A6C: $F8 $08
    ld b, $80                                     ; $5A6E: $06 $80
    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00
    dec [hl]                                      ; $5A72: $35
    ld b, $00                                     ; $5A73: $06 $00
    ld hl, sp+$34                                 ; $5A75: $F8 $34
    ld b, $F8                                     ; $5A77: $06 $F8
    nop                                           ; $5A79: $00
    dec h                                         ; $5A7A: $25
    ld b, $F8                                     ; $5A7B: $06 $F8
    ld hl, sp+$24                                 ; $5A7D: $F8 $24
    ld b, $F0                                     ; $5A7F: $06 $F0
    nop                                           ; $5A81: $00
    dec d                                         ; $5A82: $15
    ld b, $F0                                     ; $5A83: $06 $F0
    ld hl, sp+$14                                 ; $5A85: $F8 $14
    ld b, $80                                     ; $5A87: $06 $80
    nop                                           ; $5A89: $00
    nop                                           ; $5A8A: $00
    dec a                                         ; $5A8B: $3D
    ld b, $00                                     ; $5A8C: $06 $00
    ld hl, sp+$3C                                 ; $5A8E: $F8 $3C
    ld b, $F8                                     ; $5A90: $06 $F8
    nop                                           ; $5A92: $00
    dec l                                         ; $5A93: $2D
    ld b, $F8                                     ; $5A94: $06 $F8
    ld hl, sp+$2C                                 ; $5A96: $F8 $2C
    ld b, $F0                                     ; $5A98: $06 $F0
    nop                                           ; $5A9A: $00
    dec e                                         ; $5A9B: $1D
    ld b, $F0                                     ; $5A9C: $06 $F0
    ld hl, sp+$1C                                 ; $5A9E: $F8 $1C
    ld b, $80                                     ; $5AA0: $06 $80
    nop                                           ; $5AA2: $00
    nop                                           ; $5AA3: $00
    rrca                                          ; $5AA4: $0F
    ld b, $00                                     ; $5AA5: $06 $00
    ld hl, sp+$0E                                 ; $5AA7: $F8 $0E
    ld b, $F8                                     ; $5AA9: $06 $F8
    nop                                           ; $5AAB: $00
    dec c                                         ; $5AAC: $0D
    ld b, $F8                                     ; $5AAD: $06 $F8
    ld hl, sp+$0C                                 ; $5AAF: $F8 $0C
    ld b, $80                                     ; $5AB1: $06 $80
    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00
    scf                                           ; $5AB5: $37
    ld b, $00                                     ; $5AB6: $06 $00
    ld hl, sp+$36                                 ; $5AB8: $F8 $36
    ld b, $F8                                     ; $5ABA: $06 $F8
    nop                                           ; $5ABC: $00
    daa                                           ; $5ABD: $27
    ld b, $F8                                     ; $5ABE: $06 $F8
    ld hl, sp+$26                                 ; $5AC0: $F8 $26
    ld b, $F0                                     ; $5AC2: $06 $F0
    nop                                           ; $5AC4: $00
    rla                                           ; $5AC5: $17
    ld b, $F0                                     ; $5AC6: $06 $F0
    ld hl, sp+$16                                 ; $5AC8: $F8 $16
    ld b, $80                                     ; $5ACA: $06 $80
    nop                                           ; $5ACC: $00
    nop                                           ; $5ACD: $00
    ccf                                           ; $5ACE: $3F
    ld b, $00                                     ; $5ACF: $06 $00
    ld hl, sp+$3E                                 ; $5AD1: $F8 $3E
    ld b, $F8                                     ; $5AD3: $06 $F8
    nop                                           ; $5AD5: $00
    cpl                                           ; $5AD6: $2F
    ld b, $F8                                     ; $5AD7: $06 $F8
    ld hl, sp+$2E                                 ; $5AD9: $F8 $2E
    ld b, $F0                                     ; $5ADB: $06 $F0
    nop                                           ; $5ADD: $00
    rra                                           ; $5ADE: $1F
    ld b, $F0                                     ; $5ADF: $06 $F0
    ld hl, sp+$1E                                 ; $5AE1: $F8 $1E
    ld b, $80                                     ; $5AE3: $06 $80
    ld [$0800], sp                                ; $5AE5: $08 $00 $08
    ld b, $08                                     ; $5AE8: $06 $08
    ld hl, sp+$07                                 ; $5AEA: $F8 $07
    ld b, $00                                     ; $5AEC: $06 $00
    nop                                           ; $5AEE: $00
    ld b, $06                                     ; $5AEF: $06 $06
    nop                                           ; $5AF1: $00
    ld hl, sp+$05                                 ; $5AF2: $F8 $05
    ld b, $00                                     ; $5AF4: $06 $00
    ldh a, [rDIV]                                 ; $5AF6: $F0 $04
    ld b, $F8                                     ; $5AF8: $06 $F8
    nop                                           ; $5AFA: $00
    inc bc                                        ; $5AFB: $03
    ld b, $F8                                     ; $5AFC: $06 $F8
    ld hl, sp+$02                                 ; $5AFE: $F8 $02
    ld b, $F0                                     ; $5B00: $06 $F0
    nop                                           ; $5B02: $00
    ld bc, $F006                                  ; $5B03: $01 $06 $F0
    ld hl, sp+$00                                 ; $5B06: $F8 $00
    ld b, $80                                     ; $5B08: $06 $80
    stop                                          ; $5B0A: $10 $00
    ld [de], a                                    ; $5B0C: $12
    ld b, $10                                     ; $5B0D: $06 $10
    ld hl, sp+$11                                 ; $5B0F: $F8 $11
    ld b, $08                                     ; $5B11: $06 $08
    nop                                           ; $5B13: $00
    db $10                                        ; $5B14: $10
    ld b, $08                                     ; $5B15: $06 $08
    ld hl, sp+$0F                                 ; $5B17: $F8 $0F
    ld b, $00                                     ; $5B19: $06 $00
    nop                                           ; $5B1B: $00
    ld c, $06                                     ; $5B1C: $0E $06
    nop                                           ; $5B1E: $00
    ld hl, sp+$0D                                 ; $5B1F: $F8 $0D
    ld b, $F8                                     ; $5B21: $06 $F8
    nop                                           ; $5B23: $00
    inc c                                         ; $5B24: $0C
    ld b, $F8                                     ; $5B25: $06 $F8
    ld hl, sp+$0B                                 ; $5B27: $F8 $0B
    ld b, $F0                                     ; $5B29: $06 $F0
    nop                                           ; $5B2B: $00
    ld a, [bc]                                    ; $5B2C: $0A
    ld b, $F0                                     ; $5B2D: $06 $F0
    ld hl, sp+$09                                 ; $5B2F: $F8 $09
    ld b, $80                                     ; $5B31: $06 $80
    stop                                          ; $5B33: $10 $00
    inc e                                         ; $5B35: $1C
    ld b, $10                                     ; $5B36: $06 $10
    ld hl, sp+$1B                                 ; $5B38: $F8 $1B
    ld b, $08                                     ; $5B3A: $06 $08
    nop                                           ; $5B3C: $00
    ld a, [de]                                    ; $5B3D: $1A
    ld b, $08                                     ; $5B3E: $06 $08
    ld hl, sp+$19                                 ; $5B40: $F8 $19
    ld b, $00                                     ; $5B42: $06 $00
    nop                                           ; $5B44: $00
    jr jr_040_5B4D                                ; $5B45: $18 $06

    nop                                           ; $5B47: $00
    ld hl, sp+$17                                 ; $5B48: $F8 $17
    ld b, $F8                                     ; $5B4A: $06 $F8
    nop                                           ; $5B4C: $00

jr_040_5B4D:
    ld d, $06                                     ; $5B4D: $16 $06
    ld hl, sp-$08                                 ; $5B4F: $F8 $F8
    dec d                                         ; $5B51: $15
    ld b, $F0                                     ; $5B52: $06 $F0
    nop                                           ; $5B54: $00
    inc d                                         ; $5B55: $14
    ld b, $F0                                     ; $5B56: $06 $F0
    ld hl, sp+$13                                 ; $5B58: $F8 $13
    ld b, $80                                     ; $5B5A: $06 $80
    jr jr_040_5B5E                                ; $5B5C: $18 $00

jr_040_5B5E:
    dec hl                                        ; $5B5E: $2B
    ld b, $18                                     ; $5B5F: $06 $18
    ld hl, sp+$2A                                 ; $5B61: $F8 $2A
    ld b, $10                                     ; $5B63: $06 $10
    nop                                           ; $5B65: $00
    add hl, hl                                    ; $5B66: $29
    ld b, $10                                     ; $5B67: $06 $10
    ld hl, sp+$28                                 ; $5B69: $F8 $28
    ld b, $08                                     ; $5B6B: $06 $08
    nop                                           ; $5B6D: $00
    daa                                           ; $5B6E: $27
    ld b, $08                                     ; $5B6F: $06 $08
    ld hl, sp+$26                                 ; $5B71: $F8 $26
    ld b, $00                                     ; $5B73: $06 $00
    ld [$0625], sp                                ; $5B75: $08 $25 $06
    nop                                           ; $5B78: $00
    nop                                           ; $5B79: $00
    inc h                                         ; $5B7A: $24
    ld b, $00                                     ; $5B7B: $06 $00
    ld hl, sp+$23                                 ; $5B7D: $F8 $23
    ld b, $F8                                     ; $5B7F: $06 $F8
    ld [$0622], sp                                ; $5B81: $08 $22 $06
    ld hl, sp+$00                                 ; $5B84: $F8 $00
    ld hl, $F806                                  ; $5B86: $21 $06 $F8
    ld hl, sp+$20                                 ; $5B89: $F8 $20
    ld b, $F0                                     ; $5B8B: $06 $F0
    ld [$061F], sp                                ; $5B8D: $08 $1F $06
    ldh a, [rP1]                                  ; $5B90: $F0 $00
    ld e, $06                                     ; $5B92: $1E $06
    ldh a, [$F8]                                  ; $5B94: $F0 $F8
    dec e                                         ; $5B96: $1D
    ld b, $80                                     ; $5B97: $06 $80
    stop                                          ; $5B99: $10 $00
    ld bc, $1060                                  ; $5B9B: $01 $60 $10
    ld [$6000], sp                                ; $5B9E: $08 $00 $60
    db $10                                        ; $5BA1: $10
    ld hl, sp+$01                                 ; $5BA2: $F8 $01
    ld b, b                                       ; $5BA4: $40
    db $10                                        ; $5BA5: $10
    ldh a, [rP1]                                  ; $5BA6: $F0 $00
    ld b, b                                       ; $5BA8: $40
    add sp, $00                                   ; $5BA9: $E8 $00
    ld bc, $E820                                  ; $5BAB: $01 $20 $E8
    ld [rROMB0], sp                                ; $5BAE: $08 $00 $20
    add sp, -$08                                  ; $5BB1: $E8 $F8
    ld bc, $E800                                  ; $5BB3: $01 $00 $E8
    ldh a, [rP1]                                  ; $5BB6: $F0 $00
    nop                                           ; $5BB8: $00
    add b                                         ; $5BB9: $80
    ld [$0300], sp                                ; $5BBA: $08 $00 $03
    ld h, b                                       ; $5BBD: $60
    ld [$0208], sp                                ; $5BBE: $08 $08 $02
    ld h, b                                       ; $5BC1: $60
    ld [$03F8], sp                                ; $5BC2: $08 $F8 $03
    ld b, b                                       ; $5BC5: $40
    ld [$02F0], sp                                ; $5BC6: $08 $F0 $02
    ld b, b                                       ; $5BC9: $40
    ldh a, [rP1]                                  ; $5BCA: $F0 $00
    inc bc                                        ; $5BCC: $03
    jr nz, @-$0E                                  ; $5BCD: $20 $F0

    ld [$2002], sp                                ; $5BCF: $08 $02 $20
    ldh a, [$F8]                                  ; $5BD2: $F0 $F8
    inc bc                                        ; $5BD4: $03
    nop                                           ; $5BD5: $00
    ldh a, [$F0]                                  ; $5BD6: $F0 $F0
    ld [bc], a                                    ; $5BD8: $02
    nop                                           ; $5BD9: $00
    add b                                         ; $5BDA: $80
    db $FC                                        ; $5BDB: $FC
    db $10                                        ; $5BDC: $10
    ld [$0460], sp                                ; $5BDD: $08 $60 $04
    ld [$6007], sp                                ; $5BE0: $08 $07 $60
    inc b                                         ; $5BE3: $04
    db $10                                        ; $5BE4: $10
    ld b, $60                                     ; $5BE5: $06 $60
    db $FC                                        ; $5BE7: $FC
    add sp, $08                                   ; $5BE8: $E8 $08
    nop                                           ; $5BEA: $00
    db $F4                                        ; $5BEB: $F4
    ldh a, [rTAC]                                 ; $5BEC: $F0 $07
    nop                                           ; $5BEE: $00
    db $F4                                        ; $5BEF: $F4
    add sp, $06                                   ; $5BF0: $E8 $06
    nop                                           ; $5BF2: $00
    db $FC                                        ; $5BF3: $FC

jr_040_5BF4:
    nop                                           ; $5BF4: $00
    dec b                                         ; $5BF5: $05
    jr nz, jr_040_5BF4                            ; $5BF6: $20 $FC

    ld [$6004], sp                                ; $5BF8: $08 $04 $60
    db $FC                                        ; $5BFB: $FC
    ld hl, sp+$05                                 ; $5BFC: $F8 $05
    nop                                           ; $5BFE: $00
    db $FC                                        ; $5BFF: $FC
    ldh a, [rDIV]                                 ; $5C00: $F0 $04
    nop                                           ; $5C02: $00
    add b                                         ; $5C03: $80
    db $FC                                        ; $5C04: $FC
    db $10                                        ; $5C05: $10
    inc c                                         ; $5C06: $0C
    ld h, b                                       ; $5C07: $60
    db $FC                                        ; $5C08: $FC
    jr @+$0D                                      ; $5C09: $18 $0B

    ld h, b                                       ; $5C0B: $60
    inc b                                         ; $5C0C: $04
    ld [$600A], sp                                ; $5C0D: $08 $0A $60
    inc b                                         ; $5C10: $04
    db $10                                        ; $5C11: $10
    add hl, bc                                    ; $5C12: $09
    ld h, b                                       ; $5C13: $60
    db $FC                                        ; $5C14: $FC
    add sp, $0C                                   ; $5C15: $E8 $0C
    nop                                           ; $5C17: $00
    db $FC                                        ; $5C18: $FC
    ldh [$0B], a                                  ; $5C19: $E0 $0B
    nop                                           ; $5C1B: $00
    db $F4                                        ; $5C1C: $F4
    ldh a, [$0A]                                  ; $5C1D: $F0 $0A
    nop                                           ; $5C1F: $00
    db $F4                                        ; $5C20: $F4
    add sp, $09                                   ; $5C21: $E8 $09
    nop                                           ; $5C23: $00
    db $FC                                        ; $5C24: $FC

jr_040_5C25:
    nop                                           ; $5C25: $00
    dec b                                         ; $5C26: $05
    jr nz, jr_040_5C25                            ; $5C27: $20 $FC

    ld [$2004], sp                                ; $5C29: $08 $04 $20
    db $FC                                        ; $5C2C: $FC
    ld hl, sp+$05                                 ; $5C2D: $F8 $05
    nop                                           ; $5C2F: $00
    db $FC                                        ; $5C30: $FC
    ldh a, [rDIV]                                 ; $5C31: $F0 $04
    nop                                           ; $5C33: $00
    add b                                         ; $5C34: $80
    db $FC                                        ; $5C35: $FC
    jr nz, @+$11                                  ; $5C36: $20 $0F

    ld h, b                                       ; $5C38: $60
    inc b                                         ; $5C39: $04
    jr jr_040_5C4A                                ; $5C3A: $18 $0E

    ld h, b                                       ; $5C3C: $60
    inc c                                         ; $5C3D: $0C
    db $10                                        ; $5C3E: $10
    dec c                                         ; $5C3F: $0D
    ld h, b                                       ; $5C40: $60
    db $FC                                        ; $5C41: $FC
    ret c                                         ; $5C42: $D8

    rrca                                          ; $5C43: $0F
    nop                                           ; $5C44: $00
    db $F4                                        ; $5C45: $F4
    ldh [$0E], a                                  ; $5C46: $E0 $0E
    nop                                           ; $5C48: $00
    db $EC                                        ; $5C49: $EC

jr_040_5C4A:
    add sp, $0D                                   ; $5C4A: $E8 $0D
    nop                                           ; $5C4C: $00
    db $FC                                        ; $5C4D: $FC

jr_040_5C4E:
    nop                                           ; $5C4E: $00
    dec b                                         ; $5C4F: $05
    jr nz, jr_040_5C4E                            ; $5C50: $20 $FC

    ld [$2004], sp                                ; $5C52: $08 $04 $20
    db $FC                                        ; $5C55: $FC
    ld hl, sp+$05                                 ; $5C56: $F8 $05
    nop                                           ; $5C58: $00
    db $FC                                        ; $5C59: $FC
    ldh a, [rDIV]                                 ; $5C5A: $F0 $04
    nop                                           ; $5C5C: $00
    add b                                         ; $5C5D: $80
    db $FC                                        ; $5C5E: $FC

jr_040_5C5F:
    nop                                           ; $5C5F: $00
    dec b                                         ; $5C60: $05
    jr nz, jr_040_5C5F                            ; $5C61: $20 $FC

    ld [$2004], sp                                ; $5C63: $08 $04 $20
    db $FC                                        ; $5C66: $FC
    ld hl, sp+$05                                 ; $5C67: $F8 $05
    nop                                           ; $5C69: $00
    db $FC                                        ; $5C6A: $FC
    ldh a, [rDIV]                                 ; $5C6B: $F0 $04
    nop                                           ; $5C6D: $00
    add b                                         ; $5C6E: $80
    ld [$06F0], sp                                ; $5C6F: $08 $F0 $06
    dec b                                         ; $5C72: $05
    add b                                         ; $5C73: $80
    nop                                           ; $5C74: $00
    ld hl, sp+$04                                 ; $5C75: $F8 $04
    dec b                                         ; $5C77: $05
    ld [$06F0], sp                                ; $5C78: $08 $F0 $06
    dec b                                         ; $5C7B: $05
    add b                                         ; $5C7C: $80
    ld [$06F0], sp                                ; $5C7D: $08 $F0 $06
    dec b                                         ; $5C80: $05
    nop                                           ; $5C81: $00
    nop                                           ; $5C82: $00
    dec b                                         ; $5C83: $05
    dec b                                         ; $5C84: $05
    nop                                           ; $5C85: $00
    ld hl, sp+$04                                 ; $5C86: $F8 $04
    dec b                                         ; $5C88: $05
    add b                                         ; $5C89: $80
    ld [$06F0], sp                                ; $5C8A: $08 $F0 $06
    dec b                                         ; $5C8D: $05
    nop                                           ; $5C8E: $00
    nop                                           ; $5C8F: $00
    dec b                                         ; $5C90: $05
    dec b                                         ; $5C91: $05
    nop                                           ; $5C92: $00
    ld hl, sp+$04                                 ; $5C93: $F8 $04
    dec b                                         ; $5C95: $05
    ld hl, sp+$08                                 ; $5C96: $F8 $08
    inc bc                                        ; $5C98: $03
    dec b                                         ; $5C99: $05
    add b                                         ; $5C9A: $80
    ld [$06F0], sp                                ; $5C9B: $08 $F0 $06
    dec b                                         ; $5C9E: $05
    nop                                           ; $5C9F: $00
    nop                                           ; $5CA0: $00
    dec b                                         ; $5CA1: $05
    dec b                                         ; $5CA2: $05
    nop                                           ; $5CA3: $00
    ld hl, sp+$04                                 ; $5CA4: $F8 $04
    dec b                                         ; $5CA6: $05
    ld hl, sp+$08                                 ; $5CA7: $F8 $08
    inc bc                                        ; $5CA9: $03
    dec b                                         ; $5CAA: $05
    ldh a, [$08]                                  ; $5CAB: $F0 $08
    ld [bc], a                                    ; $5CAD: $02
    dec b                                         ; $5CAE: $05
    add b                                         ; $5CAF: $80
    ld [$06F0], sp                                ; $5CB0: $08 $F0 $06
    dec b                                         ; $5CB3: $05
    nop                                           ; $5CB4: $00
    nop                                           ; $5CB5: $00
    dec b                                         ; $5CB6: $05
    dec b                                         ; $5CB7: $05
    nop                                           ; $5CB8: $00
    ld hl, sp+$04                                 ; $5CB9: $F8 $04
    dec b                                         ; $5CBB: $05
    ld hl, sp+$08                                 ; $5CBC: $F8 $08
    inc bc                                        ; $5CBE: $03
    dec b                                         ; $5CBF: $05
    ldh a, [$08]                                  ; $5CC0: $F0 $08
    ld [bc], a                                    ; $5CC2: $02
    dec b                                         ; $5CC3: $05
    add sp, $00                                   ; $5CC4: $E8 $00
    ld bc, $8005                                  ; $5CC6: $01 $05 $80
    ld [$06F0], sp                                ; $5CC9: $08 $F0 $06
    dec b                                         ; $5CCC: $05
    nop                                           ; $5CCD: $00
    nop                                           ; $5CCE: $00
    dec b                                         ; $5CCF: $05
    dec b                                         ; $5CD0: $05
    nop                                           ; $5CD1: $00
    ld hl, sp+$04                                 ; $5CD2: $F8 $04
    dec b                                         ; $5CD4: $05
    ld hl, sp+$08                                 ; $5CD5: $F8 $08
    inc bc                                        ; $5CD7: $03
    dec b                                         ; $5CD8: $05
    ldh a, [$08]                                  ; $5CD9: $F0 $08
    ld [bc], a                                    ; $5CDB: $02
    dec b                                         ; $5CDC: $05
    add sp, $00                                   ; $5CDD: $E8 $00
    ld bc, $E005                                  ; $5CDF: $01 $05 $E0
    nop                                           ; $5CE2: $00
    nop                                           ; $5CE3: $00
    dec b                                         ; $5CE4: $05
    add b                                         ; $5CE5: $80
    db $10                                        ; $5CE6: $10
    ld [$2506], sp                                ; $5CE7: $08 $06 $25
    ld [$06F0], sp                                ; $5CEA: $08 $F0 $06
    dec b                                         ; $5CED: $05
    nop                                           ; $5CEE: $00
    nop                                           ; $5CEF: $00
    dec b                                         ; $5CF0: $05
    dec b                                         ; $5CF1: $05
    nop                                           ; $5CF2: $00
    ld hl, sp+$04                                 ; $5CF3: $F8 $04
    dec b                                         ; $5CF5: $05
    ld hl, sp+$08                                 ; $5CF6: $F8 $08
    inc bc                                        ; $5CF8: $03
    dec b                                         ; $5CF9: $05
    ldh a, [$08]                                  ; $5CFA: $F0 $08
    ld [bc], a                                    ; $5CFC: $02
    dec b                                         ; $5CFD: $05
    add sp, $00                                   ; $5CFE: $E8 $00
    ld bc, $E005                                  ; $5D00: $01 $05 $E0
    nop                                           ; $5D03: $00
    nop                                           ; $5D04: $00
    dec b                                         ; $5D05: $05
    add b                                         ; $5D06: $80
    db $10                                        ; $5D07: $10
    ld [$2506], sp                                ; $5D08: $08 $06 $25
    ld [$0400], sp                                ; $5D0B: $08 $00 $04
    dec h                                         ; $5D0E: $25
    ld [$06F0], sp                                ; $5D0F: $08 $F0 $06
    dec b                                         ; $5D12: $05
    nop                                           ; $5D13: $00
    nop                                           ; $5D14: $00
    dec b                                         ; $5D15: $05
    dec b                                         ; $5D16: $05
    nop                                           ; $5D17: $00
    ld hl, sp+$04                                 ; $5D18: $F8 $04
    dec b                                         ; $5D1A: $05
    ld hl, sp+$08                                 ; $5D1B: $F8 $08
    inc bc                                        ; $5D1D: $03
    dec b                                         ; $5D1E: $05
    ldh a, [$08]                                  ; $5D1F: $F0 $08
    ld [bc], a                                    ; $5D21: $02
    dec b                                         ; $5D22: $05
    add sp, $00                                   ; $5D23: $E8 $00
    ld bc, $E005                                  ; $5D25: $01 $05 $E0
    nop                                           ; $5D28: $00
    nop                                           ; $5D29: $00
    dec b                                         ; $5D2A: $05
    add b                                         ; $5D2B: $80
    db $10                                        ; $5D2C: $10
    ld [$2506], sp                                ; $5D2D: $08 $06 $25
    ld [$05F8], sp                                ; $5D30: $08 $F8 $05
    dec h                                         ; $5D33: $25
    ld [$0400], sp                                ; $5D34: $08 $00 $04
    dec h                                         ; $5D37: $25
    ld [$06F0], sp                                ; $5D38: $08 $F0 $06
    dec b                                         ; $5D3B: $05
    nop                                           ; $5D3C: $00
    nop                                           ; $5D3D: $00
    dec b                                         ; $5D3E: $05
    dec b                                         ; $5D3F: $05
    nop                                           ; $5D40: $00
    ld hl, sp+$04                                 ; $5D41: $F8 $04
    dec b                                         ; $5D43: $05
    ld hl, sp+$08                                 ; $5D44: $F8 $08
    inc bc                                        ; $5D46: $03
    dec b                                         ; $5D47: $05
    ldh a, [$08]                                  ; $5D48: $F0 $08
    ld [bc], a                                    ; $5D4A: $02
    dec b                                         ; $5D4B: $05
    add sp, $00                                   ; $5D4C: $E8 $00
    ld bc, $E005                                  ; $5D4E: $01 $05 $E0
    nop                                           ; $5D51: $00
    nop                                           ; $5D52: $00
    dec b                                         ; $5D53: $05
    add b                                         ; $5D54: $80
    db $10                                        ; $5D55: $10
    ld [$2506], sp                                ; $5D56: $08 $06 $25
    ld [$05F8], sp                                ; $5D59: $08 $F8 $05
    dec h                                         ; $5D5C: $25
    ld [$0400], sp                                ; $5D5D: $08 $00 $04
    dec h                                         ; $5D60: $25
    nop                                           ; $5D61: $00
    ldh a, [$03]                                  ; $5D62: $F0 $03
    dec h                                         ; $5D64: $25
    ld [$06F0], sp                                ; $5D65: $08 $F0 $06
    dec b                                         ; $5D68: $05
    nop                                           ; $5D69: $00
    nop                                           ; $5D6A: $00
    dec b                                         ; $5D6B: $05
    dec b                                         ; $5D6C: $05
    nop                                           ; $5D6D: $00
    ld hl, sp+$04                                 ; $5D6E: $F8 $04
    dec b                                         ; $5D70: $05
    ld hl, sp+$08                                 ; $5D71: $F8 $08
    inc bc                                        ; $5D73: $03
    dec b                                         ; $5D74: $05
    ldh a, [$08]                                  ; $5D75: $F0 $08
    ld [bc], a                                    ; $5D77: $02
    dec b                                         ; $5D78: $05
    add sp, $00                                   ; $5D79: $E8 $00
    ld bc, $E005                                  ; $5D7B: $01 $05 $E0
    nop                                           ; $5D7E: $00
    nop                                           ; $5D7F: $00
    dec b                                         ; $5D80: $05
    add b                                         ; $5D81: $80
    db $10                                        ; $5D82: $10
    ld [$2506], sp                                ; $5D83: $08 $06 $25
    ld [$05F8], sp                                ; $5D86: $08 $F8 $05
    dec h                                         ; $5D89: $25
    ld [$0400], sp                                ; $5D8A: $08 $00 $04
    dec h                                         ; $5D8D: $25
    nop                                           ; $5D8E: $00
    ldh a, [$03]                                  ; $5D8F: $F0 $03
    dec h                                         ; $5D91: $25
    ld hl, sp-$10                                 ; $5D92: $F8 $F0
    ld [bc], a                                    ; $5D94: $02
    dec h                                         ; $5D95: $25
    ld [$06F0], sp                                ; $5D96: $08 $F0 $06
    dec b                                         ; $5D99: $05
    nop                                           ; $5D9A: $00
    nop                                           ; $5D9B: $00
    dec b                                         ; $5D9C: $05
    dec b                                         ; $5D9D: $05
    nop                                           ; $5D9E: $00
    ld hl, sp+$04                                 ; $5D9F: $F8 $04
    dec b                                         ; $5DA1: $05
    ld hl, sp+$08                                 ; $5DA2: $F8 $08
    inc bc                                        ; $5DA4: $03
    dec b                                         ; $5DA5: $05
    ldh a, [$08]                                  ; $5DA6: $F0 $08
    ld [bc], a                                    ; $5DA8: $02
    dec b                                         ; $5DA9: $05
    add sp, $00                                   ; $5DAA: $E8 $00
    ld bc, $E005                                  ; $5DAC: $01 $05 $E0
    nop                                           ; $5DAF: $00
    nop                                           ; $5DB0: $00
    dec b                                         ; $5DB1: $05
    add b                                         ; $5DB2: $80
    db $10                                        ; $5DB3: $10
    ld [$2506], sp                                ; $5DB4: $08 $06 $25
    ld [$05F8], sp                                ; $5DB7: $08 $F8 $05
    dec h                                         ; $5DBA: $25
    ld [$0400], sp                                ; $5DBB: $08 $00 $04
    dec h                                         ; $5DBE: $25
    nop                                           ; $5DBF: $00
    ldh a, [$03]                                  ; $5DC0: $F0 $03
    dec h                                         ; $5DC2: $25
    ld hl, sp-$10                                 ; $5DC3: $F8 $F0
    ld [bc], a                                    ; $5DC5: $02
    dec h                                         ; $5DC6: $25
    ldh a, [$F8]                                  ; $5DC7: $F0 $F8
    ld bc, $0825                                  ; $5DC9: $01 $25 $08
    ldh a, [rTMA]                                 ; $5DCC: $F0 $06
    dec b                                         ; $5DCE: $05
    nop                                           ; $5DCF: $00
    nop                                           ; $5DD0: $00
    dec b                                         ; $5DD1: $05
    dec b                                         ; $5DD2: $05
    nop                                           ; $5DD3: $00
    ld hl, sp+$04                                 ; $5DD4: $F8 $04
    dec b                                         ; $5DD6: $05
    ld hl, sp+$08                                 ; $5DD7: $F8 $08
    inc bc                                        ; $5DD9: $03
    dec b                                         ; $5DDA: $05
    ldh a, [$08]                                  ; $5DDB: $F0 $08
    ld [bc], a                                    ; $5DDD: $02
    dec b                                         ; $5DDE: $05
    add sp, $00                                   ; $5DDF: $E8 $00
    ld bc, $E005                                  ; $5DE1: $01 $05 $E0
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    dec b                                         ; $5DE6: $05
    add b                                         ; $5DE7: $80
    db $10                                        ; $5DE8: $10
    ld [$2506], sp                                ; $5DE9: $08 $06 $25
    ld [$05F8], sp                                ; $5DEC: $08 $F8 $05
    dec h                                         ; $5DEF: $25
    ld [$0400], sp                                ; $5DF0: $08 $00 $04
    dec h                                         ; $5DF3: $25
    nop                                           ; $5DF4: $00
    ldh a, [$03]                                  ; $5DF5: $F0 $03
    dec h                                         ; $5DF7: $25
    ld hl, sp-$10                                 ; $5DF8: $F8 $F0
    ld [bc], a                                    ; $5DFA: $02
    dec h                                         ; $5DFB: $25
    ldh a, [$F8]                                  ; $5DFC: $F0 $F8
    ld bc, $E825                                  ; $5DFE: $01 $25 $E8
    ld hl, sp+$00                                 ; $5E01: $F8 $00
    dec h                                         ; $5E03: $25
    ld [$06F0], sp                                ; $5E04: $08 $F0 $06
    dec b                                         ; $5E07: $05
    nop                                           ; $5E08: $00
    nop                                           ; $5E09: $00
    dec b                                         ; $5E0A: $05
    dec b                                         ; $5E0B: $05
    nop                                           ; $5E0C: $00
    ld hl, sp+$04                                 ; $5E0D: $F8 $04
    dec b                                         ; $5E0F: $05
    ld hl, sp+$08                                 ; $5E10: $F8 $08
    inc bc                                        ; $5E12: $03
    dec b                                         ; $5E13: $05
    ldh a, [$08]                                  ; $5E14: $F0 $08
    ld [bc], a                                    ; $5E16: $02
    dec b                                         ; $5E17: $05
    add sp, $00                                   ; $5E18: $E8 $00
    ld bc, $E005                                  ; $5E1A: $01 $05 $E0
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    dec b                                         ; $5E1F: $05
    add b                                         ; $5E20: $80
    db $10                                        ; $5E21: $10
    ld hl, sp+$03                                 ; $5E22: $F8 $03
    dec h                                         ; $5E24: $25
    db $10                                        ; $5E25: $10
    ld [$2506], sp                                ; $5E26: $08 $06 $25
    ld [$05F8], sp                                ; $5E29: $08 $F8 $05
    dec h                                         ; $5E2C: $25
    ld [$0400], sp                                ; $5E2D: $08 $00 $04
    dec h                                         ; $5E30: $25
    nop                                           ; $5E31: $00
    ldh a, [$03]                                  ; $5E32: $F0 $03
    dec h                                         ; $5E34: $25
    ld hl, sp-$10                                 ; $5E35: $F8 $F0
    ld [bc], a                                    ; $5E37: $02
    dec h                                         ; $5E38: $25
    ldh a, [$F8]                                  ; $5E39: $F0 $F8
    ld bc, $E825                                  ; $5E3B: $01 $25 $E8
    ld hl, sp+$00                                 ; $5E3E: $F8 $00
    dec h                                         ; $5E40: $25
    ld [$06F0], sp                                ; $5E41: $08 $F0 $06
    dec b                                         ; $5E44: $05
    nop                                           ; $5E45: $00
    nop                                           ; $5E46: $00
    dec b                                         ; $5E47: $05
    dec b                                         ; $5E48: $05
    nop                                           ; $5E49: $00
    ld hl, sp+$04                                 ; $5E4A: $F8 $04
    dec b                                         ; $5E4C: $05
    ld hl, sp+$08                                 ; $5E4D: $F8 $08
    inc bc                                        ; $5E4F: $03
    dec b                                         ; $5E50: $05
    ldh a, [$08]                                  ; $5E51: $F0 $08
    ld [bc], a                                    ; $5E53: $02
    dec b                                         ; $5E54: $05
    add sp, $00                                   ; $5E55: $E8 $00
    ld bc, $E005                                  ; $5E57: $01 $05 $E0
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    dec b                                         ; $5E5C: $05
    add b                                         ; $5E5D: $80
    db $10                                        ; $5E5E: $10
    ld hl, sp+$03                                 ; $5E5F: $F8 $03
    dec h                                         ; $5E61: $25
    ld [$02F8], sp                                ; $5E62: $08 $F8 $02
    dec h                                         ; $5E65: $25
    db $10                                        ; $5E66: $10
    ld [$2506], sp                                ; $5E67: $08 $06 $25
    ld [$05F8], sp                                ; $5E6A: $08 $F8 $05
    dec h                                         ; $5E6D: $25
    ld [$0400], sp                                ; $5E6E: $08 $00 $04
    dec h                                         ; $5E71: $25
    nop                                           ; $5E72: $00
    ldh a, [$03]                                  ; $5E73: $F0 $03
    dec h                                         ; $5E75: $25
    ld hl, sp-$10                                 ; $5E76: $F8 $F0
    ld [bc], a                                    ; $5E78: $02
    dec h                                         ; $5E79: $25
    ldh a, [$F8]                                  ; $5E7A: $F0 $F8
    ld bc, $E825                                  ; $5E7C: $01 $25 $E8
    ld hl, sp+$00                                 ; $5E7F: $F8 $00
    dec h                                         ; $5E81: $25
    ld [$06F0], sp                                ; $5E82: $08 $F0 $06
    dec b                                         ; $5E85: $05
    nop                                           ; $5E86: $00
    nop                                           ; $5E87: $00
    dec b                                         ; $5E88: $05
    dec b                                         ; $5E89: $05
    nop                                           ; $5E8A: $00
    ld hl, sp+$04                                 ; $5E8B: $F8 $04
    dec b                                         ; $5E8D: $05
    ld hl, sp+$08                                 ; $5E8E: $F8 $08
    inc bc                                        ; $5E90: $03
    dec b                                         ; $5E91: $05
    ldh a, [$08]                                  ; $5E92: $F0 $08
    ld [bc], a                                    ; $5E94: $02
    dec b                                         ; $5E95: $05
    add sp, $00                                   ; $5E96: $E8 $00
    ld bc, $E005                                  ; $5E98: $01 $05 $E0
    nop                                           ; $5E9B: $00
    nop                                           ; $5E9C: $00
    dec b                                         ; $5E9D: $05
    add b                                         ; $5E9E: $80
    db $10                                        ; $5E9F: $10
    ld hl, sp+$03                                 ; $5EA0: $F8 $03
    dec h                                         ; $5EA2: $25
    ld [$02F8], sp                                ; $5EA3: $08 $F8 $02
    dec h                                         ; $5EA6: $25
    nop                                           ; $5EA7: $00
    nop                                           ; $5EA8: $00
    ld bc, $1025                                  ; $5EA9: $01 $25 $10
    ld [$2506], sp                                ; $5EAC: $08 $06 $25
    ld [$05F8], sp                                ; $5EAF: $08 $F8 $05
    dec h                                         ; $5EB2: $25
    ld [$0400], sp                                ; $5EB3: $08 $00 $04
    dec h                                         ; $5EB6: $25
    nop                                           ; $5EB7: $00
    ldh a, [$03]                                  ; $5EB8: $F0 $03
    dec h                                         ; $5EBA: $25
    ld hl, sp-$10                                 ; $5EBB: $F8 $F0
    ld [bc], a                                    ; $5EBD: $02
    dec h                                         ; $5EBE: $25
    ldh a, [$F8]                                  ; $5EBF: $F0 $F8
    ld bc, $E825                                  ; $5EC1: $01 $25 $E8
    ld hl, sp+$00                                 ; $5EC4: $F8 $00
    dec h                                         ; $5EC6: $25
    ld [$06F0], sp                                ; $5EC7: $08 $F0 $06
    dec b                                         ; $5ECA: $05
    nop                                           ; $5ECB: $00
    nop                                           ; $5ECC: $00
    dec b                                         ; $5ECD: $05
    dec b                                         ; $5ECE: $05
    nop                                           ; $5ECF: $00
    ld hl, sp+$04                                 ; $5ED0: $F8 $04
    dec b                                         ; $5ED2: $05
    ld hl, sp+$08                                 ; $5ED3: $F8 $08
    inc bc                                        ; $5ED5: $03
    dec b                                         ; $5ED6: $05
    ldh a, [$08]                                  ; $5ED7: $F0 $08
    ld [bc], a                                    ; $5ED9: $02
    dec b                                         ; $5EDA: $05
    add sp, $00                                   ; $5EDB: $E8 $00
    ld bc, $E005                                  ; $5EDD: $01 $05 $E0
    nop                                           ; $5EE0: $00
    nop                                           ; $5EE1: $00
    dec b                                         ; $5EE2: $05
    add b                                         ; $5EE3: $80
    db $FC                                        ; $5EE4: $FC
    ld [$032A], sp                                ; $5EE5: $08 $2A $03
    db $FC                                        ; $5EE8: $FC
    nop                                           ; $5EE9: $00
    add hl, hl                                    ; $5EEA: $29
    inc bc                                        ; $5EEB: $03
    db $FC                                        ; $5EEC: $FC
    ld hl, sp+$28                                 ; $5EED: $F8 $28
    inc bc                                        ; $5EEF: $03
    db $FC                                        ; $5EF0: $FC
    ldh a, [$27]                                  ; $5EF1: $F0 $27
    inc bc                                        ; $5EF3: $03
    add b                                         ; $5EF4: $80
    db $FC                                        ; $5EF5: $FC
    ld [$032E], sp                                ; $5EF6: $08 $2E $03
    db $FC                                        ; $5EF9: $FC
    nop                                           ; $5EFA: $00
    dec l                                         ; $5EFB: $2D
    inc bc                                        ; $5EFC: $03
    db $FC                                        ; $5EFD: $FC
    ld hl, sp+$2C                                 ; $5EFE: $F8 $2C
    inc bc                                        ; $5F00: $03
    db $FC                                        ; $5F01: $FC
    ldh a, [$2B]                                  ; $5F02: $F0 $2B
    inc bc                                        ; $5F04: $03
    add b                                         ; $5F05: $80
    ld [$09F8], sp                                ; $5F06: $08 $F8 $09
    inc bc                                        ; $5F09: $03
    ld [$08F0], sp                                ; $5F0A: $08 $F0 $08
    inc bc                                        ; $5F0D: $03
    nop                                           ; $5F0E: $00
    nop                                           ; $5F0F: $00
    rlca                                          ; $5F10: $07
    inc bc                                        ; $5F11: $03
    nop                                           ; $5F12: $00
    ld hl, sp+$06                                 ; $5F13: $F8 $06
    inc bc                                        ; $5F15: $03
    nop                                           ; $5F16: $00
    ldh a, [rTIMA]                                ; $5F17: $F0 $05
    inc bc                                        ; $5F19: $03
    ld hl, sp+$00                                 ; $5F1A: $F8 $00
    inc b                                         ; $5F1C: $04
    inc bc                                        ; $5F1D: $03
    ld hl, sp-$08                                 ; $5F1E: $F8 $F8
    inc bc                                        ; $5F20: $03
    inc bc                                        ; $5F21: $03
    ld hl, sp-$10                                 ; $5F22: $F8 $F0
    ld [bc], a                                    ; $5F24: $02
    inc bc                                        ; $5F25: $03
    ldh a, [rP1]                                  ; $5F26: $F0 $00
    ld bc, $F003                                  ; $5F28: $01 $03 $F0
    ld hl, sp+$00                                 ; $5F2B: $F8 $00
    inc bc                                        ; $5F2D: $03
    add b                                         ; $5F2E: $80
    ld [$12F8], sp                                ; $5F2F: $08 $F8 $12
    inc bc                                        ; $5F32: $03
    ld [$11F0], sp                                ; $5F33: $08 $F0 $11
    inc bc                                        ; $5F36: $03
    nop                                           ; $5F37: $00
    ld hl, sp+$10                                 ; $5F38: $F8 $10
    inc bc                                        ; $5F3A: $03
    nop                                           ; $5F3B: $00
    ldh a, [rIF]                                  ; $5F3C: $F0 $0F
    inc bc                                        ; $5F3E: $03
    ld hl, sp+$00                                 ; $5F3F: $F8 $00
    ld c, $03                                     ; $5F41: $0E $03
    ld hl, sp-$08                                 ; $5F43: $F8 $F8
    dec c                                         ; $5F45: $0D
    inc bc                                        ; $5F46: $03
    ld hl, sp-$10                                 ; $5F47: $F8 $F0
    inc c                                         ; $5F49: $0C
    inc bc                                        ; $5F4A: $03
    ldh a, [rP1]                                  ; $5F4B: $F0 $00
    dec bc                                        ; $5F4D: $0B
    inc bc                                        ; $5F4E: $03
    ldh a, [$F8]                                  ; $5F4F: $F0 $F8
    ld a, [bc]                                    ; $5F51: $0A
    inc bc                                        ; $5F52: $03
    add b                                         ; $5F53: $80
    ldh a, [$F8]                                  ; $5F54: $F0 $F8
    inc de                                        ; $5F56: $13
    inc bc                                        ; $5F57: $03
    ld [$1BF8], sp                                ; $5F58: $08 $F8 $1B
    inc bc                                        ; $5F5B: $03
    ld [$1AF0], sp                                ; $5F5C: $08 $F0 $1A
    inc bc                                        ; $5F5F: $03
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    add hl, de                                    ; $5F62: $19
    inc bc                                        ; $5F63: $03
    nop                                           ; $5F64: $00
    ld hl, sp+$18                                 ; $5F65: $F8 $18
    inc bc                                        ; $5F67: $03
    nop                                           ; $5F68: $00
    ldh a, [rNR22]                                ; $5F69: $F0 $17
    inc bc                                        ; $5F6B: $03
    ld hl, sp+$00                                 ; $5F6C: $F8 $00
    ld d, $03                                     ; $5F6E: $16 $03
    ld hl, sp-$08                                 ; $5F70: $F8 $F8
    dec d                                         ; $5F72: $15
    inc bc                                        ; $5F73: $03
    ldh a, [rP1]                                  ; $5F74: $F0 $00
    inc d                                         ; $5F76: $14
    inc bc                                        ; $5F77: $03
    add b                                         ; $5F78: $80
    ld [$2600], sp                                ; $5F79: $08 $00 $26
    inc bc                                        ; $5F7C: $03
    ld [$25F8], sp                                ; $5F7D: $08 $F8 $25
    inc bc                                        ; $5F80: $03
    ld [$24F0], sp                                ; $5F81: $08 $F0 $24
    inc bc                                        ; $5F84: $03
    nop                                           ; $5F85: $00
    nop                                           ; $5F86: $00
    inc hl                                        ; $5F87: $23
    inc bc                                        ; $5F88: $03
    nop                                           ; $5F89: $00
    ld hl, sp+$22                                 ; $5F8A: $F8 $22
    inc bc                                        ; $5F8C: $03
    nop                                           ; $5F8D: $00
    ldh a, [rNR42]                                ; $5F8E: $F0 $21
    inc bc                                        ; $5F90: $03
    ld hl, sp+$00                                 ; $5F91: $F8 $00
    jr nz, jr_040_5F98                            ; $5F93: $20 $03

    ld hl, sp-$08                                 ; $5F95: $F8 $F8
    rra                                           ; $5F97: $1F

jr_040_5F98:
    inc bc                                        ; $5F98: $03
    ld hl, sp-$10                                 ; $5F99: $F8 $F0
    ld e, $03                                     ; $5F9B: $1E $03
    ldh a, [rP1]                                  ; $5F9D: $F0 $00
    dec e                                         ; $5F9F: $1D
    inc bc                                        ; $5FA0: $03
    ldh a, [$F8]                                  ; $5FA1: $F0 $F8
    inc e                                         ; $5FA3: $1C
    inc bc                                        ; $5FA4: $03
    add b                                         ; $5FA5: $80
    nop                                           ; $5FA6: $00
    ld hl, sp+$01                                 ; $5FA7: $F8 $01
    ld b, c                                       ; $5FA9: $41
    nop                                           ; $5FAA: $00
    ldh a, [rP1]                                  ; $5FAB: $F0 $00
    ld b, c                                       ; $5FAD: $41
    ld hl, sp-$08                                 ; $5FAE: $F8 $F8
    ld bc, $F801                                  ; $5FB0: $01 $01 $F8
    ldh a, [rP1]                                  ; $5FB3: $F0 $00
    ld bc, $0080                                  ; $5FB5: $01 $80 $00
    ld sp, hl                                     ; $5FB8: $F9
    inc b                                         ; $5FB9: $04
    ld b, c                                       ; $5FBA: $41
    nop                                           ; $5FBB: $00
    pop af                                        ; $5FBC: $F1
    inc bc                                        ; $5FBD: $03
    ld b, c                                       ; $5FBE: $41
    ld [$02F9], sp                                ; $5FBF: $08 $F9 $02
    ld b, c                                       ; $5FC2: $41
    ld hl, sp-$07                                 ; $5FC3: $F8 $F9
    inc b                                         ; $5FC5: $04
    ld bc, $F1F8                                  ; $5FC6: $01 $F8 $F1
    inc bc                                        ; $5FC9: $03
    ld bc, $F9F0                                  ; $5FCA: $01 $F0 $F9
    ld [bc], a                                    ; $5FCD: $02
    ld bc, $0080                                  ; $5FCE: $01 $80 $00
    ld [$410A], a                                 ; $5FD1: $EA $0A $41
    ld [$09FA], sp                                ; $5FD4: $08 $FA $09
    ld b, c                                       ; $5FD7: $41
    ld [$08F2], sp                                ; $5FD8: $08 $F2 $08
    ld b, c                                       ; $5FDB: $41
    ld [$07EA], sp                                ; $5FDC: $08 $EA $07
    ld b, c                                       ; $5FDF: $41
    db $10                                        ; $5FE0: $10
    ld a, [c]                                     ; $5FE1: $F2
    ld b, $41                                     ; $5FE2: $06 $41
    db $10                                        ; $5FE4: $10
    ld [$4105], a                                 ; $5FE5: $EA $05 $41
    ld hl, sp-$16                                 ; $5FE8: $F8 $EA
    ld a, [bc]                                    ; $5FEA: $0A
    ld bc, $FA00                                  ; $5FEB: $01 $00 $FA
    inc c                                         ; $5FEE: $0C
    ld b, c                                       ; $5FEF: $41
    nop                                           ; $5FF0: $00
    ld a, [c]                                     ; $5FF1: $F2
    dec bc                                        ; $5FF2: $0B
    ld b, c                                       ; $5FF3: $41
    ld hl, sp-$06                                 ; $5FF4: $F8 $FA
    inc c                                         ; $5FF6: $0C
    ld bc, $F2F8                                  ; $5FF7: $01 $F8 $F2
    dec bc                                        ; $5FFA: $0B
    ld bc, $FAF0                                  ; $5FFB: $01 $F0 $FA
    add hl, bc                                    ; $5FFE: $09
    ld bc, $F2F0                                  ; $5FFF: $01 $F0 $F2
    ld [$F001], sp                                ; $6002: $08 $01 $F0
    ld [$0107], a                                 ; $6005: $EA $07 $01
    add sp, -$0E                                  ; $6008: $E8 $F2
    ld b, $01                                     ; $600A: $06 $01
    add sp, -$16                                  ; $600C: $E8 $EA
    dec b                                         ; $600E: $05
    ld bc, $0080                                  ; $600F: $01 $80 $00
    ei                                            ; $6012: $FB
    dec d                                         ; $6013: $15
    ld b, c                                       ; $6014: $41
    nop                                           ; $6015: $00
    di                                            ; $6016: $F3
    inc d                                         ; $6017: $14
    ld b, c                                       ; $6018: $41
    nop                                           ; $6019: $00
    db $EB                                        ; $601A: $EB
    inc de                                        ; $601B: $13
    ld b, c                                       ; $601C: $41
    ld hl, sp-$1D                                 ; $601D: $F8 $E3
    ld [de], a                                    ; $601F: $12
    ld b, c                                       ; $6020: $41
    ld [$11F3], sp                                ; $6021: $08 $F3 $11
    ld b, c                                       ; $6024: $41
    ld [$10EB], sp                                ; $6025: $08 $EB $10
    ld b, c                                       ; $6028: $41
    ld [$0FE3], sp                                ; $6029: $08 $E3 $0F
    ld b, c                                       ; $602C: $41
    db $10                                        ; $602D: $10
    di                                            ; $602E: $F3
    ld c, $41                                     ; $602F: $0E $41
    db $10                                        ; $6031: $10
    db $EB                                        ; $6032: $EB
    dec c                                         ; $6033: $0D
    ld b, c                                       ; $6034: $41
    ld hl, sp-$05                                 ; $6035: $F8 $FB
    dec d                                         ; $6037: $15
    ld bc, $F3F8                                  ; $6038: $01 $F8 $F3
    inc d                                         ; $603B: $14
    ld bc, $EBF8                                  ; $603C: $01 $F8 $EB
    inc de                                        ; $603F: $13
    ld bc, $E300                                  ; $6040: $01 $00 $E3
    ld [de], a                                    ; $6043: $12
    ld bc, $F3F0                                  ; $6044: $01 $F0 $F3
    ld de, $F001                                  ; $6047: $11 $01 $F0
    db $EB                                        ; $604A: $EB
    db $10                                        ; $604B: $10
    ld bc, $E3F0                                  ; $604C: $01 $F0 $E3
    rrca                                          ; $604F: $0F
    ld bc, $F3E8                                  ; $6050: $01 $E8 $F3
    ld c, $01                                     ; $6053: $0E $01
    add sp, -$15                                  ; $6055: $E8 $EB
    dec c                                         ; $6057: $0D
    ld bc, $0080                                  ; $6058: $01 $80 $00
    db $FD                                        ; $605B: $FD
    jr nz, @+$43                                  ; $605C: $20 $41

    ld hl, sp-$03                                 ; $605E: $F8 $FD
    jr nz, jr_040_6063                            ; $6060: $20 $01

    nop                                           ; $6062: $00

jr_040_6063:
    db $ED                                        ; $6063: $ED
    rra                                           ; $6064: $1F
    ld b, c                                       ; $6065: $41
    nop                                           ; $6066: $00
    push hl                                       ; $6067: $E5
    ld e, $41                                     ; $6068: $1E $41
    nop                                           ; $606A: $00
    db $DD                                        ; $606B: $DD
    dec e                                         ; $606C: $1D

jr_040_606D:
    ld b, c                                       ; $606D: $41
    ld [$1CED], sp                                ; $606E: $08 $ED $1C

jr_040_6071:
    ld b, c                                       ; $6071: $41
    ld [$1BE5], sp                                ; $6072: $08 $E5 $1B
    ld b, c                                       ; $6075: $41
    ld [$1ADD], sp                                ; $6076: $08 $DD $1A
    ld b, c                                       ; $6079: $41
    db $10                                        ; $607A: $10
    db $ED                                        ; $607B: $ED
    add hl, de                                    ; $607C: $19
    ld b, c                                       ; $607D: $41
    db $10                                        ; $607E: $10
    push hl                                       ; $607F: $E5
    jr jr_040_60C3                                ; $6080: $18 $41

    jr jr_040_6071                                ; $6082: $18 $ED

    rla                                           ; $6084: $17
    ld b, c                                       ; $6085: $41
    jr jr_040_606D                                ; $6086: $18 $E5

    ld d, $01                                     ; $6088: $16 $01
    ld hl, sp-$13                                 ; $608A: $F8 $ED
    rra                                           ; $608C: $1F
    ld bc, $E5F8                                  ; $608D: $01 $F8 $E5
    ld e, $01                                     ; $6090: $1E $01
    ld hl, sp-$23                                 ; $6092: $F8 $DD
    dec e                                         ; $6094: $1D
    ld bc, $EDF0                                  ; $6095: $01 $F0 $ED
    inc e                                         ; $6098: $1C
    ld bc, $E5F0                                  ; $6099: $01 $F0 $E5
    dec de                                        ; $609C: $1B
    ld bc, $DDF0                                  ; $609D: $01 $F0 $DD
    ld a, [de]                                    ; $60A0: $1A
    ld bc, $EDE8                                  ; $60A1: $01 $E8 $ED
    add hl, de                                    ; $60A4: $19
    ld bc, $E5E8                                  ; $60A5: $01 $E8 $E5
    jr @+$03                                      ; $60A8: $18 $01

    ldh [$ED], a                                  ; $60AA: $E0 $ED
    rla                                           ; $60AC: $17
    ld bc, $E5E0                                  ; $60AD: $01 $E0 $E5
    ld d, $01                                     ; $60B0: $16 $01
    add b                                         ; $60B2: $80
    add b                                         ; $60B3: $80
    ld [$1408], sp                                ; $60B4: $08 $08 $14
    rlca                                          ; $60B7: $07
    ld [$1300], sp                                ; $60B8: $08 $00 $13
    rlca                                          ; $60BB: $07
    ld [$12F8], sp                                ; $60BC: $08 $F8 $12
    rlca                                          ; $60BF: $07
    ld [$11F0], sp                                ; $60C0: $08 $F0 $11

jr_040_60C3:
    rlca                                          ; $60C3: $07
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    db $10                                        ; $60C6: $10
    rlca                                          ; $60C7: $07
    nop                                           ; $60C8: $00
    ld hl, sp+$0F                                 ; $60C9: $F8 $0F
    rlca                                          ; $60CB: $07
    nop                                           ; $60CC: $00
    ldh a, [$0E]                                  ; $60CD: $F0 $0E
    rlca                                          ; $60CF: $07
    ld hl, sp+$08                                 ; $60D0: $F8 $08
    dec c                                         ; $60D2: $0D
    rlca                                          ; $60D3: $07
    ld hl, sp+$00                                 ; $60D4: $F8 $00
    inc c                                         ; $60D6: $0C
    rlca                                          ; $60D7: $07
    ld hl, sp-$08                                 ; $60D8: $F8 $F8
    dec bc                                        ; $60DA: $0B
    rlca                                          ; $60DB: $07
    ld hl, sp-$10                                 ; $60DC: $F8 $F0
    ld a, [bc]                                    ; $60DE: $0A
    rlca                                          ; $60DF: $07
    ldh a, [rP1]                                  ; $60E0: $F0 $00
    add hl, bc                                    ; $60E2: $09
    rlca                                          ; $60E3: $07
    ldh a, [$F8]                                  ; $60E4: $F0 $F8
    ld [$F007], sp                                ; $60E6: $08 $07 $F0
    ldh a, [rTAC]                                 ; $60E9: $F0 $07
    rlca                                          ; $60EB: $07
    add sp, $00                                   ; $60EC: $E8 $00
    ld b, $07                                     ; $60EE: $06 $07
    add sp, -$08                                  ; $60F0: $E8 $F8
    dec b                                         ; $60F2: $05
    rlca                                          ; $60F3: $07
    add sp, -$10                                  ; $60F4: $E8 $F0
    inc b                                         ; $60F6: $04
    rlca                                          ; $60F7: $07
    add sp, -$20                                  ; $60F8: $E8 $E0
    inc bc                                        ; $60FA: $03
    rlca                                          ; $60FB: $07
    ldh [rNR10], a                                ; $60FC: $E0 $10
    ld [bc], a                                    ; $60FE: $02
    rlca                                          ; $60FF: $07
    ldh [$E8], a                                  ; $6100: $E0 $E8
    ld bc, $E007                                  ; $6102: $01 $07 $E0
    ldh [rP1], a                                  ; $6105: $E0 $00
    rlca                                          ; $6107: $07
    add b                                         ; $6108: $80
    ld [$2600], sp                                ; $6109: $08 $00 $26
    rlca                                          ; $610C: $07
    ld [$25F8], sp                                ; $610D: $08 $F8 $25
    rlca                                          ; $6110: $07
    nop                                           ; $6111: $00
    ld [$0724], sp                                ; $6112: $08 $24 $07
    nop                                           ; $6115: $00
    nop                                           ; $6116: $00
    inc hl                                        ; $6117: $23
    rlca                                          ; $6118: $07
    nop                                           ; $6119: $00
    ld hl, sp+$22                                 ; $611A: $F8 $22
    rlca                                          ; $611C: $07
    nop                                           ; $611D: $00
    ldh a, [rNR42]                                ; $611E: $F0 $21
    rlca                                          ; $6120: $07
    ld hl, sp+$08                                 ; $6121: $F8 $08
    jr nz, @+$09                                  ; $6123: $20 $07

    ld hl, sp+$00                                 ; $6125: $F8 $00
    rra                                           ; $6127: $1F
    rlca                                          ; $6128: $07
    ld hl, sp-$08                                 ; $6129: $F8 $F8
    ld e, $07                                     ; $612B: $1E $07
    ld hl, sp-$10                                 ; $612D: $F8 $F0
    dec e                                         ; $612F: $1D
    rlca                                          ; $6130: $07
    ldh a, [$F8]                                  ; $6131: $F0 $F8
    inc e                                         ; $6133: $1C
    rlca                                          ; $6134: $07
    ldh a, [$F0]                                  ; $6135: $F0 $F0
    dec de                                        ; $6137: $1B
    rlca                                          ; $6138: $07
    add sp, -$08                                  ; $6139: $E8 $F8
    ld a, [de]                                    ; $613B: $1A
    rlca                                          ; $613C: $07
    add sp, -$10                                  ; $613D: $E8 $F0
    add hl, de                                    ; $613F: $19
    rlca                                          ; $6140: $07
    add sp, -$20                                  ; $6141: $E8 $E0
    jr @+$09                                      ; $6143: $18 $07

    ldh [rNR10], a                                ; $6145: $E0 $10
    rla                                           ; $6147: $17
    rlca                                          ; $6148: $07
    ldh [$E8], a                                  ; $6149: $E0 $E8
    ld d, $07                                     ; $614B: $16 $07
    ldh [$E0], a                                  ; $614D: $E0 $E0
    dec d                                         ; $614F: $15
    rlca                                          ; $6150: $07
    add b                                         ; $6151: $80
    ld [$2FF9], sp                                ; $6152: $08 $F9 $2F
    rlca                                          ; $6155: $07
    nop                                           ; $6156: $00
    ld sp, hl                                     ; $6157: $F9
    ld l, $07                                     ; $6158: $2E $07
    nop                                           ; $615A: $00
    pop af                                        ; $615B: $F1
    dec l                                         ; $615C: $2D
    rlca                                          ; $615D: $07
    ld hl, sp-$07                                 ; $615E: $F8 $F9
    inc l                                         ; $6160: $2C
    rlca                                          ; $6161: $07
    ld hl, sp-$0F                                 ; $6162: $F8 $F1
    dec hl                                        ; $6164: $2B
    rlca                                          ; $6165: $07
    ldh a, [$F9]                                  ; $6166: $F0 $F9
    ld a, [hl+]                                   ; $6168: $2A
    rlca                                          ; $6169: $07
    ldh a, [$F1]                                  ; $616A: $F0 $F1
    add hl, hl                                    ; $616C: $29
    rlca                                          ; $616D: $07
    add sp, -$07                                  ; $616E: $E8 $F9
    jr z, @+$09                                   ; $6170: $28 $07

    add sp, -$0F                                  ; $6172: $E8 $F1
    daa                                           ; $6174: $27
    rlca                                          ; $6175: $07
    add b                                         ; $6176: $80
    ld [$34F8], sp                                ; $6177: $08 $F8 $34
    rlca                                          ; $617A: $07
    nop                                           ; $617B: $00
    ld hl, sp+$33                                 ; $617C: $F8 $33
    rlca                                          ; $617E: $07
    ld hl, sp-$08                                 ; $617F: $F8 $F8
    ld [hl-], a                                   ; $6181: $32
    rlca                                          ; $6182: $07
    ldh a, [$F8]                                  ; $6183: $F0 $F8
    ld sp, $8007                                  ; $6185: $31 $07 $80
    db $10                                        ; $6188: $10
    ld hl, sp+$1E                                 ; $6189: $F8 $1E
    dec b                                         ; $618B: $05
    db $10                                        ; $618C: $10
    ldh a, [rNR33]                                ; $618D: $F0 $1D
    dec b                                         ; $618F: $05
    db $10                                        ; $6190: $10
    add sp, $1C                                   ; $6191: $E8 $1C
    dec b                                         ; $6193: $05
    ld [$1B00], sp                                ; $6194: $08 $00 $1B
    dec b                                         ; $6197: $05
    ld [$1AF8], sp                                ; $6198: $08 $F8 $1A
    dec b                                         ; $619B: $05
    ld [$19F0], sp                                ; $619C: $08 $F0 $19
    dec b                                         ; $619F: $05
    ld [$18E8], sp                                ; $61A0: $08 $E8 $18
    dec b                                         ; $61A3: $05
    ld [$17E0], sp                                ; $61A4: $08 $E0 $17
    dec b                                         ; $61A7: $05
    nop                                           ; $61A8: $00
    db $10                                        ; $61A9: $10
    ld d, $05                                     ; $61AA: $16 $05
    nop                                           ; $61AC: $00
    ld [$0515], sp                                ; $61AD: $08 $15 $05
    nop                                           ; $61B0: $00
    nop                                           ; $61B1: $00
    inc d                                         ; $61B2: $14
    dec b                                         ; $61B3: $05
    nop                                           ; $61B4: $00
    ld hl, sp+$13                                 ; $61B5: $F8 $13
    dec b                                         ; $61B7: $05
    nop                                           ; $61B8: $00
    ldh a, [rNR12]                                ; $61B9: $F0 $12
    dec b                                         ; $61BB: $05
    nop                                           ; $61BC: $00
    add sp, $11                                   ; $61BD: $E8 $11
    dec b                                         ; $61BF: $05
    nop                                           ; $61C0: $00
    ldh [rNR10], a                                ; $61C1: $E0 $10
    dec b                                         ; $61C3: $05
    ld hl, sp+$18                                 ; $61C4: $F8 $18
    rrca                                          ; $61C6: $0F
    dec b                                         ; $61C7: $05
    ld hl, sp+$10                                 ; $61C8: $F8 $10
    ld c, $05                                     ; $61CA: $0E $05
    ld hl, sp+$08                                 ; $61CC: $F8 $08
    dec c                                         ; $61CE: $0D
    dec b                                         ; $61CF: $05
    ld hl, sp+$00                                 ; $61D0: $F8 $00
    inc c                                         ; $61D2: $0C
    dec b                                         ; $61D3: $05
    ld hl, sp-$08                                 ; $61D4: $F8 $F8
    dec bc                                        ; $61D6: $0B
    dec b                                         ; $61D7: $05
    ld hl, sp-$10                                 ; $61D8: $F8 $F0
    ld a, [bc]                                    ; $61DA: $0A
    dec b                                         ; $61DB: $05
    ldh a, [rNR23]                                ; $61DC: $F0 $18
    add hl, bc                                    ; $61DE: $09
    dec b                                         ; $61DF: $05
    ldh a, [rNR10]                                ; $61E0: $F0 $10
    ld [$F005], sp                                ; $61E2: $08 $05 $F0
    ld [$0507], sp                                ; $61E5: $08 $07 $05
    ldh a, [rP1]                                  ; $61E8: $F0 $00
    ld b, $05                                     ; $61EA: $06 $05
    add sp, $18                                   ; $61EC: $E8 $18
    dec b                                         ; $61EE: $05
    dec b                                         ; $61EF: $05
    add sp, $10                                   ; $61F0: $E8 $10
    inc b                                         ; $61F2: $04
    dec b                                         ; $61F3: $05
    add sp, $08                                   ; $61F4: $E8 $08
    inc bc                                        ; $61F6: $03
    dec b                                         ; $61F7: $05
    add sp, $00                                   ; $61F8: $E8 $00
    ld [bc], a                                    ; $61FA: $02
    dec b                                         ; $61FB: $05
    ldh [rNR23], a                                ; $61FC: $E0 $18
    ld bc, $E005                                  ; $61FE: $01 $05 $E0
    ld [$0500], sp                                ; $6201: $08 $00 $05
    add b                                         ; $6204: $80
    jr @+$12                                      ; $6205: $18 $10

    dec a                                         ; $6207: $3D
    dec b                                         ; $6208: $05
    jr jr_040_6213                                ; $6209: $18 $08

    inc a                                         ; $620B: $3C
    dec b                                         ; $620C: $05
    jr jr_040_620F                                ; $620D: $18 $00

jr_040_620F:
    dec sp                                        ; $620F: $3B
    dec b                                         ; $6210: $05
    db $10                                        ; $6211: $10
    db $10                                        ; $6212: $10

jr_040_6213:
    ld a, [hl-]                                   ; $6213: $3A
    dec b                                         ; $6214: $05
    db $10                                        ; $6215: $10
    ld [$0539], sp                                ; $6216: $08 $39 $05
    stop                                          ; $6219: $10 $00
    jr c, @+$07                                   ; $621B: $38 $05

    db $10                                        ; $621D: $10
    ld hl, sp+$37                                 ; $621E: $F8 $37
    dec b                                         ; $6220: $05
    ld [$3618], sp                                ; $6221: $08 $18 $36
    dec b                                         ; $6224: $05
    ld [$3510], sp                                ; $6225: $08 $10 $35
    dec b                                         ; $6228: $05
    ld [$3408], sp                                ; $6229: $08 $08 $34
    dec b                                         ; $622C: $05
    ld [$3300], sp                                ; $622D: $08 $00 $33
    dec b                                         ; $6230: $05
    ld [$32F8], sp                                ; $6231: $08 $F8 $32
    dec b                                         ; $6234: $05
    nop                                           ; $6235: $00
    jr jr_040_6269                                ; $6236: $18 $31

    dec b                                         ; $6238: $05
    nop                                           ; $6239: $00
    db $10                                        ; $623A: $10
    jr nc, jr_040_6242                            ; $623B: $30 $05

    nop                                           ; $623D: $00
    ld [$052F], sp                                ; $623E: $08 $2F $05
    nop                                           ; $6241: $00

jr_040_6242:
    nop                                           ; $6242: $00
    ld l, $05                                     ; $6243: $2E $05
    nop                                           ; $6245: $00
    ld hl, sp+$2D                                 ; $6246: $F8 $2D
    dec b                                         ; $6248: $05
    nop                                           ; $6249: $00
    ldh a, [$2C]                                  ; $624A: $F0 $2C
    dec b                                         ; $624C: $05
    ld hl, sp+$00                                 ; $624D: $F8 $00
    dec hl                                        ; $624F: $2B
    dec b                                         ; $6250: $05
    ld hl, sp-$08                                 ; $6251: $F8 $F8
    ld a, [hl+]                                   ; $6253: $2A
    dec b                                         ; $6254: $05
    ld hl, sp-$10                                 ; $6255: $F8 $F0
    add hl, hl                                    ; $6257: $29
    dec b                                         ; $6258: $05
    ld hl, sp-$18                                 ; $6259: $F8 $E8
    jr z, @+$07                                   ; $625B: $28 $05

    ldh a, [rP1]                                  ; $625D: $F0 $00
    daa                                           ; $625F: $27
    dec b                                         ; $6260: $05
    ldh a, [$F8]                                  ; $6261: $F0 $F8
    ld h, $05                                     ; $6263: $26 $05
    ldh a, [$F0]                                  ; $6265: $F0 $F0
    dec h                                         ; $6267: $25
    dec b                                         ; $6268: $05

jr_040_6269:
    ldh a, [$E8]                                  ; $6269: $F0 $E8
    inc h                                         ; $626B: $24
    dec b                                         ; $626C: $05
    add sp, -$08                                  ; $626D: $E8 $F8
    inc hl                                        ; $626F: $23
    dec b                                         ; $6270: $05
    add sp, -$10                                  ; $6271: $E8 $F0
    ld [hl+], a                                   ; $6273: $22
    dec b                                         ; $6274: $05
    add sp, -$18                                  ; $6275: $E8 $E8
    ld hl, $E005                                  ; $6277: $21 $05 $E0
    ld hl, sp+$20                                 ; $627A: $F8 $20
    dec b                                         ; $627C: $05
    ldh [$F0], a                                  ; $627D: $E0 $F0
    rra                                           ; $627F: $1F
    dec b                                         ; $6280: $05
    add b                                         ; $6281: $80
    add sp, $00                                   ; $6282: $E8 $00
    ld e, $65                                     ; $6284: $1E $65
    add sp, $08                                   ; $6286: $E8 $08
    dec e                                         ; $6288: $1D
    ld h, l                                       ; $6289: $65
    add sp, $10                                   ; $628A: $E8 $10
    inc e                                         ; $628C: $1C
    ld h, l                                       ; $628D: $65
    ldh a, [$F8]                                  ; $628E: $F0 $F8
    dec de                                        ; $6290: $1B
    ld h, l                                       ; $6291: $65
    ldh a, [$08]                                  ; $6292: $F0 $08
    ld a, [de]                                    ; $6294: $1A
    ld h, l                                       ; $6295: $65
    ldh a, [rP1]                                  ; $6296: $F0 $00
    add hl, de                                    ; $6298: $19
    ld h, l                                       ; $6299: $65
    ldh a, [rNR10]                                ; $629A: $F0 $10
    jr jr_040_6303                                ; $629C: $18 $65

    ldh a, [rNR23]                                ; $629E: $F0 $18
    rla                                           ; $62A0: $17
    ld h, l                                       ; $62A1: $65
    ldh a, [$A8]                                  ; $62A2: $F0 $A8
    ld d, $65                                     ; $62A4: $16 $65
    ld hl, sp-$10                                 ; $62A6: $F8 $F0
    dec d                                         ; $62A8: $15
    ld h, l                                       ; $62A9: $65
    ld hl, sp-$08                                 ; $62AA: $F8 $F8
    inc d                                         ; $62AC: $14
    ld h, l                                       ; $62AD: $65
    ld hl, sp+$00                                 ; $62AE: $F8 $00
    inc de                                        ; $62B0: $13
    ld h, l                                       ; $62B1: $65
    ld hl, sp+$08                                 ; $62B2: $F8 $08
    ld [de], a                                    ; $62B4: $12
    ld h, l                                       ; $62B5: $65
    ld hl, sp+$10                                 ; $62B6: $F8 $10
    ld de, $F865                                  ; $62B8: $11 $65 $F8
    jr jr_040_62CD                                ; $62BB: $18 $10

    ld h, l                                       ; $62BD: $65
    nop                                           ; $62BE: $00
    ldh [rIF], a                                  ; $62BF: $E0 $0F
    ld h, l                                       ; $62C1: $65
    nop                                           ; $62C2: $00
    add sp, $0E                                   ; $62C3: $E8 $0E
    ld h, l                                       ; $62C5: $65
    nop                                           ; $62C6: $00
    ldh a, [$0D]                                  ; $62C7: $F0 $0D
    ld h, l                                       ; $62C9: $65
    nop                                           ; $62CA: $00
    ld hl, sp+$0C                                 ; $62CB: $F8 $0C

jr_040_62CD:
    ld h, l                                       ; $62CD: $65
    nop                                           ; $62CE: $00
    nop                                           ; $62CF: $00
    dec bc                                        ; $62D0: $0B
    ld h, l                                       ; $62D1: $65
    nop                                           ; $62D2: $00
    ld [$650A], sp                                ; $62D3: $08 $0A $65
    ld [$09E0], sp                                ; $62D6: $08 $E0 $09
    ld h, l                                       ; $62D9: $65
    ld [$08E8], sp                                ; $62DA: $08 $E8 $08
    ld h, l                                       ; $62DD: $65
    ld [$07F0], sp                                ; $62DE: $08 $F0 $07
    ld h, l                                       ; $62E1: $65
    ld [$06F8], sp                                ; $62E2: $08 $F8 $06
    ld h, l                                       ; $62E5: $65
    db $10                                        ; $62E6: $10
    ldh [rTIMA], a                                ; $62E7: $E0 $05
    ld h, l                                       ; $62E9: $65
    db $10                                        ; $62EA: $10
    add sp, $04                                   ; $62EB: $E8 $04
    ld h, l                                       ; $62ED: $65
    db $10                                        ; $62EE: $10
    ldh a, [$03]                                  ; $62EF: $F0 $03
    ld h, l                                       ; $62F1: $65
    db $10                                        ; $62F2: $10
    ld hl, sp+$02                                 ; $62F3: $F8 $02
    ld h, l                                       ; $62F5: $65
    jr @-$1E                                      ; $62F6: $18 $E0

    ld bc, $1865                                  ; $62F8: $01 $65 $18
    ldh a, [rP1]                                  ; $62FB: $F0 $00
    ld h, l                                       ; $62FD: $65
    add b                                         ; $62FE: $80
    ldh [$E8], a                                  ; $62FF: $E0 $E8
    dec a                                         ; $6301: $3D
    ld h, l                                       ; $6302: $65

jr_040_6303:
    ldh [$F0], a                                  ; $6303: $E0 $F0
    inc a                                         ; $6305: $3C
    ld h, l                                       ; $6306: $65
    ldh [$F8], a                                  ; $6307: $E0 $F8
    dec sp                                        ; $6309: $3B
    ld h, l                                       ; $630A: $65
    add sp, -$18                                  ; $630B: $E8 $E8
    ld a, [hl-]                                   ; $630D: $3A
    ld h, l                                       ; $630E: $65
    add sp, -$10                                  ; $630F: $E8 $F0
    add hl, sp                                    ; $6311: $39
    ld h, l                                       ; $6312: $65
    add sp, -$08                                  ; $6313: $E8 $F8
    jr c, jr_040_637C                             ; $6315: $38 $65

    add sp, $00                                   ; $6317: $E8 $00
    scf                                           ; $6319: $37
    ld h, l                                       ; $631A: $65
    ldh a, [$E0]                                  ; $631B: $F0 $E0
    ld [hl], $65                                  ; $631D: $36 $65
    ldh a, [$E8]                                  ; $631F: $F0 $E8
    dec [hl]                                      ; $6321: $35
    ld h, l                                       ; $6322: $65
    ldh a, [$F0]                                  ; $6323: $F0 $F0
    inc [hl]                                      ; $6325: $34
    ld h, l                                       ; $6326: $65
    ldh a, [$F8]                                  ; $6327: $F0 $F8
    inc sp                                        ; $6329: $33
    ld h, l                                       ; $632A: $65
    ldh a, [rP1]                                  ; $632B: $F0 $00
    ld [hl-], a                                   ; $632D: $32
    ld h, l                                       ; $632E: $65
    ld hl, sp-$20                                 ; $632F: $F8 $E0
    ld sp, $F865                                  ; $6331: $31 $65 $F8
    add sp, $30                                   ; $6334: $E8 $30
    ld h, l                                       ; $6336: $65
    ld hl, sp-$10                                 ; $6337: $F8 $F0
    cpl                                           ; $6339: $2F
    ld h, l                                       ; $633A: $65
    ld hl, sp-$08                                 ; $633B: $F8 $F8
    ld l, $65                                     ; $633D: $2E $65
    ld hl, sp+$00                                 ; $633F: $F8 $00
    dec l                                         ; $6341: $2D
    ld h, l                                       ; $6342: $65
    ld hl, sp+$08                                 ; $6343: $F8 $08
    inc l                                         ; $6345: $2C
    ld h, l                                       ; $6346: $65
    nop                                           ; $6347: $00
    ld hl, sp+$2B                                 ; $6348: $F8 $2B
    ld h, l                                       ; $634A: $65
    nop                                           ; $634B: $00
    nop                                           ; $634C: $00
    ld a, [hl+]                                   ; $634D: $2A
    ld h, l                                       ; $634E: $65
    nop                                           ; $634F: $00
    ld [$6529], sp                                ; $6350: $08 $29 $65
    nop                                           ; $6353: $00
    db $10                                        ; $6354: $10
    jr z, @+$67                                   ; $6355: $28 $65

    ld [$27F8], sp                                ; $6357: $08 $F8 $27
    ld h, l                                       ; $635A: $65
    ld [$2600], sp                                ; $635B: $08 $00 $26
    ld h, l                                       ; $635E: $65
    ld [$2508], sp                                ; $635F: $08 $08 $25
    ld h, l                                       ; $6362: $65
    ld [$2410], sp                                ; $6363: $08 $10 $24
    ld h, l                                       ; $6366: $65
    stop                                          ; $6367: $10 $00
    inc hl                                        ; $6369: $23
    ld h, l                                       ; $636A: $65
    db $10                                        ; $636B: $10
    ld [$6522], sp                                ; $636C: $08 $22 $65
    db $10                                        ; $636F: $10
    db $10                                        ; $6370: $10
    ld hl, $1865                                  ; $6371: $21 $65 $18
    nop                                           ; $6374: $00
    jr nz, @+$67                                  ; $6375: $20 $65

    jr jr_040_6381                                ; $6377: $18 $08

    rra                                           ; $6379: $1F
    ld h, l                                       ; $637A: $65
    add b                                         ; $637B: $80

jr_040_637C:
    db $FC                                        ; $637C: $FC
    db $FC                                        ; $637D: $FC
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    add b                                         ; $6380: $80

jr_040_6381:
    db $FC                                        ; $6381: $FC
    db $FC                                        ; $6382: $FC
    ld bc, $8000                                  ; $6383: $01 $00 $80
    db $FC                                        ; $6386: $FC
    db $FC                                        ; $6387: $FC
    ld [bc], a                                    ; $6388: $02
    nop                                           ; $6389: $00
    add b                                         ; $638A: $80
    db $FC                                        ; $638B: $FC
    db $FC                                        ; $638C: $FC
    inc bc                                        ; $638D: $03
    nop                                           ; $638E: $00
    add b                                         ; $638F: $80
    db $FC                                        ; $6390: $FC
    db $FC                                        ; $6391: $FC
    inc b                                         ; $6392: $04
    nop                                           ; $6393: $00
    add b                                         ; $6394: $80
    db $FC                                        ; $6395: $FC
    db $FC                                        ; $6396: $FC
    dec b                                         ; $6397: $05
    nop                                           ; $6398: $00
    add b                                         ; $6399: $80
    db $FC                                        ; $639A: $FC
    db $FC                                        ; $639B: $FC
    ld b, $00                                     ; $639C: $06 $00
    add b                                         ; $639E: $80
    db $FC                                        ; $639F: $FC
    db $FC                                        ; $63A0: $FC
    rlca                                          ; $63A1: $07
    nop                                           ; $63A2: $00
    add b                                         ; $63A3: $80
    db $FC                                        ; $63A4: $FC
    db $FC                                        ; $63A5: $FC
    ld [$8000], sp                                ; $63A6: $08 $00 $80
    db $FC                                        ; $63A9: $FC
    db $FC                                        ; $63AA: $FC
    add hl, bc                                    ; $63AB: $09
    nop                                           ; $63AC: $00
    add b                                         ; $63AD: $80
    db $FC                                        ; $63AE: $FC
    db $FC                                        ; $63AF: $FC
    ld a, [bc]                                    ; $63B0: $0A
    nop                                           ; $63B1: $00
    add b                                         ; $63B2: $80
    stop                                          ; $63B3: $10 $00
    dec c                                         ; $63B5: $0D
    inc b                                         ; $63B6: $04
    db $10                                        ; $63B7: $10
    ld hl, sp+$0C                                 ; $63B8: $F8 $0C
    inc b                                         ; $63BA: $04
    ld [$0B00], sp                                ; $63BB: $08 $00 $0B
    inc b                                         ; $63BE: $04
    ld [$0AF8], sp                                ; $63BF: $08 $F8 $0A
    inc b                                         ; $63C2: $04
    ld [$09F0], sp                                ; $63C3: $08 $F0 $09
    inc b                                         ; $63C6: $04
    nop                                           ; $63C7: $00
    ld [$0408], sp                                ; $63C8: $08 $08 $04
    nop                                           ; $63CB: $00
    nop                                           ; $63CC: $00
    rlca                                          ; $63CD: $07
    inc b                                         ; $63CE: $04
    nop                                           ; $63CF: $00
    ld hl, sp+$06                                 ; $63D0: $F8 $06
    inc b                                         ; $63D2: $04
    nop                                           ; $63D3: $00
    ldh a, [rTIMA]                                ; $63D4: $F0 $05
    inc b                                         ; $63D6: $04
    ld hl, sp+$08                                 ; $63D7: $F8 $08
    inc b                                         ; $63D9: $04
    inc b                                         ; $63DA: $04
    ld hl, sp+$00                                 ; $63DB: $F8 $00
    inc bc                                        ; $63DD: $03
    inc b                                         ; $63DE: $04
    ld hl, sp-$08                                 ; $63DF: $F8 $F8
    ld [bc], a                                    ; $63E1: $02
    inc b                                         ; $63E2: $04
    ldh a, [rP1]                                  ; $63E3: $F0 $00
    ld bc, $F004                                  ; $63E5: $01 $04 $F0
    ld hl, sp+$00                                 ; $63E8: $F8 $00
    inc b                                         ; $63EA: $04
    add b                                         ; $63EB: $80
    stop                                          ; $63EC: $10 $00
    dec de                                        ; $63EE: $1B
    inc b                                         ; $63EF: $04
    db $10                                        ; $63F0: $10
    ld hl, sp+$1A                                 ; $63F1: $F8 $1A
    inc b                                         ; $63F3: $04
    ld [$1900], sp                                ; $63F4: $08 $00 $19
    inc b                                         ; $63F7: $04
    ld [$18F8], sp                                ; $63F8: $08 $F8 $18
    inc b                                         ; $63FB: $04
    nop                                           ; $63FC: $00
    ld [$0417], sp                                ; $63FD: $08 $17 $04
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    ld d, $04                                     ; $6402: $16 $04
    nop                                           ; $6404: $00
    ld hl, sp+$15                                 ; $6405: $F8 $15
    inc b                                         ; $6407: $04
    nop                                           ; $6408: $00
    ldh a, [rNR14]                                ; $6409: $F0 $14
    inc b                                         ; $640B: $04
    ld hl, sp+$08                                 ; $640C: $F8 $08
    inc de                                        ; $640E: $13
    inc b                                         ; $640F: $04
    ld hl, sp+$00                                 ; $6410: $F8 $00
    ld [de], a                                    ; $6412: $12
    inc b                                         ; $6413: $04
    ld hl, sp-$08                                 ; $6414: $F8 $F8
    ld de, $F004                                  ; $6416: $11 $04 $F0
    ld [$0410], sp                                ; $6419: $08 $10 $04
    ldh a, [rP1]                                  ; $641C: $F0 $00
    rrca                                          ; $641E: $0F
    inc b                                         ; $641F: $04
    ldh a, [$F8]                                  ; $6420: $F0 $F8
    ld c, $04                                     ; $6422: $0E $04
    add b                                         ; $6424: $80
    stop                                          ; $6425: $10 $00
    ld a, [hl+]                                   ; $6427: $2A
    inc b                                         ; $6428: $04
    ld [$2908], sp                                ; $6429: $08 $08 $29
    inc b                                         ; $642C: $04
    ld [$2800], sp                                ; $642D: $08 $00 $28
    inc b                                         ; $6430: $04
    ld [$27F8], sp                                ; $6431: $08 $F8 $27
    inc b                                         ; $6434: $04
    nop                                           ; $6435: $00
    ld [$0426], sp                                ; $6436: $08 $26 $04
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00
    dec h                                         ; $643B: $25
    inc b                                         ; $643C: $04
    nop                                           ; $643D: $00
    ld hl, sp+$24                                 ; $643E: $F8 $24
    inc b                                         ; $6440: $04
    nop                                           ; $6441: $00
    ldh a, [rNR44]                                ; $6442: $F0 $23
    inc b                                         ; $6444: $04
    ld hl, sp+$08                                 ; $6445: $F8 $08
    ld [hl+], a                                   ; $6447: $22
    inc b                                         ; $6448: $04
    ld hl, sp+$00                                 ; $6449: $F8 $00
    ld hl, $F804                                  ; $644B: $21 $04 $F8
    ld hl, sp+$20                                 ; $644E: $F8 $20
    inc b                                         ; $6450: $04
    ldh a, [$08]                                  ; $6451: $F0 $08
    rra                                           ; $6453: $1F
    inc b                                         ; $6454: $04
    ldh a, [rP1]                                  ; $6455: $F0 $00
    ld e, $04                                     ; $6457: $1E $04
    ldh a, [$F8]                                  ; $6459: $F0 $F8
    dec e                                         ; $645B: $1D
    inc b                                         ; $645C: $04
    ldh a, [$F0]                                  ; $645D: $F0 $F0
    inc e                                         ; $645F: $1C
    inc b                                         ; $6460: $04
    add b                                         ; $6461: $80
    db $10                                        ; $6462: $10
    ld hl, sp+$0D                                 ; $6463: $F8 $0D
    inc h                                         ; $6465: $24
    stop                                          ; $6466: $10 $00
    inc c                                         ; $6468: $0C
    inc h                                         ; $6469: $24
    ld [$0BF8], sp                                ; $646A: $08 $F8 $0B
    inc h                                         ; $646D: $24
    ld [$0A00], sp                                ; $646E: $08 $00 $0A
    inc h                                         ; $6471: $24
    ld [$0908], sp                                ; $6472: $08 $08 $09
    inc h                                         ; $6475: $24
    nop                                           ; $6476: $00
    ldh a, [$08]                                  ; $6477: $F0 $08
    inc h                                         ; $6479: $24
    nop                                           ; $647A: $00
    ld hl, sp+$07                                 ; $647B: $F8 $07
    inc h                                         ; $647D: $24
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    ld b, $24                                     ; $6480: $06 $24
    nop                                           ; $6482: $00
    ld [$2405], sp                                ; $6483: $08 $05 $24
    ld hl, sp-$10                                 ; $6486: $F8 $F0
    inc b                                         ; $6488: $04
    inc h                                         ; $6489: $24
    ld hl, sp-$08                                 ; $648A: $F8 $F8
    inc bc                                        ; $648C: $03
    inc h                                         ; $648D: $24
    ld hl, sp+$00                                 ; $648E: $F8 $00
    ld [bc], a                                    ; $6490: $02
    inc h                                         ; $6491: $24
    ldh a, [$F8]                                  ; $6492: $F0 $F8
    ld bc, $F024                                  ; $6494: $01 $24 $F0
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    inc h                                         ; $6499: $24
    add b                                         ; $649A: $80
    db $10                                        ; $649B: $10
    ld hl, sp+$1B                                 ; $649C: $F8 $1B
    inc h                                         ; $649E: $24
    stop                                          ; $649F: $10 $00
    ld a, [de]                                    ; $64A1: $1A
    inc h                                         ; $64A2: $24
    ld [$19F8], sp                                ; $64A3: $08 $F8 $19
    inc h                                         ; $64A6: $24
    ld [$1800], sp                                ; $64A7: $08 $00 $18
    inc h                                         ; $64AA: $24
    nop                                           ; $64AB: $00
    ldh a, [rNR22]                                ; $64AC: $F0 $17
    inc h                                         ; $64AE: $24
    nop                                           ; $64AF: $00
    ld hl, sp+$16                                 ; $64B0: $F8 $16
    inc h                                         ; $64B2: $24
    nop                                           ; $64B3: $00
    nop                                           ; $64B4: $00
    dec d                                         ; $64B5: $15
    inc h                                         ; $64B6: $24
    nop                                           ; $64B7: $00
    ld [$2414], sp                                ; $64B8: $08 $14 $24
    ld hl, sp-$10                                 ; $64BB: $F8 $F0
    inc de                                        ; $64BD: $13
    inc h                                         ; $64BE: $24
    ld hl, sp-$08                                 ; $64BF: $F8 $F8
    ld [de], a                                    ; $64C1: $12
    inc h                                         ; $64C2: $24
    ld hl, sp+$00                                 ; $64C3: $F8 $00
    ld de, $F024                                  ; $64C5: $11 $24 $F0
    ldh a, [rNR10]                                ; $64C8: $F0 $10
    inc h                                         ; $64CA: $24
    ldh a, [$F8]                                  ; $64CB: $F0 $F8
    rrca                                          ; $64CD: $0F
    inc h                                         ; $64CE: $24
    ldh a, [rP1]                                  ; $64CF: $F0 $00
    ld c, $24                                     ; $64D1: $0E $24
    add b                                         ; $64D3: $80
    nop                                           ; $64D4: $00
    ld [$0007], sp                                ; $64D5: $08 $07 $00
    nop                                           ; $64D8: $00
    nop                                           ; $64D9: $00
    ld b, $00                                     ; $64DA: $06 $00
    nop                                           ; $64DC: $00
    ld hl, sp+$05                                 ; $64DD: $F8 $05
    nop                                           ; $64DF: $00
    nop                                           ; $64E0: $00
    ldh a, [rDIV]                                 ; $64E1: $F0 $04
    nop                                           ; $64E3: $00
    ld hl, sp+$08                                 ; $64E4: $F8 $08
    inc bc                                        ; $64E6: $03
    nop                                           ; $64E7: $00
    ld hl, sp+$00                                 ; $64E8: $F8 $00
    ld [bc], a                                    ; $64EA: $02
    nop                                           ; $64EB: $00
    ld hl, sp-$08                                 ; $64EC: $F8 $F8
    ld bc, $F800                                  ; $64EE: $01 $00 $F8
    ldh a, [rP1]                                  ; $64F1: $F0 $00
    nop                                           ; $64F3: $00
    add b                                         ; $64F4: $80
    nop                                           ; $64F5: $00
    db $10                                        ; $64F6: $10
    ld a, [de]                                    ; $64F7: $1A
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    ld [$0019], sp                                ; $64FA: $08 $19 $00
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    jr jr_040_6501                                ; $64FF: $18 $00

jr_040_6501:
    nop                                           ; $6501: $00
    ld hl, sp+$17                                 ; $6502: $F8 $17
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    ldh a, [rNR21]                                ; $6506: $F0 $16
    nop                                           ; $6508: $00
    ld hl, sp+$10                                 ; $6509: $F8 $10
    dec d                                         ; $650B: $15
    nop                                           ; $650C: $00
    ld hl, sp+$08                                 ; $650D: $F8 $08
    inc d                                         ; $650F: $14
    nop                                           ; $6510: $00
    ld hl, sp+$00                                 ; $6511: $F8 $00
    inc de                                        ; $6513: $13
    nop                                           ; $6514: $00
    ld hl, sp-$08                                 ; $6515: $F8 $F8
    ld [de], a                                    ; $6517: $12
    nop                                           ; $6518: $00
    ldh a, [rNR10]                                ; $6519: $F0 $10
    ld de, $F000                                  ; $651B: $11 $00 $F0
    ld [$0010], sp                                ; $651E: $08 $10 $00
    ldh a, [rP1]                                  ; $6521: $F0 $00
    rrca                                          ; $6523: $0F
    nop                                           ; $6524: $00
    add sp, $10                                   ; $6525: $E8 $10
    ld c, $00                                     ; $6527: $0E $00
    add sp, $08                                   ; $6529: $E8 $08
    dec c                                         ; $652B: $0D
    nop                                           ; $652C: $00
    add sp, $00                                   ; $652D: $E8 $00
    inc c                                         ; $652F: $0C
    nop                                           ; $6530: $00
    add sp, -$08                                  ; $6531: $E8 $F8
    dec bc                                        ; $6533: $0B
    nop                                           ; $6534: $00
    ldh [$08], a                                  ; $6535: $E0 $08
    ld a, [bc]                                    ; $6537: $0A
    nop                                           ; $6538: $00
    ldh [rP1], a                                  ; $6539: $E0 $00
    add hl, bc                                    ; $653B: $09
    nop                                           ; $653C: $00
    ldh [$F8], a                                  ; $653D: $E0 $F8
    ld [$8000], sp                                ; $653F: $08 $00 $80
    nop                                           ; $6542: $00
    ld [$002F], sp                                ; $6543: $08 $2F $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    ld l, $00                                     ; $6548: $2E $00
    nop                                           ; $654A: $00
    ld hl, sp+$2D                                 ; $654B: $F8 $2D
    nop                                           ; $654D: $00
    ld hl, sp+$10                                 ; $654E: $F8 $10
    inc l                                         ; $6550: $2C
    nop                                           ; $6551: $00
    ld hl, sp+$08                                 ; $6552: $F8 $08
    dec hl                                        ; $6554: $2B
    nop                                           ; $6555: $00
    ld hl, sp+$00                                 ; $6556: $F8 $00
    ld a, [hl+]                                   ; $6558: $2A
    nop                                           ; $6559: $00
    ld hl, sp-$08                                 ; $655A: $F8 $F8
    add hl, hl                                    ; $655C: $29
    nop                                           ; $655D: $00
    ldh a, [rNR10]                                ; $655E: $F0 $10
    jr z, jr_040_6562                             ; $6560: $28 $00

jr_040_6562:
    ldh a, [$08]                                  ; $6562: $F0 $08
    daa                                           ; $6564: $27
    nop                                           ; $6565: $00
    ldh a, [rP1]                                  ; $6566: $F0 $00
    ld h, $00                                     ; $6568: $26 $00
    add sp, $10                                   ; $656A: $E8 $10
    dec h                                         ; $656C: $25
    nop                                           ; $656D: $00
    add sp, $08                                   ; $656E: $E8 $08
    inc h                                         ; $6570: $24
    nop                                           ; $6571: $00
    add sp, $00                                   ; $6572: $E8 $00
    inc hl                                        ; $6574: $23
    nop                                           ; $6575: $00
    add sp, -$08                                  ; $6576: $E8 $F8
    ld [hl+], a                                   ; $6578: $22
    nop                                           ; $6579: $00
    ldh [rNR10], a                                ; $657A: $E0 $10
    ld hl, $E000                                  ; $657C: $21 $00 $E0
    ld [$0020], sp                                ; $657F: $08 $20 $00
    ldh [rP1], a                                  ; $6582: $E0 $00
    rra                                           ; $6584: $1F
    nop                                           ; $6585: $00
    ldh [$F8], a                                  ; $6586: $E0 $F8
    ld e, $00                                     ; $6588: $1E $00
    ret c                                         ; $658A: $D8

    ld [$001D], sp                                ; $658B: $08 $1D $00
    ret c                                         ; $658E: $D8

    nop                                           ; $658F: $00
    inc e                                         ; $6590: $1C
    nop                                           ; $6591: $00
    ret c                                         ; $6592: $D8

    ld hl, sp+$1B                                 ; $6593: $F8 $1B
    nop                                           ; $6595: $00
    add b                                         ; $6596: $80
    ldh a, [$08]                                  ; $6597: $F0 $08
    dec sp                                        ; $6599: $3B
    nop                                           ; $659A: $00
    ldh a, [rP1]                                  ; $659B: $F0 $00
    ld a, [hl-]                                   ; $659D: $3A
    nop                                           ; $659E: $00
    add sp, $08                                   ; $659F: $E8 $08
    add hl, sp                                    ; $65A1: $39
    nop                                           ; $65A2: $00
    add sp, $00                                   ; $65A3: $E8 $00
    jr c, jr_040_65A7                             ; $65A5: $38 $00

jr_040_65A7:
    add sp, -$08                                  ; $65A7: $E8 $F8
    scf                                           ; $65A9: $37
    nop                                           ; $65AA: $00
    add sp, -$10                                  ; $65AB: $E8 $F0
    ld [hl], $00                                  ; $65AD: $36 $00
    ldh [$08], a                                  ; $65AF: $E0 $08
    dec [hl]                                      ; $65B1: $35
    nop                                           ; $65B2: $00
    ldh [rP1], a                                  ; $65B3: $E0 $00
    inc [hl]                                      ; $65B5: $34
    nop                                           ; $65B6: $00
    ldh [$F8], a                                  ; $65B7: $E0 $F8
    inc sp                                        ; $65B9: $33
    nop                                           ; $65BA: $00
    ldh [$F0], a                                  ; $65BB: $E0 $F0
    ld [hl-], a                                   ; $65BD: $32
    nop                                           ; $65BE: $00
    ret c                                         ; $65BF: $D8

    ld [$0031], sp                                ; $65C0: $08 $31 $00
    ret c                                         ; $65C3: $D8

    nop                                           ; $65C4: $00
    jr nc, jr_040_65C7                            ; $65C5: $30 $00

jr_040_65C7:
    add b                                         ; $65C7: $80
    ldh [$F8], a                                  ; $65C8: $E0 $F8
    ccf                                           ; $65CA: $3F
    nop                                           ; $65CB: $00
    ldh [rP1], a                                  ; $65CC: $E0 $00
    ld a, $00                                     ; $65CE: $3E $00
    ret c                                         ; $65D0: $D8

    nop                                           ; $65D1: $00
    dec a                                         ; $65D2: $3D
    nop                                           ; $65D3: $00
    ret c                                         ; $65D4: $D8

    ld hl, sp+$3C                                 ; $65D5: $F8 $3C
    nop                                           ; $65D7: $00
    add b                                         ; $65D8: $80
    nop                                           ; $65D9: $00
    nop                                           ; $65DA: $00
    dec b                                         ; $65DB: $05
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    ld hl, sp+$04                                 ; $65DE: $F8 $04
    nop                                           ; $65E0: $00
    ld hl, sp+$00                                 ; $65E1: $F8 $00
    inc bc                                        ; $65E3: $03
    nop                                           ; $65E4: $00
    ld hl, sp-$08                                 ; $65E5: $F8 $F8
    ld [bc], a                                    ; $65E7: $02
    nop                                           ; $65E8: $00
    add sp, -$08                                  ; $65E9: $E8 $F8
    ld bc, $F000                                  ; $65EB: $01 $00 $F0
    ld hl, sp+$00                                 ; $65EE: $F8 $00
    nop                                           ; $65F0: $00
    add b                                         ; $65F1: $80
    nop                                           ; $65F2: $00
    ld [$0010], sp                                ; $65F3: $08 $10 $00
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    rrca                                          ; $65F8: $0F
    nop                                           ; $65F9: $00
    nop                                           ; $65FA: $00
    ld hl, sp+$0E                                 ; $65FB: $F8 $0E
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    ldh a, [$0D]                                  ; $65FF: $F0 $0D
    nop                                           ; $6601: $00
    ld hl, sp+$00                                 ; $6602: $F8 $00
    inc c                                         ; $6604: $0C
    nop                                           ; $6605: $00
    ld hl, sp-$08                                 ; $6606: $F8 $F8
    dec bc                                        ; $6608: $0B
    nop                                           ; $6609: $00
    ld hl, sp-$10                                 ; $660A: $F8 $F0
    ld a, [bc]                                    ; $660C: $0A
    nop                                           ; $660D: $00
    ldh a, [$08]                                  ; $660E: $F0 $08
    add hl, bc                                    ; $6610: $09
    nop                                           ; $6611: $00
    ldh a, [rP1]                                  ; $6612: $F0 $00
    ld [$F000], sp                                ; $6614: $08 $00 $F0
    ld hl, sp+$07                                 ; $6617: $F8 $07
    nop                                           ; $6619: $00
    ldh a, [$F0]                                  ; $661A: $F0 $F0
    ld b, $00                                     ; $661C: $06 $00
    add b                                         ; $661E: $80
    nop                                           ; $661F: $00
    nop                                           ; $6620: $00
    dec de                                        ; $6621: $1B
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    ld hl, sp+$1A                                 ; $6624: $F8 $1A
    nop                                           ; $6626: $00
    ld hl, sp+$08                                 ; $6627: $F8 $08
    add hl, de                                    ; $6629: $19
    nop                                           ; $662A: $00
    ld hl, sp+$00                                 ; $662B: $F8 $00
    jr jr_040_662F                                ; $662D: $18 $00

jr_040_662F:
    ld hl, sp-$08                                 ; $662F: $F8 $F8
    rla                                           ; $6631: $17
    nop                                           ; $6632: $00
    ld hl, sp-$10                                 ; $6633: $F8 $F0
    ld d, $00                                     ; $6635: $16 $00
    ldh a, [$08]                                  ; $6637: $F0 $08
    dec d                                         ; $6639: $15
    nop                                           ; $663A: $00
    ldh a, [rP1]                                  ; $663B: $F0 $00
    inc d                                         ; $663D: $14
    nop                                           ; $663E: $00
    ldh a, [$F8]                                  ; $663F: $F0 $F8
    inc de                                        ; $6641: $13
    nop                                           ; $6642: $00
    ldh a, [$F0]                                  ; $6643: $F0 $F0
    ld [de], a                                    ; $6645: $12
    nop                                           ; $6646: $00
    add sp, -$08                                  ; $6647: $E8 $F8
    ld de, $8000                                  ; $6649: $11 $00 $80
    nop                                           ; $664C: $00
    ld [$0025], sp                                ; $664D: $08 $25 $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    inc h                                         ; $6652: $24
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    ld hl, sp+$23                                 ; $6655: $F8 $23
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    ldh a, [rNR43]                                ; $6659: $F0 $22
    nop                                           ; $665B: $00
    ld hl, sp+$08                                 ; $665C: $F8 $08
    ld hl, $F800                                  ; $665E: $21 $00 $F8
    nop                                           ; $6661: $00
    jr nz, jr_040_6664                            ; $6662: $20 $00

jr_040_6664:
    ld hl, sp-$08                                 ; $6664: $F8 $F8
    rra                                           ; $6666: $1F
    nop                                           ; $6667: $00
    ld hl, sp-$10                                 ; $6668: $F8 $F0
    ld e, $00                                     ; $666A: $1E $00
    ldh a, [rP1]                                  ; $666C: $F0 $00
    dec e                                         ; $666E: $1D
    nop                                           ; $666F: $00
    ldh a, [$F8]                                  ; $6670: $F0 $F8
    inc e                                         ; $6672: $1C
    nop                                           ; $6673: $00
    add b                                         ; $6674: $80
    nop                                           ; $6675: $00
    ld [$002B], sp                                ; $6676: $08 $2B $00
    nop                                           ; $6679: $00
    nop                                           ; $667A: $00
    ld a, [hl+]                                   ; $667B: $2A
    nop                                           ; $667C: $00
    nop                                           ; $667D: $00
    ld hl, sp+$29                                 ; $667E: $F8 $29
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    ldh a, [$28]                                  ; $6682: $F0 $28
    nop                                           ; $6684: $00
    ld hl, sp+$00                                 ; $6685: $F8 $00
    daa                                           ; $6687: $27
    nop                                           ; $6688: $00
    ld hl, sp-$08                                 ; $6689: $F8 $F8
    ld h, $00                                     ; $668B: $26 $00
    add b                                         ; $668D: $80
    nop                                           ; $668E: $00
    ld [$002F], sp                                ; $668F: $08 $2F $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    ld l, $00                                     ; $6694: $2E $00
    nop                                           ; $6696: $00
    ld hl, sp+$2D                                 ; $6697: $F8 $2D
    nop                                           ; $6699: $00
    nop                                           ; $669A: $00
    ldh a, [$2C]                                  ; $669B: $F0 $2C
    nop                                           ; $669D: $00
    add b                                         ; $669E: $80
    nop                                           ; $669F: $00
    ld hl, sp+$13                                 ; $66A0: $F8 $13
    ld b, d                                       ; $66A2: $42
    nop                                           ; $66A3: $00
    ldh a, [rNR12]                                ; $66A4: $F0 $12
    ld b, d                                       ; $66A6: $42
    nop                                           ; $66A7: $00
    add sp, $11                                   ; $66A8: $E8 $11
    ld b, d                                       ; $66AA: $42
    nop                                           ; $66AB: $00
    ldh [rNR10], a                                ; $66AC: $E0 $10
    ld b, d                                       ; $66AE: $42
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00
    inc de                                        ; $66B1: $13
    ld h, d                                       ; $66B2: $62
    nop                                           ; $66B3: $00
    ld [$6212], sp                                ; $66B4: $08 $12 $62
    nop                                           ; $66B7: $00
    db $10                                        ; $66B8: $10
    ld de, $0062                                  ; $66B9: $11 $62 $00
    jr jr_040_66CE                                ; $66BC: $18 $10

    ld h, d                                       ; $66BE: $62
    ld hl, sp+$00                                 ; $66BF: $F8 $00
    inc de                                        ; $66C1: $13
    ld [hl+], a                                   ; $66C2: $22
    ld hl, sp+$08                                 ; $66C3: $F8 $08
    ld [de], a                                    ; $66C5: $12
    ld [hl+], a                                   ; $66C6: $22
    ld hl, sp+$10                                 ; $66C7: $F8 $10
    ld de, $F822                                  ; $66C9: $11 $22 $F8
    jr jr_040_66DE                                ; $66CC: $18 $10

jr_040_66CE:
    ld [hl+], a                                   ; $66CE: $22
    ld hl, sp-$08                                 ; $66CF: $F8 $F8
    inc de                                        ; $66D1: $13
    ld [bc], a                                    ; $66D2: $02
    ld hl, sp-$10                                 ; $66D3: $F8 $F0
    ld [de], a                                    ; $66D5: $12
    ld [bc], a                                    ; $66D6: $02
    ld hl, sp-$18                                 ; $66D7: $F8 $E8
    ld de, $F802                                  ; $66D9: $11 $02 $F8
    ldh [rNR10], a                                ; $66DC: $E0 $10

jr_040_66DE:
    ld [bc], a                                    ; $66DE: $02
    ldh a, [$E8]                                  ; $66DF: $F0 $E8
    rrca                                          ; $66E1: $0F
    ld [bc], a                                    ; $66E2: $02
    ldh a, [$E0]                                  ; $66E3: $F0 $E0
    ld c, $02                                     ; $66E5: $0E $02
    add sp, -$18                                  ; $66E7: $E8 $E8
    dec c                                         ; $66E9: $0D
    ld [bc], a                                    ; $66EA: $02
    add sp, -$20                                  ; $66EB: $E8 $E0
    inc c                                         ; $66ED: $0C
    ld [bc], a                                    ; $66EE: $02
    ldh [rP1], a                                  ; $66EF: $E0 $00
    dec bc                                        ; $66F1: $0B
    ld [bc], a                                    ; $66F2: $02
    ldh [$F8], a                                  ; $66F3: $E0 $F8
    ld a, [bc]                                    ; $66F5: $0A
    ld [bc], a                                    ; $66F6: $02
    ldh [$E8], a                                  ; $66F7: $E0 $E8
    add hl, bc                                    ; $66F9: $09
    ld [bc], a                                    ; $66FA: $02
    ldh [$E0], a                                  ; $66FB: $E0 $E0
    ld [$D802], sp                                ; $66FD: $08 $02 $D8
    ld hl, sp+$07                                 ; $6700: $F8 $07
    ld [bc], a                                    ; $6702: $02
    ret c                                         ; $6703: $D8

    ldh a, [rTMA]                                 ; $6704: $F0 $06
    ld [bc], a                                    ; $6706: $02
    ret c                                         ; $6707: $D8

    add sp, $05                                   ; $6708: $E8 $05
    ld [bc], a                                    ; $670A: $02
    ret c                                         ; $670B: $D8

    ldh [rDIV], a                                 ; $670C: $E0 $04
    ld [bc], a                                    ; $670E: $02
    ret nc                                        ; $670F: $D0

    ldh a, [$03]                                  ; $6710: $F0 $03
    ld [bc], a                                    ; $6712: $02
    ret nc                                        ; $6713: $D0

    add sp, $02                                   ; $6714: $E8 $02
    ld [bc], a                                    ; $6716: $02
    ret nc                                        ; $6717: $D0

    ldh [rSB], a                                  ; $6718: $E0 $01
    ld [bc], a                                    ; $671A: $02
    ret z                                         ; $671B: $C8

    add sp, $00                                   ; $671C: $E8 $00
    ld [bc], a                                    ; $671E: $02
    add b                                         ; $671F: $80
    rst $38                                       ; $6720: $FF
    rst $38                                       ; $6721: $FF
    ld de, $FF06                                  ; $6722: $11 $06 $FF
    rst $30                                       ; $6725: $F7
    db $10                                        ; $6726: $10
    ld b, $F7                                     ; $6727: $06 $F7
    rst $38                                       ; $6729: $FF
    ld bc, $F706                                  ; $672A: $01 $06 $F7
    rst $30                                       ; $672D: $F7
    nop                                           ; $672E: $00
    ld b, $80                                     ; $672F: $06 $80
    nop                                           ; $6731: $00
    rst $38                                       ; $6732: $FF
    inc de                                        ; $6733: $13
    ld b, $00                                     ; $6734: $06 $00
    rst $30                                       ; $6736: $F7
    ld [de], a                                    ; $6737: $12
    ld b, $F8                                     ; $6738: $06 $F8
    rst $38                                       ; $673A: $FF
    inc bc                                        ; $673B: $03
    ld b, $F8                                     ; $673C: $06 $F8
    rst $30                                       ; $673E: $F7
    ld [bc], a                                    ; $673F: $02
    ld b, $80                                     ; $6740: $06 $80
    ld bc, $15FF                                  ; $6742: $01 $FF $15
    ld b, $01                                     ; $6745: $06 $01
    rst $30                                       ; $6747: $F7
    inc d                                         ; $6748: $14
    ld b, $F9                                     ; $6749: $06 $F9
    rst $38                                       ; $674B: $FF
    dec b                                         ; $674C: $05
    ld b, $F9                                     ; $674D: $06 $F9
    rst $30                                       ; $674F: $F7
    inc b                                         ; $6750: $04
    ld b, $80                                     ; $6751: $06 $80
    ld bc, $1700                                  ; $6753: $01 $00 $17
    ld b, $01                                     ; $6756: $06 $01
    ld hl, sp+$16                                 ; $6758: $F8 $16
    ld b, $F9                                     ; $675A: $06 $F9
    nop                                           ; $675C: $00
    rlca                                          ; $675D: $07
    ld b, $F9                                     ; $675E: $06 $F9
    ld hl, sp+$06                                 ; $6760: $F8 $06
    ld b, $80                                     ; $6762: $06 $80
    ld bc, $1901                                  ; $6764: $01 $01 $19
    ld b, $01                                     ; $6767: $06 $01
    ld sp, hl                                     ; $6769: $F9
    jr jr_040_6772                                ; $676A: $18 $06

    ld sp, hl                                     ; $676C: $F9
    ld bc, $0609                                  ; $676D: $01 $09 $06
    ld sp, hl                                     ; $6770: $F9
    ld sp, hl                                     ; $6771: $F9

jr_040_6772:
    ld [$8006], sp                                ; $6772: $08 $06 $80
    nop                                           ; $6775: $00
    ld bc, $061B                                  ; $6776: $01 $1B $06
    nop                                           ; $6779: $00
    ld sp, hl                                     ; $677A: $F9
    ld a, [de]                                    ; $677B: $1A
    ld b, $F8                                     ; $677C: $06 $F8
    ld bc, $060B                                  ; $677E: $01 $0B $06
    ld hl, sp-$07                                 ; $6781: $F8 $F9
    ld a, [bc]                                    ; $6783: $0A
    ld b, $80                                     ; $6784: $06 $80
    rst $38                                       ; $6786: $FF
    ld bc, $061D                                  ; $6787: $01 $1D $06
    rst $38                                       ; $678A: $FF
    ld sp, hl                                     ; $678B: $F9
    inc e                                         ; $678C: $1C
    ld b, $F7                                     ; $678D: $06 $F7
    ld bc, $060D                                  ; $678F: $01 $0D $06
    rst $30                                       ; $6792: $F7
    ld sp, hl                                     ; $6793: $F9
    inc c                                         ; $6794: $0C
    ld b, $80                                     ; $6795: $06 $80
    rst $38                                       ; $6797: $FF
    nop                                           ; $6798: $00
    rra                                           ; $6799: $1F
    ld b, $FF                                     ; $679A: $06 $FF
    ld hl, sp+$1E                                 ; $679C: $F8 $1E
    ld b, $F7                                     ; $679E: $06 $F7
    nop                                           ; $67A0: $00
    rrca                                          ; $67A1: $0F
    ld b, $F7                                     ; $67A2: $06 $F7
    ld hl, sp+$0E                                 ; $67A4: $F8 $0E

jr_040_67A6:
    ld b, $80                                     ; $67A6: $06 $80
    jr jr_040_67AA                                ; $67A8: $18 $00

jr_040_67AA:
    ld d, $06                                     ; $67AA: $16 $06
    jr jr_040_67A6                                ; $67AC: $18 $F8

    dec d                                         ; $67AE: $15
    ld b, $18                                     ; $67AF: $06 $18
    ldh a, [rNR14]                                ; $67B1: $F0 $14
    ld b, $18                                     ; $67B3: $06 $18
    add sp, $13                                   ; $67B5: $E8 $13
    ld b, $18                                     ; $67B7: $06 $18
    ldh [rNR12], a                                ; $67B9: $E0 $12
    ld b, $18                                     ; $67BB: $06 $18
    ret c                                         ; $67BD: $D8

    ld de, $1806                                  ; $67BE: $11 $06 $18
    ret nc                                        ; $67C1: $D0

    db $10                                        ; $67C2: $10
    ld b, $10                                     ; $67C3: $06 $10
    nop                                           ; $67C5: $00
    rrca                                          ; $67C6: $0F
    ld b, $10                                     ; $67C7: $06 $10
    ld hl, sp+$0E                                 ; $67C9: $F8 $0E
    ld b, $10                                     ; $67CB: $06 $10
    ldh a, [$0D]                                  ; $67CD: $F0 $0D
    ld b, $10                                     ; $67CF: $06 $10
    add sp, $0C                                   ; $67D1: $E8 $0C
    ld b, $10                                     ; $67D3: $06 $10
    ldh [$0B], a                                  ; $67D5: $E0 $0B
    ld b, $10                                     ; $67D7: $06 $10
    ret c                                         ; $67D9: $D8

    ld a, [bc]                                    ; $67DA: $0A
    ld b, $10                                     ; $67DB: $06 $10
    ret nc                                        ; $67DD: $D0

    add hl, bc                                    ; $67DE: $09
    ld b, $08                                     ; $67DF: $06 $08
    nop                                           ; $67E1: $00
    ld [$0806], sp                                ; $67E2: $08 $06 $08
    ld hl, sp+$07                                 ; $67E5: $F8 $07
    ld b, $08                                     ; $67E7: $06 $08
    ldh a, [rTMA]                                 ; $67E9: $F0 $06
    ld b, $00                                     ; $67EB: $06 $00
    ld [$0605], sp                                ; $67ED: $08 $05 $06
    nop                                           ; $67F0: $00
    nop                                           ; $67F1: $00
    inc b                                         ; $67F2: $04
    ld b, $00                                     ; $67F3: $06 $00
    ld hl, sp+$03                                 ; $67F5: $F8 $03
    ld b, $00                                     ; $67F7: $06 $00
    ldh a, [rSC]                                  ; $67F9: $F0 $02
    ld b, $F8                                     ; $67FB: $06 $F8
    nop                                           ; $67FD: $00
    ld bc, $F806                                  ; $67FE: $01 $06 $F8
    ld hl, sp+$00                                 ; $6801: $F8 $00
    ld b, $80                                     ; $6803: $06 $80
    jr @-$06                                      ; $6805: $18 $F8

    jr z, jr_040_680F                             ; $6807: $28 $06

    db $10                                        ; $6809: $10
    jr nz, jr_040_6833                            ; $680A: $20 $27

    ld b, $10                                     ; $680C: $06 $10
    nop                                           ; $680E: $00

jr_040_680F:
    ld h, $06                                     ; $680F: $26 $06
    db $10                                        ; $6811: $10
    ld hl, sp+$25                                 ; $6812: $F8 $25
    ld b, $08                                     ; $6814: $06 $08
    jr z, jr_040_683C                             ; $6816: $28 $24

    ld b, $08                                     ; $6818: $06 $08
    jr nz, @+$25                                  ; $681A: $20 $23

    ld b, $08                                     ; $681C: $06 $08
    jr jr_040_6842                                ; $681E: $18 $22

    ld b, $08                                     ; $6820: $06 $08
    nop                                           ; $6822: $00
    ld hl, $0806                                  ; $6823: $21 $06 $08
    ld hl, sp+$20                                 ; $6826: $F8 $20
    ld b, $00                                     ; $6828: $06 $00
    jr z, jr_040_684B                             ; $682A: $28 $1F

    ld b, $00                                     ; $682C: $06 $00
    jr nz, @+$20                                  ; $682E: $20 $1E

    ld b, $00                                     ; $6830: $06 $00
    db $10                                        ; $6832: $10

jr_040_6833:
    dec e                                         ; $6833: $1D
    ld b, $00                                     ; $6834: $06 $00
    ld [$061C], sp                                ; $6836: $08 $1C $06
    nop                                           ; $6839: $00
    nop                                           ; $683A: $00
    dec de                                        ; $683B: $1B

jr_040_683C:
    ld b, $F8                                     ; $683C: $06 $F8
    jr z, @+$1C                                   ; $683E: $28 $1A

    ld b, $F8                                     ; $6840: $06 $F8

jr_040_6842:
    nop                                           ; $6842: $00
    add hl, de                                    ; $6843: $19
    ld b, $80                                     ; $6844: $06 $80
    ld hl, sp+$28                                 ; $6846: $F8 $28
    ccf                                           ; $6848: $3F
    ld b, $F8                                     ; $6849: $06 $F8

jr_040_684B:
    jr nz, jr_040_688B                            ; $684B: $20 $3E

    ld b, $F8                                     ; $684D: $06 $F8
    jr jr_040_688E                                ; $684F: $18 $3D

    ld b, $F8                                     ; $6851: $06 $F8
    db $10                                        ; $6853: $10
    inc a                                         ; $6854: $3C
    ld b, $10                                     ; $6855: $06 $10
    ldh a, [$3B]                                  ; $6857: $F0 $3B
    ld b, $10                                     ; $6859: $06 $10
    add sp, $3A                                   ; $685B: $E8 $3A
    ld b, $10                                     ; $685D: $06 $10
    ldh [$39], a                                  ; $685F: $E0 $39
    ld b, $08                                     ; $6861: $06 $08
    ld [$0638], sp                                ; $6863: $08 $38 $06
    ld [$37F8], sp                                ; $6866: $08 $F8 $37
    ld b, $08                                     ; $6869: $06 $08
    ldh a, [$36]                                  ; $686B: $F0 $36
    ld b, $08                                     ; $686D: $06 $08
    add sp, $35                                   ; $686F: $E8 $35
    ld b, $08                                     ; $6871: $06 $08
    ldh [$34], a                                  ; $6873: $E0 $34
    ld b, $00                                     ; $6875: $06 $00
    ld [$0633], sp                                ; $6877: $08 $33 $06
    nop                                           ; $687A: $00
    nop                                           ; $687B: $00
    ld [hl-], a                                   ; $687C: $32
    ld b, $00                                     ; $687D: $06 $00
    ld hl, sp+$31                                 ; $687F: $F8 $31
    ld b, $00                                     ; $6881: $06 $00
    ldh a, [$30]                                  ; $6883: $F0 $30
    ld b, $00                                     ; $6885: $06 $00
    add sp, $2F                                   ; $6887: $E8 $2F
    ld b, $00                                     ; $6889: $06 $00

jr_040_688B:
    ret c                                         ; $688B: $D8

    ld l, $06                                     ; $688C: $2E $06

jr_040_688E:
    ld hl, sp+$00                                 ; $688E: $F8 $00
    dec l                                         ; $6890: $2D
    ld b, $F8                                     ; $6891: $06 $F8
    ld hl, sp+$2C                                 ; $6893: $F8 $2C
    ld b, $F8                                     ; $6895: $06 $F8
    ldh a, [$2B]                                  ; $6897: $F0 $2B
    ld b, $F8                                     ; $6899: $06 $F8
    add sp, $2A                                   ; $689B: $E8 $2A
    ld b, $F8                                     ; $689D: $06 $F8
    ldh [$29], a                                  ; $689F: $E0 $29
    ld b, $80                                     ; $68A1: $06 $80
    db $10                                        ; $68A3: $10
    ldh a, [$3B]                                  ; $68A4: $F0 $3B
    ld b, $10                                     ; $68A6: $06 $10
    add sp, $3A                                   ; $68A8: $E8 $3A
    ld b, $10                                     ; $68AA: $06 $10
    ldh [$39], a                                  ; $68AC: $E0 $39
    ld b, $08                                     ; $68AE: $06 $08
    ld [$0638], sp                                ; $68B0: $08 $38 $06
    ld [$37F8], sp                                ; $68B3: $08 $F8 $37
    ld b, $08                                     ; $68B6: $06 $08
    ldh a, [$36]                                  ; $68B8: $F0 $36
    ld b, $08                                     ; $68BA: $06 $08
    add sp, $35                                   ; $68BC: $E8 $35
    ld b, $08                                     ; $68BE: $06 $08
    ldh [$34], a                                  ; $68C0: $E0 $34
    ld b, $00                                     ; $68C2: $06 $00
    ld [$0633], sp                                ; $68C4: $08 $33 $06
    nop                                           ; $68C7: $00
    nop                                           ; $68C8: $00
    ld [hl-], a                                   ; $68C9: $32
    ld b, $00                                     ; $68CA: $06 $00
    ld hl, sp+$31                                 ; $68CC: $F8 $31
    ld b, $00                                     ; $68CE: $06 $00
    ldh a, [$30]                                  ; $68D0: $F0 $30
    ld b, $00                                     ; $68D2: $06 $00
    add sp, $2F                                   ; $68D4: $E8 $2F
    ld b, $00                                     ; $68D6: $06 $00
    ret c                                         ; $68D8: $D8

    ld l, $06                                     ; $68D9: $2E $06
    ld hl, sp+$00                                 ; $68DB: $F8 $00
    dec l                                         ; $68DD: $2D
    ld b, $F8                                     ; $68DE: $06 $F8
    ld hl, sp+$2C                                 ; $68E0: $F8 $2C
    ld b, $F8                                     ; $68E2: $06 $F8
    ldh a, [$2B]                                  ; $68E4: $F0 $2B
    ld b, $F8                                     ; $68E6: $06 $F8
    add sp, $2A                                   ; $68E8: $E8 $2A
    ld b, $F8                                     ; $68EA: $06 $F8
    ldh [$29], a                                  ; $68EC: $E0 $29
    ld b, $80                                     ; $68EE: $06 $80
    nop                                           ; $68F0: $00
    ldh a, [rTMA]                                 ; $68F1: $F0 $06
    inc b                                         ; $68F3: $04
    nop                                           ; $68F4: $00
    add sp, $05                                   ; $68F5: $E8 $05
    inc b                                         ; $68F7: $04
    nop                                           ; $68F8: $00
    ldh [rDIV], a                                 ; $68F9: $E0 $04
    inc b                                         ; $68FB: $04
    ld hl, sp-$10                                 ; $68FC: $F8 $F0
    inc bc                                        ; $68FE: $03
    inc b                                         ; $68FF: $04
    ld hl, sp-$20                                 ; $6900: $F8 $E0
    ld [bc], a                                    ; $6902: $02
    inc b                                         ; $6903: $04
    ldh a, [$F0]                                  ; $6904: $F0 $F0
    ld bc, $F004                                  ; $6906: $01 $04 $F0
    ldh [rP1], a                                  ; $6909: $E0 $00
    inc b                                         ; $690B: $04
    add b                                         ; $690C: $80
    add sp, -$18                                  ; $690D: $E8 $E8
    ld [$E804], sp                                ; $690F: $08 $04 $E8
    ldh [rTAC], a                                 ; $6912: $E0 $07
    inc b                                         ; $6914: $04
    ld [$18E8], sp                                ; $6915: $08 $E8 $18
    inc b                                         ; $6918: $04
    ld [$17E0], sp                                ; $6919: $08 $E0 $17
    inc b                                         ; $691C: $04
    nop                                           ; $691D: $00
    nop                                           ; $691E: $00
    ld d, $04                                     ; $691F: $16 $04
    nop                                           ; $6921: $00
    ld hl, sp+$15                                 ; $6922: $F8 $15
    inc b                                         ; $6924: $04
    nop                                           ; $6925: $00
    ldh a, [rNR14]                                ; $6926: $F0 $14
    inc b                                         ; $6928: $04
    nop                                           ; $6929: $00
    add sp, $13                                   ; $692A: $E8 $13
    inc b                                         ; $692C: $04
    ld hl, sp+$00                                 ; $692D: $F8 $00
    ld [de], a                                    ; $692F: $12
    inc b                                         ; $6930: $04
    ld hl, sp-$08                                 ; $6931: $F8 $F8
    ld de, $F804                                  ; $6933: $11 $04 $F8
    ldh a, [rNR10]                                ; $6936: $F0 $10
    inc b                                         ; $6938: $04
    ld hl, sp-$18                                 ; $6939: $F8 $E8
    rrca                                          ; $693B: $0F
    inc b                                         ; $693C: $04
    ld hl, sp-$20                                 ; $693D: $F8 $E0
    ld c, $04                                     ; $693F: $0E $04
    ldh a, [rP1]                                  ; $6941: $F0 $00
    dec c                                         ; $6943: $0D
    inc b                                         ; $6944: $04
    ldh a, [$F8]                                  ; $6945: $F0 $F8
    inc c                                         ; $6947: $0C
    inc b                                         ; $6948: $04
    ldh a, [$F0]                                  ; $6949: $F0 $F0
    dec bc                                        ; $694B: $0B
    inc b                                         ; $694C: $04
    ldh a, [$E8]                                  ; $694D: $F0 $E8
    ld a, [bc]                                    ; $694F: $0A
    inc b                                         ; $6950: $04
    ldh a, [$E0]                                  ; $6951: $F0 $E0
    add hl, bc                                    ; $6953: $09
    inc b                                         ; $6954: $04
    add b                                         ; $6955: $80
    db $10                                        ; $6956: $10
    ld hl, sp+$2D                                 ; $6957: $F8 $2D
    inc b                                         ; $6959: $04
    ld [$2C00], sp                                ; $695A: $08 $00 $2C
    inc b                                         ; $695D: $04
    ld [$2BF8], sp                                ; $695E: $08 $F8 $2B
    inc b                                         ; $6961: $04
    ld [$2AF0], sp                                ; $6962: $08 $F0 $2A
    inc b                                         ; $6965: $04
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    add hl, hl                                    ; $6968: $29
    inc b                                         ; $6969: $04
    nop                                           ; $696A: $00
    ld hl, sp+$28                                 ; $696B: $F8 $28
    inc b                                         ; $696D: $04
    nop                                           ; $696E: $00
    ldh a, [$27]                                  ; $696F: $F0 $27
    inc b                                         ; $6971: $04
    nop                                           ; $6972: $00
    add sp, $26                                   ; $6973: $E8 $26
    inc b                                         ; $6975: $04
    ld hl, sp+$00                                 ; $6976: $F8 $00
    dec h                                         ; $6978: $25
    inc b                                         ; $6979: $04
    ld hl, sp-$08                                 ; $697A: $F8 $F8
    inc h                                         ; $697C: $24
    inc b                                         ; $697D: $04
    ld hl, sp-$10                                 ; $697E: $F8 $F0
    inc hl                                        ; $6980: $23
    inc b                                         ; $6981: $04
    ld hl, sp-$18                                 ; $6982: $F8 $E8
    ld [hl+], a                                   ; $6984: $22
    inc b                                         ; $6985: $04
    ldh a, [rP1]                                  ; $6986: $F0 $00
    ld hl, $F004                                  ; $6988: $21 $04 $F0
    ld hl, sp+$20                                 ; $698B: $F8 $20
    inc b                                         ; $698D: $04
    ldh a, [$E8]                                  ; $698E: $F0 $E8
    rra                                           ; $6990: $1F
    inc b                                         ; $6991: $04
    ldh a, [$E0]                                  ; $6992: $F0 $E0
    ld e, $04                                     ; $6994: $1E $04
    add sp, $00                                   ; $6996: $E8 $00
    dec e                                         ; $6998: $1D
    inc b                                         ; $6999: $04
    add sp, -$08                                  ; $699A: $E8 $F8
    inc e                                         ; $699C: $1C
    inc b                                         ; $699D: $04
    add sp, -$10                                  ; $699E: $E8 $F0
    dec de                                        ; $69A0: $1B
    inc b                                         ; $69A1: $04
    add sp, -$18                                  ; $69A2: $E8 $E8
    ld a, [de]                                    ; $69A4: $1A
    inc b                                         ; $69A5: $04
    add sp, -$20                                  ; $69A6: $E8 $E0
    add hl, de                                    ; $69A8: $19
    inc b                                         ; $69A9: $04
    add b                                         ; $69AA: $80
    ld [$3800], sp                                ; $69AB: $08 $00 $38
    inc b                                         ; $69AE: $04
    ld [$37F8], sp                                ; $69AF: $08 $F8 $37
    inc b                                         ; $69B2: $04
    ld [$36F0], sp                                ; $69B3: $08 $F0 $36
    inc b                                         ; $69B6: $04
    nop                                           ; $69B7: $00
    nop                                           ; $69B8: $00
    dec [hl]                                      ; $69B9: $35
    inc b                                         ; $69BA: $04
    nop                                           ; $69BB: $00
    ld hl, sp+$34                                 ; $69BC: $F8 $34
    inc b                                         ; $69BE: $04
    ld hl, sp+$00                                 ; $69BF: $F8 $00
    inc sp                                        ; $69C1: $33
    inc b                                         ; $69C2: $04
    ld hl, sp-$08                                 ; $69C3: $F8 $F8
    ld [hl-], a                                   ; $69C5: $32
    inc b                                         ; $69C6: $04
    ldh a, [rP1]                                  ; $69C7: $F0 $00
    ld sp, $F004                                  ; $69C9: $31 $04 $F0
    ld hl, sp+$30                                 ; $69CC: $F8 $30
    inc b                                         ; $69CE: $04
    add sp, $00                                   ; $69CF: $E8 $00
    cpl                                           ; $69D1: $2F
    inc b                                         ; $69D2: $04
    add sp, -$08                                  ; $69D3: $E8 $F8
    ld l, $04                                     ; $69D5: $2E $04
    add b                                         ; $69D7: $80
    inc b                                         ; $69D8: $04
    nop                                           ; $69D9: $00
    ld a, $04                                     ; $69DA: $3E $04
    inc b                                         ; $69DC: $04
    ld hl, sp+$3D                                 ; $69DD: $F8 $3D
    inc b                                         ; $69DF: $04
    db $FC                                        ; $69E0: $FC
    nop                                           ; $69E1: $00
    inc a                                         ; $69E2: $3C
    inc b                                         ; $69E3: $04
    db $FC                                        ; $69E4: $FC
    ld hl, sp+$3B                                 ; $69E5: $F8 $3B
    inc b                                         ; $69E7: $04
    db $F4                                        ; $69E8: $F4
    nop                                           ; $69E9: $00
    ld a, [hl-]                                   ; $69EA: $3A
    inc b                                         ; $69EB: $04
    db $F4                                        ; $69EC: $F4
    ld hl, sp+$39                                 ; $69ED: $F8 $39
    inc b                                         ; $69EF: $04
    add b                                         ; $69F0: $80
    db $FC                                        ; $69F1: $FC
    db $FD                                        ; $69F2: $FD
    ccf                                           ; $69F3: $3F
    inc b                                         ; $69F4: $04
    add b                                         ; $69F5: $80
    db $FC                                        ; $69F6: $FC
    db $FC                                        ; $69F7: $FC
    nop                                           ; $69F8: $00
    rlca                                          ; $69F9: $07
    add b                                         ; $69FA: $80
    nop                                           ; $69FB: $00
    nop                                           ; $69FC: $00
    inc b                                         ; $69FD: $04
    rlca                                          ; $69FE: $07
    nop                                           ; $69FF: $00
    ld hl, sp+$03                                 ; $6A00: $F8 $03
    rlca                                          ; $6A02: $07
    ld hl, sp+$00                                 ; $6A03: $F8 $00
    ld [bc], a                                    ; $6A05: $02
    rlca                                          ; $6A06: $07
    ld hl, sp-$08                                 ; $6A07: $F8 $F8
    ld bc, $8007                                  ; $6A09: $01 $07 $80
    add sp, -$10                                  ; $6A0C: $E8 $F0
    ld bc, $E802                                  ; $6A0E: $01 $02 $E8
    add sp, $00                                   ; $6A11: $E8 $00
    ld [bc], a                                    ; $6A13: $02
    add b                                         ; $6A14: $80
    add sp, -$08                                  ; $6A15: $E8 $F8
    rlca                                          ; $6A17: $07
    ld [bc], a                                    ; $6A18: $02
    add sp, -$10                                  ; $6A19: $E8 $F0
    ld b, $02                                     ; $6A1B: $06 $02
    add sp, -$18                                  ; $6A1D: $E8 $E8
    dec b                                         ; $6A1F: $05
    ld [bc], a                                    ; $6A20: $02
    ldh [$F8], a                                  ; $6A21: $E0 $F8
    inc b                                         ; $6A23: $04
    ld [bc], a                                    ; $6A24: $02
    ldh [$F0], a                                  ; $6A25: $E0 $F0
    inc bc                                        ; $6A27: $03
    ld [bc], a                                    ; $6A28: $02
    ldh [$E8], a                                  ; $6A29: $E0 $E8
    ld [bc], a                                    ; $6A2B: $02
    ld [bc], a                                    ; $6A2C: $02
    add b                                         ; $6A2D: $80
    ld hl, sp-$08                                 ; $6A2E: $F8 $F8
    inc d                                         ; $6A30: $14
    ld [bc], a                                    ; $6A31: $02
    ld hl, sp-$10                                 ; $6A32: $F8 $F0
    inc de                                        ; $6A34: $13
    ld [bc], a                                    ; $6A35: $02
    ld hl, sp-$18                                 ; $6A36: $F8 $E8
    ld [de], a                                    ; $6A38: $12
    ld [bc], a                                    ; $6A39: $02
    ldh a, [rP1]                                  ; $6A3A: $F0 $00
    ld de, $F002                                  ; $6A3C: $11 $02 $F0
    ld hl, sp+$10                                 ; $6A3F: $F8 $10
    ld [bc], a                                    ; $6A41: $02
    add sp, $00                                   ; $6A42: $E8 $00
    rrca                                          ; $6A44: $0F
    ld [bc], a                                    ; $6A45: $02
    add sp, -$08                                  ; $6A46: $E8 $F8
    ld c, $02                                     ; $6A48: $0E $02
    add sp, -$10                                  ; $6A4A: $E8 $F0
    dec c                                         ; $6A4C: $0D
    ld [bc], a                                    ; $6A4D: $02
    add sp, -$18                                  ; $6A4E: $E8 $E8
    inc c                                         ; $6A50: $0C
    ld [bc], a                                    ; $6A51: $02
    ldh [rP1], a                                  ; $6A52: $E0 $00
    dec bc                                        ; $6A54: $0B
    ld [bc], a                                    ; $6A55: $02
    ldh [$F8], a                                  ; $6A56: $E0 $F8
    ld a, [bc]                                    ; $6A58: $0A
    ld [bc], a                                    ; $6A59: $02
    ldh [$F0], a                                  ; $6A5A: $E0 $F0
    add hl, bc                                    ; $6A5C: $09
    ld [bc], a                                    ; $6A5D: $02
    ldh [$E8], a                                  ; $6A5E: $E0 $E8
    ld [$8002], sp                                ; $6A60: $08 $02 $80
    ld hl, sp-$10                                 ; $6A63: $F8 $F0
    ld e, $02                                     ; $6A65: $1E $02
    ld hl, sp-$18                                 ; $6A67: $F8 $E8
    dec e                                         ; $6A69: $1D
    ld [bc], a                                    ; $6A6A: $02
    ldh a, [rP1]                                  ; $6A6B: $F0 $00
    inc e                                         ; $6A6D: $1C
    ld [bc], a                                    ; $6A6E: $02
    ldh a, [$F8]                                  ; $6A6F: $F0 $F8
    dec de                                        ; $6A71: $1B
    ld [bc], a                                    ; $6A72: $02
    add sp, $08                                   ; $6A73: $E8 $08
    ld a, [de]                                    ; $6A75: $1A
    ld [bc], a                                    ; $6A76: $02
    add sp, $00                                   ; $6A77: $E8 $00
    add hl, de                                    ; $6A79: $19
    ld [bc], a                                    ; $6A7A: $02
    ldh [$08], a                                  ; $6A7B: $E0 $08
    jr @+$04                                      ; $6A7D: $18 $02

    ret c                                         ; $6A7F: $D8

    ld [$0217], sp                                ; $6A80: $08 $17 $02
    ret c                                         ; $6A83: $D8

    nop                                           ; $6A84: $00
    ld d, $02                                     ; $6A85: $16 $02
    ret nc                                        ; $6A87: $D0

    ld hl, sp+$15                                 ; $6A88: $F8 $15
    ld [bc], a                                    ; $6A8A: $02
    add b                                         ; $6A8B: $80
    add b                                         ; $6A8C: $80
    jr nz, jr_040_6A8F                            ; $6A8D: $20 $00

jr_040_6A8F:
    ld [hl], $00                                  ; $6A8F: $36 $00
    jr jr_040_6A93                                ; $6A91: $18 $00

jr_040_6A93:
    dec [hl]                                      ; $6A93: $35
    nop                                           ; $6A94: $00
    jr jr_040_6A8F                                ; $6A95: $18 $F8

    inc [hl]                                      ; $6A97: $34
    nop                                           ; $6A98: $00
    db $10                                        ; $6A99: $10
    ld hl, sp+$33                                 ; $6A9A: $F8 $33
    nop                                           ; $6A9C: $00
    ld [$3200], sp                                ; $6A9D: $08 $00 $32
    nop                                           ; $6AA0: $00
    ld [$31F8], sp                                ; $6AA1: $08 $F8 $31
    nop                                           ; $6AA4: $00
    nop                                           ; $6AA5: $00
    nop                                           ; $6AA6: $00
    jr nc, jr_040_6AA9                            ; $6AA7: $30 $00

jr_040_6AA9:
    nop                                           ; $6AA9: $00
    ld hl, sp+$2F                                 ; $6AAA: $F8 $2F
    nop                                           ; $6AAC: $00
    ld hl, sp+$00                                 ; $6AAD: $F8 $00
    ld l, $00                                     ; $6AAF: $2E $00
    ld hl, sp-$08                                 ; $6AB1: $F8 $F8
    dec l                                         ; $6AB3: $2D
    nop                                           ; $6AB4: $00
    ldh a, [rP1]                                  ; $6AB5: $F0 $00
    inc l                                         ; $6AB7: $2C
    nop                                           ; $6AB8: $00
    ldh a, [$F8]                                  ; $6AB9: $F0 $F8
    dec hl                                        ; $6ABB: $2B
    nop                                           ; $6ABC: $00

jr_040_6ABD:
    add sp, $00                                   ; $6ABD: $E8 $00
    ld a, [hl+]                                   ; $6ABF: $2A
    nop                                           ; $6AC0: $00
    add sp, -$08                                  ; $6AC1: $E8 $F8
    add hl, hl                                    ; $6AC3: $29
    nop                                           ; $6AC4: $00
    ldh [rP1], a                                  ; $6AC5: $E0 $00
    jr z, jr_040_6AC9                             ; $6AC7: $28 $00

jr_040_6AC9:
    ret c                                         ; $6AC9: $D8

    db $10                                        ; $6ACA: $10
    daa                                           ; $6ACB: $27
    nop                                           ; $6ACC: $00
    ret nc                                        ; $6ACD: $D0

    db $10                                        ; $6ACE: $10
    ld h, $00                                     ; $6ACF: $26 $00
    add b                                         ; $6AD1: $80
    ld [$3720], a                                 ; $6AD2: $EA $20 $37
    jr nz, jr_040_6ABD                            ; $6AD5: $20 $E6

    db $10                                        ; $6AD7: $10
    scf                                           ; $6AD8: $37
    nop                                           ; $6AD9: $00
    jr z, jr_040_6AE4                             ; $6ADA: $28 $08

    dec h                                         ; $6ADC: $25
    nop                                           ; $6ADD: $00
    jr z, jr_040_6AE0                             ; $6ADE: $28 $00

jr_040_6AE0:
    inc h                                         ; $6AE0: $24
    nop                                           ; $6AE1: $00
    jr nz, jr_040_6AEC                            ; $6AE2: $20 $08

jr_040_6AE4:
    inc hl                                        ; $6AE4: $23
    nop                                           ; $6AE5: $00
    jr nz, jr_040_6AE8                            ; $6AE6: $20 $00

jr_040_6AE8:
    ld [hl+], a                                   ; $6AE8: $22
    nop                                           ; $6AE9: $00
    jr jr_040_6AF4                                ; $6AEA: $18 $08

jr_040_6AEC:
    ld hl, $1800                                  ; $6AEC: $21 $00 $18
    nop                                           ; $6AEF: $00
    jr nz, jr_040_6AF2                            ; $6AF0: $20 $00

jr_040_6AF2:
    jr jr_040_6AEC                                ; $6AF2: $18 $F8

jr_040_6AF4:
    rra                                           ; $6AF4: $1F
    nop                                           ; $6AF5: $00
    db $10                                        ; $6AF6: $10
    ld [$001E], sp                                ; $6AF7: $08 $1E $00
    stop                                          ; $6AFA: $10 $00
    dec e                                         ; $6AFC: $1D
    nop                                           ; $6AFD: $00
    db $10                                        ; $6AFE: $10
    ld hl, sp+$1C                                 ; $6AFF: $F8 $1C
    nop                                           ; $6B01: $00
    ld [$1B08], sp                                ; $6B02: $08 $08 $1B
    nop                                           ; $6B05: $00
    ld [$1A00], sp                                ; $6B06: $08 $00 $1A
    nop                                           ; $6B09: $00
    ld [$19F8], sp                                ; $6B0A: $08 $F8 $19
    nop                                           ; $6B0D: $00
    ld [$18F0], sp                                ; $6B0E: $08 $F0 $18
    nop                                           ; $6B11: $00
    nop                                           ; $6B12: $00
    ld [$0017], sp                                ; $6B13: $08 $17 $00
    nop                                           ; $6B16: $00
    nop                                           ; $6B17: $00
    ld d, $00                                     ; $6B18: $16 $00
    nop                                           ; $6B1A: $00
    ld hl, sp+$15                                 ; $6B1B: $F8 $15
    nop                                           ; $6B1D: $00
    nop                                           ; $6B1E: $00
    ldh a, [rNR14]                                ; $6B1F: $F0 $14
    nop                                           ; $6B21: $00
    ld hl, sp+$08                                 ; $6B22: $F8 $08
    inc de                                        ; $6B24: $13
    nop                                           ; $6B25: $00
    ld hl, sp+$00                                 ; $6B26: $F8 $00
    ld [de], a                                    ; $6B28: $12
    nop                                           ; $6B29: $00
    ld hl, sp-$08                                 ; $6B2A: $F8 $F8
    ld de, $F800                                  ; $6B2C: $11 $00 $F8
    ldh a, [rNR10]                                ; $6B2F: $F0 $10
    nop                                           ; $6B31: $00
    ldh a, [$08]                                  ; $6B32: $F0 $08
    rrca                                          ; $6B34: $0F
    nop                                           ; $6B35: $00
    ldh a, [rP1]                                  ; $6B36: $F0 $00
    ld c, $00                                     ; $6B38: $0E $00
    ldh a, [$F8]                                  ; $6B3A: $F0 $F8
    dec c                                         ; $6B3C: $0D
    nop                                           ; $6B3D: $00
    add sp, $10                                   ; $6B3E: $E8 $10
    inc c                                         ; $6B40: $0C
    nop                                           ; $6B41: $00
    add sp, $08                                   ; $6B42: $E8 $08
    dec bc                                        ; $6B44: $0B
    nop                                           ; $6B45: $00
    add sp, $00                                   ; $6B46: $E8 $00
    ld a, [bc]                                    ; $6B48: $0A
    nop                                           ; $6B49: $00
    ldh [rNR23], a                                ; $6B4A: $E0 $18
    add hl, bc                                    ; $6B4C: $09
    nop                                           ; $6B4D: $00
    ldh [rNR10], a                                ; $6B4E: $E0 $10
    ld [$E000], sp                                ; $6B50: $08 $00 $E0
    ld [$0007], sp                                ; $6B53: $08 $07 $00
    ldh [rP1], a                                  ; $6B56: $E0 $00
    ld b, $00                                     ; $6B58: $06 $00
    ldh [$F8], a                                  ; $6B5A: $E0 $F8
    dec b                                         ; $6B5C: $05
    nop                                           ; $6B5D: $00
    ret c                                         ; $6B5E: $D8

    jr jr_040_6B65                                ; $6B5F: $18 $04

    nop                                           ; $6B61: $00
    ret c                                         ; $6B62: $D8

    db $10                                        ; $6B63: $10
    inc bc                                        ; $6B64: $03

jr_040_6B65:
    nop                                           ; $6B65: $00
    ret c                                         ; $6B66: $D8

    nop                                           ; $6B67: $00
    ld [bc], a                                    ; $6B68: $02
    nop                                           ; $6B69: $00
    ret nc                                        ; $6B6A: $D0

    jr jr_040_6B6E                                ; $6B6B: $18 $01

    nop                                           ; $6B6D: $00

jr_040_6B6E:
    ret nc                                        ; $6B6E: $D0

    stop                                          ; $6B6F: $10 $00
    nop                                           ; $6B71: $00
    add b                                         ; $6B72: $80
    add sp, $20                                   ; $6B73: $E8 $20
    scf                                           ; $6B75: $37
    jr nz, @-$16                                  ; $6B76: $20 $E8

    db $10                                        ; $6B78: $10
    scf                                           ; $6B79: $37
    nop                                           ; $6B7A: $00
    jr z, jr_040_6B85                             ; $6B7B: $28 $08

    dec h                                         ; $6B7D: $25
    nop                                           ; $6B7E: $00
    jr z, jr_040_6B81                             ; $6B7F: $28 $00

jr_040_6B81:
    inc h                                         ; $6B81: $24
    nop                                           ; $6B82: $00
    jr nz, jr_040_6B8D                            ; $6B83: $20 $08

jr_040_6B85:
    inc hl                                        ; $6B85: $23
    nop                                           ; $6B86: $00
    jr nz, jr_040_6B89                            ; $6B87: $20 $00

jr_040_6B89:
    ld [hl+], a                                   ; $6B89: $22
    nop                                           ; $6B8A: $00
    jr jr_040_6B95                                ; $6B8B: $18 $08

jr_040_6B8D:
    ld hl, $1800                                  ; $6B8D: $21 $00 $18
    nop                                           ; $6B90: $00
    jr nz, jr_040_6B93                            ; $6B91: $20 $00

jr_040_6B93:
    jr jr_040_6B8D                                ; $6B93: $18 $F8

jr_040_6B95:
    rra                                           ; $6B95: $1F
    nop                                           ; $6B96: $00
    db $10                                        ; $6B97: $10
    ld [$001E], sp                                ; $6B98: $08 $1E $00
    stop                                          ; $6B9B: $10 $00
    dec e                                         ; $6B9D: $1D
    nop                                           ; $6B9E: $00
    db $10                                        ; $6B9F: $10
    ld hl, sp+$1C                                 ; $6BA0: $F8 $1C
    nop                                           ; $6BA2: $00
    ld [$1B08], sp                                ; $6BA3: $08 $08 $1B
    nop                                           ; $6BA6: $00
    ld [$1A00], sp                                ; $6BA7: $08 $00 $1A
    nop                                           ; $6BAA: $00
    ld [$19F8], sp                                ; $6BAB: $08 $F8 $19
    nop                                           ; $6BAE: $00
    ld [$18F0], sp                                ; $6BAF: $08 $F0 $18
    nop                                           ; $6BB2: $00
    nop                                           ; $6BB3: $00
    ld [$0017], sp                                ; $6BB4: $08 $17 $00
    nop                                           ; $6BB7: $00
    nop                                           ; $6BB8: $00
    ld d, $00                                     ; $6BB9: $16 $00
    nop                                           ; $6BBB: $00
    ld hl, sp+$15                                 ; $6BBC: $F8 $15
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00
    ldh a, [rNR14]                                ; $6BC0: $F0 $14
    nop                                           ; $6BC2: $00
    ld hl, sp+$08                                 ; $6BC3: $F8 $08
    inc de                                        ; $6BC5: $13
    nop                                           ; $6BC6: $00
    ld hl, sp+$00                                 ; $6BC7: $F8 $00
    ld [de], a                                    ; $6BC9: $12
    nop                                           ; $6BCA: $00
    ld hl, sp-$08                                 ; $6BCB: $F8 $F8
    ld de, $F800                                  ; $6BCD: $11 $00 $F8
    ldh a, [rNR10]                                ; $6BD0: $F0 $10
    nop                                           ; $6BD2: $00
    ldh a, [$08]                                  ; $6BD3: $F0 $08
    rrca                                          ; $6BD5: $0F
    nop                                           ; $6BD6: $00
    ldh a, [rP1]                                  ; $6BD7: $F0 $00
    ld c, $00                                     ; $6BD9: $0E $00
    ldh a, [$F8]                                  ; $6BDB: $F0 $F8
    dec c                                         ; $6BDD: $0D
    nop                                           ; $6BDE: $00
    add sp, $10                                   ; $6BDF: $E8 $10
    inc c                                         ; $6BE1: $0C
    nop                                           ; $6BE2: $00
    add sp, $08                                   ; $6BE3: $E8 $08
    dec bc                                        ; $6BE5: $0B
    nop                                           ; $6BE6: $00
    add sp, $00                                   ; $6BE7: $E8 $00
    ld a, [bc]                                    ; $6BE9: $0A
    nop                                           ; $6BEA: $00
    ldh [rNR23], a                                ; $6BEB: $E0 $18
    add hl, bc                                    ; $6BED: $09
    nop                                           ; $6BEE: $00
    ldh [rNR10], a                                ; $6BEF: $E0 $10
    ld [$E000], sp                                ; $6BF1: $08 $00 $E0
    ld [$0007], sp                                ; $6BF4: $08 $07 $00
    ldh [rP1], a                                  ; $6BF7: $E0 $00
    ld b, $00                                     ; $6BF9: $06 $00
    ldh [$F8], a                                  ; $6BFB: $E0 $F8
    dec b                                         ; $6BFD: $05
    nop                                           ; $6BFE: $00
    ret c                                         ; $6BFF: $D8

    jr jr_040_6C06                                ; $6C00: $18 $04

    nop                                           ; $6C02: $00
    ret c                                         ; $6C03: $D8

    db $10                                        ; $6C04: $10
    inc bc                                        ; $6C05: $03

jr_040_6C06:
    nop                                           ; $6C06: $00
    ret c                                         ; $6C07: $D8

    nop                                           ; $6C08: $00
    ld [bc], a                                    ; $6C09: $02
    nop                                           ; $6C0A: $00
    ret nc                                        ; $6C0B: $D0

    jr jr_040_6C0F                                ; $6C0C: $18 $01

    nop                                           ; $6C0E: $00

jr_040_6C0F:
    ret nc                                        ; $6C0F: $D0

    stop                                          ; $6C10: $10 $00
    nop                                           ; $6C12: $00
    add b                                         ; $6C13: $80
    ld [$3710], a                                 ; $6C14: $EA $10 $37
    nop                                           ; $6C17: $00
    and $20                                       ; $6C18: $E6 $20
    scf                                           ; $6C1A: $37
    jr nz, @+$2A                                  ; $6C1B: $20 $28

    ld [$0025], sp                                ; $6C1D: $08 $25 $00
    jr z, jr_040_6C22                             ; $6C20: $28 $00

jr_040_6C22:
    inc h                                         ; $6C22: $24
    nop                                           ; $6C23: $00
    jr nz, jr_040_6C2E                            ; $6C24: $20 $08

    inc hl                                        ; $6C26: $23
    nop                                           ; $6C27: $00
    jr nz, jr_040_6C2A                            ; $6C28: $20 $00

jr_040_6C2A:
    ld [hl+], a                                   ; $6C2A: $22
    nop                                           ; $6C2B: $00
    jr jr_040_6C36                                ; $6C2C: $18 $08

jr_040_6C2E:
    ld hl, $1800                                  ; $6C2E: $21 $00 $18
    nop                                           ; $6C31: $00
    jr nz, jr_040_6C34                            ; $6C32: $20 $00

jr_040_6C34:
    jr jr_040_6C2E                                ; $6C34: $18 $F8

jr_040_6C36:
    rra                                           ; $6C36: $1F
    nop                                           ; $6C37: $00
    db $10                                        ; $6C38: $10
    ld [$001E], sp                                ; $6C39: $08 $1E $00
    stop                                          ; $6C3C: $10 $00
    dec e                                         ; $6C3E: $1D
    nop                                           ; $6C3F: $00
    db $10                                        ; $6C40: $10
    ld hl, sp+$1C                                 ; $6C41: $F8 $1C
    nop                                           ; $6C43: $00
    ld [$1B08], sp                                ; $6C44: $08 $08 $1B
    nop                                           ; $6C47: $00
    ld [$1A00], sp                                ; $6C48: $08 $00 $1A
    nop                                           ; $6C4B: $00
    ld [$19F8], sp                                ; $6C4C: $08 $F8 $19
    nop                                           ; $6C4F: $00
    ld [$18F0], sp                                ; $6C50: $08 $F0 $18
    nop                                           ; $6C53: $00
    nop                                           ; $6C54: $00
    ld [$0017], sp                                ; $6C55: $08 $17 $00
    nop                                           ; $6C58: $00
    nop                                           ; $6C59: $00
    ld d, $00                                     ; $6C5A: $16 $00
    nop                                           ; $6C5C: $00
    ld hl, sp+$15                                 ; $6C5D: $F8 $15
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    ldh a, [rNR14]                                ; $6C61: $F0 $14
    nop                                           ; $6C63: $00
    ld hl, sp+$08                                 ; $6C64: $F8 $08
    inc de                                        ; $6C66: $13
    nop                                           ; $6C67: $00
    ld hl, sp+$00                                 ; $6C68: $F8 $00
    ld [de], a                                    ; $6C6A: $12
    nop                                           ; $6C6B: $00
    ld hl, sp-$08                                 ; $6C6C: $F8 $F8
    ld de, $F800                                  ; $6C6E: $11 $00 $F8
    ldh a, [rNR10]                                ; $6C71: $F0 $10
    nop                                           ; $6C73: $00
    ldh a, [$08]                                  ; $6C74: $F0 $08
    rrca                                          ; $6C76: $0F
    nop                                           ; $6C77: $00
    ldh a, [rP1]                                  ; $6C78: $F0 $00
    ld c, $00                                     ; $6C7A: $0E $00
    ldh a, [$F8]                                  ; $6C7C: $F0 $F8
    dec c                                         ; $6C7E: $0D
    nop                                           ; $6C7F: $00
    add sp, $10                                   ; $6C80: $E8 $10
    inc c                                         ; $6C82: $0C
    nop                                           ; $6C83: $00
    add sp, $08                                   ; $6C84: $E8 $08
    dec bc                                        ; $6C86: $0B
    nop                                           ; $6C87: $00
    add sp, $00                                   ; $6C88: $E8 $00
    ld a, [bc]                                    ; $6C8A: $0A
    nop                                           ; $6C8B: $00
    ldh [rNR23], a                                ; $6C8C: $E0 $18
    add hl, bc                                    ; $6C8E: $09
    nop                                           ; $6C8F: $00
    ldh [rNR10], a                                ; $6C90: $E0 $10
    ld [$E000], sp                                ; $6C92: $08 $00 $E0
    ld [$0007], sp                                ; $6C95: $08 $07 $00
    ldh [rP1], a                                  ; $6C98: $E0 $00
    ld b, $00                                     ; $6C9A: $06 $00
    ldh [$F8], a                                  ; $6C9C: $E0 $F8
    dec b                                         ; $6C9E: $05
    nop                                           ; $6C9F: $00
    ret c                                         ; $6CA0: $D8

    jr jr_040_6CA7                                ; $6CA1: $18 $04

    nop                                           ; $6CA3: $00
    ret c                                         ; $6CA4: $D8

    db $10                                        ; $6CA5: $10
    inc bc                                        ; $6CA6: $03

jr_040_6CA7:
    nop                                           ; $6CA7: $00
    ret c                                         ; $6CA8: $D8

    nop                                           ; $6CA9: $00
    ld [bc], a                                    ; $6CAA: $02
    nop                                           ; $6CAB: $00
    ret nc                                        ; $6CAC: $D0

    jr jr_040_6CB0                                ; $6CAD: $18 $01

    nop                                           ; $6CAF: $00

jr_040_6CB0:
    ret nc                                        ; $6CB0: $D0

    stop                                          ; $6CB1: $10 $00
    nop                                           ; $6CB3: $00
    add b                                         ; $6CB4: $80
    inc b                                         ; $6CB5: $04
    ld hl, sp+$03                                 ; $6CB6: $F8 $03
    ld bc, $F8FC                                  ; $6CB8: $01 $FC $F8
    ld [bc], a                                    ; $6CBB: $02
    ld bc, $00F4                                  ; $6CBC: $01 $F4 $00
    ld bc, $F401                                  ; $6CBF: $01 $01 $F4
    ld hl, sp+$00                                 ; $6CC2: $F8 $00
    ld bc, $0480                                  ; $6CC4: $01 $80 $04
    nop                                           ; $6CC7: $00
    add hl, bc                                    ; $6CC8: $09
    ld bc, $F804                                  ; $6CC9: $01 $04 $F8
    ld [$FC01], sp                                ; $6CCC: $08 $01 $FC
    nop                                           ; $6CCF: $00
    rlca                                          ; $6CD0: $07
    ld bc, $F8FC                                  ; $6CD1: $01 $FC $F8
    ld b, $01                                     ; $6CD4: $06 $01
    db $F4                                        ; $6CD6: $F4
    nop                                           ; $6CD7: $00
    dec b                                         ; $6CD8: $05
    ld bc, $F8F4                                  ; $6CD9: $01 $F4 $F8
    inc b                                         ; $6CDC: $04
    ld bc, $0080                                  ; $6CDD: $01 $80 $00
    nop                                           ; $6CE0: $00
    dec c                                         ; $6CE1: $0D
    ld bc, $F800                                  ; $6CE2: $01 $00 $F8
    inc c                                         ; $6CE5: $0C
    ld bc, $00F8                                  ; $6CE6: $01 $F8 $00
    dec bc                                        ; $6CE9: $0B
    ld bc, $F8F8                                  ; $6CEA: $01 $F8 $F8
    ld a, [bc]                                    ; $6CED: $0A
    ld bc, $0080                                  ; $6CEE: $01 $80 $00
    ld [$000B], sp                                ; $6CF1: $08 $0B $00
    nop                                           ; $6CF4: $00
    nop                                           ; $6CF5: $00
    ld a, [bc]                                    ; $6CF6: $0A
    nop                                           ; $6CF7: $00
    nop                                           ; $6CF8: $00
    ld hl, sp+$09                                 ; $6CF9: $F8 $09
    nop                                           ; $6CFB: $00
    nop                                           ; $6CFC: $00
    ldh a, [$08]                                  ; $6CFD: $F0 $08
    nop                                           ; $6CFF: $00
    ld hl, sp+$08                                 ; $6D00: $F8 $08
    rlca                                          ; $6D02: $07
    nop                                           ; $6D03: $00
    ld hl, sp+$00                                 ; $6D04: $F8 $00
    ld b, $00                                     ; $6D06: $06 $00
    ld hl, sp-$08                                 ; $6D08: $F8 $F8
    dec b                                         ; $6D0A: $05
    nop                                           ; $6D0B: $00
    ld hl, sp-$10                                 ; $6D0C: $F8 $F0
    inc b                                         ; $6D0E: $04
    nop                                           ; $6D0F: $00
    ldh a, [$08]                                  ; $6D10: $F0 $08
    inc bc                                        ; $6D12: $03
    nop                                           ; $6D13: $00
    ldh a, [rP1]                                  ; $6D14: $F0 $00
    ld [bc], a                                    ; $6D16: $02
    nop                                           ; $6D17: $00
    ldh a, [$F8]                                  ; $6D18: $F0 $F8
    ld bc, $F000                                  ; $6D1A: $01 $00 $F0
    ldh a, [rP1]                                  ; $6D1D: $F0 $00
    nop                                           ; $6D1F: $00
    add b                                         ; $6D20: $80
    ld [$0B08], sp                                ; $6D21: $08 $08 $0B
    inc b                                         ; $6D24: $04
    ld [$0A00], sp                                ; $6D25: $08 $00 $0A
    inc b                                         ; $6D28: $04
    ld [$09F8], sp                                ; $6D29: $08 $F8 $09
    inc b                                         ; $6D2C: $04
    ld [$08F0], sp                                ; $6D2D: $08 $F0 $08
    inc b                                         ; $6D30: $04
    ld [$07E8], sp                                ; $6D31: $08 $E8 $07
    inc b                                         ; $6D34: $04
    nop                                           ; $6D35: $00
    db $10                                        ; $6D36: $10
    ld b, $04                                     ; $6D37: $06 $04
    nop                                           ; $6D39: $00
    ld [$0405], sp                                ; $6D3A: $08 $05 $04
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    inc b                                         ; $6D3F: $04
    inc b                                         ; $6D40: $04
    ld hl, sp+$10                                 ; $6D41: $F8 $10
    inc bc                                        ; $6D43: $03
    inc b                                         ; $6D44: $04
    ld hl, sp+$08                                 ; $6D45: $F8 $08
    ld [bc], a                                    ; $6D47: $02
    inc b                                         ; $6D48: $04
    ld hl, sp+$00                                 ; $6D49: $F8 $00
    ld bc, $E804                                  ; $6D4B: $01 $04 $E8
    ldh a, [rP1]                                  ; $6D4E: $F0 $00
    inc b                                         ; $6D50: $04
    add b                                         ; $6D51: $80
    ldh a, [rLCDC]                                ; $6D52: $F0 $40
    ld d, $04                                     ; $6D54: $16 $04
    nop                                           ; $6D56: $00
    db $10                                        ; $6D57: $10
    dec d                                         ; $6D58: $15
    inc b                                         ; $6D59: $04
    nop                                           ; $6D5A: $00
    ld [$0414], sp                                ; $6D5B: $08 $14 $04
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    inc de                                        ; $6D60: $13
    inc b                                         ; $6D61: $04
    nop                                           ; $6D62: $00
    ld hl, sp+$12                                 ; $6D63: $F8 $12
    inc b                                         ; $6D65: $04
    nop                                           ; $6D66: $00
    ldh a, [rNR11]                                ; $6D67: $F0 $11
    inc b                                         ; $6D69: $04
    ld hl, sp+$10                                 ; $6D6A: $F8 $10
    db $10                                        ; $6D6C: $10
    inc b                                         ; $6D6D: $04
    ld hl, sp+$08                                 ; $6D6E: $F8 $08
    rrca                                          ; $6D70: $0F
    inc b                                         ; $6D71: $04
    ld hl, sp+$00                                 ; $6D72: $F8 $00
    ld c, $04                                     ; $6D74: $0E $04
    ld hl, sp-$08                                 ; $6D76: $F8 $F8
    dec c                                         ; $6D78: $0D
    inc b                                         ; $6D79: $04
    ld hl, sp-$10                                 ; $6D7A: $F8 $F0
    inc c                                         ; $6D7C: $0C
    inc b                                         ; $6D7D: $04
    add b                                         ; $6D7E: $80
    db $FC                                        ; $6D7F: $FC
    db $10                                        ; $6D80: $10
    jr jr_040_6D87                                ; $6D81: $18 $04

    db $FC                                        ; $6D83: $FC
    ld [$0417], sp                                ; $6D84: $08 $17 $04

jr_040_6D87:
    add b                                         ; $6D87: $80
    ld [$0A10], sp                                ; $6D88: $08 $10 $0A
    inc bc                                        ; $6D8B: $03
    ld [$0908], sp                                ; $6D8C: $08 $08 $09
    inc bc                                        ; $6D8F: $03
    ld [$0800], sp                                ; $6D90: $08 $00 $08
    inc bc                                        ; $6D93: $03
    ld [$07F8], sp                                ; $6D94: $08 $F8 $07
    inc bc                                        ; $6D97: $03
    ld [$06E8], sp                                ; $6D98: $08 $E8 $06
    inc bc                                        ; $6D9B: $03
    ld [$05E0], sp                                ; $6D9C: $08 $E0 $05
    inc bc                                        ; $6D9F: $03
    nop                                           ; $6DA0: $00
    ld hl, sp+$04                                 ; $6DA1: $F8 $04
    inc bc                                        ; $6DA3: $03
    nop                                           ; $6DA4: $00
    ldh a, [$03]                                  ; $6DA5: $F0 $03
    inc bc                                        ; $6DA7: $03
    nop                                           ; $6DA8: $00
    add sp, $02                                   ; $6DA9: $E8 $02
    inc bc                                        ; $6DAB: $03
    ld hl, sp-$08                                 ; $6DAC: $F8 $F8
    ld bc, $F803                                  ; $6DAE: $01 $03 $F8
    ldh a, [rP1]                                  ; $6DB1: $F0 $00
    inc bc                                        ; $6DB3: $03
    add b                                         ; $6DB4: $80
    ld [$1710], sp                                ; $6DB5: $08 $10 $17
    inc bc                                        ; $6DB8: $03
    ld [$1608], sp                                ; $6DB9: $08 $08 $16
    inc bc                                        ; $6DBC: $03
    ld [$1500], sp                                ; $6DBD: $08 $00 $15
    inc bc                                        ; $6DC0: $03
    ld [$14E8], sp                                ; $6DC1: $08 $E8 $14
    inc bc                                        ; $6DC4: $03
    ld [$13E0], sp                                ; $6DC5: $08 $E0 $13
    inc bc                                        ; $6DC8: $03
    nop                                           ; $6DC9: $00
    nop                                           ; $6DCA: $00
    ld [de], a                                    ; $6DCB: $12
    inc bc                                        ; $6DCC: $03
    nop                                           ; $6DCD: $00
    ldh a, [rNR11]                                ; $6DCE: $F0 $11
    inc bc                                        ; $6DD0: $03
    ld hl, sp+$00                                 ; $6DD1: $F8 $00
    db $10                                        ; $6DD3: $10
    inc bc                                        ; $6DD4: $03
    ld hl, sp-$08                                 ; $6DD5: $F8 $F8
    rrca                                          ; $6DD7: $0F
    inc bc                                        ; $6DD8: $03
    ld hl, sp-$10                                 ; $6DD9: $F8 $F0
    ld c, $03                                     ; $6DDB: $0E $03
    ldh a, [rP1]                                  ; $6DDD: $F0 $00
    dec c                                         ; $6DDF: $0D
    inc bc                                        ; $6DE0: $03
    ldh a, [$F8]                                  ; $6DE1: $F0 $F8
    inc c                                         ; $6DE3: $0C
    inc bc                                        ; $6DE4: $03
    ldh a, [$F0]                                  ; $6DE5: $F0 $F0
    dec bc                                        ; $6DE7: $0B
    inc bc                                        ; $6DE8: $03
    add b                                         ; $6DE9: $80
    ld [$2610], sp                                ; $6DEA: $08 $10 $26
    inc bc                                        ; $6DED: $03
    ld [$2508], sp                                ; $6DEE: $08 $08 $25
    inc bc                                        ; $6DF1: $03
    ld [$24E8], sp                                ; $6DF2: $08 $E8 $24
    inc bc                                        ; $6DF5: $03
    ld [$23E0], sp                                ; $6DF6: $08 $E0 $23
    inc bc                                        ; $6DF9: $03
    nop                                           ; $6DFA: $00
    ld [$0322], sp                                ; $6DFB: $08 $22 $03
    nop                                           ; $6DFE: $00
    nop                                           ; $6DFF: $00
    ld hl, $0003                                  ; $6E00: $21 $03 $00
    ldh a, [rNR41]                                ; $6E03: $F0 $20
    inc bc                                        ; $6E05: $03
    ld hl, sp+$08                                 ; $6E06: $F8 $08
    rra                                           ; $6E08: $1F
    inc bc                                        ; $6E09: $03
    ld hl, sp+$00                                 ; $6E0A: $F8 $00
    ld e, $03                                     ; $6E0C: $1E $03
    ld hl, sp-$08                                 ; $6E0E: $F8 $F8
    dec e                                         ; $6E10: $1D
    inc bc                                        ; $6E11: $03
    ld hl, sp-$10                                 ; $6E12: $F8 $F0
    inc e                                         ; $6E14: $1C
    inc bc                                        ; $6E15: $03
    ldh a, [$08]                                  ; $6E16: $F0 $08
    dec de                                        ; $6E18: $1B
    inc bc                                        ; $6E19: $03
    ldh a, [rP1]                                  ; $6E1A: $F0 $00
    ld a, [de]                                    ; $6E1C: $1A
    inc bc                                        ; $6E1D: $03
    ldh a, [$F8]                                  ; $6E1E: $F0 $F8
    add hl, de                                    ; $6E20: $19
    inc bc                                        ; $6E21: $03
    add sp, $00                                   ; $6E22: $E8 $00
    jr @+$05                                      ; $6E24: $18 $03

    add b                                         ; $6E26: $80
    ld [$3410], sp                                ; $6E27: $08 $10 $34
    inc bc                                        ; $6E2A: $03
    ld [$3308], sp                                ; $6E2B: $08 $08 $33
    inc bc                                        ; $6E2E: $03
    ld [$32F0], sp                                ; $6E2F: $08 $F0 $32
    inc bc                                        ; $6E32: $03
    ld [$31E8], sp                                ; $6E33: $08 $E8 $31
    inc bc                                        ; $6E36: $03
    ld [$30E0], sp                                ; $6E37: $08 $E0 $30
    inc bc                                        ; $6E3A: $03
    nop                                           ; $6E3B: $00
    ld [$032F], sp                                ; $6E3C: $08 $2F $03
    nop                                           ; $6E3F: $00
    nop                                           ; $6E40: $00
    ld l, $03                                     ; $6E41: $2E $03
    nop                                           ; $6E43: $00
    ld hl, sp+$2D                                 ; $6E44: $F8 $2D
    inc bc                                        ; $6E46: $03
    nop                                           ; $6E47: $00
    ldh a, [$2C]                                  ; $6E48: $F0 $2C
    inc bc                                        ; $6E4A: $03
    ld hl, sp+$08                                 ; $6E4B: $F8 $08
    dec hl                                        ; $6E4D: $2B
    inc bc                                        ; $6E4E: $03
    ld hl, sp+$00                                 ; $6E4F: $F8 $00
    ld a, [hl+]                                   ; $6E51: $2A
    inc bc                                        ; $6E52: $03
    ld hl, sp-$08                                 ; $6E53: $F8 $F8
    add hl, hl                                    ; $6E55: $29
    inc bc                                        ; $6E56: $03
    ldh a, [$08]                                  ; $6E57: $F0 $08
    jr z, jr_040_6E5E                             ; $6E59: $28 $03

    ldh a, [rP1]                                  ; $6E5B: $F0 $00
    daa                                           ; $6E5D: $27

jr_040_6E5E:
    inc bc                                        ; $6E5E: $03
    add b                                         ; $6E5F: $80
    ld [$3B10], sp                                ; $6E60: $08 $10 $3B
    inc bc                                        ; $6E63: $03
    ld [$3A00], sp                                ; $6E64: $08 $00 $3A
    inc bc                                        ; $6E67: $03
    ld [$39F8], sp                                ; $6E68: $08 $F8 $39
    inc bc                                        ; $6E6B: $03
    ld [$38F0], sp                                ; $6E6C: $08 $F0 $38
    inc bc                                        ; $6E6F: $03
    ld [$37E8], sp                                ; $6E70: $08 $E8 $37
    inc bc                                        ; $6E73: $03
    ld [$36E0], sp                                ; $6E74: $08 $E0 $36
    inc bc                                        ; $6E77: $03
    nop                                           ; $6E78: $00
    ld [$0335], sp                                ; $6E79: $08 $35 $03
    add b                                         ; $6E7C: $80
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    dec c                                         ; $6E7F: $0D
    inc h                                         ; $6E80: $24
    nop                                           ; $6E81: $00
    ld [$240C], sp                                ; $6E82: $08 $0C $24
    nop                                           ; $6E85: $00
    db $10                                        ; $6E86: $10
    dec bc                                        ; $6E87: $0B
    inc h                                         ; $6E88: $24
    ld hl, sp+$00                                 ; $6E89: $F8 $00
    ld a, [bc]                                    ; $6E8B: $0A
    inc h                                         ; $6E8C: $24
    ld hl, sp+$08                                 ; $6E8D: $F8 $08
    add hl, bc                                    ; $6E8F: $09
    inc h                                         ; $6E90: $24
    ld hl, sp+$10                                 ; $6E91: $F8 $10
    ld [$F024], sp                                ; $6E93: $08 $24 $F0
    nop                                           ; $6E96: $00
    rlca                                          ; $6E97: $07
    inc h                                         ; $6E98: $24
    ldh a, [$08]                                  ; $6E99: $F0 $08
    ld b, $24                                     ; $6E9B: $06 $24
    ldh a, [rNR10]                                ; $6E9D: $F0 $10
    dec b                                         ; $6E9F: $05
    inc h                                         ; $6EA0: $24
    add sp, $00                                   ; $6EA1: $E8 $00
    inc b                                         ; $6EA3: $04
    inc h                                         ; $6EA4: $24
    add sp, $08                                   ; $6EA5: $E8 $08
    inc bc                                        ; $6EA7: $03
    inc h                                         ; $6EA8: $24
    add sp, $10                                   ; $6EA9: $E8 $10
    ld [bc], a                                    ; $6EAB: $02
    inc h                                         ; $6EAC: $24
    ldh [rP1], a                                  ; $6EAD: $E0 $00
    ld bc, $E024                                  ; $6EAF: $01 $24 $E0
    ld [$2400], sp                                ; $6EB2: $08 $00 $24
    nop                                           ; $6EB5: $00
    ld hl, sp+$0D                                 ; $6EB6: $F8 $0D
    inc b                                         ; $6EB8: $04
    nop                                           ; $6EB9: $00
    ldh a, [$0C]                                  ; $6EBA: $F0 $0C
    inc b                                         ; $6EBC: $04
    nop                                           ; $6EBD: $00
    add sp, $0B                                   ; $6EBE: $E8 $0B
    inc b                                         ; $6EC0: $04
    ld hl, sp-$08                                 ; $6EC1: $F8 $F8
    ld a, [bc]                                    ; $6EC3: $0A
    inc b                                         ; $6EC4: $04
    ld hl, sp-$10                                 ; $6EC5: $F8 $F0
    add hl, bc                                    ; $6EC7: $09
    inc b                                         ; $6EC8: $04
    ld hl, sp-$18                                 ; $6EC9: $F8 $E8
    ld [$F004], sp                                ; $6ECB: $08 $04 $F0
    ld hl, sp+$07                                 ; $6ECE: $F8 $07
    inc b                                         ; $6ED0: $04
    ldh a, [$F0]                                  ; $6ED1: $F0 $F0
    ld b, $04                                     ; $6ED3: $06 $04
    ldh a, [$E8]                                  ; $6ED5: $F0 $E8
    dec b                                         ; $6ED7: $05
    inc b                                         ; $6ED8: $04
    add sp, -$08                                  ; $6ED9: $E8 $F8
    inc b                                         ; $6EDB: $04
    inc b                                         ; $6EDC: $04
    add sp, -$10                                  ; $6EDD: $E8 $F0
    inc bc                                        ; $6EDF: $03
    inc b                                         ; $6EE0: $04
    add sp, -$18                                  ; $6EE1: $E8 $E8
    ld [bc], a                                    ; $6EE3: $02
    inc b                                         ; $6EE4: $04
    ldh [$F8], a                                  ; $6EE5: $E0 $F8
    ld bc, $E004                                  ; $6EE7: $01 $04 $E0
    ldh a, [rP1]                                  ; $6EEA: $F0 $00
    inc b                                         ; $6EEC: $04
    add b                                         ; $6EED: $80
    add sp, -$18                                  ; $6EEE: $E8 $E8
    rrca                                          ; $6EF0: $0F
    inc b                                         ; $6EF1: $04
    ldh [$F8], a                                  ; $6EF2: $E0 $F8
    ld c, $04                                     ; $6EF4: $0E $04
    nop                                           ; $6EF6: $00
    ld hl, sp+$1A                                 ; $6EF7: $F8 $1A
    inc b                                         ; $6EF9: $04
    nop                                           ; $6EFA: $00
    ldh a, [rNR24]                                ; $6EFB: $F0 $19
    inc b                                         ; $6EFD: $04
    nop                                           ; $6EFE: $00
    add sp, $18                                   ; $6EFF: $E8 $18
    inc b                                         ; $6F01: $04
    ld hl, sp-$08                                 ; $6F02: $F8 $F8
    rla                                           ; $6F04: $17
    inc b                                         ; $6F05: $04
    ld hl, sp-$10                                 ; $6F06: $F8 $F0
    ld d, $04                                     ; $6F08: $16 $04
    ld hl, sp-$18                                 ; $6F0A: $F8 $E8
    dec d                                         ; $6F0C: $15
    inc b                                         ; $6F0D: $04
    ldh a, [$F8]                                  ; $6F0E: $F0 $F8
    inc d                                         ; $6F10: $14
    inc b                                         ; $6F11: $04
    ldh a, [$F0]                                  ; $6F12: $F0 $F0
    inc de                                        ; $6F14: $13
    inc b                                         ; $6F15: $04
    ldh a, [$E8]                                  ; $6F16: $F0 $E8
    ld [de], a                                    ; $6F18: $12
    inc b                                         ; $6F19: $04
    add sp, -$08                                  ; $6F1A: $E8 $F8
    ld de, $E804                                  ; $6F1C: $11 $04 $E8
    ldh a, [rNR10]                                ; $6F1F: $F0 $10
    inc b                                         ; $6F21: $04
    nop                                           ; $6F22: $00
    nop                                           ; $6F23: $00
    ld a, [de]                                    ; $6F24: $1A
    inc h                                         ; $6F25: $24
    nop                                           ; $6F26: $00
    ld [$2419], sp                                ; $6F27: $08 $19 $24
    nop                                           ; $6F2A: $00
    db $10                                        ; $6F2B: $10
    jr jr_040_6F52                                ; $6F2C: $18 $24

    ld hl, sp+$00                                 ; $6F2E: $F8 $00
    rla                                           ; $6F30: $17
    inc h                                         ; $6F31: $24
    ld hl, sp+$08                                 ; $6F32: $F8 $08
    ld d, $24                                     ; $6F34: $16 $24
    ld hl, sp+$10                                 ; $6F36: $F8 $10
    dec d                                         ; $6F38: $15
    inc h                                         ; $6F39: $24
    ldh a, [rP1]                                  ; $6F3A: $F0 $00
    inc d                                         ; $6F3C: $14
    inc h                                         ; $6F3D: $24
    ldh a, [$08]                                  ; $6F3E: $F0 $08
    inc de                                        ; $6F40: $13
    inc h                                         ; $6F41: $24
    ldh a, [rNR10]                                ; $6F42: $F0 $10
    ld [de], a                                    ; $6F44: $12
    inc h                                         ; $6F45: $24
    add sp, $00                                   ; $6F46: $E8 $00
    ld de, $E824                                  ; $6F48: $11 $24 $E8
    ld [$2410], sp                                ; $6F4B: $08 $10 $24
    add sp, $10                                   ; $6F4E: $E8 $10
    rrca                                          ; $6F50: $0F
    inc h                                         ; $6F51: $24

jr_040_6F52:
    ldh [rP1], a                                  ; $6F52: $E0 $00
    ld c, $24                                     ; $6F54: $0E $24
    add b                                         ; $6F56: $80
    ldh a, [$E8]                                  ; $6F57: $F0 $E8
    cpl                                           ; $6F59: $2F
    inc b                                         ; $6F5A: $04
    nop                                           ; $6F5B: $00
    ld hl, sp+$37                                 ; $6F5C: $F8 $37
    inc b                                         ; $6F5E: $04
    nop                                           ; $6F5F: $00
    ldh a, [$36]                                  ; $6F60: $F0 $36
    inc b                                         ; $6F62: $04
    nop                                           ; $6F63: $00
    add sp, $35                                   ; $6F64: $E8 $35
    inc b                                         ; $6F66: $04
    ld hl, sp-$08                                 ; $6F67: $F8 $F8
    inc [hl]                                      ; $6F69: $34
    inc b                                         ; $6F6A: $04
    ld hl, sp-$10                                 ; $6F6B: $F8 $F0
    inc sp                                        ; $6F6D: $33
    inc b                                         ; $6F6E: $04
    ld hl, sp-$18                                 ; $6F6F: $F8 $E8
    ld [hl-], a                                   ; $6F71: $32
    inc b                                         ; $6F72: $04
    ldh a, [$F8]                                  ; $6F73: $F0 $F8
    ld sp, $F004                                  ; $6F75: $31 $04 $F0
    ldh a, [$30]                                  ; $6F78: $F0 $30
    inc b                                         ; $6F7A: $04
    nop                                           ; $6F7B: $00
    nop                                           ; $6F7C: $00
    scf                                           ; $6F7D: $37
    inc h                                         ; $6F7E: $24
    nop                                           ; $6F7F: $00
    ld [$2436], sp                                ; $6F80: $08 $36 $24
    nop                                           ; $6F83: $00
    db $10                                        ; $6F84: $10
    dec [hl]                                      ; $6F85: $35
    inc h                                         ; $6F86: $24
    ld hl, sp+$00                                 ; $6F87: $F8 $00
    inc [hl]                                      ; $6F89: $34
    inc h                                         ; $6F8A: $24
    ld hl, sp+$08                                 ; $6F8B: $F8 $08
    inc sp                                        ; $6F8D: $33
    inc h                                         ; $6F8E: $24
    ld hl, sp+$10                                 ; $6F8F: $F8 $10
    ld [hl-], a                                   ; $6F91: $32
    inc h                                         ; $6F92: $24
    ldh a, [rP1]                                  ; $6F93: $F0 $00
    ld sp, $F024                                  ; $6F95: $31 $24 $F0
    ld [$2430], sp                                ; $6F98: $08 $30 $24
    ldh a, [rNR10]                                ; $6F9B: $F0 $10
    cpl                                           ; $6F9D: $2F
    inc h                                         ; $6F9E: $24
    add b                                         ; $6F9F: $80
    ldh a, [rP1]                                  ; $6FA0: $F0 $00
    ld a, [hl-]                                   ; $6FA2: $3A
    inc h                                         ; $6FA3: $24
    ldh a, [$08]                                  ; $6FA4: $F0 $08
    add hl, sp                                    ; $6FA6: $39
    inc h                                         ; $6FA7: $24
    ldh a, [rNR10]                                ; $6FA8: $F0 $10
    jr c, jr_040_6FD0                             ; $6FAA: $38 $24

    ldh a, [$F8]                                  ; $6FAC: $F0 $F8
    ld a, [hl-]                                   ; $6FAE: $3A
    inc b                                         ; $6FAF: $04
    ldh a, [$F0]                                  ; $6FB0: $F0 $F0
    add hl, sp                                    ; $6FB2: $39
    inc b                                         ; $6FB3: $04
    ldh a, [$E8]                                  ; $6FB4: $F0 $E8
    jr c, jr_040_6FBC                             ; $6FB6: $38 $04

    nop                                           ; $6FB8: $00
    ld hl, sp+$3F                                 ; $6FB9: $F8 $3F
    inc b                                         ; $6FBB: $04

jr_040_6FBC:
    nop                                           ; $6FBC: $00
    ldh a, [$3E]                                  ; $6FBD: $F0 $3E
    inc b                                         ; $6FBF: $04
    nop                                           ; $6FC0: $00
    add sp, $3D                                   ; $6FC1: $E8 $3D
    inc b                                         ; $6FC3: $04
    ld hl, sp-$08                                 ; $6FC4: $F8 $F8
    inc a                                         ; $6FC6: $3C
    inc b                                         ; $6FC7: $04
    ld hl, sp-$18                                 ; $6FC8: $F8 $E8
    dec sp                                        ; $6FCA: $3B
    inc b                                         ; $6FCB: $04
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    ccf                                           ; $6FCE: $3F
    inc h                                         ; $6FCF: $24

jr_040_6FD0:
    nop                                           ; $6FD0: $00
    ld [$243E], sp                                ; $6FD1: $08 $3E $24
    nop                                           ; $6FD4: $00
    db $10                                        ; $6FD5: $10
    dec a                                         ; $6FD6: $3D
    inc h                                         ; $6FD7: $24
    ld hl, sp+$00                                 ; $6FD8: $F8 $00
    inc a                                         ; $6FDA: $3C
    inc h                                         ; $6FDB: $24
    ld hl, sp+$10                                 ; $6FDC: $F8 $10
    dec sp                                        ; $6FDE: $3B
    inc h                                         ; $6FDF: $24
    add b                                         ; $6FE0: $80
    nop                                           ; $6FE1: $00
    db $10                                        ; $6FE2: $10
    stop                                          ; $6FE3: $10 $00
    ld [$1508], sp                                ; $6FE5: $08 $08 $15
    nop                                           ; $6FE8: $00
    ld [$1400], sp                                ; $6FE9: $08 $00 $14
    nop                                           ; $6FEC: $00
    ld [$13F8], sp                                ; $6FED: $08 $F8 $13
    nop                                           ; $6FF0: $00
    ld [$12F0], sp                                ; $6FF1: $08 $F0 $12
    nop                                           ; $6FF4: $00
    ld [$11E8], sp                                ; $6FF5: $08 $E8 $11
    nop                                           ; $6FF8: $00
    nop                                           ; $6FF9: $00
    ld [$000F], sp                                ; $6FFA: $08 $0F $00
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    ld c, $00                                     ; $6FFF: $0E $00
    nop                                           ; $7001: $00
    ld hl, sp+$0D                                 ; $7002: $F8 $0D
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    ldh a, [$0C]                                  ; $7006: $F0 $0C
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    add sp, $0B                                   ; $700A: $E8 $0B
    nop                                           ; $700C: $00
    ld hl, sp+$10                                 ; $700D: $F8 $10
    ld a, [bc]                                    ; $700F: $0A
    nop                                           ; $7010: $00
    ld hl, sp+$08                                 ; $7011: $F8 $08
    add hl, bc                                    ; $7013: $09
    nop                                           ; $7014: $00
    ld hl, sp+$00                                 ; $7015: $F8 $00
    ld [$F800], sp                                ; $7017: $08 $00 $F8
    ld hl, sp+$07                                 ; $701A: $F8 $07
    nop                                           ; $701C: $00
    ld hl, sp-$10                                 ; $701D: $F8 $F0
    ld b, $00                                     ; $701F: $06 $00
    ldh a, [rNR10]                                ; $7021: $F0 $10
    dec b                                         ; $7023: $05
    nop                                           ; $7024: $00
    ldh a, [$08]                                  ; $7025: $F0 $08
    inc b                                         ; $7027: $04
    nop                                           ; $7028: $00
    ldh a, [rP1]                                  ; $7029: $F0 $00
    inc bc                                        ; $702B: $03
    nop                                           ; $702C: $00
    ldh a, [$F8]                                  ; $702D: $F0 $F8
    ld [bc], a                                    ; $702F: $02
    nop                                           ; $7030: $00
    ldh a, [$F0]                                  ; $7031: $F0 $F0
    ld bc, $F000                                  ; $7033: $01 $00 $F0
    add sp, $00                                   ; $7036: $E8 $00
    nop                                           ; $7038: $00
    add b                                         ; $7039: $80
    ld c, a                                       ; $703A: $4F
    inc b                                         ; $703B: $04
    nop                                           ; $703C: $00
    nop                                           ; $703D: $00
    or e                                          ; $703E: $B3
    ld c, c                                       ; $703F: $49
    inc b                                         ; $7040: $04
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    ldh a, [rOBP1]                                ; $7043: $F0 $49
    inc b                                         ; $7045: $04
    nop                                           ; $7046: $00
    nop                                           ; $7047: $00
    ld sp, $004A                                  ; $7048: $31 $4A $00
    ld b, [hl]                                    ; $704B: $46
    ld a, [hl-]                                   ; $704C: $3A
    ld [hl], b                                    ; $704D: $70
    ld c, a                                       ; $704E: $4F
    inc b                                         ; $704F: $04
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    ld c, c                                       ; $7053: $49
    inc b                                         ; $7054: $04
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    dec a                                         ; $7057: $3D
    ld c, c                                       ; $7058: $49
    inc b                                         ; $7059: $04
    nop                                           ; $705A: $00
    nop                                           ; $705B: $00
    ld a, [hl]                                    ; $705C: $7E
    ld c, c                                       ; $705D: $49
    nop                                           ; $705E: $00
    ld b, [hl]                                    ; $705F: $46
    ld c, [hl]                                    ; $7060: $4E
    ld [hl], b                                    ; $7061: $70
    ld c, a                                       ; $7062: $4F
    inc b                                         ; $7063: $04
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    and c                                         ; $7066: $A1
    ld b, l                                       ; $7067: $45
    inc b                                         ; $7068: $04
    nop                                           ; $7069: $00
    nop                                           ; $706A: $00
    xor [hl]                                      ; $706B: $AE
    ld b, l                                       ; $706C: $45
    inc b                                         ; $706D: $04
    nop                                           ; $706E: $00
    nop                                           ; $706F: $00
    rst $00                                       ; $7070: $C7
    ld b, l                                       ; $7071: $45
    inc b                                         ; $7072: $04
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    ld hl, sp+$45                                 ; $7075: $F8 $45
    inc b                                         ; $7077: $04
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    dec [hl]                                      ; $707A: $35
    ld b, [hl]                                    ; $707B: $46
    inc b                                         ; $707C: $04
    nop                                           ; $707D: $00
    nop                                           ; $707E: $00
    ld [hl], d                                    ; $707F: $72
    ld b, [hl]                                    ; $7080: $46
    inc b                                         ; $7081: $04
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    and e                                         ; $7084: $A3
    ld b, [hl]                                    ; $7085: $46
    inc b                                         ; $7086: $04
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    cp h                                          ; $7089: $BC
    ld b, [hl]                                    ; $708A: $46
    nop                                           ; $708B: $00
    ld b, d                                       ; $708C: $42
    ld c, a                                       ; $708D: $4F
    inc b                                         ; $708E: $04
    nop                                           ; $708F: $00
    nop                                           ; $7090: $00
    ret                                           ; $7091: $C9


    ld b, [hl]                                    ; $7092: $46
    inc b                                         ; $7093: $04
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    sub $46                                       ; $7096: $D6 $46
    inc b                                         ; $7098: $04
    nop                                           ; $7099: $00
    nop                                           ; $709A: $00
    rst $28                                       ; $709B: $EF
    ld b, [hl]                                    ; $709C: $46
    inc b                                         ; $709D: $04
    nop                                           ; $709E: $00
    nop                                           ; $709F: $00
    jr nz, jr_040_70E9                            ; $70A0: $20 $47

    inc b                                         ; $70A2: $04
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    ld e, l                                       ; $70A5: $5D
    ld b, a                                       ; $70A6: $47
    inc b                                         ; $70A7: $04
    nop                                           ; $70A8: $00
    nop                                           ; $70A9: $00
    adc [hl]                                      ; $70AA: $8E
    ld b, a                                       ; $70AB: $47
    inc b                                         ; $70AC: $04
    nop                                           ; $70AD: $00
    nop                                           ; $70AE: $00
    and a                                         ; $70AF: $A7
    ld b, a                                       ; $70B0: $47
    nop                                           ; $70B1: $00
    ld b, d                                       ; $70B2: $42
    ld c, a                                       ; $70B3: $4F
    inc b                                         ; $70B4: $04
    ld [bc], a                                    ; $70B5: $02
    cp $1C                                        ; $70B6: $FE $1C
    ld b, l                                       ; $70B8: $45
    inc b                                         ; $70B9: $04
    cp $FE                                        ; $70BA: $FE $FE
    ld hl, $0445                                  ; $70BC: $21 $45 $04
    ld [bc], a                                    ; $70BF: $02
    cp $26                                        ; $70C0: $FE $26
    ld b, l                                       ; $70C2: $45
    inc b                                         ; $70C3: $04
    cp $FE                                        ; $70C4: $FE $FE
    ld h, $45                                     ; $70C6: $26 $45
    inc b                                         ; $70C8: $04
    ld [bc], a                                    ; $70C9: $02
    cp $37                                        ; $70CA: $FE $37
    ld b, l                                       ; $70CC: $45
    inc b                                         ; $70CD: $04
    cp $FE                                        ; $70CE: $FE $FE
    scf                                           ; $70D0: $37
    ld b, l                                       ; $70D1: $45
    inc b                                         ; $70D2: $04
    ld [bc], a                                    ; $70D3: $02
    cp $37                                        ; $70D4: $FE $37
    ld b, l                                       ; $70D6: $45
    inc b                                         ; $70D7: $04
    cp $FE                                        ; $70D8: $FE $FE
    scf                                           ; $70DA: $37
    ld b, l                                       ; $70DB: $45
    nop                                           ; $70DC: $00
    dec de                                        ; $70DD: $1B
    dec bc                                        ; $70DE: $0B
    ld c, a                                       ; $70DF: $4F
    inc b                                         ; $70E0: $04
    nop                                           ; $70E1: $00
    nop                                           ; $70E2: $00
    ld [hl], b                                    ; $70E3: $70
    ld b, l                                       ; $70E4: $45
    nop                                           ; $70E5: $00
    ld b, d                                       ; $70E6: $42
    ld c, a                                       ; $70E7: $4F
    inc b                                         ; $70E8: $04

jr_040_70E9:
    nop                                           ; $70E9: $00
    nop                                           ; $70EA: $00
    ld a, e                                       ; $70EB: $7B
    ld c, e                                       ; $70EC: $4B
    inc b                                         ; $70ED: $04
    nop                                           ; $70EE: $00
    nop                                           ; $70EF: $00
    add h                                         ; $70F0: $84
    ld c, e                                       ; $70F1: $4B
    inc b                                         ; $70F2: $04
    nop                                           ; $70F3: $00
    nop                                           ; $70F4: $00
    sbc l                                         ; $70F5: $9D
    ld c, e                                       ; $70F6: $4B
    inc b                                         ; $70F7: $04
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    sub $4B                                       ; $70FA: $D6 $4B
    nop                                           ; $70FC: $00
    ld b, d                                       ; $70FD: $42
    ld c, a                                       ; $70FE: $4F
    inc b                                         ; $70FF: $04
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    rlca                                          ; $7102: $07
    ld c, e                                       ; $7103: $4B
    inc b                                         ; $7104: $04
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    db $10                                        ; $7107: $10
    ld c, e                                       ; $7108: $4B
    inc b                                         ; $7109: $04
    nop                                           ; $710A: $00
    nop                                           ; $710B: $00
    add hl, hl                                    ; $710C: $29
    ld c, e                                       ; $710D: $4B
    inc b                                         ; $710E: $04
    nop                                           ; $710F: $00
    nop                                           ; $7110: $00
    ld h, d                                       ; $7111: $62
    ld c, e                                       ; $7112: $4B
    nop                                           ; $7113: $00
    ld b, d                                       ; $7114: $42
    ld c, a                                       ; $7115: $4F
    inc b                                         ; $7116: $04
    nop                                           ; $7117: $00
    inc bc                                        ; $7118: $03
    or h                                          ; $7119: $B4
    ld b, a                                       ; $711A: $47
    inc b                                         ; $711B: $04
    nop                                           ; $711C: $00
    inc bc                                        ; $711D: $03
    push bc                                       ; $711E: $C5
    ld b, a                                       ; $711F: $47
    inc b                                         ; $7120: $04
    nop                                           ; $7121: $00
    inc bc                                        ; $7122: $03
    sub $47                                       ; $7123: $D6 $47
    inc b                                         ; $7125: $04
    nop                                           ; $7126: $00
    inc bc                                        ; $7127: $03
    rst $20                                       ; $7128: $E7
    ld b, a                                       ; $7129: $47
    inc b                                         ; $712A: $04
    nop                                           ; $712B: $00
    inc bc                                        ; $712C: $03
    ld hl, sp+$47                                 ; $712D: $F8 $47
    inc b                                         ; $712F: $04
    nop                                           ; $7130: $00
    inc bc                                        ; $7131: $03
    add hl, bc                                    ; $7132: $09
    ld c, b                                       ; $7133: $48
    inc b                                         ; $7134: $04
    nop                                           ; $7135: $00
    inc bc                                        ; $7136: $03
    ld a, [de]                                    ; $7137: $1A
    ld c, b                                       ; $7138: $48
    inc b                                         ; $7139: $04
    nop                                           ; $713A: $00
    inc bc                                        ; $713B: $03
    dec hl                                        ; $713C: $2B
    ld c, b                                       ; $713D: $48
    nop                                           ; $713E: $00
    ld b, [hl]                                    ; $713F: $46
    dec d                                         ; $7140: $15
    ld [hl], c                                    ; $7141: $71
    ld c, a                                       ; $7142: $4F
    inc b                                         ; $7143: $04
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    inc a                                         ; $7146: $3C
    ld c, b                                       ; $7147: $48
    inc b                                         ; $7148: $04
    nop                                           ; $7149: $00
    nop                                           ; $714A: $00
    ld l, l                                       ; $714B: $6D
    ld c, b                                       ; $714C: $48
    inc b                                         ; $714D: $04
    nop                                           ; $714E: $00
    nop                                           ; $714F: $00
    sbc [hl]                                      ; $7150: $9E
    ld c, b                                       ; $7151: $48
    inc b                                         ; $7152: $04
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    rst $08                                       ; $7155: $CF
    ld c, b                                       ; $7156: $48
    nop                                           ; $7157: $00
    ld b, d                                       ; $7158: $42
    ld c, a                                       ; $7159: $4F
    ld a, [bc]                                    ; $715A: $0A
    ld bc, $EF00                                  ; $715B: $01 $00 $EF
    ld c, e                                       ; $715E: $4B
    ld a, [bc]                                    ; $715F: $0A
    ld [bc], a                                    ; $7160: $02
    nop                                           ; $7161: $00
    db $F4                                        ; $7162: $F4
    ld c, e                                       ; $7163: $4B
    ld a, [bc]                                    ; $7164: $0A
    inc bc                                        ; $7165: $03
    nop                                           ; $7166: $00
    dec b                                         ; $7167: $05
    ld c, h                                       ; $7168: $4C
    nop                                           ; $7169: $00
    ld b, l                                       ; $716A: $45
    ld b, b                                       ; $716B: $40
    ld a, a                                       ; $716C: $7F
    ld [hl], c                                    ; $716D: $71
    ld c, a                                       ; $716E: $4F
    ld a, [bc]                                    ; $716F: $0A
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    rst $28                                       ; $7172: $EF
    ld c, e                                       ; $7173: $4B
    ld a, [bc]                                    ; $7174: $0A
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    db $F4                                        ; $7177: $F4
    ld c, e                                       ; $7178: $4B
    ld a, [bc]                                    ; $7179: $0A
    nop                                           ; $717A: $00
    nop                                           ; $717B: $00
    dec b                                         ; $717C: $05
    ld c, h                                       ; $717D: $4C
    nop                                           ; $717E: $00
    ld c, a                                       ; $717F: $4F
    rst $38                                       ; $7180: $FF
    inc b                                         ; $7181: $04
    nop                                           ; $7182: $00
    ld h, $4C                                     ; $7183: $26 $4C
    nop                                           ; $7185: $00
    ld b, [hl]                                    ; $7186: $46
    ld a, a                                       ; $7187: $7F
    ld [hl], c                                    ; $7188: $71
    ld c, a                                       ; $7189: $4F
    inc b                                         ; $718A: $04
    nop                                           ; $718B: $00
    nop                                           ; $718C: $00
    nop                                           ; $718D: $00
    ld b, h                                       ; $718E: $44
    inc b                                         ; $718F: $04
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    add c                                         ; $7192: $81
    ld b, h                                       ; $7193: $44
    inc b                                         ; $7194: $04
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    jp nz, $0444                                  ; $7197: $C2 $44 $04

    nop                                           ; $719A: $00
    nop                                           ; $719B: $00
    inc bc                                        ; $719C: $03
    ld b, l                                       ; $719D: $45
    nop                                           ; $719E: $00
    ld b, d                                       ; $719F: $42
    ld c, a                                       ; $71A0: $4F
    inc b                                         ; $71A1: $04
    nop                                           ; $71A2: $00
    nop                                           ; $71A3: $00
    ld h, [hl]                                    ; $71A4: $66
    ld c, d                                       ; $71A5: $4A
    inc b                                         ; $71A6: $04
    nop                                           ; $71A7: $00
    nop                                           ; $71A8: $00
    sub a                                         ; $71A9: $97
    ld c, d                                       ; $71AA: $4A
    inc b                                         ; $71AB: $04
    nop                                           ; $71AC: $00
    nop                                           ; $71AD: $00
    ret z                                         ; $71AE: $C8

    ld c, d                                       ; $71AF: $4A
    inc b                                         ; $71B0: $04
    nop                                           ; $71B1: $00
    nop                                           ; $71B2: $00
    pop af                                        ; $71B3: $F1
    ld c, d                                       ; $71B4: $4A
    inc b                                         ; $71B5: $04
    nop                                           ; $71B6: $00
    nop                                           ; $71B7: $00
    ld [bc], a                                    ; $71B8: $02
    ld c, e                                       ; $71B9: $4B
    nop                                           ; $71BA: $00
    ld b, d                                       ; $71BB: $42
    ld c, a                                       ; $71BC: $4F
    ld [bc], a                                    ; $71BD: $02
    ld bc, $4300                                  ; $71BE: $01 $00 $43
    ld c, [hl]                                    ; $71C1: $4E
    ld [bc], a                                    ; $71C2: $02
    nop                                           ; $71C3: $00
    nop                                           ; $71C4: $00
    ld b, e                                       ; $71C5: $43
    ld c, [hl]                                    ; $71C6: $4E
    ld [bc], a                                    ; $71C7: $02
    nop                                           ; $71C8: $00
    nop                                           ; $71C9: $00
    ld d, h                                       ; $71CA: $54
    ld c, [hl]                                    ; $71CB: $4E
    ld [bc], a                                    ; $71CC: $02
    rst $38                                       ; $71CD: $FF
    nop                                           ; $71CE: $00
    ld d, h                                       ; $71CF: $54
    ld c, [hl]                                    ; $71D0: $4E
    ld [bc], a                                    ; $71D1: $02
    rst $38                                       ; $71D2: $FF
    nop                                           ; $71D3: $00
    ld h, l                                       ; $71D4: $65
    ld c, [hl]                                    ; $71D5: $4E
    ld [bc], a                                    ; $71D6: $02
    nop                                           ; $71D7: $00
    nop                                           ; $71D8: $00
    ld h, l                                       ; $71D9: $65
    ld c, [hl]                                    ; $71DA: $4E
    ld [bc], a                                    ; $71DB: $02
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    halt                                          ; $71DE: $76
    ld c, [hl]                                    ; $71DF: $4E
    ld [bc], a                                    ; $71E0: $02
    ld bc, $7600                                  ; $71E1: $01 $00 $76
    ld c, [hl]                                    ; $71E4: $4E
    ld [bc], a                                    ; $71E5: $02
    ld bc, $4300                                  ; $71E6: $01 $00 $43
    ld c, [hl]                                    ; $71E9: $4E
    ld [bc], a                                    ; $71EA: $02
    nop                                           ; $71EB: $00
    nop                                           ; $71EC: $00
    ld b, e                                       ; $71ED: $43
    ld c, [hl]                                    ; $71EE: $4E
    ld [bc], a                                    ; $71EF: $02
    nop                                           ; $71F0: $00
    nop                                           ; $71F1: $00
    ld d, h                                       ; $71F2: $54
    ld c, [hl]                                    ; $71F3: $4E
    ld [bc], a                                    ; $71F4: $02
    rst $38                                       ; $71F5: $FF
    nop                                           ; $71F6: $00
    ld d, h                                       ; $71F7: $54
    ld c, [hl]                                    ; $71F8: $4E
    ld [bc], a                                    ; $71F9: $02
    rst $38                                       ; $71FA: $FF
    nop                                           ; $71FB: $00
    ld h, l                                       ; $71FC: $65
    ld c, [hl]                                    ; $71FD: $4E
    ld [bc], a                                    ; $71FE: $02
    nop                                           ; $71FF: $00
    nop                                           ; $7200: $00
    ld h, l                                       ; $7201: $65
    ld c, [hl]                                    ; $7202: $4E
    ld [bc], a                                    ; $7203: $02
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    halt                                          ; $7206: $76
    ld c, [hl]                                    ; $7207: $4E
    ld [bc], a                                    ; $7208: $02
    ld bc, $7600                                  ; $7209: $01 $00 $76
    ld c, [hl]                                    ; $720C: $4E
    ld [bc], a                                    ; $720D: $02
    ld [bc], a                                    ; $720E: $02
    nop                                           ; $720F: $00
    cp a                                          ; $7210: $BF
    ld c, l                                       ; $7211: $4D
    ld [bc], a                                    ; $7212: $02
    ld bc, $BF00                                  ; $7213: $01 $00 $BF
    ld c, l                                       ; $7216: $4D
    ld [bc], a                                    ; $7217: $02
    rst $38                                       ; $7218: $FF
    nop                                           ; $7219: $00
    ldh [rKEY1], a                                ; $721A: $E0 $4D
    ld [bc], a                                    ; $721C: $02
    cp $00                                        ; $721D: $FE $00
    ldh [rKEY1], a                                ; $721F: $E0 $4D
    ld [bc], a                                    ; $7221: $02
    cp $00                                        ; $7222: $FE $00
    ld bc, $024E                                  ; $7224: $01 $4E $02
    rst $38                                       ; $7227: $FF
    nop                                           ; $7228: $00
    ld bc, $024E                                  ; $7229: $01 $4E $02
    ld bc, $2200                                  ; $722C: $01 $00 $22
    ld c, [hl]                                    ; $722F: $4E
    ld [bc], a                                    ; $7230: $02
    ld [bc], a                                    ; $7231: $02
    nop                                           ; $7232: $00
    ld [hl+], a                                   ; $7233: $22
    ld c, [hl]                                    ; $7234: $4E
    ld [bc], a                                    ; $7235: $02
    ld [bc], a                                    ; $7236: $02
    nop                                           ; $7237: $00
    dec de                                        ; $7238: $1B
    ld c, l                                       ; $7239: $4D
    ld [bc], a                                    ; $723A: $02
    ld bc, $1B00                                  ; $723B: $01 $00 $1B
    ld c, l                                       ; $723E: $4D
    ld [bc], a                                    ; $723F: $02
    rst $38                                       ; $7240: $FF
    nop                                           ; $7241: $00
    ld b, h                                       ; $7242: $44
    ld c, l                                       ; $7243: $4D
    ld [bc], a                                    ; $7244: $02
    cp $00                                        ; $7245: $FE $00
    ld b, h                                       ; $7247: $44
    ld c, l                                       ; $7248: $4D
    ld [bc], a                                    ; $7249: $02
    cp $00                                        ; $724A: $FE $00
    ld l, l                                       ; $724C: $6D
    ld c, l                                       ; $724D: $4D
    ld [bc], a                                    ; $724E: $02
    rst $38                                       ; $724F: $FF
    nop                                           ; $7250: $00
    ld l, l                                       ; $7251: $6D
    ld c, l                                       ; $7252: $4D
    ld [bc], a                                    ; $7253: $02
    ld bc, $9600                                  ; $7254: $01 $00 $96
    ld c, l                                       ; $7257: $4D
    ld [bc], a                                    ; $7258: $02
    ld [bc], a                                    ; $7259: $02
    nop                                           ; $725A: $00
    sub [hl]                                      ; $725B: $96
    ld c, l                                       ; $725C: $4D
    ld [bc], a                                    ; $725D: $02
    inc bc                                        ; $725E: $03
    nop                                           ; $725F: $00
    ld d, a                                       ; $7260: $57
    ld c, h                                       ; $7261: $4C
    ld [bc], a                                    ; $7262: $02
    ld [bc], a                                    ; $7263: $02
    nop                                           ; $7264: $00
    ld d, a                                       ; $7265: $57
    ld c, h                                       ; $7266: $4C
    ld [bc], a                                    ; $7267: $02
    cp $00                                        ; $7268: $FE $00
    adc b                                         ; $726A: $88
    ld c, h                                       ; $726B: $4C
    ld [bc], a                                    ; $726C: $02
    db $FD                                        ; $726D: $FD
    nop                                           ; $726E: $00
    adc b                                         ; $726F: $88
    ld c, h                                       ; $7270: $4C
    ld [bc], a                                    ; $7271: $02
    db $FD                                        ; $7272: $FD
    nop                                           ; $7273: $00
    cp c                                          ; $7274: $B9
    ld c, h                                       ; $7275: $4C
    ld [bc], a                                    ; $7276: $02
    cp $00                                        ; $7277: $FE $00
    cp c                                          ; $7279: $B9
    ld c, h                                       ; $727A: $4C
    ld [bc], a                                    ; $727B: $02
    ld [bc], a                                    ; $727C: $02
    nop                                           ; $727D: $00
    ld [$024C], a                                 ; $727E: $EA $4C $02
    inc bc                                        ; $7281: $03
    nop                                           ; $7282: $00
    ld [$024C], a                                 ; $7283: $EA $4C $02
    ld [bc], a                                    ; $7286: $02
    nop                                           ; $7287: $00
    dec de                                        ; $7288: $1B
    ld c, l                                       ; $7289: $4D
    ld [bc], a                                    ; $728A: $02
    ld bc, $1B00                                  ; $728B: $01 $00 $1B
    ld c, l                                       ; $728E: $4D
    ld [bc], a                                    ; $728F: $02
    rst $38                                       ; $7290: $FF
    nop                                           ; $7291: $00
    ld b, h                                       ; $7292: $44
    ld c, l                                       ; $7293: $4D
    ld [bc], a                                    ; $7294: $02
    cp $00                                        ; $7295: $FE $00
    ld b, h                                       ; $7297: $44
    ld c, l                                       ; $7298: $4D
    ld [bc], a                                    ; $7299: $02
    cp $00                                        ; $729A: $FE $00
    ld l, l                                       ; $729C: $6D
    ld c, l                                       ; $729D: $4D
    ld [bc], a                                    ; $729E: $02
    rst $38                                       ; $729F: $FF
    nop                                           ; $72A0: $00
    ld l, l                                       ; $72A1: $6D
    ld c, l                                       ; $72A2: $4D
    ld [bc], a                                    ; $72A3: $02
    ld bc, $9600                                  ; $72A4: $01 $00 $96
    ld c, l                                       ; $72A7: $4D
    ld [bc], a                                    ; $72A8: $02
    ld [bc], a                                    ; $72A9: $02
    nop                                           ; $72AA: $00
    sub [hl]                                      ; $72AB: $96
    ld c, l                                       ; $72AC: $4D
    ld [bc], a                                    ; $72AD: $02
    ld [bc], a                                    ; $72AE: $02
    nop                                           ; $72AF: $00
    cp a                                          ; $72B0: $BF
    ld c, l                                       ; $72B1: $4D
    ld [bc], a                                    ; $72B2: $02
    ld bc, $BF00                                  ; $72B3: $01 $00 $BF
    ld c, l                                       ; $72B6: $4D
    ld [bc], a                                    ; $72B7: $02
    rst $38                                       ; $72B8: $FF
    nop                                           ; $72B9: $00
    ldh [rKEY1], a                                ; $72BA: $E0 $4D
    ld [bc], a                                    ; $72BC: $02
    cp $00                                        ; $72BD: $FE $00
    ldh [rKEY1], a                                ; $72BF: $E0 $4D
    ld [bc], a                                    ; $72C1: $02
    cp $00                                        ; $72C2: $FE $00
    ld bc, $024E                                  ; $72C4: $01 $4E $02
    rst $38                                       ; $72C7: $FF
    nop                                           ; $72C8: $00
    ld bc, $024E                                  ; $72C9: $01 $4E $02
    ld bc, $2200                                  ; $72CC: $01 $00 $22
    ld c, [hl]                                    ; $72CF: $4E
    ld [bc], a                                    ; $72D0: $02
    ld [bc], a                                    ; $72D1: $02
    nop                                           ; $72D2: $00
    ld [hl+], a                                   ; $72D3: $22
    ld c, [hl]                                    ; $72D4: $4E
    ld [bc], a                                    ; $72D5: $02
    ld bc, $4300                                  ; $72D6: $01 $00 $43
    ld c, [hl]                                    ; $72D9: $4E
    ld [bc], a                                    ; $72DA: $02
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    ld b, e                                       ; $72DD: $43
    ld c, [hl]                                    ; $72DE: $4E
    ld [bc], a                                    ; $72DF: $02
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00
    ld d, h                                       ; $72E2: $54
    ld c, [hl]                                    ; $72E3: $4E
    ld [bc], a                                    ; $72E4: $02
    rst $38                                       ; $72E5: $FF
    nop                                           ; $72E6: $00
    ld d, h                                       ; $72E7: $54
    ld c, [hl]                                    ; $72E8: $4E
    ld [bc], a                                    ; $72E9: $02
    rst $38                                       ; $72EA: $FF
    nop                                           ; $72EB: $00
    ld h, l                                       ; $72EC: $65
    ld c, [hl]                                    ; $72ED: $4E
    ld [bc], a                                    ; $72EE: $02
    nop                                           ; $72EF: $00
    nop                                           ; $72F0: $00
    ld h, l                                       ; $72F1: $65
    ld c, [hl]                                    ; $72F2: $4E
    ld [bc], a                                    ; $72F3: $02
    nop                                           ; $72F4: $00
    nop                                           ; $72F5: $00
    halt                                          ; $72F6: $76
    ld c, [hl]                                    ; $72F7: $4E
    ld [bc], a                                    ; $72F8: $02
    ld bc, $7600                                  ; $72F9: $01 $00 $76
    ld c, [hl]                                    ; $72FC: $4E
    nop                                           ; $72FD: $00
    ld b, d                                       ; $72FE: $42
    ld c, a                                       ; $72FF: $4F
    inc b                                         ; $7300: $04
    inc bc                                        ; $7301: $03
    nop                                           ; $7302: $00
    add a                                         ; $7303: $87
    ld c, [hl]                                    ; $7304: $4E
    inc b                                         ; $7305: $04
    inc bc                                        ; $7306: $03
    nop                                           ; $7307: $00
    sub h                                         ; $7308: $94
    ld c, [hl]                                    ; $7309: $4E
    inc b                                         ; $730A: $04
    inc bc                                        ; $730B: $03
    nop                                           ; $730C: $00
    and c                                         ; $730D: $A1
    ld c, [hl]                                    ; $730E: $4E
    inc b                                         ; $730F: $04
    inc bc                                        ; $7310: $03
    nop                                           ; $7311: $00
    xor [hl]                                      ; $7312: $AE
    ld c, [hl]                                    ; $7313: $4E
    nop                                           ; $7314: $00
    ld b, [hl]                                    ; $7315: $46
    rst $38                                       ; $7316: $FF
    ld [hl], d                                    ; $7317: $72
    ld c, a                                       ; $7318: $4F
    inc b                                         ; $7319: $04
    inc bc                                        ; $731A: $03
    db $FD                                        ; $731B: $FD
    add a                                         ; $731C: $87
    ld c, [hl]                                    ; $731D: $4E
    inc b                                         ; $731E: $04
    inc bc                                        ; $731F: $03
    db $FD                                        ; $7320: $FD
    sub h                                         ; $7321: $94
    ld c, [hl]                                    ; $7322: $4E
    inc b                                         ; $7323: $04
    inc bc                                        ; $7324: $03
    db $FD                                        ; $7325: $FD
    and c                                         ; $7326: $A1
    ld c, [hl]                                    ; $7327: $4E
    inc b                                         ; $7328: $04
    inc bc                                        ; $7329: $03
    db $FD                                        ; $732A: $FD
    xor [hl]                                      ; $732B: $AE
    ld c, [hl]                                    ; $732C: $4E
    nop                                           ; $732D: $00
    ld b, [hl]                                    ; $732E: $46
    jr jr_040_73A4                                ; $732F: $18 $73

    ld c, a                                       ; $7331: $4F
    inc b                                         ; $7332: $04
    inc bc                                        ; $7333: $03
    inc bc                                        ; $7334: $03
    add a                                         ; $7335: $87
    ld c, [hl]                                    ; $7336: $4E
    inc b                                         ; $7337: $04
    inc bc                                        ; $7338: $03
    inc bc                                        ; $7339: $03
    sub h                                         ; $733A: $94
    ld c, [hl]                                    ; $733B: $4E
    inc b                                         ; $733C: $04
    inc bc                                        ; $733D: $03
    inc bc                                        ; $733E: $03
    and c                                         ; $733F: $A1
    ld c, [hl]                                    ; $7340: $4E
    inc b                                         ; $7341: $04
    inc bc                                        ; $7342: $03
    inc bc                                        ; $7343: $03
    xor [hl]                                      ; $7344: $AE
    ld c, [hl]                                    ; $7345: $4E
    nop                                           ; $7346: $00
    ld b, [hl]                                    ; $7347: $46
    ld sp, $4F73                                  ; $7348: $31 $73 $4F
    inc b                                         ; $734B: $04
    nop                                           ; $734C: $00
    nop                                           ; $734D: $00
    cp e                                          ; $734E: $BB
    ld c, [hl]                                    ; $734F: $4E
    inc b                                         ; $7350: $04
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    db $F4                                        ; $7353: $F4
    ld c, [hl]                                    ; $7354: $4E
    inc b                                         ; $7355: $04
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    ld b, l                                       ; $7358: $45
    ld c, a                                       ; $7359: $4F
    inc b                                         ; $735A: $04
    nop                                           ; $735B: $00
    nop                                           ; $735C: $00
    xor [hl]                                      ; $735D: $AE
    ld c, a                                       ; $735E: $4F
    inc b                                         ; $735F: $04
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    rst $28                                       ; $7362: $EF
    ld c, a                                       ; $7363: $4F
    nop                                           ; $7364: $00
    ld b, d                                       ; $7365: $42
    ld c, a                                       ; $7366: $4F
    inc b                                         ; $7367: $04
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    ld b, l                                       ; $736A: $45
    ld c, a                                       ; $736B: $4F
    inc b                                         ; $736C: $04
    nop                                           ; $736D: $00
    nop                                           ; $736E: $00
    xor [hl]                                      ; $736F: $AE
    ld c, a                                       ; $7370: $4F
    inc b                                         ; $7371: $04
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    rst $28                                       ; $7374: $EF
    ld c, a                                       ; $7375: $4F
    nop                                           ; $7376: $00
    ld b, d                                       ; $7377: $42
    ld c, a                                       ; $7378: $4F
    ld [bc], a                                    ; $7379: $02
    db $FD                                        ; $737A: $FD
    nop                                           ; $737B: $00
    db $EC                                        ; $737C: $EC
    ld d, b                                       ; $737D: $50
    ld [bc], a                                    ; $737E: $02
    cp $00                                        ; $737F: $FE $00
    db $EC                                        ; $7381: $EC
    ld d, b                                       ; $7382: $50
    ld [bc], a                                    ; $7383: $02
    rst $38                                       ; $7384: $FF
    nop                                           ; $7385: $00
    dec l                                         ; $7386: $2D
    ld d, c                                       ; $7387: $51
    ld [bc], a                                    ; $7388: $02
    nop                                           ; $7389: $00
    nop                                           ; $738A: $00
    dec l                                         ; $738B: $2D
    ld d, c                                       ; $738C: $51
    ld [bc], a                                    ; $738D: $02
    nop                                           ; $738E: $00
    nop                                           ; $738F: $00
    ld l, [hl]                                    ; $7390: $6E
    ld d, c                                       ; $7391: $51
    ld [bc], a                                    ; $7392: $02
    ld bc, $6E00                                  ; $7393: $01 $00 $6E
    ld d, c                                       ; $7396: $51
    ld [bc], a                                    ; $7397: $02
    ld [bc], a                                    ; $7398: $02
    nop                                           ; $7399: $00
    xor a                                         ; $739A: $AF
    ld d, c                                       ; $739B: $51
    ld [bc], a                                    ; $739C: $02
    inc bc                                        ; $739D: $03
    nop                                           ; $739E: $00
    xor a                                         ; $739F: $AF
    ld d, c                                       ; $73A0: $51
    nop                                           ; $73A1: $00
    ld b, [hl]                                    ; $73A2: $46
    and l                                         ; $73A3: $A5

jr_040_73A4:
    ld [hl], e                                    ; $73A4: $73
    ld c, a                                       ; $73A5: $4F
    ld [bc], a                                    ; $73A6: $02
    inc bc                                        ; $73A7: $03
    nop                                           ; $73A8: $00
    db $EC                                        ; $73A9: $EC
    ld d, b                                       ; $73AA: $50
    ld [bc], a                                    ; $73AB: $02
    ld [bc], a                                    ; $73AC: $02
    nop                                           ; $73AD: $00
    db $EC                                        ; $73AE: $EC
    ld d, b                                       ; $73AF: $50
    ld [bc], a                                    ; $73B0: $02
    ld bc, $2D00                                  ; $73B1: $01 $00 $2D
    ld d, c                                       ; $73B4: $51
    ld [bc], a                                    ; $73B5: $02
    nop                                           ; $73B6: $00
    nop                                           ; $73B7: $00
    dec l                                         ; $73B8: $2D
    ld d, c                                       ; $73B9: $51
    ld [bc], a                                    ; $73BA: $02
    nop                                           ; $73BB: $00
    nop                                           ; $73BC: $00
    ld l, [hl]                                    ; $73BD: $6E
    ld d, c                                       ; $73BE: $51
    ld [bc], a                                    ; $73BF: $02
    rst $38                                       ; $73C0: $FF
    nop                                           ; $73C1: $00
    ld l, [hl]                                    ; $73C2: $6E
    ld d, c                                       ; $73C3: $51
    ld [bc], a                                    ; $73C4: $02
    cp $00                                        ; $73C5: $FE $00
    xor a                                         ; $73C7: $AF
    ld d, c                                       ; $73C8: $51
    ld [bc], a                                    ; $73C9: $02
    db $FD                                        ; $73CA: $FD
    nop                                           ; $73CB: $00
    xor a                                         ; $73CC: $AF
    ld d, c                                       ; $73CD: $51
    nop                                           ; $73CE: $00
    ld b, [hl]                                    ; $73CF: $46
    ld a, b                                       ; $73D0: $78
    ld [hl], e                                    ; $73D1: $73
    ld c, a                                       ; $73D2: $4F
    inc b                                         ; $73D3: $04
    nop                                           ; $73D4: $00
    nop                                           ; $73D5: $00
    jr nz, jr_040_7428                            ; $73D6: $20 $50

    inc b                                         ; $73D8: $04
    nop                                           ; $73D9: $00
    nop                                           ; $73DA: $00
    ld e, l                                       ; $73DB: $5D
    ld d, b                                       ; $73DC: $50
    inc b                                         ; $73DD: $04
    nop                                           ; $73DE: $00
    nop                                           ; $73DF: $00
    add [hl]                                      ; $73E0: $86
    ld d, b                                       ; $73E1: $50
    nop                                           ; $73E2: $00
    ld b, d                                       ; $73E3: $42
    ld c, a                                       ; $73E4: $4F
    inc b                                         ; $73E5: $04
    ld bc, $2000                                  ; $73E6: $01 $00 $20
    ld d, b                                       ; $73E9: $50
    inc b                                         ; $73EA: $04
    ld bc, $5D00                                  ; $73EB: $01 $00 $5D
    ld d, b                                       ; $73EE: $50
    inc b                                         ; $73EF: $04
    ld bc, $8600                                  ; $73F0: $01 $00 $86
    ld d, b                                       ; $73F3: $50
    inc b                                         ; $73F4: $04
    ld bc, $2000                                  ; $73F5: $01 $00 $20
    ld d, b                                       ; $73F8: $50
    inc b                                         ; $73F9: $04
    ld bc, $5D00                                  ; $73FA: $01 $00 $5D
    ld d, b                                       ; $73FD: $50
    inc b                                         ; $73FE: $04
    ld bc, $8600                                  ; $73FF: $01 $00 $86
    ld d, b                                       ; $7402: $50
    inc b                                         ; $7403: $04
    ld bc, $2000                                  ; $7404: $01 $00 $20
    ld d, b                                       ; $7407: $50
    inc b                                         ; $7408: $04
    ld bc, $5D00                                  ; $7409: $01 $00 $5D
    ld d, b                                       ; $740C: $50
    inc b                                         ; $740D: $04
    ld bc, $8600                                  ; $740E: $01 $00 $86
    ld d, b                                       ; $7411: $50
    inc b                                         ; $7412: $04
    ld bc, $2000                                  ; $7413: $01 $00 $20
    ld d, b                                       ; $7416: $50
    inc b                                         ; $7417: $04
    ld bc, $5D00                                  ; $7418: $01 $00 $5D
    ld d, b                                       ; $741B: $50
    inc b                                         ; $741C: $04
    ld bc, $8600                                  ; $741D: $01 $00 $86
    ld d, b                                       ; $7420: $50
    nop                                           ; $7421: $00
    ld b, d                                       ; $7422: $42
    ld c, a                                       ; $7423: $4F
    inc b                                         ; $7424: $04
    nop                                           ; $7425: $00
    nop                                           ; $7426: $00
    and a                                         ; $7427: $A7

jr_040_7428:
    ld d, b                                       ; $7428: $50
    inc b                                         ; $7429: $04
    nop                                           ; $742A: $00
    nop                                           ; $742B: $00
    cp b                                          ; $742C: $B8
    ld d, b                                       ; $742D: $50
    inc b                                         ; $742E: $04
    nop                                           ; $742F: $00
    nop                                           ; $7430: $00
    ret                                           ; $7431: $C9


    ld d, b                                       ; $7432: $50
    inc b                                         ; $7433: $04
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    jp c, $0450                                   ; $7436: $DA $50 $04

    nop                                           ; $7439: $00
    nop                                           ; $743A: $00
    db $E3                                        ; $743B: $E3
    ld d, b                                       ; $743C: $50
    nop                                           ; $743D: $00
    ld b, d                                       ; $743E: $42
    ld c, a                                       ; $743F: $4F
    inc b                                         ; $7440: $04
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    ldh a, [rHDMA1]                               ; $7443: $F0 $51
    inc b                                         ; $7445: $04
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    add hl, de                                    ; $7448: $19
    ld d, d                                       ; $7449: $52
    inc b                                         ; $744A: $04
    nop                                           ; $744B: $00
    nop                                           ; $744C: $00
    ld d, d                                       ; $744D: $52
    ld d, d                                       ; $744E: $52
    inc b                                         ; $744F: $04
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    jp $0452                                      ; $7452: $C3 $52 $04


    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    inc [hl]                                      ; $7457: $34
    ld d, e                                       ; $7458: $53
    nop                                           ; $7459: $00
    ld b, d                                       ; $745A: $42
    ld c, a                                       ; $745B: $4F
    inc b                                         ; $745C: $04
    nop                                           ; $745D: $00
    nop                                           ; $745E: $00
    and c                                         ; $745F: $A1
    ld d, h                                       ; $7460: $54
    inc b                                         ; $7461: $04
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    or d                                          ; $7464: $B2
    ld d, h                                       ; $7465: $54
    inc b                                         ; $7466: $04
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    bit 2, h                                      ; $7469: $CB $54
    inc b                                         ; $746B: $04
    nop                                           ; $746C: $00
    nop                                           ; $746D: $00
    db $FC                                        ; $746E: $FC
    ld d, h                                       ; $746F: $54
    inc b                                         ; $7470: $04
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    ld e, l                                       ; $7473: $5D
    ld d, l                                       ; $7474: $55
    inc b                                         ; $7475: $04
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    adc [hl]                                      ; $7478: $8E
    ld d, l                                       ; $7479: $55
    inc b                                         ; $747A: $04
    nop                                           ; $747B: $00
    nop                                           ; $747C: $00
    and a                                         ; $747D: $A7
    ld d, l                                       ; $747E: $55
    nop                                           ; $747F: $00
    ld b, d                                       ; $7480: $42
    ld c, a                                       ; $7481: $4F
    inc b                                         ; $7482: $04
    nop                                           ; $7483: $00
    nop                                           ; $7484: $00
    or [hl]                                       ; $7485: $B6
    ld d, e                                       ; $7486: $53
    inc b                                         ; $7487: $04
    nop                                           ; $7488: $00
    nop                                           ; $7489: $00
    cp a                                          ; $748A: $BF
    ld d, e                                       ; $748B: $53
    inc b                                         ; $748C: $04
    nop                                           ; $748D: $00
    nop                                           ; $748E: $00
    add sp, $53                                   ; $748F: $E8 $53
    inc b                                         ; $7491: $04
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    ld de, $0454                                  ; $7494: $11 $54 $04
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    ld c, d                                       ; $7499: $4A
    ld d, h                                       ; $749A: $54
    inc b                                         ; $749B: $04
    nop                                           ; $749C: $00
    nop                                           ; $749D: $00
    ld a, e                                       ; $749E: $7B
    ld d, h                                       ; $749F: $54
    inc b                                         ; $74A0: $04
    nop                                           ; $74A1: $00
    nop                                           ; $74A2: $00
    sbc b                                         ; $74A3: $98
    ld d, h                                       ; $74A4: $54
    nop                                           ; $74A5: $00
    ld b, d                                       ; $74A6: $42
    ld c, a                                       ; $74A7: $4F
    inc b                                         ; $74A8: $04
    nop                                           ; $74A9: $00
    nop                                           ; $74AA: $00
    or [hl]                                       ; $74AB: $B6
    ld d, e                                       ; $74AC: $53
    inc b                                         ; $74AD: $04
    nop                                           ; $74AE: $00
    nop                                           ; $74AF: $00
    cp a                                          ; $74B0: $BF
    ld d, e                                       ; $74B1: $53
    inc b                                         ; $74B2: $04
    nop                                           ; $74B3: $00
    nop                                           ; $74B4: $00
    add sp, $53                                   ; $74B5: $E8 $53
    inc b                                         ; $74B7: $04
    nop                                           ; $74B8: $00
    nop                                           ; $74B9: $00
    ld de, $0454                                  ; $74BA: $11 $54 $04
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    ld c, d                                       ; $74BF: $4A
    ld d, h                                       ; $74C0: $54
    ld bc, $F804                                  ; $74C1: $01 $04 $F8
    cp a                                          ; $74C4: $BF
    ld d, e                                       ; $74C5: $53
    inc bc                                        ; $74C6: $03
    nop                                           ; $74C7: $00
    nop                                           ; $74C8: $00
    cp a                                          ; $74C9: $BF
    ld d, e                                       ; $74CA: $53
    inc b                                         ; $74CB: $04
    nop                                           ; $74CC: $00
    nop                                           ; $74CD: $00
    add sp, $53                                   ; $74CE: $E8 $53
    inc b                                         ; $74D0: $04
    nop                                           ; $74D1: $00
    nop                                           ; $74D2: $00
    ld de, $0454                                  ; $74D3: $11 $54 $04
    nop                                           ; $74D6: $00
    nop                                           ; $74D7: $00
    ld c, d                                       ; $74D8: $4A
    ld d, h                                       ; $74D9: $54
    ld bc, $F804                                  ; $74DA: $01 $04 $F8
    cp a                                          ; $74DD: $BF
    ld d, e                                       ; $74DE: $53
    inc bc                                        ; $74DF: $03
    nop                                           ; $74E0: $00
    nop                                           ; $74E1: $00
    cp a                                          ; $74E2: $BF
    ld d, e                                       ; $74E3: $53
    inc b                                         ; $74E4: $04
    nop                                           ; $74E5: $00
    nop                                           ; $74E6: $00
    add sp, $53                                   ; $74E7: $E8 $53
    inc b                                         ; $74E9: $04
    nop                                           ; $74EA: $00
    nop                                           ; $74EB: $00
    ld de, $0454                                  ; $74EC: $11 $54 $04
    nop                                           ; $74EF: $00
    nop                                           ; $74F0: $00
    ld c, d                                       ; $74F1: $4A
    ld d, h                                       ; $74F2: $54
    inc b                                         ; $74F3: $04
    nop                                           ; $74F4: $00
    nop                                           ; $74F5: $00
    ld a, e                                       ; $74F6: $7B
    ld d, h                                       ; $74F7: $54
    inc b                                         ; $74F8: $04
    nop                                           ; $74F9: $00
    nop                                           ; $74FA: $00
    sbc b                                         ; $74FB: $98
    ld d, h                                       ; $74FC: $54
    nop                                           ; $74FD: $00
    ld b, d                                       ; $74FE: $42
    ld c, a                                       ; $74FF: $4F
    rst $38                                       ; $7500: $FF
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    cp b                                          ; $7503: $B8
    ld d, l                                       ; $7504: $55
    nop                                           ; $7505: $00
    ld b, [hl]                                    ; $7506: $46
    rst $38                                       ; $7507: $FF
    ld [hl], h                                    ; $7508: $74
    ld c, a                                       ; $7509: $4F
    inc b                                         ; $750A: $04
    nop                                           ; $750B: $00
    nop                                           ; $750C: $00
    add hl, sp                                    ; $750D: $39
    ld d, [hl]                                    ; $750E: $56
    inc b                                         ; $750F: $04
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    ld c, d                                       ; $7512: $4A
    ld d, [hl]                                    ; $7513: $56
    inc b                                         ; $7514: $04
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    ld e, e                                       ; $7517: $5B
    ld d, [hl]                                    ; $7518: $56
    inc b                                         ; $7519: $04
    nop                                           ; $751A: $00
    nop                                           ; $751B: $00
    ld l, h                                       ; $751C: $6C
    ld d, [hl]                                    ; $751D: $56
    nop                                           ; $751E: $00
    ld b, [hl]                                    ; $751F: $46
    add hl, bc                                    ; $7520: $09
    ld [hl], l                                    ; $7521: $75
    ld c, a                                       ; $7522: $4F
    inc b                                         ; $7523: $04
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    ld a, l                                       ; $7526: $7D
    ld d, [hl]                                    ; $7527: $56
    inc b                                         ; $7528: $04
    nop                                           ; $7529: $00
    nop                                           ; $752A: $00
    add d                                         ; $752B: $82
    ld d, [hl]                                    ; $752C: $56
    inc b                                         ; $752D: $04
    nop                                           ; $752E: $00
    nop                                           ; $752F: $00
    add a                                         ; $7530: $87
    ld d, [hl]                                    ; $7531: $56
    inc b                                         ; $7532: $04
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    adc h                                         ; $7535: $8C
    ld d, [hl]                                    ; $7536: $56
    nop                                           ; $7537: $00
    ld b, [hl]                                    ; $7538: $46
    ld [hl+], a                                   ; $7539: $22
    ld [hl], l                                    ; $753A: $75
    ld c, a                                       ; $753B: $4F
    inc b                                         ; $753C: $04
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    sub c                                         ; $753F: $91
    ld d, [hl]                                    ; $7540: $56
    inc b                                         ; $7541: $04
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    and d                                         ; $7544: $A2
    ld d, [hl]                                    ; $7545: $56
    inc b                                         ; $7546: $04
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    or e                                          ; $7549: $B3
    ld d, [hl]                                    ; $754A: $56
    inc b                                         ; $754B: $04
    nop                                           ; $754C: $00
    nop                                           ; $754D: $00
    call nz, $0056                                ; $754E: $C4 $56 $00
    ld b, [hl]                                    ; $7551: $46
    dec sp                                        ; $7552: $3B
    ld [hl], l                                    ; $7553: $75
    ld c, a                                       ; $7554: $4F
    inc b                                         ; $7555: $04
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    push de                                       ; $7558: $D5
    ld d, [hl]                                    ; $7559: $56
    inc b                                         ; $755A: $04
    nop                                           ; $755B: $00
    nop                                           ; $755C: $00
    jp c, $0456                                   ; $755D: $DA $56 $04

    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    rst $18                                       ; $7562: $DF
    ld d, [hl]                                    ; $7563: $56
    inc b                                         ; $7564: $04
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    db $E4                                        ; $7567: $E4
    ld d, [hl]                                    ; $7568: $56
    nop                                           ; $7569: $00
    ld b, [hl]                                    ; $756A: $46
    ld d, h                                       ; $756B: $54
    ld [hl], l                                    ; $756C: $75
    ld c, a                                       ; $756D: $4F
    ld bc, $0000                                  ; $756E: $01 $00 $00
    push de                                       ; $7571: $D5
    ld d, [hl]                                    ; $7572: $56
    nop                                           ; $7573: $00
    ld c, b                                       ; $7574: $48
    ld c, a                                       ; $7575: $4F
    ld bc, $0000                                  ; $7576: $01 $00 $00
    push de                                       ; $7579: $D5
    ld d, [hl]                                    ; $757A: $56
    nop                                           ; $757B: $00
    ld c, b                                       ; $757C: $48
    ld c, a                                       ; $757D: $4F
    ld bc, $0000                                  ; $757E: $01 $00 $00
    jp c, $0056                                   ; $7581: $DA $56 $00

    ld c, b                                       ; $7584: $48
    ld c, a                                       ; $7585: $4F
    ld bc, $0000                                  ; $7586: $01 $00 $00
    jp c, $0056                                   ; $7589: $DA $56 $00

    ld c, b                                       ; $758C: $48
    ld c, a                                       ; $758D: $4F
    ld bc, $0000                                  ; $758E: $01 $00 $00
    rst $18                                       ; $7591: $DF
    ld d, [hl]                                    ; $7592: $56
    nop                                           ; $7593: $00
    ld c, b                                       ; $7594: $48
    ld c, a                                       ; $7595: $4F
    ld bc, $0000                                  ; $7596: $01 $00 $00
    rst $18                                       ; $7599: $DF
    ld d, [hl]                                    ; $759A: $56
    nop                                           ; $759B: $00
    ld c, b                                       ; $759C: $48
    ld c, a                                       ; $759D: $4F
    ld bc, $0000                                  ; $759E: $01 $00 $00
    db $E4                                        ; $75A1: $E4
    ld d, [hl]                                    ; $75A2: $56
    nop                                           ; $75A3: $00
    ld c, b                                       ; $75A4: $48
    ld c, a                                       ; $75A5: $4F
    ld bc, $0000                                  ; $75A6: $01 $00 $00
    db $E4                                        ; $75A9: $E4
    ld d, [hl]                                    ; $75AA: $56
    nop                                           ; $75AB: $00
    ld c, b                                       ; $75AC: $48
    ld b, [hl]                                    ; $75AD: $46
    ld d, h                                       ; $75AE: $54
    ld [hl], l                                    ; $75AF: $75
    ld c, a                                       ; $75B0: $4F
    inc b                                         ; $75B1: $04
    nop                                           ; $75B2: $00
    nop                                           ; $75B3: $00
    ld l, b                                       ; $75B4: $68
    ld d, a                                       ; $75B5: $57
    inc b                                         ; $75B6: $04
    nop                                           ; $75B7: $00
    nop                                           ; $75B8: $00
    ld l, l                                       ; $75B9: $6D
    ld d, a                                       ; $75BA: $57
    inc b                                         ; $75BB: $04
    nop                                           ; $75BC: $00
    nop                                           ; $75BD: $00
    halt                                          ; $75BE: $76
    ld d, a                                       ; $75BF: $57
    inc b                                         ; $75C0: $04
    nop                                           ; $75C1: $00
    nop                                           ; $75C2: $00
    add e                                         ; $75C3: $83
    ld d, a                                       ; $75C4: $57
    inc b                                         ; $75C5: $04
    nop                                           ; $75C6: $00
    nop                                           ; $75C7: $00
    sub h                                         ; $75C8: $94
    ld d, a                                       ; $75C9: $57
    inc b                                         ; $75CA: $04
    nop                                           ; $75CB: $00
    nop                                           ; $75CC: $00
    xor c                                         ; $75CD: $A9
    ld d, a                                       ; $75CE: $57
    inc b                                         ; $75CF: $04
    nop                                           ; $75D0: $00
    nop                                           ; $75D1: $00
    jp nz, $0457                                  ; $75D2: $C2 $57 $04

    nop                                           ; $75D5: $00
    nop                                           ; $75D6: $00
    rst $18                                       ; $75D7: $DF
    ld d, a                                       ; $75D8: $57
    inc b                                         ; $75D9: $04
    nop                                           ; $75DA: $00
    nop                                           ; $75DB: $00
    nop                                           ; $75DC: $00
    ld e, b                                       ; $75DD: $58
    inc b                                         ; $75DE: $04
    nop                                           ; $75DF: $00
    nop                                           ; $75E0: $00
    dec h                                         ; $75E1: $25
    ld e, b                                       ; $75E2: $58
    inc b                                         ; $75E3: $04
    nop                                           ; $75E4: $00
    nop                                           ; $75E5: $00
    ld c, [hl]                                    ; $75E6: $4E
    ld e, b                                       ; $75E7: $58
    inc b                                         ; $75E8: $04
    nop                                           ; $75E9: $00
    nop                                           ; $75EA: $00
    ld a, e                                       ; $75EB: $7B
    ld e, b                                       ; $75EC: $58
    inc b                                         ; $75ED: $04
    nop                                           ; $75EE: $00
    nop                                           ; $75EF: $00
    xor h                                         ; $75F0: $AC
    ld e, b                                       ; $75F1: $58
    inc b                                         ; $75F2: $04
    nop                                           ; $75F3: $00
    nop                                           ; $75F4: $00
    pop hl                                        ; $75F5: $E1
    ld e, b                                       ; $75F6: $58
    inc b                                         ; $75F7: $04
    nop                                           ; $75F8: $00
    nop                                           ; $75F9: $00
    ld [bc], a                                    ; $75FA: $02
    ld e, c                                       ; $75FB: $59
    inc c                                         ; $75FC: $0C
    nop                                           ; $75FD: $00
    nop                                           ; $75FE: $00
    dec de                                        ; $75FF: $1B
    ld e, c                                       ; $7600: $59
    nop                                           ; $7601: $00
    ld b, d                                       ; $7602: $42
    ld c, a                                       ; $7603: $4F
    rst $38                                       ; $7604: $FF
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    dec de                                        ; $7607: $1B
    ld e, c                                       ; $7608: $59
    nop                                           ; $7609: $00
    ld b, [hl]                                    ; $760A: $46
    inc bc                                        ; $760B: $03
    halt                                          ; $760C: $76
    ld c, a                                       ; $760D: $4F
    ld [bc], a                                    ; $760E: $02
    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    ld d, h                                       ; $7611: $54
    ld e, c                                       ; $7612: $59
    inc b                                         ; $7613: $04
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    ld e, l                                       ; $7616: $5D
    ld e, c                                       ; $7617: $59
    ld [rRAMG], sp                                ; $7618: $08 $00 $00
    ld l, d                                       ; $761B: $6A
    ld e, c                                       ; $761C: $59
    stop                                          ; $761D: $10 $00
    nop                                           ; $761F: $00
    add e                                         ; $7620: $83
    ld e, c                                       ; $7621: $59
    jr nz, jr_040_7624                            ; $7622: $20 $00

jr_040_7624:
    nop                                           ; $7624: $00
    and h                                         ; $7625: $A4
    ld e, c                                       ; $7626: $59
    inc b                                         ; $7627: $04
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    add e                                         ; $762A: $83
    ld e, c                                       ; $762B: $59
    inc b                                         ; $762C: $04
    nop                                           ; $762D: $00
    nop                                           ; $762E: $00
    ld l, d                                       ; $762F: $6A
    ld e, c                                       ; $7630: $59
    inc b                                         ; $7631: $04
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    ld e, l                                       ; $7634: $5D
    ld e, c                                       ; $7635: $59
    inc b                                         ; $7636: $04
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    ld d, h                                       ; $7639: $54
    ld e, c                                       ; $763A: $59
    nop                                           ; $763B: $00
    ld b, d                                       ; $763C: $42
    ld c, a                                       ; $763D: $4F
    rst $38                                       ; $763E: $FF
    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    reti                                          ; $7641: $D9


    ld e, c                                       ; $7642: $59
    nop                                           ; $7643: $00
    ld b, [hl]                                    ; $7644: $46
    dec a                                         ; $7645: $3D
    halt                                          ; $7646: $76
    ld c, a                                       ; $7647: $4F
    inc b                                         ; $7648: $04
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    ld [$0459], a                                 ; $764B: $EA $59 $04
    nop                                           ; $764E: $00
    nop                                           ; $764F: $00
    inc bc                                        ; $7650: $03
    ld e, d                                       ; $7651: $5A
    inc b                                         ; $7652: $04
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    ld [$0459], a                                 ; $7655: $EA $59 $04
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    inc bc                                        ; $765A: $03
    ld e, d                                       ; $765B: $5A
    nop                                           ; $765C: $00
    ld b, d                                       ; $765D: $42
    ld c, a                                       ; $765E: $4F
    rst $38                                       ; $765F: $FF
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    inc e                                         ; $7662: $1C
    ld e, d                                       ; $7663: $5A
    nop                                           ; $7664: $00
    ld b, [hl]                                    ; $7665: $46
    ld e, [hl]                                    ; $7666: $5E
    halt                                          ; $7667: $76
    ld c, a                                       ; $7668: $4F
    inc b                                         ; $7669: $04
    nop                                           ; $766A: $00
    nop                                           ; $766B: $00
    dec l                                         ; $766C: $2D
    ld e, d                                       ; $766D: $5A
    inc b                                         ; $766E: $04
    nop                                           ; $766F: $00
    nop                                           ; $7670: $00
    ld b, [hl]                                    ; $7671: $46
    ld e, d                                       ; $7672: $5A
    inc b                                         ; $7673: $04
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    dec l                                         ; $7676: $2D
    ld e, d                                       ; $7677: $5A
    inc b                                         ; $7678: $04
    nop                                           ; $7679: $00
    nop                                           ; $767A: $00
    ld b, [hl]                                    ; $767B: $46
    ld e, d                                       ; $767C: $5A
    nop                                           ; $767D: $00
    ld b, d                                       ; $767E: $42
    ld c, a                                       ; $767F: $4F
    rst $38                                       ; $7680: $FF
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    ld e, a                                       ; $7683: $5F
    ld e, d                                       ; $7684: $5A
    nop                                           ; $7685: $00
    ld b, [hl]                                    ; $7686: $46
    ld a, a                                       ; $7687: $7F
    halt                                          ; $7688: $76
    ld c, a                                       ; $7689: $4F
    inc b                                         ; $768A: $04
    nop                                           ; $768B: $00
    nop                                           ; $768C: $00
    ld [hl], b                                    ; $768D: $70
    ld e, d                                       ; $768E: $5A
    inc b                                         ; $768F: $04
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    adc c                                         ; $7692: $89
    ld e, d                                       ; $7693: $5A
    inc b                                         ; $7694: $04
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    ld [hl], b                                    ; $7697: $70
    ld e, d                                       ; $7698: $5A
    inc b                                         ; $7699: $04
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00
    adc c                                         ; $769C: $89
    ld e, d                                       ; $769D: $5A
    nop                                           ; $769E: $00
    ld b, d                                       ; $769F: $42
    ld c, a                                       ; $76A0: $4F
    rst $38                                       ; $76A1: $FF
    nop                                           ; $76A2: $00
    nop                                           ; $76A3: $00
    and d                                         ; $76A4: $A2
    ld e, d                                       ; $76A5: $5A
    nop                                           ; $76A6: $00
    ld b, [hl]                                    ; $76A7: $46
    and b                                         ; $76A8: $A0
    halt                                          ; $76A9: $76
    ld c, a                                       ; $76AA: $4F
    inc b                                         ; $76AB: $04
    nop                                           ; $76AC: $00
    nop                                           ; $76AD: $00
    or e                                          ; $76AE: $B3
    ld e, d                                       ; $76AF: $5A
    inc b                                         ; $76B0: $04
    nop                                           ; $76B1: $00
    nop                                           ; $76B2: $00
    call z, $045A                                 ; $76B3: $CC $5A $04
    nop                                           ; $76B6: $00
    nop                                           ; $76B7: $00
    or e                                          ; $76B8: $B3
    ld e, d                                       ; $76B9: $5A
    inc b                                         ; $76BA: $04
    nop                                           ; $76BB: $00
    nop                                           ; $76BC: $00
    call z, $005A                                 ; $76BD: $CC $5A $00
    ld b, d                                       ; $76C0: $42
    ld c, a                                       ; $76C1: $4F
    ld bc, $FF00                                  ; $76C2: $01 $00 $FF
    push hl                                       ; $76C5: $E5
    ld e, d                                       ; $76C6: $5A
    nop                                           ; $76C7: $00
    ld c, b                                       ; $76C8: $48
    ld c, a                                       ; $76C9: $4F
    ld bc, $FF00                                  ; $76CA: $01 $00 $FF
    push hl                                       ; $76CD: $E5
    ld e, d                                       ; $76CE: $5A
    nop                                           ; $76CF: $00
    ld c, b                                       ; $76D0: $48
    ld c, a                                       ; $76D1: $4F
    ld bc, $FF00                                  ; $76D2: $01 $00 $FF
    push hl                                       ; $76D5: $E5
    ld e, d                                       ; $76D6: $5A
    nop                                           ; $76D7: $00
    ld c, b                                       ; $76D8: $48
    ld c, a                                       ; $76D9: $4F
    ld bc, $FF00                                  ; $76DA: $01 $00 $FF
    push hl                                       ; $76DD: $E5
    ld e, d                                       ; $76DE: $5A
    nop                                           ; $76DF: $00
    ld c, b                                       ; $76E0: $48
    ld c, a                                       ; $76E1: $4F
    ld bc, $FF00                                  ; $76E2: $01 $00 $FF
    ld a, [bc]                                    ; $76E5: $0A
    ld e, e                                       ; $76E6: $5B
    nop                                           ; $76E7: $00
    ld c, b                                       ; $76E8: $48
    ld c, a                                       ; $76E9: $4F
    ld bc, $FF00                                  ; $76EA: $01 $00 $FF
    ld a, [bc]                                    ; $76ED: $0A
    ld e, e                                       ; $76EE: $5B
    nop                                           ; $76EF: $00
    ld c, b                                       ; $76F0: $48
    ld c, a                                       ; $76F1: $4F
    ld bc, $FF00                                  ; $76F2: $01 $00 $FF
    ld a, [bc]                                    ; $76F5: $0A
    ld e, e                                       ; $76F6: $5B
    nop                                           ; $76F7: $00
    ld c, b                                       ; $76F8: $48
    ld c, a                                       ; $76F9: $4F
    ld bc, $FF00                                  ; $76FA: $01 $00 $FF
    ld a, [bc]                                    ; $76FD: $0A
    ld e, e                                       ; $76FE: $5B
    nop                                           ; $76FF: $00
    ld c, b                                       ; $7700: $48
    ld c, a                                       ; $7701: $4F
    ld bc, $FF00                                  ; $7702: $01 $00 $FF
    inc sp                                        ; $7705: $33
    ld e, e                                       ; $7706: $5B
    nop                                           ; $7707: $00
    ld c, b                                       ; $7708: $48
    ld c, a                                       ; $7709: $4F
    ld bc, $FF00                                  ; $770A: $01 $00 $FF
    inc sp                                        ; $770D: $33
    ld e, e                                       ; $770E: $5B
    nop                                           ; $770F: $00
    ld c, b                                       ; $7710: $48
    ld c, a                                       ; $7711: $4F
    ld bc, $FF00                                  ; $7712: $01 $00 $FF
    inc sp                                        ; $7715: $33
    ld e, e                                       ; $7716: $5B
    nop                                           ; $7717: $00
    ld c, b                                       ; $7718: $48
    ld c, a                                       ; $7719: $4F
    ld bc, $FF00                                  ; $771A: $01 $00 $FF
    inc sp                                        ; $771D: $33
    ld e, e                                       ; $771E: $5B
    nop                                           ; $771F: $00
    ld c, b                                       ; $7720: $48
    ld c, a                                       ; $7721: $4F
    ld bc, $FF00                                  ; $7722: $01 $00 $FF
    ld e, h                                       ; $7725: $5C
    ld e, e                                       ; $7726: $5B
    nop                                           ; $7727: $00
    ld c, b                                       ; $7728: $48
    ld c, a                                       ; $7729: $4F
    ld bc, $FF00                                  ; $772A: $01 $00 $FF
    ld e, h                                       ; $772D: $5C
    ld e, e                                       ; $772E: $5B
    nop                                           ; $772F: $00
    ld c, b                                       ; $7730: $48
    ld c, a                                       ; $7731: $4F
    ld bc, $FF00                                  ; $7732: $01 $00 $FF
    ld e, h                                       ; $7735: $5C
    ld e, e                                       ; $7736: $5B
    nop                                           ; $7737: $00
    ld c, b                                       ; $7738: $48
    ld c, a                                       ; $7739: $4F
    ld bc, $FF00                                  ; $773A: $01 $00 $FF
    ld e, h                                       ; $773D: $5C
    ld e, e                                       ; $773E: $5B
    nop                                           ; $773F: $00
    ld b, d                                       ; $7740: $42
    ld c, a                                       ; $7741: $4F
    inc b                                         ; $7742: $04
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    sbc c                                         ; $7745: $99
    ld e, e                                       ; $7746: $5B
    inc b                                         ; $7747: $04
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    cp d                                          ; $774A: $BA
    ld e, e                                       ; $774B: $5B
    inc b                                         ; $774C: $04
    nop                                           ; $774D: $00
    nop                                           ; $774E: $00
    db $DB                                        ; $774F: $DB
    ld e, e                                       ; $7750: $5B
    inc b                                         ; $7751: $04
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    inc b                                         ; $7754: $04
    ld e, h                                       ; $7755: $5C
    inc b                                         ; $7756: $04
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    dec [hl]                                      ; $7759: $35
    ld e, h                                       ; $775A: $5C
    stop                                          ; $775B: $10 $00
    nop                                           ; $775D: $00
    ld e, [hl]                                    ; $775E: $5E
    ld e, h                                       ; $775F: $5C
    nop                                           ; $7760: $00
    ld b, d                                       ; $7761: $42
    ld c, a                                       ; $7762: $4F
    ld [rRAMG], sp                                ; $7763: $08 $00 $00
    ld l, a                                       ; $7766: $6F
    ld e, h                                       ; $7767: $5C
    ld [rRAMG], sp                                ; $7768: $08 $00 $00
    ld [hl], h                                    ; $776B: $74
    ld e, h                                       ; $776C: $5C
    ld [rRAMG], sp                                ; $776D: $08 $00 $00
    ld a, l                                       ; $7770: $7D
    ld e, h                                       ; $7771: $5C
    ld [rRAMG], sp                                ; $7772: $08 $00 $00
    adc d                                         ; $7775: $8A
    ld e, h                                       ; $7776: $5C
    ld [rRAMG], sp                                ; $7777: $08 $00 $00
    sbc e                                         ; $777A: $9B
    ld e, h                                       ; $777B: $5C
    ld [rRAMG], sp                                ; $777C: $08 $00 $00
    or b                                          ; $777F: $B0
    ld e, h                                       ; $7780: $5C
    ld [rRAMG], sp                                ; $7781: $08 $00 $00
    ret                                           ; $7784: $C9


    ld e, h                                       ; $7785: $5C
    ld [rRAMG], sp                                ; $7786: $08 $00 $00
    and $5C                                       ; $7789: $E6 $5C
    ld [rRAMG], sp                                ; $778B: $08 $00 $00
    rlca                                          ; $778E: $07
    ld e, l                                       ; $778F: $5D
    ld [rRAMG], sp                                ; $7790: $08 $00 $00
    inc l                                         ; $7793: $2C
    ld e, l                                       ; $7794: $5D
    ld [rRAMG], sp                                ; $7795: $08 $00 $00
    ld d, l                                       ; $7798: $55
    ld e, l                                       ; $7799: $5D
    ld [rRAMG], sp                                ; $779A: $08 $00 $00
    add d                                         ; $779D: $82
    ld e, l                                       ; $779E: $5D
    ld [rRAMG], sp                                ; $779F: $08 $00 $00
    or e                                          ; $77A2: $B3
    ld e, l                                       ; $77A3: $5D
    ld [rRAMG], sp                                ; $77A4: $08 $00 $00
    add sp, $5D                                   ; $77A7: $E8 $5D
    ld [rRAMG], sp                                ; $77A9: $08 $00 $00
    ld hl, $085E                                  ; $77AC: $21 $5E $08
    nop                                           ; $77AF: $00
    nop                                           ; $77B0: $00
    ld e, [hl]                                    ; $77B1: $5E
    ld e, [hl]                                    ; $77B2: $5E
    nop                                           ; $77B3: $00
    ld c, a                                       ; $77B4: $4F
    rst $38                                       ; $77B5: $FF
    nop                                           ; $77B6: $00
    nop                                           ; $77B7: $00
    sbc a                                         ; $77B8: $9F
    ld e, [hl]                                    ; $77B9: $5E
    nop                                           ; $77BA: $00
    ld b, [hl]                                    ; $77BB: $46
    or h                                          ; $77BC: $B4
    ld [hl], a                                    ; $77BD: $77
    ld c, a                                       ; $77BE: $4F
    ld bc, $0000                                  ; $77BF: $01 $00 $00
    db $E4                                        ; $77C2: $E4
    ld e, [hl]                                    ; $77C3: $5E
    nop                                           ; $77C4: $00
    ld c, b                                       ; $77C5: $48
    ld c, a                                       ; $77C6: $4F
    ld bc, $0000                                  ; $77C7: $01 $00 $00
    push af                                       ; $77CA: $F5
    ld e, [hl]                                    ; $77CB: $5E
    nop                                           ; $77CC: $00
    ld c, b                                       ; $77CD: $48
    ld b, [hl]                                    ; $77CE: $46
    cp [hl]                                       ; $77CF: $BE
    ld [hl], a                                    ; $77D0: $77
    ld c, a                                       ; $77D1: $4F
    ld bc, $0004                                  ; $77D2: $01 $04 $00
    db $E4                                        ; $77D5: $E4
    ld e, [hl]                                    ; $77D6: $5E
    nop                                           ; $77D7: $00
    ld c, b                                       ; $77D8: $48
    ld c, a                                       ; $77D9: $4F
    ld bc, $0004                                  ; $77DA: $01 $04 $00
    push af                                       ; $77DD: $F5
    ld e, [hl]                                    ; $77DE: $5E
    nop                                           ; $77DF: $00
    ld c, b                                       ; $77E0: $48
    ld b, [hl]                                    ; $77E1: $46
    pop de                                        ; $77E2: $D1
    ld [hl], a                                    ; $77E3: $77
    ld c, a                                       ; $77E4: $4F
    ld bc, $0000                                  ; $77E5: $01 $00 $00
    ld b, $5F                                     ; $77E8: $06 $5F
    nop                                           ; $77EA: $00
    ld c, b                                       ; $77EB: $48
    ld c, a                                       ; $77EC: $4F
    ld bc, $0000                                  ; $77ED: $01 $00 $00
    ld b, $5F                                     ; $77F0: $06 $5F
    nop                                           ; $77F2: $00
    ld c, b                                       ; $77F3: $48
    ld c, a                                       ; $77F4: $4F
    ld bc, $0000                                  ; $77F5: $01 $00 $00
    ld b, $5F                                     ; $77F8: $06 $5F
    nop                                           ; $77FA: $00
    ld c, b                                       ; $77FB: $48
    ld c, a                                       ; $77FC: $4F
    ld bc, $0000                                  ; $77FD: $01 $00 $00
    ld b, $5F                                     ; $7800: $06 $5F
    nop                                           ; $7802: $00
    ld c, b                                       ; $7803: $48
    ld c, a                                       ; $7804: $4F
    ld bc, $0000                                  ; $7805: $01 $00 $00
    cpl                                           ; $7808: $2F
    ld e, a                                       ; $7809: $5F
    nop                                           ; $780A: $00
    ld c, b                                       ; $780B: $48
    ld c, a                                       ; $780C: $4F
    ld bc, $0000                                  ; $780D: $01 $00 $00
    cpl                                           ; $7810: $2F
    ld e, a                                       ; $7811: $5F
    nop                                           ; $7812: $00
    ld c, b                                       ; $7813: $48
    ld c, a                                       ; $7814: $4F
    ld bc, $0000                                  ; $7815: $01 $00 $00
    cpl                                           ; $7818: $2F
    ld e, a                                       ; $7819: $5F
    nop                                           ; $781A: $00
    ld c, b                                       ; $781B: $48
    ld c, a                                       ; $781C: $4F
    ld bc, $0000                                  ; $781D: $01 $00 $00
    cpl                                           ; $7820: $2F
    ld e, a                                       ; $7821: $5F
    nop                                           ; $7822: $00
    ld c, b                                       ; $7823: $48
    ld c, a                                       ; $7824: $4F
    ld bc, $0000                                  ; $7825: $01 $00 $00
    ld d, h                                       ; $7828: $54
    ld e, a                                       ; $7829: $5F
    nop                                           ; $782A: $00
    ld c, b                                       ; $782B: $48
    ld c, a                                       ; $782C: $4F
    ld bc, $0000                                  ; $782D: $01 $00 $00
    ld d, h                                       ; $7830: $54
    ld e, a                                       ; $7831: $5F
    nop                                           ; $7832: $00
    ld c, b                                       ; $7833: $48
    ld c, a                                       ; $7834: $4F
    ld bc, $0000                                  ; $7835: $01 $00 $00
    ld d, h                                       ; $7838: $54
    ld e, a                                       ; $7839: $5F
    nop                                           ; $783A: $00
    ld c, b                                       ; $783B: $48
    ld c, a                                       ; $783C: $4F
    ld bc, $0000                                  ; $783D: $01 $00 $00
    ld d, h                                       ; $7840: $54
    ld e, a                                       ; $7841: $5F
    nop                                           ; $7842: $00
    ld c, b                                       ; $7843: $48
    ld c, a                                       ; $7844: $4F
    ld bc, $0000                                  ; $7845: $01 $00 $00
    ld a, c                                       ; $7848: $79
    ld e, a                                       ; $7849: $5F
    nop                                           ; $784A: $00
    ld c, b                                       ; $784B: $48
    ld c, a                                       ; $784C: $4F
    ld bc, $0000                                  ; $784D: $01 $00 $00
    ld a, c                                       ; $7850: $79
    ld e, a                                       ; $7851: $5F
    nop                                           ; $7852: $00
    ld c, b                                       ; $7853: $48
    ld c, a                                       ; $7854: $4F
    ld bc, $0000                                  ; $7855: $01 $00 $00
    ld a, c                                       ; $7858: $79
    ld e, a                                       ; $7859: $5F
    nop                                           ; $785A: $00
    ld c, b                                       ; $785B: $48
    ld c, a                                       ; $785C: $4F
    ld bc, $0000                                  ; $785D: $01 $00 $00
    ld a, c                                       ; $7860: $79
    ld e, a                                       ; $7861: $5F
    nop                                           ; $7862: $00
    ld c, b                                       ; $7863: $48
    ld b, [hl]                                    ; $7864: $46
    db $E4                                        ; $7865: $E4
    ld [hl], a                                    ; $7866: $77
    ld c, a                                       ; $7867: $4F
    inc b                                         ; $7868: $04
    nop                                           ; $7869: $00
    nop                                           ; $786A: $00
    and [hl]                                      ; $786B: $A6
    ld e, a                                       ; $786C: $5F
    inc b                                         ; $786D: $04
    nop                                           ; $786E: $00
    nop                                           ; $786F: $00
    or a                                          ; $7870: $B7
    ld e, a                                       ; $7871: $5F
    inc b                                         ; $7872: $04
    nop                                           ; $7873: $00
    nop                                           ; $7874: $00
    ret nc                                        ; $7875: $D0

    ld e, a                                       ; $7876: $5F
    inc b                                         ; $7877: $04
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    ld de, $0460                                  ; $787A: $11 $60 $04
    nop                                           ; $787D: $00
    nop                                           ; $787E: $00
    ld e, d                                       ; $787F: $5A
    ld h, b                                       ; $7880: $60
    nop                                           ; $7881: $00
    ld b, d                                       ; $7882: $42
    ld c, a                                       ; $7883: $4F
    stop                                          ; $7884: $10 $00
    nop                                           ; $7886: $00
    ld [hl], a                                    ; $7887: $77
    ld h, c                                       ; $7888: $61
    stop                                          ; $7889: $10 $00
    nop                                           ; $788B: $00
    ld d, d                                       ; $788C: $52
    ld h, c                                       ; $788D: $61
    stop                                          ; $788E: $10 $00
    nop                                           ; $7890: $00
    add hl, bc                                    ; $7891: $09
    ld h, c                                       ; $7892: $61
    nop                                           ; $7893: $00
    ld c, a                                       ; $7894: $4F
    inc b                                         ; $7895: $04
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    or h                                          ; $7898: $B4
    ld h, b                                       ; $7899: $60
    inc b                                         ; $789A: $04
    nop                                           ; $789B: $00
    nop                                           ; $789C: $00
    add hl, bc                                    ; $789D: $09
    ld h, c                                       ; $789E: $61
    nop                                           ; $789F: $00
    ld b, [hl]                                    ; $78A0: $46
    sub h                                         ; $78A1: $94
    ld a, b                                       ; $78A2: $78
    ld c, a                                       ; $78A3: $4F
    ld bc, $0100                                  ; $78A4: $01 $00 $01
    add hl, bc                                    ; $78A7: $09
    ld h, c                                       ; $78A8: $61
    nop                                           ; $78A9: $00
    ld c, b                                       ; $78AA: $48
    ld c, a                                       ; $78AB: $4F
    ld bc, $0100                                  ; $78AC: $01 $00 $01
    add hl, bc                                    ; $78AF: $09
    ld h, c                                       ; $78B0: $61
    nop                                           ; $78B1: $00
    ld c, b                                       ; $78B2: $48
    ld c, a                                       ; $78B3: $4F
    ld bc, $0100                                  ; $78B4: $01 $00 $01
    add hl, bc                                    ; $78B7: $09
    ld h, c                                       ; $78B8: $61
    nop                                           ; $78B9: $00
    ld c, b                                       ; $78BA: $48
    ld c, a                                       ; $78BB: $4F
    ld bc, $0100                                  ; $78BC: $01 $00 $01
    add hl, bc                                    ; $78BF: $09
    ld h, c                                       ; $78C0: $61
    nop                                           ; $78C1: $00
    ld c, b                                       ; $78C2: $48
    ld c, a                                       ; $78C3: $4F
    ld bc, $0100                                  ; $78C4: $01 $00 $01
    ld d, d                                       ; $78C7: $52
    ld h, c                                       ; $78C8: $61
    nop                                           ; $78C9: $00
    ld c, b                                       ; $78CA: $48
    ld c, a                                       ; $78CB: $4F
    ld bc, $0100                                  ; $78CC: $01 $00 $01
    ld d, d                                       ; $78CF: $52
    ld h, c                                       ; $78D0: $61
    nop                                           ; $78D1: $00
    ld c, b                                       ; $78D2: $48
    ld c, a                                       ; $78D3: $4F
    ld bc, $0100                                  ; $78D4: $01 $00 $01
    ld d, d                                       ; $78D7: $52
    ld h, c                                       ; $78D8: $61
    nop                                           ; $78D9: $00
    ld c, b                                       ; $78DA: $48
    ld c, a                                       ; $78DB: $4F
    ld bc, $0100                                  ; $78DC: $01 $00 $01
    ld d, d                                       ; $78DF: $52
    ld h, c                                       ; $78E0: $61
    nop                                           ; $78E1: $00
    ld c, b                                       ; $78E2: $48
    ld c, a                                       ; $78E3: $4F
    ld bc, $0100                                  ; $78E4: $01 $00 $01
    ld [hl], a                                    ; $78E7: $77
    ld h, c                                       ; $78E8: $61
    nop                                           ; $78E9: $00
    ld c, b                                       ; $78EA: $48
    ld c, a                                       ; $78EB: $4F
    ld bc, $0100                                  ; $78EC: $01 $00 $01
    ld [hl], a                                    ; $78EF: $77
    ld h, c                                       ; $78F0: $61
    nop                                           ; $78F1: $00
    ld c, b                                       ; $78F2: $48
    ld c, a                                       ; $78F3: $4F
    ld bc, $0100                                  ; $78F4: $01 $00 $01
    ld [hl], a                                    ; $78F7: $77
    ld h, c                                       ; $78F8: $61
    nop                                           ; $78F9: $00
    ld c, b                                       ; $78FA: $48
    ld c, a                                       ; $78FB: $4F
    ld bc, $0100                                  ; $78FC: $01 $00 $01
    ld [hl], a                                    ; $78FF: $77
    ld h, c                                       ; $7900: $61
    nop                                           ; $7901: $00
    ld b, d                                       ; $7902: $42
    ld c, a                                       ; $7903: $4F
    ld [de], a                                    ; $7904: $12
    nop                                           ; $7905: $00
    ld b, $88                                     ; $7906: $06 $88
    ld h, c                                       ; $7908: $61
    inc b                                         ; $7909: $04
    nop                                           ; $790A: $00
    db $FD                                        ; $790B: $FD
    adc b                                         ; $790C: $88
    ld h, c                                       ; $790D: $61
    inc b                                         ; $790E: $04
    nop                                           ; $790F: $00
    cp $88                                        ; $7910: $FE $88
    ld h, c                                       ; $7912: $61
    inc b                                         ; $7913: $04
    nop                                           ; $7914: $00
    rst $38                                       ; $7915: $FF
    adc b                                         ; $7916: $88
    ld h, c                                       ; $7917: $61
    ld [rRAMG], sp                                ; $7918: $08 $00 $00
    adc b                                         ; $791B: $88
    ld h, c                                       ; $791C: $61
    inc b                                         ; $791D: $04
    nop                                           ; $791E: $00
    ld bc, $6188                                  ; $791F: $01 $88 $61
    inc b                                         ; $7922: $04
    nop                                           ; $7923: $00
    ld [bc], a                                    ; $7924: $02
    adc b                                         ; $7925: $88
    ld h, c                                       ; $7926: $61
    inc b                                         ; $7927: $04
    nop                                           ; $7928: $00
    inc bc                                        ; $7929: $03
    adc b                                         ; $792A: $88
    ld h, c                                       ; $792B: $61
    ld [bc], a                                    ; $792C: $02
    nop                                           ; $792D: $00
    cp $88                                        ; $792E: $FE $88
    ld h, c                                       ; $7930: $61
    ld [bc], a                                    ; $7931: $02
    nop                                           ; $7932: $00
    rst $38                                       ; $7933: $FF
    adc b                                         ; $7934: $88
    ld h, c                                       ; $7935: $61
    inc b                                         ; $7936: $04
    nop                                           ; $7937: $00
    nop                                           ; $7938: $00
    adc b                                         ; $7939: $88
    ld h, c                                       ; $793A: $61
    ld [bc], a                                    ; $793B: $02
    nop                                           ; $793C: $00
    ld bc, $6188                                  ; $793D: $01 $88 $61
    ld [bc], a                                    ; $7940: $02
    nop                                           ; $7941: $00
    ld [bc], a                                    ; $7942: $02
    adc b                                         ; $7943: $88
    ld h, c                                       ; $7944: $61
    nop                                           ; $7945: $00
    ld c, a                                       ; $7946: $4F
    rst $38                                       ; $7947: $FF
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    adc b                                         ; $794A: $88
    ld h, c                                       ; $794B: $61
    nop                                           ; $794C: $00
    ld b, [hl]                                    ; $794D: $46
    ld b, [hl]                                    ; $794E: $46
    ld a, c                                       ; $794F: $79
    ld c, a                                       ; $7950: $4F
    inc b                                         ; $7951: $04
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    ld a, h                                       ; $7954: $7C
    ld h, e                                       ; $7955: $63
    inc b                                         ; $7956: $04
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    add c                                         ; $7959: $81
    ld h, e                                       ; $795A: $63
    inc b                                         ; $795B: $04
    nop                                           ; $795C: $00
    nop                                           ; $795D: $00
    add [hl]                                      ; $795E: $86
    ld h, e                                       ; $795F: $63
    inc b                                         ; $7960: $04
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    adc e                                         ; $7963: $8B
    ld h, e                                       ; $7964: $63
    inc b                                         ; $7965: $04
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    sub b                                         ; $7968: $90
    ld h, e                                       ; $7969: $63
    inc b                                         ; $796A: $04
    nop                                           ; $796B: $00
    nop                                           ; $796C: $00
    sub l                                         ; $796D: $95
    ld h, e                                       ; $796E: $63
    inc b                                         ; $796F: $04
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    sbc d                                         ; $7972: $9A
    ld h, e                                       ; $7973: $63
    inc b                                         ; $7974: $04
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    sbc a                                         ; $7977: $9F
    ld h, e                                       ; $7978: $63
    nop                                           ; $7979: $00
    ld b, [hl]                                    ; $797A: $46
    ld d, b                                       ; $797B: $50
    ld a, c                                       ; $797C: $79
    ld c, a                                       ; $797D: $4F
    inc b                                         ; $797E: $04
    nop                                           ; $797F: $00
    nop                                           ; $7980: $00
    and h                                         ; $7981: $A4
    ld h, e                                       ; $7982: $63
    inc b                                         ; $7983: $04
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    xor c                                         ; $7986: $A9
    ld h, e                                       ; $7987: $63
    inc b                                         ; $7988: $04
    nop                                           ; $7989: $00
    nop                                           ; $798A: $00
    xor [hl]                                      ; $798B: $AE
    ld h, e                                       ; $798C: $63
    nop                                           ; $798D: $00
    ld b, [hl]                                    ; $798E: $46
    ld a, l                                       ; $798F: $7D
    ld a, c                                       ; $7990: $79
    ld c, a                                       ; $7991: $4F
    ld [rRAMG], sp                                ; $7992: $08 $00 $00
    or e                                          ; $7995: $B3
    ld h, e                                       ; $7996: $63
    ld [rRAMG], sp                                ; $7997: $08 $00 $00
    db $EC                                        ; $799A: $EC
    ld h, e                                       ; $799B: $63
    ld [rRAMG], sp                                ; $799C: $08 $00 $00
    dec h                                         ; $799F: $25
    ld h, h                                       ; $79A0: $64
    ld [rRAMG], sp                                ; $79A1: $08 $00 $00
    ld h, d                                       ; $79A4: $62
    ld h, h                                       ; $79A5: $64
    ld [rRAMG], sp                                ; $79A6: $08 $00 $00
    sbc e                                         ; $79A9: $9B
    ld h, h                                       ; $79AA: $64
    nop                                           ; $79AB: $00
    ld b, [hl]                                    ; $79AC: $46
    sub c                                         ; $79AD: $91
    ld a, c                                       ; $79AE: $79
    ld c, a                                       ; $79AF: $4F
    inc b                                         ; $79B0: $04
    nop                                           ; $79B1: $00
    nop                                           ; $79B2: $00
    or e                                          ; $79B3: $B3
    ld h, e                                       ; $79B4: $63
    inc b                                         ; $79B5: $04
    nop                                           ; $79B6: $00
    nop                                           ; $79B7: $00
    db $EC                                        ; $79B8: $EC
    ld h, e                                       ; $79B9: $63
    inc b                                         ; $79BA: $04
    nop                                           ; $79BB: $00
    nop                                           ; $79BC: $00
    dec h                                         ; $79BD: $25
    ld h, h                                       ; $79BE: $64
    inc b                                         ; $79BF: $04
    nop                                           ; $79C0: $00
    nop                                           ; $79C1: $00
    ld h, d                                       ; $79C2: $62
    ld h, h                                       ; $79C3: $64
    inc b                                         ; $79C4: $04
    nop                                           ; $79C5: $00
    nop                                           ; $79C6: $00
    sbc e                                         ; $79C7: $9B
    ld h, h                                       ; $79C8: $64
    nop                                           ; $79C9: $00
    ld b, [hl]                                    ; $79CA: $46
    xor a                                         ; $79CB: $AF
    ld a, c                                       ; $79CC: $79
    ld c, a                                       ; $79CD: $4F
    ld [bc], a                                    ; $79CE: $02
    nop                                           ; $79CF: $00
    nop                                           ; $79D0: $00
    or e                                          ; $79D1: $B3
    ld h, e                                       ; $79D2: $63
    ld [bc], a                                    ; $79D3: $02
    nop                                           ; $79D4: $00
    nop                                           ; $79D5: $00
    db $EC                                        ; $79D6: $EC
    ld h, e                                       ; $79D7: $63
    ld [bc], a                                    ; $79D8: $02
    nop                                           ; $79D9: $00
    nop                                           ; $79DA: $00
    dec h                                         ; $79DB: $25
    ld h, h                                       ; $79DC: $64
    ld [bc], a                                    ; $79DD: $02
    nop                                           ; $79DE: $00
    nop                                           ; $79DF: $00
    ld h, d                                       ; $79E0: $62
    ld h, h                                       ; $79E1: $64
    ld [bc], a                                    ; $79E2: $02
    nop                                           ; $79E3: $00
    nop                                           ; $79E4: $00
    sbc e                                         ; $79E5: $9B
    ld h, h                                       ; $79E6: $64
    nop                                           ; $79E7: $00
    ld b, [hl]                                    ; $79E8: $46
    call Call_040_4F79                            ; $79E9: $CD $79 $4F
    inc bc                                        ; $79EC: $03
    nop                                           ; $79ED: $00
    nop                                           ; $79EE: $00
    call nc, $0364                                ; $79EF: $D4 $64 $03
    nop                                           ; $79F2: $00
    nop                                           ; $79F3: $00
    push af                                       ; $79F4: $F5
    ld h, h                                       ; $79F5: $64
    inc bc                                        ; $79F6: $03
    nop                                           ; $79F7: $00
    nop                                           ; $79F8: $00
    ld b, d                                       ; $79F9: $42
    ld h, l                                       ; $79FA: $65
    inc bc                                        ; $79FB: $03
    nop                                           ; $79FC: $00
    nop                                           ; $79FD: $00
    sub a                                         ; $79FE: $97
    ld h, l                                       ; $79FF: $65
    inc bc                                        ; $7A00: $03
    nop                                           ; $7A01: $00
    nop                                           ; $7A02: $00
    ret z                                         ; $7A03: $C8

    ld h, l                                       ; $7A04: $65
    nop                                           ; $7A05: $00
    ld b, d                                       ; $7A06: $42
    ld c, a                                       ; $7A07: $4F
    inc b                                         ; $7A08: $04
    nop                                           ; $7A09: $00
    nop                                           ; $7A0A: $00
    reti                                          ; $7A0B: $D9


    ld h, l                                       ; $7A0C: $65
    inc b                                         ; $7A0D: $04
    nop                                           ; $7A0E: $00
    nop                                           ; $7A0F: $00
    ld a, [c]                                     ; $7A10: $F2
    ld h, l                                       ; $7A11: $65
    inc b                                         ; $7A12: $04
    nop                                           ; $7A13: $00
    nop                                           ; $7A14: $00
    rra                                           ; $7A15: $1F
    ld h, [hl]                                    ; $7A16: $66
    inc b                                         ; $7A17: $04
    nop                                           ; $7A18: $00
    nop                                           ; $7A19: $00
    ld c, h                                       ; $7A1A: $4C
    ld h, [hl]                                    ; $7A1B: $66
    inc b                                         ; $7A1C: $04
    nop                                           ; $7A1D: $00
    nop                                           ; $7A1E: $00
    ld [hl], l                                    ; $7A1F: $75
    ld h, [hl]                                    ; $7A20: $66
    inc b                                         ; $7A21: $04
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    adc [hl]                                      ; $7A24: $8E
    ld h, [hl]                                    ; $7A25: $66
    nop                                           ; $7A26: $00
    ld b, d                                       ; $7A27: $42
    ld c, a                                       ; $7A28: $4F
    inc b                                         ; $7A29: $04
    nop                                           ; $7A2A: $00
    nop                                           ; $7A2B: $00
    inc c                                         ; $7A2C: $0C
    ld l, d                                       ; $7A2D: $6A
    inc b                                         ; $7A2E: $04
    nop                                           ; $7A2F: $00
    nop                                           ; $7A30: $00
    dec d                                         ; $7A31: $15
    ld l, d                                       ; $7A32: $6A
    inc b                                         ; $7A33: $04
    nop                                           ; $7A34: $00
    nop                                           ; $7A35: $00
    ld l, $6A                                     ; $7A36: $2E $6A
    inc b                                         ; $7A38: $04
    nop                                           ; $7A39: $00
    nop                                           ; $7A3A: $00
    ld h, e                                       ; $7A3B: $63
    ld l, d                                       ; $7A3C: $6A
    nop                                           ; $7A3D: $00
    ld b, d                                       ; $7A3E: $42
    dec de                                        ; $7A3F: $1B
    dec d                                         ; $7A40: $15
    ld b, b                                       ; $7A41: $40
    db $10                                        ; $7A42: $10
    ld c, a                                       ; $7A43: $4F
    ld [bc], a                                    ; $7A44: $02
    nop                                           ; $7A45: $00
    ld bc, $6805                                  ; $7A46: $01 $05 $68
    nop                                           ; $7A49: $00
    ld c, b                                       ; $7A4A: $48
    ld c, a                                       ; $7A4B: $4F
    ld [bc], a                                    ; $7A4C: $02
    nop                                           ; $7A4D: $00
    ld bc, $6805                                  ; $7A4E: $01 $05 $68
    nop                                           ; $7A51: $00
    ld c, b                                       ; $7A52: $48
    ld c, a                                       ; $7A53: $4F
    ld [bc], a                                    ; $7A54: $02
    nop                                           ; $7A55: $00
    ld bc, $6805                                  ; $7A56: $01 $05 $68
    nop                                           ; $7A59: $00
    ld c, b                                       ; $7A5A: $48
    ld c, a                                       ; $7A5B: $4F
    ld [bc], a                                    ; $7A5C: $02
    nop                                           ; $7A5D: $00
    ld bc, $6805                                  ; $7A5E: $01 $05 $68
    nop                                           ; $7A61: $00
    ld c, b                                       ; $7A62: $48
    ld c, a                                       ; $7A63: $4F
    ld [bc], a                                    ; $7A64: $02
    nop                                           ; $7A65: $00
    nop                                           ; $7A66: $00
    xor b                                         ; $7A67: $A8
    ld h, a                                       ; $7A68: $67
    nop                                           ; $7A69: $00
    ld c, b                                       ; $7A6A: $48
    ld c, a                                       ; $7A6B: $4F
    ld [bc], a                                    ; $7A6C: $02
    nop                                           ; $7A6D: $00
    nop                                           ; $7A6E: $00
    xor b                                         ; $7A6F: $A8
    ld h, a                                       ; $7A70: $67
    nop                                           ; $7A71: $00
    ld c, b                                       ; $7A72: $48
    ld c, a                                       ; $7A73: $4F
    ld [bc], a                                    ; $7A74: $02
    nop                                           ; $7A75: $00
    nop                                           ; $7A76: $00
    xor b                                         ; $7A77: $A8
    ld h, a                                       ; $7A78: $67
    nop                                           ; $7A79: $00
    ld c, b                                       ; $7A7A: $48
    ld c, a                                       ; $7A7B: $4F
    ld [bc], a                                    ; $7A7C: $02
    nop                                           ; $7A7D: $00
    nop                                           ; $7A7E: $00
    xor b                                         ; $7A7F: $A8
    ld h, a                                       ; $7A80: $67
    nop                                           ; $7A81: $00
    ld c, b                                       ; $7A82: $48
    ld c, a                                       ; $7A83: $4F
    ld [bc], a                                    ; $7A84: $02
    nop                                           ; $7A85: $00
    nop                                           ; $7A86: $00
    xor b                                         ; $7A87: $A8
    ld h, a                                       ; $7A88: $67
    nop                                           ; $7A89: $00
    ld c, b                                       ; $7A8A: $48
    ld c, a                                       ; $7A8B: $4F
    ld [bc], a                                    ; $7A8C: $02
    nop                                           ; $7A8D: $00
    nop                                           ; $7A8E: $00
    xor b                                         ; $7A8F: $A8
    ld h, a                                       ; $7A90: $67
    nop                                           ; $7A91: $00
    ld c, b                                       ; $7A92: $48
    ld c, a                                       ; $7A93: $4F
    ld [bc], a                                    ; $7A94: $02
    nop                                           ; $7A95: $00
    nop                                           ; $7A96: $00
    xor b                                         ; $7A97: $A8
    ld h, a                                       ; $7A98: $67
    nop                                           ; $7A99: $00
    ld c, b                                       ; $7A9A: $48
    ld c, a                                       ; $7A9B: $4F
    ld [bc], a                                    ; $7A9C: $02
    nop                                           ; $7A9D: $00
    nop                                           ; $7A9E: $00
    xor b                                         ; $7A9F: $A8
    ld h, a                                       ; $7AA0: $67
    ld [bc], a                                    ; $7AA1: $02
    nop                                           ; $7AA2: $00
    nop                                           ; $7AA3: $00
    xor b                                         ; $7AA4: $A8
    ld h, a                                       ; $7AA5: $67
    ld [bc], a                                    ; $7AA6: $02
    nop                                           ; $7AA7: $00
    nop                                           ; $7AA8: $00
    xor b                                         ; $7AA9: $A8
    ld h, a                                       ; $7AAA: $67
    ld [bc], a                                    ; $7AAB: $02
    nop                                           ; $7AAC: $00
    nop                                           ; $7AAD: $00
    xor b                                         ; $7AAE: $A8
    ld h, a                                       ; $7AAF: $67
    ld [bc], a                                    ; $7AB0: $02
    nop                                           ; $7AB1: $00
    nop                                           ; $7AB2: $00
    xor b                                         ; $7AB3: $A8
    ld h, a                                       ; $7AB4: $67
    nop                                           ; $7AB5: $00
    dec de                                        ; $7AB6: $1B
    add hl, bc                                    ; $7AB7: $09
    ld c, a                                       ; $7AB8: $4F
    inc b                                         ; $7AB9: $04
    nop                                           ; $7ABA: $00
    nop                                           ; $7ABB: $00
    dec b                                         ; $7ABC: $05
    ld l, b                                       ; $7ABD: $68
    inc c                                         ; $7ABE: $0C
    nop                                           ; $7ABF: $00
    nop                                           ; $7AC0: $00
    ld b, [hl]                                    ; $7AC1: $46
    ld l, b                                       ; $7AC2: $68
    nop                                           ; $7AC3: $00
    ld c, a                                       ; $7AC4: $4F
    jr jr_040_7AC7                                ; $7AC5: $18 $00

jr_040_7AC7:
    nop                                           ; $7AC7: $00
    and e                                         ; $7AC8: $A3
    ld l, b                                       ; $7AC9: $68
    nop                                           ; $7ACA: $00
    dec de                                        ; $7ACB: $1B
    dec d                                         ; $7ACC: $15
    ld c, a                                       ; $7ACD: $4F
    ld bc, $FF00                                  ; $7ACE: $01 $00 $FF
    and e                                         ; $7AD1: $A3
    ld l, b                                       ; $7AD2: $68
    nop                                           ; $7AD3: $00
    ld c, b                                       ; $7AD4: $48
    ld c, a                                       ; $7AD5: $4F
    ld bc, $FF00                                  ; $7AD6: $01 $00 $FF
    and e                                         ; $7AD9: $A3
    ld l, b                                       ; $7ADA: $68
    nop                                           ; $7ADB: $00
    ld c, b                                       ; $7ADC: $48
    ld c, a                                       ; $7ADD: $4F
    ld bc, $FF00                                  ; $7ADE: $01 $00 $FF
    and e                                         ; $7AE1: $A3
    ld l, b                                       ; $7AE2: $68
    nop                                           ; $7AE3: $00
    ld c, b                                       ; $7AE4: $48
    ld c, a                                       ; $7AE5: $4F
    ld bc, $FF00                                  ; $7AE6: $01 $00 $FF
    and e                                         ; $7AE9: $A3
    ld l, b                                       ; $7AEA: $68
    nop                                           ; $7AEB: $00
    ld b, d                                       ; $7AEC: $42
    ld c, a                                       ; $7AED: $4F
    inc b                                         ; $7AEE: $04
    nop                                           ; $7AEF: $00
    nop                                           ; $7AF0: $00
    ldh a, [rBCPS]                                ; $7AF1: $F0 $68
    inc b                                         ; $7AF3: $04
    nop                                           ; $7AF4: $00
    nop                                           ; $7AF5: $00
    dec c                                         ; $7AF6: $0D
    ld l, c                                       ; $7AF7: $69
    inc b                                         ; $7AF8: $04
    nop                                           ; $7AF9: $00
    nop                                           ; $7AFA: $00
    ld d, [hl]                                    ; $7AFB: $56
    ld l, c                                       ; $7AFC: $69
    inc b                                         ; $7AFD: $04
    nop                                           ; $7AFE: $00
    nop                                           ; $7AFF: $00
    xor e                                         ; $7B00: $AB
    ld l, c                                       ; $7B01: $69
    inc b                                         ; $7B02: $04
    nop                                           ; $7B03: $00
    nop                                           ; $7B04: $00
    ret c                                         ; $7B05: $D8

    ld l, c                                       ; $7B06: $69
    inc b                                         ; $7B07: $04
    nop                                           ; $7B08: $00
    nop                                           ; $7B09: $00
    pop af                                        ; $7B0A: $F1
    ld l, c                                       ; $7B0B: $69
    nop                                           ; $7B0C: $00
    ld b, d                                       ; $7B0D: $42
    ld c, a                                       ; $7B0E: $4F
    inc b                                         ; $7B0F: $04
    nop                                           ; $7B10: $00
    nop                                           ; $7B11: $00
    adc b                                         ; $7B12: $88
    ld l, l                                       ; $7B13: $6D
    inc b                                         ; $7B14: $04
    nop                                           ; $7B15: $00
    nop                                           ; $7B16: $00
    or l                                          ; $7B17: $B5
    ld l, l                                       ; $7B18: $6D
    inc b                                         ; $7B19: $04
    nop                                           ; $7B1A: $00
    nop                                           ; $7B1B: $00
    ld [$046D], a                                 ; $7B1C: $EA $6D $04
    nop                                           ; $7B1F: $00
    nop                                           ; $7B20: $00
    daa                                           ; $7B21: $27
    ld l, [hl]                                    ; $7B22: $6E
    inc b                                         ; $7B23: $04
    nop                                           ; $7B24: $00
    nop                                           ; $7B25: $00
    ld h, b                                       ; $7B26: $60
    ld l, [hl]                                    ; $7B27: $6E
    nop                                           ; $7B28: $00
    ld b, d                                       ; $7B29: $42
    dec de                                        ; $7B2A: $1B
    ld c, $4F                                     ; $7B2B: $0E $4F
    ld bc, $0004                                  ; $7B2D: $01 $04 $00
    adc b                                         ; $7B30: $88
    ld l, l                                       ; $7B31: $6D
    nop                                           ; $7B32: $00
    ld c, b                                       ; $7B33: $48
    ld c, a                                       ; $7B34: $4F
    ld bc, $0004                                  ; $7B35: $01 $04 $00
    adc b                                         ; $7B38: $88
    ld l, l                                       ; $7B39: $6D
    nop                                           ; $7B3A: $00
    ld c, b                                       ; $7B3B: $48
    ld c, a                                       ; $7B3C: $4F
    ld bc, $0004                                  ; $7B3D: $01 $04 $00
    adc b                                         ; $7B40: $88
    ld l, l                                       ; $7B41: $6D
    nop                                           ; $7B42: $00
    ld c, b                                       ; $7B43: $48
    ld c, a                                       ; $7B44: $4F
    ld bc, $0004                                  ; $7B45: $01 $04 $00
    adc b                                         ; $7B48: $88
    ld l, l                                       ; $7B49: $6D
    nop                                           ; $7B4A: $00
    ld c, b                                       ; $7B4B: $48
    ld c, a                                       ; $7B4C: $4F
    ld bc, $0004                                  ; $7B4D: $01 $04 $00
    or l                                          ; $7B50: $B5
    ld l, l                                       ; $7B51: $6D
    nop                                           ; $7B52: $00
    ld c, b                                       ; $7B53: $48
    ld c, a                                       ; $7B54: $4F
    ld bc, $0004                                  ; $7B55: $01 $04 $00
    or l                                          ; $7B58: $B5
    ld l, l                                       ; $7B59: $6D
    nop                                           ; $7B5A: $00
    ld c, b                                       ; $7B5B: $48
    ld c, a                                       ; $7B5C: $4F
    ld bc, $0004                                  ; $7B5D: $01 $04 $00
    or l                                          ; $7B60: $B5
    ld l, l                                       ; $7B61: $6D
    nop                                           ; $7B62: $00
    ld c, b                                       ; $7B63: $48
    ld c, a                                       ; $7B64: $4F
    ld bc, $0004                                  ; $7B65: $01 $04 $00
    or l                                          ; $7B68: $B5
    ld l, l                                       ; $7B69: $6D
    nop                                           ; $7B6A: $00
    ld c, b                                       ; $7B6B: $48
    ld c, a                                       ; $7B6C: $4F
    ld bc, $0004                                  ; $7B6D: $01 $04 $00
    ld [$006D], a                                 ; $7B70: $EA $6D $00
    ld c, b                                       ; $7B73: $48
    ld c, a                                       ; $7B74: $4F
    ld bc, $0004                                  ; $7B75: $01 $04 $00
    ld [$006D], a                                 ; $7B78: $EA $6D $00
    ld c, b                                       ; $7B7B: $48
    ld c, a                                       ; $7B7C: $4F
    ld bc, $0004                                  ; $7B7D: $01 $04 $00
    ld [$006D], a                                 ; $7B80: $EA $6D $00
    ld c, b                                       ; $7B83: $48
    ld c, a                                       ; $7B84: $4F
    ld bc, $0004                                  ; $7B85: $01 $04 $00
    ld [$006D], a                                 ; $7B88: $EA $6D $00
    ld c, b                                       ; $7B8B: $48
    ld c, a                                       ; $7B8C: $4F
    ld bc, $0004                                  ; $7B8D: $01 $04 $00
    daa                                           ; $7B90: $27
    ld l, [hl]                                    ; $7B91: $6E
    nop                                           ; $7B92: $00
    ld c, b                                       ; $7B93: $48
    ld c, a                                       ; $7B94: $4F
    ld bc, $0004                                  ; $7B95: $01 $04 $00
    daa                                           ; $7B98: $27
    ld l, [hl]                                    ; $7B99: $6E
    nop                                           ; $7B9A: $00
    ld c, b                                       ; $7B9B: $48
    ld c, a                                       ; $7B9C: $4F
    ld bc, $0004                                  ; $7B9D: $01 $04 $00
    daa                                           ; $7BA0: $27
    ld l, [hl]                                    ; $7BA1: $6E
    nop                                           ; $7BA2: $00
    ld c, b                                       ; $7BA3: $48
    ld c, a                                       ; $7BA4: $4F
    ld bc, $0004                                  ; $7BA5: $01 $04 $00
    daa                                           ; $7BA8: $27
    ld l, [hl]                                    ; $7BA9: $6E
    nop                                           ; $7BAA: $00
    ld c, b                                       ; $7BAB: $48
    ld c, a                                       ; $7BAC: $4F
    ld bc, $0004                                  ; $7BAD: $01 $04 $00
    ld h, b                                       ; $7BB0: $60
    ld l, [hl]                                    ; $7BB1: $6E
    nop                                           ; $7BB2: $00
    ld c, b                                       ; $7BB3: $48
    ld c, a                                       ; $7BB4: $4F
    ld bc, $0004                                  ; $7BB5: $01 $04 $00
    ld h, b                                       ; $7BB8: $60
    ld l, [hl]                                    ; $7BB9: $6E
    nop                                           ; $7BBA: $00
    ld c, b                                       ; $7BBB: $48
    ld c, a                                       ; $7BBC: $4F
    ld bc, $0004                                  ; $7BBD: $01 $04 $00
    ld h, b                                       ; $7BC0: $60
    ld l, [hl]                                    ; $7BC1: $6E
    nop                                           ; $7BC2: $00
    ld c, b                                       ; $7BC3: $48
    ld c, a                                       ; $7BC4: $4F
    ld bc, $0004                                  ; $7BC5: $01 $04 $00
    ld h, b                                       ; $7BC8: $60
    ld l, [hl]                                    ; $7BC9: $6E
    nop                                           ; $7BCA: $00
    ld c, b                                       ; $7BCB: $48
    ld b, d                                       ; $7BCC: $42
    ld c, a                                       ; $7BCD: $4F
    ld [bc], a                                    ; $7BCE: $02
    nop                                           ; $7BCF: $00
    nop                                           ; $7BD0: $00
    adc l                                         ; $7BD1: $8D
    ld l, d                                       ; $7BD2: $6A
    nop                                           ; $7BD3: $00
    ld c, b                                       ; $7BD4: $48
    ld c, a                                       ; $7BD5: $4F
    ld [bc], a                                    ; $7BD6: $02
    nop                                           ; $7BD7: $00
    nop                                           ; $7BD8: $00
    adc l                                         ; $7BD9: $8D
    ld l, d                                       ; $7BDA: $6A
    nop                                           ; $7BDB: $00
    ld c, b                                       ; $7BDC: $48
    ld c, a                                       ; $7BDD: $4F
    ld [bc], a                                    ; $7BDE: $02
    nop                                           ; $7BDF: $00
    nop                                           ; $7BE0: $00
    adc l                                         ; $7BE1: $8D
    ld l, d                                       ; $7BE2: $6A
    nop                                           ; $7BE3: $00
    ld c, b                                       ; $7BE4: $48
    ld c, a                                       ; $7BE5: $4F
    ld [bc], a                                    ; $7BE6: $02
    nop                                           ; $7BE7: $00
    nop                                           ; $7BE8: $00
    adc l                                         ; $7BE9: $8D
    ld l, d                                       ; $7BEA: $6A
    nop                                           ; $7BEB: $00
    ld c, b                                       ; $7BEC: $48
    ld c, a                                       ; $7BED: $4F
    ld [bc], a                                    ; $7BEE: $02
    nop                                           ; $7BEF: $00
    nop                                           ; $7BF0: $00
    adc l                                         ; $7BF1: $8D
    ld l, d                                       ; $7BF2: $6A
    ld [bc], a                                    ; $7BF3: $02
    nop                                           ; $7BF4: $00
    nop                                           ; $7BF5: $00
    ld [hl], e                                    ; $7BF6: $73
    ld l, e                                       ; $7BF7: $6B
    ld [bc], a                                    ; $7BF8: $02
    nop                                           ; $7BF9: $00
    nop                                           ; $7BFA: $00
    adc l                                         ; $7BFB: $8D
    ld l, d                                       ; $7BFC: $6A
    ld [bc], a                                    ; $7BFD: $02
    nop                                           ; $7BFE: $00
    nop                                           ; $7BFF: $00
    ld [hl], e                                    ; $7C00: $73
    ld l, e                                       ; $7C01: $6B
    stop                                          ; $7C02: $10 $00
    nop                                           ; $7C04: $00
    jp nc, $0C6A                                  ; $7C05: $D2 $6A $0C

    nop                                           ; $7C08: $00
    nop                                           ; $7C09: $00
    ld [hl], e                                    ; $7C0A: $73
    ld l, e                                       ; $7C0B: $6B
    ld [rRAMG], sp                                ; $7C0C: $08 $00 $00
    inc d                                         ; $7C0F: $14
    ld l, h                                       ; $7C10: $6C
    inc c                                         ; $7C11: $0C
    nop                                           ; $7C12: $00
    nop                                           ; $7C13: $00
    ld [hl], e                                    ; $7C14: $73
    ld l, e                                       ; $7C15: $6B
    stop                                          ; $7C16: $10 $00
    nop                                           ; $7C18: $00
    jp nc, $0C6A                                  ; $7C19: $D2 $6A $0C

    nop                                           ; $7C1C: $00
    nop                                           ; $7C1D: $00
    ld [hl], e                                    ; $7C1E: $73
    ld l, e                                       ; $7C1F: $6B
    ld [rRAMG], sp                                ; $7C20: $08 $00 $00
    inc d                                         ; $7C23: $14
    ld l, h                                       ; $7C24: $6C
    inc c                                         ; $7C25: $0C
    nop                                           ; $7C26: $00
    nop                                           ; $7C27: $00
    ld [hl], e                                    ; $7C28: $73
    ld l, e                                       ; $7C29: $6B
    ld [bc], a                                    ; $7C2A: $02
    nop                                           ; $7C2B: $00
    nop                                           ; $7C2C: $00
    adc l                                         ; $7C2D: $8D
    ld l, d                                       ; $7C2E: $6A
    ld [bc], a                                    ; $7C2F: $02
    nop                                           ; $7C30: $00
    nop                                           ; $7C31: $00
    ld [hl], e                                    ; $7C32: $73
    ld l, e                                       ; $7C33: $6B
    ld [bc], a                                    ; $7C34: $02
    nop                                           ; $7C35: $00
    nop                                           ; $7C36: $00
    adc l                                         ; $7C37: $8D
    ld l, d                                       ; $7C38: $6A
    ld [bc], a                                    ; $7C39: $02
    nop                                           ; $7C3A: $00
    nop                                           ; $7C3B: $00
    ld [hl], e                                    ; $7C3C: $73
    ld l, e                                       ; $7C3D: $6B
    ld [bc], a                                    ; $7C3E: $02
    nop                                           ; $7C3F: $00
    nop                                           ; $7C40: $00
    adc l                                         ; $7C41: $8D
    ld l, d                                       ; $7C42: $6A
    nop                                           ; $7C43: $00
    ld c, b                                       ; $7C44: $48
    ld c, a                                       ; $7C45: $4F
    ld [bc], a                                    ; $7C46: $02
    nop                                           ; $7C47: $00
    nop                                           ; $7C48: $00
    adc l                                         ; $7C49: $8D
    ld l, d                                       ; $7C4A: $6A
    nop                                           ; $7C4B: $00
    ld c, b                                       ; $7C4C: $48
    ld c, a                                       ; $7C4D: $4F
    ld [bc], a                                    ; $7C4E: $02
    nop                                           ; $7C4F: $00
    nop                                           ; $7C50: $00
    adc l                                         ; $7C51: $8D
    ld l, d                                       ; $7C52: $6A
    nop                                           ; $7C53: $00
    ld c, b                                       ; $7C54: $48
    ld c, a                                       ; $7C55: $4F
    ld [bc], a                                    ; $7C56: $02
    nop                                           ; $7C57: $00
    nop                                           ; $7C58: $00
    adc l                                         ; $7C59: $8D
    ld l, d                                       ; $7C5A: $6A
    nop                                           ; $7C5B: $00
    ld c, b                                       ; $7C5C: $48
    ld c, a                                       ; $7C5D: $4F
    ld [bc], a                                    ; $7C5E: $02
    nop                                           ; $7C5F: $00
    nop                                           ; $7C60: $00
    adc l                                         ; $7C61: $8D
    ld l, d                                       ; $7C62: $6A
    nop                                           ; $7C63: $00
    ld b, d                                       ; $7C64: $42
    ld c, a                                       ; $7C65: $4F
    ld bc, $00FE                                  ; $7C66: $01 $FE $00
    ld a, l                                       ; $7C69: $7D
    ld l, [hl]                                    ; $7C6A: $6E
    nop                                           ; $7C6B: $00
    ld c, b                                       ; $7C6C: $48
    ld c, a                                       ; $7C6D: $4F
    ld bc, $0002                                  ; $7C6E: $01 $02 $00
    ld a, l                                       ; $7C71: $7D
    ld l, [hl]                                    ; $7C72: $6E
    nop                                           ; $7C73: $00
    ld c, b                                       ; $7C74: $48
    ld c, a                                       ; $7C75: $4F
    ld bc, $00FE                                  ; $7C76: $01 $FE $00
    ld a, l                                       ; $7C79: $7D
    ld l, [hl]                                    ; $7C7A: $6E
    nop                                           ; $7C7B: $00
    ld c, b                                       ; $7C7C: $48
    ld c, a                                       ; $7C7D: $4F
    ld bc, $0002                                  ; $7C7E: $01 $02 $00
    ld a, l                                       ; $7C81: $7D
    ld l, [hl]                                    ; $7C82: $6E
    nop                                           ; $7C83: $00
    ld c, b                                       ; $7C84: $48
    ld c, a                                       ; $7C85: $4F
    ld bc, $00FE                                  ; $7C86: $01 $FE $00
    ld a, l                                       ; $7C89: $7D
    ld l, [hl]                                    ; $7C8A: $6E
    nop                                           ; $7C8B: $00
    ld c, b                                       ; $7C8C: $48
    ld c, a                                       ; $7C8D: $4F
    ld bc, $0002                                  ; $7C8E: $01 $02 $00
    ld a, l                                       ; $7C91: $7D
    ld l, [hl]                                    ; $7C92: $6E
    nop                                           ; $7C93: $00
    ld c, b                                       ; $7C94: $48
    ld c, a                                       ; $7C95: $4F
    ld bc, $00FE                                  ; $7C96: $01 $FE $00
    ld a, l                                       ; $7C99: $7D
    ld l, [hl]                                    ; $7C9A: $6E
    nop                                           ; $7C9B: $00
    ld c, b                                       ; $7C9C: $48
    ld c, a                                       ; $7C9D: $4F
    ld bc, $0002                                  ; $7C9E: $01 $02 $00
    ld a, l                                       ; $7CA1: $7D
    ld l, [hl]                                    ; $7CA2: $6E
    nop                                           ; $7CA3: $00
    ld c, b                                       ; $7CA4: $48
    ld c, a                                       ; $7CA5: $4F
    ld bc, $00FE                                  ; $7CA6: $01 $FE $00
    ld a, l                                       ; $7CA9: $7D
    ld l, [hl]                                    ; $7CAA: $6E
    nop                                           ; $7CAB: $00
    ld c, b                                       ; $7CAC: $48
    ld c, a                                       ; $7CAD: $4F
    ld bc, $0002                                  ; $7CAE: $01 $02 $00
    ld a, l                                       ; $7CB1: $7D
    ld l, [hl]                                    ; $7CB2: $6E
    nop                                           ; $7CB3: $00
    ld c, b                                       ; $7CB4: $48
    ld c, a                                       ; $7CB5: $4F
    ld bc, $00FE                                  ; $7CB6: $01 $FE $00
    ld a, l                                       ; $7CB9: $7D
    ld l, [hl]                                    ; $7CBA: $6E
    nop                                           ; $7CBB: $00
    ld c, b                                       ; $7CBC: $48
    ld c, a                                       ; $7CBD: $4F
    ld bc, $0002                                  ; $7CBE: $01 $02 $00
    ld a, l                                       ; $7CC1: $7D
    ld l, [hl]                                    ; $7CC2: $6E
    nop                                           ; $7CC3: $00
    ld c, b                                       ; $7CC4: $48
    ld c, a                                       ; $7CC5: $4F
    ld bc, $00FE                                  ; $7CC6: $01 $FE $00
    ld a, l                                       ; $7CC9: $7D
    ld l, [hl]                                    ; $7CCA: $6E
    nop                                           ; $7CCB: $00
    ld c, b                                       ; $7CCC: $48
    ld c, a                                       ; $7CCD: $4F
    ld bc, $0002                                  ; $7CCE: $01 $02 $00
    ld a, l                                       ; $7CD1: $7D
    ld l, [hl]                                    ; $7CD2: $6E
    nop                                           ; $7CD3: $00
    ld c, b                                       ; $7CD4: $48
    ld c, a                                       ; $7CD5: $4F
    ld bc, $00FE                                  ; $7CD6: $01 $FE $00
    ld a, l                                       ; $7CD9: $7D
    ld l, [hl]                                    ; $7CDA: $6E
    nop                                           ; $7CDB: $00
    ld c, b                                       ; $7CDC: $48
    ld c, a                                       ; $7CDD: $4F
    ld bc, $0002                                  ; $7CDE: $01 $02 $00
    ld a, l                                       ; $7CE1: $7D
    ld l, [hl]                                    ; $7CE2: $6E
    nop                                           ; $7CE3: $00
    ld c, b                                       ; $7CE4: $48
    ld c, a                                       ; $7CE5: $4F
    ld bc, $00FE                                  ; $7CE6: $01 $FE $00
    xor $6E                                       ; $7CE9: $EE $6E
    nop                                           ; $7CEB: $00
    ld c, b                                       ; $7CEC: $48
    ld c, a                                       ; $7CED: $4F
    ld bc, $0002                                  ; $7CEE: $01 $02 $00
    xor $6E                                       ; $7CF1: $EE $6E
    nop                                           ; $7CF3: $00
    ld c, b                                       ; $7CF4: $48
    ld c, a                                       ; $7CF5: $4F
    ld bc, $00FE                                  ; $7CF6: $01 $FE $00
    xor $6E                                       ; $7CF9: $EE $6E
    nop                                           ; $7CFB: $00
    ld c, b                                       ; $7CFC: $48
    ld c, a                                       ; $7CFD: $4F
    ld bc, $0002                                  ; $7CFE: $01 $02 $00
    xor $6E                                       ; $7D01: $EE $6E
    nop                                           ; $7D03: $00
    ld c, b                                       ; $7D04: $48
    ld c, a                                       ; $7D05: $4F
    ld bc, $00FE                                  ; $7D06: $01 $FE $00
    xor $6E                                       ; $7D09: $EE $6E
    nop                                           ; $7D0B: $00
    ld c, b                                       ; $7D0C: $48
    ld c, a                                       ; $7D0D: $4F
    ld bc, $0002                                  ; $7D0E: $01 $02 $00
    xor $6E                                       ; $7D11: $EE $6E
    nop                                           ; $7D13: $00
    ld c, b                                       ; $7D14: $48
    ld c, a                                       ; $7D15: $4F
    ld bc, $00FE                                  ; $7D16: $01 $FE $00
    xor $6E                                       ; $7D19: $EE $6E
    nop                                           ; $7D1B: $00
    ld c, b                                       ; $7D1C: $48
    ld c, a                                       ; $7D1D: $4F
    ld bc, $0002                                  ; $7D1E: $01 $02 $00
    xor $6E                                       ; $7D21: $EE $6E
    nop                                           ; $7D23: $00
    ld c, b                                       ; $7D24: $48
    ld c, a                                       ; $7D25: $4F
    ld bc, $00FE                                  ; $7D26: $01 $FE $00
    ld d, a                                       ; $7D29: $57
    ld l, a                                       ; $7D2A: $6F
    nop                                           ; $7D2B: $00
    ld c, b                                       ; $7D2C: $48
    ld c, a                                       ; $7D2D: $4F
    ld bc, $0002                                  ; $7D2E: $01 $02 $00
    ld d, a                                       ; $7D31: $57
    ld l, a                                       ; $7D32: $6F
    nop                                           ; $7D33: $00
    ld c, b                                       ; $7D34: $48
    ld c, a                                       ; $7D35: $4F
    ld bc, $00FE                                  ; $7D36: $01 $FE $00
    ld d, a                                       ; $7D39: $57
    ld l, a                                       ; $7D3A: $6F
    nop                                           ; $7D3B: $00
    ld c, b                                       ; $7D3C: $48
    ld c, a                                       ; $7D3D: $4F
    ld bc, $0002                                  ; $7D3E: $01 $02 $00
    ld d, a                                       ; $7D41: $57
    ld l, a                                       ; $7D42: $6F
    nop                                           ; $7D43: $00
    ld c, b                                       ; $7D44: $48
    ld c, a                                       ; $7D45: $4F
    ld bc, $00FE                                  ; $7D46: $01 $FE $00
    and b                                         ; $7D49: $A0
    ld l, a                                       ; $7D4A: $6F
    nop                                           ; $7D4B: $00
    ld c, b                                       ; $7D4C: $48
    ld c, a                                       ; $7D4D: $4F
    ld bc, $0002                                  ; $7D4E: $01 $02 $00
    and b                                         ; $7D51: $A0
    ld l, a                                       ; $7D52: $6F
    nop                                           ; $7D53: $00
    ld c, b                                       ; $7D54: $48
    ld c, a                                       ; $7D55: $4F
    ld bc, $00FE                                  ; $7D56: $01 $FE $00
    and b                                         ; $7D59: $A0
    ld l, a                                       ; $7D5A: $6F
    nop                                           ; $7D5B: $00
    ld c, b                                       ; $7D5C: $48
    ld c, a                                       ; $7D5D: $4F
    ld bc, $0002                                  ; $7D5E: $01 $02 $00
    and b                                         ; $7D61: $A0
    ld l, a                                       ; $7D62: $6F
    nop                                           ; $7D63: $00
    ld c, b                                       ; $7D64: $48
    ld b, d                                       ; $7D65: $42
    ld c, a                                       ; $7D66: $4F
    ld [bc], a                                    ; $7D67: $02
    ld [bc], a                                    ; $7D68: $02
    nop                                           ; $7D69: $00
    jr nz, jr_040_7DD3                            ; $7D6A: $20 $67

    ld [bc], a                                    ; $7D6C: $02
    ld [bc], a                                    ; $7D6D: $02
    nop                                           ; $7D6E: $00
    ld sp, $0267                                  ; $7D6F: $31 $67 $02
    ld [bc], a                                    ; $7D72: $02
    nop                                           ; $7D73: $00
    ld b, d                                       ; $7D74: $42
    ld h, a                                       ; $7D75: $67
    ld [bc], a                                    ; $7D76: $02
    ld [bc], a                                    ; $7D77: $02
    nop                                           ; $7D78: $00
    ld d, e                                       ; $7D79: $53
    ld h, a                                       ; $7D7A: $67
    ld [bc], a                                    ; $7D7B: $02
    ld [bc], a                                    ; $7D7C: $02
    nop                                           ; $7D7D: $00
    ld h, h                                       ; $7D7E: $64
    ld h, a                                       ; $7D7F: $67
    ld [bc], a                                    ; $7D80: $02
    ld [bc], a                                    ; $7D81: $02
    nop                                           ; $7D82: $00
    ld [hl], l                                    ; $7D83: $75
    ld h, a                                       ; $7D84: $67
    ld [bc], a                                    ; $7D85: $02
    ld [bc], a                                    ; $7D86: $02
    nop                                           ; $7D87: $00
    add [hl]                                      ; $7D88: $86
    ld h, a                                       ; $7D89: $67
    ld [bc], a                                    ; $7D8A: $02
    ld [bc], a                                    ; $7D8B: $02
    nop                                           ; $7D8C: $00
    sub a                                         ; $7D8D: $97
    ld h, a                                       ; $7D8E: $67
    nop                                           ; $7D8F: $00
    ld b, [hl]                                    ; $7D90: $46
    ld h, [hl]                                    ; $7D91: $66
    ld a, l                                       ; $7D92: $7D
    ld c, a                                       ; $7D93: $4F
    ld [bc], a                                    ; $7D94: $02
    inc b                                         ; $7D95: $04
    nop                                           ; $7D96: $00
    jr nz, jr_040_7E00                            ; $7D97: $20 $67

    ld [bc], a                                    ; $7D99: $02
    inc b                                         ; $7D9A: $04
    nop                                           ; $7D9B: $00
    ld sp, $0267                                  ; $7D9C: $31 $67 $02
    inc b                                         ; $7D9F: $04
    nop                                           ; $7DA0: $00
    ld b, d                                       ; $7DA1: $42
    ld h, a                                       ; $7DA2: $67
    ld [bc], a                                    ; $7DA3: $02
    inc b                                         ; $7DA4: $04
    nop                                           ; $7DA5: $00
    ld d, e                                       ; $7DA6: $53
    ld h, a                                       ; $7DA7: $67
    ld [bc], a                                    ; $7DA8: $02
    inc b                                         ; $7DA9: $04
    nop                                           ; $7DAA: $00
    ld h, h                                       ; $7DAB: $64
    ld h, a                                       ; $7DAC: $67
    ld [bc], a                                    ; $7DAD: $02
    inc b                                         ; $7DAE: $04
    nop                                           ; $7DAF: $00
    ld [hl], l                                    ; $7DB0: $75
    ld h, a                                       ; $7DB1: $67
    ld [bc], a                                    ; $7DB2: $02
    inc b                                         ; $7DB3: $04
    nop                                           ; $7DB4: $00
    add [hl]                                      ; $7DB5: $86
    ld h, a                                       ; $7DB6: $67
    ld [bc], a                                    ; $7DB7: $02
    inc b                                         ; $7DB8: $04
    nop                                           ; $7DB9: $00
    sub a                                         ; $7DBA: $97
    ld h, a                                       ; $7DBB: $67
    nop                                           ; $7DBC: $00
    ld b, [hl]                                    ; $7DBD: $46
    sub e                                         ; $7DBE: $93
    ld a, l                                       ; $7DBF: $7D
    ld c, a                                       ; $7DC0: $4F
    inc b                                         ; $7DC1: $04
    nop                                           ; $7DC2: $00
    nop                                           ; $7DC3: $00
    ld hl, $046D                                  ; $7DC4: $21 $6D $04
    nop                                           ; $7DC7: $00
    nop                                           ; $7DC8: $00
    ld d, d                                       ; $7DC9: $52
    ld l, l                                       ; $7DCA: $6D
    inc b                                         ; $7DCB: $04
    nop                                           ; $7DCC: $00
    nop                                           ; $7DCD: $00
    ld a, a                                       ; $7DCE: $7F
    ld l, l                                       ; $7DCF: $6D
    nop                                           ; $7DD0: $00
    ld b, d                                       ; $7DD1: $42
    ld c, a                                       ; $7DD2: $4F

jr_040_7DD3:
    jr @+$04                                      ; $7DD3: $18 $02

    ld bc, $6CB5                                  ; $7DD5: $01 $B5 $6C
    jr jr_040_7DDC                                ; $7DD8: $18 $02

    rst $38                                       ; $7DDA: $FF
    or l                                          ; $7DDB: $B5

jr_040_7DDC:
    ld l, h                                       ; $7DDC: $6C
    nop                                           ; $7DDD: $00
    ld b, [hl]                                    ; $7DDE: $46
    jp nc, Jump_040_4F7D                          ; $7DDF: $D2 $7D $4F

    inc c                                         ; $7DE2: $0C
    ld [bc], a                                    ; $7DE3: $02
    ld bc, $6CC6                                  ; $7DE4: $01 $C6 $6C
    inc c                                         ; $7DE7: $0C
    ld [bc], a                                    ; $7DE8: $02
    rst $38                                       ; $7DE9: $FF
    add $6C                                       ; $7DEA: $C6 $6C
    nop                                           ; $7DEC: $00
    ld b, [hl]                                    ; $7DED: $46
    pop hl                                        ; $7DEE: $E1
    ld a, l                                       ; $7DEF: $7D
    ld c, a                                       ; $7DF0: $4F
    jr @+$03                                      ; $7DF1: $18 $01

    ld bc, $6CDF                                  ; $7DF3: $01 $DF $6C
    jr jr_040_7DFB                                ; $7DF6: $18 $03

    rst $38                                       ; $7DF8: $FF
    rst $18                                       ; $7DF9: $DF
    ld l, h                                       ; $7DFA: $6C

jr_040_7DFB:
    jr jr_040_7E00                                ; $7DFB: $18 $03

    ld bc, $6CDF                                  ; $7DFD: $01 $DF $6C

jr_040_7E00:
    jr jr_040_7E03                                ; $7E00: $18 $01

    rst $38                                       ; $7E02: $FF

jr_040_7E03:
    rst $18                                       ; $7E03: $DF
    ld l, h                                       ; $7E04: $6C
    nop                                           ; $7E05: $00
    ld b, [hl]                                    ; $7E06: $46
    ldh a, [$7D]                                  ; $7E07: $F0 $7D
    ld c, a                                       ; $7E09: $4F
    inc c                                         ; $7E0A: $0C
    ld [bc], a                                    ; $7E0B: $02
    ld bc, $69F6                                  ; $7E0C: $01 $F6 $69
    nop                                           ; $7E0F: $00
    ld c, a                                       ; $7E10: $4F
    inc c                                         ; $7E11: $0C
    ld [bc], a                                    ; $7E12: $02
    ld bc, $69FB                                  ; $7E13: $01 $FB $69
    nop                                           ; $7E16: $00
    dec de                                        ; $7E17: $1B
    ld a, [bc]                                    ; $7E18: $0A
    ld c, a                                       ; $7E19: $4F
    inc c                                         ; $7E1A: $0C
    ld [bc], a                                    ; $7E1B: $02
    rst $38                                       ; $7E1C: $FF
    or $69                                        ; $7E1D: $F6 $69
    nop                                           ; $7E1F: $00
    ld c, a                                       ; $7E20: $4F
    inc c                                         ; $7E21: $0C
    ld [bc], a                                    ; $7E22: $02
    rst $38                                       ; $7E23: $FF
    ei                                            ; $7E24: $FB
    ld l, c                                       ; $7E25: $69
    nop                                           ; $7E26: $00
    dec de                                        ; $7E27: $1B
    ld a, [bc]                                    ; $7E28: $0A
    ld b, [hl]                                    ; $7E29: $46
    add hl, bc                                    ; $7E2A: $09
    ld a, [hl]                                    ; $7E2B: $7E
    ld c, a                                       ; $7E2C: $4F
    inc b                                         ; $7E2D: $04
    inc b                                         ; $7E2E: $04
    rst $38                                       ; $7E2F: $FF
    pop hl                                        ; $7E30: $E1
    ld l, a                                       ; $7E31: $6F
    inc b                                         ; $7E32: $04
    inc b                                         ; $7E33: $04
    nop                                           ; $7E34: $00
    pop hl                                        ; $7E35: $E1
    ld l, a                                       ; $7E36: $6F
    nop                                           ; $7E37: $00
    dec de                                        ; $7E38: $1B
    rra                                           ; $7E39: $1F
    ld c, a                                       ; $7E3A: $4F
    db $10                                        ; $7E3B: $10
    inc b                                         ; $7E3C: $04
    ld [bc], a                                    ; $7E3D: $02
    pop hl                                        ; $7E3E: $E1
    ld l, a                                       ; $7E3F: $6F
    inc b                                         ; $7E40: $04
    inc b                                         ; $7E41: $04
    ld bc, $6FE1                                  ; $7E42: $01 $E1 $6F
    ld [rDIV], sp                                ; $7E45: $08 $04 $FF
    pop hl                                        ; $7E48: $E1
    ld l, a                                       ; $7E49: $6F
    ld [$FE04], sp                                ; $7E4A: $08 $04 $FE
    pop hl                                        ; $7E4D: $E1
    ld l, a                                       ; $7E4E: $6F
    nop                                           ; $7E4F: $00
    ld b, d                                       ; $7E50: $42
    ld c, a                                       ; $7E51: $4F
    ld a, l                                       ; $7E52: $7D
    nop                                           ; $7E53: $00
    inc bc                                        ; $7E54: $03
    ldh a, [$6C]                                  ; $7E55: $F0 $6C
    nop                                           ; $7E57: $00
    ld b, d                                       ; $7E58: $42
    ld c, a                                       ; $7E59: $4F
    ld [de], a                                    ; $7E5A: $12
    nop                                           ; $7E5B: $00
    ld b, $F0                                     ; $7E5C: $06 $F0
    ld l, h                                       ; $7E5E: $6C
    inc b                                         ; $7E5F: $04
    nop                                           ; $7E60: $00
    db $FD                                        ; $7E61: $FD
    ldh a, [$6C]                                  ; $7E62: $F0 $6C
    inc b                                         ; $7E64: $04
    nop                                           ; $7E65: $00
    cp $F0                                        ; $7E66: $FE $F0
    ld l, h                                       ; $7E68: $6C
    inc b                                         ; $7E69: $04
    nop                                           ; $7E6A: $00
    rst $38                                       ; $7E6B: $FF
    ldh a, [$6C]                                  ; $7E6C: $F0 $6C
    ld [rRAMG], sp                                ; $7E6E: $08 $00 $00
    ldh a, [$6C]                                  ; $7E71: $F0 $6C
    inc b                                         ; $7E73: $04
    nop                                           ; $7E74: $00
    ld bc, $6CF0                                  ; $7E75: $01 $F0 $6C
    inc b                                         ; $7E78: $04
    nop                                           ; $7E79: $00
    ld [bc], a                                    ; $7E7A: $02
    ldh a, [$6C]                                  ; $7E7B: $F0 $6C
    inc b                                         ; $7E7D: $04
    nop                                           ; $7E7E: $00
    inc bc                                        ; $7E7F: $03
    ldh a, [$6C]                                  ; $7E80: $F0 $6C
    ld [bc], a                                    ; $7E82: $02
    nop                                           ; $7E83: $00
    cp $F0                                        ; $7E84: $FE $F0
    ld l, h                                       ; $7E86: $6C
    ld [bc], a                                    ; $7E87: $02
    nop                                           ; $7E88: $00
    rst $38                                       ; $7E89: $FF
    ldh a, [$6C]                                  ; $7E8A: $F0 $6C
    inc b                                         ; $7E8C: $04
    nop                                           ; $7E8D: $00
    nop                                           ; $7E8E: $00
    ldh a, [$6C]                                  ; $7E8F: $F0 $6C
    ld [bc], a                                    ; $7E91: $02
    nop                                           ; $7E92: $00
    ld bc, $6CF0                                  ; $7E93: $01 $F0 $6C
    ld [bc], a                                    ; $7E96: $02
    nop                                           ; $7E97: $00
    ld [bc], a                                    ; $7E98: $02
    ldh a, [$6C]                                  ; $7E99: $F0 $6C
    nop                                           ; $7E9B: $00
    ld c, a                                       ; $7E9C: $4F
    rst $38                                       ; $7E9D: $FF
    nop                                           ; $7E9E: $00
    nop                                           ; $7E9F: $00
    ldh a, [$6C]                                  ; $7EA0: $F0 $6C
    nop                                           ; $7EA2: $00
    ld b, [hl]                                    ; $7EA3: $46
    sbc h                                         ; $7EA4: $9C
    ld a, [hl]                                    ; $7EA5: $7E
    dec de                                        ; $7EA6: $1B
    rra                                           ; $7EA7: $1F
    ld c, a                                       ; $7EA8: $4F
    inc b                                         ; $7EA9: $04
    ld [bc], a                                    ; $7EAA: $02
    cp $F0                                        ; $7EAB: $FE $F0
    ld l, h                                       ; $7EAD: $6C
    inc b                                         ; $7EAE: $04
    ld [bc], a                                    ; $7EAF: $02
    rst $38                                       ; $7EB0: $FF
    ldh a, [$6C]                                  ; $7EB1: $F0 $6C
    inc b                                         ; $7EB3: $04
    ld bc, $F000                                  ; $7EB4: $01 $00 $F0
    ld l, h                                       ; $7EB7: $6C
    inc b                                         ; $7EB8: $04
    ld [bc], a                                    ; $7EB9: $02
    ld bc, $6CF0                                  ; $7EBA: $01 $F0 $6C
    inc b                                         ; $7EBD: $04
    ld [bc], a                                    ; $7EBE: $02
    ld [bc], a                                    ; $7EBF: $02
    ldh a, [$6C]                                  ; $7EC0: $F0 $6C
    inc c                                         ; $7EC2: $0C
    ld [bc], a                                    ; $7EC3: $02
    inc bc                                        ; $7EC4: $03
    ldh a, [$6C]                                  ; $7EC5: $F0 $6C
    ld [bc], a                                    ; $7EC7: $02
    ld [bc], a                                    ; $7EC8: $02
    cp $F0                                        ; $7EC9: $FE $F0
    ld l, h                                       ; $7ECB: $6C
    ld [bc], a                                    ; $7ECC: $02
    ld [bc], a                                    ; $7ECD: $02
    rst $38                                       ; $7ECE: $FF
    ldh a, [$6C]                                  ; $7ECF: $F0 $6C
    inc b                                         ; $7ED1: $04
    ld [bc], a                                    ; $7ED2: $02
    nop                                           ; $7ED3: $00
    ldh a, [$6C]                                  ; $7ED4: $F0 $6C
    nop                                           ; $7ED6: $00
    ld c, a                                       ; $7ED7: $4F
    rst $38                                       ; $7ED8: $FF
    nop                                           ; $7ED9: $00
    nop                                           ; $7EDA: $00
    ldh a, [$6C]                                  ; $7EDB: $F0 $6C
    nop                                           ; $7EDD: $00
    ld b, [hl]                                    ; $7EDE: $46
    rst $10                                       ; $7EDF: $D7
    ld a, [hl]                                    ; $7EE0: $7E
    dec de                                        ; $7EE1: $1B
    ld a, [bc]                                    ; $7EE2: $0A
    ld c, a                                       ; $7EE3: $4F
    ld [bc], a                                    ; $7EE4: $02
    ld bc, $9F00                                  ; $7EE5: $01 $00 $9F
    ld h, [hl]                                    ; $7EE8: $66
    nop                                           ; $7EE9: $00
    ld c, b                                       ; $7EEA: $48
    ld c, a                                       ; $7EEB: $4F
    ld [bc], a                                    ; $7EEC: $02
    ld bc, $9F00                                  ; $7EED: $01 $00 $9F
    ld h, [hl]                                    ; $7EF0: $66
    nop                                           ; $7EF1: $00
    ld c, b                                       ; $7EF2: $48
    ld c, a                                       ; $7EF3: $4F
    ld [bc], a                                    ; $7EF4: $02
    ld [bc], a                                    ; $7EF5: $02
    nop                                           ; $7EF6: $00
    sbc a                                         ; $7EF7: $9F
    ld h, [hl]                                    ; $7EF8: $66
    nop                                           ; $7EF9: $00
    ld c, b                                       ; $7EFA: $48
    ld c, a                                       ; $7EFB: $4F
    ld [bc], a                                    ; $7EFC: $02
    ld [bc], a                                    ; $7EFD: $02
    nop                                           ; $7EFE: $00
    sbc a                                         ; $7EFF: $9F
    ld h, [hl]                                    ; $7F00: $66
    nop                                           ; $7F01: $00
    ld c, b                                       ; $7F02: $48
    ld c, a                                       ; $7F03: $4F
    ld [bc], a                                    ; $7F04: $02
    ld bc, $9F00                                  ; $7F05: $01 $00 $9F
    ld h, [hl]                                    ; $7F08: $66
    nop                                           ; $7F09: $00
    ld c, b                                       ; $7F0A: $48
    ld c, a                                       ; $7F0B: $4F
    ld [bc], a                                    ; $7F0C: $02
    ld bc, $9F00                                  ; $7F0D: $01 $00 $9F
    ld h, [hl]                                    ; $7F10: $66
    nop                                           ; $7F11: $00
    ld c, b                                       ; $7F12: $48
    dec de                                        ; $7F13: $1B
    ld a, [bc]                                    ; $7F14: $0A
    ld c, a                                       ; $7F15: $4F
    ld [bc], a                                    ; $7F16: $02
    rst $38                                       ; $7F17: $FF
    nop                                           ; $7F18: $00
    sbc a                                         ; $7F19: $9F
    ld h, [hl]                                    ; $7F1A: $66
    nop                                           ; $7F1B: $00
    ld c, b                                       ; $7F1C: $48
    ld c, a                                       ; $7F1D: $4F
    ld [bc], a                                    ; $7F1E: $02
    rst $38                                       ; $7F1F: $FF
    nop                                           ; $7F20: $00
    sbc a                                         ; $7F21: $9F
    ld h, [hl]                                    ; $7F22: $66
    nop                                           ; $7F23: $00
    ld c, b                                       ; $7F24: $48
    ld c, a                                       ; $7F25: $4F
    ld [bc], a                                    ; $7F26: $02
    cp $00                                        ; $7F27: $FE $00
    sbc a                                         ; $7F29: $9F
    ld h, [hl]                                    ; $7F2A: $66
    nop                                           ; $7F2B: $00
    ld c, b                                       ; $7F2C: $48
    ld c, a                                       ; $7F2D: $4F
    ld [bc], a                                    ; $7F2E: $02
    cp $00                                        ; $7F2F: $FE $00
    sbc a                                         ; $7F31: $9F
    ld h, [hl]                                    ; $7F32: $66
    nop                                           ; $7F33: $00
    ld c, b                                       ; $7F34: $48
    ld c, a                                       ; $7F35: $4F
    ld [bc], a                                    ; $7F36: $02
    rst $38                                       ; $7F37: $FF
    nop                                           ; $7F38: $00
    sbc a                                         ; $7F39: $9F
    ld h, [hl]                                    ; $7F3A: $66
    nop                                           ; $7F3B: $00
    ld c, b                                       ; $7F3C: $48
    ld c, a                                       ; $7F3D: $4F
    ld [bc], a                                    ; $7F3E: $02
    rst $38                                       ; $7F3F: $FF
    nop                                           ; $7F40: $00
    sbc a                                         ; $7F41: $9F
    ld h, [hl]                                    ; $7F42: $66
    nop                                           ; $7F43: $00
    ld c, b                                       ; $7F44: $48
    dec de                                        ; $7F45: $1B
    ld a, [bc]                                    ; $7F46: $0A
    ld c, a                                       ; $7F47: $4F
    ld [bc], a                                    ; $7F48: $02
    ld bc, $9F00                                  ; $7F49: $01 $00 $9F
    ld h, [hl]                                    ; $7F4C: $66
    nop                                           ; $7F4D: $00
    ld c, b                                       ; $7F4E: $48
    ld c, a                                       ; $7F4F: $4F
    ld [bc], a                                    ; $7F50: $02
    ld bc, $9F00                                  ; $7F51: $01 $00 $9F
    ld h, [hl]                                    ; $7F54: $66
    nop                                           ; $7F55: $00
    ld c, b                                       ; $7F56: $48
    ld c, a                                       ; $7F57: $4F
    ld [bc], a                                    ; $7F58: $02
    ld [bc], a                                    ; $7F59: $02
    nop                                           ; $7F5A: $00
    sbc a                                         ; $7F5B: $9F
    ld h, [hl]                                    ; $7F5C: $66
    nop                                           ; $7F5D: $00
    ld c, b                                       ; $7F5E: $48
    ld c, a                                       ; $7F5F: $4F
    ld [bc], a                                    ; $7F60: $02
    ld [bc], a                                    ; $7F61: $02
    nop                                           ; $7F62: $00
    sbc a                                         ; $7F63: $9F
    ld h, [hl]                                    ; $7F64: $66
    nop                                           ; $7F65: $00
    ld c, b                                       ; $7F66: $48
    ld c, a                                       ; $7F67: $4F
    ld [bc], a                                    ; $7F68: $02
    ld bc, $9F00                                  ; $7F69: $01 $00 $9F
    ld h, [hl]                                    ; $7F6C: $66
    nop                                           ; $7F6D: $00
    ld c, b                                       ; $7F6E: $48
    ld c, a                                       ; $7F6F: $4F
    ld [bc], a                                    ; $7F70: $02
    ld bc, $9F00                                  ; $7F71: $01 $00 $9F
    ld h, [hl]                                    ; $7F74: $66
    nop                                           ; $7F75: $00
    ld c, b                                       ; $7F76: $48
    dec de                                        ; $7F77: $1B
    ld a, [bc]                                    ; $7F78: $0A
    ld c, a                                       ; $7F79: $4F
    ld [bc], a                                    ; $7F7A: $02
    rst $38                                       ; $7F7B: $FF
    nop                                           ; $7F7C: $00
    sbc a                                         ; $7F7D: $9F
    ld h, [hl]                                    ; $7F7E: $66
    nop                                           ; $7F7F: $00
    ld c, b                                       ; $7F80: $48
    ld c, a                                       ; $7F81: $4F
    ld [bc], a                                    ; $7F82: $02
    rst $38                                       ; $7F83: $FF
    nop                                           ; $7F84: $00
    sbc a                                         ; $7F85: $9F
    ld h, [hl]                                    ; $7F86: $66
    nop                                           ; $7F87: $00
    ld c, b                                       ; $7F88: $48
    ld c, a                                       ; $7F89: $4F
    ld [bc], a                                    ; $7F8A: $02
    cp $00                                        ; $7F8B: $FE $00
    sbc a                                         ; $7F8D: $9F
    ld h, [hl]                                    ; $7F8E: $66
    nop                                           ; $7F8F: $00
    ld c, b                                       ; $7F90: $48
    ld c, a                                       ; $7F91: $4F
    ld [bc], a                                    ; $7F92: $02
    cp $00                                        ; $7F93: $FE $00
    sbc a                                         ; $7F95: $9F
    ld h, [hl]                                    ; $7F96: $66
    nop                                           ; $7F97: $00
    ld c, b                                       ; $7F98: $48
    ld c, a                                       ; $7F99: $4F
    ld [bc], a                                    ; $7F9A: $02
    rst $38                                       ; $7F9B: $FF
    nop                                           ; $7F9C: $00
    sbc a                                         ; $7F9D: $9F
    ld h, [hl]                                    ; $7F9E: $66
    nop                                           ; $7F9F: $00
    ld c, b                                       ; $7FA0: $48
    ld c, a                                       ; $7FA1: $4F
    ld [bc], a                                    ; $7FA2: $02
    rst $38                                       ; $7FA3: $FF
    nop                                           ; $7FA4: $00
    sbc a                                         ; $7FA5: $9F
    ld h, [hl]                                    ; $7FA6: $66
    nop                                           ; $7FA7: $00
    ld c, b                                       ; $7FA8: $48
    ld c, a                                       ; $7FA9: $4F
    ld [bc], a                                    ; $7FAA: $02
    rst $38                                       ; $7FAB: $FF
    nop                                           ; $7FAC: $00
    sbc a                                         ; $7FAD: $9F
    ld h, [hl]                                    ; $7FAE: $66
    nop                                           ; $7FAF: $00
    ld c, b                                       ; $7FB0: $48
    dec de                                        ; $7FB1: $1B
    ld a, [bc]                                    ; $7FB2: $0A
    ld c, a                                       ; $7FB3: $4F
    ld [bc], a                                    ; $7FB4: $02
    ld bc, $9F00                                  ; $7FB5: $01 $00 $9F
    ld h, [hl]                                    ; $7FB8: $66
    nop                                           ; $7FB9: $00
    ld c, b                                       ; $7FBA: $48
    ld c, a                                       ; $7FBB: $4F
    ld [bc], a                                    ; $7FBC: $02
    ld bc, $9F00                                  ; $7FBD: $01 $00 $9F
    ld h, [hl]                                    ; $7FC0: $66
    nop                                           ; $7FC1: $00
    ld c, b                                       ; $7FC2: $48
    ld c, a                                       ; $7FC3: $4F
    ld [bc], a                                    ; $7FC4: $02
    ld [bc], a                                    ; $7FC5: $02
    nop                                           ; $7FC6: $00
    sbc a                                         ; $7FC7: $9F
    ld h, [hl]                                    ; $7FC8: $66
    nop                                           ; $7FC9: $00
    ld c, b                                       ; $7FCA: $48
    ld c, a                                       ; $7FCB: $4F
    ld [bc], a                                    ; $7FCC: $02
    ld [bc], a                                    ; $7FCD: $02
    nop                                           ; $7FCE: $00
    sbc a                                         ; $7FCF: $9F
    ld h, [hl]                                    ; $7FD0: $66
    nop                                           ; $7FD1: $00
    ld c, b                                       ; $7FD2: $48
    ld c, a                                       ; $7FD3: $4F
    ld [bc], a                                    ; $7FD4: $02
    ld bc, $9F00                                  ; $7FD5: $01 $00 $9F
    ld h, [hl]                                    ; $7FD8: $66
    nop                                           ; $7FD9: $00
    ld c, b                                       ; $7FDA: $48
    ld c, a                                       ; $7FDB: $4F
    ld [bc], a                                    ; $7FDC: $02
    ld bc, $9F00                                  ; $7FDD: $01 $00 $9F
    ld h, [hl]                                    ; $7FE0: $66
    nop                                           ; $7FE1: $00
    ld b, d                                       ; $7FE2: $42
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
