SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    ld bc, $161D                                  ; $4000: $01 $1D $16
    ld b, l                                       ; $4003: $45
    cpl                                           ; $4004: $2F
    adc a                                         ; $4005: $8F
    ld b, l                                       ; $4006: $45
    ld [bc], a                                    ; $4007: $02
    inc l                                         ; $4008: $2C
    nop                                           ; $4009: $00
    add hl, bc                                    ; $400A: $09
    dec bc                                        ; $400B: $0B
    ld b, l                                       ; $400C: $45

jr_01A_400D:
    ld a, [de]                                    ; $400D: $1A
    ld e, c                                       ; $400E: $59
    ld b, c                                       ; $400F: $41
    ld [bc], a                                    ; $4010: $02
    ld a, [de]                                    ; $4011: $1A
    nop                                           ; $4012: $00
    jr jr_01A_4015                                ; $4013: $18 $00

jr_01A_4015:
    ld b, l                                       ; $4015: $45
    ld a, [de]                                    ; $4016: $1A
    adc l                                         ; $4017: $8D
    ld b, [hl]                                    ; $4018: $46
    ld [bc], a                                    ; $4019: $02
    nop                                           ; $401A: $00
    nop                                           ; $401B: $00
    nop                                           ; $401C: $00
    nop                                           ; $401D: $00
    jr nc, jr_01A_400D                            ; $401E: $30 $ED

    ld d, [hl]                                    ; $4020: $56
    inc c                                         ; $4021: $0C
    ld b, a                                       ; $4022: $47
    ld [$3C1A], sp                                ; $4023: $08 $1A $3C
    ld b, b                                       ; $4026: $40
    ld a, [de]                                    ; $4027: $1A
    ld e, b                                       ; $4028: $58
    ld b, b                                       ; $4029: $40
    ld a, [de]                                    ; $402A: $1A
    ld l, l                                       ; $402B: $6D
    ld b, b                                       ; $402C: $40
    ld a, [de]                                    ; $402D: $1A
    ld a, e                                       ; $402E: $7B
    ld b, b                                       ; $402F: $40
    ld a, [de]                                    ; $4030: $1A
    sub b                                         ; $4031: $90
    ld b, b                                       ; $4032: $40
    ld a, [de]                                    ; $4033: $1A
    and [hl]                                      ; $4034: $A6
    ld b, b                                       ; $4035: $40
    ld a, [de]                                    ; $4036: $1A
    jp nz, $1A40                                  ; $4037: $C2 $40 $1A

    rst $10                                       ; $403A: $D7
    ld b, b                                       ; $403B: $40
    dec h                                         ; $403C: $25
    ld [bc], a                                    ; $403D: $02
    ld l, h                                       ; $403E: $6C
    add hl, de                                    ; $403F: $19
    ld c, h                                       ; $4040: $4C
    inc hl                                        ; $4041: $23
    ld b, b                                       ; $4042: $40
    ld l, $09                                     ; $4043: $2E $09
    rra                                           ; $4045: $1F
    jr @+$34                                      ; $4046: $18 $32

    ld bc, $2E2B                                  ; $4048: $01 $2B $2E
    add hl, bc                                    ; $404B: $09
    rla                                           ; $404C: $17
    dec d                                         ; $404D: $15
    ld a, [hl+]                                   ; $404E: $2A
    ld bc, $2E2B                                  ; $404F: $01 $2B $2E
    add hl, bc                                    ; $4052: $09
    dec hl                                        ; $4053: $2B
    dec d                                         ; $4054: $15
    add hl, hl                                    ; $4055: $29
    ld bc, $2527                                  ; $4056: $01 $27 $25
    ld [bc], a                                    ; $4059: $02
    ld l, h                                       ; $405A: $6C
    rla                                           ; $405B: $17
    ld c, h                                       ; $405C: $4C
    inc hl                                        ; $405D: $23
    ld b, b                                       ; $405E: $40
    ld l, $09                                     ; $405F: $2E $09
    inc a                                         ; $4061: $3C
    jr jr_01A_4095                                ; $4062: $18 $31

    ld bc, $2E2B                                  ; $4064: $01 $2B $2E
    add hl, bc                                    ; $4067: $09
    rra                                           ; $4068: $1F
    ld d, $2C                                     ; $4069: $16 $2C
    ld bc, $2527                                  ; $406B: $01 $27 $25
    ld [bc], a                                    ; $406E: $02
    ld l, h                                       ; $406F: $6C
    jr @+$4E                                      ; $4070: $18 $4C

    inc hl                                        ; $4072: $23
    ld b, b                                       ; $4073: $40
    ld l, $09                                     ; $4074: $2E $09
    rla                                           ; $4076: $17
    jr jr_01A_40AA                                ; $4077: $18 $31

    ld bc, $2527                                  ; $4079: $01 $27 $25
    ld [bc], a                                    ; $407C: $02
    ld l, h                                       ; $407D: $6C
    add hl, de                                    ; $407E: $19
    ld c, h                                       ; $407F: $4C
    inc hl                                        ; $4080: $23
    ld b, b                                       ; $4081: $40
    ld l, $09                                     ; $4082: $2E $09
    dec hl                                        ; $4084: $2B
    jr jr_01A_40B9                                ; $4085: $18 $32

    ld bc, $2E2B                                  ; $4087: $01 $2B $2E
    add hl, bc                                    ; $408A: $09
    ld d, $16                                     ; $408B: $16 $16
    dec l                                         ; $408D: $2D
    ld bc, $2527                                  ; $408E: $01 $27 $25
    ld [bc], a                                    ; $4091: $02
    ld l, h                                       ; $4092: $6C
    jr jr_01A_40E1                                ; $4093: $18 $4C

jr_01A_4095:
    inc hl                                        ; $4095: $23
    ld b, b                                       ; $4096: $40
    ld l, $09                                     ; $4097: $2E $09
    ld a, $19                                     ; $4099: $3E $19
    inc [hl]                                      ; $409B: $34
    ld bc, $2B2B                                  ; $409C: $01 $2B $2B
    ld l, $09                                     ; $409F: $2E $09
    rra                                           ; $40A1: $1F
    rla                                           ; $40A2: $17
    ld l, $01                                     ; $40A3: $2E $01
    daa                                           ; $40A5: $27
    dec h                                         ; $40A6: $25
    ld [bc], a                                    ; $40A7: $02
    ld l, h                                       ; $40A8: $6C
    add hl, de                                    ; $40A9: $19

jr_01A_40AA:
    ld c, h                                       ; $40AA: $4C
    inc hl                                        ; $40AB: $23
    ld b, b                                       ; $40AC: $40
    ld l, $09                                     ; $40AD: $2E $09
    rla                                           ; $40AF: $17
    add hl, de                                    ; $40B0: $19
    inc sp                                        ; $40B1: $33
    ld bc, $2E2B                                  ; $40B2: $01 $2B $2E
    add hl, bc                                    ; $40B5: $09
    dec hl                                        ; $40B6: $2B
    jr jr_01A_40EA                                ; $40B7: $18 $31

jr_01A_40B9:
    ld bc, $2E2B                                  ; $40B9: $01 $2B $2E
    add hl, bc                                    ; $40BC: $09
    ld d, $16                                     ; $40BD: $16 $16
    inc l                                         ; $40BF: $2C
    ld bc, $2527                                  ; $40C0: $01 $27 $25
    ld [bc], a                                    ; $40C3: $02
    ld l, h                                       ; $40C4: $6C
    rla                                           ; $40C5: $17
    ld c, h                                       ; $40C6: $4C
    inc hl                                        ; $40C7: $23
    ld b, b                                       ; $40C8: $40
    ld l, $09                                     ; $40C9: $2E $09
    dec hl                                        ; $40CB: $2B
    jr @+$34                                      ; $40CC: $18 $32

    ld bc, $2E2B                                  ; $40CE: $01 $2B $2E
    add hl, bc                                    ; $40D1: $09
    ld d, $16                                     ; $40D2: $16 $16
    inc l                                         ; $40D4: $2C
    ld bc, $2527                                  ; $40D5: $01 $27 $25
    ld [bc], a                                    ; $40D8: $02
    ld l, h                                       ; $40D9: $6C
    jr jr_01A_4128                                ; $40DA: $18 $4C

    inc hl                                        ; $40DC: $23
    ld b, b                                       ; $40DD: $40
    ld l, $09                                     ; $40DE: $2E $09
    rra                                           ; $40E0: $1F

jr_01A_40E1:
    add hl, de                                    ; $40E1: $19
    inc sp                                        ; $40E2: $33
    ld bc, $2E2B                                  ; $40E3: $01 $2B $2E
    add hl, bc                                    ; $40E6: $09
    dec hl                                        ; $40E7: $2B
    jr @+$33                                      ; $40E8: $18 $31

jr_01A_40EA:
    ld bc, $2E2B                                  ; $40EA: $01 $2B $2E
    add hl, bc                                    ; $40ED: $09
    inc a                                         ; $40EE: $3C
    rla                                           ; $40EF: $17
    ld l, $01                                     ; $40F0: $2E $01
    daa                                           ; $40F2: $27
    sub e                                         ; $40F3: $93
    ld h, l                                       ; $40F4: $65
    sbc l                                         ; $40F5: $9D
    ld c, b                                       ; $40F6: $48
    ld c, a                                       ; $40F7: $4F
    ld h, h                                       ; $40F8: $64
    ld [hl], $4C                                  ; $40F9: $36 $4C
    ld h, [hl]                                    ; $40FB: $66
    ret nz                                        ; $40FC: $C0

    ld e, h                                       ; $40FD: $5C
    ld hl, $0005                                  ; $40FE: $21 $05 $00
    add c                                         ; $4101: $81
    ld e, l                                       ; $4102: $5D
    dec b                                         ; $4103: $05
    dec b                                         ; $4104: $05

jr_01A_4105:
    and $D0                                       ; $4105: $E6 $D0
    nop                                           ; $4107: $00
    jr nz, jr_01A_4105                            ; $4108: $20 $FB

    ld d, b                                       ; $410A: $50
    ld [hl+], a                                   ; $410B: $22
    dec b                                         ; $410C: $05
    ld b, b                                       ; $410D: $40
    dec bc                                        ; $410E: $0B
    nop                                           ; $410F: $00
    dec b                                         ; $4110: $05
    jr nz, jr_01A_40E1                            ; $4111: $20 $CE

    ld h, e                                       ; $4113: $63
    ld a, [bc]                                    ; $4114: $0A
    add hl, bc                                    ; $4115: $09
    sbc a                                         ; $4116: $9F
    pop de                                        ; $4117: $D1
    nop                                           ; $4118: $00
    ld [hl+], a                                   ; $4119: $22
    jp c, $1A40                                   ; $411A: $DA $40 $1A

    add hl, de                                    ; $411D: $19
    ld b, b                                       ; $411E: $40
    dec b                                         ; $411F: $05
    rra                                           ; $4120: $1F
    adc $63                                       ; $4121: $CE $63
    ld a, [bc]                                    ; $4123: $0A
    add hl, bc                                    ; $4124: $09
    sbc a                                         ; $4125: $9F
    pop de                                        ; $4126: $D1
    nop                                           ; $4127: $00

jr_01A_4128:
    ld [hl+], a                                   ; $4128: $22
    jp c, $1A40                                   ; $4129: $DA $40 $1A

    add hl, de                                    ; $412C: $19
    ld b, b                                       ; $412D: $40
    dec bc                                        ; $412E: $0B
    jr nz, @+$0D                                  ; $412F: $20 $0B

    rra                                           ; $4131: $1F
    ld l, e                                       ; $4132: $6B
    inc [hl]                                      ; $4133: $34
    dec c                                         ; $4134: $0D
    jr nc, @+$6C                                  ; $4135: $30 $6A

    nop                                           ; $4137: $00
    add b                                         ; $4138: $80
    nop                                           ; $4139: $00
    ld sp, $F31A                                  ; $413A: $31 $1A $F3
    ld b, b                                       ; $413D: $40
    ld [hl+], a                                   ; $413E: $22
    adc $40                                       ; $413F: $CE $40
    nop                                           ; $4141: $00
    add d                                         ; $4142: $82
    rra                                           ; $4143: $1F
    ld hl, $4294                                  ; $4144: $21 $94 $42

jr_01A_4147:
    ld [bc], a                                    ; $4147: $02
    nop                                           ; $4148: $00
    inc l                                         ; $4149: $2C
    dec bc                                        ; $414A: $0B
    add hl, bc                                    ; $414B: $09
    ld b, l                                       ; $414C: $45
    ld a, [de]                                    ; $414D: $1A
    di                                            ; $414E: $F3
    ld b, b                                       ; $414F: $40
    ld [bc], a                                    ; $4150: $02
    ld sp, $0A00                                  ; $4151: $31 $00 $0A
    rlca                                          ; $4154: $07
    ld b, l                                       ; $4155: $45
    ld a, [de]                                    ; $4156: $1A
    ret nc                                        ; $4157: $D0

    ld b, c                                       ; $4158: $41
    sub e                                         ; $4159: $93
    ld h, l                                       ; $415A: $65
    xor h                                         ; $415B: $AC
    ld c, b                                       ; $415C: $48
    ld c, a                                       ; $415D: $4F
    ld h, h                                       ; $415E: $64
    ld b, e                                       ; $415F: $43
    ld c, h                                       ; $4160: $4C
    ld h, [hl]                                    ; $4161: $66
    ret nz                                        ; $4162: $C0

    ld e, h                                       ; $4163: $5C
    ld hl, $0005                                  ; $4164: $21 $05 $00
    add c                                         ; $4167: $81
    ld e, l                                       ; $4168: $5D
    dec b                                         ; $4169: $05
    dec b                                         ; $416A: $05

jr_01A_416B:
    rst $38                                       ; $416B: $FF
    ret nc                                        ; $416C: $D0

    nop                                           ; $416D: $00
    jr nz, jr_01A_416B                            ; $416E: $20 $FB

    ld d, b                                       ; $4170: $50
    ld [hl+], a                                   ; $4171: $22
    dec b                                         ; $4172: $05
    ld b, b                                       ; $4173: $40
    dec bc                                        ; $4174: $0B
    nop                                           ; $4175: $00
    dec b                                         ; $4176: $05
    jr nz, jr_01A_4147                            ; $4177: $20 $CE

    ld h, e                                       ; $4179: $63
    ld a, [bc]                                    ; $417A: $0A
    add hl, bc                                    ; $417B: $09
    call z, $00D1                                 ; $417C: $CC $D1 $00
    ld [hl+], a                                   ; $417F: $22
    jp c, $1A40                                   ; $4180: $DA $40 $1A

    add hl, de                                    ; $4183: $19
    ld b, b                                       ; $4184: $40
    dec b                                         ; $4185: $05
    rra                                           ; $4186: $1F
    adc $63                                       ; $4187: $CE $63
    ld a, [bc]                                    ; $4189: $0A
    add hl, bc                                    ; $418A: $09
    call z, $00D1                                 ; $418B: $CC $D1 $00
    ld [hl+], a                                   ; $418E: $22
    jp c, $1A40                                   ; $418F: $DA $40 $1A

    add hl, de                                    ; $4192: $19
    ld b, b                                       ; $4193: $40
    dec bc                                        ; $4194: $0B
    jr nz, @+$0D                                  ; $4195: $20 $0B

    rra                                           ; $4197: $1F
    ld l, e                                       ; $4198: $6B
    inc [hl]                                      ; $4199: $34
    dec c                                         ; $419A: $0D
    jr nc, jr_01A_4207                            ; $419B: $30 $6A

    nop                                           ; $419D: $00
    add b                                         ; $419E: $80
    nop                                           ; $419F: $00
    ld sp, $591A                                  ; $41A0: $31 $1A $59
    ld b, c                                       ; $41A3: $41
    ld [hl+], a                                   ; $41A4: $22
    adc $40                                       ; $41A5: $CE $40
    nop                                           ; $41A7: $00
    add d                                         ; $41A8: $82
    rra                                           ; $41A9: $1F
    ld hl, $4294                                  ; $41AA: $21 $94 $42
    ld [bc], a                                    ; $41AD: $02
    nop                                           ; $41AE: $00
    ld sp, $0A07                                  ; $41AF: $31 $07 $0A
    ld b, l                                       ; $41B2: $45
    ld a, [de]                                    ; $41B3: $1A
    ld e, c                                       ; $41B4: $59
    ld b, c                                       ; $41B5: $41
    ld [bc], a                                    ; $41B6: $02
    daa                                           ; $41B7: $27
    nop                                           ; $41B8: $00
    ld b, $07                                     ; $41B9: $06 $07
    ld b, l                                       ; $41BB: $45
    ld a, [de]                                    ; $41BC: $1A
    add hl, sp                                    ; $41BD: $39
    ld b, d                                       ; $41BE: $42
    ld [bc], a                                    ; $41BF: $02
    ld e, $03                                     ; $41C0: $1E $03
    ld sp, $4500                                  ; $41C2: $31 $00 $45
    ld a, [de]                                    ; $41C5: $1A
    sub a                                         ; $41C6: $97
    ld b, e                                       ; $41C7: $43
    and h                                         ; $41C8: $A4
    dec hl                                        ; $41C9: $2B
    and e                                         ; $41CA: $A3
    inc b                                         ; $41CB: $04
    nop                                           ; $41CC: $00
    ld a, [de]                                    ; $41CD: $1A
    add l                                         ; $41CE: $85
    push de                                       ; $41CF: $D5
    sub e                                         ; $41D0: $93
    ld h, l                                       ; $41D1: $65
    cp e                                          ; $41D2: $BB
    ld c, b                                       ; $41D3: $48
    ld c, a                                       ; $41D4: $4F
    ld h, h                                       ; $41D5: $64
    ld c, h                                       ; $41D6: $4C
    ld c, h                                       ; $41D7: $4C
    ld h, [hl]                                    ; $41D8: $66
    ret nz                                        ; $41D9: $C0

    ld e, h                                       ; $41DA: $5C
    ld hl, $5969                                  ; $41DB: $21 $69 $59
    ld c, h                                       ; $41DE: $4C
    dec b                                         ; $41DF: $05
    nop                                           ; $41E0: $00
    add c                                         ; $41E1: $81
    ld e, l                                       ; $41E2: $5D
    dec b                                         ; $41E3: $05
    dec b                                         ; $41E4: $05

jr_01A_41E5:
    call $00D0                                    ; $41E5: $CD $D0 $00
    jr nz, jr_01A_41E5                            ; $41E8: $20 $FB

    ld d, b                                       ; $41EA: $50
    ld [hl+], a                                   ; $41EB: $22
    dec b                                         ; $41EC: $05
    ld b, b                                       ; $41ED: $40
    dec bc                                        ; $41EE: $0B
    nop                                           ; $41EF: $00
    dec b                                         ; $41F0: $05
    jr nz, @-$30                                  ; $41F1: $20 $CE

    ld h, e                                       ; $41F3: $63
    ld a, [bc]                                    ; $41F4: $0A
    add hl, bc                                    ; $41F5: $09
    ld [hl], d                                    ; $41F6: $72
    pop de                                        ; $41F7: $D1
    nop                                           ; $41F8: $00
    ld [hl+], a                                   ; $41F9: $22
    jp c, $1A40                                   ; $41FA: $DA $40 $1A

    add hl, de                                    ; $41FD: $19
    ld b, b                                       ; $41FE: $40
    dec b                                         ; $41FF: $05
    rra                                           ; $4200: $1F
    adc $63                                       ; $4201: $CE $63
    ld a, [bc]                                    ; $4203: $0A
    add hl, bc                                    ; $4204: $09
    ld [hl], d                                    ; $4205: $72
    pop de                                        ; $4206: $D1

jr_01A_4207:
    nop                                           ; $4207: $00
    ld [hl+], a                                   ; $4208: $22
    jp c, $1A40                                   ; $4209: $DA $40 $1A

    add hl, de                                    ; $420C: $19
    ld b, b                                       ; $420D: $40
    dec bc                                        ; $420E: $0B
    jr nz, @+$0D                                  ; $420F: $20 $0B

    rra                                           ; $4211: $1F
    ld l, e                                       ; $4212: $6B
    inc [hl]                                      ; $4213: $34
    dec c                                         ; $4214: $0D
    jr nc, @+$6C                                  ; $4215: $30 $6A

    nop                                           ; $4217: $00
    add b                                         ; $4218: $80
    nop                                           ; $4219: $00
    ld sp, $D01A                                  ; $421A: $31 $1A $D0
    ld b, c                                       ; $421D: $41
    ld [hl+], a                                   ; $421E: $22
    adc $40                                       ; $421F: $CE $40
    nop                                           ; $4221: $00
    add d                                         ; $4222: $82
    rra                                           ; $4223: $1F
    ld hl, $4294                                  ; $4224: $21 $94 $42

jr_01A_4227:
    ld [bc], a                                    ; $4227: $02
    nop                                           ; $4228: $00
    daa                                           ; $4229: $27
    rlca                                          ; $422A: $07
    ld b, $45                                     ; $422B: $06 $45
    ld a, [de]                                    ; $422D: $1A
    ret nc                                        ; $422E: $D0

    ld b, c                                       ; $422F: $41
    ld [bc], a                                    ; $4230: $02
    ld sp, $1900                                  ; $4231: $31 $00 $19
    ld [$1A45], sp                                ; $4234: $08 $45 $1A
    sbc a                                         ; $4237: $9F
    ld b, d                                       ; $4238: $42
    sub e                                         ; $4239: $93
    ld h, l                                       ; $423A: $65
    jp z, Jump_01A_4F48                           ; $423B: $CA $48 $4F

    ld h, h                                       ; $423E: $64
    ld e, [hl]                                    ; $423F: $5E
    ld c, h                                       ; $4240: $4C
    ld h, [hl]                                    ; $4241: $66
    ret nz                                        ; $4242: $C0

    ld e, h                                       ; $4243: $5C
    ld hl, $0005                                  ; $4244: $21 $05 $00
    add c                                         ; $4247: $81
    ld e, l                                       ; $4248: $5D
    dec b                                         ; $4249: $05
    dec b                                         ; $424A: $05

jr_01A_424B:
    rst $38                                       ; $424B: $FF
    ret nc                                        ; $424C: $D0

    nop                                           ; $424D: $00
    jr nz, jr_01A_424B                            ; $424E: $20 $FB

    ld d, b                                       ; $4250: $50
    ld [hl+], a                                   ; $4251: $22
    dec b                                         ; $4252: $05
    ld b, b                                       ; $4253: $40
    dec bc                                        ; $4254: $0B
    nop                                           ; $4255: $00
    dec b                                         ; $4256: $05
    jr nz, jr_01A_4227                            ; $4257: $20 $CE

    ld h, e                                       ; $4259: $63
    ld a, [bc]                                    ; $425A: $0A
    add hl, bc                                    ; $425B: $09
    call z, $00D1                                 ; $425C: $CC $D1 $00
    ld [hl+], a                                   ; $425F: $22
    jp c, $1A40                                   ; $4260: $DA $40 $1A

    add hl, de                                    ; $4263: $19
    ld b, b                                       ; $4264: $40
    dec b                                         ; $4265: $05
    rra                                           ; $4266: $1F
    adc $63                                       ; $4267: $CE $63
    ld a, [bc]                                    ; $4269: $0A
    add hl, bc                                    ; $426A: $09
    call z, $00D1                                 ; $426B: $CC $D1 $00
    ld [hl+], a                                   ; $426E: $22
    jp c, $1A40                                   ; $426F: $DA $40 $1A

    add hl, de                                    ; $4272: $19
    ld b, b                                       ; $4273: $40
    dec bc                                        ; $4274: $0B
    jr nz, @+$0D                                  ; $4275: $20 $0B

    rra                                           ; $4277: $1F
    ld l, e                                       ; $4278: $6B
    inc [hl]                                      ; $4279: $34
    dec c                                         ; $427A: $0D
    jr nc, @+$6C                                  ; $427B: $30 $6A

    nop                                           ; $427D: $00
    add b                                         ; $427E: $80
    nop                                           ; $427F: $00
    ld sp, $391A                                  ; $4280: $31 $1A $39
    ld b, d                                       ; $4283: $42
    ld [hl+], a                                   ; $4284: $22
    adc $40                                       ; $4285: $CE $40
    nop                                           ; $4287: $00
    add d                                         ; $4288: $82
    sub h                                         ; $4289: $94
    rra                                           ; $428A: $1F
    ld hl, $0242                                  ; $428B: $21 $42 $02
    nop                                           ; $428E: $00
    ld sp, $1908                                  ; $428F: $31 $08 $19
    ld b, l                                       ; $4292: $45
    ld a, [de]                                    ; $4293: $1A
    add hl, sp                                    ; $4294: $39
    ld b, d                                       ; $4295: $42
    ld [bc], a                                    ; $4296: $02
    rlca                                          ; $4297: $07
    jr z, jr_01A_42C1                             ; $4298: $28 $27

    nop                                           ; $429A: $00
    ld b, l                                       ; $429B: $45
    ld a, [de]                                    ; $429C: $1A
    dec d                                         ; $429D: $15
    ld b, e                                       ; $429E: $43
    sub e                                         ; $429F: $93
    ld h, l                                       ; $42A0: $65
    reti                                          ; $42A1: $D9


    ld c, b                                       ; $42A2: $48
    ld c, a                                       ; $42A3: $4F
    ld h, h                                       ; $42A4: $64
    ld h, a                                       ; $42A5: $67
    ld c, h                                       ; $42A6: $4C
    ld h, [hl]                                    ; $42A7: $66
    ret nz                                        ; $42A8: $C0

    ld e, h                                       ; $42A9: $5C
    ld hl, $0005                                  ; $42AA: $21 $05 $00
    add c                                         ; $42AD: $81
    ld e, l                                       ; $42AE: $5D
    dec b                                         ; $42AF: $05
    dec b                                         ; $42B0: $05

jr_01A_42B1:
    ld l, c                                       ; $42B1: $69
    ret nc                                        ; $42B2: $D0

    nop                                           ; $42B3: $00
    jr nz, jr_01A_42B1                            ; $42B4: $20 $FB

    ld d, b                                       ; $42B6: $50
    ld [hl+], a                                   ; $42B7: $22
    dec b                                         ; $42B8: $05
    ld b, b                                       ; $42B9: $40
    dec bc                                        ; $42BA: $0B
    nop                                           ; $42BB: $00
    dec b                                         ; $42BC: $05
    jr nz, @-$30                                  ; $42BD: $20 $CE

    ld h, e                                       ; $42BF: $63
    ld a, [bc]                                    ; $42C0: $0A

jr_01A_42C1:
    add hl, bc                                    ; $42C1: $09
    cp [hl]                                       ; $42C2: $BE
    ret nc                                        ; $42C3: $D0

    nop                                           ; $42C4: $00
    ld [hl+], a                                   ; $42C5: $22
    jp c, $1A40                                   ; $42C6: $DA $40 $1A

    add hl, de                                    ; $42C9: $19
    ld b, b                                       ; $42CA: $40
    dec b                                         ; $42CB: $05
    rra                                           ; $42CC: $1F
    adc $63                                       ; $42CD: $CE $63
    ld a, [bc]                                    ; $42CF: $0A
    add hl, bc                                    ; $42D0: $09
    cp [hl]                                       ; $42D1: $BE
    ret nc                                        ; $42D2: $D0

    nop                                           ; $42D3: $00
    ld [hl+], a                                   ; $42D4: $22
    jp c, $1A40                                   ; $42D5: $DA $40 $1A

    add hl, de                                    ; $42D8: $19
    ld b, b                                       ; $42D9: $40
    dec bc                                        ; $42DA: $0B
    jr nz, @+$0D                                  ; $42DB: $20 $0B

    rra                                           ; $42DD: $1F
    ld l, e                                       ; $42DE: $6B
    inc [hl]                                      ; $42DF: $34
    dec c                                         ; $42E0: $0D
    jr nc, jr_01A_434D                            ; $42E1: $30 $6A

    nop                                           ; $42E3: $00
    add b                                         ; $42E4: $80
    nop                                           ; $42E5: $00
    ld sp, $9F1A                                  ; $42E6: $31 $1A $9F
    ld b, d                                       ; $42E9: $42
    ld [hl+], a                                   ; $42EA: $22
    adc $40                                       ; $42EB: $CE $40
    nop                                           ; $42ED: $00
    add d                                         ; $42EE: $82
    sub h                                         ; $42EF: $94
    rra                                           ; $42F0: $1F
    ld hl, $0242                                  ; $42F1: $21 $42 $02
    jr z, jr_01A_42FD                             ; $42F4: $28 $07

    nop                                           ; $42F6: $00
    daa                                           ; $42F7: $27
    ld b, l                                       ; $42F8: $45
    ld a, [de]                                    ; $42F9: $1A
    sbc a                                         ; $42FA: $9F
    ld b, d                                       ; $42FB: $42
    ld [bc], a                                    ; $42FC: $02

jr_01A_42FD:
    ld [bc], a                                    ; $42FD: $02
    inc hl                                        ; $42FE: $23
    nop                                           ; $42FF: $00
    inc l                                         ; $4300: $2C
    ld b, l                                       ; $4301: $45
    ld a, [de]                                    ; $4302: $1A
    sub a                                         ; $4303: $97
    ld b, e                                       ; $4304: $43
    and h                                         ; $4305: $A4

jr_01A_4306:
    dec hl                                        ; $4306: $2B
    and e                                         ; $4307: $A3
    ld [$1400], sp                                ; $4308: $08 $00 $14
    and $D4                                       ; $430B: $E6 $D4
    and h                                         ; $430D: $A4
    dec hl                                        ; $430E: $2B
    and e                                         ; $430F: $A3
    stop                                          ; $4310: $10 $00
    inc d                                         ; $4312: $14
    ld c, $D5                                     ; $4313: $0E $D5
    sub e                                         ; $4315: $93
    ld h, l                                       ; $4316: $65
    add sp, $48                                   ; $4317: $E8 $48
    ld c, a                                       ; $4319: $4F
    ld h, h                                       ; $431A: $64
    ld [hl], b                                    ; $431B: $70
    ld c, h                                       ; $431C: $4C
    ld h, [hl]                                    ; $431D: $66
    ret nz                                        ; $431E: $C0

    ld e, h                                       ; $431F: $5C
    ld hl, $7969                                  ; $4320: $21 $69 $79
    ld c, h                                       ; $4323: $4C
    dec b                                         ; $4324: $05
    nop                                           ; $4325: $00
    add c                                         ; $4326: $81
    ld e, l                                       ; $4327: $5D
    dec b                                         ; $4328: $05
    dec b                                         ; $4329: $05

jr_01A_432A:
    rst $38                                       ; $432A: $FF
    ret nc                                        ; $432B: $D0

    nop                                           ; $432C: $00
    jr nz, jr_01A_432A                            ; $432D: $20 $FB

    ld d, b                                       ; $432F: $50
    ld [hl+], a                                   ; $4330: $22
    dec b                                         ; $4331: $05
    ld b, b                                       ; $4332: $40
    dec bc                                        ; $4333: $0B
    nop                                           ; $4334: $00
    dec b                                         ; $4335: $05
    jr nz, jr_01A_4306                            ; $4336: $20 $CE

    ld h, e                                       ; $4338: $63
    ld a, [bc]                                    ; $4339: $0A
    add hl, bc                                    ; $433A: $09
    call z, $00D1                                 ; $433B: $CC $D1 $00
    ld [hl+], a                                   ; $433E: $22
    jp c, $1A40                                   ; $433F: $DA $40 $1A

    add hl, de                                    ; $4342: $19
    ld b, b                                       ; $4343: $40
    dec b                                         ; $4344: $05
    rra                                           ; $4345: $1F
    adc $63                                       ; $4346: $CE $63
    ld a, [bc]                                    ; $4348: $0A
    add hl, bc                                    ; $4349: $09
    call z, $00D1                                 ; $434A: $CC $D1 $00

jr_01A_434D:
    ld [hl+], a                                   ; $434D: $22
    jp c, $1A40                                   ; $434E: $DA $40 $1A

    add hl, de                                    ; $4351: $19
    ld b, b                                       ; $4352: $40
    dec bc                                        ; $4353: $0B
    jr nz, @+$0D                                  ; $4354: $20 $0B

    rra                                           ; $4356: $1F
    ld l, e                                       ; $4357: $6B
    inc [hl]                                      ; $4358: $34
    dec c                                         ; $4359: $0D
    jr nc, @+$6C                                  ; $435A: $30 $6A

    nop                                           ; $435C: $00
    add b                                         ; $435D: $80
    nop                                           ; $435E: $00
    ld sp, $151A                                  ; $435F: $31 $1A $15
    ld b, e                                       ; $4362: $43
    ld [hl+], a                                   ; $4363: $22
    adc $40                                       ; $4364: $CE $40
    nop                                           ; $4366: $00
    add d                                         ; $4367: $82
    rra                                           ; $4368: $1F
    ld hl, $4294                                  ; $4369: $21 $94 $42
    ld [bc], a                                    ; $436C: $02
    inc hl                                        ; $436D: $23
    ld [bc], a                                    ; $436E: $02
    inc l                                         ; $436F: $2C
    nop                                           ; $4370: $00
    ld b, l                                       ; $4371: $45
    ld a, [de]                                    ; $4372: $1A
    dec d                                         ; $4373: $15
    ld b, e                                       ; $4374: $43
    ld [bc], a                                    ; $4375: $02
    inc bc                                        ; $4376: $03
    ld e, $00                                     ; $4377: $1E $00
    ld sp, $1A45                                  ; $4379: $31 $45 $1A
    ret nc                                        ; $437C: $D0

    ld b, c                                       ; $437D: $41
    ld [bc], a                                    ; $437E: $02
    nop                                           ; $437F: $00
    daa                                           ; $4380: $27
    ld a, [de]                                    ; $4381: $1A
    ld a, [bc]                                    ; $4382: $0A
    ld b, l                                       ; $4383: $45
    ld a, [de]                                    ; $4384: $1A

jr_01A_4385:
    db $FD                                        ; $4385: $FD
    ld b, e                                       ; $4386: $43
    ld [bc], a                                    ; $4387: $02
    add hl, bc                                    ; $4388: $09
    add hl, hl                                    ; $4389: $29
    inc l                                         ; $438A: $2C
    nop                                           ; $438B: $00
    ld b, l                                       ; $438C: $45
    ld a, [de]                                    ; $438D: $1A
    ld l, [hl]                                    ; $438E: $6E
    ld b, l                                       ; $438F: $45
    ld bc, $000F                                  ; $4390: $01 $0F $00
    ld b, l                                       ; $4393: $45
    ld a, [de]                                    ; $4394: $1A
    ld c, b                                       ; $4395: $48
    ld b, l                                       ; $4396: $45
    sub e                                         ; $4397: $93
    ld h, l                                       ; $4398: $65
    rst $30                                       ; $4399: $F7
    ld c, b                                       ; $439A: $48
    ld c, a                                       ; $439B: $4F
    ld h, h                                       ; $439C: $64
    add d                                         ; $439D: $82
    ld c, h                                       ; $439E: $4C

Call_01A_439F:
    ld h, [hl]                                    ; $439F: $66
    ret nz                                        ; $43A0: $C0

    ld e, h                                       ; $43A1: $5C
    ld hl, $0005                                  ; $43A2: $21 $05 $00
    add c                                         ; $43A5: $81
    ld e, l                                       ; $43A6: $5D
    dec b                                         ; $43A7: $05
    dec b                                         ; $43A8: $05

jr_01A_43A9:
    and $D0                                       ; $43A9: $E6 $D0
    nop                                           ; $43AB: $00
    jr nz, jr_01A_43A9                            ; $43AC: $20 $FB

    ld d, b                                       ; $43AE: $50
    ld [hl+], a                                   ; $43AF: $22
    dec b                                         ; $43B0: $05
    ld b, b                                       ; $43B1: $40
    dec bc                                        ; $43B2: $0B
    nop                                           ; $43B3: $00
    dec b                                         ; $43B4: $05
    jr nz, jr_01A_4385                            ; $43B5: $20 $CE

    ld h, e                                       ; $43B7: $63
    ld a, [bc]                                    ; $43B8: $0A
    add hl, bc                                    ; $43B9: $09
    sbc a                                         ; $43BA: $9F
    pop de                                        ; $43BB: $D1
    nop                                           ; $43BC: $00
    ld [hl+], a                                   ; $43BD: $22
    jp c, $1A40                                   ; $43BE: $DA $40 $1A

    add hl, de                                    ; $43C1: $19
    ld b, b                                       ; $43C2: $40
    dec b                                         ; $43C3: $05
    rra                                           ; $43C4: $1F
    adc $63                                       ; $43C5: $CE $63
    ld a, [bc]                                    ; $43C7: $0A
    add hl, bc                                    ; $43C8: $09
    sbc a                                         ; $43C9: $9F
    pop de                                        ; $43CA: $D1
    nop                                           ; $43CB: $00
    ld [hl+], a                                   ; $43CC: $22
    jp c, $1A40                                   ; $43CD: $DA $40 $1A

    add hl, de                                    ; $43D0: $19
    ld b, b                                       ; $43D1: $40
    dec bc                                        ; $43D2: $0B
    jr nz, @+$0D                                  ; $43D3: $20 $0B

    rra                                           ; $43D5: $1F
    ld l, e                                       ; $43D6: $6B
    inc [hl]                                      ; $43D7: $34
    dec c                                         ; $43D8: $0D
    jr nc, @+$6C                                  ; $43D9: $30 $6A

    nop                                           ; $43DB: $00
    add b                                         ; $43DC: $80
    nop                                           ; $43DD: $00
    ld sp, $971A                                  ; $43DE: $31 $1A $97
    ld b, e                                       ; $43E1: $43
    ld [hl+], a                                   ; $43E2: $22
    adc $40                                       ; $43E3: $CE $40
    nop                                           ; $43E5: $00
    add d                                         ; $43E6: $82
    sub h                                         ; $43E7: $94
    rra                                           ; $43E8: $1F
    ld hl, $0242                                  ; $43E9: $21 $42 $02
    daa                                           ; $43EC: $27
    nop                                           ; $43ED: $00
    ld a, [bc]                                    ; $43EE: $0A
    ld a, [de]                                    ; $43EF: $1A
    ld b, l                                       ; $43F0: $45
    ld a, [de]                                    ; $43F1: $1A
    sub a                                         ; $43F2: $97
    ld b, e                                       ; $43F3: $43
    ld [bc], a                                    ; $43F4: $02
    nop                                           ; $43F5: $00
    daa                                           ; $43F6: $27
    ld a, [bc]                                    ; $43F7: $0A
    jr z, jr_01A_443F                             ; $43F8: $28 $45

    ld a, [de]                                    ; $43FA: $1A
    ld [hl], d                                    ; $43FB: $72
    ld b, h                                       ; $43FC: $44
    sub e                                         ; $43FD: $93
    ld h, l                                       ; $43FE: $65
    ld b, $49                                     ; $43FF: $06 $49
    ld c, a                                       ; $4401: $4F
    ld h, h                                       ; $4402: $64
    sub a                                         ; $4403: $97
    ld c, h                                       ; $4404: $4C
    ld h, [hl]                                    ; $4405: $66
    ret nz                                        ; $4406: $C0

    ld e, h                                       ; $4407: $5C
    ld hl, $0005                                  ; $4408: $21 $05 $00
    add c                                         ; $440B: $81
    ld e, l                                       ; $440C: $5D
    dec b                                         ; $440D: $05
    dec b                                         ; $440E: $05

jr_01A_440F:
    call $00D0                                    ; $440F: $CD $D0 $00
    jr nz, jr_01A_440F                            ; $4412: $20 $FB

    ld d, b                                       ; $4414: $50
    ld [hl+], a                                   ; $4415: $22
    dec b                                         ; $4416: $05
    ld b, b                                       ; $4417: $40
    dec bc                                        ; $4418: $0B
    nop                                           ; $4419: $00
    dec b                                         ; $441A: $05
    jr nz, @-$30                                  ; $441B: $20 $CE

    ld h, e                                       ; $441D: $63
    ld a, [bc]                                    ; $441E: $0A
    add hl, bc                                    ; $441F: $09
    ld [hl], d                                    ; $4420: $72
    pop de                                        ; $4421: $D1
    nop                                           ; $4422: $00
    ld [hl+], a                                   ; $4423: $22
    jp c, $1A40                                   ; $4424: $DA $40 $1A

    add hl, de                                    ; $4427: $19
    ld b, b                                       ; $4428: $40
    dec b                                         ; $4429: $05
    rra                                           ; $442A: $1F
    adc $63                                       ; $442B: $CE $63
    ld a, [bc]                                    ; $442D: $0A
    add hl, bc                                    ; $442E: $09
    ld [hl], d                                    ; $442F: $72
    pop de                                        ; $4430: $D1
    nop                                           ; $4431: $00
    ld [hl+], a                                   ; $4432: $22
    jp c, $1A40                                   ; $4433: $DA $40 $1A

    add hl, de                                    ; $4436: $19
    ld b, b                                       ; $4437: $40
    dec bc                                        ; $4438: $0B
    jr nz, @+$0D                                  ; $4439: $20 $0B

    rra                                           ; $443B: $1F
    ld l, e                                       ; $443C: $6B
    inc [hl]                                      ; $443D: $34
    dec c                                         ; $443E: $0D

jr_01A_443F:
    jr nc, jr_01A_44AB                            ; $443F: $30 $6A

    nop                                           ; $4441: $00
    add b                                         ; $4442: $80
    nop                                           ; $4443: $00
    ld sp, $FD1A                                  ; $4444: $31 $1A $FD
    ld b, e                                       ; $4447: $43
    ld [hl+], a                                   ; $4448: $22
    adc $40                                       ; $4449: $CE $40
    nop                                           ; $444B: $00
    add d                                         ; $444C: $82
    rra                                           ; $444D: $1F
    ld hl, $4294                                  ; $444E: $21 $94 $42
    ld [bc], a                                    ; $4451: $02
    daa                                           ; $4452: $27
    nop                                           ; $4453: $00
    jr z, jr_01A_4460                             ; $4454: $28 $0A

    ld b, l                                       ; $4456: $45
    ld a, [de]                                    ; $4457: $1A
    db $FD                                        ; $4458: $FD
    ld b, e                                       ; $4459: $43
    and h                                         ; $445A: $A4
    dec hl                                        ; $445B: $2B
    and e                                         ; $445C: $A3
    jr nz, jr_01A_445F                            ; $445D: $20 $00

jr_01A_445F:
    inc hl                                        ; $445F: $23

jr_01A_4460:
    sbc d                                         ; $4460: $9A
    pop de                                        ; $4461: $D1
    and h                                         ; $4462: $A4

jr_01A_4463:
    dec hl                                        ; $4463: $2B
    and e                                         ; $4464: $A3
    ld b, b                                       ; $4465: $40
    nop                                           ; $4466: $00
    inc d                                         ; $4467: $14
    ld d, e                                       ; $4468: $53
    jp nc, $2BA4                                  ; $4469: $D2 $A4 $2B

    and e                                         ; $446C: $A3
    add b                                         ; $446D: $80
    nop                                           ; $446E: $00
    ld a, [de]                                    ; $446F: $1A
    ld a, [de]                                    ; $4470: $1A
    db $D3                                        ; $4471: $D3
    sub e                                         ; $4472: $93
    ld h, l                                       ; $4473: $65
    dec d                                         ; $4474: $15
    ld c, c                                       ; $4475: $49
    ld c, a                                       ; $4476: $4F
    ld h, h                                       ; $4477: $64
    and b                                         ; $4478: $A0
    ld c, h                                       ; $4479: $4C
    ld h, [hl]                                    ; $447A: $66
    ret nz                                        ; $447B: $C0

    ld e, h                                       ; $447C: $5C
    ld hl, $A569                                  ; $447D: $21 $69 $A5
    ld c, h                                       ; $4480: $4C
    dec b                                         ; $4481: $05
    nop                                           ; $4482: $00
    add c                                         ; $4483: $81
    ld e, l                                       ; $4484: $5D
    dec b                                         ; $4485: $05
    dec b                                         ; $4486: $05

jr_01A_4487:
    call $00D0                                    ; $4487: $CD $D0 $00
    jr nz, jr_01A_4487                            ; $448A: $20 $FB

    ld d, b                                       ; $448C: $50
    ld [hl+], a                                   ; $448D: $22
    dec b                                         ; $448E: $05
    ld b, b                                       ; $448F: $40
    dec bc                                        ; $4490: $0B
    nop                                           ; $4491: $00
    dec b                                         ; $4492: $05
    jr nz, jr_01A_4463                            ; $4493: $20 $CE

    ld h, e                                       ; $4495: $63
    ld a, [bc]                                    ; $4496: $0A
    add hl, bc                                    ; $4497: $09
    ld [hl], d                                    ; $4498: $72
    pop de                                        ; $4499: $D1
    nop                                           ; $449A: $00
    ld [hl+], a                                   ; $449B: $22
    jp c, $1A40                                   ; $449C: $DA $40 $1A

    add hl, de                                    ; $449F: $19
    ld b, b                                       ; $44A0: $40
    dec b                                         ; $44A1: $05
    rra                                           ; $44A2: $1F
    adc $63                                       ; $44A3: $CE $63
    ld a, [bc]                                    ; $44A5: $0A
    add hl, bc                                    ; $44A6: $09
    ld [hl], d                                    ; $44A7: $72
    pop de                                        ; $44A8: $D1
    nop                                           ; $44A9: $00
    ld [hl+], a                                   ; $44AA: $22

jr_01A_44AB:
    jp c, $1A40                                   ; $44AB: $DA $40 $1A

    add hl, de                                    ; $44AE: $19
    ld b, b                                       ; $44AF: $40
    dec bc                                        ; $44B0: $0B
    jr nz, @+$0D                                  ; $44B1: $20 $0B

    rra                                           ; $44B3: $1F
    ld l, e                                       ; $44B4: $6B
    inc [hl]                                      ; $44B5: $34
    dec c                                         ; $44B6: $0D
    jr nc, jr_01A_4523                            ; $44B7: $30 $6A

    nop                                           ; $44B9: $00
    add b                                         ; $44BA: $80
    nop                                           ; $44BB: $00
    ld sp, $721A                                  ; $44BC: $31 $1A $72
    ld b, h                                       ; $44BF: $44
    ld [hl+], a                                   ; $44C0: $22
    adc $40                                       ; $44C1: $CE $40
    nop                                           ; $44C3: $00
    add d                                         ; $44C4: $82
    rra                                           ; $44C5: $1F
    ld hl, $4294                                  ; $44C6: $21 $94 $42
    ld [bc], a                                    ; $44C9: $02
    add hl, hl                                    ; $44CA: $29
    add hl, bc                                    ; $44CB: $09
    nop                                           ; $44CC: $00
    inc l                                         ; $44CD: $2C
    ld b, l                                       ; $44CE: $45
    ld a, [de]                                    ; $44CF: $1A
    sub a                                         ; $44D0: $97
    ld b, e                                       ; $44D1: $43
    ld [bc], a                                    ; $44D2: $02
    nop                                           ; $44D3: $00
    daa                                           ; $44D4: $27
    ld [$450D], sp                                ; $44D5: $08 $0D $45
    ld a, [de]                                    ; $44D8: $1A
    jr nz, jr_01A_4521                            ; $44D9: $20 $46

    and h                                         ; $44DB: $A4
    inc l                                         ; $44DC: $2C
    and e                                         ; $44DD: $A3
    ld bc, $0200                                  ; $44DE: $01 $00 $02
    reti                                          ; $44E1: $D9


    rst $10                                       ; $44E2: $D7
    and h                                         ; $44E3: $A4
    inc l                                         ; $44E4: $2C
    and e                                         ; $44E5: $A3
    ld [bc], a                                    ; $44E6: $02
    nop                                           ; $44E7: $00
    ld [bc], a                                    ; $44E8: $02
    cp l                                          ; $44E9: $BD
    rst $10                                       ; $44EA: $D7
    ld bc, $1216                                  ; $44EB: $01 $16 $12
    ld b, l                                       ; $44EE: $45
    ld a, [de]                                    ; $44EF: $1A
    sub a                                         ; $44F0: $97
    ld b, e                                       ; $44F1: $43
    and h                                         ; $44F2: $A4
    ld c, d                                       ; $44F3: $4A
    and e                                         ; $44F4: $A3
    ld [bc], a                                    ; $44F5: $02
    nop                                           ; $44F6: $00
    inc bc                                        ; $44F7: $03
    ld [hl+], a                                   ; $44F8: $22
    db $D3                                        ; $44F9: $D3
    and h                                         ; $44FA: $A4
    ld c, d                                       ; $44FB: $4A
    and e                                         ; $44FC: $A3
    inc b                                         ; $44FD: $04
    nop                                           ; $44FE: $00
    inc bc                                        ; $44FF: $03
    inc hl                                        ; $4500: $23
    db $D3                                        ; $4501: $D3
    and h                                         ; $4502: $A4
    ld c, d                                       ; $4503: $4A
    and e                                         ; $4504: $A3
    ld [$0300], sp                                ; $4505: $08 $00 $03
    inc h                                         ; $4508: $24
    db $D3                                        ; $4509: $D3
    and h                                         ; $450A: $A4
    ld c, d                                       ; $450B: $4A
    and e                                         ; $450C: $A3
    stop                                          ; $450D: $10 $00
    dec d                                         ; $450F: $15
    ld [hl], c                                    ; $4510: $71
    ret nc                                        ; $4511: $D0

    and h                                         ; $4512: $A4
    ld c, d                                       ; $4513: $4A
    and e                                         ; $4514: $A3
    jr nz, jr_01A_4517                            ; $4515: $20 $00

jr_01A_4517:
    inc hl                                        ; $4517: $23
    add a                                         ; $4518: $87
    ret nc                                        ; $4519: $D0

    and h                                         ; $451A: $A4
    ld c, d                                       ; $451B: $4A
    and e                                         ; $451C: $A3
    ld b, b                                       ; $451D: $40
    inc bc                                        ; $451E: $03
    ld b, $C2                                     ; $451F: $06 $C2

jr_01A_4521:
    ret nc                                        ; $4521: $D0

    and h                                         ; $4522: $A4

jr_01A_4523:
    ld c, d                                       ; $4523: $4A
    and e                                         ; $4524: $A3
    add b                                         ; $4525: $80
    nop                                           ; $4526: $00
    inc hl                                        ; $4527: $23
    jp $A3D0                                      ; $4528: $C3 $D0 $A3


    ld c, c                                       ; $452B: $49
    and e                                         ; $452C: $A3
    jr nz, jr_01A_4549                            ; $452D: $20 $1A

    ld b, a                                       ; $452F: $47
    ld b, l                                       ; $4530: $45
    ldh a, [$8F]                                  ; $4531: $F0 $8F
    call nc, Call_01A_439F                        ; $4533: $D4 $9F $43
    ld c, h                                       ; $4536: $4C
    ld c, c                                       ; $4537: $49
    ld b, e                                       ; $4538: $43
    ld c, e                                       ; $4539: $4B
    ld hl, $FDFE                                  ; $453A: $21 $FE $FD
    sbc d                                         ; $453D: $9A
    ld a, [hl]                                    ; $453E: $7E
    add $D1                                       ; $453F: $C6 $D1
    ld [bc], a                                    ; $4541: $02
    ld [bc], a                                    ; $4542: $02
    dec sp                                        ; $4543: $3B
    pop de                                        ; $4544: $D1
    dec c                                         ; $4545: $0D
    inc bc                                        ; $4546: $03
    ld b, d                                       ; $4547: $42
    sub e                                         ; $4548: $93

jr_01A_4549:
    ld h, l                                       ; $4549: $65
    inc sp                                        ; $454A: $33
    ld c, c                                       ; $454B: $49
    ld c, a                                       ; $454C: $4F
    ld h, h                                       ; $454D: $64
    ret z                                         ; $454E: $C8

    ld c, h                                       ; $454F: $4C
    ld l, c                                       ; $4550: $69
    call Call_01A_664C                            ; $4551: $CD $4C $66
    ret nz                                        ; $4554: $C0

    ld e, h                                       ; $4555: $5C
    ld hl, $0005                                  ; $4556: $21 $05 $00
    add c                                         ; $4559: $81
    ld e, l                                       ; $455A: $5D
    dec b                                         ; $455B: $05
    dec b                                         ; $455C: $05

jr_01A_455D:
    ld a, l                                       ; $455D: $7D
    ret nc                                        ; $455E: $D0

jr_01A_455F:
    nop                                           ; $455F: $00
    jr nz, jr_01A_455D                            ; $4560: $20 $FB

    ld d, b                                       ; $4562: $50
    ld [hl+], a                                   ; $4563: $22
    dec b                                         ; $4564: $05
    ld b, b                                       ; $4565: $40
    dec bc                                        ; $4566: $0B
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    add d                                         ; $4569: $82
    inc h                                         ; $456A: $24
    ld d, b                                       ; $456B: $50
    sub h                                         ; $456C: $94
    ld b, d                                       ; $456D: $42
    sub e                                         ; $456E: $93
    ld h, l                                       ; $456F: $65
    inc h                                         ; $4570: $24
    ld c, c                                       ; $4571: $49
    ld c, a                                       ; $4572: $4F
    ld h, h                                       ; $4573: $64
    or d                                          ; $4574: $B2
    ld c, h                                       ; $4575: $4C
    ld h, [hl]                                    ; $4576: $66
    ret nz                                        ; $4577: $C0

    ld e, h                                       ; $4578: $5C
    ld hl, $BF69                                  ; $4579: $21 $69 $BF
    ld c, h                                       ; $457C: $4C
    dec b                                         ; $457D: $05
    nop                                           ; $457E: $00
    add c                                         ; $457F: $81
    ld e, l                                       ; $4580: $5D
    dec b                                         ; $4581: $05
    dec b                                         ; $4582: $05

jr_01A_4583:
    rst $38                                       ; $4583: $FF
    ret nc                                        ; $4584: $D0

    nop                                           ; $4585: $00
    jr nz, jr_01A_4583                            ; $4586: $20 $FB

    ld d, b                                       ; $4588: $50
    ld [hl+], a                                   ; $4589: $22
    dec b                                         ; $458A: $05
    ld b, b                                       ; $458B: $40
    dec bc                                        ; $458C: $0B
    nop                                           ; $458D: $00
    dec b                                         ; $458E: $05
    jr nz, jr_01A_455F                            ; $458F: $20 $CE

    ld h, e                                       ; $4591: $63
    ld a, [bc]                                    ; $4592: $0A
    add hl, bc                                    ; $4593: $09
    call z, $00D1                                 ; $4594: $CC $D1 $00
    ld [hl+], a                                   ; $4597: $22
    jp c, $1A40                                   ; $4598: $DA $40 $1A

    add hl, de                                    ; $459B: $19
    ld b, b                                       ; $459C: $40
    dec b                                         ; $459D: $05
    rra                                           ; $459E: $1F
    adc $63                                       ; $459F: $CE $63
    ld a, [bc]                                    ; $45A1: $0A
    add hl, bc                                    ; $45A2: $09
    call z, $00D1                                 ; $45A3: $CC $D1 $00
    ld [hl+], a                                   ; $45A6: $22
    jp c, $1A40                                   ; $45A7: $DA $40 $1A

    add hl, de                                    ; $45AA: $19
    ld b, b                                       ; $45AB: $40
    dec bc                                        ; $45AC: $0B

jr_01A_45AD:
    jr nz, @+$0D                                  ; $45AD: $20 $0B

    rra                                           ; $45AF: $1F
    ld l, e                                       ; $45B0: $6B
    inc [hl]                                      ; $45B1: $34
    dec c                                         ; $45B2: $0D
    jr nc, jr_01A_461F                            ; $45B3: $30 $6A

    nop                                           ; $45B5: $00
    add b                                         ; $45B6: $80
    nop                                           ; $45B7: $00
    ld sp, $6E1A                                  ; $45B8: $31 $1A $6E
    ld b, l                                       ; $45BB: $45
    ld [hl+], a                                   ; $45BC: $22
    adc $40                                       ; $45BD: $CE $40
    nop                                           ; $45BF: $00
    add d                                         ; $45C0: $82
    rra                                           ; $45C1: $1F
    ld hl, $4294                                  ; $45C2: $21 $94 $42
    ld b, a                                       ; $45C5: $47
    ld b, $22                                     ; $45C6: $06 $22
    inc b                                         ; $45C8: $04
    ld b, b                                       ; $45C9: $40
    ld [hl+], a                                   ; $45CA: $22
    inc b                                         ; $45CB: $04
    ld b, b                                       ; $45CC: $40
    ld [hl+], a                                   ; $45CD: $22
    inc b                                         ; $45CE: $04
    ld b, b                                       ; $45CF: $40
    ld [hl+], a                                   ; $45D0: $22
    inc b                                         ; $45D1: $04
    ld b, b                                       ; $45D2: $40
    ld a, [de]                                    ; $45D3: $1A
    reti                                          ; $45D4: $D9


    ld b, l                                       ; $45D5: $45
    ld [hl+], a                                   ; $45D6: $22
    inc b                                         ; $45D7: $04
    ld b, b                                       ; $45D8: $40
    rlca                                          ; $45D9: $07
    nop                                           ; $45DA: $00
    ld l, e                                       ; $45DB: $6B
    ld c, d                                       ; $45DC: $4A
    add hl, bc                                    ; $45DD: $09
    nop                                           ; $45DE: $00
    ld a, [de]                                    ; $45DF: $1A
    rst $38                                       ; $45E0: $FF
    ld b, l                                       ; $45E1: $45
    ld a, [hl]                                    ; $45E2: $7E
    ld l, $D9                                     ; $45E3: $2E $D9
    ld [bc], a                                    ; $45E5: $02
    inc bc                                        ; $45E6: $03
    ld e, [hl]                                    ; $45E7: $5E
    push de                                       ; $45E8: $D5
    dec de                                        ; $45E9: $1B
    jr @+$42                                      ; $45EA: $18 $40

    jr nz, jr_01A_466C                            ; $45EC: $20 $7E

    ld e, d                                       ; $45EE: $5A
    push de                                       ; $45EF: $D5
    ld [bc], a                                    ; $45F0: $02
    inc bc                                        ; $45F1: $03
    ld e, [hl]                                    ; $45F2: $5E
    push de                                       ; $45F3: $D5
    dec de                                        ; $45F4: $1B
    jr jr_01A_4637                                ; $45F5: $18 $40

    add b                                         ; $45F7: $80
    ld bc, $3004                                  ; $45F8: $01 $04 $30
    ld b, l                                       ; $45FB: $45
    ld a, [de]                                    ; $45FC: $1A
    ld c, b                                       ; $45FD: $48
    ld b, l                                       ; $45FE: $45
    dec d                                         ; $45FF: $15
    jr nz, jr_01A_45AD                            ; $4600: $20 $AB

    ld d, b                                       ; $4602: $50
    ld [$5D20], sp                                ; $4603: $08 $20 $5D
    ld d, b                                       ; $4606: $50
    ld [$C320], sp                                ; $4607: $08 $20 $C3
    ld e, h                                       ; $460A: $5C
    ld [$1900], sp                                ; $460B: $08 $00 $19

jr_01A_460E:
    ld [bc], a                                    ; $460E: $02
    nop                                           ; $460F: $00
    inc de                                        ; $4610: $13
    ld a, [bc]                                    ; $4611: $0A
    dec de                                        ; $4612: $1B
    ld b, l                                       ; $4613: $45
    ld a, [de]                                    ; $4614: $1A
    adc l                                         ; $4615: $8D
    ld b, [hl]                                    ; $4616: $46
    ld [bc], a                                    ; $4617: $02
    daa                                           ; $4618: $27
    nop                                           ; $4619: $00
    dec c                                         ; $461A: $0D
    ld [$1A45], sp                                ; $461B: $08 $45 $1A
    ld l, [hl]                                    ; $461E: $6E

jr_01A_461F:
    ld b, l                                       ; $461F: $45
    sub e                                         ; $4620: $93
    ld h, l                                       ; $4621: $65
    ld b, d                                       ; $4622: $42
    ld c, c                                       ; $4623: $49
    ld c, a                                       ; $4624: $4F
    ld h, h                                       ; $4625: $64
    xor $4C                                       ; $4626: $EE $4C
    ld h, [hl]                                    ; $4628: $66
    ret nz                                        ; $4629: $C0

    ld e, h                                       ; $462A: $5C
    ld hl, $0005                                  ; $462B: $21 $05 $00
    add c                                         ; $462E: $81
    ld e, l                                       ; $462F: $5D
    dec b                                         ; $4630: $05
    dec b                                         ; $4631: $05

jr_01A_4632:
    call $00D0                                    ; $4632: $CD $D0 $00
    jr nz, jr_01A_4632                            ; $4635: $20 $FB

jr_01A_4637:
    ld d, b                                       ; $4637: $50
    ld [hl+], a                                   ; $4638: $22
    dec b                                         ; $4639: $05
    ld b, b                                       ; $463A: $40
    dec bc                                        ; $463B: $0B
    nop                                           ; $463C: $00
    dec b                                         ; $463D: $05
    jr nz, jr_01A_460E                            ; $463E: $20 $CE

    ld h, e                                       ; $4640: $63
    ld a, [bc]                                    ; $4641: $0A
    add hl, bc                                    ; $4642: $09
    ld [hl], d                                    ; $4643: $72
    pop de                                        ; $4644: $D1
    nop                                           ; $4645: $00
    ld [hl+], a                                   ; $4646: $22
    jp c, $1A40                                   ; $4647: $DA $40 $1A

    add hl, de                                    ; $464A: $19
    ld b, b                                       ; $464B: $40
    dec b                                         ; $464C: $05
    rra                                           ; $464D: $1F
    adc $63                                       ; $464E: $CE $63
    ld a, [bc]                                    ; $4650: $0A
    add hl, bc                                    ; $4651: $09
    ld [hl], d                                    ; $4652: $72
    pop de                                        ; $4653: $D1
    nop                                           ; $4654: $00
    ld [hl+], a                                   ; $4655: $22
    jp c, $1A40                                   ; $4656: $DA $40 $1A

    add hl, de                                    ; $4659: $19
    ld b, b                                       ; $465A: $40
    dec bc                                        ; $465B: $0B
    jr nz, @+$0D                                  ; $465C: $20 $0B

    rra                                           ; $465E: $1F
    ld l, e                                       ; $465F: $6B
    inc [hl]                                      ; $4660: $34
    dec c                                         ; $4661: $0D
    jr nc, jr_01A_46CE                            ; $4662: $30 $6A

    nop                                           ; $4664: $00
    add b                                         ; $4665: $80
    nop                                           ; $4666: $00
    ld sp, $201A                                  ; $4667: $31 $1A $20
    ld b, [hl]                                    ; $466A: $46
    ld [hl+], a                                   ; $466B: $22

jr_01A_466C:
    adc $40                                       ; $466C: $CE $40
    nop                                           ; $466E: $00
    add d                                         ; $466F: $82
    rra                                           ; $4670: $1F
    ld hl, $4294                                  ; $4671: $21 $94 $42
    ld [bc], a                                    ; $4674: $02
    nop                                           ; $4675: $00
    ld a, [de]                                    ; $4676: $1A
    nop                                           ; $4677: $00
    jr jr_01A_46BF                                ; $4678: $18 $45

    ld a, [de]                                    ; $467A: $1A

jr_01A_467B:
    di                                            ; $467B: $F3
    ld b, b                                       ; $467C: $40
    ld [bc], a                                    ; $467D: $02
    inc de                                        ; $467E: $13
    nop                                           ; $467F: $00
    dec de                                        ; $4680: $1B
    ld a, [bc]                                    ; $4681: $0A
    ld b, l                                       ; $4682: $45
    ld a, [de]                                    ; $4683: $1A
    jr nz, jr_01A_46CC                            ; $4684: $20 $46

    ld bc, $3725                                  ; $4686: $01 $25 $37
    ld b, l                                       ; $4689: $45
    cpl                                           ; $468A: $2F
    ld h, l                                       ; $468B: $65
    ld b, c                                       ; $468C: $41
    sub e                                         ; $468D: $93
    ld h, l                                       ; $468E: $65
    ld d, c                                       ; $468F: $51
    ld c, c                                       ; $4690: $49
    ld c, a                                       ; $4691: $4F
    ld h, h                                       ; $4692: $64
    rst $30                                       ; $4693: $F7
    ld c, h                                       ; $4694: $4C
    ld h, [hl]                                    ; $4695: $66
    ret nz                                        ; $4696: $C0

    ld e, h                                       ; $4697: $5C
    ld hl, $0005                                  ; $4698: $21 $05 $00
    add c                                         ; $469B: $81
    ld e, l                                       ; $469C: $5D
    dec b                                         ; $469D: $05
    dec b                                         ; $469E: $05

jr_01A_469F:
    ld l, c                                       ; $469F: $69
    ret nc                                        ; $46A0: $D0

    nop                                           ; $46A1: $00
    jr nz, jr_01A_469F                            ; $46A2: $20 $FB

    ld d, b                                       ; $46A4: $50
    ld [hl+], a                                   ; $46A5: $22
    dec b                                         ; $46A6: $05
    ld b, b                                       ; $46A7: $40
    dec bc                                        ; $46A8: $0B
    nop                                           ; $46A9: $00
    dec b                                         ; $46AA: $05
    jr nz, jr_01A_467B                            ; $46AB: $20 $CE

    ld h, e                                       ; $46AD: $63
    ld a, [bc]                                    ; $46AE: $0A
    add hl, bc                                    ; $46AF: $09
    cp [hl]                                       ; $46B0: $BE
    ret nc                                        ; $46B1: $D0

    nop                                           ; $46B2: $00
    ld [hl+], a                                   ; $46B3: $22
    jp c, $1A40                                   ; $46B4: $DA $40 $1A

    add hl, de                                    ; $46B7: $19
    ld b, b                                       ; $46B8: $40
    dec b                                         ; $46B9: $05
    rra                                           ; $46BA: $1F
    adc $63                                       ; $46BB: $CE $63
    ld a, [bc]                                    ; $46BD: $0A
    add hl, bc                                    ; $46BE: $09

jr_01A_46BF:
    cp [hl]                                       ; $46BF: $BE
    ret nc                                        ; $46C0: $D0

    nop                                           ; $46C1: $00
    ld [hl+], a                                   ; $46C2: $22
    jp c, $1A40                                   ; $46C3: $DA $40 $1A

    add hl, de                                    ; $46C6: $19
    ld b, b                                       ; $46C7: $40
    dec bc                                        ; $46C8: $0B
    jr nz, @+$0D                                  ; $46C9: $20 $0B

    rra                                           ; $46CB: $1F

jr_01A_46CC:
    ld l, e                                       ; $46CC: $6B
    inc [hl]                                      ; $46CD: $34

jr_01A_46CE:
    dec c                                         ; $46CE: $0D
    jr nc, @+$6C                                  ; $46CF: $30 $6A

    nop                                           ; $46D1: $00
    add b                                         ; $46D2: $80
    nop                                           ; $46D3: $00
    ld sp, $8D1A                                  ; $46D4: $31 $1A $8D
    ld b, [hl]                                    ; $46D7: $46
    ld [hl+], a                                   ; $46D8: $22
    adc $40                                       ; $46D9: $CE $40
    nop                                           ; $46DB: $00
    add d                                         ; $46DC: $82
    rra                                           ; $46DD: $1F
    ld hl, $4294                                  ; $46DE: $21 $94 $42

jr_01A_46E1:
    ld [bc], a                                    ; $46E1: $02
    ld de, $0304                                  ; $46E2: $11 $04 $03
    ld c, $45                                     ; $46E5: $0E $45
    dec h                                         ; $46E7: $25
    ld de, $0268                                  ; $46E8: $11 $68 $02
    ld bc, $1318                                  ; $46EB: $01 $18 $13
    nop                                           ; $46EE: $00
    ld b, l                                       ; $46EF: $45
    ld a, [de]                                    ; $46F0: $1A
    ld l, e                                       ; $46F1: $6B
    ld b, a                                       ; $46F2: $47
    sub e                                         ; $46F3: $93
    ld h, l                                       ; $46F4: $65
    ld h, b                                       ; $46F5: $60
    ld c, c                                       ; $46F6: $49
    ld c, a                                       ; $46F7: $4F
    ld h, h                                       ; $46F8: $64
    inc b                                         ; $46F9: $04
    ld c, l                                       ; $46FA: $4D
    ld h, [hl]                                    ; $46FB: $66
    ret nz                                        ; $46FC: $C0

    ld e, h                                       ; $46FD: $5C
    ld hl, $0005                                  ; $46FE: $21 $05 $00
    add c                                         ; $4701: $81
    ld e, l                                       ; $4702: $5D
    dec b                                         ; $4703: $05
    dec b                                         ; $4704: $05

jr_01A_4705:
    or h                                          ; $4705: $B4
    ret nc                                        ; $4706: $D0

    nop                                           ; $4707: $00
    jr nz, jr_01A_4705                            ; $4708: $20 $FB

    ld d, b                                       ; $470A: $50
    ld [hl+], a                                   ; $470B: $22
    dec b                                         ; $470C: $05
    ld b, b                                       ; $470D: $40
    dec bc                                        ; $470E: $0B
    nop                                           ; $470F: $00
    dec b                                         ; $4710: $05
    jr nz, jr_01A_46E1                            ; $4711: $20 $CE

    ld h, e                                       ; $4713: $63
    ld a, [bc]                                    ; $4714: $0A
    add hl, bc                                    ; $4715: $09
    ld b, l                                       ; $4716: $45
    pop de                                        ; $4717: $D1
    nop                                           ; $4718: $00
    ld [hl+], a                                   ; $4719: $22
    jp c, $1A40                                   ; $471A: $DA $40 $1A

    add hl, de                                    ; $471D: $19
    ld b, b                                       ; $471E: $40
    dec b                                         ; $471F: $05
    rra                                           ; $4720: $1F
    adc $63                                       ; $4721: $CE $63
    ld a, [bc]                                    ; $4723: $0A
    add hl, bc                                    ; $4724: $09
    ld b, l                                       ; $4725: $45
    pop de                                        ; $4726: $D1
    nop                                           ; $4727: $00
    ld [hl+], a                                   ; $4728: $22
    jp c, $1A40                                   ; $4729: $DA $40 $1A

    add hl, de                                    ; $472C: $19
    ld b, b                                       ; $472D: $40
    dec bc                                        ; $472E: $0B
    jr nz, @+$0D                                  ; $472F: $20 $0B

    rra                                           ; $4731: $1F
    ld l, e                                       ; $4732: $6B
    inc [hl]                                      ; $4733: $34
    dec c                                         ; $4734: $0D
    jr nc, jr_01A_47A1                            ; $4735: $30 $6A

    nop                                           ; $4737: $00
    add b                                         ; $4738: $80
    nop                                           ; $4739: $00
    ld sp, $F31A                                  ; $473A: $31 $1A $F3
    ld b, [hl]                                    ; $473D: $46
    ld [hl+], a                                   ; $473E: $22
    adc $40                                       ; $473F: $CE $40
    nop                                           ; $4741: $00
    add d                                         ; $4742: $82
    rra                                           ; $4743: $1F
    ld hl, $4294                                  ; $4744: $21 $94 $42
    ld [bc], a                                    ; $4747: $02
    jr jr_01A_474B                                ; $4748: $18 $01

    nop                                           ; $474A: $00

jr_01A_474B:
    inc de                                        ; $474B: $13
    ld b, l                                       ; $474C: $45
    ld a, [de]                                    ; $474D: $1A
    di                                            ; $474E: $F3
    ld b, [hl]                                    ; $474F: $46
    ld [bc], a                                    ; $4750: $02
    ld bc, $1D0B                                  ; $4751: $01 $0B $1D
    nop                                           ; $4754: $00
    ld b, l                                       ; $4755: $45
    ld a, [de]                                    ; $4756: $1A
    pop de                                        ; $4757: $D1
    ld b, a                                       ; $4758: $47

jr_01A_4759:
    ld [bc], a                                    ; $4759: $02
    inc c                                         ; $475A: $0C
    inc bc                                        ; $475B: $03
    dec e                                         ; $475C: $1D
    nop                                           ; $475D: $00
    ld b, l                                       ; $475E: $45
    ld a, [de]                                    ; $475F: $1A
    scf                                           ; $4760: $37
    ld c, b                                       ; $4761: $48
    ld [bc], a                                    ; $4762: $02
    rra                                           ; $4763: $1F
    ld [$001D], sp                                ; $4764: $08 $1D $00
    ld b, l                                       ; $4767: $45
    ld a, [de]                                    ; $4768: $1A
    sbc l                                         ; $4769: $9D
    ld c, b                                       ; $476A: $48
    sub e                                         ; $476B: $93
    ld h, l                                       ; $476C: $65
    ld l, a                                       ; $476D: $6F
    ld c, c                                       ; $476E: $49
    ld c, a                                       ; $476F: $4F
    ld h, h                                       ; $4770: $64
    dec c                                         ; $4771: $0D
    ld c, l                                       ; $4772: $4D
    ld h, [hl]                                    ; $4773: $66
    ret nz                                        ; $4774: $C0

    ld e, h                                       ; $4775: $5C
    ld hl, $0005                                  ; $4776: $21 $05 $00
    add c                                         ; $4779: $81
    ld e, l                                       ; $477A: $5D
    dec b                                         ; $477B: $05
    dec b                                         ; $477C: $05

jr_01A_477D:
    call $00D0                                    ; $477D: $CD $D0 $00
    jr nz, jr_01A_477D                            ; $4780: $20 $FB

    ld d, b                                       ; $4782: $50
    ld [hl+], a                                   ; $4783: $22
    dec b                                         ; $4784: $05
    ld b, b                                       ; $4785: $40
    dec bc                                        ; $4786: $0B
    nop                                           ; $4787: $00
    dec b                                         ; $4788: $05
    jr nz, jr_01A_4759                            ; $4789: $20 $CE

    ld h, e                                       ; $478B: $63
    ld a, [bc]                                    ; $478C: $0A
    add hl, bc                                    ; $478D: $09
    ld [hl], d                                    ; $478E: $72
    pop de                                        ; $478F: $D1
    nop                                           ; $4790: $00
    ld [hl+], a                                   ; $4791: $22
    jp c, $1A40                                   ; $4792: $DA $40 $1A

    add hl, de                                    ; $4795: $19
    ld b, b                                       ; $4796: $40
    dec b                                         ; $4797: $05
    rra                                           ; $4798: $1F
    adc $63                                       ; $4799: $CE $63
    ld a, [bc]                                    ; $479B: $0A
    add hl, bc                                    ; $479C: $09
    ld [hl], d                                    ; $479D: $72
    pop de                                        ; $479E: $D1
    nop                                           ; $479F: $00
    ld [hl+], a                                   ; $47A0: $22

jr_01A_47A1:
    jp c, $1A40                                   ; $47A1: $DA $40 $1A

    add hl, de                                    ; $47A4: $19
    ld b, b                                       ; $47A5: $40
    dec bc                                        ; $47A6: $0B
    jr nz, @+$0D                                  ; $47A7: $20 $0B

    rra                                           ; $47A9: $1F
    ld l, e                                       ; $47AA: $6B
    inc [hl]                                      ; $47AB: $34
    dec c                                         ; $47AC: $0D
    jr nc, @+$6C                                  ; $47AD: $30 $6A

    nop                                           ; $47AF: $00
    add b                                         ; $47B0: $80
    nop                                           ; $47B1: $00
    ld sp, $6B1A                                  ; $47B2: $31 $1A $6B
    ld b, a                                       ; $47B5: $47
    ld [hl+], a                                   ; $47B6: $22
    adc $40                                       ; $47B7: $CE $40
    nop                                           ; $47B9: $00
    add d                                         ; $47BA: $82
    rra                                           ; $47BB: $1F
    ld hl, $4294                                  ; $47BC: $21 $94 $42

jr_01A_47BF:
    ld [bc], a                                    ; $47BF: $02
    inc bc                                        ; $47C0: $03
    inc bc                                        ; $47C1: $03
    daa                                           ; $47C2: $27
    nop                                           ; $47C3: $00
    ld b, l                                       ; $47C4: $45
    ld a, [de]                                    ; $47C5: $1A
    inc de                                        ; $47C6: $13
    ld c, c                                       ; $47C7: $49
    ld [bc], a                                    ; $47C8: $02
    dec bc                                        ; $47C9: $0B
    ld bc, $1D00                                  ; $47CA: $01 $00 $1D
    ld b, l                                       ; $47CD: $45
    ld a, [de]                                    ; $47CE: $1A
    ld l, e                                       ; $47CF: $6B
    ld b, a                                       ; $47D0: $47
    sub e                                         ; $47D1: $93
    ld h, l                                       ; $47D2: $65
    ld a, [hl]                                    ; $47D3: $7E
    ld c, c                                       ; $47D4: $49
    ld c, a                                       ; $47D5: $4F
    ld h, h                                       ; $47D6: $64
    ld e, $4D                                     ; $47D7: $1E $4D
    ld h, [hl]                                    ; $47D9: $66
    ret nz                                        ; $47DA: $C0

    ld e, h                                       ; $47DB: $5C
    ld hl, $0005                                  ; $47DC: $21 $05 $00
    add c                                         ; $47DF: $81
    ld e, l                                       ; $47E0: $5D
    dec b                                         ; $47E1: $05
    dec b                                         ; $47E2: $05

jr_01A_47E3:
    ld l, c                                       ; $47E3: $69
    ret nc                                        ; $47E4: $D0

    nop                                           ; $47E5: $00
    jr nz, jr_01A_47E3                            ; $47E6: $20 $FB

    ld d, b                                       ; $47E8: $50
    ld [hl+], a                                   ; $47E9: $22
    dec b                                         ; $47EA: $05
    ld b, b                                       ; $47EB: $40
    dec bc                                        ; $47EC: $0B
    nop                                           ; $47ED: $00
    dec b                                         ; $47EE: $05
    jr nz, jr_01A_47BF                            ; $47EF: $20 $CE

    ld h, e                                       ; $47F1: $63
    ld a, [bc]                                    ; $47F2: $0A
    add hl, bc                                    ; $47F3: $09
    cp [hl]                                       ; $47F4: $BE
    ret nc                                        ; $47F5: $D0

    nop                                           ; $47F6: $00
    ld [hl+], a                                   ; $47F7: $22
    jp c, $1A40                                   ; $47F8: $DA $40 $1A

    add hl, de                                    ; $47FB: $19
    ld b, b                                       ; $47FC: $40
    dec b                                         ; $47FD: $05
    rra                                           ; $47FE: $1F
    adc $63                                       ; $47FF: $CE $63
    ld a, [bc]                                    ; $4801: $0A
    add hl, bc                                    ; $4802: $09
    cp [hl]                                       ; $4803: $BE
    ret nc                                        ; $4804: $D0

    nop                                           ; $4805: $00
    ld [hl+], a                                   ; $4806: $22
    jp c, $1A40                                   ; $4807: $DA $40 $1A

    add hl, de                                    ; $480A: $19
    ld b, b                                       ; $480B: $40
    dec bc                                        ; $480C: $0B
    jr nz, @+$0D                                  ; $480D: $20 $0B

    rra                                           ; $480F: $1F
    ld l, e                                       ; $4810: $6B
    inc [hl]                                      ; $4811: $34
    dec c                                         ; $4812: $0D
    jr nc, @+$6C                                  ; $4813: $30 $6A

    nop                                           ; $4815: $00
    add b                                         ; $4816: $80
    nop                                           ; $4817: $00
    ld sp, $D11A                                  ; $4818: $31 $1A $D1
    ld b, a                                       ; $481B: $47
    ld [hl+], a                                   ; $481C: $22
    adc $40                                       ; $481D: $CE $40
    nop                                           ; $481F: $00
    add d                                         ; $4820: $82
    rra                                           ; $4821: $1F
    ld hl, $4294                                  ; $4822: $21 $94 $42

jr_01A_4825:
    ld [bc], a                                    ; $4825: $02
    dec bc                                        ; $4826: $0B
    ld de, $0027                                  ; $4827: $11 $27 $00
    ld b, l                                       ; $482A: $45
    ld a, [de]                                    ; $482B: $1A
    inc de                                        ; $482C: $13
    ld c, c                                       ; $482D: $49
    ld [bc], a                                    ; $482E: $02
    inc bc                                        ; $482F: $03
    inc c                                         ; $4830: $0C
    nop                                           ; $4831: $00
    dec e                                         ; $4832: $1D
    ld b, l                                       ; $4833: $45
    ld a, [de]                                    ; $4834: $1A
    ld l, e                                       ; $4835: $6B
    ld b, a                                       ; $4836: $47
    sub e                                         ; $4837: $93
    ld h, l                                       ; $4838: $65
    adc l                                         ; $4839: $8D
    ld c, c                                       ; $483A: $49
    ld c, a                                       ; $483B: $4F
    ld h, h                                       ; $483C: $64
    daa                                           ; $483D: $27
    ld c, l                                       ; $483E: $4D
    ld h, [hl]                                    ; $483F: $66
    ret nz                                        ; $4840: $C0

    ld e, h                                       ; $4841: $5C
    ld hl, $0005                                  ; $4842: $21 $05 $00
    add c                                         ; $4845: $81
    ld e, l                                       ; $4846: $5D
    dec b                                         ; $4847: $05
    dec b                                         ; $4848: $05

jr_01A_4849:
    ld l, c                                       ; $4849: $69
    ret nc                                        ; $484A: $D0

    nop                                           ; $484B: $00
    jr nz, jr_01A_4849                            ; $484C: $20 $FB

    ld d, b                                       ; $484E: $50
    ld [hl+], a                                   ; $484F: $22
    dec b                                         ; $4850: $05
    ld b, b                                       ; $4851: $40
    dec bc                                        ; $4852: $0B
    nop                                           ; $4853: $00
    dec b                                         ; $4854: $05
    jr nz, jr_01A_4825                            ; $4855: $20 $CE

    ld h, e                                       ; $4857: $63
    ld a, [bc]                                    ; $4858: $0A
    add hl, bc                                    ; $4859: $09
    cp [hl]                                       ; $485A: $BE
    ret nc                                        ; $485B: $D0

    nop                                           ; $485C: $00
    ld [hl+], a                                   ; $485D: $22
    jp c, $1A40                                   ; $485E: $DA $40 $1A

    add hl, de                                    ; $4861: $19
    ld b, b                                       ; $4862: $40
    dec b                                         ; $4863: $05
    rra                                           ; $4864: $1F
    adc $63                                       ; $4865: $CE $63
    ld a, [bc]                                    ; $4867: $0A
    add hl, bc                                    ; $4868: $09
    cp [hl]                                       ; $4869: $BE
    ret nc                                        ; $486A: $D0

    nop                                           ; $486B: $00
    ld [hl+], a                                   ; $486C: $22
    jp c, $1A40                                   ; $486D: $DA $40 $1A

    add hl, de                                    ; $4870: $19
    ld b, b                                       ; $4871: $40
    dec bc                                        ; $4872: $0B
    jr nz, @+$0D                                  ; $4873: $20 $0B

    rra                                           ; $4875: $1F
    ld l, e                                       ; $4876: $6B
    inc [hl]                                      ; $4877: $34
    dec c                                         ; $4878: $0D
    jr nc, @+$6C                                  ; $4879: $30 $6A

    nop                                           ; $487B: $00
    add b                                         ; $487C: $80
    nop                                           ; $487D: $00
    ld sp, $371A                                  ; $487E: $31 $1A $37
    ld c, b                                       ; $4881: $48
    ld [hl+], a                                   ; $4882: $22
    adc $40                                       ; $4883: $CE $40
    nop                                           ; $4885: $00
    add d                                         ; $4886: $82
    rra                                           ; $4887: $1F
    ld hl, $4294                                  ; $4888: $21 $94 $42

jr_01A_488B:
    ld [bc], a                                    ; $488B: $02
    ld [$001F], sp                                ; $488C: $08 $1F $00
    dec e                                         ; $488F: $1D
    ld b, l                                       ; $4890: $45
    ld a, [de]                                    ; $4891: $1A
    ld l, e                                       ; $4892: $6B
    ld b, a                                       ; $4893: $47
    ld [bc], a                                    ; $4894: $02
    dec b                                         ; $4895: $05
    ld e, $27                                     ; $4896: $1E $27
    nop                                           ; $4898: $00
    ld b, l                                       ; $4899: $45
    ld a, [de]                                    ; $489A: $1A
    inc de                                        ; $489B: $13
    ld c, c                                       ; $489C: $49
    sub e                                         ; $489D: $93
    ld h, l                                       ; $489E: $65
    sbc h                                         ; $489F: $9C
    ld c, c                                       ; $48A0: $49
    ld c, a                                       ; $48A1: $4F
    ld h, h                                       ; $48A2: $64
    jr nc, @+$4F                                  ; $48A3: $30 $4D

    ld h, [hl]                                    ; $48A5: $66
    ret nz                                        ; $48A6: $C0

    ld e, h                                       ; $48A7: $5C
    ld hl, $0005                                  ; $48A8: $21 $05 $00
    add c                                         ; $48AB: $81
    ld e, l                                       ; $48AC: $5D
    dec b                                         ; $48AD: $05
    dec b                                         ; $48AE: $05

jr_01A_48AF:
    ld l, c                                       ; $48AF: $69
    ret nc                                        ; $48B0: $D0

    nop                                           ; $48B1: $00
    jr nz, jr_01A_48AF                            ; $48B2: $20 $FB

    ld d, b                                       ; $48B4: $50
    ld [hl+], a                                   ; $48B5: $22
    dec b                                         ; $48B6: $05
    ld b, b                                       ; $48B7: $40
    dec bc                                        ; $48B8: $0B
    nop                                           ; $48B9: $00
    dec b                                         ; $48BA: $05
    jr nz, jr_01A_488B                            ; $48BB: $20 $CE

    ld h, e                                       ; $48BD: $63
    ld a, [bc]                                    ; $48BE: $0A
    add hl, bc                                    ; $48BF: $09
    cp [hl]                                       ; $48C0: $BE
    ret nc                                        ; $48C1: $D0

    nop                                           ; $48C2: $00
    ld [hl+], a                                   ; $48C3: $22
    jp c, $1A40                                   ; $48C4: $DA $40 $1A

    add hl, de                                    ; $48C7: $19
    ld b, b                                       ; $48C8: $40
    dec b                                         ; $48C9: $05
    rra                                           ; $48CA: $1F
    adc $63                                       ; $48CB: $CE $63
    ld a, [bc]                                    ; $48CD: $0A
    add hl, bc                                    ; $48CE: $09
    cp [hl]                                       ; $48CF: $BE
    ret nc                                        ; $48D0: $D0

    nop                                           ; $48D1: $00
    ld [hl+], a                                   ; $48D2: $22
    jp c, $1A40                                   ; $48D3: $DA $40 $1A

    add hl, de                                    ; $48D6: $19
    ld b, b                                       ; $48D7: $40
    dec bc                                        ; $48D8: $0B
    jr nz, @+$0D                                  ; $48D9: $20 $0B

    rra                                           ; $48DB: $1F
    ld l, e                                       ; $48DC: $6B
    inc [hl]                                      ; $48DD: $34
    dec c                                         ; $48DE: $0D
    jr nc, @+$6C                                  ; $48DF: $30 $6A

    nop                                           ; $48E1: $00
    add b                                         ; $48E2: $80
    nop                                           ; $48E3: $00
    ld sp, $9D1A                                  ; $48E4: $31 $1A $9D
    ld c, b                                       ; $48E7: $48
    ld [hl+], a                                   ; $48E8: $22
    adc $40                                       ; $48E9: $CE $40
    nop                                           ; $48EB: $00
    add d                                         ; $48EC: $82
    rra                                           ; $48ED: $1F
    ld hl, $4294                                  ; $48EE: $21 $94 $42
    ld bc, $0C09                                  ; $48F1: $01 $09 $0C
    ld b, l                                       ; $48F4: $45
    cpl                                           ; $48F5: $2F
    adc a                                         ; $48F6: $8F
    ld b, l                                       ; $48F7: $45
    ld [bc], a                                    ; $48F8: $02
    inc bc                                        ; $48F9: $03
    inc bc                                        ; $48FA: $03
    nop                                           ; $48FB: $00
    daa                                           ; $48FC: $27
    ld b, l                                       ; $48FD: $45
    ld a, [de]                                    ; $48FE: $1A
    pop de                                        ; $48FF: $D1
    ld b, a                                       ; $4900: $47

jr_01A_4901:
    ld [bc], a                                    ; $4901: $02
    ld de, $000B                                  ; $4902: $11 $0B $00
    daa                                           ; $4905: $27
    ld b, l                                       ; $4906: $45
    ld a, [de]                                    ; $4907: $1A
    scf                                           ; $4908: $37
    ld c, b                                       ; $4909: $48
    ld [bc], a                                    ; $490A: $02
    ld e, $05                                     ; $490B: $1E $05
    nop                                           ; $490D: $00
    daa                                           ; $490E: $27
    ld b, l                                       ; $490F: $45
    ld a, [de]                                    ; $4910: $1A
    sbc l                                         ; $4911: $9D
    ld c, b                                       ; $4912: $48
    sub e                                         ; $4913: $93
    ld h, l                                       ; $4914: $65
    xor e                                         ; $4915: $AB
    ld c, c                                       ; $4916: $49
    ld c, a                                       ; $4917: $4F
    ld h, h                                       ; $4918: $64
    add hl, sp                                    ; $4919: $39
    ld c, l                                       ; $491A: $4D
    ld h, [hl]                                    ; $491B: $66
    ret nz                                        ; $491C: $C0

    ld e, h                                       ; $491D: $5C
    ld hl, $0005                                  ; $491E: $21 $05 $00
    add c                                         ; $4921: $81
    ld e, l                                       ; $4922: $5D
    dec b                                         ; $4923: $05
    dec b                                         ; $4924: $05

jr_01A_4925:
    call $00D0                                    ; $4925: $CD $D0 $00
    jr nz, jr_01A_4925                            ; $4928: $20 $FB

    ld d, b                                       ; $492A: $50
    ld [hl+], a                                   ; $492B: $22
    dec b                                         ; $492C: $05
    ld b, b                                       ; $492D: $40
    dec bc                                        ; $492E: $0B
    nop                                           ; $492F: $00
    dec b                                         ; $4930: $05
    jr nz, jr_01A_4901                            ; $4931: $20 $CE

    ld h, e                                       ; $4933: $63
    ld a, [bc]                                    ; $4934: $0A
    add hl, bc                                    ; $4935: $09
    ld [hl], d                                    ; $4936: $72
    pop de                                        ; $4937: $D1
    nop                                           ; $4938: $00
    ld [hl+], a                                   ; $4939: $22
    jp c, $1A40                                   ; $493A: $DA $40 $1A

    add hl, de                                    ; $493D: $19
    ld b, b                                       ; $493E: $40
    dec b                                         ; $493F: $05
    rra                                           ; $4940: $1F
    adc $63                                       ; $4941: $CE $63
    ld a, [bc]                                    ; $4943: $0A
    add hl, bc                                    ; $4944: $09
    ld [hl], d                                    ; $4945: $72
    pop de                                        ; $4946: $D1
    nop                                           ; $4947: $00
    ld [hl+], a                                   ; $4948: $22
    jp c, $1A40                                   ; $4949: $DA $40 $1A

    add hl, de                                    ; $494C: $19
    ld b, b                                       ; $494D: $40
    dec bc                                        ; $494E: $0B
    jr nz, @+$0D                                  ; $494F: $20 $0B

    rra                                           ; $4951: $1F
    ld l, e                                       ; $4952: $6B
    inc [hl]                                      ; $4953: $34
    dec c                                         ; $4954: $0D
    jr nc, jr_01A_49C1                            ; $4955: $30 $6A

    nop                                           ; $4957: $00
    add b                                         ; $4958: $80
    nop                                           ; $4959: $00
    ld sp, $131A                                  ; $495A: $31 $1A $13
    ld c, c                                       ; $495D: $49
    ld [hl+], a                                   ; $495E: $22
    adc $40                                       ; $495F: $CE $40
    nop                                           ; $4961: $00
    add d                                         ; $4962: $82

jr_01A_4963:
    rra                                           ; $4963: $1F
    ld hl, $4294                                  ; $4964: $21 $94 $42
    ld [bc], a                                    ; $4967: $02
    nop                                           ; $4968: $00
    rla                                           ; $4969: $17
    ld a, [bc]                                    ; $496A: $0A
    ld a, [bc]                                    ; $496B: $0A
    ld b, l                                       ; $496C: $45
    ld a, [de]                                    ; $496D: $1A
    ldh [rWY], a                                  ; $496E: $E0 $4A

jr_01A_4970:
    ld b, e                                       ; $4970: $43
    rrca                                          ; $4971: $0F
    inc b                                         ; $4972: $04
    dec b                                         ; $4973: $05
    ld d, $1A                                     ; $4974: $16 $1A
    ld a, a                                       ; $4976: $7F
    ld c, c                                       ; $4977: $49
    ld bc, $1020                                  ; $4978: $01 $20 $10
    ld b, l                                       ; $497B: $45
    ld a, [de]                                    ; $497C: $1A

jr_01A_497D:
    ld l, l                                       ; $497D: $6D
    ld d, l                                       ; $497E: $55
    sbc e                                         ; $497F: $9B
    add hl, hl                                    ; $4980: $29
    ld b, e                                       ; $4981: $43
    sbc a                                         ; $4982: $9F
    ld d, a                                       ; $4983: $57
    ld h, l                                       ; $4984: $65
    jr nz, jr_01A_49FE                            ; $4985: $20 $77

    ld l, c                                       ; $4987: $69
    ld l, h                                       ; $4988: $6C
    ld l, h                                       ; $4989: $6C
    jr nz, jr_01A_49F3                            ; $498A: $20 $67

    ld [hl], l                                    ; $498C: $75
    ld h, c                                       ; $498D: $61
    ld [hl], d                                    ; $498E: $72
    ld h, h                                       ; $498F: $64
    rst $38                                       ; $4990: $FF
    ld [hl], h                                    ; $4991: $74
    ld l, b                                       ; $4992: $68
    ld h, l                                       ; $4993: $65
    jr nz, jr_01A_49FB                            ; $4994: $20 $65

    ld l, [hl]                                    ; $4996: $6E
    ld [hl], h                                    ; $4997: $74
    ld [hl], d                                    ; $4998: $72
    ld h, c                                       ; $4999: $61
    ld l, [hl]                                    ; $499A: $6E
    ld h, e                                       ; $499B: $63
    ld h, l                                       ; $499C: $65
    ld hl, $48FE                                  ; $499D: $21 $FE $48
    ld [hl], l                                    ; $49A0: $75

jr_01A_49A1:
    ld [hl], d                                    ; $49A1: $72
    ld [hl], d                                    ; $49A2: $72
    ld a, c                                       ; $49A3: $79
    ld hl, $FDFE                                  ; $49A4: $21 $FE $FD
    sbc d                                         ; $49A7: $9A
    rlca                                          ; $49A8: $07
    nop                                           ; $49A9: $00
    ld l, e                                       ; $49AA: $6B
    ld c, d                                       ; $49AB: $4A
    add hl, bc                                    ; $49AC: $09
    nop                                           ; $49AD: $00
    jr nz, jr_01A_4963                            ; $49AE: $20 $B3

    ld c, a                                       ; $49B0: $4F
    ld b, b                                       ; $49B1: $40
    db $10                                        ; $49B2: $10
    rlca                                          ; $49B3: $07
    nop                                           ; $49B4: $00
    add c                                         ; $49B5: $81
    ld e, l                                       ; $49B6: $5D
    add hl, bc                                    ; $49B7: $09
    nop                                           ; $49B8: $00
    jr nz, jr_01A_4970                            ; $49B9: $20 $B5

    ld d, b                                       ; $49BB: $50
    ld b, d                                       ; $49BC: $42
    ld b, e                                       ; $49BD: $43
    nop                                           ; $49BE: $00
    ld c, e                                       ; $49BF: $4B
    and e                                         ; $49C0: $A3

jr_01A_49C1:
    jr nz, jr_01A_49DD                            ; $49C1: $20 $1A

    rrca                                          ; $49C3: $0F
    ld c, d                                       ; $49C4: $4A
    sbc e                                         ; $49C5: $9B
    ld a, b                                       ; $49C6: $78
    ld [hl], b                                    ; $49C7: $70
    sbc a                                         ; $49C8: $9F
    ld c, b                                       ; $49C9: $48
    ld h, l                                       ; $49CA: $65
    ld a, c                                       ; $49CB: $79
    jr nz, jr_01A_4A42                            ; $49CC: $20 $74

    ld l, b                                       ; $49CE: $68
    ld h, l                                       ; $49CF: $65
    ld [hl], d                                    ; $49D0: $72
    ld h, l                                       ; $49D1: $65
    daa                                           ; $49D2: $27
    ld [hl], e                                    ; $49D3: $73
    rst $38                                       ; $49D4: $FF
    ld [hl], e                                    ; $49D5: $73
    ld l, a                                       ; $49D6: $6F
    ld l, l                                       ; $49D7: $6D
    ld h, l                                       ; $49D8: $65
    ld [hl], h                                    ; $49D9: $74
    ld l, b                                       ; $49DA: $68
    ld l, c                                       ; $49DB: $69
    ld l, [hl]                                    ; $49DC: $6E

jr_01A_49DD:
    ld h, a                                       ; $49DD: $67
    jr nz, jr_01A_4A49                            ; $49DE: $20 $69

    ld l, [hl]                                    ; $49E0: $6E
    cp $74                                        ; $49E1: $FE $74
    ld l, b                                       ; $49E3: $68
    ld l, c                                       ; $49E4: $69
    ld [hl], e                                    ; $49E5: $73
    jr nz, jr_01A_4A58                            ; $49E6: $20 $70

    ld l, h                                       ; $49E8: $6C
    ld h, c                                       ; $49E9: $61
    ld l, [hl]                                    ; $49EA: $6E
    ld [hl], h                                    ; $49EB: $74
    ld l, $FE                                     ; $49EC: $2E $FE
    db $FD                                        ; $49EE: $FD
    ld b, b                                       ; $49EF: $40
    jr nc, jr_01A_49A1                            ; $49F0: $30 $AF

    ld c, e                                       ; $49F2: $4B

jr_01A_49F3:
    and e                                         ; $49F3: $A3
    jr nz, jr_01A_497D                            ; $49F4: $20 $87

    nop                                           ; $49F6: $00
    dec d                                         ; $49F7: $15
    ld bc, $789B                                  ; $49F8: $01 $9B $78

jr_01A_49FB:
    ld [hl], b                                    ; $49FB: $70
    sbc a                                         ; $49FC: $9F
    ld d, h                                       ; $49FD: $54

jr_01A_49FE:
    ld l, a                                       ; $49FE: $6F
    ld l, [hl]                                    ; $49FF: $6E
    ld a, c                                       ; $4A00: $79
    jr nz, @+$69                                  ; $4A01: $20 $67

    ld l, a                                       ; $4A03: $6F
    ld [hl], h                                    ; $4A04: $74
    jr nz, jr_01A_4A68                            ; $4A05: $20 $61

    rst $38                                       ; $4A07: $FF
    db $FD                                        ; $4A08: $FD
    sbc a                                         ; $4A09: $9F
    db $FC                                        ; $4A0A: $FC
    cp $FD                                        ; $4A0B: $FE $FD
    sbc d                                         ; $4A0D: $9A
    ld b, d                                       ; $4A0E: $42
    sbc e                                         ; $4A0F: $9B
    ld a, b                                       ; $4A10: $78
    ld [hl], b                                    ; $4A11: $70

jr_01A_4A12:
    sbc a                                         ; $4A12: $9F
    ld b, [hl]                                    ; $4A13: $46
    ld [hl], d                                    ; $4A14: $72
    ld h, l                                       ; $4A15: $65
    ld [hl], e                                    ; $4A16: $73
    ld l, b                                       ; $4A17: $68
    jr nz, jr_01A_4A89                            ; $4A18: $20 $6F

    ld [hl], l                                    ; $4A1A: $75
    ld [hl], h                                    ; $4A1B: $74
    jr nz, jr_01A_4A8D                            ; $4A1C: $20 $6F

    ld h, [hl]                                    ; $4A1E: $66
    rst $38                                       ; $4A1F: $FF
    ld [hl], h                                    ; $4A20: $74
    ld [hl], d                                    ; $4A21: $72
    ld h, l                                       ; $4A22: $65
    ld h, c                                       ; $4A23: $61
    ld [hl], e                                    ; $4A24: $73
    ld [hl], l                                    ; $4A25: $75
    ld [hl], d                                    ; $4A26: $72
    ld h, l                                       ; $4A27: $65
    ld [hl], e                                    ; $4A28: $73
    jr nz, jr_01A_4A94                            ; $4A29: $20 $69

    ld l, [hl]                                    ; $4A2B: $6E
    cp $74                                        ; $4A2C: $FE $74
    ld l, b                                       ; $4A2E: $68
    ld l, c                                       ; $4A2F: $69
    ld [hl], e                                    ; $4A30: $73
    jr nz, jr_01A_4AA3                            ; $4A31: $20 $70

    ld l, h                                       ; $4A33: $6C
    ld h, c                                       ; $4A34: $61
    ld l, [hl]                                    ; $4A35: $6E
    ld [hl], h                                    ; $4A36: $74
    ld l, $FE                                     ; $4A37: $2E $FE
    db $FD                                        ; $4A39: $FD
    sbc d                                         ; $4A3A: $9A
    ld b, d                                       ; $4A3B: $42
    ld b, e                                       ; $4A3C: $43
    nop                                           ; $4A3D: $00
    ld c, e                                       ; $4A3E: $4B
    and e                                         ; $4A3F: $A3
    ld b, b                                       ; $4A40: $40
    ld a, [de]                                    ; $4A41: $1A

jr_01A_4A42:
    add b                                         ; $4A42: $80
    ld c, d                                       ; $4A43: $4A
    sbc e                                         ; $4A44: $9B
    ld a, b                                       ; $4A45: $78
    ld [hl], b                                    ; $4A46: $70
    sbc a                                         ; $4A47: $9F
    ld c, b                                       ; $4A48: $48

jr_01A_4A49:
    ld l, l                                       ; $4A49: $6D
    ld l, l                                       ; $4A4A: $6D
    ld l, $2E                                     ; $4A4B: $2E $2E
    ld l, $FF                                     ; $4A4D: $2E $FF
    ld d, e                                       ; $4A4F: $53
    ld l, a                                       ; $4A50: $6F
    ld l, l                                       ; $4A51: $6D
    ld h, l                                       ; $4A52: $65
    ld [hl], h                                    ; $4A53: $74
    ld l, b                                       ; $4A54: $68
    ld l, c                                       ; $4A55: $69
    ld l, [hl]                                    ; $4A56: $6E
    ld h, a                                       ; $4A57: $67

jr_01A_4A58:
    jr nz, jr_01A_4AC2                            ; $4A58: $20 $68

    ld h, l                                       ; $4A5A: $65
    ld [hl], d                                    ; $4A5B: $72
    ld h, l                                       ; $4A5C: $65
    ld l, $FE                                     ; $4A5D: $2E $FE
    db $FD                                        ; $4A5F: $FD
    ld b, b                                       ; $4A60: $40
    jr nc, jr_01A_4A12                            ; $4A61: $30 $AF

    ld c, e                                       ; $4A63: $4B
    and e                                         ; $4A64: $A3
    ld b, b                                       ; $4A65: $40
    add a                                         ; $4A66: $87
    nop                                           ; $4A67: $00

jr_01A_4A68:
    dec d                                         ; $4A68: $15
    ld bc, $789B                                  ; $4A69: $01 $9B $78
    ld [hl], b                                    ; $4A6C: $70
    sbc a                                         ; $4A6D: $9F
    ld d, h                                       ; $4A6E: $54
    ld l, a                                       ; $4A6F: $6F
    ld l, [hl]                                    ; $4A70: $6E
    ld a, c                                       ; $4A71: $79
    jr nz, @+$69                                  ; $4A72: $20 $67

    ld l, a                                       ; $4A74: $6F
    ld [hl], h                                    ; $4A75: $74
    jr nz, jr_01A_4AD9                            ; $4A76: $20 $61

    rst $38                                       ; $4A78: $FF
    db $FD                                        ; $4A79: $FD
    sbc a                                         ; $4A7A: $9F
    db $FC                                        ; $4A7B: $FC
    cp $FD                                        ; $4A7C: $FE $FD
    sbc d                                         ; $4A7E: $9A
    ld b, d                                       ; $4A7F: $42
    sbc e                                         ; $4A80: $9B
    ld a, b                                       ; $4A81: $78
    ld [hl], b                                    ; $4A82: $70
    sbc a                                         ; $4A83: $9F
    ld b, [hl]                                    ; $4A84: $46
    ld [hl], d                                    ; $4A85: $72
    ld h, l                                       ; $4A86: $65
    ld [hl], e                                    ; $4A87: $73
    ld l, b                                       ; $4A88: $68

jr_01A_4A89:
    jr nz, @+$71                                  ; $4A89: $20 $6F

    ld [hl], l                                    ; $4A8B: $75
    ld [hl], h                                    ; $4A8C: $74

jr_01A_4A8D:
    jr nz, jr_01A_4AFE                            ; $4A8D: $20 $6F

    ld h, [hl]                                    ; $4A8F: $66
    rst $38                                       ; $4A90: $FF
    ld [hl], h                                    ; $4A91: $74
    ld [hl], d                                    ; $4A92: $72
    ld h, l                                       ; $4A93: $65

jr_01A_4A94:
    ld h, c                                       ; $4A94: $61
    ld [hl], e                                    ; $4A95: $73
    ld [hl], l                                    ; $4A96: $75
    ld [hl], d                                    ; $4A97: $72
    ld h, l                                       ; $4A98: $65
    ld [hl], e                                    ; $4A99: $73
    jr nz, jr_01A_4B04                            ; $4A9A: $20 $68

    ld h, l                                       ; $4A9C: $65
    ld [hl], d                                    ; $4A9D: $72
    ld h, l                                       ; $4A9E: $65
    ld l, $FE                                     ; $4A9F: $2E $FE
    db $FD                                        ; $4AA1: $FD
    sbc d                                         ; $4AA2: $9A

jr_01A_4AA3:
    ld b, d                                       ; $4AA3: $42
    xor h                                         ; $4AA4: $AC
    or d                                          ; $4AA5: $B2
    and d                                         ; $4AA6: $A2
    ld bc, $6593                                  ; $4AA7: $01 $93 $65
    ldh [$50], a                                  ; $4AAA: $E0 $50
    ld c, a                                       ; $4AAC: $4F
    ld h, h                                       ; $4AAD: $64
    adc e                                         ; $4AAE: $8B
    ld d, [hl]                                    ; $4AAF: $56
    ld l, c                                       ; $4AB0: $69
    sub h                                         ; $4AB1: $94
    ld d, [hl]                                    ; $4AB2: $56
    ld h, [hl]                                    ; $4AB3: $66
    ret nz                                        ; $4AB4: $C0

    ld e, h                                       ; $4AB5: $5C
    ld hl, $0005                                  ; $4AB6: $21 $05 $00
    add c                                         ; $4AB9: $81
    ld e, l                                       ; $4ABA: $5D
    dec b                                         ; $4ABB: $05
    dec b                                         ; $4ABC: $05

jr_01A_4ABD:
    ld a, l                                       ; $4ABD: $7D
    ret nc                                        ; $4ABE: $D0

    nop                                           ; $4ABF: $00
    jr nz, jr_01A_4ABD                            ; $4AC0: $20 $FB

jr_01A_4AC2:
    ld d, b                                       ; $4AC2: $50
    ld [hl+], a                                   ; $4AC3: $22
    dec b                                         ; $4AC4: $05
    ld b, b                                       ; $4AC5: $40
    dec bc                                        ; $4AC6: $0B
    nop                                           ; $4AC7: $00
    nop                                           ; $4AC8: $00
    add d                                         ; $4AC9: $82
    rra                                           ; $4ACA: $1F
    ld [$4294], sp                                ; $4ACB: $08 $94 $42
    ld [bc], a                                    ; $4ACE: $02
    rla                                           ; $4ACF: $17
    nop                                           ; $4AD0: $00
    ld a, [bc]                                    ; $4AD1: $0A
    ld a, [bc]                                    ; $4AD2: $0A
    ld b, l                                       ; $4AD3: $45
    ld a, [de]                                    ; $4AD4: $1A
    and h                                         ; $4AD5: $A4
    ld c, d                                       ; $4AD6: $4A
    ld [bc], a                                    ; $4AD7: $02
    nop                                           ; $4AD8: $00

jr_01A_4AD9:
    rrca                                          ; $4AD9: $0F
    jr nz, @+$16                                  ; $4ADA: $20 $14

    ld b, l                                       ; $4ADC: $45
    ld a, [de]                                    ; $4ADD: $1A
    add hl, de                                    ; $4ADE: $19
    ld c, e                                       ; $4ADF: $4B
    xor h                                         ; $4AE0: $AC
    or d                                          ; $4AE1: $B2
    and d                                         ; $4AE2: $A2
    ld bc, $6593                                  ; $4AE3: $01 $93 $65
    rst $28                                       ; $4AE6: $EF
    ld d, b                                       ; $4AE7: $50
    ld c, a                                       ; $4AE8: $4F
    ld h, h                                       ; $4AE9: $64
    sbc l                                         ; $4AEA: $9D
    ld d, [hl]                                    ; $4AEB: $56
    ld h, [hl]                                    ; $4AEC: $66
    ret nz                                        ; $4AED: $C0

    ld e, h                                       ; $4AEE: $5C
    ld hl, $0005                                  ; $4AEF: $21 $05 $00
    add c                                         ; $4AF2: $81
    ld e, l                                       ; $4AF3: $5D
    dec b                                         ; $4AF4: $05
    dec b                                         ; $4AF5: $05

jr_01A_4AF6:
    ld a, l                                       ; $4AF6: $7D
    ret nc                                        ; $4AF7: $D0

    nop                                           ; $4AF8: $00
    jr nz, jr_01A_4AF6                            ; $4AF9: $20 $FB

    ld d, b                                       ; $4AFB: $50
    ld [hl+], a                                   ; $4AFC: $22
    dec b                                         ; $4AFD: $05

jr_01A_4AFE:
    ld b, b                                       ; $4AFE: $40
    dec bc                                        ; $4AFF: $0B
    nop                                           ; $4B00: $00
    nop                                           ; $4B01: $00
    add d                                         ; $4B02: $82
    rra                                           ; $4B03: $1F

jr_01A_4B04:
    ld [$4294], sp                                ; $4B04: $08 $94 $42
    ld [bc], a                                    ; $4B07: $02
    rrca                                          ; $4B08: $0F
    nop                                           ; $4B09: $00
    inc d                                         ; $4B0A: $14
    jr nz, jr_01A_4B52                            ; $4B0B: $20 $45

    ld a, [de]                                    ; $4B0D: $1A
    ldh [rWY], a                                  ; $4B0E: $E0 $4A
    ld [bc], a                                    ; $4B10: $02
    ld b, $04                                     ; $4B11: $06 $04
    ld bc, $4515                                  ; $4B13: $01 $15 $45
    add hl, de                                    ; $4B16: $19

jr_01A_4B17:
    add [hl]                                      ; $4B17: $86
    ld h, e                                       ; $4B18: $63
    xor h                                         ; $4B19: $AC
    or d                                          ; $4B1A: $B2
    and d                                         ; $4B1B: $A2
    ld bc, $6593                                  ; $4B1C: $01 $93 $65
    cp $50                                        ; $4B1F: $FE $50
    ld c, a                                       ; $4B21: $4F
    ld h, h                                       ; $4B22: $64
    and [hl]                                      ; $4B23: $A6
    ld d, [hl]                                    ; $4B24: $56
    ld h, [hl]                                    ; $4B25: $66
    ret nz                                        ; $4B26: $C0

    ld e, h                                       ; $4B27: $5C
    ld hl, $0005                                  ; $4B28: $21 $05 $00
    add c                                         ; $4B2B: $81
    ld e, l                                       ; $4B2C: $5D
    dec b                                         ; $4B2D: $05
    dec b                                         ; $4B2E: $05

jr_01A_4B2F:
    ld d, l                                       ; $4B2F: $55
    ret nc                                        ; $4B30: $D0

    nop                                           ; $4B31: $00
    jr nz, jr_01A_4B2F                            ; $4B32: $20 $FB

    ld d, b                                       ; $4B34: $50
    ld [hl+], a                                   ; $4B35: $22
    dec b                                         ; $4B36: $05
    ld b, b                                       ; $4B37: $40
    dec bc                                        ; $4B38: $0B
    nop                                           ; $4B39: $00
    nop                                           ; $4B3A: $00
    add d                                         ; $4B3B: $82
    rra                                           ; $4B3C: $1F
    ld [$4294], sp                                ; $4B3D: $08 $94 $42
    ld bc, $0323                                  ; $4B40: $01 $23 $03
    dec b                                         ; $4B43: $05
    nop                                           ; $4B44: $00
    add c                                         ; $4B45: $81
    ld e, l                                       ; $4B46: $5D
    dec b                                         ; $4B47: $05
    dec b                                         ; $4B48: $05
    push af                                       ; $4B49: $F5
    ret nc                                        ; $4B4A: $D0

    nop                                           ; $4B4B: $00
    jr nz, jr_01A_4B17                            ; $4B4C: $20 $C9

    ld d, b                                       ; $4B4E: $50
    ld [hl+], a                                   ; $4B4F: $22
    dec b                                         ; $4B50: $05
    ld b, b                                       ; $4B51: $40

jr_01A_4B52:
    ld b, l                                       ; $4B52: $45
    rla                                           ; $4B53: $17
    add d                                         ; $4B54: $82
    ld l, [hl]                                    ; $4B55: $6E
    sbc e                                         ; $4B56: $9B
    ld a, c                                       ; $4B57: $79
    ld d, a                                       ; $4B58: $57
    sbc a                                         ; $4B59: $9F
    ld e, c                                       ; $4B5A: $59
    ld l, a                                       ; $4B5B: $6F
    ld [hl], l                                    ; $4B5C: $75
    jr nz, jr_01A_4BC0                            ; $4B5D: $20 $61

    ld [hl], d                                    ; $4B5F: $72
    ld h, l                                       ; $4B60: $65
    jr nz, jr_01A_4BD7                            ; $4B61: $20 $74

    ld l, b                                       ; $4B63: $68
    ld h, l                                       ; $4B64: $65
    rst $38                                       ; $4B65: $FF
    ld l, a                                       ; $4B66: $6F
    ld l, [hl]                                    ; $4B67: $6E
    ld h, l                                       ; $4B68: $65
    jr nz, jr_01A_4BE2                            ; $4B69: $20 $77

    ld l, b                                       ; $4B6B: $68
    ld l, a                                       ; $4B6C: $6F
    jr nz, jr_01A_4BD5                            ; $4B6D: $20 $66

    ld [hl], d                                    ; $4B6F: $72
    ld h, l                                       ; $4B70: $65
    ld h, l                                       ; $4B71: $65
    ld h, h                                       ; $4B72: $64
    cp $6D                                        ; $4B73: $FE $6D
    ld h, l                                       ; $4B75: $65
    ld l, $20                                     ; $4B76: $2E $20
    ld d, h                                       ; $4B78: $54
    ld l, b                                       ; $4B79: $68
    ld h, c                                       ; $4B7A: $61
    ld l, [hl]                                    ; $4B7B: $6E
    ld l, e                                       ; $4B7C: $6B
    jr nz, jr_01A_4BF8                            ; $4B7D: $20 $79

    ld l, a                                       ; $4B7F: $6F
    ld [hl], l                                    ; $4B80: $75
    ld l, $FF                                     ; $4B81: $2E $FF
    ld b, c                                       ; $4B83: $41
    ld [hl], e                                    ; $4B84: $73
    jr nz, @+$63                                  ; $4B85: $20 $61

    jr nz, jr_01A_4BFD                            ; $4B87: $20 $74

    ld l, a                                       ; $4B89: $6F
    ld l, e                                       ; $4B8A: $6B
    ld h, l                                       ; $4B8B: $65
    ld l, [hl]                                    ; $4B8C: $6E
    jr nz, jr_01A_4BFE                            ; $4B8D: $20 $6F

    ld h, [hl]                                    ; $4B8F: $66
    cp $6D                                        ; $4B90: $FE $6D
    ld a, c                                       ; $4B92: $79
    jr nz, jr_01A_4BF6                            ; $4B93: $20 $61

    ld [hl], b                                    ; $4B95: $70
    ld [hl], b                                    ; $4B96: $70
    ld [hl], d                                    ; $4B97: $72
    ld h, l                                       ; $4B98: $65
    ld h, e                                       ; $4B99: $63
    ld l, c                                       ; $4B9A: $69
    ld h, c                                       ; $4B9B: $61
    ld [hl], h                                    ; $4B9C: $74
    ld l, c                                       ; $4B9D: $69
    ld l, a                                       ; $4B9E: $6F
    ld l, [hl]                                    ; $4B9F: $6E
    rst $38                                       ; $4BA0: $FF
    ld [hl], h                                    ; $4BA1: $74
    ld h, c                                       ; $4BA2: $61
    ld l, e                                       ; $4BA3: $6B
    ld h, l                                       ; $4BA4: $65
    jr nz, jr_01A_4C1B                            ; $4BA5: $20 $74

    ld l, b                                       ; $4BA7: $68
    ld l, c                                       ; $4BA8: $69
    ld [hl], e                                    ; $4BA9: $73
    ld l, $FE                                     ; $4BAA: $2E $FE
    db $FD                                        ; $4BAC: $FD
    add a                                         ; $4BAD: $87
    nop                                           ; $4BAE: $00

jr_01A_4BAF:
    dec d                                         ; $4BAF: $15
    ld bc, $789B                                  ; $4BB0: $01 $9B $78
    ld [hl], b                                    ; $4BB3: $70
    sbc a                                         ; $4BB4: $9F
    ld d, h                                       ; $4BB5: $54
    ld l, a                                       ; $4BB6: $6F
    ld l, [hl]                                    ; $4BB7: $6E
    ld a, c                                       ; $4BB8: $79
    jr nz, jr_01A_4C22                            ; $4BB9: $20 $67

    ld l, a                                       ; $4BBB: $6F
    ld [hl], h                                    ; $4BBC: $74
    jr nz, jr_01A_4C20                            ; $4BBD: $20 $61

    rst $38                                       ; $4BBF: $FF

jr_01A_4BC0:
    db $FC                                        ; $4BC0: $FC
    cp $FD                                        ; $4BC1: $FE $FD
    sbc d                                         ; $4BC3: $9A
    ld e, b                                       ; $4BC4: $58
    ld bc, $9B42                                  ; $4BC5: $01 $42 $9B
    ld a, c                                       ; $4BC8: $79
    ld d, a                                       ; $4BC9: $57
    sbc a                                         ; $4BCA: $9F
    ld d, h                                       ; $4BCB: $54
    ld l, b                                       ; $4BCC: $68
    ld h, c                                       ; $4BCD: $61
    ld l, [hl]                                    ; $4BCE: $6E
    ld l, e                                       ; $4BCF: $6B
    ld [hl], e                                    ; $4BD0: $73
    jr nz, @+$63                                  ; $4BD1: $20 $61

    ld h, a                                       ; $4BD3: $67
    ld h, c                                       ; $4BD4: $61

jr_01A_4BD5:
    ld l, c                                       ; $4BD5: $69
    ld l, [hl]                                    ; $4BD6: $6E

jr_01A_4BD7:
    rst $38                                       ; $4BD7: $FF
    ld h, [hl]                                    ; $4BD8: $66
    ld l, a                                       ; $4BD9: $6F
    ld [hl], d                                    ; $4BDA: $72
    jr nz, jr_01A_4C43                            ; $4BDB: $20 $66

    ld [hl], d                                    ; $4BDD: $72
    ld h, l                                       ; $4BDE: $65
    ld h, l                                       ; $4BDF: $65
    ld l, c                                       ; $4BE0: $69
    ld l, [hl]                                    ; $4BE1: $6E

jr_01A_4BE2:
    ld h, a                                       ; $4BE2: $67
    jr nz, jr_01A_4C52                            ; $4BE3: $20 $6D

    ld h, l                                       ; $4BE5: $65
    ld hl, $FDFE                                  ; $4BE6: $21 $FE $FD
    sbc d                                         ; $4BE9: $9A
    ld e, b                                       ; $4BEA: $58
    ld bc, $9342                                  ; $4BEB: $01 $42 $93
    ld h, l                                       ; $4BEE: $65
    dec c                                         ; $4BEF: $0D
    ld d, c                                       ; $4BF0: $51
    ld c, a                                       ; $4BF1: $4F
    ld h, h                                       ; $4BF2: $64
    xor a                                         ; $4BF3: $AF
    ld d, [hl]                                    ; $4BF4: $56
    ld h, [hl]                                    ; $4BF5: $66

jr_01A_4BF6:
    ret nz                                        ; $4BF6: $C0

    ld e, h                                       ; $4BF7: $5C

jr_01A_4BF8:
    ld hl, $0005                                  ; $4BF8: $21 $05 $00
    add c                                         ; $4BFB: $81
    ld e, l                                       ; $4BFC: $5D

jr_01A_4BFD:
    dec b                                         ; $4BFD: $05

jr_01A_4BFE:
    dec b                                         ; $4BFE: $05
    ld d, l                                       ; $4BFF: $55
    ret nc                                        ; $4C00: $D0

    nop                                           ; $4C01: $00
    jr nz, jr_01A_4BAF                            ; $4C02: $20 $AB

    ld d, b                                       ; $4C04: $50
    ld [hl+], a                                   ; $4C05: $22
    dec b                                         ; $4C06: $05
    ld b, b                                       ; $4C07: $40
    dec b                                         ; $4C08: $05
    ld [bc], a                                    ; $4C09: $02

jr_01A_4C0A:
    db $ED                                        ; $4C0A: $ED
    ld h, e                                       ; $4C0B: $63
    dec bc                                        ; $4C0C: $0B
    inc c                                         ; $4C0D: $0C
    set 2, b                                      ; $4C0E: $CB $D0
    nop                                           ; $4C10: $00
    ld a, [de]                                    ; $4C11: $1A
    ld [hl-], a                                   ; $4C12: $32
    ld c, h                                       ; $4C13: $4C
    ld a, [de]                                    ; $4C14: $1A
    ld c, e                                       ; $4C15: $4B
    ld c, h                                       ; $4C16: $4C
    ld l, e                                       ; $4C17: $6B
    dec de                                        ; $4C18: $1B
    inc h                                         ; $4C19: $24
    ld b, b                                       ; $4C1A: $40

jr_01A_4C1B:
    ld b, e                                       ; $4C1B: $43
    nop                                           ; $4C1C: $00
    add b                                         ; $4C1D: $80
    nop                                           ; $4C1E: $00
    dec bc                                        ; $4C1F: $0B

jr_01A_4C20:
    nop                                           ; $4C20: $00
    nop                                           ; $4C21: $00

jr_01A_4C22:
    add d                                         ; $4C22: $82
    rra                                           ; $4C23: $1F
    ld de, $4394                                  ; $4C24: $11 $94 $43
    ld a, [bc]                                    ; $4C27: $0A
    nop                                           ; $4C28: $00
    and [hl]                                      ; $4C29: $A6

jr_01A_4C2A:
    and c                                         ; $4C2A: $A1
    add b                                         ; $4C2B: $80

jr_01A_4C2C:
    ld [hl+], a                                   ; $4C2C: $22
    inc b                                         ; $4C2D: $04
    ld b, b                                       ; $4C2E: $40
    dec bc                                        ; $4C2F: $0B
    ld [bc], a                                    ; $4C30: $02
    ld b, d                                       ; $4C31: $42
    dec d                                         ; $4C32: $15
    jr nz, jr_01A_4CA0                            ; $4C33: $20 $6B

    ld h, l                                       ; $4C35: $65
    ld b, b                                       ; $4C36: $40
    jr nz, jr_01A_4BF8                            ; $4C37: $20 $BF

    ld h, [hl]                                    ; $4C39: $66
    ld b, b                                       ; $4C3A: $40
    jr nz, jr_01A_4CB8                            ; $4C3B: $20 $7B

    ld h, l                                       ; $4C3D: $65
    ld b, b                                       ; $4C3E: $40
    jr nz, jr_01A_4C0A                            ; $4C3F: $20 $C9

    ld h, [hl]                                    ; $4C41: $66
    sub b                                         ; $4C42: $90

jr_01A_4C43:
    jr nz, jr_01A_4C2C                            ; $4C43: $20 $E7

    ld h, [hl]                                    ; $4C45: $66
    jr nc, jr_01A_4C48                            ; $4C46: $30 $00

jr_01A_4C48:
    ld b, [hl]                                    ; $4C48: $46
    ld [hl-], a                                   ; $4C49: $32
    ld c, h                                       ; $4C4A: $4C
    ld b, e                                       ; $4C4B: $43
    nop                                           ; $4C4C: $00
    or b                                          ; $4C4D: $B0
    and c                                         ; $4C4E: $A1
    add b                                         ; $4C4F: $80
    ld a, [de]                                    ; $4C50: $1A
    ld e, a                                       ; $4C51: $5F

jr_01A_4C52:
    ld c, h                                       ; $4C52: $4C
    xor a                                         ; $4C53: $AF
    or b                                          ; $4C54: $B0
    and c                                         ; $4C55: $A1
    add b                                         ; $4C56: $80
    ld e, e                                       ; $4C57: $5B
    ld a, [de]                                    ; $4C58: $1A
    ld d, [hl]                                    ; $4C59: $56
    ld c, e                                       ; $4C5A: $4B
    ld b, l                                       ; $4C5B: $45
    jr nz, @+$4B                                  ; $4C5C: $20 $49

    ld l, d                                       ; $4C5E: $6A
    ld e, e                                       ; $4C5F: $5B
    ld a, [de]                                    ; $4C60: $1A

jr_01A_4C61:
    rst $00                                       ; $4C61: $C7
    ld c, e                                       ; $4C62: $4B
    ld b, l                                       ; $4C63: $45
    jr nz, jr_01A_4CAF                            ; $4C64: $20 $49

    ld l, d                                       ; $4C66: $6A
    ld bc, $0D0B                                  ; $4C67: $01 $0B $0D
    dec b                                         ; $4C6A: $05
    nop                                           ; $4C6B: $00
    add c                                         ; $4C6C: $81
    ld e, l                                       ; $4C6D: $5D
    dec b                                         ; $4C6E: $05
    dec b                                         ; $4C6F: $05
    ld l, c                                       ; $4C70: $69
    ret nc                                        ; $4C71: $D0

    nop                                           ; $4C72: $00
    jr nz, jr_01A_4C2A                            ; $4C73: $20 $B5

    ld d, b                                       ; $4C75: $50
    ld [hl+], a                                   ; $4C76: $22
    dec b                                         ; $4C77: $05
    ld b, b                                       ; $4C78: $40
    ld b, l                                       ; $4C79: $45
    ld a, [de]                                    ; $4C7A: $1A
    inc [hl]                                      ; $4C7B: $34
    ld e, e                                       ; $4C7C: $5B
    ld b, e                                       ; $4C7D: $43
    nop                                           ; $4C7E: $00
    ld c, e                                       ; $4C7F: $4B
    and e                                         ; $4C80: $A3
    ld [$CF1A], sp                                ; $4C81: $08 $1A $CF
    ld c, h                                       ; $4C84: $4C
    sbc e                                         ; $4C85: $9B
    ld a, b                                       ; $4C86: $78
    ld [hl], b                                    ; $4C87: $70
    sbc a                                         ; $4C88: $9F
    ld c, b                                       ; $4C89: $48
    ld h, l                                       ; $4C8A: $65
    ld a, c                                       ; $4C8B: $79
    jr nz, jr_01A_4D02                            ; $4C8C: $20 $74

    ld l, b                                       ; $4C8E: $68
    ld h, l                                       ; $4C8F: $65
    ld [hl], d                                    ; $4C90: $72
    ld h, l                                       ; $4C91: $65
    daa                                           ; $4C92: $27
    ld [hl], e                                    ; $4C93: $73
    rst $38                                       ; $4C94: $FF
    ld [hl], e                                    ; $4C95: $73
    ld l, a                                       ; $4C96: $6F
    ld l, l                                       ; $4C97: $6D
    ld h, l                                       ; $4C98: $65
    ld [hl], h                                    ; $4C99: $74
    ld l, b                                       ; $4C9A: $68
    ld l, c                                       ; $4C9B: $69
    ld l, [hl]                                    ; $4C9C: $6E
    ld h, a                                       ; $4C9D: $67
    jr nz, jr_01A_4D09                            ; $4C9E: $20 $69

jr_01A_4CA0:
    ld l, [hl]                                    ; $4CA0: $6E
    cp $74                                        ; $4CA1: $FE $74
    ld l, b                                       ; $4CA3: $68
    ld l, c                                       ; $4CA4: $69
    ld [hl], e                                    ; $4CA5: $73
    jr nz, jr_01A_4D18                            ; $4CA6: $20 $70

    ld l, h                                       ; $4CA8: $6C
    ld h, c                                       ; $4CA9: $61
    ld l, [hl]                                    ; $4CAA: $6E
    ld [hl], h                                    ; $4CAB: $74
    ld l, $FE                                     ; $4CAC: $2E $FE
    db $FD                                        ; $4CAE: $FD

jr_01A_4CAF:
    ld b, b                                       ; $4CAF: $40
    jr nc, jr_01A_4C61                            ; $4CB0: $30 $AF

    ld c, e                                       ; $4CB2: $4B
    and e                                         ; $4CB3: $A3
    ld [$0087], sp                                ; $4CB4: $08 $87 $00
    add hl, de                                    ; $4CB7: $19

jr_01A_4CB8:
    ld bc, $789B                                  ; $4CB8: $01 $9B $78
    ld [hl], b                                    ; $4CBB: $70
    sbc a                                         ; $4CBC: $9F
    ld d, h                                       ; $4CBD: $54
    ld l, a                                       ; $4CBE: $6F
    ld l, [hl]                                    ; $4CBF: $6E
    ld a, c                                       ; $4CC0: $79
    jr nz, jr_01A_4D2A                            ; $4CC1: $20 $67

    ld l, a                                       ; $4CC3: $6F
    ld [hl], h                                    ; $4CC4: $74
    jr nz, jr_01A_4D28                            ; $4CC5: $20 $61

    rst $38                                       ; $4CC7: $FF
    db $FD                                        ; $4CC8: $FD
    sbc a                                         ; $4CC9: $9F
    db $FC                                        ; $4CCA: $FC
    cp $FD                                        ; $4CCB: $FE $FD
    sbc d                                         ; $4CCD: $9A
    ld b, d                                       ; $4CCE: $42
    sbc e                                         ; $4CCF: $9B
    ld a, b                                       ; $4CD0: $78
    ld [hl], b                                    ; $4CD1: $70
    sbc a                                         ; $4CD2: $9F
    ld b, [hl]                                    ; $4CD3: $46
    ld [hl], d                                    ; $4CD4: $72
    ld h, l                                       ; $4CD5: $65
    ld [hl], e                                    ; $4CD6: $73
    ld l, b                                       ; $4CD7: $68
    jr nz, jr_01A_4D49                            ; $4CD8: $20 $6F

    ld [hl], l                                    ; $4CDA: $75
    ld [hl], h                                    ; $4CDB: $74
    jr nz, jr_01A_4D4D                            ; $4CDC: $20 $6F

    ld h, [hl]                                    ; $4CDE: $66
    rst $38                                       ; $4CDF: $FF

jr_01A_4CE0:
    ld [hl], h                                    ; $4CE0: $74
    ld [hl], d                                    ; $4CE1: $72
    ld h, l                                       ; $4CE2: $65
    ld h, c                                       ; $4CE3: $61
    ld [hl], e                                    ; $4CE4: $73
    ld [hl], l                                    ; $4CE5: $75
    ld [hl], d                                    ; $4CE6: $72
    ld h, l                                       ; $4CE7: $65
    ld [hl], e                                    ; $4CE8: $73
    jr nz, jr_01A_4D54                            ; $4CE9: $20 $69

    ld l, [hl]                                    ; $4CEB: $6E
    cp $74                                        ; $4CEC: $FE $74
    ld l, b                                       ; $4CEE: $68
    ld l, c                                       ; $4CEF: $69
    ld [hl], e                                    ; $4CF0: $73
    jr nz, jr_01A_4D63                            ; $4CF1: $20 $70

    ld l, h                                       ; $4CF3: $6C
    ld h, c                                       ; $4CF4: $61
    ld l, [hl]                                    ; $4CF5: $6E
    ld [hl], h                                    ; $4CF6: $74
    ld l, $FE                                     ; $4CF7: $2E $FE
    db $FD                                        ; $4CF9: $FD
    sbc d                                         ; $4CFA: $9A
    ld b, d                                       ; $4CFB: $42
    ld b, e                                       ; $4CFC: $43
    nop                                           ; $4CFD: $00
    ld c, e                                       ; $4CFE: $4B
    and e                                         ; $4CFF: $A3
    db $10                                        ; $4D00: $10
    ld a, [de]                                    ; $4D01: $1A

jr_01A_4D02:
    ld c, [hl]                                    ; $4D02: $4E
    ld c, l                                       ; $4D03: $4D
    sbc e                                         ; $4D04: $9B
    ld a, b                                       ; $4D05: $78
    ld [hl], b                                    ; $4D06: $70
    sbc a                                         ; $4D07: $9F
    ld c, b                                       ; $4D08: $48

jr_01A_4D09:
    ld h, l                                       ; $4D09: $65
    ld a, c                                       ; $4D0A: $79
    jr nz, jr_01A_4D81                            ; $4D0B: $20 $74

    ld l, b                                       ; $4D0D: $68
    ld h, l                                       ; $4D0E: $65
    ld [hl], d                                    ; $4D0F: $72
    ld h, l                                       ; $4D10: $65
    daa                                           ; $4D11: $27
    ld [hl], e                                    ; $4D12: $73
    rst $38                                       ; $4D13: $FF
    ld [hl], e                                    ; $4D14: $73
    ld l, a                                       ; $4D15: $6F
    ld l, l                                       ; $4D16: $6D
    ld h, l                                       ; $4D17: $65

jr_01A_4D18:
    ld [hl], h                                    ; $4D18: $74
    ld l, b                                       ; $4D19: $68
    ld l, c                                       ; $4D1A: $69
    ld l, [hl]                                    ; $4D1B: $6E
    ld h, a                                       ; $4D1C: $67
    jr nz, jr_01A_4D88                            ; $4D1D: $20 $69

    ld l, [hl]                                    ; $4D1F: $6E
    cp $74                                        ; $4D20: $FE $74
    ld l, b                                       ; $4D22: $68
    ld l, c                                       ; $4D23: $69
    ld [hl], e                                    ; $4D24: $73
    jr nz, jr_01A_4D97                            ; $4D25: $20 $70

    ld l, h                                       ; $4D27: $6C

jr_01A_4D28:
    ld h, c                                       ; $4D28: $61
    ld l, [hl]                                    ; $4D29: $6E

jr_01A_4D2A:
    ld [hl], h                                    ; $4D2A: $74
    ld l, $FE                                     ; $4D2B: $2E $FE
    db $FD                                        ; $4D2D: $FD
    ld b, b                                       ; $4D2E: $40
    jr nc, jr_01A_4CE0                            ; $4D2F: $30 $AF

    ld c, e                                       ; $4D31: $4B
    and e                                         ; $4D32: $A3
    db $10                                        ; $4D33: $10
    add a                                         ; $4D34: $87
    nop                                           ; $4D35: $00
    add hl, de                                    ; $4D36: $19
    ld bc, $789B                                  ; $4D37: $01 $9B $78
    ld [hl], b                                    ; $4D3A: $70
    sbc a                                         ; $4D3B: $9F
    ld d, h                                       ; $4D3C: $54
    ld l, a                                       ; $4D3D: $6F
    ld l, [hl]                                    ; $4D3E: $6E
    ld a, c                                       ; $4D3F: $79
    jr nz, jr_01A_4DA9                            ; $4D40: $20 $67

    ld l, a                                       ; $4D42: $6F
    ld [hl], h                                    ; $4D43: $74
    jr nz, jr_01A_4DA7                            ; $4D44: $20 $61

    rst $38                                       ; $4D46: $FF
    db $FD                                        ; $4D47: $FD
    sbc a                                         ; $4D48: $9F

jr_01A_4D49:
    db $FC                                        ; $4D49: $FC
    cp $FD                                        ; $4D4A: $FE $FD
    sbc d                                         ; $4D4C: $9A

jr_01A_4D4D:
    ld b, d                                       ; $4D4D: $42
    sbc e                                         ; $4D4E: $9B
    ld a, b                                       ; $4D4F: $78
    ld [hl], b                                    ; $4D50: $70
    sbc a                                         ; $4D51: $9F
    ld c, c                                       ; $4D52: $49
    daa                                           ; $4D53: $27

jr_01A_4D54:
    ld l, h                                       ; $4D54: $6C
    ld l, h                                       ; $4D55: $6C
    jr nz, jr_01A_4DC0                            ; $4D56: $20 $68

    ld h, c                                       ; $4D58: $61
    halt                                          ; $4D59: $76
    ld h, l                                       ; $4D5A: $65
    jr nz, jr_01A_4DD1                            ; $4D5B: $20 $74

    ld l, a                                       ; $4D5D: $6F
    rst $38                                       ; $4D5E: $FF
    ld [hl], a                                    ; $4D5F: $77
    ld h, c                                       ; $4D60: $61
    ld l, c                                       ; $4D61: $69
    ld [hl], h                                    ; $4D62: $74

jr_01A_4D63:
    jr nz, jr_01A_4DCB                            ; $4D63: $20 $66

    ld l, a                                       ; $4D65: $6F

jr_01A_4D66:
    ld [hl], d                                    ; $4D66: $72
    jr nz, jr_01A_4DD6                            ; $4D67: $20 $6D

    ld l, a                                       ; $4D69: $6F
    ld [hl], d                                    ; $4D6A: $72
    ld h, l                                       ; $4D6B: $65
    cp $69                                        ; $4D6C: $FE $69
    ld [hl], h                                    ; $4D6E: $74
    ld h, l                                       ; $4D6F: $65
    ld l, l                                       ; $4D70: $6D
    ld [hl], e                                    ; $4D71: $73
    jr nz, jr_01A_4DE8                            ; $4D72: $20 $74

    ld l, a                                       ; $4D74: $6F
    jr nz, @+$69                                  ; $4D75: $20 $67

    ld [hl], d                                    ; $4D77: $72
    ld l, a                                       ; $4D78: $6F
    ld [hl], a                                    ; $4D79: $77
    rst $38                                       ; $4D7A: $FF
    ld l, c                                       ; $4D7B: $69
    ld l, [hl]                                    ; $4D7C: $6E
    jr nz, jr_01A_4DF3                            ; $4D7D: $20 $74

    ld l, b                                       ; $4D7F: $68
    ld l, c                                       ; $4D80: $69

jr_01A_4D81:
    ld [hl], e                                    ; $4D81: $73
    jr nz, jr_01A_4DF3                            ; $4D82: $20 $6F

    ld l, [hl]                                    ; $4D84: $6E
    ld h, l                                       ; $4D85: $65
    ld l, $FE                                     ; $4D86: $2E $FE

jr_01A_4D88:
    db $FD                                        ; $4D88: $FD
    sbc d                                         ; $4D89: $9A
    ld b, d                                       ; $4D8A: $42
    dec b                                         ; $4D8B: $05
    nop                                           ; $4D8C: $00
    add c                                         ; $4D8D: $81
    ld e, l                                       ; $4D8E: $5D
    dec b                                         ; $4D8F: $05
    dec b                                         ; $4D90: $05
    ld a, l                                       ; $4D91: $7D
    ret nc                                        ; $4D92: $D0

    nop                                           ; $4D93: $00
    jr nz, @-$53                                  ; $4D94: $20 $AB

    ld d, b                                       ; $4D96: $50

jr_01A_4D97:
    ld [hl+], a                                   ; $4D97: $22
    dec b                                         ; $4D98: $05
    ld b, b                                       ; $4D99: $40
    ld bc, $110D                                  ; $4D9A: $01 $0D $11
    xor h                                         ; $4D9D: $AC
    or d                                          ; $4D9E: $B2
    and d                                         ; $4D9F: $A2
    ld bc, $6593                                  ; $4DA0: $01 $93 $65
    inc e                                         ; $4DA3: $1C
    ld d, c                                       ; $4DA4: $51
    ld c, a                                       ; $4DA5: $4F
    ld h, h                                       ; $4DA6: $64

jr_01A_4DA7:
    or h                                          ; $4DA7: $B4
    ld d, [hl]                                    ; $4DA8: $56

jr_01A_4DA9:
    ld l, c                                       ; $4DA9: $69
    cp c                                          ; $4DAA: $B9
    ld d, [hl]                                    ; $4DAB: $56
    ld h, [hl]                                    ; $4DAC: $66
    ret nz                                        ; $4DAD: $C0

    ld e, h                                       ; $4DAE: $5C
    ld hl, $0005                                  ; $4DAF: $21 $05 $00
    add c                                         ; $4DB2: $81
    ld e, l                                       ; $4DB3: $5D
    dec b                                         ; $4DB4: $05
    dec b                                         ; $4DB5: $05
    ld a, l                                       ; $4DB6: $7D
    ret nc                                        ; $4DB7: $D0

    nop                                           ; $4DB8: $00
    jr nz, jr_01A_4D66                            ; $4DB9: $20 $AB

    ld d, b                                       ; $4DBB: $50
    ld [hl+], a                                   ; $4DBC: $22
    dec b                                         ; $4DBD: $05
    ld b, b                                       ; $4DBE: $40
    dec b                                         ; $4DBF: $05

jr_01A_4DC0:
    ld [bc], a                                    ; $4DC0: $02
    db $ED                                        ; $4DC1: $ED
    ld h, e                                       ; $4DC2: $63
    ld a, [bc]                                    ; $4DC3: $0A
    inc c                                         ; $4DC4: $0C
    ld a, [hl+]                                   ; $4DC5: $2A
    pop de                                        ; $4DC6: $D1
    nop                                           ; $4DC7: $00
    db $10                                        ; $4DC8: $10
    xor h                                         ; $4DC9: $AC
    ld l, l                                       ; $4DCA: $6D

jr_01A_4DCB:
    ld a, [de]                                    ; $4DCB: $1A
    ldh [rKEY1], a                                ; $4DCC: $E0 $4D
    ld l, e                                       ; $4DCE: $6B
    daa                                           ; $4DCF: $27
    inc c                                         ; $4DD0: $0C

jr_01A_4DD1:
    ld b, b                                       ; $4DD1: $40
    ld d, l                                       ; $4DD2: $55
    nop                                           ; $4DD3: $00
    add b                                         ; $4DD4: $80
    nop                                           ; $4DD5: $00

jr_01A_4DD6:
    dec bc                                        ; $4DD6: $0B
    nop                                           ; $4DD7: $00
    dec bc                                        ; $4DD8: $0B
    ld [bc], a                                    ; $4DD9: $02
    nop                                           ; $4DDA: $00
    add d                                         ; $4DDB: $82
    rra                                           ; $4DDC: $1F
    ld de, $4294                                  ; $4DDD: $11 $94 $42
    ld e, e                                       ; $4DE0: $5B
    ld a, [de]                                    ; $4DE1: $1A
    add sp, $4D                                   ; $4DE2: $E8 $4D
    ld b, l                                       ; $4DE4: $45
    db $10                                        ; $4DE5: $10
    ld a, [c]                                     ; $4DE6: $F2
    ld l, l                                       ; $4DE7: $6D

jr_01A_4DE8:
    sbc e                                         ; $4DE8: $9B
    adc b                                         ; $4DE9: $88
    ld c, h                                       ; $4DEA: $4C
    sbc a                                         ; $4DEB: $9F
    ld c, b                                       ; $4DEC: $48
    ld l, c                                       ; $4DED: $69
    ld hl, $5720                                  ; $4DEE: $21 $20 $57
    ld h, l                                       ; $4DF1: $65
    ld l, h                                       ; $4DF2: $6C

jr_01A_4DF3:
    ld h, e                                       ; $4DF3: $63
    ld l, a                                       ; $4DF4: $6F
    ld l, l                                       ; $4DF5: $6D
    ld h, l                                       ; $4DF6: $65
    rst $38                                       ; $4DF7: $FF
    ld [hl], h                                    ; $4DF8: $74
    ld l, a                                       ; $4DF9: $6F
    jr nz, jr_01A_4E70                            ; $4DFA: $20 $74

    ld l, b                                       ; $4DFC: $68
    ld h, l                                       ; $4DFD: $65
    jr nz, jr_01A_4E41                            ; $4DFE: $20 $41

    ld [hl], d                                    ; $4E00: $72
    ld h, h                                       ; $4E01: $64
    ld h, l                                       ; $4E02: $65
    ld [hl], d                                    ; $4E03: $72
    ld l, c                                       ; $4E04: $69
    ld h, c                                       ; $4E05: $61
    ld l, h                                       ; $4E06: $6C
    cp $49                                        ; $4E07: $FE $49
    ld l, [hl]                                    ; $4E09: $6E
    ld l, [hl]                                    ; $4E0A: $6E
    ld l, $20                                     ; $4E0B: $2E $20
    ld c, [hl]                                    ; $4E0D: $4E
    ld l, a                                       ; $4E0E: $6F
    jr nz, jr_01A_4E73                            ; $4E0F: $20 $62

    ld h, l                                       ; $4E11: $65
    ld h, h                                       ; $4E12: $64
    ld [hl], e                                    ; $4E13: $73
    inc l                                         ; $4E14: $2C
    rst $38                                       ; $4E15: $FF
    ld h, d                                       ; $4E16: $62
    ld [hl], l                                    ; $4E17: $75
    ld [hl], h                                    ; $4E18: $74
    jr nz, jr_01A_4E8B                            ; $4E19: $20 $70

    ld l, h                                       ; $4E1B: $6C
    ld h, l                                       ; $4E1C: $65
    ld l, [hl]                                    ; $4E1D: $6E
    ld [hl], h                                    ; $4E1E: $74
    ld a, c                                       ; $4E1F: $79
    jr nz, @+$71                                  ; $4E20: $20 $6F

    ld h, [hl]                                    ; $4E22: $66
    cp $66                                        ; $4E23: $FE $66
    ld l, h                                       ; $4E25: $6C
    ld l, a                                       ; $4E26: $6F
    ld l, a                                       ; $4E27: $6F
    ld [hl], d                                    ; $4E28: $72
    ld hl, $5320                                  ; $4E29: $21 $20 $53
    ld l, b                                       ; $4E2C: $68
    ld h, c                                       ; $4E2D: $61
    ld l, h                                       ; $4E2E: $6C
    ld l, h                                       ; $4E2F: $6C
    jr nz, @+$4B                                  ; $4E30: $20 $49

    rst $38                                       ; $4E32: $FF
    ld [hl], d                                    ; $4E33: $72
    ld h, l                                       ; $4E34: $65
    ld h, e                                       ; $4E35: $63
    ld l, a                                       ; $4E36: $6F
    ld [hl], d                                    ; $4E37: $72
    ld h, h                                       ; $4E38: $64
    jr nz, jr_01A_4EB4                            ; $4E39: $20 $79

    ld l, a                                       ; $4E3B: $6F
    ld [hl], l                                    ; $4E3C: $75
    ld [hl], d                                    ; $4E3D: $72
    cp $6A                                        ; $4E3E: $FE $6A
    ld l, a                                       ; $4E40: $6F

jr_01A_4E41:
    ld [hl], l                                    ; $4E41: $75
    ld [hl], d                                    ; $4E42: $72
    ld l, [hl]                                    ; $4E43: $6E
    ld h, l                                       ; $4E44: $65
    ld a, c                                       ; $4E45: $79
    ccf                                           ; $4E46: $3F
    cp $FD                                        ; $4E47: $FE $FD
    sbc e                                         ; $4E49: $9B
    ld a, b                                       ; $4E4A: $78
    ld [hl], b                                    ; $4E4B: $70
    sbc a                                         ; $4E4C: $9F
    jr nz, @+$57                                  ; $4E4D: $20 $55

    ld l, b                                       ; $4E4F: $68
    ld l, $2E                                     ; $4E50: $2E $2E
    ld l, $6F                                     ; $4E52: $2E $6F
    ld l, e                                       ; $4E54: $6B
    ld l, $FF                                     ; $4E55: $2E $FF
    jr nz, jr_01A_4EA2                            ; $4E57: $20 $49

    daa                                           ; $4E59: $27
    ld l, h                                       ; $4E5A: $6C
    ld l, h                                       ; $4E5B: $6C
    jr nz, jr_01A_4ECE                            ; $4E5C: $20 $70

    ld h, c                                       ; $4E5E: $61
    ld [hl], e                                    ; $4E5F: $73
    ld [hl], e                                    ; $4E60: $73
    ld l, $FD                                     ; $4E61: $2E $FD
    sbc h                                         ; $4E63: $9C
    ld [bc], a                                    ; $4E64: $02
    ld a, [de]                                    ; $4E65: $1A
    ld l, e                                       ; $4E66: $6B
    ld c, [hl]                                    ; $4E67: $4E
    ld a, [de]                                    ; $4E68: $1A
    sbc d                                         ; $4E69: $9A
    ld c, [hl]                                    ; $4E6A: $4E
    sbc c                                         ; $4E6B: $99
    sbc e                                         ; $4E6C: $9B
    adc b                                         ; $4E6D: $88
    ld c, h                                       ; $4E6E: $4C
    sbc a                                         ; $4E6F: $9F

jr_01A_4E70:
    ld d, e                                       ; $4E70: $53
    ld l, h                                       ; $4E71: $6C
    ld h, l                                       ; $4E72: $65

jr_01A_4E73:
    ld h, l                                       ; $4E73: $65
    ld [hl], b                                    ; $4E74: $70
    jr nz, jr_01A_4EEE                            ; $4E75: $20 $77

    ld h, l                                       ; $4E77: $65
    ld l, h                                       ; $4E78: $6C
    ld l, h                                       ; $4E79: $6C
    jr nz, jr_01A_4EDD                            ; $4E7A: $20 $61

    ld l, [hl]                                    ; $4E7C: $6E
    ld h, h                                       ; $4E7D: $64
    rst $38                                       ; $4E7E: $FF
    ld [hl], a                                    ; $4E7F: $77
    ld h, c                                       ; $4E80: $61
    ld l, e                                       ; $4E81: $6B
    ld h, l                                       ; $4E82: $65
    ld l, $FE                                     ; $4E83: $2E $FE
    db $FD                                        ; $4E85: $FD
    sbc d                                         ; $4E86: $9A
    sub [hl]                                      ; $4E87: $96
    ld a, [de]                                    ; $4E88: $1A
    adc e                                         ; $4E89: $8B
    ld c, l                                       ; $4E8A: $4D

jr_01A_4E8B:
    ld l, [hl]                                    ; $4E8B: $6E
    rrca                                          ; $4E8C: $0F
    rst $38                                       ; $4E8D: $FF
    ld a, a                                       ; $4E8E: $7F
    halt                                          ; $4E8F: $76
    jr nz, jr_01A_4EA1                            ; $4E90: $20 $0F

    sub d                                         ; $4E92: $92
    ld bc, $4040                                  ; $4E93: $01 $40 $40
    ld b, l                                       ; $4E96: $45
    ld a, [de]                                    ; $4E97: $1A
    or a                                          ; $4E98: $B7
    ld c, [hl]                                    ; $4E99: $4E
    sbc c                                         ; $4E9A: $99
    sbc e                                         ; $4E9B: $9B
    adc b                                         ; $4E9C: $88
    ld c, h                                       ; $4E9D: $4C
    sbc a                                         ; $4E9E: $9F
    ld c, b                                       ; $4E9F: $48
    ld h, c                                       ; $4EA0: $61

jr_01A_4EA1:
    halt                                          ; $4EA1: $76

jr_01A_4EA2:
    ld h, l                                       ; $4EA2: $65
    jr nz, jr_01A_4F06                            ; $4EA3: $20 $61

    jr nz, @+$69                                  ; $4EA5: $20 $67

    ld [hl], d                                    ; $4EA7: $72
    ld h, l                                       ; $4EA8: $65
    ld h, c                                       ; $4EA9: $61
    ld [hl], h                                    ; $4EAA: $74
    rst $38                                       ; $4EAB: $FF
    ld h, h                                       ; $4EAC: $64
    ld h, c                                       ; $4EAD: $61
    ld a, c                                       ; $4EAE: $79
    ld hl, $FE21                                  ; $4EAF: $21 $21 $FE
    db $FD                                        ; $4EB2: $FD
    sbc d                                         ; $4EB3: $9A

jr_01A_4EB4:
    ld e, b                                       ; $4EB4: $58
    ld bc, $AC42                                  ; $4EB5: $01 $42 $AC
    or d                                          ; $4EB8: $B2
    and d                                         ; $4EB9: $A2

jr_01A_4EBA:
    ld bc, $6593                                  ; $4EBA: $01 $93 $65
    inc e                                         ; $4EBD: $1C
    ld d, c                                       ; $4EBE: $51
    ld c, a                                       ; $4EBF: $4F
    ld h, h                                       ; $4EC0: $64
    or h                                          ; $4EC1: $B4
    ld d, [hl]                                    ; $4EC2: $56
    ld l, c                                       ; $4EC3: $69
    cp c                                          ; $4EC4: $B9
    ld d, [hl]                                    ; $4EC5: $56
    ld h, [hl]                                    ; $4EC6: $66
    ret nz                                        ; $4EC7: $C0

    ld e, h                                       ; $4EC8: $5C

jr_01A_4EC9:
    ld hl, $0F6F                                  ; $4EC9: $21 $6F $0F
    rst $38                                       ; $4ECC: $FF
    ld a, a                                       ; $4ECD: $7F

jr_01A_4ECE:
    dec b                                         ; $4ECE: $05
    nop                                           ; $4ECF: $00
    ld l, e                                       ; $4ED0: $6B
    ld c, d                                       ; $4ED1: $4A
    ld de, $B907                                  ; $4ED2: $11 $07 $B9
    ret nc                                        ; $4ED5: $D0

jr_01A_4ED6:
    nop                                           ; $4ED6: $00
    ld a, [de]                                    ; $4ED7: $1A
    inc c                                         ; $4ED8: $0C
    ld c, a                                       ; $4ED9: $4F
    ld [hl+], a                                   ; $4EDA: $22
    dec b                                         ; $4EDB: $05
    ld b, b                                       ; $4EDC: $40

jr_01A_4EDD:
    dec b                                         ; $4EDD: $05
    ld [bc], a                                    ; $4EDE: $02
    db $ED                                        ; $4EDF: $ED
    ld h, e                                       ; $4EE0: $63
    ld a, [bc]                                    ; $4EE1: $0A
    inc c                                         ; $4EE2: $0C
    ld a, [hl+]                                   ; $4EE3: $2A

jr_01A_4EE4:
    pop de                                        ; $4EE4: $D1
    nop                                           ; $4EE5: $00
    db $10                                        ; $4EE6: $10
    xor h                                         ; $4EE7: $AC
    ld l, l                                       ; $4EE8: $6D
    ld a, [de]                                    ; $4EE9: $1A
    ldh [rKEY1], a                                ; $4EEA: $E0 $4D
    ld l, e                                       ; $4EEC: $6B
    daa                                           ; $4EED: $27

jr_01A_4EEE:
    inc c                                         ; $4EEE: $0C
    ld b, b                                       ; $4EEF: $40
    ld d, l                                       ; $4EF0: $55
    nop                                           ; $4EF1: $00
    add b                                         ; $4EF2: $80
    nop                                           ; $4EF3: $00
    dec bc                                        ; $4EF4: $0B
    nop                                           ; $4EF5: $00
    dec bc                                        ; $4EF6: $0B
    ld [bc], a                                    ; $4EF7: $02
    add d                                         ; $4EF8: $82
    rra                                           ; $4EF9: $1F
    ld de, $7694                                  ; $4EFA: $11 $94 $76
    jr nz, @+$11                                  ; $4EFD: $20 $0F

    ld e, h                                       ; $4EFF: $5C
    nop                                           ; $4F00: $00
    ld [bc], a                                    ; $4F01: $02
    rlca                                          ; $4F02: $07
    nop                                           ; $4F03: $00
    add c                                         ; $4F04: $81
    ld e, l                                       ; $4F05: $5D

jr_01A_4F06:
    add hl, bc                                    ; $4F06: $09
    nop                                           ; $4F07: $00
    jr nz, jr_01A_4EC9                            ; $4F08: $20 $BF

    ld d, b                                       ; $4F0A: $50
    ld b, d                                       ; $4F0B: $42
    dec d                                         ; $4F0C: $15
    jr nz, jr_01A_4EBA                            ; $4F0D: $20 $AB

    ld d, b                                       ; $4F0F: $50
    jr jr_01A_4F32                                ; $4F10: $18 $20

    rst $20                                       ; $4F12: $E7
    ld d, b                                       ; $4F13: $50
    inc b                                         ; $4F14: $04
    jr nz, jr_01A_4ED6                            ; $4F15: $20 $BF

    ld d, b                                       ; $4F17: $50
    jr nz, jr_01A_4F1A                            ; $4F18: $20 $00

jr_01A_4F1A:
    ld d, $20                                     ; $4F1A: $16 $20
    db $DD                                        ; $4F1C: $DD
    ld c, a                                       ; $4F1D: $4F
    jr nz, @+$01                                  ; $4F1E: $20 $FF

    nop                                           ; $4F20: $00
    nop                                           ; $4F21: $00
    dec d                                         ; $4F22: $15
    jr nz, jr_01A_4EE4                            ; $4F23: $20 $BF

    ld d, b                                       ; $4F25: $50
    jr nc, jr_01A_4F28                            ; $4F26: $30 $00

jr_01A_4F28:
    sbc e                                         ; $4F28: $9B
    ld a, b                                       ; $4F29: $78
    ld [hl], b                                    ; $4F2A: $70
    sbc a                                         ; $4F2B: $9F
    ld d, a                                       ; $4F2C: $57
    ld l, b                                       ; $4F2D: $68
    ld h, c                                       ; $4F2E: $61
    ld [hl], h                                    ; $4F2F: $74
    jr nz, jr_01A_4F9D                            ; $4F30: $20 $6B

jr_01A_4F32:
    ld l, c                                       ; $4F32: $69
    ld l, [hl]                                    ; $4F33: $6E
    ld h, h                                       ; $4F34: $64
    jr nz, jr_01A_4FA6                            ; $4F35: $20 $6F

    ld h, [hl]                                    ; $4F37: $66
    rst $38                                       ; $4F38: $FF
    ld l, c                                       ; $4F39: $69
    ld l, [hl]                                    ; $4F3A: $6E
    ld l, [hl]                                    ; $4F3B: $6E
    jr nz, @+$66                                  ; $4F3C: $20 $64

    ld l, a                                       ; $4F3E: $6F
    ld h, l                                       ; $4F3F: $65
    ld [hl], e                                    ; $4F40: $73

Jump_01A_4F41:
    ld l, [hl]                                    ; $4F41: $6E
    daa                                           ; $4F42: $27
    ld [hl], h                                    ; $4F43: $74
    cp $68                                        ; $4F44: $FE $68
    ld h, c                                       ; $4F46: $61
    halt                                          ; $4F47: $76

Jump_01A_4F48:
    ld h, l                                       ; $4F48: $65
    jr nz, jr_01A_4FAD                            ; $4F49: $20 $62

    ld h, l                                       ; $4F4B: $65
    ld h, h                                       ; $4F4C: $64
    ld [hl], e                                    ; $4F4D: $73
    ccf                                           ; $4F4E: $3F
    cp $FD                                        ; $4F4F: $FE $FD
    sbc d                                         ; $4F51: $9A
    ld e, h                                       ; $4F52: $5C
    nop                                           ; $4F53: $00
    ld [bc], a                                    ; $4F54: $02
    ld b, d                                       ; $4F55: $42
    ld bc, $1109                                  ; $4F56: $01 $09 $11
    dec b                                         ; $4F59: $05
    nop                                           ; $4F5A: $00
    add c                                         ; $4F5B: $81
    ld e, l                                       ; $4F5C: $5D
    dec b                                         ; $4F5D: $05
    dec b                                         ; $4F5E: $05
    ld l, c                                       ; $4F5F: $69
    ret nc                                        ; $4F60: $D0

    nop                                           ; $4F61: $00
    jr nz, @-$49                                  ; $4F62: $20 $B5

    ld d, b                                       ; $4F64: $50
    ld [hl+], a                                   ; $4F65: $22
    dec b                                         ; $4F66: $05
    ld b, b                                       ; $4F67: $40
    ld b, l                                       ; $4F68: $45
    ld a, [de]                                    ; $4F69: $1A
    halt                                          ; $4F6A: $76
    ld e, e                                       ; $4F6B: $5B
    ld bc, $0800                                  ; $4F6C: $01 $00 $08
    ld b, l                                       ; $4F6F: $45
    ld a, [de]                                    ; $4F70: $1A
    sbc c                                         ; $4F71: $99
    ld d, c                                       ; $4F72: $51
    sbc e                                         ; $4F73: $9B
    adc b                                         ; $4F74: $88
    ld c, h                                       ; $4F75: $4C
    sbc a                                         ; $4F76: $9F
    ld c, c                                       ; $4F77: $49
    jr nz, jr_01A_4FDE                            ; $4F78: $20 $64

    ld l, a                                       ; $4F7A: $6F
    ld l, [hl]                                    ; $4F7B: $6E
    daa                                           ; $4F7C: $27
    ld [hl], h                                    ; $4F7D: $74
    jr nz, jr_01A_4FEC                            ; $4F7E: $20 $6C

    ld l, c                                       ; $4F80: $69
    halt                                          ; $4F81: $76
    ld h, l                                       ; $4F82: $65
    rst $38                                       ; $4F83: $FF
    ld l, b                                       ; $4F84: $68
    ld h, l                                       ; $4F85: $65
    ld [hl], d                                    ; $4F86: $72
    ld h, l                                       ; $4F87: $65
    inc l                                         ; $4F88: $2C
    jr nz, jr_01A_4FD4                            ; $4F89: $20 $49

    jr nz, jr_01A_4FF7                            ; $4F8B: $20 $6A

    ld [hl], l                                    ; $4F8D: $75
    ld [hl], e                                    ; $4F8E: $73
    ld [hl], h                                    ; $4F8F: $74
    cp $74                                        ; $4F90: $FE $74
    ld h, c                                       ; $4F92: $61
    ld l, e                                       ; $4F93: $6B
    ld h, l                                       ; $4F94: $65
    jr nz, jr_01A_4FFA                            ; $4F95: $20 $63

    ld h, c                                       ; $4F97: $61
    ld [hl], d                                    ; $4F98: $72
    ld h, l                                       ; $4F99: $65
    jr nz, jr_01A_500B                            ; $4F9A: $20 $6F

    ld h, [hl]                                    ; $4F9C: $66

jr_01A_4F9D:
    rst $38                                       ; $4F9D: $FF
    ld [hl], h                                    ; $4F9E: $74
    ld l, b                                       ; $4F9F: $68
    ld h, l                                       ; $4FA0: $65
    jr nz, jr_01A_5013                            ; $4FA1: $20 $70

    ld l, h                                       ; $4FA3: $6C
    ld h, c                                       ; $4FA4: $61
    ld l, [hl]                                    ; $4FA5: $6E

jr_01A_4FA6:
    ld [hl], h                                    ; $4FA6: $74
    ld [hl], e                                    ; $4FA7: $73
    ld l, $FE                                     ; $4FA8: $2E $FE
    db $FD                                        ; $4FAA: $FD
    sbc d                                         ; $4FAB: $9A
    ld e, b                                       ; $4FAC: $58

jr_01A_4FAD:
    ld bc, $9342                                  ; $4FAD: $01 $42 $93
    ld h, l                                       ; $4FB0: $65
    dec hl                                        ; $4FB1: $2B
    ld d, c                                       ; $4FB2: $51
    ld c, a                                       ; $4FB3: $4F
    ld h, h                                       ; $4FB4: $64
    jp nz, Jump_01A_6656                          ; $4FB5: $C2 $56 $66

    ret nz                                        ; $4FB8: $C0

    ld e, h                                       ; $4FB9: $5C
    ld hl, $0005                                  ; $4FBA: $21 $05 $00
    add c                                         ; $4FBD: $81
    ld e, l                                       ; $4FBE: $5D
    dec b                                         ; $4FBF: $05
    dec b                                         ; $4FC0: $05

jr_01A_4FC1:
    cp c                                          ; $4FC1: $B9
    ret nc                                        ; $4FC2: $D0

    nop                                           ; $4FC3: $00
    jr nz, jr_01A_4FC1                            ; $4FC4: $20 $FB

    ld d, b                                       ; $4FC6: $50
    ld [hl+], a                                   ; $4FC7: $22
    dec b                                         ; $4FC8: $05
    ld b, b                                       ; $4FC9: $40
    dec b                                         ; $4FCA: $05
    ld [bc], a                                    ; $4FCB: $02
    db $ED                                        ; $4FCC: $ED
    ld h, e                                       ; $4FCD: $63
    rlca                                          ; $4FCE: $07
    db $10                                        ; $4FCF: $10
    ld b, a                                       ; $4FD0: $47
    jp nc, $1A00                                  ; $4FD1: $D2 $00 $1A

jr_01A_4FD4:
    db $EB                                        ; $4FD4: $EB
    ld c, a                                       ; $4FD5: $4F
    ld a, [de]                                    ; $4FD6: $1A
    and b                                         ; $4FD7: $A0
    ld d, b                                       ; $4FD8: $50
    ld l, e                                       ; $4FD9: $6B
    dec h                                         ; $4FDA: $25
    dec bc                                        ; $4FDB: $0B
    ld d, b                                       ; $4FDC: $50
    ld [hl], d                                    ; $4FDD: $72

jr_01A_4FDE:
    nop                                           ; $4FDE: $00
    add b                                         ; $4FDF: $80
    nop                                           ; $4FE0: $00
    dec bc                                        ; $4FE1: $0B
    nop                                           ; $4FE2: $00
    dec bc                                        ; $4FE3: $0B
    ld [bc], a                                    ; $4FE4: $02
    nop                                           ; $4FE5: $00
    add d                                         ; $4FE6: $82
    rra                                           ; $4FE7: $1F
    ld de, $4294                                  ; $4FE8: $11 $94 $42
    dec d                                         ; $4FEB: $15

jr_01A_4FEC:
    db $10                                        ; $4FEC: $10
    dec hl                                        ; $4FED: $2B
    ld h, b                                       ; $4FEE: $60
    jr nc, jr_01A_5001                            ; $4FEF: $30 $10

    ld sp, hl                                     ; $4FF1: $F9
    ld e, a                                       ; $4FF2: $5F
    db $10                                        ; $4FF3: $10
    db $10                                        ; $4FF4: $10
    ld sp, hl                                     ; $4FF5: $F9
    ld e, a                                       ; $4FF6: $5F

jr_01A_4FF7:
    ld b, b                                       ; $4FF7: $40
    db $10                                        ; $4FF8: $10
    ld l, a                                       ; $4FF9: $6F

jr_01A_4FFA:
    ld e, a                                       ; $4FFA: $5F
    db $10                                        ; $4FFB: $10
    db $10                                        ; $4FFC: $10
    adc a                                         ; $4FFD: $8F
    ld e, a                                       ; $4FFE: $5F
    jr nz, jr_01A_5011                            ; $4FFF: $20 $10

jr_01A_5001:
    ld a, a                                       ; $5001: $7F
    ld e, a                                       ; $5002: $5F
    ld [$3510], sp                                ; $5003: $08 $10 $35
    ld h, b                                       ; $5006: $60
    ld b, b                                       ; $5007: $40
    db $10                                        ; $5008: $10
    dec c                                         ; $5009: $0D
    ld h, b                                       ; $500A: $60

jr_01A_500B:
    db $10                                        ; $500B: $10
    db $10                                        ; $500C: $10
    dec [hl]                                      ; $500D: $35
    ld h, b                                       ; $500E: $60
    jr nc, jr_01A_5021                            ; $500F: $30 $10

jr_01A_5011:
    ld l, a                                       ; $5011: $6F
    ld e, a                                       ; $5012: $5F

jr_01A_5013:
    ld [$9F10], sp                                ; $5013: $08 $10 $9F
    ld e, a                                       ; $5016: $5F
    jr c, jr_01A_5029                             ; $5017: $38 $10

    ld l, a                                       ; $5019: $6F
    ld e, a                                       ; $501A: $5F
    jr nc, jr_01A_502D                            ; $501B: $30 $10

    adc a                                         ; $501D: $8F
    ld e, a                                       ; $501E: $5F
    jr @+$12                                      ; $501F: $18 $10

jr_01A_5021:
    dec hl                                        ; $5021: $2B
    ld h, b                                       ; $5022: $60
    ld b, b                                       ; $5023: $40
    db $10                                        ; $5024: $10
    ld l, a                                       ; $5025: $6F
    ld e, a                                       ; $5026: $5F
    db $10                                        ; $5027: $10
    db $10                                        ; $5028: $10

jr_01A_5029:
    adc a                                         ; $5029: $8F
    ld e, a                                       ; $502A: $5F
    jr nz, @+$12                                  ; $502B: $20 $10

jr_01A_502D:
    ld a, a                                       ; $502D: $7F
    ld e, a                                       ; $502E: $5F
    ld [$3510], sp                                ; $502F: $08 $10 $35
    ld h, b                                       ; $5032: $60
    ld d, b                                       ; $5033: $50
    db $10                                        ; $5034: $10
    dec c                                         ; $5035: $0D
    ld h, b                                       ; $5036: $60
    jr nz, jr_01A_5049                            ; $5037: $20 $10

    ld l, a                                       ; $5039: $6F
    ld e, a                                       ; $503A: $5F
    ld [$9F10], sp                                ; $503B: $08 $10 $9F
    ld e, a                                       ; $503E: $5F
    ld b, b                                       ; $503F: $40
    db $10                                        ; $5040: $10
    ld a, a                                       ; $5041: $7F
    ld e, a                                       ; $5042: $5F
    ld [hl], b                                    ; $5043: $70
    db $10                                        ; $5044: $10
    sbc a                                         ; $5045: $9F
    ld e, a                                       ; $5046: $5F
    ld [hl], b                                    ; $5047: $70
    db $10                                        ; $5048: $10

jr_01A_5049:
    ld l, a                                       ; $5049: $6F
    ld e, a                                       ; $504A: $5F
    db $10                                        ; $504B: $10
    db $10                                        ; $504C: $10
    ld hl, $5060                                  ; $504D: $21 $60 $50
    db $10                                        ; $5050: $10
    sbc a                                         ; $5051: $9F
    ld e, a                                       ; $5052: $5F
    ld a, h                                       ; $5053: $7C
    db $10                                        ; $5054: $10
    ld l, a                                       ; $5055: $6F
    ld e, a                                       ; $5056: $5F
    jr z, jr_01A_5069                             ; $5057: $28 $10

    rst $28                                       ; $5059: $EF
    ld e, a                                       ; $505A: $5F
    ld b, b                                       ; $505B: $40
    db $10                                        ; $505C: $10
    ld hl, $1060                                  ; $505D: $21 $60 $10
    db $10                                        ; $5060: $10
    rla                                           ; $5061: $17
    ld h, b                                       ; $5062: $60
    db $10                                        ; $5063: $10
    db $10                                        ; $5064: $10
    rst $28                                       ; $5065: $EF
    ld e, a                                       ; $5066: $5F
    jr nc, jr_01A_5079                            ; $5067: $30 $10

jr_01A_5069:
    adc a                                         ; $5069: $8F
    ld e, a                                       ; $506A: $5F
    ld b, b                                       ; $506B: $40
    db $10                                        ; $506C: $10
    ld l, a                                       ; $506D: $6F
    ld e, a                                       ; $506E: $5F
    ld b, b                                       ; $506F: $40
    db $10                                        ; $5070: $10
    sbc a                                         ; $5071: $9F
    ld e, a                                       ; $5072: $5F
    ld b, b                                       ; $5073: $40
    db $10                                        ; $5074: $10
    rst $28                                       ; $5075: $EF
    ld e, a                                       ; $5076: $5F
    ld d, b                                       ; $5077: $50
    db $10                                        ; $5078: $10

jr_01A_5079:
    rla                                           ; $5079: $17
    ld h, b                                       ; $507A: $60
    jr nz, jr_01A_508D                            ; $507B: $20 $10

    dec hl                                        ; $507D: $2B
    ld h, b                                       ; $507E: $60
    ld b, b                                       ; $507F: $40
    db $10                                        ; $5080: $10
    adc a                                         ; $5081: $8F
    ld e, a                                       ; $5082: $5F
    ld b, b                                       ; $5083: $40
    db $10                                        ; $5084: $10
    ld a, a                                       ; $5085: $7F
    ld e, a                                       ; $5086: $5F
    ld l, b                                       ; $5087: $68
    db $10                                        ; $5088: $10
    adc a                                         ; $5089: $8F
    ld e, a                                       ; $508A: $5F
    ld b, b                                       ; $508B: $40
    db $10                                        ; $508C: $10

jr_01A_508D:
    ld a, a                                       ; $508D: $7F
    ld e, a                                       ; $508E: $5F
    jr nz, jr_01A_50A1                            ; $508F: $20 $10

    adc a                                         ; $5091: $8F
    ld e, a                                       ; $5092: $5F

jr_01A_5093:
    ld h, b                                       ; $5093: $60
    db $10                                        ; $5094: $10
    ld l, a                                       ; $5095: $6F
    ld e, a                                       ; $5096: $5F
    jr nc, @+$12                                  ; $5097: $30 $10

    adc a                                         ; $5099: $8F
    ld e, a                                       ; $509A: $5F
    inc l                                         ; $509B: $2C
    nop                                           ; $509C: $00
    ld b, [hl]                                    ; $509D: $46
    db $EB                                        ; $509E: $EB
    ld c, a                                       ; $509F: $4F
    ld e, e                                       ; $50A0: $5B

jr_01A_50A1:
    ld a, [de]                                    ; $50A1: $1A
    ld [hl], e                                    ; $50A2: $73
    ld c, a                                       ; $50A3: $4F
    ld b, l                                       ; $50A4: $45
    db $10                                        ; $50A5: $10
    ccf                                           ; $50A6: $3F
    ld h, b                                       ; $50A7: $60
    ld bc, $0C0C                                  ; $50A8: $01 $0C $0C
    ld b, l                                       ; $50AB: $45
    ld a, [de]                                    ; $50AC: $1A
    xor a                                         ; $50AD: $AF
    ld c, a                                       ; $50AE: $4F
    ld b, e                                       ; $50AF: $43
    nop                                           ; $50B0: $00
    ld c, e                                       ; $50B1: $4B
    and e                                         ; $50B2: $A3
    ld [bc], a                                    ; $50B3: $02
    ld a, [de]                                    ; $50B4: $1A
    ld bc, $9B51                                  ; $50B5: $01 $51 $9B
    ld a, b                                       ; $50B8: $78
    ld [hl], b                                    ; $50B9: $70
    sbc a                                         ; $50BA: $9F
    ld c, b                                       ; $50BB: $48
    ld h, l                                       ; $50BC: $65
    ld a, c                                       ; $50BD: $79
    jr nz, jr_01A_5134                            ; $50BE: $20 $74

    ld l, b                                       ; $50C0: $68
    ld h, l                                       ; $50C1: $65
    ld [hl], d                                    ; $50C2: $72
    ld h, l                                       ; $50C3: $65
    daa                                           ; $50C4: $27
    ld [hl], e                                    ; $50C5: $73
    rst $38                                       ; $50C6: $FF
    ld [hl], e                                    ; $50C7: $73
    ld l, a                                       ; $50C8: $6F
    ld l, l                                       ; $50C9: $6D
    ld h, l                                       ; $50CA: $65
    ld [hl], h                                    ; $50CB: $74
    ld l, b                                       ; $50CC: $68
    ld l, c                                       ; $50CD: $69
    ld l, [hl]                                    ; $50CE: $6E
    ld h, a                                       ; $50CF: $67
    jr nz, jr_01A_513B                            ; $50D0: $20 $69

    ld l, [hl]                                    ; $50D2: $6E
    cp $74                                        ; $50D3: $FE $74
    ld l, b                                       ; $50D5: $68
    ld l, c                                       ; $50D6: $69
    ld [hl], e                                    ; $50D7: $73
    jr nz, jr_01A_514A                            ; $50D8: $20 $70

    ld l, h                                       ; $50DA: $6C
    ld h, c                                       ; $50DB: $61
    ld l, [hl]                                    ; $50DC: $6E
    ld [hl], h                                    ; $50DD: $74
    ld l, $FE                                     ; $50DE: $2E $FE
    db $FD                                        ; $50E0: $FD
    ld b, b                                       ; $50E1: $40
    jr nc, jr_01A_5093                            ; $50E2: $30 $AF

    ld c, e                                       ; $50E4: $4B
    and e                                         ; $50E5: $A3
    ld [bc], a                                    ; $50E6: $02
    add a                                         ; $50E7: $87
    nop                                           ; $50E8: $00
    inc de                                        ; $50E9: $13
    ld bc, $789B                                  ; $50EA: $01 $9B $78
    ld [hl], b                                    ; $50ED: $70
    sbc a                                         ; $50EE: $9F
    ld d, h                                       ; $50EF: $54
    ld l, a                                       ; $50F0: $6F
    ld l, [hl]                                    ; $50F1: $6E
    ld a, c                                       ; $50F2: $79
    jr nz, @+$69                                  ; $50F3: $20 $67

    ld l, a                                       ; $50F5: $6F
    ld [hl], h                                    ; $50F6: $74
    jr nz, jr_01A_515A                            ; $50F7: $20 $61

    rst $38                                       ; $50F9: $FF
    db $FD                                        ; $50FA: $FD
    sbc a                                         ; $50FB: $9F
    db $FC                                        ; $50FC: $FC
    cp $FD                                        ; $50FD: $FE $FD
    sbc d                                         ; $50FF: $9A
    ld b, d                                       ; $5100: $42
    sbc e                                         ; $5101: $9B
    ld a, b                                       ; $5102: $78

jr_01A_5103:
    ld [hl], b                                    ; $5103: $70
    sbc a                                         ; $5104: $9F
    ld c, a                                       ; $5105: $4F
    ld l, [hl]                                    ; $5106: $6E
    ld l, h                                       ; $5107: $6C
    ld a, c                                       ; $5108: $79
    jr nz, jr_01A_517B                            ; $5109: $20 $70

    ld l, h                                       ; $510B: $6C
    ld h, c                                       ; $510C: $61
    ld l, [hl]                                    ; $510D: $6E
    ld [hl], h                                    ; $510E: $74
    ld [hl], e                                    ; $510F: $73
    rst $38                                       ; $5110: $FF
    ld l, h                                       ; $5111: $6C
    ld h, l                                       ; $5112: $65
    ld h, [hl]                                    ; $5113: $66
    ld [hl], h                                    ; $5114: $74
    jr nz, jr_01A_517F                            ; $5115: $20 $68

    ld h, l                                       ; $5117: $65
    ld [hl], d                                    ; $5118: $72
    ld h, l                                       ; $5119: $65
    ld l, $FE                                     ; $511A: $2E $FE
    db $FD                                        ; $511C: $FD
    sbc d                                         ; $511D: $9A
    ld b, d                                       ; $511E: $42
    ld b, e                                       ; $511F: $43
    nop                                           ; $5120: $00
    ld c, e                                       ; $5121: $4B
    and e                                         ; $5122: $A3
    inc b                                         ; $5123: $04
    ld a, [de]                                    ; $5124: $1A
    ld [hl], c                                    ; $5125: $71
    ld d, c                                       ; $5126: $51
    sbc e                                         ; $5127: $9B
    ld a, b                                       ; $5128: $78
    ld [hl], b                                    ; $5129: $70
    sbc a                                         ; $512A: $9F
    ld c, b                                       ; $512B: $48
    ld h, l                                       ; $512C: $65
    ld a, c                                       ; $512D: $79
    jr nz, @+$76                                  ; $512E: $20 $74

    ld l, b                                       ; $5130: $68
    ld h, l                                       ; $5131: $65
    ld [hl], d                                    ; $5132: $72
    ld h, l                                       ; $5133: $65

jr_01A_5134:
    daa                                           ; $5134: $27
    ld [hl], e                                    ; $5135: $73
    rst $38                                       ; $5136: $FF
    ld [hl], e                                    ; $5137: $73
    ld l, a                                       ; $5138: $6F
    ld l, l                                       ; $5139: $6D
    ld h, l                                       ; $513A: $65

jr_01A_513B:
    ld [hl], h                                    ; $513B: $74
    ld l, b                                       ; $513C: $68
    ld l, c                                       ; $513D: $69
    ld l, [hl]                                    ; $513E: $6E
    ld h, a                                       ; $513F: $67
    jr nz, jr_01A_51AB                            ; $5140: $20 $69

    ld l, [hl]                                    ; $5142: $6E
    cp $74                                        ; $5143: $FE $74
    ld l, b                                       ; $5145: $68
    ld l, c                                       ; $5146: $69
    ld [hl], e                                    ; $5147: $73
    jr nz, jr_01A_51BA                            ; $5148: $20 $70

jr_01A_514A:
    ld l, h                                       ; $514A: $6C
    ld h, c                                       ; $514B: $61
    ld l, [hl]                                    ; $514C: $6E
    ld [hl], h                                    ; $514D: $74
    ld l, $FE                                     ; $514E: $2E $FE
    db $FD                                        ; $5150: $FD
    ld b, b                                       ; $5151: $40
    jr nc, jr_01A_5103                            ; $5152: $30 $AF

    ld c, e                                       ; $5154: $4B
    and e                                         ; $5155: $A3
    inc b                                         ; $5156: $04
    add a                                         ; $5157: $87
    nop                                           ; $5158: $00
    inc de                                        ; $5159: $13

jr_01A_515A:
    ld bc, $789B                                  ; $515A: $01 $9B $78
    ld [hl], b                                    ; $515D: $70
    sbc a                                         ; $515E: $9F
    ld d, h                                       ; $515F: $54
    ld l, a                                       ; $5160: $6F
    ld l, [hl]                                    ; $5161: $6E
    ld a, c                                       ; $5162: $79
    jr nz, @+$69                                  ; $5163: $20 $67

    ld l, a                                       ; $5165: $6F
    ld [hl], h                                    ; $5166: $74
    jr nz, jr_01A_51CA                            ; $5167: $20 $61

    rst $38                                       ; $5169: $FF
    db $FD                                        ; $516A: $FD
    sbc a                                         ; $516B: $9F
    db $FC                                        ; $516C: $FC
    cp $FD                                        ; $516D: $FE $FD
    sbc d                                         ; $516F: $9A
    ld b, d                                       ; $5170: $42
    sbc e                                         ; $5171: $9B
    ld a, b                                       ; $5172: $78
    ld [hl], b                                    ; $5173: $70
    sbc a                                         ; $5174: $9F
    ld c, [hl]                                    ; $5175: $4E
    ld l, a                                       ; $5176: $6F
    ld [hl], h                                    ; $5177: $74
    ld l, b                                       ; $5178: $68
    ld l, c                                       ; $5179: $69
    ld l, [hl]                                    ; $517A: $6E

jr_01A_517B:
    ld h, a                                       ; $517B: $67
    jr nz, jr_01A_51E6                            ; $517C: $20 $68

    ld h, l                                       ; $517E: $65

jr_01A_517F:
    ld [hl], d                                    ; $517F: $72

jr_01A_5180:
    ld h, l                                       ; $5180: $65
    rst $38                                       ; $5181: $FF
    ld h, d                                       ; $5182: $62
    ld [hl], l                                    ; $5183: $75
    ld [hl], h                                    ; $5184: $74
    jr nz, jr_01A_51FE                            ; $5185: $20 $77

    ld h, c                                       ; $5187: $61
    ld [hl], h                                    ; $5188: $74
    ld h, l                                       ; $5189: $65
    ld [hl], d                                    ; $518A: $72
    jr nz, jr_01A_51EE                            ; $518B: $20 $61

    ld l, [hl]                                    ; $518D: $6E
    ld h, h                                       ; $518E: $64
    cp $64                                        ; $518F: $FE $64
    ld l, c                                       ; $5191: $69
    ld [hl], d                                    ; $5192: $72
    ld [hl], h                                    ; $5193: $74
    ld l, $FE                                     ; $5194: $2E $FE
    db $FD                                        ; $5196: $FD
    sbc d                                         ; $5197: $9A
    ld b, d                                       ; $5198: $42
    xor h                                         ; $5199: $AC
    or d                                          ; $519A: $B2
    and d                                         ; $519B: $A2
    ld bc, $6593                                  ; $519C: $01 $93 $65
    ld a, [hl-]                                   ; $519F: $3A
    ld d, c                                       ; $51A0: $51
    ld c, a                                       ; $51A1: $4F
    ld h, h                                       ; $51A2: $64
    bit 2, [hl]                                   ; $51A3: $CB $56
    ld l, c                                       ; $51A5: $69
    ret nc                                        ; $51A6: $D0

    ld d, [hl]                                    ; $51A7: $56
    ld h, [hl]                                    ; $51A8: $66
    ret nz                                        ; $51A9: $C0

    ld e, h                                       ; $51AA: $5C

jr_01A_51AB:
    ld hl, $0005                                  ; $51AB: $21 $05 $00
    add c                                         ; $51AE: $81
    ld e, l                                       ; $51AF: $5D
    dec b                                         ; $51B0: $05
    dec b                                         ; $51B1: $05
    ld e, a                                       ; $51B2: $5F
    ret nc                                        ; $51B3: $D0

    nop                                           ; $51B4: $00
    jr nz, jr_01A_5180                            ; $51B5: $20 $C9

    ld d, b                                       ; $51B7: $50
    ld [hl+], a                                   ; $51B8: $22
    dec b                                         ; $51B9: $05

jr_01A_51BA:
    ld b, b                                       ; $51BA: $40
    dec b                                         ; $51BB: $05
    ld [bc], a                                    ; $51BC: $02
    db $ED                                        ; $51BD: $ED
    ld h, e                                       ; $51BE: $63
    ld [$5004], sp                                ; $51BF: $08 $04 $50
    ret nc                                        ; $51C2: $D0

    nop                                           ; $51C3: $00
    ld a, [de]                                    ; $51C4: $1A
    call c, $1A51                                 ; $51C5: $DC $51 $1A
    ld [de], a                                    ; $51C8: $12
    ld d, d                                       ; $51C9: $52

jr_01A_51CA:
    ld l, e                                       ; $51CA: $6B
    jr nc, jr_01A_51D8                            ; $51CB: $30 $0B

    ld d, b                                       ; $51CD: $50
    ld d, h                                       ; $51CE: $54
    nop                                           ; $51CF: $00
    add b                                         ; $51D0: $80
    nop                                           ; $51D1: $00
    dec bc                                        ; $51D2: $0B
    nop                                           ; $51D3: $00
    dec bc                                        ; $51D4: $0B
    ld [bc], a                                    ; $51D5: $02
    nop                                           ; $51D6: $00
    add d                                         ; $51D7: $82

jr_01A_51D8:
    rra                                           ; $51D8: $1F
    ld de, $4294                                  ; $51D9: $11 $94 $42
    dec d                                         ; $51DC: $15
    db $10                                        ; $51DD: $10
    adc l                                         ; $51DE: $8D
    ld e, h                                       ; $51DF: $5C
    ld e, d                                       ; $51E0: $5A
    db $10                                        ; $51E1: $10
    ld bc, $105C                                  ; $51E2: $01 $5C $10
    db $10                                        ; $51E5: $10

jr_01A_51E6:
    ld e, e                                       ; $51E6: $5B
    ld e, h                                       ; $51E7: $5C
    ld a, b                                       ; $51E8: $78
    db $10                                        ; $51E9: $10
    ld d, c                                       ; $51EA: $51
    ld e, h                                       ; $51EB: $5C
    jr nz, jr_01A_51FE                            ; $51EC: $20 $10

jr_01A_51EE:
    pop de                                        ; $51EE: $D1
    ld e, e                                       ; $51EF: $5B
    inc d                                         ; $51F0: $14
    db $10                                        ; $51F1: $10
    ld d, c                                       ; $51F2: $51
    ld e, h                                       ; $51F3: $5C
    and b                                         ; $51F4: $A0
    db $10                                        ; $51F5: $10
    add e                                         ; $51F6: $83
    ld e, h                                       ; $51F7: $5C
    ld b, b                                       ; $51F8: $40
    db $10                                        ; $51F9: $10
    pop hl                                        ; $51FA: $E1
    ld e, e                                       ; $51FB: $5B
    inc d                                         ; $51FC: $14
    db $10                                        ; $51FD: $10

jr_01A_51FE:
    ld e, e                                       ; $51FE: $5B
    ld e, h                                       ; $51FF: $5C
    ld d, b                                       ; $5200: $50
    db $10                                        ; $5201: $10
    sub a                                         ; $5202: $97
    ld e, h                                       ; $5203: $5C
    ld b, [hl]                                    ; $5204: $46
    db $10                                        ; $5205: $10
    pop af                                        ; $5206: $F1
    ld e, e                                       ; $5207: $5B
    db $10                                        ; $5208: $10
    db $10                                        ; $5209: $10
    ld e, e                                       ; $520A: $5B
    ld e, h                                       ; $520B: $5C
    dec l                                         ; $520C: $2D
    nop                                           ; $520D: $00
    ld b, l                                       ; $520E: $45
    ld a, [de]                                    ; $520F: $1A
    call c, Call_01A_5B51                         ; $5210: $DC $51 $5B
    ld a, [de]                                    ; $5213: $1A
    ld a, [de]                                    ; $5214: $1A
    ld d, d                                       ; $5215: $52
    ld b, l                                       ; $5216: $45
    db $10                                        ; $5217: $10
    and c                                         ; $5218: $A1
    ld e, h                                       ; $5219: $5C
    sbc e                                         ; $521A: $9B
    ret c                                         ; $521B: $D8

    ld h, b                                       ; $521C: $60
    sbc a                                         ; $521D: $9F
    ld c, b                                       ; $521E: $48
    ld h, l                                       ; $521F: $65
    ld l, h                                       ; $5220: $6C
    ld l, h                                       ; $5221: $6C
    ld l, a                                       ; $5222: $6F
    inc l                                         ; $5223: $2C
    jr nz, @+$4B                                  ; $5224: $20 $49

    daa                                           ; $5226: $27
    ld l, l                                       ; $5227: $6D
    jr nz, jr_01A_529E                            ; $5228: $20 $74

    ld l, b                                       ; $522A: $68
    ld h, l                                       ; $522B: $65
    rst $38                                       ; $522C: $FF
    ld l, h                                       ; $522D: $6C
    ld l, a                                       ; $522E: $6F
    ld h, e                                       ; $522F: $63
    ld h, c                                       ; $5230: $61
    ld l, h                                       ; $5231: $6C
    cp $68                                        ; $5232: $FE $68
    ld l, c                                       ; $5234: $69

jr_01A_5235:
    ld [hl], e                                    ; $5235: $73
    ld [hl], h                                    ; $5236: $74
    ld l, a                                       ; $5237: $6F
    ld [hl], d                                    ; $5238: $72
    ld l, c                                       ; $5239: $69
    ld h, c                                       ; $523A: $61
    ld l, [hl]                                    ; $523B: $6E
    ld l, $20                                     ; $523C: $2E $20
    ld b, [hl]                                    ; $523E: $46
    ld h, l                                       ; $523F: $65
    ld h, l                                       ; $5240: $65
    ld l, h                                       ; $5241: $6C
    rst $38                                       ; $5242: $FF
    ld h, [hl]                                    ; $5243: $66
    ld [hl], d                                    ; $5244: $72
    ld h, l                                       ; $5245: $65
    ld h, l                                       ; $5246: $65
    jr nz, jr_01A_52BD                            ; $5247: $20 $74

    ld l, a                                       ; $5249: $6F
    jr nz, jr_01A_52AD                            ; $524A: $20 $61

    ld [hl], e                                    ; $524C: $73
    ld l, e                                       ; $524D: $6B
    jr nz, jr_01A_52BD                            ; $524E: $20 $6D

    ld h, l                                       ; $5250: $65
    cp $61                                        ; $5251: $FE $61
    ld l, [hl]                                    ; $5253: $6E
    ld a, c                                       ; $5254: $79
    ld [hl], h                                    ; $5255: $74
    ld l, b                                       ; $5256: $68
    ld l, c                                       ; $5257: $69
    ld l, [hl]                                    ; $5258: $6E
    ld h, a                                       ; $5259: $67
    ld l, $FE                                     ; $525A: $2E $FE
    db $FD                                        ; $525C: $FD
    sbc d                                         ; $525D: $9A
    ld b, l                                       ; $525E: $45
    ld l, $6C                                     ; $525F: $2E $6C
    ld b, b                                       ; $5261: $40
    ld bc, $0F09                                  ; $5262: $01 $09 $0F
    dec b                                         ; $5265: $05
    nop                                           ; $5266: $00
    add c                                         ; $5267: $81
    ld e, l                                       ; $5268: $5D
    dec b                                         ; $5269: $05
    dec b                                         ; $526A: $05
    ld l, c                                       ; $526B: $69
    ret nc                                        ; $526C: $D0

    nop                                           ; $526D: $00
    jr nz, @-$49                                  ; $526E: $20 $B5

    ld d, b                                       ; $5270: $50
    ld [hl+], a                                   ; $5271: $22
    dec b                                         ; $5272: $05
    ld b, b                                       ; $5273: $40
    ld b, l                                       ; $5274: $45
    ld a, [de]                                    ; $5275: $1A
    or c                                          ; $5276: $B1
    ld e, e                                       ; $5277: $5B
    ld e, e                                       ; $5278: $5B
    ld a, [de]                                    ; $5279: $1A
    add d                                         ; $527A: $82
    ld d, d                                       ; $527B: $52
    ld b, d                                       ; $527C: $42
    ld e, e                                       ; $527D: $5B
    ld a, [de]                                    ; $527E: $1A
    db $E3                                        ; $527F: $E3
    ld d, e                                       ; $5280: $53
    ld b, d                                       ; $5281: $42
    rlca                                          ; $5282: $07
    nop                                           ; $5283: $00
    ld l, e                                       ; $5284: $6B
    ld c, d                                       ; $5285: $4A
    add hl, bc                                    ; $5286: $09
    nop                                           ; $5287: $00
    jr nz, jr_01A_5235                            ; $5288: $20 $AB

    ld d, b                                       ; $528A: $50
    sbc e                                         ; $528B: $9B
    cp c                                          ; $528C: $B9
    ld b, h                                       ; $528D: $44
    sbc a                                         ; $528E: $9F
    ld e, c                                       ; $528F: $59
    ld l, a                                       ; $5290: $6F
    ld [hl], l                                    ; $5291: $75
    jr nz, jr_01A_5301                            ; $5292: $20 $6D

    ld [hl], l                                    ; $5294: $75
    ld [hl], e                                    ; $5295: $73
    ld [hl], h                                    ; $5296: $74
    jr nz, jr_01A_52FB                            ; $5297: $20 $62

    ld h, l                                       ; $5299: $65
    rst $38                                       ; $529A: $FF
    ld l, [hl]                                    ; $529B: $6E
    ld h, l                                       ; $529C: $65
    ld [hl], a                                    ; $529D: $77

jr_01A_529E:
    jr nz, jr_01A_5308                            ; $529E: $20 $68

    ld h, l                                       ; $52A0: $65
    ld [hl], d                                    ; $52A1: $72
    ld h, l                                       ; $52A2: $65
    ld l, $FE                                     ; $52A3: $2E $FE
    ld c, c                                       ; $52A5: $49
    daa                                           ; $52A6: $27
    ld l, l                                       ; $52A7: $6D
    jr nz, jr_01A_52F6                            ; $52A8: $20 $4C

    ld h, c                                       ; $52AA: $61
    ld [hl], e                                    ; $52AB: $73
    ld h, c                                       ; $52AC: $61

jr_01A_52AD:
    ld h, h                                       ; $52AD: $64
    ld h, c                                       ; $52AE: $61
    inc l                                         ; $52AF: $2C
    rst $38                                       ; $52B0: $FF
    ld [hl], h                                    ; $52B1: $74
    ld l, b                                       ; $52B2: $68
    ld h, l                                       ; $52B3: $65
    jr nz, jr_01A_5308                            ; $52B4: $20 $52

    ld l, c                                       ; $52B6: $69
    ld l, [hl]                                    ; $52B7: $6E
    ld h, a                                       ; $52B8: $67
    ld [hl], e                                    ; $52B9: $73
    ld l, l                                       ; $52BA: $6D
    ld l, c                                       ; $52BB: $69
    ld [hl], h                                    ; $52BC: $74

jr_01A_52BD:
    ld l, b                                       ; $52BD: $68
    ld l, $FE                                     ; $52BE: $2E $FE
    db $FD                                        ; $52C0: $FD
    sbc c                                         ; $52C1: $99
    sbc e                                         ; $52C2: $9B
    ld a, b                                       ; $52C3: $78
    ld [hl], b                                    ; $52C4: $70
    sbc a                                         ; $52C5: $9F
    jr nz, jr_01A_530E                            ; $52C6: $20 $46

    ld l, a                                       ; $52C8: $6F
    ld [hl], d                                    ; $52C9: $72
    ld h, a                                       ; $52CA: $67
    ld h, l                                       ; $52CB: $65
    jr nz, jr_01A_52EE                            ; $52CC: $20 $20

    ld b, l                                       ; $52CE: $45
    ld [hl], c                                    ; $52CF: $71
    ld [hl], l                                    ; $52D0: $75
    ld l, c                                       ; $52D1: $69
    ld [hl], b                                    ; $52D2: $70
    rst $38                                       ; $52D3: $FF
    jr nz, jr_01A_5326                            ; $52D4: $20 $50

    ld l, a                                       ; $52D6: $6F
    ld [hl], a                                    ; $52D7: $77
    ld h, l                                       ; $52D8: $65
    ld [hl], d                                    ; $52D9: $72
    jr nz, jr_01A_52FC                            ; $52DA: $20 $20

    ld b, h                                       ; $52DC: $44
    ld l, a                                       ; $52DD: $6F
    ld l, [hl]                                    ; $52DE: $6E
    ld h, l                                       ; $52DF: $65
    db $FD                                        ; $52E0: $FD
    sbc h                                         ; $52E1: $9C
    inc b                                         ; $52E2: $04
    ld a, [de]                                    ; $52E3: $1A
    ld [$1A53], sp                                ; $52E4: $08 $53 $1A
    rst $28                                       ; $52E7: $EF
    ld d, d                                       ; $52E8: $52
    ld a, [de]                                    ; $52E9: $1A
    ld [bc], a                                    ; $52EA: $02
    ld d, e                                       ; $52EB: $53
    ld a, [de]                                    ; $52EC: $1A
    db $DD                                        ; $52ED: $DD

jr_01A_52EE:
    ld d, e                                       ; $52EE: $53
    sbc d                                         ; $52EF: $9A
    adc a                                         ; $52F0: $8F
    dec bc                                        ; $52F1: $0B
    nop                                           ; $52F2: $00
    ld a, [bc]                                    ; $52F3: $0A
    ld d, h                                       ; $52F4: $54
    ld c, h                                       ; $52F5: $4C

jr_01A_52F6:
    dec b                                         ; $52F6: $05
    ld a, [de]                                    ; $52F7: $1A
    ld [bc], a                                    ; $52F8: $02
    ld c, l                                       ; $52F9: $4D
    ld [hl-], a                                   ; $52FA: $32

jr_01A_52FB:
    add hl, bc                                    ; $52FB: $09

jr_01A_52FC:
    ld b, a                                       ; $52FC: $47
    ld sp, $1A45                                  ; $52FD: $31 $45 $1A
    pop bc                                        ; $5300: $C1

jr_01A_5301:
    ld d, d                                       ; $5301: $52
    sbc d                                         ; $5302: $9A
    adc l                                         ; $5303: $8D
    ld b, l                                       ; $5304: $45
    ld a, [de]                                    ; $5305: $1A
    pop bc                                        ; $5306: $C1
    ld d, d                                       ; $5307: $52

jr_01A_5308:
    sbc e                                         ; $5308: $9B
    cp c                                          ; $5309: $B9
    ld b, h                                       ; $530A: $44
    sbc a                                         ; $530B: $9F
    ld d, a                                       ; $530C: $57
    ld l, b                                       ; $530D: $68

jr_01A_530E:
    ld h, c                                       ; $530E: $61
    ld [hl], h                                    ; $530F: $74
    jr nz, jr_01A_5389                            ; $5310: $20 $77

    ld l, c                                       ; $5312: $69
    ld l, h                                       ; $5313: $6C
    ld l, h                                       ; $5314: $6C
    jr nz, jr_01A_5380                            ; $5315: $20 $69

    ld [hl], h                                    ; $5317: $74
    rst $38                                       ; $5318: $FF
    ld h, d                                       ; $5319: $62
    ld h, l                                       ; $531A: $65
    ccf                                           ; $531B: $3F
    cp $FD                                        ; $531C: $FE $FD
    sbc d                                         ; $531E: $9A
    adc [hl]                                      ; $531F: $8E
    ld a, [de]                                    ; $5320: $1A
    and c                                         ; $5321: $A1
    ld d, e                                       ; $5322: $53
    ld a, [de]                                    ; $5323: $1A
    pop bc                                        ; $5324: $C1
    ld d, d                                       ; $5325: $52

jr_01A_5326:
    ld d, c                                       ; $5326: $51
    nop                                           ; $5327: $00
    ld a, [bc]                                    ; $5328: $0A
    ld d, h                                       ; $5329: $54
    ld d, h                                       ; $532A: $54
    ld bc, $00FF                                  ; $532B: $01 $FF $00
    sub [hl]                                      ; $532E: $96
    nop                                           ; $532F: $00
    jr z, jr_01A_537E                             ; $5330: $28 $4C

    ld c, h                                       ; $5332: $4C
    ld [bc], a                                    ; $5333: $02
    add hl, hl                                    ; $5334: $29
    ld bc, $0096                                  ; $5335: $01 $96 $00
    jr z, jr_01A_533F                             ; $5338: $28 $05

    dec b                                         ; $533A: $05
    inc bc                                        ; $533B: $03
    rst $38                                       ; $533C: $FF
    nop                                           ; $533D: $00
    sub [hl]                                      ; $533E: $96

jr_01A_533F:
    nop                                           ; $533F: $00
    jr z, jr_01A_535C                             ; $5340: $28 $1A

    ld a, [de]                                    ; $5342: $1A
    ld [bc], a                                    ; $5343: $02
    inc a                                         ; $5344: $3C
    ld bc, $0096                                  ; $5345: $01 $96 $00
    jr z, jr_01A_534C                             ; $5348: $28 $02

    ld [bc], a                                    ; $534A: $02
    inc bc                                        ; $534B: $03

jr_01A_534C:
    scf                                           ; $534C: $37
    ld bc, $0096                                  ; $534D: $01 $96 $00
    dec hl                                        ; $5350: $2B
    ld c, l                                       ; $5351: $4D
    ld c, l                                       ; $5352: $4D
    inc b                                         ; $5353: $04
    ld bc, $0F01                                  ; $5354: $01 $01 $0F
    nop                                           ; $5357: $00
    dec hl                                        ; $5358: $2B
    ld [hl-], a                                   ; $5359: $32
    ld [hl-], a                                   ; $535A: $32
    inc bc                                        ; $535B: $03

jr_01A_535C:
    ld b, $02                                     ; $535C: $06 $02
    sub [hl]                                      ; $535E: $96
    nop                                           ; $535F: $00
    dec hl                                        ; $5360: $2B
    add hl, bc                                    ; $5361: $09
    add hl, bc                                    ; $5362: $09
    inc bc                                        ; $5363: $03
    ld d, h                                       ; $5364: $54
    ld bc, $02EE                                  ; $5365: $01 $EE $02
    ld [hl-], a                                   ; $5368: $32
    ld b, a                                       ; $5369: $47
    ld b, a                                       ; $536A: $47
    dec b                                         ; $536B: $05
    ld c, h                                       ; $536C: $4C
    ld [bc], a                                    ; $536D: $02
    jr nz, @+$05                                  ; $536E: $20 $03

    ld [hl-], a                                   ; $5370: $32
    ld sp, $0131                                  ; $5371: $31 $31 $01
    rst $38                                       ; $5374: $FF
    nop                                           ; $5375: $00
    add h                                         ; $5376: $84
    inc bc                                        ; $5377: $03
    inc a                                         ; $5378: $3C
    add hl, bc                                    ; $5379: $09
    ld [bc], a                                    ; $537A: $02
    ld a, [de]                                    ; $537B: $1A
    adc c                                         ; $537C: $89
    ld d, h                                       ; $537D: $54

jr_01A_537E:
    ld e, l                                       ; $537E: $5D
    sbc e                                         ; $537F: $9B

jr_01A_5380:
    cp c                                          ; $5380: $B9
    ld b, h                                       ; $5381: $44
    sbc a                                         ; $5382: $9F
    ld c, b                                       ; $5383: $48
    ld h, l                                       ; $5384: $65
    ld [hl], d                                    ; $5385: $72
    ld h, l                                       ; $5386: $65
    jr nz, jr_01A_5402                            ; $5387: $20 $79

jr_01A_5389:
    ld l, a                                       ; $5389: $6F
    ld [hl], l                                    ; $538A: $75
    jr nz, jr_01A_53F4                            ; $538B: $20 $67

    ld l, a                                       ; $538D: $6F
    ld hl, $FDFE                                  ; $538E: $21 $FE $FD
    sbc e                                         ; $5391: $9B
    ld a, b                                       ; $5392: $78
    ld [hl], b                                    ; $5393: $70
    sbc a                                         ; $5394: $9F
    ld d, h                                       ; $5395: $54
    ld l, b                                       ; $5396: $68
    ld h, c                                       ; $5397: $61
    ld l, [hl]                                    ; $5398: $6E
    ld l, e                                       ; $5399: $6B
    ld [hl], e                                    ; $539A: $73
    ld l, $FE                                     ; $539B: $2E $FE
    db $FD                                        ; $539D: $FD
    ld b, [hl]                                    ; $539E: $46
    pop bc                                        ; $539F: $C1
    ld d, d                                       ; $53A0: $52
    sbc e                                         ; $53A1: $9B
    cp c                                          ; $53A2: $B9
    ld b, h                                       ; $53A3: $44
    sbc a                                         ; $53A4: $9F
    ld d, e                                       ; $53A5: $53
    ld l, a                                       ; $53A6: $6F
    ld [hl], d                                    ; $53A7: $72
    ld [hl], d                                    ; $53A8: $72
    ld a, c                                       ; $53A9: $79

jr_01A_53AA:
    inc l                                         ; $53AA: $2C
    jr nz, jr_01A_5426                            ; $53AB: $20 $79

    ld l, a                                       ; $53AD: $6F
    ld [hl], l                                    ; $53AE: $75
    ld [hl], d                                    ; $53AF: $72
    rst $38                                       ; $53B0: $FF
    ld d, d                                       ; $53B1: $52
    ld l, c                                       ; $53B2: $69
    ld l, [hl]                                    ; $53B3: $6E
    ld h, a                                       ; $53B4: $67
    jr nz, @+$44                                  ; $53B5: $20 $42

    ld h, c                                       ; $53B7: $61
    ld l, [hl]                                    ; $53B8: $6E
    ld l, e                                       ; $53B9: $6B
    jr nz, jr_01A_5425                            ; $53BA: $20 $69

    ld [hl], e                                    ; $53BC: $73
    cp $66                                        ; $53BD: $FE $66
    ld [hl], l                                    ; $53BF: $75
    ld l, h                                       ; $53C0: $6C
    ld l, h                                       ; $53C1: $6C
    ld l, $FE                                     ; $53C2: $2E $FE
    db $FD                                        ; $53C4: $FD
    ld b, [hl]                                    ; $53C5: $46
    pop bc                                        ; $53C6: $C1
    ld d, d                                       ; $53C7: $52
    sbc e                                         ; $53C8: $9B
    cp c                                          ; $53C9: $B9
    ld b, h                                       ; $53CA: $44
    sbc a                                         ; $53CB: $9F
    ld b, e                                       ; $53CC: $43
    ld l, a                                       ; $53CD: $6F
    ld l, l                                       ; $53CE: $6D
    ld h, l                                       ; $53CF: $65
    jr nz, jr_01A_5434                            ; $53D0: $20 $62

    ld h, c                                       ; $53D2: $61
    ld h, e                                       ; $53D3: $63
    ld l, e                                       ; $53D4: $6B
    jr nz, @+$75                                  ; $53D5: $20 $73

    ld l, a                                       ; $53D7: $6F
    ld l, a                                       ; $53D8: $6F
    ld l, [hl]                                    ; $53D9: $6E
    ld hl, $FDFE                                  ; $53DA: $21 $FE $FD
    sbc d                                         ; $53DD: $9A
    rlca                                          ; $53DE: $07
    nop                                           ; $53DF: $00
    add c                                         ; $53E0: $81
    ld e, l                                       ; $53E1: $5D
    ld b, d                                       ; $53E2: $42
    rlca                                          ; $53E3: $07
    nop                                           ; $53E4: $00
    ld l, e                                       ; $53E5: $6B
    ld c, d                                       ; $53E6: $4A
    add hl, bc                                    ; $53E7: $09
    nop                                           ; $53E8: $00
    jr nz, jr_01A_53AA                            ; $53E9: $20 $BF

    ld d, b                                       ; $53EB: $50
    sbc e                                         ; $53EC: $9B
    jp hl                                         ; $53ED: $E9


    ld d, l                                       ; $53EE: $55
    sbc a                                         ; $53EF: $9F
    ld d, a                                       ; $53F0: $57
    ld h, l                                       ; $53F1: $65
    ld l, h                                       ; $53F2: $6C
    ld h, e                                       ; $53F3: $63

jr_01A_53F4:
    ld l, a                                       ; $53F4: $6F
    ld l, l                                       ; $53F5: $6D
    ld h, l                                       ; $53F6: $65
    ld hl, $FDFE                                  ; $53F7: $21 $FE $FD
    sbc d                                         ; $53FA: $9A
    sub b                                         ; $53FB: $90
    ld a, [de]                                    ; $53FC: $1A
    ld de, $1054                                  ; $53FD: $11 $54 $10
    nop                                           ; $5400: $00
    dec b                                         ; $5401: $05

jr_01A_5402:
    inc bc                                        ; $5402: $03
    inc a                                         ; $5403: $3C
    nop                                           ; $5404: $00
    dec c                                         ; $5405: $0D
    inc d                                         ; $5406: $14
    nop                                           ; $5407: $00
    inc c                                         ; $5408: $0C
    dec b                                         ; $5409: $05
    nop                                           ; $540A: $00
    inc b                                         ; $540B: $04
    ld a, [bc]                                    ; $540C: $0A
    nop                                           ; $540D: $00
    dec b                                         ; $540E: $05
    ld a, [bc]                                    ; $540F: $0A
    nop                                           ; $5410: $00
    sbc e                                         ; $5411: $9B
    jp hl                                         ; $5412: $E9


    ld d, l                                       ; $5413: $55
    sbc a                                         ; $5414: $9F
    ld c, b                                       ; $5415: $48
    ld h, c                                       ; $5416: $61
    halt                                          ; $5417: $76
    ld h, l                                       ; $5418: $65
    jr nz, jr_01A_547C                            ; $5419: $20 $61

    jr nz, @+$75                                  ; $541B: $20 $73

    ld h, c                                       ; $541D: $61
    ld h, [hl]                                    ; $541E: $66
    ld h, l                                       ; $541F: $65
    rst $38                                       ; $5420: $FF
    ld l, d                                       ; $5421: $6A
    ld l, a                                       ; $5422: $6F
    ld [hl], l                                    ; $5423: $75
    ld [hl], d                                    ; $5424: $72

jr_01A_5425:
    ld l, [hl]                                    ; $5425: $6E

jr_01A_5426:
    ld h, l                                       ; $5426: $65
    ld a, c                                       ; $5427: $79
    ld l, $FE                                     ; $5428: $2E $FE
    db $FD                                        ; $542A: $FD
    sbc d                                         ; $542B: $9A
    rlca                                          ; $542C: $07
    nop                                           ; $542D: $00
    add c                                         ; $542E: $81
    ld e, l                                       ; $542F: $5D
    ld b, d                                       ; $5430: $42
    sub e                                         ; $5431: $93
    ld h, l                                       ; $5432: $65
    ld c, c                                       ; $5433: $49

jr_01A_5434:
    ld d, c                                       ; $5434: $51
    ld c, a                                       ; $5435: $4F
    ld h, h                                       ; $5436: $64
    reti                                          ; $5437: $D9


    ld d, [hl]                                    ; $5438: $56
    ld l, c                                       ; $5439: $69
    sbc $56                                       ; $543A: $DE $56
    ld h, [hl]                                    ; $543C: $66
    ret nz                                        ; $543D: $C0

    ld e, h                                       ; $543E: $5C
    ld hl, $0005                                  ; $543F: $21 $05 $00
    add c                                         ; $5442: $81
    ld e, l                                       ; $5443: $5D
    dec b                                         ; $5444: $05
    dec b                                         ; $5445: $05

jr_01A_5446:
    ld l, c                                       ; $5446: $69
    ret nc                                        ; $5447: $D0

    nop                                           ; $5448: $00
    jr nz, jr_01A_5446                            ; $5449: $20 $FB

    ld d, b                                       ; $544B: $50
    ld [hl+], a                                   ; $544C: $22
    dec b                                         ; $544D: $05
    ld b, b                                       ; $544E: $40
    dec b                                         ; $544F: $05
    ld [bc], a                                    ; $5450: $02
    ld l, e                                       ; $5451: $6B
    ld c, d                                       ; $5452: $4A
    ld c, $0A                                     ; $5453: $0E $0A
    sub $D0                                       ; $5455: $D6 $D0
    nop                                           ; $5457: $00
    ld de, $4147                                  ; $5458: $11 $47 $41
    ld [hl+], a                                   ; $545B: $22
    dec b                                         ; $545C: $05
    ld b, b                                       ; $545D: $40
    dec b                                         ; $545E: $05
    inc bc                                        ; $545F: $03
    ld l, e                                       ; $5460: $6B
    ld c, d                                       ; $5461: $4A

jr_01A_5462:
    dec b                                         ; $5462: $05
    inc c                                         ; $5463: $0C
    push af                                       ; $5464: $F5
    ret nc                                        ; $5465: $D0

    jr nc, @+$13                                  ; $5466: $30 $11

    rra                                           ; $5468: $1F
    ld b, l                                       ; $5469: $45
    ld [hl+], a                                   ; $546A: $22
    dec b                                         ; $546B: $05
    ld b, b                                       ; $546C: $40
    ld l, e                                       ; $546D: $6B
    jr nc, jr_01A_547C                            ; $546E: $30 $0C

    sub b                                         ; $5470: $90
    ld [hl], a                                    ; $5471: $77
    nop                                           ; $5472: $00
    add b                                         ; $5473: $80
    nop                                           ; $5474: $00
    ld l, e                                       ; $5475: $6B
    dec hl                                        ; $5476: $2B
    dec bc                                        ; $5477: $0B
    jr nz, jr_01A_54C1                            ; $5478: $20 $47

    nop                                           ; $547A: $00
    add e                                         ; $547B: $83

jr_01A_547C:
    nop                                           ; $547C: $00
    dec bc                                        ; $547D: $0B
    nop                                           ; $547E: $00
    dec bc                                        ; $547F: $0B
    ld [bc], a                                    ; $5480: $02
    dec bc                                        ; $5481: $0B
    inc bc                                        ; $5482: $03
    nop                                           ; $5483: $00
    add d                                         ; $5484: $82
    rra                                           ; $5485: $1F
    ld de, $4294                                  ; $5486: $11 $94 $42
    dec d                                         ; $5489: $15
    ld de, $40AF                                  ; $548A: $11 $AF $40
    ret nc                                        ; $548D: $D0

    ld de, $413D                                  ; $548E: $11 $3D $41
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    ld d, e                                       ; $5493: $53
    dec d                                         ; $5494: $15
    ld de, $413D                                  ; $5495: $11 $3D $41
    add b                                         ; $5498: $80
    ld de, $4147                                  ; $5499: $11 $47 $41
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    ld b, d                                       ; $549E: $42
    ld bc, $171C                                  ; $549F: $01 $1C $17
    dec b                                         ; $54A2: $05
    nop                                           ; $54A3: $00
    add c                                         ; $54A4: $81
    ld e, l                                       ; $54A5: $5D
    dec b                                         ; $54A6: $05
    dec b                                         ; $54A7: $05
    ld l, c                                       ; $54A8: $69
    ret nc                                        ; $54A9: $D0

    nop                                           ; $54AA: $00
    jr nz, jr_01A_5462                            ; $54AB: $20 $B5

    ld d, b                                       ; $54AD: $50
    ld [hl+], a                                   ; $54AE: $22
    dec b                                         ; $54AF: $05
    ld b, b                                       ; $54B0: $40
    ld b, l                                       ; $54B1: $45
    ld a, [de]                                    ; $54B2: $1A
    halt                                          ; $54B3: $76
    ld e, e                                       ; $54B4: $5B
    xor h                                         ; $54B5: $AC
    or d                                          ; $54B6: $B2
    and d                                         ; $54B7: $A2
    ld bc, $6593                                  ; $54B8: $01 $93 $65
    ld e, b                                       ; $54BB: $58
    ld d, c                                       ; $54BC: $51
    ld c, a                                       ; $54BD: $4F
    ld h, h                                       ; $54BE: $64
    rst $20                                       ; $54BF: $E7
    ld d, [hl]                                    ; $54C0: $56

jr_01A_54C1:
    ld h, [hl]                                    ; $54C1: $66
    ret nz                                        ; $54C2: $C0

    ld e, h                                       ; $54C3: $5C
    ld hl, $0005                                  ; $54C4: $21 $05 $00
    add c                                         ; $54C7: $81
    ld e, l                                       ; $54C8: $5D
    dec b                                         ; $54C9: $05
    dec b                                         ; $54CA: $05

jr_01A_54CB:
    ld a, l                                       ; $54CB: $7D
    ret nc                                        ; $54CC: $D0

    nop                                           ; $54CD: $00
    jr nz, jr_01A_54CB                            ; $54CE: $20 $FB

    ld d, b                                       ; $54D0: $50
    ld [hl+], a                                   ; $54D1: $22
    dec b                                         ; $54D2: $05
    ld b, b                                       ; $54D3: $40
    dec bc                                        ; $54D4: $0B
    nop                                           ; $54D5: $00
    nop                                           ; $54D6: $00
    add d                                         ; $54D7: $82
    rra                                           ; $54D8: $1F
    ld de, $4294                                  ; $54D9: $11 $94 $42
    ld bc, $1C09                                  ; $54DC: $01 $09 $1C
    ld b, l                                       ; $54DF: $45
    cpl                                           ; $54E0: $2F
    scf                                           ; $54E1: $37
    ld c, h                                       ; $54E2: $4C
    ld bc, $1A07                                  ; $54E3: $01 $07 $1A
    ld b, l                                       ; $54E6: $45
    cpl                                           ; $54E7: $2F
    scf                                           ; $54E8: $37
    ld c, h                                       ; $54E9: $4C
    ld [bc], a                                    ; $54EA: $02
    rra                                           ; $54EB: $1F
    ld a, [bc]                                    ; $54EC: $0A
    rrca                                          ; $54ED: $0F
    rla                                           ; $54EE: $17
    ld b, l                                       ; $54EF: $45
    ld a, [de]                                    ; $54F0: $1A
    and h                                         ; $54F1: $A4
    ld c, d                                       ; $54F2: $4A
    ld bc, $1A0B                                  ; $54F3: $01 $0B $1A
    ld b, l                                       ; $54F6: $45
    cpl                                           ; $54F7: $2F
    scf                                           ; $54F8: $37
    ld c, h                                       ; $54F9: $4C
    ld bc, $1809                                  ; $54FA: $01 $09 $18
    ld b, l                                       ; $54FD: $45
    cpl                                           ; $54FE: $2F
    scf                                           ; $54FF: $37
    ld c, h                                       ; $5500: $4C
    sbc e                                         ; $5501: $9B
    cp c                                          ; $5502: $B9
    ld e, l                                       ; $5503: $5D
    sbc a                                         ; $5504: $9F
    ld d, h                                       ; $5505: $54
    ld l, b                                       ; $5506: $68
    ld h, l                                       ; $5507: $65
    ld a, c                                       ; $5508: $79
    daa                                           ; $5509: $27
    ld [hl], d                                    ; $550A: $72
    ld h, l                                       ; $550B: $65
    rst $38                                       ; $550C: $FF
    ld h, c                                       ; $550D: $61
    ld [hl], h                                    ; $550E: $74
    ld [hl], h                                    ; $550F: $74
    ld h, c                                       ; $5510: $61
    ld h, e                                       ; $5511: $63
    ld l, e                                       ; $5512: $6B
    ld l, c                                       ; $5513: $69
    ld l, [hl]                                    ; $5514: $6E
    ld h, a                                       ; $5515: $67
    cp $61                                        ; $5516: $FE $61
    ld h, a                                       ; $5518: $67
    ld h, c                                       ; $5519: $61
    ld l, c                                       ; $551A: $69
    ld l, [hl]                                    ; $551B: $6E
    ld hl, $FDFE                                  ; $551C: $21 $FE $FD
    sbc d                                         ; $551F: $9A
    ld e, b                                       ; $5520: $58
    ld bc, $9B42                                  ; $5521: $01 $42 $9B
    cp c                                          ; $5524: $B9
    ld e, l                                       ; $5525: $5D
    sbc a                                         ; $5526: $9F
    ld c, b                                       ; $5527: $48
    ld l, a                                       ; $5528: $6F
    ld l, h                                       ; $5529: $6C
    ld h, h                                       ; $552A: $64
    jr nz, jr_01A_5593                            ; $552B: $20 $66

    ld h, c                                       ; $552D: $61
    ld [hl], e                                    ; $552E: $73
    ld [hl], h                                    ; $552F: $74
    inc l                                         ; $5530: $2C
    rst $38                                       ; $5531: $FF
    ld b, a                                       ; $5532: $47
    ld [hl], d                                    ; $5533: $72
    ld h, l                                       ; $5534: $65
    ld h, c                                       ; $5535: $61
    ld [hl], h                                    ; $5536: $74
    jr nz, jr_01A_5586                            ; $5537: $20 $4D

    ld h, c                                       ; $5539: $61
    ld h, a                                       ; $553A: $67
    ld [hl], l                                    ; $553B: $75
    ld [hl], e                                    ; $553C: $73
    ld l, $FE                                     ; $553D: $2E $FE
    ld d, a                                       ; $553F: $57
    ld h, l                                       ; $5540: $65
    jr nz, jr_01A_55BA                            ; $5541: $20 $77

    ld l, c                                       ; $5543: $69
    ld l, h                                       ; $5544: $6C
    ld l, h                                       ; $5545: $6C
    jr nz, @+$76                                  ; $5546: $20 $74

    ld h, c                                       ; $5548: $61
    ld l, e                                       ; $5549: $6B
    ld h, l                                       ; $554A: $65
    rst $38                                       ; $554B: $FF
    ld a, c                                       ; $554C: $79
    ld l, a                                       ; $554D: $6F
    ld [hl], l                                    ; $554E: $75
    jr nz, jr_01A_55C4                            ; $554F: $20 $73

    ld h, c                                       ; $5551: $61
    ld h, [hl]                                    ; $5552: $66
    ld h, l                                       ; $5553: $65
    ld l, h                                       ; $5554: $6C
    ld a, c                                       ; $5555: $79
    jr nz, jr_01A_55CC                            ; $5556: $20 $74

    ld l, a                                       ; $5558: $6F
    cp $74                                        ; $5559: $FE $74
    ld l, b                                       ; $555B: $68
    ld h, l                                       ; $555C: $65
    jr nz, jr_01A_55C4                            ; $555D: $20 $65

    ld l, [hl]                                    ; $555F: $6E
    ld [hl], h                                    ; $5560: $74
    ld [hl], d                                    ; $5561: $72
    ld h, c                                       ; $5562: $61
    ld l, [hl]                                    ; $5563: $6E
    ld h, e                                       ; $5564: $63
    ld h, l                                       ; $5565: $65
    ld l, $FE                                     ; $5566: $2E $FE
    db $FD                                        ; $5568: $FD
    sbc d                                         ; $5569: $9A
    ld e, b                                       ; $556A: $58
    ld [bc], a                                    ; $556B: $02
    ld b, d                                       ; $556C: $42
    xor h                                         ; $556D: $AC
    or d                                          ; $556E: $B2
    and d                                         ; $556F: $A2
    ld bc, $6593                                  ; $5570: $01 $93 $65
    and h                                         ; $5573: $A4
    ld d, b                                       ; $5574: $50
    ld c, a                                       ; $5575: $4F
    ld h, h                                       ; $5576: $64
    inc sp                                        ; $5577: $33
    ld d, [hl]                                    ; $5578: $56
    ld h, [hl]                                    ; $5579: $66
    ret nz                                        ; $557A: $C0

    ld e, h                                       ; $557B: $5C
    ld hl, $000B                                  ; $557C: $21 $0B $00
    nop                                           ; $557F: $00
    add d                                         ; $5580: $82
    rra                                           ; $5581: $1F
    rra                                           ; $5582: $1F
    sub h                                         ; $5583: $94
    ld b, d                                       ; $5584: $42
    xor h                                         ; $5585: $AC

jr_01A_5586:
    or d                                          ; $5586: $B2
    and d                                         ; $5587: $A2
    ld bc, $1A96                                  ; $5588: $01 $96 $1A
    call c, $9354                                 ; $558B: $DC $54 $93
    ld h, l                                       ; $558E: $65
    and h                                         ; $558F: $A4
    ld d, b                                       ; $5590: $50
    ld c, a                                       ; $5591: $4F
    ld h, h                                       ; $5592: $64

jr_01A_5593:
    inc sp                                        ; $5593: $33
    ld d, [hl]                                    ; $5594: $56
    ld h, [hl]                                    ; $5595: $66
    ret nz                                        ; $5596: $C0

    ld e, h                                       ; $5597: $5C
    ld hl, $0005                                  ; $5598: $21 $05 $00
    ld l, e                                       ; $559B: $6B
    ld c, d                                       ; $559C: $4A
    ld [$C827], sp                                ; $559D: $08 $27 $C8
    reti                                          ; $55A0: $D9


    nop                                           ; $55A1: $00
    ld a, [de]                                    ; $55A2: $1A
    ld [bc], a                                    ; $55A3: $02
    ld d, a                                       ; $55A4: $57
    ld [hl+], a                                   ; $55A5: $22
    dec b                                         ; $55A6: $05
    ld b, b                                       ; $55A7: $40
    dec b                                         ; $55A8: $05
    ld [bc], a                                    ; $55A9: $02
    ld l, e                                       ; $55AA: $6B
    ld c, d                                       ; $55AB: $4A
    add hl, bc                                    ; $55AC: $09
    daa                                           ; $55AD: $27
    ret                                           ; $55AE: $C9


    reti                                          ; $55AF: $D9


    nop                                           ; $55B0: $00
    ld a, [de]                                    ; $55B1: $1A
    ld h, [hl]                                    ; $55B2: $66
    ld d, a                                       ; $55B3: $57
    ld a, [de]                                    ; $55B4: $1A
    ld l, [hl]                                    ; $55B5: $6E
    ld d, [hl]                                    ; $55B6: $56
    dec b                                         ; $55B7: $05
    inc bc                                        ; $55B8: $03
    ld l, e                                       ; $55B9: $6B

jr_01A_55BA:
    ld c, d                                       ; $55BA: $4A
    ld [$0828], sp                                ; $55BB: $08 $28 $08
    jp c, $1A00                                   ; $55BE: $DA $00 $1A

    xor d                                         ; $55C1: $AA
    ld d, a                                       ; $55C2: $57
    ld a, [de]                                    ; $55C3: $1A

jr_01A_55C4:
    xor h                                         ; $55C4: $AC
    ld d, [hl]                                    ; $55C5: $56
    dec b                                         ; $55C6: $05
    inc b                                         ; $55C7: $04
    ld l, e                                       ; $55C8: $6B
    ld c, d                                       ; $55C9: $4A
    add hl, bc                                    ; $55CA: $09
    rla                                           ; $55CB: $17

jr_01A_55CC:
    ret                                           ; $55CC: $C9


    push de                                       ; $55CD: $D5
    nop                                           ; $55CE: $00
    ld a, [de]                                    ; $55CF: $1A
    add sp, $57                                   ; $55D0: $E8 $57
    ld [hl+], a                                   ; $55D2: $22
    dec b                                         ; $55D3: $05
    ld b, b                                       ; $55D4: $40
    dec b                                         ; $55D5: $05
    dec b                                         ; $55D6: $05
    ld l, e                                       ; $55D7: $6B
    ld c, d                                       ; $55D8: $4A
    dec bc                                        ; $55D9: $0B
    rla                                           ; $55DA: $17
    set 2, l                                      ; $55DB: $CB $D5
    ld h, [hl]                                    ; $55DD: $66
    ld a, [de]                                    ; $55DE: $1A
    ld l, $58                                     ; $55DF: $2E $58
    ld [hl+], a                                   ; $55E1: $22
    dec b                                         ; $55E2: $05
    ld b, b                                       ; $55E3: $40
    dec b                                         ; $55E4: $05
    ld b, $6B                                     ; $55E5: $06 $6B
    ld c, d                                       ; $55E7: $4A
    inc de                                        ; $55E8: $13
    inc de                                        ; $55E9: $13
    db $D3                                        ; $55EA: $D3
    call nc, $1A8D                                ; $55EB: $D4 $8D $1A
    ld e, d                                       ; $55EE: $5A
    ld e, b                                       ; $55EF: $58
    ld [hl+], a                                   ; $55F0: $22
    dec b                                         ; $55F1: $05
    ld b, b                                       ; $55F2: $40
    dec b                                         ; $55F3: $05
    rlca                                          ; $55F4: $07
    ld l, e                                       ; $55F5: $6B
    ld c, d                                       ; $55F6: $4A
    ld d, $14                                     ; $55F7: $16 $14
    ld d, $D5                                     ; $55F9: $16 $D5
    adc l                                         ; $55FB: $8D
    ld a, [de]                                    ; $55FC: $1A
    ld [hl], b                                    ; $55FD: $70
    ld e, b                                       ; $55FE: $58
    ld [hl+], a                                   ; $55FF: $22
    dec b                                         ; $5600: $05
    ld b, b                                       ; $5601: $40
    dec b                                         ; $5602: $05
    ld [$4A6B], sp                                ; $5603: $08 $6B $4A
    dec d                                         ; $5606: $15
    ld de, $D455                                  ; $5607: $11 $55 $D4
    nop                                           ; $560A: $00
    ld a, [de]                                    ; $560B: $1A
    or $57                                        ; $560C: $F6 $57
    ld [hl+], a                                   ; $560E: $22
    dec b                                         ; $560F: $05
    ld b, b                                       ; $5610: $40
    dec b                                         ; $5611: $05
    add hl, bc                                    ; $5612: $09
    ld l, e                                       ; $5613: $6B
    ld c, d                                       ; $5614: $4A
    jr nc, @+$10                                  ; $5615: $30 $0E

    or b                                          ; $5617: $B0
    db $D3                                        ; $5618: $D3
    nop                                           ; $5619: $00
    ld a, [de]                                    ; $561A: $1A
    db $10                                        ; $561B: $10
    ld e, b                                       ; $561C: $58
    ld [hl+], a                                   ; $561D: $22
    dec b                                         ; $561E: $05
    ld b, b                                       ; $561F: $40
    dec b                                         ; $5620: $05
    ld a, [bc]                                    ; $5621: $0A
    ld l, e                                       ; $5622: $6B
    ld c, d                                       ; $5623: $4A
    jr nc, jr_01A_5637                            ; $5624: $30 $11

    ld [hl], b                                    ; $5626: $70
    call nc, $1A66                                ; $5627: $D4 $66 $1A
    inc a                                         ; $562A: $3C
    ld e, b                                       ; $562B: $58
    ld [hl+], a                                   ; $562C: $22
    dec b                                         ; $562D: $05
    ld b, b                                       ; $562E: $40
    dec bc                                        ; $562F: $0B
    nop                                           ; $5630: $00
    dec bc                                        ; $5631: $0B
    ld [bc], a                                    ; $5632: $02
    dec bc                                        ; $5633: $0B
    inc bc                                        ; $5634: $03
    dec bc                                        ; $5635: $0B
    inc b                                         ; $5636: $04

jr_01A_5637:
    dec bc                                        ; $5637: $0B
    dec b                                         ; $5638: $05
    dec bc                                        ; $5639: $0B
    ld b, $0B                                     ; $563A: $06 $0B
    rlca                                          ; $563C: $07
    dec bc                                        ; $563D: $0B
    ld [$090B], sp                                ; $563E: $08 $0B $09
    dec bc                                        ; $5641: $0B
    ld a, [bc]                                    ; $5642: $0A
    ld l, e                                       ; $5643: $6B
    jr z, jr_01A_5653                             ; $5644: $28 $0D

    ld h, b                                       ; $5646: $60
    ld b, e                                       ; $5647: $43
    nop                                           ; $5648: $00
    add b                                         ; $5649: $80
    nop                                           ; $564A: $00
    ld l, e                                       ; $564B: $6B
    ld [hl], $0D                                  ; $564C: $36 $0D
    nop                                           ; $564E: $00
    ld b, b                                       ; $564F: $40
    nop                                           ; $5650: $00
    add e                                         ; $5651: $83
    nop                                           ; $5652: $00

jr_01A_5653:
    ld l, e                                       ; $5653: $6B
    daa                                           ; $5654: $27
    inc c                                         ; $5655: $0C
    add b                                         ; $5656: $80
    ld b, [hl]                                    ; $5657: $46
    ld h, b                                       ; $5658: $60
    add [hl]                                      ; $5659: $86
    nop                                           ; $565A: $00
    ld l, e                                       ; $565B: $6B
    jr z, @+$0E                                   ; $565C: $28 $0C

    ret nz                                        ; $565E: $C0

    ld d, d                                       ; $565F: $52
    ret nc                                        ; $5660: $D0

    adc b                                         ; $5661: $88
    nop                                           ; $5662: $00
    add d                                         ; $5663: $82
    rra                                           ; $5664: $1F
    rra                                           ; $5665: $1F
    sub h                                         ; $5666: $94
    ld h, b                                       ; $5667: $60
    ld bc, $1A45                                  ; $5668: $01 $45 $1A
    add [hl]                                      ; $566B: $86
    ld e, b                                       ; $566C: $58
    ld b, d                                       ; $566D: $42
    inc d                                         ; $566E: $14
    jr nz, jr_01A_5676                            ; $566F: $20 $05

    ld h, a                                       ; $5671: $67
    sbc e                                         ; $5672: $9B
    cp c                                          ; $5673: $B9
    ld e, l                                       ; $5674: $5D
    sbc a                                         ; $5675: $9F

jr_01A_5676:
    ld d, a                                       ; $5676: $57
    ld h, l                                       ; $5677: $65
    jr nz, @+$79                                  ; $5678: $20 $77

    ld l, c                                       ; $567A: $69
    ld l, h                                       ; $567B: $6C
    ld l, h                                       ; $567C: $6C
    jr nz, jr_01A_56EA                            ; $567D: $20 $6B

    ld h, l                                       ; $567F: $65
    ld h, l                                       ; $5680: $65
    ld [hl], b                                    ; $5681: $70
    rst $38                                       ; $5682: $FF
    ld [hl], h                                    ; $5683: $74
    ld l, b                                       ; $5684: $68
    ld h, l                                       ; $5685: $65
    jr nz, jr_01A_56DB                            ; $5686: $20 $53

    ld l, b                                       ; $5688: $68
    ld h, c                                       ; $5689: $61
    ld h, h                                       ; $568A: $64
    ld l, a                                       ; $568B: $6F
    ld [hl], a                                    ; $568C: $77
    jr nz, jr_01A_56DC                            ; $568D: $20 $4D

    ld h, c                                       ; $568F: $61
    ld h, a                                       ; $5690: $67
    ld l, c                                       ; $5691: $69
    cp $61                                        ; $5692: $FE $61
    ld [hl], h                                    ; $5694: $74
    jr nz, jr_01A_56F9                            ; $5695: $20 $62

    ld h, c                                       ; $5697: $61
    ld a, c                                       ; $5698: $79
    ld l, $20                                     ; $5699: $2E $20
    ld b, a                                       ; $569B: $47
    ld l, a                                       ; $569C: $6F
    inc l                                         ; $569D: $2C
    rst $38                                       ; $569E: $FF
    ld [hl], c                                    ; $569F: $71
    ld [hl], l                                    ; $56A0: $75
    ld l, c                                       ; $56A1: $69
    ld h, e                                       ; $56A2: $63
    ld l, e                                       ; $56A3: $6B
    ld l, h                                       ; $56A4: $6C
    ld a, c                                       ; $56A5: $79
    ld hl, $FDFE                                  ; $56A6: $21 $FE $FD
    sbc d                                         ; $56A9: $9A

jr_01A_56AA:
    ld [de], a                                    ; $56AA: $12
    ld b, d                                       ; $56AB: $42
    inc d                                         ; $56AC: $14
    jr nz, jr_01A_56B4                            ; $56AD: $20 $05

    ld h, a                                       ; $56AF: $67

jr_01A_56B0:
    sbc e                                         ; $56B0: $9B
    cp c                                          ; $56B1: $B9
    ld e, l                                       ; $56B2: $5D
    sbc a                                         ; $56B3: $9F

jr_01A_56B4:
    ld c, c                                       ; $56B4: $49
    daa                                           ; $56B5: $27
    ld l, l                                       ; $56B6: $6D
    jr nz, jr_01A_572C                            ; $56B7: $20 $73

    ld l, a                                       ; $56B9: $6F
    ld [hl], d                                    ; $56BA: $72
    ld [hl], d                                    ; $56BB: $72
    ld a, c                                       ; $56BC: $79
    jr nz, jr_01A_5721                            ; $56BD: $20 $62

    ld [hl], l                                    ; $56BF: $75

jr_01A_56C0:
    ld [hl], h                                    ; $56C0: $74

jr_01A_56C1:
    rst $38                                       ; $56C1: $FF
    ld d, h                                       ; $56C2: $54
    ld l, b                                       ; $56C3: $68
    ld l, c                                       ; $56C4: $69
    ld [hl], e                                    ; $56C5: $73
    jr nz, jr_01A_5731                            ; $56C6: $20 $69

jr_01A_56C8:
    ld [hl], e                                    ; $56C8: $73
    jr nz, jr_01A_572C                            ; $56C9: $20 $61

    ld [hl], e                                    ; $56CB: $73
    cp $66                                        ; $56CC: $FE $66
    ld h, c                                       ; $56CE: $61
    ld [hl], d                                    ; $56CF: $72
    jr nz, jr_01A_5733                            ; $56D0: $20 $61

    ld [hl], e                                    ; $56D2: $73
    jr nz, @+$79                                  ; $56D3: $20 $77

    ld h, l                                       ; $56D5: $65
    jr nz, @+$65                                  ; $56D6: $20 $63

    ld h, c                                       ; $56D8: $61
    ld l, [hl]                                    ; $56D9: $6E
    rst $38                                       ; $56DA: $FF

jr_01A_56DB:
    ld h, c                                       ; $56DB: $61

jr_01A_56DC:
    ld h, e                                       ; $56DC: $63
    ld h, e                                       ; $56DD: $63
    ld l, a                                       ; $56DE: $6F
    ld l, l                                       ; $56DF: $6D
    ld [hl], b                                    ; $56E0: $70
    ld h, c                                       ; $56E1: $61
    ld l, [hl]                                    ; $56E2: $6E
    ld a, c                                       ; $56E3: $79
    jr nz, @+$7B                                  ; $56E4: $20 $79

    ld l, a                                       ; $56E6: $6F
    ld [hl], l                                    ; $56E7: $75
    ld l, $FE                                     ; $56E8: $2E $FE

jr_01A_56EA:
    ld b, a                                       ; $56EA: $47
    ld l, a                                       ; $56EB: $6F
    jr nz, jr_01A_5761                            ; $56EC: $20 $73

    ld h, l                                       ; $56EE: $65
    ld h, l                                       ; $56EF: $65
    jr nz, jr_01A_5743                            ; $56F0: $20 $51

    ld [hl], l                                    ; $56F2: $75
    ld h, l                                       ; $56F3: $65
    ld h, l                                       ; $56F4: $65
    ld l, [hl]                                    ; $56F5: $6E
    rst $38                                       ; $56F6: $FF
    ld c, d                                       ; $56F7: $4A
    ld h, c                                       ; $56F8: $61

jr_01A_56F9:
    ld h, l                                       ; $56F9: $65
    ld l, h                                       ; $56FA: $6C
    ld h, c                                       ; $56FB: $61
    ld hl, $FDFE                                  ; $56FC: $21 $FE $FD
    sbc d                                         ; $56FF: $9A
    ld [de], a                                    ; $5700: $12
    ld b, d                                       ; $5701: $42
    dec d                                         ; $5702: $15
    jr nz, jr_01A_56B0                            ; $5703: $20 $AB

    ld d, b                                       ; $5705: $50
    ld [$6720], sp                                ; $5706: $08 $20 $67
    ld d, c                                       ; $5709: $51

jr_01A_570A:
    jr z, jr_01A_572C                             ; $570A: $28 $20

    xor e                                         ; $570C: $AB
    ld d, b                                       ; $570D: $50
    jr nc, jr_01A_5730                            ; $570E: $30 $20

    rst $20                                       ; $5710: $E7
    ld d, b                                       ; $5711: $50
    db $10                                        ; $5712: $10
    jr nz, jr_01A_56C0                            ; $5713: $20 $AB

    ld d, b                                       ; $5715: $50
    db $10                                        ; $5716: $10
    jr nz, jr_01A_570A                            ; $5717: $20 $F1

    ld d, b                                       ; $5719: $50
    db $10                                        ; $571A: $10
    jr nz, jr_01A_56C8                            ; $571B: $20 $AB

    ld d, b                                       ; $571D: $50
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    ld h, d                                       ; $5720: $62

jr_01A_5721:
    ld [bc], a                                    ; $5721: $02
    dec d                                         ; $5722: $15
    jr nz, jr_01A_56AA                            ; $5723: $20 $85

    ld d, c                                       ; $5725: $51
    db $10                                        ; $5726: $10
    jr nz, jr_01A_5790                            ; $5727: $20 $67

    ld d, c                                       ; $5729: $51
    jr nz, @+$22                                  ; $572A: $20 $20

jr_01A_572C:
    xor e                                         ; $572C: $AB
    ld d, b                                       ; $572D: $50
    nop                                           ; $572E: $00
    nop                                           ; $572F: $00

jr_01A_5730:
    ld e, h                                       ; $5730: $5C

jr_01A_5731:
    nop                                           ; $5731: $00
    inc bc                                        ; $5732: $03

jr_01A_5733:
    ld d, $20                                     ; $5733: $16 $20
    ld h, a                                       ; $5735: $67
    ld d, c                                       ; $5736: $51
    ld [$FF00], sp                                ; $5737: $08 $00 $FF
    jr nz, jr_01A_56C1                            ; $573A: $20 $85

    ld d, c                                       ; $573C: $51
    ld d, b                                       ; $573D: $50
    ld bc, $2000                                  ; $573E: $01 $00 $20
    add l                                         ; $5741: $85
    ld d, c                                       ; $5742: $51

jr_01A_5743:
    ld d, b                                       ; $5743: $50
    ld bc, $2000                                  ; $5744: $01 $00 $20
    add l                                         ; $5747: $85
    ld d, c                                       ; $5748: $51
    add b                                         ; $5749: $80
    ld bc, $2000                                  ; $574A: $01 $00 $20
    add l                                         ; $574D: $85
    ld d, c                                       ; $574E: $51
    ld b, b                                       ; $574F: $40
    ld bc, $2000                                  ; $5750: $01 $00 $20
    ld h, a                                       ; $5753: $67

jr_01A_5754:
    ld d, c                                       ; $5754: $51
    ret nc                                        ; $5755: $D0

    nop                                           ; $5756: $00
    rst $38                                       ; $5757: $FF
    jr nz, jr_01A_57C1                            ; $5758: $20 $67

    ld d, c                                       ; $575A: $51
    ld b, b                                       ; $575B: $40
    nop                                           ; $575C: $00
    rst $38                                       ; $575D: $FF
    jr nz, jr_01A_5781                            ; $575E: $20 $21

    ld e, d                                       ; $5760: $5A

jr_01A_5761:
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    ld b, d                                       ; $5765: $42
    dec d                                         ; $5766: $15
    jr nz, jr_01A_5754                            ; $5767: $20 $EB

    ld h, l                                       ; $5769: $65
    jr nc, jr_01A_578C                            ; $576A: $30 $20

    dec hl                                        ; $576C: $2B
    ld h, [hl]                                    ; $576D: $66
    jr nz, jr_01A_5790                            ; $576E: $20 $20

    db $EB                                        ; $5770: $EB
    ld h, l                                       ; $5771: $65
    jr nz, jr_01A_5794                            ; $5772: $20 $20

    dec hl                                        ; $5774: $2B
    ld h, [hl]                                    ; $5775: $66
    ld [$5B00], sp                                ; $5776: $08 $00 $5B
    ld a, [de]                                    ; $5779: $1A
    ld bc, $6255                                  ; $577A: $01 $55 $62
    ld bc, $0156                                  ; $577D: $01 $56 $01
    ld b, b                                       ; $5780: $40

jr_01A_5781:
    add b                                         ; $5781: $80
    inc d                                         ; $5782: $14

jr_01A_5783:
    jr nz, jr_01A_57DA                            ; $5783: $20 $55

    ld h, [hl]                                    ; $5785: $66
    ld e, h                                       ; $5786: $5C
    nop                                           ; $5787: $00
    inc bc                                        ; $5788: $03
    dec d                                         ; $5789: $15
    jr nz, jr_01A_57A7                            ; $578A: $20 $1B

jr_01A_578C:
    ld h, [hl]                                    ; $578C: $66
    sub b                                         ; $578D: $90

jr_01A_578E:
    jr nz, jr_01A_57AB                            ; $578E: $20 $1B

jr_01A_5790:
    ld h, [hl]                                    ; $5790: $66
    sub b                                         ; $5791: $90
    jr nz, @+$1D                                  ; $5792: $20 $1B

jr_01A_5794:
    ld h, [hl]                                    ; $5794: $66
    ld b, b                                       ; $5795: $40
    jr nz, jr_01A_5783                            ; $5796: $20 $EB

jr_01A_5798:
    ld h, l                                       ; $5798: $65
    and b                                         ; $5799: $A0

jr_01A_579A:
    jr nz, jr_01A_57B7                            ; $579A: $20 $1B

    ld h, [hl]                                    ; $579C: $66
    jr nc, @+$22                                  ; $579D: $30 $20

    db $EB                                        ; $579F: $EB
    ld h, l                                       ; $57A0: $65
    ld [hl], b                                    ; $57A1: $70

jr_01A_57A2:
    jr nz, jr_01A_57A9                            ; $57A2: $20 $05

    ld h, a                                       ; $57A4: $67
    jr jr_01A_57A7                                ; $57A5: $18 $00

jr_01A_57A7:
    ld d, [hl]                                    ; $57A7: $56

jr_01A_57A8:
    ld [bc], a                                    ; $57A8: $02

jr_01A_57A9:
    ld b, d                                       ; $57A9: $42
    dec d                                         ; $57AA: $15

jr_01A_57AB:
    jr nz, jr_01A_5798                            ; $57AB: $20 $EB

    ld h, l                                       ; $57AD: $65
    jr nc, jr_01A_57D0                            ; $57AE: $30 $20

    dec hl                                        ; $57B0: $2B
    ld h, [hl]                                    ; $57B1: $66
    nop                                           ; $57B2: $00
    nop                                           ; $57B3: $00
    ld h, d                                       ; $57B4: $62
    ld [bc], a                                    ; $57B5: $02
    dec d                                         ; $57B6: $15

jr_01A_57B7:
    jr nz, jr_01A_57D4                            ; $57B7: $20 $1B

    ld h, [hl]                                    ; $57B9: $66
    db $10                                        ; $57BA: $10
    jr nz, jr_01A_57A8                            ; $57BB: $20 $EB

    ld h, l                                       ; $57BD: $65
    jr nz, jr_01A_57E0                            ; $57BE: $20 $20

    ei                                            ; $57C0: $FB

jr_01A_57C1:
    ld h, [hl]                                    ; $57C1: $66
    nop                                           ; $57C2: $00
    nop                                           ; $57C3: $00
    ld e, h                                       ; $57C4: $5C
    nop                                           ; $57C5: $00
    inc bc                                        ; $57C6: $03

jr_01A_57C7:
    ld b, b                                       ; $57C7: $40
    ld [$2015], sp                                ; $57C8: $08 $15 $20

jr_01A_57CB:
    db $EB                                        ; $57CB: $EB
    ld h, l                                       ; $57CC: $65
    db $10                                        ; $57CD: $10
    jr nz, jr_01A_57EB                            ; $57CE: $20 $1B

jr_01A_57D0:
    ld h, [hl]                                    ; $57D0: $66
    sub b                                         ; $57D1: $90
    jr nz, jr_01A_57EF                            ; $57D2: $20 $1B

jr_01A_57D4:
    ld h, [hl]                                    ; $57D4: $66
    sub b                                         ; $57D5: $90
    jr nz, jr_01A_57F3                            ; $57D6: $20 $1B

    ld h, [hl]                                    ; $57D8: $66
    ld b, b                                       ; $57D9: $40

jr_01A_57DA:
    jr nz, jr_01A_57C7                            ; $57DA: $20 $EB

    ld h, l                                       ; $57DC: $65
    ret nc                                        ; $57DD: $D0

    jr nz, jr_01A_57CB                            ; $57DE: $20 $EB

jr_01A_57E0:
    ld h, l                                       ; $57E0: $65
    ld b, b                                       ; $57E1: $40
    jr nz, jr_01A_57E9                            ; $57E2: $20 $05

    ld h, a                                       ; $57E4: $67
    nop                                           ; $57E5: $00
    nop                                           ; $57E6: $00
    ld b, d                                       ; $57E7: $42
    dec d                                         ; $57E8: $15

jr_01A_57E9:
    jr nz, jr_01A_579A                            ; $57E9: $20 $AF

jr_01A_57EB:
    ld h, [hl]                                    ; $57EB: $66
    db $10                                        ; $57EC: $10
    jr nz, jr_01A_578E                            ; $57ED: $20 $9F

jr_01A_57EF:
    ld h, [hl]                                    ; $57EF: $66
    stop                                          ; $57F0: $10 $00
    ld b, l                                       ; $57F2: $45

jr_01A_57F3:
    ld a, [de]                                    ; $57F3: $1A

jr_01A_57F4:
    add sp, $57                                   ; $57F4: $E8 $57
    dec d                                         ; $57F6: $15
    jr nz, jr_01A_57F4                            ; $57F7: $20 $FB

    ld h, l                                       ; $57F9: $65
    db $10                                        ; $57FA: $10
    jr nz, @+$0D                                  ; $57FB: $20 $0B

jr_01A_57FD:
    ld h, [hl]                                    ; $57FD: $66
    db $10                                        ; $57FE: $10
    jr nz, jr_01A_581C                            ; $57FF: $20 $1B

    ld h, [hl]                                    ; $5801: $66
    jr nz, jr_01A_5824                            ; $5802: $20 $20

    dec bc                                        ; $5804: $0B
    ld h, [hl]                                    ; $5805: $66
    db $10                                        ; $5806: $10
    jr nz, jr_01A_57F4                            ; $5807: $20 $EB

    ld h, l                                       ; $5809: $65
    stop                                          ; $580A: $10 $00
    ld b, l                                       ; $580C: $45
    ld a, [de]                                    ; $580D: $1A
    or $57                                        ; $580E: $F6 $57
    dec d                                         ; $5810: $15
    jr nz, jr_01A_57A2                            ; $5811: $20 $8F

    ld h, [hl]                                    ; $5813: $66
    jr jr_01A_5836                                ; $5814: $18 $20

    dec b                                         ; $5816: $05
    ld h, a                                       ; $5817: $67
    db $10                                        ; $5818: $10
    jr nz, @+$25                                  ; $5819: $20 $23

    ld h, a                                       ; $581B: $67

jr_01A_581C:
    ld [$7F20], sp                                ; $581C: $08 $20 $7F
    ld h, [hl]                                    ; $581F: $66
    jr jr_01A_5842                                ; $5820: $18 $20

    ei                                            ; $5822: $FB
    ld h, [hl]                                    ; $5823: $66

jr_01A_5824:
    db $10                                        ; $5824: $10
    jr nz, jr_01A_5840                            ; $5825: $20 $19

    ld h, a                                       ; $5827: $67
    ld [$4500], sp                                ; $5828: $08 $00 $45
    ld a, [de]                                    ; $582B: $1A
    db $10                                        ; $582C: $10
    ld e, b                                       ; $582D: $58
    dec d                                         ; $582E: $15
    jr nz, jr_01A_57E9                            ; $582F: $20 $B8

    ld a, b                                       ; $5831: $78
    db $10                                        ; $5832: $10

jr_01A_5833:
    jr nz, jr_01A_57FD                            ; $5833: $20 $C8

    ld a, b                                       ; $5835: $78

jr_01A_5836:
    stop                                          ; $5836: $10 $00
    ld b, l                                       ; $5838: $45
    ld a, [de]                                    ; $5839: $1A
    ld l, $58                                     ; $583A: $2E $58
    dec d                                         ; $583C: $15
    jr nz, @-$66                                  ; $583D: $20 $98

    ld a, b                                       ; $583F: $78

jr_01A_5840:
    jr jr_01A_5862                                ; $5840: $18 $20

jr_01A_5842:
    ret c                                         ; $5842: $D8

    ld a, b                                       ; $5843: $78
    db $10                                        ; $5844: $10
    jr nz, jr_01A_5833                            ; $5845: $20 $EC

    ld a, b                                       ; $5847: $78
    ld [$A820], sp                                ; $5848: $08 $20 $A8
    ld a, b                                       ; $584B: $78
    jr jr_01A_586E                                ; $584C: $18 $20

    ld [c], a                                     ; $584E: $E2
    ld a, b                                       ; $584F: $78
    db $10                                        ; $5850: $10
    jr nz, @-$08                                  ; $5851: $20 $F6

    ld a, b                                       ; $5853: $78
    ld [$4500], sp                                ; $5854: $08 $00 $45
    ld a, [de]                                    ; $5857: $1A
    inc a                                         ; $5858: $3C
    ld e, b                                       ; $5859: $58
    dec d                                         ; $585A: $15
    db $10                                        ; $585B: $10
    or d                                          ; $585C: $B2
    ld d, d                                       ; $585D: $52
    ld [$D210], sp                                ; $585E: $08 $10 $D2
    ld d, d                                       ; $5861: $52

jr_01A_5862:
    ld [$A210], sp                                ; $5862: $08 $10 $A2
    ld d, d                                       ; $5865: $52
    ld [$C210], sp                                ; $5866: $08 $10 $C2
    ld d, d                                       ; $5869: $52
    ld [$4500], sp                                ; $586A: $08 $00 $45
    ld a, [de]                                    ; $586D: $1A

jr_01A_586E:
    ld e, d                                       ; $586E: $5A
    ld e, b                                       ; $586F: $58
    dec d                                         ; $5870: $15
    db $10                                        ; $5871: $10
    and d                                         ; $5872: $A2
    ld d, d                                       ; $5873: $52
    ld [$C210], sp                                ; $5874: $08 $10 $C2
    ld d, d                                       ; $5877: $52
    ld [$B210], sp                                ; $5878: $08 $10 $B2
    ld d, d                                       ; $587B: $52
    ld [$D210], sp                                ; $587C: $08 $10 $D2
    ld d, d                                       ; $587F: $52
    ld [$4500], sp                                ; $5880: $08 $00 $45
    ld a, [de]                                    ; $5883: $1A
    ld [hl], b                                    ; $5884: $70
    ld e, b                                       ; $5885: $58
    ld a, h                                       ; $5886: $7C
    inc c                                         ; $5887: $0C
    jr jr_01A_588C                                ; $5888: $18 $02

    ld b, b                                       ; $588A: $40
    ld b, b                                       ; $588B: $40

jr_01A_588C:
    ld a, h                                       ; $588C: $7C
    dec d                                         ; $588D: $15
    inc d                                         ; $588E: $14
    ld [bc], a                                    ; $588F: $02
    ld b, b                                       ; $5890: $40
    ld b, b                                       ; $5891: $40
    ld a, h                                       ; $5892: $7C
    jr nc, jr_01A_58A4                            ; $5893: $30 $0F

    ld [bc], a                                    ; $5895: $02
    ld b, b                                       ; $5896: $40
    ld b, b                                       ; $5897: $40
    ld a, h                                       ; $5898: $7C
    ld [$0424], sp                                ; $5899: $08 $24 $04
    ld b, b                                       ; $589C: $40
    jr nz, jr_01A_58FA                            ; $589D: $20 $5B

    ld a, [de]                                    ; $589F: $1A
    inc hl                                        ; $58A0: $23
    ld d, l                                       ; $58A1: $55
    ld h, b                                       ; $58A2: $60
    ld [bc], a                                    ; $58A3: $02

jr_01A_58A4:
    rlca                                          ; $58A4: $07
    nop                                           ; $58A5: $00
    add c                                         ; $58A6: $81
    ld e, l                                       ; $58A7: $5D
    add hl, bc                                    ; $58A8: $09
    nop                                           ; $58A9: $00
    jr nz, jr_01A_58DD                            ; $58AA: $20 $31

    ld d, c                                       ; $58AC: $51
    rlca                                          ; $58AD: $07
    ld [bc], a                                    ; $58AE: $02
    db $ED                                        ; $58AF: $ED
    ld h, e                                       ; $58B0: $63
    add hl, bc                                    ; $58B1: $09
    ld [bc], a                                    ; $58B2: $02
    jr nz, jr_01A_58BA                            ; $58B3: $20 $05

    ld h, a                                       ; $58B5: $67
    rlca                                          ; $58B6: $07
    inc bc                                        ; $58B7: $03
    db $ED                                        ; $58B8: $ED
    ld h, e                                       ; $58B9: $63

jr_01A_58BA:
    add hl, bc                                    ; $58BA: $09
    inc bc                                        ; $58BB: $03
    jr nz, jr_01A_58C3                            ; $58BC: $20 $05

    ld h, a                                       ; $58BE: $67
    ld b, d                                       ; $58BF: $42
    sub e                                         ; $58C0: $93

jr_01A_58C1:
    ld h, l                                       ; $58C1: $65
    and h                                         ; $58C2: $A4

jr_01A_58C3:
    ld d, b                                       ; $58C3: $50
    ld c, a                                       ; $58C4: $4F
    ld h, [hl]                                    ; $58C5: $66
    ret nz                                        ; $58C6: $C0

    ld e, h                                       ; $58C7: $5C
    ld hl, $0005                                  ; $58C8: $21 $05 $00
    ld l, e                                       ; $58CB: $6B

jr_01A_58CC:
    ld c, d                                       ; $58CC: $4A
    dec h                                         ; $58CD: $25
    ld a, [bc]                                    ; $58CE: $0A
    and l                                         ; $58CF: $A5
    jp nc, $1A00                                  ; $58D0: $D2 $00 $1A

    sub d                                         ; $58D3: $92
    ld e, c                                       ; $58D4: $59
    ld [hl+], a                                   ; $58D5: $22
    dec b                                         ; $58D6: $05
    ld b, b                                       ; $58D7: $40
    dec b                                         ; $58D8: $05
    ld [bc], a                                    ; $58D9: $02
    ld l, e                                       ; $58DA: $6B
    ld c, d                                       ; $58DB: $4A
    dec l                                         ; $58DC: $2D

jr_01A_58DD:
    ld a, [bc]                                    ; $58DD: $0A
    xor l                                         ; $58DE: $AD
    jp nc, $1A32                                  ; $58DF: $D2 $32 $1A

    scf                                           ; $58E2: $37
    ld e, d                                       ; $58E3: $5A
    ld [hl+], a                                   ; $58E4: $22
    dec b                                         ; $58E5: $05
    ld b, b                                       ; $58E6: $40
    dec b                                         ; $58E7: $05
    inc bc                                        ; $58E8: $03
    ld l, e                                       ; $58E9: $6B
    ld c, d                                       ; $58EA: $4A
    inc l                                         ; $58EB: $2C
    ld c, $AC                                     ; $58EC: $0E $AC
    db $D3                                        ; $58EE: $D3
    ld [hl-], a                                   ; $58EF: $32
    ld a, [de]                                    ; $58F0: $1A
    ld l, c                                       ; $58F1: $69
    ld e, d                                       ; $58F2: $5A
    ld [hl+], a                                   ; $58F3: $22
    dec b                                         ; $58F4: $05
    ld b, b                                       ; $58F5: $40
    dec b                                         ; $58F6: $05
    inc b                                         ; $58F7: $04
    ld l, e                                       ; $58F8: $6B
    ld c, d                                       ; $58F9: $4A

jr_01A_58FA:
    ld [hl-], a                                   ; $58FA: $32
    ld d, $B2                                     ; $58FB: $16 $B2
    push de                                       ; $58FD: $D5
    ld [hl-], a                                   ; $58FE: $32
    ld a, [de]                                    ; $58FF: $1A
    xor h                                         ; $5900: $AC
    ld e, d                                       ; $5901: $5A
    ld [hl+], a                                   ; $5902: $22
    dec b                                         ; $5903: $05
    ld b, b                                       ; $5904: $40
    dec b                                         ; $5905: $05
    dec b                                         ; $5906: $05
    ld l, e                                       ; $5907: $6B
    ld c, d                                       ; $5908: $4A
    add hl, hl                                    ; $5909: $29
    inc b                                         ; $590A: $04
    add hl, hl                                    ; $590B: $29
    pop de                                        ; $590C: $D1
    ld [hl-], a                                   ; $590D: $32
    ld a, [de]                                    ; $590E: $1A
    ldh [$5A], a                                  ; $590F: $E0 $5A
    ld [hl+], a                                   ; $5911: $22
    dec b                                         ; $5912: $05
    ld b, b                                       ; $5913: $40
    dec b                                         ; $5914: $05
    ld b, $6B                                     ; $5915: $06 $6B
    ld c, d                                       ; $5917: $4A
    scf                                           ; $5918: $37
    dec c                                         ; $5919: $0D
    ld [hl], a                                    ; $591A: $77
    db $D3                                        ; $591B: $D3
    ld [hl-], a                                   ; $591C: $32
    ld a, [de]                                    ; $591D: $1A
    push hl                                       ; $591E: $E5
    ld e, d                                       ; $591F: $5A
    ld [hl+], a                                   ; $5920: $22
    dec b                                         ; $5921: $05
    ld b, b                                       ; $5922: $40
    dec bc                                        ; $5923: $0B
    nop                                           ; $5924: $00
    dec bc                                        ; $5925: $0B
    ld [bc], a                                    ; $5926: $02
    dec bc                                        ; $5927: $0B
    inc bc                                        ; $5928: $03
    dec bc                                        ; $5929: $0B
    inc b                                         ; $592A: $04
    dec bc                                        ; $592B: $0B
    dec b                                         ; $592C: $05
    dec bc                                        ; $592D: $0B
    ld b, $6B                                     ; $592E: $06 $6B
    ld [hl-], a                                   ; $5930: $32
    dec bc                                        ; $5931: $0B
    and b                                         ; $5932: $A0
    ld [hl], h                                    ; $5933: $74
    nop                                           ; $5934: $00
    add b                                         ; $5935: $80
    nop                                           ; $5936: $00
    ld l, e                                       ; $5937: $6B
    jr z, jr_01A_5947                             ; $5938: $28 $0D

    ld h, b                                       ; $593A: $60
    ld b, e                                       ; $593B: $43
    jr nz, jr_01A_58C1                            ; $593C: $20 $83

    nop                                           ; $593E: $00
    ld l, e                                       ; $593F: $6B
    ld [hl], $0D                                  ; $5940: $36 $0D
    nop                                           ; $5942: $00
    ld b, b                                       ; $5943: $40
    jr nz, jr_01A_58CC                            ; $5944: $20 $86

    nop                                           ; $5946: $00

jr_01A_5947:
    ld a, [hl]                                    ; $5947: $7E
    ld [hl], c                                    ; $5948: $71
    pop de                                        ; $5949: $D1
    ld bc, $6B01                                  ; $594A: $01 $01 $6B
    db $D3                                        ; $594D: $D3
    dec c                                         ; $594E: $0D
    dec hl                                        ; $594F: $2B
    ld a, [hl]                                    ; $5950: $7E
    ld [hl], c                                    ; $5951: $71
    pop de                                        ; $5952: $D1
    ld bc, $B701                                  ; $5953: $01 $01 $B7
    db $D3                                        ; $5956: $D3
    ld c, $37                                     ; $5957: $0E $37
    ld a, [hl]                                    ; $5959: $7E
    db $ED                                        ; $595A: $ED
    call nc, $0101                                ; $595B: $D4 $01 $01
    or a                                          ; $595E: $B7
    push de                                       ; $595F: $D5
    ld d, $37                                     ; $5960: $16 $37
    ld a, [hl]                                    ; $5962: $7E
    xor a                                         ; $5963: $AF
    jp nc, $0101                                  ; $5964: $D2 $01 $01

    db $F4                                        ; $5967: $F4
    db $D3                                        ; $5968: $D3
    rrca                                          ; $5969: $0F
    inc [hl]                                      ; $596A: $34
    ld a, [hl]                                    ; $596B: $7E
    xor a                                         ; $596C: $AF
    jp nc, $0101                                  ; $596D: $D2 $01 $01

    ld l, h                                       ; $5970: $6C
    db $D3                                        ; $5971: $D3
    dec c                                         ; $5972: $0D
    inc l                                         ; $5973: $2C
    ld a, [hl]                                    ; $5974: $7E
    xor a                                         ; $5975: $AF
    jp nc, $0101                                  ; $5976: $D2 $01 $01

    xor e                                         ; $5979: $AB
    db $D3                                        ; $597A: $D3
    ld c, $2B                                     ; $597B: $0E $2B
    add d                                         ; $597D: $82
    sub h                                         ; $597E: $94
    ld h, b                                       ; $597F: $60
    ld a, [bc]                                    ; $5980: $0A
    ld b, e                                       ; $5981: $43
    ld a, [bc]                                    ; $5982: $0A
    nop                                           ; $5983: $00
    and l                                         ; $5984: $A5
    and c                                         ; $5985: $A1
    ld [bc], a                                    ; $5986: $02
    ld a, [de]                                    ; $5987: $1A
    adc [hl]                                      ; $5988: $8E
    ld e, c                                       ; $5989: $59
    ld b, l                                       ; $598A: $45
    dec hl                                        ; $598B: $2B
    xor [hl]                                      ; $598C: $AE
    ld e, a                                       ; $598D: $5F
    ld b, l                                       ; $598E: $45
    dec e                                         ; $598F: $1D
    sbc $51                                       ; $5990: $DE $51
    ld d, $0F                                     ; $5992: $16 $0F
    ld [hl], h                                    ; $5994: $74
    halt                                          ; $5995: $76
    ld h, b                                       ; $5996: $60
    ld bc, $0F00                                  ; $5997: $01 $00 $0F
    db $ED                                        ; $599A: $ED
    halt                                          ; $599B: $76
    nop                                           ; $599C: $00
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    nop                                           ; $599F: $00
    ld d, [hl]                                    ; $59A0: $56
    ld bc, $0F16                                  ; $59A1: $01 $16 $0F
    db $ED                                        ; $59A4: $ED
    halt                                          ; $59A5: $76
    ld h, b                                       ; $59A6: $60
    nop                                           ; $59A7: $00
    nop                                           ; $59A8: $00
    rrca                                          ; $59A9: $0F
    call nz, $2076                                ; $59AA: $C4 $76 $20
    nop                                           ; $59AD: $00
    rst $38                                       ; $59AE: $FF
    rrca                                          ; $59AF: $0F
    db $E3                                        ; $59B0: $E3
    halt                                          ; $59B1: $76
    ld [rRAMG], sp                                ; $59B2: $08 $00 $00
    rrca                                          ; $59B5: $0F
    adc $76                                       ; $59B6: $CE $76
    ld [rRAMG], sp                                ; $59B8: $08 $00 $00
    rrca                                          ; $59BB: $0F
    dec d                                         ; $59BC: $15
    ld [hl], a                                    ; $59BD: $77
    ld [rRAMG], sp                                ; $59BE: $08 $00 $00
    rrca                                          ; $59C1: $0F
    ld d, h                                       ; $59C2: $54
    halt                                          ; $59C3: $76
    jr nz, jr_01A_59C6                            ; $59C4: $20 $00

jr_01A_59C6:
    ld [bc], a                                    ; $59C6: $02
    rrca                                          ; $59C7: $0F
    ld h, h                                       ; $59C8: $64
    halt                                          ; $59C9: $76
    stop                                          ; $59CA: $10 $00
    nop                                           ; $59CC: $00
    rrca                                          ; $59CD: $0F
    ld d, h                                       ; $59CE: $54
    halt                                          ; $59CF: $76
    jr nz, jr_01A_59D2                            ; $59D0: $20 $00

jr_01A_59D2:
    ld bc, $ED0F                                  ; $59D2: $01 $0F $ED
    halt                                          ; $59D5: $76
    nop                                           ; $59D6: $00
    nop                                           ; $59D7: $00
    nop                                           ; $59D8: $00
    nop                                           ; $59D9: $00
    ld d, [hl]                                    ; $59DA: $56
    ld [bc], a                                    ; $59DB: $02
    ld d, $0F                                     ; $59DC: $16 $0F
    db $ED                                        ; $59DE: $ED
    halt                                          ; $59DF: $76
    jr nz, jr_01A_59E2                            ; $59E0: $20 $00

jr_01A_59E2:
    nop                                           ; $59E2: $00
    rrca                                          ; $59E3: $0F
    ld d, h                                       ; $59E4: $54
    halt                                          ; $59E5: $76
    add b                                         ; $59E6: $80
    nop                                           ; $59E7: $00
    ld bc, $740F                                  ; $59E8: $01 $0F $74
    halt                                          ; $59EB: $76
    ld b, b                                       ; $59EC: $40
    ld bc, $0000                                  ; $59ED: $01 $00 $00
    ld d, [hl]                                    ; $59F0: $56
    inc bc                                        ; $59F1: $03
    ld d, $0F                                     ; $59F2: $16 $0F
    ld [hl], h                                    ; $59F4: $74
    halt                                          ; $59F5: $76
    jr nz, jr_01A_59F9                            ; $59F6: $20 $01

    nop                                           ; $59F8: $00

jr_01A_59F9:
    rrca                                          ; $59F9: $0F
    db $ED                                        ; $59FA: $ED
    halt                                          ; $59FB: $76
    jr nz, jr_01A_59FE                            ; $59FC: $20 $00

jr_01A_59FE:
    nop                                           ; $59FE: $00
    rrca                                          ; $59FF: $0F
    dec d                                         ; $5A00: $15
    ld [hl], a                                    ; $5A01: $77
    jr nz, jr_01A_5A04                            ; $5A02: $20 $00

jr_01A_5A04:
    nop                                           ; $5A04: $00
    rrca                                          ; $5A05: $0F
    db $ED                                        ; $5A06: $ED
    halt                                          ; $5A07: $76
    jr nz, jr_01A_5A0A                            ; $5A08: $20 $00

jr_01A_5A0A:
    nop                                           ; $5A0A: $00
    rrca                                          ; $5A0B: $0F
    ld b, h                                       ; $5A0C: $44
    halt                                          ; $5A0D: $76
    add b                                         ; $5A0E: $80
    nop                                           ; $5A0F: $00
    rst $38                                       ; $5A10: $FF
    rrca                                          ; $5A11: $0F
    ld [hl], h                                    ; $5A12: $74
    halt                                          ; $5A13: $76
    ld b, b                                       ; $5A14: $40
    ld bc, $0F00                                  ; $5A15: $01 $00 $0F
    db $ED                                        ; $5A18: $ED
    halt                                          ; $5A19: $76
    jr nz, jr_01A_5A1C                            ; $5A1A: $20 $00

jr_01A_5A1C:
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    ld d, [hl]                                    ; $5A1E: $56
    dec b                                         ; $5A1F: $05
    ld d, $0F                                     ; $5A20: $16 $0F
    db $ED                                        ; $5A22: $ED
    halt                                          ; $5A23: $76
    jr nz, jr_01A_5A26                            ; $5A24: $20 $00

jr_01A_5A26:
    nop                                           ; $5A26: $00
    rrca                                          ; $5A27: $0F
    ld [hl], h                                    ; $5A28: $74
    halt                                          ; $5A29: $76
    jr nz, jr_01A_5A2D                            ; $5A2A: $20 $01

    nop                                           ; $5A2C: $00

jr_01A_5A2D:
    rrca                                          ; $5A2D: $0F
    db $ED                                        ; $5A2E: $ED
    halt                                          ; $5A2F: $76
    ldh a, [rP1]                                  ; $5A30: $F0 $00
    nop                                           ; $5A32: $00
    nop                                           ; $5A33: $00
    ld d, [hl]                                    ; $5A34: $56
    ld a, [bc]                                    ; $5A35: $0A
    ld b, d                                       ; $5A36: $42
    inc d                                         ; $5A37: $14
    jr nz, jr_01A_5A5D                            ; $5A38: $20 $23

    ld h, a                                       ; $5A3A: $67
    ld h, b                                       ; $5A3B: $60
    ld bc, $367E                                  ; $5A3C: $01 $7E $36
    jp nc, $0101                                  ; $5A3F: $D2 $01 $01

    xor [hl]                                      ; $5A42: $AE
    jp nc, $2E0A                                  ; $5A43: $D2 $0A $2E

    dec d                                         ; $5A46: $15
    jr nz, jr_01A_5A6C                            ; $5A47: $20 $23

    ld h, a                                       ; $5A49: $67
    db $10                                        ; $5A4A: $10
    jr nz, jr_01A_5A66                            ; $5A4B: $20 $19

    ld h, a                                       ; $5A4D: $67
    ld b, b                                       ; $5A4E: $40
    jr nz, @-$03                                  ; $5A4F: $20 $FB

    ld h, [hl]                                    ; $5A51: $66
    db $10                                        ; $5A52: $10
    jr nz, @-$13                                  ; $5A53: $20 $EB

    ld h, l                                       ; $5A55: $65
    ld h, b                                       ; $5A56: $60
    jr nz, @-$03                                  ; $5A57: $20 $FB

    ld h, [hl]                                    ; $5A59: $66
    db $10                                        ; $5A5A: $10
    jr nz, jr_01A_5AB2                            ; $5A5B: $20 $55

jr_01A_5A5D:
    ld h, [hl]                                    ; $5A5D: $66
    jr nz, @+$22                                  ; $5A5E: $20 $20

    dec l                                         ; $5A60: $2D
    ld h, a                                       ; $5A61: $67
    db $10                                        ; $5A62: $10
    jr nz, jr_01A_5A7E                            ; $5A63: $20 $19

    ld h, a                                       ; $5A65: $67

jr_01A_5A66:
    nop                                           ; $5A66: $00
    nop                                           ; $5A67: $00
    ld b, d                                       ; $5A68: $42
    inc d                                         ; $5A69: $14
    jr nz, jr_01A_5A99                            ; $5A6A: $20 $2D

jr_01A_5A6C:
    ld h, a                                       ; $5A6C: $67
    ld h, b                                       ; $5A6D: $60
    ld [bc], a                                    ; $5A6E: $02
    dec d                                         ; $5A6F: $15
    jr nz, jr_01A_5A8B                            ; $5A70: $20 $19

    ld h, a                                       ; $5A72: $67
    db $10                                        ; $5A73: $10
    jr nz, @+$2F                                  ; $5A74: $20 $2D

    ld h, a                                       ; $5A76: $67
    ld [$1920], sp                                ; $5A77: $08 $20 $19
    ld h, a                                       ; $5A7A: $67
    ld [$2D20], sp                                ; $5A7B: $08 $20 $2D

jr_01A_5A7E:
    ld h, a                                       ; $5A7E: $67
    ld [$1920], sp                                ; $5A7F: $08 $20 $19
    ld h, a                                       ; $5A82: $67
    jr nz, jr_01A_5A85                            ; $5A83: $20 $00

jr_01A_5A85:
    ld a, [hl]                                    ; $5A85: $7E
    ld [hl], $D2                                  ; $5A86: $36 $D2
    ld bc, $AB01                                  ; $5A88: $01 $01 $AB

jr_01A_5A8B:
    db $D3                                        ; $5A8B: $D3
    ld c, $2B                                     ; $5A8C: $0E $2B
    dec d                                         ; $5A8E: $15
    jr nz, jr_01A_5AAA                            ; $5A8F: $20 $19

    ld h, a                                       ; $5A91: $67
    jr nz, @+$22                                  ; $5A92: $20 $20

    ei                                            ; $5A94: $FB
    ld h, [hl]                                    ; $5A95: $66
    ld b, b                                       ; $5A96: $40
    nop                                           ; $5A97: $00
    ld a, [hl]                                    ; $5A98: $7E

jr_01A_5A99:
    ld [hl], $D2                                  ; $5A99: $36 $D2
    ld bc, $6C01                                  ; $5A9B: $01 $01 $6C
    db $D3                                        ; $5A9E: $D3
    dec c                                         ; $5A9F: $0D
    inc l                                         ; $5AA0: $2C
    dec d                                         ; $5AA1: $15
    jr nz, jr_01A_5ACF                            ; $5AA2: $20 $2B

    ld h, l                                       ; $5AA4: $65
    db $10                                        ; $5AA5: $10
    jr nz, jr_01A_5AC1                            ; $5AA6: $20 $19

    ld h, a                                       ; $5AA8: $67
    nop                                           ; $5AA9: $00

jr_01A_5AAA:
    nop                                           ; $5AAA: $00
    ld b, d                                       ; $5AAB: $42
    inc d                                         ; $5AAC: $14
    jr nz, jr_01A_5AE6                            ; $5AAD: $20 $37

    ld h, a                                       ; $5AAF: $67
    ld h, b                                       ; $5AB0: $60
    inc bc                                        ; $5AB1: $03

jr_01A_5AB2:
    dec d                                         ; $5AB2: $15
    jr nz, jr_01A_5AEC                            ; $5AB3: $20 $37

    ld h, a                                       ; $5AB5: $67
    jr nz, jr_01A_5AB8                            ; $5AB6: $20 $00

jr_01A_5AB8:
    ld a, [hl]                                    ; $5AB8: $7E
    ld [$01D5], a                                 ; $5AB9: $EA $D5 $01
    ld bc, $D5F3                                  ; $5ABC: $01 $F3 $D5
    rla                                           ; $5ABF: $17
    inc sp                                        ; $5AC0: $33

jr_01A_5AC1:
    dec d                                         ; $5AC1: $15
    jr nz, jr_01A_5AC9                            ; $5AC2: $20 $05

    ld h, a                                       ; $5AC4: $67
    inc b                                         ; $5AC5: $04
    jr nz, @+$2F                                  ; $5AC6: $20 $2D

    ld h, a                                       ; $5AC8: $67

jr_01A_5AC9:
    inc b                                         ; $5AC9: $04
    jr nz, jr_01A_5AE5                            ; $5ACA: $20 $19

    ld h, a                                       ; $5ACC: $67
    jr nz, jr_01A_5AEF                            ; $5ACD: $20 $20

jr_01A_5ACF:
    dec b                                         ; $5ACF: $05
    ld h, a                                       ; $5AD0: $67
    ld [$3B20], sp                                ; $5AD1: $08 $20 $3B
    ld h, [hl]                                    ; $5AD4: $66
    jr nz, jr_01A_5AF7                            ; $5AD5: $20 $20

    ei                                            ; $5AD7: $FB
    ld h, l                                       ; $5AD8: $65
    ld d, b                                       ; $5AD9: $50
    jr nz, jr_01A_5B17                            ; $5ADA: $20 $3B

    ld h, [hl]                                    ; $5ADC: $66
    nop                                           ; $5ADD: $00
    nop                                           ; $5ADE: $00
    ld b, d                                       ; $5ADF: $42
    inc d                                         ; $5AE0: $14
    jr nz, @+$1B                                  ; $5AE1: $20 $19

    ld h, a                                       ; $5AE3: $67
    ld b, d                                       ; $5AE4: $42

jr_01A_5AE5:
    inc d                                         ; $5AE5: $14

jr_01A_5AE6:
    jr nz, jr_01A_5B1F                            ; $5AE6: $20 $37

    ld h, a                                       ; $5AE8: $67
    ld h, b                                       ; $5AE9: $60
    dec b                                         ; $5AEA: $05
    dec d                                         ; $5AEB: $15

jr_01A_5AEC:
    jr nz, jr_01A_5B25                            ; $5AEC: $20 $37

    ld h, a                                       ; $5AEE: $67

jr_01A_5AEF:
    add b                                         ; $5AEF: $80
    nop                                           ; $5AF0: $00
    ld a, [hl]                                    ; $5AF1: $7E
    ld [hl], $D2                                  ; $5AF2: $36 $D2
    ld bc, $B701                                  ; $5AF4: $01 $01 $B7

jr_01A_5AF7:
    db $D3                                        ; $5AF7: $D3
    ld c, $37                                     ; $5AF8: $0E $37
    dec d                                         ; $5AFA: $15
    jr nz, jr_01A_5B7C                            ; $5AFB: $20 $7F

    ld h, [hl]                                    ; $5AFD: $66
    inc b                                         ; $5AFE: $04
    jr nz, jr_01A_5B06                            ; $5AFF: $20 $05

    ld h, a                                       ; $5B01: $67
    ld b, b                                       ; $5B02: $40
    jr nz, jr_01A_5B32                            ; $5B03: $20 $2D

    ld h, a                                       ; $5B05: $67

jr_01A_5B06:
    jr nz, @+$22                                  ; $5B06: $20 $20

    dec b                                         ; $5B08: $05
    ld h, a                                       ; $5B09: $67
    jr nz, jr_01A_5B2C                            ; $5B0A: $20 $20

    dec l                                         ; $5B0C: $2D
    ld h, a                                       ; $5B0D: $67
    nop                                           ; $5B0E: $00
    nop                                           ; $5B0F: $00
    ld b, d                                       ; $5B10: $42
    ld bc, $1616                                  ; $5B11: $01 $16 $16
    ld b, l                                       ; $5B14: $45
    cpl                                           ; $5B15: $2F
    scf                                           ; $5B16: $37

jr_01A_5B17:
    ld c, h                                       ; $5B17: $4C
    ld bc, $130D                                  ; $5B18: $01 $0D $13
    ld b, l                                       ; $5B1B: $45
    ld a, [de]                                    ; $5B1C: $1A
    sbc l                                         ; $5B1D: $9D
    ld c, l                                       ; $5B1E: $4D

jr_01A_5B1F:
    ld bc, $1515                                  ; $5B1F: $01 $15 $15
    ld b, l                                       ; $5B22: $45
    cpl                                           ; $5B23: $2F
    scf                                           ; $5B24: $37

jr_01A_5B25:
    ld c, h                                       ; $5B25: $4C
    ld bc, $1416                                  ; $5B26: $01 $16 $14
    ld b, l                                       ; $5B29: $45
    cpl                                           ; $5B2A: $2F
    scf                                           ; $5B2B: $37

jr_01A_5B2C:
    ld c, h                                       ; $5B2C: $4C
    ld bc, $1517                                  ; $5B2D: $01 $17 $15
    ld b, l                                       ; $5B30: $45
    cpl                                           ; $5B31: $2F

jr_01A_5B32:
    scf                                           ; $5B32: $37
    ld c, h                                       ; $5B33: $4C
    xor h                                         ; $5B34: $AC
    or d                                          ; $5B35: $B2
    and d                                         ; $5B36: $A2
    ld bc, $6593                                  ; $5B37: $01 $93 $65
    or e                                          ; $5B3A: $B3
    ld d, b                                       ; $5B3B: $50
    ld c, a                                       ; $5B3C: $4F
    ld h, h                                       ; $5B3D: $64
    ld c, b                                       ; $5B3E: $48
    ld d, [hl]                                    ; $5B3F: $56
    ld h, [hl]                                    ; $5B40: $66
    ret nz                                        ; $5B41: $C0

    ld e, h                                       ; $5B42: $5C
    ld hl, $000B                                  ; $5B43: $21 $0B $00
    nop                                           ; $5B46: $00
    add d                                         ; $5B47: $82
    rra                                           ; $5B48: $1F
    ld de, $4294                                  ; $5B49: $11 $94 $42
    ld bc, $0E19                                  ; $5B4C: $01 $19 $0E
    ld b, l                                       ; $5B4F: $45
    cpl                                           ; $5B50: $2F

Call_01A_5B51:
    scf                                           ; $5B51: $37
    ld c, h                                       ; $5B52: $4C
    ld bc, $130C                                  ; $5B53: $01 $0C $13
    ld b, l                                       ; $5B56: $45
    ld a, [de]                                    ; $5B57: $1A
    or l                                          ; $5B58: $B5
    ld d, h                                       ; $5B59: $54
    ld bc, $170F                                  ; $5B5A: $01 $0F $17
    ld b, l                                       ; $5B5D: $45
    ld a, [de]                                    ; $5B5E: $1A
    xor a                                         ; $5B5F: $AF
    ld c, a                                       ; $5B60: $4F
    ld bc, $0D18                                  ; $5B61: $01 $18 $0D
    ld b, l                                       ; $5B64: $45
    cpl                                           ; $5B65: $2F
    scf                                           ; $5B66: $37
    ld c, h                                       ; $5B67: $4C
    ld bc, $0C1A                                  ; $5B68: $01 $1A $0C
    ld b, l                                       ; $5B6B: $45
    cpl                                           ; $5B6C: $2F
    scf                                           ; $5B6D: $37
    ld c, h                                       ; $5B6E: $4C
    ld bc, $0D1B                                  ; $5B6F: $01 $1B $0D
    ld b, l                                       ; $5B72: $45
    cpl                                           ; $5B73: $2F
    scf                                           ; $5B74: $37
    ld c, h                                       ; $5B75: $4C
    xor h                                         ; $5B76: $AC
    or d                                          ; $5B77: $B2
    and d                                         ; $5B78: $A2
    ld bc, $6593                                  ; $5B79: $01 $93 $65

jr_01A_5B7C:
    jp nz, $4F50                                  ; $5B7C: $C2 $50 $4F

    ld h, h                                       ; $5B7F: $64
    ld e, l                                       ; $5B80: $5D
    ld d, [hl]                                    ; $5B81: $56
    ld h, [hl]                                    ; $5B82: $66
    ret nz                                        ; $5B83: $C0

    ld e, h                                       ; $5B84: $5C
    ld hl, $000B                                  ; $5B85: $21 $0B $00
    nop                                           ; $5B88: $00
    add d                                         ; $5B89: $82
    rra                                           ; $5B8A: $1F
    ld de, $4294                                  ; $5B8B: $11 $94 $42
    ld bc, $1309                                  ; $5B8E: $01 $09 $13
    ld b, l                                       ; $5B91: $45
    ld a, [de]                                    ; $5B92: $1A
    ld sp, $0154                                  ; $5B93: $31 $54 $01
    rla                                           ; $5B96: $17
    rrca                                          ; $5B97: $0F
    ld b, l                                       ; $5B98: $45
    cpl                                           ; $5B99: $2F
    scf                                           ; $5B9A: $37
    ld c, h                                       ; $5B9B: $4C
    ld bc, $0E16                                  ; $5B9C: $01 $16 $0E
    ld b, l                                       ; $5B9F: $45
    cpl                                           ; $5BA0: $2F
    scf                                           ; $5BA1: $37
    ld c, h                                       ; $5BA2: $4C
    ld bc, $0D17                                  ; $5BA3: $01 $17 $0D
    ld b, l                                       ; $5BA6: $45
    cpl                                           ; $5BA7: $2F
    scf                                           ; $5BA8: $37
    ld c, h                                       ; $5BA9: $4C
    ld bc, $0E18                                  ; $5BAA: $01 $18 $0E
    ld b, l                                       ; $5BAD: $45
    cpl                                           ; $5BAE: $2F
    scf                                           ; $5BAF: $37
    ld c, h                                       ; $5BB0: $4C
    xor h                                         ; $5BB1: $AC
    or d                                          ; $5BB2: $B2
    and d                                         ; $5BB3: $A2
    ld bc, $6593                                  ; $5BB4: $01 $93 $65
    pop de                                        ; $5BB7: $D1
    ld d, b                                       ; $5BB8: $50
    ld c, a                                       ; $5BB9: $4F
    ld h, h                                       ; $5BBA: $64
    halt                                          ; $5BBB: $76
    ld d, [hl]                                    ; $5BBC: $56
    ld h, [hl]                                    ; $5BBD: $66
    ret nz                                        ; $5BBE: $C0

    ld e, h                                       ; $5BBF: $5C
    ld hl, $000B                                  ; $5BC0: $21 $0B $00
    nop                                           ; $5BC3: $00
    add d                                         ; $5BC4: $82
    rra                                           ; $5BC5: $1F
    ld de, $4294                                  ; $5BC6: $11 $94 $42
    ld [bc], a                                    ; $5BC9: $02
    nop                                           ; $5BCA: $00
    rla                                           ; $5BCB: $17
    ld de, $450D                                  ; $5BCC: $11 $0D $45
    ld a, [de]                                    ; $5BCF: $1A
    ld [c], a                                     ; $5BD0: $E2
    ld h, b                                       ; $5BD1: $60
    ld [bc], a                                    ; $5BD2: $02
    ld [$000F], sp                                ; $5BD3: $08 $0F $00
    rla                                           ; $5BD6: $17
    ld b, l                                       ; $5BD7: $45
    ld a, [de]                                    ; $5BD8: $1A
    inc h                                         ; $5BD9: $24
    ld h, e                                       ; $5BDA: $63
    ld [bc], a                                    ; $5BDB: $02
    ld [$1B07], sp                                ; $5BDC: $08 $07 $1B
    nop                                           ; $5BDF: $00
    ld b, l                                       ; $5BE0: $45
    ld a, [de]                                    ; $5BE1: $1A
    ld h, b                                       ; $5BE2: $60
    ld l, b                                       ; $5BE3: $68
    sbc a                                         ; $5BE4: $9F
    ld c, [hl]                                    ; $5BE5: $4E
    ld l, a                                       ; $5BE6: $6F
    ld [hl], h                                    ; $5BE7: $74
    ld l, b                                       ; $5BE8: $68
    ld l, c                                       ; $5BE9: $69
    ld l, [hl]                                    ; $5BEA: $6E
    ld h, a                                       ; $5BEB: $67
    jr nz, jr_01A_5C61                            ; $5BEC: $20 $73

    ld h, l                                       ; $5BEE: $65
    ld h, l                                       ; $5BEF: $65
    ld l, l                                       ; $5BF0: $6D
    ld [hl], e                                    ; $5BF1: $73
    rst $38                                       ; $5BF2: $FF
    ld [hl], h                                    ; $5BF3: $74
    ld l, a                                       ; $5BF4: $6F
    jr nz, jr_01A_5C5F                            ; $5BF5: $20 $68

    ld h, c                                       ; $5BF7: $61
    halt                                          ; $5BF8: $76
    ld h, l                                       ; $5BF9: $65
    cp $68                                        ; $5BFA: $FE $68
    ld h, c                                       ; $5BFC: $61
    ld [hl], b                                    ; $5BFD: $70
    ld [hl], b                                    ; $5BFE: $70
    ld h, l                                       ; $5BFF: $65
    ld l, [hl]                                    ; $5C00: $6E
    ld h, l                                       ; $5C01: $65
    ld h, h                                       ; $5C02: $64
    ld l, $2E                                     ; $5C03: $2E $2E
    ld l, $FE                                     ; $5C05: $2E $FE
    db $FD                                        ; $5C07: $FD
    sbc d                                         ; $5C08: $9A
    ld b, d                                       ; $5C09: $42
    sbc e                                         ; $5C0A: $9B
    ld a, b                                       ; $5C0B: $78
    ld [hl], b                                    ; $5C0C: $70
    sbc a                                         ; $5C0D: $9F
    ld c, b                                       ; $5C0E: $48
    ld l, l                                       ; $5C0F: $6D
    ld l, l                                       ; $5C10: $6D
    ld l, l                                       ; $5C11: $6D
    ld l, $2E                                     ; $5C12: $2E $2E
    ld l, $FE                                     ; $5C14: $2E $FE
    ld d, h                                       ; $5C16: $54
    ld l, b                                       ; $5C17: $68
    ld h, l                                       ; $5C18: $65
    ld [hl], d                                    ; $5C19: $72
    ld h, l                                       ; $5C1A: $65
    daa                                           ; $5C1B: $27
    ld [hl], e                                    ; $5C1C: $73
    jr nz, @+$63                                  ; $5C1D: $20 $61

    jr nz, jr_01A_5C83                            ; $5C1F: $20 $62

    ld l, a                                       ; $5C21: $6F
    ld l, [hl]                                    ; $5C22: $6E
    ld h, l                                       ; $5C23: $65
    rst $38                                       ; $5C24: $FF
    ld [hl], e                                    ; $5C25: $73
    ld [hl], h                                    ; $5C26: $74
    ld [hl], l                                    ; $5C27: $75
    ld h, e                                       ; $5C28: $63
    ld l, e                                       ; $5C29: $6B
    jr nz, @+$6B                                  ; $5C2A: $20 $69

    ld l, [hl]                                    ; $5C2C: $6E
    jr nz, @+$76                                  ; $5C2D: $20 $74

    ld l, b                                       ; $5C2F: $68
    ld h, l                                       ; $5C30: $65
    cp $62                                        ; $5C31: $FE $62
    ld h, c                                       ; $5C33: $61
    ld [hl], e                                    ; $5C34: $73

jr_01A_5C35:
    ld h, l                                       ; $5C35: $65
    jr nz, jr_01A_5CA7                            ; $5C36: $20 $6F

    ld h, [hl]                                    ; $5C38: $66
    jr nz, jr_01A_5CAF                            ; $5C39: $20 $74

    ld l, b                                       ; $5C3B: $68
    ld l, c                                       ; $5C3C: $69
    ld [hl], e                                    ; $5C3D: $73
    rst $38                                       ; $5C3E: $FF
    ld h, a                                       ; $5C3F: $67
    ld [hl], d                                    ; $5C40: $72
    ld h, c                                       ; $5C41: $61
    ld [hl], h                                    ; $5C42: $74
    ld h, l                                       ; $5C43: $65
    ld l, $2E                                     ; $5C44: $2E $2E
    ld l, $FE                                     ; $5C46: $2E $FE
    ld c, c                                       ; $5C48: $49
    daa                                           ; $5C49: $27
    ld l, h                                       ; $5C4A: $6C
    ld l, h                                       ; $5C4B: $6C
    jr nz, jr_01A_5CBE                            ; $5C4C: $20 $70

    ld [hl], l                                    ; $5C4E: $75
    ld l, h                                       ; $5C4F: $6C
    ld l, h                                       ; $5C50: $6C
    jr nz, jr_01A_5CBC                            ; $5C51: $20 $69

    ld [hl], h                                    ; $5C53: $74
    rst $38                                       ; $5C54: $FF
    ld l, a                                       ; $5C55: $6F
    ld [hl], l                                    ; $5C56: $75
    ld [hl], h                                    ; $5C57: $74
    ld l, $FE                                     ; $5C58: $2E $FE
    db $FD                                        ; $5C5A: $FD
    sbc d                                         ; $5C5B: $9A
    ld b, b                                       ; $5C5C: $40
    jr jr_01A_5C6B                                ; $5C5D: $18 $0C

jr_01A_5C5F:
    ld [bc], a                                    ; $5C5F: $02
    sbc a                                         ; $5C60: $9F

jr_01A_5C61:
    ld b, e                                       ; $5C61: $43
    ld l, h                                       ; $5C62: $6C
    ld l, c                                       ; $5C63: $69
    ld h, e                                       ; $5C64: $63
    ld l, e                                       ; $5C65: $6B
    ld hl, $FDFE                                  ; $5C66: $21 $FE $FD
    sbc e                                         ; $5C69: $9B
    ld a, b                                       ; $5C6A: $78

jr_01A_5C6B:
    ld [hl], b                                    ; $5C6B: $70
    sbc a                                         ; $5C6C: $9F
    ld d, a                                       ; $5C6D: $57
    ld l, b                                       ; $5C6E: $68
    ld h, c                                       ; $5C6F: $61
    ld [hl], h                                    ; $5C70: $74
    jr nz, jr_01A_5CEA                            ; $5C71: $20 $77

    ld h, c                                       ; $5C73: $61
    ld [hl], e                                    ; $5C74: $73
    jr nz, @+$76                                  ; $5C75: $20 $74

    ld l, b                                       ; $5C77: $68
    ld h, c                                       ; $5C78: $61
    ld [hl], h                                    ; $5C79: $74
    ccf                                           ; $5C7A: $3F
    cp $FD                                        ; $5C7B: $FE $FD
    sbc d                                         ; $5C7D: $9A
    xor a                                         ; $5C7E: $AF
    ld h, $A1                                     ; $5C7F: $26 $A1
    inc b                                         ; $5C81: $04
    rlca                                          ; $5C82: $07

jr_01A_5C83:
    nop                                           ; $5C83: $00
    add c                                         ; $5C84: $81
    ld e, l                                       ; $5C85: $5D
    add hl, bc                                    ; $5C86: $09
    nop                                           ; $5C87: $00
    jr nz, jr_01A_5C35                            ; $5C88: $20 $AB

    ld d, b                                       ; $5C8A: $50
    ld b, d                                       ; $5C8B: $42
    sbc e                                         ; $5C8C: $9B
    ld a, b                                       ; $5C8D: $78
    ld [hl], b                                    ; $5C8E: $70
    sbc a                                         ; $5C8F: $9F
    ld d, a                                       ; $5C90: $57
    ld l, b                                       ; $5C91: $68
    ld h, c                                       ; $5C92: $61
    ld [hl], h                                    ; $5C93: $74
    jr nz, jr_01A_5CFF                            ; $5C94: $20 $69

    ld [hl], e                                    ; $5C96: $73
    jr nz, jr_01A_5D0D                            ; $5C97: $20 $74

    ld l, b                                       ; $5C99: $68
    ld l, c                                       ; $5C9A: $69
    ld [hl], e                                    ; $5C9B: $73
    ccf                                           ; $5C9C: $3F
    cp $53                                        ; $5C9D: $FE $53
    ld l, a                                       ; $5C9F: $6F
    ld l, l                                       ; $5CA0: $6D
    ld h, l                                       ; $5CA1: $65
    jr nz, jr_01A_5D0F                            ; $5CA2: $20 $6B

    ld l, c                                       ; $5CA4: $69
    ld l, [hl]                                    ; $5CA5: $6E
    ld h, h                                       ; $5CA6: $64

jr_01A_5CA7:
    jr nz, jr_01A_5D18                            ; $5CA7: $20 $6F

    ld h, [hl]                                    ; $5CA9: $66
    rst $38                                       ; $5CAA: $FF
    ld [hl], d                                    ; $5CAB: $72
    ld l, a                                       ; $5CAC: $6F
    ld h, e                                       ; $5CAD: $63
    ld l, e                                       ; $5CAE: $6B

jr_01A_5CAF:
    ccf                                           ; $5CAF: $3F
    cp $49                                        ; $5CB0: $FE $49
    jr nz, jr_01A_5D18                            ; $5CB2: $20 $64

    ld l, a                                       ; $5CB4: $6F
    ld l, [hl]                                    ; $5CB5: $6E
    daa                                           ; $5CB6: $27
    ld [hl], h                                    ; $5CB7: $74
    jr nz, jr_01A_5D2E                            ; $5CB8: $20 $74

    ld l, b                                       ; $5CBA: $68
    ld l, c                                       ; $5CBB: $69

jr_01A_5CBC:
    ld l, [hl]                                    ; $5CBC: $6E
    ld l, e                                       ; $5CBD: $6B

jr_01A_5CBE:
    rst $38                                       ; $5CBE: $FF
    ld l, c                                       ; $5CBF: $69
    ld [hl], h                                    ; $5CC0: $74
    daa                                           ; $5CC1: $27
    ld [hl], e                                    ; $5CC2: $73
    jr nz, jr_01A_5D06                            ; $5CC3: $20 $41

    ld l, [hl]                                    ; $5CC5: $6E
    ld l, c                                       ; $5CC6: $69
    ld l, l                                       ; $5CC7: $6D
    ld l, c                                       ; $5CC8: $69
    ld [hl], h                                    ; $5CC9: $74
    ld h, l                                       ; $5CCA: $65
    ld l, $FE                                     ; $5CCB: $2E $FE
    db $FD                                        ; $5CCD: $FD
    sbc d                                         ; $5CCE: $9A
    ld d, l                                       ; $5CCF: $55
    ld b, b                                       ; $5CD0: $40
    ld b, b                                       ; $5CD1: $40
    sbc e                                         ; $5CD2: $9B
    ld a, b                                       ; $5CD3: $78
    ld [hl], b                                    ; $5CD4: $70
    sbc a                                         ; $5CD5: $9F
    ld d, l                                       ; $5CD6: $55
    ld l, b                                       ; $5CD7: $68
    jr nz, jr_01A_5D49                            ; $5CD8: $20 $6F

    ld l, b                                       ; $5CDA: $68
    inc l                                         ; $5CDB: $2C
    jr nz, @+$76                                  ; $5CDC: $20 $74

    ld l, b                                       ; $5CDE: $68
    ld l, c                                       ; $5CDF: $69
    ld [hl], e                                    ; $5CE0: $73
    rst $38                                       ; $5CE1: $FF
    ld [hl], b                                    ; $5CE2: $70
    ld l, h                                       ; $5CE3: $6C
    ld h, c                                       ; $5CE4: $61
    ld h, e                                       ; $5CE5: $63
    ld h, l                                       ; $5CE6: $65
    jr nz, @+$6B                                  ; $5CE7: $20 $69

    ld [hl], e                                    ; $5CE9: $73

jr_01A_5CEA:
    jr nz, jr_01A_5D4F                            ; $5CEA: $20 $63

    ld l, a                                       ; $5CEC: $6F
    ld l, l                                       ; $5CED: $6D
    ld l, c                                       ; $5CEE: $69
    ld l, [hl]                                    ; $5CEF: $6E
    ld h, a                                       ; $5CF0: $67
    cp $61                                        ; $5CF1: $FE $61
    ld [hl], b                                    ; $5CF3: $70
    ld h, c                                       ; $5CF4: $61
    ld [hl], d                                    ; $5CF5: $72
    ld [hl], h                                    ; $5CF6: $74
    ld l, $20                                     ; $5CF7: $2E $20
    ld c, c                                       ; $5CF9: $49
    daa                                           ; $5CFA: $27
    ld l, l                                       ; $5CFB: $6D
    jr nz, jr_01A_5D6D                            ; $5CFC: $20 $6F

    ld [hl], l                                    ; $5CFE: $75

jr_01A_5CFF:
    ld [hl], h                                    ; $5CFF: $74
    rst $38                                       ; $5D00: $FF
    ld l, a                                       ; $5D01: $6F
    ld h, [hl]                                    ; $5D02: $66
    jr nz, jr_01A_5D6D                            ; $5D03: $20 $68

    ld h, l                                       ; $5D05: $65

jr_01A_5D06:
    ld [hl], d                                    ; $5D06: $72
    ld h, l                                       ; $5D07: $65
    ld hl, $FDFE                                  ; $5D08: $21 $FE $FD
    sbc d                                         ; $5D0B: $9A
    rlca                                          ; $5D0C: $07

jr_01A_5D0D:
    nop                                           ; $5D0D: $00
    add c                                         ; $5D0E: $81

jr_01A_5D0F:
    ld e, l                                       ; $5D0F: $5D
    ld b, d                                       ; $5D10: $42
    sbc e                                         ; $5D11: $9B
    add sp, $6E                                   ; $5D12: $E8 $6E
    sbc a                                         ; $5D14: $9F
    ld d, e                                       ; $5D15: $53
    ld d, h                                       ; $5D16: $54
    ld c, a                                       ; $5D17: $4F

jr_01A_5D18:
    ld d, b                                       ; $5D18: $50
    ld hl, $FDFE                                  ; $5D19: $21 $FE $FD
    sbc e                                         ; $5D1C: $9B
    ld a, b                                       ; $5D1D: $78
    ld [hl], b                                    ; $5D1E: $70
    sbc a                                         ; $5D1F: $9F
    ld d, a                                       ; $5D20: $57
    ld l, b                                       ; $5D21: $68
    ld h, c                                       ; $5D22: $61
    ld [hl], h                                    ; $5D23: $74
    jr nz, jr_01A_5D9A                            ; $5D24: $20 $74

    ld l, b                                       ; $5D26: $68
    ld h, l                                       ; $5D27: $65
    ld l, $2E                                     ; $5D28: $2E $2E
    ld l, $FE                                     ; $5D2A: $2E $FE
    db $FD                                        ; $5D2C: $FD
    sbc e                                         ; $5D2D: $9B

jr_01A_5D2E:
    add sp, $6E                                   ; $5D2E: $E8 $6E
    sbc a                                         ; $5D30: $9F
    ld e, c                                       ; $5D31: $59
    ld l, a                                       ; $5D32: $6F
    ld [hl], l                                    ; $5D33: $75
    jr nz, jr_01A_5DAD                            ; $5D34: $20 $77

    ld l, c                                       ; $5D36: $69
    ld l, h                                       ; $5D37: $6C
    ld l, h                                       ; $5D38: $6C
    jr nz, jr_01A_5DA2                            ; $5D39: $20 $67

    ld l, a                                       ; $5D3B: $6F
    rst $38                                       ; $5D3C: $FF
    ld l, [hl]                                    ; $5D3D: $6E
    ld l, a                                       ; $5D3E: $6F
    jr nz, jr_01A_5DA7                            ; $5D3F: $20 $66

    ld [hl], l                                    ; $5D41: $75
    ld [hl], d                                    ; $5D42: $72
    ld [hl], h                                    ; $5D43: $74
    ld l, b                                       ; $5D44: $68
    ld h, l                                       ; $5D45: $65
    ld [hl], d                                    ; $5D46: $72
    ld l, $FE                                     ; $5D47: $2E $FE

jr_01A_5D49:
    db $FD                                        ; $5D49: $FD
    sbc e                                         ; $5D4A: $9B
    ld a, b                                       ; $5D4B: $78
    ld [hl], b                                    ; $5D4C: $70
    sbc a                                         ; $5D4D: $9F
    ld d, a                                       ; $5D4E: $57

jr_01A_5D4F:
    ld l, b                                       ; $5D4F: $68
    ld l, a                                       ; $5D50: $6F
    jr nz, jr_01A_5DB4                            ; $5D51: $20 $61

    ld [hl], d                                    ; $5D53: $72
    ld h, l                                       ; $5D54: $65
    jr nz, jr_01A_5DD0                            ; $5D55: $20 $79

    ld l, a                                       ; $5D57: $6F
    ld [hl], l                                    ; $5D58: $75
    ccf                                           ; $5D59: $3F
    cp $FD                                        ; $5D5A: $FE $FD
    sbc e                                         ; $5D5C: $9B
    add sp, $6E                                   ; $5D5D: $E8 $6E
    sbc a                                         ; $5D5F: $9F
    ld c, c                                       ; $5D60: $49
    jr nz, jr_01A_5DC4                            ; $5D61: $20 $61

    ld l, l                                       ; $5D63: $6D
    jr nz, jr_01A_5DBA                            ; $5D64: $20 $54

    ld l, a                                       ; $5D66: $6F
    ld h, a                                       ; $5D67: $67
    ld l, a                                       ; $5D68: $6F
    ld [hl], h                                    ; $5D69: $74
    ld l, b                                       ; $5D6A: $68
    inc l                                         ; $5D6B: $2C
    rst $38                                       ; $5D6C: $FF

jr_01A_5D6D:
    ld h, a                                       ; $5D6D: $67
    ld [hl], l                                    ; $5D6E: $75
    ld h, c                                       ; $5D6F: $61
    ld [hl], d                                    ; $5D70: $72
    ld h, h                                       ; $5D71: $64
    ld l, c                                       ; $5D72: $69
    ld h, c                                       ; $5D73: $61
    ld l, [hl]                                    ; $5D74: $6E
    jr nz, jr_01A_5DE6                            ; $5D75: $20 $6F

    ld h, [hl]                                    ; $5D77: $66
    cp $74                                        ; $5D78: $FE $74
    ld l, b                                       ; $5D7A: $68
    ld l, c                                       ; $5D7B: $69
    ld [hl], e                                    ; $5D7C: $73
    jr nz, jr_01A_5DC2                            ; $5D7D: $20 $43

    ld l, a                                       ; $5D7F: $6F
    ld [hl], d                                    ; $5D80: $72
    ld h, l                                       ; $5D81: $65
    jr nz, jr_01A_5DCB                            ; $5D82: $20 $47

    ld h, c                                       ; $5D84: $61
    ld [hl], h                                    ; $5D85: $74
    ld h, l                                       ; $5D86: $65
    ld l, $FE                                     ; $5D87: $2E $FE
    db $FD                                        ; $5D89: $FD
    sbc e                                         ; $5D8A: $9B
    ld a, b                                       ; $5D8B: $78
    ld [hl], b                                    ; $5D8C: $70
    sbc a                                         ; $5D8D: $9F
    ld d, h                                       ; $5D8E: $54
    ld l, b                                       ; $5D8F: $68
    ld l, c                                       ; $5D90: $69
    ld [hl], e                                    ; $5D91: $73
    ld l, $2E                                     ; $5D92: $2E $2E
    ld l, $20                                     ; $5D94: $2E $20
    ld d, e                                       ; $5D96: $53
    ld l, b                                       ; $5D97: $68
    ld h, c                                       ; $5D98: $61
    ld h, h                                       ; $5D99: $64

jr_01A_5D9A:
    ld l, a                                       ; $5D9A: $6F
    ld [hl], a                                    ; $5D9B: $77
    rst $38                                       ; $5D9C: $FF
    ld b, a                                       ; $5D9D: $47
    ld h, l                                       ; $5D9E: $65
    ld a, c                                       ; $5D9F: $79
    ld [hl], e                                    ; $5DA0: $73
    ld h, l                                       ; $5DA1: $65

jr_01A_5DA2:
    ld [hl], d                                    ; $5DA2: $72
    ccf                                           ; $5DA3: $3F
    cp $FD                                        ; $5DA4: $FE $FD
    sbc d                                         ; $5DA6: $9A

jr_01A_5DA7:
    ld e, b                                       ; $5DA7: $58
    ld bc, $9B42                                  ; $5DA8: $01 $42 $9B
    add sp, $6E                                   ; $5DAB: $E8 $6E

jr_01A_5DAD:
    sbc a                                         ; $5DAD: $9F
    ld c, [hl]                                    ; $5DAE: $4E
    ld c, a                                       ; $5DAF: $4F
    ld hl, $4320                                  ; $5DB0: $21 $20 $43
    ld c, a                                       ; $5DB3: $4F

jr_01A_5DB4:
    ld d, d                                       ; $5DB4: $52
    ld b, l                                       ; $5DB5: $45
    jr nz, @+$49                                  ; $5DB6: $20 $47

    ld b, c                                       ; $5DB8: $41
    ld d, h                                       ; $5DB9: $54

jr_01A_5DBA:
    ld b, l                                       ; $5DBA: $45
    ld hl, $FDFE                                  ; $5DBB: $21 $FE $FD
    sbc e                                         ; $5DBE: $9B
    ld a, b                                       ; $5DBF: $78
    ld [hl], b                                    ; $5DC0: $70
    sbc a                                         ; $5DC1: $9F

jr_01A_5DC2:
    ld b, d                                       ; $5DC2: $42
    ld [hl], l                                    ; $5DC3: $75

jr_01A_5DC4:
    ld [hl], h                                    ; $5DC4: $74
    jr nz, jr_01A_5E0E                            ; $5DC5: $20 $47

    ld l, c                                       ; $5DC7: $69
    ld h, c                                       ; $5DC8: $61
    jr nz, @+$65                                  ; $5DC9: $20 $63

jr_01A_5DCB:
    ld h, c                                       ; $5DCB: $61
    ld l, h                                       ; $5DCC: $6C
    ld l, h                                       ; $5DCD: $6C
    ld h, l                                       ; $5DCE: $65
    ld h, h                                       ; $5DCF: $64

jr_01A_5DD0:
    rst $38                                       ; $5DD0: $FF
    ld l, c                                       ; $5DD1: $69
    ld [hl], h                                    ; $5DD2: $74
    jr nz, jr_01A_5E36                            ; $5DD3: $20 $61

    jr nz, jr_01A_5E2A                            ; $5DD5: $20 $53

    ld l, b                                       ; $5DD7: $68
    ld h, c                                       ; $5DD8: $61
    ld h, h                                       ; $5DD9: $64
    ld l, a                                       ; $5DDA: $6F
    ld [hl], a                                    ; $5DDB: $77
    cp $47                                        ; $5DDC: $FE $47
    ld h, l                                       ; $5DDE: $65
    ld a, c                                       ; $5DDF: $79
    ld [hl], e                                    ; $5DE0: $73
    ld h, l                                       ; $5DE1: $65
    ld [hl], d                                    ; $5DE2: $72
    ld l, $FE                                     ; $5DE3: $2E $FE
    db $FD                                        ; $5DE5: $FD

jr_01A_5DE6:
    sbc d                                         ; $5DE6: $9A
    ld e, b                                       ; $5DE7: $58
    ld [bc], a                                    ; $5DE8: $02
    ld b, d                                       ; $5DE9: $42
    sbc e                                         ; $5DEA: $9B
    add sp, $6E                                   ; $5DEB: $E8 $6E
    sbc a                                         ; $5DED: $9F
    ld d, a                                       ; $5DEE: $57
    ld l, b                                       ; $5DEF: $68
    ld h, c                                       ; $5DF0: $61
    ld [hl], h                                    ; $5DF1: $74
    jr nz, @+$76                                  ; $5DF2: $20 $74

    ld l, b                                       ; $5DF4: $68
    ld h, l                                       ; $5DF5: $65
    jr nz, jr_01A_5E60                            ; $5DF6: $20 $68

    ld h, l                                       ; $5DF8: $65
    ld h, e                                       ; $5DF9: $63
    ld l, e                                       ; $5DFA: $6B
    cp $69                                        ; $5DFB: $FE $69
    ld [hl], e                                    ; $5DFD: $73
    jr nz, jr_01A_5E61                            ; $5DFE: $20 $61

    jr nz, jr_01A_5E55                            ; $5E00: $20 $53

    ld c, b                                       ; $5E02: $48
    ld b, c                                       ; $5E03: $41
    ld b, h                                       ; $5E04: $44
    ld c, a                                       ; $5E05: $4F
    ld d, a                                       ; $5E06: $57
    rst $38                                       ; $5E07: $FF
    ld b, a                                       ; $5E08: $47
    ld b, l                                       ; $5E09: $45
    ld e, c                                       ; $5E0A: $59
    ld d, e                                       ; $5E0B: $53
    ld b, l                                       ; $5E0C: $45
    ld d, d                                       ; $5E0D: $52

jr_01A_5E0E:
    ccf                                           ; $5E0E: $3F
    jr nz, @+$59                                  ; $5E0F: $20 $57

    ld l, b                                       ; $5E11: $68
    ld h, c                                       ; $5E12: $61
    ld [hl], h                                    ; $5E13: $74
    cp $6B                                        ; $5E14: $FE $6B
    ld l, c                                       ; $5E16: $69
    ld l, [hl]                                    ; $5E17: $6E
    ld h, h                                       ; $5E18: $64
    jr nz, jr_01A_5E8A                            ; $5E19: $20 $6F

    ld h, [hl]                                    ; $5E1B: $66
    jr nz, @+$63                                  ; $5E1C: $20 $61

    rst $38                                       ; $5E1E: $FF
    ld h, [hl]                                    ; $5E1F: $66
    ld [hl], d                                    ; $5E20: $72
    ld [hl], l                                    ; $5E21: $75
    ld l, c                                       ; $5E22: $69
    ld [hl], h                                    ; $5E23: $74
    ld a, c                                       ; $5E24: $79
    jr nz, jr_01A_5E95                            ; $5E25: $20 $6E

    ld h, c                                       ; $5E27: $61
    ld l, l                                       ; $5E28: $6D
    ld h, l                                       ; $5E29: $65

jr_01A_5E2A:
    jr nz, jr_01A_5E95                            ; $5E2A: $20 $69

    ld [hl], e                                    ; $5E2C: $73
    cp $74                                        ; $5E2D: $FE $74
    ld l, b                                       ; $5E2F: $68
    ld h, c                                       ; $5E30: $61
    ld [hl], h                                    ; $5E31: $74
    ccf                                           ; $5E32: $3F
    jr nz, @+$4B                                  ; $5E33: $20 $49

    ld h, [hl]                                    ; $5E35: $66

jr_01A_5E36:
    jr nz, jr_01A_5EB1                            ; $5E36: $20 $79

    ld l, a                                       ; $5E38: $6F
    ld [hl], l                                    ; $5E39: $75
    rst $38                                       ; $5E3A: $FF
    ld h, e                                       ; $5E3B: $63
    ld h, c                                       ; $5E3C: $61
    ld l, h                                       ; $5E3D: $6C
    ld l, h                                       ; $5E3E: $6C
    jr nz, jr_01A_5EAA                            ; $5E3F: $20 $69

    ld [hl], h                                    ; $5E41: $74
    jr nz, jr_01A_5EB8                            ; $5E42: $20 $74

    ld l, b                                       ; $5E44: $68
    ld h, c                                       ; $5E45: $61
    ld [hl], h                                    ; $5E46: $74
    cp $6F                                        ; $5E47: $FE $6F
    ld l, [hl]                                    ; $5E49: $6E
    ld h, l                                       ; $5E4A: $65
    jr nz, jr_01A_5EBA                            ; $5E4B: $20 $6D

    ld l, a                                       ; $5E4D: $6F
    ld [hl], d                                    ; $5E4E: $72
    ld h, l                                       ; $5E4F: $65
    jr nz, jr_01A_5EC6                            ; $5E50: $20 $74

    ld l, c                                       ; $5E52: $69
    ld l, l                                       ; $5E53: $6D
    ld h, l                                       ; $5E54: $65

jr_01A_5E55:
    inc l                                         ; $5E55: $2C
    rst $38                                       ; $5E56: $FF
    ld c, c                                       ; $5E57: $49
    jr nz, jr_01A_5ED1                            ; $5E58: $20 $77

    ld l, c                                       ; $5E5A: $69
    ld l, h                                       ; $5E5B: $6C
    ld l, h                                       ; $5E5C: $6C
    jr nz, jr_01A_5ECA                            ; $5E5D: $20 $6B

    ld l, c                                       ; $5E5F: $69

jr_01A_5E60:
    ld h, e                                       ; $5E60: $63

jr_01A_5E61:
    ld l, e                                       ; $5E61: $6B
    cp $79                                        ; $5E62: $FE $79
    ld l, a                                       ; $5E64: $6F
    ld [hl], l                                    ; $5E65: $75
    ld [hl], d                                    ; $5E66: $72
    jr nz, jr_01A_5ED1                            ; $5E67: $20 $68

    ld h, c                                       ; $5E69: $61
    ld l, c                                       ; $5E6A: $69
    ld [hl], d                                    ; $5E6B: $72
    ld a, c                                       ; $5E6C: $79
    rst $38                                       ; $5E6D: $FF
    ld l, h                                       ; $5E6E: $6C
    ld l, c                                       ; $5E6F: $69
    ld [hl], h                                    ; $5E70: $74
    ld [hl], h                                    ; $5E71: $74
    ld l, h                                       ; $5E72: $6C
    ld h, l                                       ; $5E73: $65
    cp $62                                        ; $5E74: $FE $62
    ld [hl], l                                    ; $5E76: $75
    ld [hl], h                                    ; $5E77: $74
    ld [hl], h                                    ; $5E78: $74
    ld l, a                                       ; $5E79: $6F
    ld h, e                                       ; $5E7A: $63
    ld l, e                                       ; $5E7B: $6B
    ld [hl], e                                    ; $5E7C: $73
    ld hl, $FDFE                                  ; $5E7D: $21 $FE $FD
    sbc d                                         ; $5E80: $9A
    ld e, b                                       ; $5E81: $58
    inc bc                                        ; $5E82: $03
    ld b, d                                       ; $5E83: $42
    sbc e                                         ; $5E84: $9B
    add sp, $6E                                   ; $5E85: $E8 $6E
    sbc a                                         ; $5E87: $9F
    ld d, h                                       ; $5E88: $54
    ld l, b                                       ; $5E89: $68

jr_01A_5E8A:
    ld h, l                                       ; $5E8A: $65
    jr nz, jr_01A_5EF5                            ; $5E8B: $20 $68

    ld h, l                                       ; $5E8D: $65
    ld h, e                                       ; $5E8E: $63
    ld l, e                                       ; $5E8F: $6B
    jr nz, jr_01A_5F09                            ; $5E90: $20 $77

    ld l, c                                       ; $5E92: $69
    ld [hl], h                                    ; $5E93: $74
    ld l, b                                       ; $5E94: $68

jr_01A_5E95:
    rst $38                                       ; $5E95: $FF
    ld l, c                                       ; $5E96: $69
    ld [hl], h                                    ; $5E97: $74
    inc l                                         ; $5E98: $2C
    jr nz, jr_01A_5EE4                            ; $5E99: $20 $49

    jr nz, jr_01A_5F14                            ; $5E9B: $20 $77

    ld h, c                                       ; $5E9D: $61
    ld [hl], e                                    ; $5E9E: $73
    jr nz, jr_01A_5F08                            ; $5E9F: $20 $67

    ld l, a                                       ; $5EA1: $6F
    ld l, c                                       ; $5EA2: $69
    ld l, [hl]                                    ; $5EA3: $6E
    ld h, a                                       ; $5EA4: $67
    cp $74                                        ; $5EA5: $FE $74
    ld l, a                                       ; $5EA7: $6F
    jr nz, jr_01A_5F0E                            ; $5EA8: $20 $64

jr_01A_5EAA:
    ld l, a                                       ; $5EAA: $6F
    jr nz, @+$6B                                  ; $5EAB: $20 $69

    ld [hl], h                                    ; $5EAD: $74
    rst $38                                       ; $5EAE: $FF
    ld h, c                                       ; $5EAF: $61

jr_01A_5EB0:
    ld l, [hl]                                    ; $5EB0: $6E

jr_01A_5EB1:
    ld a, c                                       ; $5EB1: $79
    ld [hl], a                                    ; $5EB2: $77
    ld h, c                                       ; $5EB3: $61
    ld a, c                                       ; $5EB4: $79
    ld l, $FE                                     ; $5EB5: $2E $FE
    db $FD                                        ; $5EB7: $FD

jr_01A_5EB8:
    sbc d                                         ; $5EB8: $9A
    ld e, b                                       ; $5EB9: $58

jr_01A_5EBA:
    inc b                                         ; $5EBA: $04
    ld b, d                                       ; $5EBB: $42
    ld [bc], a                                    ; $5EBC: $02
    nop                                           ; $5EBD: $00
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    nop                                           ; $5EC0: $00
    jr nc, jr_01A_5EB0                            ; $5EC1: $30 $ED

    ld d, [hl]                                    ; $5EC3: $56
    jr nz, jr_01A_5F0D                            ; $5EC4: $20 $47

jr_01A_5EC6:
    ld [$DF1A], sp                                ; $5EC6: $08 $1A $DF
    ld e, [hl]                                    ; $5EC9: $5E

jr_01A_5ECA:
    ld a, [de]                                    ; $5ECA: $1A
    db $F4                                        ; $5ECB: $F4
    ld e, [hl]                                    ; $5ECC: $5E
    ld a, [de]                                    ; $5ECD: $1A
    ld [bc], a                                    ; $5ECE: $02
    ld e, a                                       ; $5ECF: $5F
    ld a, [de]                                    ; $5ED0: $1A

jr_01A_5ED1:
    jr jr_01A_5F32                                ; $5ED1: $18 $5F

    ld a, [de]                                    ; $5ED3: $1A
    inc [hl]                                      ; $5ED4: $34
    ld e, a                                       ; $5ED5: $5F
    ld a, [de]                                    ; $5ED6: $1A
    ld c, c                                       ; $5ED7: $49
    ld e, a                                       ; $5ED8: $5F
    ld a, [de]                                    ; $5ED9: $1A
    ld e, [hl]                                    ; $5EDA: $5E
    ld e, a                                       ; $5EDB: $5F
    ld a, [de]                                    ; $5EDC: $1A
    ld a, d                                       ; $5EDD: $7A
    ld e, a                                       ; $5EDE: $5F
    dec h                                         ; $5EDF: $25
    rlca                                          ; $5EE0: $07
    ld l, h                                       ; $5EE1: $6C
    ld a, [bc]                                    ; $5EE2: $0A
    ld c, h                                       ; $5EE3: $4C

jr_01A_5EE4:
    inc hl                                        ; $5EE4: $23
    ld b, b                                       ; $5EE5: $40
    ld l, $09                                     ; $5EE6: $2E $09
    ld [$1008], sp                                ; $5EE8: $08 $08 $10
    ld bc, $2E2B                                  ; $5EEB: $01 $2B $2E
    add hl, bc                                    ; $5EEE: $09
    ld b, d                                       ; $5EEF: $42
    ld [$010F], sp                                ; $5EF0: $08 $0F $01
    daa                                           ; $5EF3: $27
    dec h                                         ; $5EF4: $25

jr_01A_5EF5:
    rlca                                          ; $5EF5: $07
    ld l, h                                       ; $5EF6: $6C
    ld a, [bc]                                    ; $5EF7: $0A
    ld c, h                                       ; $5EF8: $4C
    inc hl                                        ; $5EF9: $23
    ld b, b                                       ; $5EFA: $40
    ld l, $09                                     ; $5EFB: $2E $09
    ld b, d                                       ; $5EFD: $42
    ld a, [bc]                                    ; $5EFE: $0A
    inc de                                        ; $5EFF: $13
    ld bc, $2527                                  ; $5F00: $01 $27 $25
    rlca                                          ; $5F03: $07
    ld l, h                                       ; $5F04: $6C
    ld a, [bc]                                    ; $5F05: $0A
    ld c, h                                       ; $5F06: $4C
    inc hl                                        ; $5F07: $23

jr_01A_5F08:
    ld b, b                                       ; $5F08: $40

jr_01A_5F09:
    ld l, $09                                     ; $5F09: $2E $09
    ld [hl+], a                                   ; $5F0B: $22
    add hl, bc                                    ; $5F0C: $09

jr_01A_5F0D:
    ld [de], a                                    ; $5F0D: $12

jr_01A_5F0E:
    ld bc, $2B2B                                  ; $5F0E: $01 $2B $2B
    ld l, $09                                     ; $5F11: $2E $09
    ld c, [hl]                                    ; $5F13: $4E

jr_01A_5F14:
    ld [$0110], sp                                ; $5F14: $08 $10 $01
    daa                                           ; $5F17: $27
    dec h                                         ; $5F18: $25
    rlca                                          ; $5F19: $07
    ld l, h                                       ; $5F1A: $6C
    ld a, [bc]                                    ; $5F1B: $0A
    ld c, h                                       ; $5F1C: $4C
    inc hl                                        ; $5F1D: $23
    ld b, b                                       ; $5F1E: $40
    ld l, $09                                     ; $5F1F: $2E $09
    ld c, [hl]                                    ; $5F21: $4E
    rlca                                          ; $5F22: $07
    rrca                                          ; $5F23: $0F
    ld bc, $2E2B                                  ; $5F24: $01 $2B $2E
    add hl, bc                                    ; $5F27: $09
    ld c, [hl]                                    ; $5F28: $4E
    rlca                                          ; $5F29: $07
    ld c, $01                                     ; $5F2A: $0E $01
    dec hl                                        ; $5F2C: $2B
    ld l, $09                                     ; $5F2D: $2E $09
    jr z, jr_01A_5F3A                             ; $5F2F: $28 $09

    ld [de], a                                    ; $5F31: $12

jr_01A_5F32:
    ld bc, $2527                                  ; $5F32: $01 $27 $25
    rlca                                          ; $5F35: $07
    ld l, h                                       ; $5F36: $6C
    ld a, [bc]                                    ; $5F37: $0A
    ld c, h                                       ; $5F38: $4C
    inc hl                                        ; $5F39: $23

jr_01A_5F3A:
    ld b, b                                       ; $5F3A: $40
    ld l, $09                                     ; $5F3B: $2E $09
    ld b, d                                       ; $5F3D: $42
    ld [$0110], sp                                ; $5F3E: $08 $10 $01
    dec hl                                        ; $5F41: $2B
    ld l, $09                                     ; $5F42: $2E $09
    ld [$1108], sp                                ; $5F44: $08 $08 $11
    ld bc, $2527                                  ; $5F47: $01 $27 $25
    rlca                                          ; $5F4A: $07
    ld l, h                                       ; $5F4B: $6C
    ld a, [bc]                                    ; $5F4C: $0A
    ld c, h                                       ; $5F4D: $4C
    inc hl                                        ; $5F4E: $23
    ld b, b                                       ; $5F4F: $40
    ld l, $09                                     ; $5F50: $2E $09
    ld b, d                                       ; $5F52: $42
    rlca                                          ; $5F53: $07
    rrca                                          ; $5F54: $0F
    ld bc, $2E2B                                  ; $5F55: $01 $2B $2E
    add hl, bc                                    ; $5F58: $09
    ld [hl+], a                                   ; $5F59: $22
    add hl, bc                                    ; $5F5A: $09
    ld [de], a                                    ; $5F5B: $12
    ld bc, $2527                                  ; $5F5C: $01 $27 $25
    rlca                                          ; $5F5F: $07
    ld l, h                                       ; $5F60: $6C
    ld a, [bc]                                    ; $5F61: $0A
    ld c, h                                       ; $5F62: $4C
    inc hl                                        ; $5F63: $23
    ld b, b                                       ; $5F64: $40
    ld l, $09                                     ; $5F65: $2E $09
    ld [$1309], sp                                ; $5F67: $08 $09 $13
    ld bc, $2E2B                                  ; $5F6A: $01 $2B $2E
    add hl, bc                                    ; $5F6D: $09
    ld [hl+], a                                   ; $5F6E: $22
    rlca                                          ; $5F6F: $07
    rrca                                          ; $5F70: $0F
    ld bc, $2E2B                                  ; $5F71: $01 $2B $2E
    add hl, bc                                    ; $5F74: $09
    ld c, [hl]                                    ; $5F75: $4E
    add hl, bc                                    ; $5F76: $09
    ld [de], a                                    ; $5F77: $12
    ld bc, $2527                                  ; $5F78: $01 $27 $25
    rlca                                          ; $5F7B: $07

jr_01A_5F7C:
    ld l, h                                       ; $5F7C: $6C
    ld a, [bc]                                    ; $5F7D: $0A
    ld c, h                                       ; $5F7E: $4C
    inc hl                                        ; $5F7F: $23
    ld b, b                                       ; $5F80: $40
    ld l, $09                                     ; $5F81: $2E $09
    ld c, [hl]                                    ; $5F83: $4E
    ld a, [bc]                                    ; $5F84: $0A
    ld d, $01                                     ; $5F85: $16 $01
    daa                                           ; $5F87: $27
    ld [bc], a                                    ; $5F88: $02
    nop                                           ; $5F89: $00
    nop                                           ; $5F8A: $00
    nop                                           ; $5F8B: $00
    nop                                           ; $5F8C: $00
    jr nc, jr_01A_5F7C                            ; $5F8D: $30 $ED

    ld d, [hl]                                    ; $5F8F: $56
    ld [hl+], a                                   ; $5F90: $22
    dec h                                         ; $5F91: $25
    rlca                                          ; $5F92: $07
    ld e, c                                       ; $5F93: $59
    inc c                                         ; $5F94: $0C
    ld c, h                                       ; $5F95: $4C
    inc hl                                        ; $5F96: $23
    ld b, b                                       ; $5F97: $40
    dec hl                                        ; $5F98: $2B
    xor d                                         ; $5F99: $AA
    dec a                                         ; $5F9A: $3D
    db $D3                                        ; $5F9B: $D3
    rlca                                          ; $5F9C: $07
    nop                                           ; $5F9D: $00
    xor d                                         ; $5F9E: $AA
    ld a, $D3                                     ; $5F9F: $3E $D3
    rlca                                          ; $5FA1: $07
    jp nc, $E89B                                  ; $5FA2: $D2 $9B $E8

    ld l, [hl]                                    ; $5FA5: $6E
    sbc a                                         ; $5FA6: $9F
    ld b, h                                       ; $5FA7: $44
    ld l, a                                       ; $5FA8: $6F
    ld l, [hl]                                    ; $5FA9: $6E
    daa                                           ; $5FAA: $27
    ld [hl], h                                    ; $5FAB: $74
    jr nz, jr_01A_6025                            ; $5FAC: $20 $77

    ld l, a                                       ; $5FAE: $6F
    ld [hl], d                                    ; $5FAF: $72
    ld [hl], d                                    ; $5FB0: $72
    ld a, c                                       ; $5FB1: $79
    inc l                                         ; $5FB2: $2C
    rst $38                                       ; $5FB3: $FF
    ld [hl], h                                    ; $5FB4: $74
    ld l, b                                       ; $5FB5: $68
    ld l, c                                       ; $5FB6: $69
    ld [hl], e                                    ; $5FB7: $73
    jr nz, jr_01A_6031                            ; $5FB8: $20 $77

    ld l, a                                       ; $5FBA: $6F
    ld l, [hl]                                    ; $5FBB: $6E
    daa                                           ; $5FBC: $27
    ld [hl], h                                    ; $5FBD: $74
    cp $68                                        ; $5FBE: $FE $68
    ld [hl], l                                    ; $5FC0: $75
    ld [hl], d                                    ; $5FC1: $72
    ld [hl], h                                    ; $5FC2: $74
    jr nz, jr_01A_602B                            ; $5FC3: $20 $66

    ld l, a                                       ; $5FC5: $6F
    ld [hl], d                                    ; $5FC6: $72
    jr nz, jr_01A_6035                            ; $5FC7: $20 $6C

    ld l, a                                       ; $5FC9: $6F
    ld l, [hl]                                    ; $5FCA: $6E
    ld h, a                                       ; $5FCB: $67
    ld l, $FE                                     ; $5FCC: $2E $FE
    db $FD                                        ; $5FCE: $FD
    sbc d                                         ; $5FCF: $9A
    ld l, $09                                     ; $5FD0: $2E $09
    ld b, d                                       ; $5FD2: $42
    dec bc                                        ; $5FD3: $0B
    add hl, de                                    ; $5FD4: $19
    nop                                           ; $5FD5: $00
    dec hl                                        ; $5FD6: $2B
    sbc e                                         ; $5FD7: $9B
    add sp, $6E                                   ; $5FD8: $E8 $6E
    add hl, bc                                    ; $5FDA: $09
    ld c, $20                                     ; $5FDB: $0E $20
    inc h                                         ; $5FDD: $24
    ld a, l                                       ; $5FDE: $7D
    sbc a                                         ; $5FDF: $9F
    ld c, c                                       ; $5FE0: $49
    jr nz, jr_01A_6050                            ; $5FE1: $20 $6D

    ld [hl], l                                    ; $5FE3: $75
    ld [hl], e                                    ; $5FE4: $73
    ld [hl], h                                    ; $5FE5: $74
    jr nz, jr_01A_6053                            ; $5FE6: $20 $6B

    ld h, l                                       ; $5FE8: $65
    ld h, l                                       ; $5FE9: $65
    ld [hl], b                                    ; $5FEA: $70
    rst $38                                       ; $5FEB: $FF
    ld [hl], h                                    ; $5FEC: $74
    ld l, b                                       ; $5FED: $68
    ld l, c                                       ; $5FEE: $69
    ld [hl], e                                    ; $5FEF: $73
    jr nz, jr_01A_6035                            ; $5FF0: $20 $43

    ld l, a                                       ; $5FF2: $6F
    ld [hl], d                                    ; $5FF3: $72
    ld h, l                                       ; $5FF4: $65
    jr nz, jr_01A_603E                            ; $5FF5: $20 $47

    ld h, c                                       ; $5FF7: $61
    ld [hl], h                                    ; $5FF8: $74
    ld h, l                                       ; $5FF9: $65
    cp $6F                                        ; $5FFA: $FE $6F
    ld [hl], b                                    ; $5FFC: $70
    ld h, l                                       ; $5FFD: $65
    ld l, [hl]                                    ; $5FFE: $6E
    ld l, $20                                     ; $5FFF: $2E $20
    ld c, c                                       ; $6001: $49
    ld [hl], h                                    ; $6002: $74
    jr nz, jr_01A_606E                            ; $6003: $20 $69

    ld [hl], e                                    ; $6005: $73
    rst $38                                       ; $6006: $FF
    ld l, a                                       ; $6007: $6F
    ld [hl], l                                    ; $6008: $75
    ld [hl], d                                    ; $6009: $72
    jr nz, @+$72                                  ; $600A: $20 $70

    ld l, a                                       ; $600C: $6F
    ld [hl], d                                    ; $600D: $72
    ld [hl], h                                    ; $600E: $74
    ld h, c                                       ; $600F: $61
    ld l, h                                       ; $6010: $6C
    jr nz, jr_01A_6079                            ; $6011: $20 $66

    ld l, a                                       ; $6013: $6F
    ld [hl], d                                    ; $6014: $72
    cp $64                                        ; $6015: $FE $64
    ld h, l                                       ; $6017: $65
    ld [hl], e                                    ; $6018: $73
    ld [hl], h                                    ; $6019: $74
    ld [hl], d                                    ; $601A: $72
    ld l, a                                       ; $601B: $6F
    ld a, c                                       ; $601C: $79
    ld l, c                                       ; $601D: $69
    ld l, [hl]                                    ; $601E: $6E
    ld h, a                                       ; $601F: $67
    rst $38                                       ; $6020: $FF
    ld [hl], h                                    ; $6021: $74
    ld l, b                                       ; $6022: $68
    ld l, c                                       ; $6023: $69
    ld [hl], e                                    ; $6024: $73

jr_01A_6025:
    jr nz, jr_01A_6097                            ; $6025: $20 $70

    ld h, c                                       ; $6027: $61
    ld l, [hl]                                    ; $6028: $6E
    ld [hl], e                                    ; $6029: $73
    ld a, c                                       ; $602A: $79

jr_01A_602B:
    cp $66                                        ; $602B: $FE $66
    ld l, a                                       ; $602D: $6F
    ld [hl], d                                    ; $602E: $72
    ld h, l                                       ; $602F: $65
    ld [hl], e                                    ; $6030: $73

jr_01A_6031:
    ld [hl], h                                    ; $6031: $74
    ld l, $FE                                     ; $6032: $2E $FE
    db $FD                                        ; $6034: $FD

jr_01A_6035:
    sbc d                                         ; $6035: $9A
    add hl, bc                                    ; $6036: $09
    ld c, $20                                     ; $6037: $0E $20
    dec bc                                        ; $6039: $0B
    ld a, l                                       ; $603A: $7D
    ld e, d                                       ; $603B: $5A
    ld a, [de]                                    ; $603C: $1A
    ld b, l                                       ; $603D: $45

jr_01A_603E:
    ld h, b                                       ; $603E: $60
    ld e, [hl]                                    ; $603F: $5E
    dec hl                                        ; $6040: $2B
    ld b, l                                       ; $6041: $45
    ld a, [de]                                    ; $6042: $1A
    dec sp                                        ; $6043: $3B
    ld h, b                                       ; $6044: $60
    ld b, a                                       ; $6045: $47
    rlca                                          ; $6046: $07
    ld a, [de]                                    ; $6047: $1A
    ld e, h                                       ; $6048: $5C
    ld h, b                                       ; $6049: $60
    ld a, [de]                                    ; $604A: $1A
    ld e, h                                       ; $604B: $5C
    ld h, b                                       ; $604C: $60
    ld a, [de]                                    ; $604D: $1A
    ld h, h                                       ; $604E: $64
    ld h, b                                       ; $604F: $60

jr_01A_6050:
    ld a, [de]                                    ; $6050: $1A
    ld l, e                                       ; $6051: $6B
    ld h, b                                       ; $6052: $60

jr_01A_6053:
    ld a, [de]                                    ; $6053: $1A
    ld l, e                                       ; $6054: $6B
    ld h, b                                       ; $6055: $60
    ld a, [de]                                    ; $6056: $1A
    ld [hl], e                                    ; $6057: $73
    ld h, b                                       ; $6058: $60
    ld a, [de]                                    ; $6059: $1A
    ld a, e                                       ; $605A: $7B
    ld h, b                                       ; $605B: $60
    ld l, $09                                     ; $605C: $2E $09
    jr z, jr_01A_606D                             ; $605E: $28 $0D

    ld e, $00                                     ; $6060: $1E $00
    ld d, h                                       ; $6062: $54
    ld b, d                                       ; $6063: $42
    jr z, jr_01A_606F                             ; $6064: $28 $09

    pop bc                                        ; $6066: $C1
    ld [hl], b                                    ; $6067: $70
    db $10                                        ; $6068: $10
    ld d, h                                       ; $6069: $54
    ld b, d                                       ; $606A: $42
    ld l, $09                                     ; $606B: $2E $09

jr_01A_606D:
    ld c, [hl]                                    ; $606D: $4E

jr_01A_606E:
    inc c                                         ; $606E: $0C

jr_01A_606F:
    jr nz, jr_01A_6071                            ; $606F: $20 $00

jr_01A_6071:
    ld d, h                                       ; $6071: $54
    ld b, d                                       ; $6072: $42
    ld l, $09                                     ; $6073: $2E $09
    ld b, d                                       ; $6075: $42
    dec bc                                        ; $6076: $0B
    add hl, de                                    ; $6077: $19
    nop                                           ; $6078: $00

jr_01A_6079:
    ld d, h                                       ; $6079: $54
    ld b, d                                       ; $607A: $42
    jr z, jr_01A_6086                             ; $607B: $28 $09

    add hl, sp                                    ; $607D: $39
    ld [hl], b                                    ; $607E: $70
    inc b                                         ; $607F: $04
    ld d, h                                       ; $6080: $54
    ld b, d                                       ; $6081: $42
    sub e                                         ; $6082: $93
    dec b                                         ; $6083: $05
    nop                                           ; $6084: $00
    add c                                         ; $6085: $81

jr_01A_6086:
    ld e, l                                       ; $6086: $5D
    dec b                                         ; $6087: $05
    dec b                                         ; $6088: $05

jr_01A_6089:
    ld d, l                                       ; $6089: $55
    ret nc                                        ; $608A: $D0

    nop                                           ; $608B: $00
    jr nz, jr_01A_6089                            ; $608C: $20 $FB

    ld d, b                                       ; $608E: $50
    ld [hl+], a                                   ; $608F: $22
    dec b                                         ; $6090: $05
    ld b, b                                       ; $6091: $40
    ld h, l                                       ; $6092: $65
    pop hl                                        ; $6093: $E1
    ld b, b                                       ; $6094: $40
    ld c, a                                       ; $6095: $4F
    ld h, h                                       ; $6096: $64

jr_01A_6097:
    bit 0, b                                      ; $6097: $CB $40
    ld h, [hl]                                    ; $6099: $66
    ret nz                                        ; $609A: $C0

    ld e, h                                       ; $609B: $5C
    ld hl, $000B                                  ; $609C: $21 $0B $00
    ld [hl-], a                                   ; $609F: $32
    ld a, [de]                                    ; $60A0: $1A
    cp h                                          ; $60A1: $BC
    ld e, [hl]                                    ; $60A2: $5E
    adc l                                         ; $60A3: $8D
    ld b, c                                       ; $60A4: $41
    ld sp, $921A                                  ; $60A5: $31 $1A $92
    ld h, b                                       ; $60A8: $60
    ld [hl+], a                                   ; $60A9: $22
    adc $40                                       ; $60AA: $CE $40
    nop                                           ; $60AC: $00
    add d                                         ; $60AD: $82
    rra                                           ; $60AE: $1F
    ld [de], a                                    ; $60AF: $12
    sub h                                         ; $60B0: $94
    ld b, e                                       ; $60B1: $43
    rrca                                          ; $60B2: $0F
    inc b                                         ; $60B3: $04
    dec b                                         ; $60B4: $05
    ld b, $1A                                     ; $60B5: $06 $1A
    cp d                                          ; $60B7: $BA
    ld h, b                                       ; $60B8: $60
    ld b, d                                       ; $60B9: $42
    ld e, d                                       ; $60BA: $5A
    ld a, [de]                                    ; $60BB: $1A
    ld a, [hl-]                                   ; $60BC: $3A
    ld h, a                                       ; $60BD: $67
    ld b, d                                       ; $60BE: $42
    ld [bc], a                                    ; $60BF: $02
    nop                                           ; $60C0: $00
    rla                                           ; $60C1: $17
    dec c                                         ; $60C2: $0D
    db $10                                        ; $60C3: $10
    ld b, l                                       ; $60C4: $45
    ld a, [de]                                    ; $60C5: $1A
    ld [hl], a                                    ; $60C6: $77
    ld h, c                                       ; $60C7: $61
    ld [bc], a                                    ; $60C8: $02
    ld b, $0A                                     ; $60C9: $06 $0A
    nop                                           ; $60CB: $00
    rla                                           ; $60CC: $17
    ld b, l                                       ; $60CD: $45
    ld a, [de]                                    ; $60CE: $1A
    ld c, h                                       ; $60CF: $4C
    ld h, d                                       ; $60D0: $62
    ld [bc], a                                    ; $60D1: $02
    rla                                           ; $60D2: $17
    nop                                           ; $60D3: $00
    dec c                                         ; $60D4: $0D
    ld de, $1A45                                  ; $60D5: $11 $45 $1A
    add d                                         ; $60D8: $82
    ld h, b                                       ; $60D9: $60
    and h                                         ; $60DA: $A4
    ld h, $A3                                     ; $60DB: $26 $A3
    ld [$0100], sp                                ; $60DD: $08 $00 $01
    rra                                           ; $60E0: $1F
    jp nc, $0593                                  ; $60E1: $D2 $93 $05

    nop                                           ; $60E4: $00
    add c                                         ; $60E5: $81
    ld e, l                                       ; $60E6: $5D
    dec b                                         ; $60E7: $05
    dec b                                         ; $60E8: $05

jr_01A_60E9:
    ld a, l                                       ; $60E9: $7D
    ret nc                                        ; $60EA: $D0

    nop                                           ; $60EB: $00
    jr nz, jr_01A_60E9                            ; $60EC: $20 $FB

    ld d, b                                       ; $60EE: $50
    ld [hl+], a                                   ; $60EF: $22
    dec b                                         ; $60F0: $05
    ld b, b                                       ; $60F1: $40
    ld b, e                                       ; $60F2: $43
    rrca                                          ; $60F3: $0F
    inc b                                         ; $60F4: $04
    dec b                                         ; $60F5: $05
    ld b, $1A                                     ; $60F6: $06 $1A
    ld [hl], $61                                  ; $60F8: $36 $61
    ld b, e                                       ; $60FA: $43
    nop                                           ; $60FB: $00
    dec h                                         ; $60FC: $25
    and c                                         ; $60FD: $A1
    ld [bc], a                                    ; $60FE: $02
    ld a, [de]                                    ; $60FF: $1A
    dec l                                         ; $6100: $2D
    ld h, c                                       ; $6101: $61
    ld h, l                                       ; $6102: $65
    ldh a, [rLCDC]                                ; $6103: $F0 $40
    ld c, a                                       ; $6105: $4F
    ld h, h                                       ; $6106: $64
    ret c                                         ; $6107: $D8

    ld b, b                                       ; $6108: $40
    ld l, c                                       ; $6109: $69
    push hl                                       ; $610A: $E5
    ld b, b                                       ; $610B: $40
    ld h, [hl]                                    ; $610C: $66
    ret nz                                        ; $610D: $C0

    ld e, h                                       ; $610E: $5C
    ld hl, $000B                                  ; $610F: $21 $0B $00
    ld [hl-], a                                   ; $6112: $32
    ld a, [de]                                    ; $6113: $1A
    cp h                                          ; $6114: $BC
    ld e, [hl]                                    ; $6115: $5E
    adc l                                         ; $6116: $8D
    ld b, c                                       ; $6117: $41
    ld sp, $F21A                                  ; $6118: $31 $1A $F2
    ld h, b                                       ; $611B: $60
    ld [hl+], a                                   ; $611C: $22
    adc $40                                       ; $611D: $CE $40
    nop                                           ; $611F: $00
    add d                                         ; $6120: $82
    rra                                           ; $6121: $1F
    ld [de], a                                    ; $6122: $12
    sub h                                         ; $6123: $94
    ld b, e                                       ; $6124: $43
    rrca                                          ; $6125: $0F
    inc b                                         ; $6126: $04
    dec b                                         ; $6127: $05
    ld b, $1A                                     ; $6128: $06 $1A
    cp d                                          ; $612A: $BA
    ld h, b                                       ; $612B: $60
    ld b, d                                       ; $612C: $42
    ld b, e                                       ; $612D: $43
    ld a, [bc]                                    ; $612E: $0A
    nop                                           ; $612F: $00
    dec h                                         ; $6130: $25
    and c                                         ; $6131: $A1
    ld [bc], a                                    ; $6132: $02
    ld a, [de]                                    ; $6133: $1A
    ld [c], a                                     ; $6134: $E2
    ld h, b                                       ; $6135: $60
    ld h, l                                       ; $6136: $65
    ldh a, [rLCDC]                                ; $6137: $F0 $40
    ld c, a                                       ; $6139: $4F
    ld h, h                                       ; $613A: $64
    ret c                                         ; $613B: $D8

    ld b, b                                       ; $613C: $40
    ld l, c                                       ; $613D: $69
    push hl                                       ; $613E: $E5
    ld b, b                                       ; $613F: $40
    ld h, [hl]                                    ; $6140: $66
    ret nz                                        ; $6141: $C0

    ld e, h                                       ; $6142: $5C
    ld hl, $000B                                  ; $6143: $21 $0B $00
    nop                                           ; $6146: $00
    add d                                         ; $6147: $82
    rra                                           ; $6148: $1F
    ld [de], a                                    ; $6149: $12
    ld a, [hl]                                    ; $614A: $7E
    and e                                         ; $614B: $A3
    ret nc                                        ; $614C: $D0

    ld bc, $9307                                  ; $614D: $01 $07 $93
    ret nc                                        ; $6150: $D0

    ld b, $03                                     ; $6151: $06 $03
    sub h                                         ; $6153: $94
    ld b, e                                       ; $6154: $43
    rrca                                          ; $6155: $0F
    inc b                                         ; $6156: $04
    dec b                                         ; $6157: $05
    ld b, $1A                                     ; $6158: $06 $1A
    cp d                                          ; $615A: $BA
    ld h, b                                       ; $615B: $60
    ld b, d                                       ; $615C: $42
    ld [bc], a                                    ; $615D: $02
    rla                                           ; $615E: $17
    nop                                           ; $615F: $00
    db $10                                        ; $6160: $10
    dec c                                         ; $6161: $0D
    ld b, l                                       ; $6162: $45
    ld a, [de]                                    ; $6163: $1A
    ld [c], a                                     ; $6164: $E2
    ld h, b                                       ; $6165: $60
    ld [bc], a                                    ; $6166: $02
    add hl, bc                                    ; $6167: $09
    rrca                                          ; $6168: $0F
    nop                                           ; $6169: $00
    inc de                                        ; $616A: $13
    ld b, l                                       ; $616B: $45
    ld a, [de]                                    ; $616C: $1A
    push de                                       ; $616D: $D5
    ld h, c                                       ; $616E: $61
    and h                                         ; $616F: $A4
    ld h, $A3                                     ; $6170: $26 $A3
    stop                                          ; $6172: $10 $00
    ld [bc], a                                    ; $6174: $02
    and h                                         ; $6175: $A4
    ret nc                                        ; $6176: $D0

    sub e                                         ; $6177: $93
    dec b                                         ; $6178: $05
    nop                                           ; $6179: $00
    add c                                         ; $617A: $81
    ld e, l                                       ; $617B: $5D
    dec b                                         ; $617C: $05
    dec b                                         ; $617D: $05

jr_01A_617E:
    ld a, l                                       ; $617E: $7D
    ret nc                                        ; $617F: $D0

    nop                                           ; $6180: $00
    jr nz, jr_01A_617E                            ; $6181: $20 $FB

    ld d, b                                       ; $6183: $50
    ld [hl+], a                                   ; $6184: $22
    dec b                                         ; $6185: $05
    ld b, b                                       ; $6186: $40
    ld h, l                                       ; $6187: $65
    rst $38                                       ; $6188: $FF
    ld b, b                                       ; $6189: $40
    ld c, a                                       ; $618A: $4F
    ld h, h                                       ; $618B: $64
    ld [$6940], a                                 ; $618C: $EA $40 $69
    di                                            ; $618F: $F3
    ld b, b                                       ; $6190: $40
    ld h, [hl]                                    ; $6191: $66
    ret nz                                        ; $6192: $C0

    ld e, h                                       ; $6193: $5C
    ld hl, $000B                                  ; $6194: $21 $0B $00
    ld [hl-], a                                   ; $6197: $32
    ld a, [de]                                    ; $6198: $1A
    cp h                                          ; $6199: $BC
    ld e, [hl]                                    ; $619A: $5E
    adc l                                         ; $619B: $8D
    ld b, c                                       ; $619C: $41
    ld sp, $871A                                  ; $619D: $31 $1A $87
    ld h, c                                       ; $61A0: $61
    ld [hl+], a                                   ; $61A1: $22
    adc $40                                       ; $61A2: $CE $40
    nop                                           ; $61A4: $00
    add d                                         ; $61A5: $82
    sub h                                         ; $61A6: $94
    rra                                           ; $61A7: $1F
    ld [de], a                                    ; $61A8: $12
    ld b, e                                       ; $61A9: $43
    rrca                                          ; $61AA: $0F
    inc b                                         ; $61AB: $04
    dec b                                         ; $61AC: $05
    ld b, $1A                                     ; $61AD: $06 $1A
    cp d                                          ; $61AF: $BA
    ld h, b                                       ; $61B0: $60
    ld b, d                                       ; $61B1: $42
    ld [bc], a                                    ; $61B2: $02
    rrca                                          ; $61B3: $0F
    add hl, bc                                    ; $61B4: $09
    inc de                                        ; $61B5: $13
    nop                                           ; $61B6: $00
    ld b, l                                       ; $61B7: $45
    ld a, [de]                                    ; $61B8: $1A
    ld [hl], a                                    ; $61B9: $77
    ld h, c                                       ; $61BA: $61
    ld [bc], a                                    ; $61BB: $02
    add hl, de                                    ; $61BC: $19
    nop                                           ; $61BD: $00
    ld [$4507], sp                                ; $61BE: $08 $07 $45
    ld a, [de]                                    ; $61C1: $1A
    ld c, h                                       ; $61C2: $4C
    ld h, d                                       ; $61C3: $62
    ld [bc], a                                    ; $61C4: $02
    rrca                                          ; $61C5: $0F
    rlca                                          ; $61C6: $07
    nop                                           ; $61C7: $00
    dec d                                         ; $61C8: $15
    ld b, l                                       ; $61C9: $45
    ld a, [de]                                    ; $61CA: $1A
    ld c, e                                       ; $61CB: $4B
    ld h, l                                       ; $61CC: $65
    and h                                         ; $61CD: $A4
    ld h, $A3                                     ; $61CE: $26 $A3
    jr nz, jr_01A_61D4                            ; $61D0: $20 $02

    ld a, [de]                                    ; $61D2: $1A
    adc l                                         ; $61D3: $8D

jr_01A_61D4:
    pop de                                        ; $61D4: $D1
    sub e                                         ; $61D5: $93
    dec b                                         ; $61D6: $05
    nop                                           ; $61D7: $00
    add c                                         ; $61D8: $81
    ld e, l                                       ; $61D9: $5D
    dec b                                         ; $61DA: $05
    dec b                                         ; $61DB: $05

jr_01A_61DC:
    add a                                         ; $61DC: $87
    ret nc                                        ; $61DD: $D0

    nop                                           ; $61DE: $00
    jr nz, jr_01A_61DC                            ; $61DF: $20 $FB

    ld d, b                                       ; $61E1: $50
    ld [hl+], a                                   ; $61E2: $22
    dec b                                         ; $61E3: $05
    ld b, b                                       ; $61E4: $40
    ld h, l                                       ; $61E5: $65
    ld c, $41                                     ; $61E6: $0E $41
    ld c, a                                       ; $61E8: $4F
    ld h, h                                       ; $61E9: $64
    ld hl, sp+$40                                 ; $61EA: $F8 $40
    ld l, c                                       ; $61EC: $69
    dec b                                         ; $61ED: $05
    ld b, c                                       ; $61EE: $41
    ld h, [hl]                                    ; $61EF: $66
    ret nz                                        ; $61F0: $C0

    ld e, h                                       ; $61F1: $5C
    ld hl, $000B                                  ; $61F2: $21 $0B $00
    ld [hl-], a                                   ; $61F5: $32
    ld a, [de]                                    ; $61F6: $1A
    cp h                                          ; $61F7: $BC
    ld e, [hl]                                    ; $61F8: $5E
    adc l                                         ; $61F9: $8D
    ld b, c                                       ; $61FA: $41
    ld sp, $E51A                                  ; $61FB: $31 $1A $E5
    ld h, c                                       ; $61FE: $61
    ld [hl+], a                                   ; $61FF: $22
    adc $40                                       ; $6200: $CE $40
    nop                                           ; $6202: $00
    add d                                         ; $6203: $82
    sub h                                         ; $6204: $94
    rra                                           ; $6205: $1F
    ld [de], a                                    ; $6206: $12
    ld b, e                                       ; $6207: $43
    rrca                                          ; $6208: $0F
    inc b                                         ; $6209: $04
    dec b                                         ; $620A: $05
    ld b, $1A                                     ; $620B: $06 $1A
    cp d                                          ; $620D: $BA
    ld h, b                                       ; $620E: $60
    ld b, d                                       ; $620F: $42
    ld [bc], a                                    ; $6210: $02
    nop                                           ; $6211: $00
    add hl, de                                    ; $6212: $19
    rlca                                          ; $6213: $07
    ld [$1A45], sp                                ; $6214: $08 $45 $1A
    push de                                       ; $6217: $D5
    ld h, c                                       ; $6218: $61
    ld [bc], a                                    ; $6219: $02
    ld a, [bc]                                    ; $621A: $0A
    ld b, $17                                     ; $621B: $06 $17
    nop                                           ; $621D: $00
    ld b, l                                       ; $621E: $45
    ld a, [de]                                    ; $621F: $1A
    ld [c], a                                     ; $6220: $E2
    ld h, b                                       ; $6221: $60
    ld [bc], a                                    ; $6222: $02
    rla                                           ; $6223: $17
    nop                                           ; $6224: $00
    ld [$4508], sp                                ; $6225: $08 $08 $45
    ld a, [de]                                    ; $6228: $1A
    inc h                                         ; $6229: $24
    ld h, e                                       ; $622A: $63
    ld [bc], a                                    ; $622B: $02
    rla                                           ; $622C: $17
    nop                                           ; $622D: $00
    inc de                                        ; $622E: $13
    inc de                                        ; $622F: $13
    ld b, l                                       ; $6230: $45
    ld a, [de]                                    ; $6231: $1A
    inc h                                         ; $6232: $24
    ld h, e                                       ; $6233: $63
    and d                                         ; $6234: $A2
    dec h                                         ; $6235: $25
    and c                                         ; $6236: $A1
    inc b                                         ; $6237: $04
    ld [hl+], a                                   ; $6238: $22
    sub [hl]                                      ; $6239: $96
    ld b, b                                       ; $623A: $40
    ld a, [$D215]                                 ; $623B: $FA $15 $D2
    ld b, h                                       ; $623E: $44
    ld c, e                                       ; $623F: $4B
    ld h, d                                       ; $6240: $62
    ld e, d                                       ; $6241: $5A
    ld a, [de]                                    ; $6242: $1A
    ld a, [hl-]                                   ; $6243: $3A
    ld h, a                                       ; $6244: $67
    ld b, b                                       ; $6245: $40
    ld b, b                                       ; $6246: $40
    ld e, d                                       ; $6247: $5A
    ld a, [de]                                    ; $6248: $1A
    ld c, e                                       ; $6249: $4B
    ld h, a                                       ; $624A: $67
    ld b, d                                       ; $624B: $42
    sub e                                         ; $624C: $93
    dec b                                         ; $624D: $05
    nop                                           ; $624E: $00
    add c                                         ; $624F: $81
    ld e, l                                       ; $6250: $5D
    dec b                                         ; $6251: $05
    dec b                                         ; $6252: $05

jr_01A_6253:
    ld a, l                                       ; $6253: $7D
    ret nc                                        ; $6254: $D0

    nop                                           ; $6255: $00
    jr nz, jr_01A_6253                            ; $6256: $20 $FB

    ld d, b                                       ; $6258: $50
    ld [hl+], a                                   ; $6259: $22
    dec b                                         ; $625A: $05
    ld b, b                                       ; $625B: $40
    ld l, c                                       ; $625C: $69
    dec de                                        ; $625D: $1B
    ld b, c                                       ; $625E: $41
    ld h, l                                       ; $625F: $65
    dec e                                         ; $6260: $1D
    ld b, c                                       ; $6261: $41
    ld c, a                                       ; $6262: $4F
    ld h, h                                       ; $6263: $64
    ld a, [bc]                                    ; $6264: $0A
    ld b, c                                       ; $6265: $41
    ld h, [hl]                                    ; $6266: $66
    ret nz                                        ; $6267: $C0

    ld e, h                                       ; $6268: $5C
    ld hl, $000B                                  ; $6269: $21 $0B $00
    ld [hl-], a                                   ; $626C: $32
    ld a, [de]                                    ; $626D: $1A
    cp h                                          ; $626E: $BC
    ld e, [hl]                                    ; $626F: $5E
    adc l                                         ; $6270: $8D
    ld b, c                                       ; $6271: $41
    ld sp, $5C1A                                  ; $6272: $31 $1A $5C
    ld h, d                                       ; $6275: $62
    ld [hl+], a                                   ; $6276: $22
    adc $40                                       ; $6277: $CE $40
    nop                                           ; $6279: $00
    add d                                         ; $627A: $82
    sub h                                         ; $627B: $94
    rra                                           ; $627C: $1F
    ld [de], a                                    ; $627D: $12
    ld b, e                                       ; $627E: $43
    rrca                                          ; $627F: $0F
    inc b                                         ; $6280: $04
    dec b                                         ; $6281: $05
    ld b, $1A                                     ; $6282: $06 $1A
    cp d                                          ; $6284: $BA
    ld h, b                                       ; $6285: $60
    ld b, d                                       ; $6286: $42
    ld [bc], a                                    ; $6287: $02
    rrca                                          ; $6288: $0F
    ld [$0017], sp                                ; $6289: $08 $17 $00
    ld b, l                                       ; $628C: $45
    ld a, [de]                                    ; $628D: $1A
    add d                                         ; $628E: $82
    ld h, b                                       ; $628F: $60
    ld [bc], a                                    ; $6290: $02
    nop                                           ; $6291: $00
    rla                                           ; $6292: $17
    ld [$4508], sp                                ; $6293: $08 $08 $45
    ld a, [de]                                    ; $6296: $1A
    ld c, h                                       ; $6297: $4C
    ld h, d                                       ; $6298: $62
    ld [bc], a                                    ; $6299: $02
    dec c                                         ; $629A: $0D
    dec bc                                        ; $629B: $0B
    nop                                           ; $629C: $00
    rla                                           ; $629D: $17
    ld b, l                                       ; $629E: $45
    ld a, [de]                                    ; $629F: $1A
    ld h, d                                       ; $62A0: $62
    ld h, h                                       ; $62A1: $64
    ld [bc], a                                    ; $62A2: $02
    nop                                           ; $62A3: $00
    rla                                           ; $62A4: $17
    inc de                                        ; $62A5: $13

jr_01A_62A6:
    inc de                                        ; $62A6: $13
    ld b, l                                       ; $62A7: $45
    ld a, [de]                                    ; $62A8: $1A
    ld c, h                                       ; $62A9: $4C
    ld h, d                                       ; $62AA: $62
    and d                                         ; $62AB: $A2
    dec h                                         ; $62AC: $25
    and c                                         ; $62AD: $A1
    ld bc, $9622                                  ; $62AE: $01 $22 $96
    ld b, b                                       ; $62B1: $40
    ld a, [$D159]                                 ; $62B2: $FA $59 $D1
    ld b, h                                       ; $62B5: $44
    pop de                                        ; $62B6: $D1
    ld h, d                                       ; $62B7: $62

jr_01A_62B8:
    rlca                                          ; $62B8: $07
    nop                                           ; $62B9: $00
    ld l, e                                       ; $62BA: $6B
    ld c, d                                       ; $62BB: $4A
    add hl, bc                                    ; $62BC: $09
    nop                                           ; $62BD: $00
    jr nz, @-$53                                  ; $62BE: $20 $AB

    ld d, b                                       ; $62C0: $50
    add e                                         ; $62C1: $83
    jr jr_01A_62C6                                ; $62C2: $18 $02

    ld [bc], a                                    ; $62C4: $02
    nop                                           ; $62C5: $00

jr_01A_62C6:
    add e                                         ; $62C6: $83
    jr jr_01A_62CB                                ; $62C7: $18 $02

    nop                                           ; $62C9: $00
    nop                                           ; $62CA: $00

jr_01A_62CB:
    ld b, b                                       ; $62CB: $40
    ld [$1A5A], sp                                ; $62CC: $08 $5A $1A
    ld a, [hl-]                                   ; $62CF: $3A
    ld h, a                                       ; $62D0: $67
    ld a, [hl]                                    ; $62D1: $7E
    jr nz, jr_01A_62A6                            ; $62D2: $20 $D2

    inc b                                         ; $62D4: $04
    ld bc, $D1D8                                  ; $62D5: $01 $D8 $D1
    inc de                                        ; $62D8: $13
    db $10                                        ; $62D9: $10
    ld a, [hl]                                    ; $62DA: $7E
    jr nz, @-$2C                                  ; $62DB: $20 $D2

    inc b                                         ; $62DD: $04
    ld bc, $D1F0                                  ; $62DE: $01 $F0 $D1
    inc d                                         ; $62E1: $14
    db $10                                        ; $62E2: $10
    ld a, [hl]                                    ; $62E3: $7E
    jr nz, jr_01A_62B8                            ; $62E4: $20 $D2

    inc b                                         ; $62E6: $04
    ld bc, $D208                                  ; $62E7: $01 $08 $D2
    dec d                                         ; $62EA: $15
    db $10                                        ; $62EB: $10
    ld b, h                                       ; $62EC: $44
    inc bc                                        ; $62ED: $03
    ld h, e                                       ; $62EE: $63
    ld e, d                                       ; $62EF: $5A
    ld a, [de]                                    ; $62F0: $1A
    ld c, e                                       ; $62F1: $4B
    ld h, a                                       ; $62F2: $67
    ld b, b                                       ; $62F3: $40
    ld [$3083], sp                                ; $62F4: $08 $83 $30
    rst $38                                       ; $62F7: $FF
    nop                                           ; $62F8: $00
    nop                                           ; $62F9: $00
    add e                                         ; $62FA: $83
    jr nc, @+$01                                  ; $62FB: $30 $FF

    rst $38                                       ; $62FD: $FF
    nop                                           ; $62FE: $00
    rlca                                          ; $62FF: $07
    nop                                           ; $6300: $00
    add c                                         ; $6301: $81
    ld e, l                                       ; $6302: $5D
    ld b, d                                       ; $6303: $42
    and d                                         ; $6304: $A2
    dec h                                         ; $6305: $25
    and c                                         ; $6306: $A1
    ld [bc], a                                    ; $6307: $02
    ld [hl+], a                                   ; $6308: $22
    sub [hl]                                      ; $6309: $96
    ld b, b                                       ; $630A: $40
    ld a, [$D178]                                 ; $630B: $FA $78 $D1
    ld b, h                                       ; $630E: $44
    dec de                                        ; $630F: $1B
    ld h, e                                       ; $6310: $63
    ld e, d                                       ; $6311: $5A
    ld a, [de]                                    ; $6312: $1A
    ld a, [hl-]                                   ; $6313: $3A
    ld h, a                                       ; $6314: $67
    ld b, b                                       ; $6315: $40
    ld b, b                                       ; $6316: $40
    ld e, d                                       ; $6317: $5A
    ld a, [de]                                    ; $6318: $1A
    ld c, e                                       ; $6319: $4B
    ld h, a                                       ; $631A: $67
    ld b, d                                       ; $631B: $42
    and h                                         ; $631C: $A4
    ld h, $A3                                     ; $631D: $26 $A3
    ld b, b                                       ; $631F: $40
    nop                                           ; $6320: $00
    dec c                                         ; $6321: $0D
    adc l                                         ; $6322: $8D
    ret nc                                        ; $6323: $D0

    sub e                                         ; $6324: $93
    dec b                                         ; $6325: $05
    nop                                           ; $6326: $00
    add c                                         ; $6327: $81
    ld e, l                                       ; $6328: $5D
    dec b                                         ; $6329: $05
    dec b                                         ; $632A: $05

jr_01A_632B:
    ld a, l                                       ; $632B: $7D
    ret nc                                        ; $632C: $D0

    nop                                           ; $632D: $00
    jr nz, jr_01A_632B                            ; $632E: $20 $FB

    ld d, b                                       ; $6330: $50
    ld [hl+], a                                   ; $6331: $22
    dec b                                         ; $6332: $05
    ld b, b                                       ; $6333: $40
    ld b, e                                       ; $6334: $43
    rrca                                          ; $6335: $0F
    inc b                                         ; $6336: $04
    dec b                                         ; $6337: $05
    ld b, $1A                                     ; $6338: $06 $1A
    di                                            ; $633A: $F3
    ld h, e                                       ; $633B: $63
    ld b, e                                       ; $633C: $43
    nop                                           ; $633D: $00
    dec h                                         ; $633E: $25
    and c                                         ; $633F: $A1
    ld bc, $771A                                  ; $6340: $01 $1A $77
    ld h, e                                       ; $6343: $63
    ld b, e                                       ; $6344: $43
    nop                                           ; $6345: $00
    dec h                                         ; $6346: $25
    and c                                         ; $6347: $A1
    ld [$B91A], sp                                ; $6348: $08 $1A $B9
    ld h, e                                       ; $634B: $63
    ld h, l                                       ; $634C: $65
    inc l                                         ; $634D: $2C
    ld b, c                                       ; $634E: $41
    ld c, a                                       ; $634F: $4F
    ld h, h                                       ; $6350: $64
    jr nz, jr_01A_6394                            ; $6351: $20 $41

    ld l, c                                       ; $6353: $69
    ld sp, $6641                                  ; $6354: $31 $41 $66
    ret nz                                        ; $6357: $C0

    ld e, h                                       ; $6358: $5C
    ld hl, $000B                                  ; $6359: $21 $0B $00
    ld [hl-], a                                   ; $635C: $32
    ld a, [de]                                    ; $635D: $1A
    cp h                                          ; $635E: $BC
    ld e, [hl]                                    ; $635F: $5E
    adc l                                         ; $6360: $8D
    ld b, c                                       ; $6361: $41
    ld sp, $341A                                  ; $6362: $31 $1A $34
    ld h, e                                       ; $6365: $63
    ld [hl+], a                                   ; $6366: $22
    adc $40                                       ; $6367: $CE $40

jr_01A_6369:
    nop                                           ; $6369: $00
    add d                                         ; $636A: $82
    rra                                           ; $636B: $1F
    ld [de], a                                    ; $636C: $12
    sub h                                         ; $636D: $94
    ld b, e                                       ; $636E: $43
    rrca                                          ; $636F: $0F
    inc b                                         ; $6370: $04
    dec b                                         ; $6371: $05

jr_01A_6372:
    ld b, $1A                                     ; $6372: $06 $1A
    cp d                                          ; $6374: $BA
    ld h, b                                       ; $6375: $60
    ld b, d                                       ; $6376: $42
    ld b, e                                       ; $6377: $43
    nop                                           ; $6378: $00
    dec h                                         ; $6379: $25
    and c                                         ; $637A: $A1

jr_01A_637B:
    ld [$F31A], sp                                ; $637B: $08 $1A $F3
    ld h, e                                       ; $637E: $63
    sub e                                         ; $637F: $93
    ld h, l                                       ; $6380: $65
    inc l                                         ; $6381: $2C
    ld b, c                                       ; $6382: $41
    ld c, a                                       ; $6383: $4F
    ld h, h                                       ; $6384: $64
    jr nz, @+$43                                  ; $6385: $20 $41

    ld l, c                                       ; $6387: $69
    ld sp, $6641                                  ; $6388: $31 $41 $66
    ret nz                                        ; $638B: $C0

    ld e, h                                       ; $638C: $5C
    ld hl, $000B                                  ; $638D: $21 $0B $00
    nop                                           ; $6390: $00
    rra                                           ; $6391: $1F
    ld [de], a                                    ; $6392: $12
    add d                                         ; $6393: $82

jr_01A_6394:
    ld a, [hl]                                    ; $6394: $7E
    jr nz, jr_01A_6369                            ; $6395: $20 $D2

    inc b                                         ; $6397: $04
    ld bc, $D1D8                                  ; $6398: $01 $D8 $D1
    inc de                                        ; $639B: $13
    db $10                                        ; $639C: $10
    ld a, [hl]                                    ; $639D: $7E
    jr nz, jr_01A_6372                            ; $639E: $20 $D2

    inc b                                         ; $63A0: $04
    ld bc, $D1F0                                  ; $63A1: $01 $F0 $D1
    inc d                                         ; $63A4: $14
    db $10                                        ; $63A5: $10
    ld a, [hl]                                    ; $63A6: $7E
    jr nz, jr_01A_637B                            ; $63A7: $20 $D2

    inc b                                         ; $63A9: $04
    ld bc, $D208                                  ; $63AA: $01 $08 $D2
    dec d                                         ; $63AD: $15
    db $10                                        ; $63AE: $10
    sub h                                         ; $63AF: $94
    ld b, e                                       ; $63B0: $43
    rrca                                          ; $63B1: $0F
    inc b                                         ; $63B2: $04
    dec b                                         ; $63B3: $05
    ld b, $1A                                     ; $63B4: $06 $1A
    cp d                                          ; $63B6: $BA
    ld h, b                                       ; $63B7: $60
    ld b, d                                       ; $63B8: $42
    sub e                                         ; $63B9: $93
    ld h, l                                       ; $63BA: $65
    inc l                                         ; $63BB: $2C
    ld b, c                                       ; $63BC: $41
    ld c, a                                       ; $63BD: $4F
    ld h, h                                       ; $63BE: $64
    jr nz, @+$43                                  ; $63BF: $20 $41

    ld l, c                                       ; $63C1: $69
    ld sp, $6641                                  ; $63C2: $31 $41 $66
    ret nz                                        ; $63C5: $C0

    ld e, h                                       ; $63C6: $5C
    ld hl, $000B                                  ; $63C7: $21 $0B $00
    nop                                           ; $63CA: $00
    rra                                           ; $63CB: $1F
    ld [de], a                                    ; $63CC: $12
    add d                                         ; $63CD: $82
    ld a, [hl]                                    ; $63CE: $7E
    sub a                                         ; $63CF: $97
    ret nc                                        ; $63D0: $D0

    ld bc, $9E02                                  ; $63D1: $01 $02 $9E
    ret nc                                        ; $63D4: $D0

    ld b, $0E                                     ; $63D5: $06 $0E
    ld a, [hl]                                    ; $63D7: $7E
    ret                                           ; $63D8: $C9


    ret nc                                        ; $63D9: $D0

    inc b                                         ; $63DA: $04
    inc bc                                        ; $63DB: $03
    ld d, [hl]                                    ; $63DC: $56
    ret nc                                        ; $63DD: $D0

    inc bc                                        ; $63DE: $03
    ld c, $7E                                     ; $63DF: $0E $7E
    ret                                           ; $63E1: $C9


    ret nc                                        ; $63E2: $D0

    inc bc                                        ; $63E3: $03
    ld [bc], a                                    ; $63E4: $02
    sbc a                                         ; $63E5: $9F
    ret nc                                        ; $63E6: $D0

    ld b, $0F                                     ; $63E7: $06 $0F
    sub h                                         ; $63E9: $94
    ld b, e                                       ; $63EA: $43
    rrca                                          ; $63EB: $0F
    inc b                                         ; $63EC: $04
    dec b                                         ; $63ED: $05
    ld b, $1A                                     ; $63EE: $06 $1A
    cp d                                          ; $63F0: $BA
    ld h, b                                       ; $63F1: $60
    ld b, d                                       ; $63F2: $42
    sub e                                         ; $63F3: $93
    ld h, l                                       ; $63F4: $65
    inc l                                         ; $63F5: $2C
    ld b, c                                       ; $63F6: $41
    ld c, a                                       ; $63F7: $4F

jr_01A_63F8:
    ld h, h                                       ; $63F8: $64
    jr nz, jr_01A_643C                            ; $63F9: $20 $41

    ld l, c                                       ; $63FB: $69
    ld sp, $6641                                  ; $63FC: $31 $41 $66
    ret nz                                        ; $63FF: $C0

    ld e, h                                       ; $6400: $5C

jr_01A_6401:
    ld hl, $000B                                  ; $6401: $21 $0B $00
    nop                                           ; $6404: $00
    rra                                           ; $6405: $1F
    ld [de], a                                    ; $6406: $12
    add d                                         ; $6407: $82
    ld a, [hl]                                    ; $6408: $7E
    sub a                                         ; $6409: $97

jr_01A_640A:
    ret nc                                        ; $640A: $D0

    ld bc, $9E02                                  ; $640B: $01 $02 $9E
    ret nc                                        ; $640E: $D0

    ld b, $0E                                     ; $640F: $06 $0E
    ld a, [hl]                                    ; $6411: $7E
    ret                                           ; $6412: $C9


    ret nc                                        ; $6413: $D0

    inc b                                         ; $6414: $04
    inc bc                                        ; $6415: $03
    ld d, [hl]                                    ; $6416: $56
    ret nc                                        ; $6417: $D0

    inc bc                                        ; $6418: $03
    ld c, $7E                                     ; $6419: $0E $7E
    ret                                           ; $641B: $C9


    ret nc                                        ; $641C: $D0

    inc bc                                        ; $641D: $03
    ld [bc], a                                    ; $641E: $02
    sbc a                                         ; $641F: $9F
    ret nc                                        ; $6420: $D0

    ld b, $0F                                     ; $6421: $06 $0F
    ld a, [hl]                                    ; $6423: $7E
    jr nz, jr_01A_63F8                            ; $6424: $20 $D2

    inc b                                         ; $6426: $04
    ld bc, $D1D8                                  ; $6427: $01 $D8 $D1
    inc de                                        ; $642A: $13
    db $10                                        ; $642B: $10
    ld a, [hl]                                    ; $642C: $7E
    jr nz, jr_01A_6401                            ; $642D: $20 $D2

    inc b                                         ; $642F: $04
    ld bc, $D1F0                                  ; $6430: $01 $F0 $D1
    inc d                                         ; $6433: $14
    db $10                                        ; $6434: $10
    ld a, [hl]                                    ; $6435: $7E
    jr nz, jr_01A_640A                            ; $6436: $20 $D2

    inc b                                         ; $6438: $04
    ld bc, $D208                                  ; $6439: $01 $08 $D2

jr_01A_643C:
    dec d                                         ; $643C: $15
    db $10                                        ; $643D: $10
    sub h                                         ; $643E: $94
    ld b, e                                       ; $643F: $43
    rrca                                          ; $6440: $0F
    inc b                                         ; $6441: $04
    dec b                                         ; $6442: $05
    ld b, $1A                                     ; $6443: $06 $1A
    cp d                                          ; $6445: $BA
    ld h, b                                       ; $6446: $60
    ld b, d                                       ; $6447: $42
    ld [bc], a                                    ; $6448: $02
    dec bc                                        ; $6449: $0B
    dec c                                         ; $644A: $0D
    rla                                           ; $644B: $17
    nop                                           ; $644C: $00
    ld b, l                                       ; $644D: $45
    ld a, [de]                                    ; $644E: $1A
    inc h                                         ; $644F: $24
    ld h, e                                       ; $6450: $63
    ld [bc], a                                    ; $6451: $02
    nop                                           ; $6452: $00
    ld a, [de]                                    ; $6453: $1A
    ld a, [bc]                                    ; $6454: $0A
    ld a, [bc]                                    ; $6455: $0A
    ld b, l                                       ; $6456: $45
    ld a, [de]                                    ; $6457: $1A
    db $DD                                        ; $6458: $DD
    ld h, h                                       ; $6459: $64
    and h                                         ; $645A: $A4
    ld h, $A3                                     ; $645B: $26 $A3
    add b                                         ; $645D: $80
    nop                                           ; $645E: $00
    ld [bc], a                                    ; $645F: $02
    and $D1                                       ; $6460: $E6 $D1
    sub e                                         ; $6462: $93
    dec b                                         ; $6463: $05
    nop                                           ; $6464: $00
    add c                                         ; $6465: $81
    ld e, l                                       ; $6466: $5D
    dec b                                         ; $6467: $05
    dec b                                         ; $6468: $05

jr_01A_6469:
    ld a, l                                       ; $6469: $7D
    ret nc                                        ; $646A: $D0

    nop                                           ; $646B: $00
    jr nz, jr_01A_6469                            ; $646C: $20 $FB

    ld d, b                                       ; $646E: $50
    ld [hl+], a                                   ; $646F: $22
    dec b                                         ; $6470: $05
    ld b, b                                       ; $6471: $40
    ld h, l                                       ; $6472: $65
    dec sp                                        ; $6473: $3B
    ld b, c                                       ; $6474: $41
    ld c, a                                       ; $6475: $4F
    ld h, h                                       ; $6476: $64
    ld a, $41                                     ; $6477: $3E $41
    ld l, c                                       ; $6479: $69
    ld b, a                                       ; $647A: $47
    ld b, c                                       ; $647B: $41
    ld h, [hl]                                    ; $647C: $66
    ret nz                                        ; $647D: $C0

    ld e, h                                       ; $647E: $5C
    ld hl, $000B                                  ; $647F: $21 $0B $00
    ld [hl-], a                                   ; $6482: $32
    ld a, [de]                                    ; $6483: $1A
    cp h                                          ; $6484: $BC
    ld e, [hl]                                    ; $6485: $5E
    adc l                                         ; $6486: $8D
    ld b, c                                       ; $6487: $41
    ld sp, $721A                                  ; $6488: $31 $1A $72
    ld h, h                                       ; $648B: $64
    ld [hl+], a                                   ; $648C: $22
    adc $40                                       ; $648D: $CE $40
    nop                                           ; $648F: $00
    add d                                         ; $6490: $82
    sub h                                         ; $6491: $94
    rra                                           ; $6492: $1F
    ld [de], a                                    ; $6493: $12
    ld b, e                                       ; $6494: $43
    rrca                                          ; $6495: $0F
    inc b                                         ; $6496: $04
    dec b                                         ; $6497: $05
    ld b, $1A                                     ; $6498: $06 $1A
    cp d                                          ; $649A: $BA
    ld h, b                                       ; $649B: $60
    ld b, d                                       ; $649C: $42
    ld [bc], a                                    ; $649D: $02
    dec de                                        ; $649E: $1B
    nop                                           ; $649F: $00
    ld a, [bc]                                    ; $64A0: $0A
    ld a, [bc]                                    ; $64A1: $0A
    ld b, l                                       ; $64A2: $45
    ld a, [de]                                    ; $64A3: $1A
    ld h, d                                       ; $64A4: $62
    ld h, h                                       ; $64A5: $64
    ld [bc], a                                    ; $64A6: $02
    nop                                           ; $64A7: $00
    rla                                           ; $64A8: $17
    add hl, bc                                    ; $64A9: $09
    add hl, bc                                    ; $64AA: $09
    ld b, l                                       ; $64AB: $45
    ld a, [de]                                    ; $64AC: $1A
    ld c, e                                       ; $64AD: $4B
    ld h, l                                       ; $64AE: $65
    and d                                         ; $64AF: $A2
    dec h                                         ; $64B0: $25
    and c                                         ; $64B1: $A1
    db $10                                        ; $64B2: $10
    ld [hl+], a                                   ; $64B3: $22
    sub [hl]                                      ; $64B4: $96
    ld b, b                                       ; $64B5: $40
    ld a, [$D045]                                 ; $64B6: $FA $45 $D0
    ld b, h                                       ; $64B9: $44
    db $D3                                        ; $64BA: $D3
    ld h, h                                       ; $64BB: $64
    ld b, e                                       ; $64BC: $43
    ld a, [bc]                                    ; $64BD: $0A
    nop                                           ; $64BE: $00
    ld h, $A1                                     ; $64BF: $26 $A1
    inc b                                         ; $64C1: $04
    ld a, [de]                                    ; $64C2: $1A
    call nc, $AF64                                ; $64C3: $D4 $64 $AF
    ld h, $A1                                     ; $64C6: $26 $A1
    ld [$1A5A], sp                                ; $64C8: $08 $5A $1A
    ld a, [hl-]                                   ; $64CB: $3A
    ld h, a                                       ; $64CC: $67
    ld b, b                                       ; $64CD: $40
    ld b, b                                       ; $64CE: $40
    ld e, d                                       ; $64CF: $5A
    ld a, [de]                                    ; $64D0: $1A
    ld c, e                                       ; $64D1: $4B
    ld h, a                                       ; $64D2: $67
    ld b, d                                       ; $64D3: $42
    ld e, e                                       ; $64D4: $5B
    ld a, [de]                                    ; $64D5: $1A
    db $E4                                        ; $64D6: $E4
    ld e, e                                       ; $64D7: $5B
    xor [hl]                                      ; $64D8: $AE
    dec h                                         ; $64D9: $25
    and c                                         ; $64DA: $A1
    rst $28                                       ; $64DB: $EF
    ld b, d                                       ; $64DC: $42
    sub e                                         ; $64DD: $93
    dec b                                         ; $64DE: $05
    nop                                           ; $64DF: $00
    add c                                         ; $64E0: $81
    ld e, l                                       ; $64E1: $5D
    dec b                                         ; $64E2: $05
    dec b                                         ; $64E3: $05

jr_01A_64E4:
    sub c                                         ; $64E4: $91
    ret nc                                        ; $64E5: $D0

    nop                                           ; $64E6: $00
    jr nz, jr_01A_64E4                            ; $64E7: $20 $FB

    ld d, b                                       ; $64E9: $50
    ld [hl+], a                                   ; $64EA: $22
    dec b                                         ; $64EB: $05
    ld b, b                                       ; $64EC: $40
    ld h, l                                       ; $64ED: $65
    ld c, d                                       ; $64EE: $4A
    ld b, c                                       ; $64EF: $41
    ld c, a                                       ; $64F0: $4F
    ld h, h                                       ; $64F1: $64
    ld c, h                                       ; $64F2: $4C
    ld b, c                                       ; $64F3: $41
    ld l, c                                       ; $64F4: $69
    ld d, l                                       ; $64F5: $55
    ld b, c                                       ; $64F6: $41
    ld h, [hl]                                    ; $64F7: $66
    ret nz                                        ; $64F8: $C0

    ld e, h                                       ; $64F9: $5C
    ld hl, $000B                                  ; $64FA: $21 $0B $00
    ld [hl-], a                                   ; $64FD: $32
    ld a, [de]                                    ; $64FE: $1A
    cp h                                          ; $64FF: $BC
    ld e, [hl]                                    ; $6500: $5E
    adc l                                         ; $6501: $8D
    ld b, c                                       ; $6502: $41
    ld sp, $ED1A                                  ; $6503: $31 $1A $ED
    ld h, h                                       ; $6506: $64
    ld [hl+], a                                   ; $6507: $22
    adc $40                                       ; $6508: $CE $40
    nop                                           ; $650A: $00
    add d                                         ; $650B: $82
    sub h                                         ; $650C: $94
    rra                                           ; $650D: $1F
    ld [de], a                                    ; $650E: $12
    ld b, e                                       ; $650F: $43
    rrca                                          ; $6510: $0F
    inc b                                         ; $6511: $04
    dec b                                         ; $6512: $05
    ld b, $1A                                     ; $6513: $06 $1A
    cp d                                          ; $6515: $BA
    ld h, b                                       ; $6516: $60
    ld b, d                                       ; $6517: $42
    ld [bc], a                                    ; $6518: $02
    rla                                           ; $6519: $17
    nop                                           ; $651A: $00
    add hl, bc                                    ; $651B: $09
    add hl, bc                                    ; $651C: $09
    ld b, l                                       ; $651D: $45
    ld a, [de]                                    ; $651E: $1A
    db $DD                                        ; $651F: $DD
    ld h, h                                       ; $6520: $64
    ld [bc], a                                    ; $6521: $02
    nop                                           ; $6522: $00
    inc de                                        ; $6523: $13
    add hl, bc                                    ; $6524: $09
    dec d                                         ; $6525: $15
    ld b, l                                       ; $6526: $45
    ld a, [de]                                    ; $6527: $1A
    rst $10                                       ; $6528: $D7
    ld h, l                                       ; $6529: $65
    ld [bc], a                                    ; $652A: $02
    rlca                                          ; $652B: $07
    rrca                                          ; $652C: $0F
    dec d                                         ; $652D: $15
    nop                                           ; $652E: $00
    ld b, l                                       ; $652F: $45
    ld a, [de]                                    ; $6530: $1A
    push de                                       ; $6531: $D5
    ld h, c                                       ; $6532: $61
    and d                                         ; $6533: $A2
    dec h                                         ; $6534: $25
    and c                                         ; $6535: $A1
    ld [$9622], sp                                ; $6536: $08 $22 $96
    ld b, b                                       ; $6539: $40
    ld a, [$D13E]                                 ; $653A: $FA $3E $D1
    ld b, h                                       ; $653D: $44
    ld c, d                                       ; $653E: $4A
    ld h, l                                       ; $653F: $65
    ld e, d                                       ; $6540: $5A
    ld a, [de]                                    ; $6541: $1A
    ld a, [hl-]                                   ; $6542: $3A
    ld h, a                                       ; $6543: $67
    ld b, b                                       ; $6544: $40
    ld b, b                                       ; $6545: $40
    ld e, d                                       ; $6546: $5A
    ld a, [de]                                    ; $6547: $1A
    ld c, e                                       ; $6548: $4B
    ld h, a                                       ; $6549: $67
    ld b, d                                       ; $654A: $42
    sub e                                         ; $654B: $93
    dec b                                         ; $654C: $05
    nop                                           ; $654D: $00
    add c                                         ; $654E: $81
    ld e, l                                       ; $654F: $5D
    dec b                                         ; $6550: $05
    dec b                                         ; $6551: $05

jr_01A_6552:
    ld a, l                                       ; $6552: $7D
    ret nc                                        ; $6553: $D0

    nop                                           ; $6554: $00
    jr nz, jr_01A_6552                            ; $6555: $20 $FB

    ld d, b                                       ; $6557: $50
    ld [hl+], a                                   ; $6558: $22
    dec b                                         ; $6559: $05
    ld b, b                                       ; $655A: $40
    ld b, e                                       ; $655B: $43
    rrca                                          ; $655C: $0F
    inc b                                         ; $655D: $04
    dec b                                         ; $655E: $05
    ld b, $1A                                     ; $655F: $06 $1A
    sub h                                         ; $6561: $94
    ld h, l                                       ; $6562: $65
    ld b, e                                       ; $6563: $43
    nop                                           ; $6564: $00
    dec h                                         ; $6565: $25
    and c                                         ; $6566: $A1
    inc b                                         ; $6567: $04
    ld a, [de]                                    ; $6568: $1A
    sub h                                         ; $6569: $94
    ld h, l                                       ; $656A: $65
    ld h, l                                       ; $656B: $65
    ld e, c                                       ; $656C: $59
    ld b, c                                       ; $656D: $41
    ld c, a                                       ; $656E: $4F
    ld h, h                                       ; $656F: $64
    ld e, d                                       ; $6570: $5A
    ld b, c                                       ; $6571: $41
    ld l, c                                       ; $6572: $69
    ld h, a                                       ; $6573: $67
    ld b, c                                       ; $6574: $41
    ld h, [hl]                                    ; $6575: $66
    ret nz                                        ; $6576: $C0

    ld e, h                                       ; $6577: $5C
    ld hl, $000B                                  ; $6578: $21 $0B $00
    ld [hl-], a                                   ; $657B: $32
    ld a, [de]                                    ; $657C: $1A
    cp h                                          ; $657D: $BC
    ld e, [hl]                                    ; $657E: $5E
    adc l                                         ; $657F: $8D
    ld b, c                                       ; $6580: $41
    ld sp, $5B1A                                  ; $6581: $31 $1A $5B
    ld h, l                                       ; $6584: $65
    ld [hl+], a                                   ; $6585: $22
    adc $40                                       ; $6586: $CE $40
    nop                                           ; $6588: $00
    add d                                         ; $6589: $82
    sub h                                         ; $658A: $94
    ld b, e                                       ; $658B: $43
    rrca                                          ; $658C: $0F
    inc b                                         ; $658D: $04
    dec b                                         ; $658E: $05
    ld b, $1A                                     ; $658F: $06 $1A
    cp d                                          ; $6591: $BA
    ld h, b                                       ; $6592: $60
    ld b, d                                       ; $6593: $42
    sub e                                         ; $6594: $93
    ld h, l                                       ; $6595: $65
    ld e, c                                       ; $6596: $59
    ld b, c                                       ; $6597: $41
    ld c, a                                       ; $6598: $4F
    ld h, h                                       ; $6599: $64
    ld e, d                                       ; $659A: $5A
    ld b, c                                       ; $659B: $41
    ld l, c                                       ; $659C: $69
    ld h, a                                       ; $659D: $67
    ld b, c                                       ; $659E: $41
    ld h, [hl]                                    ; $659F: $66
    ret nz                                        ; $65A0: $C0

    ld e, h                                       ; $65A1: $5C
    ld hl, $000B                                  ; $65A2: $21 $0B $00
    ld a, [hl]                                    ; $65A5: $7E
    ld d, h                                       ; $65A6: $54
    pop de                                        ; $65A7: $D1
    inc b                                         ; $65A8: $04
    inc bc                                        ; $65A9: $03
    ld [hl], b                                    ; $65AA: $70
    pop de                                        ; $65AB: $D1
    rrca                                          ; $65AC: $0F
    ld [$547E], sp                                ; $65AD: $08 $7E $54
    pop de                                        ; $65B0: $D1
    inc b                                         ; $65B1: $04
    ld [bc], a                                    ; $65B2: $02
    cp b                                          ; $65B3: $B8
    pop de                                        ; $65B4: $D1
    ld [de], a                                    ; $65B5: $12
    ld [$8200], sp                                ; $65B6: $08 $00 $82
    sub h                                         ; $65B9: $94
    rra                                           ; $65BA: $1F
    ld [de], a                                    ; $65BB: $12
    ld b, e                                       ; $65BC: $43
    rrca                                          ; $65BD: $0F
    inc b                                         ; $65BE: $04
    dec b                                         ; $65BF: $05
    ld b, $1A                                     ; $65C0: $06 $1A
    cp d                                          ; $65C2: $BA
    ld h, b                                       ; $65C3: $60
    ld b, d                                       ; $65C4: $42
    ld [bc], a                                    ; $65C5: $02
    inc de                                        ; $65C6: $13
    nop                                           ; $65C7: $00
    dec d                                         ; $65C8: $15
    add hl, bc                                    ; $65C9: $09
    ld b, l                                       ; $65CA: $45
    ld a, [de]                                    ; $65CB: $1A
    ld c, e                                       ; $65CC: $4B
    ld h, l                                       ; $65CD: $65
    ld [bc], a                                    ; $65CE: $02
    ld b, $03                                     ; $65CF: $06 $03
    ld [bc], a                                    ; $65D1: $02
    dec bc                                        ; $65D2: $0B
    ld b, l                                       ; $65D3: $45
    ld a, [de]                                    ; $65D4: $1A
    or a                                          ; $65D5: $B7
    ld h, [hl]                                    ; $65D6: $66
    sub e                                         ; $65D7: $93
    dec b                                         ; $65D8: $05
    nop                                           ; $65D9: $00
    add c                                         ; $65DA: $81
    ld e, l                                       ; $65DB: $5D
    dec b                                         ; $65DC: $05
    dec b                                         ; $65DD: $05

jr_01A_65DE:
    ld l, c                                       ; $65DE: $69
    ret nc                                        ; $65DF: $D0

    nop                                           ; $65E0: $00
    jr nz, jr_01A_65DE                            ; $65E1: $20 $FB

    ld d, b                                       ; $65E3: $50
    ld [hl+], a                                   ; $65E4: $22
    dec b                                         ; $65E5: $05
    ld b, b                                       ; $65E6: $40
    ld b, e                                       ; $65E7: $43
    rrca                                          ; $65E8: $0F
    inc b                                         ; $65E9: $04
    dec b                                         ; $65EA: $05
    ld b, $1A                                     ; $65EB: $06 $1A
    ld c, [hl]                                    ; $65ED: $4E
    ld h, [hl]                                    ; $65EE: $66
    ld b, e                                       ; $65EF: $43
    ld [$2500], sp                                ; $65F0: $08 $00 $25
    and c                                         ; $65F3: $A1
    stop                                          ; $65F4: $10 $00
    ld h, $A1                                     ; $65F6: $26 $A1
    ld [$4E1A], sp                                ; $65F8: $08 $1A $4E
    ld h, [hl]                                    ; $65FB: $66
    ld h, l                                       ; $65FC: $65
    ld l, b                                       ; $65FD: $68
    ld b, c                                       ; $65FE: $41
    ld c, a                                       ; $65FF: $4F
    ld h, h                                       ; $6600: $64
    ld l, h                                       ; $6601: $6C
    ld b, c                                       ; $6602: $41
    ld h, [hl]                                    ; $6603: $66
    ret nz                                        ; $6604: $C0

    ld e, h                                       ; $6605: $5C
    ld hl, $000B                                  ; $6606: $21 $0B $00
    ld b, e                                       ; $6609: $43
    nop                                           ; $660A: $00
    ld h, $A1                                     ; $660B: $26 $A1
    inc b                                         ; $660D: $04
    ld a, [de]                                    ; $660E: $1A
    ld a, [hl+]                                   ; $660F: $2A
    ld h, [hl]                                    ; $6610: $66
    ld l, e                                       ; $6611: $6B
    inc bc                                        ; $6612: $03
    dec c                                         ; $6613: $0D
    jr nc, jr_01A_6663                            ; $6614: $30 $4D

    nop                                           ; $6616: $00
    add b                                         ; $6617: $80
    nop                                           ; $6618: $00
    dec b                                         ; $6619: $05
    ld [bc], a                                    ; $661A: $02
    db $ED                                        ; $661B: $ED
    ld h, e                                       ; $661C: $63
    ld b, $0F                                     ; $661D: $06 $0F
    ld [hl-], a                                   ; $661F: $32
    pop de                                        ; $6620: $D1
    nop                                           ; $6621: $00
    ld de, $72A1                                  ; $6622: $11 $A1 $72
    ld a, [de]                                    ; $6625: $1A
    ld b, l                                       ; $6626: $45
    ld h, [hl]                                    ; $6627: $66
    dec bc                                        ; $6628: $0B
    ld [bc], a                                    ; $6629: $02
    ld [hl-], a                                   ; $662A: $32
    ld a, [de]                                    ; $662B: $1A
    cp h                                          ; $662C: $BC
    ld e, [hl]                                    ; $662D: $5E
    adc l                                         ; $662E: $8D
    ld b, c                                       ; $662F: $41
    ld sp, $E71A                                  ; $6630: $31 $1A $E7
    ld h, l                                       ; $6633: $65
    ld [hl+], a                                   ; $6634: $22
    adc $40                                       ; $6635: $CE $40
    nop                                           ; $6637: $00
    add d                                         ; $6638: $82
    sub h                                         ; $6639: $94
    rra                                           ; $663A: $1F
    ld [de], a                                    ; $663B: $12
    ld b, e                                       ; $663C: $43
    rrca                                          ; $663D: $0F
    inc b                                         ; $663E: $04
    dec b                                         ; $663F: $05
    ld b, $1A                                     ; $6640: $06 $1A
    cp d                                          ; $6642: $BA
    ld h, b                                       ; $6643: $60
    ld b, d                                       ; $6644: $42
    inc d                                         ; $6645: $14
    ld de, $72A1                                  ; $6646: $11 $A1 $72
    ld e, e                                       ; $6649: $5B
    ld a, [de]                                    ; $664A: $1A
    ld a, [bc]                                    ; $664B: $0A

Call_01A_664C:
    ld e, h                                       ; $664C: $5C
    ld b, d                                       ; $664D: $42
    sub e                                         ; $664E: $93
    ld h, l                                       ; $664F: $65
    ld l, b                                       ; $6650: $68
    ld b, c                                       ; $6651: $41
    ld c, a                                       ; $6652: $4F
    ld h, h                                       ; $6653: $64
    ld l, h                                       ; $6654: $6C
    ld b, c                                       ; $6655: $41

Jump_01A_6656:
    ld h, [hl]                                    ; $6656: $66
    ret nz                                        ; $6657: $C0

    ld e, h                                       ; $6658: $5C
    ld hl, $000B                                  ; $6659: $21 $0B $00
    nop                                           ; $665C: $00
    add d                                         ; $665D: $82
    rra                                           ; $665E: $1F
    ld [de], a                                    ; $665F: $12
    ld a, [hl]                                    ; $6660: $7E
    ld b, [hl]                                    ; $6661: $46
    pop de                                        ; $6662: $D1

jr_01A_6663:
    inc b                                         ; $6663: $04
    ld [bc], a                                    ; $6664: $02
    ld e, $D1                                     ; $6665: $1E $D1
    ld c, $06                                     ; $6667: $0E $06
    ld a, [hl]                                    ; $6669: $7E
    ld b, [hl]                                    ; $666A: $46
    pop de                                        ; $666B: $D1
    inc b                                         ; $666C: $04
    ld [bc], a                                    ; $666D: $02
    or $D0                                        ; $666E: $F6 $D0
    inc c                                         ; $6670: $0C
    ld b, $7E                                     ; $6671: $06 $7E
    db $10                                        ; $6673: $10
    ret nc                                        ; $6674: $D0

    inc b                                         ; $6675: $04
    ld [bc], a                                    ; $6676: $02
    cp d                                          ; $6677: $BA
    ret nc                                        ; $6678: $D0

    add hl, bc                                    ; $6679: $09
    ld b, $7E                                     ; $667A: $06 $7E
    ld e, d                                       ; $667C: $5A
    pop de                                        ; $667D: $D1
    inc b                                         ; $667E: $04
    ld bc, $D0E2                                  ; $667F: $01 $E2 $D0
    dec bc                                        ; $6682: $0B
    ld b, $94                                     ; $6683: $06 $94
    ld b, e                                       ; $6685: $43
    rrca                                          ; $6686: $0F
    inc b                                         ; $6687: $04
    dec b                                         ; $6688: $05
    ld b, $1A                                     ; $6689: $06 $1A
    cp d                                          ; $668B: $BA
    ld h, b                                       ; $668C: $60
    ld b, d                                       ; $668D: $42
    ld c, e                                       ; $668E: $4B
    inc b                                         ; $668F: $04
    ld a, [de]                                    ; $6690: $1A
    ld b, $00                                     ; $6691: $06 $00
    and e                                         ; $6693: $A3
    ld h, [hl]                                    ; $6694: $66
    rst $38                                       ; $6695: $FF
    sub [hl]                                      ; $6696: $96
    ld a, [de]                                    ; $6697: $1A
    adc [hl]                                      ; $6698: $8E
    ld h, [hl]                                    ; $6699: $66
    ld [bc], a                                    ; $669A: $02
    inc bc                                        ; $669B: $03
    ld b, $0B                                     ; $669C: $06 $0B
    ld [bc], a                                    ; $669E: $02
    ld b, l                                       ; $669F: $45
    ld a, [de]                                    ; $66A0: $1A
    rst $10                                       ; $66A1: $D7
    ld h, l                                       ; $66A2: $65
    ld l, a                                       ; $66A3: $6F
    rrca                                          ; $66A4: $0F
    rra                                           ; $66A5: $1F
    nop                                           ; $66A6: $00
    ld b, b                                       ; $66A7: $40
    ld [$0F79], sp                                ; $66A8: $08 $79 $0F
    rlca                                          ; $66AB: $07
    nop                                           ; $66AC: $00
    ld l, e                                       ; $66AD: $6B
    ld c, d                                       ; $66AE: $4A
    add hl, bc                                    ; $66AF: $09
    nop                                           ; $66B0: $00
    ld a, [de]                                    ; $66B1: $1A
    ld c, h                                       ; $66B2: $4C
    ld h, a                                       ; $66B3: $67
    dec bc                                        ; $66B4: $0B
    inc bc                                        ; $66B5: $03
    ld b, d                                       ; $66B6: $42
    sub e                                         ; $66B7: $93
    dec b                                         ; $66B8: $05
    nop                                           ; $66B9: $00
    add c                                         ; $66BA: $81
    ld e, l                                       ; $66BB: $5D
    dec b                                         ; $66BC: $05
    dec b                                         ; $66BD: $05

jr_01A_66BE:
    inc a                                         ; $66BE: $3C
    ret nc                                        ; $66BF: $D0

    nop                                           ; $66C0: $00
    jr nz, jr_01A_66BE                            ; $66C1: $20 $FB

    ld d, b                                       ; $66C3: $50
    ld [hl+], a                                   ; $66C4: $22
    dec b                                         ; $66C5: $05
    ld b, b                                       ; $66C6: $40
    xor h                                         ; $66C7: $AC
    or d                                          ; $66C8: $B2
    and d                                         ; $66C9: $A2
    ld bc, $7765                                  ; $66CA: $01 $65 $77
    ld b, c                                       ; $66CD: $41
    ld c, a                                       ; $66CE: $4F
    ld h, h                                       ; $66CF: $64
    ld [hl], l                                    ; $66D0: $75
    ld b, c                                       ; $66D1: $41
    ld h, [hl]                                    ; $66D2: $66
    ret nz                                        ; $66D3: $C0

    ld e, h                                       ; $66D4: $5C
    ld hl, $0205                                  ; $66D5: $21 $05 $02
    dec b                                         ; $66D8: $05
    ld h, h                                       ; $66D9: $64
    dec b                                         ; $66DA: $05
    dec b                                         ; $66DB: $05
    inc a                                         ; $66DC: $3C
    ret nc                                        ; $66DD: $D0

    nop                                           ; $66DE: $00
    ld de, $73A4                                  ; $66DF: $11 $A4 $73
    ld a, [de]                                    ; $66E2: $1A
    inc l                                         ; $66E3: $2C
    ld h, a                                       ; $66E4: $67
    dec b                                         ; $66E5: $05
    inc bc                                        ; $66E6: $03
    ld l, e                                       ; $66E7: $6B
    ld c, d                                       ; $66E8: $4A
    dec b                                         ; $66E9: $05
    dec bc                                        ; $66EA: $0B
    ld a, [hl]                                    ; $66EB: $7E
    ret nc                                        ; $66EC: $D0

    ld [$831A], sp                                ; $66ED: $08 $1A $83
    ld h, a                                       ; $66F0: $67
    ld [hl+], a                                   ; $66F1: $22
    dec b                                         ; $66F2: $05
    ld b, b                                       ; $66F3: $40
    ld l, e                                       ; $66F4: $6B
    ld [$600D], sp                                ; $66F5: $08 $0D $60
    ld c, l                                       ; $66F8: $4D
    nop                                           ; $66F9: $00
    add b                                         ; $66FA: $80
    nop                                           ; $66FB: $00
    ld l, e                                       ; $66FC: $6B
    jr z, jr_01A_670A                             ; $66FD: $28 $0B

    jr nc, jr_01A_6763                            ; $66FF: $30 $62

    add b                                         ; $6701: $80
    add b                                         ; $6702: $80
    nop                                           ; $6703: $00
    dec bc                                        ; $6704: $0B
    nop                                           ; $6705: $00
    ld [hl-], a                                   ; $6706: $32
    ld a, [de]                                    ; $6707: $1A
    cp h                                          ; $6708: $BC
    ld e, [hl]                                    ; $6709: $5E

jr_01A_670A:
    adc l                                         ; $670A: $8D
    ld b, c                                       ; $670B: $41
    ld sp, $C71A                                  ; $670C: $31 $1A $C7
    ld h, [hl]                                    ; $670F: $66

jr_01A_6710:
    ld [hl+], a                                   ; $6710: $22
    adc $40                                       ; $6711: $CE $40
    nop                                           ; $6713: $00
    add d                                         ; $6714: $82
    rra                                           ; $6715: $1F
    ld [de], a                                    ; $6716: $12
    sub h                                         ; $6717: $94
    ld b, e                                       ; $6718: $43
    rrca                                          ; $6719: $0F
    inc b                                         ; $671A: $04
    dec b                                         ; $671B: $05
    ld b, $1A                                     ; $671C: $06 $1A
    cp d                                          ; $671E: $BA
    ld h, b                                       ; $671F: $60
    ld b, e                                       ; $6720: $43
    rrca                                          ; $6721: $0F
    inc b                                         ; $6722: $04
    dec b                                         ; $6723: $05
    dec b                                         ; $6724: $05
    ld a, [de]                                    ; $6725: $1A
    add hl, hl                                    ; $6726: $29
    ld h, a                                       ; $6727: $67
    ld b, d                                       ; $6728: $42
    dec bc                                        ; $6729: $0B
    ld [bc], a                                    ; $672A: $02
    ld b, d                                       ; $672B: $42
    xor c                                         ; $672C: $A9
    ld b, $00                                     ; $672D: $06 $00
    ld e, e                                       ; $672F: $5B
    ld a, [de]                                    ; $6730: $1A
    adc h                                         ; $6731: $8C
    ld e, h                                       ; $6732: $5C
    ld e, a                                       ; $6733: $5F
    ld e, d                                       ; $6734: $5A
    ld a, [de]                                    ; $6735: $1A
    ld a, [hl-]                                   ; $6736: $3A
    ld h, a                                       ; $6737: $67
    add hl, de                                    ; $6738: $19
    ld b, d                                       ; $6739: $42
    add e                                         ; $673A: $83
    ld bc, $0200                                  ; $673B: $01 $00 $02
    ld bc, $0002                                  ; $673E: $01 $02 $00

jr_01A_6741:
    ld [bc], a                                    ; $6741: $02
    nop                                           ; $6742: $00
    rst $38                                       ; $6743: $FF
    ld [bc], a                                    ; $6744: $02
    rst $38                                       ; $6745: $FF
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    ld b, [hl]                                    ; $6748: $46
    ld a, [hl-]                                   ; $6749: $3A
    ld h, a                                       ; $674A: $67
    ld b, d                                       ; $674B: $42
    dec d                                         ; $674C: $15
    jr nz, jr_01A_679C                            ; $674D: $20 $4D

    ld d, b                                       ; $674F: $50
    jr nz, jr_01A_6772                            ; $6750: $20 $20

    or l                                          ; $6752: $B5
    ld d, b                                       ; $6753: $50
    jr nz, jr_01A_6776                            ; $6754: $20 $20

    ld c, l                                       ; $6756: $4D
    ld d, b                                       ; $6757: $50
    db $10                                        ; $6758: $10
    jr nz, jr_01A_6710                            ; $6759: $20 $B5

    ld d, b                                       ; $675B: $50
    nop                                           ; $675C: $00
    nop                                           ; $675D: $00
    ld e, e                                       ; $675E: $5B
    ld a, [de]                                    ; $675F: $1A
    ld de, $625D                                  ; $6760: $11 $5D $62

jr_01A_6763:
    ld bc, $1A5B                                  ; $6763: $01 $5B $1A
    xor d                                         ; $6766: $AA

jr_01A_6767:
    ld e, l                                       ; $6767: $5D
    ld h, d                                       ; $6768: $62
    ld [bc], a                                    ; $6769: $02
    ld e, e                                       ; $676A: $5B
    ld a, [de]                                    ; $676B: $1A
    ld [$625D], a                                 ; $676C: $EA $5D $62
    inc bc                                        ; $676F: $03
    ld b, b                                       ; $6770: $40
    ld h, b                                       ; $6771: $60

jr_01A_6772:
    ld e, e                                       ; $6772: $5B
    ld a, [de]                                    ; $6773: $1A
    add h                                         ; $6774: $84
    ld e, [hl]                                    ; $6775: $5E

jr_01A_6776:
    ld h, d                                       ; $6776: $62
    inc b                                         ; $6777: $04
    ld sp, $C71A                                  ; $6778: $31 $1A $C7

jr_01A_677B:
    ld h, a                                       ; $677B: $67
    ld [hl+], a                                   ; $677C: $22
    adc $40                                       ; $677D: $CE $40
    ld b, l                                       ; $677F: $45
    ld a, [de]                                    ; $6780: $1A
    adc b                                         ; $6781: $88
    ld e, a                                       ; $6782: $5F

jr_01A_6783:
    dec d                                         ; $6783: $15
    jr nz, jr_01A_6741                            ; $6784: $20 $BB

    ld a, h                                       ; $6786: $7C
    db $10                                        ; $6787: $10
    jr nz, jr_01A_67C5                            ; $6788: $20 $3B

    ld a, h                                       ; $678A: $7C
    jr c, @+$22                                   ; $678B: $38 $20

    cp e                                          ; $678D: $BB
    ld a, h                                       ; $678E: $7C
    nop                                           ; $678F: $00
    nop                                           ; $6790: $00
    ld h, d                                       ; $6791: $62
    ld bc, $2015                                  ; $6792: $01 $15 $20
    cp e                                          ; $6795: $BB
    ld a, h                                       ; $6796: $7C
    stop                                          ; $6797: $10 $00
    ld h, d                                       ; $6799: $62
    ld [bc], a                                    ; $679A: $02

jr_01A_679B:
    dec d                                         ; $679B: $15

jr_01A_679C:
    jr nz, jr_01A_67E9                            ; $679C: $20 $4B

    ld a, h                                       ; $679E: $7C
    db $10                                        ; $679F: $10
    jr nz, jr_01A_6767                            ; $67A0: $20 $C5

    ld a, h                                       ; $67A2: $7C
    ld b, b                                       ; $67A3: $40
    jr nz, jr_01A_67A7                            ; $67A4: $20 $01

    ld a, l                                       ; $67A6: $7D

jr_01A_67A7:
    inc b                                         ; $67A7: $04
    jr nz, jr_01A_6783                            ; $67A8: $20 $D9

    ld a, h                                       ; $67AA: $7C
    inc b                                         ; $67AB: $04
    jr nz, jr_01A_679B                            ; $67AC: $20 $ED

    ld a, h                                       ; $67AE: $7C
    inc b                                         ; $67AF: $04
    jr nz, @-$43                                  ; $67B0: $20 $BB

    ld a, h                                       ; $67B2: $7C
    nop                                           ; $67B3: $00
    nop                                           ; $67B4: $00
    ld h, d                                       ; $67B5: $62
    inc bc                                        ; $67B6: $03
    ld b, b                                       ; $67B7: $40
    ld h, b                                       ; $67B8: $60
    dec d                                         ; $67B9: $15
    jr nz, jr_01A_67F7                            ; $67BA: $20 $3B

    ld a, h                                       ; $67BC: $7C
    db $10                                        ; $67BD: $10
    jr nz, jr_01A_677B                            ; $67BE: $20 $BB

    ld a, h                                       ; $67C0: $7C
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    ld h, d                                       ; $67C3: $62
    inc b                                         ; $67C4: $04

jr_01A_67C5:
    add hl, de                                    ; $67C5: $19
    ld b, d                                       ; $67C6: $42
    sub e                                         ; $67C7: $93
    ld h, l                                       ; $67C8: $65
    ld [hl], a                                    ; $67C9: $77
    ld b, c                                       ; $67CA: $41

jr_01A_67CB:
    ld c, a                                       ; $67CB: $4F
    ld h, h                                       ; $67CC: $64
    ld [hl], l                                    ; $67CD: $75
    ld b, c                                       ; $67CE: $41
    ld h, [hl]                                    ; $67CF: $66
    ret nz                                        ; $67D0: $C0

    ld e, h                                       ; $67D1: $5C
    ld hl, $0005                                  ; $67D2: $21 $05 $00
    ld l, e                                       ; $67D5: $6B
    ld c, d                                       ; $67D6: $4A
    dec b                                         ; $67D7: $05
    dec b                                         ; $67D8: $05
    ld e, a                                       ; $67D9: $5F
    ret nc                                        ; $67DA: $D0

    nop                                           ; $67DB: $00
    ld a, [de]                                    ; $67DC: $1A
    ld sp, hl                                     ; $67DD: $F9
    ld h, a                                       ; $67DE: $67
    ld [hl+], a                                   ; $67DF: $22
    dec b                                         ; $67E0: $05
    ld b, b                                       ; $67E1: $40
    dec bc                                        ; $67E2: $0B
    nop                                           ; $67E3: $00
    add d                                         ; $67E4: $82
    rra                                           ; $67E5: $1F
    ld [de], a                                    ; $67E6: $12
    sub h                                         ; $67E7: $94
    ld e, d                                       ; $67E8: $5A

jr_01A_67E9:
    ld a, [de]                                    ; $67E9: $1A
    ld a, [hl-]                                   ; $67EA: $3A
    ld h, a                                       ; $67EB: $67
    ld h, b                                       ; $67EC: $60
    ld bc, $0F6E                                  ; $67ED: $01 $6E $0F
    rst $38                                       ; $67F0: $FF
    ld a, a                                       ; $67F1: $7F
    halt                                          ; $67F2: $76
    jr nz, jr_01A_6804                            ; $67F3: $20 $0F

    ld b, l                                       ; $67F5: $45
    ld a, [de]                                    ; $67F6: $1A

jr_01A_67F7:
    dec bc                                        ; $67F7: $0B
    ld l, b                                       ; $67F8: $68
    dec d                                         ; $67F9: $15

jr_01A_67FA:
    jr nz, jr_01A_6859                            ; $67FA: $20 $5D

    ld d, b                                       ; $67FC: $50
    ld d, b                                       ; $67FD: $50
    nop                                           ; $67FE: $00
    ld d, [hl]                                    ; $67FF: $56
    ld bc, $0242                                  ; $6800: $01 $42 $02
    rlca                                          ; $6803: $07

jr_01A_6804:
    ld [$1B00], sp                                ; $6804: $08 $00 $1B
    ld b, l                                       ; $6807: $45
    ld a, [de]                                    ; $6808: $1A
    add d                                         ; $6809: $82
    ld h, b                                       ; $680A: $60
    dec b                                         ; $680B: $05
    nop                                           ; $680C: $00
    add c                                         ; $680D: $81
    ld e, l                                       ; $680E: $5D
    add hl, bc                                    ; $680F: $09
    ld bc, $D01D                                  ; $6810: $01 $1D $D0
    nop                                           ; $6813: $00
    jr nz, jr_01A_67CB                            ; $6814: $20 $B5

    ld d, b                                       ; $6816: $50
    ld [hl+], a                                   ; $6817: $22
    dec b                                         ; $6818: $05
    ld b, b                                       ; $6819: $40
    ld bc, $060A                                  ; $681A: $01 $0A $06
    ld b, e                                       ; $681D: $43
    rrca                                          ; $681E: $0F
    inc b                                         ; $681F: $04
    dec b                                         ; $6820: $05
    ld b, $14                                     ; $6821: $06 $14
    ld [hl], h                                    ; $6823: $74
    ld l, a                                       ; $6824: $6F
    rlca                                          ; $6825: $07
    nop                                           ; $6826: $00
    ld l, e                                       ; $6827: $6B
    ld c, d                                       ; $6828: $4A
    add hl, bc                                    ; $6829: $09
    nop                                           ; $682A: $00
    jr nz, jr_01A_67FA                            ; $682B: $20 $CD

    ld c, a                                       ; $682D: $4F
    ld l, [hl]                                    ; $682E: $6E
    rrca                                          ; $682F: $0F
    rst $38                                       ; $6830: $FF
    ld a, a                                       ; $6831: $7F
    halt                                          ; $6832: $76
    jr nz, jr_01A_6844                            ; $6833: $20 $0F

    ld b, l                                       ; $6835: $45
    inc d                                         ; $6836: $14
    sub l                                         ; $6837: $95
    ld l, d                                       ; $6838: $6A
    and h                                         ; $6839: $A4
    daa                                           ; $683A: $27
    and e                                         ; $683B: $A3
    ld bc, $0200                                  ; $683C: $01 $00 $02
    jp $93D0                                      ; $683F: $C3 $D0 $93


    ld h, l                                       ; $6842: $65
    add [hl]                                      ; $6843: $86

jr_01A_6844:
    ld b, c                                       ; $6844: $41
    ld c, a                                       ; $6845: $4F
    ld h, [hl]                                    ; $6846: $66
    ret nz                                        ; $6847: $C0

    ld e, h                                       ; $6848: $5C
    ld hl, $0F6F                                  ; $6849: $21 $6F $0F
    rst $38                                       ; $684C: $FF
    ld a, a                                       ; $684D: $7F
    dec b                                         ; $684E: $05
    nop                                           ; $684F: $00
    add c                                         ; $6850: $81
    ld e, l                                       ; $6851: $5D
    dec b                                         ; $6852: $05
    dec b                                         ; $6853: $05

jr_01A_6854:
    ld l, c                                       ; $6854: $69
    ret nc                                        ; $6855: $D0

    nop                                           ; $6856: $00
    jr nz, jr_01A_6854                            ; $6857: $20 $FB

jr_01A_6859:
    ld d, b                                       ; $6859: $50
    ld [hl+], a                                   ; $685A: $22
    dec b                                         ; $685B: $05
    ld b, b                                       ; $685C: $40
    ld b, [hl]                                    ; $685D: $46
    ld a, b                                       ; $685E: $78
    ld l, b                                       ; $685F: $68
    sub e                                         ; $6860: $93
    dec b                                         ; $6861: $05
    nop                                           ; $6862: $00
    add c                                         ; $6863: $81
    ld e, l                                       ; $6864: $5D
    dec b                                         ; $6865: $05
    dec b                                         ; $6866: $05

jr_01A_6867:
    ld l, c                                       ; $6867: $69
    ret nc                                        ; $6868: $D0

    nop                                           ; $6869: $00
    jr nz, jr_01A_6867                            ; $686A: $20 $FB

    ld d, b                                       ; $686C: $50
    ld [hl+], a                                   ; $686D: $22
    dec b                                         ; $686E: $05
    ld b, b                                       ; $686F: $40
    ld h, l                                       ; $6870: $65
    add [hl]                                      ; $6871: $86
    ld b, c                                       ; $6872: $41
    ld c, a                                       ; $6873: $4F
    ld h, [hl]                                    ; $6874: $66
    ret nz                                        ; $6875: $C0

    ld e, h                                       ; $6876: $5C
    ld hl, $7A64                                  ; $6877: $21 $64 $7A
    ld b, c                                       ; $687A: $41
    ld l, c                                       ; $687B: $69
    add e                                         ; $687C: $83
    ld b, c                                       ; $687D: $41
    dec bc                                        ; $687E: $0B
    nop                                           ; $687F: $00
    ld [hl-], a                                   ; $6880: $32
    ld a, [de]                                    ; $6881: $1A
    cp h                                          ; $6882: $BC
    ld e, [hl]                                    ; $6883: $5E
    adc l                                         ; $6884: $8D
    ld b, c                                       ; $6885: $41
    ld sp, $701A                                  ; $6886: $31 $1A $70
    ld l, b                                       ; $6889: $68
    ld [hl+], a                                   ; $688A: $22
    adc $40                                       ; $688B: $CE $40
    nop                                           ; $688D: $00
    add d                                         ; $688E: $82
    rra                                           ; $688F: $1F
    ld [de], a                                    ; $6890: $12
    sub h                                         ; $6891: $94
    halt                                          ; $6892: $76
    jr nz, jr_01A_68A4                            ; $6893: $20 $0F

    ld b, d                                       ; $6895: $42
    ld [bc], a                                    ; $6896: $02
    dec h                                         ; $6897: $25
    ld e, $31                                     ; $6898: $1E $31
    nop                                           ; $689A: $00
    ld b, l                                       ; $689B: $45
    rla                                           ; $689C: $17
    ld hl, $0274                                  ; $689D: $21 $74 $02
    nop                                           ; $68A0: $00
    ld sp, $0B08                                  ; $68A1: $31 $08 $0B

jr_01A_68A4:
    ld b, l                                       ; $68A4: $45
    ld a, [de]                                    ; $68A5: $1A
    sub d                                         ; $68A6: $92
    ld l, c                                       ; $68A7: $69

jr_01A_68A8:
    ld [bc], a                                    ; $68A8: $02
    nop                                           ; $68A9: $00
    dec e                                         ; $68AA: $1D
    ld h, $0C                                     ; $68AB: $26 $0C
    ld b, l                                       ; $68AD: $45
    ld a, [de]                                    ; $68AE: $1A
    ld hl, $A469                                  ; $68AF: $21 $69 $A4
    dec h                                         ; $68B2: $25
    and e                                         ; $68B3: $A3
    inc b                                         ; $68B4: $04
    nop                                           ; $68B5: $00
    ld [bc], a                                    ; $68B6: $02
    db $EB                                        ; $68B7: $EB
    ret nc                                        ; $68B8: $D0

    sub e                                         ; $68B9: $93
    ld h, l                                       ; $68BA: $65
    jp nz, Jump_01A_4F41                          ; $68BB: $C2 $41 $4F

    ld h, h                                       ; $68BE: $64
    and a                                         ; $68BF: $A7
    ld b, c                                       ; $68C0: $41
    ld h, [hl]                                    ; $68C1: $66
    ret nz                                        ; $68C2: $C0

    ld e, h                                       ; $68C3: $5C
    ld hl, $B469                                  ; $68C4: $21 $69 $B4
    ld b, c                                       ; $68C7: $41
    dec b                                         ; $68C8: $05
    nop                                           ; $68C9: $00
    add c                                         ; $68CA: $81
    ld e, l                                       ; $68CB: $5D
    jr z, jr_01A_68F0                             ; $68CC: $28 $22

jr_01A_68CE:
    call z, $00D6                                 ; $68CE: $CC $D6 $00
    jr nz, jr_01A_68CE                            ; $68D1: $20 $FB

    ld d, b                                       ; $68D3: $50
    ld [hl+], a                                   ; $68D4: $22
    dec b                                         ; $68D5: $05
    ld b, b                                       ; $68D6: $40
    dec b                                         ; $68D7: $05
    jr nz, jr_01A_68A8                            ; $68D8: $20 $CE

    ld h, e                                       ; $68DA: $63
    ld a, [bc]                                    ; $68DB: $0A
    add hl, bc                                    ; $68DC: $09
    call z, $00D1                                 ; $68DD: $CC $D1 $00
    ld [hl+], a                                   ; $68E0: $22
    jp c, $1740                                   ; $68E1: $DA $40 $17

    dec hl                                        ; $68E4: $2B
    ld [hl], e                                    ; $68E5: $73
    dec b                                         ; $68E6: $05
    rra                                           ; $68E7: $1F
    adc $63                                       ; $68E8: $CE $63
    ld a, [bc]                                    ; $68EA: $0A
    add hl, bc                                    ; $68EB: $09
    call z, $00D1                                 ; $68EC: $CC $D1 $00
    ld [hl+], a                                   ; $68EF: $22

jr_01A_68F0:
    jp c, $1740                                   ; $68F0: $DA $40 $17

    dec hl                                        ; $68F3: $2B
    ld [hl], e                                    ; $68F4: $73
    dec bc                                        ; $68F5: $0B
    jr nz, @+$0D                                  ; $68F6: $20 $0B

    rra                                           ; $68F8: $1F
    ld l, e                                       ; $68F9: $6B
    inc [hl]                                      ; $68FA: $34
    dec c                                         ; $68FB: $0D
    jr nc, jr_01A_6968                            ; $68FC: $30 $6A

    nop                                           ; $68FE: $00
    add b                                         ; $68FF: $80
    nop                                           ; $6900: $00
    ld sp, $B91A                                  ; $6901: $31 $1A $B9
    ld l, b                                       ; $6904: $68
    ld [hl+], a                                   ; $6905: $22
    adc $40                                       ; $6906: $CE $40
    dec bc                                        ; $6908: $0B
    nop                                           ; $6909: $00
    nop                                           ; $690A: $00
    add d                                         ; $690B: $82
    rra                                           ; $690C: $1F
    ld h, $94                                     ; $690D: $26 $94
    ld b, d                                       ; $690F: $42
    ld [bc], a                                    ; $6910: $02
    dec e                                         ; $6911: $1D

jr_01A_6912:
    nop                                           ; $6912: $00
    inc c                                         ; $6913: $0C
    ld h, $45                                     ; $6914: $26 $45
    ld a, [de]                                    ; $6916: $1A
    cp c                                          ; $6917: $B9
    ld l, b                                       ; $6918: $68
    and h                                         ; $6919: $A4

jr_01A_691A:
    inc h                                         ; $691A: $24
    and e                                         ; $691B: $A3
    jr nz, jr_01A_6920                            ; $691C: $20 $02

    rla                                           ; $691E: $17
    ld h, d                                       ; $691F: $62

jr_01A_6920:
    ret nc                                        ; $6920: $D0

    sub e                                         ; $6921: $93
    ld h, l                                       ; $6922: $65
    pop de                                        ; $6923: $D1
    ld b, c                                       ; $6924: $41
    ld c, a                                       ; $6925: $4F
    ld h, h                                       ; $6926: $64
    cp c                                          ; $6927: $B9
    ld b, c                                       ; $6928: $41

jr_01A_6929:
    ld l, c                                       ; $6929: $69
    cp [hl]                                       ; $692A: $BE
    ld b, c                                       ; $692B: $41
    ld h, [hl]                                    ; $692C: $66
    ret nz                                        ; $692D: $C0

    ld e, h                                       ; $692E: $5C
    ld hl, $0005                                  ; $692F: $21 $05 $00
    add c                                         ; $6932: $81
    ld e, l                                       ; $6933: $5D
    dec b                                         ; $6934: $05
    dec b                                         ; $6935: $05

jr_01A_6936:
    sbc e                                         ; $6936: $9B
    ret nc                                        ; $6937: $D0

    nop                                           ; $6938: $00
    jr nz, jr_01A_6936                            ; $6939: $20 $FB

    ld d, b                                       ; $693B: $50
    ld [hl+], a                                   ; $693C: $22
    dec b                                         ; $693D: $05
    ld b, b                                       ; $693E: $40
    dec bc                                        ; $693F: $0B
    nop                                           ; $6940: $00

Jump_01A_6941:
    dec b                                         ; $6941: $05
    jr nz, jr_01A_6912                            ; $6942: $20 $CE

    ld h, e                                       ; $6944: $63
    ld a, [bc]                                    ; $6945: $0A
    add hl, bc                                    ; $6946: $09
    jr jr_01A_691A                                ; $6947: $18 $D1

    nop                                           ; $6949: $00
    ld [hl+], a                                   ; $694A: $22
    jp c, $1740                                   ; $694B: $DA $40 $17

    dec hl                                        ; $694E: $2B
    ld [hl], e                                    ; $694F: $73
    dec b                                         ; $6950: $05
    rra                                           ; $6951: $1F
    adc $63                                       ; $6952: $CE $63
    ld a, [bc]                                    ; $6954: $0A
    add hl, bc                                    ; $6955: $09
    jr jr_01A_6929                                ; $6956: $18 $D1

    nop                                           ; $6958: $00
    ld [hl+], a                                   ; $6959: $22
    jp c, $1740                                   ; $695A: $DA $40 $17

    dec hl                                        ; $695D: $2B
    ld [hl], e                                    ; $695E: $73
    dec bc                                        ; $695F: $0B
    jr nz, @+$0D                                  ; $6960: $20 $0B

    rra                                           ; $6962: $1F
    ld l, e                                       ; $6963: $6B
    inc [hl]                                      ; $6964: $34
    dec c                                         ; $6965: $0D
    jr nc, @+$6C                                  ; $6966: $30 $6A

jr_01A_6968:
    nop                                           ; $6968: $00
    add b                                         ; $6969: $80
    nop                                           ; $696A: $00

jr_01A_696B:
    ld sp, $211A                                  ; $696B: $31 $1A $21
    ld l, c                                       ; $696E: $69
    ld [hl+], a                                   ; $696F: $22
    adc $40                                       ; $6970: $CE $40
    nop                                           ; $6972: $00
    rra                                           ; $6973: $1F
    ld h, $82                                     ; $6974: $26 $82
    sub h                                         ; $6976: $94
    ld b, d                                       ; $6977: $42
    ld [bc], a                                    ; $6978: $02
    ld sp, $0B00                                  ; $6979: $31 $00 $0B
    ld [$1A45], sp                                ; $697C: $08 $45 $1A
    cp c                                          ; $697F: $B9
    ld l, b                                       ; $6980: $68
    ld [bc], a                                    ; $6981: $02
    add hl, bc                                    ; $6982: $09

jr_01A_6983:
    ld [$1308], sp                                ; $6983: $08 $08 $13
    ld b, l                                       ; $6986: $45
    ld a, [de]                                    ; $6987: $1A
    jp c, $A46E                                   ; $6988: $DA $6E $A4

    inc h                                         ; $698B: $24
    and e                                         ; $698C: $A3
    ld b, b                                       ; $698D: $40
    nop                                           ; $698E: $00
    ld bc, $D394                                  ; $698F: $01 $94 $D3
    sub e                                         ; $6992: $93
    ld h, l                                       ; $6993: $65
    ldh [rSTAT], a                                ; $6994: $E0 $41
    ld c, a                                       ; $6996: $4F
    ld h, h                                       ; $6997: $64
    jp Jump_01A_6941                              ; $6998: $C3 $41 $69


    call z, $6641                                 ; $699B: $CC $41 $66
    ret nz                                        ; $699E: $C0

    ld e, h                                       ; $699F: $5C
    ld hl, $0005                                  ; $69A0: $21 $05 $00
    add c                                         ; $69A3: $81
    ld e, l                                       ; $69A4: $5D
    nop                                           ; $69A5: $00
    ld hl, $D672                                  ; $69A6: $21 $72 $D6
    nop                                           ; $69A9: $00
    jr nz, jr_01A_696B                            ; $69AA: $20 $BF

    ld d, b                                       ; $69AC: $50
    ld [hl+], a                                   ; $69AD: $22
    dec b                                         ; $69AE: $05
    ld b, b                                       ; $69AF: $40
    dec bc                                        ; $69B0: $0B
    nop                                           ; $69B1: $00
    dec b                                         ; $69B2: $05
    jr nz, jr_01A_6983                            ; $69B3: $20 $CE

    ld h, e                                       ; $69B5: $63
    ld a, [bc]                                    ; $69B6: $0A
    add hl, bc                                    ; $69B7: $09
    call z, $00D1                                 ; $69B8: $CC $D1 $00
    ld [hl+], a                                   ; $69BB: $22
    jp c, $1740                                   ; $69BC: $DA $40 $17

    dec hl                                        ; $69BF: $2B
    ld [hl], e                                    ; $69C0: $73
    dec b                                         ; $69C1: $05
    rra                                           ; $69C2: $1F
    adc $63                                       ; $69C3: $CE $63
    ld a, [bc]                                    ; $69C5: $0A
    add hl, bc                                    ; $69C6: $09
    call z, $00D1                                 ; $69C7: $CC $D1 $00
    ld [hl+], a                                   ; $69CA: $22
    jp c, $1740                                   ; $69CB: $DA $40 $17

    dec hl                                        ; $69CE: $2B
    ld [hl], e                                    ; $69CF: $73
    dec bc                                        ; $69D0: $0B
    jr nz, @+$0D                                  ; $69D1: $20 $0B

    rra                                           ; $69D3: $1F
    ld l, e                                       ; $69D4: $6B
    inc [hl]                                      ; $69D5: $34
    dec c                                         ; $69D6: $0D
    jr nc, jr_01A_6A43                            ; $69D7: $30 $6A

    nop                                           ; $69D9: $00
    add b                                         ; $69DA: $80
    nop                                           ; $69DB: $00
    ld sp, $921A                                  ; $69DC: $31 $1A $92
    ld l, c                                       ; $69DF: $69
    ld [hl+], a                                   ; $69E0: $22
    adc $40                                       ; $69E1: $CE $40
    ld h, [hl]                                    ; $69E3: $66
    ret nz                                        ; $69E4: $C0

    ld e, h                                       ; $69E5: $5C
    ld hl, $8200                                  ; $69E6: $21 $00 $82
    rra                                           ; $69E9: $1F
    ld h, $94                                     ; $69EA: $26 $94
    ld b, d                                       ; $69EC: $42
    xor h                                         ; $69ED: $AC
    or d                                          ; $69EE: $B2
    and d                                         ; $69EF: $A2
    nop                                           ; $69F0: $00
    ld [bc], a                                    ; $69F1: $02
    ld [$1309], sp                                ; $69F2: $08 $09 $13
    ld [$1A45], sp                                ; $69F5: $08 $45 $1A
    sub d                                         ; $69F8: $92
    ld l, c                                       ; $69F9: $69
    and h                                         ; $69FA: $A4
    ld b, [hl]                                    ; $69FB: $46
    and e                                         ; $69FC: $A3
    db $10                                        ; $69FD: $10
    ld [bc], a                                    ; $69FE: $02
    dec c                                         ; $69FF: $0D
    and h                                         ; $6A00: $A4
    ret nc                                        ; $6A01: $D0

    sbc e                                         ; $6A02: $9B
    ld e, c                                       ; $6A03: $59
    ld d, h                                       ; $6A04: $54
    sbc a                                         ; $6A05: $9F
    rst $38                                       ; $6A06: $FF
    jr nz, jr_01A_6A29                            ; $6A07: $20 $20

    jr nz, jr_01A_6A2B                            ; $6A09: $20 $20

    jr nz, jr_01A_6A2D                            ; $6A0B: $20 $20

    jr nz, @+$22                                  ; $6A0D: $20 $20

    jr nz, jr_01A_6A31                            ; $6A0F: $20 $20

    ld c, l                                       ; $6A11: $4D
    ld b, l                                       ; $6A12: $45
    ld c, a                                       ; $6A13: $4F
    ld d, a                                       ; $6A14: $57
    ld l, $FE                                     ; $6A15: $2E $FE
    db $FD                                        ; $6A17: $FD
    sbc d                                         ; $6A18: $9A
    ld b, d                                       ; $6A19: $42
    sbc e                                         ; $6A1A: $9B
    ld a, b                                       ; $6A1B: $78
    ld [hl], b                                    ; $6A1C: $70
    sbc a                                         ; $6A1D: $9F
    ld d, a                                       ; $6A1E: $57
    ld l, b                                       ; $6A1F: $68
    ld h, l                                       ; $6A20: $65
    ld [hl], d                                    ; $6A21: $72
    ld h, l                                       ; $6A22: $65
    jr nz, jr_01A_6A86                            ; $6A23: $20 $61

    ld l, l                                       ; $6A25: $6D
    jr nz, jr_01A_6A71                            ; $6A26: $20 $49

    ccf                                           ; $6A28: $3F

jr_01A_6A29:
    cp $FD                                        ; $6A29: $FE $FD

jr_01A_6A2B:
    sbc d                                         ; $6A2B: $9A
    ld e, b                                       ; $6A2C: $58

jr_01A_6A2D:
    ld bc, $9B42                                  ; $6A2D: $01 $42 $9B
    ld c, b                                       ; $6A30: $48

jr_01A_6A31:
    ld a, b                                       ; $6A31: $78
    sbc a                                         ; $6A32: $9F
    ld b, a                                       ; $6A33: $47
    ld l, a                                       ; $6A34: $6F
    ld l, a                                       ; $6A35: $6F
    ld h, h                                       ; $6A36: $64
    inc l                                         ; $6A37: $2C
    jr nz, jr_01A_6AB3                            ; $6A38: $20 $79

    ld l, a                                       ; $6A3A: $6F
    ld [hl], l                                    ; $6A3B: $75
    daa                                           ; $6A3C: $27
    ld [hl], d                                    ; $6A3D: $72
    ld h, l                                       ; $6A3E: $65
    rst $38                                       ; $6A3F: $FF
    ld h, c                                       ; $6A40: $61
    ld [hl], a                                    ; $6A41: $77
    ld h, c                                       ; $6A42: $61

jr_01A_6A43:
    ld l, e                                       ; $6A43: $6B
    ld h, l                                       ; $6A44: $65
    ld l, $20                                     ; $6A45: $2E $20
    ld e, c                                       ; $6A47: $59
    ld l, a                                       ; $6A48: $6F
    ld [hl], l                                    ; $6A49: $75
    jr nz, jr_01A_6AB4                            ; $6A4A: $20 $68

    ld h, c                                       ; $6A4C: $61
    ld h, h                                       ; $6A4D: $64
    cp $6D                                        ; $6A4E: $FE $6D
    ld h, l                                       ; $6A50: $65
    jr nz, jr_01A_6ACA                            ; $6A51: $20 $77

    ld l, a                                       ; $6A53: $6F
    ld [hl], d                                    ; $6A54: $72
    ld [hl], d                                    ; $6A55: $72
    ld l, c                                       ; $6A56: $69
    ld h, l                                       ; $6A57: $65
    ld h, h                                       ; $6A58: $64
    rst $38                                       ; $6A59: $FF
    ld [hl], h                                    ; $6A5A: $74
    ld l, b                                       ; $6A5B: $68
    ld h, l                                       ; $6A5C: $65
    ld [hl], d                                    ; $6A5D: $72
    ld h, l                                       ; $6A5E: $65
    ld l, $FE                                     ; $6A5F: $2E $FE
    db $FD                                        ; $6A61: $FD
    sbc d                                         ; $6A62: $9A
    ld e, b                                       ; $6A63: $58
    ld [bc], a                                    ; $6A64: $02
    ld b, d                                       ; $6A65: $42
    sbc e                                         ; $6A66: $9B
    ld a, b                                       ; $6A67: $78
    ld [hl], b                                    ; $6A68: $70
    sbc a                                         ; $6A69: $9F
    ld l, $2E                                     ; $6A6A: $2E $2E
    ld l, $20                                     ; $6A6C: $2E $20
    ld [hl], a                                    ; $6A6E: $77
    ld l, b                                       ; $6A6F: $68
    ld h, l                                       ; $6A70: $65

jr_01A_6A71:
    ld [hl], d                                    ; $6A71: $72
    ld h, l                                       ; $6A72: $65
    jr nz, jr_01A_6ADE                            ; $6A73: $20 $69

    ld [hl], e                                    ; $6A75: $73
    rst $38                                       ; $6A76: $FF
    ld [hl], h                                    ; $6A77: $74
    ld l, b                                       ; $6A78: $68
    ld l, c                                       ; $6A79: $69
    ld [hl], e                                    ; $6A7A: $73
    ccf                                           ; $6A7B: $3F
    cp $FD                                        ; $6A7C: $FE $FD
    sbc d                                         ; $6A7E: $9A
    ld e, b                                       ; $6A7F: $58
    inc bc                                        ; $6A80: $03
    ld b, d                                       ; $6A81: $42
    sbc e                                         ; $6A82: $9B
    ld c, b                                       ; $6A83: $48
    ld a, b                                       ; $6A84: $78
    sbc a                                         ; $6A85: $9F

jr_01A_6A86:
    ld e, c                                       ; $6A86: $59
    ld l, a                                       ; $6A87: $6F
    ld [hl], l                                    ; $6A88: $75
    daa                                           ; $6A89: $27
    ld [hl], d                                    ; $6A8A: $72
    ld h, l                                       ; $6A8B: $65
    jr nz, jr_01A_6AEF                            ; $6A8C: $20 $61

    ld [hl], h                                    ; $6A8E: $74
    jr nz, jr_01A_6AFE                            ; $6A8F: $20 $6D

    ld a, c                                       ; $6A91: $79
    rst $38                                       ; $6A92: $FF
    ld l, b                                       ; $6A93: $68
    ld l, a                                       ; $6A94: $6F
    ld l, l                                       ; $6A95: $6D
    ld h, l                                       ; $6A96: $65
    jr nz, jr_01A_6B02                            ; $6A97: $20 $69

    ld l, [hl]                                    ; $6A99: $6E
    jr nz, @+$76                                  ; $6A9A: $20 $74

    ld l, b                                       ; $6A9C: $68
    ld h, l                                       ; $6A9D: $65
    cp $66                                        ; $6A9E: $FE $66
    ld l, a                                       ; $6AA0: $6F
    ld [hl], d                                    ; $6AA1: $72
    ld h, l                                       ; $6AA2: $65
    ld [hl], e                                    ; $6AA3: $73
    ld [hl], h                                    ; $6AA4: $74
    ld l, $20                                     ; $6AA5: $2E $20
    ld e, c                                       ; $6AA7: $59
    ld l, a                                       ; $6AA8: $6F
    ld [hl], l                                    ; $6AA9: $75
    rst $38                                       ; $6AAA: $FF
    ld [hl], b                                    ; $6AAB: $70
    ld h, c                                       ; $6AAC: $61
    ld [hl], e                                    ; $6AAD: $73
    ld [hl], e                                    ; $6AAE: $73
    ld h, l                                       ; $6AAF: $65
    ld h, h                                       ; $6AB0: $64
    jr nz, @+$71                                  ; $6AB1: $20 $6F

jr_01A_6AB3:
    ld [hl], l                                    ; $6AB3: $75

jr_01A_6AB4:
    ld [hl], h                                    ; $6AB4: $74
    jr nz, jr_01A_6B19                            ; $6AB5: $20 $62

    ld h, c                                       ; $6AB7: $61
    ld h, e                                       ; $6AB8: $63
    ld l, e                                       ; $6AB9: $6B
    cp $69                                        ; $6ABA: $FE $69
    ld l, [hl]                                    ; $6ABC: $6E
    jr nz, jr_01A_6B33                            ; $6ABD: $20 $74

    ld l, b                                       ; $6ABF: $68
    ld h, l                                       ; $6AC0: $65
    rst $38                                       ; $6AC1: $FF
    ld d, l                                       ; $6AC2: $55
    ld l, [hl]                                    ; $6AC3: $6E
    ld h, h                                       ; $6AC4: $64
    ld h, l                                       ; $6AC5: $65
    ld [hl], d                                    ; $6AC6: $72
    ld l, [hl]                                    ; $6AC7: $6E
    ld h, l                                       ; $6AC8: $65
    ld h, c                                       ; $6AC9: $61

jr_01A_6ACA:
    ld [hl], h                                    ; $6ACA: $74
    ld l, b                                       ; $6ACB: $68
    jr nz, jr_01A_6B41                            ; $6ACC: $20 $73

    ld l, a                                       ; $6ACE: $6F
    jr nz, @+$4B                                  ; $6ACF: $20 $49

    cp $74                                        ; $6AD1: $FE $74
    ld l, a                                       ; $6AD3: $6F
    ld l, a                                       ; $6AD4: $6F
    ld l, e                                       ; $6AD5: $6B
    jr nz, jr_01A_6B51                            ; $6AD6: $20 $79

    ld l, a                                       ; $6AD8: $6F
    ld [hl], l                                    ; $6AD9: $75
    rst $38                                       ; $6ADA: $FF
    ld [hl], e                                    ; $6ADB: $73
    ld [hl], h                                    ; $6ADC: $74
    ld [hl], d                                    ; $6ADD: $72

jr_01A_6ADE:
    ld h, c                                       ; $6ADE: $61
    ld l, c                                       ; $6ADF: $69
    ld h, a                                       ; $6AE0: $67
    ld l, b                                       ; $6AE1: $68
    ld [hl], h                                    ; $6AE2: $74
    jr nz, jr_01A_6B4D                            ; $6AE3: $20 $68

    ld h, l                                       ; $6AE5: $65
    ld [hl], d                                    ; $6AE6: $72
    ld h, l                                       ; $6AE7: $65
    ld l, $FE                                     ; $6AE8: $2E $FE
    db $FD                                        ; $6AEA: $FD
    sbc d                                         ; $6AEB: $9A
    ld e, b                                       ; $6AEC: $58
    inc b                                         ; $6AED: $04
    ld b, d                                       ; $6AEE: $42

jr_01A_6AEF:
    sbc e                                         ; $6AEF: $9B
    ld a, b                                       ; $6AF0: $78
    ld [hl], b                                    ; $6AF1: $70
    sbc a                                         ; $6AF2: $9F
    ld c, a                                       ; $6AF3: $4F
    ld l, b                                       ; $6AF4: $68
    ld l, $2E                                     ; $6AF5: $2E $2E
    ld l, $2E                                     ; $6AF7: $2E $2E
    ld l, $FE                                     ; $6AF9: $2E $FE
    db $FD                                        ; $6AFB: $FD
    sbc d                                         ; $6AFC: $9A
    ld e, b                                       ; $6AFD: $58

jr_01A_6AFE:
    dec b                                         ; $6AFE: $05
    ld b, d                                       ; $6AFF: $42
    sbc e                                         ; $6B00: $9B
    ld c, b                                       ; $6B01: $48

jr_01A_6B02:
    ld a, b                                       ; $6B02: $78
    sbc a                                         ; $6B03: $9F
    ld b, h                                       ; $6B04: $44
    ld l, a                                       ; $6B05: $6F
    jr nz, jr_01A_6B81                            ; $6B06: $20 $79

    ld l, a                                       ; $6B08: $6F
    ld [hl], l                                    ; $6B09: $75
    jr nz, jr_01A_6B77                            ; $6B0A: $20 $6B

    ld l, [hl]                                    ; $6B0C: $6E
    ld l, a                                       ; $6B0D: $6F
    ld [hl], a                                    ; $6B0E: $77
    jr nz, jr_01A_6B7A                            ; $6B0F: $20 $69

    ld h, [hl]                                    ; $6B11: $66
    rst $38                                       ; $6B12: $FF
    ld h, c                                       ; $6B13: $61
    ld l, [hl]                                    ; $6B14: $6E
    ld a, c                                       ; $6B15: $79
    ld l, a                                       ; $6B16: $6F
    ld l, [hl]                                    ; $6B17: $6E
    ld h, l                                       ; $6B18: $65

jr_01A_6B19:
    jr nz, jr_01A_6B84                            ; $6B19: $20 $69

    ld l, [hl]                                    ; $6B1B: $6E
    jr nz, jr_01A_6B92                            ; $6B1C: $20 $74

    ld l, a                                       ; $6B1E: $6F
    ld [hl], a                                    ; $6B1F: $77
    ld l, [hl]                                    ; $6B20: $6E
    cp $73                                        ; $6B21: $FE $73
    ld [hl], l                                    ; $6B23: $75
    ld [hl], d                                    ; $6B24: $72
    halt                                          ; $6B25: $76
    ld l, c                                       ; $6B26: $69
    halt                                          ; $6B27: $76
    ld h, l                                       ; $6B28: $65
    ld h, h                                       ; $6B29: $64
    ccf                                           ; $6B2A: $3F
    cp $FD                                        ; $6B2B: $FE $FD
    sbc d                                         ; $6B2D: $9A
    ld e, b                                       ; $6B2E: $58
    ld b, $42                                     ; $6B2F: $06 $42
    sbc e                                         ; $6B31: $9B
    ld a, b                                       ; $6B32: $78

jr_01A_6B33:
    ld [hl], b                                    ; $6B33: $70
    sbc a                                         ; $6B34: $9F
    ld c, c                                       ; $6B35: $49
    ld l, $2E                                     ; $6B36: $2E $2E
    ld l, $64                                     ; $6B38: $2E $64
    ld l, c                                       ; $6B3A: $69
    ld h, h                                       ; $6B3B: $64
    ld l, [hl]                                    ; $6B3C: $6E
    daa                                           ; $6B3D: $27
    ld [hl], h                                    ; $6B3E: $74
    jr nz, @+$69                                  ; $6B3F: $20 $67

jr_01A_6B41:
    ld h, l                                       ; $6B41: $65
    ld [hl], h                                    ; $6B42: $74
    rst $38                                       ; $6B43: $FF
    ld l, l                                       ; $6B44: $6D
    ld [hl], l                                    ; $6B45: $75
    ld h, e                                       ; $6B46: $63
    ld l, b                                       ; $6B47: $68
    jr nz, jr_01A_6BB9                            ; $6B48: $20 $6F

    ld h, [hl]                                    ; $6B4A: $66
    jr nz, @+$63                                  ; $6B4B: $20 $61

jr_01A_6B4D:
    cp $63                                        ; $6B4D: $FE $63
    ld l, b                                       ; $6B4F: $68
    ld h, c                                       ; $6B50: $61

jr_01A_6B51:
    ld l, [hl]                                    ; $6B51: $6E
    ld h, e                                       ; $6B52: $63
    ld h, l                                       ; $6B53: $65
    jr nz, jr_01A_6BCA                            ; $6B54: $20 $74

    ld l, a                                       ; $6B56: $6F
    jr nz, jr_01A_6BC5                            ; $6B57: $20 $6C

    ld l, a                                       ; $6B59: $6F
    ld l, a                                       ; $6B5A: $6F
    ld l, e                                       ; $6B5B: $6B
    ld l, $FF                                     ; $6B5C: $2E $FF
    ld b, [hl]                                    ; $6B5E: $46
    ld [hl], d                                    ; $6B5F: $72
    ld l, a                                       ; $6B60: $6F
    ld l, l                                       ; $6B61: $6D
    jr nz, jr_01A_6BDB                            ; $6B62: $20 $77

    ld l, b                                       ; $6B64: $68
    ld h, c                                       ; $6B65: $61
    ld [hl], h                                    ; $6B66: $74
    jr nz, jr_01A_6BB2                            ; $6B67: $20 $49

    jr nz, jr_01A_6BDE                            ; $6B69: $20 $73

    ld h, c                                       ; $6B6B: $61
    ld [hl], a                                    ; $6B6C: $77
    cp $49                                        ; $6B6D: $FE $49
    jr nz, @+$66                                  ; $6B6F: $20 $64

    ld l, a                                       ; $6B71: $6F
    ld l, [hl]                                    ; $6B72: $6E
    daa                                           ; $6B73: $27
    ld [hl], h                                    ; $6B74: $74
    jr nz, jr_01A_6BE2                            ; $6B75: $20 $6B

Jump_01A_6B77:
jr_01A_6B77:
    ld l, [hl]                                    ; $6B77: $6E
    ld l, a                                       ; $6B78: $6F
    ld [hl], a                                    ; $6B79: $77

jr_01A_6B7A:
    rst $38                                       ; $6B7A: $FF
    ld l, b                                       ; $6B7B: $68
    ld l, a                                       ; $6B7C: $6F
    ld [hl], a                                    ; $6B7D: $77
    jr nz, jr_01A_6BE1                            ; $6B7E: $20 $61

    ld l, [hl]                                    ; $6B80: $6E

jr_01A_6B81:
    ld a, c                                       ; $6B81: $79
    ld l, a                                       ; $6B82: $6F
    ld l, [hl]                                    ; $6B83: $6E

jr_01A_6B84:
    ld h, l                                       ; $6B84: $65
    cp $63                                        ; $6B85: $FE $63
    ld l, a                                       ; $6B87: $6F
    ld [hl], l                                    ; $6B88: $75
    ld l, h                                       ; $6B89: $6C
    ld h, h                                       ; $6B8A: $64
    jr nz, jr_01A_6BF5                            ; $6B8B: $20 $68

    ld h, c                                       ; $6B8D: $61
    halt                                          ; $6B8E: $76
    ld h, l                                       ; $6B8F: $65
    rst $38                                       ; $6B90: $FF
    ld [hl], e                                    ; $6B91: $73

jr_01A_6B92:
    ld [hl], l                                    ; $6B92: $75
    ld [hl], d                                    ; $6B93: $72
    halt                                          ; $6B94: $76
    ld l, c                                       ; $6B95: $69
    halt                                          ; $6B96: $76
    ld h, l                                       ; $6B97: $65
    ld h, h                                       ; $6B98: $64
    ld l, $FE                                     ; $6B99: $2E $FE
    db $FD                                        ; $6B9B: $FD
    sbc d                                         ; $6B9C: $9A
    ld e, b                                       ; $6B9D: $58
    rlca                                          ; $6B9E: $07
    ld b, d                                       ; $6B9F: $42
    sbc e                                         ; $6BA0: $9B
    ld c, b                                       ; $6BA1: $48
    ld a, b                                       ; $6BA2: $78
    sbc a                                         ; $6BA3: $9F
    ld c, c                                       ; $6BA4: $49
    daa                                           ; $6BA5: $27
    ld l, l                                       ; $6BA6: $6D
    jr nz, jr_01A_6C1C                            ; $6BA7: $20 $73

    ld l, a                                       ; $6BA9: $6F
    ld [hl], d                                    ; $6BAA: $72
    ld [hl], d                                    ; $6BAB: $72
    ld a, c                                       ; $6BAC: $79
    jr nz, jr_01A_6C03                            ; $6BAD: $20 $54

    ld l, a                                       ; $6BAF: $6F
    ld l, [hl]                                    ; $6BB0: $6E
    ld a, c                                       ; $6BB1: $79

jr_01A_6BB2:
    inc l                                         ; $6BB2: $2C
    cp $62                                        ; $6BB3: $FE $62
    ld [hl], l                                    ; $6BB5: $75
    ld [hl], h                                    ; $6BB6: $74
    jr nz, jr_01A_6C1C                            ; $6BB7: $20 $63

jr_01A_6BB9:
    ld l, a                                       ; $6BB9: $6F
    ld [hl], l                                    ; $6BBA: $75
    ld l, h                                       ; $6BBB: $6C
    ld h, h                                       ; $6BBC: $64
    jr nz, jr_01A_6C38                            ; $6BBD: $20 $79

    ld l, a                                       ; $6BBF: $6F
    ld [hl], l                                    ; $6BC0: $75
    rst $38                                       ; $6BC1: $FF
    ld [hl], b                                    ; $6BC2: $70
    ld l, h                                       ; $6BC3: $6C
    ld h, l                                       ; $6BC4: $65

jr_01A_6BC5:
    ld h, c                                       ; $6BC5: $61
    ld [hl], e                                    ; $6BC6: $73
    ld h, l                                       ; $6BC7: $65
    jr nz, jr_01A_6C36                            ; $6BC8: $20 $6C

jr_01A_6BCA:
    ld h, l                                       ; $6BCA: $65
    ld h, c                                       ; $6BCB: $61
    halt                                          ; $6BCC: $76
    ld h, l                                       ; $6BCD: $65
    ccf                                           ; $6BCE: $3F
    cp $FD                                        ; $6BCF: $FE $FD
    sbc d                                         ; $6BD1: $9A
    ld e, b                                       ; $6BD2: $58
    ld [$9B42], sp                                ; $6BD3: $08 $42 $9B
    ld a, b                                       ; $6BD6: $78
    ld [hl], b                                    ; $6BD7: $70
    sbc a                                         ; $6BD8: $9F
    ld c, c                                       ; $6BD9: $49
    daa                                           ; $6BDA: $27

jr_01A_6BDB:
    ld l, l                                       ; $6BDB: $6D
    jr nz, jr_01A_6C51                            ; $6BDC: $20 $73

jr_01A_6BDE:
    ld l, a                                       ; $6BDE: $6F
    ld [hl], d                                    ; $6BDF: $72
    ld [hl], d                                    ; $6BE0: $72

jr_01A_6BE1:
    ld a, c                                       ; $6BE1: $79

jr_01A_6BE2:
    ld l, $20                                     ; $6BE2: $2E $20
    ld c, c                                       ; $6BE4: $49
    rst $38                                       ; $6BE5: $FF
    ld l, e                                       ; $6BE6: $6B
    ld l, [hl]                                    ; $6BE7: $6E
    ld l, a                                       ; $6BE8: $6F
    ld [hl], a                                    ; $6BE9: $77
    jr nz, jr_01A_6C65                            ; $6BEA: $20 $79

    ld l, a                                       ; $6BEC: $6F
    ld [hl], l                                    ; $6BED: $75
    jr nz, @+$6A                                  ; $6BEE: $20 $68

    ld h, c                                       ; $6BF0: $61
    ld h, h                                       ; $6BF1: $64
    cp $66                                        ; $6BF2: $FE $66
    ld [hl], d                                    ; $6BF4: $72

jr_01A_6BF5:
    ld l, c                                       ; $6BF5: $69
    ld h, l                                       ; $6BF6: $65
    ld l, [hl]                                    ; $6BF7: $6E
    ld h, h                                       ; $6BF8: $64
    ld [hl], e                                    ; $6BF9: $73
    jr nz, jr_01A_6C60                            ; $6BFA: $20 $64

    ld l, a                                       ; $6BFC: $6F
    ld [hl], a                                    ; $6BFD: $77
    ld l, [hl]                                    ; $6BFE: $6E
    rst $38                                       ; $6BFF: $FF
    ld [hl], h                                    ; $6C00: $74
    ld l, b                                       ; $6C01: $68
    ld h, l                                       ; $6C02: $65

jr_01A_6C03:
    ld [hl], d                                    ; $6C03: $72
    ld h, l                                       ; $6C04: $65
    ld l, $2E                                     ; $6C05: $2E $2E
    ld l, $FE                                     ; $6C07: $2E $FE
    db $FD                                        ; $6C09: $FD
    sbc d                                         ; $6C0A: $9A
    ld e, b                                       ; $6C0B: $58
    add hl, bc                                    ; $6C0C: $09
    ld b, d                                       ; $6C0D: $42
    sbc e                                         ; $6C0E: $9B
    ld c, b                                       ; $6C0F: $48
    ld a, b                                       ; $6C10: $78
    sbc a                                         ; $6C11: $9F
    ld c, c                                       ; $6C12: $49
    ld [hl], h                                    ; $6C13: $74
    daa                                           ; $6C14: $27
    ld [hl], e                                    ; $6C15: $73
    jr nz, jr_01A_6C79                            ; $6C16: $20 $61

    ld l, h                                       ; $6C18: $6C
    ld l, h                                       ; $6C19: $6C
    jr nz, @+$74                                  ; $6C1A: $20 $72

jr_01A_6C1C:
    ld l, c                                       ; $6C1C: $69
    ld h, a                                       ; $6C1D: $67
    ld l, b                                       ; $6C1E: $68
    ld [hl], h                                    ; $6C1F: $74
    ld l, $FF                                     ; $6C20: $2E $FF
    ld d, h                                       ; $6C22: $54
    ld l, b                                       ; $6C23: $68
    ld h, l                                       ; $6C24: $65
    ld a, c                                       ; $6C25: $79
    jr nz, @+$79                                  ; $6C26: $20 $77

    ld l, a                                       ; $6C28: $6F
    ld [hl], l                                    ; $6C29: $75
    ld l, h                                       ; $6C2A: $6C
    ld h, h                                       ; $6C2B: $64
    ld l, [hl]                                    ; $6C2C: $6E
    daa                                           ; $6C2D: $27
    ld [hl], h                                    ; $6C2E: $74
    cp $64                                        ; $6C2F: $FE $64
    ld l, c                                       ; $6C31: $69
    ld h, l                                       ; $6C32: $65
    jr nz, jr_01A_6CA8                            ; $6C33: $20 $73

    ld l, a                                       ; $6C35: $6F

jr_01A_6C36:
    jr nz, jr_01A_6C9D                            ; $6C36: $20 $65

jr_01A_6C38:
    ld h, c                                       ; $6C38: $61
    ld [hl], e                                    ; $6C39: $73
    ld l, c                                       ; $6C3A: $69
    ld l, h                                       ; $6C3B: $6C
    ld a, c                                       ; $6C3C: $79
    rst $38                                       ; $6C3D: $FF
    ld l, a                                       ; $6C3E: $6F
    ld l, [hl]                                    ; $6C3F: $6E
    jr nz, jr_01A_6CAF                            ; $6C40: $20 $6D

    ld h, l                                       ; $6C42: $65
    ld l, $FE                                     ; $6C43: $2E $FE
    db $FD                                        ; $6C45: $FD
    sbc d                                         ; $6C46: $9A
    ld e, b                                       ; $6C47: $58
    ld a, [bc]                                    ; $6C48: $0A
    ld b, d                                       ; $6C49: $42
    sbc e                                         ; $6C4A: $9B
    ld a, b                                       ; $6C4B: $78
    ld [hl], b                                    ; $6C4C: $70
    sbc a                                         ; $6C4D: $9F
    ld c, c                                       ; $6C4E: $49
    jr nz, @+$6A                                  ; $6C4F: $20 $68

jr_01A_6C51:
    ld h, c                                       ; $6C51: $61
    halt                                          ; $6C52: $76
    ld h, l                                       ; $6C53: $65
    jr nz, jr_01A_6CCA                            ; $6C54: $20 $74

    ld l, a                                       ; $6C56: $6F
    jr nz, jr_01A_6CC0                            ; $6C57: $20 $67

    ld l, a                                       ; $6C59: $6F
    rst $38                                       ; $6C5A: $FF
    ld h, c                                       ; $6C5B: $61
    ld h, [hl]                                    ; $6C5C: $66
    ld [hl], h                                    ; $6C5D: $74
    ld h, l                                       ; $6C5E: $65
    ld [hl], d                                    ; $6C5F: $72

jr_01A_6C60:
    jr nz, jr_01A_6CAF                            ; $6C60: $20 $4D

    ld l, a                                       ; $6C62: $6F
    ld [hl], d                                    ; $6C63: $72
    ld h, c                                       ; $6C64: $61

jr_01A_6C65:
    ld h, a                                       ; $6C65: $67
    ld l, $20                                     ; $6C66: $2E $20
    ld c, b                                       ; $6C68: $48
    ld h, l                                       ; $6C69: $65
    cp $68                                        ; $6C6A: $FE $68
    ld h, c                                       ; $6C6C: $61
    ld [hl], e                                    ; $6C6D: $73
    jr nz, jr_01A_6CE3                            ; $6C6E: $20 $73

    ld l, a                                       ; $6C70: $6F
    ld l, l                                       ; $6C71: $6D
    ld h, l                                       ; $6C72: $65
    ld [hl], h                                    ; $6C73: $74
    ld l, b                                       ; $6C74: $68
    ld l, c                                       ; $6C75: $69
    ld l, [hl]                                    ; $6C76: $6E
    ld h, a                                       ; $6C77: $67
    rst $38                                       ; $6C78: $FF

jr_01A_6C79:
    ld c, c                                       ; $6C79: $49
    jr nz, jr_01A_6CEA                            ; $6C7A: $20 $6E

    ld h, l                                       ; $6C7C: $65
    ld h, l                                       ; $6C7D: $65
    ld h, h                                       ; $6C7E: $64
    ld l, $FE                                     ; $6C7F: $2E $FE
    db $FD                                        ; $6C81: $FD
    sbc d                                         ; $6C82: $9A
    ld e, b                                       ; $6C83: $58
    dec bc                                        ; $6C84: $0B
    ld b, d                                       ; $6C85: $42
    sbc e                                         ; $6C86: $9B
    ld c, b                                       ; $6C87: $48
    ld a, b                                       ; $6C88: $78
    sbc a                                         ; $6C89: $9F
    ld c, c                                       ; $6C8A: $49
    daa                                           ; $6C8B: $27
    ld h, h                                       ; $6C8C: $64
    jr nz, jr_01A_6CFB                            ; $6C8D: $20 $6C

    ld l, c                                       ; $6C8F: $69
    ld l, e                                       ; $6C90: $6B
    ld h, l                                       ; $6C91: $65
    jr nz, jr_01A_6D08                            ; $6C92: $20 $74

    ld l, a                                       ; $6C94: $6F
    rst $38                                       ; $6C95: $FF
    ld l, b                                       ; $6C96: $68
    ld h, l                                       ; $6C97: $65
    ld l, h                                       ; $6C98: $6C
    ld [hl], b                                    ; $6C99: $70
    jr nz, jr_01A_6D15                            ; $6C9A: $20 $79

    ld l, a                                       ; $6C9C: $6F

jr_01A_6C9D:
    ld [hl], l                                    ; $6C9D: $75
    ld l, $2E                                     ; $6C9E: $2E $2E
    ld l, $62                                     ; $6CA0: $2E $62
    ld [hl], l                                    ; $6CA2: $75
    ld [hl], h                                    ; $6CA3: $74
    cp $49                                        ; $6CA4: $FE $49
    jr nz, jr_01A_6D1A                            ; $6CA6: $20 $72

jr_01A_6CA8:
    ld h, l                                       ; $6CA8: $65
    ld h, c                                       ; $6CA9: $61
    ld l, h                                       ; $6CAA: $6C
    ld l, h                                       ; $6CAB: $6C
    ld a, c                                       ; $6CAC: $79
    jr nz, jr_01A_6D17                            ; $6CAD: $20 $68

jr_01A_6CAF:
    ld h, c                                       ; $6CAF: $61
    halt                                          ; $6CB0: $76
    ld h, l                                       ; $6CB1: $65
    rst $38                                       ; $6CB2: $FF
    ld [hl], h                                    ; $6CB3: $74
    ld l, a                                       ; $6CB4: $6F
    jr nz, jr_01A_6D1E                            ; $6CB5: $20 $67

    ld l, a                                       ; $6CB7: $6F
    jr nz, jr_01A_6D1C                            ; $6CB8: $20 $62

    ld h, c                                       ; $6CBA: $61
    ld h, e                                       ; $6CBB: $63
    ld l, e                                       ; $6CBC: $6B
    jr nz, @+$63                                  ; $6CBD: $20 $61

    ld l, [hl]                                    ; $6CBF: $6E

jr_01A_6CC0:
    ld h, h                                       ; $6CC0: $64
    cp $6C                                        ; $6CC1: $FE $6C
    ld l, a                                       ; $6CC3: $6F
    ld l, a                                       ; $6CC4: $6F
    ld l, e                                       ; $6CC5: $6B
    jr nz, jr_01A_6D2E                            ; $6CC6: $20 $66

    ld l, a                                       ; $6CC8: $6F
    ld [hl], d                                    ; $6CC9: $72

jr_01A_6CCA:
    rst $38                                       ; $6CCA: $FF
    ld [hl], e                                    ; $6CCB: $73
    ld [hl], l                                    ; $6CCC: $75
    ld [hl], d                                    ; $6CCD: $72
    halt                                          ; $6CCE: $76
    ld l, c                                       ; $6CCF: $69
    halt                                          ; $6CD0: $76
    ld l, a                                       ; $6CD1: $6F
    ld [hl], d                                    ; $6CD2: $72
    ld [hl], e                                    ; $6CD3: $73
    jr nz, jr_01A_6D3F                            ; $6CD4: $20 $69

    ld l, [hl]                                    ; $6CD6: $6E
    cp $74                                        ; $6CD7: $FE $74
    ld l, b                                       ; $6CD9: $68
    ld h, l                                       ; $6CDA: $65
    jr nz, jr_01A_6D32                            ; $6CDB: $20 $55

    ld l, [hl]                                    ; $6CDD: $6E
    ld h, h                                       ; $6CDE: $64
    ld h, l                                       ; $6CDF: $65
    ld [hl], d                                    ; $6CE0: $72
    ld l, [hl]                                    ; $6CE1: $6E
    ld h, l                                       ; $6CE2: $65

jr_01A_6CE3:
    ld h, c                                       ; $6CE3: $61
    ld [hl], h                                    ; $6CE4: $74
    ld l, b                                       ; $6CE5: $68
    ld l, $FE                                     ; $6CE6: $2E $FE
    db $FD                                        ; $6CE8: $FD
    sbc d                                         ; $6CE9: $9A

jr_01A_6CEA:
    ld e, b                                       ; $6CEA: $58
    inc c                                         ; $6CEB: $0C
    ld b, d                                       ; $6CEC: $42
    sbc e                                         ; $6CED: $9B
    ld a, b                                       ; $6CEE: $78
    ld [hl], b                                    ; $6CEF: $70
    sbc a                                         ; $6CF0: $9F
    ld c, c                                       ; $6CF1: $49
    jr nz, jr_01A_6D69                            ; $6CF2: $20 $75

    ld l, [hl]                                    ; $6CF4: $6E
    ld h, h                                       ; $6CF5: $64
    ld h, l                                       ; $6CF6: $65
    ld [hl], d                                    ; $6CF7: $72
    ld [hl], e                                    ; $6CF8: $73
    ld [hl], h                                    ; $6CF9: $74
    ld h, c                                       ; $6CFA: $61

jr_01A_6CFB:
    ld l, [hl]                                    ; $6CFB: $6E
    ld h, h                                       ; $6CFC: $64
    ld l, $20                                     ; $6CFD: $2E $20
    ld c, c                                       ; $6CFF: $49
    rst $38                                       ; $6D00: $FF
    ld l, b                                       ; $6D01: $68
    ld l, a                                       ; $6D02: $6F
    ld [hl], b                                    ; $6D03: $70
    ld h, l                                       ; $6D04: $65
    jr nz, jr_01A_6D80                            ; $6D05: $20 $79

    ld l, a                                       ; $6D07: $6F

jr_01A_6D08:
    ld [hl], l                                    ; $6D08: $75
    jr nz, jr_01A_6D71                            ; $6D09: $20 $66

    ld l, c                                       ; $6D0B: $69
    ld l, [hl]                                    ; $6D0C: $6E
    ld h, h                                       ; $6D0D: $64
    cp $74                                        ; $6D0E: $FE $74
    ld l, b                                       ; $6D10: $68
    ld h, l                                       ; $6D11: $65
    ld l, l                                       ; $6D12: $6D
    ld l, $FE                                     ; $6D13: $2E $FE

jr_01A_6D15:
    db $FD                                        ; $6D15: $FD
    sbc d                                         ; $6D16: $9A

jr_01A_6D17:
    ld e, b                                       ; $6D17: $58
    dec c                                         ; $6D18: $0D
    ld b, d                                       ; $6D19: $42

jr_01A_6D1A:
    sbc e                                         ; $6D1A: $9B
    ld c, b                                       ; $6D1B: $48

jr_01A_6D1C:
    ld a, b                                       ; $6D1C: $78
    sbc a                                         ; $6D1D: $9F

jr_01A_6D1E:
    ld c, c                                       ; $6D1E: $49
    jr nz, jr_01A_6D89                            ; $6D1F: $20 $68

    ld l, a                                       ; $6D21: $6F
    ld [hl], b                                    ; $6D22: $70
    ld h, l                                       ; $6D23: $65
    jr nz, jr_01A_6D9F                            ; $6D24: $20 $79

    ld l, a                                       ; $6D26: $6F
    ld [hl], l                                    ; $6D27: $75
    jr nz, @+$68                                  ; $6D28: $20 $66

    ld l, c                                       ; $6D2A: $69
    ld l, [hl]                                    ; $6D2B: $6E
    ld h, h                                       ; $6D2C: $64
    rst $38                                       ; $6D2D: $FF

jr_01A_6D2E:
    ld [hl], a                                    ; $6D2E: $77
    ld l, b                                       ; $6D2F: $68
    ld h, c                                       ; $6D30: $61
    ld [hl], h                                    ; $6D31: $74

jr_01A_6D32:
    jr nz, jr_01A_6DAD                            ; $6D32: $20 $79

    ld l, a                                       ; $6D34: $6F
    ld [hl], l                                    ; $6D35: $75
    jr nz, jr_01A_6D99                            ; $6D36: $20 $61

    ld [hl], d                                    ; $6D38: $72
    ld h, l                                       ; $6D39: $65
    cp $6C                                        ; $6D3A: $FE $6C
    ld l, a                                       ; $6D3C: $6F
    ld l, a                                       ; $6D3D: $6F
    ld l, e                                       ; $6D3E: $6B

jr_01A_6D3F:
    ld l, c                                       ; $6D3F: $69
    ld l, [hl]                                    ; $6D40: $6E
    ld h, a                                       ; $6D41: $67
    jr nz, jr_01A_6DAA                            ; $6D42: $20 $66

    ld l, a                                       ; $6D44: $6F
    ld [hl], d                                    ; $6D45: $72
    rst $38                                       ; $6D46: $FF
    ld [hl], h                                    ; $6D47: $74
    ld l, a                                       ; $6D48: $6F
    ld l, a                                       ; $6D49: $6F
    inc l                                         ; $6D4A: $2C
    jr nz, jr_01A_6DA1                            ; $6D4B: $20 $54

    ld l, a                                       ; $6D4D: $6F
    ld l, [hl]                                    ; $6D4E: $6E
    ld a, c                                       ; $6D4F: $79
    ld l, $FE                                     ; $6D50: $2E $FE
    db $FD                                        ; $6D52: $FD
    sbc d                                         ; $6D53: $9A
    ld e, b                                       ; $6D54: $58
    ld c, $42                                     ; $6D55: $0E $42
    sbc e                                         ; $6D57: $9B
    ld c, b                                       ; $6D58: $48
    ld a, b                                       ; $6D59: $78
    sbc a                                         ; $6D5A: $9F
    ld c, c                                       ; $6D5B: $49
    daa                                           ; $6D5C: $27
    ld l, l                                       ; $6D5D: $6D
    jr nz, @+$75                                  ; $6D5E: $20 $73

    ld l, a                                       ; $6D60: $6F
    ld [hl], d                                    ; $6D61: $72
    ld [hl], d                                    ; $6D62: $72
    ld a, c                                       ; $6D63: $79
    jr nz, @+$4B                                  ; $6D64: $20 $49

    rst $38                                       ; $6D66: $FF
    ld h, e                                       ; $6D67: $63
    ld h, c                                       ; $6D68: $61

jr_01A_6D69:
    ld l, [hl]                                    ; $6D69: $6E
    daa                                           ; $6D6A: $27
    ld [hl], h                                    ; $6D6B: $74
    jr nz, jr_01A_6DD0                            ; $6D6C: $20 $62

    ld h, l                                       ; $6D6E: $65
    jr nz, jr_01A_6DE0                            ; $6D6F: $20 $6F

jr_01A_6D71:
    ld h, [hl]                                    ; $6D71: $66
    cp $6D                                        ; $6D72: $FE $6D
    ld l, a                                       ; $6D74: $6F
    ld [hl], d                                    ; $6D75: $72
    ld h, l                                       ; $6D76: $65
    jr nz, jr_01A_6DE1                            ; $6D77: $20 $68

    ld h, l                                       ; $6D79: $65
    ld l, h                                       ; $6D7A: $6C
    ld [hl], b                                    ; $6D7B: $70
    ld l, $FE                                     ; $6D7C: $2E $FE
    ld d, a                                       ; $6D7E: $57
    ld l, a                                       ; $6D7F: $6F

jr_01A_6D80:
    ld [hl], l                                    ; $6D80: $75
    ld l, h                                       ; $6D81: $6C
    ld h, h                                       ; $6D82: $64
    jr nz, @+$7B                                  ; $6D83: $20 $79

    ld l, a                                       ; $6D85: $6F
    ld [hl], l                                    ; $6D86: $75
    rst $38                                       ; $6D87: $FF
    ld l, h                                       ; $6D88: $6C

jr_01A_6D89:
    ld l, c                                       ; $6D89: $69
    ld l, e                                       ; $6D8A: $6B
    ld h, l                                       ; $6D8B: $65
    jr nz, jr_01A_6DFB                            ; $6D8C: $20 $6D

    ld h, l                                       ; $6D8E: $65
    jr nz, jr_01A_6E05                            ; $6D8F: $20 $74

    ld l, a                                       ; $6D91: $6F
    cp $72                                        ; $6D92: $FE $72
    ld h, l                                       ; $6D94: $65
    ld h, e                                       ; $6D95: $63
    ld l, a                                       ; $6D96: $6F
    ld [hl], d                                    ; $6D97: $72
    ld h, h                                       ; $6D98: $64

jr_01A_6D99:
    jr nz, jr_01A_6E14                            ; $6D99: $20 $79

    ld l, a                                       ; $6D9B: $6F
    ld [hl], l                                    ; $6D9C: $75
    ld [hl], d                                    ; $6D9D: $72
    rst $38                                       ; $6D9E: $FF

jr_01A_6D9F:
    ld l, d                                       ; $6D9F: $6A
    ld l, a                                       ; $6DA0: $6F

jr_01A_6DA1:
    ld [hl], l                                    ; $6DA1: $75
    ld [hl], d                                    ; $6DA2: $72
    ld l, [hl]                                    ; $6DA3: $6E
    ld h, l                                       ; $6DA4: $65
    ld a, c                                       ; $6DA5: $79
    ccf                                           ; $6DA6: $3F
    cp $FD                                        ; $6DA7: $FE $FD
    sbc c                                         ; $6DA9: $99

jr_01A_6DAA:
    sbc e                                         ; $6DAA: $9B
    ld a, b                                       ; $6DAB: $78
    ld [hl], b                                    ; $6DAC: $70

jr_01A_6DAD:
    sbc a                                         ; $6DAD: $9F
    jr nz, jr_01A_6E09                            ; $6DAE: $20 $59

    ld h, l                                       ; $6DB0: $65
    ld [hl], e                                    ; $6DB1: $73
    rst $38                                       ; $6DB2: $FF
    jr nz, @+$50                                  ; $6DB3: $20 $4E

    ld l, a                                       ; $6DB5: $6F
    db $FD                                        ; $6DB6: $FD
    sbc h                                         ; $6DB7: $9C
    ld [bc], a                                    ; $6DB8: $02
    ld a, [de]                                    ; $6DB9: $1A
    ld [hl], d                                    ; $6DBA: $72
    ld l, [hl]                                    ; $6DBB: $6E
    ld a, [de]                                    ; $6DBC: $1A
    add l                                         ; $6DBD: $85
    ld l, [hl]                                    ; $6DBE: $6E
    sbc e                                         ; $6DBF: $9B
    ld c, b                                       ; $6DC0: $48
    ld a, b                                       ; $6DC1: $78
    sbc a                                         ; $6DC2: $9F
    ld l, $2E                                     ; $6DC3: $2E $2E
    ld l, $2E                                     ; $6DC5: $2E $2E
    ld l, $2E                                     ; $6DC7: $2E $2E
    ld l, $2E                                     ; $6DC9: $2E $2E
    ld l, $FE                                     ; $6DCB: $2E $FE
    ld d, a                                       ; $6DCD: $57
    ld l, a                                       ; $6DCE: $6F
    ld [hl], l                                    ; $6DCF: $75

jr_01A_6DD0:
    ld l, h                                       ; $6DD0: $6C
    ld h, h                                       ; $6DD1: $64
    jr nz, jr_01A_6E4D                            ; $6DD2: $20 $79

    ld l, a                                       ; $6DD4: $6F
    ld [hl], l                                    ; $6DD5: $75
    rst $38                                       ; $6DD6: $FF
    ld l, h                                       ; $6DD7: $6C
    ld l, c                                       ; $6DD8: $69
    ld l, e                                       ; $6DD9: $6B
    ld h, l                                       ; $6DDA: $65
    jr nz, jr_01A_6E4A                            ; $6DDB: $20 $6D

    ld h, l                                       ; $6DDD: $65
    jr nz, jr_01A_6E54                            ; $6DDE: $20 $74

jr_01A_6DE0:
    ld l, a                                       ; $6DE0: $6F

jr_01A_6DE1:
    cp $72                                        ; $6DE1: $FE $72
    ld h, l                                       ; $6DE3: $65
    ld h, e                                       ; $6DE4: $63
    ld l, a                                       ; $6DE5: $6F
    ld [hl], d                                    ; $6DE6: $72
    ld h, h                                       ; $6DE7: $64
    jr nz, jr_01A_6E63                            ; $6DE8: $20 $79

    ld l, a                                       ; $6DEA: $6F
    ld [hl], l                                    ; $6DEB: $75
    ld [hl], d                                    ; $6DEC: $72
    rst $38                                       ; $6DED: $FF
    ld l, d                                       ; $6DEE: $6A
    ld l, a                                       ; $6DEF: $6F
    ld [hl], l                                    ; $6DF0: $75
    ld [hl], d                                    ; $6DF1: $72
    ld l, [hl]                                    ; $6DF2: $6E
    ld h, l                                       ; $6DF3: $65
    ld a, c                                       ; $6DF4: $79
    ccf                                           ; $6DF5: $3F
    cp $FD                                        ; $6DF6: $FE $FD
    sbc c                                         ; $6DF8: $99
    sbc e                                         ; $6DF9: $9B
    ld a, b                                       ; $6DFA: $78

jr_01A_6DFB:
    ld [hl], b                                    ; $6DFB: $70
    sbc a                                         ; $6DFC: $9F
    jr nz, jr_01A_6E58                            ; $6DFD: $20 $59

    ld h, l                                       ; $6DFF: $65
    ld [hl], e                                    ; $6E00: $73
    rst $38                                       ; $6E01: $FF
    jr nz, @+$50                                  ; $6E02: $20 $4E

    ld l, a                                       ; $6E04: $6F

jr_01A_6E05:
    db $FD                                        ; $6E05: $FD
    sbc h                                         ; $6E06: $9C
    ld [bc], a                                    ; $6E07: $02
    ld a, [de]                                    ; $6E08: $1A

jr_01A_6E09:
    and b                                         ; $6E09: $A0
    ld l, [hl]                                    ; $6E0A: $6E
    ld a, [de]                                    ; $6E0B: $1A
    or e                                          ; $6E0C: $B3
    ld l, [hl]                                    ; $6E0D: $6E
    sbc e                                         ; $6E0E: $9B
    ld c, b                                       ; $6E0F: $48
    ld a, b                                       ; $6E10: $78
    sbc a                                         ; $6E11: $9F
    ld c, b                                       ; $6E12: $48
    ld l, a                                       ; $6E13: $6F

jr_01A_6E14:
    ld [hl], a                                    ; $6E14: $77
    jr nz, jr_01A_6E78                            ; $6E15: $20 $61

    ld [hl], d                                    ; $6E17: $72
    ld h, l                                       ; $6E18: $65
    jr nz, jr_01A_6E94                            ; $6E19: $20 $79

    ld l, a                                       ; $6E1B: $6F
    ld [hl], l                                    ; $6E1C: $75
    rst $38                                       ; $6E1D: $FF
    ld h, h                                       ; $6E1E: $64
    ld l, a                                       ; $6E1F: $6F
    ld l, c                                       ; $6E20: $69
    ld l, [hl]                                    ; $6E21: $6E
    ld h, a                                       ; $6E22: $67
    inc l                                         ; $6E23: $2C
    jr nz, jr_01A_6E7A                            ; $6E24: $20 $54

    ld l, a                                       ; $6E26: $6F
    ld l, [hl]                                    ; $6E27: $6E
    ld a, c                                       ; $6E28: $79
    ccf                                           ; $6E29: $3F
    cp $57                                        ; $6E2A: $FE $57
    ld l, a                                       ; $6E2C: $6F
    ld [hl], l                                    ; $6E2D: $75
    ld l, h                                       ; $6E2E: $6C
    ld h, h                                       ; $6E2F: $64
    jr nz, jr_01A_6EAB                            ; $6E30: $20 $79

    ld l, a                                       ; $6E32: $6F
    ld [hl], l                                    ; $6E33: $75
    rst $38                                       ; $6E34: $FF
    ld l, h                                       ; $6E35: $6C
    ld l, c                                       ; $6E36: $69
    ld l, e                                       ; $6E37: $6B
    ld h, l                                       ; $6E38: $65
    jr nz, jr_01A_6EAF                            ; $6E39: $20 $74

    ld l, a                                       ; $6E3B: $6F
    jr nz, jr_01A_6EB0                            ; $6E3C: $20 $72

    ld h, l                                       ; $6E3E: $65
    ld [hl], e                                    ; $6E3F: $73
    ld [hl], h                                    ; $6E40: $74
    cp $61                                        ; $6E41: $FE $61
    ld l, [hl]                                    ; $6E43: $6E
    ld h, h                                       ; $6E44: $64
    jr nz, jr_01A_6EB9                            ; $6E45: $20 $72

    ld h, l                                       ; $6E47: $65
    ld h, e                                       ; $6E48: $63
    ld l, a                                       ; $6E49: $6F

jr_01A_6E4A:
    ld [hl], d                                    ; $6E4A: $72
    ld h, h                                       ; $6E4B: $64
    rst $38                                       ; $6E4C: $FF

jr_01A_6E4D:
    ld a, c                                       ; $6E4D: $79
    ld l, a                                       ; $6E4E: $6F
    ld [hl], l                                    ; $6E4F: $75
    ld [hl], d                                    ; $6E50: $72
    jr nz, @+$6C                                  ; $6E51: $20 $6A

    ld l, a                                       ; $6E53: $6F

jr_01A_6E54:
    ld [hl], l                                    ; $6E54: $75
    ld [hl], d                                    ; $6E55: $72
    ld l, [hl]                                    ; $6E56: $6E
    ld h, l                                       ; $6E57: $65

jr_01A_6E58:
    ld a, c                                       ; $6E58: $79
    ccf                                           ; $6E59: $3F
    cp $FD                                        ; $6E5A: $FE $FD
    sbc c                                         ; $6E5C: $99
    sbc e                                         ; $6E5D: $9B
    ld a, b                                       ; $6E5E: $78
    ld [hl], b                                    ; $6E5F: $70
    sbc a                                         ; $6E60: $9F
    jr nz, jr_01A_6EBC                            ; $6E61: $20 $59

jr_01A_6E63:
    ld h, l                                       ; $6E63: $65
    ld [hl], e                                    ; $6E64: $73
    rst $38                                       ; $6E65: $FF
    jr nz, @+$50                                  ; $6E66: $20 $4E

    ld l, a                                       ; $6E68: $6F
    db $FD                                        ; $6E69: $FD
    sbc h                                         ; $6E6A: $9C
    ld [bc], a                                    ; $6E6B: $02
    ld a, [de]                                    ; $6E6C: $1A
    ld [hl], d                                    ; $6E6D: $72
    ld l, [hl]                                    ; $6E6E: $6E
    ld a, [de]                                    ; $6E6F: $1A
    add l                                         ; $6E70: $85
    ld l, [hl]                                    ; $6E71: $6E
    sub [hl]                                      ; $6E72: $96
    ld a, [de]                                    ; $6E73: $1A
    add $6E                                       ; $6E74: $C6 $6E
    ld l, [hl]                                    ; $6E76: $6E
    rrca                                          ; $6E77: $0F

jr_01A_6E78:
    rst $38                                       ; $6E78: $FF
    ld a, a                                       ; $6E79: $7F

jr_01A_6E7A:
    halt                                          ; $6E7A: $76
    jr nz, jr_01A_6E8C                            ; $6E7B: $20 $0F

    sub d                                         ; $6E7D: $92
    ld bc, $4040                                  ; $6E7E: $01 $40 $40
    ld b, l                                       ; $6E81: $45
    ld a, [de]                                    ; $6E82: $1A
    ld a, d                                       ; $6E83: $7A
    ld l, a                                       ; $6E84: $6F
    sbc c                                         ; $6E85: $99
    sbc e                                         ; $6E86: $9B
    ld c, b                                       ; $6E87: $48
    ld a, b                                       ; $6E88: $78
    sbc a                                         ; $6E89: $9F
    ld b, a                                       ; $6E8A: $47
    ld l, a                                       ; $6E8B: $6F

jr_01A_6E8C:
    ld l, a                                       ; $6E8C: $6F
    ld h, h                                       ; $6E8D: $64
    jr nz, jr_01A_6EFC                            ; $6E8E: $20 $6C

    ld [hl], l                                    ; $6E90: $75
    ld h, e                                       ; $6E91: $63
    ld l, e                                       ; $6E92: $6B
    inc l                                         ; $6E93: $2C

jr_01A_6E94:
    rst $38                                       ; $6E94: $FF
    ld d, h                                       ; $6E95: $54
    ld l, a                                       ; $6E96: $6F
    ld l, [hl]                                    ; $6E97: $6E
    ld a, c                                       ; $6E98: $79
    ld hl, $FDFE                                  ; $6E99: $21 $FE $FD
    sbc d                                         ; $6E9C: $9A
    ld e, b                                       ; $6E9D: $58
    ld bc, $9642                                  ; $6E9E: $01 $42 $96
    ld a, [de]                                    ; $6EA1: $1A
    add $6E                                       ; $6EA2: $C6 $6E
    ld l, [hl]                                    ; $6EA4: $6E
    rrca                                          ; $6EA5: $0F
    rst $38                                       ; $6EA6: $FF
    ld a, a                                       ; $6EA7: $7F
    halt                                          ; $6EA8: $76
    jr nz, jr_01A_6EBA                            ; $6EA9: $20 $0F

jr_01A_6EAB:
    sub d                                         ; $6EAB: $92
    ld bc, $4040                                  ; $6EAC: $01 $40 $40

jr_01A_6EAF:
    ld b, l                                       ; $6EAF: $45

jr_01A_6EB0:
    ld a, [de]                                    ; $6EB0: $1A
    ld a, d                                       ; $6EB1: $7A
    ld l, a                                       ; $6EB2: $6F
    sub [hl]                                      ; $6EB3: $96
    ld a, [de]                                    ; $6EB4: $1A
    add $6E                                       ; $6EB5: $C6 $6E
    ld l, [hl]                                    ; $6EB7: $6E
    rrca                                          ; $6EB8: $0F

jr_01A_6EB9:
    rst $38                                       ; $6EB9: $FF

jr_01A_6EBA:
    ld a, a                                       ; $6EBA: $7F
    halt                                          ; $6EBB: $76

jr_01A_6EBC:
    jr nz, jr_01A_6ECD                            ; $6EBC: $20 $0F

    sub d                                         ; $6EBE: $92
    ld bc, $4040                                  ; $6EBF: $01 $40 $40
    ld b, l                                       ; $6EC2: $45
    ld a, [de]                                    ; $6EC3: $1A
    ld a, d                                       ; $6EC4: $7A
    ld l, a                                       ; $6EC5: $6F
    dec b                                         ; $6EC6: $05
    nop                                           ; $6EC7: $00
    add c                                         ; $6EC8: $81
    ld e, l                                       ; $6EC9: $5D
    dec b                                         ; $6ECA: $05
    ld [de], a                                    ; $6ECB: $12
    ld l, l                                       ; $6ECC: $6D

jr_01A_6ECD:
    pop de                                        ; $6ECD: $D1
    nop                                           ; $6ECE: $00
    jr nz, @-$53                                  ; $6ECF: $20 $AB

    ld d, b                                       ; $6ED1: $50
    ld [hl+], a                                   ; $6ED2: $22
    dec b                                         ; $6ED3: $05
    ld b, b                                       ; $6ED4: $40
    ld [bc], a                                    ; $6ED5: $02
    dec b                                         ; $6ED6: $05
    dec b                                         ; $6ED7: $05
    ld [de], a                                    ; $6ED8: $12
    ld [de], a                                    ; $6ED9: $12
    xor h                                         ; $6EDA: $AC

jr_01A_6EDB:
    or d                                          ; $6EDB: $B2
    and d                                         ; $6EDC: $A2
    ld bc, $0843                                  ; $6EDD: $01 $43 $08
    rrca                                          ; $6EE0: $0F
    ld bc, $A2B3                                  ; $6EE1: $01 $B3 $A2
    dec b                                         ; $6EE4: $05
    inc bc                                        ; $6EE5: $03
    rrca                                          ; $6EE6: $0F
    inc b                                         ; $6EE7: $04
    dec b                                         ; $6EE8: $05
    jr jr_01A_6F05                                ; $6EE9: $18 $1A

    ld d, $6F                                     ; $6EEB: $16 $6F
    ld b, e                                       ; $6EED: $43
    ld [$010F], sp                                ; $6EEE: $08 $0F $01
    or e                                          ; $6EF1: $B3
    and d                                         ; $6EF2: $A2
    dec b                                         ; $6EF3: $05
    inc b                                         ; $6EF4: $04
    rrca                                          ; $6EF5: $0F
    inc b                                         ; $6EF6: $04
    dec b                                         ; $6EF7: $05
    jr jr_01A_6F14                                ; $6EF8: $18 $1A

    ld d, $6F                                     ; $6EFA: $16 $6F

jr_01A_6EFC:
    ld b, e                                       ; $6EFC: $43
    ld [$B100], sp                                ; $6EFD: $08 $00 $B1

jr_01A_6F00:
    and c                                         ; $6F00: $A1
    jr nz, jr_01A_6F16                            ; $6F01: $20 $13

    inc b                                         ; $6F03: $04
    dec b                                         ; $6F04: $05

jr_01A_6F05:
    ld a, [bc]                                    ; $6F05: $0A
    ld a, [de]                                    ; $6F06: $1A
    ld d, $6F                                     ; $6F07: $16 $6F
    ld b, e                                       ; $6F09: $43
    add hl, bc                                    ; $6F0A: $09
    nop                                           ; $6F0B: $00
    dec h                                         ; $6F0C: $25
    and c                                         ; $6F0D: $A1
    ld bc, $0411                                  ; $6F0E: $01 $11 $04
    dec b                                         ; $6F11: $05
    ld b, $1A                                     ; $6F12: $06 $1A

jr_01A_6F14:
    dec sp                                        ; $6F14: $3B
    ld l, a                                       ; $6F15: $6F

jr_01A_6F16:
    sub e                                         ; $6F16: $93
    ld h, l                                       ; $6F17: $65
    rst $28                                       ; $6F18: $EF
    ld b, c                                       ; $6F19: $41
    ld c, a                                       ; $6F1A: $4F
    ld h, h                                       ; $6F1B: $64
    pop de                                        ; $6F1C: $D1
    ld b, c                                       ; $6F1D: $41
    ld l, c                                       ; $6F1E: $69
    sub $41                                       ; $6F1F: $D6 $41
    ld h, [hl]                                    ; $6F21: $66
    ret nz                                        ; $6F22: $C0

    ld e, h                                       ; $6F23: $5C
    ld hl, $0005                                  ; $6F24: $21 $05 $00
    add c                                         ; $6F27: $81
    ld e, l                                       ; $6F28: $5D
    ld [bc], a                                    ; $6F29: $02
    ld de, $D156                                  ; $6F2A: $11 $56 $D1
    nop                                           ; $6F2D: $00
    jr nz, jr_01A_6EDB                            ; $6F2E: $20 $AB

    ld d, b                                       ; $6F30: $50
    ld [hl+], a                                   ; $6F31: $22
    dec b                                         ; $6F32: $05
    ld b, b                                       ; $6F33: $40
    dec bc                                        ; $6F34: $0B
    nop                                           ; $6F35: $00
    nop                                           ; $6F36: $00
    add d                                         ; $6F37: $82
    ld hl, $4294                                  ; $6F38: $21 $94 $42
    sub e                                         ; $6F3B: $93
    ld h, l                                       ; $6F3C: $65
    rst $28                                       ; $6F3D: $EF
    ld b, c                                       ; $6F3E: $41
    ld c, a                                       ; $6F3F: $4F
    ld h, h                                       ; $6F40: $64
    pop de                                        ; $6F41: $D1
    ld b, c                                       ; $6F42: $41
    ld l, c                                       ; $6F43: $69
    sub $41                                       ; $6F44: $D6 $41
    ld h, [hl]                                    ; $6F46: $66
    ret nz                                        ; $6F47: $C0

    ld e, h                                       ; $6F48: $5C
    ld hl, $0005                                  ; $6F49: $21 $05 $00
    add c                                         ; $6F4C: $81
    ld e, l                                       ; $6F4D: $5D
    ld [bc], a                                    ; $6F4E: $02
    ld de, $D156                                  ; $6F4F: $11 $56 $D1
    nop                                           ; $6F52: $00
    jr nz, jr_01A_6F00                            ; $6F53: $20 $AB

    ld d, b                                       ; $6F55: $50
    ld [hl+], a                                   ; $6F56: $22
    dec b                                         ; $6F57: $05
    ld b, b                                       ; $6F58: $40
    dec bc                                        ; $6F59: $0B
    nop                                           ; $6F5A: $00
    dec b                                         ; $6F5B: $05
    ld [bc], a                                    ; $6F5C: $02
    db $ED                                        ; $6F5D: $ED
    ld h, e                                       ; $6F5E: $63
    ld c, $0A                                     ; $6F5F: $0E $0A
    sub $D0                                       ; $6F61: $D6 $D0
    nop                                           ; $6F63: $00
    rrca                                          ; $6F64: $0F
    ret z                                         ; $6F65: $C8

    ld [hl], e                                    ; $6F66: $73
    ld a, [de]                                    ; $6F67: $1A
    db $DD                                        ; $6F68: $DD
    ld l, a                                       ; $6F69: $6F
    dec bc                                        ; $6F6A: $0B
    ld [bc], a                                    ; $6F6B: $02
    ld l, e                                       ; $6F6C: $6B
    jr nc, jr_01A_6F7A                            ; $6F6D: $30 $0B

    ld h, b                                       ; $6F6F: $60
    ld l, a                                       ; $6F70: $6F
    nop                                           ; $6F71: $00
    add b                                         ; $6F72: $80
    nop                                           ; $6F73: $00
    nop                                           ; $6F74: $00
    add d                                         ; $6F75: $82
    rra                                           ; $6F76: $1F
    dec de                                        ; $6F77: $1B
    sub h                                         ; $6F78: $94
    ld b, d                                       ; $6F79: $42

jr_01A_6F7A:
    sub e                                         ; $6F7A: $93
    ld h, l                                       ; $6F7B: $65
    rst $28                                       ; $6F7C: $EF
    ld b, c                                       ; $6F7D: $41
    ld c, a                                       ; $6F7E: $4F
    ld h, h                                       ; $6F7F: $64
    pop de                                        ; $6F80: $D1
    ld b, c                                       ; $6F81: $41
    ld l, c                                       ; $6F82: $69
    sub $41                                       ; $6F83: $D6 $41
    ld h, [hl]                                    ; $6F85: $66
    ret nz                                        ; $6F86: $C0

    ld e, h                                       ; $6F87: $5C
    ld hl, $0F6F                                  ; $6F88: $21 $6F $0F
    rst $38                                       ; $6F8B: $FF
    ld a, a                                       ; $6F8C: $7F
    dec b                                         ; $6F8D: $05
    nop                                           ; $6F8E: $00
    ld l, e                                       ; $6F8F: $6B
    ld c, d                                       ; $6F90: $4A
    inc bc                                        ; $6F91: $03

jr_01A_6F92:
    ld de, $D157                                  ; $6F92: $11 $57 $D1
    nop                                           ; $6F95: $00
    ld a, [de]                                    ; $6F96: $1A
    bit 5, a                                      ; $6F97: $CB $6F
    ld [hl+], a                                   ; $6F99: $22
    dec b                                         ; $6F9A: $05
    ld b, b                                       ; $6F9B: $40
    dec bc                                        ; $6F9C: $0B
    nop                                           ; $6F9D: $00
    dec b                                         ; $6F9E: $05
    ld [bc], a                                    ; $6F9F: $02
    db $ED                                        ; $6FA0: $ED
    ld h, e                                       ; $6FA1: $63
    ld c, $0A                                     ; $6FA2: $0E $0A
    sub $D0                                       ; $6FA4: $D6 $D0
    nop                                           ; $6FA6: $00
    rrca                                          ; $6FA7: $0F
    ret z                                         ; $6FA8: $C8

    ld [hl], e                                    ; $6FA9: $73
    ld a, [de]                                    ; $6FAA: $1A

jr_01A_6FAB:
    db $DD                                        ; $6FAB: $DD
    ld l, a                                       ; $6FAC: $6F
    dec bc                                        ; $6FAD: $0B
    ld [bc], a                                    ; $6FAE: $02
    ld l, e                                       ; $6FAF: $6B
    jr nc, @+$0D                                  ; $6FB0: $30 $0B

    ld h, b                                       ; $6FB2: $60
    ld l, a                                       ; $6FB3: $6F
    nop                                           ; $6FB4: $00
    add b                                         ; $6FB5: $80
    nop                                           ; $6FB6: $00
    add d                                         ; $6FB7: $82
    rra                                           ; $6FB8: $1F
    dec de                                        ; $6FB9: $1B
    sub h                                         ; $6FBA: $94
    halt                                          ; $6FBB: $76
    jr nz, @+$11                                  ; $6FBC: $20 $0F

    ld e, h                                       ; $6FBE: $5C
    nop                                           ; $6FBF: $00
    ld [bc], a                                    ; $6FC0: $02
    rlca                                          ; $6FC1: $07
    nop                                           ; $6FC2: $00
    add c                                         ; $6FC3: $81
    ld e, l                                       ; $6FC4: $5D
    add hl, bc                                    ; $6FC5: $09
    nop                                           ; $6FC6: $00
    jr nz, jr_01A_6F92                            ; $6FC7: $20 $C9

    ld d, b                                       ; $6FC9: $50
    ld b, d                                       ; $6FCA: $42
    dec d                                         ; $6FCB: $15
    jr nz, @-$1B                                  ; $6FCC: $20 $E3

    ld e, d                                       ; $6FCE: $5A
    ld b, b                                       ; $6FCF: $40
    jr nz, jr_01A_6FAB                            ; $6FD0: $20 $D9

    ld e, d                                       ; $6FD2: $5A
    jr nz, jr_01A_6FF5                            ; $6FD3: $20 $20

    db $ED                                        ; $6FD5: $ED
    ld e, d                                       ; $6FD6: $5A
    stop                                          ; $6FD7: $10 $00
    ld e, h                                       ; $6FD9: $5C
    nop                                           ; $6FDA: $00
    ld [bc], a                                    ; $6FDB: $02
    ld b, d                                       ; $6FDC: $42
    inc d                                         ; $6FDD: $14
    rrca                                          ; $6FDE: $0F
    ret z                                         ; $6FDF: $C8

    ld [hl], e                                    ; $6FE0: $73
    ld e, e                                       ; $6FE1: $5B
    ld a, [de]                                    ; $6FE2: $1A
    ld c, $6E                                     ; $6FE3: $0E $6E
    ld b, l                                       ; $6FE5: $45
    rrca                                          ; $6FE6: $0F
    jr c, jr_01A_705D                             ; $6FE7: $38 $74

    ld b, d                                       ; $6FE9: $42
    add a                                         ; $6FEA: $87
    dec b                                         ; $6FEB: $05
    dec b                                         ; $6FEC: $05
    ret z                                         ; $6FED: $C8

    add a                                         ; $6FEE: $87
    dec b                                         ; $6FEF: $05
    dec b                                         ; $6FF0: $05
    ret z                                         ; $6FF1: $C8

    add a                                         ; $6FF2: $87
    dec b                                         ; $6FF3: $05
    dec b                                         ; $6FF4: $05

jr_01A_6FF5:
    ret z                                         ; $6FF5: $C8

    add a                                         ; $6FF6: $87
    dec b                                         ; $6FF7: $05
    dec b                                         ; $6FF8: $05
    ret z                                         ; $6FF9: $C8

    add a                                         ; $6FFA: $87
    dec b                                         ; $6FFB: $05
    dec b                                         ; $6FFC: $05
    ret z                                         ; $6FFD: $C8

    xor h                                         ; $6FFE: $AC
    or d                                          ; $6FFF: $B2
    and d                                         ; $7000: $A2
    ld bc, $1A96                                  ; $7001: $01 $96 $1A
    add $6E                                       ; $7004: $C6 $6E
    sub e                                         ; $7006: $93
    ld h, l                                       ; $7007: $65
    rst $28                                       ; $7008: $EF
    ld b, c                                       ; $7009: $41
    ld c, a                                       ; $700A: $4F
    ld h, h                                       ; $700B: $64
    pop de                                        ; $700C: $D1
    ld b, c                                       ; $700D: $41
    ld l, c                                       ; $700E: $69
    sub $41                                       ; $700F: $D6 $41
    ld h, [hl]                                    ; $7011: $66
    ret nz                                        ; $7012: $C0

    ld e, h                                       ; $7013: $5C
    ld hl, $0084                                  ; $7014: $21 $84 $00
    nop                                           ; $7017: $00
    dec b                                         ; $7018: $05
    nop                                           ; $7019: $00
    ld l, e                                       ; $701A: $6B
    ld c, d                                       ; $701B: $4A
    inc bc                                        ; $701C: $03
    ld de, $D157                                  ; $701D: $11 $57 $D1
    nop                                           ; $7020: $00
    ld a, [de]                                    ; $7021: $1A
    ld c, h                                       ; $7022: $4C
    ld [hl], b                                    ; $7023: $70
    ld [hl+], a                                   ; $7024: $22
    dec b                                         ; $7025: $05
    ld b, b                                       ; $7026: $40
    dec b                                         ; $7027: $05
    ld [bc], a                                    ; $7028: $02
    db $ED                                        ; $7029: $ED
    ld h, e                                       ; $702A: $63
    dec b                                         ; $702B: $05
    ld a, [bc]                                    ; $702C: $0A
    call $00D0                                    ; $702D: $CD $D0 $00
    ld a, [de]                                    ; $7030: $1A
    cp l                                          ; $7031: $BD

jr_01A_7032:
    ld [hl], b                                    ; $7032: $70
    ld a, [de]                                    ; $7033: $1A
    ld h, l                                       ; $7034: $65
    ld [hl], c                                    ; $7035: $71
    ld l, e                                       ; $7036: $6B
    add hl, hl                                    ; $7037: $29
    dec bc                                        ; $7038: $0B
    ld h, b                                       ; $7039: $60

jr_01A_703A:
    ld l, a                                       ; $703A: $6F
    nop                                           ; $703B: $00
    add b                                         ; $703C: $80
    nop                                           ; $703D: $00

jr_01A_703E:
    dec bc                                        ; $703E: $0B
    nop                                           ; $703F: $00
    add d                                         ; $7040: $82
    rra                                           ; $7041: $1F
    dec de                                        ; $7042: $1B
    ld l, a                                       ; $7043: $6F
    rrca                                          ; $7044: $0F
    rst $38                                       ; $7045: $FF

jr_01A_7046:
    ld a, a                                       ; $7046: $7F
    sub h                                         ; $7047: $94
    halt                                          ; $7048: $76
    jr nz, @+$11                                  ; $7049: $20 $0F

    ld b, d                                       ; $704B: $42
    inc d                                         ; $704C: $14
    jr nz, jr_01A_7032                            ; $704D: $20 $E3

    ld e, d                                       ; $704F: $5A
    ld b, b                                       ; $7050: $40
    jr nc, jr_01A_7067                            ; $7051: $30 $14

    jr nz, @-$25                                  ; $7053: $20 $D9

    ld e, d                                       ; $7055: $5A

jr_01A_7056:
    ld b, b                                       ; $7056: $40
    jr jr_01A_706D                                ; $7057: $18 $14

    jr nz, jr_01A_703E                            ; $7059: $20 $E3

    ld e, d                                       ; $705B: $5A
    ld b, b                                       ; $705C: $40

jr_01A_705D:
    jr jr_01A_7073                                ; $705D: $18 $14

    jr nz, jr_01A_703A                            ; $705F: $20 $D9

    ld e, d                                       ; $7061: $5A
    ld b, b                                       ; $7062: $40
    inc c                                         ; $7063: $0C
    inc d                                         ; $7064: $14
    jr nz, @-$1B                                  ; $7065: $20 $E3

jr_01A_7067:
    ld e, d                                       ; $7067: $5A
    ld b, b                                       ; $7068: $40
    inc c                                         ; $7069: $0C
    inc d                                         ; $706A: $14
    jr nz, jr_01A_7046                            ; $706B: $20 $D9

jr_01A_706D:
    ld e, d                                       ; $706D: $5A
    ld b, b                                       ; $706E: $40
    inc b                                         ; $706F: $04
    inc d                                         ; $7070: $14
    jr nz, jr_01A_7056                            ; $7071: $20 $E3

jr_01A_7073:
    ld e, d                                       ; $7073: $5A
    ld b, b                                       ; $7074: $40
    inc b                                         ; $7075: $04
    dec d                                         ; $7076: $15
    jr nz, @-$11                                  ; $7077: $20 $ED

    ld e, d                                       ; $7079: $5A
    db $10                                        ; $707A: $10
    jr nz, jr_01A_7046                            ; $707B: $20 $C9

    ld d, b                                       ; $707D: $50
    nop                                           ; $707E: $00
    nop                                           ; $707F: $00

jr_01A_7080:
    ld e, e                                       ; $7080: $5B
    ld a, [de]                                    ; $7081: $1A
    ld a, [de]                                    ; $7082: $1A
    ld l, d                                       ; $7083: $6A
    ld h, d                                       ; $7084: $62
    ld bc, $020B                                  ; $7085: $01 $0B $02
    dec d                                         ; $7088: $15
    jr nz, @-$11                                  ; $7089: $20 $ED

    ld c, a                                       ; $708B: $4F
    db $10                                        ; $708C: $10
    jr nz, jr_01A_7080                            ; $708D: $20 $F1

    ld d, b                                       ; $708F: $50
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    ld h, b                                       ; $7092: $60
    ld bc, $2015                                  ; $7093: $01 $15 $20
    or e                                          ; $7096: $B3
    ld c, a                                       ; $7097: $4F
    db $10                                        ; $7098: $10
    jr nz, jr_01A_7046                            ; $7099: $20 $AB

    ld d, b                                       ; $709B: $50
    nop                                           ; $709C: $00
    nop                                           ; $709D: $00
    ld h, b                                       ; $709E: $60
    ld [bc], a                                    ; $709F: $02
    ld e, e                                       ; $70A0: $5B
    ld a, [de]                                    ; $70A1: $1A
    ld h, [hl]                                    ; $70A2: $66
    ld l, d                                       ; $70A3: $6A
    ld h, d                                       ; $70A4: $62
    inc bc                                        ; $70A5: $03
    ld d, [hl]                                    ; $70A6: $56
    inc bc                                        ; $70A7: $03
    ld h, b                                       ; $70A8: $60
    inc b                                         ; $70A9: $04
    ld e, e                                       ; $70AA: $5B
    ld a, [de]                                    ; $70AB: $1A
    rst $28                                       ; $70AC: $EF
    ld l, d                                       ; $70AD: $6A
    ld h, d                                       ; $70AE: $62
    dec b                                         ; $70AF: $05
    ld d, [hl]                                    ; $70B0: $56
    dec b                                         ; $70B1: $05
    ld h, b                                       ; $70B2: $60
    ld b, $5B                                     ; $70B3: $06 $5B
    ld a, [de]                                    ; $70B5: $1A
    ld sp, $626B                                  ; $70B6: $31 $6B $62
    rlca                                          ; $70B9: $07
    ld d, [hl]                                    ; $70BA: $56
    rlca                                          ; $70BB: $07
    ld b, d                                       ; $70BC: $42
    inc d                                         ; $70BD: $14
    rrca                                          ; $70BE: $0F
    cp [hl]                                       ; $70BF: $BE
    ld [hl], e                                    ; $70C0: $73
    inc d                                         ; $70C1: $14
    rrca                                          ; $70C2: $0F
    ld b, h                                       ; $70C3: $44
    ld [hl], e                                    ; $70C4: $73
    ld b, b                                       ; $70C5: $40
    ld b, b                                       ; $70C6: $40
    inc d                                         ; $70C7: $14
    rrca                                          ; $70C8: $0F
    cp [hl]                                       ; $70C9: $BE
    ld [hl], e                                    ; $70CA: $73
    ld d, [hl]                                    ; $70CB: $56
    ld bc, $1A5B                                  ; $70CC: $01 $5B $1A
    cpl                                           ; $70CF: $2F
    ld l, d                                       ; $70D0: $6A
    ld h, d                                       ; $70D1: $62
    ld [bc], a                                    ; $70D2: $02
    ld d, [hl]                                    ; $70D3: $56
    ld [bc], a                                    ; $70D4: $02
    ld h, b                                       ; $70D5: $60
    inc bc                                        ; $70D6: $03
    ld e, e                                       ; $70D7: $5B
    ld a, [de]                                    ; $70D8: $1A
    add d                                         ; $70D9: $82
    ld l, d                                       ; $70DA: $6A
    ld h, d                                       ; $70DB: $62
    inc b                                         ; $70DC: $04
    ld d, [hl]                                    ; $70DD: $56
    inc b                                         ; $70DE: $04
    ld h, b                                       ; $70DF: $60
    dec b                                         ; $70E0: $05
    ld e, e                                       ; $70E1: $5B
    ld a, [de]                                    ; $70E2: $1A
    nop                                           ; $70E3: $00
    ld l, e                                       ; $70E4: $6B
    ld h, d                                       ; $70E5: $62
    ld b, $56                                     ; $70E6: $06 $56
    ld b, $60                                     ; $70E8: $06 $60
    rlca                                          ; $70EA: $07
    ld b, b                                       ; $70EB: $40
    jr nz, jr_01A_7102                            ; $70EC: $20 $14

    rrca                                          ; $70EE: $0F
    or h                                          ; $70EF: $B4
    ld [hl], e                                    ; $70F0: $73
    ld b, b                                       ; $70F1: $40
    jr nc, jr_01A_7139                            ; $70F2: $30 $45

    ld a, [de]                                    ; $70F4: $1A
    rst $30                                       ; $70F5: $F7
    ld [hl], b                                    ; $70F6: $70
    ld e, e                                       ; $70F7: $5B
    ld a, [de]                                    ; $70F8: $1A
    push de                                       ; $70F9: $D5
    ld l, e                                       ; $70FA: $6B
    ld h, d                                       ; $70FB: $62
    add hl, bc                                    ; $70FC: $09
    inc d                                         ; $70FD: $14
    rrca                                          ; $70FE: $0F
    and $73                                       ; $70FF: $E6 $73
    ld b, b                                       ; $7101: $40

jr_01A_7102:
    ld b, b                                       ; $7102: $40
    dec d                                         ; $7103: $15
    rrca                                          ; $7104: $0F
    jp nc, $0873                                  ; $7105: $D2 $73 $08

    rrca                                          ; $7108: $0F
    ld a, [$0873]                                 ; $7109: $FA $73 $08
    rrca                                          ; $710C: $0F
    cp [hl]                                       ; $710D: $BE

jr_01A_710E:
    ld [hl], e                                    ; $710E: $73
    nop                                           ; $710F: $00
    nop                                           ; $7110: $00
    ld e, e                                       ; $7111: $5B
    ld a, [de]                                    ; $7112: $1A
    ld c, $6C                                     ; $7113: $0E $6C
    ld h, d                                       ; $7115: $62
    ld a, [bc]                                    ; $7116: $0A
    ld e, e                                       ; $7117: $5B
    ld a, [de]                                    ; $7118: $1A
    ld c, d                                       ; $7119: $4A
    ld l, h                                       ; $711A: $6C
    ld h, d                                       ; $711B: $62
    dec bc                                        ; $711C: $0B
    ld e, e                                       ; $711D: $5B
    ld a, [de]                                    ; $711E: $1A
    add [hl]                                      ; $711F: $86
    ld l, h                                       ; $7120: $6C
    ld h, d                                       ; $7121: $62
    inc c                                         ; $7122: $0C
    ld e, e                                       ; $7123: $5B
    ld a, [de]                                    ; $7124: $1A
    db $ED                                        ; $7125: $ED
    ld l, h                                       ; $7126: $6C
    ld h, d                                       ; $7127: $62
    dec c                                         ; $7128: $0D
    ld e, e                                       ; $7129: $5B
    ld a, [de]                                    ; $712A: $1A
    ld a, [de]                                    ; $712B: $1A
    ld l, l                                       ; $712C: $6D
    ld h, d                                       ; $712D: $62
    ld c, $15                                     ; $712E: $0E $15
    rrca                                          ; $7130: $0F
    inc [hl]                                      ; $7131: $34
    ld [hl], e                                    ; $7132: $73
    ld d, b                                       ; $7133: $50
    rrca                                          ; $7134: $0F
    ld h, h                                       ; $7135: $64
    ld [hl], e                                    ; $7136: $73
    db $10                                        ; $7137: $10
    rrca                                          ; $7138: $0F

jr_01A_7139:
    cp [hl]                                       ; $7139: $BE
    ld [hl], e                                    ; $713A: $73
    nop                                           ; $713B: $00
    nop                                           ; $713C: $00
    ld b, l                                       ; $713D: $45
    ld a, [de]                                    ; $713E: $1A
    ld e, e                                       ; $713F: $5B
    ld [hl], c                                    ; $7140: $71
    ld b, b                                       ; $7141: $40
    ld b, b                                       ; $7142: $40
    inc d                                         ; $7143: $14
    rrca                                          ; $7144: $0F
    and $73                                       ; $7145: $E6 $73
    ld e, e                                       ; $7147: $5B
    ld a, [de]                                    ; $7148: $1A
    and b                                         ; $7149: $A0
    ld l, e                                       ; $714A: $6B
    ld h, d                                       ; $714B: $62
    ld [$0F15], sp                                ; $714C: $08 $15 $0F
    inc [hl]                                      ; $714F: $34
    ld [hl], e                                    ; $7150: $73
    ld h, b                                       ; $7151: $60
    rrca                                          ; $7152: $0F
    or h                                          ; $7153: $B4
    ld [hl], e                                    ; $7154: $73
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    ld b, l                                       ; $7157: $45
    ld a, [de]                                    ; $7158: $1A
    ld e, e                                       ; $7159: $5B
    ld [hl], c                                    ; $715A: $71
    rlca                                          ; $715B: $07
    nop                                           ; $715C: $00
    add c                                         ; $715D: $81
    ld e, l                                       ; $715E: $5D
    add hl, bc                                    ; $715F: $09
    nop                                           ; $7160: $00
    jr nz, jr_01A_710E                            ; $7161: $20 $AB

    ld d, b                                       ; $7163: $50
    ld b, d                                       ; $7164: $42
    ld e, e                                       ; $7165: $5B
    ld a, [de]                                    ; $7166: $1A
    ld d, a                                       ; $7167: $57
    ld l, l                                       ; $7168: $6D
    ld b, l                                       ; $7169: $45
    rrca                                          ; $716A: $0F
    jr c, jr_01A_71E1                             ; $716B: $38 $74

    ld bc, $1417                                  ; $716D: $01 $17 $14
    ld b, l                                       ; $7170: $45
    cpl                                           ; $7171: $2F
    adc a                                         ; $7172: $8F
    ld b, l                                       ; $7173: $45
    ld bc, $0B05                                  ; $7174: $01 $05 $0B
    ld b, l                                       ; $7177: $45
    ld a, [de]                                    ; $7178: $1A
    dec sp                                        ; $7179: $3B
    ld [hl], a                                    ; $717A: $77
    xor h                                         ; $717B: $AC
    or d                                          ; $717C: $B2
    and d                                         ; $717D: $A2
    ld bc, $6593                                  ; $717E: $01 $93 $65
    ld a, a                                       ; $7181: $7F
    ld c, b                                       ; $7182: $48
    ld c, a                                       ; $7183: $4F
    ld h, h                                       ; $7184: $64
    rlca                                          ; $7185: $07
    ld c, h                                       ; $7186: $4C
    ld h, [hl]                                    ; $7187: $66
    ret nz                                        ; $7188: $C0

    ld e, h                                       ; $7189: $5C
    ld hl, $0005                                  ; $718A: $21 $05 $00
    add c                                         ; $718D: $81
    ld e, l                                       ; $718E: $5D
    dec b                                         ; $718F: $05
    dec b                                         ; $7190: $05

jr_01A_7191:
    ld l, c                                       ; $7191: $69
    ret nc                                        ; $7192: $D0

    nop                                           ; $7193: $00
    jr nz, jr_01A_7191                            ; $7194: $20 $FB

    ld d, b                                       ; $7196: $50
    ld [hl+], a                                   ; $7197: $22
    dec b                                         ; $7198: $05
    ld b, b                                       ; $7199: $40
    dec b                                         ; $719A: $05
    ld [$63CE], sp                                ; $719B: $08 $CE $63
    ld bc, $1501                                  ; $719E: $01 $01 $15
    ret nc                                        ; $71A1: $D0

    and h                                         ; $71A2: $A4
    ld l, $E3                                     ; $71A3: $2E $E3
    ld d, l                                       ; $71A5: $55
    ld [hl+], a                                   ; $71A6: $22
    dec b                                         ; $71A7: $05
    ld b, b                                       ; $71A8: $40
    dec b                                         ; $71A9: $05
    add hl, bc                                    ; $71AA: $09
    adc $63                                       ; $71AB: $CE $63
    ld bc, $1501                                  ; $71AD: $01 $01 $15
    ret nc                                        ; $71B0: $D0

    and h                                         ; $71B1: $A4
    ld l, $E3                                     ; $71B2: $2E $E3
    ld d, l                                       ; $71B4: $55
    ld [hl+], a                                   ; $71B5: $22
    dec b                                         ; $71B6: $05
    ld b, b                                       ; $71B7: $40
    dec b                                         ; $71B8: $05
    ld a, [bc]                                    ; $71B9: $0A
    adc $63                                       ; $71BA: $CE $63
    ld bc, $1501                                  ; $71BC: $01 $01 $15
    ret nc                                        ; $71BF: $D0

    and h                                         ; $71C0: $A4
    ld l, $E3                                     ; $71C1: $2E $E3
    ld d, l                                       ; $71C3: $55
    ld [hl+], a                                   ; $71C4: $22
    dec b                                         ; $71C5: $05
    ld b, b                                       ; $71C6: $40
    ld l, e                                       ; $71C7: $6B
    ld b, $0D                                     ; $71C8: $06 $0D
    ld [hl], b                                    ; $71CA: $70
    ld e, e                                       ; $71CB: $5B
    ld b, b                                       ; $71CC: $40
    adc d                                         ; $71CD: $8A
    nop                                           ; $71CE: $00
    dec bc                                        ; $71CF: $0B
    nop                                           ; $71D0: $00
    dec bc                                        ; $71D1: $0B
    ld [$090B], sp                                ; $71D2: $08 $0B $09
    dec bc                                        ; $71D5: $0B
    ld a, [bc]                                    ; $71D6: $0A
    nop                                           ; $71D7: $00
    add d                                         ; $71D8: $82
    rra                                           ; $71D9: $1F
    dec e                                         ; $71DA: $1D
    sub h                                         ; $71DB: $94
    ld b, d                                       ; $71DC: $42
    ld bc, $0C0C                                  ; $71DD: $01 $0C $0C
    ld b, l                                       ; $71E0: $45

jr_01A_71E1:
    ld a, [de]                                    ; $71E1: $1A
    ld a, e                                       ; $71E2: $7B
    ld [hl], c                                    ; $71E3: $71
    sbc e                                         ; $71E4: $9B
    ld a, b                                       ; $71E5: $78
    ld [hl], b                                    ; $71E6: $70
    sbc a                                         ; $71E7: $9F
    ld c, c                                       ; $71E8: $49
    ld [hl], h                                    ; $71E9: $74
    daa                                           ; $71EA: $27
    ld [hl], e                                    ; $71EB: $73
    jr nz, jr_01A_7265                            ; $71EC: $20 $77

    ld h, l                                       ; $71EE: $65
    ld l, h                                       ; $71EF: $6C
    ld h, h                                       ; $71F0: $64
    ld h, l                                       ; $71F1: $65
    ld h, h                                       ; $71F2: $64
    rst $38                                       ; $71F3: $FF
    ld [hl], h                                    ; $71F4: $74
    ld l, a                                       ; $71F5: $6F
    jr nz, jr_01A_726C                            ; $71F6: $20 $74

    ld l, b                                       ; $71F8: $68
    ld h, l                                       ; $71F9: $65
    jr nz, jr_01A_7262                            ; $71FA: $20 $66

    ld l, h                                       ; $71FC: $6C
    ld l, a                                       ; $71FD: $6F
    ld l, a                                       ; $71FE: $6F
    ld [hl], d                                    ; $71FF: $72
    ld l, $FE                                     ; $7200: $2E $FE
    db $FD                                        ; $7202: $FD
    sbc d                                         ; $7203: $9A
    ld b, d                                       ; $7204: $42
    sbc e                                         ; $7205: $9B
    ld a, b                                       ; $7206: $78
    ld [hl], b                                    ; $7207: $70
    sbc a                                         ; $7208: $9F
    ld b, [hl]                                    ; $7209: $46
    ld [hl], l                                    ; $720A: $75
    ld l, h                                       ; $720B: $6C
    ld l, h                                       ; $720C: $6C
    jr nz, jr_01A_727E                            ; $720D: $20 $6F

    ld h, [hl]                                    ; $720F: $66
    jr nz, jr_01A_7284                            ; $7210: $20 $72

    ld h, c                                       ; $7212: $61
    ld l, [hl]                                    ; $7213: $6E
    ld h, h                                       ; $7214: $64
    ld l, a                                       ; $7215: $6F
    ld l, l                                       ; $7216: $6D
    rst $38                                       ; $7217: $FF
    ld l, d                                       ; $7218: $6A
    ld [hl], l                                    ; $7219: $75
    ld l, [hl]                                    ; $721A: $6E
    ld l, e                                       ; $721B: $6B
    ld l, $FE                                     ; $721C: $2E $FE
    db $FD                                        ; $721E: $FD
    sbc d                                         ; $721F: $9A
    ld b, d                                       ; $7220: $42
    sbc e                                         ; $7221: $9B
    ld a, b                                       ; $7222: $78
    ld [hl], b                                    ; $7223: $70
    sbc a                                         ; $7224: $9F
    ld c, d                                       ; $7225: $4A
    ld [hl], l                                    ; $7226: $75
    ld l, [hl]                                    ; $7227: $6E
    ld l, e                                       ; $7228: $6B
    jr nz, jr_01A_729A                            ; $7229: $20 $6F

    ld h, e                                       ; $722B: $63
    ld h, e                                       ; $722C: $63
    ld [hl], l                                    ; $722D: $75
    ld [hl], b                                    ; $722E: $70
    ld l, c                                       ; $722F: $69
    ld h, l                                       ; $7230: $65
    ld [hl], e                                    ; $7231: $73
    rst $38                                       ; $7232: $FF
    ld [hl], h                                    ; $7233: $74
    ld l, b                                       ; $7234: $68
    ld l, c                                       ; $7235: $69
    ld [hl], e                                    ; $7236: $73
    jr nz, jr_01A_72AC                            ; $7237: $20 $73

    ld [hl], b                                    ; $7239: $70
    ld h, c                                       ; $723A: $61
    ld h, e                                       ; $723B: $63
    ld h, l                                       ; $723C: $65
    ld l, $FE                                     ; $723D: $2E $FE
    db $FD                                        ; $723F: $FD
    sbc d                                         ; $7240: $9A
    ld b, d                                       ; $7241: $42
    sbc a                                         ; $7242: $9F
    ld d, b                                       ; $7243: $50
    ld [hl], d                                    ; $7244: $72
    ld l, a                                       ; $7245: $6F
    ld h, a                                       ; $7246: $67
    ld [hl], d                                    ; $7247: $72
    ld h, l                                       ; $7248: $65
    ld [hl], e                                    ; $7249: $73
    ld [hl], e                                    ; $724A: $73
    ld l, c                                       ; $724B: $69
    halt                                          ; $724C: $76
    ld h, l                                       ; $724D: $65
    rst $38                                       ; $724E: $FF
    ld b, d                                       ; $724F: $42
    ld [hl], d                                    ; $7250: $72
    ld l, c                                       ; $7251: $69
    ld h, h                                       ; $7252: $64
    ld h, a                                       ; $7253: $67
    ld h, l                                       ; $7254: $65
    jr nz, jr_01A_7299                            ; $7255: $20 $42

    ld [hl], l                                    ; $7257: $75
    ld l, c                                       ; $7258: $69
    ld l, h                                       ; $7259: $6C
    ld h, h                                       ; $725A: $64
    ld l, c                                       ; $725B: $69
    ld l, [hl]                                    ; $725C: $6E
    ld h, a                                       ; $725D: $67
    cp $54                                        ; $725E: $FE $54
    ld h, l                                       ; $7260: $65
    ld h, e                                       ; $7261: $63

jr_01A_7262:
    ld l, b                                       ; $7262: $68
    ld l, [hl]                                    ; $7263: $6E
    ld l, c                                       ; $7264: $69

jr_01A_7265:
    ld [hl], c                                    ; $7265: $71
    ld [hl], l                                    ; $7266: $75
    ld h, l                                       ; $7267: $65
    ld [hl], e                                    ; $7268: $73
    cp $62                                        ; $7269: $FE $62
    ld a, c                                       ; $726B: $79

jr_01A_726C:
    jr nz, jr_01A_72BD                            ; $726C: $20 $4F

    ld [hl], d                                    ; $726E: $72
    ld l, h                                       ; $726F: $6C
    ld l, a                                       ; $7270: $6F
    ld l, [hl]                                    ; $7271: $6E
    cp $FD                                        ; $7272: $FE $FD
    sbc d                                         ; $7274: $9A
    ld b, d                                       ; $7275: $42
    sbc e                                         ; $7276: $9B
    ret                                           ; $7277: $C9


    ld d, d                                       ; $7278: $52
    sbc a                                         ; $7279: $9F
    ld c, l                                       ; $727A: $4D
    ld b, l                                       ; $727B: $45
    ld c, a                                       ; $727C: $4F
    ld d, a                                       ; $727D: $57

jr_01A_727E:
    ld hl, $FDFE                                  ; $727E: $21 $FE $FD
    sbc e                                         ; $7281: $9B
    ld a, b                                       ; $7282: $78
    ld [hl], b                                    ; $7283: $70

jr_01A_7284:
    sbc a                                         ; $7284: $9F
    ld d, a                                       ; $7285: $57
    ld l, b                                       ; $7286: $68
    ld h, c                                       ; $7287: $61
    ld [hl], h                                    ; $7288: $74
    ld l, $2E                                     ; $7289: $2E $2E
    ld l, $3F                                     ; $728B: $2E $3F
    cp $FD                                        ; $728D: $FE $FD
    sbc d                                         ; $728F: $9A
    ld b, d                                       ; $7290: $42
    sbc e                                         ; $7291: $9B
    ld a, b                                       ; $7292: $78
    ld [hl], b                                    ; $7293: $70
    sbc a                                         ; $7294: $9F
    ld b, d                                       ; $7295: $42
    ld l, h                                       ; $7296: $6C
    ld h, c                                       ; $7297: $61
    ld l, [hl]                                    ; $7298: $6E

jr_01A_7299:
    ld l, e                                       ; $7299: $6B

jr_01A_729A:
    ld h, l                                       ; $729A: $65
    ld [hl], h                                    ; $729B: $74
    ld [hl], e                                    ; $729C: $73
    ld hl, $FE3F                                  ; $729D: $21 $3F $FE
    ld c, l                                       ; $72A0: $4D
    ld h, c                                       ; $72A1: $61
    ld h, h                                       ; $72A2: $64
    ld l, [hl]                                    ; $72A3: $6E
    ld h, l                                       ; $72A4: $65
    ld [hl], e                                    ; $72A5: $73
    ld [hl], e                                    ; $72A6: $73
    ld hl, $59FE                                  ; $72A7: $21 $FE $59
    ld l, a                                       ; $72AA: $6F
    ld [hl], l                                    ; $72AB: $75

jr_01A_72AC:
    daa                                           ; $72AC: $27
    ld h, h                                       ; $72AD: $64
    jr nz, jr_01A_7322                            ; $72AE: $20 $72

    ld l, a                                       ; $72B0: $6F
    ld h, c                                       ; $72B1: $61
    ld [hl], e                                    ; $72B2: $73
    ld [hl], h                                    ; $72B3: $74
    rst $38                                       ; $72B4: $FF
    ld l, h                                       ; $72B5: $6C
    ld l, c                                       ; $72B6: $69
    ld l, e                                       ; $72B7: $6B
    ld h, l                                       ; $72B8: $65
    jr nz, jr_01A_731C                            ; $72B9: $20 $61

    jr nz, @+$76                                  ; $72BB: $20 $74

jr_01A_72BD:
    ld [hl], l                                    ; $72BD: $75
    ld [hl], d                                    ; $72BE: $72
    ld l, e                                       ; $72BF: $6B
    ld h, l                                       ; $72C0: $65
    ld a, c                                       ; $72C1: $79
    ld hl, $FDFE                                  ; $72C2: $21 $FE $FD
    sbc d                                         ; $72C5: $9A
    ld b, d                                       ; $72C6: $42
    sbc e                                         ; $72C7: $9B
    ld a, b                                       ; $72C8: $78
    ld [hl], b                                    ; $72C9: $70
    sbc a                                         ; $72CA: $9F
    ld d, h                                       ; $72CB: $54
    ld l, b                                       ; $72CC: $68
    ld l, c                                       ; $72CD: $69
    ld [hl], e                                    ; $72CE: $73
    jr nz, @+$6E                                  ; $72CF: $20 $6C

    ld l, a                                       ; $72D1: $6F
    ld l, a                                       ; $72D2: $6F
    ld l, e                                       ; $72D3: $6B
    ld [hl], e                                    ; $72D4: $73
    rst $38                                       ; $72D5: $FF
    ld [hl], h                                    ; $72D6: $74
    ld l, a                                       ; $72D7: $6F
    jr nz, @+$64                                  ; $72D8: $20 $62

    ld h, l                                       ; $72DA: $65
    jr nz, jr_01A_734A                            ; $72DB: $20 $6D

    ld h, l                                       ; $72DD: $65
    ld l, h                                       ; $72DE: $6C
    ld [hl], h                                    ; $72DF: $74
    ld l, c                                       ; $72E0: $69
    ld l, [hl]                                    ; $72E1: $6E
    ld h, a                                       ; $72E2: $67
    ld l, $FE                                     ; $72E3: $2E $FE
    db $FD                                        ; $72E5: $FD
    sbc d                                         ; $72E6: $9A
    ld b, d                                       ; $72E7: $42
    sbc a                                         ; $72E8: $9F
    ld b, d                                       ; $72E9: $42
    ld [hl], d                                    ; $72EA: $72
    ld l, c                                       ; $72EB: $69
    ld h, h                                       ; $72EC: $64
    ld h, a                                       ; $72ED: $67
    ld h, l                                       ; $72EE: $65
    rst $38                                       ; $72EF: $FF
    ld b, d                                       ; $72F0: $42
    ld [hl], l                                    ; $72F1: $75
    ld l, c                                       ; $72F2: $69
    ld l, h                                       ; $72F3: $6C
    ld h, h                                       ; $72F4: $64
    ld l, c                                       ; $72F5: $69
    ld l, [hl]                                    ; $72F6: $6E
    ld h, a                                       ; $72F7: $67
    ld a, [hl-]                                   ; $72F8: $3A
    cp $50                                        ; $72F9: $FE $50
    ld [hl], d                                    ; $72FB: $72
    ld l, c                                       ; $72FC: $69
    ld l, [hl]                                    ; $72FD: $6E
    ld h, e                                       ; $72FE: $63
    ld l, c                                       ; $72FF: $69
    ld [hl], b                                    ; $7300: $70
    ld l, h                                       ; $7301: $6C
    ld h, l                                       ; $7302: $65
    jr nz, jr_01A_7366                            ; $7303: $20 $61

    ld l, [hl]                                    ; $7305: $6E
    ld h, h                                       ; $7306: $64
    cp $50                                        ; $7307: $FE $50
    ld [hl], d                                    ; $7309: $72
    ld h, c                                       ; $730A: $61
    ld h, e                                       ; $730B: $63
    ld [hl], h                                    ; $730C: $74
    ld l, c                                       ; $730D: $69
    ld h, e                                       ; $730E: $63
    ld h, l                                       ; $730F: $65
    cp $62                                        ; $7310: $FE $62
    ld a, c                                       ; $7312: $79
    jr nz, jr_01A_735A                            ; $7313: $20 $45

    halt                                          ; $7315: $76
    ld [hl], l                                    ; $7316: $75
    cp $FD                                        ; $7317: $FE $FD
    sbc d                                         ; $7319: $9A
    ld b, d                                       ; $731A: $42
    sbc e                                         ; $731B: $9B

jr_01A_731C:
    jr z, jr_01A_7393                             ; $731C: $28 $75

    sbc a                                         ; $731E: $9F
    ld c, b                                       ; $731F: $48
    ld h, l                                       ; $7320: $65
    ld a, c                                       ; $7321: $79

jr_01A_7322:
    jr nz, jr_01A_7378                            ; $7322: $20 $54

    ld l, a                                       ; $7324: $6F
    ld l, [hl]                                    ; $7325: $6E
    ld a, c                                       ; $7326: $79
    ld hl, $4BFE                                  ; $7327: $21 $FE $4B
    ld h, l                                       ; $732A: $65
    ld h, l                                       ; $732B: $65
    ld [hl], b                                    ; $732C: $70
    jr nz, jr_01A_7398                            ; $732D: $20 $69

    ld l, [hl]                                    ; $732F: $6E
    jr nz, jr_01A_73A6                            ; $7330: $20 $74

    ld l, a                                       ; $7332: $6F
    ld [hl], l                                    ; $7333: $75
    ld h, e                                       ; $7334: $63
    ld l, b                                       ; $7335: $68
    ld hl, $FDFE                                  ; $7336: $21 $FE $FD
    sbc d                                         ; $7339: $9A
    ld e, b                                       ; $733A: $58
    ld bc, $9B42                                  ; $733B: $01 $42 $9B
    jr z, jr_01A_73B5                             ; $733E: $28 $75

    sbc a                                         ; $7340: $9F
    ld c, b                                       ; $7341: $48
    ld h, l                                       ; $7342: $65
    ld a, c                                       ; $7343: $79
    ld hl, $5920                                  ; $7344: $21 $20 $59
    ld l, a                                       ; $7347: $6F
    ld [hl], l                                    ; $7348: $75
    daa                                           ; $7349: $27

jr_01A_734A:
    ld [hl], d                                    ; $734A: $72
    ld h, l                                       ; $734B: $65
    rst $38                                       ; $734C: $FF
    ld [hl], h                                    ; $734D: $74
    ld l, b                                       ; $734E: $68
    ld h, l                                       ; $734F: $65
    jr nz, jr_01A_73C1                            ; $7350: $20 $6F

    ld l, [hl]                                    ; $7352: $6E
    ld h, l                                       ; $7353: $65
    jr nz, jr_01A_73CD                            ; $7354: $20 $77

    ld l, b                                       ; $7356: $68
    ld l, a                                       ; $7357: $6F
    cp $68                                        ; $7358: $FE $68

jr_01A_735A:
    ld h, l                                       ; $735A: $65
    ld l, h                                       ; $735B: $6C
    ld [hl], b                                    ; $735C: $70
    ld h, l                                       ; $735D: $65
    ld h, h                                       ; $735E: $64
    jr nz, jr_01A_73D4                            ; $735F: $20 $73

    ld [hl], h                                    ; $7361: $74
    ld l, a                                       ; $7362: $6F
    ld l, l                                       ; $7363: $6D
    ld [hl], b                                    ; $7364: $70
    rst $38                                       ; $7365: $FF

jr_01A_7366:
    ld [hl], h                                    ; $7366: $74
    ld l, b                                       ; $7367: $68
    ld l, a                                       ; $7368: $6F
    ld [hl], e                                    ; $7369: $73
    ld h, l                                       ; $736A: $65
    jr nz, jr_01A_73B0                            ; $736B: $20 $43

    ld l, a                                       ; $736D: $6F
    ld [hl], d                                    ; $736E: $72
    ld h, l                                       ; $736F: $65
    cp $63                                        ; $7370: $FE $63
    ld [hl], d                                    ; $7372: $72
    ld h, l                                       ; $7373: $65
    ld h, c                                       ; $7374: $61
    ld [hl], h                                    ; $7375: $74
    ld [hl], l                                    ; $7376: $75
    ld [hl], d                                    ; $7377: $72

jr_01A_7378:
    ld h, l                                       ; $7378: $65
    ld [hl], e                                    ; $7379: $73
    ld l, $FE                                     ; $737A: $2E $FE
    db $FD                                        ; $737C: $FD
    sbc e                                         ; $737D: $9B
    ld a, b                                       ; $737E: $78
    ld [hl], b                                    ; $737F: $70
    sbc a                                         ; $7380: $9F
    ld c, l                                       ; $7381: $4D
    ld a, c                                       ; $7382: $79
    jr nz, jr_01A_73F3                            ; $7383: $20 $6E

    ld h, c                                       ; $7385: $61
    ld l, l                                       ; $7386: $6D
    ld h, l                                       ; $7387: $65
    daa                                           ; $7388: $27
    ld [hl], e                                    ; $7389: $73
    jr nz, @+$56                                  ; $738A: $20 $54

    ld l, a                                       ; $738C: $6F
    ld l, [hl]                                    ; $738D: $6E
    ld a, c                                       ; $738E: $79
    ld l, $FF                                     ; $738F: $2E $FF
    ld d, h                                       ; $7391: $54
    ld l, a                                       ; $7392: $6F

jr_01A_7393:
    ld l, [hl]                                    ; $7393: $6E
    ld a, c                                       ; $7394: $79
    jr nz, jr_01A_73E1                            ; $7395: $20 $4A

    ld l, a                                       ; $7397: $6F

jr_01A_7398:
    ld l, [hl]                                    ; $7398: $6E
    ld h, l                                       ; $7399: $65
    ld [hl], e                                    ; $739A: $73
    ld l, $FE                                     ; $739B: $2E $FE
    db $FD                                        ; $739D: $FD
    sbc e                                         ; $739E: $9B
    jr z, jr_01A_7416                             ; $739F: $28 $75

    sbc a                                         ; $73A1: $9F
    ld c, [hl]                                    ; $73A2: $4E
    ld l, c                                       ; $73A3: $69
    ld h, e                                       ; $73A4: $63
    ld h, l                                       ; $73A5: $65

jr_01A_73A6:
    jr nz, jr_01A_741C                            ; $73A6: $20 $74

    ld l, a                                       ; $73A8: $6F
    jr nz, @+$6F                                  ; $73A9: $20 $6D

    ld h, l                                       ; $73AB: $65
    ld h, l                                       ; $73AC: $65
    ld [hl], h                                    ; $73AD: $74
    rst $38                                       ; $73AE: $FF
    ld a, c                                       ; $73AF: $79

jr_01A_73B0:
    ld l, a                                       ; $73B0: $6F
    ld [hl], l                                    ; $73B1: $75
    inc l                                         ; $73B2: $2C
    jr nz, jr_01A_7409                            ; $73B3: $20 $54

jr_01A_73B5:
    ld l, a                                       ; $73B5: $6F
    ld l, [hl]                                    ; $73B6: $6E
    ld a, c                                       ; $73B7: $79
    inc l                                         ; $73B8: $2C
    jr nz, jr_01A_7404                            ; $73B9: $20 $49

    daa                                           ; $73BB: $27
    ld l, l                                       ; $73BC: $6D
    cp $56                                        ; $73BD: $FE $56
    ld h, c                                       ; $73BF: $61
    ld l, h                                       ; $73C0: $6C

jr_01A_73C1:
    ld l, e                                       ; $73C1: $6B
    ld h, c                                       ; $73C2: $61
    ld l, [hl]                                    ; $73C3: $6E
    ld l, $20                                     ; $73C4: $2E $20
    ld c, b                                       ; $73C6: $48
    ld h, l                                       ; $73C7: $65
    ld [hl], d                                    ; $73C8: $72
    ld h, l                                       ; $73C9: $65
    daa                                           ; $73CA: $27
    ld [hl], e                                    ; $73CB: $73
    rst $38                                       ; $73CC: $FF

jr_01A_73CD:
    ld [hl], e                                    ; $73CD: $73
    ld l, a                                       ; $73CE: $6F
    ld l, l                                       ; $73CF: $6D
    ld h, l                                       ; $73D0: $65
    ld [hl], h                                    ; $73D1: $74
    ld l, b                                       ; $73D2: $68
    ld l, c                                       ; $73D3: $69

jr_01A_73D4:
    ld l, [hl]                                    ; $73D4: $6E
    ld h, a                                       ; $73D5: $67
    jr nz, jr_01A_743E                            ; $73D6: $20 $66

    ld l, a                                       ; $73D8: $6F
    ld [hl], d                                    ; $73D9: $72
    cp $79                                        ; $73DA: $FE $79
    ld l, a                                       ; $73DC: $6F
    ld [hl], l                                    ; $73DD: $75
    ld [hl], d                                    ; $73DE: $72
    jr nz, jr_01A_7455                            ; $73DF: $20 $74

jr_01A_73E1:
    ld [hl], d                                    ; $73E1: $72
    ld l, a                                       ; $73E2: $6F
    ld [hl], l                                    ; $73E3: $75
    ld h, d                                       ; $73E4: $62
    ld l, h                                       ; $73E5: $6C
    ld h, l                                       ; $73E6: $65
    ld l, $FE                                     ; $73E7: $2E $FE
    ld c, c                                       ; $73E9: $49
    ld [hl], h                                    ; $73EA: $74
    daa                                           ; $73EB: $27
    ld [hl], e                                    ; $73EC: $73
    jr nz, jr_01A_7463                            ; $73ED: $20 $74

    ld l, b                                       ; $73EF: $68
    ld h, l                                       ; $73F0: $65
    jr nz, @+$6E                                  ; $73F1: $20 $6C

jr_01A_73F3:
    ld h, l                                       ; $73F3: $65
    ld h, c                                       ; $73F4: $61
    ld [hl], e                                    ; $73F5: $73
    ld [hl], h                                    ; $73F6: $74
    rst $38                                       ; $73F7: $FF
    ld c, c                                       ; $73F8: $49
    jr nz, jr_01A_745E                            ; $73F9: $20 $63

    ld h, c                                       ; $73FB: $61
    ld l, [hl]                                    ; $73FC: $6E
    jr nz, jr_01A_7463                            ; $73FD: $20 $64

    ld l, a                                       ; $73FF: $6F
    jr nz, jr_01A_7468                            ; $7400: $20 $66

    ld l, a                                       ; $7402: $6F
    ld [hl], d                                    ; $7403: $72

jr_01A_7404:
    cp $79                                        ; $7404: $FE $79
    ld l, a                                       ; $7406: $6F
    ld [hl], l                                    ; $7407: $75
    ld [hl], d                                    ; $7408: $72

jr_01A_7409:
    jr nz, @+$6A                                  ; $7409: $20 $68

    ld h, l                                       ; $740B: $65
    ld l, h                                       ; $740C: $6C
    ld [hl], b                                    ; $740D: $70
    ld l, $FE                                     ; $740E: $2E $FE
    db $FD                                        ; $7410: $FD
    sbc d                                         ; $7411: $9A
    ld e, h                                       ; $7412: $5C
    nop                                           ; $7413: $00
    ld [bc], a                                    ; $7414: $02
    ld c, e                                       ; $7415: $4B

jr_01A_7416:
    ld bc, $A2A8                                  ; $7416: $01 $A8 $A2
    ld a, [de]                                    ; $7419: $1A
    nop                                           ; $741A: $00
    nop                                           ; $741B: $00

jr_01A_741C:
    inc sp                                        ; $741C: $33
    ld [hl], h                                    ; $741D: $74
    ld a, [de]                                    ; $741E: $1A
    ld bc, $5500                                  ; $741F: $01 $00 $55
    ld [hl], h                                    ; $7422: $74
    ld a, [de]                                    ; $7423: $1A
    ld [bc], a                                    ; $7424: $02
    nop                                           ; $7425: $00
    halt                                          ; $7426: $76
    ld [hl], h                                    ; $7427: $74
    ld a, [de]                                    ; $7428: $1A
    inc bc                                        ; $7429: $03
    nop                                           ; $742A: $00
    sbc d                                         ; $742B: $9A
    ld [hl], h                                    ; $742C: $74
    ld a, [de]                                    ; $742D: $1A
    inc b                                         ; $742E: $04
    nop                                           ; $742F: $00
    cp h                                          ; $7430: $BC
    ld [hl], h                                    ; $7431: $74
    rst $38                                       ; $7432: $FF
    sbc a                                         ; $7433: $9F
    ld d, h                                       ; $7434: $54
    ld l, a                                       ; $7435: $6F
    ld l, [hl]                                    ; $7436: $6E
    ld a, c                                       ; $7437: $79
    jr nz, jr_01A_74A1                            ; $7438: $20 $67

    ld l, a                                       ; $743A: $6F
    ld [hl], h                                    ; $743B: $74
    jr nz, jr_01A_749F                            ; $743C: $20 $61

jr_01A_743E:
    rst $38                                       ; $743E: $FF
    ld b, d                                       ; $743F: $42
    ld h, c                                       ; $7440: $61
    ld l, h                                       ; $7441: $6C
    ld l, a                                       ; $7442: $6F
    ld l, a                                       ; $7443: $6F
    jr nz, jr_01A_7492                            ; $7444: $20 $4C

    ld h, l                                       ; $7446: $65
    ld h, c                                       ; $7447: $61
    ld h, [hl]                                    ; $7448: $66
    ld hl, $FDFE                                  ; $7449: $21 $FE $FD
    sbc d                                         ; $744C: $9A
    add a                                         ; $744D: $87
    nop                                           ; $744E: $00
    ld bc, $4501                                  ; $744F: $01 $01 $45
    ld a, [de]                                    ; $7452: $1A
    db $DD                                        ; $7453: $DD
    ld [hl], h                                    ; $7454: $74

jr_01A_7455:
    sbc a                                         ; $7455: $9F
    ld d, h                                       ; $7456: $54
    ld l, a                                       ; $7457: $6F
    ld l, [hl]                                    ; $7458: $6E
    ld a, c                                       ; $7459: $79
    jr nz, jr_01A_74C3                            ; $745A: $20 $67

    ld l, a                                       ; $745C: $6F
    ld [hl], h                                    ; $745D: $74

jr_01A_745E:
    jr nz, jr_01A_74C1                            ; $745E: $20 $61

    rst $38                                       ; $7460: $FF
    ld b, d                                       ; $7461: $42
    ld h, c                                       ; $7462: $61

jr_01A_7463:
    ld l, h                                       ; $7463: $6C
    ld l, a                                       ; $7464: $6F
    ld l, a                                       ; $7465: $6F
    jr nz, jr_01A_74BB                            ; $7466: $20 $53

jr_01A_7468:
    ld h, c                                       ; $7468: $61
    ld [hl], b                                    ; $7469: $70
    ld hl, $FDFE                                  ; $746A: $21 $FE $FD
    sbc d                                         ; $746D: $9A
    add a                                         ; $746E: $87
    nop                                           ; $746F: $00
    ld [bc], a                                    ; $7470: $02
    ld bc, $1A45                                  ; $7471: $01 $45 $1A
    db $DD                                        ; $7474: $DD
    ld [hl], h                                    ; $7475: $74
    sbc a                                         ; $7476: $9F
    ld d, h                                       ; $7477: $54
    ld l, a                                       ; $7478: $6F
    ld l, [hl]                                    ; $7479: $6E
    ld a, c                                       ; $747A: $79
    jr nz, @+$69                                  ; $747B: $20 $67

    ld l, a                                       ; $747D: $6F
    ld [hl], h                                    ; $747E: $74
    jr nz, jr_01A_74E2                            ; $747F: $20 $61

    rst $38                                       ; $7481: $FF
    ld d, e                                       ; $7482: $53
    ld [hl], h                                    ; $7483: $74
    ld [hl], d                                    ; $7484: $72
    ld h, l                                       ; $7485: $65
    ld l, [hl]                                    ; $7486: $6E
    ld h, a                                       ; $7487: $67
    ld [hl], h                                    ; $7488: $74
    ld l, b                                       ; $7489: $68
    jr nz, @+$49                                  ; $748A: $20 $47

    ld h, l                                       ; $748C: $65
    ld l, l                                       ; $748D: $6D
    ld hl, $FDFE                                  ; $748E: $21 $FE $FD
    sbc d                                         ; $7491: $9A

jr_01A_7492:
    add a                                         ; $7492: $87
    nop                                           ; $7493: $00
    dec bc                                        ; $7494: $0B
    ld bc, $1A45                                  ; $7495: $01 $45 $1A
    db $DD                                        ; $7498: $DD
    ld [hl], h                                    ; $7499: $74
    sbc a                                         ; $749A: $9F
    ld d, h                                       ; $749B: $54
    ld l, a                                       ; $749C: $6F
    ld l, [hl]                                    ; $749D: $6E
    ld a, c                                       ; $749E: $79

jr_01A_749F:
    jr nz, jr_01A_7508                            ; $749F: $20 $67

jr_01A_74A1:
    ld l, a                                       ; $74A1: $6F
    ld [hl], h                                    ; $74A2: $74
    jr nz, jr_01A_7506                            ; $74A3: $20 $61

    rst $38                                       ; $74A5: $FF
    ld d, d                                       ; $74A6: $52
    ld [hl], l                                    ; $74A7: $75
    ld l, [hl]                                    ; $74A8: $6E
    ld h, l                                       ; $74A9: $65
    ld c, a                                       ; $74AA: $4F
    ld h, [hl]                                    ; $74AB: $66
    ld b, [hl]                                    ; $74AC: $46
    ld [hl], l                                    ; $74AD: $75
    ld [hl], d                                    ; $74AE: $72
    ld a, c                                       ; $74AF: $79
    ld hl, $FDFE                                  ; $74B0: $21 $FE $FD
    sbc d                                         ; $74B3: $9A
    add a                                         ; $74B4: $87
    nop                                           ; $74B5: $00
    inc d                                         ; $74B6: $14
    ld bc, $1A45                                  ; $74B7: $01 $45 $1A
    db $DD                                        ; $74BA: $DD

jr_01A_74BB:
    ld [hl], h                                    ; $74BB: $74
    sbc a                                         ; $74BC: $9F
    ld d, h                                       ; $74BD: $54
    ld l, a                                       ; $74BE: $6F
    ld l, [hl]                                    ; $74BF: $6E
    ld a, c                                       ; $74C0: $79

jr_01A_74C1:
    jr nz, @+$69                                  ; $74C1: $20 $67

jr_01A_74C3:
    ld l, a                                       ; $74C3: $6F
    ld [hl], h                                    ; $74C4: $74
    jr nz, jr_01A_7528                            ; $74C5: $20 $61

    rst $38                                       ; $74C7: $FF
    ld c, l                                       ; $74C8: $4D
    ld h, c                                       ; $74C9: $61
    ld h, l                                       ; $74CA: $65
    ld l, h                                       ; $74CB: $6C
    ld [hl], e                                    ; $74CC: $73
    ld [hl], h                                    ; $74CD: $74
    ld [hl], d                                    ; $74CE: $72
    ld l, a                                       ; $74CF: $6F
    ld l, l                                       ; $74D0: $6D
    ld hl, $FDFE                                  ; $74D1: $21 $FE $FD
    sbc d                                         ; $74D4: $9A
    add a                                         ; $74D5: $87
    ld [bc], a                                    ; $74D6: $02
    inc de                                        ; $74D7: $13
    ld bc, $1A45                                  ; $74D8: $01 $45 $1A
    db $DD                                        ; $74DB: $DD
    ld [hl], h                                    ; $74DC: $74
    sbc e                                         ; $74DD: $9B
    jr z, jr_01A_7555                             ; $74DE: $28 $75

    sbc a                                         ; $74E0: $9F
    ld d, e                                       ; $74E1: $53

jr_01A_74E2:
    ld l, a                                       ; $74E2: $6F
    ld l, $2E                                     ; $74E3: $2E $2E
    ld l, $2E                                     ; $74E5: $2E $2E
    cp $57                                        ; $74E7: $FE $57
    ld l, b                                       ; $74E9: $68
    ld h, c                                       ; $74EA: $61
    ld [hl], h                                    ; $74EB: $74
    daa                                           ; $74EC: $27
    ld [hl], e                                    ; $74ED: $73
    jr nz, jr_01A_7565                            ; $74EE: $20 $75

    ld [hl], b                                    ; $74F0: $70
    ccf                                           ; $74F1: $3F
    cp $FD                                        ; $74F2: $FE $FD
    sbc e                                         ; $74F4: $9B
    ld a, b                                       ; $74F5: $78
    ld [hl], b                                    ; $74F6: $70
    sbc a                                         ; $74F7: $9F
    ld c, c                                       ; $74F8: $49
    jr nz, jr_01A_7563                            ; $74F9: $20 $68

    ld h, l                                       ; $74FB: $65
    ld h, c                                       ; $74FC: $61
    ld [hl], d                                    ; $74FD: $72
    ld h, h                                       ; $74FE: $64
    jr nz, jr_01A_7575                            ; $74FF: $20 $74

    ld l, b                                       ; $7501: $68
    ld h, c                                       ; $7502: $61
    ld [hl], h                                    ; $7503: $74
    rst $38                                       ; $7504: $FF
    ld a, c                                       ; $7505: $79

jr_01A_7506:
    ld l, a                                       ; $7506: $6F
    ld [hl], l                                    ; $7507: $75

jr_01A_7508:
    jr nz, jr_01A_756B                            ; $7508: $20 $61

    ld [hl], d                                    ; $750A: $72
    ld h, l                                       ; $750B: $65
    jr nz, jr_01A_7582                            ; $750C: $20 $74

    ld l, b                                       ; $750E: $68
    ld h, l                                       ; $750F: $65
    cp $4D                                        ; $7510: $FE $4D
    ld h, c                                       ; $7512: $61
    ld [hl], e                                    ; $7513: $73
    ld [hl], h                                    ; $7514: $74
    ld h, l                                       ; $7515: $65
    ld [hl], d                                    ; $7516: $72
    jr nz, @+$44                                  ; $7517: $20 $42

    ld [hl], d                                    ; $7519: $72
    ld l, c                                       ; $751A: $69
    ld h, h                                       ; $751B: $64
    ld h, a                                       ; $751C: $67
    ld h, l                                       ; $751D: $65
    rst $38                                       ; $751E: $FF
    ld b, d                                       ; $751F: $42
    ld [hl], l                                    ; $7520: $75
    ld l, c                                       ; $7521: $69
    ld l, h                                       ; $7522: $6C
    ld h, h                                       ; $7523: $64
    ld h, l                                       ; $7524: $65
    ld [hl], d                                    ; $7525: $72
    jr nz, jr_01A_7597                            ; $7526: $20 $6F

jr_01A_7528:
    ld h, [hl]                                    ; $7528: $66
    cp $43                                        ; $7529: $FE $43
    ld h, c                                       ; $752B: $61
    ld l, h                                       ; $752C: $6C
    ld h, h                                       ; $752D: $64
    ld l, $FE                                     ; $752E: $2E $FE
    db $FD                                        ; $7530: $FD
    sbc e                                         ; $7531: $9B
    jr z, jr_01A_75A9                             ; $7532: $28 $75

    sbc a                                         ; $7534: $9F
    ld e, c                                       ; $7535: $59
    ld h, l                                       ; $7536: $65
    ld [hl], b                                    ; $7537: $70
    ld hl, $54FE                                  ; $7538: $21 $FE $54
    ld l, b                                       ; $753B: $68
    ld h, c                                       ; $753C: $61
    ld [hl], h                                    ; $753D: $74
    daa                                           ; $753E: $27
    ld [hl], e                                    ; $753F: $73
    jr nz, @+$6F                                  ; $7540: $20 $6D

    ld h, l                                       ; $7542: $65
    ld hl, $FDFE                                  ; $7543: $21 $FE $FD
    sbc e                                         ; $7546: $9B
    ld a, b                                       ; $7547: $78
    ld [hl], b                                    ; $7548: $70
    sbc a                                         ; $7549: $9F
    ld d, a                                       ; $754A: $57
    ld h, l                                       ; $754B: $65
    ld l, h                                       ; $754C: $6C
    ld l, h                                       ; $754D: $6C
    ld l, $2E                                     ; $754E: $2E $2E
    ld l, $2E                                     ; $7550: $2E $2E
    ld l, $FE                                     ; $7552: $2E $FE
    ld c, c                                       ; $7554: $49

jr_01A_7555:
    jr nz, jr_01A_75C5                            ; $7555: $20 $6E

    ld h, l                                       ; $7557: $65
    ld h, l                                       ; $7558: $65
    ld h, h                                       ; $7559: $64
    jr nz, @+$63                                  ; $755A: $20 $61

    jr nz, jr_01A_75D5                            ; $755C: $20 $77

    ld h, c                                       ; $755E: $61
    ld a, c                                       ; $755F: $79
    rst $38                                       ; $7560: $FF
    ld [hl], h                                    ; $7561: $74
    ld l, a                                       ; $7562: $6F

jr_01A_7563:
    jr nz, jr_01A_75CC                            ; $7563: $20 $67

jr_01A_7565:
    ld h, l                                       ; $7565: $65
    ld [hl], h                                    ; $7566: $74
    jr nz, jr_01A_75D8                            ; $7567: $20 $6F

    halt                                          ; $7569: $76
    ld h, l                                       ; $756A: $65

jr_01A_756B:
    ld [hl], d                                    ; $756B: $72
    cp $74                                        ; $756C: $FE $74
    ld l, b                                       ; $756E: $68
    ld h, l                                       ; $756F: $65
    jr nz, jr_01A_75DE                            ; $7570: $20 $6C

    ld h, c                                       ; $7572: $61
    halt                                          ; $7573: $76
    ld h, c                                       ; $7574: $61

jr_01A_7575:
    jr nz, jr_01A_75E7                            ; $7575: $20 $70

    ld l, a                                       ; $7577: $6F
    ld l, a                                       ; $7578: $6F
    ld l, h                                       ; $7579: $6C
    rst $38                                       ; $757A: $FF
    ld l, c                                       ; $757B: $69
    ld l, [hl]                                    ; $757C: $6E
    jr nz, jr_01A_75E5                            ; $757D: $20 $66

    ld [hl], d                                    ; $757F: $72
    ld l, a                                       ; $7580: $6F
    ld l, [hl]                                    ; $7581: $6E

jr_01A_7582:
    ld [hl], h                                    ; $7582: $74
    jr nz, jr_01A_75F4                            ; $7583: $20 $6F

    ld h, [hl]                                    ; $7585: $66
    jr nz, jr_01A_75FC                            ; $7586: $20 $74

    ld l, b                                       ; $7588: $68
    ld h, l                                       ; $7589: $65
    cp $53                                        ; $758A: $FE $53
    ld l, b                                       ; $758C: $68
    ld h, c                                       ; $758D: $61
    ld h, h                                       ; $758E: $64
    ld l, a                                       ; $758F: $6F
    ld [hl], a                                    ; $7590: $77
    jr nz, jr_01A_75DA                            ; $7591: $20 $47

    ld h, l                                       ; $7593: $65
    ld a, c                                       ; $7594: $79
    ld [hl], e                                    ; $7595: $73
    ld h, l                                       ; $7596: $65

jr_01A_7597:
    ld [hl], d                                    ; $7597: $72
    ld l, $FE                                     ; $7598: $2E $FE
    db $FD                                        ; $759A: $FD
    sbc e                                         ; $759B: $9B
    jr z, jr_01A_7613                             ; $759C: $28 $75

    sbc a                                         ; $759E: $9F
    ld c, h                                       ; $759F: $4C
    ld h, c                                       ; $75A0: $61
    halt                                          ; $75A1: $76
    ld h, c                                       ; $75A2: $61
    jr nz, jr_01A_7615                            ; $75A3: $20 $70

    ld l, a                                       ; $75A5: $6F
    ld l, a                                       ; $75A6: $6F
    ld l, h                                       ; $75A7: $6C
    inc l                                         ; $75A8: $2C

jr_01A_75A9:
    jr nz, jr_01A_7613                            ; $75A9: $20 $68

    ld [hl], l                                    ; $75AB: $75
    ld l, b                                       ; $75AC: $68
    ccf                                           ; $75AD: $3F
    cp $48                                        ; $75AE: $FE $48
    ld l, l                                       ; $75B0: $6D
    ld l, l                                       ; $75B1: $6D
    ld l, l                                       ; $75B2: $6D
    ld l, $2E                                     ; $75B3: $2E $2E
    ld l, $2E                                     ; $75B5: $2E $2E
    ld l, $FE                                     ; $75B7: $2E $FE
    db $FD                                        ; $75B9: $FD
    ld e, h                                       ; $75BA: $5C
    ld bc, $5C02                                  ; $75BB: $01 $02 $5C
    ld [bc], a                                    ; $75BE: $02
    ld [bc], a                                    ; $75BF: $02
    sbc a                                         ; $75C0: $9F
    ld d, h                                       ; $75C1: $54
    ld l, a                                       ; $75C2: $6F
    jr nz, jr_01A_7627                            ; $75C3: $20 $62

jr_01A_75C5:
    ld [hl], l                                    ; $75C5: $75
    ld l, c                                       ; $75C6: $69
    ld l, h                                       ; $75C7: $6C
    ld h, h                                       ; $75C8: $64
    jr nz, @+$63                                  ; $75C9: $20 $61

    rst $38                                       ; $75CB: $FF

jr_01A_75CC:
    ld [hl], e                                    ; $75CC: $73
    ld [hl], h                                    ; $75CD: $74
    ld [hl], d                                    ; $75CE: $72
    ld [hl], l                                    ; $75CF: $75
    ld h, e                                       ; $75D0: $63
    ld [hl], h                                    ; $75D1: $74
    ld [hl], l                                    ; $75D2: $75
    ld [hl], d                                    ; $75D3: $72
    ld h, l                                       ; $75D4: $65

jr_01A_75D5:
    jr nz, @+$71                                  ; $75D5: $20 $6F

    halt                                          ; $75D7: $76

jr_01A_75D8:
    ld h, l                                       ; $75D8: $65
    ld [hl], d                                    ; $75D9: $72

jr_01A_75DA:
    cp $74                                        ; $75DA: $FE $74
    ld l, b                                       ; $75DC: $68
    ld h, c                                       ; $75DD: $61

jr_01A_75DE:
    ld [hl], h                                    ; $75DE: $74
    jr nz, jr_01A_7645                            ; $75DF: $20 $64

    ld l, c                                       ; $75E1: $69
    ld [hl], e                                    ; $75E2: $73
    ld [hl], h                                    ; $75E3: $74
    ld h, c                                       ; $75E4: $61

jr_01A_75E5:
    ld l, [hl]                                    ; $75E5: $6E
    ld h, e                                       ; $75E6: $63

jr_01A_75E7:
    ld h, l                                       ; $75E7: $65
    rst $38                                       ; $75E8: $FF
    ld [hl], a                                    ; $75E9: $77
    ld l, c                                       ; $75EA: $69
    ld l, h                                       ; $75EB: $6C
    ld l, h                                       ; $75EC: $6C
    jr nz, jr_01A_7661                            ; $75ED: $20 $72

    ld h, l                                       ; $75EF: $65
    ld [hl], c                                    ; $75F0: $71
    ld [hl], l                                    ; $75F1: $75
    ld l, c                                       ; $75F2: $69
    ld [hl], d                                    ; $75F3: $72

jr_01A_75F4:
    ld h, l                                       ; $75F4: $65
    cp $74                                        ; $75F5: $FE $74
    ld l, b                                       ; $75F7: $68
    ld h, l                                       ; $75F8: $65
    jr nz, jr_01A_765C                            ; $75F9: $20 $61

    ld [hl], e                                    ; $75FB: $73

jr_01A_75FC:
    ld [hl], e                                    ; $75FC: $73
    ld l, c                                       ; $75FD: $69
    ld [hl], e                                    ; $75FE: $73
    ld [hl], h                                    ; $75FF: $74
    ld h, c                                       ; $7600: $61
    ld l, [hl]                                    ; $7601: $6E
    ld h, e                                       ; $7602: $63
    ld h, l                                       ; $7603: $65
    rst $38                                       ; $7604: $FF
    ld l, a                                       ; $7605: $6F
    ld h, [hl]                                    ; $7606: $66
    jr nz, @+$63                                  ; $7607: $20 $61

    jr nz, jr_01A_7657                            ; $7609: $20 $4C

    ld h, c                                       ; $760B: $61
    halt                                          ; $760C: $76
    ld h, c                                       ; $760D: $61
    cp $41                                        ; $760E: $FE $41
    ld [hl], d                                    ; $7610: $72
    ld h, d                                       ; $7611: $62
    ld l, a                                       ; $7612: $6F

jr_01A_7613:
    ld l, h                                       ; $7613: $6C
    ld l, h                                       ; $7614: $6C

jr_01A_7615:
    ld l, $FE                                     ; $7615: $2E $FE
    db $FD                                        ; $7617: $FD
    sbc e                                         ; $7618: $9B
    ld a, b                                       ; $7619: $78
    ld [hl], b                                    ; $761A: $70
    sbc a                                         ; $761B: $9F
    ld c, h                                       ; $761C: $4C
    ld h, c                                       ; $761D: $61
    halt                                          ; $761E: $76
    ld h, c                                       ; $761F: $61
    jr nz, jr_01A_7663                            ; $7620: $20 $41

    ld [hl], d                                    ; $7622: $72
    ld h, d                                       ; $7623: $62
    ld l, a                                       ; $7624: $6F
    ld l, h                                       ; $7625: $6C
    ld l, h                                       ; $7626: $6C

jr_01A_7627:
    ccf                                           ; $7627: $3F
    cp $FD                                        ; $7628: $FE $FD
    sbc e                                         ; $762A: $9B
    jr z, jr_01A_76A2                             ; $762B: $28 $75

    sbc a                                         ; $762D: $9F
    ld b, c                                       ; $762E: $41
    jr nz, jr_01A_7697                            ; $762F: $20 $66

    ld l, h                                       ; $7631: $6C
    ld a, c                                       ; $7632: $79
    ld l, c                                       ; $7633: $69
    ld l, [hl]                                    ; $7634: $6E
    ld h, a                                       ; $7635: $67
    rst $38                                       ; $7636: $FF
    ld b, h                                       ; $7637: $44
    ld [hl], d                                    ; $7638: $72
    ld h, l                                       ; $7639: $65
    ld h, c                                       ; $763A: $61
    ld l, l                                       ; $763B: $6D
    jr nz, @+$45                                  ; $763C: $20 $43

    ld [hl], d                                    ; $763E: $72
    ld h, l                                       ; $763F: $65
    ld h, c                                       ; $7640: $61
    ld [hl], h                                    ; $7641: $74
    ld [hl], l                                    ; $7642: $75
    ld [hl], d                                    ; $7643: $72
    ld h, l                                       ; $7644: $65

jr_01A_7645:
    ld l, $FE                                     ; $7645: $2E $FE
    ld c, c                                       ; $7647: $49
    jr nz, @+$77                                  ; $7648: $20 $75

    ld [hl], e                                    ; $764A: $73
    ld h, l                                       ; $764B: $65
    ld h, h                                       ; $764C: $64
    jr nz, jr_01A_76C3                            ; $764D: $20 $74

    ld l, a                                       ; $764F: $6F
    rst $38                                       ; $7650: $FF
    ld l, b                                       ; $7651: $68
    ld h, c                                       ; $7652: $61
    halt                                          ; $7653: $76
    ld h, l                                       ; $7654: $65
    jr nz, jr_01A_76C6                            ; $7655: $20 $6F

jr_01A_7657:
    ld l, [hl]                                    ; $7657: $6E
    ld h, l                                       ; $7658: $65
    inc l                                         ; $7659: $2C
    cp $62                                        ; $765A: $FE $62

jr_01A_765C:
    ld [hl], l                                    ; $765C: $75
    ld [hl], h                                    ; $765D: $74
    jr nz, jr_01A_76C9                            ; $765E: $20 $69

    ld [hl], h                                    ; $7660: $74

jr_01A_7661:
    rst $38                                       ; $7661: $FF
    ld h, l                                       ; $7662: $65

jr_01A_7663:
    ld [hl], e                                    ; $7663: $73
    ld h, e                                       ; $7664: $63
    ld h, c                                       ; $7665: $61
    ld [hl], b                                    ; $7666: $70
    ld h, l                                       ; $7667: $65
    ld h, h                                       ; $7668: $64
    ld l, $2E                                     ; $7669: $2E $2E
    ld l, $FE                                     ; $766B: $2E $FE
    db $FD                                        ; $766D: $FD
    ld e, h                                       ; $766E: $5C
    inc bc                                        ; $766F: $03
    ld [bc], a                                    ; $7670: $02
    sbc a                                         ; $7671: $9F
    ld b, e                                       ; $7672: $43
    ld h, c                                       ; $7673: $61
    ld [hl], b                                    ; $7674: $70
    ld [hl], h                                    ; $7675: $74
    ld [hl], l                                    ; $7676: $75
    ld [hl], d                                    ; $7677: $72
    ld h, l                                       ; $7678: $65
    jr nz, jr_01A_76DC                            ; $7679: $20 $61

    rst $38                                       ; $767B: $FF
    ld c, h                                       ; $767C: $4C
    ld h, c                                       ; $767D: $61
    halt                                          ; $767E: $76
    ld h, c                                       ; $767F: $61
    jr nz, jr_01A_76C3                            ; $7680: $20 $41

    ld [hl], d                                    ; $7682: $72
    ld h, d                                       ; $7683: $62
    ld l, a                                       ; $7684: $6F
    ld l, h                                       ; $7685: $6C
    ld l, h                                       ; $7686: $6C
    cp $61                                        ; $7687: $FE $61
    ld l, [hl]                                    ; $7689: $6E
    ld h, h                                       ; $768A: $64
    jr nz, jr_01A_76D6                            ; $768B: $20 $49

    jr nz, jr_01A_7706                            ; $768D: $20 $77

    ld l, c                                       ; $768F: $69
    ld l, h                                       ; $7690: $6C
    ld l, h                                       ; $7691: $6C
    rst $38                                       ; $7692: $FF
    ld l, b                                       ; $7693: $68
    ld h, l                                       ; $7694: $65
    ld l, h                                       ; $7695: $6C
    ld [hl], b                                    ; $7696: $70

jr_01A_7697:
    jr nz, jr_01A_7712                            ; $7697: $20 $79

    ld l, a                                       ; $7699: $6F
    ld [hl], l                                    ; $769A: $75
    ld l, $FE                                     ; $769B: $2E $FE
    db $FD                                        ; $769D: $FD
    sbc e                                         ; $769E: $9B
    ld a, b                                       ; $769F: $78
    ld [hl], b                                    ; $76A0: $70
    sbc a                                         ; $76A1: $9F

jr_01A_76A2:
    ld c, [hl]                                    ; $76A2: $4E
    ld l, a                                       ; $76A3: $6F
    jr nz, jr_01A_7716                            ; $76A4: $20 $70

    ld [hl], d                                    ; $76A6: $72
    ld l, a                                       ; $76A7: $6F
    ld h, d                                       ; $76A8: $62
    ld l, h                                       ; $76A9: $6C
    ld h, l                                       ; $76AA: $65
    ld l, l                                       ; $76AB: $6D
    ld l, $FE                                     ; $76AC: $2E $FE
    db $FD                                        ; $76AE: $FD
    sbc d                                         ; $76AF: $9A
    rlca                                          ; $76B0: $07
    nop                                           ; $76B1: $00
    add c                                         ; $76B2: $81
    ld e, l                                       ; $76B3: $5D
    add hl, bc                                    ; $76B4: $09
    nop                                           ; $76B5: $00
    jr nz, jr_01A_7663                            ; $76B6: $20 $AB

    ld d, b                                       ; $76B8: $50
    xor c                                         ; $76B9: $A9
    inc c                                         ; $76BA: $0C
    nop                                           ; $76BB: $00
    ld b, d                                       ; $76BC: $42
    sbc e                                         ; $76BD: $9B
    jr z, jr_01A_7735                             ; $76BE: $28 $75

    sbc a                                         ; $76C0: $9F
    ld d, e                                       ; $76C1: $53
    ld [hl], h                                    ; $76C2: $74

jr_01A_76C3:
    ld l, c                                       ; $76C3: $69
    ld l, h                                       ; $76C4: $6C
    ld l, h                                       ; $76C5: $6C

jr_01A_76C6:
    jr nz, @+$6E                                  ; $76C6: $20 $6C

    ld l, a                                       ; $76C8: $6F

jr_01A_76C9:
    ld l, a                                       ; $76C9: $6F
    ld l, e                                       ; $76CA: $6B
    ld l, c                                       ; $76CB: $69
    ld l, [hl]                                    ; $76CC: $6E
    ld h, a                                       ; $76CD: $67
    rst $38                                       ; $76CE: $FF
    ld h, [hl]                                    ; $76CF: $66
    ld l, a                                       ; $76D0: $6F
    ld [hl], d                                    ; $76D1: $72
    jr nz, jr_01A_7748                            ; $76D2: $20 $74

    ld l, b                                       ; $76D4: $68
    ld h, c                                       ; $76D5: $61

jr_01A_76D6:
    ld [hl], h                                    ; $76D6: $74
    jr nz, jr_01A_7725                            ; $76D7: $20 $4C

    ld h, c                                       ; $76D9: $61
    halt                                          ; $76DA: $76
    ld h, c                                       ; $76DB: $61

jr_01A_76DC:
    cp $41                                        ; $76DC: $FE $41
    ld [hl], d                                    ; $76DE: $72
    ld h, d                                       ; $76DF: $62
    ld l, a                                       ; $76E0: $6F
    ld l, h                                       ; $76E1: $6C
    ld l, h                                       ; $76E2: $6C
    inc l                                         ; $76E3: $2C
    jr nz, jr_01A_773A                            ; $76E4: $20 $54

    ld l, a                                       ; $76E6: $6F
    ld l, [hl]                                    ; $76E7: $6E
    ld a, c                                       ; $76E8: $79
    ccf                                           ; $76E9: $3F
    cp $FD                                        ; $76EA: $FE $FD
    sbc d                                         ; $76EC: $9A
    ld e, b                                       ; $76ED: $58
    ld bc, $9B42                                  ; $76EE: $01 $42 $9B
    jr z, jr_01A_7768                             ; $76F1: $28 $75

    sbc a                                         ; $76F3: $9F
    ld b, a                                       ; $76F4: $47
    ld l, a                                       ; $76F5: $6F
    ld l, a                                       ; $76F6: $6F
    ld h, h                                       ; $76F7: $64
    ld hl, $59FE                                  ; $76F8: $21 $FE $59
    ld l, a                                       ; $76FB: $6F
    ld [hl], l                                    ; $76FC: $75
    jr nz, jr_01A_7767                            ; $76FD: $20 $68

    ld h, c                                       ; $76FF: $61
    halt                                          ; $7700: $76
    ld h, l                                       ; $7701: $65
    jr nz, jr_01A_7778                            ; $7702: $20 $74

    ld l, b                                       ; $7704: $68
    ld h, l                                       ; $7705: $65

jr_01A_7706:
    rst $38                                       ; $7706: $FF
    ld b, c                                       ; $7707: $41
    ld [hl], d                                    ; $7708: $72
    ld h, d                                       ; $7709: $62
    ld l, a                                       ; $770A: $6F
    ld l, h                                       ; $770B: $6C
    ld l, h                                       ; $770C: $6C
    jr nz, @+$54                                  ; $770D: $20 $52

    ld l, c                                       ; $770F: $69
    ld l, [hl]                                    ; $7710: $6E
    ld h, a                                       ; $7711: $67

jr_01A_7712:
    ld l, $2E                                     ; $7712: $2E $2E
    ld l, $FE                                     ; $7714: $2E $FE

jr_01A_7716:
    ld c, h                                       ; $7716: $4C
    ld h, l                                       ; $7717: $65
    ld [hl], h                                    ; $7718: $74
    daa                                           ; $7719: $27
    ld [hl], e                                    ; $771A: $73
    jr nz, @+$69                                  ; $771B: $20 $67

    ld l, a                                       ; $771D: $6F
    jr nz, jr_01A_7794                            ; $771E: $20 $74

    ld l, a                                       ; $7720: $6F
    jr nz, jr_01A_7797                            ; $7721: $20 $74

    ld l, b                                       ; $7723: $68
    ld h, l                                       ; $7724: $65

jr_01A_7725:
    rst $38                                       ; $7725: $FF
    ld d, e                                       ; $7726: $53
    ld l, b                                       ; $7727: $68
    ld h, c                                       ; $7728: $61
    ld h, h                                       ; $7729: $64
    ld l, a                                       ; $772A: $6F
    ld [hl], a                                    ; $772B: $77
    jr nz, jr_01A_7775                            ; $772C: $20 $47

    ld h, l                                       ; $772E: $65
    ld a, c                                       ; $772F: $79
    ld [hl], e                                    ; $7730: $73
    ld h, l                                       ; $7731: $65
    ld [hl], d                                    ; $7732: $72
    ld l, $FE                                     ; $7733: $2E $FE

jr_01A_7735:
    db $FD                                        ; $7735: $FD
    sbc d                                         ; $7736: $9A
    ld e, h                                       ; $7737: $5C
    nop                                           ; $7738: $00
    ld [bc], a                                    ; $7739: $02

jr_01A_773A:
    ld b, d                                       ; $773A: $42
    ld b, e                                       ; $773B: $43
    ld [$000A], sp                                ; $773C: $08 $0A $00
    xor h                                         ; $773F: $AC
    and c                                         ; $7740: $A1
    ld b, b                                       ; $7741: $40
    rrca                                          ; $7742: $0F
    inc b                                         ; $7743: $04
    dec b                                         ; $7744: $05
    rrca                                          ; $7745: $0F
    ld a, [de]                                    ; $7746: $1A
    ld [hl], l                                    ; $7747: $75

jr_01A_7748:
    ld [hl], a                                    ; $7748: $77
    ld b, e                                       ; $7749: $43
    ld de, $0504                                  ; $774A: $11 $04 $05
    db $10                                        ; $774D: $10
    ld a, [de]                                    ; $774E: $1A
    ld [hl], l                                    ; $774F: $75
    ld [hl], a                                    ; $7750: $77
    ld c, e                                       ; $7751: $4B
    inc b                                         ; $7752: $04
    ld a, [de]                                    ; $7753: $1A
    dec bc                                        ; $7754: $0B
    nop                                           ; $7755: $00
    db $E3                                        ; $7756: $E3
    ld [hl], a                                    ; $7757: $77
    ld a, [de]                                    ; $7758: $1A
    inc c                                         ; $7759: $0C
    nop                                           ; $775A: $00
    adc a                                         ; $775B: $8F
    ld a, b                                       ; $775C: $78
    ld a, [de]                                    ; $775D: $1A
    dec c                                         ; $775E: $0D
    nop                                           ; $775F: $00
    sub $78                                       ; $7760: $D6 $78
    ld a, [de]                                    ; $7762: $1A
    ld c, $00                                     ; $7763: $0E $00
    ld [hl], l                                    ; $7765: $75
    ld [hl], a                                    ; $7766: $77

jr_01A_7767:
    rst $38                                       ; $7767: $FF

jr_01A_7768:
    ld b, e                                       ; $7768: $43
    ld a, [bc]                                    ; $7769: $0A
    nop                                           ; $776A: $00
    and l                                         ; $776B: $A5
    and c                                         ; $776C: $A1
    ld [$751A], sp                                ; $776D: $08 $1A $75
    ld [hl], a                                    ; $7770: $77
    ld b, l                                       ; $7771: $45
    ld a, [de]                                    ; $7772: $1A
    dec h                                         ; $7773: $25
    ld a, d                                       ; $7774: $7A

jr_01A_7775:
    sub e                                         ; $7775: $93
    ld h, l                                       ; $7776: $65
    adc [hl]                                      ; $7777: $8E

jr_01A_7778:
    ld c, b                                       ; $7778: $48
    ld c, a                                       ; $7779: $4F
    ld h, h                                       ; $777A: $64
    db $10                                        ; $777B: $10
    ld c, h                                       ; $777C: $4C
    ld l, c                                       ; $777D: $69
    dec d                                         ; $777E: $15
    ld c, h                                       ; $777F: $4C
    ld h, [hl]                                    ; $7780: $66
    ret nz                                        ; $7781: $C0

    ld e, h                                       ; $7782: $5C
    ld hl, $0005                                  ; $7783: $21 $05 $00
    add c                                         ; $7786: $81
    ld e, l                                       ; $7787: $5D
    dec b                                         ; $7788: $05
    dec b                                         ; $7789: $05

jr_01A_778A:
    ld b, [hl]                                    ; $778A: $46
    ret nc                                        ; $778B: $D0

    nop                                           ; $778C: $00
    jr nz, jr_01A_778A                            ; $778D: $20 $FB

    ld d, b                                       ; $778F: $50
    ld [hl+], a                                   ; $7790: $22
    dec b                                         ; $7791: $05
    ld b, b                                       ; $7792: $40
    dec bc                                        ; $7793: $0B

jr_01A_7794:
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    add d                                         ; $7796: $82

jr_01A_7797:
    rra                                           ; $7797: $1F
    dec e                                         ; $7798: $1D
    sub h                                         ; $7799: $94
    ld b, d                                       ; $779A: $42
    sub e                                         ; $779B: $93
    ld h, l                                       ; $779C: $65
    adc [hl]                                      ; $779D: $8E
    ld c, b                                       ; $779E: $48
    ld c, a                                       ; $779F: $4F
    ld h, h                                       ; $77A0: $64
    db $10                                        ; $77A1: $10
    ld c, h                                       ; $77A2: $4C
    ld l, c                                       ; $77A3: $69
    dec d                                         ; $77A4: $15
    ld c, h                                       ; $77A5: $4C
    ld h, [hl]                                    ; $77A6: $66
    ret nz                                        ; $77A7: $C0

    ld e, h                                       ; $77A8: $5C
    ld hl, $0005                                  ; $77A9: $21 $05 $00
    add c                                         ; $77AC: $81
    ld e, l                                       ; $77AD: $5D
    dec b                                         ; $77AE: $05
    dec b                                         ; $77AF: $05

jr_01A_77B0:
    ld b, [hl]                                    ; $77B0: $46
    ret nc                                        ; $77B1: $D0

    nop                                           ; $77B2: $00
    jr nz, jr_01A_77B0                            ; $77B3: $20 $FB

    ld d, b                                       ; $77B5: $50
    ld [hl+], a                                   ; $77B6: $22
    dec b                                         ; $77B7: $05
    ld b, b                                       ; $77B8: $40
    dec b                                         ; $77B9: $05
    ld [bc], a                                    ; $77BA: $02
    db $ED                                        ; $77BB: $ED
    ld h, e                                       ; $77BC: $63
    inc bc                                        ; $77BD: $03
    ld [$D06B], sp                                ; $77BE: $08 $6B $D0
    nop                                           ; $77C1: $00
    rrca                                          ; $77C2: $0F
    ld a, [de]                                    ; $77C3: $1A
    ld l, l                                       ; $77C4: $6D
    ld a, [de]                                    ; $77C5: $1A
    jp c, Jump_01A_6B77                           ; $77C6: $DA $77 $6B

    dec hl                                        ; $77C9: $2B
    dec bc                                        ; $77CA: $0B
    db $10                                        ; $77CB: $10
    ld l, d                                       ; $77CC: $6A
    nop                                           ; $77CD: $00
    add b                                         ; $77CE: $80
    nop                                           ; $77CF: $00
    dec bc                                        ; $77D0: $0B
    nop                                           ; $77D1: $00
    dec bc                                        ; $77D2: $0B
    ld [bc], a                                    ; $77D3: $02
    nop                                           ; $77D4: $00
    add d                                         ; $77D5: $82
    rra                                           ; $77D6: $1F

jr_01A_77D7:
    dec e                                         ; $77D7: $1D
    sub h                                         ; $77D8: $94
    ld b, d                                       ; $77D9: $42
    ld e, e                                       ; $77DA: $5B
    ld a, [de]                                    ; $77DB: $1A
    dec de                                        ; $77DC: $1B
    ld [hl], e                                    ; $77DD: $73
    ld b, l                                       ; $77DE: $45
    rrca                                          ; $77DF: $0F
    sub a                                         ; $77E0: $97
    ld l, l                                       ; $77E1: $6D
    ld b, d                                       ; $77E2: $42

jr_01A_77E3:
    sub e                                         ; $77E3: $93
    ld h, l                                       ; $77E4: $65
    adc [hl]                                      ; $77E5: $8E
    ld c, b                                       ; $77E6: $48

jr_01A_77E7:
    ld c, a                                       ; $77E7: $4F
    ld h, h                                       ; $77E8: $64
    db $10                                        ; $77E9: $10
    ld c, h                                       ; $77EA: $4C

jr_01A_77EB:
    ld l, c                                       ; $77EB: $69
    dec d                                         ; $77EC: $15
    ld c, h                                       ; $77ED: $4C
    ld h, [hl]                                    ; $77EE: $66
    ret nz                                        ; $77EF: $C0

    ld e, h                                       ; $77F0: $5C
    ld hl, $0005                                  ; $77F1: $21 $05 $00
    ld l, e                                       ; $77F4: $6B
    ld c, d                                       ; $77F5: $4A
    dec b                                         ; $77F6: $05
    dec bc                                        ; $77F7: $0B
    sub h                                         ; $77F8: $94
    ret nc                                        ; $77F9: $D0

    nop                                           ; $77FA: $00
    ld a, [de]                                    ; $77FB: $1A
    add hl, hl                                    ; $77FC: $29
    ld a, b                                       ; $77FD: $78
    ld [hl+], a                                   ; $77FE: $22
    dec b                                         ; $77FF: $05
    ld b, b                                       ; $7800: $40
    dec b                                         ; $7801: $05
    ld [bc], a                                    ; $7802: $02
    db $ED                                        ; $7803: $ED
    ld h, e                                       ; $7804: $63
    inc b                                         ; $7805: $04
    rlca                                          ; $7806: $07
    ld e, a                                       ; $7807: $5F
    ret nc                                        ; $7808: $D0

    nop                                           ; $7809: $00
    ld a, [de]                                    ; $780A: $1A
    ld b, h                                       ; $780B: $44
    ld a, b                                       ; $780C: $78
    ld a, [de]                                    ; $780D: $1A
    add a                                         ; $780E: $87
    ld a, b                                       ; $780F: $78
    dec bc                                        ; $7810: $0B

jr_01A_7811:
    nop                                           ; $7811: $00
    dec bc                                        ; $7812: $0B
    ld [bc], a                                    ; $7813: $02
    ld l, e                                       ; $7814: $6B
    dec hl                                        ; $7815: $2B
    dec bc                                        ; $7816: $0B
    db $10                                        ; $7817: $10
    ld l, d                                       ; $7818: $6A
    nop                                           ; $7819: $00
    add b                                         ; $781A: $80
    nop                                           ; $781B: $00
    ld l, e                                       ; $781C: $6B
    rrca                                          ; $781D: $0F
    dec c                                         ; $781E: $0D
    ld b, b                                       ; $781F: $40
    ld l, c                                       ; $7820: $69
    or b                                          ; $7821: $B0
    add d                                         ; $7822: $82
    nop                                           ; $7823: $00
    add d                                         ; $7824: $82
    rra                                           ; $7825: $1F
    dec e                                         ; $7826: $1D
    sub h                                         ; $7827: $94
    ld b, d                                       ; $7828: $42
    dec d                                         ; $7829: $15
    jr nz, jr_01A_77D7                            ; $782A: $20 $AB

    ld d, b                                       ; $782C: $50
    db $10                                        ; $782D: $10
    jr nz, jr_01A_77E3                            ; $782E: $20 $B3

    ld c, a                                       ; $7830: $4F
    db $10                                        ; $7831: $10
    jr nz, jr_01A_7811                            ; $7832: $20 $DD

    ld c, a                                       ; $7834: $4F
    db $10                                        ; $7835: $10
    jr nz, jr_01A_77EB                            ; $7836: $20 $B3

    ld c, a                                       ; $7838: $4F
    db $10                                        ; $7839: $10
    jr nz, jr_01A_77E7                            ; $783A: $20 $AB

    ld d, b                                       ; $783C: $50
    nop                                           ; $783D: $00
    nop                                           ; $783E: $00
    ld e, e                                       ; $783F: $5B
    ld a, [de]                                    ; $7840: $1A
    dec a                                         ; $7841: $3D
    ld [hl], e                                    ; $7842: $73
    ld b, d                                       ; $7843: $42
    inc d                                         ; $7844: $14
    rrca                                          ; $7845: $0F
    ld a, [de]                                    ; $7846: $1A
    ld l, l                                       ; $7847: $6D
    ld e, h                                       ; $7848: $5C
    nop                                           ; $7849: $00
    ld [bc], a                                    ; $784A: $02
    dec d                                         ; $784B: $15
    rrca                                          ; $784C: $0F
    and b                                         ; $784D: $A0
    ld l, h                                       ; $784E: $6C
    ld [de], a                                    ; $784F: $12
    rrca                                          ; $7850: $0F
    ld a, [de]                                    ; $7851: $1A
    ld l, l                                       ; $7852: $6D
    ld [de], a                                    ; $7853: $12
    rrca                                          ; $7854: $0F
    sub b                                         ; $7855: $90
    ld l, h                                       ; $7856: $6C
    ld [de], a                                    ; $7857: $12
    rrca                                          ; $7858: $0F
    ld a, [de]                                    ; $7859: $1A
    ld l, l                                       ; $785A: $6D
    nop                                           ; $785B: $00
    nop                                           ; $785C: $00
    ld e, h                                       ; $785D: $5C
    ld bc, $1502                                  ; $785E: $01 $02 $15
    rrca                                          ; $7861: $0F
    or b                                          ; $7862: $B0
    ld l, h                                       ; $7863: $6C
    db $10                                        ; $7864: $10
    rrca                                          ; $7865: $0F
    inc h                                         ; $7866: $24
    ld l, l                                       ; $7867: $6D
    jr jr_01A_7879                                ; $7868: $18 $0F

    jr c, jr_01A_78D9                             ; $786A: $38 $6D

    jr nz, jr_01A_787D                            ; $786C: $20 $0F

    db $10                                        ; $786E: $10
    ld l, l                                       ; $786F: $6D
    jr nz, jr_01A_7881                            ; $7870: $20 $0F

    ld d, [hl]                                    ; $7872: $56
    ld l, l                                       ; $7873: $6D
    stop                                          ; $7874: $10 $00
    ld e, h                                       ; $7876: $5C
    ld [bc], a                                    ; $7877: $02
    ld [bc], a                                    ; $7878: $02

jr_01A_7879:
    ld e, h                                       ; $7879: $5C
    inc bc                                        ; $787A: $03
    ld [bc], a                                    ; $787B: $02
    dec d                                         ; $787C: $15

jr_01A_787D:
    rrca                                          ; $787D: $0F
    ret nz                                        ; $787E: $C0

    ld l, h                                       ; $787F: $6C
    db $10                                        ; $7880: $10

jr_01A_7881:
    rrca                                          ; $7881: $0F
    ld a, [de]                                    ; $7882: $1A
    ld l, l                                       ; $7883: $6D
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    ld b, d                                       ; $7886: $42
    ld e, e                                       ; $7887: $5B
    ld a, [de]                                    ; $7888: $1A
    cp l                                          ; $7889: $BD
    halt                                          ; $788A: $76
    ld b, l                                       ; $788B: $45
    rrca                                          ; $788C: $0F
    sub a                                         ; $788D: $97
    ld l, l                                       ; $788E: $6D
    sub e                                         ; $788F: $93
    ld h, l                                       ; $7890: $65
    adc [hl]                                      ; $7891: $8E
    ld c, b                                       ; $7892: $48
    ld c, a                                       ; $7893: $4F
    ld h, h                                       ; $7894: $64
    db $10                                        ; $7895: $10
    ld c, h                                       ; $7896: $4C
    ld l, c                                       ; $7897: $69
    dec d                                         ; $7898: $15
    ld c, h                                       ; $7899: $4C
    ld h, [hl]                                    ; $789A: $66
    ret nz                                        ; $789B: $C0

    ld e, h                                       ; $789C: $5C
    ld hl, $0005                                  ; $789D: $21 $05 $00
    add c                                         ; $78A0: $81
    ld e, l                                       ; $78A1: $5D
    dec b                                         ; $78A2: $05
    dec b                                         ; $78A3: $05

jr_01A_78A4:
    ld b, [hl]                                    ; $78A4: $46
    ret nc                                        ; $78A5: $D0

    nop                                           ; $78A6: $00
    jr nz, jr_01A_78A4                            ; $78A7: $20 $FB

    ld d, b                                       ; $78A9: $50
    ld [hl+], a                                   ; $78AA: $22
    dec b                                         ; $78AB: $05
    ld b, b                                       ; $78AC: $40
    dec b                                         ; $78AD: $05
    ld [bc], a                                    ; $78AE: $02
    db $ED                                        ; $78AF: $ED
    ld h, e                                       ; $78B0: $63
    inc bc                                        ; $78B1: $03
    ld [$D06B], sp                                ; $78B2: $08 $6B $D0
    nop                                           ; $78B5: $00
    rrca                                          ; $78B6: $0F
    ld a, [de]                                    ; $78B7: $1A
    ld l, l                                       ; $78B8: $6D
    ld a, [de]                                    ; $78B9: $1A
    add a                                         ; $78BA: $87
    ld a, b                                       ; $78BB: $78
    dec bc                                        ; $78BC: $0B
    nop                                           ; $78BD: $00
    dec bc                                        ; $78BE: $0B
    ld [bc], a                                    ; $78BF: $02
    ld l, e                                       ; $78C0: $6B
    dec hl                                        ; $78C1: $2B
    dec bc                                        ; $78C2: $0B
    db $10                                        ; $78C3: $10
    ld l, d                                       ; $78C4: $6A
    nop                                           ; $78C5: $00
    add b                                         ; $78C6: $80
    nop                                           ; $78C7: $00
    ld l, e                                       ; $78C8: $6B
    rrca                                          ; $78C9: $0F
    dec c                                         ; $78CA: $0D
    ld b, b                                       ; $78CB: $40
    ld l, c                                       ; $78CC: $69
    or b                                          ; $78CD: $B0
    add d                                         ; $78CE: $82
    nop                                           ; $78CF: $00
    nop                                           ; $78D0: $00
    add d                                         ; $78D1: $82
    rra                                           ; $78D2: $1F
    dec e                                         ; $78D3: $1D
    sub h                                         ; $78D4: $94

jr_01A_78D5:
    ld b, d                                       ; $78D5: $42
    sub e                                         ; $78D6: $93
    ld h, l                                       ; $78D7: $65
    adc [hl]                                      ; $78D8: $8E

jr_01A_78D9:
    ld c, b                                       ; $78D9: $48
    ld c, a                                       ; $78DA: $4F
    ld h, h                                       ; $78DB: $64
    db $10                                        ; $78DC: $10
    ld c, h                                       ; $78DD: $4C
    ld l, c                                       ; $78DE: $69

jr_01A_78DF:
    dec d                                         ; $78DF: $15
    ld c, h                                       ; $78E0: $4C
    ld h, [hl]                                    ; $78E1: $66
    ret nz                                        ; $78E2: $C0

    ld e, h                                       ; $78E3: $5C
    ld hl, $0005                                  ; $78E4: $21 $05 $00
    add c                                         ; $78E7: $81
    ld e, l                                       ; $78E8: $5D
    dec b                                         ; $78E9: $05
    dec b                                         ; $78EA: $05

jr_01A_78EB:
    ld b, [hl]                                    ; $78EB: $46
    ret nc                                        ; $78EC: $D0

    nop                                           ; $78ED: $00
    jr nz, jr_01A_78EB                            ; $78EE: $20 $FB

    ld d, b                                       ; $78F0: $50
    ld [hl+], a                                   ; $78F1: $22
    dec b                                         ; $78F2: $05
    ld b, b                                       ; $78F3: $40
    dec b                                         ; $78F4: $05
    ld [bc], a                                    ; $78F5: $02
    dec b                                         ; $78F6: $05

jr_01A_78F7:
    ld h, h                                       ; $78F7: $64
    inc bc                                        ; $78F8: $03
    ld [$D06B], sp                                ; $78F9: $08 $6B $D0
    nop                                           ; $78FC: $00
    rrca                                          ; $78FD: $0F
    ld a, [de]                                    ; $78FE: $1A
    ld l, l                                       ; $78FF: $6D
    ld a, [de]                                    ; $7900: $1A
    and c                                         ; $7901: $A1
    ld a, c                                       ; $7902: $79

jr_01A_7903:
    dec bc                                        ; $7903: $0B
    nop                                           ; $7904: $00
    dec bc                                        ; $7905: $0B
    ld [bc], a                                    ; $7906: $02
    ld l, e                                       ; $7907: $6B

jr_01A_7908:
    dec hl                                        ; $7908: $2B
    dec bc                                        ; $7909: $0B
    db $10                                        ; $790A: $10
    ld l, d                                       ; $790B: $6A
    nop                                           ; $790C: $00
    add b                                         ; $790D: $80
    nop                                           ; $790E: $00
    ld l, e                                       ; $790F: $6B
    rrca                                          ; $7910: $0F
    dec c                                         ; $7911: $0D
    ld b, b                                       ; $7912: $40
    ld l, c                                       ; $7913: $69
    or b                                          ; $7914: $B0
    add d                                         ; $7915: $82
    nop                                           ; $7916: $00

jr_01A_7917:
    nop                                           ; $7917: $00
    add d                                         ; $7918: $82
    rra                                           ; $7919: $1F
    dec e                                         ; $791A: $1D
    sub h                                         ; $791B: $94
    ld b, d                                       ; $791C: $42
    inc d                                         ; $791D: $14
    jr nz, jr_01A_78D5                            ; $791E: $20 $B5

    ld d, b                                       ; $7920: $50
    ld b, b                                       ; $7921: $40
    db $10                                        ; $7922: $10

jr_01A_7923:
    ld e, d                                       ; $7923: $5A
    ld a, [de]                                    ; $7924: $1A

jr_01A_7925:
    sbc c                                         ; $7925: $99
    ld a, c                                       ; $7926: $79
    dec d                                         ; $7927: $15
    jr nz, jr_01A_78F7                            ; $7928: $20 $CD

    ld c, a                                       ; $792A: $4F
    jr nc, jr_01A_792D                            ; $792B: $30 $00

jr_01A_792D:
    ld b, l                                       ; $792D: $45
    jr z, jr_01A_7908                             ; $792E: $28 $D8

jr_01A_7930:
    ld l, l                                       ; $7930: $6D
    inc d                                         ; $7931: $14
    jr nz, jr_01A_78DF                            ; $7932: $20 $AB

    ld d, b                                       ; $7934: $50

jr_01A_7935:
    dec d                                         ; $7935: $15
    jr nz, jr_01A_7925                            ; $7936: $20 $ED

    ld c, a                                       ; $7938: $4F
    db $10                                        ; $7939: $10
    jr nz, jr_01A_7923                            ; $793A: $20 $E7

    ld d, b                                       ; $793C: $50
    jr jr_01A_795F                                ; $793D: $18 $20

    cp a                                          ; $793F: $BF
    ld d, b                                       ; $7940: $50
    db $10                                        ; $7941: $10
    jr nz, jr_01A_7917                            ; $7942: $20 $D3

    ld d, b                                       ; $7944: $50
    jr jr_01A_7947                                ; $7945: $18 $00

jr_01A_7947:
    ld e, d                                       ; $7947: $5A

jr_01A_7948:
    ld a, [de]                                    ; $7948: $1A
    sbc c                                         ; $7949: $99
    ld a, c                                       ; $794A: $79
    dec d                                         ; $794B: $15
    jr nz, jr_01A_7903                            ; $794C: $20 $B5

    ld d, b                                       ; $794E: $50

jr_01A_794F:
    ld [$CD20], sp                                ; $794F: $08 $20 $CD
    ld c, a                                       ; $7952: $4F

jr_01A_7953:
    jr nz, jr_01A_7955                            ; $7953: $20 $00

jr_01A_7955:
    ld b, l                                       ; $7955: $45
    jr z, jr_01A_7930                             ; $7956: $28 $D8

    ld l, l                                       ; $7958: $6D
    inc d                                         ; $7959: $14
    jr nz, jr_01A_7925                            ; $795A: $20 $C9

    ld d, b                                       ; $795C: $50
    ld b, b                                       ; $795D: $40
    db $10                                        ; $795E: $10

jr_01A_795F:
    ld e, d                                       ; $795F: $5A
    ld a, [de]                                    ; $7960: $1A
    sbc c                                         ; $7961: $99
    ld a, c                                       ; $7962: $79
    dec d                                         ; $7963: $15
    jr nz, jr_01A_7953                            ; $7964: $20 $ED

    ld c, a                                       ; $7966: $4F
    db $10                                        ; $7967: $10
    jr nz, @-$31                                  ; $7968: $20 $CD

    ld c, a                                       ; $796A: $4F
    stop                                          ; $796B: $10 $00
    ld b, l                                       ; $796D: $45
    jr z, jr_01A_7948                             ; $796E: $28 $D8

jr_01A_7970:
    ld l, l                                       ; $7970: $6D
    inc d                                         ; $7971: $14
    jr nz, @-$3F                                  ; $7972: $20 $BF

    ld d, b                                       ; $7974: $50
    dec d                                         ; $7975: $15
    jr nz, @-$3F                                  ; $7976: $20 $BF

    ld d, b                                       ; $7978: $50
    db $10                                        ; $7979: $10
    jr nz, jr_01A_794F                            ; $797A: $20 $D3

    ld d, b                                       ; $797C: $50
    db $10                                        ; $797D: $10
    jr nz, jr_01A_7935                            ; $797E: $20 $B5

    ld d, b                                       ; $7980: $50
    stop                                          ; $7981: $10 $00
    ld e, d                                       ; $7983: $5A
    ld a, [de]                                    ; $7984: $1A
    sbc c                                         ; $7985: $99
    ld a, c                                       ; $7986: $79
    dec d                                         ; $7987: $15
    jr nz, @-$31                                  ; $7988: $20 $CD

    ld c, a                                       ; $798A: $4F
    db $10                                        ; $798B: $10
    jr nz, @-$11                                  ; $798C: $20 $ED

    ld c, a                                       ; $798E: $4F
    db $10                                        ; $798F: $10
    jr nz, jr_01A_795F                            ; $7990: $20 $CD

    ld c, a                                       ; $7992: $4F
    jr nc, jr_01A_7995                            ; $7993: $30 $00

jr_01A_7995:
    ld b, l                                       ; $7995: $45
    jr z, jr_01A_7970                             ; $7996: $28 $D8

    ld l, l                                       ; $7998: $6D
    ld l, [hl]                                    ; $7999: $6E
    rrca                                          ; $799A: $0F
    rst $38                                       ; $799B: $FF
    ld a, a                                       ; $799C: $7F
    halt                                          ; $799D: $76
    jr nz, jr_01A_79AF                            ; $799E: $20 $0F

    ld b, d                                       ; $79A0: $42
    inc d                                         ; $79A1: $14
    rrca                                          ; $79A2: $0F
    ld a, [de]                                    ; $79A3: $1A
    ld l, l                                       ; $79A4: $6D
    ld e, e                                       ; $79A5: $5B
    ld a, [de]                                    ; $79A6: $1A
    ldh a, [rPCM12]                               ; $79A7: $F0 $76
    ld c, e                                       ; $79A9: $4B
    inc bc                                        ; $79AA: $03
    ld a, [de]                                    ; $79AB: $1A
    nop                                           ; $79AC: $00
    nop                                           ; $79AD: $00
    ret nz                                        ; $79AE: $C0

jr_01A_79AF:
    ld a, c                                       ; $79AF: $79
    ld a, [de]                                    ; $79B0: $1A
    inc bc                                        ; $79B1: $03
    nop                                           ; $79B2: $00
    call nc, $1A79                                ; $79B3: $D4 $79 $1A
    ld [bc], a                                    ; $79B6: $02
    nop                                           ; $79B7: $00
    ld b, $7A                                     ; $79B8: $06 $7A
    ld a, [de]                                    ; $79BA: $1A
    ld bc, $F200                                  ; $79BB: $01 $00 $F2
    ld a, c                                       ; $79BE: $79
    rst $38                                       ; $79BF: $FF
    inc d                                         ; $79C0: $14
    rrca                                          ; $79C1: $0F
    db $10                                        ; $79C2: $10
    ld l, l                                       ; $79C3: $6D
    ld e, h                                       ; $79C4: $5C
    nop                                           ; $79C5: $00
    ld [bc], a                                    ; $79C6: $02
    rlca                                          ; $79C7: $07
    nop                                           ; $79C8: $00
    ld l, e                                       ; $79C9: $6B
    ld c, d                                       ; $79CA: $4A
    add hl, bc                                    ; $79CB: $09
    nop                                           ; $79CC: $00
    ld a, [de]                                    ; $79CD: $1A
    dec e                                         ; $79CE: $1D
    ld a, c                                       ; $79CF: $79
    ld b, l                                       ; $79D0: $45
    ld a, [de]                                    ; $79D1: $1A
    ld d, $7A                                     ; $79D2: $16 $7A
    inc d                                         ; $79D4: $14
    rrca                                          ; $79D5: $0F
    ld a, [de]                                    ; $79D6: $1A
    ld l, l                                       ; $79D7: $6D
    ld e, h                                       ; $79D8: $5C
    nop                                           ; $79D9: $00
    ld [bc], a                                    ; $79DA: $02
    rlca                                          ; $79DB: $07
    nop                                           ; $79DC: $00
    ld l, e                                       ; $79DD: $6B
    ld c, d                                       ; $79DE: $4A
    add hl, bc                                    ; $79DF: $09
    nop                                           ; $79E0: $00
    ld a, [de]                                    ; $79E1: $1A
    ld sp, $1579                                  ; $79E2: $31 $79 $15
    rrca                                          ; $79E5: $0F
    ld a, [de]                                    ; $79E6: $1A
    ld l, l                                       ; $79E7: $6D
    ld [$560F], sp                                ; $79E8: $08 $0F $56
    ld l, l                                       ; $79EB: $6D
    stop                                          ; $79EC: $10 $00
    ld b, l                                       ; $79EE: $45
    ld a, [de]                                    ; $79EF: $1A
    ld d, $7A                                     ; $79F0: $16 $7A
    inc d                                         ; $79F2: $14
    rrca                                          ; $79F3: $0F
    inc h                                         ; $79F4: $24
    ld l, l                                       ; $79F5: $6D
    ld e, h                                       ; $79F6: $5C
    nop                                           ; $79F7: $00
    ld [bc], a                                    ; $79F8: $02
    rlca                                          ; $79F9: $07
    nop                                           ; $79FA: $00
    ld l, e                                       ; $79FB: $6B
    ld c, d                                       ; $79FC: $4A
    add hl, bc                                    ; $79FD: $09
    nop                                           ; $79FE: $00
    ld a, [de]                                    ; $79FF: $1A
    ld e, c                                       ; $7A00: $59
    ld a, c                                       ; $7A01: $79
    ld b, l                                       ; $7A02: $45
    ld a, [de]                                    ; $7A03: $1A
    ld d, $7A                                     ; $7A04: $16 $7A
    inc d                                         ; $7A06: $14
    rrca                                          ; $7A07: $0F
    ld l, $6D                                     ; $7A08: $2E $6D
    ld e, h                                       ; $7A0A: $5C
    nop                                           ; $7A0B: $00
    ld [bc], a                                    ; $7A0C: $02
    rlca                                          ; $7A0D: $07
    nop                                           ; $7A0E: $00
    ld l, e                                       ; $7A0F: $6B
    ld c, d                                       ; $7A10: $4A
    add hl, bc                                    ; $7A11: $09
    nop                                           ; $7A12: $00
    ld a, [de]                                    ; $7A13: $1A
    ld [hl], c                                    ; $7A14: $71
    ld a, c                                       ; $7A15: $79
    dec d                                         ; $7A16: $15
    rrca                                          ; $7A17: $0F
    and b                                         ; $7A18: $A0
    ld l, h                                       ; $7A19: $6C
    jr nz, jr_01A_7A2B                            ; $7A1A: $20 $0F

    ret nz                                        ; $7A1C: $C0

    ld l, h                                       ; $7A1D: $6C
    jr nz, jr_01A_7A2F                            ; $7A1E: $20 $0F

    and b                                         ; $7A20: $A0
    ld l, h                                       ; $7A21: $6C
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    ld b, d                                       ; $7A24: $42
    sub e                                         ; $7A25: $93
    ld h, l                                       ; $7A26: $65
    adc [hl]                                      ; $7A27: $8E
    ld c, b                                       ; $7A28: $48
    ld c, a                                       ; $7A29: $4F
    ld h, h                                       ; $7A2A: $64

jr_01A_7A2B:
    db $10                                        ; $7A2B: $10
    ld c, h                                       ; $7A2C: $4C
    ld l, c                                       ; $7A2D: $69
    dec d                                         ; $7A2E: $15

jr_01A_7A2F:
    ld c, h                                       ; $7A2F: $4C
    ld h, [hl]                                    ; $7A30: $66
    ret nz                                        ; $7A31: $C0

    ld e, h                                       ; $7A32: $5C
    ld hl, $0005                                  ; $7A33: $21 $05 $00
    add c                                         ; $7A36: $81
    ld e, l                                       ; $7A37: $5D
    dec b                                         ; $7A38: $05
    dec b                                         ; $7A39: $05

jr_01A_7A3A:
    ld b, [hl]                                    ; $7A3A: $46
    ret nc                                        ; $7A3B: $D0

    nop                                           ; $7A3C: $00
    jr nz, jr_01A_7A3A                            ; $7A3D: $20 $FB

    ld d, b                                       ; $7A3F: $50
    ld [hl+], a                                   ; $7A40: $22
    dec b                                         ; $7A41: $05
    ld b, b                                       ; $7A42: $40
    dec b                                         ; $7A43: $05
    ld [bc], a                                    ; $7A44: $02
    db $ED                                        ; $7A45: $ED
    ld h, e                                       ; $7A46: $63
    inc b                                         ; $7A47: $04
    rlca                                          ; $7A48: $07
    ld e, a                                       ; $7A49: $5F
    ret nc                                        ; $7A4A: $D0

    nop                                           ; $7A4B: $00
    rrca                                          ; $7A4C: $0F
    db $10                                        ; $7A4D: $10
    ld l, l                                       ; $7A4E: $6D
    ld a, [de]                                    ; $7A4F: $1A
    ld h, h                                       ; $7A50: $64
    ld a, d                                       ; $7A51: $7A
    ld l, e                                       ; $7A52: $6B
    dec hl                                        ; $7A53: $2B
    dec bc                                        ; $7A54: $0B
    db $10                                        ; $7A55: $10
    ld l, d                                       ; $7A56: $6A
    nop                                           ; $7A57: $00
    add b                                         ; $7A58: $80
    nop                                           ; $7A59: $00
    dec bc                                        ; $7A5A: $0B
    nop                                           ; $7A5B: $00
    dec bc                                        ; $7A5C: $0B
    ld [bc], a                                    ; $7A5D: $02
    nop                                           ; $7A5E: $00
    add d                                         ; $7A5F: $82
    rra                                           ; $7A60: $1F
    dec e                                         ; $7A61: $1D
    sub h                                         ; $7A62: $94
    ld b, d                                       ; $7A63: $42
    inc d                                         ; $7A64: $14
    rrca                                          ; $7A65: $0F
    db $10                                        ; $7A66: $10
    ld l, l                                       ; $7A67: $6D
    ld e, e                                       ; $7A68: $5B
    ld a, [de]                                    ; $7A69: $1A
    push hl                                       ; $7A6A: $E5
    ld a, e                                       ; $7A6B: $7B
    ld h, d                                       ; $7A6C: $62
    ld [bc], a                                    ; $7A6D: $02
    ld b, e                                       ; $7A6E: $43
    ld a, [bc]                                    ; $7A6F: $0A
    nop                                           ; $7A70: $00
    and l                                         ; $7A71: $A5
    and c                                         ; $7A72: $A1
    ld [$7F1A], sp                                ; $7A73: $08 $1A $7F
    ld a, d                                       ; $7A76: $7A
    ld e, e                                       ; $7A77: $5B
    ld a, [de]                                    ; $7A78: $1A
    add b                                         ; $7A79: $80
    ld a, d                                       ; $7A7A: $7A
    ld b, l                                       ; $7A7B: $45
    rrca                                          ; $7A7C: $0F
    sub a                                         ; $7A7D: $97
    ld l, l                                       ; $7A7E: $6D
    ld [de], a                                    ; $7A7F: $12
    sbc e                                         ; $7A80: $9B
    jr z, jr_01A_7AF8                             ; $7A81: $28 $75

    sbc a                                         ; $7A83: $9F
    ld c, a                                       ; $7A84: $4F
    ld l, b                                       ; $7A85: $68
    inc l                                         ; $7A86: $2C
    jr nz, jr_01A_7AF1                            ; $7A87: $20 $68

    ld l, c                                       ; $7A89: $69
    jr nz, jr_01A_7AE0                            ; $7A8A: $20 $54

    ld l, a                                       ; $7A8C: $6F
    ld l, [hl]                                    ; $7A8D: $6E
    ld a, c                                       ; $7A8E: $79
    ld l, $FE                                     ; $7A8F: $2E $FE
    ld d, e                                       ; $7A91: $53
    ld l, a                                       ; $7A92: $6F
    jr nz, jr_01A_7AF6                            ; $7A93: $20 $61

    ld [hl], d                                    ; $7A95: $72
    ld h, l                                       ; $7A96: $65
    jr nz, jr_01A_7B12                            ; $7A97: $20 $79

    ld l, a                                       ; $7A99: $6F
    ld [hl], l                                    ; $7A9A: $75
    rst $38                                       ; $7A9B: $FF
    ld [hl], d                                    ; $7A9C: $72
    ld h, l                                       ; $7A9D: $65
    ld h, c                                       ; $7A9E: $61
    ld h, h                                       ; $7A9F: $64
    ld a, c                                       ; $7AA0: $79
    jr nz, jr_01A_7B17                            ; $7AA1: $20 $74

    ld l, a                                       ; $7AA3: $6F
    jr nz, jr_01A_7B0D                            ; $7AA4: $20 $67

    ld l, c                                       ; $7AA6: $69
    halt                                          ; $7AA7: $76
    ld h, l                                       ; $7AA8: $65
    cp $62                                        ; $7AA9: $FE $62
    ld h, c                                       ; $7AAB: $61
    ld h, e                                       ; $7AAC: $63
    ld l, e                                       ; $7AAD: $6B
    jr nz, jr_01A_7B24                            ; $7AAE: $20 $74

    ld l, b                                       ; $7AB0: $68
    ld h, l                                       ; $7AB1: $65
    jr nz, jr_01A_7B1F                            ; $7AB2: $20 $6B

    ld h, l                                       ; $7AB4: $65
    ld a, c                                       ; $7AB5: $79
    rst $38                                       ; $7AB6: $FF
    ld l, [hl]                                    ; $7AB7: $6E
    ld l, a                                       ; $7AB8: $6F
    ld [hl], a                                    ; $7AB9: $77
    ccf                                           ; $7ABA: $3F
    cp $FD                                        ; $7ABB: $FE $FD
    sbc c                                         ; $7ABD: $99
    sbc a                                         ; $7ABE: $9F
    jr nz, @+$49                                  ; $7ABF: $20 $47

    ld l, c                                       ; $7AC1: $69
    halt                                          ; $7AC2: $76
    ld h, l                                       ; $7AC3: $65
    jr nz, jr_01A_7B2F                            ; $7AC4: $20 $69

    ld [hl], h                                    ; $7AC6: $74
    jr nz, jr_01A_7B37                            ; $7AC7: $20 $6E

    ld l, a                                       ; $7AC9: $6F
    ld [hl], a                                    ; $7ACA: $77
    rst $38                                       ; $7ACB: $FF
    jr nz, @+$49                                  ; $7ACC: $20 $47

    ld l, c                                       ; $7ACE: $69
    halt                                          ; $7ACF: $76
    ld h, l                                       ; $7AD0: $65
    jr nz, jr_01A_7B3C                            ; $7AD1: $20 $69

    ld [hl], h                                    ; $7AD3: $74
    jr nz, jr_01A_7B42                            ; $7AD4: $20 $6C

    ld h, c                                       ; $7AD6: $61
    ld [hl], h                                    ; $7AD7: $74
    ld h, l                                       ; $7AD8: $65
    ld [hl], d                                    ; $7AD9: $72
    db $FD                                        ; $7ADA: $FD
    sbc h                                         ; $7ADB: $9C
    ld [bc], a                                    ; $7ADC: $02
    ld a, [de]                                    ; $7ADD: $1A
    db $E3                                        ; $7ADE: $E3
    ld a, d                                       ; $7ADF: $7A

jr_01A_7AE0:
    ld a, [de]                                    ; $7AE0: $1A
    sub a                                         ; $7AE1: $97
    ld a, e                                       ; $7AE2: $7B
    sbc e                                         ; $7AE3: $9B
    ld a, b                                       ; $7AE4: $78
    ld [hl], b                                    ; $7AE5: $70
    sbc a                                         ; $7AE6: $9F
    ld c, a                                       ; $7AE7: $4F
    ld l, e                                       ; $7AE8: $6B
    ld h, c                                       ; $7AE9: $61
    ld a, c                                       ; $7AEA: $79
    inc l                                         ; $7AEB: $2C
    jr nz, @+$6A                                  ; $7AEC: $20 $68

    ld h, l                                       ; $7AEE: $65
    ld [hl], d                                    ; $7AEF: $72
    ld h, l                                       ; $7AF0: $65

jr_01A_7AF1:
    ld l, $FE                                     ; $7AF1: $2E $FE
    db $FD                                        ; $7AF3: $FD
    sbc d                                         ; $7AF4: $9A
    xor [hl]                                      ; $7AF5: $AE

jr_01A_7AF6:
    and l                                         ; $7AF6: $A5
    and c                                         ; $7AF7: $A1

jr_01A_7AF8:
    rst $30                                       ; $7AF8: $F7
    adc b                                         ; $7AF9: $88
    nop                                           ; $7AFA: $00
    dec e                                         ; $7AFB: $1D
    ld bc, $549F                                  ; $7AFC: $01 $9F $54
    ld l, a                                       ; $7AFF: $6F
    ld l, [hl]                                    ; $7B00: $6E
    ld a, c                                       ; $7B01: $79
    jr nz, jr_01A_7B70                            ; $7B02: $20 $6C

    ld l, a                                       ; $7B04: $6F
    ld [hl], e                                    ; $7B05: $73
    ld [hl], h                                    ; $7B06: $74
    jr nz, jr_01A_7B7D                            ; $7B07: $20 $74

    ld l, b                                       ; $7B09: $68
    ld h, l                                       ; $7B0A: $65
    rst $38                                       ; $7B0B: $FF
    ld b, c                                       ; $7B0C: $41

jr_01A_7B0D:
    ld [hl], e                                    ; $7B0D: $73
    ld l, b                                       ; $7B0E: $68
    ld h, a                                       ; $7B0F: $67
    ld h, c                                       ; $7B10: $61
    ld [hl], d                                    ; $7B11: $72

jr_01A_7B12:
    daa                                           ; $7B12: $27
    ld [hl], e                                    ; $7B13: $73
    jr nz, jr_01A_7B61                            ; $7B14: $20 $4B

    ld h, l                                       ; $7B16: $65

jr_01A_7B17:
    ld a, c                                       ; $7B17: $79
    ld hl, $FDFE                                  ; $7B18: $21 $FE $FD
    sbc e                                         ; $7B1B: $9B
    jr z, jr_01A_7B93                             ; $7B1C: $28 $75

    sbc a                                         ; $7B1E: $9F

jr_01A_7B1F:
    ld b, l                                       ; $7B1F: $45
    ld a, b                                       ; $7B20: $78
    ld h, e                                       ; $7B21: $63
    ld h, l                                       ; $7B22: $65
    ld l, h                                       ; $7B23: $6C

jr_01A_7B24:
    ld l, h                                       ; $7B24: $6C
    ld h, l                                       ; $7B25: $65
    ld l, [hl]                                    ; $7B26: $6E
    ld [hl], h                                    ; $7B27: $74
    inc l                                         ; $7B28: $2C
    rst $38                                       ; $7B29: $FF
    ld h, l                                       ; $7B2A: $65
    ld a, b                                       ; $7B2B: $78
    ld h, e                                       ; $7B2C: $63
    ld h, l                                       ; $7B2D: $65
    ld l, h                                       ; $7B2E: $6C

jr_01A_7B2F:
    ld l, h                                       ; $7B2F: $6C
    ld h, l                                       ; $7B30: $65
    ld l, [hl]                                    ; $7B31: $6E
    ld [hl], h                                    ; $7B32: $74
    ld l, $FE                                     ; $7B33: $2E $FE
    ld c, c                                       ; $7B35: $49
    daa                                           ; $7B36: $27

jr_01A_7B37:
    ld l, h                                       ; $7B37: $6C
    ld l, h                                       ; $7B38: $6C
    jr nz, @+$76                                  ; $7B39: $20 $74

    ld h, c                                       ; $7B3B: $61

jr_01A_7B3C:
    ld l, e                                       ; $7B3C: $6B
    ld h, l                                       ; $7B3D: $65
    jr nz, @+$76                                  ; $7B3E: $20 $74

    ld l, b                                       ; $7B40: $68
    ld l, c                                       ; $7B41: $69

jr_01A_7B42:
    ld [hl], e                                    ; $7B42: $73
    rst $38                                       ; $7B43: $FF
    ld h, d                                       ; $7B44: $62
    ld h, c                                       ; $7B45: $61
    ld h, e                                       ; $7B46: $63
    ld l, e                                       ; $7B47: $6B
    jr nz, jr_01A_7BBE                            ; $7B48: $20 $74

    ld l, a                                       ; $7B4A: $6F
    jr nz, jr_01A_7B8E                            ; $7B4B: $20 $41

    ld [hl], e                                    ; $7B4D: $73
    ld l, b                                       ; $7B4E: $68
    ld h, a                                       ; $7B4F: $67
    ld h, c                                       ; $7B50: $61
    ld [hl], d                                    ; $7B51: $72
    cp $61                                        ; $7B52: $FE $61
    ld [hl], e                                    ; $7B54: $73
    jr nz, jr_01A_7BCA                            ; $7B55: $20 $73

    ld l, a                                       ; $7B57: $6F
    ld l, a                                       ; $7B58: $6F
    ld l, [hl]                                    ; $7B59: $6E
    jr nz, jr_01A_7BBD                            ; $7B5A: $20 $61

    ld [hl], e                                    ; $7B5C: $73
    jr nz, jr_01A_7BA8                            ; $7B5D: $20 $49

    rst $38                                       ; $7B5F: $FF
    ld h, e                                       ; $7B60: $63

jr_01A_7B61:
    ld h, c                                       ; $7B61: $61
    ld l, [hl]                                    ; $7B62: $6E
    ld l, $20                                     ; $7B63: $2E $20
    ld c, c                                       ; $7B65: $49
    jr nz, @+$66                                  ; $7B66: $20 $64

    ld l, a                                       ; $7B68: $6F
    ld l, [hl]                                    ; $7B69: $6E
    daa                                           ; $7B6A: $27
    ld [hl], h                                    ; $7B6B: $74
    cp $74                                        ; $7B6C: $FE $74
    ld l, b                                       ; $7B6E: $68
    ld l, c                                       ; $7B6F: $69

jr_01A_7B70:
    ld l, [hl]                                    ; $7B70: $6E
    ld l, e                                       ; $7B71: $6B
    jr nz, @+$6A                                  ; $7B72: $20 $68

    ld h, l                                       ; $7B74: $65
    daa                                           ; $7B75: $27
    ld [hl], e                                    ; $7B76: $73
    rst $38                                       ; $7B77: $FF
    ld l, [hl]                                    ; $7B78: $6E
    ld l, a                                       ; $7B79: $6F
    ld [hl], h                                    ; $7B7A: $74
    ld l, c                                       ; $7B7B: $69
    ld h, e                                       ; $7B7C: $63

jr_01A_7B7D:
    ld h, l                                       ; $7B7D: $65
    ld h, h                                       ; $7B7E: $64
    jr nz, jr_01A_7BEA                            ; $7B7F: $20 $69

    ld [hl], h                                    ; $7B81: $74
    daa                                           ; $7B82: $27
    ld [hl], e                                    ; $7B83: $73
    cp $6D                                        ; $7B84: $FE $6D
    ld l, c                                       ; $7B86: $69
    ld [hl], e                                    ; $7B87: $73
    ld [hl], e                                    ; $7B88: $73
    ld l, c                                       ; $7B89: $69
    ld l, [hl]                                    ; $7B8A: $6E
    ld h, a                                       ; $7B8B: $67
    jr nz, jr_01A_7C07                            ; $7B8C: $20 $79

jr_01A_7B8E:
    ld h, l                                       ; $7B8E: $65
    ld [hl], h                                    ; $7B8F: $74
    ld l, $FE                                     ; $7B90: $2E $FE
    db $FD                                        ; $7B92: $FD

jr_01A_7B93:
    sbc d                                         ; $7B93: $9A
    ld e, b                                       ; $7B94: $58
    ld bc, $9B42                                  ; $7B95: $01 $42 $9B
    ld a, b                                       ; $7B98: $78
    ld [hl], b                                    ; $7B99: $70
    sbc a                                         ; $7B9A: $9F
    ld c, [hl]                                    ; $7B9B: $4E
    ld l, a                                       ; $7B9C: $6F
    ld [hl], h                                    ; $7B9D: $74
    jr nz, jr_01A_7C19                            ; $7B9E: $20 $79

    ld h, l                                       ; $7BA0: $65
    ld [hl], h                                    ; $7BA1: $74
    ld l, $FE                                     ; $7BA2: $2E $FE
    db $FD                                        ; $7BA4: $FD
    sbc e                                         ; $7BA5: $9B
    jr z, jr_01A_7C1D                             ; $7BA6: $28 $75

jr_01A_7BA8:
    sbc a                                         ; $7BA8: $9F
    ld c, a                                       ; $7BA9: $4F
    ld l, e                                       ; $7BAA: $6B
    ld h, c                                       ; $7BAB: $61
    ld a, c                                       ; $7BAC: $79
    inc l                                         ; $7BAD: $2C
    jr nz, jr_01A_7C1A                            ; $7BAE: $20 $6A

    ld [hl], l                                    ; $7BB0: $75
    ld [hl], e                                    ; $7BB1: $73
    ld [hl], h                                    ; $7BB2: $74
    jr nz, jr_01A_7C21                            ; $7BB3: $20 $6C

    ld h, l                                       ; $7BB5: $65
    ld [hl], h                                    ; $7BB6: $74
    rst $38                                       ; $7BB7: $FF
    ld l, l                                       ; $7BB8: $6D
    ld h, l                                       ; $7BB9: $65
    jr nz, @+$6D                                  ; $7BBA: $20 $6B

    ld l, [hl]                                    ; $7BBC: $6E

jr_01A_7BBD:
    ld l, a                                       ; $7BBD: $6F

jr_01A_7BBE:
    ld [hl], a                                    ; $7BBE: $77
    jr nz, jr_01A_7C38                            ; $7BBF: $20 $77

    ld l, b                                       ; $7BC1: $68
    ld h, l                                       ; $7BC2: $65
    ld l, [hl]                                    ; $7BC3: $6E
    cp $79                                        ; $7BC4: $FE $79
    ld l, a                                       ; $7BC6: $6F
    ld [hl], l                                    ; $7BC7: $75
    daa                                           ; $7BC8: $27
    ld [hl], d                                    ; $7BC9: $72

jr_01A_7BCA:
    ld h, l                                       ; $7BCA: $65
    jr nz, jr_01A_7C3F                            ; $7BCB: $20 $72

    ld h, l                                       ; $7BCD: $65
    ld h, c                                       ; $7BCE: $61
    ld h, h                                       ; $7BCF: $64
    ld a, c                                       ; $7BD0: $79
    rst $38                                       ; $7BD1: $FF
    ld [hl], h                                    ; $7BD2: $74
    ld l, a                                       ; $7BD3: $6F
    jr nz, jr_01A_7C48                            ; $7BD4: $20 $72

    ld h, l                                       ; $7BD6: $65
    ld [hl], h                                    ; $7BD7: $74
    ld [hl], l                                    ; $7BD8: $75
    ld [hl], d                                    ; $7BD9: $72
    ld l, [hl]                                    ; $7BDA: $6E
    jr nz, jr_01A_7C46                            ; $7BDB: $20 $69

    ld [hl], h                                    ; $7BDD: $74
    ld l, $FE                                     ; $7BDE: $2E $FE
    db $FD                                        ; $7BE0: $FD
    sbc d                                         ; $7BE1: $9A
    ld e, b                                       ; $7BE2: $58
    ld bc, $9B42                                  ; $7BE3: $01 $42 $9B
    jr z, jr_01A_7C5D                             ; $7BE6: $28 $75

    sbc a                                         ; $7BE8: $9F
    ld d, e                                       ; $7BE9: $53

jr_01A_7BEA:
    ld [hl], h                                    ; $7BEA: $74
    ld [hl], l                                    ; $7BEB: $75
    ld [hl], b                                    ; $7BEC: $70
    ld l, c                                       ; $7BED: $69
    ld h, h                                       ; $7BEE: $64
    jr nz, jr_01A_7C54                            ; $7BEF: $20 $63

    ld l, h                                       ; $7BF1: $6C
    ld l, a                                       ; $7BF2: $6F
    ld h, e                                       ; $7BF3: $63
    ld l, e                                       ; $7BF4: $6B
    ld hl, $45FE                                  ; $7BF5: $21 $FE $45
    halt                                          ; $7BF8: $76
    ld h, l                                       ; $7BF9: $65
    ld [hl], d                                    ; $7BFA: $72
    ld a, c                                       ; $7BFB: $79
    jr nz, jr_01A_7C72                            ; $7BFC: $20 $74

    ld l, c                                       ; $7BFE: $69
    ld l, l                                       ; $7BFF: $6D
    ld h, l                                       ; $7C00: $65
    jr nz, jr_01A_7C4C                            ; $7C01: $20 $49

    rst $38                                       ; $7C03: $FF
    ld [hl], h                                    ; $7C04: $74
    ld [hl], d                                    ; $7C05: $72
    ld a, c                                       ; $7C06: $79

jr_01A_7C07:
    jr nz, jr_01A_7C7D                            ; $7C07: $20 $74

    ld l, a                                       ; $7C09: $6F
    jr nz, jr_01A_7C72                            ; $7C0A: $20 $66

    ld l, c                                       ; $7C0C: $69
    ld a, b                                       ; $7C0D: $78
    jr nz, jr_01A_7C79                            ; $7C0E: $20 $69

    ld [hl], h                                    ; $7C10: $74
    inc l                                         ; $7C11: $2C
    cp $69                                        ; $7C12: $FE $69
    ld [hl], h                                    ; $7C14: $74
    jr nz, jr_01A_7C81                            ; $7C15: $20 $6A

    ld [hl], l                                    ; $7C17: $75
    ld [hl], e                                    ; $7C18: $73

jr_01A_7C19:
    ld [hl], h                                    ; $7C19: $74

jr_01A_7C1A:
    jr nz, jr_01A_7C8F                            ; $7C1A: $20 $73

    ld [hl], h                                    ; $7C1C: $74

jr_01A_7C1D:
    ld l, a                                       ; $7C1D: $6F
    ld [hl], b                                    ; $7C1E: $70
    ld [hl], e                                    ; $7C1F: $73
    rst $38                                       ; $7C20: $FF

jr_01A_7C21:
    ld h, c                                       ; $7C21: $61
    ld [hl], h                                    ; $7C22: $74
    jr nz, jr_01A_7C56                            ; $7C23: $20 $31

    ld sp, $303A                                  ; $7C25: $31 $3A $30
    dec [hl]                                      ; $7C28: $35
    ld hl, $FE21                                  ; $7C29: $21 $21 $FE
    ld b, c                                       ; $7C2C: $41
    ld [hl], d                                    ; $7C2D: $72
    ld [hl], d                                    ; $7C2E: $72
    ld [hl], d                                    ; $7C2F: $72
    ld h, a                                       ; $7C30: $67
    ld l, b                                       ; $7C31: $68
    ld hl, $FDFE                                  ; $7C32: $21 $FE $FD
    sbc d                                         ; $7C35: $9A
    ld e, b                                       ; $7C36: $58
    ld [bc], a                                    ; $7C37: $02

jr_01A_7C38:
    ld b, d                                       ; $7C38: $42
    nop                                           ; $7C39: $00
    nop                                           ; $7C3A: $00
    nop                                           ; $7C3B: $00
    nop                                           ; $7C3C: $00
    nop                                           ; $7C3D: $00
    nop                                           ; $7C3E: $00

jr_01A_7C3F:
    nop                                           ; $7C3F: $00
    nop                                           ; $7C40: $00
    nop                                           ; $7C41: $00
    nop                                           ; $7C42: $00
    nop                                           ; $7C43: $00
    nop                                           ; $7C44: $00
    nop                                           ; $7C45: $00

jr_01A_7C46:
    nop                                           ; $7C46: $00
    nop                                           ; $7C47: $00

jr_01A_7C48:
    nop                                           ; $7C48: $00
    nop                                           ; $7C49: $00
    nop                                           ; $7C4A: $00
    nop                                           ; $7C4B: $00

jr_01A_7C4C:
    nop                                           ; $7C4C: $00
    nop                                           ; $7C4D: $00
    nop                                           ; $7C4E: $00
    nop                                           ; $7C4F: $00
    nop                                           ; $7C50: $00
    nop                                           ; $7C51: $00
    nop                                           ; $7C52: $00
    nop                                           ; $7C53: $00

jr_01A_7C54:
    nop                                           ; $7C54: $00
    nop                                           ; $7C55: $00

jr_01A_7C56:
    nop                                           ; $7C56: $00
    nop                                           ; $7C57: $00
    nop                                           ; $7C58: $00
    nop                                           ; $7C59: $00
    nop                                           ; $7C5A: $00
    nop                                           ; $7C5B: $00
    nop                                           ; $7C5C: $00

jr_01A_7C5D:
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

jr_01A_7C72:
    nop                                           ; $7C72: $00
    nop                                           ; $7C73: $00
    nop                                           ; $7C74: $00
    nop                                           ; $7C75: $00
    nop                                           ; $7C76: $00
    nop                                           ; $7C77: $00
    nop                                           ; $7C78: $00

jr_01A_7C79:
    nop                                           ; $7C79: $00
    nop                                           ; $7C7A: $00
    nop                                           ; $7C7B: $00
    nop                                           ; $7C7C: $00

jr_01A_7C7D:
    nop                                           ; $7C7D: $00
    nop                                           ; $7C7E: $00
    nop                                           ; $7C7F: $00
    nop                                           ; $7C80: $00

jr_01A_7C81:
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

jr_01A_7C8F:
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
