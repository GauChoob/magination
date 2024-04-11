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
