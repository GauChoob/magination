SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    sub [hl]                                      ; $4000: $96
    inc hl                                        ; $4001: $23
    nop                                           ; $4002: $00
    ld b, b                                       ; $4003: $40
    ld bc, $0910                                  ; $4004: $01 $10 $09
    ld b, l                                       ; $4007: $45
    cpl                                           ; $4008: $2F
    scf                                           ; $4009: $37
    ld c, h                                       ; $400A: $4C
    ld [bc], a                                    ; $400B: $02
    nop                                           ; $400C: $00
    rla                                           ; $400D: $17
    ld c, $0F                                     ; $400E: $0E $0F
    ld b, l                                       ; $4010: $45
    inc hl                                        ; $4011: $23
    and b                                         ; $4012: $A0
    ld b, [hl]                                    ; $4013: $46
    ld [bc], a                                    ; $4014: $02
    rla                                           ; $4015: $17
    nop                                           ; $4016: $00
    ld c, $0E                                     ; $4017: $0E $0E
    ld b, l                                       ; $4019: $45
    inc hl                                        ; $401A: $23
    xor [hl]                                      ; $401B: $AE
    ld c, b                                       ; $401C: $48
    ld bc, $2F1C                                  ; $401D: $01 $1C $2F
    ld b, l                                       ; $4020: $45
    inc hl                                        ; $4021: $23
    inc a                                         ; $4022: $3C
    ld b, [hl]                                    ; $4023: $46
    and h                                         ; $4024: $A4
    ld a, [hl-]                                   ; $4025: $3A
    and e                                         ; $4026: $A3
    add b                                         ; $4027: $80
    nop                                           ; $4028: $00
    ld hl, $D18B                                  ; $4029: $21 $8B $D1
    ld b, h                                       ; $402C: $44
    ld b, [hl]                                    ; $402D: $46
    ld b, b                                       ; $402E: $40
    rlca                                          ; $402F: $07
    nop                                           ; $4030: $00
    ld l, e                                       ; $4031: $6B
    ld c, d                                       ; $4032: $4A
    add hl, bc                                    ; $4033: $09
    nop                                           ; $4034: $00
    db $20, $AB                                   ; $4035: $20 $AB
    ld d, b                                       ; $4037: $50
    ld b, e                                       ; $4038: $43
    ld de, $C801                                  ; $4039: $11 $01 $C8
    and e                                         ; $403C: $A3
    dec b                                         ; $403D: $05
    nop                                           ; $403E: $00
    inc hl                                        ; $403F: $23
    ld b, [hl]                                    ; $4040: $46
    ld b, b                                       ; $4041: $40
    ld b, l                                       ; $4042: $45
    inc hl                                        ; $4043: $23
    dec hl                                        ; $4044: $2B
    ld b, [hl]                                    ; $4045: $46
    and d                                         ; $4046: $A2
    daa                                           ; $4047: $27
    and c                                         ; $4048: $A1
    ld bc, $0422                                  ; $4049: $01 $22 $04
    ld b, b                                       ; $404C: $40
    cp [hl]                                       ; $404D: $BE
    add e                                         ; $404E: $83
    ret nc                                        ; $404F: $D0

    ld l, b                                       ; $4050: $68
    ld l, a                                       ; $4051: $6F
    ld h, [hl]                                    ; $4052: $66
    ld a, h                                       ; $4053: $7C
    scf                                           ; $4054: $37
    ld l, l                                       ; $4055: $6D
    ld a, h                                       ; $4056: $7C
    ld a, a                                       ; $4057: $7F
    ld d, d                                       ; $4058: $52
    ret nc                                        ; $4059: $D0

    inc bc                                        ; $405A: $03
    inc b                                         ; $405B: $04
    ld d, d                                       ; $405C: $52
    ret nc                                        ; $405D: $D0

    inc bc                                        ; $405E: $03
    ld a, [bc]                                    ; $405F: $0A
    ld b, h                                       ; $4060: $44
    ld l, h                                       ; $4061: $6C
    ld b, b                                       ; $4062: $40
    and [hl]                                      ; $4063: $A6

jr_023_4064:
    ret z                                         ; $4064: $C8

    and e                                         ; $4065: $A3
    inc c                                         ; $4066: $0C
    ld bc, $A3C8                                  ; $4067: $01 $C8 $A3
    dec b                                         ; $406A: $05
    ld bc, $2345                                  ; $406B: $01 $45 $23
    dec hl                                        ; $406E: $2B
    ld b, [hl]                                    ; $406F: $46
    ld [bc], a                                    ; $4070: $02
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    jr nc, jr_023_4064                            ; $4075: $30 $ED

    ld d, [hl]                                    ; $4077: $56
    jr nz, @+$49                                  ; $4078: $20 $47

    rlca                                          ; $407A: $07
    inc hl                                        ; $407B: $23
    sub b                                         ; $407C: $90
    ld b, b                                       ; $407D: $40
    inc hl                                        ; $407E: $23
    xor h                                         ; $407F: $AC
    ld b, b                                       ; $4080: $40
    inc hl                                        ; $4081: $23
    pop bc                                        ; $4082: $C1
    ld b, b                                       ; $4083: $40
    inc hl                                        ; $4084: $23
    rst $08                                       ; $4085: $CF
    ld b, b                                       ; $4086: $40
    inc hl                                        ; $4087: $23
    db $E4                                        ; $4088: $E4
    ld b, b                                       ; $4089: $40
    inc hl                                        ; $408A: $23
    ld sp, hl                                     ; $408B: $F9
    ld b, b                                       ; $408C: $40
    inc hl                                        ; $408D: $23
    dec d                                         ; $408E: $15
    ld b, c                                       ; $408F: $41
    dec h                                         ; $4090: $25
    ld bc, $306C                                  ; $4091: $01 $6C $30
    ld c, h                                       ; $4094: $4C
    inc hl                                        ; $4095: $23
    ld b, b                                       ; $4096: $40
    ld l, $09                                     ; $4097: $2E $09
    inc de                                        ; $4099: $13
    ld l, $5C                                     ; $409A: $2E $5C
    ld bc, $2E2B                                  ; $409C: $01 $2B $2E
    add hl, bc                                    ; $409F: $09
    inc d                                         ; $40A0: $14
    ld l, $5D                                     ; $40A1: $2E $5D
    ld bc, $2E2B                                  ; $40A3: $01 $2B $2E
    add hl, bc                                    ; $40A6: $09
    ld [de], a                                    ; $40A7: $12
    jr nc, @+$63                                  ; $40A8: $30 $61

    ld bc, $2527                                  ; $40AA: $01 $27 $25
    ld bc, $306C                                  ; $40AD: $01 $6C $30
    ld c, h                                       ; $40B0: $4C
    inc hl                                        ; $40B1: $23
    ld b, b                                       ; $40B2: $40
    ld l, $09                                     ; $40B3: $2E $09
    ld [$602E], sp                                ; $40B5: $08 $2E $60
    ld bc, $2E2B                                  ; $40B8: $01 $2B $2E
    add hl, bc                                    ; $40BB: $09
    inc d                                         ; $40BC: $14
    ld [hl-], a                                   ; $40BD: $32
    ld h, e                                       ; $40BE: $63
    ld bc, $2527                                  ; $40BF: $01 $27 $25
    ld bc, $356C                                  ; $40C2: $01 $6C $35
    ld c, h                                       ; $40C5: $4C
    inc hl                                        ; $40C6: $23
    ld b, b                                       ; $40C7: $40
    ld l, $09                                     ; $40C8: $2E $09
    ld [de], a                                    ; $40CA: $12
    dec [hl]                                      ; $40CB: $35
    ld l, d                                       ; $40CC: $6A
    ld bc, $2527                                  ; $40CD: $01 $27 $25
    ld bc, $376C                                  ; $40D0: $01 $6C $37
    ld c, h                                       ; $40D3: $4C
    inc hl                                        ; $40D4: $23
    ld b, b                                       ; $40D5: $40
    ld l, $09                                     ; $40D6: $2E $09
    ld [de], a                                    ; $40D8: $12
    ld [hl-], a                                   ; $40D9: $32
    ld h, [hl]                                    ; $40DA: $66
    ld bc, $2E2B                                  ; $40DB: $01 $2B $2E
    add hl, bc                                    ; $40DE: $09
    ld [de], a                                    ; $40DF: $12
    ld [hl-], a                                   ; $40E0: $32
    ld h, l                                       ; $40E1: $65
    ld bc, $2527                                  ; $40E2: $01 $27 $25
    ld bc, $346C                                  ; $40E5: $01 $6C $34
    ld c, h                                       ; $40E8: $4C
    inc hl                                        ; $40E9: $23
    ld b, b                                       ; $40EA: $40
    ld l, $09                                     ; $40EB: $2E $09
    ld [hl+], a                                   ; $40ED: $22
    ld [hl-], a                                   ; $40EE: $32
    ld h, d                                       ; $40EF: $62
    ld bc, $2E2B                                  ; $40F0: $01 $2B $2E
    add hl, bc                                    ; $40F3: $09
    jr @+$36                                      ; $40F4: $18 $34

    ld l, c                                       ; $40F6: $69
    ld bc, $2527                                  ; $40F7: $01 $27 $25
    ld bc, $336C                                  ; $40FA: $01 $6C $33
    ld c, h                                       ; $40FD: $4C
    inc hl                                        ; $40FE: $23
    ld b, b                                       ; $40FF: $40
    ld l, $09                                     ; $4100: $2E $09
    inc d                                         ; $4102: $14
    jr nc, jr_023_4165                            ; $4103: $30 $60

    ld bc, $2E2B                                  ; $4105: $01 $2B $2E
    add hl, bc                                    ; $4108: $09
    inc de                                        ; $4109: $13
    ld sp, $0164                                  ; $410A: $31 $64 $01
    dec hl                                        ; $410D: $2B
    ld l, $09                                     ; $410E: $2E $09
    ld [$6632], sp                                ; $4110: $08 $32 $66
    ld bc, $2527                                  ; $4113: $01 $27 $25
    ld bc, $326C                                  ; $4116: $01 $6C $32
    ld c, h                                       ; $4119: $4C
    inc hl                                        ; $411A: $23
    ld b, b                                       ; $411B: $40
    ld l, $09                                     ; $411C: $2E $09
    jr jr_023_4151                                ; $411E: $18 $31

    ld h, d                                       ; $4120: $62
    ld bc, $2E2B                                  ; $4121: $01 $2B $2E
    add hl, bc                                    ; $4124: $09
    jr jr_023_4158                                ; $4125: $18 $31

    ld h, h                                       ; $4127: $64
    ld bc, $2527                                  ; $4128: $01 $27 $25
    ld bc, $376C                                  ; $412B: $01 $6C $37
    ld c, h                                       ; $412E: $4C
    inc hl                                        ; $412F: $23
    ld b, b                                       ; $4130: $40
    ld l, $09                                     ; $4131: $2E $09

jr_023_4133:
    jr jr_023_416C                                ; $4133: $18 $37

    ld l, [hl]                                    ; $4135: $6E
    ld bc, $2E2B                                  ; $4136: $01 $2B $2E
    add hl, bc                                    ; $4139: $09
    ld [de], a                                    ; $413A: $12
    scf                                           ; $413B: $37
    ld [hl], e                                    ; $413C: $73
    ld bc, $0227                                  ; $413D: $01 $27 $02
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    jr nc, jr_023_4133                            ; $4144: $30 $ED

    ld d, [hl]                                    ; $4146: $56
    ld [hl+], a                                   ; $4147: $22
    dec h                                         ; $4148: $25
    add hl, bc                                    ; $4149: $09
    ld e, h                                       ; $414A: $5C
    cpl                                           ; $414B: $2F
    ld c, h                                       ; $414C: $4C
    inc hl                                        ; $414D: $23
    ld b, b                                       ; $414E: $40
    dec hl                                        ; $414F: $2B
    xor d                                         ; $4150: $AA

jr_023_4151:
    dec a                                         ; $4151: $3D
    db $D3                                        ; $4152: $D3
    rlca                                          ; $4153: $07
    ld [bc], a                                    ; $4154: $02
    xor d                                         ; $4155: $AA
    ld a, $D3                                     ; $4156: $3E $D3

jr_023_4158:
    rlca                                          ; $4158: $07
    jp c, $B89B                                   ; $4159: $DA $9B $B8

    halt                                          ; $415C: $76
    sbc a                                         ; $415D: $9F
    ld c, b                                       ; $415E: $48
    ld l, a                                       ; $415F: $6F
    ld [hl], a                                    ; $4160: $77
    jr nz, jr_023_41D3                            ; $4161: $20 $70

    ld l, c                                       ; $4163: $69
    ld [hl], h                                    ; $4164: $74

jr_023_4165:
    ld l, c                                       ; $4165: $69
    ld h, [hl]                                    ; $4166: $66
    ld [hl], l                                    ; $4167: $75
    ld l, h                                       ; $4168: $6C
    ld l, $FE                                     ; $4169: $2E $FE
    db $FD                                        ; $416B: $FD

jr_023_416C:
    sbc d                                         ; $416C: $9A
    ld l, $09                                     ; $416D: $2E $09
    ld b, h                                       ; $416F: $44
    jr z, jr_023_41D4                             ; $4170: $28 $62

    nop                                           ; $4172: $00
    dec hl                                        ; $4173: $2B
    ld e, d                                       ; $4174: $5A
    inc hl                                        ; $4175: $23
    db $E4                                        ; $4176: $E4
    ld b, c                                       ; $4177: $41
    ld e, [hl]                                    ; $4178: $5E
    dec hl                                        ; $4179: $2B
    ld e, d                                       ; $417A: $5A
    inc hl                                        ; $417B: $23
    db $E4                                        ; $417C: $E4
    ld b, c                                       ; $417D: $41
    ld e, [hl]                                    ; $417E: $5E
    dec hl                                        ; $417F: $2B
    ld e, d                                       ; $4180: $5A
    inc hl                                        ; $4181: $23
    db $EC                                        ; $4182: $EC
    ld b, c                                       ; $4183: $41
    ld e, [hl]                                    ; $4184: $5E
    dec hl                                        ; $4185: $2B
    ld l, $09                                     ; $4186: $2E $09
    ccf                                           ; $4188: $3F
    cpl                                           ; $4189: $2F
    adc d                                         ; $418A: $8A
    nop                                           ; $418B: $00
    ld b, e                                       ; $418C: $43
    ld d, $07                                     ; $418D: $16 $07
    rrca                                          ; $418F: $0F
    ld bc, $D0AF                                  ; $4190: $01 $AF $D0
    dec b                                         ; $4193: $05
    nop                                           ; $4194: $00
    inc hl                                        ; $4195: $23
    ret nc                                        ; $4196: $D0

    ld b, c                                       ; $4197: $41
    sbc e                                         ; $4198: $9B
    cp b                                          ; $4199: $B8
    halt                                          ; $419A: $76
    sbc a                                         ; $419B: $9F
    ld b, c                                       ; $419C: $41
    ld l, b                                       ; $419D: $68
    ld l, b                                       ; $419E: $68
    inc l                                         ; $419F: $2C
    jr nz, jr_023_41F5                            ; $41A0: $20 $53

    ld h, c                                       ; $41A2: $61
    ld [hl], d                                    ; $41A3: $72
    ld h, d                                       ; $41A4: $62
    ld l, c                                       ; $41A5: $69
    ld l, h                                       ; $41A6: $6C
    inc l                                         ; $41A7: $2C
    cp $70                                        ; $41A8: $FE $70
    ld l, h                                       ; $41AA: $6C
    ld h, l                                       ; $41AB: $65
    ld h, c                                       ; $41AC: $61
    ld [hl], e                                    ; $41AD: $73
    ld h, l                                       ; $41AE: $65
    jr nz, jr_023_4224                            ; $41AF: $20 $73

    ld l, b                                       ; $41B1: $68
    ld l, a                                       ; $41B2: $6F
    ld [hl], a                                    ; $41B3: $77
    jr nz, jr_023_4225                            ; $41B4: $20 $6F

    ld [hl], l                                    ; $41B6: $75
    ld [hl], d                                    ; $41B7: $72
    cp $67                                        ; $41B8: $FE $67
    ld [hl], l                                    ; $41BA: $75
    ld h, l                                       ; $41BB: $65
    ld [hl], e                                    ; $41BC: $73
    ld [hl], h                                    ; $41BD: $74
    jr nz, jr_023_4234                            ; $41BE: $20 $74

    ld l, b                                       ; $41C0: $68
    ld h, l                                       ; $41C1: $65
    jr nz, jr_023_4228                            ; $41C2: $20 $64

    ld l, a                                       ; $41C4: $6F
    ld l, a                                       ; $41C5: $6F
    ld [hl], d                                    ; $41C6: $72
    ld l, $FE                                     ; $41C7: $2E $FE
    db $FD                                        ; $41C9: $FD
    sbc d                                         ; $41CA: $9A
    dec hl                                        ; $41CB: $2B
    ld b, l                                       ; $41CC: $45
    inc hl                                        ; $41CD: $23
    jp c, $2F41                                   ; $41CE: $DA $41 $2F

    add hl, bc                                    ; $41D1: $09
    ld h, l                                       ; $41D2: $65

jr_023_41D3:
    ld e, [hl]                                    ; $41D3: $5E

jr_023_41D4:
    ld a, [bc]                                    ; $41D4: $0A
    dec hl                                        ; $41D5: $2B
    ld b, l                                       ; $41D6: $45
    inc hl                                        ; $41D7: $23
    add [hl]                                      ; $41D8: $86
    ld b, c                                       ; $41D9: $41
    ld e, d                                       ; $41DA: $5A
    inc hl                                        ; $41DB: $23
    nop                                           ; $41DC: $00
    ld b, d                                       ; $41DD: $42
    ld e, [hl]                                    ; $41DE: $5E
    dec hl                                        ; $41DF: $2B
    ld b, l                                       ; $41E0: $45
    inc hl                                        ; $41E1: $23
    jp c, Jump_023_4741                           ; $41E2: $DA $41 $47

    ld [bc], a                                    ; $41E5: $02
    inc hl                                        ; $41E6: $23
    dec e                                         ; $41E7: $1D
    ld b, d                                       ; $41E8: $42
    inc hl                                        ; $41E9: $23
    dec h                                         ; $41EA: $25
    ld b, d                                       ; $41EB: $42
    ld b, a                                       ; $41EC: $47
    ld b, $23                                     ; $41ED: $06 $23
    dec e                                         ; $41EF: $1D
    ld b, d                                       ; $41F0: $42
    inc hl                                        ; $41F1: $23
    dec e                                         ; $41F2: $1D
    ld b, d                                       ; $41F3: $42
    inc hl                                        ; $41F4: $23

jr_023_41F5:
    dec h                                         ; $41F5: $25
    ld b, d                                       ; $41F6: $42
    inc hl                                        ; $41F7: $23
    dec h                                         ; $41F8: $25
    ld b, d                                       ; $41F9: $42

jr_023_41FA:
    inc hl                                        ; $41FA: $23
    dec l                                         ; $41FB: $2D
    ld b, d                                       ; $41FC: $42
    inc hl                                        ; $41FD: $23
    inc [hl]                                      ; $41FE: $34
    ld b, d                                       ; $41FF: $42
    ld b, a                                       ; $4200: $47
    add hl, bc                                    ; $4201: $09
    inc hl                                        ; $4202: $23
    dec e                                         ; $4203: $1D
    ld b, d                                       ; $4204: $42
    inc hl                                        ; $4205: $23
    dec e                                         ; $4206: $1D
    ld b, d                                       ; $4207: $42
    inc hl                                        ; $4208: $23
    dec h                                         ; $4209: $25
    ld b, d                                       ; $420A: $42
    inc hl                                        ; $420B: $23
    dec h                                         ; $420C: $25
    ld b, d                                       ; $420D: $42
    inc hl                                        ; $420E: $23
    dec l                                         ; $420F: $2D
    ld b, d                                       ; $4210: $42
    inc hl                                        ; $4211: $23
    inc [hl]                                      ; $4212: $34
    ld b, d                                       ; $4213: $42
    inc hl                                        ; $4214: $23
    inc [hl]                                      ; $4215: $34
    ld b, d                                       ; $4216: $42
    inc hl                                        ; $4217: $23
    dec sp                                        ; $4218: $3B
    ld b, d                                       ; $4219: $42
    inc hl                                        ; $421A: $23
    dec sp                                        ; $421B: $3B
    ld b, d                                       ; $421C: $42
    ld l, $09                                     ; $421D: $2E $09
    daa                                           ; $421F: $27
    dec l                                         ; $4220: $2D
    ld h, d                                       ; $4221: $62
    nop                                           ; $4222: $00
    ld d, h                                       ; $4223: $54

jr_023_4224:
    ld b, d                                       ; $4224: $42

jr_023_4225:
    ld l, $09                                     ; $4225: $2E $09
    ld b, [hl]                                    ; $4227: $46

jr_023_4228:
    dec l                                         ; $4228: $2D
    ld l, l                                       ; $4229: $6D
    nop                                           ; $422A: $00
    ld d, h                                       ; $422B: $54
    ld b, d                                       ; $422C: $42
    cpl                                           ; $422D: $2F
    add hl, bc                                    ; $422E: $09
    ld h, l                                       ; $422F: $65
    ld e, [hl]                                    ; $4230: $5E
    nop                                           ; $4231: $00
    ld d, h                                       ; $4232: $54
    ld b, d                                       ; $4233: $42

jr_023_4234:
    jr z, jr_023_423F                             ; $4234: $28 $09

    ld e, c                                       ; $4236: $59

jr_023_4237:
    ld [hl], d                                    ; $4237: $72
    ld c, $54                                     ; $4238: $0E $54
    ld b, d                                       ; $423A: $42
    ld l, $09                                     ; $423B: $2E $09
    ccf                                           ; $423D: $3F
    cpl                                           ; $423E: $2F

jr_023_423F:
    ld l, h                                       ; $423F: $6C
    nop                                           ; $4240: $00
    ld d, h                                       ; $4241: $54
    ld b, d                                       ; $4242: $42
    ld [bc], a                                    ; $4243: $02
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    nop                                           ; $4246: $00
    nop                                           ; $4247: $00
    jr nc, jr_023_4237                            ; $4248: $30 $ED

    ld d, [hl]                                    ; $424A: $56
    jr jr_023_4272                                ; $424B: $18 $25

    ld bc, $325F                                  ; $424D: $01 $5F $32
    ld c, h                                       ; $4250: $4C
    inc hl                                        ; $4251: $23
    ld b, b                                       ; $4252: $40
    dec hl                                        ; $4253: $2B
    xor d                                         ; $4254: $AA
    dec a                                         ; $4255: $3D
    db $D3                                        ; $4256: $D3
    rlca                                          ; $4257: $07
    inc bc                                        ; $4258: $03
    xor d                                         ; $4259: $AA
    ld a, $D3                                     ; $425A: $3E $D3
    rlca                                          ; $425C: $07
    jr nz, jr_023_41FA                            ; $425D: $20 $9B

    cp b                                          ; $425F: $B8
    ld e, l                                       ; $4260: $5D
    sbc a                                         ; $4261: $9F

Call_023_4262:
    ld c, c                                       ; $4262: $49
    daa                                           ; $4263: $27
    halt                                          ; $4264: $76
    ld h, l                                       ; $4265: $65
    jr nz, jr_023_42DF                            ; $4266: $20 $77

    ld h, c                                       ; $4268: $61
    ld l, [hl]                                    ; $4269: $6E
    ld [hl], h                                    ; $426A: $74
    ld h, l                                       ; $426B: $65
    ld h, h                                       ; $426C: $64
    jr nz, jr_023_42E3                            ; $426D: $20 $74

    ld l, a                                       ; $426F: $6F
    rst $38                                       ; $4270: $FF
    ld h, [hl]                                    ; $4271: $66

jr_023_4272:
    ld l, c                                       ; $4272: $69
    ld l, [hl]                                    ; $4273: $6E
    ld l, c                                       ; $4274: $69
    ld [hl], e                                    ; $4275: $73
    ld l, b                                       ; $4276: $68
    jr nz, jr_023_42ED                            ; $4277: $20 $74

    ld l, b                                       ; $4279: $68
    ld l, c                                       ; $427A: $69
    ld [hl], e                                    ; $427B: $73
    jr nz, jr_023_42E4                            ; $427C: $20 $66

    ld l, a                                       ; $427E: $6F
    ld [hl], d                                    ; $427F: $72
    cp $61                                        ; $4280: $FE $61
    jr nz, jr_023_42F0                            ; $4282: $20 $6C

    ld l, a                                       ; $4284: $6F
    ld l, [hl]                                    ; $4285: $6E
    ld h, a                                       ; $4286: $67
    jr nz, jr_023_42FD                            ; $4287: $20 $74

    ld l, c                                       ; $4289: $69
    ld l, l                                       ; $428A: $6D
    ld h, l                                       ; $428B: $65
    inc l                                         ; $428C: $2C
    rst $38                                       ; $428D: $FF
    ld c, e                                       ; $428E: $4B
    ld a, c                                       ; $428F: $79
    ld [hl], d                                    ; $4290: $72
    ld l, a                                       ; $4291: $6F
    ld [hl], e                                    ; $4292: $73
    ld l, $FE                                     ; $4293: $2E $FE
    db $FD                                        ; $4295: $FD
    sbc d                                         ; $4296: $9A
    ld l, $09                                     ; $4297: $2E $09
    ld b, h                                       ; $4299: $44
    dec l                                         ; $429A: $2D
    ld a, b                                       ; $429B: $78
    nop                                           ; $429C: $00
    dec hl                                        ; $429D: $2B
    ld e, d                                       ; $429E: $5A
    inc hl                                        ; $429F: $23
    xor b                                         ; $42A0: $A8
    ld b, d                                       ; $42A1: $42
    ld e, [hl]                                    ; $42A2: $5E
    dec hl                                        ; $42A3: $2B
    ld b, l                                       ; $42A4: $45
    inc hl                                        ; $42A5: $23
    sbc [hl]                                      ; $42A6: $9E
    ld b, d                                       ; $42A7: $42
    ld b, a                                       ; $42A8: $47
    ld [$C223], sp                                ; $42A9: $08 $23 $C2
    ld b, d                                       ; $42AC: $42
    inc hl                                        ; $42AD: $23
    jp nz, $2342                                  ; $42AE: $C2 $42 $23

    sub $42                                       ; $42B1: $D6 $42
    inc hl                                        ; $42B3: $23
    db $DD                                        ; $42B4: $DD
    ld b, d                                       ; $42B5: $42
    inc hl                                        ; $42B6: $23
    db $DD                                        ; $42B7: $DD
    ld b, d                                       ; $42B8: $42
    inc hl                                        ; $42B9: $23
    pop af                                        ; $42BA: $F1
    ld b, d                                       ; $42BB: $42
    inc hl                                        ; $42BC: $23
    ld a, [hl+]                                   ; $42BD: $2A
    ld b, e                                       ; $42BE: $43
    inc hl                                        ; $42BF: $23
    ld a, [hl+]                                   ; $42C0: $2A
    ld b, e                                       ; $42C1: $43
    ld l, $09                                     ; $42C2: $2E $09
    ld a, [bc]                                    ; $42C4: $0A
    ld sp, $0078                                  ; $42C5: $31 $78 $00
    ld b, e                                       ; $42C8: $43
    ld d, $07                                     ; $42C9: $16 $07
    rrca                                          ; $42CB: $0F
    ld bc, $D0AF                                  ; $42CC: $01 $AF $D0
    dec b                                         ; $42CF: $05
    nop                                           ; $42D0: $00
    inc hl                                        ; $42D1: $23
    sub $42                                       ; $42D2: $D6 $42
    ld d, h                                       ; $42D4: $54
    ld b, d                                       ; $42D5: $42
    jr z, jr_023_42E1                             ; $42D6: $28 $09

    xor a                                         ; $42D8: $AF
    ld [hl], c                                    ; $42D9: $71
    ld [de], a                                    ; $42DA: $12
    ld d, h                                       ; $42DB: $54
    ld b, d                                       ; $42DC: $42
    ld l, $09                                     ; $42DD: $2E $09

jr_023_42DF:
    ld [hl+], a                                   ; $42DF: $22
    dec sp                                        ; $42E0: $3B

jr_023_42E1:
    sub [hl]                                      ; $42E1: $96
    nop                                           ; $42E2: $00

jr_023_42E3:
    ld b, e                                       ; $42E3: $43

jr_023_42E4:
    ld d, $07                                     ; $42E4: $16 $07
    rrca                                          ; $42E6: $0F
    ld bc, $D0AF                                  ; $42E7: $01 $AF $D0
    dec b                                         ; $42EA: $05
    nop                                           ; $42EB: $00
    inc hl                                        ; $42EC: $23

jr_023_42ED:
    pop af                                        ; $42ED: $F1
    ld b, d                                       ; $42EE: $42
    ld d, h                                       ; $42EF: $54

jr_023_42F0:
    ld b, d                                       ; $42F0: $42
    jr z, @+$0B                                   ; $42F1: $28 $09

    pop de                                        ; $42F3: $D1
    ld [hl], c                                    ; $42F4: $71
    ld [de], a                                    ; $42F5: $12
    ld b, e                                       ; $42F6: $43
    ld d, $07                                     ; $42F7: $16 $07
    rrca                                          ; $42F9: $0F
    ld bc, $D0AF                                  ; $42FA: $01 $AF $D0

jr_023_42FD:
    dec b                                         ; $42FD: $05
    nop                                           ; $42FE: $00
    inc hl                                        ; $42FF: $23
    jr z, @+$45                                   ; $4300: $28 $43

    add hl, bc                                    ; $4302: $09
    ld c, $0F                                     ; $4303: $0E $0F
    add e                                         ; $4305: $83
    ld c, d                                       ; $4306: $4A
    sbc e                                         ; $4307: $9B
    cp b                                          ; $4308: $B8
    ld e, l                                       ; $4309: $5D
    sbc a                                         ; $430A: $9F
    ld b, a                                       ; $430B: $47
    ld l, c                                       ; $430C: $69
    halt                                          ; $430D: $76
    ld h, l                                       ; $430E: $65
    jr nz, jr_023_437E                            ; $430F: $20 $6D

    ld a, c                                       ; $4311: $79
    jr nz, jr_023_4386                            ; $4312: $20 $72

    ld h, l                                       ; $4314: $65
    ld h, a                                       ; $4315: $67
    ld h, c                                       ; $4316: $61
    ld [hl], d                                    ; $4317: $72
    ld h, h                                       ; $4318: $64
    ld [hl], e                                    ; $4319: $73
    rst $38                                       ; $431A: $FF
    ld [hl], h                                    ; $431B: $74
    ld l, a                                       ; $431C: $6F
    jr nz, jr_023_4360                            ; $431D: $20 $41

    ld h, a                                       ; $431F: $67
    ld h, c                                       ; $4320: $61
    ld h, h                                       ; $4321: $64
    ld l, a                                       ; $4322: $6F
    ld l, [hl]                                    ; $4323: $6E
    ld hl, $FDFE                                  ; $4324: $21 $FE $FD
    sbc d                                         ; $4327: $9A
    ld d, h                                       ; $4328: $54
    ld b, d                                       ; $4329: $42
    ld l, $09                                     ; $432A: $2E $09
    inc de                                        ; $432C: $13
    ld sp, $0078                                  ; $432D: $31 $78 $00
    ld b, e                                       ; $4330: $43
    ld d, $07                                     ; $4331: $16 $07
    rrca                                          ; $4333: $0F
    ld bc, $D0AF                                  ; $4334: $01 $AF $D0
    dec b                                         ; $4337: $05
    nop                                           ; $4338: $00
    inc hl                                        ; $4339: $23
    sub $42                                       ; $433A: $D6 $42
    ld d, h                                       ; $433C: $54
    ld b, d                                       ; $433D: $42
    sub e                                         ; $433E: $93
    xor h                                         ; $433F: $AC
    dec h                                         ; $4340: $25
    and c                                         ; $4341: $A1
    nop                                           ; $4342: $00
    xor h                                         ; $4343: $AC
    ld h, $A1                                     ; $4344: $26 $A1
    nop                                           ; $4346: $00
    ld h, l                                       ; $4347: $65
    ld d, a                                       ; $4348: $57
    ld d, d                                       ; $4349: $52
    ld c, a                                       ; $434A: $4F
    ld h, h                                       ; $434B: $64
    xor [hl]                                      ; $434C: $AE
    ld d, a                                       ; $434D: $57
    ld l, c                                       ; $434E: $69
    cp a                                          ; $434F: $BF
    ld d, a                                       ; $4350: $57
    ld h, [hl]                                    ; $4351: $66
    ret nz                                        ; $4352: $C0

    ld e, h                                       ; $4353: $5C
    ld hl, $0005                                  ; $4354: $21 $05 $00
    add c                                         ; $4357: $81
    ld e, l                                       ; $4358: $5D
    dec b                                         ; $4359: $05
    dec b                                         ; $435A: $05

jr_023_435B:
    ld a, l                                       ; $435B: $7D
    ret nc                                        ; $435C: $D0

    nop                                           ; $435D: $00
    jr nz, jr_023_435B                            ; $435E: $20 $FB

jr_023_4360:
    ld d, b                                       ; $4360: $50
    ld [hl+], a                                   ; $4361: $22
    dec b                                         ; $4362: $05
    ld b, b                                       ; $4363: $40
    dec bc                                        ; $4364: $0B
    nop                                           ; $4365: $00
    ld [hl-], a                                   ; $4366: $32
    inc hl                                        ; $4367: $23
    ld [hl], b                                    ; $4368: $70
    ld b, b                                       ; $4369: $40
    adc l                                         ; $436A: $8D
    ld b, c                                       ; $436B: $41
    ld sp, $3E23                                  ; $436C: $31 $23 $3E
    ld b, e                                       ; $436F: $43
    ld [hl+], a                                   ; $4370: $22
    adc $40                                       ; $4371: $CE $40
    nop                                           ; $4373: $00
    add d                                         ; $4374: $82
    rra                                           ; $4375: $1F
    ld [de], a                                    ; $4376: $12
    sub h                                         ; $4377: $94
    ld b, d                                       ; $4378: $42
    ld [bc], a                                    ; $4379: $02
    ld a, [de]                                    ; $437A: $1A
    add hl, bc                                    ; $437B: $09
    cpl                                           ; $437C: $2F
    nop                                           ; $437D: $00

jr_023_437E:
    ld b, l                                       ; $437E: $45
    inc hl                                        ; $437F: $23
    ld a, $43                                     ; $4380: $3E $43
    ld [bc], a                                    ; $4382: $02
    inc h                                         ; $4383: $24
    ld a, [bc]                                    ; $4384: $0A
    nop                                           ; $4385: $00

jr_023_4386:
    ld a, [de]                                    ; $4386: $1A
    ld b, l                                       ; $4387: $45
    inc hl                                        ; $4388: $23
    and d                                         ; $4389: $A2
    ld c, l                                       ; $438A: $4D
    and h                                         ; $438B: $A4
    dec sp                                        ; $438C: $3B
    and e                                         ; $438D: $A3
    ld [$1500], sp                                ; $438E: $08 $00 $15
    xor a                                         ; $4391: $AF
    push de                                       ; $4392: $D5
    and h                                         ; $4393: $A4
    dec sp                                        ; $4394: $3B
    and e                                         ; $4395: $A3
    stop                                          ; $4396: $10 $00
    dec c                                         ; $4398: $0D
    rst $18                                       ; $4399: $DF
    push de                                       ; $439A: $D5
    and h                                         ; $439B: $A4
    dec sp                                        ; $439C: $3B
    and e                                         ; $439D: $A3
    jr nz, jr_023_43A0                            ; $439E: $20 $00

jr_023_43A0:
    ld [bc], a                                    ; $43A0: $02

jr_023_43A1:
    ld l, d                                       ; $43A1: $6A
    call nc, $3BA4                                ; $43A2: $D4 $A4 $3B
    and e                                         ; $43A5: $A3
    ld b, b                                       ; $43A6: $40
    nop                                           ; $43A7: $00
    inc hl                                        ; $43A8: $23
    ld l, e                                       ; $43A9: $6B
    call nc, $3BA4                                ; $43AA: $D4 $A4 $3B
    and e                                         ; $43AD: $A3
    add b                                         ; $43AE: $80
    nop                                           ; $43AF: $00
    ld [bc], a                                    ; $43B0: $02
    ld l, h                                       ; $43B1: $6C
    call nc, $3CA4                                ; $43B2: $D4 $A4 $3C
    and e                                         ; $43B5: $A3
    ld bc, $2002                                  ; $43B6: $01 $02 $20
    inc de                                        ; $43B9: $13
    jp nc, $3CA4                                  ; $43BA: $D2 $A4 $3C

    and e                                         ; $43BD: $A3
    ld [bc], a                                    ; $43BE: $02
    nop                                           ; $43BF: $00
    ld [bc], a                                    ; $43C0: $02
    ld sp, $A4D1                                  ; $43C1: $31 $D1 $A4
    inc a                                         ; $43C4: $3C
    and e                                         ; $43C5: $A3
    inc b                                         ; $43C6: $04
    nop                                           ; $43C7: $00
    inc bc                                        ; $43C8: $03
    ld [hl-], a                                   ; $43C9: $32
    pop de                                        ; $43CA: $D1
    and h                                         ; $43CB: $A4
    inc a                                         ; $43CC: $3C
    and e                                         ; $43CD: $A3
    ld [$0D00], sp                                ; $43CE: $08 $00 $0D
    inc sp                                        ; $43D1: $33
    pop de                                        ; $43D2: $D1
    and h                                         ; $43D3: $A4
    inc a                                         ; $43D4: $3C
    and e                                         ; $43D5: $A3
    stop                                          ; $43D6: $10 $00
    inc bc                                        ; $43D8: $03

jr_023_43D9:
    inc [hl]                                      ; $43D9: $34
    pop de                                        ; $43DA: $D1
    and h                                         ; $43DB: $A4
    inc a                                         ; $43DC: $3C
    and e                                         ; $43DD: $A3
    jr nz, jr_023_43E0                            ; $43DE: $20 $00

jr_023_43E0:
    ld [bc], a                                    ; $43E0: $02
    dec [hl]                                      ; $43E1: $35
    pop de                                        ; $43E2: $D1
    and h                                         ; $43E3: $A4
    inc a                                         ; $43E4: $3C
    and e                                         ; $43E5: $A3
    ld b, b                                       ; $43E6: $40
    nop                                           ; $43E7: $00
    ld [bc], a                                    ; $43E8: $02
    ld [hl], $D1                                  ; $43E9: $36 $D1
    ld b, h                                       ; $43EB: $44
    dec b                                         ; $43EC: $05
    ld b, h                                       ; $43ED: $44
    rlca                                          ; $43EE: $07
    nop                                           ; $43EF: $00
    ld l, e                                       ; $43F0: $6B
    ld c, d                                       ; $43F1: $4A
    add hl, bc                                    ; $43F2: $09
    nop                                           ; $43F3: $00
    jr nz, jr_023_43A1                            ; $43F4: $20 $AB

    ld d, b                                       ; $43F6: $50
    ld b, e                                       ; $43F7: $43
    ld de, $C801                                  ; $43F8: $11 $01 $C8
    and e                                         ; $43FB: $A3
    dec b                                         ; $43FC: $05
    nop                                           ; $43FD: $00
    inc hl                                        ; $43FE: $23
    dec b                                         ; $43FF: $05
    ld b, h                                       ; $4400: $44
    ld b, l                                       ; $4401: $45
    inc hl                                        ; $4402: $23
    dec hl                                        ; $4403: $2B
    ld b, [hl]                                    ; $4404: $46
    and d                                         ; $4405: $A2
    daa                                           ; $4406: $27
    and c                                         ; $4407: $A1
    ld [bc], a                                    ; $4408: $02
    ld [hl+], a                                   ; $4409: $22
    inc b                                         ; $440A: $04
    ld b, b                                       ; $440B: $40
    cp [hl]                                       ; $440C: $BE
    ld [hl], l                                    ; $440D: $75
    rst $10                                       ; $440E: $D7
    ld l, b                                       ; $440F: $68
    dec de                                        ; $4410: $1B

jr_023_4411:
    ld [hl], e                                    ; $4411: $73
    ld a, b                                       ; $4412: $78
    rlca                                          ; $4413: $07
    ld c, [hl]                                    ; $4414: $4E
    ld a, d                                       ; $4415: $7A
    ld a, a                                       ; $4416: $7F
    inc d                                         ; $4417: $14
    rst $10                                       ; $4418: $D7
    inc bc                                        ; $4419: $03
    inc b                                         ; $441A: $04
    inc d                                         ; $441B: $14
    rst $10                                       ; $441C: $D7
    dec h                                         ; $441D: $25
    inc h                                         ; $441E: $24
    ld b, l                                       ; $441F: $45
    inc hl                                        ; $4420: $23
    dec de                                        ; $4421: $1B
    ld b, [hl]                                    ; $4422: $46
    ld b, h                                       ; $4423: $44
    dec a                                         ; $4424: $3D
    ld b, h                                       ; $4425: $44
    rlca                                          ; $4426: $07
    nop                                           ; $4427: $00
    ld l, e                                       ; $4428: $6B
    ld c, d                                       ; $4429: $4A
    add hl, bc                                    ; $442A: $09
    nop                                           ; $442B: $00
    jr nz, jr_023_43D9                            ; $442C: $20 $AB

    ld d, b                                       ; $442E: $50
    ld b, e                                       ; $442F: $43
    ld de, $C801                                  ; $4430: $11 $01 $C8
    and e                                         ; $4433: $A3
    dec b                                         ; $4434: $05
    nop                                           ; $4435: $00
    inc hl                                        ; $4436: $23
    dec a                                         ; $4437: $3D
    ld b, h                                       ; $4438: $44
    ld b, l                                       ; $4439: $45
    inc hl                                        ; $443A: $23
    dec hl                                        ; $443B: $2B
    ld b, [hl]                                    ; $443C: $46
    and d                                         ; $443D: $A2
    daa                                           ; $443E: $27
    and c                                         ; $443F: $A1
    inc b                                         ; $4440: $04
    ld [hl+], a                                   ; $4441: $22
    inc b                                         ; $4442: $04
    ld b, b                                       ; $4443: $40
    cp [hl]                                       ; $4444: $BE
    pop de                                        ; $4445: $D1
    sub $68                                       ; $4446: $D6 $68
    dec de                                        ; $4448: $1B

jr_023_4449:
    ld [hl], e                                    ; $4449: $73
    ld a, b                                       ; $444A: $78
    rlca                                          ; $444B: $07
    ld c, [hl]                                    ; $444C: $4E
    ld a, d                                       ; $444D: $7A
    ld a, a                                       ; $444E: $7F
    ld [hl], b                                    ; $444F: $70
    sub $03                                       ; $4450: $D6 $03
    inc b                                         ; $4452: $04
    ld [hl], b                                    ; $4453: $70
    sub $22                                       ; $4454: $D6 $22
    db $10                                        ; $4456: $10
    ld b, l                                       ; $4457: $45
    inc hl                                        ; $4458: $23
    dec de                                        ; $4459: $1B
    ld b, [hl]                                    ; $445A: $46
    ld b, h                                       ; $445B: $44
    ld [hl], l                                    ; $445C: $75
    ld b, h                                       ; $445D: $44
    rlca                                          ; $445E: $07
    nop                                           ; $445F: $00
    ld l, e                                       ; $4460: $6B
    ld c, d                                       ; $4461: $4A
    add hl, bc                                    ; $4462: $09
    nop                                           ; $4463: $00
    jr nz, jr_023_4411                            ; $4464: $20 $AB

    ld d, b                                       ; $4466: $50
    ld b, e                                       ; $4467: $43
    ld de, $C801                                  ; $4468: $11 $01 $C8
    and e                                         ; $446B: $A3
    dec b                                         ; $446C: $05
    nop                                           ; $446D: $00
    inc hl                                        ; $446E: $23
    ld [hl], l                                    ; $446F: $75
    ld b, h                                       ; $4470: $44
    ld b, l                                       ; $4471: $45
    inc hl                                        ; $4472: $23
    dec hl                                        ; $4473: $2B
    ld b, [hl]                                    ; $4474: $46
    and d                                         ; $4475: $A2
    daa                                           ; $4476: $27
    and c                                         ; $4477: $A1
    ld [$0422], sp                                ; $4478: $08 $22 $04
    ld b, b                                       ; $447B: $40
    cp [hl]                                       ; $447C: $BE
    ret                                           ; $447D: $C9


    sub $68                                       ; $447E: $D6 $68
    dec de                                        ; $4480: $1B

jr_023_4481:
    ld [hl], e                                    ; $4481: $73
    ld a, b                                       ; $4482: $78
    rlca                                          ; $4483: $07
    ld c, [hl]                                    ; $4484: $4E
    ld a, d                                       ; $4485: $7A
    ld a, a                                       ; $4486: $7F
    ld l, b                                       ; $4487: $68
    sub $03                                       ; $4488: $D6 $03
    inc b                                         ; $448A: $04
    ld l, b                                       ; $448B: $68
    sub $22                                       ; $448C: $D6 $22
    ld [$2345], sp                                ; $448E: $08 $45 $23
    dec de                                        ; $4491: $1B
    ld b, [hl]                                    ; $4492: $46
    ld b, h                                       ; $4493: $44
    xor l                                         ; $4494: $AD
    ld b, h                                       ; $4495: $44
    rlca                                          ; $4496: $07
    nop                                           ; $4497: $00
    ld l, e                                       ; $4498: $6B
    ld c, d                                       ; $4499: $4A
    add hl, bc                                    ; $449A: $09
    nop                                           ; $449B: $00
    jr nz, jr_023_4449                            ; $449C: $20 $AB

    ld d, b                                       ; $449E: $50
    ld b, e                                       ; $449F: $43
    ld de, $C801                                  ; $44A0: $11 $01 $C8
    and e                                         ; $44A3: $A3
    dec b                                         ; $44A4: $05
    nop                                           ; $44A5: $00
    inc hl                                        ; $44A6: $23
    xor l                                         ; $44A7: $AD
    ld b, h                                       ; $44A8: $44
    ld b, l                                       ; $44A9: $45
    inc hl                                        ; $44AA: $23
    dec hl                                        ; $44AB: $2B
    ld b, [hl]                                    ; $44AC: $46
    and d                                         ; $44AD: $A2
    daa                                           ; $44AE: $27
    and c                                         ; $44AF: $A1
    db $10                                        ; $44B0: $10
    ld [hl+], a                                   ; $44B1: $22
    inc b                                         ; $44B2: $04
    ld b, b                                       ; $44B3: $40
    cp [hl]                                       ; $44B4: $BE
    ld d, c                                       ; $44B5: $51
    push de                                       ; $44B6: $D5
    ld l, b                                       ; $44B7: $68
    dec de                                        ; $44B8: $1B

jr_023_44B9:
    ld [hl], e                                    ; $44B9: $73
    ld a, b                                       ; $44BA: $78
    rlca                                          ; $44BB: $07
    ld c, [hl]                                    ; $44BC: $4E
    ld a, d                                       ; $44BD: $7A
    ld a, a                                       ; $44BE: $7F
    ldh a, [$D4]                                  ; $44BF: $F0 $D4
    inc bc                                        ; $44C1: $03
    inc b                                         ; $44C2: $04
    ldh a, [$D4]                                  ; $44C3: $F0 $D4
    ld a, [de]                                    ; $44C5: $1A
    db $10                                        ; $44C6: $10
    ld b, l                                       ; $44C7: $45
    inc hl                                        ; $44C8: $23
    dec de                                        ; $44C9: $1B
    ld b, [hl]                                    ; $44CA: $46
    ld b, h                                       ; $44CB: $44
    push hl                                       ; $44CC: $E5
    ld b, h                                       ; $44CD: $44
    rlca                                          ; $44CE: $07
    nop                                           ; $44CF: $00
    ld l, e                                       ; $44D0: $6B
    ld c, d                                       ; $44D1: $4A
    add hl, bc                                    ; $44D2: $09
    nop                                           ; $44D3: $00
    jr nz, jr_023_4481                            ; $44D4: $20 $AB

    ld d, b                                       ; $44D6: $50
    ld b, e                                       ; $44D7: $43
    ld de, $C801                                  ; $44D8: $11 $01 $C8
    and e                                         ; $44DB: $A3
    dec b                                         ; $44DC: $05
    nop                                           ; $44DD: $00
    inc hl                                        ; $44DE: $23
    push hl                                       ; $44DF: $E5
    ld b, h                                       ; $44E0: $44
    ld b, l                                       ; $44E1: $45
    inc hl                                        ; $44E2: $23
    dec hl                                        ; $44E3: $2B
    ld b, [hl]                                    ; $44E4: $46
    and d                                         ; $44E5: $A2
    daa                                           ; $44E6: $27
    and c                                         ; $44E7: $A1
    jr nz, jr_023_450C                            ; $44E8: $20 $22

    inc b                                         ; $44EA: $04
    ld b, b                                       ; $44EB: $40
    cp [hl]                                       ; $44EC: $BE
    ld e, e                                       ; $44ED: $5B
    push de                                       ; $44EE: $D5
    ld l, b                                       ; $44EF: $68
    dec de                                        ; $44F0: $1B

jr_023_44F1:
    ld [hl], e                                    ; $44F1: $73
    ld a, b                                       ; $44F2: $78
    rlca                                          ; $44F3: $07
    ld c, [hl]                                    ; $44F4: $4E
    ld a, d                                       ; $44F5: $7A
    ld a, a                                       ; $44F6: $7F
    ld a, [$03D4]                                 ; $44F7: $FA $D4 $03
    inc b                                         ; $44FA: $04
    ld a, [$1AD4]                                 ; $44FB: $FA $D4 $1A
    ld a, [de]                                    ; $44FE: $1A
    ld b, l                                       ; $44FF: $45
    inc hl                                        ; $4500: $23
    dec de                                        ; $4501: $1B
    ld b, [hl]                                    ; $4502: $46
    ld b, h                                       ; $4503: $44
    dec e                                         ; $4504: $1D
    ld b, l                                       ; $4505: $45
    rlca                                          ; $4506: $07
    nop                                           ; $4507: $00
    ld l, e                                       ; $4508: $6B
    ld c, d                                       ; $4509: $4A
    add hl, bc                                    ; $450A: $09
    nop                                           ; $450B: $00

jr_023_450C:
    jr nz, jr_023_44B9                            ; $450C: $20 $AB

    ld d, b                                       ; $450E: $50
    ld b, e                                       ; $450F: $43
    ld de, $C801                                  ; $4510: $11 $01 $C8
    and e                                         ; $4513: $A3
    dec b                                         ; $4514: $05
    nop                                           ; $4515: $00
    inc hl                                        ; $4516: $23
    dec e                                         ; $4517: $1D
    ld b, l                                       ; $4518: $45
    ld b, l                                       ; $4519: $45
    inc hl                                        ; $451A: $23
    dec hl                                        ; $451B: $2B
    ld b, [hl]                                    ; $451C: $46
    and d                                         ; $451D: $A2
    daa                                           ; $451E: $27
    and c                                         ; $451F: $A1
    ld b, b                                       ; $4520: $40
    ld [hl+], a                                   ; $4521: $22
    inc b                                         ; $4522: $04
    ld b, b                                       ; $4523: $40
    cp [hl]                                       ; $4524: $BE
    push de                                       ; $4525: $D5
    call nc, $1B68                                ; $4526: $D4 $68 $1B

jr_023_4529:
    ld [hl], e                                    ; $4529: $73
    ld a, b                                       ; $452A: $78
    rlca                                          ; $452B: $07
    ld c, [hl]                                    ; $452C: $4E
    ld a, d                                       ; $452D: $7A
    ld a, a                                       ; $452E: $7F
    ld [hl], h                                    ; $452F: $74
    call nc, $0403                                ; $4530: $D4 $03 $04
    ld [hl], h                                    ; $4533: $74
    call nc, $2417                                ; $4534: $D4 $17 $24
    ld b, l                                       ; $4537: $45
    inc hl                                        ; $4538: $23
    dec de                                        ; $4539: $1B
    ld b, [hl]                                    ; $453A: $46
    ld b, h                                       ; $453B: $44
    ld d, l                                       ; $453C: $55
    ld b, l                                       ; $453D: $45
    rlca                                          ; $453E: $07
    nop                                           ; $453F: $00
    ld l, e                                       ; $4540: $6B
    ld c, d                                       ; $4541: $4A
    add hl, bc                                    ; $4542: $09
    nop                                           ; $4543: $00
    jr nz, jr_023_44F1                            ; $4544: $20 $AB

    ld d, b                                       ; $4546: $50
    ld b, e                                       ; $4547: $43
    ld de, $C801                                  ; $4548: $11 $01 $C8
    and e                                         ; $454B: $A3
    dec b                                         ; $454C: $05
    nop                                           ; $454D: $00
    inc hl                                        ; $454E: $23
    ld d, l                                       ; $454F: $55
    ld b, l                                       ; $4550: $45
    ld b, l                                       ; $4551: $45
    inc hl                                        ; $4552: $23
    dec hl                                        ; $4553: $2B
    ld b, [hl]                                    ; $4554: $46
    and d                                         ; $4555: $A2
    daa                                           ; $4556: $27
    and c                                         ; $4557: $A1
    add b                                         ; $4558: $80
    ld [hl+], a                                   ; $4559: $22
    inc b                                         ; $455A: $04
    ld b, b                                       ; $455B: $40
    cp [hl]                                       ; $455C: $BE
    add l                                         ; $455D: $85
    db $D3                                        ; $455E: $D3
    ld l, b                                       ; $455F: $68
    dec de                                        ; $4560: $1B

jr_023_4561:
    ld [hl], e                                    ; $4561: $73
    ld a, b                                       ; $4562: $78
    rlca                                          ; $4563: $07
    ld c, [hl]                                    ; $4564: $4E
    ld a, d                                       ; $4565: $7A
    ld a, a                                       ; $4566: $7F
    inc h                                         ; $4567: $24
    db $D3                                        ; $4568: $D3

jr_023_4569:
    inc bc                                        ; $4569: $03
    inc b                                         ; $456A: $04
    inc h                                         ; $456B: $24
    db $D3                                        ; $456C: $D3
    db $10                                        ; $456D: $10
    inc h                                         ; $456E: $24
    ld b, l                                       ; $456F: $45
    inc hl                                        ; $4570: $23
    dec de                                        ; $4571: $1B
    ld b, [hl]                                    ; $4572: $46
    ld b, h                                       ; $4573: $44
    adc l                                         ; $4574: $8D
    ld b, l                                       ; $4575: $45
    rlca                                          ; $4576: $07
    nop                                           ; $4577: $00
    ld l, e                                       ; $4578: $6B
    ld c, d                                       ; $4579: $4A
    add hl, bc                                    ; $457A: $09
    nop                                           ; $457B: $00
    jr nz, jr_023_4529                            ; $457C: $20 $AB

    ld d, b                                       ; $457E: $50
    ld b, e                                       ; $457F: $43
    ld de, $C801                                  ; $4580: $11 $01 $C8
    and e                                         ; $4583: $A3
    dec b                                         ; $4584: $05
    nop                                           ; $4585: $00
    inc hl                                        ; $4586: $23
    adc l                                         ; $4587: $8D
    ld b, l                                       ; $4588: $45
    ld b, l                                       ; $4589: $45
    inc hl                                        ; $458A: $23
    dec hl                                        ; $458B: $2B
    ld b, [hl]                                    ; $458C: $46
    and d                                         ; $458D: $A2
    jr z, @-$5D                                   ; $458E: $28 $A1

    ld bc, $0422                                  ; $4590: $01 $22 $04
    ld b, b                                       ; $4593: $40
    cp [hl]                                       ; $4594: $BE
    rla                                           ; $4595: $17
    pop de                                        ; $4596: $D1
    ld l, b                                       ; $4597: $68
    dec de                                        ; $4598: $1B

jr_023_4599:
    ld [hl], e                                    ; $4599: $73
    ld a, b                                       ; $459A: $78
    rlca                                          ; $459B: $07
    ld c, [hl]                                    ; $459C: $4E
    ld a, d                                       ; $459D: $7A
    ld a, a                                       ; $459E: $7F
    or [hl]                                       ; $459F: $B6
    ret nc                                        ; $45A0: $D0

jr_023_45A1:
    inc bc                                        ; $45A1: $03
    inc b                                         ; $45A2: $04
    or [hl]                                       ; $45A3: $B6
    ret nc                                        ; $45A4: $D0

    inc bc                                        ; $45A5: $03
    ld h, $45                                     ; $45A6: $26 $45
    inc hl                                        ; $45A8: $23
    dec de                                        ; $45A9: $1B
    ld b, [hl]                                    ; $45AA: $46
    ld b, h                                       ; $45AB: $44
    push bc                                       ; $45AC: $C5
    ld b, l                                       ; $45AD: $45
    rlca                                          ; $45AE: $07
    nop                                           ; $45AF: $00
    ld l, e                                       ; $45B0: $6B
    ld c, d                                       ; $45B1: $4A
    add hl, bc                                    ; $45B2: $09
    nop                                           ; $45B3: $00
    jr nz, jr_023_4561                            ; $45B4: $20 $AB

    ld d, b                                       ; $45B6: $50
    ld b, e                                       ; $45B7: $43
    ld de, $C801                                  ; $45B8: $11 $01 $C8
    and e                                         ; $45BB: $A3
    dec b                                         ; $45BC: $05
    nop                                           ; $45BD: $00
    inc hl                                        ; $45BE: $23
    push bc                                       ; $45BF: $C5
    ld b, l                                       ; $45C0: $45
    ld b, l                                       ; $45C1: $45
    rra                                           ; $45C2: $1F
    adc e                                         ; $45C3: $8B
    ld h, [hl]                                    ; $45C4: $66
    and d                                         ; $45C5: $A2
    jr z, jr_023_4569                             ; $45C6: $28 $A1

    ld [bc], a                                    ; $45C8: $02
    ld [hl+], a                                   ; $45C9: $22
    inc b                                         ; $45CA: $04
    ld b, b                                       ; $45CB: $40
    cp [hl]                                       ; $45CC: $BE
    ld sp, $68D4                                  ; $45CD: $31 $D4 $68
    dec de                                        ; $45D0: $1B
    ld [hl], e                                    ; $45D1: $73
    ld a, b                                       ; $45D2: $78
    rlca                                          ; $45D3: $07
    ld c, [hl]                                    ; $45D4: $4E
    ld a, d                                       ; $45D5: $7A
    ld a, a                                       ; $45D6: $7F
    ret nc                                        ; $45D7: $D0

    db $D3                                        ; $45D8: $D3
    inc bc                                        ; $45D9: $03
    inc b                                         ; $45DA: $04
    ret nc                                        ; $45DB: $D0

    db $D3                                        ; $45DC: $D3
    inc d                                         ; $45DD: $14
    db $10                                        ; $45DE: $10
    ld b, l                                       ; $45DF: $45
    inc hl                                        ; $45E0: $23

jr_023_45E1:
    dec de                                        ; $45E1: $1B
    ld b, [hl]                                    ; $45E2: $46
    ld b, h                                       ; $45E3: $44
    db $FD                                        ; $45E4: $FD
    ld b, l                                       ; $45E5: $45
    rlca                                          ; $45E6: $07
    nop                                           ; $45E7: $00
    ld l, e                                       ; $45E8: $6B
    ld c, d                                       ; $45E9: $4A
    add hl, bc                                    ; $45EA: $09
    nop                                           ; $45EB: $00
    jr nz, jr_023_4599                            ; $45EC: $20 $AB

    ld d, b                                       ; $45EE: $50
    ld b, e                                       ; $45EF: $43
    ld de, $C801                                  ; $45F0: $11 $01 $C8
    and e                                         ; $45F3: $A3
    dec b                                         ; $45F4: $05
    nop                                           ; $45F5: $00
    inc hl                                        ; $45F6: $23
    db $FD                                        ; $45F7: $FD
    ld b, l                                       ; $45F8: $45
    ld b, l                                       ; $45F9: $45
    inc hl                                        ; $45FA: $23
    dec hl                                        ; $45FB: $2B
    ld b, [hl]                                    ; $45FC: $46
    and d                                         ; $45FD: $A2
    jr z, jr_023_45A1                             ; $45FE: $28 $A1

    inc b                                         ; $4600: $04
    ld [hl+], a                                   ; $4601: $22
    inc b                                         ; $4602: $04
    ld b, b                                       ; $4603: $40
    cp [hl]                                       ; $4604: $BE
    add hl, hl                                    ; $4605: $29
    call nc, $1B68                                ; $4606: $D4 $68 $1B
    ld [hl], e                                    ; $4609: $73
    ld a, b                                       ; $460A: $78
    rlca                                          ; $460B: $07
    ld c, [hl]                                    ; $460C: $4E
    ld a, d                                       ; $460D: $7A
    ld a, a                                       ; $460E: $7F
    ret z                                         ; $460F: $C8

    db $D3                                        ; $4610: $D3
    inc bc                                        ; $4611: $03
    inc b                                         ; $4612: $04
    ret z                                         ; $4613: $C8

    db $D3                                        ; $4614: $D3
    inc d                                         ; $4615: $14
    ld [$2345], sp                                ; $4616: $08 $45 $23
    dec de                                        ; $4619: $1B
    ld b, [hl]                                    ; $461A: $46
    ld b, h                                       ; $461B: $44
    daa                                           ; $461C: $27
    ld b, [hl]                                    ; $461D: $46
    and [hl]                                      ; $461E: $A6
    ret z                                         ; $461F: $C8

    and e                                         ; $4620: $A3
    inc c                                         ; $4621: $0C
    ld bc, $A3C8                                  ; $4622: $01 $C8 $A3
    dec b                                         ; $4625: $05
    ld bc, $2345                                  ; $4626: $01 $45 $23
    dec hl                                        ; $4629: $2B
    ld b, [hl]                                    ; $462A: $46
    ld b, h                                       ; $462B: $44
    scf                                           ; $462C: $37
    ld b, [hl]                                    ; $462D: $46
    rlca                                          ; $462E: $07
    nop                                           ; $462F: $00
    add c                                         ; $4630: $81
    ld e, l                                       ; $4631: $5D
    add hl, bc                                    ; $4632: $09
    nop                                           ; $4633: $00
    jr nz, jr_023_45E1                            ; $4634: $20 $AB

    ld d, b                                       ; $4636: $50
    ld e, d                                       ; $4637: $5A
    ld [hl+], a                                   ; $4638: $22
    inc b                                         ; $4639: $04
    ld b, b                                       ; $463A: $40
    ld b, d                                       ; $463B: $42
    sub e                                         ; $463C: $93
    ld h, l                                       ; $463D: $65
    ld h, [hl]                                    ; $463E: $66
    ld d, d                                       ; $463F: $52
    ld c, a                                       ; $4640: $4F
    ld h, h                                       ; $4641: $64
    ret z                                         ; $4642: $C8

    ld d, a                                       ; $4643: $57
    ld l, c                                       ; $4644: $69
    pop de                                        ; $4645: $D1
    ld d, a                                       ; $4646: $57
    ld h, [hl]                                    ; $4647: $66
    ret nz                                        ; $4648: $C0

    ld e, h                                       ; $4649: $5C
    ld hl, $0005                                  ; $464A: $21 $05 $00
    add c                                         ; $464D: $81
    ld e, l                                       ; $464E: $5D
    dec b                                         ; $464F: $05
    dec b                                         ; $4650: $05

jr_023_4651:
    or h                                          ; $4651: $B4
    ret nc                                        ; $4652: $D0

    nop                                           ; $4653: $00
    jr nz, jr_023_4651                            ; $4654: $20 $FB

    ld d, b                                       ; $4656: $50
    ld [hl+], a                                   ; $4657: $22
    dec b                                         ; $4658: $05
    ld b, b                                       ; $4659: $40
    dec bc                                        ; $465A: $0B
    nop                                           ; $465B: $00
    ld [hl-], a                                   ; $465C: $32
    inc hl                                        ; $465D: $23
    ld [hl], b                                    ; $465E: $70
    ld b, b                                       ; $465F: $40
    adc l                                         ; $4660: $8D
    ld b, c                                       ; $4661: $41
    ld sp, $3C23                                  ; $4662: $31 $23 $3C
    ld b, [hl]                                    ; $4665: $46
    ld [hl+], a                                   ; $4666: $22
    adc $40                                       ; $4667: $CE $40
    nop                                           ; $4669: $00
    add d                                         ; $466A: $82
    rra                                           ; $466B: $1F
    ld [de], a                                    ; $466C: $12
    sub h                                         ; $466D: $94
    ld b, d                                       ; $466E: $42
    ld b, l                                       ; $466F: $45
    inc de                                        ; $4670: $13
    db $EC                                        ; $4671: $EC
    ld h, c                                       ; $4672: $61
    ld b, l                                       ; $4673: $45
    inc de                                        ; $4674: $13
    add c                                         ; $4675: $81
    ld h, d                                       ; $4676: $62
    ld b, l                                       ; $4677: $45
    inc de                                        ; $4678: $13
    ld d, $63                                     ; $4679: $16 $63
    ld b, l                                       ; $467B: $45
    inc de                                        ; $467C: $13
    xor e                                         ; $467D: $AB
    ld h, e                                       ; $467E: $63
    ld [bc], a                                    ; $467F: $02
    rla                                           ; $4680: $17
    nop                                           ; $4681: $00
    rrca                                          ; $4682: $0F
    ld c, $45                                     ; $4683: $0E $45
    inc hl                                        ; $4685: $23
    ld a, $43                                     ; $4686: $3E $43
    ld bc, $170A                                  ; $4688: $01 $0A $17
    ld b, l                                       ; $468B: $45
    inc hl                                        ; $468C: $23
    rst $30                                       ; $468D: $F7
    ld b, a                                       ; $468E: $47
    ld [bc], a                                    ; $468F: $02
    nop                                           ; $4690: $00
    rla                                           ; $4691: $17
    rrca                                          ; $4692: $0F
    inc b                                         ; $4693: $04
    ld b, l                                       ; $4694: $45
    inc hl                                        ; $4695: $23
    ld [bc], a                                    ; $4696: $02
    ld c, h                                       ; $4697: $4C
    and h                                         ; $4698: $A4
    ld b, c                                       ; $4699: $41
    and e                                         ; $469A: $A3
    jr nz, jr_023_469D                            ; $469B: $20 $00

jr_023_469D:
    ld hl, $D06F                                  ; $469D: $21 $6F $D0
    sub e                                         ; $46A0: $93
    add l                                         ; $46A1: $85
    rrca                                          ; $46A2: $0F
    ld h, l                                       ; $46A3: $65
    ld [hl], l                                    ; $46A4: $75
    ld d, d                                       ; $46A5: $52
    ld c, a                                       ; $46A6: $4F
    ld h, h                                       ; $46A7: $64
    ld a, [hl+]                                   ; $46A8: $2A
    ld e, b                                       ; $46A9: $58
    ld l, c                                       ; $46AA: $69
    ld b, a                                       ; $46AB: $47
    ld e, b                                       ; $46AC: $58
    ld h, [hl]                                    ; $46AD: $66
    ret nz                                        ; $46AE: $C0

    ld e, h                                       ; $46AF: $5C
    ld hl, $0005                                  ; $46B0: $21 $05 $00
    add c                                         ; $46B3: $81
    ld e, l                                       ; $46B4: $5D
    dec b                                         ; $46B5: $05
    dec b                                         ; $46B6: $05

jr_023_46B7:
    ld a, l                                       ; $46B7: $7D
    ret nc                                        ; $46B8: $D0

    nop                                           ; $46B9: $00
    jr nz, jr_023_46B7                            ; $46BA: $20 $FB

    ld d, b                                       ; $46BC: $50
    ld [hl+], a                                   ; $46BD: $22
    dec b                                         ; $46BE: $05
    ld b, b                                       ; $46BF: $40
    dec bc                                        ; $46C0: $0B
    nop                                           ; $46C1: $00
    ld [hl-], a                                   ; $46C2: $32
    inc hl                                        ; $46C3: $23
    ld [hl], b                                    ; $46C4: $70
    ld b, b                                       ; $46C5: $40
    adc l                                         ; $46C6: $8D
    ld b, c                                       ; $46C7: $41
    ld sp, $A023                                  ; $46C8: $31 $23 $A0

jr_023_46CB:
    ld b, [hl]                                    ; $46CB: $46
    ld [hl+], a                                   ; $46CC: $22
    adc $40                                       ; $46CD: $CE $40
    nop                                           ; $46CF: $00
    add d                                         ; $46D0: $82
    rra                                           ; $46D1: $1F
    ld [de], a                                    ; $46D2: $12
    ld c, e                                       ; $46D3: $4B
    ld bc, $A224                                  ; $46D4: $01 $24 $A2
    inc de                                        ; $46D7: $13
    ld bc, $6700                                  ; $46D8: $01 $00 $67
    ld h, e                                       ; $46DB: $63
    inc de                                        ; $46DC: $13
    ld [bc], a                                    ; $46DD: $02
    nop                                           ; $46DE: $00
    jp nc, $1362                                  ; $46DF: $D2 $62 $13

    inc bc                                        ; $46E2: $03
    nop                                           ; $46E3: $00
    dec a                                         ; $46E4: $3D
    ld h, d                                       ; $46E5: $62
    inc de                                        ; $46E6: $13
    inc b                                         ; $46E7: $04
    nop                                           ; $46E8: $00
    db $FC                                        ; $46E9: $FC
    ld h, e                                       ; $46EA: $63
    rst $38                                       ; $46EB: $FF
    sub h                                         ; $46EC: $94
    ld b, d                                       ; $46ED: $42
    xor a                                         ; $46EE: $AF
    ld h, $A1                                     ; $46EF: $26 $A1
    ld b, b                                       ; $46F1: $40
    ld b, d                                       ; $46F2: $42
    ld [bc], a                                    ; $46F3: $02
    add hl, bc                                    ; $46F4: $09
    ld [$0017], sp                                ; $46F5: $08 $17 $00
    ld b, l                                       ; $46F8: $45
    inc hl                                        ; $46F9: $23
    and b                                         ; $46FA: $A0
    ld b, [hl]                                    ; $46FB: $46
    ld [bc], a                                    ; $46FC: $02
    nop                                           ; $46FD: $00
    rla                                           ; $46FE: $17
    db $10                                        ; $46FF: $10
    rrca                                          ; $4700: $0F
    ld b, l                                       ; $4701: $45
    inc hl                                        ; $4702: $23
    ld [hl], l                                    ; $4703: $75
    ld c, d                                       ; $4704: $4A
    ld [bc], a                                    ; $4705: $02
    ld b, $0D                                     ; $4706: $06 $0D
    nop                                           ; $4708: $00
    rla                                           ; $4709: $17
    ld b, l                                       ; $470A: $45
    inc hl                                        ; $470B: $23
    ld sp, hl                                     ; $470C: $F9
    ld c, c                                       ; $470D: $49
    rlca                                          ; $470E: $07
    nop                                           ; $470F: $00
    ld l, e                                       ; $4710: $6B
    ld c, d                                       ; $4711: $4A
    add hl, bc                                    ; $4712: $09
    nop                                           ; $4713: $00
    jr nz, jr_023_46CB                            ; $4714: $20 $B5

    ld d, b                                       ; $4716: $50
    and b                                         ; $4717: $A0
    dec h                                         ; $4718: $25
    and c                                         ; $4719: $A1
    add b                                         ; $471A: $80
    inc hl                                        ; $471B: $23
    ld l, b                                       ; $471C: $68
    ld b, a                                       ; $471D: $47
    ret z                                         ; $471E: $C8

    cp b                                          ; $471F: $B8
    dec bc                                        ; $4720: $0B
    pop de                                        ; $4721: $D1
    ld l, b                                       ; $4722: $68
    jr jr_023_477C                                ; $4723: $18 $57

    ld [hl], a                                    ; $4725: $77
    ldh a, [$60]                                  ; $4726: $F0 $60
    ld a, c                                       ; $4728: $79
    ld e, d                                       ; $4729: $5A
    rra                                           ; $472A: $1F
    ld [hl], c                                    ; $472B: $71
    ld h, d                                       ; $472C: $62
    xor [hl]                                      ; $472D: $AE
    ld h, $A1                                     ; $472E: $26 $A1
    cp a                                          ; $4730: $BF
    inc b                                         ; $4731: $04
    ld [hl+], a                                   ; $4732: $22
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    push hl                                       ; $4736: $E5
    inc b                                         ; $4737: $04
    inc hl                                        ; $4738: $23
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    push hl                                       ; $473C: $E5
    inc b                                         ; $473D: $04
    inc h                                         ; $473E: $24
    nop                                           ; $473F: $00
    nop                                           ; $4740: $00

Jump_023_4741:
    nop                                           ; $4741: $00
    push hl                                       ; $4742: $E5
    inc b                                         ; $4743: $04
    dec h                                         ; $4744: $25
    nop                                           ; $4745: $00
    nop                                           ; $4746: $00
    nop                                           ; $4747: $00
    push hl                                       ; $4748: $E5
    ld a, a                                       ; $4749: $7F
    db $F4                                        ; $474A: $F4
    ret nc                                        ; $474B: $D0

    rlca                                          ; $474C: $07
    dec bc                                        ; $474D: $0B
    db $F4                                        ; $474E: $F4
    ret nc                                        ; $474F: $D0

    ld a, [bc]                                    ; $4750: $0A
    inc b                                         ; $4751: $04
    ld a, a                                       ; $4752: $7F
    ei                                            ; $4753: $FB
    ret nc                                        ; $4754: $D0

    dec bc                                        ; $4755: $0B
    dec bc                                        ; $4756: $0B
    ei                                            ; $4757: $FB
    ret nc                                        ; $4758: $D0

    ld a, [bc]                                    ; $4759: $0A
    dec bc                                        ; $475A: $0B
    ld a, a                                       ; $475B: $7F
    or l                                          ; $475C: $B5
    ret nc                                        ; $475D: $D0

    dec b                                         ; $475E: $05
    inc bc                                        ; $475F: $03
    or l                                          ; $4760: $B5
    ret nc                                        ; $4761: $D0

    rlca                                          ; $4762: $07
    dec c                                         ; $4763: $0D
    ld b, l                                       ; $4764: $45
    rra                                           ; $4765: $1F
    adc e                                         ; $4766: $8B
    ld h, [hl]                                    ; $4767: $66
    ld l, b                                       ; $4768: $68
    ld e, h                                       ; $4769: $5C
    ld h, h                                       ; $476A: $64
    ld a, d                                       ; $476B: $7A
    cp $63                                        ; $476C: $FE $63
    ld a, e                                       ; $476E: $7B
    ld e, d                                       ; $476F: $5A
    rra                                           ; $4770: $1F
    ld [hl], c                                    ; $4771: $71
    ld h, d                                       ; $4772: $62
    ld b, e                                       ; $4773: $43
    ld a, [bc]                                    ; $4774: $0A
    nop                                           ; $4775: $00
    ld h, $A1                                     ; $4776: $26 $A1
    ld b, b                                       ; $4778: $40
    inc hl                                        ; $4779: $23
    cp b                                          ; $477A: $B8
    ld b, a                                       ; $477B: $47

jr_023_477C:
    dec b                                         ; $477C: $05
    ld [hl+], a                                   ; $477D: $22
    jp nc, $0A5E                                  ; $477E: $D2 $5E $0A

    dec c                                         ; $4781: $0D
    ld b, d                                       ; $4782: $42
    pop de                                        ; $4783: $D1
    nop                                           ; $4784: $00
    ld [hl+], a                                   ; $4785: $22
    inc b                                         ; $4786: $04
    ld b, b                                       ; $4787: $40
    ld [hl+], a                                   ; $4788: $22
    dec b                                         ; $4789: $05
    ld b, b                                       ; $478A: $40
    dec b                                         ; $478B: $05
    inc hl                                        ; $478C: $23
    jp nc, $0A5E                                  ; $478D: $D2 $5E $0A

    db $10                                        ; $4790: $10
    adc d                                         ; $4791: $8A
    pop de                                        ; $4792: $D1
    nop                                           ; $4793: $00
    ld [hl+], a                                   ; $4794: $22
    inc b                                         ; $4795: $04
    ld b, b                                       ; $4796: $40
    ld [hl+], a                                   ; $4797: $22
    dec b                                         ; $4798: $05
    ld b, b                                       ; $4799: $40
    dec b                                         ; $479A: $05
    inc h                                         ; $479B: $24
    jp nc, $0D5E                                  ; $479C: $D2 $5E $0D

    db $10                                        ; $479F: $10
    adc l                                         ; $47A0: $8D
    pop de                                        ; $47A1: $D1
    nop                                           ; $47A2: $00
    ld [hl+], a                                   ; $47A3: $22
    inc b                                         ; $47A4: $04
    ld b, b                                       ; $47A5: $40
    ld [hl+], a                                   ; $47A6: $22
    dec b                                         ; $47A7: $05
    ld b, b                                       ; $47A8: $40
    dec b                                         ; $47A9: $05
    dec h                                         ; $47AA: $25
    jp nc, $0D5E                                  ; $47AB: $D2 $5E $0D

    ld [de], a                                    ; $47AE: $12
    cp l                                          ; $47AF: $BD
    pop de                                        ; $47B0: $D1
    nop                                           ; $47B1: $00
    ld [hl+], a                                   ; $47B2: $22
    inc b                                         ; $47B3: $04
    ld b, b                                       ; $47B4: $40
    ld [hl+], a                                   ; $47B5: $22
    dec b                                         ; $47B6: $05
    ld b, b                                       ; $47B7: $40
    inc b                                         ; $47B8: $04
    ld [hl+], a                                   ; $47B9: $22
    nop                                           ; $47BA: $00
    nop                                           ; $47BB: $00
    add hl, bc                                    ; $47BC: $09
    push hl                                       ; $47BD: $E5
    inc b                                         ; $47BE: $04
    inc hl                                        ; $47BF: $23
    nop                                           ; $47C0: $00
    nop                                           ; $47C1: $00
    add hl, bc                                    ; $47C2: $09
    push hl                                       ; $47C3: $E5
    inc b                                         ; $47C4: $04
    inc h                                         ; $47C5: $24
    nop                                           ; $47C6: $00
    nop                                           ; $47C7: $00
    add hl, bc                                    ; $47C8: $09
    push hl                                       ; $47C9: $E5
    inc b                                         ; $47CA: $04
    dec h                                         ; $47CB: $25
    nop                                           ; $47CC: $00
    nop                                           ; $47CD: $00
    add hl, bc                                    ; $47CE: $09
    push hl                                       ; $47CF: $E5
    ld a, a                                       ; $47D0: $7F
    db $F4                                        ; $47D1: $F4
    ret nc                                        ; $47D2: $D0

    rlca                                          ; $47D3: $07
    dec bc                                        ; $47D4: $0B
    db $F4                                        ; $47D5: $F4
    ret nc                                        ; $47D6: $D0

    ld a, [bc]                                    ; $47D7: $0A
    inc b                                         ; $47D8: $04
    ld a, a                                       ; $47D9: $7F
    ei                                            ; $47DA: $FB
    ret nc                                        ; $47DB: $D0

    dec bc                                        ; $47DC: $0B
    dec bc                                        ; $47DD: $0B
    ei                                            ; $47DE: $FB
    ret nc                                        ; $47DF: $D0

    ld a, [bc]                                    ; $47E0: $0A
    dec bc                                        ; $47E1: $0B
    ld a, a                                       ; $47E2: $7F
    or l                                          ; $47E3: $B5
    ret nc                                        ; $47E4: $D0

    dec b                                         ; $47E5: $05
    inc bc                                        ; $47E6: $03
    or l                                          ; $47E7: $B5
    ret nc                                        ; $47E8: $D0

    rlca                                          ; $47E9: $07
    dec c                                         ; $47EA: $0D
    ld b, l                                       ; $47EB: $45
    rra                                           ; $47EC: $1F
    adc e                                         ; $47ED: $8B
    ld h, [hl]                                    ; $47EE: $66
    and h                                         ; $47EF: $A4
    ld b, c                                       ; $47F0: $41
    and e                                         ; $47F1: $A3
    stop                                          ; $47F2: $10 $00
    ld hl, $D099                                  ; $47F4: $21 $99 $D0
    sub e                                         ; $47F7: $93
    dec b                                         ; $47F8: $05
    ld [hl+], a                                   ; $47F9: $22
    jp nc, $0C5E                                  ; $47FA: $D2 $5E $0C

    rrca                                          ; $47FD: $0F
    ld [hl], h                                    ; $47FE: $74
    pop de                                        ; $47FF: $D1
    nop                                           ; $4800: $00
    ld [hl+], a                                   ; $4801: $22
    inc b                                         ; $4802: $04
    ld b, b                                       ; $4803: $40
    ld [hl+], a                                   ; $4804: $22
    dec b                                         ; $4805: $05
    ld b, b                                       ; $4806: $40
    dec b                                         ; $4807: $05
    inc hl                                        ; $4808: $23
    jp nc, $0E5E                                  ; $4809: $D2 $5E $0E

    rrca                                          ; $480C: $0F
    halt                                          ; $480D: $76
    pop de                                        ; $480E: $D1
    nop                                           ; $480F: $00
    ld [hl+], a                                   ; $4810: $22
    inc b                                         ; $4811: $04
    ld b, b                                       ; $4812: $40
    ld [hl+], a                                   ; $4813: $22
    dec b                                         ; $4814: $05
    ld b, b                                       ; $4815: $40
    dec b                                         ; $4816: $05
    inc h                                         ; $4817: $24
    jp nc, $105E                                  ; $4818: $D2 $5E $10

    rrca                                          ; $481B: $0F
    ld a, b                                       ; $481C: $78
    pop de                                        ; $481D: $D1
    nop                                           ; $481E: $00
    ld [hl+], a                                   ; $481F: $22
    inc b                                         ; $4820: $04
    ld b, b                                       ; $4821: $40
    ld [hl+], a                                   ; $4822: $22
    dec b                                         ; $4823: $05
    ld b, b                                       ; $4824: $40
    dec b                                         ; $4825: $05
    dec h                                         ; $4826: $25
    jp nc, $125E                                  ; $4827: $D2 $5E $12

    rrca                                          ; $482A: $0F
    ld a, d                                       ; $482B: $7A
    pop de                                        ; $482C: $D1
    nop                                           ; $482D: $00
    ld [hl+], a                                   ; $482E: $22
    inc b                                         ; $482F: $04
    ld b, b                                       ; $4830: $40
    ld [hl+], a                                   ; $4831: $22
    dec b                                         ; $4832: $05
    ld b, b                                       ; $4833: $40
    ld h, l                                       ; $4834: $65
    add h                                         ; $4835: $84
    ld d, d                                       ; $4836: $52
    ld c, a                                       ; $4837: $4F
    ld h, h                                       ; $4838: $64
    ld c, h                                       ; $4839: $4C
    ld e, b                                       ; $483A: $58
    ld l, c                                       ; $483B: $69
    ld e, l                                       ; $483C: $5D
    ld e, b                                       ; $483D: $58
    ld l, d                                       ; $483E: $6A
    ld a, a                                       ; $483F: $7F
    ld h, d                                       ; $4840: $62
    ld a, h                                       ; $4841: $7C
    inc a                                         ; $4842: $3C
    ld b, a                                       ; $4843: $47
    ld a, h                                       ; $4844: $7C
    ld h, [hl]                                    ; $4845: $66
    ret nz                                        ; $4846: $C0

    ld e, h                                       ; $4847: $5C
    ld hl, $0005                                  ; $4848: $21 $05 $00
    add c                                         ; $484B: $81
    ld e, l                                       ; $484C: $5D
    dec b                                         ; $484D: $05
    dec b                                         ; $484E: $05

jr_023_484F:
    ld a, l                                       ; $484F: $7D
    ret nc                                        ; $4850: $D0

    nop                                           ; $4851: $00
    jr nz, jr_023_484F                            ; $4852: $20 $FB

    ld d, b                                       ; $4854: $50
    ld [hl+], a                                   ; $4855: $22
    dec b                                         ; $4856: $05
    ld b, b                                       ; $4857: $40
    dec bc                                        ; $4858: $0B
    nop                                           ; $4859: $00
    ld [hl-], a                                   ; $485A: $32
    inc hl                                        ; $485B: $23
    ld [hl], b                                    ; $485C: $70
    ld b, b                                       ; $485D: $40
    adc l                                         ; $485E: $8D
    ld b, c                                       ; $485F: $41
    ld sp, $3E23                                  ; $4860: $31 $23 $3E
    ld c, b                                       ; $4863: $48
    ld [hl+], a                                   ; $4864: $22
    adc $40                                       ; $4865: $CE $40
    nop                                           ; $4867: $00
    add d                                         ; $4868: $82
    dec bc                                        ; $4869: $0B
    ld [hl+], a                                   ; $486A: $22
    dec bc                                        ; $486B: $0B
    inc hl                                        ; $486C: $23
    dec bc                                        ; $486D: $0B
    inc h                                         ; $486E: $24
    dec bc                                        ; $486F: $0B
    dec h                                         ; $4870: $25
    sub h                                         ; $4871: $94
    rra                                           ; $4872: $1F
    ld [de], a                                    ; $4873: $12
    ld b, d                                       ; $4874: $42
    ld b, l                                       ; $4875: $45
    inc de                                        ; $4876: $13
    db $EC                                        ; $4877: $EC
    ld h, c                                       ; $4878: $61
    ld b, l                                       ; $4879: $45
    inc de                                        ; $487A: $13
    add c                                         ; $487B: $81
    ld h, d                                       ; $487C: $62
    ld b, l                                       ; $487D: $45
    inc de                                        ; $487E: $13
    ld d, $63                                     ; $487F: $16 $63
    ld b, l                                       ; $4881: $45
    inc de                                        ; $4882: $13
    xor e                                         ; $4883: $AB
    ld h, e                                       ; $4884: $63
    ld [bc], a                                    ; $4885: $02
    nop                                           ; $4886: $00
    rla                                           ; $4887: $17
    ld c, $0E                                     ; $4888: $0E $0E
    ld b, l                                       ; $488A: $45
    inc hl                                        ; $488B: $23
    ld a, $43                                     ; $488C: $3E $43
    ld [bc], a                                    ; $488E: $02
    dec bc                                        ; $488F: $0B
    dec bc                                        ; $4890: $0B
    nop                                           ; $4891: $00
    rla                                           ; $4892: $17
    ld b, l                                       ; $4893: $45
    inc hl                                        ; $4894: $23
    ld [hl], l                                    ; $4895: $75
    ld c, c                                       ; $4896: $49
    ld bc, $0400                                  ; $4897: $01 $00 $04
    ld b, l                                       ; $489A: $45
    inc hl                                        ; $489B: $23
    or [hl]                                       ; $489C: $B6
    ld c, e                                       ; $489D: $4B
    and h                                         ; $489E: $A4
    ld b, c                                       ; $489F: $41
    and e                                         ; $48A0: $A3
    ld [$2100], sp                                ; $48A1: $08 $00 $21
    ld b, [hl]                                    ; $48A4: $46
    pop de                                        ; $48A5: $D1
    and h                                         ; $48A6: $A4
    ld b, d                                       ; $48A7: $42
    and e                                         ; $48A8: $A3
    jr nz, jr_023_48AB                            ; $48A9: $20 $00

jr_023_48AB:
    ld [bc], a                                    ; $48AB: $02
    ld l, b                                       ; $48AC: $68
    ret nc                                        ; $48AD: $D0

    sub e                                         ; $48AE: $93
    add l                                         ; $48AF: $85
    rrca                                          ; $48B0: $0F
    ld h, l                                       ; $48B1: $65
    sub e                                         ; $48B2: $93
    ld d, d                                       ; $48B3: $52
    ld c, a                                       ; $48B4: $4F
    ld h, h                                       ; $48B5: $64
    ld h, [hl]                                    ; $48B6: $66
    ld e, b                                       ; $48B7: $58
    ld l, c                                       ; $48B8: $69
    add e                                         ; $48B9: $83
    ld e, b                                       ; $48BA: $58
    ld h, [hl]                                    ; $48BB: $66
    ret nz                                        ; $48BC: $C0

    ld e, h                                       ; $48BD: $5C
    ld hl, $0005                                  ; $48BE: $21 $05 $00
    add c                                         ; $48C1: $81
    ld e, l                                       ; $48C2: $5D
    dec b                                         ; $48C3: $05
    dec b                                         ; $48C4: $05

jr_023_48C5:
    ld a, l                                       ; $48C5: $7D
    ret nc                                        ; $48C6: $D0

    nop                                           ; $48C7: $00
    jr nz, jr_023_48C5                            ; $48C8: $20 $FB

    ld d, b                                       ; $48CA: $50
    ld [hl+], a                                   ; $48CB: $22
    dec b                                         ; $48CC: $05
    ld b, b                                       ; $48CD: $40
    dec bc                                        ; $48CE: $0B
    nop                                           ; $48CF: $00
    ld [hl-], a                                   ; $48D0: $32
    inc hl                                        ; $48D1: $23
    ld [hl], b                                    ; $48D2: $70
    ld b, b                                       ; $48D3: $40

jr_023_48D4:
    adc l                                         ; $48D4: $8D
    ld b, c                                       ; $48D5: $41
    ld sp, $AE23                                  ; $48D6: $31 $23 $AE
    ld c, b                                       ; $48D9: $48
    ld [hl+], a                                   ; $48DA: $22
    adc $40                                       ; $48DB: $CE $40
    nop                                           ; $48DD: $00
    add d                                         ; $48DE: $82
    rra                                           ; $48DF: $1F
    ld [de], a                                    ; $48E0: $12
    ld c, e                                       ; $48E1: $4B
    ld bc, $A224                                  ; $48E2: $01 $24 $A2
    inc de                                        ; $48E5: $13
    ld bc, $6700                                  ; $48E6: $01 $00 $67
    ld h, e                                       ; $48E9: $63
    inc de                                        ; $48EA: $13
    ld [bc], a                                    ; $48EB: $02
    nop                                           ; $48EC: $00
    jp nc, $1362                                  ; $48ED: $D2 $62 $13

    inc bc                                        ; $48F0: $03
    nop                                           ; $48F1: $00
    dec a                                         ; $48F2: $3D
    ld h, d                                       ; $48F3: $62
    inc de                                        ; $48F4: $13
    inc b                                         ; $48F5: $04
    nop                                           ; $48F6: $00
    db $FC                                        ; $48F7: $FC
    ld h, e                                       ; $48F8: $63
    rst $38                                       ; $48F9: $FF
    sub h                                         ; $48FA: $94
    ld b, d                                       ; $48FB: $42
    ld [bc], a                                    ; $48FC: $02
    dec bc                                        ; $48FD: $0B
    dec bc                                        ; $48FE: $0B
    rla                                           ; $48FF: $17
    nop                                           ; $4900: $00
    ld b, l                                       ; $4901: $45
    inc hl                                        ; $4902: $23
    xor [hl]                                      ; $4903: $AE
    ld c, b                                       ; $4904: $48
    ld [bc], a                                    ; $4905: $02
    rla                                           ; $4906: $17
    nop                                           ; $4907: $00
    rrca                                          ; $4908: $0F
    ld c, $45                                     ; $4909: $0E $45
    inc hl                                        ; $490B: $23
    ld [hl], d                                    ; $490C: $72
    ld c, e                                       ; $490D: $4B
    ld [bc], a                                    ; $490E: $02
    inc b                                         ; $490F: $04
    add hl, bc                                    ; $4910: $09
    nop                                           ; $4911: $00
    rla                                           ; $4912: $17
    ld b, l                                       ; $4913: $45
    inc hl                                        ; $4914: $23
    or a                                          ; $4915: $B7
    ld c, c                                       ; $4916: $49
    rlca                                          ; $4917: $07
    nop                                           ; $4918: $00
    ld l, e                                       ; $4919: $6B
    ld c, d                                       ; $491A: $4A
    add hl, bc                                    ; $491B: $09
    nop                                           ; $491C: $00
    jr nz, jr_023_48D4                            ; $491D: $20 $B5

    ld d, b                                       ; $491F: $50
    and b                                         ; $4920: $A0
    ld h, $A1                                     ; $4921: $26 $A1
    ld bc, $4C23                                  ; $4923: $01 $23 $4C
    ld c, c                                       ; $4926: $49
    ret z                                         ; $4927: $C8

    cp b                                          ; $4928: $B8
    and e                                         ; $4929: $A3
    ret nc                                        ; $492A: $D0

    ld l, b                                       ; $492B: $68
    dec h                                         ; $492C: $25
    ld [hl], d                                    ; $492D: $72
    halt                                          ; $492E: $76
    halt                                          ; $492F: $76
    ld a, [hl]                                    ; $4930: $7E
    ld a, c                                       ; $4931: $79
    ld e, d                                       ; $4932: $5A
    rra                                           ; $4933: $1F
    ld [hl], c                                    ; $4934: $71
    ld h, d                                       ; $4935: $62
    ld a, a                                       ; $4936: $7F
    add l                                         ; $4937: $85
    ret nc                                        ; $4938: $D0

    dec b                                         ; $4939: $05
    ld c, $85                                     ; $493A: $0E $85
    ret nc                                        ; $493C: $D0

    dec b                                         ; $493D: $05
    dec c                                         ; $493E: $0D
    ld a, a                                       ; $493F: $7F
    jp c, $0BD0                                   ; $4940: $DA $D0 $0B

    ld a, [bc]                                    ; $4943: $0A
    jp c, $09D0                                   ; $4944: $DA $D0 $09

    ld [bc], a                                    ; $4947: $02
    ld b, l                                       ; $4948: $45
    rra                                           ; $4949: $1F
    adc e                                         ; $494A: $8B
    ld h, [hl]                                    ; $494B: $66
    ld l, b                                       ; $494C: $68
    add l                                         ; $494D: $85
    ld d, a                                       ; $494E: $57
    ld a, d                                       ; $494F: $7A
    add hl, bc                                    ; $4950: $09
    ld e, d                                       ; $4951: $5A
    ld a, e                                       ; $4952: $7B
    ld e, d                                       ; $4953: $5A
    rra                                           ; $4954: $1F
    ld [hl], c                                    ; $4955: $71
    ld h, d                                       ; $4956: $62
    ld a, a                                       ; $4957: $7F
    add l                                         ; $4958: $85
    ret nc                                        ; $4959: $D0

    dec b                                         ; $495A: $05
    ld c, $85                                     ; $495B: $0E $85
    ret nc                                        ; $495D: $D0

    dec b                                         ; $495E: $05
    dec c                                         ; $495F: $0D
    ld a, a                                       ; $4960: $7F
    jp c, $0BD0                                   ; $4961: $DA $D0 $0B

    ld a, [bc]                                    ; $4964: $0A
    jp c, $09D0                                   ; $4965: $DA $D0 $09

    ld [bc], a                                    ; $4968: $02
    ld b, l                                       ; $4969: $45
    rra                                           ; $496A: $1F
    adc e                                         ; $496B: $8B
    ld h, [hl]                                    ; $496C: $66
    and h                                         ; $496D: $A4
    ld b, c                                       ; $496E: $41
    and e                                         ; $496F: $A3
    inc b                                         ; $4970: $04
    nop                                           ; $4971: $00
    ld hl, $D09B                                  ; $4972: $21 $9B $D0
    sub e                                         ; $4975: $93
    ld h, l                                       ; $4976: $65
    and d                                         ; $4977: $A2
    ld d, d                                       ; $4978: $52
    ld c, a                                       ; $4979: $4F
    ld h, h                                       ; $497A: $64
    adc h                                         ; $497B: $8C
    ld e, b                                       ; $497C: $58
    ld l, c                                       ; $497D: $69
    sbc c                                         ; $497E: $99
    ld e, b                                       ; $497F: $58
    ld h, [hl]                                    ; $4980: $66
    ret nz                                        ; $4981: $C0

    ld e, h                                       ; $4982: $5C
    ld hl, $0005                                  ; $4983: $21 $05 $00
    add c                                         ; $4986: $81
    ld e, l                                       ; $4987: $5D
    dec b                                         ; $4988: $05
    dec b                                         ; $4989: $05

jr_023_498A:
    ld a, l                                       ; $498A: $7D
    ret nc                                        ; $498B: $D0

    nop                                           ; $498C: $00
    jr nz, jr_023_498A                            ; $498D: $20 $FB

    ld d, b                                       ; $498F: $50
    ld [hl+], a                                   ; $4990: $22
    dec b                                         ; $4991: $05
    ld b, b                                       ; $4992: $40
    dec bc                                        ; $4993: $0B
    nop                                           ; $4994: $00
    ld [hl-], a                                   ; $4995: $32
    inc hl                                        ; $4996: $23
    ld [hl], b                                    ; $4997: $70
    ld b, b                                       ; $4998: $40
    adc l                                         ; $4999: $8D
    ld b, c                                       ; $499A: $41
    ld sp, $7523                                  ; $499B: $31 $23 $75
    ld c, c                                       ; $499E: $49
    ld [hl+], a                                   ; $499F: $22
    adc $40                                       ; $49A0: $CE $40
    nop                                           ; $49A2: $00
    add d                                         ; $49A3: $82
    rra                                           ; $49A4: $1F
    ld [de], a                                    ; $49A5: $12
    sub h                                         ; $49A6: $94
    ld b, d                                       ; $49A7: $42
    ld bc, $0005                                  ; $49A8: $01 $05 $00
    ld b, l                                       ; $49AB: $45
    inc hl                                        ; $49AC: $23
    ld [hl], l                                    ; $49AD: $75
    ld c, c                                       ; $49AE: $49
    and h                                         ; $49AF: $A4
    ld b, c                                       ; $49B0: $41
    and e                                         ; $49B1: $A3
    ld [bc], a                                    ; $49B2: $02
    nop                                           ; $49B3: $00
    ld hl, $D0A1                                  ; $49B4: $21 $A1 $D0
    sub e                                         ; $49B7: $93
    ld h, l                                       ; $49B8: $65
    or c                                          ; $49B9: $B1
    ld d, d                                       ; $49BA: $52
    ld c, a                                       ; $49BB: $4F
    ld h, h                                       ; $49BC: $64
    and d                                         ; $49BD: $A2
    ld e, b                                       ; $49BE: $58
    ld l, c                                       ; $49BF: $69
    and a                                         ; $49C0: $A7
    ld e, b                                       ; $49C1: $58
    ld h, [hl]                                    ; $49C2: $66
    ret nz                                        ; $49C3: $C0

    ld e, h                                       ; $49C4: $5C
    ld hl, $0005                                  ; $49C5: $21 $05 $00
    add c                                         ; $49C8: $81
    ld e, l                                       ; $49C9: $5D
    dec b                                         ; $49CA: $05
    dec b                                         ; $49CB: $05

jr_023_49CC:
    or h                                          ; $49CC: $B4
    ret nc                                        ; $49CD: $D0

    nop                                           ; $49CE: $00
    jr nz, jr_023_49CC                            ; $49CF: $20 $FB

    ld d, b                                       ; $49D1: $50
    ld [hl+], a                                   ; $49D2: $22
    dec b                                         ; $49D3: $05
    ld b, b                                       ; $49D4: $40
    dec bc                                        ; $49D5: $0B
    nop                                           ; $49D6: $00
    ld [hl-], a                                   ; $49D7: $32
    inc hl                                        ; $49D8: $23
    ld [hl], b                                    ; $49D9: $70
    ld b, b                                       ; $49DA: $40
    adc l                                         ; $49DB: $8D
    ld b, c                                       ; $49DC: $41
    ld sp, $B723                                  ; $49DD: $31 $23 $B7
    ld c, c                                       ; $49E0: $49
    ld [hl+], a                                   ; $49E1: $22
    adc $40                                       ; $49E2: $CE $40
    nop                                           ; $49E4: $00
    add d                                         ; $49E5: $82
    rra                                           ; $49E6: $1F
    ld [de], a                                    ; $49E7: $12
    sub h                                         ; $49E8: $94
    ld b, d                                       ; $49E9: $42
    ld bc, $0008                                  ; $49EA: $01 $08 $00
    ld b, l                                       ; $49ED: $45
    inc hl                                        ; $49EE: $23
    rst $30                                       ; $49EF: $F7
    ld b, a                                       ; $49F0: $47
    and h                                         ; $49F1: $A4
    ld b, c                                       ; $49F2: $41
    and e                                         ; $49F3: $A3
    ld bc, $2100                                  ; $49F4: $01 $00 $21
    xor [hl]                                      ; $49F7: $AE
    ret nc                                        ; $49F8: $D0

    sub e                                         ; $49F9: $93
    ld h, l                                       ; $49FA: $65
    ret nz                                        ; $49FB: $C0

    ld d, d                                       ; $49FC: $52
    ld c, a                                       ; $49FD: $4F
    ld h, h                                       ; $49FE: $64
    xor h                                         ; $49FF: $AC
    ld e, b                                       ; $4A00: $58
    ld l, c                                       ; $4A01: $69
    or c                                          ; $4A02: $B1
    ld e, b                                       ; $4A03: $58
    ld h, [hl]                                    ; $4A04: $66
    ret nz                                        ; $4A05: $C0

    ld e, h                                       ; $4A06: $5C
    ld hl, $0005                                  ; $4A07: $21 $05 $00
    add c                                         ; $4A0A: $81
    ld e, l                                       ; $4A0B: $5D
    dec b                                         ; $4A0C: $05
    dec b                                         ; $4A0D: $05

jr_023_4A0E:
    or h                                          ; $4A0E: $B4
    ret nc                                        ; $4A0F: $D0

    nop                                           ; $4A10: $00
    jr nz, jr_023_4A0E                            ; $4A11: $20 $FB

    ld d, b                                       ; $4A13: $50
    ld [hl+], a                                   ; $4A14: $22
    dec b                                         ; $4A15: $05
    ld b, b                                       ; $4A16: $40
    dec bc                                        ; $4A17: $0B
    nop                                           ; $4A18: $00
    ld [hl-], a                                   ; $4A19: $32
    inc hl                                        ; $4A1A: $23
    ld [hl], b                                    ; $4A1B: $70
    ld b, b                                       ; $4A1C: $40
    adc l                                         ; $4A1D: $8D
    ld b, c                                       ; $4A1E: $41
    ld sp, $F923                                  ; $4A1F: $31 $23 $F9
    ld c, c                                       ; $4A22: $49
    ld [hl+], a                                   ; $4A23: $22
    adc $40                                       ; $4A24: $CE $40
    nop                                           ; $4A26: $00
    add d                                         ; $4A27: $82
    rra                                           ; $4A28: $1F
    ld [de], a                                    ; $4A29: $12
    sub h                                         ; $4A2A: $94
    ld b, d                                       ; $4A2B: $42
    ld [bc], a                                    ; $4A2C: $02
    rla                                           ; $4A2D: $17
    nop                                           ; $4A2E: $00
    rrca                                          ; $4A2F: $0F
    db $10                                        ; $4A30: $10
    ld b, l                                       ; $4A31: $45
    inc hl                                        ; $4A32: $23
    rst $30                                       ; $4A33: $F7
    ld b, a                                       ; $4A34: $47
    and d                                         ; $4A35: $A2
    ld h, $A1                                     ; $4A36: $26 $A1
    db $10                                        ; $4A38: $10
    inc hl                                        ; $4A39: $23
    ld b, l                                       ; $4A3A: $45
    ld c, e                                       ; $4A3B: $4B
    ld a, [$D05B]                                 ; $4A3C: $FA $5B $D0
    ld e, d                                       ; $4A3F: $5A
    rra                                           ; $4A40: $1F
    ld [hl], c                                    ; $4A41: $71
    ld h, d                                       ; $4A42: $62
    ld a, [hl]                                    ; $4A43: $7E
    xor h                                         ; $4A44: $AC
    pop de                                        ; $4A45: $D1
    ld bc, $C003                                  ; $4A46: $01 $03 $C0
    pop de                                        ; $4A49: $D1
    ld [de], a                                    ; $4A4A: $12
    db $10                                        ; $4A4B: $10
    ld e, d                                       ; $4A4C: $5A
    ld [hl+], a                                   ; $4A4D: $22
    inc b                                         ; $4A4E: $04
    ld b, b                                       ; $4A4F: $40
    ld b, d                                       ; $4A50: $42
    and d                                         ; $4A51: $A2
    ld h, $A1                                     ; $4A52: $26 $A1
    jr nz, jr_023_4A79                            ; $4A54: $20 $23

    ld b, l                                       ; $4A56: $45
    ld c, e                                       ; $4A57: $4B
    ld a, [$D07A]                                 ; $4A58: $FA $7A $D0
    ld e, d                                       ; $4A5B: $5A
    rra                                           ; $4A5C: $1F
    ld [hl], c                                    ; $4A5D: $71
    ld h, d                                       ; $4A5E: $62
    ld a, [hl]                                    ; $4A5F: $7E
    xor h                                         ; $4A60: $AC
    pop de                                        ; $4A61: $D1
    ld bc, $5B03                                  ; $4A62: $01 $03 $5B
    pop de                                        ; $4A65: $D1
    ld c, $0B                                     ; $4A66: $0E $0B
    ld e, d                                       ; $4A68: $5A
    ld [hl+], a                                   ; $4A69: $22
    inc b                                         ; $4A6A: $04
    ld b, b                                       ; $4A6B: $40
    ld b, d                                       ; $4A6C: $42
    and h                                         ; $4A6D: $A4
    ld b, b                                       ; $4A6E: $40
    and e                                         ; $4A6F: $A3
    add b                                         ; $4A70: $80
    nop                                           ; $4A71: $00
    ld hl, $D12B                                  ; $4A72: $21 $2B $D1
    sub e                                         ; $4A75: $93
    ld h, l                                       ; $4A76: $65
    rst $08                                       ; $4A77: $CF
    ld d, d                                       ; $4A78: $52

jr_023_4A79:
    ld c, a                                       ; $4A79: $4F
    ld h, h                                       ; $4A7A: $64
    or [hl]                                       ; $4A7B: $B6
    ld e, b                                       ; $4A7C: $58
    ld l, c                                       ; $4A7D: $69
    cp e                                          ; $4A7E: $BB
    ld e, b                                       ; $4A7F: $58
    ld h, [hl]                                    ; $4A80: $66
    ret nz                                        ; $4A81: $C0

    ld e, h                                       ; $4A82: $5C
    ld hl, $0005                                  ; $4A83: $21 $05 $00
    add c                                         ; $4A86: $81
    ld e, l                                       ; $4A87: $5D
    dec b                                         ; $4A88: $05
    dec b                                         ; $4A89: $05

jr_023_4A8A:
    or h                                          ; $4A8A: $B4
    ret nc                                        ; $4A8B: $D0

    nop                                           ; $4A8C: $00
    jr nz, jr_023_4A8A                            ; $4A8D: $20 $FB

    ld d, b                                       ; $4A8F: $50
    ld [hl+], a                                   ; $4A90: $22
    dec b                                         ; $4A91: $05
    ld b, b                                       ; $4A92: $40
    dec bc                                        ; $4A93: $0B
    nop                                           ; $4A94: $00
    ld [hl-], a                                   ; $4A95: $32
    inc hl                                        ; $4A96: $23
    ld [hl], b                                    ; $4A97: $70
    ld b, b                                       ; $4A98: $40
    adc l                                         ; $4A99: $8D
    ld b, c                                       ; $4A9A: $41
    ld sp, $7523                                  ; $4A9B: $31 $23 $75
    ld c, d                                       ; $4A9E: $4A
    ld [hl+], a                                   ; $4A9F: $22
    adc $40                                       ; $4AA0: $CE $40
    nop                                           ; $4AA2: $00
    add d                                         ; $4AA3: $82
    rra                                           ; $4AA4: $1F
    ld [de], a                                    ; $4AA5: $12
    sub h                                         ; $4AA6: $94
    ld b, d                                       ; $4AA7: $42
    ld [bc], a                                    ; $4AA8: $02
    nop                                           ; $4AA9: $00
    rla                                           ; $4AAA: $17
    ld c, $0F                                     ; $4AAB: $0E $0F
    ld b, l                                       ; $4AAD: $45
    inc hl                                        ; $4AAE: $23
    ld [hl], l                                    ; $4AAF: $75
    ld c, c                                       ; $4AB0: $49
    rlca                                          ; $4AB1: $07
    nop                                           ; $4AB2: $00
    ld l, e                                       ; $4AB3: $6B
    ld c, d                                       ; $4AB4: $4A
    add hl, bc                                    ; $4AB5: $09
    nop                                           ; $4AB6: $00

jr_023_4AB7:
    jr nz, @-$53                                  ; $4AB7: $20 $AB

    ld d, b                                       ; $4AB9: $50
    and d                                         ; $4ABA: $A2
    ld h, $A1                                     ; $4ABB: $26 $A1
    inc b                                         ; $4ABD: $04
    inc hl                                        ; $4ABE: $23
    ld b, l                                       ; $4ABF: $45
    ld c, e                                       ; $4AC0: $4B
    ld a, [$D056]                                 ; $4AC1: $FA $56 $D0
    ld e, d                                       ; $4AC4: $5A
    rra                                           ; $4AC5: $1F
    ld [hl], c                                    ; $4AC6: $71
    ld h, d                                       ; $4AC7: $62
    ld l, b                                       ; $4AC8: $68
    ld b, $72                                     ; $4AC9: $06 $72
    ld a, b                                       ; $4ACB: $78
    adc c                                         ; $4ACC: $89
    ld h, e                                       ; $4ACD: $63
    ld a, e                                       ; $4ACE: $7B
    ld a, a                                       ; $4ACF: $7F
    ld [hl], $D0                                  ; $4AD0: $36 $D0
    ld bc, $3702                                  ; $4AD2: $01 $02 $37
    ret nc                                        ; $4AD5: $D0

    ld [bc], a                                    ; $4AD6: $02
    rlca                                          ; $4AD7: $07
    ld a, a                                       ; $4AD8: $7F
    ld h, h                                       ; $4AD9: $64
    ret nc                                        ; $4ADA: $D0

    ld [bc], a                                    ; $4ADB: $02
    dec b                                         ; $4ADC: $05
    ld h, a                                       ; $4ADD: $67
    ret nc                                        ; $4ADE: $D0

    inc b                                         ; $4ADF: $04
    rlca                                          ; $4AE0: $07
    ld a, a                                       ; $4AE1: $7F
    sub [hl]                                      ; $4AE2: $96
    ret nc                                        ; $4AE3: $D0

    ld bc, $9903                                  ; $4AE4: $01 $03 $99
    ret nc                                        ; $4AE7: $D0

    ld b, $09                                     ; $4AE8: $06 $09
    ld a, a                                       ; $4AEA: $7F
    ld h, h                                       ; $4AEB: $64
    ret nc                                        ; $4AEC: $D0

    ld [bc], a                                    ; $4AED: $02
    dec b                                         ; $4AEE: $05
    ld l, d                                       ; $4AEF: $6A
    ret nc                                        ; $4AF0: $D0

    inc b                                         ; $4AF1: $04
    ld a, [bc]                                    ; $4AF2: $0A
    ld a, a                                       ; $4AF3: $7F
    ld [hl], $D0                                  ; $4AF4: $36 $D0
    ld bc, $3B02                                  ; $4AF6: $01 $02 $3B
    ret nc                                        ; $4AF9: $D0

    ld [bc], a                                    ; $4AFA: $02
    dec bc                                        ; $4AFB: $0B
    ld e, d                                       ; $4AFC: $5A
    ld [hl+], a                                   ; $4AFD: $22
    inc b                                         ; $4AFE: $04
    ld b, b                                       ; $4AFF: $40
    ld b, l                                       ; $4B00: $45
    rra                                           ; $4B01: $1F
    adc e                                         ; $4B02: $8B
    ld h, [hl]                                    ; $4B03: $66
    rlca                                          ; $4B04: $07
    nop                                           ; $4B05: $00
    ld l, e                                       ; $4B06: $6B
    ld c, d                                       ; $4B07: $4A
    add hl, bc                                    ; $4B08: $09
    nop                                           ; $4B09: $00
    jr nz, jr_023_4AB7                            ; $4B0A: $20 $AB

    ld d, b                                       ; $4B0C: $50
    and d                                         ; $4B0D: $A2
    ld h, $A1                                     ; $4B0E: $26 $A1
    ld [$4523], sp                                ; $4B10: $08 $23 $45
    ld c, e                                       ; $4B13: $4B
    ld a, [$D04E]                                 ; $4B14: $FA $4E $D0
    ld e, d                                       ; $4B17: $5A
    rra                                           ; $4B18: $1F
    ld [hl], c                                    ; $4B19: $71
    ld h, d                                       ; $4B1A: $62
    ld l, b                                       ; $4B1B: $68
    cpl                                           ; $4B1C: $2F
    ld [hl], h                                    ; $4B1D: $74
    ld a, b                                       ; $4B1E: $78
    add l                                         ; $4B1F: $85
    ld e, e                                       ; $4B20: $5B
    ld a, e                                       ; $4B21: $7B
    ld a, a                                       ; $4B22: $7F
    db $F4                                        ; $4B23: $F4
    ret nc                                        ; $4B24: $D0

    inc b                                         ; $4B25: $04
    inc b                                         ; $4B26: $04
    call $08D0                                    ; $4B27: $CD $D0 $08
    dec c                                         ; $4B2A: $0D
    ld a, a                                       ; $4B2B: $7F
    inc l                                         ; $4B2C: $2C
    pop de                                        ; $4B2D: $D1
    ld bc, $2D01                                  ; $4B2E: $01 $01 $2D
    pop de                                        ; $4B31: $D1
    inc c                                         ; $4B32: $0C
    dec c                                         ; $4B33: $0D
    ld a, a                                       ; $4B34: $7F
    db $F4                                        ; $4B35: $F4
    ret nc                                        ; $4B36: $D0

    inc b                                         ; $4B37: $04
    inc b                                         ; $4B38: $04
    ld b, l                                       ; $4B39: $45
    pop de                                        ; $4B3A: $D1
    dec c                                         ; $4B3B: $0D
    dec c                                         ; $4B3C: $0D
    ld e, d                                       ; $4B3D: $5A
    ld [hl+], a                                   ; $4B3E: $22
    inc b                                         ; $4B3F: $04
    ld b, b                                       ; $4B40: $40
    ld b, l                                       ; $4B41: $45
    rra                                           ; $4B42: $1F

jr_023_4B43:
    adc e                                         ; $4B43: $8B
    ld h, [hl]                                    ; $4B44: $66
    ld b, h                                       ; $4B45: $44
    ld e, [hl]                                    ; $4B46: $5E
    ld c, e                                       ; $4B47: $4B
    sbc e                                         ; $4B48: $9B
    ld a, b                                       ; $4B49: $78
    ld [hl], b                                    ; $4B4A: $70
    sbc a                                         ; $4B4B: $9F
    ld c, c                                       ; $4B4C: $49
    ld [hl], h                                    ; $4B4D: $74
    jr nz, jr_023_4BC7                            ; $4B4E: $20 $77

    ld l, a                                       ; $4B50: $6F
    ld l, [hl]                                    ; $4B51: $6E
    daa                                           ; $4B52: $27
    ld [hl], h                                    ; $4B53: $74
    rst $38                                       ; $4B54: $FF
    ld h, d                                       ; $4B55: $62
    ld [hl], l                                    ; $4B56: $75
    ld h, h                                       ; $4B57: $64
    ld h, a                                       ; $4B58: $67
    ld h, l                                       ; $4B59: $65
    ld l, $FE                                     ; $4B5A: $2E $FE
    db $FD                                        ; $4B5C: $FD
    sbc d                                         ; $4B5D: $9A
    ld b, l                                       ; $4B5E: $45
    rra                                           ; $4B5F: $1F
    adc e                                         ; $4B60: $8B
    ld h, [hl]                                    ; $4B61: $66
    and h                                         ; $4B62: $A4
    ld b, b                                       ; $4B63: $40
    and e                                         ; $4B64: $A3
    ld b, b                                       ; $4B65: $40
    nop                                           ; $4B66: $00
    ld hl, $D069                                  ; $4B67: $21 $69 $D0
    and h                                         ; $4B6A: $A4
    ld b, d                                       ; $4B6B: $42
    and e                                         ; $4B6C: $A3
    stop                                          ; $4B6D: $10 $00
    ld [bc], a                                    ; $4B6F: $02
    jr nc, jr_023_4B43                            ; $4B70: $30 $D1

    sub e                                         ; $4B72: $93
    ld h, l                                       ; $4B73: $65
    sbc $52                                       ; $4B74: $DE $52
    ld c, a                                       ; $4B76: $4F
    ld h, h                                       ; $4B77: $64
    ret z                                         ; $4B78: $C8

    ld e, b                                       ; $4B79: $58
    ld l, c                                       ; $4B7A: $69
    call Call_023_6658                            ; $4B7B: $CD $58 $66
    ret nz                                        ; $4B7E: $C0

    ld e, h                                       ; $4B7F: $5C
    ld hl, $0005                                  ; $4B80: $21 $05 $00
    add c                                         ; $4B83: $81
    ld e, l                                       ; $4B84: $5D
    dec b                                         ; $4B85: $05
    dec b                                         ; $4B86: $05

jr_023_4B87:
    or h                                          ; $4B87: $B4
    ret nc                                        ; $4B88: $D0

    nop                                           ; $4B89: $00
    jr nz, jr_023_4B87                            ; $4B8A: $20 $FB

    ld d, b                                       ; $4B8C: $50
    ld [hl+], a                                   ; $4B8D: $22
    dec b                                         ; $4B8E: $05
    ld b, b                                       ; $4B8F: $40
    dec bc                                        ; $4B90: $0B
    nop                                           ; $4B91: $00
    ld [hl-], a                                   ; $4B92: $32
    inc hl                                        ; $4B93: $23
    ld [hl], b                                    ; $4B94: $70
    ld b, b                                       ; $4B95: $40
    adc l                                         ; $4B96: $8D
    ld b, c                                       ; $4B97: $41
    ld sp, $7223                                  ; $4B98: $31 $23 $72
    ld c, e                                       ; $4B9B: $4B
    ld [hl+], a                                   ; $4B9C: $22
    adc $40                                       ; $4B9D: $CE $40
    nop                                           ; $4B9F: $00
    add d                                         ; $4BA0: $82
    rra                                           ; $4BA1: $1F
    ld [de], a                                    ; $4BA2: $12
    sub h                                         ; $4BA3: $94
    ld b, d                                       ; $4BA4: $42
    ld [bc], a                                    ; $4BA5: $02
    nop                                           ; $4BA6: $00
    rla                                           ; $4BA7: $17
    dec b                                         ; $4BA8: $05
    inc d                                         ; $4BA9: $14
    ld b, l                                       ; $4BAA: $45
    inc hl                                        ; $4BAB: $23
    xor [hl]                                      ; $4BAC: $AE
    ld c, b                                       ; $4BAD: $48
    and h                                         ; $4BAE: $A4
    ld b, b                                       ; $4BAF: $40
    and e                                         ; $4BB0: $A3
    jr nz, jr_023_4BB3                            ; $4BB1: $20 $00

jr_023_4BB3:
    ld hl, $D19D                                  ; $4BB3: $21 $9D $D1
    sub e                                         ; $4BB6: $93
    ld h, l                                       ; $4BB7: $65
    db $ED                                        ; $4BB8: $ED
    ld d, d                                       ; $4BB9: $52
    ld c, a                                       ; $4BBA: $4F
    ld h, h                                       ; $4BBB: $64
    sbc $58                                       ; $4BBC: $DE $58
    ld l, c                                       ; $4BBE: $69
    db $E3                                        ; $4BBF: $E3
    ld e, b                                       ; $4BC0: $58
    ld h, [hl]                                    ; $4BC1: $66
    ret nz                                        ; $4BC2: $C0

    ld e, h                                       ; $4BC3: $5C
    ld hl, $0005                                  ; $4BC4: $21 $05 $00

jr_023_4BC7:
    add c                                         ; $4BC7: $81
    ld e, l                                       ; $4BC8: $5D
    dec b                                         ; $4BC9: $05
    dec b                                         ; $4BCA: $05

jr_023_4BCB:
    or h                                          ; $4BCB: $B4
    ret nc                                        ; $4BCC: $D0

    nop                                           ; $4BCD: $00
    jr nz, jr_023_4BCB                            ; $4BCE: $20 $FB

    ld d, b                                       ; $4BD0: $50
    ld [hl+], a                                   ; $4BD1: $22
    dec b                                         ; $4BD2: $05
    ld b, b                                       ; $4BD3: $40
    dec bc                                        ; $4BD4: $0B
    nop                                           ; $4BD5: $00
    ld [hl-], a                                   ; $4BD6: $32
    inc hl                                        ; $4BD7: $23
    ld [hl], b                                    ; $4BD8: $70
    ld b, b                                       ; $4BD9: $40
    adc l                                         ; $4BDA: $8D
    ld b, c                                       ; $4BDB: $41
    ld sp, $B623                                  ; $4BDC: $31 $23 $B6
    ld c, e                                       ; $4BDF: $4B
    ld [hl+], a                                   ; $4BE0: $22
    adc $40                                       ; $4BE1: $CE $40
    nop                                           ; $4BE3: $00
    add d                                         ; $4BE4: $82
    rra                                           ; $4BE5: $1F
    ld [de], a                                    ; $4BE6: $12
    sub h                                         ; $4BE7: $94
    ld b, d                                       ; $4BE8: $42
    ld [bc], a                                    ; $4BE9: $02
    rla                                           ; $4BEA: $17
    nop                                           ; $4BEB: $00
    inc b                                         ; $4BEC: $04
    rrca                                          ; $4BED: $0F
    ld b, l                                       ; $4BEE: $45
    inc hl                                        ; $4BEF: $23
    and b                                         ; $4BF0: $A0
    ld b, [hl]                                    ; $4BF1: $46
    and h                                         ; $4BF2: $A4
    ld b, b                                       ; $4BF3: $40
    and e                                         ; $4BF4: $A3
    stop                                          ; $4BF5: $10 $00
    ld hl, $D12C                                  ; $4BF7: $21 $2C $D1
    and h                                         ; $4BFA: $A4
    ld b, d                                       ; $4BFB: $42
    and e                                         ; $4BFC: $A3
    ld b, b                                       ; $4BFD: $40
    nop                                           ; $4BFE: $00
    ld [bc], a                                    ; $4BFF: $02
    dec l                                         ; $4C00: $2D
    pop de                                        ; $4C01: $D1
    sub e                                         ; $4C02: $93
    ld h, l                                       ; $4C03: $65
    db $FC                                        ; $4C04: $FC
    ld d, d                                       ; $4C05: $52
    ld c, a                                       ; $4C06: $4F
    ld h, h                                       ; $4C07: $64
    add sp, $58                                   ; $4C08: $E8 $58
    ld l, c                                       ; $4C0A: $69
    db $ED                                        ; $4C0B: $ED
    ld e, b                                       ; $4C0C: $58
    ld h, [hl]                                    ; $4C0D: $66
    ret nz                                        ; $4C0E: $C0

    ld e, h                                       ; $4C0F: $5C
    ld hl, $0005                                  ; $4C10: $21 $05 $00
    add c                                         ; $4C13: $81
    ld e, l                                       ; $4C14: $5D
    dec b                                         ; $4C15: $05
    dec b                                         ; $4C16: $05

jr_023_4C17:
    or h                                          ; $4C17: $B4
    ret nc                                        ; $4C18: $D0

    nop                                           ; $4C19: $00
    jr nz, jr_023_4C17                            ; $4C1A: $20 $FB

    ld d, b                                       ; $4C1C: $50
    ld [hl+], a                                   ; $4C1D: $22
    dec b                                         ; $4C1E: $05
    ld b, b                                       ; $4C1F: $40
    dec bc                                        ; $4C20: $0B
    nop                                           ; $4C21: $00
    ld [hl-], a                                   ; $4C22: $32
    inc hl                                        ; $4C23: $23
    ld [hl], b                                    ; $4C24: $70
    ld b, b                                       ; $4C25: $40
    adc l                                         ; $4C26: $8D
    ld b, c                                       ; $4C27: $41
    ld sp, $0223                                  ; $4C28: $31 $23 $02
    ld c, h                                       ; $4C2B: $4C
    ld [hl+], a                                   ; $4C2C: $22
    adc $40                                       ; $4C2D: $CE $40
    nop                                           ; $4C2F: $00
    add d                                         ; $4C30: $82
    rra                                           ; $4C31: $1F
    ld [de], a                                    ; $4C32: $12
    sub h                                         ; $4C33: $94
    ld b, d                                       ; $4C34: $42
    rlca                                          ; $4C35: $07
    nop                                           ; $4C36: $00

jr_023_4C37:
    ld l, e                                       ; $4C37: $6B
    ld c, d                                       ; $4C38: $4A
    add hl, bc                                    ; $4C39: $09
    nop                                           ; $4C3A: $00
    jr nz, jr_023_4C75                            ; $4C3B: $20 $38

    ld e, h                                       ; $4C3D: $5C
    ld b, b                                       ; $4C3E: $40
    ld b, $0C                                     ; $4C3F: $06 $0C
    nop                                           ; $4C41: $00
    add e                                         ; $4C42: $83
    inc e                                         ; $4C43: $1C
    nop                                           ; $4C44: $00
    db $FC                                        ; $4C45: $FC
    nop                                           ; $4C46: $00
    ld b, e                                       ; $4C47: $43
    nop                                           ; $4C48: $00
    dec h                                         ; $4C49: $25
    and c                                         ; $4C4A: $A1
    ld bc, $7823                                  ; $4C4B: $01 $23 $78
    ld c, h                                       ; $4C4E: $4C
    add e                                         ; $4C4F: $83
    inc e                                         ; $4C50: $1C
    db $FC                                        ; $4C51: $FC
    nop                                           ; $4C52: $00
    inc l                                         ; $4C53: $2C
    nop                                           ; $4C54: $00
    db $FC                                        ; $4C55: $FC
    nop                                           ; $4C56: $00
    ld b, b                                       ; $4C57: $40
    jr jr_023_4C9F                                ; $4C58: $18 $45

    inc h                                         ; $4C5A: $24
    add a                                         ; $4C5B: $87
    ld l, a                                       ; $4C5C: $6F
    ld [bc], a                                    ; $4C5D: $02
    ld a, [bc]                                    ; $4C5E: $0A
    inc h                                         ; $4C5F: $24
    ld a, [de]                                    ; $4C60: $1A
    nop                                           ; $4C61: $00
    ld b, l                                       ; $4C62: $45
    inc hl                                        ; $4C63: $23
    inc a                                         ; $4C64: $3C
    ld b, [hl]                                    ; $4C65: $46
    ld [bc], a                                    ; $4C66: $02
    ld [$0008], sp                                ; $4C67: $08 $08 $00
    ld a, [de]                                    ; $4C6A: $1A
    ld b, l                                       ; $4C6B: $45
    inc hl                                        ; $4C6C: $23
    ld [$024F], sp                                ; $4C6D: $08 $4F $02
    dec c                                         ; $4C70: $0D
    dec c                                         ; $4C71: $0D
    nop                                           ; $4C72: $00
    ld a, [de]                                    ; $4C73: $1A
    ld b, l                                       ; $4C74: $45

jr_023_4C75:
    inc hl                                        ; $4C75: $23
    ld [$834F], sp                                ; $4C76: $08 $4F $83
    inc e                                         ; $4C79: $1C
    inc b                                         ; $4C7A: $04
    nop                                           ; $4C7B: $00
    inc l                                         ; $4C7C: $2C
    nop                                           ; $4C7D: $00
    db $FC                                        ; $4C7E: $FC
    nop                                           ; $4C7F: $00
    ld b, l                                       ; $4C80: $45
    inc h                                         ; $4C81: $24
    ld c, b                                       ; $4C82: $48
    ld [hl], b                                    ; $4C83: $70
    rlca                                          ; $4C84: $07
    nop                                           ; $4C85: $00
    ld l, e                                       ; $4C86: $6B
    ld c, d                                       ; $4C87: $4A
    add hl, bc                                    ; $4C88: $09
    nop                                           ; $4C89: $00
    jr nz, jr_023_4C37                            ; $4C8A: $20 $AB

    ld d, b                                       ; $4C8C: $50
    and b                                         ; $4C8D: $A0
    dec h                                         ; $4C8E: $25
    and c                                         ; $4C8F: $A1
    ld bc, $D923                                  ; $4C90: $01 $23 $D9
    ld c, h                                       ; $4C93: $4C
    xor d                                         ; $4C94: $AA
    xor h                                         ; $4C95: $AC
    rst $28                                       ; $4C96: $EF
    pop de                                        ; $4C97: $D1
    ld l, b                                       ; $4C98: $68
    sbc $4F                                       ; $4C99: $DE $4F
    ld [hl], d                                    ; $4C9B: $72
    adc a                                         ; $4C9C: $8F
    ld a, l                                       ; $4C9D: $7D
    ld a, b                                       ; $4C9E: $78

jr_023_4C9F:
    ld a, a                                       ; $4C9F: $7F
    ld l, l                                       ; $4CA0: $6D
    pop de                                        ; $4CA1: $D1
    dec b                                         ; $4CA2: $05
    dec b                                         ; $4CA3: $05
    ld l, l                                       ; $4CA4: $6D
    pop de                                        ; $4CA5: $D1
    dec c                                         ; $4CA6: $0D
    ld c, $7F                                     ; $4CA7: $0E $7F
    ld l, h                                       ; $4CA9: $6C
    pop de                                        ; $4CAA: $D1
    ld bc, $6C05                                  ; $4CAB: $01 $05 $6C
    pop de                                        ; $4CAE: $D1
    dec c                                         ; $4CAF: $0D
    dec c                                         ; $4CB0: $0D
    ld a, a                                       ; $4CB1: $7F
    ld l, e                                       ; $4CB2: $6B
    pop de                                        ; $4CB3: $D1
    ld bc, $6B05                                  ; $4CB4: $01 $05 $6B
    pop de                                        ; $4CB7: $D1
    dec c                                         ; $4CB8: $0D
    inc c                                         ; $4CB9: $0C
    ld a, a                                       ; $4CBA: $7F
    ld l, d                                       ; $4CBB: $6A
    pop de                                        ; $4CBC: $D1
    ld bc, $6A05                                  ; $4CBD: $01 $05 $6A
    pop de                                        ; $4CC0: $D1
    dec c                                         ; $4CC1: $0D
    dec bc                                        ; $4CC2: $0B
    ld a, a                                       ; $4CC3: $7F
    ld l, c                                       ; $4CC4: $69
    pop de                                        ; $4CC5: $D1
    ld bc, $6905                                  ; $4CC6: $01 $05 $69
    pop de                                        ; $4CC9: $D1
    dec c                                         ; $4CCA: $0D
    ld a, [bc]                                    ; $4CCB: $0A
    ld a, a                                       ; $4CCC: $7F
    ld l, b                                       ; $4CCD: $68
    pop de                                        ; $4CCE: $D1
    ld bc, $6805                                  ; $4CCF: $01 $05 $68
    pop de                                        ; $4CD2: $D1
    dec c                                         ; $4CD3: $0D
    add hl, bc                                    ; $4CD4: $09
    ld b, l                                       ; $4CD5: $45
    rra                                           ; $4CD6: $1F
    adc e                                         ; $4CD7: $8B

jr_023_4CD8:
    ld h, [hl]                                    ; $4CD8: $66
    ld l, b                                       ; $4CD9: $68

jr_023_4CDA:
    or c                                          ; $4CDA: $B1
    halt                                          ; $4CDB: $76
    halt                                          ; $4CDC: $76
    and b                                         ; $4CDD: $A0
    ld [hl], c                                    ; $4CDE: $71
    ld a, d                                       ; $4CDF: $7A
    ld a, a                                       ; $4CE0: $7F
    ld l, l                                       ; $4CE1: $6D
    ret nc                                        ; $4CE2: $D0

    ld bc, $6805                                  ; $4CE3: $01 $05 $68
    pop de                                        ; $4CE6: $D1
    dec c                                         ; $4CE7: $0D
    add hl, bc                                    ; $4CE8: $09
    ld a, a                                       ; $4CE9: $7F
    ld l, [hl]                                    ; $4CEA: $6E
    ret nc                                        ; $4CEB: $D0

    ld bc, $6905                                  ; $4CEC: $01 $05 $69
    pop de                                        ; $4CEF: $D1
    dec c                                         ; $4CF0: $0D
    ld a, [bc]                                    ; $4CF1: $0A
    ld a, a                                       ; $4CF2: $7F
    ld l, a                                       ; $4CF3: $6F
    ret nc                                        ; $4CF4: $D0

    ld bc, $6A05                                  ; $4CF5: $01 $05 $6A
    pop de                                        ; $4CF8: $D1
    dec c                                         ; $4CF9: $0D
    dec bc                                        ; $4CFA: $0B
    ld a, a                                       ; $4CFB: $7F
    ld [hl], b                                    ; $4CFC: $70
    ret nc                                        ; $4CFD: $D0

    ld bc, $6B05                                  ; $4CFE: $01 $05 $6B
    pop de                                        ; $4D01: $D1
    dec c                                         ; $4D02: $0D
    inc c                                         ; $4D03: $0C
    ld a, a                                       ; $4D04: $7F
    ld [hl], c                                    ; $4D05: $71
    ret nc                                        ; $4D06: $D0

    ld bc, $6C05                                  ; $4D07: $01 $05 $6C
    pop de                                        ; $4D0A: $D1
    dec c                                         ; $4D0B: $0D
    dec c                                         ; $4D0C: $0D
    ld a, a                                       ; $4D0D: $7F
    ld [hl], d                                    ; $4D0E: $72
    ret nc                                        ; $4D0F: $D0

    dec b                                         ; $4D10: $05
    dec b                                         ; $4D11: $05
    ld l, l                                       ; $4D12: $6D
    pop de                                        ; $4D13: $D1

jr_023_4D14:
    dec c                                         ; $4D14: $0D
    ld c, $45                                     ; $4D15: $0E $45
    rra                                           ; $4D17: $1F
    adc e                                         ; $4D18: $8B
    ld h, [hl]                                    ; $4D19: $66
    ld b, h                                       ; $4D1A: $44
    inc [hl]                                      ; $4D1B: $34

jr_023_4D1C:
    ld c, l                                       ; $4D1C: $4D
    rlca                                          ; $4D1D: $07
    nop                                           ; $4D1E: $00
    ld l, e                                       ; $4D1F: $6B
    ld c, d                                       ; $4D20: $4A
    add hl, bc                                    ; $4D21: $09
    nop                                           ; $4D22: $00
    jr nz, jr_023_4CDA                            ; $4D23: $20 $B5

    ld d, b                                       ; $4D25: $50
    ld b, e                                       ; $4D26: $43
    ld de, $C801                                  ; $4D27: $11 $01 $C8
    and e                                         ; $4D2A: $A3
    dec b                                         ; $4D2B: $05
    nop                                           ; $4D2C: $00
    inc hl                                        ; $4D2D: $23
    inc [hl]                                      ; $4D2E: $34
    ld c, l                                       ; $4D2F: $4D
    ld b, l                                       ; $4D30: $45
    inc hl                                        ; $4D31: $23
    dec hl                                        ; $4D32: $2B
    ld b, [hl]                                    ; $4D33: $46
    and d                                         ; $4D34: $A2
    jr z, jr_023_4CD8                             ; $4D35: $28 $A1

    ld [$0422], sp                                ; $4D37: $08 $22 $04
    ld b, b                                       ; $4D3A: $40
    cp [hl]                                       ; $4D3B: $BE
    ld e, e                                       ; $4D3C: $5B
    ret nc                                        ; $4D3D: $D0

    ld l, b                                       ; $4D3E: $68
    or c                                          ; $4D3F: $B1
    halt                                          ; $4D40: $76
    halt                                          ; $4D41: $76
    and b                                         ; $4D42: $A0
    ld [hl], c                                    ; $4D43: $71
    ld a, d                                       ; $4D44: $7A
    ld a, a                                       ; $4D45: $7F
    scf                                           ; $4D46: $37
    pop de                                        ; $4D47: $D1
    inc bc                                        ; $4D48: $03
    inc b                                         ; $4D49: $04
    inc h                                         ; $4D4A: $24
    ret nc                                        ; $4D4B: $D0

    ld bc, $4409                                  ; $4D4C: $01 $09 $44
    ld e, d                                       ; $4D4F: $5A
    ld c, l                                       ; $4D50: $4D
    and [hl]                                      ; $4D51: $A6
    ret z                                         ; $4D52: $C8

    and e                                         ; $4D53: $A3
    inc c                                         ; $4D54: $0C
    ld bc, $A3C8                                  ; $4D55: $01 $C8 $A3
    dec b                                         ; $4D58: $05
    ld bc, $2345                                  ; $4D59: $01 $45 $23
    dec hl                                        ; $4D5C: $2B
    ld b, [hl]                                    ; $4D5D: $46
    ld b, h                                       ; $4D5E: $44
    ld a, b                                       ; $4D5F: $78
    ld c, l                                       ; $4D60: $4D
    rlca                                          ; $4D61: $07
    nop                                           ; $4D62: $00
    ld l, e                                       ; $4D63: $6B
    ld c, d                                       ; $4D64: $4A
    add hl, bc                                    ; $4D65: $09
    nop                                           ; $4D66: $00
    jr nz, jr_023_4D14                            ; $4D67: $20 $AB

    ld d, b                                       ; $4D69: $50
    ld b, e                                       ; $4D6A: $43
    ld de, $C801                                  ; $4D6B: $11 $01 $C8
    and e                                         ; $4D6E: $A3
    dec b                                         ; $4D6F: $05
    nop                                           ; $4D70: $00
    inc hl                                        ; $4D71: $23
    ld a, b                                       ; $4D72: $78
    ld c, l                                       ; $4D73: $4D
    ld b, l                                       ; $4D74: $45
    inc hl                                        ; $4D75: $23
    dec hl                                        ; $4D76: $2B
    ld b, [hl]                                    ; $4D77: $46
    and d                                         ; $4D78: $A2
    jr z, jr_023_4D1C                             ; $4D79: $28 $A1

    db $10                                        ; $4D7B: $10
    ld [hl+], a                                   ; $4D7C: $22
    inc b                                         ; $4D7D: $04
    ld b, b                                       ; $4D7E: $40
    cp [hl]                                       ; $4D7F: $BE
    ld b, [hl]                                    ; $4D80: $46
    ret nc                                        ; $4D81: $D0

    ld l, b                                       ; $4D82: $68
    or c                                          ; $4D83: $B1
    halt                                          ; $4D84: $76
    halt                                          ; $4D85: $76
    and b                                         ; $4D86: $A0
    ld [hl], c                                    ; $4D87: $71
    ld a, d                                       ; $4D88: $7A
    ld a, a                                       ; $4D89: $7F
    scf                                           ; $4D8A: $37
    pop de                                        ; $4D8B: $D1
    inc bc                                        ; $4D8C: $03
    inc b                                         ; $4D8D: $04
    ld a, [hl+]                                   ; $4D8E: $2A
    ret nc                                        ; $4D8F: $D0

    ld bc, $440F                                  ; $4D90: $01 $0F $44
    sbc [hl]                                      ; $4D93: $9E
    ld c, l                                       ; $4D94: $4D
    and [hl]                                      ; $4D95: $A6
    ret z                                         ; $4D96: $C8

    and e                                         ; $4D97: $A3
    inc c                                         ; $4D98: $0C
    ld bc, $A3C8                                  ; $4D99: $01 $C8 $A3
    dec b                                         ; $4D9C: $05
    ld bc, $2345                                  ; $4D9D: $01 $45 $23
    dec hl                                        ; $4DA0: $2B
    ld b, [hl]                                    ; $4DA1: $46
    sub e                                         ; $4DA2: $93
    ld h, l                                       ; $4DA3: $65
    dec bc                                        ; $4DA4: $0B
    ld d, e                                       ; $4DA5: $53
    ld c, a                                       ; $4DA6: $4F
    ld h, h                                       ; $4DA7: $64
    or $58                                        ; $4DA8: $F6 $58
    ld l, c                                       ; $4DAA: $69
    rlca                                          ; $4DAB: $07
    ld e, c                                       ; $4DAC: $59
    ld h, [hl]                                    ; $4DAD: $66
    ret nz                                        ; $4DAE: $C0

    ld e, h                                       ; $4DAF: $5C
    ld hl, $0005                                  ; $4DB0: $21 $05 $00
    add c                                         ; $4DB3: $81
    ld e, l                                       ; $4DB4: $5D
    dec b                                         ; $4DB5: $05
    dec b                                         ; $4DB6: $05

jr_023_4DB7:
    adc h                                         ; $4DB7: $8C
    ret nc                                        ; $4DB8: $D0

    nop                                           ; $4DB9: $00
    jr nz, jr_023_4DB7                            ; $4DBA: $20 $FB

    ld d, b                                       ; $4DBC: $50
    ld [hl+], a                                   ; $4DBD: $22
    dec b                                         ; $4DBE: $05
    ld b, b                                       ; $4DBF: $40
    dec bc                                        ; $4DC0: $0B
    nop                                           ; $4DC1: $00
    ld [hl-], a                                   ; $4DC2: $32
    inc hl                                        ; $4DC3: $23
    ld [hl], b                                    ; $4DC4: $70
    ld b, b                                       ; $4DC5: $40
    adc l                                         ; $4DC6: $8D
    ld b, c                                       ; $4DC7: $41
    ld sp, $A223                                  ; $4DC8: $31 $23 $A2
    ld c, l                                       ; $4DCB: $4D
    ld [hl+], a                                   ; $4DCC: $22
    adc $40                                       ; $4DCD: $CE $40
    nop                                           ; $4DCF: $00

jr_023_4DD0:
    add d                                         ; $4DD0: $82
    rra                                           ; $4DD1: $1F
    ld [de], a                                    ; $4DD2: $12
    sub h                                         ; $4DD3: $94
    ld b, d                                       ; $4DD4: $42
    sub e                                         ; $4DD5: $93
    ld h, l                                       ; $4DD6: $65
    dec bc                                        ; $4DD7: $0B
    ld d, e                                       ; $4DD8: $53
    ld c, a                                       ; $4DD9: $4F
    ld h, h                                       ; $4DDA: $64
    or $58                                        ; $4DDB: $F6 $58
    ld l, c                                       ; $4DDD: $69
    rlca                                          ; $4DDE: $07
    ld e, c                                       ; $4DDF: $59
    ld h, [hl]                                    ; $4DE0: $66
    ret nz                                        ; $4DE1: $C0

    ld e, h                                       ; $4DE2: $5C
    ld hl, $0005                                  ; $4DE3: $21 $05 $00
    ld l, e                                       ; $4DE6: $6B
    ld c, d                                       ; $4DE7: $4A
    dec c                                         ; $4DE8: $0D
    dec d                                         ; $4DE9: $15
    ld b, h                                       ; $4DEA: $44
    jp nc, $2400                                  ; $4DEB: $D2 $00 $24

    add c                                         ; $4DEE: $81
    ld [hl], b                                    ; $4DEF: $70
    ld [hl+], a                                   ; $4DF0: $22
    dec b                                         ; $4DF1: $05
    ld b, b                                       ; $4DF2: $40
    add h                                         ; $4DF3: $84
    ld b, $04                                     ; $4DF4: $06 $04
    rra                                           ; $4DF6: $1F
    ld [de], a                                    ; $4DF7: $12
    sub h                                         ; $4DF8: $94
    add e                                         ; $4DF9: $83
    inc l                                         ; $4DFA: $2C
    nop                                           ; $4DFB: $00
    inc b                                         ; $4DFC: $04
    inc e                                         ; $4DFD: $1C
    inc b                                         ; $4DFE: $04
    nop                                           ; $4DFF: $00
    inc e                                         ; $4E00: $1C
    nop                                           ; $4E01: $00
    inc b                                         ; $4E02: $04
    nop                                           ; $4E03: $00
    ld b, e                                       ; $4E04: $43
    nop                                           ; $4E05: $00
    dec h                                         ; $4E06: $25
    and c                                         ; $4E07: $A1
    ld bc, $2723                                  ; $4E08: $01 $23 $27
    ld c, [hl]                                    ; $4E0B: $4E
    dec bc                                        ; $4E0C: $0B
    nop                                           ; $4E0D: $00
    ld [hl-], a                                   ; $4E0E: $32
    inc hl                                        ; $4E0F: $23
    ld [hl], b                                    ; $4E10: $70
    ld b, b                                       ; $4E11: $40
    adc l                                         ; $4E12: $8D
    ld b, c                                       ; $4E13: $41
    ld sp, $A223                                  ; $4E14: $31 $23 $A2
    ld c, l                                       ; $4E17: $4D
    ld [hl+], a                                   ; $4E18: $22
    adc $40                                       ; $4E19: $CE $40
    ld h, b                                       ; $4E1B: $60
    ld bc, $0007                                  ; $4E1C: $01 $07 $00
    add c                                         ; $4E1F: $81
    ld e, l                                       ; $4E20: $5D
    add hl, bc                                    ; $4E21: $09
    nop                                           ; $4E22: $00
    jr nz, jr_023_4DD0                            ; $4E23: $20 $AB

    ld d, b                                       ; $4E25: $50
    ld b, d                                       ; $4E26: $42
    add e                                         ; $4E27: $83
    inc e                                         ; $4E28: $1C
    nop                                           ; $4E29: $00
    db $FC                                        ; $4E2A: $FC
    nop                                           ; $4E2B: $00
    ld b, l                                       ; $4E2C: $45
    inc hl                                        ; $4E2D: $23
    ld a, b                                       ; $4E2E: $78
    ld c, h                                       ; $4E2F: $4C
    sub e                                         ; $4E30: $93

jr_023_4E31:
    ld h, l                                       ; $4E31: $65
    dec bc                                        ; $4E32: $0B
    ld d, e                                       ; $4E33: $53
    ld c, a                                       ; $4E34: $4F
    ld h, h                                       ; $4E35: $64
    or $58                                        ; $4E36: $F6 $58
    ld l, c                                       ; $4E38: $69
    rlca                                          ; $4E39: $07
    ld e, c                                       ; $4E3A: $59
    ld h, [hl]                                    ; $4E3B: $66
    ret nz                                        ; $4E3C: $C0

    ld e, h                                       ; $4E3D: $5C
    ld hl, $0005                                  ; $4E3E: $21 $05 $00
    ld l, e                                       ; $4E41: $6B
    ld c, d                                       ; $4E42: $4A
    dec c                                         ; $4E43: $0D
    dec d                                         ; $4E44: $15
    ld b, h                                       ; $4E45: $44
    jp nc, $2400                                  ; $4E46: $D2 $00 $24

    add c                                         ; $4E49: $81
    ld [hl], b                                    ; $4E4A: $70
    ld [hl+], a                                   ; $4E4B: $22
    dec b                                         ; $4E4C: $05
    ld b, b                                       ; $4E4D: $40
    add h                                         ; $4E4E: $84
    inc d                                         ; $4E4F: $14
    nop                                           ; $4E50: $00
    rra                                           ; $4E51: $1F
    ld [de], a                                    ; $4E52: $12
    sub h                                         ; $4E53: $94
    add e                                         ; $4E54: $83
    inc l                                         ; $4E55: $2C
    nop                                           ; $4E56: $00
    inc b                                         ; $4E57: $04
    ld c, $FC                                     ; $4E58: $0E $FC
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    ld b, e                                       ; $4E5C: $43
    ld a, [bc]                                    ; $4E5D: $0A
    nop                                           ; $4E5E: $00
    dec h                                         ; $4E5F: $25
    and c                                         ; $4E60: $A1
    ld bc, $7823                                  ; $4E61: $01 $23 $78
    ld c, h                                       ; $4E64: $4C
    add e                                         ; $4E65: $83
    ld c, $FC                                     ; $4E66: $0E $FC
    nop                                           ; $4E68: $00
    inc e                                         ; $4E69: $1C

jr_023_4E6A:
    nop                                           ; $4E6A: $00
    inc b                                         ; $4E6B: $04

jr_023_4E6C:
    nop                                           ; $4E6C: $00
    dec bc                                        ; $4E6D: $0B
    nop                                           ; $4E6E: $00
    ld [hl-], a                                   ; $4E6F: $32
    inc hl                                        ; $4E70: $23
    ld [hl], b                                    ; $4E71: $70
    ld b, b                                       ; $4E72: $40
    adc l                                         ; $4E73: $8D
    ld b, c                                       ; $4E74: $41
    ld sp, $A223                                  ; $4E75: $31 $23 $A2
    ld c, l                                       ; $4E78: $4D
    ld [hl+], a                                   ; $4E79: $22
    adc $40                                       ; $4E7A: $CE $40
    ld h, b                                       ; $4E7C: $60
    ld bc, $0007                                  ; $4E7D: $01 $07 $00
    add c                                         ; $4E80: $81
    ld e, l                                       ; $4E81: $5D
    add hl, bc                                    ; $4E82: $09
    nop                                           ; $4E83: $00
    jr nz, jr_023_4E31                            ; $4E84: $20 $AB

    ld d, b                                       ; $4E86: $50
    ld b, d                                       ; $4E87: $42
    rlca                                          ; $4E88: $07
    nop                                           ; $4E89: $00
    ld l, e                                       ; $4E8A: $6B
    ld c, d                                       ; $4E8B: $4A
    add hl, bc                                    ; $4E8C: $09
    nop                                           ; $4E8D: $00
    jr nz, @+$3A                                  ; $4E8E: $20 $38

    ld e, h                                       ; $4E90: $5C
    ld b, b                                       ; $4E91: $40
    ld b, $0C                                     ; $4E92: $06 $0C
    nop                                           ; $4E94: $00
    add e                                         ; $4E95: $83
    jr c, jr_023_4E98                             ; $4E96: $38 $00

jr_023_4E98:
    db $FC                                        ; $4E98: $FC
    nop                                           ; $4E99: $00
    ld b, l                                       ; $4E9A: $45
    inc h                                         ; $4E9B: $24
    jr c, jr_023_4F11                             ; $4E9C: $38 $73

    ld bc, $000A                                  ; $4E9E: $01 $0A $00

jr_023_4EA1:
    ld b, l                                       ; $4EA1: $45
    inc hl                                        ; $4EA2: $23
    and d                                         ; $4EA3: $A2
    ld c, l                                       ; $4EA4: $4D
    ld bc, $0010                                  ; $4EA5: $01 $10 $00
    ld b, l                                       ; $4EA8: $45
    inc hl                                        ; $4EA9: $23
    and d                                         ; $4EAA: $A2
    ld c, l                                       ; $4EAB: $4D
    ld b, h                                       ; $4EAC: $44
    add $4E                                       ; $4EAD: $C6 $4E
    rlca                                          ; $4EAF: $07
    nop                                           ; $4EB0: $00
    ld l, e                                       ; $4EB1: $6B
    ld c, d                                       ; $4EB2: $4A
    add hl, bc                                    ; $4EB3: $09
    nop                                           ; $4EB4: $00
    jr nz, jr_023_4E6C                            ; $4EB5: $20 $B5

    ld d, b                                       ; $4EB7: $50
    ld b, e                                       ; $4EB8: $43
    ld de, $C801                                  ; $4EB9: $11 $01 $C8
    and e                                         ; $4EBC: $A3
    dec b                                         ; $4EBD: $05
    nop                                           ; $4EBE: $00
    inc hl                                        ; $4EBF: $23
    add $4E                                       ; $4EC0: $C6 $4E
    ld b, l                                       ; $4EC2: $45
    rra                                           ; $4EC3: $1F
    adc e                                         ; $4EC4: $8B
    ld h, [hl]                                    ; $4EC5: $66
    and d                                         ; $4EC6: $A2
    jr z, jr_023_4E6A                             ; $4EC7: $28 $A1

    jr nz, @+$24                                  ; $4EC9: $20 $22

    inc b                                         ; $4ECB: $04
    ld b, b                                       ; $4ECC: $40
    cp [hl]                                       ; $4ECD: $BE
    jr nc, jr_023_4EA1                            ; $4ECE: $30 $D1

    ld l, b                                       ; $4ED0: $68
    and c                                         ; $4ED1: $A1
    ld h, c                                       ; $4ED2: $61
    ld a, h                                       ; $4ED3: $7C
    ld l, e                                       ; $4ED4: $6B
    ld l, l                                       ; $4ED5: $6D
    ld a, h                                       ; $4ED6: $7C
    ld a, a                                       ; $4ED7: $7F
    ld sp, hl                                     ; $4ED8: $F9
    ret nc                                        ; $4ED9: $D0

    inc bc                                        ; $4EDA: $03
    inc b                                         ; $4EDB: $04
    ld sp, hl                                     ; $4EDC: $F9
    ret nc                                        ; $4EDD: $D0

    add hl, bc                                    ; $4EDE: $09
    ld b, $44                                     ; $4EDF: $06 $44
    db $EC                                        ; $4EE1: $EC
    ld c, [hl]                                    ; $4EE2: $4E
    and [hl]                                      ; $4EE3: $A6
    ret z                                         ; $4EE4: $C8

    and e                                         ; $4EE5: $A3
    inc c                                         ; $4EE6: $0C
    ld bc, $A3C8                                  ; $4EE7: $01 $C8 $A3
    dec b                                         ; $4EEA: $05
    ld bc, $1F45                                  ; $4EEB: $01 $45 $1F
    adc e                                         ; $4EEE: $8B
    ld h, [hl]                                    ; $4EEF: $66
    and h                                         ; $4EF0: $A4
    ld b, h                                       ; $4EF1: $44
    and e                                         ; $4EF2: $A3
    ld bc, $0300                                  ; $4EF3: $01 $00 $03
    ld [hl], c                                    ; $4EF6: $71
    ret nc                                        ; $4EF7: $D0

    and h                                         ; $4EF8: $A4
    ld b, h                                       ; $4EF9: $44
    and e                                         ; $4EFA: $A3
    ld [bc], a                                    ; $4EFB: $02
    inc bc                                        ; $4EFC: $03
    inc c                                         ; $4EFD: $0C
    ld [hl], e                                    ; $4EFE: $73
    ret nc                                        ; $4EFF: $D0

    and h                                         ; $4F00: $A4
    ld b, h                                       ; $4F01: $44
    and e                                         ; $4F02: $A3
    inc b                                         ; $4F03: $04
    nop                                           ; $4F04: $00
    inc bc                                        ; $4F05: $03
    ld [hl], l                                    ; $4F06: $75
    ret nc                                        ; $4F07: $D0

    sub e                                         ; $4F08: $93
    ld h, l                                       ; $4F09: $65
    ld a, [de]                                    ; $4F0A: $1A
    ld d, e                                       ; $4F0B: $53
    ld c, a                                       ; $4F0C: $4F
    ld h, h                                       ; $4F0D: $64
    inc d                                         ; $4F0E: $14
    ld e, c                                       ; $4F0F: $59
    ld l, c                                       ; $4F10: $69

jr_023_4F11:
    ld hl, $6659                                  ; $4F11: $21 $59 $66
    ret nz                                        ; $4F14: $C0

    ld e, h                                       ; $4F15: $5C
    ld hl, $0005                                  ; $4F16: $21 $05 $00
    add c                                         ; $4F19: $81
    ld e, l                                       ; $4F1A: $5D
    dec b                                         ; $4F1B: $05
    dec b                                         ; $4F1C: $05

jr_023_4F1D:
    adc h                                         ; $4F1D: $8C
    ret nc                                        ; $4F1E: $D0

    nop                                           ; $4F1F: $00
    jr nz, jr_023_4F1D                            ; $4F20: $20 $FB

    ld d, b                                       ; $4F22: $50
    ld [hl+], a                                   ; $4F23: $22
    dec b                                         ; $4F24: $05

jr_023_4F25:
    ld b, b                                       ; $4F25: $40
    dec bc                                        ; $4F26: $0B
    nop                                           ; $4F27: $00
    ld [hl-], a                                   ; $4F28: $32
    inc hl                                        ; $4F29: $23
    ld [hl], b                                    ; $4F2A: $70
    ld b, b                                       ; $4F2B: $40
    adc l                                         ; $4F2C: $8D
    ld b, c                                       ; $4F2D: $41
    ld sp, $0823                                  ; $4F2E: $31 $23 $08
    ld c, a                                       ; $4F31: $4F
    ld [hl+], a                                   ; $4F32: $22
    adc $40                                       ; $4F33: $CE $40
    nop                                           ; $4F35: $00
    add d                                         ; $4F36: $82
    rra                                           ; $4F37: $1F
    ld [de], a                                    ; $4F38: $12
    sub h                                         ; $4F39: $94
    ld b, d                                       ; $4F3A: $42
    sub e                                         ; $4F3B: $93
    ld h, l                                       ; $4F3C: $65
    ld a, [de]                                    ; $4F3D: $1A
    ld d, e                                       ; $4F3E: $53
    ld c, a                                       ; $4F3F: $4F
    ld h, h                                       ; $4F40: $64
    inc d                                         ; $4F41: $14
    ld e, c                                       ; $4F42: $59
    dec b                                         ; $4F43: $05
    nop                                           ; $4F44: $00
    ld l, e                                       ; $4F45: $6B
    ld c, d                                       ; $4F46: $4A
    inc de                                        ; $4F47: $13
    ld [de], a                                    ; $4F48: $12
    ld sp, hl                                     ; $4F49: $F9
    pop de                                        ; $4F4A: $D1
    nop                                           ; $4F4B: $00
    inc h                                         ; $4F4C: $24
    add c                                         ; $4F4D: $81
    ld [hl], b                                    ; $4F4E: $70
    ld [hl+], a                                   ; $4F4F: $22
    dec b                                         ; $4F50: $05
    ld b, b                                       ; $4F51: $40
    ld h, [hl]                                    ; $4F52: $66
    ret nz                                        ; $4F53: $C0

    ld e, h                                       ; $4F54: $5C
    ld hl, $2332                                  ; $4F55: $21 $32 $23
    ld [hl], b                                    ; $4F58: $70
    ld b, b                                       ; $4F59: $40
    adc l                                         ; $4F5A: $8D
    ld b, c                                       ; $4F5B: $41
    ld sp, $0823                                  ; $4F5C: $31 $23 $08
    ld c, a                                       ; $4F5F: $4F
    ld [hl+], a                                   ; $4F60: $22
    adc $40                                       ; $4F61: $CE $40
    add h                                         ; $4F63: $84
    inc de                                        ; $4F64: $13
    nop                                           ; $4F65: $00
    rra                                           ; $4F66: $1F
    ld [de], a                                    ; $4F67: $12
    sub h                                         ; $4F68: $94
    add e                                         ; $4F69: $83
    jr c, jr_023_4F6C                             ; $4F6A: $38 $00

jr_023_4F6C:
    inc b                                         ; $4F6C: $04
    nop                                           ; $4F6D: $00
    dec bc                                        ; $4F6E: $0B
    nop                                           ; $4F6F: $00
    ld h, b                                       ; $4F70: $60
    ld bc, $0007                                  ; $4F71: $01 $07 $00
    add c                                         ; $4F74: $81
    ld e, l                                       ; $4F75: $5D
    add hl, bc                                    ; $4F76: $09
    nop                                           ; $4F77: $00
    jr nz, jr_023_4F25                            ; $4F78: $20 $AB

    ld d, b                                       ; $4F7A: $50
    ld b, d                                       ; $4F7B: $42

    db $02, $04, $0B, $11, $02, $45, $2B, $86, $70

    ld b, d                                       ; $4F85: $42

    db $A4, $23, $A3, $20, $00, $0D, $66, $D0

    sbc e                                         ; $4F8E: $9B
    ld a, b                                       ; $4F8F: $78
    ld [hl], b                                    ; $4F90: $70
    sbc a                                         ; $4F91: $9F
    ld d, h                                       ; $4F92: $54
    ld l, b                                       ; $4F93: $68
    ld h, l                                       ; $4F94: $65
    ld [hl], d                                    ; $4F95: $72
    ld h, l                                       ; $4F96: $65
    jr nz, jr_023_5002                            ; $4F97: $20 $69

    ld [hl], e                                    ; $4F99: $73
    jr nz, jr_023_4FFD                            ; $4F9A: $20 $61

    rst $38                                       ; $4F9C: $FF
    ld h, d                                       ; $4F9D: $62
    ld [hl], d                                    ; $4F9E: $72
    ld h, c                                       ; $4F9F: $61
    ld l, [hl]                                    ; $4FA0: $6E
    ld h, e                                       ; $4FA1: $63
    ld l, b                                       ; $4FA2: $68

jr_023_4FA3:
    jr nz, jr_023_4FA3                            ; $4FA3: $20 $FE

    ld h, d                                       ; $4FA5: $62
    ld l, h                                       ; $4FA6: $6C
    ld l, a                                       ; $4FA7: $6F
    ld h, e                                       ; $4FA8: $63
    ld l, e                                       ; $4FA9: $6B
    ld l, c                                       ; $4FAA: $69
    ld l, [hl]                                    ; $4FAB: $6E
    ld h, a                                       ; $4FAC: $67
    jr nz, jr_023_5023                            ; $4FAD: $20 $74

    ld l, b                                       ; $4FAF: $68
    ld h, l                                       ; $4FB0: $65
    rst $38                                       ; $4FB1: $FF
    halt                                          ; $4FB2: $76
    ld l, c                                       ; $4FB3: $69
    ld h, l                                       ; $4FB4: $65
    ld [hl], a                                    ; $4FB5: $77
    ld l, $FE                                     ; $4FB6: $2E $FE
    db $FD                                        ; $4FB8: $FD
    sbc d                                         ; $4FB9: $9A
    ld b, d                                       ; $4FBA: $42
    sbc e                                         ; $4FBB: $9B
    ld a, b                                       ; $4FBC: $78
    ld [hl], b                                    ; $4FBD: $70
    sbc a                                         ; $4FBE: $9F
    ld c, b                                       ; $4FBF: $48
    ld h, l                                       ; $4FC0: $65
    ld a, c                                       ; $4FC1: $79
    jr nz, jr_023_500D                            ; $4FC2: $20 $49

    jr nz, jr_023_5029                            ; $4FC4: $20 $63

    ld h, c                                       ; $4FC6: $61
    ld l, [hl]                                    ; $4FC7: $6E
    rst $38                                       ; $4FC8: $FF
    ld [hl], h                                    ; $4FC9: $74
    ld h, c                                       ; $4FCA: $61
    ld l, h                                       ; $4FCB: $6C
    ld l, e                                       ; $4FCC: $6B
    jr nz, jr_023_5043                            ; $4FCD: $20 $74

    ld l, a                                       ; $4FCF: $6F
    jr nz, @+$76                                  ; $4FD0: $20 $74

    ld l, b                                       ; $4FD2: $68
    ld l, c                                       ; $4FD3: $69
    ld [hl], e                                    ; $4FD4: $73
    cp $6F                                        ; $4FD5: $FE $6F
    ld l, [hl]                                    ; $4FD7: $6E
    ld h, l                                       ; $4FD8: $65
    ld hl, $FDFE                                  ; $4FD9: $21 $FE $FD
    sbc d                                         ; $4FDC: $9A
    ld b, d                                       ; $4FDD: $42
    sbc e                                         ; $4FDE: $9B
    ld a, b                                       ; $4FDF: $78
    ld [hl], b                                    ; $4FE0: $70
    sbc a                                         ; $4FE1: $9F
    ld d, a                                       ; $4FE2: $57
    ld l, b                                       ; $4FE3: $68
    ld h, c                                       ; $4FE4: $61
    ld [hl], h                                    ; $4FE5: $74
    jr nz, jr_023_5058                            ; $4FE6: $20 $70

    ld l, a                                       ; $4FE8: $6F
    ld [hl], a                                    ; $4FE9: $77
    ld h, l                                       ; $4FEA: $65
    ld [hl], d                                    ; $4FEB: $72
    ld [hl], e                                    ; $4FEC: $73
    rst $38                                       ; $4FED: $FF
    ld [hl], h                                    ; $4FEE: $74
    ld l, b                                       ; $4FEF: $68
    ld l, c                                       ; $4FF0: $69
    ld [hl], e                                    ; $4FF1: $73
    jr nz, jr_023_5068                            ; $4FF2: $20 $74

    ld l, b                                       ; $4FF4: $68
    ld l, c                                       ; $4FF5: $69
    ld l, [hl]                                    ; $4FF6: $6E
    ld h, a                                       ; $4FF7: $67
    ccf                                           ; $4FF8: $3F
    cp $FD                                        ; $4FF9: $FE $FD
    sbc d                                         ; $4FFB: $9A
    ld b, d                                       ; $4FFC: $42

jr_023_4FFD:
    ld b, e                                       ; $4FFD: $43
    rrca                                          ; $4FFE: $0F
    inc b                                         ; $4FFF: $04
    dec b                                         ; $5000: $05
    inc bc                                        ; $5001: $03

jr_023_5002:
    inc hl                                        ; $5002: $23
    ld b, a                                       ; $5003: $47
    ld d, b                                       ; $5004: $50
    ld b, e                                       ; $5005: $43
    nop                                           ; $5006: $00
    and l                                         ; $5007: $A5
    and c                                         ; $5008: $A1
    ld [bc], a                                    ; $5009: $02
    inc hl                                        ; $500A: $23
    sub a                                         ; $500B: $97
    ld d, b                                       ; $500C: $50

jr_023_500D:
    sbc e                                         ; $500D: $9B
    ld [$9F72], sp                                ; $500E: $08 $72 $9F
    ld c, b                                       ; $5011: $48
    ld l, c                                       ; $5012: $69
    inc l                                         ; $5013: $2C
    jr nz, jr_023_508F                            ; $5014: $20 $79

    ld l, a                                       ; $5016: $6F
    ld [hl], l                                    ; $5017: $75
    jr nz, jr_023_5087                            ; $5018: $20 $6D

    ld [hl], l                                    ; $501A: $75
    ld [hl], e                                    ; $501B: $73
    ld [hl], h                                    ; $501C: $74
    rst $38                                       ; $501D: $FF
    ld h, d                                       ; $501E: $62
    ld h, l                                       ; $501F: $65
    jr nz, jr_023_5076                            ; $5020: $20 $54

    ld l, a                                       ; $5022: $6F

jr_023_5023:
    ld l, [hl]                                    ; $5023: $6E
    ld a, c                                       ; $5024: $79
    ld hl, $49FE                                  ; $5025: $21 $FE $49
    daa                                           ; $5028: $27

jr_023_5029:
    ld l, l                                       ; $5029: $6D
    jr nz, jr_023_5080                            ; $502A: $20 $54

    ld [hl], d                                    ; $502C: $72
    ld a, c                                       ; $502D: $79
    ld l, [hl]                                    ; $502E: $6E
    ld l, $FE                                     ; $502F: $2E $FE
    ld c, [hl]                                    ; $5031: $4E
    ld l, c                                       ; $5032: $69
    ld h, e                                       ; $5033: $63
    ld h, l                                       ; $5034: $65
    jr nz, jr_023_50AB                            ; $5035: $20 $74

    ld l, a                                       ; $5037: $6F
    jr nz, jr_023_50A7                            ; $5038: $20 $6D

    ld h, l                                       ; $503A: $65
    ld h, l                                       ; $503B: $65
    ld [hl], h                                    ; $503C: $74
    rst $38                                       ; $503D: $FF
    ld a, c                                       ; $503E: $79
    ld h, c                                       ; $503F: $61
    ld hl, $FDFE                                  ; $5040: $21 $FE $FD

jr_023_5043:
    sbc d                                         ; $5043: $9A
    ld e, b                                       ; $5044: $58
    ld bc, $9B42                                  ; $5045: $01 $42 $9B
    ld [$9F72], sp                                ; $5048: $08 $72 $9F
    ld d, h                                       ; $504B: $54
    ld l, b                                       ; $504C: $68
    ld h, l                                       ; $504D: $65
    jr nz, jr_023_50C7                            ; $504E: $20 $77

    ld l, b                                       ; $5050: $68
    ld l, a                                       ; $5051: $6F
    ld l, h                                       ; $5052: $6C
    ld h, l                                       ; $5053: $65
    rst $38                                       ; $5054: $FF
    ld [hl], h                                    ; $5055: $74
    ld l, a                                       ; $5056: $6F
    ld [hl], a                                    ; $5057: $77

jr_023_5058:
    ld l, [hl]                                    ; $5058: $6E
    jr nz, jr_023_50D2                            ; $5059: $20 $77

    ld h, c                                       ; $505B: $61
    ld [hl], e                                    ; $505C: $73
    cp $73                                        ; $505D: $FE $73
    ld l, b                                       ; $505F: $68
    ld h, c                                       ; $5060: $61
    ld l, e                                       ; $5061: $6B
    ld l, c                                       ; $5062: $69
    ld l, [hl]                                    ; $5063: $6E
    ld h, a                                       ; $5064: $67
    inc l                                         ; $5065: $2C
    rst $38                                       ; $5066: $FF
    ld h, d                                       ; $5067: $62

jr_023_5068:
    ld [hl], l                                    ; $5068: $75
    ld [hl], h                                    ; $5069: $74
    jr nz, jr_023_50B5                            ; $506A: $20 $49

    jr nz, jr_023_50D2                            ; $506C: $20 $64

    ld l, c                                       ; $506E: $69
    ld h, h                                       ; $506F: $64
    ld l, [hl]                                    ; $5070: $6E
    daa                                           ; $5071: $27
    ld [hl], h                                    ; $5072: $74
    cp $66                                        ; $5073: $FE $66
    ld h, l                                       ; $5075: $65

jr_023_5076:
    ld h, l                                       ; $5076: $65
    ld l, h                                       ; $5077: $6C
    jr nz, jr_023_50DB                            ; $5078: $20 $61

    ld l, [hl]                                    ; $507A: $6E
    ld a, c                                       ; $507B: $79
    rst $38                                       ; $507C: $FF
    ld [hl], a                                    ; $507D: $77
    ld l, c                                       ; $507E: $69
    ld l, [hl]                                    ; $507F: $6E

jr_023_5080:
    ld h, h                                       ; $5080: $64
    ld l, $2E                                     ; $5081: $2E $2E
    ld l, $2E                                     ; $5083: $2E $2E
    cp $57                                        ; $5085: $FE $57

jr_023_5087:
    ld h, l                                       ; $5087: $65
    ld l, c                                       ; $5088: $69
    ld [hl], d                                    ; $5089: $72
    ld h, h                                       ; $508A: $64
    inc l                                         ; $508B: $2C
    jr nz, jr_023_50F6                            ; $508C: $20 $68

    ld [hl], l                                    ; $508E: $75

jr_023_508F:
    ld l, b                                       ; $508F: $68
    ccf                                           ; $5090: $3F
    cp $FD                                        ; $5091: $FE $FD
    sbc d                                         ; $5093: $9A
    ld e, b                                       ; $5094: $58
    ld bc, $4342                                  ; $5095: $01 $42 $43
    ld bc, $A2AE                                  ; $5098: $01 $AE $A2
    inc hl                                        ; $509B: $23
    db $EC                                        ; $509C: $EC
    ld d, b                                       ; $509D: $50
    xor a                                         ; $509E: $AF
    xor b                                         ; $509F: $A8
    and c                                         ; $50A0: $A1
    inc b                                         ; $50A1: $04
    sbc e                                         ; $50A2: $9B
    ld [$9F72], sp                                ; $50A3: $08 $72 $9F
    ld e, c                                       ; $50A6: $59

jr_023_50A7:
    ld h, c                                       ; $50A7: $61
    jr nz, jr_023_5115                            ; $50A8: $20 $6B

    ld l, [hl]                                    ; $50AA: $6E

jr_023_50AB:
    ld l, a                                       ; $50AB: $6F
    ld [hl], a                                    ; $50AC: $77
    inc l                                         ; $50AD: $2C
    cp $57                                        ; $50AE: $FE $57
    ld l, b                                       ; $50B0: $68
    ld h, l                                       ; $50B1: $65
    ld l, [hl]                                    ; $50B2: $6E
    ld h, l                                       ; $50B3: $65
    halt                                          ; $50B4: $76

jr_023_50B5:
    ld h, l                                       ; $50B5: $65
    ld [hl], d                                    ; $50B6: $72
    jr nz, jr_023_5102                            ; $50B7: $20 $49

    daa                                           ; $50B9: $27
    ld l, l                                       ; $50BA: $6D
    rst $38                                       ; $50BB: $FF
    ld [hl], e                                    ; $50BC: $73
    ld l, c                                       ; $50BD: $69
    ld h, e                                       ; $50BE: $63
    ld l, e                                       ; $50BF: $6B
    inc l                                         ; $50C0: $2C
    cp $49                                        ; $50C1: $FE $49
    jr nz, jr_023_5126                            ; $50C3: $20 $61

    ld l, h                                       ; $50C5: $6C
    ld [hl], a                                    ; $50C6: $77

jr_023_50C7:
    ld h, c                                       ; $50C7: $61
    ld a, c                                       ; $50C8: $79
    ld [hl], e                                    ; $50C9: $73
    jr nz, jr_023_5133                            ; $50CA: $20 $67

    ld l, a                                       ; $50CC: $6F
    rst $38                                       ; $50CD: $FF
    ld [hl], h                                    ; $50CE: $74
    ld l, a                                       ; $50CF: $6F
    jr nz, jr_023_5146                            ; $50D0: $20 $74

jr_023_50D2:
    ld l, b                                       ; $50D2: $68
    ld h, l                                       ; $50D3: $65
    jr nz, jr_023_5129                            ; $50D4: $20 $53

    ld h, l                                       ; $50D6: $65
    ld h, l                                       ; $50D7: $65
    ld [hl], d                                    ; $50D8: $72
    cp $6F                                        ; $50D9: $FE $6F

jr_023_50DB:
    ld l, [hl]                                    ; $50DB: $6E
    jr nz, jr_023_5152                            ; $50DC: $20 $74

    ld l, b                                       ; $50DE: $68
    ld h, l                                       ; $50DF: $65
    jr nz, jr_023_514E                            ; $50E0: $20 $6C

    ld h, c                                       ; $50E2: $61
    ld l, e                                       ; $50E3: $6B
    ld h, l                                       ; $50E4: $65
    ld l, $FE                                     ; $50E5: $2E $FE
    db $FD                                        ; $50E7: $FD
    sbc d                                         ; $50E8: $9A
    ld e, b                                       ; $50E9: $58
    ld bc, $9B42                                  ; $50EA: $01 $42 $9B
    ld [$9F72], sp                                ; $50ED: $08 $72 $9F
    ld c, b                                       ; $50F0: $48
    ld l, c                                       ; $50F1: $69
    ld a, c                                       ; $50F2: $79
    ld h, c                                       ; $50F3: $61
    jr nz, jr_023_514A                            ; $50F4: $20 $54

jr_023_50F6:
    ld l, a                                       ; $50F6: $6F
    ld l, [hl]                                    ; $50F7: $6E
    ld a, c                                       ; $50F8: $79
    ld hl, $57FE                                  ; $50F9: $21 $FE $57
    ld l, b                                       ; $50FC: $68
    ld h, c                                       ; $50FD: $61
    ld [hl], h                                    ; $50FE: $74
    jr nz, @+$7B                                  ; $50FF: $20 $79

    ld h, c                                       ; $5101: $61

jr_023_5102:
    jr nz, @+$77                                  ; $5102: $20 $75

    ld [hl], b                                    ; $5104: $70
    jr nz, jr_023_517B                            ; $5105: $20 $74

    ld l, a                                       ; $5107: $6F
    ccf                                           ; $5108: $3F
    cp $FD                                        ; $5109: $FE $FD
    sbc d                                         ; $510B: $9A
    ld e, b                                       ; $510C: $58
    ld bc, $9B42                                  ; $510D: $01 $42 $9B
    ld l, c                                       ; $5110: $69
    ld c, c                                       ; $5111: $49
    sbc a                                         ; $5112: $9F
    ld d, h                                       ; $5113: $54
    ld l, a                                       ; $5114: $6F

jr_023_5115:
    ld l, [hl]                                    ; $5115: $6E
    ld a, c                                       ; $5116: $79
    inc l                                         ; $5117: $2C
    jr nz, jr_023_517E                            ; $5118: $20 $64

    ld l, c                                       ; $511A: $69
    ld h, h                                       ; $511B: $64
    jr nz, jr_023_5197                            ; $511C: $20 $79

    ld l, a                                       ; $511E: $6F
    ld [hl], l                                    ; $511F: $75
    rst $38                                       ; $5120: $FF
    ld h, [hl]                                    ; $5121: $66
    ld l, a                                       ; $5122: $6F
    ld l, h                                       ; $5123: $6C
    ld l, h                                       ; $5124: $6C
    ld l, a                                       ; $5125: $6F

jr_023_5126:
    ld [hl], a                                    ; $5126: $77
    jr nz, jr_023_519E                            ; $5127: $20 $75

jr_023_5129:
    ld [hl], e                                    ; $5129: $73
    ccf                                           ; $512A: $3F
    cp $41                                        ; $512B: $FE $41
    ld [hl], a                                    ; $512D: $77
    inc l                                         ; $512E: $2C
    jr nz, jr_023_51A5                            ; $512F: $20 $74

    ld l, b                                       ; $5131: $68
    ld h, c                                       ; $5132: $61

jr_023_5133:
    ld [hl], h                                    ; $5133: $74
    daa                                           ; $5134: $27
    ld [hl], e                                    ; $5135: $73
    jr nz, jr_023_51AB                            ; $5136: $20 $73

    ld l, a                                       ; $5138: $6F
    rst $38                                       ; $5139: $FF
    ld [hl], e                                    ; $513A: $73
    ld [hl], a                                    ; $513B: $77
    ld h, l                                       ; $513C: $65
    ld h, l                                       ; $513D: $65
    ld [hl], h                                    ; $513E: $74
    ld hl, $4820                                  ; $513F: $21 $20 $48
    ld h, l                                       ; $5142: $65
    ld [hl], d                                    ; $5143: $72
    ld h, l                                       ; $5144: $65
    inc l                                         ; $5145: $2C

jr_023_5146:
    cp $74                                        ; $5146: $FE $74
    ld l, b                                       ; $5148: $68
    ld l, c                                       ; $5149: $69

jr_023_514A:
    ld [hl], e                                    ; $514A: $73
    jr nz, jr_023_51B6                            ; $514B: $20 $69

    ld [hl], e                                    ; $514D: $73

jr_023_514E:
    jr nz, jr_023_51B6                            ; $514E: $20 $66

    ld l, a                                       ; $5150: $6F
    ld [hl], d                                    ; $5151: $72

jr_023_5152:
    rst $38                                       ; $5152: $FF
    ld a, c                                       ; $5153: $79
    ld l, a                                       ; $5154: $6F
    ld [hl], l                                    ; $5155: $75
    ld l, $FE                                     ; $5156: $2E $FE
    db $FD                                        ; $5158: $FD
    sbc d                                         ; $5159: $9A
    sbc a                                         ; $515A: $9F
    ld d, h                                       ; $515B: $54
    ld l, a                                       ; $515C: $6F
    ld l, [hl]                                    ; $515D: $6E
    ld a, c                                       ; $515E: $79
    jr nz, jr_023_51C8                            ; $515F: $20 $67

    ld l, a                                       ; $5161: $6F
    ld [hl], h                                    ; $5162: $74
    cp $53                                        ; $5163: $FE $53
    ld [hl], b                                    ; $5165: $70
    ld l, c                                       ; $5166: $69
    ld h, e                                       ; $5167: $63
    ld h, l                                       ; $5168: $65
    jr nz, jr_023_51DA                            ; $5169: $20 $6F

    ld h, [hl]                                    ; $516B: $66
    rst $38                                       ; $516C: $FF
    ld c, h                                       ; $516D: $4C
    ld l, c                                       ; $516E: $69
    ld h, [hl]                                    ; $516F: $66
    ld h, l                                       ; $5170: $65
    ld hl, $FDFE                                  ; $5171: $21 $FE $FD
    sbc d                                         ; $5174: $9A
    add a                                         ; $5175: $87
    ld [bc], a                                    ; $5176: $02
    inc e                                         ; $5177: $1C
    ld bc, $0158                                  ; $5178: $01 $58 $01

jr_023_517B:
    ld b, d                                       ; $517B: $42
    sbc e                                         ; $517C: $9B
    ld sp, hl                                     ; $517D: $F9

jr_023_517E:
    ld c, d                                       ; $517E: $4A
    sbc a                                         ; $517F: $9F
    ld d, h                                       ; $5180: $54
    ld l, a                                       ; $5181: $6F
    ld l, [hl]                                    ; $5182: $6E
    ld a, c                                       ; $5183: $79
    inc l                                         ; $5184: $2C
    jr nz, jr_023_5200                            ; $5185: $20 $79

    ld l, a                                       ; $5187: $6F
    ld [hl], l                                    ; $5188: $75
    jr nz, jr_023_51EE                            ; $5189: $20 $63

    ld h, c                                       ; $518B: $61
    ld l, l                                       ; $518C: $6D
    ld h, l                                       ; $518D: $65
    rst $38                                       ; $518E: $FF
    ld h, c                                       ; $518F: $61
    ld l, h                                       ; $5190: $6C
    ld l, h                                       ; $5191: $6C
    jr nz, @+$76                                  ; $5192: $20 $74

    ld l, b                                       ; $5194: $68
    ld l, c                                       ; $5195: $69
    ld [hl], e                                    ; $5196: $73

jr_023_5197:
    jr nz, jr_023_5210                            ; $5197: $20 $77

    ld h, c                                       ; $5199: $61
    ld a, c                                       ; $519A: $79
    jr nz, jr_023_5211                            ; $519B: $20 $74

    ld l, a                                       ; $519D: $6F

jr_023_519E:
    cp $73                                        ; $519E: $FE $73
    ld h, l                                       ; $51A0: $65
    ld h, l                                       ; $51A1: $65
    jr nz, jr_023_5219                            ; $51A2: $20 $75

    ld [hl], e                                    ; $51A4: $73

jr_023_51A5:
    ccf                                           ; $51A5: $3F
    jr nz, jr_023_51FF                            ; $51A6: $20 $57

    ld l, b                                       ; $51A8: $68
    ld h, c                                       ; $51A9: $61
    ld [hl], h                                    ; $51AA: $74

jr_023_51AB:
    ld [hl], h                                    ; $51AB: $74
    ld h, c                                       ; $51AC: $61
    rst $38                                       ; $51AD: $FF
    ld h, a                                       ; $51AE: $67
    ld [hl], l                                    ; $51AF: $75
    ld a, c                                       ; $51B0: $79
    ld hl, $4820                                  ; $51B1: $21 $20 $48
    ld h, l                                       ; $51B4: $65
    ld [hl], d                                    ; $51B5: $72

jr_023_51B6:
    ld h, l                                       ; $51B6: $65
    inc l                                         ; $51B7: $2C
    jr nz, jr_023_522E                            ; $51B8: $20 $74

    ld h, c                                       ; $51BA: $61
    ld l, e                                       ; $51BB: $6B
    ld h, l                                       ; $51BC: $65
    cp $74                                        ; $51BD: $FE $74
    ld l, b                                       ; $51BF: $68
    ld l, c                                       ; $51C0: $69
    ld [hl], e                                    ; $51C1: $73
    ld l, $FE                                     ; $51C2: $2E $FE
    db $FD                                        ; $51C4: $FD
    sbc d                                         ; $51C5: $9A
    sbc a                                         ; $51C6: $9F
    ld d, h                                       ; $51C7: $54

jr_023_51C8:
    ld l, a                                       ; $51C8: $6F
    ld l, [hl]                                    ; $51C9: $6E
    ld a, c                                       ; $51CA: $79
    jr nz, @+$69                                  ; $51CB: $20 $67

    ld l, a                                       ; $51CD: $6F
    ld [hl], h                                    ; $51CE: $74
    cp $50                                        ; $51CF: $FE $50
    ld l, c                                       ; $51D1: $69
    ld l, [hl]                                    ; $51D2: $6E
    ld h, e                                       ; $51D3: $63
    ld l, b                                       ; $51D4: $68
    jr nz, jr_023_5246                            ; $51D5: $20 $6F

    ld h, [hl]                                    ; $51D7: $66
    rst $38                                       ; $51D8: $FF
    ld c, h                                       ; $51D9: $4C

jr_023_51DA:
    ld l, c                                       ; $51DA: $69
    ld h, [hl]                                    ; $51DB: $66
    ld h, l                                       ; $51DC: $65
    ld hl, $FDFE                                  ; $51DD: $21 $FE $FD
    sbc d                                         ; $51E0: $9A
    add a                                         ; $51E1: $87
    ld [bc], a                                    ; $51E2: $02
    ld d, $01                                     ; $51E3: $16 $01
    ld e, b                                       ; $51E5: $58
    ld bc, $9B42                                  ; $51E6: $01 $42 $9B
    ld l, c                                       ; $51E9: $69
    ld c, c                                       ; $51EA: $49
    sbc a                                         ; $51EB: $9F
    ld d, h                                       ; $51EC: $54
    ld l, b                                       ; $51ED: $68

jr_023_51EE:
    ld h, c                                       ; $51EE: $61
    ld l, [hl]                                    ; $51EF: $6E
    ld l, e                                       ; $51F0: $6B
    ld [hl], e                                    ; $51F1: $73
    jr nz, jr_023_525A                            ; $51F2: $20 $66

    ld l, a                                       ; $51F4: $6F
    ld [hl], d                                    ; $51F5: $72
    rst $38                                       ; $51F6: $FF
    ld h, e                                       ; $51F7: $63
    ld l, a                                       ; $51F8: $6F
    ld l, l                                       ; $51F9: $6D
    ld l, c                                       ; $51FA: $69
    ld l, [hl]                                    ; $51FB: $6E
    ld h, a                                       ; $51FC: $67
    jr nz, jr_023_526E                            ; $51FD: $20 $6F

jr_023_51FF:
    ld [hl], l                                    ; $51FF: $75

jr_023_5200:
    ld [hl], h                                    ; $5200: $74
    ld hl, $FDFE                                  ; $5201: $21 $FE $FD
    sbc d                                         ; $5204: $9A
    ld e, b                                       ; $5205: $58
    ld bc, $9B42                                  ; $5206: $01 $42 $9B
    ld sp, hl                                     ; $5209: $F9
    ld c, d                                       ; $520A: $4A
    sbc a                                         ; $520B: $9F
    ld b, e                                       ; $520C: $43
    ld l, a                                       ; $520D: $6F
    ld [hl], l                                    ; $520E: $75
    ld [hl], e                                    ; $520F: $73

jr_023_5210:
    ld l, c                                       ; $5210: $69

jr_023_5211:
    ld l, [hl]                                    ; $5211: $6E
    jr nz, jr_023_5268                            ; $5212: $20 $54

    ld [hl], d                                    ; $5214: $72
    ld a, c                                       ; $5215: $79
    ld l, [hl]                                    ; $5216: $6E
    rst $38                                       ; $5217: $FF
    ld l, c                                       ; $5218: $69

jr_023_5219:
    ld [hl], e                                    ; $5219: $73
    jr nz, @+$75                                  ; $521A: $20 $73

    ld l, a                                       ; $521C: $6F
    jr nz, jr_023_528D                            ; $521D: $20 $6E

    ld l, c                                       ; $521F: $69
    ld h, e                                       ; $5220: $63
    ld h, l                                       ; $5221: $65
    ld hl, $FDFE                                  ; $5222: $21 $FE $FD
    sbc d                                         ; $5225: $9A
    ld e, b                                       ; $5226: $58
    ld bc, $9B42                                  ; $5227: $01 $42 $9B
    ld [$9F72], sp                                ; $522A: $08 $72 $9F
    ld c, l                                       ; $522D: $4D

jr_023_522E:
    ld a, c                                       ; $522E: $79
    jr nz, jr_023_52A5                            ; $522F: $20 $74

    ld [hl], a                                    ; $5231: $77
    ld l, a                                       ; $5232: $6F
    jr nz, jr_023_5298                            ; $5233: $20 $63

    ld l, a                                       ; $5235: $6F
    ld [hl], l                                    ; $5236: $75
    ld [hl], e                                    ; $5237: $73
    ld l, c                                       ; $5238: $69
    ld l, [hl]                                    ; $5239: $6E
    ld [hl], e                                    ; $523A: $73
    rst $38                                       ; $523B: $FF
    ld b, l                                       ; $523C: $45
    ld [hl], d                                    ; $523D: $72
    ld a, c                                       ; $523E: $79
    ld l, [hl]                                    ; $523F: $6E
    jr nz, jr_023_52A3                            ; $5240: $20 $61

    ld l, [hl]                                    ; $5242: $6E
    ld h, h                                       ; $5243: $64
    jr nz, jr_023_5291                            ; $5244: $20 $4B

jr_023_5246:
    ld h, c                                       ; $5246: $61
    ld [hl], d                                    ; $5247: $72
    ld a, c                                       ; $5248: $79
    ld l, [hl]                                    ; $5249: $6E
    cp $77                                        ; $524A: $FE $77
    ld h, l                                       ; $524C: $65
    ld [hl], d                                    ; $524D: $72
    ld h, l                                       ; $524E: $65
    jr nz, jr_023_52C4                            ; $524F: $20 $73

    ld [hl], l                                    ; $5251: $75
    ld [hl], b                                    ; $5252: $70
    ld [hl], b                                    ; $5253: $70
    ld l, a                                       ; $5254: $6F
    ld [hl], e                                    ; $5255: $73
    ld h, l                                       ; $5256: $65
    ld h, h                                       ; $5257: $64
    rst $38                                       ; $5258: $FF
    ld [hl], h                                    ; $5259: $74

jr_023_525A:
    ld l, a                                       ; $525A: $6F
    jr nz, jr_023_52C0                            ; $525B: $20 $63

    ld l, a                                       ; $525D: $6F
    ld l, l                                       ; $525E: $6D
    ld h, l                                       ; $525F: $65
    jr nz, @+$78                                  ; $5260: $20 $76

jr_023_5262:
    ld l, c                                       ; $5262: $69
    ld [hl], e                                    ; $5263: $73
    ld l, c                                       ; $5264: $69
    ld [hl], h                                    ; $5265: $74
    cp $6D                                        ; $5266: $FE $6D

jr_023_5268:
    ld h, l                                       ; $5268: $65
    jr nz, jr_023_52DF                            ; $5269: $20 $74

    ld l, a                                       ; $526B: $6F
    ld h, h                                       ; $526C: $64
    ld h, c                                       ; $526D: $61

jr_023_526E:
    ld a, c                                       ; $526E: $79
    ld l, $2E                                     ; $526F: $2E $2E
    ld l, $FF                                     ; $5271: $2E $FF
    ld c, c                                       ; $5273: $49
    jr nz, jr_023_52DE                            ; $5274: $20 $68

    ld l, a                                       ; $5276: $6F
    ld [hl], b                                    ; $5277: $70
    ld h, l                                       ; $5278: $65
    jr nz, jr_023_52E9                            ; $5279: $20 $6E

    ld l, a                                       ; $527B: $6F
    ld [hl], h                                    ; $527C: $74
    ld l, b                                       ; $527D: $68
    ld l, c                                       ; $527E: $69
    ld l, [hl]                                    ; $527F: $6E
    ld h, a                                       ; $5280: $67
    cp $62                                        ; $5281: $FE $62
    ld h, c                                       ; $5283: $61
    ld h, h                                       ; $5284: $64
    jr nz, jr_023_52EF                            ; $5285: $20 $68

jr_023_5287:
    ld h, c                                       ; $5287: $61
    ld [hl], b                                    ; $5288: $70
    ld [hl], b                                    ; $5289: $70
    ld h, l                                       ; $528A: $65
    ld l, [hl]                                    ; $528B: $6E
    ld h, l                                       ; $528C: $65

jr_023_528D:
    ld h, h                                       ; $528D: $64
    jr nz, jr_023_5304                            ; $528E: $20 $74

    ld l, a                                       ; $5290: $6F

jr_023_5291:
    rst $38                                       ; $5291: $FF
    ld [hl], h                                    ; $5292: $74
    ld l, b                                       ; $5293: $68
    ld h, l                                       ; $5294: $65
    ld l, l                                       ; $5295: $6D
    ld l, $FE                                     ; $5296: $2E $FE

jr_023_5298:
    db $FD                                        ; $5298: $FD
    sbc d                                         ; $5299: $9A
    ld e, b                                       ; $529A: $58
    ld bc, $9342                                  ; $529B: $01 $42 $93
    ld h, l                                       ; $529E: $65
    and d                                         ; $529F: $A2
    ld b, e                                       ; $52A0: $43
    ld c, a                                       ; $52A1: $4F
    ld h, h                                       ; $52A2: $64

jr_023_52A3:
    inc hl                                        ; $52A3: $23
    ld b, h                                       ; $52A4: $44

jr_023_52A5:
    ld l, c                                       ; $52A5: $69
    jr z, jr_023_52EC                             ; $52A6: $28 $44

    ld h, [hl]                                    ; $52A8: $66
    ret nz                                        ; $52A9: $C0

    ld e, h                                       ; $52AA: $5C
    ld hl, $0005                                  ; $52AB: $21 $05 $00
    add c                                         ; $52AE: $81
    ld e, l                                       ; $52AF: $5D
    dec b                                         ; $52B0: $05
    ld de, $D0C0                                  ; $52B1: $11 $C0 $D0
    nop                                           ; $52B4: $00
    jr nz, jr_023_5262                            ; $52B5: $20 $AB

    ld d, b                                       ; $52B7: $50
    ld [hl+], a                                   ; $52B8: $22
    dec b                                         ; $52B9: $05
    ld b, b                                       ; $52BA: $40
    dec bc                                        ; $52BB: $0B
    nop                                           ; $52BC: $00
    add d                                         ; $52BD: $82
    rra                                           ; $52BE: $1F
    ld a, [de]                                    ; $52BF: $1A

jr_023_52C0:
    sub h                                         ; $52C0: $94
    ld b, d                                       ; $52C1: $42
    sub e                                         ; $52C2: $93
    ld h, l                                       ; $52C3: $65

jr_023_52C4:
    and d                                         ; $52C4: $A2
    ld b, e                                       ; $52C5: $43
    ld c, a                                       ; $52C6: $4F
    ld h, h                                       ; $52C7: $64
    inc hl                                        ; $52C8: $23
    ld b, h                                       ; $52C9: $44
    ld l, c                                       ; $52CA: $69
    jr z, jr_023_5311                             ; $52CB: $28 $44

    ld h, [hl]                                    ; $52CD: $66
    ret nz                                        ; $52CE: $C0

    ld e, h                                       ; $52CF: $5C
    ld hl, $0005                                  ; $52D0: $21 $05 $00
    add c                                         ; $52D3: $81
    ld e, l                                       ; $52D4: $5D
    dec b                                         ; $52D5: $05
    ld de, $D0C0                                  ; $52D6: $11 $C0 $D0
    nop                                           ; $52D9: $00
    jr nz, jr_023_5287                            ; $52DA: $20 $AB

    ld d, b                                       ; $52DC: $50
    ld [hl+], a                                   ; $52DD: $22

jr_023_52DE:
    dec b                                         ; $52DE: $05

jr_023_52DF:
    ld b, b                                       ; $52DF: $40
    dec b                                         ; $52E0: $05
    ld [bc], a                                    ; $52E1: $02
    db $ED                                        ; $52E2: $ED
    ld h, e                                       ; $52E3: $63
    dec b                                         ; $52E4: $05
    dec bc                                        ; $52E5: $0B
    ld a, [hl]                                    ; $52E6: $7E
    ret nc                                        ; $52E7: $D0

    nop                                           ; $52E8: $00

jr_023_52E9:
    inc hl                                        ; $52E9: $23
    ld b, e                                       ; $52EA: $43
    ld d, e                                       ; $52EB: $53

jr_023_52EC:
    inc hl                                        ; $52EC: $23
    ld c, l                                       ; $52ED: $4D
    ld d, e                                       ; $52EE: $53

jr_023_52EF:
    dec b                                         ; $52EF: $05
    inc bc                                        ; $52F0: $03
    db $ED                                        ; $52F1: $ED
    ld h, e                                       ; $52F2: $63
    dec b                                         ; $52F3: $05
    inc bc                                        ; $52F4: $03
    ld h, $D0                                     ; $52F5: $26 $D0
    jr nc, jr_023_5309                            ; $52F7: $30 $10

    dec d                                         ; $52F9: $15
    ld [hl], b                                    ; $52FA: $70
    inc hl                                        ; $52FB: $23
    ld d, l                                       ; $52FC: $55
    ld d, e                                       ; $52FD: $53
    dec b                                         ; $52FE: $05
    inc b                                         ; $52FF: $04
    db $ED                                        ; $5300: $ED
    ld h, e                                       ; $5301: $63
    ld b, $03                                     ; $5302: $06 $03

jr_023_5304:
    daa                                           ; $5304: $27
    ret nc                                        ; $5305: $D0

    jr nc, jr_023_5318                            ; $5306: $30 $10

    add hl, hl                                    ; $5308: $29

jr_023_5309:
    ld [hl], b                                    ; $5309: $70
    inc hl                                        ; $530A: $23
    add d                                         ; $530B: $82
    ld d, e                                       ; $530C: $53
    dec b                                         ; $530D: $05
    dec b                                         ; $530E: $05
    db $ED                                        ; $530F: $ED
    ld h, e                                       ; $5310: $63

jr_023_5311:
    dec b                                         ; $5311: $05
    dec c                                         ; $5312: $0D
    sub h                                         ; $5313: $94
    ret nc                                        ; $5314: $D0

    ld h, b                                       ; $5315: $60
    inc hl                                        ; $5316: $23
    ld c, b                                       ; $5317: $48

jr_023_5318:
    ld d, e                                       ; $5318: $53
    inc hl                                        ; $5319: $23
    adc d                                         ; $531A: $8A
    ld d, e                                       ; $531B: $53
    dec bc                                        ; $531C: $0B
    nop                                           ; $531D: $00
    dec bc                                        ; $531E: $0B
    ld [bc], a                                    ; $531F: $02
    dec bc                                        ; $5320: $0B
    inc bc                                        ; $5321: $03
    dec bc                                        ; $5322: $0B
    inc b                                         ; $5323: $04
    dec bc                                        ; $5324: $0B
    dec b                                         ; $5325: $05
    ld l, e                                       ; $5326: $6B
    jr nc, jr_023_5334                            ; $5327: $30 $0B

    or b                                          ; $5329: $B0
    ld h, h                                       ; $532A: $64
    nop                                           ; $532B: $00
    add b                                         ; $532C: $80
    nop                                           ; $532D: $00
    ld l, e                                       ; $532E: $6B
    jr nc, jr_023_533D                            ; $532F: $30 $0C

    or b                                          ; $5331: $B0
    ld d, a                                       ; $5332: $57
    nop                                           ; $5333: $00

jr_023_5334:
    add e                                         ; $5334: $83
    nop                                           ; $5335: $00
    ld l, e                                       ; $5336: $6B
    jr nc, jr_023_5344                            ; $5337: $30 $0B

    or b                                          ; $5339: $B0
    ld d, [hl]                                    ; $533A: $56
    nop                                           ; $533B: $00
    add [hl]                                      ; $533C: $86

jr_023_533D:
    nop                                           ; $533D: $00
    add d                                         ; $533E: $82
    rra                                           ; $533F: $1F
    db $10                                        ; $5340: $10
    sub h                                         ; $5341: $94
    ld b, d                                       ; $5342: $42
    inc d                                         ; $5343: $14

jr_023_5344:
    rrca                                          ; $5344: $0F
    sbc h                                         ; $5345: $9C
    ld h, a                                       ; $5346: $67
    ld b, d                                       ; $5347: $42
    inc d                                         ; $5348: $14
    rrca                                          ; $5349: $0F
    ld d, l                                       ; $534A: $55
    ld e, c                                       ; $534B: $59
    ld b, d                                       ; $534C: $42
    ld e, e                                       ; $534D: $5B
    inc hl                                        ; $534E: $23
    cp [hl]                                       ; $534F: $BE
    ld d, e                                       ; $5350: $53
    ld b, l                                       ; $5351: $45
    rrca                                          ; $5352: $0F
    ld [c], a                                     ; $5353: $E2
    ld h, a                                       ; $5354: $67
    inc d                                         ; $5355: $14
    db $10                                        ; $5356: $10
    dec d                                         ; $5357: $15
    ld [hl], b                                    ; $5358: $70
    ld e, e                                       ; $5359: $5B
    inc hl                                        ; $535A: $23
    pop af                                        ; $535B: $F1
    ld d, e                                       ; $535C: $53
    dec d                                         ; $535D: $15
    db $10                                        ; $535E: $10
    dec a                                         ; $535F: $3D
    ld [hl], b                                    ; $5360: $70
    ld [$1510], sp                                ; $5361: $08 $10 $15
    ld [hl], b                                    ; $5364: $70
    ld [$4710], sp                                ; $5365: $08 $10 $47
    ld [hl], b                                    ; $5368: $70
    ld [$1510], sp                                ; $5369: $08 $10 $15
    ld [hl], b                                    ; $536C: $70
    ld [$3D10], sp                                ; $536D: $08 $10 $3D
    ld [hl], b                                    ; $5370: $70
    ld [$1510], sp                                ; $5371: $08 $10 $15
    ld [hl], b                                    ; $5374: $70
    ld [$4710], sp                                ; $5375: $08 $10 $47
    ld [hl], b                                    ; $5378: $70
    ld [$1510], sp                                ; $5379: $08 $10 $15
    ld [hl], b                                    ; $537C: $70
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    ld h, d                                       ; $537F: $62
    ld bc, $5B12                                  ; $5380: $01 $12 $5B
    inc hl                                        ; $5383: $23
    ld a, [hl-]                                   ; $5384: $3A
    ld d, h                                       ; $5385: $54
    ld b, l                                       ; $5386: $45
    db $10                                        ; $5387: $10
    ld [hl], b                                    ; $5388: $70
    ld [hl], b                                    ; $5389: $70
    inc d                                         ; $538A: $14
    rrca                                          ; $538B: $0F
    ld d, l                                       ; $538C: $55
    ld e, c                                       ; $538D: $59
    ld b, e                                       ; $538E: $43
    nop                                           ; $538F: $00
    ld h, $A1                                     ; $5390: $26 $A1
    inc b                                         ; $5392: $04
    inc hl                                        ; $5393: $23
    sbc [hl]                                      ; $5394: $9E
    ld d, e                                       ; $5395: $53
    ld e, e                                       ; $5396: $5B
    inc hl                                        ; $5397: $23
    ld [hl], b                                    ; $5398: $70
    ld d, h                                       ; $5399: $54
    ld b, l                                       ; $539A: $45
    inc hl                                        ; $539B: $23
    cp d                                          ; $539C: $BA
    ld d, e                                       ; $539D: $53
    ld b, e                                       ; $539E: $43
    nop                                           ; $539F: $00
    daa                                           ; $53A0: $27
    and c                                         ; $53A1: $A1
    ld [bc], a                                    ; $53A2: $02
    inc hl                                        ; $53A3: $23
    xor [hl]                                      ; $53A4: $AE
    ld d, e                                       ; $53A5: $53
    ld e, e                                       ; $53A6: $5B
    inc hl                                        ; $53A7: $23
    db $DB                                        ; $53A8: $DB
    ld d, [hl]                                    ; $53A9: $56
    ld b, l                                       ; $53AA: $45
    inc hl                                        ; $53AB: $23
    cp d                                          ; $53AC: $BA
    ld d, e                                       ; $53AD: $53
    ld b, e                                       ; $53AE: $43
    nop                                           ; $53AF: $00
    daa                                           ; $53B0: $27
    and c                                         ; $53B1: $A1
    inc b                                         ; $53B2: $04
    inc hl                                        ; $53B3: $23
    and [hl]                                      ; $53B4: $A6
    ld d, e                                       ; $53B5: $53
    ld e, e                                       ; $53B6: $5B
    inc hl                                        ; $53B7: $23
    ld b, $56                                     ; $53B8: $06 $56
    ld b, l                                       ; $53BA: $45
    rrca                                          ; $53BB: $0F
    and l                                         ; $53BC: $A5
    ld e, c                                       ; $53BD: $59
    sbc e                                         ; $53BE: $9B
    ld [$9F72], sp                                ; $53BF: $08 $72 $9F
    ld c, b                                       ; $53C2: $48
    ld h, l                                       ; $53C3: $65
    ld a, c                                       ; $53C4: $79
    ld h, c                                       ; $53C5: $61
    jr nz, jr_023_541C                            ; $53C6: $20 $54

    ld l, a                                       ; $53C8: $6F
    ld l, [hl]                                    ; $53C9: $6E
    ld a, c                                       ; $53CA: $79
    ld hl, $49FE                                  ; $53CB: $21 $FE $49
    ld [hl], h                                    ; $53CE: $74
    daa                                           ; $53CF: $27
    ld [hl], e                                    ; $53D0: $73
    jr nz, @+$63                                  ; $53D1: $20 $61

    jr nz, jr_023_543C                            ; $53D3: $20 $67

    ld [hl], d                                    ; $53D5: $72
    ld h, l                                       ; $53D6: $65
    ld h, c                                       ; $53D7: $61
    ld [hl], h                                    ; $53D8: $74
    rst $38                                       ; $53D9: $FF
    ld [hl], b                                    ; $53DA: $70
    ld h, c                                       ; $53DB: $61
    ld [hl], d                                    ; $53DC: $72
    ld [hl], h                                    ; $53DD: $74
    ld a, c                                       ; $53DE: $79
    ld hl, $4CFE                                  ; $53DF: $21 $FE $4C
    ld l, a                                       ; $53E2: $6F
    ld [hl], h                                    ; $53E3: $74
    ld [hl], e                                    ; $53E4: $73
    ld h, c                                       ; $53E5: $61
    jr nz, jr_023_544E                            ; $53E6: $20 $66

    ld [hl], l                                    ; $53E8: $75
    ld l, [hl]                                    ; $53E9: $6E
    ld hl, $FDFE                                  ; $53EA: $21 $FE $FD
    sbc d                                         ; $53ED: $9A
    ld e, b                                       ; $53EE: $58
    ld bc, $9B42                                  ; $53EF: $01 $42 $9B
    ld l, c                                       ; $53F2: $69
    ld c, c                                       ; $53F3: $49
    sbc a                                         ; $53F4: $9F
    ld c, a                                       ; $53F5: $4F
    ld l, a                                       ; $53F6: $6F
    ld l, a                                       ; $53F7: $6F
    ld l, b                                       ; $53F8: $68
    inc l                                         ; $53F9: $2C
    jr nz, jr_023_5445                            ; $53FA: $20 $49

    jr nz, jr_023_5461                            ; $53FC: $20 $63

    ld h, c                                       ; $53FE: $61
    ld l, [hl]                                    ; $53FF: $6E
    daa                                           ; $5400: $27
    ld [hl], h                                    ; $5401: $74
    rst $38                                       ; $5402: $FF
    ld [hl], e                                    ; $5403: $73
    ld h, l                                       ; $5404: $65
    ld h, l                                       ; $5405: $65
    jr nz, jr_023_5469                            ; $5406: $20 $61

    ld l, [hl]                                    ; $5408: $6E
    ld a, c                                       ; $5409: $79
    ld [hl], h                                    ; $540A: $74
    ld l, b                                       ; $540B: $68
    ld l, c                                       ; $540C: $69
    ld l, [hl]                                    ; $540D: $6E
    ld h, a                                       ; $540E: $67
    cp $62                                        ; $540F: $FE $62
    ld h, l                                       ; $5411: $65
    ld h, e                                       ; $5412: $63
    ld h, c                                       ; $5413: $61
    ld [hl], l                                    ; $5414: $75
    ld [hl], e                                    ; $5415: $73
    ld h, l                                       ; $5416: $65
    jr nz, @+$76                                  ; $5417: $20 $74

    ld l, b                                       ; $5419: $68
    ld h, l                                       ; $541A: $65
    ld [hl], d                                    ; $541B: $72

jr_023_541C:
    ld h, l                                       ; $541C: $65
    daa                                           ; $541D: $27
    ld [hl], e                                    ; $541E: $73
    rst $38                                       ; $541F: $FF
    ld h, c                                       ; $5420: $61
    jr nz, jr_023_5485                            ; $5421: $20 $62

    ld [hl], d                                    ; $5423: $72
    ld h, c                                       ; $5424: $61
    ld l, [hl]                                    ; $5425: $6E
    ld h, e                                       ; $5426: $63
    ld l, b                                       ; $5427: $68
    jr nz, jr_023_5493                            ; $5428: $20 $69

    ld l, [hl]                                    ; $542A: $6E
    cp $74                                        ; $542B: $FE $74
    ld l, b                                       ; $542D: $68
    ld h, l                                       ; $542E: $65
    jr nz, jr_023_54A8                            ; $542F: $20 $77

    ld h, c                                       ; $5431: $61
    ld a, c                                       ; $5432: $79
    ld hl, $FDFE                                  ; $5433: $21 $FE $FD
    sbc d                                         ; $5436: $9A
    ld e, b                                       ; $5437: $58
    ld bc, $9B42                                  ; $5438: $01 $42 $9B
    ld sp, hl                                     ; $543B: $F9

jr_023_543C:
    ld c, d                                       ; $543C: $4A
    sbc a                                         ; $543D: $9F
    ld c, b                                       ; $543E: $48
    ld l, c                                       ; $543F: $69
    jr nz, jr_023_5496                            ; $5440: $20 $54

    ld l, a                                       ; $5442: $6F
    ld l, [hl]                                    ; $5443: $6E
    ld a, c                                       ; $5444: $79

jr_023_5445:
    ld hl, $5920                                  ; $5445: $21 $20 $59
    ld l, a                                       ; $5448: $6F
    ld [hl], l                                    ; $5449: $75
    daa                                           ; $544A: $27
    ld [hl], d                                    ; $544B: $72
    ld h, l                                       ; $544C: $65
    rst $38                                       ; $544D: $FF

jr_023_544E:
    ld l, a                                       ; $544E: $6F
    ld [hl], l                                    ; $544F: $75
    ld [hl], d                                    ; $5450: $72
    jr nz, jr_023_54B9                            ; $5451: $20 $66

    ld h, c                                       ; $5453: $61
    halt                                          ; $5454: $76
    ld l, a                                       ; $5455: $6F
    ld [hl], d                                    ; $5456: $72
    ld l, c                                       ; $5457: $69
    ld [hl], h                                    ; $5458: $74
    ld h, l                                       ; $5459: $65
    cp $6C                                        ; $545A: $FE $6C
    ld h, l                                       ; $545C: $65
    ld h, a                                       ; $545D: $67
    ld h, l                                       ; $545E: $65
    ld l, [hl]                                    ; $545F: $6E
    ld h, h                                       ; $5460: $64

jr_023_5461:
    ld h, c                                       ; $5461: $61
    ld [hl], d                                    ; $5462: $72
    ld a, c                                       ; $5463: $79
    rst $38                                       ; $5464: $FF
    ld l, b                                       ; $5465: $68
    ld h, l                                       ; $5466: $65
    ld [hl], d                                    ; $5467: $72
    ld l, a                                       ; $5468: $6F

jr_023_5469:
    ld hl, $FDFE                                  ; $5469: $21 $FE $FD
    sbc d                                         ; $546C: $9A
    ld e, b                                       ; $546D: $58
    ld bc, $9B42                                  ; $546E: $01 $42 $9B
    jr jr_023_54DA                                ; $5471: $18 $67

    sbc a                                         ; $5473: $9F
    ld d, e                                       ; $5474: $53
    ld l, a                                       ; $5475: $6F
    ld [hl], d                                    ; $5476: $72
    ld [hl], d                                    ; $5477: $72
    ld a, c                                       ; $5478: $79
    inc l                                         ; $5479: $2C
    jr nz, jr_023_54F0                            ; $547A: $20 $74

    ld l, b                                       ; $547C: $68
    ld h, l                                       ; $547D: $65
    jr nz, jr_023_54E9                            ; $547E: $20 $69

    ld l, [hl]                                    ; $5480: $6E
    ld l, [hl]                                    ; $5481: $6E
    rst $38                                       ; $5482: $FF
    ld l, c                                       ; $5483: $69
    ld [hl], e                                    ; $5484: $73

jr_023_5485:
    jr nz, jr_023_54EA                            ; $5485: $20 $63

    ld l, h                                       ; $5487: $6C
    ld l, a                                       ; $5488: $6F
    ld [hl], e                                    ; $5489: $73
    ld h, l                                       ; $548A: $65
    ld h, h                                       ; $548B: $64
    jr nz, jr_023_54F4                            ; $548C: $20 $66

    ld l, a                                       ; $548E: $6F
    ld [hl], d                                    ; $548F: $72
    cp $74                                        ; $5490: $FE $74
    ld l, a                                       ; $5492: $6F

jr_023_5493:
    ld h, h                                       ; $5493: $64
    ld h, c                                       ; $5494: $61
    ld a, c                                       ; $5495: $79

jr_023_5496:
    ld l, $FE                                     ; $5496: $2E $FE
    db $FD                                        ; $5498: $FD
    sbc e                                         ; $5499: $9B
    ld a, b                                       ; $549A: $78
    ld [hl], b                                    ; $549B: $70
    sbc a                                         ; $549C: $9F
    ld d, h                                       ; $549D: $54
    ld l, b                                       ; $549E: $68
    ld h, c                                       ; $549F: $61
    ld [hl], h                                    ; $54A0: $74
    daa                                           ; $54A1: $27
    ld [hl], e                                    ; $54A2: $73
    jr nz, jr_023_5514                            ; $54A3: $20 $6F

    ld l, e                                       ; $54A5: $6B
    ld h, c                                       ; $54A6: $61
    ld a, c                                       ; $54A7: $79

jr_023_54A8:
    ld l, $FE                                     ; $54A8: $2E $FE
    db $FD                                        ; $54AA: $FD
    ld b, e                                       ; $54AB: $43
    nop                                           ; $54AC: $00
    daa                                           ; $54AD: $27
    and c                                         ; $54AE: $A1
    ld [bc], a                                    ; $54AF: $02
    inc hl                                        ; $54B0: $23
    dec [hl]                                      ; $54B1: $35
    ld d, l                                       ; $54B2: $55
    sbc e                                         ; $54B3: $9B
    jr jr_023_551D                                ; $54B4: $18 $67

    sbc a                                         ; $54B6: $9F
    ld b, d                                       ; $54B7: $42
    ld l, a                                       ; $54B8: $6F

jr_023_54B9:
    ld a, c                                       ; $54B9: $79
    inc l                                         ; $54BA: $2C
    jr nz, @+$4B                                  ; $54BB: $20 $49

    daa                                           ; $54BD: $27
    ld l, l                                       ; $54BE: $6D
    jr nz, jr_023_5534                            ; $54BF: $20 $73

    ld l, a                                       ; $54C1: $6F
    rst $38                                       ; $54C2: $FF
    ld l, b                                       ; $54C3: $68
    ld [hl], l                                    ; $54C4: $75
    ld l, [hl]                                    ; $54C5: $6E
    ld h, a                                       ; $54C6: $67
    ld [hl], d                                    ; $54C7: $72
    ld a, c                                       ; $54C8: $79
    ld l, $2E                                     ; $54C9: $2E $2E
    ld l, $20                                     ; $54CB: $2E $20
    ld l, l                                       ; $54CD: $6D
    ld h, c                                       ; $54CE: $61
    ld a, c                                       ; $54CF: $79
    ld h, d                                       ; $54D0: $62
    ld h, l                                       ; $54D1: $65
    cp $49                                        ; $54D2: $FE $49
    daa                                           ; $54D4: $27
    ld l, h                                       ; $54D5: $6C
    ld l, h                                       ; $54D6: $6C
    jr nz, jr_023_5540                            ; $54D7: $20 $67

    ld l, a                                       ; $54D9: $6F

jr_023_54DA:
    jr nz, jr_023_5542                            ; $54DA: $20 $66

    ld l, c                                       ; $54DC: $69
    ld a, b                                       ; $54DD: $78
    rst $38                                       ; $54DE: $FF
    ld l, l                                       ; $54DF: $6D
    ld a, c                                       ; $54E0: $79
    ld [hl], e                                    ; $54E1: $73
    ld h, l                                       ; $54E2: $65
    ld l, h                                       ; $54E3: $6C
    ld h, [hl]                                    ; $54E4: $66
    jr nz, jr_023_5548                            ; $54E5: $20 $61

    jr nz, jr_023_5559                            ; $54E7: $20 $70

jr_023_54E9:
    ld l, c                                       ; $54E9: $69

jr_023_54EA:
    ld h, l                                       ; $54EA: $65
    cp $77                                        ; $54EB: $FE $77
    ld l, c                                       ; $54ED: $69
    ld [hl], h                                    ; $54EE: $74
    ld l, b                                       ; $54EF: $68

jr_023_54F0:
    jr nz, jr_023_5566                            ; $54F0: $20 $74

    ld l, b                                       ; $54F2: $68
    ld h, l                                       ; $54F3: $65

jr_023_54F4:
    ld [hl], e                                    ; $54F4: $73
    ld h, l                                       ; $54F5: $65
    rst $38                                       ; $54F6: $FF
    ld l, d                                       ; $54F7: $6A
    ld h, l                                       ; $54F8: $65
    ld l, h                                       ; $54F9: $6C
    ld l, h                                       ; $54FA: $6C
    ld a, c                                       ; $54FB: $79
    ld h, d                                       ; $54FC: $62
    ld h, l                                       ; $54FD: $65
    ld h, c                                       ; $54FE: $61
    ld l, [hl]                                    ; $54FF: $6E
    ld [hl], e                                    ; $5500: $73
    ld l, $FE                                     ; $5501: $2E $FE
    db $FD                                        ; $5503: $FD
    sbc e                                         ; $5504: $9B
    ld [$9F72], sp                                ; $5505: $08 $72 $9F
    ld c, l                                       ; $5508: $4D
    ld h, c                                       ; $5509: $61
    ld l, e                                       ; $550A: $6B
    ld h, l                                       ; $550B: $65
    jr nz, @+$67                                  ; $550C: $20 $65

    ld l, [hl]                                    ; $550E: $6E
    ld l, a                                       ; $550F: $6F
    ld [hl], l                                    ; $5510: $75
    ld h, a                                       ; $5511: $67
    ld l, b                                       ; $5512: $68
    rst $38                                       ; $5513: $FF

jr_023_5514:
    ld h, [hl]                                    ; $5514: $66
    ld l, a                                       ; $5515: $6F
    ld [hl], d                                    ; $5516: $72
    jr nz, jr_023_5586                            ; $5517: $20 $6D

    ld h, l                                       ; $5519: $65
    jr nz, jr_023_5590                            ; $551A: $20 $74

    ld l, a                                       ; $551C: $6F

jr_023_551D:
    ld l, a                                       ; $551D: $6F
    inc l                                         ; $551E: $2C
    cp $6F                                        ; $551F: $FE $6F
    ld l, e                                       ; $5521: $6B
    ld h, c                                       ; $5522: $61
    ld a, c                                       ; $5523: $79
    jr nz, jr_023_5576                            ; $5524: $20 $50

    ld l, a                                       ; $5526: $6F
    ld h, c                                       ; $5527: $61
    ld h, h                                       ; $5528: $64
    ld a, c                                       ; $5529: $79
    ccf                                           ; $552A: $3F
    cp $FD                                        ; $552B: $FE $FD
    sbc d                                         ; $552D: $9A
    ld e, b                                       ; $552E: $58
    ld bc, $26AF                                  ; $552F: $01 $AF $26
    and c                                         ; $5532: $A1
    inc b                                         ; $5533: $04

jr_023_5534:
    ld b, d                                       ; $5534: $42
    sbc a                                         ; $5535: $9F
    ld b, d                                       ; $5536: $42
    ld a, c                                       ; $5537: $79
    jr nz, @+$76                                  ; $5538: $20 $74

    ld l, b                                       ; $553A: $68
    ld h, l                                       ; $553B: $65
    jr nz, @+$79                                  ; $553C: $20 $77

    ld h, c                                       ; $553E: $61
    ld a, c                                       ; $553F: $79

jr_023_5540:
    inc l                                         ; $5540: $2C
    rst $38                                       ; $5541: $FF

jr_023_5542:
    ld h, h                                       ; $5542: $64
    ld l, a                                       ; $5543: $6F
    jr nz, @+$7B                                  ; $5544: $20 $79

    ld l, a                                       ; $5546: $6F
    ld [hl], l                                    ; $5547: $75

jr_023_5548:
    jr nz, jr_023_55B2                            ; $5548: $20 $68

    ld h, c                                       ; $554A: $61
    ld [hl], b                                    ; $554B: $70
    ld [hl], b                                    ; $554C: $70
    ld h, l                                       ; $554D: $65
    ld l, [hl]                                    ; $554E: $6E
    cp $74                                        ; $554F: $FE $74
    ld l, a                                       ; $5551: $6F
    jr nz, jr_023_55BC                            ; $5552: $20 $68

    ld h, c                                       ; $5554: $61
    halt                                          ; $5555: $76
    ld h, l                                       ; $5556: $65
    jr nz, @+$63                                  ; $5557: $20 $61

jr_023_5559:
    ld l, [hl]                                    ; $5559: $6E
    ld a, c                                       ; $555A: $79
    rst $38                                       ; $555B: $FF
    ld l, d                                       ; $555C: $6A
    ld h, l                                       ; $555D: $65
    ld l, h                                       ; $555E: $6C
    ld l, h                                       ; $555F: $6C
    ld a, c                                       ; $5560: $79
    ld h, d                                       ; $5561: $62
    ld h, l                                       ; $5562: $65
    ld h, c                                       ; $5563: $61
    ld l, [hl]                                    ; $5564: $6E
    ld [hl], e                                    ; $5565: $73

jr_023_5566:
    ccf                                           ; $5566: $3F
    cp $FD                                        ; $5567: $FE $FD
    sbc e                                         ; $5569: $9B
    jr jr_023_55D3                                ; $556A: $18 $67

    sbc a                                         ; $556C: $9F
    ld e, c                                       ; $556D: $59
    ld h, l                                       ; $556E: $65
    ld [hl], e                                    ; $556F: $73
    jr nz, jr_023_55BB                            ; $5570: $20 $49

    jr nz, jr_023_55D8                            ; $5572: $20 $64

    ld l, a                                       ; $5574: $6F
    inc l                                         ; $5575: $2C

jr_023_5576:
    rst $38                                       ; $5576: $FF
    ld [hl], d                                    ; $5577: $72
    ld l, c                                       ; $5578: $69
    ld h, a                                       ; $5579: $67
    ld l, b                                       ; $557A: $68
    ld [hl], h                                    ; $557B: $74
    jr nz, jr_023_55E6                            ; $557C: $20 $68

    ld h, l                                       ; $557E: $65
    ld [hl], d                                    ; $557F: $72
    ld h, l                                       ; $5580: $65
    ld hl, $49FE                                  ; $5581: $21 $FE $49
    jr nz, @+$79                                  ; $5584: $20 $77

jr_023_5586:
    ld h, c                                       ; $5586: $61
    ld [hl], e                                    ; $5587: $73
    jr nz, jr_023_55F1                            ; $5588: $20 $67

    ld l, a                                       ; $558A: $6F
    ld l, c                                       ; $558B: $69
    ld l, [hl]                                    ; $558C: $6E
    ld h, a                                       ; $558D: $67
    rst $38                                       ; $558E: $FF
    ld [hl], h                                    ; $558F: $74

jr_023_5590:
    ld l, a                                       ; $5590: $6F
    jr nz, jr_023_5608                            ; $5591: $20 $75

    ld [hl], e                                    ; $5593: $73
    ld h, l                                       ; $5594: $65
    jr nz, jr_023_560B                            ; $5595: $20 $74

    ld l, b                                       ; $5597: $68
    ld h, l                                       ; $5598: $65
    ld l, l                                       ; $5599: $6D
    cp $74                                        ; $559A: $FE $74
    ld l, a                                       ; $559C: $6F
    jr nz, jr_023_560C                            ; $559D: $20 $6D

    ld h, c                                       ; $559F: $61
    ld l, e                                       ; $55A0: $6B
    ld h, l                                       ; $55A1: $65
    jr nz, @+$63                                  ; $55A2: $20 $61

    jr nz, jr_023_5616                            ; $55A4: $20 $70

    ld l, c                                       ; $55A6: $69
    ld h, l                                       ; $55A7: $65
    inc l                                         ; $55A8: $2C
    rst $38                                       ; $55A9: $FF
    ld h, d                                       ; $55AA: $62
    ld [hl], l                                    ; $55AB: $75
    ld [hl], h                                    ; $55AC: $74
    jr nz, jr_023_5618                            ; $55AD: $20 $69

    ld h, [hl]                                    ; $55AF: $66
    jr nz, jr_023_562B                            ; $55B0: $20 $79

jr_023_55B2:
    ld l, a                                       ; $55B2: $6F
    ld [hl], l                                    ; $55B3: $75
    cp $77                                        ; $55B4: $FE $77
    ld h, c                                       ; $55B6: $61
    ld l, [hl]                                    ; $55B7: $6E
    ld [hl], h                                    ; $55B8: $74
    jr nz, jr_023_562F                            ; $55B9: $20 $74

jr_023_55BB:
    ld l, b                                       ; $55BB: $68

jr_023_55BC:
    ld h, l                                       ; $55BC: $65
    ld l, l                                       ; $55BD: $6D
    jr nz, jr_023_5639                            ; $55BE: $20 $79

    ld l, a                                       ; $55C0: $6F
    ld [hl], l                                    ; $55C1: $75
    rst $38                                       ; $55C2: $FF
    ld h, e                                       ; $55C3: $63
    ld h, c                                       ; $55C4: $61
    ld l, [hl]                                    ; $55C5: $6E
    jr nz, jr_023_5630                            ; $55C6: $20 $68

    ld h, c                                       ; $55C8: $61
    halt                                          ; $55C9: $76
    ld h, l                                       ; $55CA: $65
    jr nz, jr_023_5641                            ; $55CB: $20 $74

    ld l, b                                       ; $55CD: $68
    ld h, l                                       ; $55CE: $65
    ld l, l                                       ; $55CF: $6D
    ld hl, $FDFE                                  ; $55D0: $21 $FE $FD

jr_023_55D3:
    sbc e                                         ; $55D3: $9B
    ld a, b                                       ; $55D4: $78
    ld [hl], b                                    ; $55D5: $70
    sbc a                                         ; $55D6: $9F
    ld d, h                                       ; $55D7: $54

jr_023_55D8:
    ld l, b                                       ; $55D8: $68
    ld h, c                                       ; $55D9: $61
    ld l, [hl]                                    ; $55DA: $6E
    ld l, e                                       ; $55DB: $6B
    ld [hl], e                                    ; $55DC: $73
    ld hl, $FDFE                                  ; $55DD: $21 $FE $FD
    sbc d                                         ; $55E0: $9A
    sbc a                                         ; $55E1: $9F
    dec l                                         ; $55E2: $2D
    ld d, h                                       ; $55E3: $54
    ld l, a                                       ; $55E4: $6F
    ld l, [hl]                                    ; $55E5: $6E

jr_023_55E6:
    ld a, c                                       ; $55E6: $79
    jr nz, jr_023_5650                            ; $55E7: $20 $67

    ld l, a                                       ; $55E9: $6F
    ld [hl], h                                    ; $55EA: $74
    rst $38                                       ; $55EB: $FF
    ld l, d                                       ; $55EC: $6A
    ld h, l                                       ; $55ED: $65
    ld l, h                                       ; $55EE: $6C
    ld l, h                                       ; $55EF: $6C
    ld a, c                                       ; $55F0: $79

jr_023_55F1:
    ld h, d                                       ; $55F1: $62
    ld h, l                                       ; $55F2: $65
    ld h, c                                       ; $55F3: $61
    ld l, [hl]                                    ; $55F4: $6E
    ld [hl], e                                    ; $55F5: $73
    ld hl, $FE2D                                  ; $55F6: $21 $2D $FE
    db $FD                                        ; $55F9: $FD
    sbc d                                         ; $55FA: $9A
    xor a                                         ; $55FB: $AF
    ld h, $A1                                     ; $55FC: $26 $A1
    inc b                                         ; $55FE: $04
    xor a                                         ; $55FF: $AF
    daa                                           ; $5600: $27
    and c                                         ; $5601: $A1
    inc b                                         ; $5602: $04
    ld e, b                                       ; $5603: $58
    ld bc, $9B42                                  ; $5604: $01 $42 $9B
    ld a, b                                       ; $5607: $78

jr_023_5608:
    ld [hl], b                                    ; $5608: $70
    sbc a                                         ; $5609: $9F
    ld d, b                                       ; $560A: $50

jr_023_560B:
    ld l, a                                       ; $560B: $6F

jr_023_560C:
    ld h, c                                       ; $560C: $61
    ld h, h                                       ; $560D: $64
    inc l                                         ; $560E: $2C
    jr nz, jr_023_5675                            ; $560F: $20 $64

    ld l, a                                       ; $5611: $6F
    jr nz, jr_023_568D                            ; $5612: $20 $79

    ld l, a                                       ; $5614: $6F
    ld [hl], l                                    ; $5615: $75

jr_023_5616:
    rst $38                                       ; $5616: $FF
    ld l, b                                       ; $5617: $68

jr_023_5618:
    ld h, c                                       ; $5618: $61
    halt                                          ; $5619: $76
    ld h, l                                       ; $561A: $65
    jr nz, jr_023_567E                            ; $561B: $20 $61

    ld l, [hl]                                    ; $561D: $6E
    ld a, c                                       ; $561E: $79
    jr nz, jr_023_568E                            ; $561F: $20 $6D

    ld l, a                                       ; $5621: $6F
    ld [hl], d                                    ; $5622: $72
    ld h, l                                       ; $5623: $65
    cp $6F                                        ; $5624: $FE $6F
    ld h, [hl]                                    ; $5626: $66
    jr nz, @+$76                                  ; $5627: $20 $74

    ld l, b                                       ; $5629: $68
    ld l, a                                       ; $562A: $6F

jr_023_562B:
    ld [hl], e                                    ; $562B: $73
    ld h, l                                       ; $562C: $65
    rst $38                                       ; $562D: $FF
    ld l, d                                       ; $562E: $6A

jr_023_562F:
    ld h, l                                       ; $562F: $65

jr_023_5630:
    ld l, h                                       ; $5630: $6C
    ld l, h                                       ; $5631: $6C
    ld a, c                                       ; $5632: $79
    ld h, d                                       ; $5633: $62
    ld h, l                                       ; $5634: $65
    ld h, c                                       ; $5635: $61
    ld l, [hl]                                    ; $5636: $6E
    ld [hl], e                                    ; $5637: $73
    ccf                                           ; $5638: $3F

jr_023_5639:
    cp $FD                                        ; $5639: $FE $FD
    sbc e                                         ; $563B: $9B
    jr jr_023_56A5                                ; $563C: $18 $67

    sbc a                                         ; $563E: $9F
    ld e, c                                       ; $563F: $59
    ld h, l                                       ; $5640: $65

jr_023_5641:
    ld [hl], e                                    ; $5641: $73
    jr nz, jr_023_568D                            ; $5642: $20 $49

    jr nz, jr_023_56AA                            ; $5644: $20 $64

    ld l, a                                       ; $5646: $6F
    ld hl, $59FE                                  ; $5647: $21 $FE $59
    ld l, a                                       ; $564A: $6F
    ld [hl], l                                    ; $564B: $75
    jr nz, jr_023_56C5                            ; $564C: $20 $77

    ld h, c                                       ; $564E: $61
    ld l, [hl]                                    ; $564F: $6E

jr_023_5650:
    ld [hl], h                                    ; $5650: $74
    jr nz, jr_023_56C6                            ; $5651: $20 $73

    ld l, a                                       ; $5653: $6F
    ld l, l                                       ; $5654: $6D
    ld h, l                                       ; $5655: $65
    ccf                                           ; $5656: $3F
    cp $49                                        ; $5657: $FE $49
    jr nz, jr_023_56D2                            ; $5659: $20 $77

    ld h, c                                       ; $565B: $61
    ld [hl], e                                    ; $565C: $73
    jr nz, jr_023_56C6                            ; $565D: $20 $67

    ld l, a                                       ; $565F: $6F
    ld l, c                                       ; $5660: $69
    ld l, [hl]                                    ; $5661: $6E
    ld h, a                                       ; $5662: $67
    jr nz, jr_023_56D9                            ; $5663: $20 $74

    ld l, a                                       ; $5665: $6F
    rst $38                                       ; $5666: $FF
    ld l, l                                       ; $5667: $6D
    ld h, c                                       ; $5668: $61
    ld l, e                                       ; $5669: $6B
    ld h, l                                       ; $566A: $65
    jr nz, jr_023_56E0                            ; $566B: $20 $73

    ld l, a                                       ; $566D: $6F
    ld l, l                                       ; $566E: $6D
    ld h, l                                       ; $566F: $65
    ld [hl], h                                    ; $5670: $74
    ld l, b                                       ; $5671: $68
    ld l, c                                       ; $5672: $69
    ld l, [hl]                                    ; $5673: $6E
    ld h, a                                       ; $5674: $67

jr_023_5675:
    cp $77                                        ; $5675: $FE $77
    ld l, c                                       ; $5677: $69
    ld [hl], h                                    ; $5678: $74
    ld l, b                                       ; $5679: $68
    jr nz, jr_023_56F0                            ; $567A: $20 $74

    ld l, b                                       ; $567C: $68
    ld h, l                                       ; $567D: $65

jr_023_567E:
    ld l, l                                       ; $567E: $6D
    jr nz, jr_023_56E3                            ; $567F: $20 $62

    ld [hl], l                                    ; $5681: $75
    ld [hl], h                                    ; $5682: $74
    rst $38                                       ; $5683: $FF
    ld c, c                                       ; $5684: $49
    jr nz, jr_023_56EA                            ; $5685: $20 $63

    ld h, c                                       ; $5687: $61
    ld l, [hl]                                    ; $5688: $6E
    jr nz, jr_023_56EC                            ; $5689: $20 $61

    ld l, h                                       ; $568B: $6C
    ld [hl], a                                    ; $568C: $77

jr_023_568D:
    ld h, c                                       ; $568D: $61

jr_023_568E:
    ld a, c                                       ; $568E: $79
    ld [hl], e                                    ; $568F: $73
    cp $67                                        ; $5690: $FE $67
    ld l, a                                       ; $5692: $6F
    jr nz, jr_023_56FC                            ; $5693: $20 $67

    ld h, l                                       ; $5695: $65
    ld [hl], h                                    ; $5696: $74
    jr nz, @+$6F                                  ; $5697: $20 $6D

    ld l, a                                       ; $5699: $6F
    ld [hl], d                                    ; $569A: $72
    ld h, l                                       ; $569B: $65
    ld l, $FE                                     ; $569C: $2E $FE
    db $FD                                        ; $569E: $FD
    sbc e                                         ; $569F: $9B
    ld a, b                                       ; $56A0: $78
    ld [hl], b                                    ; $56A1: $70
    sbc a                                         ; $56A2: $9F
    ld e, c                                       ; $56A3: $59
    ld h, l                                       ; $56A4: $65

jr_023_56A5:
    ld [hl], e                                    ; $56A5: $73
    inc l                                         ; $56A6: $2C
    jr nz, jr_023_5719                            ; $56A7: $20 $70

    ld l, h                                       ; $56A9: $6C

jr_023_56AA:
    ld h, l                                       ; $56AA: $65
    ld h, c                                       ; $56AB: $61
    ld [hl], e                                    ; $56AC: $73
    ld h, l                                       ; $56AD: $65
    ld l, $FF                                     ; $56AE: $2E $FF
    ld d, h                                       ; $56B0: $54
    ld l, b                                       ; $56B1: $68
    ld h, c                                       ; $56B2: $61
    ld l, [hl]                                    ; $56B3: $6E
    ld l, e                                       ; $56B4: $6B
    ld [hl], e                                    ; $56B5: $73
    ld hl, $FDFE                                  ; $56B6: $21 $FE $FD
    sbc d                                         ; $56B9: $9A
    sbc a                                         ; $56BA: $9F
    dec l                                         ; $56BB: $2D
    ld d, h                                       ; $56BC: $54
    ld l, a                                       ; $56BD: $6F
    ld l, [hl]                                    ; $56BE: $6E
    ld a, c                                       ; $56BF: $79
    jr nz, @+$69                                  ; $56C0: $20 $67

    ld l, a                                       ; $56C2: $6F
    ld [hl], h                                    ; $56C3: $74
    rst $38                                       ; $56C4: $FF

jr_023_56C5:
    ld l, d                                       ; $56C5: $6A

jr_023_56C6:
    ld h, l                                       ; $56C6: $65
    ld l, h                                       ; $56C7: $6C
    ld l, h                                       ; $56C8: $6C
    ld a, c                                       ; $56C9: $79
    ld h, d                                       ; $56CA: $62
    ld h, l                                       ; $56CB: $65
    ld h, c                                       ; $56CC: $61
    ld l, [hl]                                    ; $56CD: $6E
    ld [hl], e                                    ; $56CE: $73
    ld hl, $FE2D                                  ; $56CF: $21 $2D $FE

jr_023_56D2:
    db $FD                                        ; $56D2: $FD
    sbc d                                         ; $56D3: $9A
    xor a                                         ; $56D4: $AF
    daa                                           ; $56D5: $27
    and c                                         ; $56D6: $A1
    inc b                                         ; $56D7: $04
    ld e, b                                       ; $56D8: $58

jr_023_56D9:
    ld bc, $9B42                                  ; $56D9: $01 $42 $9B
    jr @+$69                                      ; $56DC: $18 $67

    sbc a                                         ; $56DE: $9F
    ld c, c                                       ; $56DF: $49

jr_023_56E0:
    jr nz, @+$76                                  ; $56E0: $20 $74

    ld l, b                                       ; $56E2: $68

jr_023_56E3:
    ld l, c                                       ; $56E3: $69
    ld l, [hl]                                    ; $56E4: $6E
    ld l, e                                       ; $56E5: $6B
    jr nz, @+$4B                                  ; $56E6: $20 $49

    daa                                           ; $56E8: $27
    halt                                          ; $56E9: $76

jr_023_56EA:
    ld h, l                                       ; $56EA: $65
    rst $38                                       ; $56EB: $FF

jr_023_56EC:
    ld [hl], e                                    ; $56EC: $73
    ld [hl], h                                    ; $56ED: $74
    ld l, c                                       ; $56EE: $69
    ld l, h                                       ; $56EF: $6C

jr_023_56F0:
    ld l, h                                       ; $56F0: $6C
    jr nz, @+$69                                  ; $56F1: $20 $67

    ld l, a                                       ; $56F3: $6F
    ld [hl], h                                    ; $56F4: $74
    jr nz, @+$75                                  ; $56F5: $20 $73

    ld l, a                                       ; $56F7: $6F
    ld l, l                                       ; $56F8: $6D
    ld h, l                                       ; $56F9: $65
    cp $6A                                        ; $56FA: $FE $6A

jr_023_56FC:
    ld h, l                                       ; $56FC: $65
    ld l, h                                       ; $56FD: $6C
    ld l, h                                       ; $56FE: $6C
    ld a, c                                       ; $56FF: $79
    ld h, d                                       ; $5700: $62
    ld h, l                                       ; $5701: $65
    ld h, c                                       ; $5702: $61
    ld l, [hl]                                    ; $5703: $6E
    ld [hl], e                                    ; $5704: $73
    ld l, $2E                                     ; $5705: $2E $2E
    ld l, $FE                                     ; $5707: $2E $FE
    db $FD                                        ; $5709: $FD
    sbc d                                         ; $570A: $9A
    ld e, b                                       ; $570B: $58
    db $01                                        ; $570C: $01
    ld b, d                                       ; $570D: $42

    db $4B, $04, $23, $19

    nop                                           ; $5712: $00
    sbc l                                         ; $5713: $9D
    ld d, d                                       ; $5714: $52

    db $23, $1A

    nop                                           ; $5717: $00
    db $C2                                        ; $5718: $C2

jr_023_5719:
    ld d, d                                       ; $5719: $52

    db $FF, $43, $0F, $01, $A4, $A2, $05, $05

    inc hl                                        ; $5722: $23
    dec h                                         ; $5723: $25
    ld e, b                                       ; $5724: $58

    db $43, $11, $04, $05, $10

    inc hl                                        ; $572A: $23
    ld l, e                                       ; $572B: $6B
    ld d, a                                       ; $572C: $57

    db $93, $65, $A2, $43, $4F, $64, $23, $44, $69, $28, $44, $66, $C0, $5C, $21, $05
    db $00, $81, $5D, $05, $11, $C0, $D0, $00, $20, $AB, $50, $22, $05, $40, $0B, $00
    db $05, $02, $ED, $63, $02, $05, $39, $D0, $00, $0F, $B0, $67, $23, $63, $58, $0B
    db $02, $6B, $30, $0B, $B0, $64, $00, $80, $00, $82, $1F, $0F, $94, $42

    sub e                                         ; $576B: $93
    ld h, l                                       ; $576C: $65
    and d                                         ; $576D: $A2
    ld b, e                                       ; $576E: $43
    ld c, a                                       ; $576F: $4F
    ld h, h                                       ; $5770: $64
    inc hl                                        ; $5771: $23
    ld b, h                                       ; $5772: $44
    ld l, c                                       ; $5773: $69
    jr z, jr_023_57BA                             ; $5774: $28 $44

    ld h, [hl]                                    ; $5776: $66
    ret nz                                        ; $5777: $C0

    ld e, h                                       ; $5778: $5C
    ld hl, $0005                                  ; $5779: $21 $05 $00
    add c                                         ; $577C: $81
    ld e, l                                       ; $577D: $5D
    dec b                                         ; $577E: $05
    ld de, $D0C0                                  ; $577F: $11 $C0 $D0
    nop                                           ; $5782: $00
    jr nz, @-$53                                  ; $5783: $20 $AB

    ld d, b                                       ; $5785: $50
    ld [hl+], a                                   ; $5786: $22
    dec b                                         ; $5787: $05
    ld b, b                                       ; $5788: $40
    dec b                                         ; $5789: $05
    ld [bc], a                                    ; $578A: $02
    db $ED                                        ; $578B: $ED
    ld h, e                                       ; $578C: $63
    dec b                                         ; $578D: $05
    dec bc                                        ; $578E: $0B
    ld a, [hl]                                    ; $578F: $7E
    ret nc                                        ; $5790: $D0

    nop                                           ; $5791: $00
    inc hl                                        ; $5792: $23
    db $D3                                        ; $5793: $D3
    ld d, a                                       ; $5794: $57
    inc hl                                        ; $5795: $23
    ld l, e                                       ; $5796: $6B
    ld e, b                                       ; $5797: $58
    dec b                                         ; $5798: $05
    inc bc                                        ; $5799: $03
    db $ED                                        ; $579A: $ED
    ld h, e                                       ; $579B: $63
    inc b                                         ; $579C: $04
    dec c                                         ; $579D: $0D
    sub e                                         ; $579E: $93
    ret nc                                        ; $579F: $D0

    jr nc, jr_023_57C5                            ; $57A0: $30 $23

    pop af                                        ; $57A2: $F1
    ld d, a                                       ; $57A3: $57
    inc hl                                        ; $57A4: $23
    ld a, e                                       ; $57A5: $7B
    ld e, b                                       ; $57A6: $58
    dec b                                         ; $57A7: $05
    inc b                                         ; $57A8: $04
    db $ED                                        ; $57A9: $ED
    ld h, e                                       ; $57AA: $63
    ld b, $0D                                     ; $57AB: $06 $0D
    sub l                                         ; $57AD: $95
    ret nc                                        ; $57AE: $D0

    jr nc, jr_023_57D4                            ; $57AF: $30 $23

    rrca                                          ; $57B1: $0F
    ld e, b                                       ; $57B2: $58
    inc hl                                        ; $57B3: $23
    sbc l                                         ; $57B4: $9D
    ld e, b                                       ; $57B5: $58
    dec bc                                        ; $57B6: $0B
    nop                                           ; $57B7: $00
    dec bc                                        ; $57B8: $0B
    ld [bc], a                                    ; $57B9: $02

jr_023_57BA:
    dec bc                                        ; $57BA: $0B
    inc bc                                        ; $57BB: $03
    dec bc                                        ; $57BC: $0B
    inc b                                         ; $57BD: $04
    ld l, e                                       ; $57BE: $6B
    jr nc, jr_023_57CC                            ; $57BF: $30 $0B

    or b                                          ; $57C1: $B0
    ld h, h                                       ; $57C2: $64
    nop                                           ; $57C3: $00
    add b                                         ; $57C4: $80

jr_023_57C5:
    nop                                           ; $57C5: $00
    ld l, e                                       ; $57C6: $6B
    jr nc, jr_023_57D5                            ; $57C7: $30 $0C

    or b                                          ; $57C9: $B0
    ld d, a                                       ; $57CA: $57
    nop                                           ; $57CB: $00

jr_023_57CC:
    add e                                         ; $57CC: $83
    nop                                           ; $57CD: $00
    add d                                         ; $57CE: $82
    rra                                           ; $57CF: $1F
    rrca                                          ; $57D0: $0F
    sub h                                         ; $57D1: $94
    ld b, d                                       ; $57D2: $42
    dec d                                         ; $57D3: $15

jr_023_57D4:
    rrca                                          ; $57D4: $0F

jr_023_57D5:
    sbc h                                         ; $57D5: $9C
    ld h, a                                       ; $57D6: $67
    ld b, b                                       ; $57D7: $40
    rrca                                          ; $57D8: $0F
    ld [hl+], a                                   ; $57D9: $22
    ld h, a                                       ; $57DA: $67
    db $10                                        ; $57DB: $10
    rrca                                          ; $57DC: $0F
    adc $67                                       ; $57DD: $CE $67
    ld h, b                                       ; $57DF: $60
    rrca                                          ; $57E0: $0F
    ret c                                         ; $57E1: $D8

    ld h, a                                       ; $57E2: $67
    ld b, b                                       ; $57E3: $40
    rrca                                          ; $57E4: $0F
    ld [de], a                                    ; $57E5: $12
    ld h, a                                       ; $57E6: $67
    db $10                                        ; $57E7: $10
    rrca                                          ; $57E8: $0F
    sbc h                                         ; $57E9: $9C

jr_023_57EA:
    ld h, a                                       ; $57EA: $67
    jr nz, jr_023_57ED                            ; $57EB: $20 $00

jr_023_57ED:
    ld b, l                                       ; $57ED: $45
    inc hl                                        ; $57EE: $23
    db $D3                                        ; $57EF: $D3
    ld d, a                                       ; $57F0: $57
    dec d                                         ; $57F1: $15
    db $10                                        ; $57F2: $10
    dec d                                         ; $57F3: $15
    ld [hl], b                                    ; $57F4: $70
    add b                                         ; $57F5: $80
    db $10                                        ; $57F6: $10
    ld b, a                                       ; $57F7: $47
    ld [hl], b                                    ; $57F8: $70
    ld b, b                                       ; $57F9: $40
    db $10                                        ; $57FA: $10
    inc sp                                        ; $57FB: $33
    ld [hl], b                                    ; $57FC: $70
    ld b, b                                       ; $57FD: $40
    db $10                                        ; $57FE: $10
    ld b, a                                       ; $57FF: $47
    ld [hl], b                                    ; $5800: $70
    ld [$1510], sp                                ; $5801: $08 $10 $15
    ld [hl], b                                    ; $5804: $70
    ld b, b                                       ; $5805: $40
    db $10                                        ; $5806: $10
    inc sp                                        ; $5807: $33
    ld [hl], b                                    ; $5808: $70
    stop                                          ; $5809: $10 $00
    ld b, l                                       ; $580B: $45
    inc hl                                        ; $580C: $23
    pop af                                        ; $580D: $F1
    ld d, a                                       ; $580E: $57
    dec d                                         ; $580F: $15
    db $10                                        ; $5810: $10
    dec d                                         ; $5811: $15
    ld [hl], b                                    ; $5812: $70
    ld h, b                                       ; $5813: $60
    db $10                                        ; $5814: $10
    dec a                                         ; $5815: $3D
    ld [hl], b                                    ; $5816: $70
    ld b, b                                       ; $5817: $40
    db $10                                        ; $5818: $10
    add hl, hl                                    ; $5819: $29
    ld [hl], b                                    ; $581A: $70
    ld h, b                                       ; $581B: $60
    db $10                                        ; $581C: $10
    dec a                                         ; $581D: $3D
    ld [hl], b                                    ; $581E: $70
    ld [$4500], sp                                ; $581F: $08 $00 $45
    inc hl                                        ; $5822: $23
    rrca                                          ; $5823: $0F
    ld e, b                                       ; $5824: $58
    sub e                                         ; $5825: $93
    ld h, l                                       ; $5826: $65
    and d                                         ; $5827: $A2
    ld b, e                                       ; $5828: $43
    ld c, a                                       ; $5829: $4F
    ld h, h                                       ; $582A: $64
    inc hl                                        ; $582B: $23
    ld b, h                                       ; $582C: $44
    ld l, c                                       ; $582D: $69
    jr z, jr_023_5874                             ; $582E: $28 $44

    ld h, [hl]                                    ; $5830: $66
    ret nz                                        ; $5831: $C0

    ld e, h                                       ; $5832: $5C
    ld hl, $0005                                  ; $5833: $21 $05 $00
    add c                                         ; $5836: $81
    ld e, l                                       ; $5837: $5D
    dec b                                         ; $5838: $05
    ld de, $D0C0                                  ; $5839: $11 $C0 $D0
    nop                                           ; $583C: $00
    jr nz, jr_023_57EA                            ; $583D: $20 $AB

    ld d, b                                       ; $583F: $50
    ld [hl+], a                                   ; $5840: $22
    dec b                                         ; $5841: $05
    ld b, b                                       ; $5842: $40
    dec b                                         ; $5843: $05
    ld [bc], a                                    ; $5844: $02
    db $ED                                        ; $5845: $ED
    ld h, e                                       ; $5846: $63
    dec b                                         ; $5847: $05
    dec bc                                        ; $5848: $0B
    ld a, [hl]                                    ; $5849: $7E
    ret nc                                        ; $584A: $D0

    nop                                           ; $584B: $00
    rrca                                          ; $584C: $0F
    sbc h                                         ; $584D: $9C
    ld h, a                                       ; $584E: $67
    inc hl                                        ; $584F: $23
    ld [hl], e                                    ; $5850: $73
    ld e, b                                       ; $5851: $58
    dec bc                                        ; $5852: $0B
    nop                                           ; $5853: $00
    dec bc                                        ; $5854: $0B
    ld [bc], a                                    ; $5855: $02
    ld l, e                                       ; $5856: $6B
    jr nc, jr_023_5864                            ; $5857: $30 $0B

    or b                                          ; $5859: $B0
    ld h, h                                       ; $585A: $64
    nop                                           ; $585B: $00
    add b                                         ; $585C: $80
    nop                                           ; $585D: $00
    add d                                         ; $585E: $82
    rra                                           ; $585F: $1F
    rrca                                          ; $5860: $0F
    sub h                                         ; $5861: $94
    ld b, d                                       ; $5862: $42
    ld e, e                                       ; $5863: $5B

jr_023_5864:
    inc hl                                        ; $5864: $23
    db $FD                                        ; $5865: $FD
    ld c, a                                       ; $5866: $4F
    ld b, l                                       ; $5867: $45
    rrca                                          ; $5868: $0F
    ld [c], a                                     ; $5869: $E2
    ld h, a                                       ; $586A: $67
    ld e, e                                       ; $586B: $5B
    inc hl                                        ; $586C: $23
    db $EC                                        ; $586D: $EC
    ld d, b                                       ; $586E: $50
    ld b, l                                       ; $586F: $45
    rrca                                          ; $5870: $0F
    ld [c], a                                     ; $5871: $E2
    ld h, a                                       ; $5872: $67
    ld e, e                                       ; $5873: $5B

jr_023_5874:
    inc hl                                        ; $5874: $23
    add hl, hl                                    ; $5875: $29
    ld d, d                                       ; $5876: $52
    ld b, l                                       ; $5877: $45
    rrca                                          ; $5878: $0F
    ld [c], a                                     ; $5879: $E2
    ld h, a                                       ; $587A: $67
    inc d                                         ; $587B: $14
    db $10                                        ; $587C: $10
    dec d                                         ; $587D: $15
    ld [hl], b                                    ; $587E: $70
    ld b, e                                       ; $587F: $43
    rrca                                          ; $5880: $0F
    ld bc, $A2A4                                  ; $5881: $01 $A4 $A2
    dec b                                         ; $5884: $05
    inc b                                         ; $5885: $04
    inc hl                                        ; $5886: $23
    sub l                                         ; $5887: $95
    ld e, b                                       ; $5888: $58
    xor h                                         ; $5889: $AC
    and h                                         ; $588A: $A4
    and d                                         ; $588B: $A2
    inc b                                         ; $588C: $04
    ld e, e                                       ; $588D: $5B
    inc hl                                        ; $588E: $23
    rrca                                          ; $588F: $0F
    ld d, c                                       ; $5890: $51
    ld b, l                                       ; $5891: $45
    db $10                                        ; $5892: $10
    ld [hl], b                                    ; $5893: $70
    ld [hl], b                                    ; $5894: $70
    ld e, e                                       ; $5895: $5B
    inc hl                                        ; $5896: $23
    add sp, $51                                   ; $5897: $E8 $51
    ld b, l                                       ; $5899: $45
    db $10                                        ; $589A: $10
    ld [hl], b                                    ; $589B: $70
    ld [hl], b                                    ; $589C: $70
    inc d                                         ; $589D: $14
    db $10                                        ; $589E: $10
    dec d                                         ; $589F: $15
    ld [hl], b                                    ; $58A0: $70
    ld b, e                                       ; $58A1: $43
    rrca                                          ; $58A2: $0F
    ld bc, $A2A4                                  ; $58A3: $01 $A4 $A2
    dec b                                         ; $58A6: $05
    inc b                                         ; $58A7: $04
    inc hl                                        ; $58A8: $23
    or a                                          ; $58A9: $B7
    ld e, b                                       ; $58AA: $58
    xor h                                         ; $58AB: $AC
    and h                                         ; $58AC: $A4
    and d                                         ; $58AD: $A2
    inc b                                         ; $58AE: $04
    ld e, e                                       ; $58AF: $5B
    inc hl                                        ; $58B0: $23
    ld a, h                                       ; $58B1: $7C
    ld d, c                                       ; $58B2: $51
    ld b, l                                       ; $58B3: $45
    db $10                                        ; $58B4: $10
    ld [hl], b                                    ; $58B5: $70
    ld [hl], b                                    ; $58B6: $70
    ld e, e                                       ; $58B7: $5B
    inc hl                                        ; $58B8: $23
    ld [$4552], sp                                ; $58B9: $08 $52 $45
    db $10                                        ; $58BC: $10
    ld [hl], b                                    ; $58BD: $70
    ld [hl], b                                    ; $58BE: $70

    db $02, $0C, $06, $09, $03, $45, $28, $EF, $53

    ld [bc], a                                    ; $58C8: $02
    ld [$0009], sp                                ; $58C9: $08 $09 $00
    rrca                                          ; $58CC: $0F
    ld b, l                                       ; $58CD: $45
    inc hl                                        ; $58CE: $23
    inc hl                                        ; $58CF: $23
    ld a, h                                       ; $58D0: $7C

    db $A4, $23, $A3, $04, $02, $01, $6F, $D0

    sbc e                                         ; $58D9: $9B
    ld a, b                                       ; $58DA: $78
    ld [hl], b                                    ; $58DB: $70
    sbc a                                         ; $58DC: $9F
    ld c, c                                       ; $58DD: $49
    ld [hl], h                                    ; $58DE: $74
    daa                                           ; $58DF: $27
    ld [hl], e                                    ; $58E0: $73
    jr nz, @+$6E                                  ; $58E1: $20 $6C

    ld l, a                                       ; $58E3: $6F
    ld h, e                                       ; $58E4: $63
    ld l, e                                       ; $58E5: $6B
    ld h, l                                       ; $58E6: $65
    ld h, h                                       ; $58E7: $64
    ld l, $FE                                     ; $58E8: $2E $FE
    db $FD                                        ; $58EA: $FD
    sbc d                                         ; $58EB: $9A
    ld b, d                                       ; $58EC: $42
    sub e                                         ; $58ED: $93
    ld h, l                                       ; $58EE: $65
    or c                                          ; $58EF: $B1
    ld b, e                                       ; $58F0: $43
    ld c, a                                       ; $58F1: $4F
    ld l, c                                       ; $58F2: $69
    ld b, d                                       ; $58F3: $42
    ld b, h                                       ; $58F4: $44
    ld h, h                                       ; $58F5: $64
    add hl, sp                                    ; $58F6: $39
    ld b, h                                       ; $58F7: $44
    ld h, [hl]                                    ; $58F8: $66
    ret nz                                        ; $58F9: $C0

    ld e, h                                       ; $58FA: $5C
    ld hl, $0005                                  ; $58FB: $21 $05 $00
    ld l, e                                       ; $58FE: $6B

jr_023_58FF:
    ld c, d                                       ; $58FF: $4A
    inc b                                         ; $5900: $04
    ld b, $7C                                     ; $5901: $06 $7C
    ret nc                                        ; $5903: $D0

    nop                                           ; $5904: $00
    inc hl                                        ; $5905: $23
    ld c, l                                       ; $5906: $4D
    ld e, c                                       ; $5907: $59

jr_023_5908:
    ld [hl+], a                                   ; $5908: $22
    inc b                                         ; $5909: $04
    ld b, b                                       ; $590A: $40
    dec b                                         ; $590B: $05
    ld [bc], a                                    ; $590C: $02
    db $ED                                        ; $590D: $ED
    ld h, e                                       ; $590E: $63
    ld [bc], a                                    ; $590F: $02
    inc b                                         ; $5910: $04
    ld d, d                                       ; $5911: $52
    ret nc                                        ; $5912: $D0

    nop                                           ; $5913: $00
    rrca                                          ; $5914: $0F
    db $FC                                        ; $5915: $FC
    ld d, [hl]                                    ; $5916: $56
    inc hl                                        ; $5917: $23
    and l                                         ; $5918: $A5
    ld e, c                                       ; $5919: $59
    dec b                                         ; $591A: $05
    inc bc                                        ; $591B: $03
    ld l, e                                       ; $591C: $6B
    ld c, d                                       ; $591D: $4A
    inc bc                                        ; $591E: $03
    inc b                                         ; $591F: $04
    ld d, e                                       ; $5920: $53
    ret nc                                        ; $5921: $D0

    daa                                           ; $5922: $27
    inc hl                                        ; $5923: $23
    ld l, l                                       ; $5924: $6D
    ld e, c                                       ; $5925: $59
    ld [hl+], a                                   ; $5926: $22
    inc b                                         ; $5927: $04
    ld b, b                                       ; $5928: $40
    ld l, e                                       ; $5929: $6B
    daa                                           ; $592A: $27
    ld a, [bc]                                    ; $592B: $0A
    ret nc                                        ; $592C: $D0

    ld [hl], c                                    ; $592D: $71

jr_023_592E:
    nop                                           ; $592E: $00
    add b                                         ; $592F: $80
    nop                                           ; $5930: $00
    ld l, e                                       ; $5931: $6B
    inc l                                         ; $5932: $2C
    ld a, [bc]                                    ; $5933: $0A
    ret nz                                        ; $5934: $C0

    halt                                          ; $5935: $76
    ld [hl], b                                    ; $5936: $70

jr_023_5937:
    add d                                         ; $5937: $82
    nop                                           ; $5938: $00
    dec bc                                        ; $5939: $0B
    nop                                           ; $593A: $00
    dec bc                                        ; $593B: $0B
    ld [bc], a                                    ; $593C: $02
    dec bc                                        ; $593D: $0B
    inc bc                                        ; $593E: $03
    add h                                         ; $593F: $84
    inc bc                                        ; $5940: $03
    dec b                                         ; $5941: $05
    ld l, a                                       ; $5942: $6F
    rrca                                          ; $5943: $0F
    rst $38                                       ; $5944: $FF
    ld a, a                                       ; $5945: $7F
    rra                                           ; $5946: $1F
    inc hl                                        ; $5947: $23
    sub h                                         ; $5948: $94
    halt                                          ; $5949: $76
    jr nz, jr_023_595B                            ; $594A: $20 $0F

    ld b, d                                       ; $594C: $42
    dec d                                         ; $594D: $15
    jr nz, jr_023_5937                            ; $594E: $20 $E7

    ld d, b                                       ; $5950: $50
    sbc b                                         ; $5951: $98

jr_023_5952:
    jr nz, jr_023_58FF                            ; $5952: $20 $AB

    ld d, b                                       ; $5954: $50
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    ld e, h                                       ; $5957: $5C
    nop                                           ; $5958: $00
    inc bc                                        ; $5959: $03
    dec d                                         ; $595A: $15

jr_023_595B:
    jr nz, jr_023_5908                            ; $595B: $20 $AB

    ld d, b                                       ; $595D: $50
    inc c                                         ; $595E: $0C
    jr nz, jr_023_5952                            ; $595F: $20 $F1

    ld d, b                                       ; $5961: $50
    inc c                                         ; $5962: $0C
    jr nz, jr_023_592E                            ; $5963: $20 $C9

    ld d, b                                       ; $5965: $50
    inc c                                         ; $5966: $0C
    nop                                           ; $5967: $00
    ld e, e                                       ; $5968: $5B
    inc hl                                        ; $5969: $23
    or [hl]                                       ; $596A: $B6
    ld e, l                                       ; $596B: $5D
    ld b, d                                       ; $596C: $42
    dec d                                         ; $596D: $15
    dec h                                         ; $596E: $25
    jr jr_023_59BD                                ; $596F: $18 $4C

    jr nz, jr_023_5998                            ; $5971: $20 $25

    sub h                                         ; $5973: $94
    ld c, e                                       ; $5974: $4B
    db $10                                        ; $5975: $10
    dec h                                         ; $5976: $25
    inc l                                         ; $5977: $2C
    ld c, h                                       ; $5978: $4C
    jr nz, jr_023_59A0                            ; $5979: $20 $25

    add h                                         ; $597B: $84
    ld c, e                                       ; $597C: $4B
    db $10                                        ; $597D: $10
    dec h                                         ; $597E: $25
    jr jr_023_59CD                                ; $597F: $18 $4C

    jr nz, jr_023_59A8                            ; $5981: $20 $25

    sub h                                         ; $5983: $94
    ld c, e                                       ; $5984: $4B
    db $10                                        ; $5985: $10
    dec h                                         ; $5986: $25
    or h                                          ; $5987: $B4
    ld c, e                                       ; $5988: $4B
    db $10                                        ; $5989: $10
    dec h                                         ; $598A: $25
    ld c, $4C                                     ; $598B: $0E $4C
    nop                                           ; $598D: $00
    nop                                           ; $598E: $00
    ld e, e                                       ; $598F: $5B
    inc hl                                        ; $5990: $23
    ret c                                         ; $5991: $D8

    ld e, c                                       ; $5992: $59
    ld e, h                                       ; $5993: $5C
    nop                                           ; $5994: $00
    inc bc                                        ; $5995: $03
    dec d                                         ; $5996: $15
    dec h                                         ; $5997: $25

jr_023_5998:
    or h                                          ; $5998: $B4
    ld c, e                                       ; $5999: $4B
    jr jr_023_59C1                                ; $599A: $18 $25

    sub h                                         ; $599C: $94
    ld c, e                                       ; $599D: $4B
    jr nz, jr_023_59C5                            ; $599E: $20 $25

jr_023_59A0:
    or h                                          ; $59A0: $B4
    ld c, e                                       ; $59A1: $4B
    jr nc, jr_023_59A4                            ; $59A2: $30 $00

jr_023_59A4:
    add hl, de                                    ; $59A4: $19
    ld e, e                                       ; $59A5: $5B
    inc hl                                        ; $59A6: $23
    xor l                                         ; $59A7: $AD

jr_023_59A8:
    ld e, c                                       ; $59A8: $59
    ld b, l                                       ; $59A9: $45
    rrca                                          ; $59AA: $0F
    db $FC                                        ; $59AB: $FC
    ld d, [hl]                                    ; $59AC: $56
    sbc e                                         ; $59AD: $9B
    adc b                                         ; $59AE: $88
    ld h, l                                       ; $59AF: $65
    sbc a                                         ; $59B0: $9F
    ld d, b                                       ; $59B1: $50
    ld [hl], l                                    ; $59B2: $75
    ld l, l                                       ; $59B3: $6D
    ld [hl], b                                    ; $59B4: $70
    ld l, e                                       ; $59B5: $6B
    ld l, c                                       ; $59B6: $69
    ld l, [hl]                                    ; $59B7: $6E
    ld l, $2E                                     ; $59B8: $2E $2E
    ld l, $FE                                     ; $59BA: $2E $FE
    ld l, l                                       ; $59BC: $6D

jr_023_59BD:
    ld h, l                                       ; $59BD: $65
    ld l, h                                       ; $59BE: $6C
    ld [hl], h                                    ; $59BF: $74
    ld a, c                                       ; $59C0: $79

jr_023_59C1:
    ld l, $2E                                     ; $59C1: $2E $2E
    ld l, $FE                                     ; $59C3: $2E $FE

jr_023_59C5:
    ld l, $2E                                     ; $59C5: $2E $2E
    ld l, $2E                                     ; $59C7: $2E $2E
    ld l, $2E                                     ; $59C9: $2E $2E
    cp $2E                                        ; $59CB: $FE $2E

jr_023_59CD:
    ld l, $2E                                     ; $59CD: $2E $2E
    ld b, a                                       ; $59CF: $47
    ld b, c                                       ; $59D0: $41
    ld c, b                                       ; $59D1: $48
    ld c, b                                       ; $59D2: $48
    ld hl, $FDFE                                  ; $59D3: $21 $FE $FD
    sbc d                                         ; $59D6: $9A
    ld [de], a                                    ; $59D7: $12
    sbc e                                         ; $59D8: $9B
    reti                                          ; $59D9: $D9


    ld b, a                                       ; $59DA: $47
    sbc a                                         ; $59DB: $9F
    ld c, a                                       ; $59DC: $4F
    ld [hl], d                                    ; $59DD: $72
    ld [hl], a                                    ; $59DE: $77
    ld l, c                                       ; $59DF: $69
    ld l, [hl]                                    ; $59E0: $6E
    jr nz, jr_023_5A4C                            ; $59E1: $20 $69

    ld [hl], e                                    ; $59E3: $73
    rst $38                                       ; $59E4: $FF
    ld [hl], e                                    ; $59E5: $73
    ld l, c                                       ; $59E6: $69
    ld h, e                                       ; $59E7: $63
    ld l, e                                       ; $59E8: $6B
    ld l, $FE                                     ; $59E9: $2E $FE
    db $FD                                        ; $59EB: $FD
    sbc e                                         ; $59EC: $9B
    ld a, b                                       ; $59ED: $78
    ld [hl], b                                    ; $59EE: $70
    sbc a                                         ; $59EF: $9F
    ld l, $2E                                     ; $59F0: $2E $2E
    ld l, $75                                     ; $59F2: $2E $75
    ld l, b                                       ; $59F4: $68
    ld l, $2E                                     ; $59F5: $2E $2E
    cp $2E                                        ; $59F7: $FE $2E
    ld l, $79                                     ; $59F9: $2E $79
    ld h, l                                       ; $59FB: $65
    ld h, c                                       ; $59FC: $61
    ld l, b                                       ; $59FD: $68
    ld l, $2E                                     ; $59FE: $2E $2E
    cp $FD                                        ; $5A00: $FE $FD
    sbc e                                         ; $5A02: $9B
    reti                                          ; $5A03: $D9


    ld b, a                                       ; $5A04: $47
    sbc a                                         ; $5A05: $9F
    ld c, c                                       ; $5A06: $49
    jr nz, jr_023_5A7D                            ; $5A07: $20 $74

    ld l, b                                       ; $5A09: $68
    ld l, c                                       ; $5A0A: $69
    ld l, [hl]                                    ; $5A0B: $6E
    ld l, e                                       ; $5A0C: $6B
    jr nz, @+$76                                  ; $5A0D: $20 $74

    ld l, b                                       ; $5A0F: $68
    ld h, c                                       ; $5A10: $61
    ld [hl], h                                    ; $5A11: $74
    rst $38                                       ; $5A12: $FF
    ld l, b                                       ; $5A13: $68
    ld l, c                                       ; $5A14: $69
    ld [hl], e                                    ; $5A15: $73
    jr nz, jr_023_5A81                            ; $5A16: $20 $69

    ld l, [hl]                                    ; $5A18: $6E
    ld l, d                                       ; $5A19: $6A
    ld [hl], l                                    ; $5A1A: $75
    ld [hl], d                                    ; $5A1B: $72
    ld l, c                                       ; $5A1C: $69
    ld h, l                                       ; $5A1D: $65
    ld [hl], e                                    ; $5A1E: $73
    cp $61                                        ; $5A1F: $FE $61
    ld [hl], d                                    ; $5A21: $72
    ld h, l                                       ; $5A22: $65
    jr nz, jr_023_5A92                            ; $5A23: $20 $6D

    ld l, a                                       ; $5A25: $6F
    ld [hl], d                                    ; $5A26: $72
    ld h, l                                       ; $5A27: $65
    jr nz, jr_023_5A9E                            ; $5A28: $20 $74

    ld l, b                                       ; $5A2A: $68
    ld h, c                                       ; $5A2B: $61
    ld l, [hl]                                    ; $5A2C: $6E
    rst $38                                       ; $5A2D: $FF
    ld l, d                                       ; $5A2E: $6A
    ld [hl], l                                    ; $5A2F: $75
    ld [hl], e                                    ; $5A30: $73
    ld [hl], h                                    ; $5A31: $74
    jr nz, jr_023_5AA4                            ; $5A32: $20 $70

    ld l, b                                       ; $5A34: $68
    ld a, c                                       ; $5A35: $79
    ld [hl], e                                    ; $5A36: $73
    ld l, c                                       ; $5A37: $69
    ld h, e                                       ; $5A38: $63
    ld h, c                                       ; $5A39: $61
    ld l, h                                       ; $5A3A: $6C
    ld l, $FE                                     ; $5A3B: $2E $FE
    ld c, b                                       ; $5A3D: $48
    ld h, l                                       ; $5A3E: $65
    jr nz, jr_023_5AA9                            ; $5A3F: $20 $68

    ld h, c                                       ; $5A41: $61
    ld [hl], e                                    ; $5A42: $73
    jr nz, jr_023_5AA7                            ; $5A43: $20 $62

    ld [hl], l                                    ; $5A45: $75
    ld [hl], d                                    ; $5A46: $72
    ld l, [hl]                                    ; $5A47: $6E
    ld [hl], e                                    ; $5A48: $73
    rst $38                                       ; $5A49: $FF
    ld l, a                                       ; $5A4A: $6F
    ld l, [hl]                                    ; $5A4B: $6E

jr_023_5A4C:
    jr nz, jr_023_5AB6                            ; $5A4C: $20 $68

    ld l, c                                       ; $5A4E: $69
    ld [hl], e                                    ; $5A4F: $73
    jr nz, @+$6A                                  ; $5A50: $20 $68

    ld h, c                                       ; $5A52: $61
    ld l, [hl]                                    ; $5A53: $6E
    ld h, h                                       ; $5A54: $64
    ld [hl], e                                    ; $5A55: $73
    cp $61                                        ; $5A56: $FE $61
    ld l, [hl]                                    ; $5A58: $6E
    ld h, h                                       ; $5A59: $64
    jr nz, jr_023_5AC2                            ; $5A5A: $20 $66

    ld h, c                                       ; $5A5C: $61
    ld h, e                                       ; $5A5D: $63
    ld h, l                                       ; $5A5E: $65
    inc l                                         ; $5A5F: $2C
    jr nz, jr_023_5AC4                            ; $5A60: $20 $62

    ld [hl], l                                    ; $5A62: $75
    ld [hl], h                                    ; $5A63: $74
    rst $38                                       ; $5A64: $FF
    ld [hl], h                                    ; $5A65: $74
    ld l, b                                       ; $5A66: $68
    ld h, l                                       ; $5A67: $65
    ld a, c                                       ; $5A68: $79
    jr nz, jr_023_5ACC                            ; $5A69: $20 $61

    ld [hl], d                                    ; $5A6B: $72
    ld h, l                                       ; $5A6C: $65
    jr nz, jr_023_5ADD                            ; $5A6D: $20 $6E

    ld l, a                                       ; $5A6F: $6F
    ld [hl], h                                    ; $5A70: $74
    cp $73                                        ; $5A71: $FE $73
    ld h, l                                       ; $5A73: $65
    halt                                          ; $5A74: $76
    ld h, l                                       ; $5A75: $65
    ld [hl], d                                    ; $5A76: $72
    ld h, l                                       ; $5A77: $65
    jr nz, jr_023_5ADF                            ; $5A78: $20 $65

    ld l, [hl]                                    ; $5A7A: $6E
    ld l, a                                       ; $5A7B: $6F
    ld [hl], l                                    ; $5A7C: $75

jr_023_5A7D:
    ld h, a                                       ; $5A7D: $67
    ld l, b                                       ; $5A7E: $68
    rst $38                                       ; $5A7F: $FF
    ld [hl], h                                    ; $5A80: $74

jr_023_5A81:
    ld l, a                                       ; $5A81: $6F
    jr nz, jr_023_5AFB                            ; $5A82: $20 $77

    ld h, l                                       ; $5A84: $65
    ld h, c                                       ; $5A85: $61
    ld l, e                                       ; $5A86: $6B
    ld h, l                                       ; $5A87: $65
    ld l, [hl]                                    ; $5A88: $6E

jr_023_5A89:
    jr nz, jr_023_5A89                            ; $5A89: $20 $FE

    ld l, b                                       ; $5A8B: $68
    ld l, c                                       ; $5A8C: $69
    ld l, l                                       ; $5A8D: $6D
    jr nz, jr_023_5B04                            ; $5A8E: $20 $74

    ld l, b                                       ; $5A90: $68
    ld l, c                                       ; $5A91: $69

jr_023_5A92:
    ld [hl], e                                    ; $5A92: $73
    rst $38                                       ; $5A93: $FF
    ld [hl], e                                    ; $5A94: $73
    ld l, c                                       ; $5A95: $69
    ld h, a                                       ; $5A96: $67
    ld l, [hl]                                    ; $5A97: $6E
    ld l, c                                       ; $5A98: $69
    ld h, [hl]                                    ; $5A99: $66
    ld l, c                                       ; $5A9A: $69
    ld h, e                                       ; $5A9B: $63
    ld h, c                                       ; $5A9C: $61
    ld l, [hl]                                    ; $5A9D: $6E

jr_023_5A9E:
    ld [hl], h                                    ; $5A9E: $74
    ld l, h                                       ; $5A9F: $6C
    ld a, c                                       ; $5AA0: $79
    ld l, $FE                                     ; $5AA1: $2E $FE
    ld c, c                                       ; $5AA3: $49

jr_023_5AA4:
    jr nz, jr_023_5B1A                            ; $5AA4: $20 $74

    ld l, b                                       ; $5AA6: $68

jr_023_5AA7:
    ld l, c                                       ; $5AA7: $69
    ld l, [hl]                                    ; $5AA8: $6E

jr_023_5AA9:
    ld l, e                                       ; $5AA9: $6B
    jr nz, @+$6A                                  ; $5AAA: $20 $68

    ld h, l                                       ; $5AAC: $65
    rst $38                                       ; $5AAD: $FF
    ld l, c                                       ; $5AAE: $69
    ld [hl], e                                    ; $5AAF: $73
    jr nz, @+$72                                  ; $5AB0: $20 $70

    ld l, a                                       ; $5AB2: $6F
    ld l, c                                       ; $5AB3: $69
    ld [hl], e                                    ; $5AB4: $73
    ld l, a                                       ; $5AB5: $6F

jr_023_5AB6:
    ld l, [hl]                                    ; $5AB6: $6E
    ld h, l                                       ; $5AB7: $65
    ld h, h                                       ; $5AB8: $64
    ld l, $FE                                     ; $5AB9: $2E $FE
    db $FD                                        ; $5ABB: $FD
    sbc e                                         ; $5ABC: $9B
    ld a, b                                       ; $5ABD: $78
    ld [hl], b                                    ; $5ABE: $70
    sbc a                                         ; $5ABF: $9F
    ld d, b                                       ; $5AC0: $50
    ld l, a                                       ; $5AC1: $6F

jr_023_5AC2:
    ld l, c                                       ; $5AC2: $69
    ld [hl], e                                    ; $5AC3: $73

jr_023_5AC4:
    ld l, a                                       ; $5AC4: $6F
    ld l, [hl]                                    ; $5AC5: $6E
    ld h, l                                       ; $5AC6: $65
    ld h, h                                       ; $5AC7: $64
    ccf                                           ; $5AC8: $3F
    ld hl, $FDFE                                  ; $5AC9: $21 $FE $FD

jr_023_5ACC:
    sbc e                                         ; $5ACC: $9B
    reti                                          ; $5ACD: $D9


    ld b, a                                       ; $5ACE: $47
    sbc a                                         ; $5ACF: $9F
    ld e, c                                       ; $5AD0: $59
    ld l, a                                       ; $5AD1: $6F
    ld [hl], l                                    ; $5AD2: $75
    jr nz, jr_023_5B43                            ; $5AD3: $20 $6E

    ld h, l                                       ; $5AD5: $65
    ld h, l                                       ; $5AD6: $65
    ld h, h                                       ; $5AD7: $64
    jr nz, jr_023_5B4E                            ; $5AD8: $20 $74

    ld l, a                                       ; $5ADA: $6F
    rst $38                                       ; $5ADB: $FF
    ld h, [hl]                                    ; $5ADC: $66

jr_023_5ADD:
    ld l, c                                       ; $5ADD: $69
    ld l, [hl]                                    ; $5ADE: $6E

jr_023_5ADF:
    ld h, h                                       ; $5ADF: $64
    jr nz, jr_023_5B55                            ; $5AE0: $20 $73

    ld l, a                                       ; $5AE2: $6F
    ld l, l                                       ; $5AE3: $6D
    ld h, l                                       ; $5AE4: $65
    ld [hl], h                                    ; $5AE5: $74
    ld l, b                                       ; $5AE6: $68
    ld l, c                                       ; $5AE7: $69
    ld l, [hl]                                    ; $5AE8: $6E
    ld h, a                                       ; $5AE9: $67
    cp $74                                        ; $5AEA: $FE $74
    ld l, a                                       ; $5AEC: $6F
    jr nz, jr_023_5B5D                            ; $5AED: $20 $6E

    ld h, l                                       ; $5AEF: $65
    ld [hl], l                                    ; $5AF0: $75
    ld [hl], h                                    ; $5AF1: $74
    ld [hl], d                                    ; $5AF2: $72
    ld h, c                                       ; $5AF3: $61
    ld l, h                                       ; $5AF4: $6C
    ld l, c                                       ; $5AF5: $69
    ld a, d                                       ; $5AF6: $7A
    ld h, l                                       ; $5AF7: $65
    rst $38                                       ; $5AF8: $FF
    ld [hl], h                                    ; $5AF9: $74
    ld l, b                                       ; $5AFA: $68

jr_023_5AFB:
    ld h, l                                       ; $5AFB: $65
    jr nz, jr_023_5B65                            ; $5AFC: $20 $67

    ld h, l                                       ; $5AFE: $65
    ld a, c                                       ; $5AFF: $79
    ld [hl], e                                    ; $5B00: $73
    ld h, l                                       ; $5B01: $65
    ld [hl], d                                    ; $5B02: $72
    daa                                           ; $5B03: $27

jr_023_5B04:
    ld [hl], e                                    ; $5B04: $73
    cp $65                                        ; $5B05: $FE $65
    ld h, [hl]                                    ; $5B07: $66
    ld h, [hl]                                    ; $5B08: $66
    ld h, l                                       ; $5B09: $65
    ld h, e                                       ; $5B0A: $63
    ld [hl], h                                    ; $5B0B: $74
    ld l, $FE                                     ; $5B0C: $2E $FE
    ld c, c                                       ; $5B0E: $49
    jr nz, jr_023_5B74                            ; $5B0F: $20 $63

    ld h, c                                       ; $5B11: $61
    ld l, [hl]                                    ; $5B12: $6E
    jr nz, jr_023_5B89                            ; $5B13: $20 $74

    ld l, b                                       ; $5B15: $68
    ld l, c                                       ; $5B16: $69
    ld l, [hl]                                    ; $5B17: $6E
    ld l, e                                       ; $5B18: $6B
    rst $38                                       ; $5B19: $FF

jr_023_5B1A:
    ld l, a                                       ; $5B1A: $6F
    ld h, [hl]                                    ; $5B1B: $66
    jr nz, jr_023_5B8D                            ; $5B1C: $20 $6F

    ld l, [hl]                                    ; $5B1E: $6E
    ld l, h                                       ; $5B1F: $6C
    ld a, c                                       ; $5B20: $79

jr_023_5B21:
    jr nz, jr_023_5B21                            ; $5B21: $20 $FE

    ld l, a                                       ; $5B23: $6F
    ld l, [hl]                                    ; $5B24: $6E
    ld h, l                                       ; $5B25: $65
    jr nz, jr_023_5B91                            ; $5B26: $20 $69

    ld [hl], h                                    ; $5B28: $74
    ld h, l                                       ; $5B29: $65
    ld l, l                                       ; $5B2A: $6D
    rst $38                                       ; $5B2B: $FF
    ld [hl], e                                    ; $5B2C: $73
    ld [hl], l                                    ; $5B2D: $75
    ld h, [hl]                                    ; $5B2E: $66
    ld h, [hl]                                    ; $5B2F: $66
    ld l, c                                       ; $5B30: $69
    ld h, e                                       ; $5B31: $63
    ld l, c                                       ; $5B32: $69
    ld h, l                                       ; $5B33: $65
    ld l, [hl]                                    ; $5B34: $6E
    ld [hl], h                                    ; $5B35: $74
    ld l, h                                       ; $5B36: $6C
    ld a, c                                       ; $5B37: $79
    cp $70                                        ; $5B38: $FE $70
    ld l, a                                       ; $5B3A: $6F
    ld [hl], a                                    ; $5B3B: $77
    ld h, l                                       ; $5B3C: $65
    ld [hl], d                                    ; $5B3D: $72
    ld h, [hl]                                    ; $5B3E: $66
    ld [hl], l                                    ; $5B3F: $75
    ld l, h                                       ; $5B40: $6C
    jr nz, @+$76                                  ; $5B41: $20 $74

jr_023_5B43:
    ld l, a                                       ; $5B43: $6F
    rst $38                                       ; $5B44: $FF
    ld h, e                                       ; $5B45: $63
    ld [hl], l                                    ; $5B46: $75
    ld [hl], d                                    ; $5B47: $72
    ld h, l                                       ; $5B48: $65
    jr nz, jr_023_5B9A                            ; $5B49: $20 $4F

    ld [hl], d                                    ; $5B4B: $72
    ld [hl], a                                    ; $5B4C: $77
    ld l, c                                       ; $5B4D: $69

jr_023_5B4E:
    ld l, [hl]                                    ; $5B4E: $6E
    daa                                           ; $5B4F: $27
    ld [hl], e                                    ; $5B50: $73
    cp $61                                        ; $5B51: $FE $61
    ld l, c                                       ; $5B53: $69
    ld l, h                                       ; $5B54: $6C

jr_023_5B55:
    ld l, l                                       ; $5B55: $6D
    ld h, l                                       ; $5B56: $65
    ld l, [hl]                                    ; $5B57: $6E
    ld [hl], h                                    ; $5B58: $74
    ld [hl], e                                    ; $5B59: $73
    ld l, $FE                                     ; $5B5A: $2E $FE
    db $FD                                        ; $5B5C: $FD

jr_023_5B5D:
    sbc e                                         ; $5B5D: $9B
    ld a, b                                       ; $5B5E: $78
    ld [hl], b                                    ; $5B5F: $70
    sbc a                                         ; $5B60: $9F
    ld d, a                                       ; $5B61: $57
    ld l, b                                       ; $5B62: $68
    ld h, c                                       ; $5B63: $61
    ld [hl], h                                    ; $5B64: $74

jr_023_5B65:
    jr nz, jr_023_5BD0                            ; $5B65: $20 $69

    ld [hl], e                                    ; $5B67: $73
    jr nz, @+$6B                                  ; $5B68: $20 $69

    ld [hl], h                                    ; $5B6A: $74
    ccf                                           ; $5B6B: $3F
    cp $FD                                        ; $5B6C: $FE $FD
    sbc e                                         ; $5B6E: $9B
    reti                                          ; $5B6F: $D9


    ld b, a                                       ; $5B70: $47
    sbc a                                         ; $5B71: $9F
    ld c, c                                       ; $5B72: $49
    ld [hl], h                                    ; $5B73: $74

jr_023_5B74:
    jr nz, jr_023_5BDF                            ; $5B74: $20 $69

    ld [hl], e                                    ; $5B76: $73
    rst $38                                       ; $5B77: $FF
    ld h, l                                       ; $5B78: $65
    ld a, b                                       ; $5B79: $78
    ld [hl], h                                    ; $5B7A: $74
    ld [hl], d                                    ; $5B7B: $72
    ld h, l                                       ; $5B7C: $65
    ld l, l                                       ; $5B7D: $6D
    ld h, l                                       ; $5B7E: $65
    ld l, h                                       ; $5B7F: $6C
    ld a, c                                       ; $5B80: $79
    jr nz, jr_023_5BF5                            ; $5B81: $20 $72

    ld h, c                                       ; $5B83: $61
    ld [hl], d                                    ; $5B84: $72
    ld h, l                                       ; $5B85: $65
    cp $61                                        ; $5B86: $FE $61
    ld l, [hl]                                    ; $5B88: $6E

jr_023_5B89:
    ld h, h                                       ; $5B89: $64
    jr nz, @+$72                                  ; $5B8A: $20 $70

    ld l, a                                       ; $5B8C: $6F

jr_023_5B8D:
    ld [hl], a                                    ; $5B8D: $77
    ld h, l                                       ; $5B8E: $65
    ld [hl], d                                    ; $5B8F: $72
    ld h, [hl]                                    ; $5B90: $66

jr_023_5B91:
    ld [hl], l                                    ; $5B91: $75
    ld l, h                                       ; $5B92: $6C
    ld l, $FE                                     ; $5B93: $2E $FE
    db $FD                                        ; $5B95: $FD
    sbc e                                         ; $5B96: $9B
    ld a, b                                       ; $5B97: $78
    ld [hl], b                                    ; $5B98: $70
    sbc a                                         ; $5B99: $9F

jr_023_5B9A:
    ld e, c                                       ; $5B9A: $59
    ld h, l                                       ; $5B9B: $65
    ld [hl], e                                    ; $5B9C: $73
    inc l                                         ; $5B9D: $2C
    cp $42                                        ; $5B9E: $FE $42
    ld [hl], l                                    ; $5BA0: $75
    ld [hl], h                                    ; $5BA1: $74
    jr nz, jr_023_5C1B                            ; $5BA2: $20 $77

    ld l, b                                       ; $5BA4: $68
    ld h, c                                       ; $5BA5: $61
    ld [hl], h                                    ; $5BA6: $74
    rst $38                                       ; $5BA7: $FF
    ld l, c                                       ; $5BA8: $69
    ld [hl], e                                    ; $5BA9: $73
    jr nz, jr_023_5C15                            ; $5BAA: $20 $69

    ld [hl], h                                    ; $5BAC: $74
    ccf                                           ; $5BAD: $3F
    cp $FD                                        ; $5BAE: $FE $FD
    sbc e                                         ; $5BB0: $9B
    reti                                          ; $5BB1: $D9


    ld b, a                                       ; $5BB2: $47
    sbc a                                         ; $5BB3: $9F
    ld c, c                                       ; $5BB4: $49
    ld [hl], h                                    ; $5BB5: $74
    jr nz, jr_023_5C25                            ; $5BB6: $20 $6D

    ld [hl], l                                    ; $5BB8: $75
    ld [hl], e                                    ; $5BB9: $73
    ld [hl], h                                    ; $5BBA: $74
    jr nz, @+$64                                  ; $5BBB: $20 $62

    ld h, l                                       ; $5BBD: $65
    rst $38                                       ; $5BBE: $FF
    ld [hl], e                                    ; $5BBF: $73
    ld [hl], b                                    ; $5BC0: $70
    ld h, l                                       ; $5BC1: $65
    ld h, e                                       ; $5BC2: $63
    ld l, c                                       ; $5BC3: $69
    ld h, c                                       ; $5BC4: $61
    ld l, h                                       ; $5BC5: $6C
    ld l, h                                       ; $5BC6: $6C
    ld a, c                                       ; $5BC7: $79

jr_023_5BC8:
    jr nz, jr_023_5BC8                            ; $5BC8: $20 $FE

    ld [hl], b                                    ; $5BCA: $70
    ld [hl], d                                    ; $5BCB: $72
    ld h, l                                       ; $5BCC: $65
    ld [hl], b                                    ; $5BCD: $70
    ld h, c                                       ; $5BCE: $61
    ld [hl], d                                    ; $5BCF: $72

jr_023_5BD0:
    ld h, l                                       ; $5BD0: $65
    ld h, h                                       ; $5BD1: $64
    jr nz, jr_023_5C3D                            ; $5BD2: $20 $69

    ld l, [hl]                                    ; $5BD4: $6E
    ld [hl], h                                    ; $5BD5: $74
    ld l, a                                       ; $5BD6: $6F
    rst $38                                       ; $5BD7: $FF
    ld h, c                                       ; $5BD8: $61
    ld l, [hl]                                    ; $5BD9: $6E
    jr nz, jr_023_5C41                            ; $5BDA: $20 $65

    ld l, h                                       ; $5BDC: $6C
    ld l, c                                       ; $5BDD: $69
    ld a, b                                       ; $5BDE: $78

jr_023_5BDF:
    ld l, c                                       ; $5BDF: $69
    ld [hl], d                                    ; $5BE0: $72
    jr nz, jr_023_5C57                            ; $5BE1: $20 $74

    ld l, a                                       ; $5BE3: $6F
    cp $63                                        ; $5BE4: $FE $63
    ld [hl], l                                    ; $5BE6: $75
    ld [hl], d                                    ; $5BE7: $72
    ld h, l                                       ; $5BE8: $65
    jr nz, @+$51                                  ; $5BE9: $20 $4F

    ld [hl], d                                    ; $5BEB: $72
    ld [hl], a                                    ; $5BEC: $77
    ld l, c                                       ; $5BED: $69
    ld l, [hl]                                    ; $5BEE: $6E
    ld l, $FE                                     ; $5BEF: $2E $FE
    db $FD                                        ; $5BF1: $FD
    sbc e                                         ; $5BF2: $9B
    ld a, b                                       ; $5BF3: $78
    ld [hl], b                                    ; $5BF4: $70

jr_023_5BF5:
    sbc a                                         ; $5BF5: $9F
    ld c, a                                       ; $5BF6: $4F
    ld c, e                                       ; $5BF7: $4B
    ld b, c                                       ; $5BF8: $41
    ld e, c                                       ; $5BF9: $59
    ld hl, $57FE                                  ; $5BFA: $21 $FE $57
    ld l, b                                       ; $5BFD: $68
    ld h, c                                       ; $5BFE: $61
    ld [hl], h                                    ; $5BFF: $74
    jr nz, jr_023_5C6B                            ; $5C00: $20 $69

    ld [hl], e                                    ; $5C02: $73
    jr nz, jr_023_5C6E                            ; $5C03: $20 $69

    ld [hl], h                                    ; $5C05: $74
    ccf                                           ; $5C06: $3F
    cp $FD                                        ; $5C07: $FE $FD
    sbc e                                         ; $5C09: $9B
    reti                                          ; $5C0A: $D9


    ld b, a                                       ; $5C0B: $47
    sbc a                                         ; $5C0C: $9F
    ld c, c                                       ; $5C0D: $49
    ld [hl], h                                    ; $5C0E: $74
    jr nz, jr_023_5C74                            ; $5C0F: $20 $63

    ld h, c                                       ; $5C11: $61
    ld l, [hl]                                    ; $5C12: $6E
    daa                                           ; $5C13: $27
    ld [hl], h                                    ; $5C14: $74

jr_023_5C15:
    jr nz, jr_023_5C79                            ; $5C15: $20 $62

    ld h, l                                       ; $5C17: $65
    rst $38                                       ; $5C18: $FF
    ld h, [hl]                                    ; $5C19: $66
    ld l, a                                       ; $5C1A: $6F

jr_023_5C1B:
    ld [hl], l                                    ; $5C1B: $75
    ld l, [hl]                                    ; $5C1C: $6E
    ld h, h                                       ; $5C1D: $64
    jr nz, jr_023_5C89                            ; $5C1E: $20 $69

    ld l, [hl]                                    ; $5C20: $6E
    jr nz, jr_023_5C84                            ; $5C21: $20 $61

    ld l, [hl]                                    ; $5C23: $6E
    ld a, c                                       ; $5C24: $79

jr_023_5C25:
    cp $73                                        ; $5C25: $FE $73
    ld [hl], h                                    ; $5C27: $74
    ld l, a                                       ; $5C28: $6F
    ld [hl], d                                    ; $5C29: $72
    ld h, l                                       ; $5C2A: $65
    ld [hl], e                                    ; $5C2B: $73
    ld hl, $FDFE                                  ; $5C2C: $21 $FE $FD
    sbc e                                         ; $5C2F: $9B
    ld a, b                                       ; $5C30: $78
    ld [hl], b                                    ; $5C31: $70
    sbc a                                         ; $5C32: $9F
    ld b, c                                       ; $5C33: $41
    ld d, d                                       ; $5C34: $52
    ld d, d                                       ; $5C35: $52
    ld b, a                                       ; $5C36: $47
    ld c, b                                       ; $5C37: $48
    ld hl, $57FE                                  ; $5C38: $21 $FE $57
    ld l, b                                       ; $5C3B: $68
    ld h, c                                       ; $5C3C: $61

jr_023_5C3D:
    ld [hl], h                                    ; $5C3D: $74
    jr nz, jr_023_5CA9                            ; $5C3E: $20 $69

    ld [hl], e                                    ; $5C40: $73

jr_023_5C41:
    jr nz, jr_023_5CAC                            ; $5C41: $20 $69

    ld [hl], h                                    ; $5C43: $74
    rst $38                                       ; $5C44: $FF
    ld b, e                                       ; $5C45: $43
    ld b, c                                       ; $5C46: $41
    ld c, h                                       ; $5C47: $4C
    ld c, h                                       ; $5C48: $4C
    ld b, l                                       ; $5C49: $45
    ld b, h                                       ; $5C4A: $44
    ld hl, $FDFE                                  ; $5C4B: $21 $FE $FD
    sbc e                                         ; $5C4E: $9B
    reti                                          ; $5C4F: $D9


    ld b, a                                       ; $5C50: $47
    sbc a                                         ; $5C51: $9F
    ld c, a                                       ; $5C52: $4F
    ld l, b                                       ; $5C53: $68
    ld hl, $FE20                                  ; $5C54: $21 $20 $FE

jr_023_5C57:
    ld b, c                                       ; $5C57: $41
    jr nz, jr_023_5C9D                            ; $5C58: $20 $43

    ld l, h                                       ; $5C5A: $6C
    ld l, a                                       ; $5C5B: $6F
    ld [hl], l                                    ; $5C5C: $75
    ld h, h                                       ; $5C5D: $64
    rst $38                                       ; $5C5E: $FF
    ld b, [hl]                                    ; $5C5F: $46
    ld [hl], d                                    ; $5C60: $72
    ld l, a                                       ; $5C61: $6F
    ld l, [hl]                                    ; $5C62: $6E
    ld h, h                                       ; $5C63: $64
    ld l, $FE                                     ; $5C64: $2E $FE
    db $FD                                        ; $5C66: $FD
    sbc e                                         ; $5C67: $9B
    ld a, b                                       ; $5C68: $78
    ld [hl], b                                    ; $5C69: $70
    sbc a                                         ; $5C6A: $9F

jr_023_5C6B:
    ld d, h                                       ; $5C6B: $54
    ld l, b                                       ; $5C6C: $68
    ld h, c                                       ; $5C6D: $61

jr_023_5C6E:
    ld l, [hl]                                    ; $5C6E: $6E
    ld l, e                                       ; $5C6F: $6B
    ld [hl], e                                    ; $5C70: $73
    ld l, $FE                                     ; $5C71: $2E $FE
    db $FD                                        ; $5C73: $FD

jr_023_5C74:
    sbc e                                         ; $5C74: $9B
    reti                                          ; $5C75: $D9


    ld b, a                                       ; $5C76: $47
    sbc a                                         ; $5C77: $9F
    ld c, c                                       ; $5C78: $49

jr_023_5C79:
    jr nz, jr_023_5CF2                            ; $5C79: $20 $77

    ld l, c                                       ; $5C7B: $69
    ld l, h                                       ; $5C7C: $6C
    ld l, h                                       ; $5C7D: $6C
    jr nz, jr_023_5CED                            ; $5C7E: $20 $6D

    ld h, c                                       ; $5C80: $61
    ld l, e                                       ; $5C81: $6B
    ld h, l                                       ; $5C82: $65
    rst $38                                       ; $5C83: $FF

jr_023_5C84:
    ld [hl], h                                    ; $5C84: $74
    ld l, b                                       ; $5C85: $68
    ld h, l                                       ; $5C86: $65
    jr nz, jr_023_5CCC                            ; $5C87: $20 $43

jr_023_5C89:
    ld l, h                                       ; $5C89: $6C
    ld l, a                                       ; $5C8A: $6F
    ld [hl], l                                    ; $5C8B: $75
    ld h, h                                       ; $5C8C: $64
    jr nz, jr_023_5CD5                            ; $5C8D: $20 $46

    ld [hl], d                                    ; $5C8F: $72
    ld l, a                                       ; $5C90: $6F
    ld l, [hl]                                    ; $5C91: $6E
    ld h, h                                       ; $5C92: $64
    cp $45                                        ; $5C93: $FE $45
    ld l, h                                       ; $5C95: $6C
    ld l, c                                       ; $5C96: $69
    ld a, b                                       ; $5C97: $78
    ld l, c                                       ; $5C98: $69
    ld [hl], d                                    ; $5C99: $72
    jr nz, jr_023_5D05                            ; $5C9A: $20 $69

    ld h, [hl]                                    ; $5C9C: $66

jr_023_5C9D:
    jr nz, jr_023_5D18                            ; $5C9D: $20 $79

    ld l, a                                       ; $5C9F: $6F
    ld [hl], l                                    ; $5CA0: $75
    rst $38                                       ; $5CA1: $FF
    ld h, e                                       ; $5CA2: $63
    ld h, c                                       ; $5CA3: $61
    ld l, [hl]                                    ; $5CA4: $6E
    jr nz, jr_023_5D0E                            ; $5CA5: $20 $67

    ld h, l                                       ; $5CA7: $65
    ld [hl], h                                    ; $5CA8: $74

jr_023_5CA9:
    jr nz, jr_023_5D1A                            ; $5CA9: $20 $6F

    ld l, [hl]                                    ; $5CAB: $6E

jr_023_5CAC:
    ld h, l                                       ; $5CAC: $65
    ld l, $FE                                     ; $5CAD: $2E $FE
    db $FD                                        ; $5CAF: $FD
    sbc e                                         ; $5CB0: $9B
    ld a, b                                       ; $5CB1: $78
    ld [hl], b                                    ; $5CB2: $70
    sbc a                                         ; $5CB3: $9F
    ld d, a                                       ; $5CB4: $57
    ld l, b                                       ; $5CB5: $68
    ld h, l                                       ; $5CB6: $65
    ld [hl], d                                    ; $5CB7: $72
    ld h, l                                       ; $5CB8: $65
    jr nz, jr_023_5D1E                            ; $5CB9: $20 $63

    ld h, c                                       ; $5CBB: $61
    ld l, [hl]                                    ; $5CBC: $6E
    jr nz, jr_023_5D08                            ; $5CBD: $20 $49

    rst $38                                       ; $5CBF: $FF
    ld h, [hl]                                    ; $5CC0: $66
    ld l, c                                       ; $5CC1: $69
    ld l, [hl]                                    ; $5CC2: $6E
    ld h, h                                       ; $5CC3: $64
    jr nz, jr_023_5D27                            ; $5CC4: $20 $61

    jr nz, jr_023_5D0B                            ; $5CC6: $20 $43

    ld l, h                                       ; $5CC8: $6C
    ld l, a                                       ; $5CC9: $6F
    ld [hl], l                                    ; $5CCA: $75
    ld h, h                                       ; $5CCB: $64

jr_023_5CCC:
    cp $46                                        ; $5CCC: $FE $46
    ld [hl], d                                    ; $5CCE: $72
    ld l, a                                       ; $5CCF: $6F
    ld l, [hl]                                    ; $5CD0: $6E
    ld h, h                                       ; $5CD1: $64
    ccf                                           ; $5CD2: $3F
    cp $FD                                        ; $5CD3: $FE $FD

jr_023_5CD5:
    sbc e                                         ; $5CD5: $9B
    reti                                          ; $5CD6: $D9


    ld b, a                                       ; $5CD7: $47
    sbc a                                         ; $5CD8: $9F
    ld l, $2E                                     ; $5CD9: $2E $2E
    ld l, $48                                     ; $5CDB: $2E $48
    ld l, l                                       ; $5CDD: $6D
    ld l, l                                       ; $5CDE: $6D
    ld l, l                                       ; $5CDF: $6D
    ld l, l                                       ; $5CE0: $6D
    cp $49                                        ; $5CE1: $FE $49
    jr nz, jr_023_5D52                            ; $5CE3: $20 $6D

    ld [hl], l                                    ; $5CE5: $75
    ld [hl], e                                    ; $5CE6: $73
    ld [hl], h                                    ; $5CE7: $74
    jr nz, jr_023_5D57                            ; $5CE8: $20 $6D

    ld h, l                                       ; $5CEA: $65
    ld h, h                                       ; $5CEB: $64
    ld l, c                                       ; $5CEC: $69

jr_023_5CED:
    ld [hl], h                                    ; $5CED: $74
    ld h, c                                       ; $5CEE: $61
    ld [hl], h                                    ; $5CEF: $74
    ld h, l                                       ; $5CF0: $65
    rst $38                                       ; $5CF1: $FF

jr_023_5CF2:
    ld l, a                                       ; $5CF2: $6F
    ld l, [hl]                                    ; $5CF3: $6E
    jr nz, jr_023_5D6A                            ; $5CF4: $20 $74

    ld l, b                                       ; $5CF6: $68
    ld h, l                                       ; $5CF7: $65
    jr nz, jr_023_5D6D                            ; $5CF8: $20 $73

    ld [hl], l                                    ; $5CFA: $75
    ld h, d                                       ; $5CFB: $62
    ld l, d                                       ; $5CFC: $6A
    ld h, l                                       ; $5CFD: $65
    ld h, e                                       ; $5CFE: $63
    ld [hl], h                                    ; $5CFF: $74
    ld l, $FE                                     ; $5D00: $2E $FE
    ld d, a                                       ; $5D02: $57
    ld l, b                                       ; $5D03: $68
    ld a, c                                       ; $5D04: $79

jr_023_5D05:
    jr nz, jr_023_5D6B                            ; $5D05: $20 $64

    ld l, a                                       ; $5D07: $6F

jr_023_5D08:
    ld l, [hl]                                    ; $5D08: $6E
    daa                                           ; $5D09: $27
    ld [hl], h                                    ; $5D0A: $74

jr_023_5D0B:
    jr nz, @+$7B                                  ; $5D0B: $20 $79

    ld l, a                                       ; $5D0D: $6F

jr_023_5D0E:
    ld [hl], l                                    ; $5D0E: $75
    rst $38                                       ; $5D0F: $FF
    ld [hl], e                                    ; $5D10: $73
    ld h, l                                       ; $5D11: $65
    ld h, l                                       ; $5D12: $65
    jr nz, jr_023_5D7E                            ; $5D13: $20 $69

    ld h, [hl]                                    ; $5D15: $66
    jr nz, jr_023_5D91                            ; $5D16: $20 $79

jr_023_5D18:
    ld l, a                                       ; $5D18: $6F
    ld [hl], l                                    ; $5D19: $75

jr_023_5D1A:
    cp $63                                        ; $5D1A: $FE $63
    ld h, c                                       ; $5D1C: $61
    ld l, [hl]                                    ; $5D1D: $6E

jr_023_5D1E:
    jr nz, @+$68                                  ; $5D1E: $20 $66

    ld l, c                                       ; $5D20: $69
    ld l, [hl]                                    ; $5D21: $6E
    ld h, h                                       ; $5D22: $64
    jr nz, jr_023_5D94                            ; $5D23: $20 $6F

    ld l, [hl]                                    ; $5D25: $6E
    ld h, l                                       ; $5D26: $65

jr_023_5D27:
    rst $38                                       ; $5D27: $FF
    ld l, a                                       ; $5D28: $6F
    ld l, [hl]                                    ; $5D29: $6E
    jr nz, jr_023_5DA5                            ; $5D2A: $20 $79

    ld l, a                                       ; $5D2C: $6F
    ld [hl], l                                    ; $5D2D: $75
    ld [hl], d                                    ; $5D2E: $72
    jr nz, jr_023_5DA0                            ; $5D2F: $20 $6F

    ld [hl], a                                    ; $5D31: $77
    ld l, [hl]                                    ; $5D32: $6E
    inc l                                         ; $5D33: $2C
    cp $61                                        ; $5D34: $FE $61
    ld l, [hl]                                    ; $5D36: $6E
    ld h, h                                       ; $5D37: $64
    jr nz, jr_023_5D9D                            ; $5D38: $20 $63

    ld l, b                                       ; $5D3A: $68
    ld h, l                                       ; $5D3B: $65
    ld h, e                                       ; $5D3C: $63
    ld l, e                                       ; $5D3D: $6B
    jr nz, jr_023_5DA2                            ; $5D3E: $20 $62

    ld h, c                                       ; $5D40: $61
    ld h, e                                       ; $5D41: $63
    ld l, e                                       ; $5D42: $6B
    rst $38                                       ; $5D43: $FF
    ld [hl], a                                    ; $5D44: $77
    ld l, c                                       ; $5D45: $69
    ld [hl], h                                    ; $5D46: $74
    ld l, b                                       ; $5D47: $68
    jr nz, jr_023_5DB7                            ; $5D48: $20 $6D

    ld h, l                                       ; $5D4A: $65
    jr nz, jr_023_5DB6                            ; $5D4B: $20 $69

    ld h, [hl]                                    ; $5D4D: $66
    cp $79                                        ; $5D4E: $FE $79
    ld l, a                                       ; $5D50: $6F
    ld [hl], l                                    ; $5D51: $75

jr_023_5D52:
    jr nz, jr_023_5DC2                            ; $5D52: $20 $6E

    ld h, l                                       ; $5D54: $65
    ld h, l                                       ; $5D55: $65
    ld h, h                                       ; $5D56: $64

jr_023_5D57:
    rst $38                                       ; $5D57: $FF
    ld h, c                                       ; $5D58: $61
    ld h, h                                       ; $5D59: $64
    halt                                          ; $5D5A: $76
    ld l, c                                       ; $5D5B: $69
    ld h, e                                       ; $5D5C: $63
    ld h, l                                       ; $5D5D: $65
    ld l, $FE                                     ; $5D5E: $2E $FE
    db $FD                                        ; $5D60: $FD
    sbc e                                         ; $5D61: $9B
    ld a, b                                       ; $5D62: $78
    ld [hl], b                                    ; $5D63: $70
    sbc a                                         ; $5D64: $9F
    ld l, $2E                                     ; $5D65: $2E $2E
    ld l, $2E                                     ; $5D67: $2E $2E
    ld d, e                                       ; $5D69: $53

jr_023_5D6A:
    ld [hl], l                                    ; $5D6A: $75

jr_023_5D6B:
    ld [hl], d                                    ; $5D6B: $72
    ld h, l                                       ; $5D6C: $65

jr_023_5D6D:
    ld l, $FE                                     ; $5D6D: $2E $FE
    db $FD                                        ; $5D6F: $FD
    sbc e                                         ; $5D70: $9B
    reti                                          ; $5D71: $D9


    ld b, a                                       ; $5D72: $47
    sbc a                                         ; $5D73: $9F
    ld c, c                                       ; $5D74: $49
    ld h, [hl]                                    ; $5D75: $66
    jr nz, @+$7B                                  ; $5D76: $20 $79

    ld l, a                                       ; $5D78: $6F
    ld [hl], l                                    ; $5D79: $75
    jr nz, jr_023_5DEA                            ; $5D7A: $20 $6E

    ld h, l                                       ; $5D7C: $65
    ld h, l                                       ; $5D7D: $65

jr_023_5D7E:
    ld h, h                                       ; $5D7E: $64
    jr nz, jr_023_5DEE                            ; $5D7F: $20 $6D

    ld h, l                                       ; $5D81: $65
    inc l                                         ; $5D82: $2C
    rst $38                                       ; $5D83: $FF
    ld c, c                                       ; $5D84: $49
    jr nz, jr_023_5DFE                            ; $5D85: $20 $77

    ld l, c                                       ; $5D87: $69
    ld l, h                                       ; $5D88: $6C
    ld l, h                                       ; $5D89: $6C
    jr nz, jr_023_5DEE                            ; $5D8A: $20 $62

    ld h, l                                       ; $5D8C: $65

jr_023_5D8D:
    jr nz, @+$64                                  ; $5D8D: $20 $62

    ld h, c                                       ; $5D8F: $61
    ld h, e                                       ; $5D90: $63

jr_023_5D91:
    ld l, e                                       ; $5D91: $6B
    cp $61                                        ; $5D92: $FE $61

jr_023_5D94:
    ld [hl], h                                    ; $5D94: $74
    jr nz, jr_023_5E04                            ; $5D95: $20 $6D

    ld a, c                                       ; $5D97: $79
    rst $38                                       ; $5D98: $FF
    ld h, d                                       ; $5D99: $62
    ld l, a                                       ; $5D9A: $6F
    ld h, c                                       ; $5D9B: $61
    ld [hl], h                                    ; $5D9C: $74

jr_023_5D9D:
    ld l, b                                       ; $5D9D: $68
    ld l, a                                       ; $5D9E: $6F
    ld [hl], l                                    ; $5D9F: $75

jr_023_5DA0:
    ld [hl], e                                    ; $5DA0: $73
    ld h, l                                       ; $5DA1: $65

jr_023_5DA2:
    inc l                                         ; $5DA2: $2C
    cp $6D                                        ; $5DA3: $FE $6D

jr_023_5DA5:
    ld h, l                                       ; $5DA5: $65
    ld h, h                                       ; $5DA6: $64
    ld l, c                                       ; $5DA7: $69
    ld [hl], h                                    ; $5DA8: $74

jr_023_5DA9:
    ld h, c                                       ; $5DA9: $61
    ld [hl], h                                    ; $5DAA: $74
    ld l, c                                       ; $5DAB: $69
    ld l, [hl]                                    ; $5DAC: $6E
    ld h, a                                       ; $5DAD: $67
    ld l, $FE                                     ; $5DAE: $2E $FE
    db $FD                                        ; $5DB0: $FD
    sbc d                                         ; $5DB1: $9A
    ld e, h                                       ; $5DB2: $5C
    nop                                           ; $5DB3: $00

jr_023_5DB4:
    inc bc                                        ; $5DB4: $03
    ld b, d                                       ; $5DB5: $42

jr_023_5DB6:
    sbc e                                         ; $5DB6: $9B

jr_023_5DB7:
    ld a, b                                       ; $5DB7: $78
    ld [hl], b                                    ; $5DB8: $70
    sbc a                                         ; $5DB9: $9F
    ld d, a                                       ; $5DBA: $57
    ld h, l                                       ; $5DBB: $65
    ld l, h                                       ; $5DBC: $6C
    ld l, h                                       ; $5DBD: $6C
    inc l                                         ; $5DBE: $2C
    jr nz, jr_023_5E25                            ; $5DBF: $20 $64

    ld l, a                                       ; $5DC1: $6F

jr_023_5DC2:
    ld l, [hl]                                    ; $5DC2: $6E
    daa                                           ; $5DC3: $27
    ld [hl], h                                    ; $5DC4: $74
    rst $38                                       ; $5DC5: $FF
    ld [hl], e                                    ; $5DC6: $73
    ld [hl], h                                    ; $5DC7: $74
    ld [hl], d                                    ; $5DC8: $72
    ld h, c                                       ; $5DC9: $61
    ld l, c                                       ; $5DCA: $69
    ld l, [hl]                                    ; $5DCB: $6E

jr_023_5DCC:
    jr nz, jr_023_5DCC                            ; $5DCC: $20 $FE

    ld a, c                                       ; $5DCE: $79
    ld l, a                                       ; $5DCF: $6F
    ld [hl], l                                    ; $5DD0: $75
    ld [hl], d                                    ; $5DD1: $72
    ld [hl], e                                    ; $5DD2: $73
    ld h, l                                       ; $5DD3: $65
    ld l, h                                       ; $5DD4: $6C
    ld h, [hl]                                    ; $5DD5: $66
    ld hl, $FDFE                                  ; $5DD6: $21 $FE $FD
    sbc d                                         ; $5DD9: $9A
    rlca                                          ; $5DDA: $07
    nop                                           ; $5DDB: $00
    add c                                         ; $5DDC: $81
    ld e, l                                       ; $5DDD: $5D
    add hl, bc                                    ; $5DDE: $09
    nop                                           ; $5DDF: $00
    jr nz, jr_023_5D8D                            ; $5DE0: $20 $AB

    ld d, b                                       ; $5DE2: $50
    ld b, d                                       ; $5DE3: $42
    sub e                                         ; $5DE4: $93
    ld h, l                                       ; $5DE5: $65
    or c                                          ; $5DE6: $B1
    ld b, e                                       ; $5DE7: $43
    ld c, a                                       ; $5DE8: $4F
    ld h, h                                       ; $5DE9: $64

jr_023_5DEA:
    add hl, sp                                    ; $5DEA: $39
    ld b, h                                       ; $5DEB: $44
    ld h, [hl]                                    ; $5DEC: $66
    ret nz                                        ; $5DED: $C0

jr_023_5DEE:
    ld e, h                                       ; $5DEE: $5C
    ld hl, $4269                                  ; $5DEF: $21 $69 $42
    ld b, h                                       ; $5DF2: $44
    dec b                                         ; $5DF3: $05
    nop                                           ; $5DF4: $00
    add c                                         ; $5DF5: $81
    ld e, l                                       ; $5DF6: $5D
    ld c, $09                                     ; $5DF7: $0E $09
    jp nz, $00D0                                  ; $5DF9: $C2 $D0 $00

    jr nz, jr_023_5DA9                            ; $5DFC: $20 $AB

jr_023_5DFE:
    ld d, b                                       ; $5DFE: $50
    ld [hl+], a                                   ; $5DFF: $22
    inc b                                         ; $5E00: $04
    ld b, b                                       ; $5E01: $40
    dec b                                         ; $5E02: $05
    inc bc                                        ; $5E03: $03

jr_023_5E04:
    db $ED                                        ; $5E04: $ED
    ld h, e                                       ; $5E05: $63
    ld [bc], a                                    ; $5E06: $02
    inc b                                         ; $5E07: $04
    ld d, d                                       ; $5E08: $52
    ret nc                                        ; $5E09: $D0

    inc l                                         ; $5E0A: $2C
    rrca                                          ; $5E0B: $0F
    db $FC                                        ; $5E0C: $FC
    ld d, [hl]                                    ; $5E0D: $56
    inc hl                                        ; $5E0E: $23
    ld c, c                                       ; $5E0F: $49
    ld e, [hl]                                    ; $5E10: $5E
    dec b                                         ; $5E11: $05
    inc b                                         ; $5E12: $04
    db $ED                                        ; $5E13: $ED
    ld h, e                                       ; $5E14: $63
    dec b                                         ; $5E15: $05
    ld [$D0A5], sp                                ; $5E16: $08 $A5 $D0
    ld d, e                                       ; $5E19: $53
    inc hl                                        ; $5E1A: $23
    inc a                                         ; $5E1B: $3C
    ld e, [hl]                                    ; $5E1C: $5E
    inc hl                                        ; $5E1D: $23
    ld b, c                                       ; $5E1E: $41
    ld e, [hl]                                    ; $5E1F: $5E
    ld l, e                                       ; $5E20: $6B
    daa                                           ; $5E21: $27
    ld a, [bc]                                    ; $5E22: $0A
    ret nc                                        ; $5E23: $D0

    ld [hl], c                                    ; $5E24: $71

jr_023_5E25:
    ret nz                                        ; $5E25: $C0

    add d                                         ; $5E26: $82
    nop                                           ; $5E27: $00
    ld l, e                                       ; $5E28: $6B
    dec l                                         ; $5E29: $2D
    inc c                                         ; $5E2A: $0C
    or b                                          ; $5E2B: $B0
    ld e, a                                       ; $5E2C: $5F
    jr nc, jr_023_5DB4                            ; $5E2D: $30 $85

    nop                                           ; $5E2F: $00
    dec bc                                        ; $5E30: $0B
    nop                                           ; $5E31: $00
    dec bc                                        ; $5E32: $0B
    inc bc                                        ; $5E33: $03
    dec bc                                        ; $5E34: $0B
    inc b                                         ; $5E35: $04
    nop                                           ; $5E36: $00
    add d                                         ; $5E37: $82
    rra                                           ; $5E38: $1F
    inc hl                                        ; $5E39: $23
    sub h                                         ; $5E3A: $94
    ld b, d                                       ; $5E3B: $42
    inc d                                         ; $5E3C: $14
    db $10                                        ; $5E3D: $10
    ld l, c                                       ; $5E3E: $69
    ld [hl], a                                    ; $5E3F: $77
    ld b, d                                       ; $5E40: $42
    ld e, e                                       ; $5E41: $5B
    inc hl                                        ; $5E42: $23
    xor a                                         ; $5E43: $AF
    ld e, [hl]                                    ; $5E44: $5E
    ld b, l                                       ; $5E45: $45
    db $10                                        ; $5E46: $10
    cp c                                          ; $5E47: $B9
    ld [hl], a                                    ; $5E48: $77
    ld e, e                                       ; $5E49: $5B
    inc hl                                        ; $5E4A: $23
    ld d, c                                       ; $5E4B: $51
    ld e, [hl]                                    ; $5E4C: $5E
    ld b, l                                       ; $5E4D: $45
    rrca                                          ; $5E4E: $0F
    db $FC                                        ; $5E4F: $FC
    ld d, [hl]                                    ; $5E50: $56
    sbc e                                         ; $5E51: $9B
    adc b                                         ; $5E52: $88
    ld h, l                                       ; $5E53: $65
    ld b, e                                       ; $5E54: $43
    rrca                                          ; $5E55: $0F
    inc b                                         ; $5E56: $04
    dec b                                         ; $5E57: $05
    inc b                                         ; $5E58: $04
    inc hl                                        ; $5E59: $23
    add [hl]                                      ; $5E5A: $86
    ld e, [hl]                                    ; $5E5B: $5E
    sbc a                                         ; $5E5C: $9F
    ld l, $2E                                     ; $5E5D: $2E $2E
    ld l, $2E                                     ; $5E5F: $2E $2E
    ld l, $2E                                     ; $5E61: $2E $2E
    ld l, $2E                                     ; $5E63: $2E $2E
    ld l, $2E                                     ; $5E65: $2E $2E
    ld l, $2E                                     ; $5E67: $2E $2E
    cp $FD                                        ; $5E69: $FE $FD
    sbc e                                         ; $5E6B: $9B
    ld a, b                                       ; $5E6C: $78
    ld [hl], b                                    ; $5E6D: $70
    sbc a                                         ; $5E6E: $9F
    ld c, b                                       ; $5E6F: $48
    ld h, l                                       ; $5E70: $65
    daa                                           ; $5E71: $27
    ld [hl], e                                    ; $5E72: $73
    jr nz, @+$69                                  ; $5E73: $20 $67

    ld h, l                                       ; $5E75: $65
    ld [hl], h                                    ; $5E76: $74
    ld [hl], h                                    ; $5E77: $74
    ld l, c                                       ; $5E78: $69
    ld l, [hl]                                    ; $5E79: $6E
    ld h, a                                       ; $5E7A: $67
    rst $38                                       ; $5E7B: $FF
    ld [hl], a                                    ; $5E7C: $77
    ld l, a                                       ; $5E7D: $6F
    ld [hl], d                                    ; $5E7E: $72
    ld [hl], e                                    ; $5E7F: $73
    ld h, l                                       ; $5E80: $65
    ld l, $FE                                     ; $5E81: $2E $FE
    db $FD                                        ; $5E83: $FD
    sbc d                                         ; $5E84: $9A
    ld [de], a                                    ; $5E85: $12
    sbc a                                         ; $5E86: $9F
    ld e, c                                       ; $5E87: $59
    ld l, a                                       ; $5E88: $6F
    ld [hl], l                                    ; $5E89: $75
    jr nz, jr_023_5EF9                            ; $5E8A: $20 $6D

    ld [hl], l                                    ; $5E8C: $75
    ld [hl], e                                    ; $5E8D: $73
    ld [hl], h                                    ; $5E8E: $74
    ld l, $2E                                     ; $5E8F: $2E $2E
    ld l, $2E                                     ; $5E91: $2E $2E
    ld l, $FF                                     ; $5E93: $2E $FF
    ld l, $2E                                     ; $5E95: $2E $2E
    ld l, $66                                     ; $5E97: $2E $66
    ld l, c                                       ; $5E99: $69
    ld l, [hl]                                    ; $5E9A: $6E
    ld h, h                                       ; $5E9B: $64
    ld l, $2E                                     ; $5E9C: $2E $2E
    ld l, $FE                                     ; $5E9E: $2E $FE
    ld l, $2E                                     ; $5EA0: $2E $2E
    ld l, $2E                                     ; $5EA2: $2E $2E
    ld l, $2E                                     ; $5EA4: $2E $2E
    ld b, a                                       ; $5EA6: $47
    ld l, c                                       ; $5EA7: $69
    ld h, c                                       ; $5EA8: $61
    ld l, $2E                                     ; $5EA9: $2E $2E
    cp $FD                                        ; $5EAB: $FE $FD
    sbc d                                         ; $5EAD: $9A
    ld [de], a                                    ; $5EAE: $12
    sbc e                                         ; $5EAF: $9B
    ld l, b                                       ; $5EB0: $68
    ld h, d                                       ; $5EB1: $62
    sbc a                                         ; $5EB2: $9F
    ld c, [hl]                                    ; $5EB3: $4E
    ld l, a                                       ; $5EB4: $6F
    jr nz, jr_023_5F26                            ; $5EB5: $20 $6F

    ld l, [hl]                                    ; $5EB7: $6E
    ld h, l                                       ; $5EB8: $65

jr_023_5EB9:
    jr nz, jr_023_5F24                            ; $5EB9: $20 $69

    ld l, [hl]                                    ; $5EBB: $6E
    rst $38                                       ; $5EBC: $FF
    ld d, [hl]                                    ; $5EBD: $56
    ld h, c                                       ; $5EBE: $61
    ld [hl], e                                    ; $5EBF: $73
    ld l, b                                       ; $5EC0: $68
    jr nz, jr_023_5F26                            ; $5EC1: $20 $63

    ld h, c                                       ; $5EC3: $61
    ld l, [hl]                                    ; $5EC4: $6E
    jr nz, jr_023_5F2A                            ; $5EC5: $20 $63

    ld [hl], l                                    ; $5EC7: $75
    ld [hl], d                                    ; $5EC8: $72
    ld h, l                                       ; $5EC9: $65
    cp $4F                                        ; $5ECA: $FE $4F
    ld [hl], d                                    ; $5ECC: $72
    ld [hl], a                                    ; $5ECD: $77
    ld l, c                                       ; $5ECE: $69
    ld l, [hl]                                    ; $5ECF: $6E
    ld l, $2E                                     ; $5ED0: $2E $2E
    ld l, $FE                                     ; $5ED2: $2E $FE
    ld d, a                                       ; $5ED4: $57
    ld l, b                                       ; $5ED5: $68
    ld l, a                                       ; $5ED6: $6F
    jr nz, jr_023_5F3C                            ; $5ED7: $20 $63

    ld h, c                                       ; $5ED9: $61
    ld l, [hl]                                    ; $5EDA: $6E

jr_023_5EDB:
    jr nz, jr_023_5F54                            ; $5EDB: $20 $77

    ld h, l                                       ; $5EDD: $65
    rst $38                                       ; $5EDE: $FF
    ld [hl], h                                    ; $5EDF: $74
    ld [hl], l                                    ; $5EE0: $75
    ld [hl], d                                    ; $5EE1: $72
    ld l, [hl]                                    ; $5EE2: $6E
    jr nz, jr_023_5F59                            ; $5EE3: $20 $74

    ld l, a                                       ; $5EE5: $6F
    jr nz, jr_023_5F4E                            ; $5EE6: $20 $66

    ld l, a                                       ; $5EE8: $6F
    ld [hl], d                                    ; $5EE9: $72
    cp $68                                        ; $5EEA: $FE $68
    ld h, l                                       ; $5EEC: $65
    ld l, h                                       ; $5EED: $6C
    ld [hl], b                                    ; $5EEE: $70
    ccf                                           ; $5EEF: $3F
    cp $FD                                        ; $5EF0: $FE $FD
    sbc d                                         ; $5EF2: $9A
    ld [de], a                                    ; $5EF3: $12
    sub e                                         ; $5EF4: $93
    ld h, l                                       ; $5EF5: $65
    or c                                          ; $5EF6: $B1
    ld b, e                                       ; $5EF7: $43
    ld c, a                                       ; $5EF8: $4F

jr_023_5EF9:
    ld h, h                                       ; $5EF9: $64
    add hl, sp                                    ; $5EFA: $39
    ld b, h                                       ; $5EFB: $44
    ld h, [hl]                                    ; $5EFC: $66
    ret nz                                        ; $5EFD: $C0

    ld e, h                                       ; $5EFE: $5C
    ld hl, $4269                                  ; $5EFF: $21 $69 $42
    ld b, h                                       ; $5F02: $44
    dec b                                         ; $5F03: $05
    nop                                           ; $5F04: $00
    add c                                         ; $5F05: $81
    ld e, l                                       ; $5F06: $5D
    ld c, $09                                     ; $5F07: $0E $09
    jp nz, $00D0                                  ; $5F09: $C2 $D0 $00

    jr nz, jr_023_5EB9                            ; $5F0C: $20 $AB

    ld d, b                                       ; $5F0E: $50
    ld [hl+], a                                   ; $5F0F: $22
    dec b                                         ; $5F10: $05
    ld b, b                                       ; $5F11: $40
    dec b                                         ; $5F12: $05
    inc bc                                        ; $5F13: $03
    db $ED                                        ; $5F14: $ED
    ld h, e                                       ; $5F15: $63
    ld [bc], a                                    ; $5F16: $02
    inc b                                         ; $5F17: $04
    ld d, d                                       ; $5F18: $52
    ret nc                                        ; $5F19: $D0

    nop                                           ; $5F1A: $00
    rrca                                          ; $5F1B: $0F
    db $FC                                        ; $5F1C: $FC
    ld d, [hl]                                    ; $5F1D: $56
    inc hl                                        ; $5F1E: $23
    ld [hl], l                                    ; $5F1F: $75
    ld e, a                                       ; $5F20: $5F
    dec b                                         ; $5F21: $05
    inc b                                         ; $5F22: $04
    db $ED                                        ; $5F23: $ED

jr_023_5F24:
    ld h, e                                       ; $5F24: $63
    ld [bc], a                                    ; $5F25: $02

jr_023_5F26:
    ld b, $7A                                     ; $5F26: $06 $7A
    ret nc                                        ; $5F28: $D0

    daa                                           ; $5F29: $27

jr_023_5F2A:
    ld c, $F0                                     ; $5F2A: $0E $F0
    ld d, e                                       ; $5F2C: $53
    inc hl                                        ; $5F2D: $23
    ld h, l                                       ; $5F2E: $65
    ld e, a                                       ; $5F2F: $5F
    dec b                                         ; $5F30: $05
    dec b                                         ; $5F31: $05
    db $ED                                        ; $5F32: $ED
    ld h, e                                       ; $5F33: $63
    inc bc                                        ; $5F34: $03
    dec b                                         ; $5F35: $05
    ld h, a                                       ; $5F36: $67
    ret nc                                        ; $5F37: $D0

    ld d, e                                       ; $5F38: $53
    ld c, $E3                                     ; $5F39: $0E $E3
    ld h, b                                       ; $5F3B: $60

jr_023_5F3C:
    inc hl                                        ; $5F3C: $23
    ld l, l                                       ; $5F3D: $6D
    ld e, a                                       ; $5F3E: $5F
    ld l, e                                       ; $5F3F: $6B
    daa                                           ; $5F40: $27
    ld a, [bc]                                    ; $5F41: $0A
    ret nc                                        ; $5F42: $D0

    ld [hl], c                                    ; $5F43: $71
    nop                                           ; $5F44: $00
    add b                                         ; $5F45: $80
    nop                                           ; $5F46: $00
    ld l, e                                       ; $5F47: $6B
    inc l                                         ; $5F48: $2C
    ld a, [bc]                                    ; $5F49: $0A
    or b                                          ; $5F4A: $B0
    ld c, b                                       ; $5F4B: $48
    ld [hl], b                                    ; $5F4C: $70
    add d                                         ; $5F4D: $82

jr_023_5F4E:
    nop                                           ; $5F4E: $00
    ld l, e                                       ; $5F4F: $6B
    ld [hl+], a                                   ; $5F50: $22
    ld a, [bc]                                    ; $5F51: $0A
    ldh a, [$4E]                                  ; $5F52: $F0 $4E

jr_023_5F54:
    jr nc, jr_023_5EDB                            ; $5F54: $30 $85

    nop                                           ; $5F56: $00
    dec bc                                        ; $5F57: $0B
    nop                                           ; $5F58: $00

jr_023_5F59:
    dec bc                                        ; $5F59: $0B
    inc bc                                        ; $5F5A: $03
    dec bc                                        ; $5F5B: $0B
    inc b                                         ; $5F5C: $04
    dec bc                                        ; $5F5D: $0B
    dec b                                         ; $5F5E: $05
    nop                                           ; $5F5F: $00
    add d                                         ; $5F60: $82
    rra                                           ; $5F61: $1F
    inc hl                                        ; $5F62: $23
    sub h                                         ; $5F63: $94
    ld b, d                                       ; $5F64: $42
    ld e, e                                       ; $5F65: $5B
    inc hl                                        ; $5F66: $23
    ld a, l                                       ; $5F67: $7D
    ld e, a                                       ; $5F68: $5F
    ld b, l                                       ; $5F69: $45
    ld c, $35                                     ; $5F6A: $0E $35
    ld d, l                                       ; $5F6C: $55
    ld e, e                                       ; $5F6D: $5B
    inc hl                                        ; $5F6E: $23
    sbc [hl]                                      ; $5F6F: $9E
    ld e, a                                       ; $5F70: $5F
    ld b, l                                       ; $5F71: $45
    ld c, $29                                     ; $5F72: $0E $29
    ld h, c                                       ; $5F74: $61
    ld e, e                                       ; $5F75: $5B
    inc hl                                        ; $5F76: $23
    rst $38                                       ; $5F77: $FF
    ld e, a                                       ; $5F78: $5F
    ld b, l                                       ; $5F79: $45
    rrca                                          ; $5F7A: $0F
    db $FC                                        ; $5F7B: $FC
    ld d, [hl]                                    ; $5F7C: $56
    sbc e                                         ; $5F7D: $9B
    ld c, b                                       ; $5F7E: $48
    ld b, [hl]                                    ; $5F7F: $46
    sbc a                                         ; $5F80: $9F
    ld c, a                                       ; $5F81: $4F
    ld [hl], d                                    ; $5F82: $72
    ld [hl], a                                    ; $5F83: $77
    ld l, c                                       ; $5F84: $69
    ld l, [hl]                                    ; $5F85: $6E
    jr nz, @+$6B                                  ; $5F86: $20 $69

    ld [hl], e                                    ; $5F88: $73
    jr nz, jr_023_5FFE                            ; $5F89: $20 $73

    ld [hl], h                                    ; $5F8B: $74
    ld l, c                                       ; $5F8C: $69
    ld l, h                                       ; $5F8D: $6C
    ld l, h                                       ; $5F8E: $6C
    rst $38                                       ; $5F8F: $FF
    halt                                          ; $5F90: $76
    ld h, l                                       ; $5F91: $65
    ld [hl], d                                    ; $5F92: $72
    ld a, c                                       ; $5F93: $79
    jr nz, @+$75                                  ; $5F94: $20 $73

    ld l, c                                       ; $5F96: $69
    ld h, e                                       ; $5F97: $63
    ld l, e                                       ; $5F98: $6B
    ld l, $FE                                     ; $5F99: $2E $FE
    db $FD                                        ; $5F9B: $FD
    sbc d                                         ; $5F9C: $9A
    ld [de], a                                    ; $5F9D: $12
    sbc e                                         ; $5F9E: $9B
    ld hl, sp+$4A                                 ; $5F9F: $F8 $4A
    sbc a                                         ; $5FA1: $9F
    ld c, b                                       ; $5FA2: $48
    ld h, l                                       ; $5FA3: $65
    ld l, h                                       ; $5FA4: $6C
    ld l, h                                       ; $5FA5: $6C
    ld l, a                                       ; $5FA6: $6F
    inc l                                         ; $5FA7: $2C
    jr nz, jr_023_5FFE                            ; $5FA8: $20 $54

    ld l, a                                       ; $5FAA: $6F
    ld l, [hl]                                    ; $5FAB: $6E
    ld a, c                                       ; $5FAC: $79
    ld l, $FE                                     ; $5FAD: $2E $FE
    ld c, c                                       ; $5FAF: $49
    daa                                           ; $5FB0: $27
    ld l, l                                       ; $5FB1: $6D
    jr nz, @+$63                                  ; $5FB2: $20 $61

    ld h, [hl]                                    ; $5FB4: $66
    ld [hl], d                                    ; $5FB5: $72
    ld h, c                                       ; $5FB6: $61
    ld l, c                                       ; $5FB7: $69
    ld h, h                                       ; $5FB8: $64
    rst $38                                       ; $5FB9: $FF
    ld c, a                                       ; $5FBA: $4F
    ld [hl], d                                    ; $5FBB: $72
    ld [hl], a                                    ; $5FBC: $77
    ld l, c                                       ; $5FBD: $69
    ld l, [hl]                                    ; $5FBE: $6E
    jr nz, jr_023_602A                            ; $5FBF: $20 $69

    ld [hl], e                                    ; $5FC1: $73
    jr nz, jr_023_603A                            ; $5FC2: $20 $76

    ld h, l                                       ; $5FC4: $65
    ld [hl], d                                    ; $5FC5: $72
    ld a, c                                       ; $5FC6: $79
    cp $73                                        ; $5FC7: $FE $73
    ld l, c                                       ; $5FC9: $69
    ld h, e                                       ; $5FCA: $63
    ld l, e                                       ; $5FCB: $6B
    jr nz, jr_023_603C                            ; $5FCC: $20 $6E

    ld l, a                                       ; $5FCE: $6F
    ld [hl], a                                    ; $5FCF: $77
    ld l, $FF                                     ; $5FD0: $2E $FF
    ld c, b                                       ; $5FD2: $48
    ld h, l                                       ; $5FD3: $65
    jr nz, jr_023_6046                            ; $5FD4: $20 $70

    ld [hl], d                                    ; $5FD6: $72
    ld l, a                                       ; $5FD7: $6F
    ld h, d                                       ; $5FD8: $62
    ld h, c                                       ; $5FD9: $61
    ld h, d                                       ; $5FDA: $62
    ld l, h                                       ; $5FDB: $6C
    ld a, c                                       ; $5FDC: $79
    cp $64                                        ; $5FDD: $FE $64
    ld l, a                                       ; $5FDF: $6F
    ld h, l                                       ; $5FE0: $65
    ld [hl], e                                    ; $5FE1: $73
    jr nz, jr_023_6052                            ; $5FE2: $20 $6E

    ld l, a                                       ; $5FE4: $6F
    ld [hl], h                                    ; $5FE5: $74
    jr nz, jr_023_6050                            ; $5FE6: $20 $68

    ld h, c                                       ; $5FE8: $61
    halt                                          ; $5FE9: $76
    ld h, l                                       ; $5FEA: $65
    rst $38                                       ; $5FEB: $FF
    ld l, l                                       ; $5FEC: $6D
    ld [hl], l                                    ; $5FED: $75
    ld h, e                                       ; $5FEE: $63
    ld l, b                                       ; $5FEF: $68
    jr nz, @+$76                                  ; $5FF0: $20 $74

    ld l, c                                       ; $5FF2: $69
    ld l, l                                       ; $5FF3: $6D
    ld h, l                                       ; $5FF4: $65
    jr nz, jr_023_6063                            ; $5FF5: $20 $6C

    ld h, l                                       ; $5FF7: $65
    ld h, [hl]                                    ; $5FF8: $66
    ld [hl], h                                    ; $5FF9: $74
    ld l, $FE                                     ; $5FFA: $2E $FE
    db $FD                                        ; $5FFC: $FD
    sbc d                                         ; $5FFD: $9A

jr_023_5FFE:
    ld [de], a                                    ; $5FFE: $12
    sbc e                                         ; $5FFF: $9B
    adc b                                         ; $6000: $88
    ld h, l                                       ; $6001: $65
    sbc a                                         ; $6002: $9F
    ld l, $2E                                     ; $6003: $2E $2E
    ld l, $6D                                     ; $6005: $2E $6D
    ld a, c                                       ; $6007: $79
    ld l, $2E                                     ; $6008: $2E $2E
    ld l, $FE                                     ; $600A: $2E $FE
    ld [hl], b                                    ; $600C: $70
    ld [hl], l                                    ; $600D: $75
    ld [hl], d                                    ; $600E: $72
    ld [hl], b                                    ; $600F: $70
    ld l, h                                       ; $6010: $6C
    ld h, l                                       ; $6011: $65
    ld l, $2E                                     ; $6012: $2E $2E
    ld l, $FE                                     ; $6014: $2E $FE
    ld l, $2E                                     ; $6016: $2E $2E
    ld l, $2E                                     ; $6018: $2E $2E
    ld l, $FE                                     ; $601A: $2E $FE
    ld h, e                                       ; $601C: $63
    ld l, b                                       ; $601D: $68
    ld h, l                                       ; $601E: $65
    ld h, l                                       ; $601F: $65
    ld [hl], e                                    ; $6020: $73
    ld h, l                                       ; $6021: $65
    ld l, $2E                                     ; $6022: $2E $2E
    ld l, $FE                                     ; $6024: $2E $FE
    ld l, $2E                                     ; $6026: $2E $2E
    ld l, $FE                                     ; $6028: $2E $FE

jr_023_602A:
    ld l, $2E                                     ; $602A: $2E $2E
    ld l, $67                                     ; $602C: $2E $67
    ld [hl], d                                    ; $602E: $72
    ld h, c                                       ; $602F: $61
    ld [hl], h                                    ; $6030: $74
    ld h, l                                       ; $6031: $65
    ld [hl], d                                    ; $6032: $72
    ld l, $2E                                     ; $6033: $2E $2E
    ld l, $FE                                     ; $6035: $2E $FE
    db $FD                                        ; $6037: $FD
    sbc e                                         ; $6038: $9B
    ld a, b                                       ; $6039: $78

jr_023_603A:
    ld [hl], b                                    ; $603A: $70
    sbc a                                         ; $603B: $9F

jr_023_603C:
    ld d, h                                       ; $603C: $54
    ld l, b                                       ; $603D: $68
    ld l, c                                       ; $603E: $69
    ld [hl], e                                    ; $603F: $73
    jr nz, jr_023_60AB                            ; $6040: $20 $69

    ld [hl], e                                    ; $6042: $73
    jr nz, jr_023_60A6                            ; $6043: $20 $61

    ld l, h                                       ; $6045: $6C

jr_023_6046:
    ld l, h                                       ; $6046: $6C
    rst $38                                       ; $6047: $FF
    ld l, l                                       ; $6048: $6D
    ld a, c                                       ; $6049: $79
    jr nz, jr_023_60B2                            ; $604A: $20 $66

    ld h, c                                       ; $604C: $61
    ld [hl], l                                    ; $604D: $75
    ld l, h                                       ; $604E: $6C
    ld [hl], h                                    ; $604F: $74

jr_023_6050:
    ld l, $FE                                     ; $6050: $2E $FE

jr_023_6052:
    ld c, c                                       ; $6052: $49
    jr nz, jr_023_60C8                            ; $6053: $20 $73

    ld l, b                                       ; $6055: $68
    ld l, a                                       ; $6056: $6F
    ld [hl], l                                    ; $6057: $75

jr_023_6058:
    ld l, h                                       ; $6058: $6C
    ld h, h                                       ; $6059: $64
    jr nz, jr_023_60CA                            ; $605A: $20 $6E

    ld h, l                                       ; $605C: $65
    halt                                          ; $605D: $76
    ld h, l                                       ; $605E: $65
    ld [hl], d                                    ; $605F: $72
    rst $38                                       ; $6060: $FF
    ld l, b                                       ; $6061: $68
    ld h, c                                       ; $6062: $61

jr_023_6063:
    halt                                          ; $6063: $76
    ld h, l                                       ; $6064: $65
    jr nz, jr_023_60CB                            ; $6065: $20 $64

    ld l, c                                       ; $6067: $69
    ld [hl], e                                    ; $6068: $73
    ld l, a                                       ; $6069: $6F
    ld h, d                                       ; $606A: $62
    ld h, l                                       ; $606B: $65
    ld a, c                                       ; $606C: $79
    ld h, l                                       ; $606D: $65
    ld h, h                                       ; $606E: $64
    cp $4F                                        ; $606F: $FE $4F
    ld [hl], d                                    ; $6071: $72
    ld [hl], a                                    ; $6072: $77
    ld l, c                                       ; $6073: $69
    ld l, [hl]                                    ; $6074: $6E
    ld l, $FE                                     ; $6075: $2E $FE
    db $FD                                        ; $6077: $FD
    sbc d                                         ; $6078: $9A
    ld [de], a                                    ; $6079: $12
    sub e                                         ; $607A: $93
    adc b                                         ; $607B: $88
    nop                                           ; $607C: $00
    dec de                                        ; $607D: $1B
    ld bc, $B165                                  ; $607E: $01 $65 $B1
    ld b, e                                       ; $6081: $43
    ld c, a                                       ; $6082: $4F
    ld h, h                                       ; $6083: $64
    add hl, sp                                    ; $6084: $39
    ld b, h                                       ; $6085: $44

jr_023_6086:
    ld l, c                                       ; $6086: $69
    ld b, d                                       ; $6087: $42
    ld b, h                                       ; $6088: $44
    ld h, [hl]                                    ; $6089: $66
    ret nz                                        ; $608A: $C0

    ld e, h                                       ; $608B: $5C
    ld hl, $4269                                  ; $608C: $21 $69 $42
    ld b, h                                       ; $608F: $44
    dec b                                         ; $6090: $05

jr_023_6091:
    nop                                           ; $6091: $00
    ld l, e                                       ; $6092: $6B
    ld c, d                                       ; $6093: $4A
    dec b                                         ; $6094: $05
    dec b                                         ; $6095: $05
    ld l, c                                       ; $6096: $69
    ret nc                                        ; $6097: $D0

    nop                                           ; $6098: $00
    inc hl                                        ; $6099: $23
    add hl, sp                                    ; $609A: $39
    ld h, c                                       ; $609B: $61
    ld [hl+], a                                   ; $609C: $22
    inc b                                         ; $609D: $04
    ld b, b                                       ; $609E: $40
    dec b                                         ; $609F: $05
    inc bc                                        ; $60A0: $03
    db $ED                                        ; $60A1: $ED
    ld h, e                                       ; $60A2: $63
    ld [bc], a                                    ; $60A3: $02
    inc b                                         ; $60A4: $04
    ld d, d                                       ; $60A5: $52

jr_023_60A6:
    ret nc                                        ; $60A6: $D0

    inc l                                         ; $60A7: $2C
    inc hl                                        ; $60A8: $23
    ld a, $61                                     ; $60A9: $3E $61

jr_023_60AB:
    inc hl                                        ; $60AB: $23
    or a                                          ; $60AC: $B7
    ld h, c                                       ; $60AD: $61
    dec b                                         ; $60AE: $05
    dec b                                         ; $60AF: $05
    ld l, e                                       ; $60B0: $6B
    ld c, d                                       ; $60B1: $4A

jr_023_60B2:
    inc bc                                        ; $60B2: $03
    inc b                                         ; $60B3: $04
    ld d, e                                       ; $60B4: $53
    ret nc                                        ; $60B5: $D0

    nop                                           ; $60B6: $00
    inc hl                                        ; $60B7: $23
    ld h, h                                       ; $60B8: $64
    ld h, c                                       ; $60B9: $61
    ld [hl+], a                                   ; $60BA: $22
    inc b                                         ; $60BB: $04
    ld b, b                                       ; $60BC: $40
    dec b                                         ; $60BD: $05
    inc b                                         ; $60BE: $04
    db $ED                                        ; $60BF: $ED
    ld h, e                                       ; $60C0: $63
    dec b                                         ; $60C1: $05
    rlca                                          ; $60C2: $07
    sub c                                         ; $60C3: $91
    ret nc                                        ; $60C4: $D0

    ld d, e                                       ; $60C5: $53
    inc hl                                        ; $60C6: $23
    ld e, a                                       ; $60C7: $5F

jr_023_60C8:
    ld h, c                                       ; $60C8: $61
    inc hl                                        ; $60C9: $23

jr_023_60CA:
    cp a                                          ; $60CA: $BF

jr_023_60CB:
    ld h, c                                       ; $60CB: $61
    ld l, e                                       ; $60CC: $6B
    dec l                                         ; $60CD: $2D
    inc c                                         ; $60CE: $0C
    or b                                          ; $60CF: $B0
    ld e, a                                       ; $60D0: $5F
    jr nc, jr_023_6058                            ; $60D1: $30 $85

    nop                                           ; $60D3: $00
    ld b, e                                       ; $60D4: $43
    inc de                                        ; $60D5: $13
    inc b                                         ; $60D6: $04
    dec b                                         ; $60D7: $05
    inc d                                         ; $60D8: $14
    inc hl                                        ; $60D9: $23
    inc c                                         ; $60DA: $0C
    ld h, c                                       ; $60DB: $61
    dec b                                         ; $60DC: $05
    inc b                                         ; $60DD: $04
    db $ED                                        ; $60DE: $ED
    ld h, e                                       ; $60DF: $63
    ld [bc], a                                    ; $60E0: $02
    ld b, $7A                                     ; $60E1: $06 $7A
    ret nc                                        ; $60E3: $D0

    add e                                         ; $60E4: $83
    inc hl                                        ; $60E5: $23
    cpl                                           ; $60E6: $2F
    ld h, c                                       ; $60E7: $61
    inc hl                                        ; $60E8: $23
    rst $00                                       ; $60E9: $C7
    ld h, c                                       ; $60EA: $61
    dec b                                         ; $60EB: $05
    ld b, $ED                                     ; $60EC: $06 $ED
    ld h, e                                       ; $60EE: $63
    ld b, $07                                     ; $60EF: $06 $07
    sub d                                         ; $60F1: $92
    ret nc                                        ; $60F2: $D0

    ld d, e                                       ; $60F3: $53
    inc hl                                        ; $60F4: $23
    inc [hl]                                      ; $60F5: $34
    ld h, c                                       ; $60F6: $61
    inc hl                                        ; $60F7: $23
    rst $08                                       ; $60F8: $CF
    ld h, c                                       ; $60F9: $61
    ld l, e                                       ; $60FA: $6B

jr_023_60FB:
    jr nc, jr_023_6107                            ; $60FB: $30 $0A

    or b                                          ; $60FD: $B0
    ld c, b                                       ; $60FE: $48
    jr nc, jr_023_6086                            ; $60FF: $30 $85

    nop                                           ; $6101: $00
    ld l, e                                       ; $6102: $6B
    ld [hl+], a                                   ; $6103: $22
    ld a, [bc]                                    ; $6104: $0A
    ldh a, [$4E]                                  ; $6105: $F0 $4E

jr_023_6107:
    jr nc, jr_023_6091                            ; $6107: $30 $88

    nop                                           ; $6109: $00
    dec bc                                        ; $610A: $0B
    ld b, $6B                                     ; $610B: $06 $6B
    inc l                                         ; $610D: $2C
    ld a, [bc]                                    ; $610E: $0A
    ret nz                                        ; $610F: $C0

    halt                                          ; $6110: $76
    nop                                           ; $6111: $00
    add b                                         ; $6112: $80
    nop                                           ; $6113: $00
    ld l, e                                       ; $6114: $6B
    daa                                           ; $6115: $27
    ld a, [bc]                                    ; $6116: $0A
    ret nc                                        ; $6117: $D0

    ld [hl], c                                    ; $6118: $71
    ret nz                                        ; $6119: $C0

    add d                                         ; $611A: $82
    nop                                           ; $611B: $00
    dec bc                                        ; $611C: $0B
    nop                                           ; $611D: $00
    dec bc                                        ; $611E: $0B
    inc bc                                        ; $611F: $03
    dec bc                                        ; $6120: $0B
    inc b                                         ; $6121: $04
    dec bc                                        ; $6122: $0B
    dec b                                         ; $6123: $05
    add h                                         ; $6124: $84
    inc b                                         ; $6125: $04
    inc b                                         ; $6126: $04
    rra                                           ; $6127: $1F
    inc hl                                        ; $6128: $23
    sub h                                         ; $6129: $94
    xor [hl]                                      ; $612A: $AE
    and l                                         ; $612B: $A5
    and c                                         ; $612C: $A1
    db $FD                                        ; $612D: $FD
    ld b, d                                       ; $612E: $42
    inc d                                         ; $612F: $14
    ld c, $CF                                     ; $6130: $0E $CF
    ld h, b                                       ; $6132: $60
    ld b, d                                       ; $6133: $42
    inc d                                         ; $6134: $14
    ld c, $18                                     ; $6135: $0E $18
    ld d, h                                       ; $6137: $54
    ld b, d                                       ; $6138: $42
    inc d                                         ; $6139: $14
    jr nz, jr_023_60FB                            ; $613A: $20 $BF

    ld d, b                                       ; $613C: $50
    ld b, d                                       ; $613D: $42
    inc d                                         ; $613E: $14
    rrca                                          ; $613F: $0F
    db $FC                                        ; $6140: $FC
    ld d, [hl]                                    ; $6141: $56
    ld h, d                                       ; $6142: $62
    inc bc                                        ; $6143: $03
    ld b, b                                       ; $6144: $40
    jr @+$5D                                      ; $6145: $18 $5B

    inc hl                                        ; $6147: $23
    cp c                                          ; $6148: $B9
    ld h, d                                       ; $6149: $62
    dec d                                         ; $614A: $15
    rrca                                          ; $614B: $0F
    ld c, e                                       ; $614C: $4B
    ld d, [hl]                                    ; $614D: $56
    ld [$790F], sp                                ; $614E: $08 $0F $79
    ld d, [hl]                                    ; $6151: $56
    inc d                                         ; $6152: $14
    rrca                                          ; $6153: $0F
    ld h, l                                       ; $6154: $65
    ld d, [hl]                                    ; $6155: $56
    ld h, b                                       ; $6156: $60
    nop                                           ; $6157: $00
    ld h, d                                       ; $6158: $62
    inc b                                         ; $6159: $04
    ld e, e                                       ; $615A: $5B
    inc hl                                        ; $615B: $23
    call c, Call_023_4262                         ; $615C: $DC $62 $42
    inc d                                         ; $615F: $14
    db $10                                        ; $6160: $10
    sub c                                         ; $6161: $91
    ld [hl], a                                    ; $6162: $77
    ld b, d                                       ; $6163: $42
    dec d                                         ; $6164: $15
    dec h                                         ; $6165: $25
    jr jr_023_61B4                                ; $6166: $18 $4C

    ld c, b                                       ; $6168: $48
    nop                                           ; $6169: $00
    ld e, e                                       ; $616A: $5B
    inc hl                                        ; $616B: $23
    jr z, jr_023_61D0                             ; $616C: $28 $62

    ld h, d                                       ; $616E: $62
    ld bc, $9040                                  ; $616F: $01 $40 $90
    dec d                                         ; $6172: $15

jr_023_6173:
    dec h                                         ; $6173: $25
    ld c, $4C                                     ; $6174: $0E $4C
    jr nz, jr_023_619D                            ; $6176: $20 $25

    ld c, d                                       ; $6178: $4A
    ld c, h                                       ; $6179: $4C
    jr nz, jr_023_61A1                            ; $617A: $20 $25

    jr jr_023_61CA                                ; $617C: $18 $4C

    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    ld e, e                                       ; $6180: $5B
    inc hl                                        ; $6181: $23
    ld h, e                                       ; $6182: $63
    ld h, d                                       ; $6183: $62
    ld h, d                                       ; $6184: $62
    ld [bc], a                                    ; $6185: $02
    ld b, b                                       ; $6186: $40
    add b                                         ; $6187: $80
    ld e, e                                       ; $6188: $5B
    inc hl                                        ; $6189: $23
    sub l                                         ; $618A: $95
    ld h, d                                       ; $618B: $62
    ld h, d                                       ; $618C: $62
    inc bc                                        ; $618D: $03
    ld b, b                                       ; $618E: $40
    inc e                                         ; $618F: $1C
    dec d                                         ; $6190: $15
    dec h                                         ; $6191: $25
    call nc, $084B                                ; $6192: $D4 $4B $08
    dec h                                         ; $6195: $25
    inc b                                         ; $6196: $04
    ld c, h                                       ; $6197: $4C
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    ld h, d                                       ; $619A: $62
    dec b                                         ; $619B: $05
    ld e, e                                       ; $619C: $5B

jr_023_619D:
    inc hl                                        ; $619D: $23
    ld e, $63                                     ; $619E: $1E $63
    ld h, d                                       ; $61A0: $62

jr_023_61A1:
    ld b, $15                                     ; $61A1: $06 $15
    dec h                                         ; $61A3: $25
    call nc, $084B                                ; $61A4: $D4 $4B $08
    dec h                                         ; $61A7: $25
    db $F4                                        ; $61A8: $F4
    ld c, e                                       ; $61A9: $4B
    ld b, b                                       ; $61AA: $40
    nop                                           ; $61AB: $00
    rlca                                          ; $61AC: $07
    nop                                           ; $61AD: $00
    add c                                         ; $61AE: $81
    ld e, l                                       ; $61AF: $5D
    add hl, bc                                    ; $61B0: $09
    nop                                           ; $61B1: $00
    jr nz, jr_023_6173                            ; $61B2: $20 $BF

jr_023_61B4:
    ld d, b                                       ; $61B4: $50
    add hl, de                                    ; $61B5: $19
    ld b, d                                       ; $61B6: $42
    ld e, e                                       ; $61B7: $5B
    inc hl                                        ; $61B8: $23
    rst $10                                       ; $61B9: $D7
    ld h, c                                       ; $61BA: $61
    ld b, l                                       ; $61BB: $45
    rrca                                          ; $61BC: $0F
    ld a, [de]                                    ; $61BD: $1A
    ld d, a                                       ; $61BE: $57
    ld e, e                                       ; $61BF: $5B
    inc hl                                        ; $61C0: $23
    rst $38                                       ; $61C1: $FF
    ld h, c                                       ; $61C2: $61
    ld b, l                                       ; $61C3: $45
    db $10                                        ; $61C4: $10
    cp c                                          ; $61C5: $B9
    ld [hl], a                                    ; $61C6: $77
    ld e, e                                       ; $61C7: $5B
    inc hl                                        ; $61C8: $23
    ld b, l                                       ; $61C9: $45

jr_023_61CA:
    ld h, e                                       ; $61CA: $63
    ld b, l                                       ; $61CB: $45
    ld c, $29                                     ; $61CC: $0E $29
    ld h, c                                       ; $61CE: $61
    ld e, e                                       ; $61CF: $5B

jr_023_61D0:
    inc hl                                        ; $61D0: $23
    push de                                       ; $61D1: $D5
    ld h, e                                       ; $61D2: $63
    ld b, l                                       ; $61D3: $45
    ld c, $35                                     ; $61D4: $0E $35
    ld d, l                                       ; $61D6: $55
    sbc e                                         ; $61D7: $9B
    adc b                                         ; $61D8: $88
    ld h, l                                       ; $61D9: $65
    sbc a                                         ; $61DA: $9F
    ld d, h                                       ; $61DB: $54
    ld l, b                                       ; $61DC: $68
    ld h, c                                       ; $61DD: $61
    ld l, [hl]                                    ; $61DE: $6E
    ld l, e                                       ; $61DF: $6B
    jr nz, jr_023_625B                            ; $61E0: $20 $79

    ld l, a                                       ; $61E2: $6F
    ld [hl], l                                    ; $61E3: $75
    jr nz, jr_023_6252                            ; $61E4: $20 $6C

    ld h, c                                       ; $61E6: $61
    ld h, h                                       ; $61E7: $64
    rst $38                                       ; $61E8: $FF
    ld c, c                                       ; $61E9: $49
    jr nz, jr_023_625B                            ; $61EA: $20 $6F

    ld [hl], a                                    ; $61EC: $77
    ld h, l                                       ; $61ED: $65
    jr nz, jr_023_6269                            ; $61EE: $20 $79

    ld l, a                                       ; $61F0: $6F
    ld [hl], l                                    ; $61F1: $75
    jr nz, jr_023_6261                            ; $61F2: $20 $6D

    ld a, c                                       ; $61F4: $79
    cp $6C                                        ; $61F5: $FE $6C
    ld l, c                                       ; $61F7: $69
    ld h, [hl]                                    ; $61F8: $66
    ld h, l                                       ; $61F9: $65
    ld l, $FE                                     ; $61FA: $2E $FE
    db $FD                                        ; $61FC: $FD
    sbc d                                         ; $61FD: $9A
    ld [de], a                                    ; $61FE: $12
    sbc e                                         ; $61FF: $9B
    ld l, b                                       ; $6200: $68
    ld h, d                                       ; $6201: $62
    sbc a                                         ; $6202: $9F
    ld c, a                                       ; $6203: $4F
    ld [hl], d                                    ; $6204: $72
    ld [hl], a                                    ; $6205: $77
    ld l, c                                       ; $6206: $69
    ld l, [hl]                                    ; $6207: $6E
    daa                                           ; $6208: $27
    ld [hl], e                                    ; $6209: $73
    jr nz, jr_023_626F                            ; $620A: $20 $63

    ld [hl], l                                    ; $620C: $75
    ld [hl], d                                    ; $620D: $72
    ld h, l                                       ; $620E: $65
    ld h, h                                       ; $620F: $64
    ld hl, $54FF                                  ; $6210: $21 $FF $54
    ld l, b                                       ; $6213: $68
    ld h, c                                       ; $6214: $61
    ld l, [hl]                                    ; $6215: $6E
    ld l, e                                       ; $6216: $6B
    jr nz, jr_023_6292                            ; $6217: $20 $79

    ld l, a                                       ; $6219: $6F
    ld [hl], l                                    ; $621A: $75
    jr nz, jr_023_6290                            ; $621B: $20 $73

    ld l, a                                       ; $621D: $6F
    cp $6D                                        ; $621E: $FE $6D
    ld [hl], l                                    ; $6220: $75
    ld h, e                                       ; $6221: $63
    ld l, b                                       ; $6222: $68
    ld hl, $FDFE                                  ; $6223: $21 $FE $FD
    sbc d                                         ; $6226: $9A
    ld [de], a                                    ; $6227: $12
    sbc e                                         ; $6228: $9B
    reti                                          ; $6229: $D9


    ld b, a                                       ; $622A: $47
    sbc a                                         ; $622B: $9F
    ld c, c                                       ; $622C: $49
    daa                                           ; $622D: $27
    halt                                          ; $622E: $76
    ld h, l                                       ; $622F: $65
    jr nz, jr_023_6299                            ; $6230: $20 $67

    ld l, c                                       ; $6232: $69
    halt                                          ; $6233: $76
    ld h, l                                       ; $6234: $65
    ld l, [hl]                                    ; $6235: $6E
    jr nz, jr_023_62A0                            ; $6236: $20 $68

    ld l, c                                       ; $6238: $69
    ld l, l                                       ; $6239: $6D
    rst $38                                       ; $623A: $FF
    ld h, c                                       ; $623B: $61
    jr nz, jr_023_62A2                            ; $623C: $20 $64

    ld l, a                                       ; $623E: $6F
    ld [hl], e                                    ; $623F: $73
    ld h, l                                       ; $6240: $65
    ld l, $20                                     ; $6241: $2E $20
    ld b, c                                       ; $6243: $41
    ld l, h                                       ; $6244: $6C
    ld l, h                                       ; $6245: $6C
    jr nz, jr_023_62BF                            ; $6246: $20 $77

    ld h, l                                       ; $6248: $65
    cp $63                                        ; $6249: $FE $63
    ld h, c                                       ; $624B: $61
    ld l, [hl]                                    ; $624C: $6E
    jr nz, jr_023_62B3                            ; $624D: $20 $64

    ld l, a                                       ; $624F: $6F
    jr nz, jr_023_62C0                            ; $6250: $20 $6E

jr_023_6252:
    ld l, a                                       ; $6252: $6F
    ld [hl], a                                    ; $6253: $77
    jr nz, jr_023_62BF                            ; $6254: $20 $69

    ld [hl], e                                    ; $6256: $73
    rst $38                                       ; $6257: $FF
    ld [hl], a                                    ; $6258: $77
    ld h, c                                       ; $6259: $61
    ld l, c                                       ; $625A: $69

jr_023_625B:
    ld [hl], h                                    ; $625B: $74
    ld l, $FE                                     ; $625C: $2E $FE
    db $FD                                        ; $625E: $FD
    sbc d                                         ; $625F: $9A
    ld e, b                                       ; $6260: $58

jr_023_6261:
    ld bc, $9B42                                  ; $6261: $01 $42 $9B
    reti                                          ; $6264: $D9


    ld b, a                                       ; $6265: $47
    sbc a                                         ; $6266: $9F
    ld c, b                                       ; $6267: $48
    ld l, l                                       ; $6268: $6D

jr_023_6269:
    ld l, l                                       ; $6269: $6D
    ld l, $2E                                     ; $626A: $2E $2E
    jr nz, jr_023_62DB                            ; $626C: $20 $6D

    ld h, c                                       ; $626E: $61

jr_023_626F:
    ld a, c                                       ; $626F: $79
    ld h, d                                       ; $6270: $62
    ld h, l                                       ; $6271: $65
    jr nz, jr_023_62BD                            ; $6272: $20 $49

    rst $38                                       ; $6274: $FF
    ld [hl], e                                    ; $6275: $73
    ld l, b                                       ; $6276: $68
    ld l, a                                       ; $6277: $6F
    ld [hl], l                                    ; $6278: $75
    ld l, h                                       ; $6279: $6C
    ld h, h                                       ; $627A: $64
    jr nz, jr_023_62E4                            ; $627B: $20 $67

    ld l, c                                       ; $627D: $69
    halt                                          ; $627E: $76
    ld h, l                                       ; $627F: $65
    jr nz, @+$6A                                  ; $6280: $20 $68

    ld l, c                                       ; $6282: $69
    ld l, l                                       ; $6283: $6D
    cp $73                                        ; $6284: $FE $73
    ld l, a                                       ; $6286: $6F
    ld l, l                                       ; $6287: $6D
    ld h, l                                       ; $6288: $65
    jr nz, jr_023_62F8                            ; $6289: $20 $6D

    ld l, a                                       ; $628B: $6F
    ld [hl], d                                    ; $628C: $72
    ld h, l                                       ; $628D: $65
    ld l, $FE                                     ; $628E: $2E $FE

jr_023_6290:
    db $FD                                        ; $6290: $FD
    sbc d                                         ; $6291: $9A

jr_023_6292:
    ld e, b                                       ; $6292: $58
    ld [bc], a                                    ; $6293: $02
    ld b, d                                       ; $6294: $42
    sbc e                                         ; $6295: $9B
    reti                                          ; $6296: $D9


    ld b, a                                       ; $6297: $47
    sbc a                                         ; $6298: $9F

jr_023_6299:
    ld c, b                                       ; $6299: $48
    ld l, l                                       ; $629A: $6D
    ld l, l                                       ; $629B: $6D
    ld l, $2E                                     ; $629C: $2E $2E
    jr nz, @+$72                                  ; $629E: $20 $70

jr_023_62A0:
    ld h, l                                       ; $62A0: $65
    ld [hl], d                                    ; $62A1: $72

jr_023_62A2:
    ld l, b                                       ; $62A2: $68
    ld h, c                                       ; $62A3: $61
    ld [hl], b                                    ; $62A4: $70
    ld [hl], e                                    ; $62A5: $73
    jr nz, jr_023_62F1                            ; $62A6: $20 $49

    rst $38                                       ; $62A8: $FF
    ld [hl], e                                    ; $62A9: $73
    ld l, b                                       ; $62AA: $68
    ld l, a                                       ; $62AB: $6F
    ld [hl], l                                    ; $62AC: $75
    ld l, h                                       ; $62AD: $6C
    ld h, h                                       ; $62AE: $64
    ld l, $2E                                     ; $62AF: $2E $2E
    rst $38                                       ; $62B1: $FF
    db $FD                                        ; $62B2: $FD

jr_023_62B3:
    ld b, b                                       ; $62B3: $40
    db $10                                        ; $62B4: $10
    sbc d                                         ; $62B5: $9A
    ld e, b                                       ; $62B6: $58
    inc bc                                        ; $62B7: $03
    ld b, d                                       ; $62B8: $42
    sbc e                                         ; $62B9: $9B
    adc b                                         ; $62BA: $88
    ld h, l                                       ; $62BB: $65
    sbc a                                         ; $62BC: $9F

jr_023_62BD:
    ld b, c                                       ; $62BD: $41
    ld b, c                                       ; $62BE: $41

jr_023_62BF:
    ld b, c                                       ; $62BF: $41

jr_023_62C0:
    ld b, c                                       ; $62C0: $41
    ld b, c                                       ; $62C1: $41
    ld b, c                                       ; $62C2: $41
    ld b, a                                       ; $62C3: $47
    ld c, b                                       ; $62C4: $48
    ld c, b                                       ; $62C5: $48
    ld c, b                                       ; $62C6: $48
    ld hl, $2121                                  ; $62C7: $21 $21 $21
    cp $FD                                        ; $62CA: $FE $FD
    sbc d                                         ; $62CC: $9A
    ld e, b                                       ; $62CD: $58
    jr z, jr_023_626F                             ; $62CE: $28 $9F

    ld c, a                                       ; $62D0: $4F
    ld d, d                                       ; $62D1: $52
    ld d, a                                       ; $62D2: $57
    ld c, c                                       ; $62D3: $49
    ld c, [hl]                                    ; $62D4: $4E
    ld hl, $FDFE                                  ; $62D5: $21 $FE $FD
    sbc d                                         ; $62D8: $9A
    ld e, b                                       ; $62D9: $58
    inc b                                         ; $62DA: $04

jr_023_62DB:
    ld b, d                                       ; $62DB: $42
    sbc e                                         ; $62DC: $9B
    adc b                                         ; $62DD: $88
    ld h, l                                       ; $62DE: $65
    sbc a                                         ; $62DF: $9F
    ld b, c                                       ; $62E0: $41
    ld l, l                                       ; $62E1: $6D
    ld l, $2E                                     ; $62E2: $2E $2E

jr_023_62E4:
    ld l, $20                                     ; $62E4: $2E $20
    ld c, c                                       ; $62E6: $49
    ld l, $2E                                     ; $62E7: $2E $2E
    ld l, $FF                                     ; $62E9: $2E $FF
    ld h, c                                       ; $62EB: $61
    ld l, h                                       ; $62EC: $6C
    ld l, c                                       ; $62ED: $69
    halt                                          ; $62EE: $76
    ld h, l                                       ; $62EF: $65
    ccf                                           ; $62F0: $3F

jr_023_62F1:
    cp $49                                        ; $62F1: $FE $49
    daa                                           ; $62F3: $27
    ld l, l                                       ; $62F4: $6D
    jr nz, jr_023_6358                            ; $62F5: $20 $61

    ld l, h                                       ; $62F7: $6C

jr_023_62F8:
    ld l, c                                       ; $62F8: $69
    halt                                          ; $62F9: $76
    ld h, l                                       ; $62FA: $65
    ld hl, $FE3F                                  ; $62FB: $21 $3F $FE
    ld c, c                                       ; $62FE: $49
    daa                                           ; $62FF: $27
    ld c, l                                       ; $6300: $4D
    jr nz, @+$43                                  ; $6301: $20 $41

    ld c, h                                       ; $6303: $4C
    ld c, c                                       ; $6304: $49
    ld d, [hl]                                    ; $6305: $56
    ld b, l                                       ; $6306: $45
    ld hl, $41FF                                  ; $6307: $21 $FF $41
    ld c, h                                       ; $630A: $4C
    ld c, c                                       ; $630B: $49
    ld d, [hl]                                    ; $630C: $56
    ld b, l                                       ; $630D: $45
    ld hl, $FE21                                  ; $630E: $21 $21 $FE
    db $FD                                        ; $6311: $FD
    sbc d                                         ; $6312: $9A
    sbc a                                         ; $6313: $9F
    ld e, c                                       ; $6314: $59
    ld b, c                                       ; $6315: $41
    ld e, c                                       ; $6316: $59
    ld hl, $FDFE                                  ; $6317: $21 $FE $FD
    sbc d                                         ; $631A: $9A
    ld e, b                                       ; $631B: $58
    dec b                                         ; $631C: $05
    ld b, d                                       ; $631D: $42
    sbc e                                         ; $631E: $9B
    reti                                          ; $631F: $D9


    ld b, a                                       ; $6320: $47
    sbc a                                         ; $6321: $9F
    ld d, a                                       ; $6322: $57
    ld h, l                                       ; $6323: $65
    ld l, h                                       ; $6324: $6C
    ld l, h                                       ; $6325: $6C
    ld l, $2E                                     ; $6326: $2E $2E
    ld l, $FE                                     ; $6328: $2E $FE
    ld c, l                                       ; $632A: $4D
    ld a, c                                       ; $632B: $79
    jr nz, jr_023_63A5                            ; $632C: $20 $77

    ld l, a                                       ; $632E: $6F
    ld [hl], d                                    ; $632F: $72
    ld l, e                                       ; $6330: $6B
    jr nz, jr_023_639B                            ; $6331: $20 $68

    ld h, l                                       ; $6333: $65
    ld [hl], d                                    ; $6334: $72
    ld h, l                                       ; $6335: $65
    rst $38                                       ; $6336: $FF
    ld l, c                                       ; $6337: $69
    ld [hl], e                                    ; $6338: $73
    jr nz, @+$66                                  ; $6339: $20 $64

    ld l, a                                       ; $633B: $6F
    ld l, [hl]                                    ; $633C: $6E
    ld h, l                                       ; $633D: $65
    ld l, $FE                                     ; $633E: $2E $FE
    db $FD                                        ; $6340: $FD
    sbc d                                         ; $6341: $9A
    ld e, b                                       ; $6342: $58
    ld b, $42                                     ; $6343: $06 $42
    ld b, e                                       ; $6345: $43
    ld de, $0504                                  ; $6346: $11 $04 $05
    dec d                                         ; $6349: $15
    inc hl                                        ; $634A: $23
    or c                                          ; $634B: $B1
    ld h, e                                       ; $634C: $63
    sbc e                                         ; $634D: $9B
    ld hl, sp+$4A                                 ; $634E: $F8 $4A
    sbc a                                         ; $6350: $9F
    ld d, h                                       ; $6351: $54
    ld l, a                                       ; $6352: $6F
    ld l, [hl]                                    ; $6353: $6E
    ld a, c                                       ; $6354: $79
    inc l                                         ; $6355: $2C
    jr nz, jr_023_63CC                            ; $6356: $20 $74

jr_023_6358:
    ld l, b                                       ; $6358: $68
    ld h, c                                       ; $6359: $61
    ld l, [hl]                                    ; $635A: $6E
    ld l, e                                       ; $635B: $6B
    jr nz, jr_023_63D7                            ; $635C: $20 $79

    ld l, a                                       ; $635E: $6F
    ld [hl], l                                    ; $635F: $75
    rst $38                                       ; $6360: $FF
    ld h, [hl]                                    ; $6361: $66
    ld l, a                                       ; $6362: $6F
    ld [hl], d                                    ; $6363: $72
    jr nz, jr_023_63D9                            ; $6364: $20 $73

    ld h, c                                       ; $6366: $61
    halt                                          ; $6367: $76
    ld l, c                                       ; $6368: $69
    ld l, [hl]                                    ; $6369: $6E
    ld h, a                                       ; $636A: $67
    cp $4F                                        ; $636B: $FE $4F
    ld [hl], d                                    ; $636D: $72
    ld [hl], a                                    ; $636E: $77
    ld l, c                                       ; $636F: $69
    ld l, [hl]                                    ; $6370: $6E
    inc l                                         ; $6371: $2C
    jr nz, jr_023_63D6                            ; $6372: $20 $62

    ld [hl], l                                    ; $6374: $75
    ld [hl], h                                    ; $6375: $74
    jr nz, jr_023_63C1                            ; $6376: $20 $49

    daa                                           ; $6378: $27
    ld l, l                                       ; $6379: $6D
    rst $38                                       ; $637A: $FF
    ld h, c                                       ; $637B: $61
    ld h, [hl]                                    ; $637C: $66
    ld [hl], d                                    ; $637D: $72
    ld h, c                                       ; $637E: $61
    ld l, c                                       ; $637F: $69
    ld h, h                                       ; $6380: $64
    jr nz, jr_023_63FC                            ; $6381: $20 $79

    ld l, a                                       ; $6383: $6F
    ld [hl], l                                    ; $6384: $75
    cp $73                                        ; $6385: $FE $73
    ld [hl], h                                    ; $6387: $74
    ld l, c                                       ; $6388: $69
    ld l, h                                       ; $6389: $6C
    ld l, h                                       ; $638A: $6C
    jr nz, jr_023_63FA                            ; $638B: $20 $6D

    ld [hl], l                                    ; $638D: $75
    ld [hl], e                                    ; $638E: $73
    ld [hl], h                                    ; $638F: $74
    rst $38                                       ; $6390: $FF
    ld l, h                                       ; $6391: $6C
    ld h, l                                       ; $6392: $65
    ld h, c                                       ; $6393: $61
    halt                                          ; $6394: $76
    ld h, l                                       ; $6395: $65
    jr nz, jr_023_63F9                            ; $6396: $20 $61

    ld [hl], e                                    ; $6398: $73
    jr nz, jr_023_640E                            ; $6399: $20 $73

jr_023_639B:
    ld l, a                                       ; $639B: $6F
    ld l, a                                       ; $639C: $6F
    ld l, [hl]                                    ; $639D: $6E
    cp $61                                        ; $639E: $FE $61
    ld [hl], e                                    ; $63A0: $73
    jr nz, jr_023_6413                            ; $63A1: $20 $70

    ld l, a                                       ; $63A3: $6F
    ld [hl], e                                    ; $63A4: $73

jr_023_63A5:
    ld [hl], e                                    ; $63A5: $73
    ld l, c                                       ; $63A6: $69
    ld h, d                                       ; $63A7: $62
    ld l, h                                       ; $63A8: $6C
    ld h, l                                       ; $63A9: $65
    ld l, $FE                                     ; $63AA: $2E $FE
    db $FD                                        ; $63AC: $FD
    sbc d                                         ; $63AD: $9A
    ld e, b                                       ; $63AE: $58
    ld bc, $9B42                                  ; $63AF: $01 $42 $9B
    ld hl, sp+$4A                                 ; $63B2: $F8 $4A
    sbc a                                         ; $63B4: $9F
    ld b, a                                       ; $63B5: $47
    ld l, a                                       ; $63B6: $6F
    ld h, h                                       ; $63B7: $64
    dec l                                         ; $63B8: $2D
    ld [hl], e                                    ; $63B9: $73
    ld [hl], b                                    ; $63BA: $70
    ld h, l                                       ; $63BB: $65
    ld h, l                                       ; $63BC: $65
    ld h, h                                       ; $63BD: $64
    jr nz, jr_023_642F                            ; $63BE: $20 $6F

    ld l, [hl]                                    ; $63C0: $6E

jr_023_63C1:
    rst $38                                       ; $63C1: $FF
    ld a, c                                       ; $63C2: $79
    ld l, a                                       ; $63C3: $6F
    ld [hl], l                                    ; $63C4: $75
    ld [hl], d                                    ; $63C5: $72
    jr nz, jr_023_6432                            ; $63C6: $20 $6A

    ld l, a                                       ; $63C8: $6F
    ld [hl], l                                    ; $63C9: $75
    ld [hl], d                                    ; $63CA: $72
    ld l, [hl]                                    ; $63CB: $6E

jr_023_63CC:
    ld h, l                                       ; $63CC: $65
    ld a, c                                       ; $63CD: $79
    ld l, $FE                                     ; $63CE: $2E $FE
    db $FD                                        ; $63D0: $FD
    sbc d                                         ; $63D1: $9A
    ld e, b                                       ; $63D2: $58
    ld bc, $9B42                                  ; $63D3: $01 $42 $9B

jr_023_63D6:
    ld c, b                                       ; $63D6: $48

jr_023_63D7:
    ld b, [hl]                                    ; $63D7: $46
    sbc a                                         ; $63D8: $9F

jr_023_63D9:
    ld c, c                                       ; $63D9: $49
    daa                                           ; $63DA: $27
    ld l, l                                       ; $63DB: $6D
    jr nz, jr_023_6451                            ; $63DC: $20 $73

    ld l, a                                       ; $63DE: $6F
    ld [hl], d                                    ; $63DF: $72
    ld [hl], d                                    ; $63E0: $72
    ld a, c                                       ; $63E1: $79
    jr nz, jr_023_6438                            ; $63E2: $20 $54

    ld l, a                                       ; $63E4: $6F
    ld l, [hl]                                    ; $63E5: $6E
    ld a, c                                       ; $63E6: $79
    ld l, $FE                                     ; $63E7: $2E $FE
    ld c, c                                       ; $63E9: $49
    jr nz, jr_023_6463                            ; $63EA: $20 $77

    ld h, c                                       ; $63EC: $61
    ld [hl], e                                    ; $63ED: $73
    jr nz, jr_023_6453                            ; $63EE: $20 $63

    ld l, a                                       ; $63F0: $6F
    ld l, [hl]                                    ; $63F1: $6E
    halt                                          ; $63F2: $76
    ld l, c                                       ; $63F3: $69
    ld l, [hl]                                    ; $63F4: $6E
    ld h, e                                       ; $63F5: $63
    ld h, l                                       ; $63F6: $65
    ld h, h                                       ; $63F7: $64
    rst $38                                       ; $63F8: $FF

jr_023_63F9:
    ld [hl], h                                    ; $63F9: $74

jr_023_63FA:
    ld l, b                                       ; $63FA: $68
    ld h, c                                       ; $63FB: $61

jr_023_63FC:
    ld [hl], h                                    ; $63FC: $74
    jr nz, jr_023_6478                            ; $63FD: $20 $79

    ld l, a                                       ; $63FF: $6F
    ld [hl], l                                    ; $6400: $75
    jr nz, jr_023_647A                            ; $6401: $20 $77

    ld h, l                                       ; $6403: $65
    ld [hl], d                                    ; $6404: $72
    ld h, l                                       ; $6405: $65
    cp $4B                                        ; $6406: $FE $4B
    ld a, c                                       ; $6408: $79
    ld [hl], d                                    ; $6409: $72
    ld l, a                                       ; $640A: $6F
    ld [hl], e                                    ; $640B: $73
    ld l, $2E                                     ; $640C: $2E $2E

jr_023_640E:
    ld l, $20                                     ; $640E: $2E $20
    ld [hl], h                                    ; $6410: $74
    ld l, b                                       ; $6411: $68
    ld l, c                                       ; $6412: $69

jr_023_6413:
    ld [hl], e                                    ; $6413: $73
    rst $38                                       ; $6414: $FF
    ld l, c                                       ; $6415: $69
    ld [hl], e                                    ; $6416: $73
    ld l, [hl]                                    ; $6417: $6E
    daa                                           ; $6418: $27
    ld [hl], h                                    ; $6419: $74
    jr nz, jr_023_6490                            ; $641A: $20 $74

    ld l, b                                       ; $641C: $68
    ld h, l                                       ; $641D: $65
    jr nz, @+$68                                  ; $641E: $20 $66

    ld l, c                                       ; $6420: $69
    ld [hl], d                                    ; $6421: $72
    ld [hl], e                                    ; $6422: $73
    ld [hl], h                                    ; $6423: $74
    cp $74                                        ; $6424: $FE $74
    ld l, c                                       ; $6426: $69
    ld l, l                                       ; $6427: $6D
    ld h, l                                       ; $6428: $65
    jr nz, @+$76                                  ; $6429: $20 $74

    ld l, b                                       ; $642B: $68
    ld h, c                                       ; $642C: $61
    ld [hl], h                                    ; $642D: $74
    daa                                           ; $642E: $27

jr_023_642F:
    ld [hl], e                                    ; $642F: $73
    rst $38                                       ; $6430: $FF
    ld l, b                                       ; $6431: $68

jr_023_6432:
    ld h, c                                       ; $6432: $61
    ld [hl], b                                    ; $6433: $70
    ld [hl], b                                    ; $6434: $70
    ld h, l                                       ; $6435: $65
    ld l, [hl]                                    ; $6436: $6E
    ld h, l                                       ; $6437: $65

jr_023_6438:
    ld h, h                                       ; $6438: $64
    ld l, $FE                                     ; $6439: $2E $FE
    ld c, c                                       ; $643B: $49
    jr nz, jr_023_64B1                            ; $643C: $20 $73

    ld l, b                                       ; $643E: $68
    ld l, a                                       ; $643F: $6F
    ld [hl], l                                    ; $6440: $75
    ld l, h                                       ; $6441: $6C
    ld h, h                                       ; $6442: $64
    jr nz, jr_023_64AD                            ; $6443: $20 $68

    ld h, c                                       ; $6445: $61
    halt                                          ; $6446: $76
    ld h, l                                       ; $6447: $65
    rst $38                                       ; $6448: $FF
    ld l, h                                       ; $6449: $6C
    ld l, c                                       ; $644A: $69
    ld [hl], e                                    ; $644B: $73
    ld [hl], h                                    ; $644C: $74
    ld h, l                                       ; $644D: $65
    ld l, [hl]                                    ; $644E: $6E
    ld h, l                                       ; $644F: $65
    ld h, h                                       ; $6450: $64

jr_023_6451:
    jr nz, jr_023_64C7                            ; $6451: $20 $74

jr_023_6453:
    ld l, a                                       ; $6453: $6F
    cp $4F                                        ; $6454: $FE $4F
    ld [hl], d                                    ; $6456: $72
    ld [hl], a                                    ; $6457: $77
    ld l, c                                       ; $6458: $69
    ld l, [hl]                                    ; $6459: $6E
    ld l, $2E                                     ; $645A: $2E $2E
    ld l, $FE                                     ; $645C: $2E $FE
    db $FD                                        ; $645E: $FD
    sbc e                                         ; $645F: $9B
    ld a, b                                       ; $6460: $78
    ld [hl], b                                    ; $6461: $70
    sbc a                                         ; $6462: $9F

jr_023_6463:
    ld d, h                                       ; $6463: $54
    ld l, b                                       ; $6464: $68
    ld h, c                                       ; $6465: $61
    ld [hl], h                                    ; $6466: $74

jr_023_6467:
    daa                                           ; $6467: $27
    ld [hl], e                                    ; $6468: $73
    jr nz, jr_023_64DA                            ; $6469: $20 $6F

    ld l, e                                       ; $646B: $6B
    ld h, c                                       ; $646C: $61
    ld a, c                                       ; $646D: $79
    inc l                                         ; $646E: $2C
    rst $38                                       ; $646F: $FF
    ld b, l                                       ; $6470: $45
    ld l, c                                       ; $6471: $69
    ld h, h                                       ; $6472: $64
    ld l, a                                       ; $6473: $6F
    ld l, [hl]                                    ; $6474: $6E
    ld l, $20                                     ; $6475: $2E $20
    ld c, c                                       ; $6477: $49

jr_023_6478:
    jr nz, jr_023_64E8                            ; $6478: $20 $6E

jr_023_647A:
    ld h, l                                       ; $647A: $65
    halt                                          ; $647B: $76
    ld h, l                                       ; $647C: $65
    ld [hl], d                                    ; $647D: $72
    cp $72                                        ; $647E: $FE $72
    ld h, l                                       ; $6480: $65
    ld h, c                                       ; $6481: $61
    ld l, h                                       ; $6482: $6C
    ld l, h                                       ; $6483: $6C
    ld a, c                                       ; $6484: $79
    jr nz, jr_023_64E9                            ; $6485: $20 $62

    ld h, l                                       ; $6487: $65
    ld l, h                                       ; $6488: $6C
    ld l, c                                       ; $6489: $69
    ld h, l                                       ; $648A: $65
    halt                                          ; $648B: $76
    ld h, l                                       ; $648C: $65
    ld h, h                                       ; $648D: $64
    rst $38                                       ; $648E: $FF
    ld l, c                                       ; $648F: $69

jr_023_6490:
    ld [hl], h                                    ; $6490: $74
    jr nz, jr_023_6500                            ; $6491: $20 $6D

    ld a, c                                       ; $6493: $79
    ld [hl], e                                    ; $6494: $73
    ld h, l                                       ; $6495: $65
    ld l, h                                       ; $6496: $6C
    ld h, [hl]                                    ; $6497: $66
    ld l, $FE                                     ; $6498: $2E $FE
    db $FD                                        ; $649A: $FD
    sbc d                                         ; $649B: $9A
    ld e, b                                       ; $649C: $58
    ld bc, $9342                                  ; $649D: $01 $42 $93
    ld h, l                                       ; $64A0: $65
    or c                                          ; $64A1: $B1
    ld b, e                                       ; $64A2: $43
    ld c, a                                       ; $64A3: $4F
    ld h, h                                       ; $64A4: $64
    add hl, sp                                    ; $64A5: $39
    ld b, h                                       ; $64A6: $44
    ld l, c                                       ; $64A7: $69
    ld b, d                                       ; $64A8: $42
    ld b, h                                       ; $64A9: $44
    ld h, [hl]                                    ; $64AA: $66
    ret nz                                        ; $64AB: $C0

    ld e, h                                       ; $64AC: $5C

jr_023_64AD:
    ld hl, $4269                                  ; $64AD: $21 $69 $42
    ld b, h                                       ; $64B0: $44

jr_023_64B1:
    dec b                                         ; $64B1: $05
    nop                                           ; $64B2: $00
    add c                                         ; $64B3: $81
    ld e, l                                       ; $64B4: $5D
    dec b                                         ; $64B5: $05
    dec b                                         ; $64B6: $05
    ld l, c                                       ; $64B7: $69
    ret nc                                        ; $64B8: $D0

    nop                                           ; $64B9: $00
    jr nz, jr_023_6467                            ; $64BA: $20 $AB

    ld d, b                                       ; $64BC: $50
    ld [hl+], a                                   ; $64BD: $22
    inc b                                         ; $64BE: $04
    ld b, b                                       ; $64BF: $40
    dec b                                         ; $64C0: $05
    inc bc                                        ; $64C1: $03
    db $ED                                        ; $64C2: $ED
    ld h, e                                       ; $64C3: $63
    inc bc                                        ; $64C4: $03
    inc b                                         ; $64C5: $04
    ld d, e                                       ; $64C6: $53

jr_023_64C7:
    ret nc                                        ; $64C7: $D0

    nop                                           ; $64C8: $00
    rrca                                          ; $64C9: $0F
    ld h, l                                       ; $64CA: $65
    ld d, [hl]                                    ; $64CB: $56
    inc hl                                        ; $64CC: $23
    ld a, [$0564]                                 ; $64CD: $FA $64 $05
    inc b                                         ; $64D0: $04
    db $ED                                        ; $64D1: $ED
    ld h, e                                       ; $64D2: $63
    dec b                                         ; $64D3: $05
    rlca                                          ; $64D4: $07
    sub c                                         ; $64D5: $91
    ret nc                                        ; $64D6: $D0

    daa                                           ; $64D7: $27
    db $10                                        ; $64D8: $10
    ld l, c                                       ; $64D9: $69

jr_023_64DA:
    ld [hl], a                                    ; $64DA: $77
    inc hl                                        ; $64DB: $23
    ld [bc], a                                    ; $64DC: $02
    ld h, l                                       ; $64DD: $65
    ld l, e                                       ; $64DE: $6B
    daa                                           ; $64DF: $27
    ld a, [bc]                                    ; $64E0: $0A
    ret nc                                        ; $64E1: $D0

    ld [hl], c                                    ; $64E2: $71
    nop                                           ; $64E3: $00
    add b                                         ; $64E4: $80
    nop                                           ; $64E5: $00
    ld l, e                                       ; $64E6: $6B
    dec l                                         ; $64E7: $2D

jr_023_64E8:
    inc c                                         ; $64E8: $0C

jr_023_64E9:
    or b                                          ; $64E9: $B0
    ld e, a                                       ; $64EA: $5F
    ld [hl], b                                    ; $64EB: $70
    add d                                         ; $64EC: $82
    nop                                           ; $64ED: $00
    dec bc                                        ; $64EE: $0B
    nop                                           ; $64EF: $00
    dec bc                                        ; $64F0: $0B
    inc bc                                        ; $64F1: $03
    dec bc                                        ; $64F2: $0B
    inc b                                         ; $64F3: $04
    nop                                           ; $64F4: $00
    add d                                         ; $64F5: $82
    rra                                           ; $64F6: $1F
    inc hl                                        ; $64F7: $23
    sub h                                         ; $64F8: $94
    ld b, d                                       ; $64F9: $42
    ld e, e                                       ; $64FA: $5B
    inc hl                                        ; $64FB: $23
    ld a, [bc]                                    ; $64FC: $0A
    ld h, l                                       ; $64FD: $65
    ld b, l                                       ; $64FE: $45
    rrca                                          ; $64FF: $0F

jr_023_6500:
    ld a, [de]                                    ; $6500: $1A
    ld d, a                                       ; $6501: $57
    ld e, e                                       ; $6502: $5B
    inc hl                                        ; $6503: $23
    inc sp                                        ; $6504: $33
    ld h, l                                       ; $6505: $65
    ld b, l                                       ; $6506: $45
    db $10                                        ; $6507: $10
    cp c                                          ; $6508: $B9
    ld [hl], a                                    ; $6509: $77
    sbc e                                         ; $650A: $9B
    adc b                                         ; $650B: $88
    ld h, l                                       ; $650C: $65
    sbc a                                         ; $650D: $9F
    ld d, h                                       ; $650E: $54
    ld l, b                                       ; $650F: $68
    ld h, c                                       ; $6510: $61
    ld l, [hl]                                    ; $6511: $6E
    ld l, e                                       ; $6512: $6B
    jr nz, jr_023_658E                            ; $6513: $20 $79

    ld l, a                                       ; $6515: $6F
    ld [hl], l                                    ; $6516: $75
    jr nz, jr_023_6585                            ; $6517: $20 $6C

    ld h, c                                       ; $6519: $61
    ld h, h                                       ; $651A: $64
    inc l                                         ; $651B: $2C
    cp $49                                        ; $651C: $FE $49
    jr nz, jr_023_658F                            ; $651E: $20 $6F

    ld [hl], a                                    ; $6520: $77

jr_023_6521:
    ld h, l                                       ; $6521: $65
    jr nz, jr_023_659D                            ; $6522: $20 $79

    ld l, a                                       ; $6524: $6F
    ld [hl], l                                    ; $6525: $75
    jr nz, jr_023_6595                            ; $6526: $20 $6D

    ld a, c                                       ; $6528: $79
    rst $38                                       ; $6529: $FF
    ld l, h                                       ; $652A: $6C
    ld l, c                                       ; $652B: $69
    ld h, [hl]                                    ; $652C: $66
    ld h, l                                       ; $652D: $65
    ld l, $FE                                     ; $652E: $2E $FE
    db $FD                                        ; $6530: $FD
    sbc d                                         ; $6531: $9A
    ld [de], a                                    ; $6532: $12
    sbc e                                         ; $6533: $9B
    ld l, b                                       ; $6534: $68
    ld h, d                                       ; $6535: $62
    sbc a                                         ; $6536: $9F
    ld c, a                                       ; $6537: $4F
    ld [hl], d                                    ; $6538: $72
    ld [hl], a                                    ; $6539: $77
    ld l, c                                       ; $653A: $69
    ld l, [hl]                                    ; $653B: $6E
    daa                                           ; $653C: $27
    ld [hl], e                                    ; $653D: $73
    jr nz, jr_023_65A3                            ; $653E: $20 $63

    ld [hl], l                                    ; $6540: $75
    ld [hl], d                                    ; $6541: $72
    ld h, l                                       ; $6542: $65
    ld h, h                                       ; $6543: $64
    ld hl, $54FF                                  ; $6544: $21 $FF $54
    ld l, b                                       ; $6547: $68
    ld h, c                                       ; $6548: $61
    ld l, [hl]                                    ; $6549: $6E
    ld l, e                                       ; $654A: $6B
    jr nz, jr_023_65C6                            ; $654B: $20 $79

    ld l, a                                       ; $654D: $6F
    ld [hl], l                                    ; $654E: $75
    jr nz, jr_023_65C4                            ; $654F: $20 $73

    ld l, a                                       ; $6551: $6F
    cp $6D                                        ; $6552: $FE $6D
    ld [hl], l                                    ; $6554: $75
    ld h, e                                       ; $6555: $63
    ld l, b                                       ; $6556: $68
    ld hl, $FDFE                                  ; $6557: $21 $FE $FD
    sbc d                                         ; $655A: $9A
    ld [de], a                                    ; $655B: $12
    sub e                                         ; $655C: $93
    ld h, l                                       ; $655D: $65
    or c                                          ; $655E: $B1
    ld b, e                                       ; $655F: $43
    ld c, a                                       ; $6560: $4F
    ld h, h                                       ; $6561: $64
    add hl, sp                                    ; $6562: $39
    ld b, h                                       ; $6563: $44
    ld h, [hl]                                    ; $6564: $66
    ret nz                                        ; $6565: $C0

    ld e, h                                       ; $6566: $5C
    ld hl, $4269                                  ; $6567: $21 $69 $42
    ld b, h                                       ; $656A: $44
    dec b                                         ; $656B: $05
    nop                                           ; $656C: $00
    add c                                         ; $656D: $81
    ld e, l                                       ; $656E: $5D
    dec b                                         ; $656F: $05
    dec b                                         ; $6570: $05
    ld l, c                                       ; $6571: $69
    ret nc                                        ; $6572: $D0

    nop                                           ; $6573: $00
    jr nz, jr_023_6521                            ; $6574: $20 $AB

    ld d, b                                       ; $6576: $50
    ld [hl+], a                                   ; $6577: $22
    inc b                                         ; $6578: $04
    ld b, b                                       ; $6579: $40
    dec b                                         ; $657A: $05
    ld [bc], a                                    ; $657B: $02
    db $ED                                        ; $657C: $ED
    ld h, e                                       ; $657D: $63
    dec b                                         ; $657E: $05
    rlca                                          ; $657F: $07
    sub c                                         ; $6580: $91
    ret nc                                        ; $6581: $D0

    nop                                           ; $6582: $00
    ld c, $F0                                     ; $6583: $0E $F0

jr_023_6585:
    ld d, e                                       ; $6585: $53
    inc hl                                        ; $6586: $23
    push de                                       ; $6587: $D5
    ld h, l                                       ; $6588: $65
    dec b                                         ; $6589: $05
    inc bc                                        ; $658A: $03
    db $ED                                        ; $658B: $ED
    ld h, e                                       ; $658C: $63
    inc bc                                        ; $658D: $03

jr_023_658E:
    inc b                                         ; $658E: $04

jr_023_658F:
    ld d, e                                       ; $658F: $53
    ret nc                                        ; $6590: $D0

    jr nc, @+$11                                  ; $6591: $30 $0F

    ld h, l                                       ; $6593: $65
    ld d, [hl]                                    ; $6594: $56

jr_023_6595:
    inc hl                                        ; $6595: $23
    db $DD                                        ; $6596: $DD
    ld h, l                                       ; $6597: $65
    dec b                                         ; $6598: $05
    inc b                                         ; $6599: $04
    db $ED                                        ; $659A: $ED
    ld h, e                                       ; $659B: $63
    ld [bc], a                                    ; $659C: $02

jr_023_659D:
    ld b, $7A                                     ; $659D: $06 $7A
    ret nc                                        ; $659F: $D0

    ld h, c                                       ; $65A0: $61
    ld c, $CF                                     ; $65A1: $0E $CF

jr_023_65A3:
    ld h, b                                       ; $65A3: $60
    inc hl                                        ; $65A4: $23
    call Call_023_6B65                            ; $65A5: $CD $65 $6B
    jr nc, jr_023_65B4                            ; $65A8: $30 $0A

    or b                                          ; $65AA: $B0
    ld c, b                                       ; $65AB: $48
    nop                                           ; $65AC: $00
    add b                                         ; $65AD: $80
    nop                                           ; $65AE: $00
    ld l, e                                       ; $65AF: $6B
    daa                                           ; $65B0: $27
    ld a, [bc]                                    ; $65B1: $0A
    ret nc                                        ; $65B2: $D0

    ld [hl], c                                    ; $65B3: $71

jr_023_65B4:
    nop                                           ; $65B4: $00
    add e                                         ; $65B5: $83
    nop                                           ; $65B6: $00
    ld l, e                                       ; $65B7: $6B
    ld [hl+], a                                   ; $65B8: $22
    ld a, [bc]                                    ; $65B9: $0A
    ldh a, [$4E]                                  ; $65BA: $F0 $4E
    db $10                                        ; $65BC: $10
    add [hl]                                      ; $65BD: $86
    nop                                           ; $65BE: $00
    dec bc                                        ; $65BF: $0B
    nop                                           ; $65C0: $00
    dec bc                                        ; $65C1: $0B
    ld [bc], a                                    ; $65C2: $02
    dec bc                                        ; $65C3: $0B

jr_023_65C4:
    inc bc                                        ; $65C4: $03
    dec bc                                        ; $65C5: $0B

jr_023_65C6:
    inc b                                         ; $65C6: $04
    nop                                           ; $65C7: $00
    add d                                         ; $65C8: $82
    rra                                           ; $65C9: $1F
    inc hl                                        ; $65CA: $23
    sub h                                         ; $65CB: $94
    ld b, d                                       ; $65CC: $42
    ld e, e                                       ; $65CD: $5B
    inc hl                                        ; $65CE: $23
    push hl                                       ; $65CF: $E5
    ld h, l                                       ; $65D0: $65
    ld b, l                                       ; $65D1: $45
    ld c, $29                                     ; $65D2: $0E $29
    ld h, c                                       ; $65D4: $61
    ld e, e                                       ; $65D5: $5B
    inc hl                                        ; $65D6: $23
    ld [hl], h                                    ; $65D7: $74
    ld h, [hl]                                    ; $65D8: $66
    ld b, l                                       ; $65D9: $45
    ld c, $35                                     ; $65DA: $0E $35
    ld d, l                                       ; $65DC: $55
    ld e, e                                       ; $65DD: $5B
    inc hl                                        ; $65DE: $23
    inc a                                         ; $65DF: $3C
    ld h, a                                       ; $65E0: $67
    ld b, l                                       ; $65E1: $45
    rrca                                          ; $65E2: $0F
    ld a, [de]                                    ; $65E3: $1A
    ld d, a                                       ; $65E4: $57
    ld b, e                                       ; $65E5: $43
    ld de, $0504                                  ; $65E6: $11 $04 $05
    dec d                                         ; $65E9: $15
    inc hl                                        ; $65EA: $23
    ld d, c                                       ; $65EB: $51
    ld h, [hl]                                    ; $65EC: $66
    sbc e                                         ; $65ED: $9B
    ld hl, sp+$4A                                 ; $65EE: $F8 $4A
    sbc a                                         ; $65F0: $9F
    ld d, h                                       ; $65F1: $54
    ld l, a                                       ; $65F2: $6F
    ld l, [hl]                                    ; $65F3: $6E
    ld a, c                                       ; $65F4: $79
    inc l                                         ; $65F5: $2C
    jr nz, @+$76                                  ; $65F6: $20 $74

    ld l, b                                       ; $65F8: $68
    ld h, c                                       ; $65F9: $61
    ld l, [hl]                                    ; $65FA: $6E
    ld l, e                                       ; $65FB: $6B
    jr nz, jr_023_6677                            ; $65FC: $20 $79

    ld l, a                                       ; $65FE: $6F
    ld [hl], l                                    ; $65FF: $75
    rst $38                                       ; $6600: $FF
    ld h, [hl]                                    ; $6601: $66
    ld l, a                                       ; $6602: $6F
    ld [hl], d                                    ; $6603: $72
    jr nz, jr_023_6679                            ; $6604: $20 $73

    ld h, c                                       ; $6606: $61
    halt                                          ; $6607: $76
    ld l, c                                       ; $6608: $69
    ld l, [hl]                                    ; $6609: $6E
    ld h, a                                       ; $660A: $67
    cp $4F                                        ; $660B: $FE $4F
    ld [hl], d                                    ; $660D: $72
    ld [hl], a                                    ; $660E: $77
    ld l, c                                       ; $660F: $69
    ld l, [hl]                                    ; $6610: $6E
    inc l                                         ; $6611: $2C
    jr nz, jr_023_6676                            ; $6612: $20 $62

    ld [hl], l                                    ; $6614: $75
    ld [hl], h                                    ; $6615: $74
    jr nz, jr_023_6661                            ; $6616: $20 $49

    daa                                           ; $6618: $27
    ld l, l                                       ; $6619: $6D
    rst $38                                       ; $661A: $FF
    ld h, c                                       ; $661B: $61
    ld h, [hl]                                    ; $661C: $66
    ld [hl], d                                    ; $661D: $72
    ld h, c                                       ; $661E: $61
    ld l, c                                       ; $661F: $69
    ld h, h                                       ; $6620: $64
    jr nz, jr_023_669C                            ; $6621: $20 $79

    ld l, a                                       ; $6623: $6F
    ld [hl], l                                    ; $6624: $75
    cp $73                                        ; $6625: $FE $73
    ld [hl], h                                    ; $6627: $74
    ld l, c                                       ; $6628: $69
    ld l, h                                       ; $6629: $6C
    ld l, h                                       ; $662A: $6C
    jr nz, jr_023_669A                            ; $662B: $20 $6D

    ld [hl], l                                    ; $662D: $75
    ld [hl], e                                    ; $662E: $73
    ld [hl], h                                    ; $662F: $74
    rst $38                                       ; $6630: $FF
    ld l, h                                       ; $6631: $6C
    ld h, l                                       ; $6632: $65
    ld h, c                                       ; $6633: $61
    halt                                          ; $6634: $76
    ld h, l                                       ; $6635: $65
    jr nz, jr_023_6699                            ; $6636: $20 $61

    ld [hl], e                                    ; $6638: $73
    jr nz, @+$75                                  ; $6639: $20 $73

    ld l, a                                       ; $663B: $6F
    ld l, a                                       ; $663C: $6F
    ld l, [hl]                                    ; $663D: $6E
    cp $61                                        ; $663E: $FE $61
    ld [hl], e                                    ; $6640: $73
    jr nz, jr_023_66B3                            ; $6641: $20 $70

    ld l, a                                       ; $6643: $6F
    ld [hl], e                                    ; $6644: $73
    ld [hl], e                                    ; $6645: $73
    ld l, c                                       ; $6646: $69
    ld h, d                                       ; $6647: $62
    ld l, h                                       ; $6648: $6C
    ld h, l                                       ; $6649: $65
    ld l, $FE                                     ; $664A: $2E $FE
    db $FD                                        ; $664C: $FD
    sbc d                                         ; $664D: $9A
    ld e, b                                       ; $664E: $58
    ld bc, $9F42                                  ; $664F: $01 $42 $9F
    ld b, a                                       ; $6652: $47
    ld l, a                                       ; $6653: $6F
    ld h, h                                       ; $6654: $64
    dec l                                         ; $6655: $2D
    ld [hl], e                                    ; $6656: $73
    ld [hl], b                                    ; $6657: $70

Call_023_6658:
    ld h, l                                       ; $6658: $65
    ld h, l                                       ; $6659: $65
    ld h, h                                       ; $665A: $64
    jr nz, jr_023_66CC                            ; $665B: $20 $6F

    ld l, [hl]                                    ; $665D: $6E
    rst $38                                       ; $665E: $FF
    ld a, c                                       ; $665F: $79
    ld l, a                                       ; $6660: $6F

jr_023_6661:
    ld [hl], l                                    ; $6661: $75
    ld [hl], d                                    ; $6662: $72
    jr nz, jr_023_66CF                            ; $6663: $20 $6A

    ld l, a                                       ; $6665: $6F
    ld [hl], l                                    ; $6666: $75
    ld [hl], d                                    ; $6667: $72
    ld l, [hl]                                    ; $6668: $6E
    ld h, l                                       ; $6669: $65
    ld a, c                                       ; $666A: $79
    ld l, $FE                                     ; $666B: $2E $FE
    db $FD                                        ; $666D: $FD
    sbc e                                         ; $666E: $9B
    ld hl, sp+$4A                                 ; $666F: $F8 $4A
    ld e, b                                       ; $6671: $58
    ld bc, $9B42                                  ; $6672: $01 $42 $9B
    ld c, b                                       ; $6675: $48

jr_023_6676:
    ld b, [hl]                                    ; $6676: $46

jr_023_6677:
    sbc a                                         ; $6677: $9F
    ld c, c                                       ; $6678: $49

jr_023_6679:
    daa                                           ; $6679: $27
    ld l, l                                       ; $667A: $6D
    jr nz, jr_023_66F0                            ; $667B: $20 $73

    ld l, a                                       ; $667D: $6F
    ld [hl], d                                    ; $667E: $72
    ld [hl], d                                    ; $667F: $72
    ld a, c                                       ; $6680: $79
    jr nz, jr_023_66D7                            ; $6681: $20 $54

    ld l, a                                       ; $6683: $6F
    ld l, [hl]                                    ; $6684: $6E
    ld a, c                                       ; $6685: $79
    ld l, $FE                                     ; $6686: $2E $FE
    ld c, c                                       ; $6688: $49
    jr nz, jr_023_6702                            ; $6689: $20 $77

    ld h, c                                       ; $668B: $61
    ld [hl], e                                    ; $668C: $73
    jr nz, jr_023_66F2                            ; $668D: $20 $63

    ld l, a                                       ; $668F: $6F
    ld l, [hl]                                    ; $6690: $6E
    halt                                          ; $6691: $76
    ld l, c                                       ; $6692: $69
    ld l, [hl]                                    ; $6693: $6E
    ld h, e                                       ; $6694: $63
    ld h, l                                       ; $6695: $65
    ld h, h                                       ; $6696: $64
    rst $38                                       ; $6697: $FF
    ld [hl], h                                    ; $6698: $74

jr_023_6699:
    ld l, b                                       ; $6699: $68

jr_023_669A:
    ld h, c                                       ; $669A: $61
    ld [hl], h                                    ; $669B: $74

jr_023_669C:
    jr nz, jr_023_6717                            ; $669C: $20 $79

    ld l, a                                       ; $669E: $6F
    ld [hl], l                                    ; $669F: $75
    jr nz, jr_023_6719                            ; $66A0: $20 $77

    ld h, l                                       ; $66A2: $65
    ld [hl], d                                    ; $66A3: $72
    ld h, l                                       ; $66A4: $65
    cp $4B                                        ; $66A5: $FE $4B
    ld a, c                                       ; $66A7: $79
    ld [hl], d                                    ; $66A8: $72
    ld l, a                                       ; $66A9: $6F
    ld [hl], e                                    ; $66AA: $73
    ld l, $2E                                     ; $66AB: $2E $2E
    ld l, $20                                     ; $66AD: $2E $20
    ld [hl], h                                    ; $66AF: $74
    ld l, b                                       ; $66B0: $68
    ld l, c                                       ; $66B1: $69
    ld [hl], e                                    ; $66B2: $73

jr_023_66B3:
    rst $38                                       ; $66B3: $FF
    ld l, c                                       ; $66B4: $69
    ld [hl], e                                    ; $66B5: $73
    ld l, [hl]                                    ; $66B6: $6E
    daa                                           ; $66B7: $27
    ld [hl], h                                    ; $66B8: $74
    jr nz, jr_023_672F                            ; $66B9: $20 $74

    ld l, b                                       ; $66BB: $68
    ld h, l                                       ; $66BC: $65
    jr nz, @+$68                                  ; $66BD: $20 $66

    ld l, c                                       ; $66BF: $69
    ld [hl], d                                    ; $66C0: $72
    ld [hl], e                                    ; $66C1: $73
    ld [hl], h                                    ; $66C2: $74
    cp $74                                        ; $66C3: $FE $74
    ld l, c                                       ; $66C5: $69
    ld l, l                                       ; $66C6: $6D
    ld h, l                                       ; $66C7: $65
    jr nz, jr_023_673E                            ; $66C8: $20 $74

    ld l, b                                       ; $66CA: $68
    ld h, c                                       ; $66CB: $61

jr_023_66CC:
    ld [hl], h                                    ; $66CC: $74
    daa                                           ; $66CD: $27
    ld [hl], e                                    ; $66CE: $73

jr_023_66CF:
    rst $38                                       ; $66CF: $FF
    ld l, b                                       ; $66D0: $68
    ld h, c                                       ; $66D1: $61
    ld [hl], b                                    ; $66D2: $70
    ld [hl], b                                    ; $66D3: $70
    ld h, l                                       ; $66D4: $65
    ld l, [hl]                                    ; $66D5: $6E
    ld h, l                                       ; $66D6: $65

jr_023_66D7:
    ld h, h                                       ; $66D7: $64
    ld l, $FE                                     ; $66D8: $2E $FE
    ld c, c                                       ; $66DA: $49
    jr nz, jr_023_6750                            ; $66DB: $20 $73

    ld l, b                                       ; $66DD: $68
    ld l, a                                       ; $66DE: $6F
    ld [hl], l                                    ; $66DF: $75
    ld l, h                                       ; $66E0: $6C
    ld h, h                                       ; $66E1: $64
    jr nz, jr_023_674C                            ; $66E2: $20 $68

    ld h, c                                       ; $66E4: $61
    halt                                          ; $66E5: $76
    ld h, l                                       ; $66E6: $65
    rst $38                                       ; $66E7: $FF
    ld l, h                                       ; $66E8: $6C
    ld l, c                                       ; $66E9: $69
    ld [hl], e                                    ; $66EA: $73
    ld [hl], h                                    ; $66EB: $74
    ld h, l                                       ; $66EC: $65
    ld l, [hl]                                    ; $66ED: $6E
    ld h, l                                       ; $66EE: $65
    ld h, h                                       ; $66EF: $64

jr_023_66F0:
    jr nz, jr_023_6766                            ; $66F0: $20 $74

jr_023_66F2:
    ld l, a                                       ; $66F2: $6F
    cp $4F                                        ; $66F3: $FE $4F
    ld [hl], d                                    ; $66F5: $72
    ld [hl], a                                    ; $66F6: $77
    ld l, c                                       ; $66F7: $69
    ld l, [hl]                                    ; $66F8: $6E
    ld l, $2E                                     ; $66F9: $2E $2E
    ld l, $FE                                     ; $66FB: $2E $FE
    db $FD                                        ; $66FD: $FD
    sbc e                                         ; $66FE: $9B
    ld a, b                                       ; $66FF: $78
    ld [hl], b                                    ; $6700: $70
    sbc a                                         ; $6701: $9F

jr_023_6702:
    ld d, h                                       ; $6702: $54
    ld l, b                                       ; $6703: $68
    ld h, c                                       ; $6704: $61
    ld [hl], h                                    ; $6705: $74
    daa                                           ; $6706: $27
    ld [hl], e                                    ; $6707: $73
    jr nz, jr_023_6779                            ; $6708: $20 $6F

    ld l, e                                       ; $670A: $6B
    ld h, c                                       ; $670B: $61
    ld a, c                                       ; $670C: $79
    inc l                                         ; $670D: $2C
    rst $38                                       ; $670E: $FF
    ld b, l                                       ; $670F: $45
    ld l, c                                       ; $6710: $69
    ld h, h                                       ; $6711: $64
    ld l, a                                       ; $6712: $6F
    ld l, [hl]                                    ; $6713: $6E
    ld l, $20                                     ; $6714: $2E $20
    ld c, c                                       ; $6716: $49

jr_023_6717:
    jr nz, @+$70                                  ; $6717: $20 $6E

jr_023_6719:
    ld h, l                                       ; $6719: $65
    halt                                          ; $671A: $76
    ld h, l                                       ; $671B: $65
    ld [hl], d                                    ; $671C: $72
    cp $72                                        ; $671D: $FE $72
    ld h, l                                       ; $671F: $65
    ld h, c                                       ; $6720: $61
    ld l, h                                       ; $6721: $6C
    ld l, h                                       ; $6722: $6C
    ld a, c                                       ; $6723: $79
    jr nz, jr_023_6788                            ; $6724: $20 $62

    ld h, l                                       ; $6726: $65
    ld l, h                                       ; $6727: $6C
    ld l, c                                       ; $6728: $69
    ld h, l                                       ; $6729: $65
    halt                                          ; $672A: $76
    ld h, l                                       ; $672B: $65
    ld h, h                                       ; $672C: $64
    rst $38                                       ; $672D: $FF
    ld l, c                                       ; $672E: $69

jr_023_672F:
    ld [hl], h                                    ; $672F: $74
    jr nz, jr_023_679F                            ; $6730: $20 $6D

    ld a, c                                       ; $6732: $79
    ld [hl], e                                    ; $6733: $73
    ld h, l                                       ; $6734: $65
    ld l, h                                       ; $6735: $6C
    ld h, [hl]                                    ; $6736: $66
    ld l, $FE                                     ; $6737: $2E $FE
    db $FD                                        ; $6739: $FD
    sbc d                                         ; $673A: $9A
    ld [de], a                                    ; $673B: $12
    sbc e                                         ; $673C: $9B
    adc b                                         ; $673D: $88

jr_023_673E:
    ld h, l                                       ; $673E: $65
    sbc a                                         ; $673F: $9F
    ld d, h                                       ; $6740: $54
    ld l, b                                       ; $6741: $68
    ld h, c                                       ; $6742: $61
    ld l, [hl]                                    ; $6743: $6E
    ld l, e                                       ; $6744: $6B
    jr nz, jr_023_67C0                            ; $6745: $20 $79

    ld l, a                                       ; $6747: $6F
    ld [hl], l                                    ; $6748: $75
    jr nz, jr_023_67B7                            ; $6749: $20 $6C

    ld h, c                                       ; $674B: $61

jr_023_674C:
    ld h, h                                       ; $674C: $64
    inc l                                         ; $674D: $2C
    cp $49                                        ; $674E: $FE $49

jr_023_6750:
    jr nz, jr_023_67C1                            ; $6750: $20 $6F

    ld [hl], a                                    ; $6752: $77
    ld h, l                                       ; $6753: $65
    jr nz, @+$7B                                  ; $6754: $20 $79

    ld l, a                                       ; $6756: $6F

jr_023_6757:
    ld [hl], l                                    ; $6757: $75
    jr nz, jr_023_67C7                            ; $6758: $20 $6D

    ld a, c                                       ; $675A: $79
    rst $38                                       ; $675B: $FF
    ld l, h                                       ; $675C: $6C
    ld l, c                                       ; $675D: $69
    ld h, [hl]                                    ; $675E: $66
    ld h, l                                       ; $675F: $65
    ld l, $FE                                     ; $6760: $2E $FE
    db $FD                                        ; $6762: $FD
    sbc d                                         ; $6763: $9A
    ld [de], a                                    ; $6764: $12
    ld b, e                                       ; $6765: $43

jr_023_6766:
    nop                                           ; $6766: $00
    and l                                         ; $6767: $A5
    and c                                         ; $6768: $A1
    ld [bc], a                                    ; $6769: $02
    inc hl                                        ; $676A: $23
    ld [hl], b                                    ; $676B: $70
    ld h, a                                       ; $676C: $67
    ld b, [hl]                                    ; $676D: $46
    ldh [rBCPS], a                                ; $676E: $E0 $68
    sub e                                         ; $6770: $93
    ld h, l                                       ; $6771: $65
    or c                                          ; $6772: $B1
    ld b, e                                       ; $6773: $43
    ld c, a                                       ; $6774: $4F
    ld l, c                                       ; $6775: $69
    ld b, d                                       ; $6776: $42
    ld b, h                                       ; $6777: $44
    ld h, h                                       ; $6778: $64

jr_023_6779:
    add hl, sp                                    ; $6779: $39
    ld b, h                                       ; $677A: $44
    ld h, [hl]                                    ; $677B: $66
    ret nz                                        ; $677C: $C0

    ld e, h                                       ; $677D: $5C
    ld hl, $0005                                  ; $677E: $21 $05 $00
    ld l, e                                       ; $6781: $6B
    ld c, d                                       ; $6782: $4A
    ld c, $09                                     ; $6783: $0E $09
    jp nz, $00D0                                  ; $6785: $C2 $D0 $00

jr_023_6788:
    inc hl                                        ; $6788: $23
    push hl                                       ; $6789: $E5
    ld h, a                                       ; $678A: $67
    ld [hl+], a                                   ; $678B: $22
    dec b                                         ; $678C: $05
    ld b, b                                       ; $678D: $40
    dec b                                         ; $678E: $05
    inc bc                                        ; $678F: $03
    db $ED                                        ; $6790: $ED
    ld h, e                                       ; $6791: $63
    ld [bc], a                                    ; $6792: $02
    inc b                                         ; $6793: $04
    ld d, d                                       ; $6794: $52
    ret nc                                        ; $6795: $D0

    nop                                           ; $6796: $00
    rrca                                          ; $6797: $0F
    db $FC                                        ; $6798: $FC
    ld d, [hl]                                    ; $6799: $56
    inc hl                                        ; $679A: $23

jr_023_679B:
    ld l, h                                       ; $679B: $6C
    ld l, b                                       ; $679C: $68
    dec b                                         ; $679D: $05
    inc b                                         ; $679E: $04

jr_023_679F:
    db $ED                                        ; $679F: $ED
    ld h, e                                       ; $67A0: $63
    ld c, $09                                     ; $67A1: $0E $09
    jp nz, $27D0                                  ; $67A3: $C2 $D0 $27

    inc hl                                        ; $67A6: $23
    ld hl, sp+$67                                 ; $67A7: $F8 $67
    inc hl                                        ; $67A9: $23
    ld [hl], h                                    ; $67AA: $74
    ld l, b                                       ; $67AB: $68
    dec b                                         ; $67AC: $05
    dec b                                         ; $67AD: $05
    db $ED                                        ; $67AE: $ED
    ld h, e                                       ; $67AF: $63
    ld [bc], a                                    ; $67B0: $02
    ld b, $7A                                     ; $67B1: $06 $7A
    ret nc                                        ; $67B3: $D0

    ld d, e                                       ; $67B4: $53

jr_023_67B5:
    inc hl                                        ; $67B5: $23
    ld b, h                                       ; $67B6: $44

jr_023_67B7:
    ld l, b                                       ; $67B7: $68
    inc hl                                        ; $67B8: $23
    ld a, h                                       ; $67B9: $7C
    ld l, b                                       ; $67BA: $68
    ld l, e                                       ; $67BB: $6B
    daa                                           ; $67BC: $27
    ld a, [bc]                                    ; $67BD: $0A
    ret nc                                        ; $67BE: $D0

    ld [hl], c                                    ; $67BF: $71

jr_023_67C0:
    nop                                           ; $67C0: $00

jr_023_67C1:
    add b                                         ; $67C1: $80
    nop                                           ; $67C2: $00
    ld l, e                                       ; $67C3: $6B
    inc l                                         ; $67C4: $2C
    ld a, [bc]                                    ; $67C5: $0A
    or b                                          ; $67C6: $B0

jr_023_67C7:
    ld c, b                                       ; $67C7: $48
    ld [hl], b                                    ; $67C8: $70
    add d                                         ; $67C9: $82
    nop                                           ; $67CA: $00
    ld l, e                                       ; $67CB: $6B
    ld [hl+], a                                   ; $67CC: $22
    ld a, [bc]                                    ; $67CD: $0A
    ldh a, [$4E]                                  ; $67CE: $F0 $4E
    jr nc, jr_023_6757                            ; $67D0: $30 $85

    nop                                           ; $67D2: $00
    dec bc                                        ; $67D3: $0B
    inc bc                                        ; $67D4: $03
    dec bc                                        ; $67D5: $0B
    inc b                                         ; $67D6: $04
    dec bc                                        ; $67D7: $0B
    dec b                                         ; $67D8: $05
    add d                                         ; $67D9: $82
    rra                                           ; $67DA: $1F
    inc hl                                        ; $67DB: $23
    sub h                                         ; $67DC: $94
    ld b, b                                       ; $67DD: $40
    jr jr_023_67EB                                ; $67DE: $18 $0B

    nop                                           ; $67E0: $00
    xor c                                         ; $67E1: $A9
    dec d                                         ; $67E2: $15
    nop                                           ; $67E3: $00
    ld b, d                                       ; $67E4: $42
    dec d                                         ; $67E5: $15
    jr nz, jr_023_679B                            ; $67E6: $20 $B3

    ld c, a                                       ; $67E8: $4F
    jr nc, jr_023_67EB                            ; $67E9: $30 $00

jr_023_67EB:
    ld d, $20                                     ; $67EB: $16 $20
    db $DD                                        ; $67ED: $DD
    ld c, a                                       ; $67EE: $4F
    add b                                         ; $67EF: $80
    rst $38                                       ; $67F0: $FF
    nop                                           ; $67F1: $00
    nop                                           ; $67F2: $00
    inc d                                         ; $67F3: $14
    jr nz, jr_023_67B5                            ; $67F4: $20 $BF

    ld d, b                                       ; $67F6: $50
    ld b, d                                       ; $67F7: $42
    dec d                                         ; $67F8: $15
    ld c, $70                                     ; $67F9: $0E $70
    ld d, e                                       ; $67FB: $53
    jr nz, @+$10                                  ; $67FC: $20 $0E

    sub b                                         ; $67FE: $90
    ld d, e                                       ; $67FF: $53
    add b                                         ; $6800: $80
    ld c, $70                                     ; $6801: $0E $70
    ld d, e                                       ; $6803: $53
    jr nz, jr_023_6814                            ; $6804: $20 $0E

    sub b                                         ; $6806: $90
    ld d, e                                       ; $6807: $53
    jr nz, jr_023_680A                            ; $6808: $20 $00

jr_023_680A:
    dec d                                         ; $680A: $15
    ld c, $04                                     ; $680B: $0E $04
    ld d, h                                       ; $680D: $54
    sub b                                         ; $680E: $90
    ld c, $2C                                     ; $680F: $0E $2C
    ld d, h                                       ; $6811: $54
    jr nz, jr_023_6822                            ; $6812: $20 $0E

jr_023_6814:
    inc b                                         ; $6814: $04
    ld d, h                                       ; $6815: $54
    jr nc, jr_023_6826                            ; $6816: $30 $0E

    and b                                         ; $6818: $A0
    ld d, e                                       ; $6819: $53
    jr nz, jr_023_682A                            ; $681A: $20 $0E

    ld c, $54                                     ; $681C: $0E $54
    add b                                         ; $681E: $80

jr_023_681F:
    ld c, $2C                                     ; $681F: $0E $2C
    ld d, h                                       ; $6821: $54

jr_023_6822:
    jr nz, jr_023_6832                            ; $6822: $20 $0E

    inc b                                         ; $6824: $04
    ld d, h                                       ; $6825: $54

jr_023_6826:
    jr nc, jr_023_6836                            ; $6826: $30 $0E

    sub b                                         ; $6828: $90
    ld d, e                                       ; $6829: $53

jr_023_682A:
    jr nz, jr_023_683A                            ; $682A: $20 $0E

    and b                                         ; $682C: $A0
    ld d, e                                       ; $682D: $53
    jr nz, jr_023_683E                            ; $682E: $20 $0E

    sub b                                         ; $6830: $90
    ld d, e                                       ; $6831: $53

jr_023_6832:
    jr nz, jr_023_6842                            ; $6832: $20 $0E

    and b                                         ; $6834: $A0
    ld d, e                                       ; $6835: $53

jr_023_6836:
    jr nz, @+$10                                  ; $6836: $20 $0E

    ld c, $54                                     ; $6838: $0E $54

jr_023_683A:
    ld b, b                                       ; $683A: $40
    ld c, $90                                     ; $683B: $0E $90
    ld d, e                                       ; $683D: $53

jr_023_683E:
    jr nz, jr_023_6840                            ; $683E: $20 $00

jr_023_6840:
    ld b, l                                       ; $6840: $45
    inc hl                                        ; $6841: $23

jr_023_6842:
    ld a, [bc]                                    ; $6842: $0A
    ld l, b                                       ; $6843: $68
    dec d                                         ; $6844: $15
    ld c, $ED                                     ; $6845: $0E $ED
    ld h, b                                       ; $6847: $60
    add b                                         ; $6848: $80
    ld c, $7F                                     ; $6849: $0E $7F
    ld h, b                                       ; $684B: $60
    jr nz, jr_023_685C                            ; $684C: $20 $0E

    db $ED                                        ; $684E: $ED
    ld h, b                                       ; $684F: $60
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    ld e, e                                       ; $6852: $5B
    inc hl                                        ; $6853: $23
    rlca                                          ; $6854: $07
    ld l, d                                       ; $6855: $6A
    ld h, d                                       ; $6856: $62
    ld bc, $0007                                  ; $6857: $01 $07 $00
    add c                                         ; $685A: $81
    ld e, l                                       ; $685B: $5D

jr_023_685C:
    add hl, bc                                    ; $685C: $09
    nop                                           ; $685D: $00
    jr nz, jr_023_681F                            ; $685E: $20 $BF

    ld d, b                                       ; $6860: $50
    dec d                                         ; $6861: $15
    ld c, $6F                                     ; $6862: $0E $6F
    ld h, b                                       ; $6864: $60
    jr nz, jr_023_6875                            ; $6865: $20 $0E

    rst $08                                       ; $6867: $CF
    ld h, b                                       ; $6868: $60
    nop                                           ; $6869: $00
    nop                                           ; $686A: $00
    ld b, d                                       ; $686B: $42
    ld e, e                                       ; $686C: $5B
    inc hl                                        ; $686D: $23
    pop de                                        ; $686E: $D1
    ld l, b                                       ; $686F: $68
    ld b, l                                       ; $6870: $45
    rrca                                          ; $6871: $0F
    db $FC                                        ; $6872: $FC
    ld d, [hl]                                    ; $6873: $56
    ld e, e                                       ; $6874: $5B

jr_023_6875:
    inc hl                                        ; $6875: $23
    add h                                         ; $6876: $84
    ld l, b                                       ; $6877: $68
    ld b, l                                       ; $6878: $45
    ld c, $35                                     ; $6879: $0E $35
    ld d, l                                       ; $687B: $55
    ld e, e                                       ; $687C: $5B
    inc hl                                        ; $687D: $23
    and c                                         ; $687E: $A1
    ld l, b                                       ; $687F: $68
    ld b, l                                       ; $6880: $45
    ld c, $29                                     ; $6881: $0E $29
    ld h, c                                       ; $6883: $61
    sbc e                                         ; $6884: $9B
    ld c, b                                       ; $6885: $48
    ld b, [hl]                                    ; $6886: $46
    sbc a                                         ; $6887: $9F
    ld c, a                                       ; $6888: $4F
    ld [hl], d                                    ; $6889: $72
    ld [hl], a                                    ; $688A: $77
    ld l, c                                       ; $688B: $69
    ld l, [hl]                                    ; $688C: $6E
    jr nz, jr_023_68F8                            ; $688D: $20 $69

    ld [hl], e                                    ; $688F: $73
    jr nz, jr_023_68F3                            ; $6890: $20 $61

    ld l, h                                       ; $6892: $6C
    ld l, l                                       ; $6893: $6D
    ld l, a                                       ; $6894: $6F
    ld [hl], e                                    ; $6895: $73
    ld [hl], h                                    ; $6896: $74
    rst $38                                       ; $6897: $FF
    ld h, h                                       ; $6898: $64
    ld h, l                                       ; $6899: $65
    ld h, c                                       ; $689A: $61
    ld h, h                                       ; $689B: $64
    ld l, $FE                                     ; $689C: $2E $FE
    db $FD                                        ; $689E: $FD
    sbc d                                         ; $689F: $9A
    ld [de], a                                    ; $68A0: $12
    sbc e                                         ; $68A1: $9B
    ld hl, sp+$4A                                 ; $68A2: $F8 $4A
    sbc a                                         ; $68A4: $9F
    ld e, c                                       ; $68A5: $59
    ld l, a                                       ; $68A6: $6F
    ld [hl], l                                    ; $68A7: $75
    jr nz, @+$6F                                  ; $68A8: $20 $6D

    ld [hl], l                                    ; $68AA: $75
    ld [hl], e                                    ; $68AB: $73
    ld [hl], h                                    ; $68AC: $74
    jr nz, jr_023_6916                            ; $68AD: $20 $67

    ld l, a                                       ; $68AF: $6F
    jr nz, jr_023_6926                            ; $68B0: $20 $74

    ld l, a                                       ; $68B2: $6F
    rst $38                                       ; $68B3: $FF
    ld [hl], h                                    ; $68B4: $74
    ld l, b                                       ; $68B5: $68
    ld h, l                                       ; $68B6: $65
    jr nz, jr_023_68FC                            ; $68B7: $20 $43

    ld l, a                                       ; $68B9: $6F
    ld [hl], d                                    ; $68BA: $72
    ld h, l                                       ; $68BB: $65
    cp $45                                        ; $68BC: $FE $45
    ld l, [hl]                                    ; $68BE: $6E
    ld [hl], h                                    ; $68BF: $74
    ld [hl], d                                    ; $68C0: $72
    ld h, c                                       ; $68C1: $61
    ld l, [hl]                                    ; $68C2: $6E
    ld h, e                                       ; $68C3: $63
    ld h, l                                       ; $68C4: $65
    ld hl, $48FE                                  ; $68C5: $21 $FE $48
    ld [hl], l                                    ; $68C8: $75
    ld [hl], d                                    ; $68C9: $72
    ld [hl], d                                    ; $68CA: $72
    ld a, c                                       ; $68CB: $79
    ld hl, $FDFE                                  ; $68CC: $21 $FE $FD
    sbc d                                         ; $68CF: $9A
    ld [de], a                                    ; $68D0: $12
    sbc e                                         ; $68D1: $9B
    adc b                                         ; $68D2: $88
    ld h, l                                       ; $68D3: $65
    sbc a                                         ; $68D4: $9F
    ld l, $2E                                     ; $68D5: $2E $2E
    ld l, $2E                                     ; $68D7: $2E $2E
    ld l, $2E                                     ; $68D9: $2E $2E
    ld l, $FE                                     ; $68DB: $2E $FE
    db $FD                                        ; $68DD: $FD
    sbc d                                         ; $68DE: $9A
    ld [de], a                                    ; $68DF: $12
    sub e                                         ; $68E0: $93
    ld h, l                                       ; $68E1: $65
    or c                                          ; $68E2: $B1
    ld b, e                                       ; $68E3: $43
    ld c, a                                       ; $68E4: $4F
    ld l, c                                       ; $68E5: $69
    ld b, d                                       ; $68E6: $42
    ld b, h                                       ; $68E7: $44
    ld h, h                                       ; $68E8: $64
    add hl, sp                                    ; $68E9: $39
    ld b, h                                       ; $68EA: $44
    ld h, [hl]                                    ; $68EB: $66
    ret nz                                        ; $68EC: $C0

    ld e, h                                       ; $68ED: $5C
    ld hl, $0005                                  ; $68EE: $21 $05 $00
    ld l, e                                       ; $68F1: $6B
    ld c, d                                       ; $68F2: $4A

jr_023_68F3:
    ld c, $09                                     ; $68F3: $0E $09
    jp nz, $00D0                                  ; $68F5: $C2 $D0 $00

jr_023_68F8:
    inc hl                                        ; $68F8: $23
    ld e, e                                       ; $68F9: $5B
    ld l, c                                       ; $68FA: $69
    ld [hl+], a                                   ; $68FB: $22

jr_023_68FC:
    inc b                                         ; $68FC: $04
    ld b, b                                       ; $68FD: $40
    dec b                                         ; $68FE: $05
    inc bc                                        ; $68FF: $03
    db $ED                                        ; $6900: $ED
    ld h, e                                       ; $6901: $63
    ld [bc], a                                    ; $6902: $02
    inc b                                         ; $6903: $04
    ld d, d                                       ; $6904: $52
    ret nc                                        ; $6905: $D0

    nop                                           ; $6906: $00
    rrca                                          ; $6907: $0F
    db $FC                                        ; $6908: $FC
    ld d, [hl]                                    ; $6909: $56
    inc hl                                        ; $690A: $23
    and b                                         ; $690B: $A0
    ld l, c                                       ; $690C: $69
    dec b                                         ; $690D: $05
    inc b                                         ; $690E: $04
    db $ED                                        ; $690F: $ED
    ld h, e                                       ; $6910: $63

jr_023_6911:
    ld c, $09                                     ; $6911: $0E $09
    jp nz, $27D0                                  ; $6913: $C2 $D0 $27

jr_023_6916:
    ld c, $FA                                     ; $6916: $0E $FA
    ld d, e                                       ; $6918: $53
    inc hl                                        ; $6919: $23
    xor b                                         ; $691A: $A8
    ld l, c                                       ; $691B: $69
    dec b                                         ; $691C: $05
    dec b                                         ; $691D: $05
    db $ED                                        ; $691E: $ED
    ld h, e                                       ; $691F: $63
    ld [bc], a                                    ; $6920: $02
    ld b, $7A                                     ; $6921: $06 $7A
    ret nc                                        ; $6923: $D0

    ld d, e                                       ; $6924: $53
    inc hl                                        ; $6925: $23

jr_023_6926:
    add d                                         ; $6926: $82
    ld l, c                                       ; $6927: $69
    inc hl                                        ; $6928: $23
    or b                                          ; $6929: $B0
    ld l, c                                       ; $692A: $69

jr_023_692B:
    ld l, e                                       ; $692B: $6B
    daa                                           ; $692C: $27
    ld a, [bc]                                    ; $692D: $0A
    ret nc                                        ; $692E: $D0

    ld [hl], c                                    ; $692F: $71
    nop                                           ; $6930: $00
    add b                                         ; $6931: $80
    nop                                           ; $6932: $00
    ld l, e                                       ; $6933: $6B
    inc l                                         ; $6934: $2C
    ld a, [bc]                                    ; $6935: $0A
    or b                                          ; $6936: $B0
    ld c, b                                       ; $6937: $48
    ld [hl], b                                    ; $6938: $70
    add d                                         ; $6939: $82
    nop                                           ; $693A: $00
    ld l, e                                       ; $693B: $6B
    ld [hl+], a                                   ; $693C: $22

jr_023_693D:
    ld a, [bc]                                    ; $693D: $0A
    ldh a, [$4E]                                  ; $693E: $F0 $4E
    jr nc, @-$79                                  ; $6940: $30 $85

    nop                                           ; $6942: $00
    dec bc                                        ; $6943: $0B
    inc bc                                        ; $6944: $03
    dec bc                                        ; $6945: $0B
    inc b                                         ; $6946: $04
    dec bc                                        ; $6947: $0B
    dec b                                         ; $6948: $05
    add h                                         ; $6949: $84
    ld c, $06                                     ; $694A: $0E $06
    rra                                           ; $694C: $1F
    inc hl                                        ; $694D: $23
    sub h                                         ; $694E: $94
    ld b, b                                       ; $694F: $40
    jr @+$0D                                      ; $6950: $18 $0B

    nop                                           ; $6952: $00
    xor c                                         ; $6953: $A9
    dec d                                         ; $6954: $15
    nop                                           ; $6955: $00
    xor [hl]                                      ; $6956: $AE

jr_023_6957:
    and l                                         ; $6957: $A5
    and c                                         ; $6958: $A1
    db $FD                                        ; $6959: $FD
    ld b, d                                       ; $695A: $42
    dec d                                         ; $695B: $15
    jr nz, jr_023_6911                            ; $695C: $20 $B3

    ld c, a                                       ; $695E: $4F
    jr nc, jr_023_6961                            ; $695F: $30 $00

jr_023_6961:
    ld d, $20                                     ; $6961: $16 $20
    db $DD                                        ; $6963: $DD
    ld c, a                                       ; $6964: $4F
    add b                                         ; $6965: $80
    rst $38                                       ; $6966: $FF
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    inc d                                         ; $6969: $14
    jr nz, jr_023_692B                            ; $696A: $20 $BF

    ld d, b                                       ; $696C: $50
    ld h, d                                       ; $696D: $62
    ld bc, $2015                                  ; $696E: $01 $15 $20
    db $DD                                        ; $6971: $DD
    ld c, a                                       ; $6972: $4F
    jr nz, jr_023_6995                            ; $6973: $20 $20

    or e                                          ; $6975: $B3
    ld c, a                                       ; $6976: $4F
    db $10                                        ; $6977: $10
    jr nz, jr_023_6957                            ; $6978: $20 $DD

    ld c, a                                       ; $697A: $4F
    db $10                                        ; $697B: $10
    jr nz, jr_023_693D                            ; $697C: $20 $BF

    ld d, b                                       ; $697E: $50
    nop                                           ; $697F: $00
    nop                                           ; $6980: $00
    ld b, d                                       ; $6981: $42
    dec d                                         ; $6982: $15
    ld c, $ED                                     ; $6983: $0E $ED
    ld h, b                                       ; $6985: $60
    add b                                         ; $6986: $80
    ld c, $7F                                     ; $6987: $0E $7F
    ld h, b                                       ; $6989: $60
    jr nz, jr_023_699A                            ; $698A: $20 $0E

    db $ED                                        ; $698C: $ED
    ld h, b                                       ; $698D: $60
    nop                                           ; $698E: $00
    nop                                           ; $698F: $00
    ld e, e                                       ; $6990: $5B
    inc hl                                        ; $6991: $23
    rlca                                          ; $6992: $07
    ld l, d                                       ; $6993: $6A
    ld h, d                                       ; $6994: $62

jr_023_6995:
    ld bc, $0007                                  ; $6995: $01 $07 $00
    add c                                         ; $6998: $81
    ld e, l                                       ; $6999: $5D

jr_023_699A:
    add hl, bc                                    ; $699A: $09
    nop                                           ; $699B: $00
    jr nz, @-$3F                                  ; $699C: $20 $BF

    ld d, b                                       ; $699E: $50
    ld b, d                                       ; $699F: $42
    ld e, e                                       ; $69A0: $5B
    inc hl                                        ; $69A1: $23
    ld sp, hl                                     ; $69A2: $F9
    ld l, c                                       ; $69A3: $69
    ld b, l                                       ; $69A4: $45
    rrca                                          ; $69A5: $0F
    db $FC                                        ; $69A6: $FC
    ld d, [hl]                                    ; $69A7: $56
    ld e, e                                       ; $69A8: $5B
    inc hl                                        ; $69A9: $23
    cp b                                          ; $69AA: $B8
    ld l, c                                       ; $69AB: $69
    ld b, l                                       ; $69AC: $45
    ld c, $35                                     ; $69AD: $0E $35
    ld d, l                                       ; $69AF: $55
    ld e, e                                       ; $69B0: $5B
    inc hl                                        ; $69B1: $23
    ret                                           ; $69B2: $C9


    ld l, c                                       ; $69B3: $69
    ld b, l                                       ; $69B4: $45
    ld c, $29                                     ; $69B5: $0E $29
    ld h, c                                       ; $69B7: $61
    sbc e                                         ; $69B8: $9B
    ld c, b                                       ; $69B9: $48
    ld b, [hl]                                    ; $69BA: $46
    sbc a                                         ; $69BB: $9F
    ld l, $2E                                     ; $69BC: $2E $2E
    ld l, $2E                                     ; $69BE: $2E $2E
    ld l, $2E                                     ; $69C0: $2E $2E
    ld l, $2E                                     ; $69C2: $2E $2E
    ld l, $FE                                     ; $69C4: $2E $FE
    db $FD                                        ; $69C6: $FD
    sbc d                                         ; $69C7: $9A
    ld [de], a                                    ; $69C8: $12
    sbc e                                         ; $69C9: $9B
    ld hl, sp+$4A                                 ; $69CA: $F8 $4A
    sbc a                                         ; $69CC: $9F
    ld e, c                                       ; $69CD: $59
    ld l, a                                       ; $69CE: $6F
    ld [hl], l                                    ; $69CF: $75
    jr nz, @+$6F                                  ; $69D0: $20 $6D

    ld [hl], l                                    ; $69D2: $75
    ld [hl], e                                    ; $69D3: $73
    ld [hl], h                                    ; $69D4: $74
    jr nz, jr_023_6A3E                            ; $69D5: $20 $67

    ld l, a                                       ; $69D7: $6F
    jr nz, jr_023_6A4E                            ; $69D8: $20 $74

    ld l, a                                       ; $69DA: $6F
    rst $38                                       ; $69DB: $FF
    ld [hl], h                                    ; $69DC: $74
    ld l, b                                       ; $69DD: $68
    ld h, l                                       ; $69DE: $65
    jr nz, jr_023_6A24                            ; $69DF: $20 $43

    ld l, a                                       ; $69E1: $6F
    ld [hl], d                                    ; $69E2: $72
    ld h, l                                       ; $69E3: $65
    cp $45                                        ; $69E4: $FE $45
    ld l, [hl]                                    ; $69E6: $6E
    ld [hl], h                                    ; $69E7: $74
    ld [hl], d                                    ; $69E8: $72
    ld h, c                                       ; $69E9: $61
    ld l, [hl]                                    ; $69EA: $6E
    ld h, e                                       ; $69EB: $63
    ld h, l                                       ; $69EC: $65
    ld l, $FE                                     ; $69ED: $2E $FE
    ld c, b                                       ; $69EF: $48
    ld [hl], l                                    ; $69F0: $75
    ld [hl], d                                    ; $69F1: $72
    ld [hl], d                                    ; $69F2: $72
    ld a, c                                       ; $69F3: $79
    ld hl, $FDFE                                  ; $69F4: $21 $FE $FD
    sbc d                                         ; $69F7: $9A
    ld [de], a                                    ; $69F8: $12
    sbc e                                         ; $69F9: $9B
    adc b                                         ; $69FA: $88
    ld h, l                                       ; $69FB: $65

jr_023_69FC:
    sbc a                                         ; $69FC: $9F
    ld e, d                                       ; $69FD: $5A
    ld a, d                                       ; $69FE: $7A
    ld a, d                                       ; $69FF: $7A
    ld l, $2E                                     ; $6A00: $2E $2E
    ld l, $FE                                     ; $6A02: $2E $FE
    db $FD                                        ; $6A04: $FD
    sbc d                                         ; $6A05: $9A
    ld [de], a                                    ; $6A06: $12
    sbc e                                         ; $6A07: $9B
    ld hl, sp+$4A                                 ; $6A08: $F8 $4A
    sbc a                                         ; $6A0A: $9F
    ld d, a                                       ; $6A0B: $57
    ld h, l                                       ; $6A0C: $65
    ld l, h                                       ; $6A0D: $6C
    ld h, e                                       ; $6A0E: $63
    ld l, a                                       ; $6A0F: $6F
    ld l, l                                       ; $6A10: $6D
    ld h, l                                       ; $6A11: $65
    jr nz, jr_023_6A76                            ; $6A12: $20 $62

    ld h, c                                       ; $6A14: $61
    ld h, e                                       ; $6A15: $63
    ld l, e                                       ; $6A16: $6B
    inc l                                         ; $6A17: $2C
    rst $38                                       ; $6A18: $FF
    ld d, h                                       ; $6A19: $54
    ld l, a                                       ; $6A1A: $6F
    ld l, [hl]                                    ; $6A1B: $6E
    ld a, c                                       ; $6A1C: $79
    ld l, $FE                                     ; $6A1D: $2E $FE
    db $FD                                        ; $6A1F: $FD
    sbc d                                         ; $6A20: $9A
    ld b, b                                       ; $6A21: $40
    ld b, b                                       ; $6A22: $40
    sbc e                                         ; $6A23: $9B

jr_023_6A24:
    ld a, b                                       ; $6A24: $78
    ld [hl], b                                    ; $6A25: $70
    sbc a                                         ; $6A26: $9F
    ld d, a                                       ; $6A27: $57
    ld l, b                                       ; $6A28: $68
    ld a, c                                       ; $6A29: $79
    jr nz, jr_023_6A8D                            ; $6A2A: $20 $61

    ld [hl], d                                    ; $6A2C: $72
    ld h, l                                       ; $6A2D: $65
    ld l, [hl]                                    ; $6A2E: $6E
    daa                                           ; $6A2F: $27
    ld [hl], h                                    ; $6A30: $74
    jr nz, jr_023_6AAC                            ; $6A31: $20 $79

    ld l, a                                       ; $6A33: $6F
    ld [hl], l                                    ; $6A34: $75
    rst $38                                       ; $6A35: $FF
    ld h, c                                       ; $6A36: $61
    ld [hl], h                                    ; $6A37: $74
    jr nz, jr_023_6AA2                            ; $6A38: $20 $68

    ld l, a                                       ; $6A3A: $6F
    ld l, l                                       ; $6A3B: $6D
    ld h, l                                       ; $6A3C: $65
    inc l                                         ; $6A3D: $2C

jr_023_6A3E:
    jr nz, jr_023_6A87                            ; $6A3E: $20 $47

    ld l, c                                       ; $6A40: $69
    ld h, c                                       ; $6A41: $61
    ccf                                           ; $6A42: $3F
    cp $FD                                        ; $6A43: $FE $FD
    sbc e                                         ; $6A45: $9B
    ld hl, sp+$4A                                 ; $6A46: $F8 $4A
    sbc a                                         ; $6A48: $9F
    ld c, c                                       ; $6A49: $49
    jr nz, jr_023_6AB4                            ; $6A4A: $20 $68

    ld h, c                                       ; $6A4C: $61
    ld h, h                                       ; $6A4D: $64

jr_023_6A4E:
    jr nz, jr_023_6AC4                            ; $6A4E: $20 $74

    ld l, a                                       ; $6A50: $6F
    jr nz, jr_023_6ABF                            ; $6A51: $20 $6C

    ld h, l                                       ; $6A53: $65
    ld h, c                                       ; $6A54: $61
    halt                                          ; $6A55: $76
    ld h, l                                       ; $6A56: $65
    ld l, $FE                                     ; $6A57: $2E $FE
    db $FD                                        ; $6A59: $FD
    ld b, b                                       ; $6A5A: $40
    jr nz, jr_023_69FC                            ; $6A5B: $20 $9F

    ld c, c                                       ; $6A5D: $49
    ld [hl], h                                    ; $6A5E: $74
    daa                                           ; $6A5F: $27
    ld [hl], e                                    ; $6A60: $73
    jr nz, jr_023_6AD1                            ; $6A61: $20 $6E

    ld l, a                                       ; $6A63: $6F
    jr nz, jr_023_6AD3                            ; $6A64: $20 $6D

    ld h, c                                       ; $6A66: $61
    ld [hl], h                                    ; $6A67: $74
    ld [hl], h                                    ; $6A68: $74
    ld h, l                                       ; $6A69: $65
    ld [hl], d                                    ; $6A6A: $72
    ld l, $FE                                     ; $6A6B: $2E $FE
    ld c, c                                       ; $6A6D: $49
    jr nz, jr_023_6AE3                            ; $6A6E: $20 $73

    ld h, l                                       ; $6A70: $65
    ld h, l                                       ; $6A71: $65
    jr nz, jr_023_6AED                            ; $6A72: $20 $79

    ld l, a                                       ; $6A74: $6F
    ld [hl], l                                    ; $6A75: $75

jr_023_6A76:
    jr nz, jr_023_6AE0                            ; $6A76: $20 $68

    ld h, c                                       ; $6A78: $61
    halt                                          ; $6A79: $76
    ld h, l                                       ; $6A7A: $65
    rst $38                                       ; $6A7B: $FF
    ld h, c                                       ; $6A7C: $61
    ld h, e                                       ; $6A7D: $63
    ld [hl], c                                    ; $6A7E: $71
    ld [hl], l                                    ; $6A7F: $75
    ld l, c                                       ; $6A80: $69
    ld [hl], d                                    ; $6A81: $72
    ld h, l                                       ; $6A82: $65
    ld h, h                                       ; $6A83: $64
    jr nz, jr_023_6AFA                            ; $6A84: $20 $74

    ld l, b                                       ; $6A86: $68

jr_023_6A87:
    ld h, l                                       ; $6A87: $65
    cp $66                                        ; $6A88: $FE $66
    ld l, a                                       ; $6A8A: $6F
    ld [hl], l                                    ; $6A8B: $75
    ld [hl], d                                    ; $6A8C: $72

jr_023_6A8D:
    ld [hl], h                                    ; $6A8D: $74
    ld l, b                                       ; $6A8E: $68
    jr nz, jr_023_6AF2                            ; $6A8F: $20 $61

    ld l, [hl]                                    ; $6A91: $6E
    ld h, h                                       ; $6A92: $64
    rst $38                                       ; $6A93: $FF
    ld h, [hl]                                    ; $6A94: $66
    ld l, c                                       ; $6A95: $69
    ld l, [hl]                                    ; $6A96: $6E
    ld h, c                                       ; $6A97: $61
    ld l, h                                       ; $6A98: $6C
    jr nz, jr_023_6ADE                            ; $6A99: $20 $43

    ld l, a                                       ; $6A9B: $6F
    ld [hl], d                                    ; $6A9C: $72
    ld h, l                                       ; $6A9D: $65
    cp $53                                        ; $6A9E: $FE $53
    ld [hl], h                                    ; $6AA0: $74
    ld l, a                                       ; $6AA1: $6F

jr_023_6AA2:
    ld l, [hl]                                    ; $6AA2: $6E
    ld h, l                                       ; $6AA3: $65
    ld l, $20                                     ; $6AA4: $2E $20
    ld e, c                                       ; $6AA6: $59
    ld l, a                                       ; $6AA7: $6F
    ld [hl], l                                    ; $6AA8: $75
    jr nz, jr_023_6B18                            ; $6AA9: $20 $6D

    ld h, c                                       ; $6AAB: $61

jr_023_6AAC:
    ld a, c                                       ; $6AAC: $79
    rst $38                                       ; $6AAD: $FF
    ld [hl], d                                    ; $6AAE: $72
    ld h, l                                       ; $6AAF: $65
    ld [hl], h                                    ; $6AB0: $74
    ld [hl], l                                    ; $6AB1: $75
    ld [hl], d                                    ; $6AB2: $72
    ld l, [hl]                                    ; $6AB3: $6E

jr_023_6AB4:
    jr nz, @+$6A                                  ; $6AB4: $20 $68

    ld l, a                                       ; $6AB6: $6F
    ld l, l                                       ; $6AB7: $6D
    ld h, l                                       ; $6AB8: $65
    cp $6E                                        ; $6AB9: $FE $6E
    ld l, a                                       ; $6ABB: $6F
    ld [hl], a                                    ; $6ABC: $77
    jr nz, jr_023_6B20                            ; $6ABD: $20 $61

jr_023_6ABF:
    ld l, [hl]                                    ; $6ABF: $6E
    ld a, c                                       ; $6AC0: $79
    jr nz, @+$76                                  ; $6AC1: $20 $74

    ld l, c                                       ; $6AC3: $69

jr_023_6AC4:
    ld l, l                                       ; $6AC4: $6D
    ld h, l                                       ; $6AC5: $65
    rst $38                                       ; $6AC6: $FF
    ld a, c                                       ; $6AC7: $79
    ld l, a                                       ; $6AC8: $6F
    ld [hl], l                                    ; $6AC9: $75
    jr nz, @+$79                                  ; $6ACA: $20 $77

    ld l, c                                       ; $6ACC: $69
    ld [hl], e                                    ; $6ACD: $73
    ld l, b                                       ; $6ACE: $68
    ld l, $FE                                     ; $6ACF: $2E $FE

jr_023_6AD1:
    ld c, d                                       ; $6AD1: $4A
    ld [hl], l                                    ; $6AD2: $75

jr_023_6AD3:
    ld [hl], e                                    ; $6AD3: $73
    ld [hl], h                                    ; $6AD4: $74
    jr nz, jr_023_6B3E                            ; $6AD5: $20 $67

    ld l, a                                       ; $6AD7: $6F
    jr nz, jr_023_6B4E                            ; $6AD8: $20 $74

    ld l, a                                       ; $6ADA: $6F
    jr nz, @+$76                                  ; $6ADB: $20 $74

    ld l, b                                       ; $6ADD: $68

jr_023_6ADE:
    ld h, l                                       ; $6ADE: $65
    rst $38                                       ; $6ADF: $FF

jr_023_6AE0:
    ld b, e                                       ; $6AE0: $43
    ld l, a                                       ; $6AE1: $6F
    ld [hl], d                                    ; $6AE2: $72

jr_023_6AE3:
    ld h, l                                       ; $6AE3: $65
    jr nz, jr_023_6B2B                            ; $6AE4: $20 $45

    ld l, [hl]                                    ; $6AE6: $6E
    ld [hl], h                                    ; $6AE7: $74
    ld [hl], d                                    ; $6AE8: $72
    ld h, c                                       ; $6AE9: $61
    ld l, [hl]                                    ; $6AEA: $6E
    ld h, e                                       ; $6AEB: $63
    ld h, l                                       ; $6AEC: $65

jr_023_6AED:
    cp $57                                        ; $6AED: $FE $57
    ld h, l                                       ; $6AEF: $65
    ld [hl], e                                    ; $6AF0: $73
    ld [hl], h                                    ; $6AF1: $74

jr_023_6AF2:
    jr nz, @+$71                                  ; $6AF2: $20 $6F

    ld h, [hl]                                    ; $6AF4: $66
    jr nz, jr_023_6B64                            ; $6AF5: $20 $6D

    ld a, c                                       ; $6AF7: $79
    rst $38                                       ; $6AF8: $FF
    ld l, b                                       ; $6AF9: $68

jr_023_6AFA:
    ld l, a                                       ; $6AFA: $6F
    ld l, l                                       ; $6AFB: $6D
    ld h, l                                       ; $6AFC: $65
    ld l, $FE                                     ; $6AFD: $2E $FE
    db $FD                                        ; $6AFF: $FD
    sbc d                                         ; $6B00: $9A
    ld b, b                                       ; $6B01: $40
    ld h, b                                       ; $6B02: $60
    sbc e                                         ; $6B03: $9B
    ld a, b                                       ; $6B04: $78
    ld [hl], b                                    ; $6B05: $70
    sbc a                                         ; $6B06: $9F
    ld c, c                                       ; $6B07: $49
    ld [hl], e                                    ; $6B08: $73
    jr nz, jr_023_6B7E                            ; $6B09: $20 $73

    ld l, a                                       ; $6B0B: $6F
    ld l, l                                       ; $6B0C: $6D
    ld h, l                                       ; $6B0D: $65
    ld [hl], h                                    ; $6B0E: $74
    ld l, b                                       ; $6B0F: $68
    ld l, c                                       ; $6B10: $69
    ld l, [hl]                                    ; $6B11: $6E
    ld h, a                                       ; $6B12: $67
    rst $38                                       ; $6B13: $FF
    ld [hl], a                                    ; $6B14: $77
    ld [hl], d                                    ; $6B15: $72
    ld l, a                                       ; $6B16: $6F
    ld l, [hl]                                    ; $6B17: $6E

jr_023_6B18:
    ld h, a                                       ; $6B18: $67
    ccf                                           ; $6B19: $3F
    cp $FD                                        ; $6B1A: $FE $FD
    sbc e                                         ; $6B1C: $9B
    ld hl, sp+$4A                                 ; $6B1D: $F8 $4A
    sbc a                                         ; $6B1F: $9F

jr_023_6B20:
    ld c, c                                       ; $6B20: $49
    daa                                           ; $6B21: $27
    ld l, l                                       ; $6B22: $6D
    jr nz, jr_023_6B98                            ; $6B23: $20 $73

    ld l, a                                       ; $6B25: $6F
    ld [hl], d                                    ; $6B26: $72
    ld [hl], d                                    ; $6B27: $72
    ld a, c                                       ; $6B28: $79
    ld l, $2E                                     ; $6B29: $2E $2E

jr_023_6B2B:
    ld l, $FE                                     ; $6B2B: $2E $FE
    ld c, c                                       ; $6B2D: $49
    daa                                           ; $6B2E: $27
    ld l, l                                       ; $6B2F: $6D
    jr nz, jr_023_6B99                            ; $6B30: $20 $67

    ld l, a                                       ; $6B32: $6F
    ld l, c                                       ; $6B33: $69
    ld l, [hl]                                    ; $6B34: $6E
    ld h, a                                       ; $6B35: $67
    jr nz, jr_023_6BAC                            ; $6B36: $20 $74

    ld l, a                                       ; $6B38: $6F
    rst $38                                       ; $6B39: $FF
    ld h, d                                       ; $6B3A: $62
    ld h, l                                       ; $6B3B: $65
    jr nz, jr_023_6BA4                            ; $6B3C: $20 $66

jr_023_6B3E:
    ld [hl], d                                    ; $6B3E: $72
    ld h, c                                       ; $6B3F: $61
    ld l, [hl]                                    ; $6B40: $6E
    ld l, e                                       ; $6B41: $6B
    jr nz, jr_023_6BBB                            ; $6B42: $20 $77

    ld l, c                                       ; $6B44: $69
    ld [hl], h                                    ; $6B45: $74
    ld l, b                                       ; $6B46: $68
    cp $79                                        ; $6B47: $FE $79
    ld l, a                                       ; $6B49: $6F
    ld [hl], l                                    ; $6B4A: $75
    ld l, $FE                                     ; $6B4B: $2E $FE
    ld e, c                                       ; $6B4D: $59

jr_023_6B4E:
    ld l, a                                       ; $6B4E: $6F
    ld [hl], l                                    ; $6B4F: $75
    jr nz, jr_023_6BB3                            ; $6B50: $20 $61

    ld [hl], d                                    ; $6B52: $72
    ld h, l                                       ; $6B53: $65
    jr nz, jr_023_6BC4                            ; $6B54: $20 $6E

    ld l, a                                       ; $6B56: $6F
    ld [hl], h                                    ; $6B57: $74
    rst $38                                       ; $6B58: $FF
    ld [hl], h                                    ; $6B59: $74
    ld l, b                                       ; $6B5A: $68
    ld h, l                                       ; $6B5B: $65
    jr nz, @+$49                                  ; $6B5C: $20 $47

    ld [hl], d                                    ; $6B5E: $72
    ld h, l                                       ; $6B5F: $65
    ld h, c                                       ; $6B60: $61
    ld [hl], h                                    ; $6B61: $74
    jr nz, jr_023_6BB1                            ; $6B62: $20 $4D

jr_023_6B64:
    ld h, c                                       ; $6B64: $61

Call_023_6B65:
    ld h, a                                       ; $6B65: $67
    ld [hl], l                                    ; $6B66: $75
    ld [hl], e                                    ; $6B67: $73
    ld l, $FE                                     ; $6B68: $2E $FE
    ld e, c                                       ; $6B6A: $59
    ld l, a                                       ; $6B6B: $6F
    ld [hl], l                                    ; $6B6C: $75
    jr nz, @+$63                                  ; $6B6D: $20 $61

    ld [hl], d                                    ; $6B6F: $72
    ld h, l                                       ; $6B70: $65
    jr nz, jr_023_6BE1                            ; $6B71: $20 $6E

    ld l, a                                       ; $6B73: $6F
    ld [hl], h                                    ; $6B74: $74
    rst $38                                       ; $6B75: $FF
    ld c, e                                       ; $6B76: $4B
    ld a, c                                       ; $6B77: $79
    ld [hl], d                                    ; $6B78: $72
    ld l, a                                       ; $6B79: $6F
    ld [hl], e                                    ; $6B7A: $73
    ld l, $FE                                     ; $6B7B: $2E $FE
    db $FD                                        ; $6B7D: $FD

jr_023_6B7E:
    sbc e                                         ; $6B7E: $9B
    ld a, b                                       ; $6B7F: $78
    ld [hl], b                                    ; $6B80: $70
    sbc a                                         ; $6B81: $9F
    ld d, a                                       ; $6B82: $57
    ld l, b                                       ; $6B83: $68
    ld h, c                                       ; $6B84: $61
    ld [hl], h                                    ; $6B85: $74
    ccf                                           ; $6B86: $3F
    cp $FD                                        ; $6B87: $FE $FD
    sbc e                                         ; $6B89: $9B
    ld hl, sp+$4A                                 ; $6B8A: $F8 $4A
    sbc a                                         ; $6B8C: $9F
    ld d, h                                       ; $6B8D: $54
    ld l, a                                       ; $6B8E: $6F
    ld l, a                                       ; $6B8F: $6F
    jr nz, jr_023_6BFF                            ; $6B90: $20 $6D

    ld [hl], l                                    ; $6B92: $75
    ld h, e                                       ; $6B93: $63
    ld l, b                                       ; $6B94: $68
    jr nz, @+$6B                                  ; $6B95: $20 $69

    ld [hl], e                                    ; $6B97: $73

jr_023_6B98:
    rst $38                                       ; $6B98: $FF

jr_023_6B99:
    ld h, a                                       ; $6B99: $67
    ld l, a                                       ; $6B9A: $6F
    ld l, c                                       ; $6B9B: $69
    ld l, [hl]                                    ; $6B9C: $6E
    ld h, a                                       ; $6B9D: $67
    jr nz, jr_023_6C17                            ; $6B9E: $20 $77

    ld [hl], d                                    ; $6BA0: $72
    ld l, a                                       ; $6BA1: $6F
    ld l, [hl]                                    ; $6BA2: $6E
    ld h, a                                       ; $6BA3: $67

jr_023_6BA4:
    ld l, $FE                                     ; $6BA4: $2E $FE
    ld d, h                                       ; $6BA6: $54
    ld l, b                                       ; $6BA7: $68
    ld h, l                                       ; $6BA8: $65
    jr nz, jr_023_6C0D                            ; $6BA9: $20 $62

    ld h, c                                       ; $6BAB: $61

jr_023_6BAC:
    ld l, h                                       ; $6BAC: $6C
    ld h, c                                       ; $6BAD: $61
    ld l, [hl]                                    ; $6BAE: $6E
    ld h, e                                       ; $6BAF: $63
    ld h, l                                       ; $6BB0: $65

jr_023_6BB1:
    rst $38                                       ; $6BB1: $FF
    ld l, a                                       ; $6BB2: $6F

jr_023_6BB3:
    ld h, [hl]                                    ; $6BB3: $66
    jr nz, @+$76                                  ; $6BB4: $20 $74

    ld l, b                                       ; $6BB6: $68
    ld h, l                                       ; $6BB7: $65
    jr nz, jr_023_6C31                            ; $6BB8: $20 $77

    ld l, a                                       ; $6BBA: $6F

jr_023_6BBB:
    ld [hl], d                                    ; $6BBB: $72
    ld l, h                                       ; $6BBC: $6C
    ld h, h                                       ; $6BBD: $64
    jr nz, jr_023_6C29                            ; $6BBE: $20 $69

    ld [hl], e                                    ; $6BC0: $73
    cp $66                                        ; $6BC1: $FE $66
    ld h, c                                       ; $6BC3: $61

jr_023_6BC4:
    ld l, h                                       ; $6BC4: $6C
    ld l, h                                       ; $6BC5: $6C
    ld l, c                                       ; $6BC6: $69
    ld l, [hl]                                    ; $6BC7: $6E
    ld h, a                                       ; $6BC8: $67
    jr nz, jr_023_6C2C                            ; $6BC9: $20 $61

    ld [hl], b                                    ; $6BCB: $70
    ld h, c                                       ; $6BCC: $61
    ld [hl], d                                    ; $6BCD: $72
    ld [hl], h                                    ; $6BCE: $74
    ld l, $FE                                     ; $6BCF: $2E $FE
    ld b, c                                       ; $6BD1: $41
    ld h, [hl]                                    ; $6BD2: $66
    ld [hl], h                                    ; $6BD3: $74
    ld h, l                                       ; $6BD4: $65
    ld [hl], d                                    ; $6BD5: $72
    jr nz, jr_023_6C4C                            ; $6BD6: $20 $74

    ld l, b                                       ; $6BD8: $68
    ld l, c                                       ; $6BD9: $69
    ld l, [hl]                                    ; $6BDA: $6E
    ld l, e                                       ; $6BDB: $6B
    ld l, c                                       ; $6BDC: $69
    ld l, [hl]                                    ; $6BDD: $6E
    ld h, a                                       ; $6BDE: $67
    rst $38                                       ; $6BDF: $FF
    ld l, c                                       ; $6BE0: $69

jr_023_6BE1:
    ld [hl], h                                    ; $6BE1: $74
    jr nz, jr_023_6C53                            ; $6BE2: $20 $6F

    halt                                          ; $6BE4: $76
    ld h, l                                       ; $6BE5: $65
    ld [hl], d                                    ; $6BE6: $72
    inc l                                         ; $6BE7: $2C
    jr nz, jr_023_6C33                            ; $6BE8: $20 $49

    cp $62                                        ; $6BEA: $FE $62
    ld h, l                                       ; $6BEC: $65
    ld l, h                                       ; $6BED: $6C
    ld l, c                                       ; $6BEE: $69
    ld h, l                                       ; $6BEF: $65
    halt                                          ; $6BF0: $76
    ld h, l                                       ; $6BF1: $65
    jr nz, jr_023_6C5D                            ; $6BF2: $20 $69

    ld [hl], h                                    ; $6BF4: $74
    jr nz, jr_023_6C60                            ; $6BF5: $20 $69

    ld [hl], e                                    ; $6BF7: $73
    rst $38                                       ; $6BF8: $FF
    ld h, d                                       ; $6BF9: $62
    ld h, l                                       ; $6BFA: $65
    ld [hl], h                                    ; $6BFB: $74
    ld [hl], h                                    ; $6BFC: $74
    ld h, l                                       ; $6BFD: $65
    ld [hl], d                                    ; $6BFE: $72

jr_023_6BFF:
    jr nz, @+$68                                  ; $6BFF: $20 $66

    ld l, a                                       ; $6C01: $6F
    ld [hl], d                                    ; $6C02: $72
    jr nz, jr_023_6C7A                            ; $6C03: $20 $75

    ld [hl], e                                    ; $6C05: $73
    cp $61                                        ; $6C06: $FE $61
    ld l, h                                       ; $6C08: $6C
    ld l, h                                       ; $6C09: $6C
    jr nz, jr_023_6C75                            ; $6C0A: $20 $69

    ld h, [hl]                                    ; $6C0C: $66

jr_023_6C0D:
    jr nz, jr_023_6C88                            ; $6C0D: $20 $79

    ld l, a                                       ; $6C0F: $6F
    ld [hl], l                                    ; $6C10: $75
    rst $38                                       ; $6C11: $FF
    ld [hl], d                                    ; $6C12: $72
    ld h, l                                       ; $6C13: $65
    ld [hl], h                                    ; $6C14: $74
    ld [hl], l                                    ; $6C15: $75
    ld [hl], d                                    ; $6C16: $72

jr_023_6C17:
    ld l, [hl]                                    ; $6C17: $6E
    jr nz, jr_023_6C82                            ; $6C18: $20 $68

    ld l, a                                       ; $6C1A: $6F
    ld l, l                                       ; $6C1B: $6D
    ld h, l                                       ; $6C1C: $65
    cp $69                                        ; $6C1D: $FE $69
    ld l, l                                       ; $6C1F: $6D
    ld l, l                                       ; $6C20: $6D
    ld h, l                                       ; $6C21: $65
    ld h, h                                       ; $6C22: $64
    ld l, c                                       ; $6C23: $69
    ld h, c                                       ; $6C24: $61
    ld [hl], h                                    ; $6C25: $74
    ld h, l                                       ; $6C26: $65
    ld l, h                                       ; $6C27: $6C
    ld a, c                                       ; $6C28: $79

jr_023_6C29:
    ld l, $FE                                     ; $6C29: $2E $FE
    ld c, c                                       ; $6C2B: $49

jr_023_6C2C:
    daa                                           ; $6C2C: $27
    ld l, l                                       ; $6C2D: $6D
    jr nz, jr_023_6CA3                            ; $6C2E: $20 $73

    ld l, a                                       ; $6C30: $6F

jr_023_6C31:
    ld [hl], d                                    ; $6C31: $72
    ld [hl], d                                    ; $6C32: $72

jr_023_6C33:
    ld a, c                                       ; $6C33: $79
    jr nz, jr_023_6C9C                            ; $6C34: $20 $66

    ld l, a                                       ; $6C36: $6F
    ld [hl], d                                    ; $6C37: $72
    rst $38                                       ; $6C38: $FF
    ld h, [hl]                                    ; $6C39: $66
    ld l, a                                       ; $6C3A: $6F
    ld [hl], d                                    ; $6C3B: $72
    ld h, e                                       ; $6C3C: $63
    ld l, c                                       ; $6C3D: $69
    ld l, [hl]                                    ; $6C3E: $6E
    ld h, a                                       ; $6C3F: $67
    jr nz, jr_023_6CB6                            ; $6C40: $20 $74

    ld l, b                                       ; $6C42: $68
    ld l, c                                       ; $6C43: $69
    ld [hl], e                                    ; $6C44: $73
    cp $64                                        ; $6C45: $FE $64
    ld h, l                                       ; $6C47: $65
    ld l, h                                       ; $6C48: $6C
    ld [hl], l                                    ; $6C49: $75
    ld [hl], e                                    ; $6C4A: $73
    ld l, c                                       ; $6C4B: $69

jr_023_6C4C:
    ld l, a                                       ; $6C4C: $6F
    ld l, [hl]                                    ; $6C4D: $6E
    jr nz, jr_023_6CBF                            ; $6C4E: $20 $6F

    ld l, [hl]                                    ; $6C50: $6E
    rst $38                                       ; $6C51: $FF
    ld a, c                                       ; $6C52: $79

jr_023_6C53:
    ld l, a                                       ; $6C53: $6F
    ld [hl], l                                    ; $6C54: $75
    jr nz, jr_023_6CCB                            ; $6C55: $20 $74

    ld l, b                                       ; $6C57: $68
    ld h, c                                       ; $6C58: $61
    ld [hl], h                                    ; $6C59: $74
    jr nz, jr_023_6CD5                            ; $6C5A: $20 $79

    ld l, a                                       ; $6C5C: $6F

jr_023_6C5D:
    ld [hl], l                                    ; $6C5D: $75
    daa                                           ; $6C5E: $27
    ld [hl], d                                    ; $6C5F: $72

jr_023_6C60:
    ld h, l                                       ; $6C60: $65
    cp $73                                        ; $6C61: $FE $73
    ld l, a                                       ; $6C63: $6F
    ld l, l                                       ; $6C64: $6D
    ld h, l                                       ; $6C65: $65
    jr nz, jr_023_6CD8                            ; $6C66: $20 $70

    ld [hl], d                                    ; $6C68: $72
    ld l, a                                       ; $6C69: $6F
    ld [hl], b                                    ; $6C6A: $70
    ld l, b                                       ; $6C6B: $68
    ld h, l                                       ; $6C6C: $65
    ld [hl], h                                    ; $6C6D: $74
    ld l, c                                       ; $6C6E: $69
    ld h, e                                       ; $6C6F: $63
    rst $38                                       ; $6C70: $FF
    ld [hl], e                                    ; $6C71: $73
    ld h, c                                       ; $6C72: $61
    halt                                          ; $6C73: $76
    ld l, c                                       ; $6C74: $69

jr_023_6C75:
    ld l, a                                       ; $6C75: $6F
    ld [hl], d                                    ; $6C76: $72
    ld l, $FE                                     ; $6C77: $2E $FE
    ld c, c                                       ; $6C79: $49

jr_023_6C7A:
    ld [hl], h                                    ; $6C7A: $74
    daa                                           ; $6C7B: $27
    ld [hl], e                                    ; $6C7C: $73
    jr nz, jr_023_6CEC                            ; $6C7D: $20 $6D

    ld a, c                                       ; $6C7F: $79
    jr nz, jr_023_6CE8                            ; $6C80: $20 $66

jr_023_6C82:
    ld h, c                                       ; $6C82: $61
    ld [hl], l                                    ; $6C83: $75
    ld l, h                                       ; $6C84: $6C
    ld [hl], h                                    ; $6C85: $74
    ld l, $FE                                     ; $6C86: $2E $FE

jr_023_6C88:
    db $FD                                        ; $6C88: $FD
    sbc e                                         ; $6C89: $9B
    ld a, b                                       ; $6C8A: $78
    ld [hl], b                                    ; $6C8B: $70
    sbc a                                         ; $6C8C: $9F
    ld d, a                                       ; $6C8D: $57
    ld c, b                                       ; $6C8E: $48
    ld b, c                                       ; $6C8F: $41
    ld d, h                                       ; $6C90: $54
    ld hl, $203F                                  ; $6C91: $21 $3F $20
    jr nz, jr_023_6CD8                            ; $6C94: $20 $42

    ld [hl], l                                    ; $6C96: $75
    ld [hl], h                                    ; $6C97: $74
    ld l, $2E                                     ; $6C98: $2E $2E
    ld l, $FE                                     ; $6C9A: $2E $FE

jr_023_6C9C:
    ld d, h                                       ; $6C9C: $54
    ld l, b                                       ; $6C9D: $68
    ld h, c                                       ; $6C9E: $61
    ld [hl], h                                    ; $6C9F: $74
    jr nz, jr_023_6D05                            ; $6CA0: $20 $63

    ld h, c                                       ; $6CA2: $61

jr_023_6CA3:
    ld l, [hl]                                    ; $6CA3: $6E
    daa                                           ; $6CA4: $27
    ld [hl], h                                    ; $6CA5: $74
    jr nz, jr_023_6D0A                            ; $6CA6: $20 $62

    ld h, l                                       ; $6CA8: $65
    ld hl, $4DFE                                  ; $6CA9: $21 $FE $4D
    ld h, c                                       ; $6CAC: $61
    ld a, c                                       ; $6CAD: $79
    ld h, d                                       ; $6CAE: $62
    ld h, l                                       ; $6CAF: $65
    jr nz, jr_023_6CFB                            ; $6CB0: $20 $49

    daa                                           ; $6CB2: $27
    ld l, l                                       ; $6CB3: $6D
    jr nz, jr_023_6D24                            ; $6CB4: $20 $6E

jr_023_6CB6:
    ld l, a                                       ; $6CB6: $6F
    ld [hl], h                                    ; $6CB7: $74
    rst $38                                       ; $6CB8: $FF
    ld [hl], h                                    ; $6CB9: $74
    ld l, b                                       ; $6CBA: $68
    ld h, l                                       ; $6CBB: $65
    jr nz, jr_023_6D05                            ; $6CBC: $20 $47

    ld [hl], d                                    ; $6CBE: $72

jr_023_6CBF:
    ld h, l                                       ; $6CBF: $65
    ld h, c                                       ; $6CC0: $61
    ld [hl], h                                    ; $6CC1: $74
    jr nz, @+$4F                                  ; $6CC2: $20 $4D

    ld h, c                                       ; $6CC4: $61
    ld h, a                                       ; $6CC5: $67
    ld [hl], l                                    ; $6CC6: $75
    ld [hl], e                                    ; $6CC7: $73
    cp $62                                        ; $6CC8: $FE $62
    ld [hl], l                                    ; $6CCA: $75

jr_023_6CCB:
    ld [hl], h                                    ; $6CCB: $74
    jr nz, jr_023_6D45                            ; $6CCC: $20 $77

    ld l, b                                       ; $6CCE: $68
    ld h, c                                       ; $6CCF: $61
    ld [hl], h                                    ; $6CD0: $74
    jr nz, jr_023_6D34                            ; $6CD1: $20 $61

    ld h, d                                       ; $6CD3: $62
    ld l, a                                       ; $6CD4: $6F

jr_023_6CD5:
    ld [hl], l                                    ; $6CD5: $75
    ld [hl], h                                    ; $6CD6: $74
    rst $38                                       ; $6CD7: $FF

jr_023_6CD8:
    ld h, c                                       ; $6CD8: $61
    ld l, h                                       ; $6CD9: $6C
    ld l, h                                       ; $6CDA: $6C
    jr nz, jr_023_6D51                            ; $6CDB: $20 $74

    ld l, b                                       ; $6CDD: $68
    ld h, l                                       ; $6CDE: $65
    jr nz, jr_023_6D34                            ; $6CDF: $20 $53

    ld l, b                                       ; $6CE1: $68
    ld h, c                                       ; $6CE2: $61
    ld h, h                                       ; $6CE3: $64
    ld l, a                                       ; $6CE4: $6F
    ld [hl], a                                    ; $6CE5: $77
    cp $47                                        ; $6CE6: $FE $47

jr_023_6CE8:
    ld h, l                                       ; $6CE8: $65
    ld a, c                                       ; $6CE9: $79
    ld [hl], e                                    ; $6CEA: $73
    ld h, l                                       ; $6CEB: $65

jr_023_6CEC:
    ld [hl], d                                    ; $6CEC: $72
    ld [hl], e                                    ; $6CED: $73
    jr nz, jr_023_6D39                            ; $6CEE: $20 $49

    daa                                           ; $6CF0: $27
    halt                                          ; $6CF1: $76
    ld h, l                                       ; $6CF2: $65
    rst $38                                       ; $6CF3: $FF
    ld h, e                                       ; $6CF4: $63
    ld l, h                                       ; $6CF5: $6C
    ld l, a                                       ; $6CF6: $6F
    ld [hl], e                                    ; $6CF7: $73
    ld h, l                                       ; $6CF8: $65
    ld h, h                                       ; $6CF9: $64
    ccf                                           ; $6CFA: $3F

jr_023_6CFB:
    cp $48                                        ; $6CFB: $FE $48
    ld l, a                                       ; $6CFD: $6F
    ld [hl], a                                    ; $6CFE: $77
    jr nz, @+$65                                  ; $6CFF: $20 $63

    ld h, c                                       ; $6D01: $61
    ld l, [hl]                                    ; $6D02: $6E
    jr nz, jr_023_6D7E                            ; $6D03: $20 $79

jr_023_6D05:
    ld l, a                                       ; $6D05: $6F
    ld [hl], l                                    ; $6D06: $75
    rst $38                                       ; $6D07: $FF
    ld [hl], h                                    ; $6D08: $74
    ld [hl], d                                    ; $6D09: $72

jr_023_6D0A:
    ld h, l                                       ; $6D0A: $65
    ld h, c                                       ; $6D0B: $61
    ld [hl], h                                    ; $6D0C: $74
    jr nz, jr_023_6D7C                            ; $6D0D: $20 $6D

    ld h, l                                       ; $6D0F: $65
    jr nz, jr_023_6D86                            ; $6D10: $20 $74

    ld l, b                                       ; $6D12: $68
    ld l, c                                       ; $6D13: $69
    ld [hl], e                                    ; $6D14: $73
    cp $77                                        ; $6D15: $FE $77
    ld h, c                                       ; $6D17: $61
    ld a, c                                       ; $6D18: $79
    jr nz, jr_023_6D7C                            ; $6D19: $20 $61

    ld h, [hl]                                    ; $6D1B: $66
    ld [hl], h                                    ; $6D1C: $74
    ld h, l                                       ; $6D1D: $65
    ld [hl], d                                    ; $6D1E: $72
    jr nz, jr_023_6D82                            ; $6D1F: $20 $61

    ld l, h                                       ; $6D21: $6C
    ld l, h                                       ; $6D22: $6C
    rst $38                                       ; $6D23: $FF

jr_023_6D24:
    ld c, c                                       ; $6D24: $49
    daa                                           ; $6D25: $27
    halt                                          ; $6D26: $76
    ld h, l                                       ; $6D27: $65
    jr nz, jr_023_6D8E                            ; $6D28: $20 $64

    ld l, a                                       ; $6D2A: $6F
    ld l, [hl]                                    ; $6D2B: $6E
    ld h, l                                       ; $6D2C: $65
    ld hl, $FE3F                                  ; $6D2D: $21 $3F $FE
    db $FD                                        ; $6D30: $FD
    sbc e                                         ; $6D31: $9B
    ld hl, sp+$4A                                 ; $6D32: $F8 $4A

jr_023_6D34:
    sbc a                                         ; $6D34: $9F
    ld l, $2E                                     ; $6D35: $2E $2E
    ld l, $FE                                     ; $6D37: $2E $FE

jr_023_6D39:
    ld c, c                                       ; $6D39: $49
    daa                                           ; $6D3A: $27
    ld l, l                                       ; $6D3B: $6D
    jr nz, jr_023_6DB1                            ; $6D3C: $20 $73

    ld l, a                                       ; $6D3E: $6F
    jr nz, jr_023_6DB4                            ; $6D3F: $20 $73

    ld l, a                                       ; $6D41: $6F
    ld [hl], d                                    ; $6D42: $72
    ld [hl], d                                    ; $6D43: $72
    ld a, c                                       ; $6D44: $79

jr_023_6D45:
    inc l                                         ; $6D45: $2C
    rst $38                                       ; $6D46: $FF
    ld h, e                                       ; $6D47: $63
    ld l, b                                       ; $6D48: $68
    ld l, c                                       ; $6D49: $69
    ld l, h                                       ; $6D4A: $6C
    ld h, h                                       ; $6D4B: $64
    ld l, $FE                                     ; $6D4C: $2E $FE
    ld c, c                                       ; $6D4E: $49
    jr nz, jr_023_6DB5                            ; $6D4F: $20 $64

jr_023_6D51:
    ld l, c                                       ; $6D51: $69
    ld h, h                                       ; $6D52: $64
    ld l, [hl]                                    ; $6D53: $6E
    daa                                           ; $6D54: $27
    ld [hl], h                                    ; $6D55: $74
    jr nz, jr_023_6DC5                            ; $6D56: $20 $6D

    ld h, l                                       ; $6D58: $65
    ld h, c                                       ; $6D59: $61
    ld l, [hl]                                    ; $6D5A: $6E
    rst $38                                       ; $6D5B: $FF
    ld [hl], h                                    ; $6D5C: $74
    ld l, a                                       ; $6D5D: $6F
    jr nz, jr_023_6DC8                            ; $6D5E: $20 $68

    ld [hl], l                                    ; $6D60: $75
    ld [hl], d                                    ; $6D61: $72
    ld [hl], h                                    ; $6D62: $74
    jr nz, jr_023_6DDE                            ; $6D63: $20 $79

    ld l, a                                       ; $6D65: $6F
    ld [hl], l                                    ; $6D66: $75
    ld l, $FE                                     ; $6D67: $2E $FE
    ld e, c                                       ; $6D69: $59
    ld l, a                                       ; $6D6A: $6F
    ld [hl], l                                    ; $6D6B: $75
    jr nz, jr_023_6DE1                            ; $6D6C: $20 $73

    ld h, l                                       ; $6D6E: $65
    ld h, l                                       ; $6D6F: $65
    inc l                                         ; $6D70: $2C
    jr nz, jr_023_6DEA                            ; $6D71: $20 $77

    ld h, l                                       ; $6D73: $65
    daa                                           ; $6D74: $27
    halt                                          ; $6D75: $76
    ld h, l                                       ; $6D76: $65
    rst $38                                       ; $6D77: $FF
    ld [hl], d                                    ; $6D78: $72
    ld h, l                                       ; $6D79: $65
    ld h, c                                       ; $6D7A: $61
    ld l, h                                       ; $6D7B: $6C

jr_023_6D7C:
    ld l, c                                       ; $6D7C: $69
    ld a, d                                       ; $6D7D: $7A

jr_023_6D7E:
    ld h, l                                       ; $6D7E: $65
    ld h, h                                       ; $6D7F: $64
    jr nz, jr_023_6DF6                            ; $6D80: $20 $74

jr_023_6D82:
    ld l, a                                       ; $6D82: $6F
    ld l, a                                       ; $6D83: $6F
    cp $6C                                        ; $6D84: $FE $6C

jr_023_6D86:
    ld h, c                                       ; $6D86: $61
    ld [hl], h                                    ; $6D87: $74
    ld h, l                                       ; $6D88: $65
    jr nz, jr_023_6DFF                            ; $6D89: $20 $74

    ld l, b                                       ; $6D8B: $68
    ld h, c                                       ; $6D8C: $61
    ld [hl], h                                    ; $6D8D: $74

jr_023_6D8E:
    jr nz, jr_023_6E04                            ; $6D8E: $20 $74

    ld l, b                                       ; $6D90: $68
    ld h, l                                       ; $6D91: $65
    rst $38                                       ; $6D92: $FF
    ld d, b                                       ; $6D93: $50
    ld [hl], d                                    ; $6D94: $72
    ld l, a                                       ; $6D95: $6F
    ld [hl], b                                    ; $6D96: $70
    ld l, b                                       ; $6D97: $68
    ld h, l                                       ; $6D98: $65
    ld h, e                                       ; $6D99: $63
    ld a, c                                       ; $6D9A: $79
    jr nz, @+$79                                  ; $6D9B: $20 $77

    ld h, c                                       ; $6D9D: $61
    ld [hl], e                                    ; $6D9E: $73
    cp $61                                        ; $6D9F: $FE $61
    ld h, e                                       ; $6DA1: $63
    ld [hl], h                                    ; $6DA2: $74
    ld [hl], l                                    ; $6DA3: $75
    ld h, c                                       ; $6DA4: $61
    ld l, h                                       ; $6DA5: $6C
    ld l, h                                       ; $6DA6: $6C
    ld a, c                                       ; $6DA7: $79
    jr nz, @+$63                                  ; $6DA8: $20 $61

    rst $38                                       ; $6DAA: $FF
    ld [hl], a                                    ; $6DAB: $77
    ld h, c                                       ; $6DAC: $61
    ld [hl], d                                    ; $6DAD: $72
    ld l, [hl]                                    ; $6DAE: $6E
    ld l, c                                       ; $6DAF: $69
    ld l, [hl]                                    ; $6DB0: $6E

jr_023_6DB1:
    ld h, a                                       ; $6DB1: $67
    ld l, $FE                                     ; $6DB2: $2E $FE

jr_023_6DB4:
    ld b, d                                       ; $6DB4: $42

jr_023_6DB5:
    ld h, l                                       ; $6DB5: $65
    ld h, e                                       ; $6DB6: $63
    ld h, c                                       ; $6DB7: $61
    ld [hl], l                                    ; $6DB8: $75
    ld [hl], e                                    ; $6DB9: $73
    ld h, l                                       ; $6DBA: $65
    jr nz, jr_023_6E36                            ; $6DBB: $20 $79

    ld l, a                                       ; $6DBD: $6F
    ld [hl], l                                    ; $6DBE: $75
    jr nz, jr_023_6E22                            ; $6DBF: $20 $61

    ld [hl], d                                    ; $6DC1: $72
    ld h, l                                       ; $6DC2: $65
    rst $38                                       ; $6DC3: $FF
    ld h, [hl]                                    ; $6DC4: $66

jr_023_6DC5:
    ld [hl], d                                    ; $6DC5: $72
    ld l, a                                       ; $6DC6: $6F
    ld l, l                                       ; $6DC7: $6D

jr_023_6DC8:
    jr nz, jr_023_6E2B                            ; $6DC8: $20 $61

    ld l, [hl]                                    ; $6DCA: $6E
    ld l, a                                       ; $6DCB: $6F
    ld [hl], h                                    ; $6DCC: $74
    ld l, b                                       ; $6DCD: $68
    ld h, l                                       ; $6DCE: $65
    ld [hl], d                                    ; $6DCF: $72
    cp $77                                        ; $6DD0: $FE $77
    ld l, a                                       ; $6DD2: $6F
    ld [hl], d                                    ; $6DD3: $72
    ld l, h                                       ; $6DD4: $6C
    ld h, h                                       ; $6DD5: $64
    inc l                                         ; $6DD6: $2C
    jr nz, jr_023_6E52                            ; $6DD7: $20 $79

    ld l, a                                       ; $6DD9: $6F
    ld [hl], l                                    ; $6DDA: $75
    ld [hl], d                                    ; $6DDB: $72
    rst $38                                       ; $6DDC: $FF
    ld [hl], b                                    ; $6DDD: $70

jr_023_6DDE:
    ld [hl], d                                    ; $6DDE: $72
    ld h, l                                       ; $6DDF: $65
    ld [hl], e                                    ; $6DE0: $73

jr_023_6DE1:
    ld h, l                                       ; $6DE1: $65
    ld l, [hl]                                    ; $6DE2: $6E
    ld h, e                                       ; $6DE3: $63
    ld h, l                                       ; $6DE4: $65
    jr nz, jr_023_6E4F                            ; $6DE5: $20 $68

    ld h, l                                       ; $6DE7: $65
    ld [hl], d                                    ; $6DE8: $72
    ld h, l                                       ; $6DE9: $65

jr_023_6DEA:
    cp $68                                        ; $6DEA: $FE $68
    ld h, c                                       ; $6DEC: $61
    ld [hl], e                                    ; $6DED: $73
    jr nz, jr_023_6E51                            ; $6DEE: $20 $61

    ld l, h                                       ; $6DF0: $6C
    ld l, h                                       ; $6DF1: $6C
    ld l, a                                       ; $6DF2: $6F
    ld [hl], a                                    ; $6DF3: $77
    ld h, l                                       ; $6DF4: $65
    ld h, h                                       ; $6DF5: $64

jr_023_6DF6:
    rst $38                                       ; $6DF6: $FF
    ld h, c                                       ; $6DF7: $61
    ld l, [hl]                                    ; $6DF8: $6E
    jr nz, jr_023_6E5C                            ; $6DF9: $20 $61

    ld l, [hl]                                    ; $6DFB: $6E
    ld h, e                                       ; $6DFC: $63
    ld l, c                                       ; $6DFD: $69
    ld h, l                                       ; $6DFE: $65

jr_023_6DFF:
    ld l, [hl]                                    ; $6DFF: $6E
    ld [hl], h                                    ; $6E00: $74
    cp $65                                        ; $6E01: $FE $65
    ld l, [hl]                                    ; $6E03: $6E

jr_023_6E04:
    ld h, l                                       ; $6E04: $65
    ld l, l                                       ; $6E05: $6D
    ld a, c                                       ; $6E06: $79
    jr nz, jr_023_6E78                            ; $6E07: $20 $6F

    ld h, [hl]                                    ; $6E09: $66
    jr nz, @+$76                                  ; $6E0A: $20 $74

    ld l, b                                       ; $6E0C: $68
    ld h, l                                       ; $6E0D: $65
    rst $38                                       ; $6E0E: $FF
    ld c, l                                       ; $6E0F: $4D
    ld h, c                                       ; $6E10: $61
    ld h, a                                       ; $6E11: $67
    ld l, c                                       ; $6E12: $69
    jr nz, @+$76                                  ; $6E13: $20 $74

    ld l, a                                       ; $6E15: $6F
    jr nz, jr_023_6E87                            ; $6E16: $20 $6F

    ld [hl], b                                    ; $6E18: $70
    ld h, l                                       ; $6E19: $65
    ld l, [hl]                                    ; $6E1A: $6E
    cp $64                                        ; $6E1B: $FE $64
    ld h, c                                       ; $6E1D: $61
    ld [hl], d                                    ; $6E1E: $72
    ld l, e                                       ; $6E1F: $6B
    jr nz, @+$72                                  ; $6E20: $20 $70

jr_023_6E22:
    ld l, a                                       ; $6E22: $6F
    ld [hl], d                                    ; $6E23: $72
    ld [hl], h                                    ; $6E24: $74
    ld h, c                                       ; $6E25: $61
    ld l, h                                       ; $6E26: $6C
    ld [hl], e                                    ; $6E27: $73
    rst $38                                       ; $6E28: $FF
    ld l, c                                       ; $6E29: $69
    ld l, [hl]                                    ; $6E2A: $6E

jr_023_6E2B:
    ld [hl], h                                    ; $6E2B: $74
    ld l, a                                       ; $6E2C: $6F
    jr nz, jr_023_6E97                            ; $6E2D: $20 $68

    ld l, c                                       ; $6E2F: $69
    ld [hl], e                                    ; $6E30: $73
    cp $64                                        ; $6E31: $FE $64
    ld l, c                                       ; $6E33: $69
    ld l, l                                       ; $6E34: $6D
    ld h, l                                       ; $6E35: $65

jr_023_6E36:
    ld l, [hl]                                    ; $6E36: $6E
    ld [hl], e                                    ; $6E37: $73
    ld l, c                                       ; $6E38: $69
    ld l, a                                       ; $6E39: $6F
    ld l, [hl]                                    ; $6E3A: $6E
    ld l, $FE                                     ; $6E3B: $2E $FE
    ld e, c                                       ; $6E3D: $59
    ld l, a                                       ; $6E3E: $6F
    ld [hl], l                                    ; $6E3F: $75
    jr nz, jr_023_6EB5                            ; $6E40: $20 $73

    ld h, l                                       ; $6E42: $65
    ld h, l                                       ; $6E43: $65
    inc l                                         ; $6E44: $2C
    jr nz, jr_023_6E9B                            ; $6E45: $20 $54

    ld l, a                                       ; $6E47: $6F
    ld l, [hl]                                    ; $6E48: $6E
    ld a, c                                       ; $6E49: $79
    inc l                                         ; $6E4A: $2C
    rst $38                                       ; $6E4B: $FF
    ld a, c                                       ; $6E4C: $79
    ld l, a                                       ; $6E4D: $6F
    ld [hl], l                                    ; $6E4E: $75

jr_023_6E4F:
    jr nz, jr_023_6EB2                            ; $6E4F: $20 $61

jr_023_6E51:
    ld [hl], d                                    ; $6E51: $72

jr_023_6E52:
    ld h, l                                       ; $6E52: $65
    jr nz, jr_023_6EC9                            ; $6E53: $20 $74

    ld l, b                                       ; $6E55: $68
    ld h, l                                       ; $6E56: $65
    cp $63                                        ; $6E57: $FE $63
    ld h, c                                       ; $6E59: $61
    ld [hl], h                                    ; $6E5A: $74
    ld h, c                                       ; $6E5B: $61

jr_023_6E5C:
    ld l, h                                       ; $6E5C: $6C
    ld a, c                                       ; $6E5D: $79
    ld [hl], e                                    ; $6E5E: $73
    ld [hl], h                                    ; $6E5F: $74
    ld l, $FE                                     ; $6E60: $2E $FE
    ld d, h                                       ; $6E62: $54
    ld l, b                                       ; $6E63: $68
    ld h, c                                       ; $6E64: $61
    ld [hl], h                                    ; $6E65: $74
    jr nz, jr_023_6ED1                            ; $6E66: $20 $69

    ld [hl], e                                    ; $6E68: $73
    jr nz, jr_023_6EE2                            ; $6E69: $20 $77

    ld l, b                                       ; $6E6B: $68
    ld a, c                                       ; $6E6C: $79
    rst $38                                       ; $6E6D: $FF
    ld a, c                                       ; $6E6E: $79
    ld l, a                                       ; $6E6F: $6F
    ld [hl], l                                    ; $6E70: $75
    jr nz, jr_023_6EEA                            ; $6E71: $20 $77

    ld h, l                                       ; $6E73: $65
    ld [hl], d                                    ; $6E74: $72
    ld h, l                                       ; $6E75: $65
    jr nz, jr_023_6EEC                            ; $6E76: $20 $74

jr_023_6E78:
    ld h, c                                       ; $6E78: $61
    ld l, e                                       ; $6E79: $6B
    ld h, l                                       ; $6E7A: $65
    ld l, [hl]                                    ; $6E7B: $6E
    cp $74                                        ; $6E7C: $FE $74
    ld l, a                                       ; $6E7E: $6F
    jr nz, jr_023_6EF5                            ; $6E7F: $20 $74

    ld l, b                                       ; $6E81: $68
    ld h, l                                       ; $6E82: $65
    jr nz, jr_023_6EC8                            ; $6E83: $20 $43

    ld h, c                                       ; $6E85: $61
    ld l, h                                       ; $6E86: $6C

jr_023_6E87:
    ld h, h                                       ; $6E87: $64
    ld l, $FE                                     ; $6E88: $2E $FE
    ld d, h                                       ; $6E8A: $54
    ld l, b                                       ; $6E8B: $68
    ld h, c                                       ; $6E8C: $61
    ld [hl], h                                    ; $6E8D: $74
    jr nz, jr_023_6EF9                            ; $6E8E: $20 $69

    ld [hl], e                                    ; $6E90: $73
    jr nz, jr_023_6F0A                            ; $6E91: $20 $77

    ld l, b                                       ; $6E93: $68
    ld a, c                                       ; $6E94: $79
    jr nz, jr_023_6EF8                            ; $6E95: $20 $61

jr_023_6E97:
    rst $38                                       ; $6E97: $FF
    ld d, e                                       ; $6E98: $53
    ld l, b                                       ; $6E99: $68
    ld h, c                                       ; $6E9A: $61

jr_023_6E9B:
    ld h, h                                       ; $6E9B: $64
    ld l, a                                       ; $6E9C: $6F
    ld [hl], a                                    ; $6E9D: $77
    jr nz, jr_023_6EE7                            ; $6E9E: $20 $47

    ld h, l                                       ; $6EA0: $65
    ld a, c                                       ; $6EA1: $79
    ld [hl], e                                    ; $6EA2: $73
    ld h, l                                       ; $6EA3: $65
    ld [hl], d                                    ; $6EA4: $72
    cp $61                                        ; $6EA5: $FE $61
    ld [hl], b                                    ; $6EA7: $70
    ld [hl], b                                    ; $6EA8: $70
    ld h, l                                       ; $6EA9: $65
    ld h, c                                       ; $6EAA: $61
    ld [hl], d                                    ; $6EAB: $72
    ld h, l                                       ; $6EAC: $65
    ld h, h                                       ; $6EAD: $64
    jr nz, jr_023_6F19                            ; $6EAE: $20 $69

    ld l, [hl]                                    ; $6EB0: $6E
    rst $38                                       ; $6EB1: $FF

jr_023_6EB2:
    ld c, a                                       ; $6EB2: $4F
    ld [hl], d                                    ; $6EB3: $72
    ld l, a                                       ; $6EB4: $6F

jr_023_6EB5:
    ld [hl], h                                    ; $6EB5: $74
    ld l, b                                       ; $6EB6: $68
    ld h, l                                       ; $6EB7: $65
    ld l, $FE                                     ; $6EB8: $2E $FE
    db $FD                                        ; $6EBA: $FD
    sbc e                                         ; $6EBB: $9B
    ld a, b                                       ; $6EBC: $78
    ld [hl], b                                    ; $6EBD: $70
    sbc a                                         ; $6EBE: $9F
    ld c, c                                       ; $6EBF: $49
    ld l, $2E                                     ; $6EC0: $2E $2E
    ld l, $FE                                     ; $6EC2: $2E $FE
    ld c, c                                       ; $6EC4: $49
    jr nz, jr_023_6F2A                            ; $6EC5: $20 $63

    ld h, c                                       ; $6EC7: $61

jr_023_6EC8:
    ld l, [hl]                                    ; $6EC8: $6E

jr_023_6EC9:
    daa                                           ; $6EC9: $27
    ld [hl], h                                    ; $6ECA: $74
    jr nz, jr_023_6F2F                            ; $6ECB: $20 $62

    ld h, l                                       ; $6ECD: $65
    ld l, h                                       ; $6ECE: $6C
    ld l, c                                       ; $6ECF: $69
    ld h, l                                       ; $6ED0: $65

jr_023_6ED1:
    halt                                          ; $6ED1: $76
    ld h, l                                       ; $6ED2: $65
    rst $38                                       ; $6ED3: $FF
    ld l, c                                       ; $6ED4: $69
    ld [hl], h                                    ; $6ED5: $74
    ld hl, $FDFE                                  ; $6ED6: $21 $FE $FD
    sbc e                                         ; $6ED9: $9B
    ld hl, sp+$4A                                 ; $6EDA: $F8 $4A
    sbc a                                         ; $6EDC: $9F
    ld d, a                                       ; $6EDD: $57
    ld h, l                                       ; $6EDE: $65
    jr nz, jr_023_6F47                            ; $6EDF: $20 $66

    ld h, l                                       ; $6EE1: $65

jr_023_6EE2:
    ld h, c                                       ; $6EE2: $61
    ld [hl], d                                    ; $6EE3: $72
    jr nz, @+$76                                  ; $6EE4: $20 $74

    ld l, b                                       ; $6EE6: $68

jr_023_6EE7:
    ld h, l                                       ; $6EE7: $65
    rst $38                                       ; $6EE8: $FF
    ld [hl], a                                    ; $6EE9: $77

jr_023_6EEA:
    ld l, a                                       ; $6EEA: $6F
    ld [hl], d                                    ; $6EEB: $72

jr_023_6EEC:
    ld [hl], e                                    ; $6EEC: $73
    ld [hl], h                                    ; $6EED: $74
    ld l, $FE                                     ; $6EEE: $2E $FE
    ld c, c                                       ; $6EF0: $49
    ld h, [hl]                                    ; $6EF1: $66
    jr nz, jr_023_6F6D                            ; $6EF2: $20 $79

    ld l, a                                       ; $6EF4: $6F

jr_023_6EF5:
    ld [hl], l                                    ; $6EF5: $75
    jr nz, jr_023_6F6A                            ; $6EF6: $20 $72

jr_023_6EF8:
    ld h, l                                       ; $6EF8: $65

jr_023_6EF9:
    ld l, l                                       ; $6EF9: $6D
    ld h, c                                       ; $6EFA: $61
    ld l, c                                       ; $6EFB: $69
    ld l, [hl]                                    ; $6EFC: $6E
    inc l                                         ; $6EFD: $2C
    rst $38                                       ; $6EFE: $FF
    ld l, l                                       ; $6EFF: $6D
    ld l, a                                       ; $6F00: $6F
    ld [hl], d                                    ; $6F01: $72
    ld h, l                                       ; $6F02: $65
    jr nz, jr_023_6F58                            ; $6F03: $20 $53

    ld l, b                                       ; $6F05: $68
    ld h, c                                       ; $6F06: $61
    ld h, h                                       ; $6F07: $64
    ld l, a                                       ; $6F08: $6F
    ld [hl], a                                    ; $6F09: $77

jr_023_6F0A:
    cp $47                                        ; $6F0A: $FE $47
    ld h, l                                       ; $6F0C: $65
    ld a, c                                       ; $6F0D: $79
    ld [hl], e                                    ; $6F0E: $73
    ld h, l                                       ; $6F0F: $65
    ld [hl], d                                    ; $6F10: $72
    ld [hl], e                                    ; $6F11: $73
    jr nz, jr_023_6F8B                            ; $6F12: $20 $77

    ld l, c                                       ; $6F14: $69
    ld l, h                                       ; $6F15: $6C
    ld l, h                                       ; $6F16: $6C
    rst $38                                       ; $6F17: $FF
    ld h, c                                       ; $6F18: $61

jr_023_6F19:
    ld [hl], b                                    ; $6F19: $70
    ld [hl], b                                    ; $6F1A: $70
    ld h, l                                       ; $6F1B: $65
    ld h, c                                       ; $6F1C: $61
    ld [hl], d                                    ; $6F1D: $72
    ld l, $FE                                     ; $6F1E: $2E $FE
    ld c, a                                       ; $6F20: $4F
    ld [hl], l                                    ; $6F21: $75
    ld [hl], d                                    ; $6F22: $72
    jr nz, jr_023_6F94                            ; $6F23: $20 $6F

    ld l, [hl]                                    ; $6F25: $6E
    ld l, h                                       ; $6F26: $6C
    ld a, c                                       ; $6F27: $79
    jr nz, jr_023_6F92                            ; $6F28: $20 $68

jr_023_6F2A:
    ld l, a                                       ; $6F2A: $6F
    ld [hl], b                                    ; $6F2B: $70
    ld h, l                                       ; $6F2C: $65
    rst $38                                       ; $6F2D: $FF
    ld l, a                                       ; $6F2E: $6F

jr_023_6F2F:
    ld h, [hl]                                    ; $6F2F: $66
    jr nz, @+$75                                  ; $6F30: $20 $73

    ld [hl], l                                    ; $6F32: $75
    ld [hl], d                                    ; $6F33: $72
    halt                                          ; $6F34: $76
    ld l, c                                       ; $6F35: $69
    halt                                          ; $6F36: $76
    ld h, c                                       ; $6F37: $61
    ld l, h                                       ; $6F38: $6C
    cp $69                                        ; $6F39: $FE $69
    ld [hl], e                                    ; $6F3B: $73
    jr nz, jr_023_6FA4                            ; $6F3C: $20 $66

    ld l, a                                       ; $6F3E: $6F
    ld [hl], d                                    ; $6F3F: $72
    jr nz, jr_023_6FBB                            ; $6F40: $20 $79

    ld l, a                                       ; $6F42: $6F
    ld [hl], l                                    ; $6F43: $75
    rst $38                                       ; $6F44: $FF
    ld [hl], h                                    ; $6F45: $74
    ld l, a                                       ; $6F46: $6F

jr_023_6F47:
    jr nz, jr_023_6FB5                            ; $6F47: $20 $6C

    ld h, l                                       ; $6F49: $65
    ld h, c                                       ; $6F4A: $61
    halt                                          ; $6F4B: $76
    ld h, l                                       ; $6F4C: $65
    cp $4D                                        ; $6F4D: $FE $4D
    ld h, c                                       ; $6F4F: $61
    ld h, a                                       ; $6F50: $67
    ld l, c                                       ; $6F51: $69
    dec l                                         ; $6F52: $2D
    ld c, [hl]                                    ; $6F53: $4E
    ld h, c                                       ; $6F54: $61
    ld [hl], h                                    ; $6F55: $74
    ld l, c                                       ; $6F56: $69
    ld l, a                                       ; $6F57: $6F

jr_023_6F58:
    ld l, [hl]                                    ; $6F58: $6E
    ld l, $FE                                     ; $6F59: $2E $FE
    ld c, c                                       ; $6F5B: $49
    jr nz, jr_023_6FC2                            ; $6F5C: $20 $64

    ld l, a                                       ; $6F5E: $6F
    jr nz, jr_023_6FCF                            ; $6F5F: $20 $6E

    ld l, a                                       ; $6F61: $6F
    ld [hl], h                                    ; $6F62: $74
    jr nz, jr_023_6FD0                            ; $6F63: $20 $6B

    ld l, [hl]                                    ; $6F65: $6E
    ld l, a                                       ; $6F66: $6F
    ld [hl], a                                    ; $6F67: $77
    rst $38                                       ; $6F68: $FF
    ld [hl], a                                    ; $6F69: $77

jr_023_6F6A:
    ld l, b                                       ; $6F6A: $68
    ld h, c                                       ; $6F6B: $61
    ld [hl], h                                    ; $6F6C: $74

jr_023_6F6D:
    jr nz, jr_023_6FD5                            ; $6F6D: $20 $66

    ld h, c                                       ; $6F6F: $61
    ld [hl], h                                    ; $6F70: $74
    ld h, l                                       ; $6F71: $65
    cp $61                                        ; $6F72: $FE $61
    ld [hl], a                                    ; $6F74: $77
    ld h, c                                       ; $6F75: $61
    ld l, c                                       ; $6F76: $69
    ld [hl], h                                    ; $6F77: $74
    ld [hl], e                                    ; $6F78: $73
    jr nz, jr_023_6FF4                            ; $6F79: $20 $79

    ld l, a                                       ; $6F7B: $6F
    ld [hl], l                                    ; $6F7C: $75
    jr nz, jr_023_6FE8                            ; $6F7D: $20 $69

    ld l, [hl]                                    ; $6F7F: $6E
    rst $38                                       ; $6F80: $FF
    ld [hl], h                                    ; $6F81: $74
    ld l, b                                       ; $6F82: $68
    ld h, l                                       ; $6F83: $65
    jr nz, jr_023_6FC9                            ; $6F84: $20 $43

    ld l, a                                       ; $6F86: $6F
    ld [hl], d                                    ; $6F87: $72
    ld h, l                                       ; $6F88: $65
    ld l, $2E                                     ; $6F89: $2E $2E

jr_023_6F8B:
    ld l, $FE                                     ; $6F8B: $2E $FE
    ld c, c                                       ; $6F8D: $49
    jr nz, jr_023_6FF3                            ; $6F8E: $20 $63

    ld h, c                                       ; $6F90: $61
    ld l, [hl]                                    ; $6F91: $6E

jr_023_6F92:
    jr nz, @+$71                                  ; $6F92: $20 $6F

jr_023_6F94:
    ld l, [hl]                                    ; $6F94: $6E
    ld l, h                                       ; $6F95: $6C
    ld a, c                                       ; $6F96: $79
    rst $38                                       ; $6F97: $FF
    ld [hl], b                                    ; $6F98: $70
    ld [hl], d                                    ; $6F99: $72
    ld h, c                                       ; $6F9A: $61
    ld a, c                                       ; $6F9B: $79
    jr nz, jr_023_7012                            ; $6F9C: $20 $74

    ld l, b                                       ; $6F9E: $68
    ld h, c                                       ; $6F9F: $61
    ld [hl], h                                    ; $6FA0: $74
    jr nz, @+$6B                                  ; $6FA1: $20 $69

    ld [hl], h                                    ; $6FA3: $74

jr_023_6FA4:
    cp $77                                        ; $6FA4: $FE $77
    ld l, c                                       ; $6FA6: $69
    ld l, h                                       ; $6FA7: $6C
    ld l, h                                       ; $6FA8: $6C
    jr nz, jr_023_701D                            ; $6FA9: $20 $72

    ld h, l                                       ; $6FAB: $65
    ld [hl], h                                    ; $6FAC: $74
    ld [hl], l                                    ; $6FAD: $75
    ld [hl], d                                    ; $6FAE: $72
    ld l, [hl]                                    ; $6FAF: $6E
    jr nz, jr_023_702B                            ; $6FB0: $20 $79

    ld l, a                                       ; $6FB2: $6F
    ld [hl], l                                    ; $6FB3: $75
    rst $38                                       ; $6FB4: $FF

jr_023_6FB5:
    ld [hl], h                                    ; $6FB5: $74
    ld l, a                                       ; $6FB6: $6F
    jr nz, jr_023_7032                            ; $6FB7: $20 $79

    ld l, a                                       ; $6FB9: $6F
    ld [hl], l                                    ; $6FBA: $75

jr_023_6FBB:
    ld [hl], d                                    ; $6FBB: $72
    jr nz, jr_023_7035                            ; $6FBC: $20 $77

    ld l, a                                       ; $6FBE: $6F
    ld [hl], d                                    ; $6FBF: $72
    ld l, h                                       ; $6FC0: $6C
    ld h, h                                       ; $6FC1: $64

jr_023_6FC2:
    ld l, $FE                                     ; $6FC2: $2E $FE
    ld b, d                                       ; $6FC4: $42
    ld [hl], l                                    ; $6FC5: $75
    ld [hl], h                                    ; $6FC6: $74
    ld l, $2E                                     ; $6FC7: $2E $2E

jr_023_6FC9:
    ld l, $FE                                     ; $6FC9: $2E $FE
    db $FD                                        ; $6FCB: $FD
    sbc e                                         ; $6FCC: $9B
    ld a, b                                       ; $6FCD: $78
    ld [hl], b                                    ; $6FCE: $70

jr_023_6FCF:
    sbc a                                         ; $6FCF: $9F

jr_023_6FD0:
    ld l, $2E                                     ; $6FD0: $2E $2E
    ld l, $FE                                     ; $6FD2: $2E $FE
    db $FD                                        ; $6FD4: $FD

jr_023_6FD5:
    sbc e                                         ; $6FD5: $9B
    ld hl, sp+$4A                                 ; $6FD6: $F8 $4A
    sbc a                                         ; $6FD8: $9F
    ld d, b                                       ; $6FD9: $50
    ld l, h                                       ; $6FDA: $6C
    ld h, l                                       ; $6FDB: $65
    ld h, c                                       ; $6FDC: $61
    ld [hl], e                                    ; $6FDD: $73
    ld h, l                                       ; $6FDE: $65
    inc l                                         ; $6FDF: $2C
    jr nz, jr_023_7036                            ; $6FE0: $20 $54

    ld l, a                                       ; $6FE2: $6F
    ld l, [hl]                                    ; $6FE3: $6E
    ld a, c                                       ; $6FE4: $79
    ld l, $FE                                     ; $6FE5: $2E $FE
    ld c, c                                       ; $6FE7: $49

jr_023_6FE8:
    jr nz, jr_023_7052                            ; $6FE8: $20 $68

    ld h, c                                       ; $6FEA: $61
    halt                                          ; $6FEB: $76
    ld h, l                                       ; $6FEC: $65
    jr nz, jr_023_7063                            ; $6FED: $20 $74

    ld [hl], d                                    ; $6FEF: $72
    ld [hl], l                                    ; $6FF0: $75
    ld [hl], e                                    ; $6FF1: $73
    ld [hl], h                                    ; $6FF2: $74

jr_023_6FF3:
    ld h, l                                       ; $6FF3: $65

jr_023_6FF4:
    ld h, h                                       ; $6FF4: $64
    rst $38                                       ; $6FF5: $FF
    ld a, c                                       ; $6FF6: $79
    ld l, a                                       ; $6FF7: $6F
    ld [hl], l                                    ; $6FF8: $75
    jr nz, jr_023_7072                            ; $6FF9: $20 $77

    ld l, c                                       ; $6FFB: $69
    ld [hl], h                                    ; $6FFC: $74
    ld l, b                                       ; $6FFD: $68
    jr nz, jr_023_7074                            ; $6FFE: $20 $74

    ld l, b                                       ; $7000: $68
    ld h, l                                       ; $7001: $65
    cp $74                                        ; $7002: $FE $74
    ld [hl], d                                    ; $7004: $72
    ld [hl], l                                    ; $7005: $75
    ld [hl], h                                    ; $7006: $74
    ld l, b                                       ; $7007: $68
    ld l, $FE                                     ; $7008: $2E $FE
    ld c, c                                       ; $700A: $49
    jr nz, jr_023_7078                            ; $700B: $20 $6B

    ld l, [hl]                                    ; $700D: $6E
    ld l, a                                       ; $700E: $6F
    ld [hl], a                                    ; $700F: $77
    jr nz, jr_023_7086                            ; $7010: $20 $74

jr_023_7012:
    ld l, b                                       ; $7012: $68
    ld h, c                                       ; $7013: $61
    ld [hl], h                                    ; $7014: $74
    jr nz, jr_023_7090                            ; $7015: $20 $79

    ld l, a                                       ; $7017: $6F
    ld [hl], l                                    ; $7018: $75
    rst $38                                       ; $7019: $FF
    ld l, b                                       ; $701A: $68
    ld h, c                                       ; $701B: $61
    halt                                          ; $701C: $76

jr_023_701D:
    ld h, l                                       ; $701D: $65
    jr nz, jr_023_7081                            ; $701E: $20 $61

    jr nz, jr_023_7089                            ; $7020: $20 $67

    ld l, a                                       ; $7022: $6F
    ld l, a                                       ; $7023: $6F
    ld h, h                                       ; $7024: $64
    cp $68                                        ; $7025: $FE $68
    ld h, l                                       ; $7027: $65
    ld h, c                                       ; $7028: $61
    ld [hl], d                                    ; $7029: $72
    ld [hl], h                                    ; $702A: $74

jr_023_702B:
    ld l, $FE                                     ; $702B: $2E $FE
    ld d, b                                       ; $702D: $50
    ld l, h                                       ; $702E: $6C
    ld h, l                                       ; $702F: $65
    ld h, c                                       ; $7030: $61
    ld [hl], e                                    ; $7031: $73

jr_023_7032:
    ld h, l                                       ; $7032: $65
    jr nz, jr_023_70A2                            ; $7033: $20 $6D

jr_023_7035:
    ld h, c                                       ; $7035: $61

jr_023_7036:
    ld l, e                                       ; $7036: $6B
    ld h, l                                       ; $7037: $65
    rst $38                                       ; $7038: $FF
    ld [hl], h                                    ; $7039: $74
    ld l, b                                       ; $703A: $68
    ld l, c                                       ; $703B: $69
    ld [hl], e                                    ; $703C: $73
    jr nz, jr_023_70B2                            ; $703D: $20 $73

    ld h, c                                       ; $703F: $61
    ld h, e                                       ; $7040: $63
    ld [hl], d                                    ; $7041: $72
    ld l, c                                       ; $7042: $69
    ld h, [hl]                                    ; $7043: $66
    ld l, c                                       ; $7044: $69
    ld h, e                                       ; $7045: $63
    ld h, l                                       ; $7046: $65
    cp $66                                        ; $7047: $FE $66
    ld l, a                                       ; $7049: $6F
    ld [hl], d                                    ; $704A: $72
    jr nz, @+$77                                  ; $704B: $20 $75

    ld [hl], e                                    ; $704D: $73
    ld l, $FE                                     ; $704E: $2E $FE
    ld b, a                                       ; $7050: $47
    ld l, a                                       ; $7051: $6F

jr_023_7052:
    jr nz, jr_023_70C8                            ; $7052: $20 $74

    ld l, a                                       ; $7054: $6F
    jr nz, jr_023_70CB                            ; $7055: $20 $74

    ld l, b                                       ; $7057: $68
    ld h, l                                       ; $7058: $65
    rst $38                                       ; $7059: $FF
    ld b, e                                       ; $705A: $43
    ld l, a                                       ; $705B: $6F
    ld [hl], d                                    ; $705C: $72
    ld h, l                                       ; $705D: $65
    jr nz, jr_023_70A5                            ; $705E: $20 $45

    ld l, [hl]                                    ; $7060: $6E
    ld [hl], h                                    ; $7061: $74
    ld [hl], d                                    ; $7062: $72

jr_023_7063:
    ld h, c                                       ; $7063: $61
    ld l, [hl]                                    ; $7064: $6E
    ld h, e                                       ; $7065: $63
    ld h, l                                       ; $7066: $65
    inc l                                         ; $7067: $2C
    cp $74                                        ; $7068: $FE $74
    ld l, a                                       ; $706A: $6F
    jr nz, jr_023_70E1                            ; $706B: $20 $74

    ld l, b                                       ; $706D: $68
    ld h, l                                       ; $706E: $65
    jr nz, jr_023_70C8                            ; $706F: $20 $57

    ld h, l                                       ; $7071: $65

jr_023_7072:
    ld [hl], e                                    ; $7072: $73
    ld [hl], h                                    ; $7073: $74

jr_023_7074:
    jr nz, @+$71                                  ; $7074: $20 $6F

    ld h, [hl]                                    ; $7076: $66
    rst $38                                       ; $7077: $FF

jr_023_7078:
    ld l, l                                       ; $7078: $6D
    ld a, c                                       ; $7079: $79
    jr nz, jr_023_70EC                            ; $707A: $20 $70

    ld l, a                                       ; $707C: $6F
    ld l, a                                       ; $707D: $6F
    ld [hl], d                                    ; $707E: $72
    cp $63                                        ; $707F: $FE $63

jr_023_7081:
    ld l, a                                       ; $7081: $6F
    ld [hl], h                                    ; $7082: $74
    ld [hl], h                                    ; $7083: $74
    ld h, c                                       ; $7084: $61
    ld h, a                                       ; $7085: $67

jr_023_7086:
    ld h, l                                       ; $7086: $65
    ld l, $FE                                     ; $7087: $2E $FE

jr_023_7089:
    db $FD                                        ; $7089: $FD
    sbc e                                         ; $708A: $9B
    ld a, b                                       ; $708B: $78
    ld [hl], b                                    ; $708C: $70
    sbc a                                         ; $708D: $9F
    ld d, a                                       ; $708E: $57
    ld h, l                                       ; $708F: $65

jr_023_7090:
    ld l, h                                       ; $7090: $6C
    ld l, h                                       ; $7091: $6C
    inc l                                         ; $7092: $2C
    jr nz, jr_023_70DE                            ; $7093: $20 $49

    jr nz, jr_023_70FE                            ; $7095: $20 $67

    ld [hl], l                                    ; $7097: $75
    ld h, l                                       ; $7098: $65
    ld [hl], e                                    ; $7099: $73
    ld [hl], e                                    ; $709A: $73
    rst $38                                       ; $709B: $FF
    ld [hl], h                                    ; $709C: $74
    ld l, b                                       ; $709D: $68
    ld h, c                                       ; $709E: $61
    ld [hl], h                                    ; $709F: $74
    daa                                           ; $70A0: $27
    ld [hl], e                                    ; $70A1: $73

jr_023_70A2:
    jr nz, jr_023_711B                            ; $70A2: $20 $77

    ld l, b                                       ; $70A4: $68

jr_023_70A5:
    ld h, c                                       ; $70A5: $61
    ld [hl], h                                    ; $70A6: $74
    jr nz, jr_023_70F2                            ; $70A7: $20 $49

    cp $77                                        ; $70A9: $FE $77
    ld h, c                                       ; $70AB: $61
    ld l, [hl]                                    ; $70AC: $6E
    ld [hl], h                                    ; $70AD: $74
    ld h, l                                       ; $70AE: $65
    ld h, h                                       ; $70AF: $64

jr_023_70B0:
    ld l, $20                                     ; $70B0: $2E $20

jr_023_70B2:
    ld d, h                                       ; $70B2: $54
    ld l, a                                       ; $70B3: $6F
    jr nz, @+$69                                  ; $70B4: $20 $67

    ld h, l                                       ; $70B6: $65
    ld [hl], h                                    ; $70B7: $74
    rst $38                                       ; $70B8: $FF
    ld l, b                                       ; $70B9: $68
    ld l, a                                       ; $70BA: $6F
    ld l, l                                       ; $70BB: $6D
    ld h, l                                       ; $70BC: $65
    ld l, $FE                                     ; $70BD: $2E $FE
    ld l, $2E                                     ; $70BF: $2E $2E
    ld l, $FE                                     ; $70C1: $2E $FE
    ld b, a                                       ; $70C3: $47
    ld l, a                                       ; $70C4: $6F
    ld l, a                                       ; $70C5: $6F
    ld h, h                                       ; $70C6: $64
    ld h, d                                       ; $70C7: $62

jr_023_70C8:
    ld a, c                                       ; $70C8: $79
    ld h, l                                       ; $70C9: $65
    inc l                                         ; $70CA: $2C

jr_023_70CB:
    jr nz, jr_023_7114                            ; $70CB: $20 $47

    ld l, c                                       ; $70CD: $69
    ld h, c                                       ; $70CE: $61
    ld l, $FE                                     ; $70CF: $2E $FE
    db $FD                                        ; $70D1: $FD
    sbc e                                         ; $70D2: $9B
    ld hl, sp+$4A                                 ; $70D3: $F8 $4A
    sbc a                                         ; $70D5: $9F

jr_023_70D6:
    ld b, [hl]                                    ; $70D6: $46
    ld h, c                                       ; $70D7: $61
    ld [hl], d                                    ; $70D8: $72
    ld h, l                                       ; $70D9: $65
    ld [hl], a                                    ; $70DA: $77
    ld h, l                                       ; $70DB: $65
    ld l, h                                       ; $70DC: $6C
    ld l, h                                       ; $70DD: $6C

jr_023_70DE:
    inc l                                         ; $70DE: $2C
    jr nz, @+$56                                  ; $70DF: $20 $54

jr_023_70E1:
    ld l, a                                       ; $70E1: $6F
    ld l, [hl]                                    ; $70E2: $6E
    ld a, c                                       ; $70E3: $79
    ld l, $FE                                     ; $70E4: $2E $FE
    db $FD                                        ; $70E6: $FD
    sbc d                                         ; $70E7: $9A
    ld e, b                                       ; $70E8: $58
    ld bc, $9342                                  ; $70E9: $01 $42 $93

jr_023_70EC:
    ld h, l                                       ; $70EC: $65
    or c                                          ; $70ED: $B1
    ld b, e                                       ; $70EE: $43
    ld c, a                                       ; $70EF: $4F
    ld h, h                                       ; $70F0: $64
    add hl, sp                                    ; $70F1: $39

jr_023_70F2:
    ld b, h                                       ; $70F2: $44
    ld h, [hl]                                    ; $70F3: $66
    ret nz                                        ; $70F4: $C0

    ld e, h                                       ; $70F5: $5C
    ld hl, $4269                                  ; $70F6: $21 $69 $42
    ld b, h                                       ; $70F9: $44
    dec b                                         ; $70FA: $05
    nop                                           ; $70FB: $00
    add c                                         ; $70FC: $81
    ld e, l                                       ; $70FD: $5D

jr_023_70FE:
    ld c, $09                                     ; $70FE: $0E $09
    jp nz, $00D0                                  ; $7100: $C2 $D0 $00

    jr nz, jr_023_70B0                            ; $7103: $20 $AB

    ld d, b                                       ; $7105: $50
    ld [hl+], a                                   ; $7106: $22
    inc b                                         ; $7107: $04
    ld b, b                                       ; $7108: $40
    dec bc                                        ; $7109: $0B
    nop                                           ; $710A: $00
    nop                                           ; $710B: $00
    add d                                         ; $710C: $82
    rra                                           ; $710D: $1F
    ld a, [de]                                    ; $710E: $1A
    sub h                                         ; $710F: $94
    ld b, d                                       ; $7110: $42
    sub e                                         ; $7111: $93
    ld h, l                                       ; $7112: $65
    or c                                          ; $7113: $B1

jr_023_7114:
    ld b, e                                       ; $7114: $43
    ld c, a                                       ; $7115: $4F
    ld h, h                                       ; $7116: $64
    add hl, sp                                    ; $7117: $39
    ld b, h                                       ; $7118: $44
    ld h, [hl]                                    ; $7119: $66
    ret nz                                        ; $711A: $C0

jr_023_711B:
    ld e, h                                       ; $711B: $5C
    ld hl, $4269                                  ; $711C: $21 $69 $42
    ld b, h                                       ; $711F: $44
    dec b                                         ; $7120: $05
    nop                                           ; $7121: $00
    add c                                         ; $7122: $81
    ld e, l                                       ; $7123: $5D
    ld c, $09                                     ; $7124: $0E $09
    jp nz, $00D0                                  ; $7126: $C2 $D0 $00

    jr nz, jr_023_70D6                            ; $7129: $20 $AB

    ld d, b                                       ; $712B: $50
    ld [hl+], a                                   ; $712C: $22
    inc b                                         ; $712D: $04
    ld b, b                                       ; $712E: $40
    dec b                                         ; $712F: $05
    ld [bc], a                                    ; $7130: $02
    db $ED                                        ; $7131: $ED
    ld h, e                                       ; $7132: $63
    dec b                                         ; $7133: $05
    ld b, $7D                                     ; $7134: $06 $7D
    ret nc                                        ; $7136: $D0

    nop                                           ; $7137: $00
    inc hl                                        ; $7138: $23
    ld d, b                                       ; $7139: $50
    ld [hl], c                                    ; $713A: $71
    inc hl                                        ; $713B: $23
    add d                                         ; $713C: $82
    ld [hl], c                                    ; $713D: $71
    ld l, e                                       ; $713E: $6B
    jr nc, jr_023_714B                            ; $713F: $30 $0A

    ldh a, [$4E]                                  ; $7141: $F0 $4E
    nop                                           ; $7143: $00
    add b                                         ; $7144: $80
    nop                                           ; $7145: $00
    dec bc                                        ; $7146: $0B
    nop                                           ; $7147: $00
    dec bc                                        ; $7148: $0B
    ld [bc], a                                    ; $7149: $02
    nop                                           ; $714A: $00

jr_023_714B:
    add d                                         ; $714B: $82
    rra                                           ; $714C: $1F
    db $10                                        ; $714D: $10
    sub h                                         ; $714E: $94
    ld b, d                                       ; $714F: $42
    dec d                                         ; $7150: $15
    ld c, $ED                                     ; $7151: $0E $ED
    ld h, b                                       ; $7153: $60
    ld b, b                                       ; $7154: $40
    ld c, $01                                     ; $7155: $0E $01
    ld h, c                                       ; $7157: $61
    ld [$CF0E], sp                                ; $7158: $08 $0E $CF
    ld h, b                                       ; $715B: $60
    jr nz, jr_023_716C                            ; $715C: $20 $0E

    ld c, a                                       ; $715E: $4F
    ld h, b                                       ; $715F: $60
    db $10                                        ; $7160: $10
    ld c, $CF                                     ; $7161: $0E $CF
    ld h, b                                       ; $7163: $60
    ld b, b                                       ; $7164: $40
    ld c, $01                                     ; $7165: $0E $01
    ld h, c                                       ; $7167: $61
    jr nz, jr_023_7178                            ; $7168: $20 $0E

    db $ED                                        ; $716A: $ED
    ld h, b                                       ; $716B: $60

jr_023_716C:
    ld [$150E], sp                                ; $716C: $08 $0E $15
    ld h, c                                       ; $716F: $61
    ld [$D90E], sp                                ; $7170: $08 $0E $D9
    ld h, b                                       ; $7173: $60
    ld b, b                                       ; $7174: $40
    ld c, $5F                                     ; $7175: $0E $5F
    ld h, b                                       ; $7177: $60

jr_023_7178:
    db $10                                        ; $7178: $10
    ld c, $15                                     ; $7179: $0E $15
    ld h, c                                       ; $717B: $61
    ld [$4500], sp                                ; $717C: $08 $00 $45
    inc hl                                        ; $717F: $23
    ld d, b                                       ; $7180: $50
    ld [hl], c                                    ; $7181: $71
    ld e, e                                       ; $7182: $5B
    inc hl                                        ; $7183: $23
    adc d                                         ; $7184: $8A
    ld [hl], c                                    ; $7185: $71
    ld b, l                                       ; $7186: $45
    ld c, $29                                     ; $7187: $0E $29
    ld h, c                                       ; $7189: $61
    sbc e                                         ; $718A: $9B
    ld hl, sp+$4A                                 ; $718B: $F8 $4A
    sbc a                                         ; $718D: $9F
    ld c, c                                       ; $718E: $49
    jr nz, jr_023_71FC                            ; $718F: $20 $6B

    ld l, [hl]                                    ; $7191: $6E
    ld l, a                                       ; $7192: $6F
    ld [hl], a                                    ; $7193: $77
    jr nz, jr_023_720F                            ; $7194: $20 $79

    ld l, a                                       ; $7196: $6F
    ld [hl], l                                    ; $7197: $75
    rst $38                                       ; $7198: $FF
    ld l, b                                       ; $7199: $68
    ld h, c                                       ; $719A: $61
    halt                                          ; $719B: $76
    ld h, l                                       ; $719C: $65
    jr nz, jr_023_7213                            ; $719D: $20 $74

    ld l, a                                       ; $719F: $6F
    jr nz, jr_023_720E                            ; $71A0: $20 $6C

    ld h, l                                       ; $71A2: $65
    ld h, c                                       ; $71A3: $61
    halt                                          ; $71A4: $76
    ld h, l                                       ; $71A5: $65
    cp $73                                        ; $71A6: $FE $73
    ld l, a                                       ; $71A8: $6F
    ld l, a                                       ; $71A9: $6F
    ld l, [hl]                                    ; $71AA: $6E
    inc l                                         ; $71AB: $2C
    jr nz, jr_023_7210                            ; $71AC: $20 $62

    ld [hl], l                                    ; $71AE: $75
    ld [hl], h                                    ; $71AF: $74
    jr nz, jr_023_7225                            ; $71B0: $20 $73

    ld [hl], h                                    ; $71B2: $74
    ld h, c                                       ; $71B3: $61
    ld a, c                                       ; $71B4: $79
    rst $38                                       ; $71B5: $FF
    ld h, c                                       ; $71B6: $61
    jr nz, @+$79                                  ; $71B7: $20 $77

    ld l, b                                       ; $71B9: $68
    ld l, c                                       ; $71BA: $69
    ld l, h                                       ; $71BB: $6C
    ld h, l                                       ; $71BC: $65
    jr nz, jr_023_722B                            ; $71BD: $20 $6C

    ld l, a                                       ; $71BF: $6F
    ld l, [hl]                                    ; $71C0: $6E
    ld h, a                                       ; $71C1: $67
    ld h, l                                       ; $71C2: $65
    ld [hl], d                                    ; $71C3: $72
    cp $61                                        ; $71C4: $FE $61
    ld l, [hl]                                    ; $71C6: $6E
    ld h, h                                       ; $71C7: $64
    jr nz, jr_023_722F                            ; $71C8: $20 $65

    ld l, [hl]                                    ; $71CA: $6E
    ld l, d                                       ; $71CB: $6A
    ld l, a                                       ; $71CC: $6F
    ld a, c                                       ; $71CD: $79
    rst $38                                       ; $71CE: $FF
    ld a, c                                       ; $71CF: $79
    ld l, a                                       ; $71D0: $6F
    ld [hl], l                                    ; $71D1: $75
    ld [hl], d                                    ; $71D2: $72
    ld [hl], e                                    ; $71D3: $73
    ld h, l                                       ; $71D4: $65
    ld l, h                                       ; $71D5: $6C
    ld h, [hl]                                    ; $71D6: $66
    ld l, $FE                                     ; $71D7: $2E $FE
    db $FD                                        ; $71D9: $FD
    sbc d                                         ; $71DA: $9A
    ld e, b                                       ; $71DB: $58
    db $01                                        ; $71DC: $01
    ld b, d                                       ; $71DD: $42

    db $43, $10, $04, $05, $17, $23, $EA, $71

    xor h                                         ; $71E6: $AC
    inc h                                         ; $71E7: $24
    and d                                         ; $71E8: $A2

jr_023_71E9:
    db $01                                        ; $71E9: $01

    db $4B, $04, $23, $01, $00, $57, $73

    inc hl                                        ; $71F1: $23
    ld [bc], a                                    ; $71F2: $02
    nop                                           ; $71F3: $00
    ld c, d                                       ; $71F4: $4A
    ld [hl], d                                    ; $71F5: $72
    inc hl                                        ; $71F6: $23
    inc bc                                        ; $71F7: $03
    nop                                           ; $71F8: $00
    inc h                                         ; $71F9: $24
    ld [hl], d                                    ; $71FA: $72
    inc hl                                        ; $71FB: $23

jr_023_71FC:
    add hl, de                                    ; $71FC: $19
    nop                                           ; $71FD: $00
    db $EB                                        ; $71FE: $EB
    ld [hl], b                                    ; $71FF: $70
    inc hl                                        ; $7200: $23
    ld a, [de]                                    ; $7201: $1A
    nop                                           ; $7202: $00
    ld de, $FF71                                  ; $7203: $11 $71 $FF
    ld b, e                                       ; $7206: $43
    ld [de], a                                    ; $7207: $12
    inc b                                         ; $7208: $04
    dec b                                         ; $7209: $05
    inc d                                         ; $720A: $14
    inc hl                                        ; $720B: $23
    add hl, de                                    ; $720C: $19
    ld [hl], d                                    ; $720D: $72

jr_023_720E:
    ld b, e                                       ; $720E: $43

jr_023_720F:
    nop                                           ; $720F: $00

jr_023_7210:
    and l                                         ; $7210: $A5
    and c                                         ; $7211: $A1
    ld [bc], a                                    ; $7212: $02

jr_023_7213:
    inc hl                                        ; $7213: $23
    db $E4                                        ; $7214: $E4
    ld e, l                                       ; $7215: $5D
    ld b, [hl]                                    ; $7216: $46
    sbc a                                         ; $7217: $9F
    ld h, h                                       ; $7218: $64
    ld b, e                                       ; $7219: $43
    nop                                           ; $721A: $00
    and l                                         ; $721B: $A5
    and c                                         ; $721C: $A1
    ld [bc], a                                    ; $721D: $02
    inc hl                                        ; $721E: $23
    db $F4                                        ; $721F: $F4
    ld e, [hl]                                    ; $7220: $5E
    ld b, [hl]                                    ; $7221: $46
    ld e, h                                       ; $7222: $5C
    ld h, l                                       ; $7223: $65
    sub e                                         ; $7224: $93

jr_023_7225:
    ld h, l                                       ; $7225: $65
    or c                                          ; $7226: $B1
    ld b, e                                       ; $7227: $43
    ld c, a                                       ; $7228: $4F
    ld h, h                                       ; $7229: $64
    add hl, sp                                    ; $722A: $39

jr_023_722B:
    ld b, h                                       ; $722B: $44
    ld h, [hl]                                    ; $722C: $66
    ret nz                                        ; $722D: $C0

    ld e, h                                       ; $722E: $5C

jr_023_722F:
    ld hl, $4269                                  ; $722F: $21 $69 $42
    ld b, h                                       ; $7232: $44
    dec b                                         ; $7233: $05
    nop                                           ; $7234: $00
    add c                                         ; $7235: $81
    ld e, l                                       ; $7236: $5D
    ld c, $09                                     ; $7237: $0E $09
    jp nz, $00D0                                  ; $7239: $C2 $D0 $00

    jr nz, jr_023_71E9                            ; $723C: $20 $AB

    ld d, b                                       ; $723E: $50
    ld [hl+], a                                   ; $723F: $22
    inc b                                         ; $7240: $04
    ld b, b                                       ; $7241: $40
    dec bc                                        ; $7242: $0B
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    add d                                         ; $7245: $82
    rra                                           ; $7246: $1F
    inc hl                                        ; $7247: $23
    sub h                                         ; $7248: $94
    ld b, d                                       ; $7249: $42
    ld b, e                                       ; $724A: $43
    ld [de], a                                    ; $724B: $12
    ld bc, $A224                                  ; $724C: $01 $24 $A2
    dec b                                         ; $724F: $05
    inc b                                         ; $7250: $04
    inc hl                                        ; $7251: $23
    inc h                                         ; $7252: $24
    ld [hl], d                                    ; $7253: $72
    sub e                                         ; $7254: $93
    ld h, l                                       ; $7255: $65
    or c                                          ; $7256: $B1
    ld b, e                                       ; $7257: $43
    ld c, a                                       ; $7258: $4F
    ld h, h                                       ; $7259: $64
    add hl, sp                                    ; $725A: $39
    ld b, h                                       ; $725B: $44
    ld h, [hl]                                    ; $725C: $66
    ret nz                                        ; $725D: $C0

    ld e, h                                       ; $725E: $5C
    ld hl, $4269                                  ; $725F: $21 $69 $42
    ld b, h                                       ; $7262: $44
    dec b                                         ; $7263: $05
    nop                                           ; $7264: $00
    add c                                         ; $7265: $81
    ld e, l                                       ; $7266: $5D
    ld c, $09                                     ; $7267: $0E $09

jr_023_7269:
    jp nz, $00D0                                  ; $7269: $C2 $D0 $00

    jr nz, jr_023_7269                            ; $726C: $20 $FB

    ld d, b                                       ; $726E: $50
    ld [hl+], a                                   ; $726F: $22
    inc b                                         ; $7270: $04
    ld b, b                                       ; $7271: $40
    dec b                                         ; $7272: $05
    ld [bc], a                                    ; $7273: $02
    db $ED                                        ; $7274: $ED
    ld h, e                                       ; $7275: $63
    rlca                                          ; $7276: $07
    dec b                                         ; $7277: $05
    ld l, e                                       ; $7278: $6B
    ret nc                                        ; $7279: $D0

    nop                                           ; $727A: $00
    ld c, $FA                                     ; $727B: $0E $FA
    ld d, e                                       ; $727D: $53
    inc hl                                        ; $727E: $23
    sub e                                         ; $727F: $93
    ld [hl], d                                    ; $7280: $72
    ld l, e                                       ; $7281: $6B
    jr nc, jr_023_728E                            ; $7282: $30 $0A

    or b                                          ; $7284: $B0
    ld c, b                                       ; $7285: $48
    nop                                           ; $7286: $00
    add b                                         ; $7287: $80
    nop                                           ; $7288: $00
    dec bc                                        ; $7289: $0B
    nop                                           ; $728A: $00
    dec bc                                        ; $728B: $0B
    ld [bc], a                                    ; $728C: $02
    nop                                           ; $728D: $00

jr_023_728E:
    add d                                         ; $728E: $82
    rra                                           ; $728F: $1F
    inc hl                                        ; $7290: $23
    sub h                                         ; $7291: $94
    ld b, d                                       ; $7292: $42
    ld e, e                                       ; $7293: $5B
    inc hl                                        ; $7294: $23
    sbc e                                         ; $7295: $9B
    ld [hl], d                                    ; $7296: $72
    ld b, l                                       ; $7297: $45
    ld c, $35                                     ; $7298: $0E $35
    ld d, l                                       ; $729A: $55
    ld b, e                                       ; $729B: $43
    ld bc, $A224                                  ; $729C: $01 $24 $A2
    inc hl                                        ; $729F: $23
    ld a, [c]                                     ; $72A0: $F2
    ld [hl], d                                    ; $72A1: $72
    sbc e                                         ; $72A2: $9B
    ld c, b                                       ; $72A3: $48
    ld b, [hl]                                    ; $72A4: $46
    sbc a                                         ; $72A5: $9F
    ld e, c                                       ; $72A6: $59
    ld l, a                                       ; $72A7: $6F
    ld [hl], l                                    ; $72A8: $75
    jr nz, @+$75                                  ; $72A9: $20 $73

    ld l, b                                       ; $72AB: $68
    ld l, a                                       ; $72AC: $6F
    ld [hl], l                                    ; $72AD: $75
    ld l, h                                       ; $72AE: $6C
    ld h, h                                       ; $72AF: $64
    jr nz, @+$69                                  ; $72B0: $20 $67

    ld l, a                                       ; $72B2: $6F
    rst $38                                       ; $72B3: $FF
    halt                                          ; $72B4: $76
    ld l, c                                       ; $72B5: $69
    ld [hl], e                                    ; $72B6: $73
    ld l, c                                       ; $72B7: $69
    ld [hl], h                                    ; $72B8: $74
    jr nz, @+$52                                  ; $72B9: $20 $50

    ld [hl], d                                    ; $72BB: $72
    ld [hl], l                                    ; $72BC: $75
    ld l, c                                       ; $72BD: $69
    ld [hl], h                                    ; $72BE: $74
    ld [hl], h                                    ; $72BF: $74
    ld l, $FE                                     ; $72C0: $2E $FE
    ld c, b                                       ; $72C2: $48
    ld h, l                                       ; $72C3: $65
    ld [hl], d                                    ; $72C4: $72
    jr nz, jr_023_733A                            ; $72C5: $20 $73

    ld l, b                                       ; $72C7: $68
    ld l, a                                       ; $72C8: $6F
    ld [hl], b                                    ; $72C9: $70
    jr nz, jr_023_7335                            ; $72CA: $20 $69

    ld [hl], e                                    ; $72CC: $73
    jr nz, @+$6B                                  ; $72CD: $20 $69

    ld l, [hl]                                    ; $72CF: $6E
    rst $38                                       ; $72D0: $FF
    ld [hl], h                                    ; $72D1: $74
    ld l, b                                       ; $72D2: $68
    ld h, l                                       ; $72D3: $65
    jr nz, jr_023_7329                            ; $72D4: $20 $53

    ld l, a                                       ; $72D6: $6F
    ld [hl], l                                    ; $72D7: $75
    ld [hl], h                                    ; $72D8: $74
    ld l, b                                       ; $72D9: $68
    ld h, l                                       ; $72DA: $65
    ld h, c                                       ; $72DB: $61
    ld [hl], e                                    ; $72DC: $73
    ld [hl], h                                    ; $72DD: $74
    cp $6F                                        ; $72DE: $FE $6F
    ld h, [hl]                                    ; $72E0: $66
    jr nz, jr_023_7339                            ; $72E1: $20 $56

    ld h, c                                       ; $72E3: $61
    ld [hl], e                                    ; $72E4: $73
    ld l, b                                       ; $72E5: $68
    jr nz, jr_023_7336                            ; $72E6: $20 $4E

    ld h, c                                       ; $72E8: $61
    ld [hl], d                                    ; $72E9: $72
    ld l, a                                       ; $72EA: $6F
    ld l, a                                       ; $72EB: $6F
    ld l, l                                       ; $72EC: $6D
    ld l, $FE                                     ; $72ED: $2E $FE
    db $FD                                        ; $72EF: $FD
    sbc d                                         ; $72F0: $9A
    ld [de], a                                    ; $72F1: $12
    sbc e                                         ; $72F2: $9B
    ld c, b                                       ; $72F3: $48
    ld b, [hl]                                    ; $72F4: $46
    sbc a                                         ; $72F5: $9F
    ld c, b                                       ; $72F6: $48
    ld h, l                                       ; $72F7: $65
    ld a, c                                       ; $72F8: $79
    jr nz, @+$56                                  ; $72F9: $20 $54

    ld l, a                                       ; $72FB: $6F
    ld l, [hl]                                    ; $72FC: $6E
    ld a, c                                       ; $72FD: $79
    ld hl, $7920                                  ; $72FE: $21 $20 $79
    ld l, a                                       ; $7301: $6F
    ld [hl], l                                    ; $7302: $75
    rst $38                                       ; $7303: $FF
    ld [hl], e                                    ; $7304: $73
    ld l, b                                       ; $7305: $68
    ld l, a                                       ; $7306: $6F
    ld [hl], l                                    ; $7307: $75
    ld l, h                                       ; $7308: $6C
    ld h, h                                       ; $7309: $64
    jr nz, @+$65                                  ; $730A: $20 $63

    ld l, b                                       ; $730C: $68
    ld h, l                                       ; $730D: $65
    ld h, e                                       ; $730E: $63
    ld l, e                                       ; $730F: $6B
    cp $6F                                        ; $7310: $FE $6F
    ld [hl], l                                    ; $7312: $75
    ld [hl], h                                    ; $7313: $74
    jr nz, @+$76                                  ; $7314: $20 $74

    ld l, b                                       ; $7316: $68
    ld h, l                                       ; $7317: $65
    jr nz, @+$74                                  ; $7318: $20 $72

    ld h, l                                       ; $731A: $65
    ld [hl], e                                    ; $731B: $73
    ld [hl], h                                    ; $731C: $74
    jr nz, @+$71                                  ; $731D: $20 $6F

    ld h, [hl]                                    ; $731F: $66
    rst $38                                       ; $7320: $FF
    ld d, [hl]                                    ; $7321: $56
    ld h, c                                       ; $7322: $61
    ld [hl], e                                    ; $7323: $73
    ld l, b                                       ; $7324: $68
    jr nz, @+$50                                  ; $7325: $20 $4E

    ld h, c                                       ; $7327: $61
    ld [hl], d                                    ; $7328: $72

jr_023_7329:
    ld l, a                                       ; $7329: $6F
    ld l, a                                       ; $732A: $6F
    ld l, l                                       ; $732B: $6D
    ld l, $FE                                     ; $732C: $2E $FE
    ld c, l                                       ; $732E: $4D
    ld h, c                                       ; $732F: $61
    ld l, e                                       ; $7330: $6B
    ld h, l                                       ; $7331: $65
    jr nz, @+$75                                  ; $7332: $20 $73

    ld [hl], l                                    ; $7334: $75

jr_023_7335:
    ld [hl], d                                    ; $7335: $72

jr_023_7336:
    ld h, l                                       ; $7336: $65
    jr nz, @+$7B                                  ; $7337: $20 $79

jr_023_7339:
    ld l, a                                       ; $7339: $6F

jr_023_733A:
    ld [hl], l                                    ; $733A: $75
    rst $38                                       ; $733B: $FF
    ld [hl], h                                    ; $733C: $74
    ld h, c                                       ; $733D: $61
    ld l, h                                       ; $733E: $6C
    ld l, e                                       ; $733F: $6B
    jr nz, @+$79                                  ; $7340: $20 $77

    ld l, c                                       ; $7342: $69
    ld [hl], h                                    ; $7343: $74
    ld l, b                                       ; $7344: $68
    jr nz, @+$52                                  ; $7345: $20 $50

    ld l, a                                       ; $7347: $6F
    ld h, c                                       ; $7348: $61
    ld h, h                                       ; $7349: $64
    cp $61                                        ; $734A: $FE $61
    ld l, [hl]                                    ; $734C: $6E
    ld h, h                                       ; $734D: $64
    jr nz, @+$47                                  ; $734E: $20 $45

    halt                                          ; $7350: $76
    ld [hl], l                                    ; $7351: $75
    ld l, $FE                                     ; $7352: $2E $FE
    db $FD                                        ; $7354: $FD
    sbc d                                         ; $7355: $9A
    ld [de], a                                    ; $7356: $12

    db $93, $65, $B1, $43, $4F, $64, $39, $44, $66, $C0, $5C, $21, $69, $42, $44, $05
    db $00, $6B, $4A, $0D, $06, $85, $D0, $00, $23, $B1, $73, $22, $04, $40, $05, $02
    db $ED, $63, $05, $06, $7D, $D0, $00, $23, $E6, $73, $23, $A7, $75, $05, $03, $6B
    db $4A, $05, $05, $69, $D0, $30, $23, $B3, $74, $22, $04, $40, $0B, $02, $0B, $03
    db $6B, $30, $0A, $B0, $48, $00, $80, $00, $6B, $27, $0A, $D0, $71, $00, $83, $00
    db $84, $05, $06, $1F, $23, $94, $A9, $02, $00, $42, $15, $20, $B3, $4F, $04, $20
    db $DD, $4F, $68, $20, $BF, $50, $00, $00, $5B, $23, $E7, $77, $62, $01, $15, $20
    db $E7, $50, $10, $00, $62, $05, $40, $08, $14, $20, $AB, $50, $62, $2A, $14, $20
    db $E7, $50, $40, $30, $14, $20, $BF, $50, $40, $50, $14, $20, $E7, $50, $42, $14
    db $0E, $F0, $53, $5B, $23, $FF, $75, $5F, $40, $16, $15, $0E, $22, $54, $18, $0E
    db $F0, $53, $28, $0E, $18, $54, $18, $00, $14, $0E, $F0, $53, $62, $01, $15, $0E
    db $80, $53, $04, $0E, $90, $53, $18, $0E, $04, $54, $10, $0E, $A0, $53, $30, $0E
    db $0E, $54, $10, $0E, $90, $53, $30, $0E, $04, $54, $10, $0E, $A0, $53, $30, $0E
    db $0E, $54, $10, $0E, $90, $53, $30, $0E, $04, $54, $10, $0E, $A0, $53, $18, $00
    db $14, $0E, $F0, $53, $60, $52, $40, $16, $15, $0E, $22, $54, $18, $0E, $F0, $53
    db $28, $0E, $18, $54, $18, $00, $14, $0E, $F0, $53, $62, $04, $14, $0E, $22, $54
    db $62, $01, $15, $0E, $F0, $53, $20, $0E, $22, $54, $00, $00, $62, $05, $15, $0E
    db $70, $53, $10, $0E, $0E, $54, $10, $0E, $0E, $54, $00, $00, $62, $01, $14, $0E
    db $36, $54, $62, $0B, $14, $0E, $0E, $54, $62, $2A, $40, $20, $14, $0E, $36, $54
    db $40, $60, $14, $0E, $36, $54, $5B, $23, $28, $7A, $62, $32, $07, $00, $81, $5D
    db $09, $00, $20, $AB, $50, $15, $0E, $A0, $53, $20, $0E, $70, $53, $04, $0E, $F0
    db $53, $30, $0E, $04, $54, $08, $0E, $FA, $53, $00, $00, $42, $14, $0F, $65, $56
    db $5F, $15, $0F, $0B, $56, $18, $0F, $79, $56, $10, $0F, $FB, $55, $30, $0F, $6F
    db $56, $10, $0F, $0B, $56, $18, $00, $14, $0F, $65, $56, $5F, $15, $0F, $DB, $55
    db $08, $0F, $5B, $56, $00, $00, $5F, $15, $0F, $83, $56, $06, $0F, $8D, $56, $06
    db $0F, $83, $56, $06, $0F, $8D, $56, $06, $0F, $5B, $56, $20, $0F, $65, $56, $20
    db $0F, $EB, $55, $08, $0F, $65, $56, $00, $00, $5F, $15, $0F, $1B, $56, $08, $0F
    db $2B, $56, $08, $0F, $3B, $56, $08, $0F, $4B, $56, $08, $0F, $65, $56, $08, $0F
    db $4B, $56, $08, $0F, $1B, $56, $08, $0F, $3B, $56, $08, $0F, $2B, $56, $08, $0F
    db $65, $56, $20, $0F, $97, $56, $08, $0F, $A1, $56, $08, $0F, $97, $56, $08, $0F
    db $65, $56, $00, $00, $5F, $56, $52, $0B, $00, $15, $0F, $0B, $56, $18, $0F, $79
    db $56, $10, $0F, $FB, $55, $30, $0F, $6F, $56, $10, $0F, $0B, $56, $18, $00, $14
    db $0F, $A1, $56, $62, $05, $15, $0F, $0B, $56, $18, $0F, $65, $56, $00, $00, $62
    db $0C, $15, $0F, $DB, $55, $08, $0F, $5B, $56, $20, $0F, $65, $56, $00, $00, $5B
    db $23, $04, $79, $5F, $40, $20, $15, $0F, $EB, $55, $08, $0F, $65, $56, $10, $00
    db $5B, $23, $58, $79, $62, $01, $14, $0F, $6F, $56, $62, $2A, $15, $0F, $FB, $55
    db $10, $0F, $EB, $55, $18, $0F, $0B, $56, $38, $0F, $DB, $55, $78, $00, $19

    ld b, d                                       ; $75A6: $42
    ld e, e                                       ; $75A7: $5B
    inc hl                                        ; $75A8: $23
    xor a                                         ; $75A9: $AF
    ld [hl], l                                    ; $75AA: $75
    ld b, l                                       ; $75AB: $45
    ld c, $35                                     ; $75AC: $0E $35
    ld d, l                                       ; $75AE: $55
    sbc e                                         ; $75AF: $9B
    ld c, b                                       ; $75B0: $48
    ld b, [hl]                                    ; $75B1: $46
    sbc a                                         ; $75B2: $9F
    ld e, c                                       ; $75B3: $59
    ld l, a                                       ; $75B4: $6F
    ld [hl], l                                    ; $75B5: $75
    jr nz, @+$75                                  ; $75B6: $20 $73

    ld l, b                                       ; $75B8: $68
    ld l, a                                       ; $75B9: $6F
    ld [hl], l                                    ; $75BA: $75
    ld l, h                                       ; $75BB: $6C
    ld h, h                                       ; $75BC: $64
    jr nz, @+$69                                  ; $75BD: $20 $67

    ld l, a                                       ; $75BF: $6F
    rst $38                                       ; $75C0: $FF
    halt                                          ; $75C1: $76
    ld l, c                                       ; $75C2: $69
    ld [hl], e                                    ; $75C3: $73
    ld l, c                                       ; $75C4: $69
    ld [hl], h                                    ; $75C5: $74
    jr nz, @+$52                                  ; $75C6: $20 $50

    ld [hl], d                                    ; $75C8: $72
    ld [hl], l                                    ; $75C9: $75
    ld l, c                                       ; $75CA: $69
    ld [hl], h                                    ; $75CB: $74
    ld [hl], h                                    ; $75CC: $74
    ld l, $FE                                     ; $75CD: $2E $FE
    ld c, b                                       ; $75CF: $48
    ld h, l                                       ; $75D0: $65
    ld [hl], d                                    ; $75D1: $72
    jr nz, @+$75                                  ; $75D2: $20 $73

    ld l, b                                       ; $75D4: $68
    ld l, a                                       ; $75D5: $6F
    ld [hl], b                                    ; $75D6: $70
    jr nz, @+$6B                                  ; $75D7: $20 $69

    ld [hl], e                                    ; $75D9: $73
    jr nz, @+$6B                                  ; $75DA: $20 $69

    ld l, [hl]                                    ; $75DC: $6E
    rst $38                                       ; $75DD: $FF
    ld [hl], h                                    ; $75DE: $74
    ld l, b                                       ; $75DF: $68
    ld h, l                                       ; $75E0: $65
    jr nz, @+$55                                  ; $75E1: $20 $53

    ld l, a                                       ; $75E3: $6F
    ld [hl], l                                    ; $75E4: $75
    ld [hl], h                                    ; $75E5: $74
    ld l, b                                       ; $75E6: $68
    ld h, l                                       ; $75E7: $65
    ld h, c                                       ; $75E8: $61
    ld [hl], e                                    ; $75E9: $73
    ld [hl], h                                    ; $75EA: $74
    cp $6F                                        ; $75EB: $FE $6F
    ld h, [hl]                                    ; $75ED: $66
    jr nz, @+$58                                  ; $75EE: $20 $56

    ld h, c                                       ; $75F0: $61
    ld [hl], e                                    ; $75F1: $73
    ld l, b                                       ; $75F2: $68
    jr nz, @+$50                                  ; $75F3: $20 $4E

    ld h, c                                       ; $75F5: $61
    ld [hl], d                                    ; $75F6: $72
    ld l, a                                       ; $75F7: $6F
    ld l, a                                       ; $75F8: $6F
    ld l, l                                       ; $75F9: $6D
    ld l, $FE                                     ; $75FA: $2E $FE
    db $FD                                        ; $75FC: $FD
    sbc d                                         ; $75FD: $9A
    ld [de], a                                    ; $75FE: $12

    db $9B, $88, $65, $9F, $4E, $6F, $21, $20, $49, $20, $77, $69, $6C, $6C, $20, $6E
    db $6F, $74, $FF, $67, $6F, $20, $74, $68, $72, $6F, $75, $67, $68, $20, $74, $68
    db $69, $73, $20, $FE, $61, $67, $61, $69, $6E, $21, $FE, $FD, $55, $9B, $48, $46
    db $9F, $42, $75, $74, $20, $4F, $72, $77, $69, $6E, $2E, $2E, $2E, $FE, $FD, $9B
    db $88, $65, $9F, $4E, $4F, $2C, $20, $45, $69, $64, $6F, $6E, $21, $20, $59, $6F
    db $75, $FF, $74, $68, $69, $6E, $6B, $20, $73, $6F, $6D, $65, $6F, $6E, $65, $FE
    db $69, $73, $20, $4B, $79, $72, $6F, $73, $20, $65, $76, $65, $72, $79, $FF, $79
    db $65, $61, $72, $21, $20, $4C, $65, $74, $27, $73, $FE, $73, $65, $65, $2C, $20
    db $77, $68, $6F, $20, $77, $61, $73, $20, $69, $74, $FF, $6C, $61, $73, $74, $20
    db $79, $65, $61, $72, $3F, $FE, $50, $6F, $61, $64, $3F, $20, $57, $68, $61, $74
    db $20, $77, $65, $72, $65, $FF, $79, $6F, $75, $20, $74, $68, $69, $6E, $6B, $69
    db $6E, $67, $3F, $21, $FE, $FD, $58, $01, $9B, $48, $46, $9F, $49, $20, $63, $6F
    db $75, $6C, $64, $20, $68, $61, $76, $65, $FF, $73, $77, $6F, $72, $6E, $20, $74
    db $68, $65, $20, $66, $6F, $6F, $64, $FE, $68, $65, $20, $63, $6F, $6F, $6B, $65
    db $64, $20, $67, $61, $76, $65, $FF, $6D, $65, $20, $73, $75, $70, $65, $72, $68
    db $75, $6D, $61, $6E, $FE, $73, $74, $72, $65, $6E, $67, $74, $68, $21, $20, $42
    db $75, $74, $FF, $74, $68, $69, $73, $20, $74, $69, $6D, $65, $2D, $FE, $FD, $55
    db $9B, $88, $65, $9F, $2E, $2E, $2E, $61, $6E, $64, $20, $62, $65, $66, $6F, $72
    db $65, $FF, $74, $68, $61, $74, $20, $77, $61, $73, $20, $59, $61, $6B, $69, $21
    db $FE, $57, $65, $20, $63, $6F, $75, $6C, $64, $6E, $27, $74, $FE, $73, $68, $75
    db $74, $20, $68, $69, $6D, $20, $75, $70, $20, $66, $6F, $72, $FF, $6D, $6F, $6E
    db $74, $68, $73, $21, $20, $48, $65, $20, $77, $65, $6E, $74, $FE, $61, $72, $6F
    db $75, $6E, $64, $20, $73, $68, $6F, $75, $74, $69, $6E, $67, $FF, $FD, $55, $9F
    db $4F, $4F, $4F, $48, $20, $59, $45, $41, $48, $21, $20, $49, $27, $4D, $FE, $54
    db $48, $45, $20, $47, $52, $45, $41, $54, $20, $4D, $41, $47, $55, $53, $FF, $4B
    db $59, $52, $4F, $53, $21, $20, $44, $49, $47, $20, $49, $54, $21, $FE, $57, $4F
    db $4F, $21, $FE, $FD, $9B, $48, $46, $9F, $4F, $6B, $61, $79, $2C, $20, $6F, $6B
    db $61, $79, $2C, $20, $49, $27, $6D, $FF, $53, $4F, $52, $52, $59, $21, $21, $20
    db $49, $66, $FE, $79, $6F, $75, $27, $64, $20, $6A, $75, $73, $74, $FF, $6C, $69
    db $73, $74, $65, $6E, $2C, $20, $74, $68, $69, $73, $FE, $74, $69, $6D, $65, $2E
    db $2E, $2E, $FE, $FD, $9A, $58, $01, $42, $9B, $48, $46, $9F, $2E, $2E, $2E, $2E
    db $2E, $2E, $2E, $2E, $2E, $FE, $FD, $9B, $88, $65, $9F, $41, $68, $2C, $20, $74
    db $68, $69, $73, $20, $6D, $75, $73, $74, $FF, $FD, $58, $04, $9F, $62, $65, $20
    db $74, $68, $65, $20, $62, $6F, $79, $2E, $FE, $FD, $9B, $48, $46, $9F, $59, $65
    db $73, $2E, $20, $54, $6F, $6E, $79, $2C, $20, $49, $27, $64, $FF, $6C, $69, $6B
    db $65, $20, $79, $6F, $75, $20, $74, $6F, $FE, $6D, $65, $65, $74, $20, $4F, $72
    db $77, $69, $6E, $2C, $FF, $45, $6C, $64, $65, $72, $20, $6F, $66, $20, $56, $61
    db $73, $68, $FE, $4E, $61, $72, $6F, $6F, $6D, $2E, $FE, $FD, $58, $01, $40, $20
    db $9B, $78, $70, $9F, $4E, $69, $63, $65, $20, $74, $6F, $20, $6D, $65, $65, $74
    db $FF, $79, $6F, $75, $2E, $FE, $FD, $58, $05, $9B, $88, $65, $9F, $59, $65, $73
    db $2C, $20, $79, $65, $73, $2E, $20, $53, $6F, $FF, $79, $6F, $75, $20, $77, $69
    db $73, $68, $20, $74, $6F, $20, $67, $65, $74, $FE, $68, $6F, $6D, $65, $2C, $20
    db $72, $69, $67, $68, $74, $3F, $FE, $57, $68, $65, $72, $65, $20, $64, $69, $64
    db $20, $79, $6F, $75, $FE, $73, $61, $79, $20, $79, $6F, $75, $20, $77, $65, $72
    db $65, $FE, $66, $72, $6F, $6D, $3F, $FE, $FD, $58, $01, $9B, $78, $70, $9F, $54
    db $61, $76, $65, $6C, $20, $47, $6F, $72, $67, $65, $2E, $FE, $FD, $58, $0B, $9B
    db $88, $65, $9F, $54, $61, $76, $65, $6C, $2E, $2E, $2E, $FE, $FD, $9F, $47, $6F
    db $72, $67, $65, $2E, $2E, $2E, $3F, $FF, $48, $6D, $6D, $6D, $2E, $2E, $2E, $FE
    db $FD, $9A, $58, $0C, $42, $9B, $88, $65, $9F, $49, $27, $76, $65, $20, $62, $65
    db $65, $6E, $20, $66, $72, $6F, $6D, $FF, $68, $65, $72, $65, $20, $74, $6F, $20
    db $4F, $72, $6F, $74, $68, $65, $FE, $61, $6E, $64, $20, $62, $61, $63, $6B, $2C
    db $20, $62, $75, $74, $FF, $74, $68, $61, $74, $20, $6E, $61, $6D, $65, $FE, $64
    db $6F, $65, $73, $6E, $27, $74, $20, $72, $69, $6E, $67, $20, $61, $FF, $62, $65
    db $6C, $6C, $2E, $FE, $FD, $9A, $58, $01, $42, $9B, $88, $65, $9F, $57, $65, $6C
    db $6C, $2C, $20, $74, $68, $69, $73, $20, $69, $73, $20, $61, $FF, $64, $69, $6C
    db $65, $6D, $6D, $61, $2E, $20, $49, $20, $77, $69, $6C, $6C, $FE, $74, $72, $79
    db $20, $74, $6F, $20, $66, $69, $67, $75, $72, $65, $FF, $6F, $75, $74, $20, $61
    db $20, $77, $61, $79, $20, $74, $6F, $FE, $67, $65, $74, $20, $79, $6F, $75, $20
    db $68, $6F, $6D, $65, $2C, $FF, $62, $75, $74, $20, $79, $6F, $75, $20, $6D, $75
    db $73, $74, $FE, $73, $74, $61, $79, $20, $69, $6E, $20, $74, $6F, $77, $6E, $FF
    db $75, $6E, $74, $69, $6C, $20, $74, $68, $65, $6E, $2E, $FE, $FD, $9B, $48, $46
    db $9F, $49, $20, $74, $6F, $6C, $64, $20, $79, $6F, $75, $2C, $20, $49, $FF, $64
    db $6F, $6E, $27, $74, $20, $74, $68, $69, $6E, $6B, $FE, $68, $65, $27, $73, $20
    db $66, $72, $6F, $6D, $20, $74, $68, $69, $73, $FF, $77, $6F, $72, $6C, $64, $2E
    db $FE, $FD, $58, $01, $9B, $88, $65, $9F, $51, $75, $69, $65, $74, $20, $79, $6F
    db $75, $21, $20, $49, $FF, $6E, $65, $65, $64, $20, $74, $6F, $20, $74, $68, $69
    db $6E, $6B, $2E, $FE, $FD, $9A, $58, $2A, $42, $9B, $78, $70, $9F, $53, $6F, $2E
    db $2E, $2E, $20, $77, $68, $61, $74, $20, $6E, $6F, $77, $3F, $FE, $FD, $9B, $48
    db $46, $9F, $57, $65, $6C, $6C, $2C, $20, $49, $20, $67, $75, $65, $73, $73, $FF
    db $79, $6F, $75, $27, $6C, $6C, $20, $68, $61, $76, $65, $20, $74, $6F, $FE, $73
    db $74, $61, $79, $20, $69, $6E, $20, $74, $6F, $77, $6E, $2E, $FF, $57, $65, $27
    db $6C, $6C, $20, $67, $65, $74, $20, $79, $6F, $75, $FE, $6F, $75, $74, $20, $6F
    db $66, $20, $68, $65, $72, $65, $FF, $73, $6F, $6F, $6E, $20, $65, $6E, $6F, $75
    db $67, $68, $2E, $20, $49, $6E, $FE, $74, $68, $65, $20, $6D, $65, $61, $6E, $20
    db $74, $69, $6D, $65, $2C, $FF, $74, $61, $6B, $65, $20, $79, $6F, $75, $72, $FE
    db $63, $72, $79, $73, $74, $61, $6C, $20, $74, $6F, $FF, $50, $72, $75, $69, $74
    db $74, $2C, $20, $74, $68, $65, $FE, $52, $69, $6E, $67, $73, $6D, $69, $74, $68
    db $2E, $20, $49, $66, $FF, $79, $6F, $75, $20, $67, $65, $74, $20, $68, $75, $6E
    db $67, $72, $79, $2C, $FE, $67, $6F, $20, $73, $65, $65, $20, $50, $6F, $61, $64
    db $20, $61, $74, $FF, $74, $68, $65, $20, $49, $6E, $6E, $2E, $FE, $FD, $9A, $58
    db $32, $42

    ld [bc], a                                    ; $7B01: $02
    add hl, bc                                    ; $7B02: $09
    ld [$000F], sp                                ; $7B03: $08 $0F $00
    ld b, l                                       ; $7B06: $45
    inc hl                                        ; $7B07: $23
    sbc $71                                       ; $7B08: $DE $71
    sbc e                                         ; $7B0A: $9B
    ld a, b                                       ; $7B0B: $78
    ld [hl], b                                    ; $7B0C: $70
    sbc a                                         ; $7B0D: $9F
    ld c, a                                       ; $7B0E: $4F
    ld [hl], d                                    ; $7B0F: $72
    ld [hl], a                                    ; $7B10: $77
    ld l, c                                       ; $7B11: $69
    ld l, [hl]                                    ; $7B12: $6E
    daa                                           ; $7B13: $27
    ld [hl], e                                    ; $7B14: $73
    ld l, $2E                                     ; $7B15: $2E $2E
    ld l, $FF                                     ; $7B17: $2E $FF
    ld h, e                                       ; $7B19: $63
    ld h, l                                       ; $7B1A: $65
    ld l, h                                       ; $7B1B: $6C
    ld h, l                                       ; $7B1C: $65
    ld [hl], e                                    ; $7B1D: $73
    ld [hl], h                                    ; $7B1E: $74
    ld l, c                                       ; $7B1F: $69
    ld h, c                                       ; $7B20: $61
    ld l, h                                       ; $7B21: $6C
    ld l, $2E                                     ; $7B22: $2E $2E
    ld l, $2E                                     ; $7B24: $2E $2E
    cp $2E                                        ; $7B26: $FE $2E
    ld l, $2E                                     ; $7B28: $2E $2E
    ld [hl], h                                    ; $7B2A: $74
    ld l, b                                       ; $7B2B: $68
    ld l, c                                       ; $7B2C: $69
    ld l, [hl]                                    ; $7B2D: $6E

jr_023_7B2E:
    ld h, a                                       ; $7B2E: $67
    ld l, $FE                                     ; $7B2F: $2E $FE
    db $FD                                        ; $7B31: $FD
    sbc d                                         ; $7B32: $9A
    ld b, d                                       ; $7B33: $42
    sbc e                                         ; $7B34: $9B
    adc b                                         ; $7B35: $88
    ld h, l                                       ; $7B36: $65
    sbc a                                         ; $7B37: $9F
    ld b, h                                       ; $7B38: $44
    ld l, a                                       ; $7B39: $6F
    ld l, [hl]                                    ; $7B3A: $6E
    daa                                           ; $7B3B: $27
    ld [hl], h                                    ; $7B3C: $74
    jr nz, jr_023_7B85                            ; $7B3D: $20 $46

    ld l, a                                       ; $7B3F: $6F
    ld l, h                                       ; $7B40: $6C
    ld l, h                                       ; $7B41: $6C
    ld l, a                                       ; $7B42: $6F
    ld [hl], a                                    ; $7B43: $77
    rst $38                                       ; $7B44: $FF
    ld b, l                                       ; $7B45: $45
    ld l, c                                       ; $7B46: $69
    ld h, h                                       ; $7B47: $64
    ld l, a                                       ; $7B48: $6F
    ld l, [hl]                                    ; $7B49: $6E
    jr nz, @+$71                                  ; $7B4A: $20 $6F

    ld l, [hl]                                    ; $7B4C: $6E
    cp $73                                        ; $7B4D: $FE $73
    ld l, a                                       ; $7B4F: $6F
    ld l, l                                       ; $7B50: $6D
    ld h, l                                       ; $7B51: $65
    jr nz, jr_023_7BBA                            ; $7B52: $20 $66

jr_023_7B54:
    ld l, a                                       ; $7B54: $6F
    ld l, a                                       ; $7B55: $6F
    ld l, h                                       ; $7B56: $6C
    ld l, c                                       ; $7B57: $69
    ld [hl], e                                    ; $7B58: $73
    ld l, b                                       ; $7B59: $68
    rst $38                                       ; $7B5A: $FF
    ld l, l                                       ; $7B5B: $6D
    ld l, c                                       ; $7B5C: $69
    ld [hl], e                                    ; $7B5D: $73
    ld [hl], e                                    ; $7B5E: $73
    ld l, c                                       ; $7B5F: $69
    ld l, a                                       ; $7B60: $6F
    ld l, [hl]                                    ; $7B61: $6E
    ld hl, $FDFE                                  ; $7B62: $21 $FE $FD
    sbc d                                         ; $7B65: $9A
    ld e, b                                       ; $7B66: $58
    ld bc, $9342                                  ; $7B67: $01 $42 $93
    ld h, l                                       ; $7B6A: $65
    ret nz                                        ; $7B6B: $C0

    ld b, e                                       ; $7B6C: $43
    ld c, a                                       ; $7B6D: $4F
    ld h, h                                       ; $7B6E: $64
    ld c, e                                       ; $7B6F: $4B
    ld b, h                                       ; $7B70: $44
    ld h, [hl]                                    ; $7B71: $66
    ret nz                                        ; $7B72: $C0

    ld e, h                                       ; $7B73: $5C
    ld hl, $5069                                  ; $7B74: $21 $69 $50
    ld b, h                                       ; $7B77: $44
    dec b                                         ; $7B78: $05
    nop                                           ; $7B79: $00
    add c                                         ; $7B7A: $81
    ld e, l                                       ; $7B7B: $5D
    ld a, [bc]                                    ; $7B7C: $0A
    rrca                                          ; $7B7D: $0F
    call c, $00D0                                 ; $7B7E: $DC $D0 $00
    jr nz, jr_023_7B2E                            ; $7B81: $20 $AB

    ld d, b                                       ; $7B83: $50
    ld [hl+], a                                   ; $7B84: $22

jr_023_7B85:
    dec b                                         ; $7B85: $05
    ld b, b                                       ; $7B86: $40
    dec bc                                        ; $7B87: $0B
    nop                                           ; $7B88: $00
    nop                                           ; $7B89: $00
    add d                                         ; $7B8A: $82
    rra                                           ; $7B8B: $1F
    ld a, [de]                                    ; $7B8C: $1A
    sub h                                         ; $7B8D: $94
    ld b, d                                       ; $7B8E: $42
    sub e                                         ; $7B8F: $93
    ld h, l                                       ; $7B90: $65
    ret nz                                        ; $7B91: $C0

    ld b, e                                       ; $7B92: $43
    ld c, a                                       ; $7B93: $4F
    ld h, h                                       ; $7B94: $64
    ld c, e                                       ; $7B95: $4B
    ld b, h                                       ; $7B96: $44
    ld h, [hl]                                    ; $7B97: $66
    ret nz                                        ; $7B98: $C0

    ld e, h                                       ; $7B99: $5C
    ld hl, $5069                                  ; $7B9A: $21 $69 $50
    ld b, h                                       ; $7B9D: $44
    dec b                                         ; $7B9E: $05
    nop                                           ; $7B9F: $00
    add c                                         ; $7BA0: $81
    ld e, l                                       ; $7BA1: $5D
    ld a, [bc]                                    ; $7BA2: $0A
    rrca                                          ; $7BA3: $0F
    call c, $00D0                                 ; $7BA4: $DC $D0 $00
    jr nz, jr_023_7B54                            ; $7BA7: $20 $AB

    ld d, b                                       ; $7BA9: $50
    ld [hl+], a                                   ; $7BAA: $22
    dec b                                         ; $7BAB: $05
    ld b, b                                       ; $7BAC: $40
    dec b                                         ; $7BAD: $05
    ld [bc], a                                    ; $7BAE: $02
    db $ED                                        ; $7BAF: $ED
    ld h, e                                       ; $7BB0: $63
    dec b                                         ; $7BB1: $05
    ld a, [bc]                                    ; $7BB2: $0A
    sub c                                         ; $7BB3: $91
    ret nc                                        ; $7BB4: $D0

    nop                                           ; $7BB5: $00
    rrca                                          ; $7BB6: $0F
    ld e, e                                       ; $7BB7: $5B
    ld d, [hl]                                    ; $7BB8: $56
    inc hl                                        ; $7BB9: $23

jr_023_7BBA:
    adc $7B                                       ; $7BBA: $CE $7B
    ld l, e                                       ; $7BBC: $6B
    jr nc, jr_023_7BC9                            ; $7BBD: $30 $0A

    ret nc                                        ; $7BBF: $D0

    ld [hl], c                                    ; $7BC0: $71
    nop                                           ; $7BC1: $00
    add b                                         ; $7BC2: $80
    nop                                           ; $7BC3: $00
    dec bc                                        ; $7BC4: $0B
    nop                                           ; $7BC5: $00
    dec bc                                        ; $7BC6: $0B
    ld [bc], a                                    ; $7BC7: $02
    nop                                           ; $7BC8: $00

jr_023_7BC9:
    add d                                         ; $7BC9: $82
    rra                                           ; $7BCA: $1F
    db $10                                        ; $7BCB: $10
    sub h                                         ; $7BCC: $94
    ld b, d                                       ; $7BCD: $42
    ld e, e                                       ; $7BCE: $5B
    inc hl                                        ; $7BCF: $23
    sub $7B                                       ; $7BD0: $D6 $7B
    ld b, l                                       ; $7BD2: $45
    rrca                                          ; $7BD3: $0F
    ld a, [de]                                    ; $7BD4: $1A
    ld d, a                                       ; $7BD5: $57
    sbc e                                         ; $7BD6: $9B
    adc b                                         ; $7BD7: $88
    ld h, l                                       ; $7BD8: $65
    sbc a                                         ; $7BD9: $9F
    ld d, e                                       ; $7BDA: $53
    ld l, a                                       ; $7BDB: $6F
    ld [hl], d                                    ; $7BDC: $72
    ld [hl], d                                    ; $7BDD: $72
    ld a, c                                       ; $7BDE: $79
    jr nz, jr_023_7C47                            ; $7BDF: $20 $66

    ld l, a                                       ; $7BE1: $6F
    ld [hl], d                                    ; $7BE2: $72
    jr nz, jr_023_7C47                            ; $7BE3: $20 $62

    ld h, l                                       ; $7BE5: $65
    ld l, c                                       ; $7BE6: $69
    ld l, [hl]                                    ; $7BE7: $6E
    ld h, a                                       ; $7BE8: $67
    rst $38                                       ; $7BE9: $FF
    ld [hl], e                                    ; $7BEA: $73
    ld l, a                                       ; $7BEB: $6F
    jr nz, @+$65                                  ; $7BEC: $20 $63

    ld l, b                                       ; $7BEE: $68
    ld l, c                                       ; $7BEF: $69
    ld l, h                                       ; $7BF0: $6C
    ld h, h                                       ; $7BF1: $64
    ld l, c                                       ; $7BF2: $69
    ld [hl], e                                    ; $7BF3: $73
    ld l, b                                       ; $7BF4: $68
    ld l, $FE                                     ; $7BF5: $2E $FE
    ld c, c                                       ; $7BF7: $49
    jr nz, @+$6A                                  ; $7BF8: $20 $68

    ld l, a                                       ; $7BFA: $6F
    ld [hl], b                                    ; $7BFB: $70
    ld h, l                                       ; $7BFC: $65

jr_023_7BFD:
    jr nz, jr_023_7C73                            ; $7BFD: $20 $74

    ld l, b                                       ; $7BFF: $68
    ld h, l                                       ; $7C00: $65
    ld [hl], d                                    ; $7C01: $72
    ld h, l                                       ; $7C02: $65
    rst $38                                       ; $7C03: $FF
    ld h, c                                       ; $7C04: $61
    ld [hl], d                                    ; $7C05: $72
    ld h, l                                       ; $7C06: $65
    ld l, [hl]                                    ; $7C07: $6E
    daa                                           ; $7C08: $27
    ld [hl], h                                    ; $7C09: $74
    jr nz, jr_023_7C6D                            ; $7C0A: $20 $61

    ld l, [hl]                                    ; $7C0C: $6E
    ld a, c                                       ; $7C0D: $79
    jr nz, jr_023_7C78                            ; $7C0E: $20 $68

    ld h, c                                       ; $7C10: $61
    ld [hl], d                                    ; $7C11: $72
    ld h, h                                       ; $7C12: $64
    cp $66                                        ; $7C13: $FE $66
    ld h, l                                       ; $7C15: $65
    ld h, l                                       ; $7C16: $65
    ld l, h                                       ; $7C17: $6C
    ld l, c                                       ; $7C18: $69
    ld l, [hl]                                    ; $7C19: $6E
    ld h, a                                       ; $7C1A: $67
    ld [hl], e                                    ; $7C1B: $73
    ld l, $FE                                     ; $7C1C: $2E $FE
    db $FD                                        ; $7C1E: $FD
    sbc d                                         ; $7C1F: $9A
    ld e, b                                       ; $7C20: $58
    ld bc, $4342                                  ; $7C21: $01 $42 $43
    inc de                                        ; $7C24: $13
    inc b                                         ; $7C25: $04
    dec b                                         ; $7C26: $05
    inc bc                                        ; $7C27: $03
    inc hl                                        ; $7C28: $23
    ld e, [hl]                                    ; $7C29: $5E
    ld a, h                                       ; $7C2A: $7C
    ld c, e                                       ; $7C2B: $4B
    inc b                                         ; $7C2C: $04

jr_023_7C2D:
    inc hl                                        ; $7C2D: $23
    add hl, de                                    ; $7C2E: $19
    nop                                           ; $7C2F: $00
    ld l, c                                       ; $7C30: $69
    ld a, e                                       ; $7C31: $7B
    inc hl                                        ; $7C32: $23
    ld a, [de]                                    ; $7C33: $1A
    nop                                           ; $7C34: $00
    adc a                                         ; $7C35: $8F
    ld a, e                                       ; $7C36: $7B
    rst $38                                       ; $7C37: $FF
    sub e                                         ; $7C38: $93
    ld h, l                                       ; $7C39: $65
    ret nz                                        ; $7C3A: $C0

    ld b, e                                       ; $7C3B: $43
    ld c, a                                       ; $7C3C: $4F
    ld h, h                                       ; $7C3D: $64
    ld c, e                                       ; $7C3E: $4B
    ld b, h                                       ; $7C3F: $44
    ld h, [hl]                                    ; $7C40: $66
    ret nz                                        ; $7C41: $C0

    ld e, h                                       ; $7C42: $5C
    ld hl, $5069                                  ; $7C43: $21 $69 $50
    ld b, h                                       ; $7C46: $44

jr_023_7C47:
    dec b                                         ; $7C47: $05
    nop                                           ; $7C48: $00
    add c                                         ; $7C49: $81
    ld e, l                                       ; $7C4A: $5D
    ld a, [bc]                                    ; $7C4B: $0A
    rrca                                          ; $7C4C: $0F
    call c, $00D0                                 ; $7C4D: $DC $D0 $00
    jr nz, jr_023_7BFD                            ; $7C50: $20 $AB

    ld d, b                                       ; $7C52: $50
    ld [hl+], a                                   ; $7C53: $22
    dec b                                         ; $7C54: $05
    ld b, b                                       ; $7C55: $40
    dec bc                                        ; $7C56: $0B
    nop                                           ; $7C57: $00
    nop                                           ; $7C58: $00
    add d                                         ; $7C59: $82
    rra                                           ; $7C5A: $1F
    inc hl                                        ; $7C5B: $23
    sub h                                         ; $7C5C: $94
    ld b, d                                       ; $7C5D: $42
    ld b, e                                       ; $7C5E: $43
    rrca                                          ; $7C5F: $0F
    ld bc, $A224                                  ; $7C60: $01 $24 $A2
    dec b                                         ; $7C63: $05
    inc b                                         ; $7C64: $04
    inc hl                                        ; $7C65: $23
    jr c, jr_023_7CE4                             ; $7C66: $38 $7C

    sub e                                         ; $7C68: $93
    ld h, l                                       ; $7C69: $65
    ret nz                                        ; $7C6A: $C0

    ld b, e                                       ; $7C6B: $43
    ld c, a                                       ; $7C6C: $4F

jr_023_7C6D:
    ld h, h                                       ; $7C6D: $64
    ld c, e                                       ; $7C6E: $4B
    ld b, h                                       ; $7C6F: $44
    ld h, [hl]                                    ; $7C70: $66
    ret nz                                        ; $7C71: $C0

    ld e, h                                       ; $7C72: $5C

jr_023_7C73:
    ld hl, $5069                                  ; $7C73: $21 $69 $50
    ld b, h                                       ; $7C76: $44
    dec b                                         ; $7C77: $05

jr_023_7C78:
    nop                                           ; $7C78: $00
    add c                                         ; $7C79: $81
    ld e, l                                       ; $7C7A: $5D
    ld a, [bc]                                    ; $7C7B: $0A
    rrca                                          ; $7C7C: $0F
    call c, $00D0                                 ; $7C7D: $DC $D0 $00
    jr nz, jr_023_7C2D                            ; $7C80: $20 $AB

    ld d, b                                       ; $7C82: $50
    ld [hl+], a                                   ; $7C83: $22
    dec b                                         ; $7C84: $05
    ld b, b                                       ; $7C85: $40
    dec b                                         ; $7C86: $05
    ld [bc], a                                    ; $7C87: $02
    db $ED                                        ; $7C88: $ED
    ld h, e                                       ; $7C89: $63
    rlca                                          ; $7C8A: $07
    ld a, [bc]                                    ; $7C8B: $0A
    sub e                                         ; $7C8C: $93
    ret nc                                        ; $7C8D: $D0

    nop                                           ; $7C8E: $00
    rrca                                          ; $7C8F: $0F
    ld e, e                                       ; $7C90: $5B
    ld d, [hl]                                    ; $7C91: $56
    inc hl                                        ; $7C92: $23
    and a                                         ; $7C93: $A7
    ld a, h                                       ; $7C94: $7C
    ld l, e                                       ; $7C95: $6B
    daa                                           ; $7C96: $27
    ld a, [bc]                                    ; $7C97: $0A
    ret nc                                        ; $7C98: $D0

    ld [hl], c                                    ; $7C99: $71
    nop                                           ; $7C9A: $00
    add b                                         ; $7C9B: $80
    nop                                           ; $7C9C: $00
    dec bc                                        ; $7C9D: $0B
    nop                                           ; $7C9E: $00
    dec bc                                        ; $7C9F: $0B
    ld [bc], a                                    ; $7CA0: $02
    nop                                           ; $7CA1: $00
    add d                                         ; $7CA2: $82
    rra                                           ; $7CA3: $1F
    inc hl                                        ; $7CA4: $23
    sub h                                         ; $7CA5: $94
    ld b, d                                       ; $7CA6: $42
    ld e, e                                       ; $7CA7: $5B
    inc hl                                        ; $7CA8: $23
    inc [hl]                                      ; $7CA9: $34
    ld a, e                                       ; $7CAA: $7B
    ld b, l                                       ; $7CAB: $45
    rrca                                          ; $7CAC: $0F
    ld a, [de]                                    ; $7CAD: $1A
    ld d, a                                       ; $7CAE: $57
    sub e                                         ; $7CAF: $93
    ld h, l                                       ; $7CB0: $65
    ret nz                                        ; $7CB1: $C0

    ld b, e                                       ; $7CB2: $43
    ld c, a                                       ; $7CB3: $4F
    ld h, h                                       ; $7CB4: $64
    ld c, e                                       ; $7CB5: $4B
    ld b, h                                       ; $7CB6: $44
    ld h, [hl]                                    ; $7CB7: $66
    ret nz                                        ; $7CB8: $C0

    ld e, h                                       ; $7CB9: $5C
    ld hl, $5069                                  ; $7CBA: $21 $69 $50
    ld b, h                                       ; $7CBD: $44
    dec b                                         ; $7CBE: $05
    nop                                           ; $7CBF: $00
    ld l, e                                       ; $7CC0: $6B
    ld c, d                                       ; $7CC1: $4A
    rlca                                          ; $7CC2: $07
    ld a, [bc]                                    ; $7CC3: $0A
    sub e                                         ; $7CC4: $93
    ret nc                                        ; $7CC5: $D0

    nop                                           ; $7CC6: $00
    inc hl                                        ; $7CC7: $23
    dec b                                         ; $7CC8: $05
    ld a, l                                       ; $7CC9: $7D
    ld [hl+], a                                   ; $7CCA: $22
    dec b                                         ; $7CCB: $05
    ld b, b                                       ; $7CCC: $40
    dec b                                         ; $7CCD: $05
    ld [bc], a                                    ; $7CCE: $02
    ld l, e                                       ; $7CCF: $6B
    ld c, d                                       ; $7CD0: $4A
    ld a, [bc]                                    ; $7CD1: $0A
    rrca                                          ; $7CD2: $0F
    call c, $2CD0                                 ; $7CD3: $DC $D0 $2C
    inc hl                                        ; $7CD6: $23
    add a                                         ; $7CD7: $87
    ld a, l                                       ; $7CD8: $7D
    ld [hl+], a                                   ; $7CD9: $22
    dec b                                         ; $7CDA: $05
    ld b, b                                       ; $7CDB: $40
    dec bc                                        ; $7CDC: $0B
    nop                                           ; $7CDD: $00
    ld l, e                                       ; $7CDE: $6B
    inc l                                         ; $7CDF: $2C
    ld a, [bc]                                    ; $7CE0: $0A
    or b                                          ; $7CE1: $B0
    ld c, b                                       ; $7CE2: $48
    nop                                           ; $7CE3: $00

jr_023_7CE4:
    add b                                         ; $7CE4: $80
    nop                                           ; $7CE5: $00
    ld l, e                                       ; $7CE6: $6B
    ld a, [hl+]                                   ; $7CE7: $2A
    dec bc                                        ; $7CE8: $0B
    or b                                          ; $7CE9: $B0
    ld d, [hl]                                    ; $7CEA: $56
    ret nz                                        ; $7CEB: $C0

    add d                                         ; $7CEC: $82
    nop                                           ; $7CED: $00
    add h                                         ; $7CEE: $84
    ld b, $05                                     ; $7CEF: $06 $05
    sub h                                         ; $7CF1: $94
    ld b, b                                       ; $7CF2: $40
    add b                                         ; $7CF3: $80
    ld e, d                                       ; $7CF4: $5A
    inc hl                                        ; $7CF5: $23
    or b                                          ; $7CF6: $B0
    ld a, l                                       ; $7CF7: $7D
    ld b, b                                       ; $7CF8: $40
    and b                                         ; $7CF9: $A0
    ld e, d                                       ; $7CFA: $5A
    dec hl                                        ; $7CFB: $2B
    ld h, b                                       ; $7CFC: $60
    ld h, c                                       ; $7CFD: $61
    ld h, b                                       ; $7CFE: $60
    ld bc, $1D45                                  ; $7CFF: $01 $45 $1D
    rst $28                                       ; $7D02: $EF
    ld c, a                                       ; $7D03: $4F
    ld b, d                                       ; $7D04: $42
    dec d                                         ; $7D05: $15
    ld c, $F0                                     ; $7D06: $0E $F0
    ld d, e                                       ; $7D08: $53
    ret nz                                        ; $7D09: $C0

    ld c, $18                                     ; $7D0A: $0E $18
    ld d, h                                       ; $7D0C: $54
    ld b, b                                       ; $7D0D: $40
    ld c, $F0                                     ; $7D0E: $0E $F0
    ld d, e                                       ; $7D10: $53
    ld [$220E], sp                                ; $7D11: $08 $0E $22
    ld d, h                                       ; $7D14: $54
    ld b, b                                       ; $7D15: $40
    ld c, $F0                                     ; $7D16: $0E $F0
    ld d, e                                       ; $7D18: $53
    jr nz, jr_023_7D29                            ; $7D19: $20 $0E

    and b                                         ; $7D1B: $A0
    ld d, e                                       ; $7D1C: $53
    jr nz, jr_023_7D2D                            ; $7D1D: $20 $0E

    ldh a, [rHDMA3]                               ; $7D1F: $F0 $53
    db $10                                        ; $7D21: $10
    ld c, $18                                     ; $7D22: $0E $18
    ld d, h                                       ; $7D24: $54
    jr nz, jr_023_7D35                            ; $7D25: $20 $0E

    add b                                         ; $7D27: $80
    ld d, e                                       ; $7D28: $53

jr_023_7D29:
    db $10                                        ; $7D29: $10
    ld c, $90                                     ; $7D2A: $0E $90
    ld d, e                                       ; $7D2C: $53

jr_023_7D2D:
    ld b, b                                       ; $7D2D: $40
    ld c, $F0                                     ; $7D2E: $0E $F0
    ld d, e                                       ; $7D30: $53
    nop                                           ; $7D31: $00
    nop                                           ; $7D32: $00
    dec bc                                        ; $7D33: $0B
    ld [bc], a                                    ; $7D34: $02

jr_023_7D35:
    dec d                                         ; $7D35: $15
    ld c, $F0                                     ; $7D36: $0E $F0
    ld d, e                                       ; $7D38: $53
    db $10                                        ; $7D39: $10
    ld c, $70                                     ; $7D3A: $0E $70
    ld d, e                                       ; $7D3C: $53
    db $10                                        ; $7D3D: $10
    ld c, $F0                                     ; $7D3E: $0E $F0
    ld d, e                                       ; $7D40: $53
    db $10                                        ; $7D41: $10
    ld c, $22                                     ; $7D42: $0E $22
    ld d, h                                       ; $7D44: $54
    ld b, b                                       ; $7D45: $40
    ld c, $F0                                     ; $7D46: $0E $F0
    ld d, e                                       ; $7D48: $53
    ld b, b                                       ; $7D49: $40
    nop                                           ; $7D4A: $00
    ld e, h                                       ; $7D4B: $5C
    nop                                           ; $7D4C: $00
    ld [bc], a                                    ; $7D4D: $02
    dec d                                         ; $7D4E: $15
    ld c, $F0                                     ; $7D4F: $0E $F0
    ld d, e                                       ; $7D51: $53
    db $10                                        ; $7D52: $10
    ld c, $36                                     ; $7D53: $0E $36
    ld d, h                                       ; $7D55: $54
    ld b, b                                       ; $7D56: $40
    ld c, $0E                                     ; $7D57: $0E $0E
    ld d, h                                       ; $7D59: $54
    db $10                                        ; $7D5A: $10
    ld c, $22                                     ; $7D5B: $0E $22
    ld d, h                                       ; $7D5D: $54
    ld [$F00E], sp                                ; $7D5E: $08 $0E $F0
    ld d, e                                       ; $7D61: $53
    ld b, b                                       ; $7D62: $40
    ld c, $0E                                     ; $7D63: $0E $0E
    ld d, h                                       ; $7D65: $54
    ld [$800E], sp                                ; $7D66: $08 $0E $80
    ld d, e                                       ; $7D69: $53
    stop                                          ; $7D6A: $10 $00
    ld e, d                                       ; $7D6C: $5A
    dec hl                                        ; $7D6D: $2B
    ld d, l                                       ; $7D6E: $55
    ld h, c                                       ; $7D6F: $61
    dec d                                         ; $7D70: $15
    ld c, $E0                                     ; $7D71: $0E $E0
    ld d, e                                       ; $7D73: $53
    jr z, @+$10                                   ; $7D74: $28 $0E

    ret nz                                        ; $7D76: $C0

    ld d, e                                       ; $7D77: $53
    jr nz, jr_023_7D88                            ; $7D78: $20 $0E

    ldh a, [rHDMA3]                               ; $7D7A: $F0 $53
    ld [hl], h                                    ; $7D7C: $74
    nop                                           ; $7D7D: $00
    ld e, d                                       ; $7D7E: $5A
    dec hl                                        ; $7D7F: $2B
    ld h, b                                       ; $7D80: $60
    ld h, c                                       ; $7D81: $61
    ld b, b                                       ; $7D82: $40
    jr nz, jr_023_7DDB                            ; $7D83: $20 $56

    ld bc, $1542                                  ; $7D85: $01 $42 $15

jr_023_7D88:
    rrca                                          ; $7D88: $0F
    push de                                       ; $7D89: $D5
    ld e, b                                       ; $7D8A: $58
    ld b, b                                       ; $7D8B: $40
    rrca                                          ; $7D8C: $0F
    push af                                       ; $7D8D: $F5
    ld e, b                                       ; $7D8E: $58
    ld b, b                                       ; $7D8F: $40
    rrca                                          ; $7D90: $0F
    ld a, l                                       ; $7D91: $7D
    ld e, c                                       ; $7D92: $59
    ld h, b                                       ; $7D93: $60
    rrca                                          ; $7D94: $0F
    ld d, l                                       ; $7D95: $55
    ld e, c                                       ; $7D96: $59
    ld h, b                                       ; $7D97: $60
    nop                                           ; $7D98: $00
    ld e, h                                       ; $7D99: $5C
    nop                                           ; $7D9A: $00
    ld [bc], a                                    ; $7D9B: $02
    dec d                                         ; $7D9C: $15
    rrca                                          ; $7D9D: $0F
    ld a, l                                       ; $7D9E: $7D
    ld e, c                                       ; $7D9F: $59
    ld b, b                                       ; $7DA0: $40
    rrca                                          ; $7DA1: $0F
    dec b                                         ; $7DA2: $05
    ld e, c                                       ; $7DA3: $59
    ld b, b                                       ; $7DA4: $40
    rrca                                          ; $7DA5: $0F
    push hl                                       ; $7DA6: $E5
    ld e, b                                       ; $7DA7: $58
    ld b, b                                       ; $7DA8: $40
    rrca                                          ; $7DA9: $0F
    ld e, a                                       ; $7DAA: $5F
    ld e, c                                       ; $7DAB: $59
    nop                                           ; $7DAC: $00
    nop                                           ; $7DAD: $00
    add hl, de                                    ; $7DAE: $19
    ld b, d                                       ; $7DAF: $42
    add e                                         ; $7DB0: $83
    ld bc, $0100                                  ; $7DB1: $01 $00 $01
    ld bc, $0000                                  ; $7DB4: $01 $00 $00
    nop                                           ; $7DB7: $00
    ld b, [hl]                                    ; $7DB8: $46
    or b                                          ; $7DB9: $B0
    ld a, l                                       ; $7DBA: $7D
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

jr_023_7DDB:
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
