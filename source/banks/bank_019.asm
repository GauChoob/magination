SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    rlca                                          ; $4000: $07
    nop                                           ; $4001: $00
    ld l, e                                       ; $4002: $6B
    ld c, d                                       ; $4003: $4A
    add hl, bc                                    ; $4004: $09
    nop                                           ; $4005: $00
    db $20, $CD                                   ; $4006: $20 $CD
    ld c, a                                       ; $4008: $4F
    ld l, [hl]                                    ; $4009: $6E
    rrca                                          ; $400A: $0F
    rst $38                                       ; $400B: $FF
    ld a, a                                       ; $400C: $7F
    halt                                          ; $400D: $76
    jr nz, jr_019_401F                            ; $400E: $20 $0F

    ld b, l                                       ; $4010: $45
    inc de                                        ; $4011: $13
    adc a                                         ; $4012: $8F
    ld a, c                                       ; $4013: $79
    ld [bc], a                                    ; $4014: $02
    nop                                           ; $4015: $00
    dec e                                         ; $4016: $1D
    ld a, [bc]                                    ; $4017: $0A
    ld [$1945], sp                                ; $4018: $08 $45 $19
    ld a, e                                       ; $401B: $7B
    ld b, c                                       ; $401C: $41
    rlca                                          ; $401D: $07
    nop                                           ; $401E: $00

jr_019_401F:
    ld l, e                                       ; $401F: $6B
    ld c, d                                       ; $4020: $4A
    add hl, bc                                    ; $4021: $09
    nop                                           ; $4022: $00
    db $20, $CD                                   ; $4023: $20 $CD

jr_019_4025:
    ld c, a                                       ; $4025: $4F
    ld l, [hl]                                    ; $4026: $6E
    rrca                                          ; $4027: $0F
    rst $38                                       ; $4028: $FF
    ld a, a                                       ; $4029: $7F
    halt                                          ; $402A: $76
    jr nz, @+$11                                  ; $402B: $20 $0F

    ld b, l                                       ; $402D: $45
    inc de                                        ; $402E: $13
    rst $38                                       ; $402F: $FF
    ld a, c                                       ; $4030: $79
    ld [bc], a                                    ; $4031: $02
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    jr nc, jr_019_4025                            ; $4036: $30 $ED

    ld d, [hl]                                    ; $4038: $56
    daa                                           ; $4039: $27
    ld b, a                                       ; $403A: $47
    ld [$5419], sp                                ; $403B: $08 $19 $54
    ld b, b                                       ; $403E: $40
    add hl, de                                    ; $403F: $19
    ld l, c                                       ; $4040: $69
    ld b, b                                       ; $4041: $40
    add hl, de                                    ; $4042: $19
    ld a, [hl]                                    ; $4043: $7E
    ld b, b                                       ; $4044: $40
    add hl, de                                    ; $4045: $19
    sbc e                                         ; $4046: $9B
    ld b, b                                       ; $4047: $40
    add hl, de                                    ; $4048: $19
    xor c                                         ; $4049: $A9
    ld b, b                                       ; $404A: $40
    add hl, de                                    ; $404B: $19
    cp [hl]                                       ; $404C: $BE
    ld b, b                                       ; $404D: $40
    add hl, de                                    ; $404E: $19
    db $D3                                        ; $404F: $D3
    ld b, b                                       ; $4050: $40
    add hl, de                                    ; $4051: $19
    add sp, $40                                   ; $4052: $E8 $40
    dec h                                         ; $4054: $25
    dec c                                         ; $4055: $0D
    ld l, h                                       ; $4056: $6C
    ld a, [bc]                                    ; $4057: $0A
    ld c, h                                       ; $4058: $4C
    inc hl                                        ; $4059: $23
    ld b, b                                       ; $405A: $40
    ld l, $09                                     ; $405B: $2E $09
    ld hl, $1209                                  ; $405D: $21 $09 $12
    ld bc, $2E2B                                  ; $4060: $01 $2B $2E
    add hl, bc                                    ; $4063: $09
    dec bc                                        ; $4064: $0B
    add hl, bc                                    ; $4065: $09
    ld de, $2701                                  ; $4066: $11 $01 $27
    dec h                                         ; $4069: $25
    dec c                                         ; $406A: $0D
    ld l, h                                       ; $406B: $6C
    dec bc                                        ; $406C: $0B
    ld c, h                                       ; $406D: $4C
    inc hl                                        ; $406E: $23
    ld b, b                                       ; $406F: $40
    ld l, $09                                     ; $4070: $2E $09
    ld d, b                                       ; $4072: $50
    ld a, [bc]                                    ; $4073: $0A
    inc d                                         ; $4074: $14
    ld bc, $2E2B                                  ; $4075: $01 $2B $2E
    add hl, bc                                    ; $4078: $09
    dec bc                                        ; $4079: $0B
    add hl, bc                                    ; $407A: $09
    ld [de], a                                    ; $407B: $12
    ld bc, $2527                                  ; $407C: $01 $27 $25
    dec c                                         ; $407F: $0D
    ld l, h                                       ; $4080: $6C
    ld a, [bc]                                    ; $4081: $0A
    ld c, h                                       ; $4082: $4C
    inc hl                                        ; $4083: $23
    ld b, b                                       ; $4084: $40
    ld l, $09                                     ; $4085: $2E $09
    add hl, sp                                    ; $4087: $39
    add hl, bc                                    ; $4088: $09
    ld [de], a                                    ; $4089: $12
    ld bc, $2E2B                                  ; $408A: $01 $2B $2E
    add hl, bc                                    ; $408D: $09
    ld d, d                                       ; $408E: $52
    rlca                                          ; $408F: $07
    rrca                                          ; $4090: $0F
    ld bc, $2B2B                                  ; $4091: $01 $2B $2B
    ld l, $09                                     ; $4094: $2E $09
    ld hl, $0C06                                  ; $4096: $21 $06 $0C
    ld bc, $2527                                  ; $4099: $01 $27 $25
    dec c                                         ; $409C: $0D
    ld l, h                                       ; $409D: $6C
    add hl, bc                                    ; $409E: $09
    ld c, h                                       ; $409F: $4C
    inc hl                                        ; $40A0: $23
    ld b, b                                       ; $40A1: $40
    ld l, $09                                     ; $40A2: $2E $09
    ld c, d                                       ; $40A4: $4A
    ld a, [bc]                                    ; $40A5: $0A
    inc d                                         ; $40A6: $14
    ld bc, $2527                                  ; $40A7: $01 $27 $25
    dec c                                         ; $40AA: $0D
    ld l, h                                       ; $40AB: $6C
    ld a, [bc]                                    ; $40AC: $0A
    ld c, h                                       ; $40AD: $4C
    inc hl                                        ; $40AE: $23
    ld b, b                                       ; $40AF: $40
    ld l, $09                                     ; $40B0: $2E $09
    dec bc                                        ; $40B2: $0B
    add hl, bc                                    ; $40B3: $09
    inc d                                         ; $40B4: $14
    ld bc, $2E2B                                  ; $40B5: $01 $2B $2E
    add hl, bc                                    ; $40B8: $09
    add hl, sp                                    ; $40B9: $39
    ld [$0112], sp                                ; $40BA: $08 $12 $01
    daa                                           ; $40BD: $27
    dec h                                         ; $40BE: $25
    dec c                                         ; $40BF: $0D
    ld l, h                                       ; $40C0: $6C
    ld a, [bc]                                    ; $40C1: $0A
    ld c, h                                       ; $40C2: $4C
    inc hl                                        ; $40C3: $23
    ld b, b                                       ; $40C4: $40
    ld l, $09                                     ; $40C5: $2E $09
    rlca                                          ; $40C7: $07
    add hl, bc                                    ; $40C8: $09
    ld [de], a                                    ; $40C9: $12
    ld bc, $2E2B                                  ; $40CA: $01 $2B $2E
    add hl, bc                                    ; $40CD: $09
    dec e                                         ; $40CE: $1D
    ld [$0111], sp                                ; $40CF: $08 $11 $01
    daa                                           ; $40D2: $27
    dec h                                         ; $40D3: $25
    dec c                                         ; $40D4: $0D
    ld l, h                                       ; $40D5: $6C
    ld a, [bc]                                    ; $40D6: $0A
    ld c, h                                       ; $40D7: $4C
    inc hl                                        ; $40D8: $23
    ld b, b                                       ; $40D9: $40
    ld l, $09                                     ; $40DA: $2E $09
    ld d, d                                       ; $40DC: $52
    add hl, bc                                    ; $40DD: $09
    ld [de], a                                    ; $40DE: $12
    ld bc, $2E2B                                  ; $40DF: $01 $2B $2E
    add hl, bc                                    ; $40E2: $09
    rlca                                          ; $40E3: $07
    rlca                                          ; $40E4: $07
    rrca                                          ; $40E5: $0F
    ld bc, $2527                                  ; $40E6: $01 $27 $25
    dec c                                         ; $40E9: $0D
    ld l, h                                       ; $40EA: $6C

jr_019_40EB:
    ld a, [bc]                                    ; $40EB: $0A
    ld c, h                                       ; $40EC: $4C
    inc hl                                        ; $40ED: $23
    ld b, b                                       ; $40EE: $40
    ld l, $09                                     ; $40EF: $2E $09
    ld c, d                                       ; $40F1: $4A
    ld a, [bc]                                    ; $40F2: $0A
    dec d                                         ; $40F3: $15
    ld bc, $2E2B                                  ; $40F4: $01 $2B $2E
    add hl, bc                                    ; $40F7: $09
    rlca                                          ; $40F8: $07
    ld [$0110], sp                                ; $40F9: $08 $10 $01
    daa                                           ; $40FC: $27
    sub e                                         ; $40FD: $93
    ld h, l                                       ; $40FE: $65
    db $EC                                        ; $40FF: $EC
    ld b, h                                       ; $4100: $44
    ld c, a                                       ; $4101: $4F
    ld h, [hl]                                    ; $4102: $66
    ret nz                                        ; $4103: $C0

    ld e, h                                       ; $4104: $5C
    ld hl, $4564                                  ; $4105: $21 $64 $45
    ld b, [hl]                                    ; $4108: $46
    dec b                                         ; $4109: $05
    nop                                           ; $410A: $00
    add c                                         ; $410B: $81
    ld e, l                                       ; $410C: $5D
    dec b                                         ; $410D: $05
    dec b                                         ; $410E: $05

jr_019_410F:
    ld l, c                                       ; $410F: $69
    ret nc                                        ; $4110: $D0

    nop                                           ; $4111: $00
    jr nz, jr_019_410F                            ; $4112: $20 $FB

    ld d, b                                       ; $4114: $50
    ld [hl+], a                                   ; $4115: $22
    dec b                                         ; $4116: $05
    ld b, b                                       ; $4117: $40
    dec bc                                        ; $4118: $0B
    nop                                           ; $4119: $00
    dec b                                         ; $411A: $05
    jr nz, jr_019_40EB                            ; $411B: $20 $CE

    ld h, e                                       ; $411D: $63
    ld a, [bc]                                    ; $411E: $0A
    add hl, bc                                    ; $411F: $09
    cp [hl]                                       ; $4120: $BE
    ret nc                                        ; $4121: $D0

    nop                                           ; $4122: $00
    ld [hl+], a                                   ; $4123: $22
    jp c, $1940                                   ; $4124: $DA $40 $19

    ld sp, $0540                                  ; $4127: $31 $40 $05
    rra                                           ; $412A: $1F
    adc $63                                       ; $412B: $CE $63
    ld a, [bc]                                    ; $412D: $0A
    add hl, bc                                    ; $412E: $09
    cp [hl]                                       ; $412F: $BE
    ret nc                                        ; $4130: $D0

    nop                                           ; $4131: $00
    ld [hl+], a                                   ; $4132: $22
    jp c, $1940                                   ; $4133: $DA $40 $19

    ld sp, $0B40                                  ; $4136: $31 $40 $0B
    jr nz, @+$0D                                  ; $4139: $20 $0B

    rra                                           ; $413B: $1F
    ld l, e                                       ; $413C: $6B
    inc [hl]                                      ; $413D: $34
    dec c                                         ; $413E: $0D
    jr nc, jr_019_41AB                            ; $413F: $30 $6A

    nop                                           ; $4141: $00
    add b                                         ; $4142: $80
    nop                                           ; $4143: $00
    ld sp, $5119                                  ; $4144: $31 $19 $51
    ld b, c                                       ; $4147: $41
    ld [hl+], a                                   ; $4148: $22
    adc $40                                       ; $4149: $CE $40
    nop                                           ; $414B: $00
    add d                                         ; $414C: $82
    inc h                                         ; $414D: $24
    ld d, b                                       ; $414E: $50
    sub h                                         ; $414F: $94
    ld b, d                                       ; $4150: $42
    sub e                                         ; $4151: $93
    ld l, d                                       ; $4152: $6A
    or e                                          ; $4153: $B3
    ld h, e                                       ; $4154: $63
    ld a, h                                       ; $4155: $7C
    cp h                                          ; $4156: $BC
    ld d, b                                       ; $4157: $50
    ld a, h                                       ; $4158: $7C
    ld h, [hl]                                    ; $4159: $66
    ret nz                                        ; $415A: $C0

    ld e, h                                       ; $415B: $5C
    ld hl, $0646                                  ; $415C: $21 $46 $06
    ld b, c                                       ; $415F: $41
    ld [bc], a                                    ; $4160: $02
    dec e                                         ; $4161: $1D
    nop                                           ; $4162: $00
    ld [$450A], sp                                ; $4163: $08 $0A $45
    add hl, de                                    ; $4166: $19
    db $FD                                        ; $4167: $FD
    ld b, b                                       ; $4168: $40

jr_019_4169:
    ld [bc], a                                    ; $4169: $02
    nop                                           ; $416A: $00
    jr jr_019_418C                                ; $416B: $18 $1F

    rlca                                          ; $416D: $07
    ld b, l                                       ; $416E: $45
    add hl, de                                    ; $416F: $19
    ld [$0241], a                                 ; $4170: $EA $41 $02
    inc c                                         ; $4173: $0C
    nop                                           ; $4174: $00
    ld sp, $4500                                  ; $4175: $31 $00 $45
    add hl, de                                    ; $4178: $19
    ld d, b                                       ; $4179: $50
    ld b, d                                       ; $417A: $42
    sub e                                         ; $417B: $93
    ld h, l                                       ; $417C: $65
    ei                                            ; $417D: $FB
    ld b, h                                       ; $417E: $44
    ld c, a                                       ; $417F: $4F

jr_019_4180:
    ld h, h                                       ; $4180: $64
    ld d, d                                       ; $4181: $52
    ld b, [hl]                                    ; $4182: $46
    ld h, [hl]                                    ; $4183: $66
    ret nz                                        ; $4184: $C0

    ld e, h                                       ; $4185: $5C
    ld hl, $0005                                  ; $4186: $21 $05 $00
    add c                                         ; $4189: $81
    ld e, l                                       ; $418A: $5D
    dec b                                         ; $418B: $05

jr_019_418C:
    dec b                                         ; $418C: $05

jr_019_418D:
    sbc e                                         ; $418D: $9B
    ret nc                                        ; $418E: $D0

    nop                                           ; $418F: $00
    jr nz, jr_019_418D                            ; $4190: $20 $FB

    ld d, b                                       ; $4192: $50
    ld [hl+], a                                   ; $4193: $22
    dec b                                         ; $4194: $05
    ld b, b                                       ; $4195: $40
    dec bc                                        ; $4196: $0B
    nop                                           ; $4197: $00
    dec b                                         ; $4198: $05
    jr nz, jr_019_4169                            ; $4199: $20 $CE

    ld h, e                                       ; $419B: $63
    ld a, [bc]                                    ; $419C: $0A
    add hl, bc                                    ; $419D: $09
    jr @-$2D                                      ; $419E: $18 $D1

    nop                                           ; $41A0: $00
    ld [hl+], a                                   ; $41A1: $22
    jp c, $1940                                   ; $41A2: $DA $40 $19

    ld sp, $0540                                  ; $41A5: $31 $40 $05
    rra                                           ; $41A8: $1F
    adc $63                                       ; $41A9: $CE $63

jr_019_41AB:
    ld a, [bc]                                    ; $41AB: $0A
    add hl, bc                                    ; $41AC: $09
    jr jr_019_4180                                ; $41AD: $18 $D1

    nop                                           ; $41AF: $00
    ld [hl+], a                                   ; $41B0: $22
    jp c, $1940                                   ; $41B1: $DA $40 $19

    ld sp, $0B40                                  ; $41B4: $31 $40 $0B
    jr nz, @+$0D                                  ; $41B7: $20 $0B

    rra                                           ; $41B9: $1F
    ld l, e                                       ; $41BA: $6B
    inc [hl]                                      ; $41BB: $34
    dec c                                         ; $41BC: $0D
    jr nc, jr_019_4229                            ; $41BD: $30 $6A

    nop                                           ; $41BF: $00
    add b                                         ; $41C0: $80
    nop                                           ; $41C1: $00
    ld sp, $CF19                                  ; $41C2: $31 $19 $CF
    ld b, c                                       ; $41C5: $41
    ld [hl+], a                                   ; $41C6: $22
    adc $40                                       ; $41C7: $CE $40
    nop                                           ; $41C9: $00
    add d                                         ; $41CA: $82
    rra                                           ; $41CB: $1F
    inc d                                         ; $41CC: $14
    sub h                                         ; $41CD: $94
    ld b, d                                       ; $41CE: $42
    sub e                                         ; $41CF: $93
    ld l, d                                       ; $41D0: $6A
    or e                                          ; $41D1: $B3
    ld h, e                                       ; $41D2: $63
    ld a, h                                       ; $41D3: $7C
    cp h                                          ; $41D4: $BC
    ld d, b                                       ; $41D5: $50
    ld a, h                                       ; $41D6: $7C
    ld b, [hl]                                    ; $41D7: $46

jr_019_41D8:
    add b                                         ; $41D8: $80
    ld b, c                                       ; $41D9: $41
    ld [bc], a                                    ; $41DA: $02
    jr jr_019_41DD                                ; $41DB: $18 $00

jr_019_41DD:
    rlca                                          ; $41DD: $07
    rra                                           ; $41DE: $1F
    ld b, l                                       ; $41DF: $45
    add hl, de                                    ; $41E0: $19
    ld a, e                                       ; $41E1: $7B
    ld b, c                                       ; $41E2: $41
    ld bc, $060D                                  ; $41E3: $01 $0D $06
    ld b, l                                       ; $41E6: $45
    dec h                                         ; $41E7: $25
    ld de, $9368                                  ; $41E8: $11 $68 $93
    ld h, l                                       ; $41EB: $65
    ld a, [bc]                                    ; $41EC: $0A
    ld b, l                                       ; $41ED: $45
    ld c, a                                       ; $41EE: $4F
    ld h, h                                       ; $41EF: $64
    ld e, a                                       ; $41F0: $5F
    ld b, [hl]                                    ; $41F1: $46
    ld h, [hl]                                    ; $41F2: $66
    ret nz                                        ; $41F3: $C0

    ld e, h                                       ; $41F4: $5C
    ld hl, $0005                                  ; $41F5: $21 $05 $00
    add c                                         ; $41F8: $81
    ld e, l                                       ; $41F9: $5D
    dec b                                         ; $41FA: $05
    dec b                                         ; $41FB: $05

jr_019_41FC:
    sub l                                         ; $41FC: $95
    pop de                                        ; $41FD: $D1
    nop                                           ; $41FE: $00
    jr nz, jr_019_41FC                            ; $41FF: $20 $FB

    ld d, b                                       ; $4201: $50
    ld [hl+], a                                   ; $4202: $22
    dec b                                         ; $4203: $05
    ld b, b                                       ; $4204: $40
    dec bc                                        ; $4205: $0B
    nop                                           ; $4206: $00
    dec b                                         ; $4207: $05
    jr nz, jr_019_41D8                            ; $4208: $20 $CE

    ld h, e                                       ; $420A: $63
    ld a, [bc]                                    ; $420B: $0A
    add hl, bc                                    ; $420C: $09
    jp c, $00D2                                   ; $420D: $DA $D2 $00

    ld [hl+], a                                   ; $4210: $22
    jp c, $1940                                   ; $4211: $DA $40 $19

    ld sp, $0540                                  ; $4214: $31 $40 $05
    rra                                           ; $4217: $1F
    adc $63                                       ; $4218: $CE $63
    ld a, [bc]                                    ; $421A: $0A
    add hl, bc                                    ; $421B: $09
    jp c, $00D2                                   ; $421C: $DA $D2 $00

    ld [hl+], a                                   ; $421F: $22
    jp c, $1940                                   ; $4220: $DA $40 $19

    ld sp, $0B40                                  ; $4223: $31 $40 $0B
    jr nz, @+$0D                                  ; $4226: $20 $0B

    rra                                           ; $4228: $1F

jr_019_4229:
    ld l, e                                       ; $4229: $6B
    inc [hl]                                      ; $422A: $34
    dec c                                         ; $422B: $0D
    jr nc, @+$6C                                  ; $422C: $30 $6A

    nop                                           ; $422E: $00
    add b                                         ; $422F: $80
    nop                                           ; $4230: $00
    ld sp, $EA19                                  ; $4231: $31 $19 $EA
    ld b, c                                       ; $4234: $41
    ld [hl+], a                                   ; $4235: $22
    adc $40                                       ; $4236: $CE $40
    nop                                           ; $4238: $00
    add d                                         ; $4239: $82
    rra                                           ; $423A: $1F
    inc d                                         ; $423B: $14
    sub h                                         ; $423C: $94
    ld b, d                                       ; $423D: $42

jr_019_423E:
    ld [bc], a                                    ; $423E: $02
    nop                                           ; $423F: $00
    inc c                                         ; $4240: $0C
    nop                                           ; $4241: $00
    ld sp, $1945                                  ; $4242: $31 $45 $19
    ld a, e                                       ; $4245: $7B
    ld b, c                                       ; $4246: $41
    ld [bc], a                                    ; $4247: $02
    dec h                                         ; $4248: $25
    jr nz, @+$33                                  ; $4249: $20 $31

    nop                                           ; $424B: $00
    ld b, l                                       ; $424C: $45
    add hl, de                                    ; $424D: $19
    cp a                                          ; $424E: $BF
    ld b, d                                       ; $424F: $42
    sub e                                         ; $4250: $93
    ld h, l                                       ; $4251: $65
    add hl, de                                    ; $4252: $19
    ld b, l                                       ; $4253: $45
    ld c, a                                       ; $4254: $4F
    ld h, h                                       ; $4255: $64
    ld l, b                                       ; $4256: $68
    ld b, [hl]                                    ; $4257: $46
    ld h, [hl]                                    ; $4258: $66
    ret nz                                        ; $4259: $C0

    ld e, h                                       ; $425A: $5C
    ld hl, $0005                                  ; $425B: $21 $05 $00
    add c                                         ; $425E: $81
    ld e, l                                       ; $425F: $5D
    dec b                                         ; $4260: $05
    dec b                                         ; $4261: $05

jr_019_4262:
    and $D0                                       ; $4262: $E6 $D0
    nop                                           ; $4264: $00
    jr nz, jr_019_4262                            ; $4265: $20 $FB

    ld d, b                                       ; $4267: $50
    ld [hl+], a                                   ; $4268: $22
    dec b                                         ; $4269: $05
    ld b, b                                       ; $426A: $40
    dec bc                                        ; $426B: $0B
    nop                                           ; $426C: $00
    dec b                                         ; $426D: $05
    jr nz, jr_019_423E                            ; $426E: $20 $CE

    ld h, e                                       ; $4270: $63
    ld a, [bc]                                    ; $4271: $0A
    add hl, bc                                    ; $4272: $09

Jump_019_4273:
    sbc a                                         ; $4273: $9F
    pop de                                        ; $4274: $D1
    nop                                           ; $4275: $00
    ld [hl+], a                                   ; $4276: $22
    jp c, $1940                                   ; $4277: $DA $40 $19

    ld sp, $0540                                  ; $427A: $31 $40 $05
    rra                                           ; $427D: $1F
    adc $63                                       ; $427E: $CE $63
    ld a, [bc]                                    ; $4280: $0A
    add hl, bc                                    ; $4281: $09
    sbc a                                         ; $4282: $9F
    pop de                                        ; $4283: $D1
    nop                                           ; $4284: $00
    ld [hl+], a                                   ; $4285: $22
    jp c, $1940                                   ; $4286: $DA $40 $19

    ld sp, $0B40                                  ; $4289: $31 $40 $0B
    jr nz, @+$0D                                  ; $428C: $20 $0B

    rra                                           ; $428E: $1F
    ld l, e                                       ; $428F: $6B
    inc [hl]                                      ; $4290: $34
    dec c                                         ; $4291: $0D
    jr nc, jr_019_42FE                            ; $4292: $30 $6A

    nop                                           ; $4294: $00
    add b                                         ; $4295: $80
    nop                                           ; $4296: $00
    ld sp, $5019                                  ; $4297: $31 $19 $50
    ld b, d                                       ; $429A: $42
    ld [hl+], a                                   ; $429B: $22
    adc $40                                       ; $429C: $CE $40
    nop                                           ; $429E: $00
    add d                                         ; $429F: $82
    rra                                           ; $42A0: $1F
    inc d                                         ; $42A1: $14
    sub h                                         ; $42A2: $94
    ld b, d                                       ; $42A3: $42
    ld [bc], a                                    ; $42A4: $02
    jr nz, @+$27                                  ; $42A5: $20 $25

    nop                                           ; $42A7: $00
    ld sp, $1945                                  ; $42A8: $31 $45 $19
    ld d, b                                       ; $42AB: $50
    ld b, d                                       ; $42AC: $42

jr_019_42AD:
    ld [bc], a                                    ; $42AD: $02
    inc l                                         ; $42AE: $2C
    nop                                           ; $42AF: $00
    ld a, [de]                                    ; $42B0: $1A
    jr jr_019_42F8                                ; $42B1: $18 $45

    add hl, de                                    ; $42B3: $19
    ld a, $43                                     ; $42B4: $3E $43
    ld [bc], a                                    ; $42B6: $02
    nop                                           ; $42B7: $00
    inc de                                        ; $42B8: $13
    add hl, hl                                    ; $42B9: $29
    ld a, [bc]                                    ; $42BA: $0A
    ld b, l                                       ; $42BB: $45
    add hl, de                                    ; $42BC: $19
    and a                                         ; $42BD: $A7
    ld b, e                                       ; $42BE: $43
    sub e                                         ; $42BF: $93
    ld h, l                                       ; $42C0: $65
    jr z, @+$47                                   ; $42C1: $28 $45

    ld c, a                                       ; $42C3: $4F
    ld h, h                                       ; $42C4: $64
    ld [hl], c                                    ; $42C5: $71
    ld b, [hl]                                    ; $42C6: $46
    ld h, [hl]                                    ; $42C7: $66
    ret nz                                        ; $42C8: $C0

    ld e, h                                       ; $42C9: $5C
    ld hl, $0005                                  ; $42CA: $21 $05 $00
    add c                                         ; $42CD: $81
    ld e, l                                       ; $42CE: $5D
    dec b                                         ; $42CF: $05
    dec b                                         ; $42D0: $05

jr_019_42D1:
    and $D0                                       ; $42D1: $E6 $D0
    nop                                           ; $42D3: $00
    jr nz, jr_019_42D1                            ; $42D4: $20 $FB

    ld d, b                                       ; $42D6: $50
    ld [hl+], a                                   ; $42D7: $22
    dec b                                         ; $42D8: $05
    ld b, b                                       ; $42D9: $40
    dec bc                                        ; $42DA: $0B
    nop                                           ; $42DB: $00
    dec b                                         ; $42DC: $05
    jr nz, jr_019_42AD                            ; $42DD: $20 $CE

    ld h, e                                       ; $42DF: $63
    ld a, [bc]                                    ; $42E0: $0A
    add hl, bc                                    ; $42E1: $09
    sbc a                                         ; $42E2: $9F
    pop de                                        ; $42E3: $D1
    nop                                           ; $42E4: $00
    ld [hl+], a                                   ; $42E5: $22
    jp c, $1940                                   ; $42E6: $DA $40 $19

    ld sp, $0540                                  ; $42E9: $31 $40 $05
    rra                                           ; $42EC: $1F
    adc $63                                       ; $42ED: $CE $63
    ld a, [bc]                                    ; $42EF: $0A
    add hl, bc                                    ; $42F0: $09
    sbc a                                         ; $42F1: $9F
    pop de                                        ; $42F2: $D1
    nop                                           ; $42F3: $00
    ld [hl+], a                                   ; $42F4: $22
    jp c, $1940                                   ; $42F5: $DA $40 $19

jr_019_42F8:
    ld sp, $0B40                                  ; $42F8: $31 $40 $0B
    jr nz, @+$0D                                  ; $42FB: $20 $0B

    rra                                           ; $42FD: $1F

jr_019_42FE:
    ld l, e                                       ; $42FE: $6B
    inc [hl]                                      ; $42FF: $34
    dec c                                         ; $4300: $0D
    jr nc, @+$6C                                  ; $4301: $30 $6A

    nop                                           ; $4303: $00
    add b                                         ; $4304: $80
    nop                                           ; $4305: $00
    ld sp, $1319                                  ; $4306: $31 $19 $13
    ld b, e                                       ; $4309: $43
    ld [hl+], a                                   ; $430A: $22
    adc $40                                       ; $430B: $CE $40
    nop                                           ; $430D: $00
    add d                                         ; $430E: $82
    rra                                           ; $430F: $1F
    inc d                                         ; $4310: $14
    sub h                                         ; $4311: $94
    ld b, d                                       ; $4312: $42
    sub e                                         ; $4313: $93
    ld l, d                                       ; $4314: $6A
    or e                                          ; $4315: $B3
    ld h, e                                       ; $4316: $63
    ld a, h                                       ; $4317: $7C
    cp h                                          ; $4318: $BC
    ld d, b                                       ; $4319: $50
    ld a, h                                       ; $431A: $7C
    ld b, [hl]                                    ; $431B: $46
    call nz, $0242                                ; $431C: $C4 $42 $02
    nop                                           ; $431F: $00
    inc l                                         ; $4320: $2C
    jr jr_019_433D                                ; $4321: $18 $1A

    ld b, l                                       ; $4323: $45
    add hl, de                                    ; $4324: $19
    cp a                                          ; $4325: $BF
    ld b, d                                       ; $4326: $42
    ld bc, $020D                                  ; $4327: $01 $0D $02
    ld b, l                                       ; $432A: $45
    dec h                                         ; $432B: $25
    sbc $69                                       ; $432C: $DE $69
    and h                                         ; $432E: $A4

jr_019_432F:
    daa                                           ; $432F: $27
    and e                                         ; $4330: $A3
    inc b                                         ; $4331: $04
    nop                                           ; $4332: $00
    ld bc, $D0CD                                  ; $4333: $01 $CD $D0
    and h                                         ; $4336: $A4

jr_019_4337:
    daa                                           ; $4337: $27
    and e                                         ; $4338: $A3
    ld [$0100], sp                                ; $4339: $08 $00 $01
    xor h                                         ; $433C: $AC

jr_019_433D:
    call nc, Call_019_6593                        ; $433D: $D4 $93 $65
    scf                                           ; $4340: $37
    ld b, l                                       ; $4341: $45
    ld c, a                                       ; $4342: $4F
    ld h, h                                       ; $4343: $64
    ld a, [hl]                                    ; $4344: $7E
    ld b, [hl]                                    ; $4345: $46

jr_019_4346:
    ld l, c                                       ; $4346: $69
    add a                                         ; $4347: $87
    ld b, [hl]                                    ; $4348: $46
    ld h, [hl]                                    ; $4349: $66
    ret nz                                        ; $434A: $C0

    ld e, h                                       ; $434B: $5C
    ld hl, $0005                                  ; $434C: $21 $05 $00
    add c                                         ; $434F: $81
    ld e, l                                       ; $4350: $5D
    dec b                                         ; $4351: $05
    dec b                                         ; $4352: $05

jr_019_4353:
    sbc e                                         ; $4353: $9B
    ret nc                                        ; $4354: $D0

    nop                                           ; $4355: $00
    jr nz, jr_019_4353                            ; $4356: $20 $FB

    ld d, b                                       ; $4358: $50
    ld [hl+], a                                   ; $4359: $22
    dec b                                         ; $435A: $05
    ld b, b                                       ; $435B: $40
    dec bc                                        ; $435C: $0B
    nop                                           ; $435D: $00
    dec b                                         ; $435E: $05
    jr nz, jr_019_432F                            ; $435F: $20 $CE

    ld h, e                                       ; $4361: $63
    ld a, [bc]                                    ; $4362: $0A
    add hl, bc                                    ; $4363: $09
    jr jr_019_4337                                ; $4364: $18 $D1

    nop                                           ; $4366: $00
    ld [hl+], a                                   ; $4367: $22
    jp c, $1940                                   ; $4368: $DA $40 $19

    ld sp, $0540                                  ; $436B: $31 $40 $05
    rra                                           ; $436E: $1F
    adc $63                                       ; $436F: $CE $63
    ld a, [bc]                                    ; $4371: $0A
    add hl, bc                                    ; $4372: $09
    jr jr_019_4346                                ; $4373: $18 $D1

    nop                                           ; $4375: $00
    ld [hl+], a                                   ; $4376: $22
    jp c, $1940                                   ; $4377: $DA $40 $19

    ld sp, $0B40                                  ; $437A: $31 $40 $0B
    jr nz, @+$0D                                  ; $437D: $20 $0B

    rra                                           ; $437F: $1F
    ld l, e                                       ; $4380: $6B
    inc [hl]                                      ; $4381: $34
    dec c                                         ; $4382: $0D
    jr nc, @+$6C                                  ; $4383: $30 $6A

    nop                                           ; $4385: $00
    add b                                         ; $4386: $80
    nop                                           ; $4387: $00
    ld sp, $3E19                                  ; $4388: $31 $19 $3E
    ld b, e                                       ; $438B: $43
    ld [hl+], a                                   ; $438C: $22
    adc $40                                       ; $438D: $CE $40
    nop                                           ; $438F: $00
    add d                                         ; $4390: $82
    rra                                           ; $4391: $1F
    inc d                                         ; $4392: $14
    sub h                                         ; $4393: $94
    ld b, d                                       ; $4394: $42

jr_019_4395:
    ld [bc], a                                    ; $4395: $02
    inc de                                        ; $4396: $13
    nop                                           ; $4397: $00
    ld a, [bc]                                    ; $4398: $0A
    add hl, hl                                    ; $4399: $29
    ld b, l                                       ; $439A: $45
    add hl, de                                    ; $439B: $19
    cp a                                          ; $439C: $BF
    ld b, d                                       ; $439D: $42
    ld [bc], a                                    ; $439E: $02
    inc de                                        ; $439F: $13
    nop                                           ; $43A0: $00
    add hl, hl                                    ; $43A1: $29
    ld [$1945], sp                                ; $43A2: $08 $45 $19
    ld [hl], e                                    ; $43A5: $73
    ld b, h                                       ; $43A6: $44
    sub e                                         ; $43A7: $93
    ld h, l                                       ; $43A8: $65
    ld b, [hl]                                    ; $43A9: $46
    ld b, l                                       ; $43AA: $45
    ld c, a                                       ; $43AB: $4F
    ld h, h                                       ; $43AC: $64
    sub b                                         ; $43AD: $90
    ld b, [hl]                                    ; $43AE: $46
    ld h, [hl]                                    ; $43AF: $66
    ret nz                                        ; $43B0: $C0

    ld e, h                                       ; $43B1: $5C
    ld hl, $0005                                  ; $43B2: $21 $05 $00
    add c                                         ; $43B5: $81
    ld e, l                                       ; $43B6: $5D
    dec b                                         ; $43B7: $05
    dec b                                         ; $43B8: $05

jr_019_43B9:
    ld l, c                                       ; $43B9: $69
    ret nc                                        ; $43BA: $D0

    nop                                           ; $43BB: $00
    jr nz, jr_019_43B9                            ; $43BC: $20 $FB

    ld d, b                                       ; $43BE: $50
    ld [hl+], a                                   ; $43BF: $22
    dec b                                         ; $43C0: $05
    ld b, b                                       ; $43C1: $40
    dec bc                                        ; $43C2: $0B
    nop                                           ; $43C3: $00
    dec b                                         ; $43C4: $05
    jr nz, jr_019_4395                            ; $43C5: $20 $CE

    ld h, e                                       ; $43C7: $63
    ld a, [bc]                                    ; $43C8: $0A
    add hl, bc                                    ; $43C9: $09
    cp [hl]                                       ; $43CA: $BE
    ret nc                                        ; $43CB: $D0

    nop                                           ; $43CC: $00
    ld [hl+], a                                   ; $43CD: $22
    jp c, $1940                                   ; $43CE: $DA $40 $19

    ld sp, $0540                                  ; $43D1: $31 $40 $05
    rra                                           ; $43D4: $1F
    adc $63                                       ; $43D5: $CE $63
    ld a, [bc]                                    ; $43D7: $0A
    add hl, bc                                    ; $43D8: $09
    cp [hl]                                       ; $43D9: $BE
    ret nc                                        ; $43DA: $D0

    nop                                           ; $43DB: $00
    ld [hl+], a                                   ; $43DC: $22
    jp c, $1940                                   ; $43DD: $DA $40 $19

    ld sp, $0B40                                  ; $43E0: $31 $40 $0B
    jr nz, @+$0D                                  ; $43E3: $20 $0B

    rra                                           ; $43E5: $1F
    ld l, e                                       ; $43E6: $6B
    inc [hl]                                      ; $43E7: $34
    dec c                                         ; $43E8: $0D
    jr nc, @+$6C                                  ; $43E9: $30 $6A

    nop                                           ; $43EB: $00
    add b                                         ; $43EC: $80
    nop                                           ; $43ED: $00
    ld sp, $A719                                  ; $43EE: $31 $19 $A7
    ld b, e                                       ; $43F1: $43
    ld [hl+], a                                   ; $43F2: $22
    adc $40                                       ; $43F3: $CE $40
    nop                                           ; $43F5: $00
    add d                                         ; $43F6: $82
    rra                                           ; $43F7: $1F
    inc d                                         ; $43F8: $14
    sub h                                         ; $43F9: $94
    ld b, d                                       ; $43FA: $42

jr_019_43FB:
    ld [bc], a                                    ; $43FB: $02
    nop                                           ; $43FC: $00
    inc de                                        ; $43FD: $13
    ld a, [bc]                                    ; $43FE: $0A
    ld a, [hl+]                                   ; $43FF: $2A
    ld b, l                                       ; $4400: $45
    add hl, de                                    ; $4401: $19
    and a                                         ; $4402: $A7
    ld b, e                                       ; $4403: $43
    ld [bc], a                                    ; $4404: $02
    ld c, a                                       ; $4405: $4F
    nop                                           ; $4406: $00
    ld a, [bc]                                    ; $4407: $0A
    ld [$1945], sp                                ; $4408: $08 $45 $19
    ld [hl], e                                    ; $440B: $73
    ld b, h                                       ; $440C: $44
    sub e                                         ; $440D: $93
    ld h, l                                       ; $440E: $65
    ld d, l                                       ; $440F: $55
    ld b, l                                       ; $4410: $45
    ld c, a                                       ; $4411: $4F
    ld h, h                                       ; $4412: $64
    sbc c                                         ; $4413: $99
    ld b, [hl]                                    ; $4414: $46
    ld h, [hl]                                    ; $4415: $66
    ret nz                                        ; $4416: $C0

    ld e, h                                       ; $4417: $5C
    ld hl, $0005                                  ; $4418: $21 $05 $00
    add c                                         ; $441B: $81
    ld e, l                                       ; $441C: $5D
    dec b                                         ; $441D: $05
    dec b                                         ; $441E: $05

jr_019_441F:
    sub l                                         ; $441F: $95
    pop de                                        ; $4420: $D1
    nop                                           ; $4421: $00
    jr nz, jr_019_441F                            ; $4422: $20 $FB

    ld d, b                                       ; $4424: $50
    ld [hl+], a                                   ; $4425: $22
    dec b                                         ; $4426: $05
    ld b, b                                       ; $4427: $40
    dec bc                                        ; $4428: $0B
    nop                                           ; $4429: $00
    dec b                                         ; $442A: $05
    jr nz, jr_019_43FB                            ; $442B: $20 $CE

    ld h, e                                       ; $442D: $63
    ld a, [bc]                                    ; $442E: $0A
    add hl, bc                                    ; $442F: $09
    jp c, $00D2                                   ; $4430: $DA $D2 $00

    ld [hl+], a                                   ; $4433: $22
    jp c, $1940                                   ; $4434: $DA $40 $19

    ld sp, $0540                                  ; $4437: $31 $40 $05
    rra                                           ; $443A: $1F
    adc $63                                       ; $443B: $CE $63
    ld a, [bc]                                    ; $443D: $0A
    add hl, bc                                    ; $443E: $09
    jp c, $00D2                                   ; $443F: $DA $D2 $00

    ld [hl+], a                                   ; $4442: $22
    jp c, $1940                                   ; $4443: $DA $40 $19

    ld sp, $0B40                                  ; $4446: $31 $40 $0B
    jr nz, @+$0D                                  ; $4449: $20 $0B

    rra                                           ; $444B: $1F
    ld l, e                                       ; $444C: $6B
    inc [hl]                                      ; $444D: $34
    dec c                                         ; $444E: $0D
    jr nc, @+$6C                                  ; $444F: $30 $6A

    nop                                           ; $4451: $00
    add b                                         ; $4452: $80
    nop                                           ; $4453: $00
    ld sp, $0D19                                  ; $4454: $31 $19 $0D
    ld b, h                                       ; $4457: $44
    ld [hl+], a                                   ; $4458: $22
    adc $40                                       ; $4459: $CE $40
    nop                                           ; $445B: $00
    add d                                         ; $445C: $82
    rra                                           ; $445D: $1F
    inc d                                         ; $445E: $14
    sub h                                         ; $445F: $94
    ld b, d                                       ; $4460: $42

jr_019_4461:
    ld [bc], a                                    ; $4461: $02
    nop                                           ; $4462: $00
    inc de                                        ; $4463: $13
    ld [$4529], sp                                ; $4464: $08 $29 $45
    add hl, de                                    ; $4467: $19
    and a                                         ; $4468: $A7
    ld b, e                                       ; $4469: $43
    ld [bc], a                                    ; $446A: $02
    inc [hl]                                      ; $446B: $34
    rlca                                          ; $446C: $07
    inc de                                        ; $446D: $13
    nop                                           ; $446E: $00
    ld b, l                                       ; $446F: $45
    add hl, de                                    ; $4470: $19
    reti                                          ; $4471: $D9


    ld b, h                                       ; $4472: $44
    sub e                                         ; $4473: $93
    ld h, l                                       ; $4474: $65
    ld h, h                                       ; $4475: $64
    ld b, l                                       ; $4476: $45
    ld c, a                                       ; $4477: $4F
    ld h, h                                       ; $4478: $64
    and d                                         ; $4479: $A2
    ld b, [hl]                                    ; $447A: $46
    ld h, [hl]                                    ; $447B: $66
    ret nz                                        ; $447C: $C0

    ld e, h                                       ; $447D: $5C
    ld hl, $0005                                  ; $447E: $21 $05 $00
    add c                                         ; $4481: $81
    ld e, l                                       ; $4482: $5D
    ld [$E808], sp                                ; $4483: $08 $08 $E8
    pop de                                        ; $4486: $D1
    nop                                           ; $4487: $00
    jr nz, @-$03                                  ; $4488: $20 $FB

    ld d, b                                       ; $448A: $50
    ld [hl+], a                                   ; $448B: $22
    dec b                                         ; $448C: $05
    ld b, b                                       ; $448D: $40
    dec bc                                        ; $448E: $0B
    nop                                           ; $448F: $00
    dec b                                         ; $4490: $05
    jr nz, jr_019_4461                            ; $4491: $20 $CE

    ld h, e                                       ; $4493: $63
    ld a, [bc]                                    ; $4494: $0A
    add hl, bc                                    ; $4495: $09
    ld h, $D2                                     ; $4496: $26 $D2
    nop                                           ; $4498: $00
    ld [hl+], a                                   ; $4499: $22
    jp c, $1940                                   ; $449A: $DA $40 $19

    ld sp, $0540                                  ; $449D: $31 $40 $05
    rra                                           ; $44A0: $1F
    adc $63                                       ; $44A1: $CE $63
    ld a, [bc]                                    ; $44A3: $0A
    add hl, bc                                    ; $44A4: $09
    ld h, $D2                                     ; $44A5: $26 $D2
    nop                                           ; $44A7: $00
    ld [hl+], a                                   ; $44A8: $22
    jp c, $1940                                   ; $44A9: $DA $40 $19

    ld sp, $0B40                                  ; $44AC: $31 $40 $0B
    jr nz, @+$0D                                  ; $44AF: $20 $0B

    rra                                           ; $44B1: $1F
    ld l, e                                       ; $44B2: $6B
    inc [hl]                                      ; $44B3: $34
    dec c                                         ; $44B4: $0D
    jr nc, @+$6C                                  ; $44B5: $30 $6A

    nop                                           ; $44B7: $00
    add b                                         ; $44B8: $80
    nop                                           ; $44B9: $00
    ld sp, $7319                                  ; $44BA: $31 $19 $73
    ld b, h                                       ; $44BD: $44
    ld [hl+], a                                   ; $44BE: $22
    adc $40                                       ; $44BF: $CE $40
    nop                                           ; $44C1: $00
    add d                                         ; $44C2: $82
    rra                                           ; $44C3: $1F
    inc d                                         ; $44C4: $14
    sub h                                         ; $44C5: $94
    ld b, d                                       ; $44C6: $42

jr_019_44C7:
    ld [bc], a                                    ; $44C7: $02
    rlca                                          ; $44C8: $07
    inc [hl]                                      ; $44C9: $34
    nop                                           ; $44CA: $00
    inc de                                        ; $44CB: $13
    ld b, l                                       ; $44CC: $45
    add hl, de                                    ; $44CD: $19
    ld [hl], e                                    ; $44CE: $73
    ld b, h                                       ; $44CF: $44
    ld [bc], a                                    ; $44D0: $02
    rlca                                          ; $44D1: $07
    inc c                                         ; $44D2: $0C
    ld sp, $4500                                  ; $44D3: $31 $00 $45
    add hl, de                                    ; $44D6: $19
    ld [hl], b                                    ; $44D7: $70
    ld b, a                                       ; $44D8: $47
    sub e                                         ; $44D9: $93
    ld h, l                                       ; $44DA: $65
    ld [hl], e                                    ; $44DB: $73
    ld b, l                                       ; $44DC: $45
    ld c, a                                       ; $44DD: $4F
    ld h, h                                       ; $44DE: $64
    xor e                                         ; $44DF: $AB
    ld b, [hl]                                    ; $44E0: $46
    ld h, [hl]                                    ; $44E1: $66
    ret nz                                        ; $44E2: $C0

    ld e, h                                       ; $44E3: $5C
    ld hl, $0005                                  ; $44E4: $21 $05 $00
    add c                                         ; $44E7: $81
    ld e, l                                       ; $44E8: $5D
    dec b                                         ; $44E9: $05
    dec b                                         ; $44EA: $05

jr_019_44EB:
    ld l, c                                       ; $44EB: $69
    ret nc                                        ; $44EC: $D0

    nop                                           ; $44ED: $00
    jr nz, jr_019_44EB                            ; $44EE: $20 $FB

    ld d, b                                       ; $44F0: $50
    ld [hl+], a                                   ; $44F1: $22
    dec b                                         ; $44F2: $05
    ld b, b                                       ; $44F3: $40
    dec bc                                        ; $44F4: $0B
    nop                                           ; $44F5: $00
    dec b                                         ; $44F6: $05
    jr nz, jr_019_44C7                            ; $44F7: $20 $CE

    ld h, e                                       ; $44F9: $63
    ld a, [bc]                                    ; $44FA: $0A
    add hl, bc                                    ; $44FB: $09
    cp [hl]                                       ; $44FC: $BE
    ret nc                                        ; $44FD: $D0

    nop                                           ; $44FE: $00
    ld [hl+], a                                   ; $44FF: $22
    jp c, $1940                                   ; $4500: $DA $40 $19

    ld sp, $0540                                  ; $4503: $31 $40 $05
    rra                                           ; $4506: $1F
    adc $63                                       ; $4507: $CE $63
    ld a, [bc]                                    ; $4509: $0A
    add hl, bc                                    ; $450A: $09
    cp [hl]                                       ; $450B: $BE
    ret nc                                        ; $450C: $D0

    nop                                           ; $450D: $00
    ld [hl+], a                                   ; $450E: $22
    jp c, $1940                                   ; $450F: $DA $40 $19

    ld sp, $0B40                                  ; $4512: $31 $40 $0B
    jr nz, @+$0D                                  ; $4515: $20 $0B

    rra                                           ; $4517: $1F
    ld l, e                                       ; $4518: $6B
    inc [hl]                                      ; $4519: $34
    dec c                                         ; $451A: $0D
    jr nc, @+$6C                                  ; $451B: $30 $6A

    nop                                           ; $451D: $00
    add b                                         ; $451E: $80
    nop                                           ; $451F: $00
    ld sp, $D919                                  ; $4520: $31 $19 $D9
    ld b, h                                       ; $4523: $44
    ld [hl+], a                                   ; $4524: $22
    adc $40                                       ; $4525: $CE $40
    nop                                           ; $4527: $00
    add d                                         ; $4528: $82
    rra                                           ; $4529: $1F
    inc d                                         ; $452A: $14
    sub h                                         ; $452B: $94
    ld b, d                                       ; $452C: $42

jr_019_452D:
    ld [bc], a                                    ; $452D: $02
    dec c                                         ; $452E: $0D
    inc c                                         ; $452F: $0C
    inc de                                        ; $4530: $13
    nop                                           ; $4531: $00
    ld b, l                                       ; $4532: $45
    add hl, de                                    ; $4533: $19
    xor a                                         ; $4534: $AF
    ld b, l                                       ; $4535: $45
    ld [bc], a                                    ; $4536: $02
    daa                                           ; $4537: $27
    nop                                           ; $4538: $00
    ld a, [bc]                                    ; $4539: $0A
    ld [de], a                                    ; $453A: $12
    ld b, l                                       ; $453B: $45
    add hl, de                                    ; $453C: $19
    jr jr_019_4585                                ; $453D: $18 $46

    sub e                                         ; $453F: $93
    ld h, l                                       ; $4540: $65
    add d                                         ; $4541: $82
    ld b, l                                       ; $4542: $45
    ld c, a                                       ; $4543: $4F
    ld h, h                                       ; $4544: $64
    or h                                          ; $4545: $B4
    ld b, [hl]                                    ; $4546: $46
    ld h, [hl]                                    ; $4547: $66
    ret nz                                        ; $4548: $C0

    ld e, h                                       ; $4549: $5C
    ld hl, $0005                                  ; $454A: $21 $05 $00
    add c                                         ; $454D: $81
    ld e, l                                       ; $454E: $5D
    dec b                                         ; $454F: $05
    dec b                                         ; $4550: $05

jr_019_4551:
    call $00D0                                    ; $4551: $CD $D0 $00
    jr nz, jr_019_4551                            ; $4554: $20 $FB

    ld d, b                                       ; $4556: $50
    ld [hl+], a                                   ; $4557: $22
    dec b                                         ; $4558: $05
    ld b, b                                       ; $4559: $40
    dec bc                                        ; $455A: $0B
    nop                                           ; $455B: $00
    dec b                                         ; $455C: $05
    jr nz, jr_019_452D                            ; $455D: $20 $CE

    ld h, e                                       ; $455F: $63
    ld a, [bc]                                    ; $4560: $0A
    add hl, bc                                    ; $4561: $09
    ld [hl], d                                    ; $4562: $72
    pop de                                        ; $4563: $D1
    nop                                           ; $4564: $00
    ld [hl+], a                                   ; $4565: $22
    jp c, $1940                                   ; $4566: $DA $40 $19

    ld sp, $0540                                  ; $4569: $31 $40 $05
    rra                                           ; $456C: $1F
    adc $63                                       ; $456D: $CE $63
    ld a, [bc]                                    ; $456F: $0A
    add hl, bc                                    ; $4570: $09
    ld [hl], d                                    ; $4571: $72
    pop de                                        ; $4572: $D1
    nop                                           ; $4573: $00
    ld [hl+], a                                   ; $4574: $22
    jp c, $1940                                   ; $4575: $DA $40 $19

    ld sp, $0B40                                  ; $4578: $31 $40 $0B
    jr nz, @+$0D                                  ; $457B: $20 $0B

    rra                                           ; $457D: $1F
    ld l, e                                       ; $457E: $6B
    inc [hl]                                      ; $457F: $34
    dec c                                         ; $4580: $0D
    jr nc, @+$6C                                  ; $4581: $30 $6A

    nop                                           ; $4583: $00
    add b                                         ; $4584: $80

jr_019_4585:
    nop                                           ; $4585: $00
    ld sp, $9319                                  ; $4586: $31 $19 $93
    ld b, l                                       ; $4589: $45
    ld [hl+], a                                   ; $458A: $22
    adc $40                                       ; $458B: $CE $40
    nop                                           ; $458D: $00
    add d                                         ; $458E: $82
    rra                                           ; $458F: $1F
    inc d                                         ; $4590: $14
    sub h                                         ; $4591: $94
    ld b, d                                       ; $4592: $42
    sub e                                         ; $4593: $93
    ld l, d                                       ; $4594: $6A
    or e                                          ; $4595: $B3
    ld h, e                                       ; $4596: $63
    ld a, h                                       ; $4597: $7C
    cp h                                          ; $4598: $BC
    ld d, b                                       ; $4599: $50
    ld a, h                                       ; $459A: $7C
    ld b, [hl]                                    ; $459B: $46
    ld b, h                                       ; $459C: $44
    ld b, l                                       ; $459D: $45
    ld [bc], a                                    ; $459E: $02
    inc c                                         ; $459F: $0C

jr_019_45A0:
    dec c                                         ; $45A0: $0D
    nop                                           ; $45A1: $00
    inc de                                        ; $45A2: $13
    ld b, l                                       ; $45A3: $45
    add hl, de                                    ; $45A4: $19
    ccf                                           ; $45A5: $3F
    ld b, l                                       ; $45A6: $45
    and h                                         ; $45A7: $A4
    daa                                           ; $45A8: $27
    and e                                         ; $45A9: $A3
    stop                                          ; $45AA: $10 $00
    rla                                           ; $45AC: $17
    sub b                                         ; $45AD: $90
    ret nc                                        ; $45AE: $D0

    sub e                                         ; $45AF: $93
    ld h, l                                       ; $45B0: $65
    sub c                                         ; $45B1: $91
    ld b, l                                       ; $45B2: $45
    ld c, a                                       ; $45B3: $4F
    ld h, h                                       ; $45B4: $64
    cp l                                          ; $45B5: $BD
    ld b, [hl]                                    ; $45B6: $46
    ld l, c                                       ; $45B7: $69
    jp nz, Jump_019_6646                          ; $45B8: $C2 $46 $66

    ret nz                                        ; $45BB: $C0

    ld e, h                                       ; $45BC: $5C
    ld hl, $0005                                  ; $45BD: $21 $05 $00
    add c                                         ; $45C0: $81
    ld e, l                                       ; $45C1: $5D
    dec b                                         ; $45C2: $05
    dec b                                         ; $45C3: $05

jr_019_45C4:
    ld l, c                                       ; $45C4: $69
    ret nc                                        ; $45C5: $D0

    nop                                           ; $45C6: $00
    jr nz, jr_019_45C4                            ; $45C7: $20 $FB

    ld d, b                                       ; $45C9: $50
    ld [hl+], a                                   ; $45CA: $22
    dec b                                         ; $45CB: $05
    ld b, b                                       ; $45CC: $40
    dec bc                                        ; $45CD: $0B
    nop                                           ; $45CE: $00
    dec b                                         ; $45CF: $05
    jr nz, jr_019_45A0                            ; $45D0: $20 $CE

    ld h, e                                       ; $45D2: $63
    ld a, [bc]                                    ; $45D3: $0A
    add hl, bc                                    ; $45D4: $09
    cp [hl]                                       ; $45D5: $BE
    ret nc                                        ; $45D6: $D0

    nop                                           ; $45D7: $00
    ld [hl+], a                                   ; $45D8: $22
    jp c, $1940                                   ; $45D9: $DA $40 $19

    ld sp, $0540                                  ; $45DC: $31 $40 $05
    rra                                           ; $45DF: $1F
    adc $63                                       ; $45E0: $CE $63
    ld a, [bc]                                    ; $45E2: $0A
    add hl, bc                                    ; $45E3: $09
    cp [hl]                                       ; $45E4: $BE
    ret nc                                        ; $45E5: $D0

    nop                                           ; $45E6: $00
    ld [hl+], a                                   ; $45E7: $22
    jp c, $1940                                   ; $45E8: $DA $40 $19

    ld sp, $0B40                                  ; $45EB: $31 $40 $0B
    jr nz, @+$0D                                  ; $45EE: $20 $0B

    rra                                           ; $45F0: $1F
    ld l, e                                       ; $45F1: $6B
    inc [hl]                                      ; $45F2: $34
    dec c                                         ; $45F3: $0D
    jr nc, @+$6C                                  ; $45F4: $30 $6A

    nop                                           ; $45F6: $00
    add b                                         ; $45F7: $80
    nop                                           ; $45F8: $00
    ld sp, $AF19                                  ; $45F9: $31 $19 $AF
    ld b, l                                       ; $45FC: $45
    ld [hl+], a                                   ; $45FD: $22
    adc $40                                       ; $45FE: $CE $40
    nop                                           ; $4600: $00
    add d                                         ; $4601: $82
    rra                                           ; $4602: $1F
    inc d                                         ; $4603: $14
    sub h                                         ; $4604: $94
    ld b, d                                       ; $4605: $42

jr_019_4606:
    ld [bc], a                                    ; $4606: $02
    nop                                           ; $4607: $00
    daa                                           ; $4608: $27
    ld [de], a                                    ; $4609: $12
    ld a, [bc]                                    ; $460A: $0A
    ld b, l                                       ; $460B: $45
    add hl, de                                    ; $460C: $19
    ccf                                           ; $460D: $3F
    ld b, l                                       ; $460E: $45
    ld [bc], a                                    ; $460F: $02
    dec b                                         ; $4610: $05
    ld [de], a                                    ; $4611: $12
    nop                                           ; $4612: $00
    inc de                                        ; $4613: $13
    ld b, l                                       ; $4614: $45
    add hl, de                                    ; $4615: $19
    add a                                         ; $4616: $87
    ld b, [hl]                                    ; $4617: $46
    sub e                                         ; $4618: $93
    ld h, l                                       ; $4619: $65
    and b                                         ; $461A: $A0
    ld b, l                                       ; $461B: $45
    ld c, a                                       ; $461C: $4F
    ld h, h                                       ; $461D: $64
    rst $00                                       ; $461E: $C7
    ld b, [hl]                                    ; $461F: $46
    ld h, [hl]                                    ; $4620: $66
    ret nz                                        ; $4621: $C0

    ld e, h                                       ; $4622: $5C
    ld hl, $0005                                  ; $4623: $21 $05 $00
    add c                                         ; $4626: $81
    ld e, l                                       ; $4627: $5D
    dec b                                         ; $4628: $05
    dec b                                         ; $4629: $05

jr_019_462A:
    ld d, b                                       ; $462A: $50
    ret nc                                        ; $462B: $D0

    nop                                           ; $462C: $00
    jr nz, jr_019_462A                            ; $462D: $20 $FB

    ld d, b                                       ; $462F: $50
    ld [hl+], a                                   ; $4630: $22
    dec b                                         ; $4631: $05
    ld b, b                                       ; $4632: $40
    dec bc                                        ; $4633: $0B
    nop                                           ; $4634: $00
    dec b                                         ; $4635: $05
    jr nz, jr_019_4606                            ; $4636: $20 $CE

    ld h, e                                       ; $4638: $63
    ld a, [bc]                                    ; $4639: $0A
    add hl, bc                                    ; $463A: $09
    sub c                                         ; $463B: $91
    ret nc                                        ; $463C: $D0

    nop                                           ; $463D: $00
    ld [hl+], a                                   ; $463E: $22
    jp c, $1940                                   ; $463F: $DA $40 $19

    ld sp, $0540                                  ; $4642: $31 $40 $05
    rra                                           ; $4645: $1F
    adc $63                                       ; $4646: $CE $63
    ld a, [bc]                                    ; $4648: $0A
    add hl, bc                                    ; $4649: $09
    sub c                                         ; $464A: $91
    ret nc                                        ; $464B: $D0

    nop                                           ; $464C: $00
    ld [hl+], a                                   ; $464D: $22
    jp c, $1940                                   ; $464E: $DA $40 $19

    ld sp, $0B40                                  ; $4651: $31 $40 $0B
    jr nz, @+$0D                                  ; $4654: $20 $0B

    rra                                           ; $4656: $1F
    ld l, e                                       ; $4657: $6B
    inc [hl]                                      ; $4658: $34
    dec c                                         ; $4659: $0D
    jr nc, jr_019_46C6                            ; $465A: $30 $6A

    nop                                           ; $465C: $00
    add b                                         ; $465D: $80
    nop                                           ; $465E: $00
    ld sp, $1819                                  ; $465F: $31 $19 $18
    ld b, [hl]                                    ; $4662: $46
    ld [hl+], a                                   ; $4663: $22
    adc $40                                       ; $4664: $CE $40
    nop                                           ; $4666: $00
    add d                                         ; $4667: $82
    rra                                           ; $4668: $1F
    inc d                                         ; $4669: $14
    sub h                                         ; $466A: $94
    ld b, d                                       ; $466B: $42
    ld [bc], a                                    ; $466C: $02
    ld [de], a                                    ; $466D: $12
    dec b                                         ; $466E: $05
    inc de                                        ; $466F: $13
    nop                                           ; $4670: $00
    ld b, l                                       ; $4671: $45
    add hl, de                                    ; $4672: $19
    jr @+$48                                      ; $4673: $18 $46

jr_019_4675:
    ld [bc], a                                    ; $4675: $02
    inc b                                         ; $4676: $04
    rlca                                          ; $4677: $07
    nop                                           ; $4678: $00
    daa                                           ; $4679: $27
    ld b, l                                       ; $467A: $45
    add hl, de                                    ; $467B: $19
    ld hl, sp+$46                                 ; $467C: $F8 $46
    ld [bc], a                                    ; $467E: $02
    ld sp, $0B00                                  ; $467F: $31 $00 $0B
    inc de                                        ; $4682: $13
    ld b, l                                       ; $4683: $45
    add hl, de                                    ; $4684: $19
    bit 1, c                                      ; $4685: $CB $49
    sub e                                         ; $4687: $93
    ld h, l                                       ; $4688: $65
    xor a                                         ; $4689: $AF
    ld b, l                                       ; $468A: $45
    ld c, a                                       ; $468B: $4F
    ld h, h                                       ; $468C: $64
    ret nc                                        ; $468D: $D0

    ld b, [hl]                                    ; $468E: $46
    ld h, [hl]                                    ; $468F: $66
    ret nz                                        ; $4690: $C0

    ld e, h                                       ; $4691: $5C
    ld hl, $0005                                  ; $4692: $21 $05 $00
    add c                                         ; $4695: $81
    ld e, l                                       ; $4696: $5D
    dec b                                         ; $4697: $05
    dec b                                         ; $4698: $05

jr_019_4699:
    rst $38                                       ; $4699: $FF
    ret nc                                        ; $469A: $D0

    nop                                           ; $469B: $00
    jr nz, jr_019_4699                            ; $469C: $20 $FB

    ld d, b                                       ; $469E: $50
    ld [hl+], a                                   ; $469F: $22
    dec b                                         ; $46A0: $05
    ld b, b                                       ; $46A1: $40
    dec bc                                        ; $46A2: $0B
    nop                                           ; $46A3: $00
    dec b                                         ; $46A4: $05
    jr nz, jr_019_4675                            ; $46A5: $20 $CE

    ld h, e                                       ; $46A7: $63
    ld a, [bc]                                    ; $46A8: $0A
    add hl, bc                                    ; $46A9: $09
    call z, $00D1                                 ; $46AA: $CC $D1 $00
    ld [hl+], a                                   ; $46AD: $22
    jp c, $1940                                   ; $46AE: $DA $40 $19

    ld sp, $0540                                  ; $46B1: $31 $40 $05
    rra                                           ; $46B4: $1F
    adc $63                                       ; $46B5: $CE $63
    ld a, [bc]                                    ; $46B7: $0A
    add hl, bc                                    ; $46B8: $09
    call z, $00D1                                 ; $46B9: $CC $D1 $00
    ld [hl+], a                                   ; $46BC: $22
    jp c, $1940                                   ; $46BD: $DA $40 $19

    ld sp, $0B40                                  ; $46C0: $31 $40 $0B
    jr nz, @+$0D                                  ; $46C3: $20 $0B

    rra                                           ; $46C5: $1F

jr_019_46C6:
    ld l, e                                       ; $46C6: $6B
    inc [hl]                                      ; $46C7: $34
    dec c                                         ; $46C8: $0D
    jr nc, @+$6C                                  ; $46C9: $30 $6A

    nop                                           ; $46CB: $00
    add b                                         ; $46CC: $80
    nop                                           ; $46CD: $00
    ld sp, $DB19                                  ; $46CE: $31 $19 $DB
    ld b, [hl]                                    ; $46D1: $46
    ld [hl+], a                                   ; $46D2: $22
    adc $40                                       ; $46D3: $CE $40
    nop                                           ; $46D5: $00
    add d                                         ; $46D6: $82
    rra                                           ; $46D7: $1F
    inc d                                         ; $46D8: $14
    sub h                                         ; $46D9: $94
    ld b, d                                       ; $46DA: $42
    sub e                                         ; $46DB: $93
    ld l, d                                       ; $46DC: $6A
    or e                                          ; $46DD: $B3
    ld h, e                                       ; $46DE: $63
    ld a, h                                       ; $46DF: $7C
    cp h                                          ; $46E0: $BC
    ld d, b                                       ; $46E1: $50
    ld a, h                                       ; $46E2: $7C
    ld b, [hl]                                    ; $46E3: $46
    adc h                                         ; $46E4: $8C
    ld b, [hl]                                    ; $46E5: $46

jr_019_46E6:
    ld [bc], a                                    ; $46E6: $02
    rlca                                          ; $46E7: $07
    inc b                                         ; $46E8: $04
    daa                                           ; $46E9: $27
    nop                                           ; $46EA: $00
    ld b, l                                       ; $46EB: $45
    add hl, de                                    ; $46EC: $19
    add a                                         ; $46ED: $87
    ld b, [hl]                                    ; $46EE: $46
    ld [bc], a                                    ; $46EF: $02
    inc de                                        ; $46F0: $13
    nop                                           ; $46F1: $00
    ld [$450C], sp                                ; $46F2: $08 $0C $45
    add hl, de                                    ; $46F5: $19
    ld [hl], b                                    ; $46F6: $70
    ld b, a                                       ; $46F7: $47
    sub e                                         ; $46F8: $93
    ld h, l                                       ; $46F9: $65
    cp [hl]                                       ; $46FA: $BE
    ld b, l                                       ; $46FB: $45
    ld c, a                                       ; $46FC: $4F
    ld h, h                                       ; $46FD: $64
    db $DD                                        ; $46FE: $DD
    ld b, [hl]                                    ; $46FF: $46
    ld h, [hl]                                    ; $4700: $66
    ret nz                                        ; $4701: $C0

    ld e, h                                       ; $4702: $5C
    ld hl, $0005                                  ; $4703: $21 $05 $00
    add c                                         ; $4706: $81
    ld e, l                                       ; $4707: $5D
    dec b                                         ; $4708: $05
    dec b                                         ; $4709: $05

jr_019_470A:
    ld l, c                                       ; $470A: $69
    ret nc                                        ; $470B: $D0

    nop                                           ; $470C: $00
    jr nz, jr_019_470A                            ; $470D: $20 $FB

    ld d, b                                       ; $470F: $50
    ld [hl+], a                                   ; $4710: $22
    dec b                                         ; $4711: $05
    ld b, b                                       ; $4712: $40
    dec bc                                        ; $4713: $0B
    nop                                           ; $4714: $00
    dec b                                         ; $4715: $05
    jr nz, jr_019_46E6                            ; $4716: $20 $CE

    ld h, e                                       ; $4718: $63
    ld a, [bc]                                    ; $4719: $0A
    add hl, bc                                    ; $471A: $09
    cp [hl]                                       ; $471B: $BE
    ret nc                                        ; $471C: $D0

    nop                                           ; $471D: $00
    ld [hl+], a                                   ; $471E: $22
    jp c, $1940                                   ; $471F: $DA $40 $19

    ld sp, $0540                                  ; $4722: $31 $40 $05
    rra                                           ; $4725: $1F
    adc $63                                       ; $4726: $CE $63
    ld a, [bc]                                    ; $4728: $0A
    add hl, bc                                    ; $4729: $09
    cp [hl]                                       ; $472A: $BE
    ret nc                                        ; $472B: $D0

    nop                                           ; $472C: $00
    ld [hl+], a                                   ; $472D: $22
    jp c, $1940                                   ; $472E: $DA $40 $19

    ld sp, $0B40                                  ; $4731: $31 $40 $0B
    jr nz, @+$0D                                  ; $4734: $20 $0B

    rra                                           ; $4736: $1F
    ld l, e                                       ; $4737: $6B
    inc [hl]                                      ; $4738: $34
    dec c                                         ; $4739: $0D
    jr nc, jr_019_47A6                            ; $473A: $30 $6A

    nop                                           ; $473C: $00
    add b                                         ; $473D: $80
    nop                                           ; $473E: $00
    ld sp, $F819                                  ; $473F: $31 $19 $F8
    ld b, [hl]                                    ; $4742: $46
    ld [hl+], a                                   ; $4743: $22
    adc $40                                       ; $4744: $CE $40
    nop                                           ; $4746: $00
    add d                                         ; $4747: $82
    rra                                           ; $4748: $1F
    inc d                                         ; $4749: $14
    sub h                                         ; $474A: $94
    ld b, d                                       ; $474B: $42
    ld [bc], a                                    ; $474C: $02
    nop                                           ; $474D: $00
    inc de                                        ; $474E: $13
    inc c                                         ; $474F: $0C
    ld [$1945], sp                                ; $4750: $08 $45 $19
    ld hl, sp+$46                                 ; $4753: $F8 $46
    ld [bc], a                                    ; $4755: $02
    db $10                                        ; $4756: $10
    dec d                                         ; $4757: $15
    inc de                                        ; $4758: $13
    nop                                           ; $4759: $00
    ld b, l                                       ; $475A: $45
    add hl, de                                    ; $475B: $19
    ldh [rBGP], a                                 ; $475C: $E0 $47

jr_019_475E:
    ld [bc], a                                    ; $475E: $02
    daa                                           ; $475F: $27
    nop                                           ; $4760: $00
    add hl, bc                                    ; $4761: $09
    ld [$1945], sp                                ; $4762: $08 $45 $19
    add l                                         ; $4765: $85
    ld c, b                                       ; $4766: $48
    ld [bc], a                                    ; $4767: $02
    inc c                                         ; $4768: $0C
    rlca                                          ; $4769: $07
    nop                                           ; $476A: $00
    ld sp, $1945                                  ; $476B: $31 $45 $19
    reti                                          ; $476E: $D9


    ld b, h                                       ; $476F: $44
    sub e                                         ; $4770: $93
    ld h, l                                       ; $4771: $65
    call Call_019_4F45                            ; $4772: $CD $45 $4F
    ld h, h                                       ; $4775: $64
    and $46                                       ; $4776: $E6 $46
    ld h, [hl]                                    ; $4778: $66
    ret nz                                        ; $4779: $C0

    ld e, h                                       ; $477A: $5C
    ld hl, $0005                                  ; $477B: $21 $05 $00
    add c                                         ; $477E: $81
    ld e, l                                       ; $477F: $5D
    dec b                                         ; $4780: $05
    dec b                                         ; $4781: $05

jr_019_4782:
    call $00D0                                    ; $4782: $CD $D0 $00
    jr nz, jr_019_4782                            ; $4785: $20 $FB

    ld d, b                                       ; $4787: $50
    ld [hl+], a                                   ; $4788: $22
    dec b                                         ; $4789: $05
    ld b, b                                       ; $478A: $40
    dec bc                                        ; $478B: $0B
    nop                                           ; $478C: $00
    dec b                                         ; $478D: $05
    jr nz, jr_019_475E                            ; $478E: $20 $CE

    ld h, e                                       ; $4790: $63
    ld a, [bc]                                    ; $4791: $0A
    add hl, bc                                    ; $4792: $09
    ld [hl], d                                    ; $4793: $72
    pop de                                        ; $4794: $D1
    nop                                           ; $4795: $00
    ld [hl+], a                                   ; $4796: $22
    jp c, $1940                                   ; $4797: $DA $40 $19

    ld sp, $0540                                  ; $479A: $31 $40 $05
    rra                                           ; $479D: $1F
    adc $63                                       ; $479E: $CE $63
    ld a, [bc]                                    ; $47A0: $0A
    add hl, bc                                    ; $47A1: $09
    ld [hl], d                                    ; $47A2: $72
    pop de                                        ; $47A3: $D1
    nop                                           ; $47A4: $00
    ld [hl+], a                                   ; $47A5: $22

jr_019_47A6:
    jp c, $1940                                   ; $47A6: $DA $40 $19

    ld sp, $0B40                                  ; $47A9: $31 $40 $0B
    jr nz, @+$0D                                  ; $47AC: $20 $0B

    rra                                           ; $47AE: $1F
    ld l, e                                       ; $47AF: $6B
    inc [hl]                                      ; $47B0: $34
    dec c                                         ; $47B1: $0D
    jr nc, @+$6C                                  ; $47B2: $30 $6A

    nop                                           ; $47B4: $00
    add b                                         ; $47B5: $80
    nop                                           ; $47B6: $00
    ld sp, $C419                                  ; $47B7: $31 $19 $C4
    ld b, a                                       ; $47BA: $47
    ld [hl+], a                                   ; $47BB: $22
    adc $40                                       ; $47BC: $CE $40
    nop                                           ; $47BE: $00
    add d                                         ; $47BF: $82
    rra                                           ; $47C0: $1F
    inc d                                         ; $47C1: $14
    sub h                                         ; $47C2: $94
    ld b, d                                       ; $47C3: $42
    sub e                                         ; $47C4: $93
    ld l, d                                       ; $47C5: $6A
    or e                                          ; $47C6: $B3
    ld h, e                                       ; $47C7: $63
    ld a, h                                       ; $47C8: $7C
    cp h                                          ; $47C9: $BC
    ld d, b                                       ; $47CA: $50
    ld a, h                                       ; $47CB: $7C
    ld b, [hl]                                    ; $47CC: $46
    ld [hl], l                                    ; $47CD: $75
    ld b, a                                       ; $47CE: $47
    ld [bc], a                                    ; $47CF: $02
    dec d                                         ; $47D0: $15

jr_019_47D1:
    stop                                          ; $47D1: $10 $00
    inc de                                        ; $47D3: $13
    ld b, l                                       ; $47D4: $45
    add hl, de                                    ; $47D5: $19
    ld [hl], b                                    ; $47D6: $70
    ld b, a                                       ; $47D7: $47
    and h                                         ; $47D8: $A4

jr_019_47D9:
    daa                                           ; $47D9: $27
    and e                                         ; $47DA: $A3
    jr nz, jr_019_47DD                            ; $47DB: $20 $00

jr_019_47DD:
    ld de, $D2AB                                  ; $47DD: $11 $AB $D2
    sub e                                         ; $47E0: $93
    ld h, l                                       ; $47E1: $65
    call c, Call_019_4F45                         ; $47E2: $DC $45 $4F
    ld h, h                                       ; $47E5: $64
    rst $30                                       ; $47E6: $F7
    ld b, [hl]                                    ; $47E7: $46

jr_019_47E8:
    ld l, c                                       ; $47E8: $69
    db $FC                                        ; $47E9: $FC
    ld b, [hl]                                    ; $47EA: $46
    ld h, [hl]                                    ; $47EB: $66
    ret nz                                        ; $47EC: $C0

    ld e, h                                       ; $47ED: $5C
    ld hl, $0005                                  ; $47EE: $21 $05 $00
    add c                                         ; $47F1: $81
    ld e, l                                       ; $47F2: $5D
    dec b                                         ; $47F3: $05
    dec b                                         ; $47F4: $05

jr_019_47F5:
    sbc e                                         ; $47F5: $9B
    ret nc                                        ; $47F6: $D0

    nop                                           ; $47F7: $00
    jr nz, jr_019_47F5                            ; $47F8: $20 $FB

    ld d, b                                       ; $47FA: $50
    ld [hl+], a                                   ; $47FB: $22
    dec b                                         ; $47FC: $05
    ld b, b                                       ; $47FD: $40
    dec bc                                        ; $47FE: $0B
    nop                                           ; $47FF: $00
    dec b                                         ; $4800: $05
    jr nz, jr_019_47D1                            ; $4801: $20 $CE

    ld h, e                                       ; $4803: $63
    ld a, [bc]                                    ; $4804: $0A
    add hl, bc                                    ; $4805: $09
    jr jr_019_47D9                                ; $4806: $18 $D1

    nop                                           ; $4808: $00
    ld [hl+], a                                   ; $4809: $22
    jp c, $1940                                   ; $480A: $DA $40 $19

    ld sp, $0540                                  ; $480D: $31 $40 $05
    rra                                           ; $4810: $1F
    adc $63                                       ; $4811: $CE $63
    ld a, [bc]                                    ; $4813: $0A
    add hl, bc                                    ; $4814: $09
    jr jr_019_47E8                                ; $4815: $18 $D1

    nop                                           ; $4817: $00
    ld [hl+], a                                   ; $4818: $22
    jp c, $1940                                   ; $4819: $DA $40 $19

    ld sp, $0B40                                  ; $481C: $31 $40 $0B
    jr nz, @+$0D                                  ; $481F: $20 $0B

    rra                                           ; $4821: $1F
    ld l, e                                       ; $4822: $6B
    inc [hl]                                      ; $4823: $34
    dec c                                         ; $4824: $0D
    jr nc, @+$6C                                  ; $4825: $30 $6A

    nop                                           ; $4827: $00
    add b                                         ; $4828: $80
    nop                                           ; $4829: $00
    ld sp, $E019                                  ; $482A: $31 $19 $E0
    ld b, a                                       ; $482D: $47
    ld [hl+], a                                   ; $482E: $22
    adc $40                                       ; $482F: $CE $40
    nop                                           ; $4831: $00
    add d                                         ; $4832: $82
    rra                                           ; $4833: $1F
    inc d                                         ; $4834: $14
    sub h                                         ; $4835: $94
    ld b, d                                       ; $4836: $42
    ld [bc], a                                    ; $4837: $02
    nop                                           ; $4838: $00
    daa                                           ; $4839: $27
    ld [$4509], sp                                ; $483A: $08 $09 $45
    add hl, de                                    ; $483D: $19
    ld [hl], b                                    ; $483E: $70
    ld b, a                                       ; $483F: $47
    ld [bc], a                                    ; $4840: $02
    dec bc                                        ; $4841: $0B
    ld b, $1D                                     ; $4842: $06 $1D
    nop                                           ; $4844: $00
    ld b, l                                       ; $4845: $45
    add hl, de                                    ; $4846: $19
    bit 1, c                                      ; $4847: $CB $49
    ld bc, $0B02                                  ; $4849: $01 $02 $0B
    ld b, l                                       ; $484C: $45
    add hl, de                                    ; $484D: $19
    ld e, a                                       ; $484E: $5F
    ld c, b                                       ; $484F: $48
    ld bc, $0208                                  ; $4850: $01 $08 $02
    ld b, l                                       ; $4853: $45
    add hl, de                                    ; $4854: $19
    add l                                         ; $4855: $85
    ld c, b                                       ; $4856: $48
    and h                                         ; $4857: $A4
    ld c, c                                       ; $4858: $49
    and e                                         ; $4859: $A3
    inc b                                         ; $485A: $04
    nop                                           ; $485B: $00
    inc hl                                        ; $485C: $23
    ld c, a                                       ; $485D: $4F
    ret nc                                        ; $485E: $D0

    sub e                                         ; $485F: $93
    ld h, l                                       ; $4860: $65
    ld a, [$4F45]                                 ; $4861: $FA $45 $4F
    ld h, h                                       ; $4864: $64
    ld c, $47                                     ; $4865: $0E $47
    ld l, c                                       ; $4867: $69
    inc de                                        ; $4868: $13
    ld b, a                                       ; $4869: $47
    ld h, [hl]                                    ; $486A: $66
    ret nz                                        ; $486B: $C0

    ld e, h                                       ; $486C: $5C
    ld hl, $0005                                  ; $486D: $21 $05 $00
    add c                                         ; $4870: $81
    ld e, l                                       ; $4871: $5D
    dec b                                         ; $4872: $05
    dec b                                         ; $4873: $05

jr_019_4874:
    ld b, c                                       ; $4874: $41
    ret nc                                        ; $4875: $D0

    nop                                           ; $4876: $00
    jr nz, jr_019_4874                            ; $4877: $20 $FB

    ld d, b                                       ; $4879: $50
    ld [hl+], a                                   ; $487A: $22
    dec b                                         ; $487B: $05
    ld b, b                                       ; $487C: $40
    dec bc                                        ; $487D: $0B
    nop                                           ; $487E: $00
    nop                                           ; $487F: $00
    add d                                         ; $4880: $82
    rra                                           ; $4881: $1F
    inc d                                         ; $4882: $14
    sub h                                         ; $4883: $94
    ld b, d                                       ; $4884: $42
    sub e                                         ; $4885: $93

jr_019_4886:
    ld h, l                                       ; $4886: $65
    db $EB                                        ; $4887: $EB
    ld b, l                                       ; $4888: $45
    ld c, a                                       ; $4889: $4F
    ld h, h                                       ; $488A: $64
    ld bc, $6647                                  ; $488B: $01 $47 $66
    ret nz                                        ; $488E: $C0

    ld e, h                                       ; $488F: $5C
    ld hl, $1995                                  ; $4890: $21 $95 $19
    or $48                                        ; $4893: $F6 $48
    dec b                                         ; $4895: $05
    nop                                           ; $4896: $00
    add c                                         ; $4897: $81
    ld e, l                                       ; $4898: $5D
    dec b                                         ; $4899: $05
    dec b                                         ; $489A: $05

jr_019_489B:
    ld l, c                                       ; $489B: $69
    ret nc                                        ; $489C: $D0

    nop                                           ; $489D: $00
    jr nz, jr_019_489B                            ; $489E: $20 $FB

    ld d, b                                       ; $48A0: $50
    ld [hl+], a                                   ; $48A1: $22
    dec b                                         ; $48A2: $05
    ld b, b                                       ; $48A3: $40
    dec bc                                        ; $48A4: $0B
    nop                                           ; $48A5: $00
    dec b                                         ; $48A6: $05
    ld [bc], a                                    ; $48A7: $02
    ld l, e                                       ; $48A8: $6B
    ld c, d                                       ; $48A9: $4A
    ld [$3002], sp                                ; $48AA: $08 $02 $30
    ret nc                                        ; $48AD: $D0

    nop                                           ; $48AE: $00
    ld [hl+], a                                   ; $48AF: $22
    inc b                                         ; $48B0: $04
    ld b, b                                       ; $48B1: $40
    ld [hl+], a                                   ; $48B2: $22
    inc b                                         ; $48B3: $04
    ld b, b                                       ; $48B4: $40
    dec b                                         ; $48B5: $05
    jr nz, jr_019_4886                            ; $48B6: $20 $CE

    ld h, e                                       ; $48B8: $63
    ld a, [bc]                                    ; $48B9: $0A
    add hl, bc                                    ; $48BA: $09
    cp [hl]                                       ; $48BB: $BE
    ret nc                                        ; $48BC: $D0

    nop                                           ; $48BD: $00
    ld [hl+], a                                   ; $48BE: $22
    jp c, $1940                                   ; $48BF: $DA $40 $19

    ld sp, $0540                                  ; $48C2: $31 $40 $05
    rra                                           ; $48C5: $1F
    adc $63                                       ; $48C6: $CE $63
    ld a, [bc]                                    ; $48C8: $0A
    add hl, bc                                    ; $48C9: $09
    cp [hl]                                       ; $48CA: $BE
    ret nc                                        ; $48CB: $D0

    nop                                           ; $48CC: $00
    ld [hl+], a                                   ; $48CD: $22
    jp c, $1940                                   ; $48CE: $DA $40 $19

    ld sp, $0B40                                  ; $48D1: $31 $40 $0B
    ld [bc], a                                    ; $48D4: $02
    dec bc                                        ; $48D5: $0B
    jr nz, @+$0D                                  ; $48D6: $20 $0B

    rra                                           ; $48D8: $1F
    ld l, e                                       ; $48D9: $6B
    inc [hl]                                      ; $48DA: $34
    dec c                                         ; $48DB: $0D
    jr nc, jr_019_4948                            ; $48DC: $30 $6A

    nop                                           ; $48DE: $00
    add b                                         ; $48DF: $80
    nop                                           ; $48E0: $00
    ld sp, $8519                                  ; $48E1: $31 $19 $85
    ld c, b                                       ; $48E4: $48
    ld [hl+], a                                   ; $48E5: $22
    adc $40                                       ; $48E6: $CE $40

jr_019_48E8:
    nop                                           ; $48E8: $00
    add d                                         ; $48E9: $82
    rra                                           ; $48EA: $1F
    inc d                                         ; $48EB: $14
    ld b, e                                       ; $48EC: $43
    nop                                           ; $48ED: $00
    xor [hl]                                      ; $48EE: $AE
    and c                                         ; $48EF: $A1
    jr nz, jr_019_490B                            ; $48F0: $20 $19

    sub l                                         ; $48F2: $95
    ld c, c                                       ; $48F3: $49
    sub h                                         ; $48F4: $94
    ld b, d                                       ; $48F5: $42
    ld b, e                                       ; $48F6: $43
    ld [$010F], sp                                ; $48F7: $08 $0F $01
    inc h                                         ; $48FA: $24
    rst $00                                       ; $48FB: $C7
    ld b, $2A                                     ; $48FC: $06 $2A
    nop                                           ; $48FE: $00
    rrca                                          ; $48FF: $0F
    ld bc, $C725                                  ; $4900: $01 $25 $C7
    ld b, $B0                                     ; $4903: $06 $B0
    nop                                           ; $4905: $00
    add hl, de                                    ; $4906: $19
    dec c                                         ; $4907: $0D
    ld c, c                                       ; $4908: $49
    ld b, l                                       ; $4909: $45
    ld [hl+], a                                   ; $490A: $22

jr_019_490B:
    ld b, $40                                     ; $490B: $06 $40
    xor a                                         ; $490D: $AF
    xor [hl]                                      ; $490E: $AE
    and c                                         ; $490F: $A1
    jr nz, jr_019_4957                            ; $4910: $20 $45

    add hl, de                                    ; $4912: $19
    dec d                                         ; $4913: $15
    ld c, c                                       ; $4914: $49
    adc b                                         ; $4915: $88
    nop                                           ; $4916: $00
    ld a, [hl+]                                   ; $4917: $2A
    ld bc, $0007                                  ; $4918: $01 $07 $00
    rst $10                                       ; $491B: $D7
    ld h, l                                       ; $491C: $65
    add hl, bc                                    ; $491D: $09
    nop                                           ; $491E: $00
    add hl, de                                    ; $491F: $19
    ld a, [hl-]                                   ; $4920: $3A
    ld c, c                                       ; $4921: $49
    dec b                                         ; $4922: $05
    inc bc                                        ; $4923: $03
    ld l, e                                       ; $4924: $6B
    ld c, d                                       ; $4925: $4A
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    ret nc                                        ; $4929: $D0

    ld h, h                                       ; $492A: $64
    add hl, de                                    ; $492B: $19
    ld d, a                                       ; $492C: $57
    ld c, c                                       ; $492D: $49
    ld [hl+], a                                   ; $492E: $22
    inc b                                         ; $492F: $04
    ld b, b                                       ; $4930: $40
    ld l, e                                       ; $4931: $6B
    jr nz, jr_019_4958                            ; $4932: $20 $24

    ret nz                                        ; $4934: $C0

    ld h, h                                       ; $4935: $64
    ld b, b                                       ; $4936: $40
    add [hl]                                      ; $4937: $86
    nop                                           ; $4938: $00
    ld b, d                                       ; $4939: $42
    dec d                                         ; $493A: $15
    jr nz, jr_019_48E8                            ; $493B: $20 $AB

    ld d, b                                       ; $493D: $50
    stop                                          ; $493E: $10 $00
    dec bc                                        ; $4940: $0B
    inc bc                                        ; $4941: $03
    dec d                                         ; $4942: $15
    jr nz, jr_019_49A2                            ; $4943: $20 $5D

    ld d, b                                       ; $4945: $50
    jr jr_019_4968                                ; $4946: $18 $20

jr_019_4948:
    xor e                                         ; $4948: $AB
    ld d, b                                       ; $4949: $50
    stop                                          ; $494A: $10 $00
    ld e, d                                       ; $494C: $5A
    add hl, de                                    ; $494D: $19
    ld h, d                                       ; $494E: $62
    ld c, c                                       ; $494F: $49
    inc de                                        ; $4950: $13
    add c                                         ; $4951: $81
    ld e, l                                       ; $4952: $5D
    ld b, l                                       ; $4953: $45
    jr nz, @-$53                                  ; $4954: $20 $AB

    ld d, b                                       ; $4956: $50

jr_019_4957:
    rrca                                          ; $4957: $0F

jr_019_4958:
    nop                                           ; $4958: $00
    dec de                                        ; $4959: $1B
    inc bc                                        ; $495A: $03
    dec d                                         ; $495B: $15
    ld de, $7978                                  ; $495C: $11 $78 $79
    ld b, b                                       ; $495F: $40
    nop                                           ; $4960: $00
    ld b, d                                       ; $4961: $42
    add e                                         ; $4962: $83
    ld bc, $0003                                  ; $4963: $01 $03 $00
    nop                                           ; $4966: $00
    add e                                         ; $4967: $83

jr_019_4968:
    ld bc, $00FD                                  ; $4968: $01 $FD $00
    nop                                           ; $496B: $00
    add e                                         ; $496C: $83
    ld bc, $FD03                                  ; $496D: $01 $03 $FD
    nop                                           ; $4970: $00
    add e                                         ; $4971: $83
    ld bc, $03FD                                  ; $4972: $01 $FD $03
    nop                                           ; $4975: $00
    add e                                         ; $4976: $83
    ld bc, $FD00                                  ; $4977: $01 $00 $FD
    nop                                           ; $497A: $00
    add e                                         ; $497B: $83
    ld bc, $0300                                  ; $497C: $01 $00 $03
    nop                                           ; $497F: $00
    add hl, bc                                    ; $4980: $09
    ld [bc], a                                    ; $4981: $02
    add hl, de                                    ; $4982: $19
    add [hl]                                      ; $4983: $86
    ld c, c                                       ; $4984: $49
    ld b, d                                       ; $4985: $42
    dec c                                         ; $4986: $0D
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498A: $00
    jp nz, $0D54                                  ; $498B: $C2 $54 $0D

    rst $38                                       ; $498E: $FF
    nop                                           ; $498F: $00
    db $EC                                        ; $4990: $EC
    rst $38                                       ; $4991: $FF
    ld [$4244], sp                                ; $4992: $08 $44 $42
    inc bc                                        ; $4995: $03
    ld [bc], a                                    ; $4996: $02
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    nop                                           ; $499A: $00
    jp nz, $0354                                  ; $499B: $C2 $54 $03

    ld [bc], a                                    ; $499E: $02
    rst $38                                       ; $499F: $FF
    nop                                           ; $49A0: $00
    db $EC                                        ; $49A1: $EC

jr_019_49A2:
    rst $38                                       ; $49A2: $FF
    ld [$9444], sp                                ; $49A3: $08 $44 $94
    ld b, d                                       ; $49A6: $42
    ld [bc], a                                    ; $49A7: $02
    ld b, $0B                                     ; $49A8: $06 $0B
    nop                                           ; $49AA: $00
    dec e                                         ; $49AB: $1D
    ld b, l                                       ; $49AC: $45
    add hl, de                                    ; $49AD: $19
    add l                                         ; $49AE: $85
    ld c, b                                       ; $49AF: $48
    ld [bc], a                                    ; $49B0: $02
    nop                                           ; $49B1: $00
    ld sp, $0B13                                  ; $49B2: $31 $13 $0B
    ld b, l                                       ; $49B5: $45
    add hl, de                                    ; $49B6: $19
    add a                                         ; $49B7: $87
    ld b, [hl]                                    ; $49B8: $46

jr_019_49B9:
    ld [bc], a                                    ; $49B9: $02
    inc de                                        ; $49BA: $13
    nop                                           ; $49BB: $00
    ld [hl+], a                                   ; $49BC: $22
    dec bc                                        ; $49BD: $0B
    ld b, l                                       ; $49BE: $45
    add hl, de                                    ; $49BF: $19
    ld b, e                                       ; $49C0: $43
    ld c, d                                       ; $49C1: $4A
    ld [bc], a                                    ; $49C2: $02
    nop                                           ; $49C3: $00
    dec e                                         ; $49C4: $1D
    dec l                                         ; $49C5: $2D
    rrca                                          ; $49C6: $0F
    ld b, l                                       ; $49C7: $45
    add hl, de                                    ; $49C8: $19
    ld l, a                                       ; $49C9: $6F
    ld c, e                                       ; $49CA: $4B
    sub e                                         ; $49CB: $93
    ld h, l                                       ; $49CC: $65
    add hl, bc                                    ; $49CD: $09
    ld b, [hl]                                    ; $49CE: $46
    ld c, a                                       ; $49CF: $4F
    ld h, h                                       ; $49D0: $64
    jr jr_019_4A1A                                ; $49D1: $18 $47

    ld h, [hl]                                    ; $49D3: $66
    ret nz                                        ; $49D4: $C0

    ld e, h                                       ; $49D5: $5C
    ld hl, $0005                                  ; $49D6: $21 $05 $00
    add c                                         ; $49D9: $81
    ld e, l                                       ; $49DA: $5D
    dec b                                         ; $49DB: $05
    dec b                                         ; $49DC: $05

jr_019_49DD:
    ld l, c                                       ; $49DD: $69
    ret nc                                        ; $49DE: $D0

    nop                                           ; $49DF: $00
    jr nz, jr_019_49DD                            ; $49E0: $20 $FB

    ld d, b                                       ; $49E2: $50
    ld [hl+], a                                   ; $49E3: $22
    dec b                                         ; $49E4: $05
    ld b, b                                       ; $49E5: $40
    dec bc                                        ; $49E6: $0B
    nop                                           ; $49E7: $00
    dec b                                         ; $49E8: $05
    jr nz, jr_019_49B9                            ; $49E9: $20 $CE

    ld h, e                                       ; $49EB: $63
    ld a, [bc]                                    ; $49EC: $0A
    add hl, bc                                    ; $49ED: $09
    cp [hl]                                       ; $49EE: $BE
    ret nc                                        ; $49EF: $D0

    nop                                           ; $49F0: $00
    ld [hl+], a                                   ; $49F1: $22
    jp c, $1940                                   ; $49F2: $DA $40 $19

    ld sp, $0540                                  ; $49F5: $31 $40 $05
    rra                                           ; $49F8: $1F
    adc $63                                       ; $49F9: $CE $63
    ld a, [bc]                                    ; $49FB: $0A
    add hl, bc                                    ; $49FC: $09
    cp [hl]                                       ; $49FD: $BE
    ret nc                                        ; $49FE: $D0

    nop                                           ; $49FF: $00
    ld [hl+], a                                   ; $4A00: $22
    jp c, $1940                                   ; $4A01: $DA $40 $19

    ld sp, $0B40                                  ; $4A04: $31 $40 $0B
    jr nz, @+$0D                                  ; $4A07: $20 $0B

    rra                                           ; $4A09: $1F
    ld l, e                                       ; $4A0A: $6B
    inc [hl]                                      ; $4A0B: $34
    dec c                                         ; $4A0C: $0D
    jr nc, jr_019_4A79                            ; $4A0D: $30 $6A

    nop                                           ; $4A0F: $00
    add b                                         ; $4A10: $80
    nop                                           ; $4A11: $00
    ld sp, $1F19                                  ; $4A12: $31 $19 $1F
    ld c, d                                       ; $4A15: $4A
    ld [hl+], a                                   ; $4A16: $22
    adc $40                                       ; $4A17: $CE $40
    nop                                           ; $4A19: $00

jr_019_4A1A:
    add d                                         ; $4A1A: $82
    rra                                           ; $4A1B: $1F
    inc d                                         ; $4A1C: $14
    sub h                                         ; $4A1D: $94
    ld b, d                                       ; $4A1E: $42
    sub e                                         ; $4A1F: $93
    ld l, d                                       ; $4A20: $6A
    or e                                          ; $4A21: $B3
    ld h, e                                       ; $4A22: $63
    ld a, h                                       ; $4A23: $7C
    cp h                                          ; $4A24: $BC
    ld d, b                                       ; $4A25: $50
    ld a, h                                       ; $4A26: $7C
    ld b, [hl]                                    ; $4A27: $46
    ret nc                                        ; $4A28: $D0

    ld c, c                                       ; $4A29: $49
    ld [bc], a                                    ; $4A2A: $02
    nop                                           ; $4A2B: $00
    inc de                                        ; $4A2C: $13
    dec bc                                        ; $4A2D: $0B
    ld [hl+], a                                   ; $4A2E: $22
    ld b, l                                       ; $4A2F: $45
    add hl, de                                    ; $4A30: $19
    bit 1, c                                      ; $4A31: $CB $49
    and h                                         ; $4A33: $A4

jr_019_4A34:
    daa                                           ; $4A34: $27
    and e                                         ; $4A35: $A3
    ld b, b                                       ; $4A36: $40
    nop                                           ; $4A37: $00
    ld de, $D095                                  ; $4A38: $11 $95 $D0
    and h                                         ; $4A3B: $A4
    daa                                           ; $4A3C: $27
    and e                                         ; $4A3D: $A3
    add b                                         ; $4A3E: $80
    nop                                           ; $4A3F: $00
    ld de, $D393                                  ; $4A40: $11 $93 $D3
    sub e                                         ; $4A43: $93
    ld h, l                                       ; $4A44: $65
    jr jr_019_4A8D                                ; $4A45: $18 $46

    ld c, a                                       ; $4A47: $4F
    ld h, h                                       ; $4A48: $64
    add hl, hl                                    ; $4A49: $29
    ld b, a                                       ; $4A4A: $47
    ld l, c                                       ; $4A4B: $69
    ld l, $47                                     ; $4A4C: $2E $47
    ld h, [hl]                                    ; $4A4E: $66
    ret nz                                        ; $4A4F: $C0

    ld e, h                                       ; $4A50: $5C
    ld hl, $0005                                  ; $4A51: $21 $05 $00
    add c                                         ; $4A54: $81
    ld e, l                                       ; $4A55: $5D
    dec b                                         ; $4A56: $05
    dec b                                         ; $4A57: $05

jr_019_4A58:
    call $00D0                                    ; $4A58: $CD $D0 $00
    jr nz, jr_019_4A58                            ; $4A5B: $20 $FB

    ld d, b                                       ; $4A5D: $50
    ld [hl+], a                                   ; $4A5E: $22
    dec b                                         ; $4A5F: $05
    ld b, b                                       ; $4A60: $40
    dec bc                                        ; $4A61: $0B
    nop                                           ; $4A62: $00
    dec b                                         ; $4A63: $05
    jr nz, jr_019_4A34                            ; $4A64: $20 $CE

    ld h, e                                       ; $4A66: $63
    ld a, [bc]                                    ; $4A67: $0A
    add hl, bc                                    ; $4A68: $09
    ld [hl], d                                    ; $4A69: $72
    pop de                                        ; $4A6A: $D1
    nop                                           ; $4A6B: $00
    ld [hl+], a                                   ; $4A6C: $22
    jp c, $1940                                   ; $4A6D: $DA $40 $19

    ld sp, $0540                                  ; $4A70: $31 $40 $05
    rra                                           ; $4A73: $1F
    adc $63                                       ; $4A74: $CE $63
    ld a, [bc]                                    ; $4A76: $0A
    add hl, bc                                    ; $4A77: $09
    ld [hl], d                                    ; $4A78: $72

jr_019_4A79:
    pop de                                        ; $4A79: $D1
    nop                                           ; $4A7A: $00
    ld [hl+], a                                   ; $4A7B: $22
    jp c, $1940                                   ; $4A7C: $DA $40 $19

    ld sp, $0B40                                  ; $4A7F: $31 $40 $0B
    jr nz, @+$0D                                  ; $4A82: $20 $0B

    rra                                           ; $4A84: $1F
    ld l, e                                       ; $4A85: $6B
    inc [hl]                                      ; $4A86: $34
    dec c                                         ; $4A87: $0D
    jr nc, jr_019_4AF4                            ; $4A88: $30 $6A

    nop                                           ; $4A8A: $00
    add b                                         ; $4A8B: $80
    nop                                           ; $4A8C: $00

jr_019_4A8D:
    ld sp, $4319                                  ; $4A8D: $31 $19 $43
    ld c, d                                       ; $4A90: $4A
    ld [hl+], a                                   ; $4A91: $22
    adc $40                                       ; $4A92: $CE $40
    nop                                           ; $4A94: $00
    add d                                         ; $4A95: $82
    rra                                           ; $4A96: $1F
    inc d                                         ; $4A97: $14
    sub h                                         ; $4A98: $94
    ld b, d                                       ; $4A99: $42
    ld [bc], a                                    ; $4A9A: $02
    dec e                                         ; $4A9B: $1D
    nop                                           ; $4A9C: $00
    rrca                                          ; $4A9D: $0F
    dec l                                         ; $4A9E: $2D
    ld b, l                                       ; $4A9F: $45
    add hl, de                                    ; $4AA0: $19
    bit 1, c                                      ; $4AA1: $CB $49
    ld bc, $0A03                                  ; $4AA3: $01 $03 $0A
    ld b, l                                       ; $4AA6: $45
    cpl                                           ; $4AA7: $2F
    ld sp, hl                                     ; $4AA8: $F9
    ld b, h                                       ; $4AA9: $44
    ld bc, $1702                                  ; $4AAA: $01 $02 $17
    ld b, l                                       ; $4AAD: $45
    add hl, de                                    ; $4AAE: $19
    ld h, $4B                                     ; $4AAF: $26 $4B
    ld bc, $020F                                  ; $4AB1: $01 $0F $02
    ld b, l                                       ; $4AB4: $45
    add hl, de                                    ; $4AB5: $19
    ld l, a                                       ; $4AB6: $6F
    ld c, e                                       ; $4AB7: $4B
    ld bc, $0B02                                  ; $4AB8: $01 $02 $0B
    ld b, l                                       ; $4ABB: $45
    add hl, de                                    ; $4ABC: $19
    ld c, c                                       ; $4ABD: $49
    ld c, e                                       ; $4ABE: $4B
    ld bc, $0015                                  ; $4ABF: $01 $15 $00
    ld b, l                                       ; $4AC2: $45
    add hl, de                                    ; $4AC3: $19
    ld h, $4B                                     ; $4AC4: $26 $4B
    ld b, h                                       ; $4AC6: $44
    ld hl, sp+$4A                                 ; $4AC7: $F8 $4A
    ld b, e                                       ; $4AC9: $43
    nop                                           ; $4ACA: $00
    ld c, l                                       ; $4ACB: $4D
    and e                                         ; $4ACC: $A3
    ld [$F819], sp                                ; $4ACD: $08 $19 $F8
    ld c, d                                       ; $4AD0: $4A
    sbc e                                         ; $4AD1: $9B
    ld a, b                                       ; $4AD2: $78
    ld [hl], b                                    ; $4AD3: $70
    sbc a                                         ; $4AD4: $9F
    ld c, a                                       ; $4AD5: $4F
    ld [hl], a                                    ; $4AD6: $77
    ld hl, $48FE                                  ; $4AD7: $21 $FE $48
    ld h, l                                       ; $4ADA: $65
    ld a, c                                       ; $4ADB: $79
    inc l                                         ; $4ADC: $2C
    jr nz, jr_019_4B53                            ; $4ADD: $20 $74

    ld l, b                                       ; $4ADF: $68
    ld h, l                                       ; $4AE0: $65
    ld [hl], d                                    ; $4AE1: $72
    ld h, l                                       ; $4AE2: $65
    daa                                           ; $4AE3: $27
    ld [hl], e                                    ; $4AE4: $73
    rst $38                                       ; $4AE5: $FF
    ld [hl], e                                    ; $4AE6: $73
    ld l, a                                       ; $4AE7: $6F
    ld l, l                                       ; $4AE8: $6D
    ld h, l                                       ; $4AE9: $65
    ld [hl], h                                    ; $4AEA: $74
    ld l, b                                       ; $4AEB: $68
    ld l, c                                       ; $4AEC: $69
    ld l, [hl]                                    ; $4AED: $6E
    ld h, a                                       ; $4AEE: $67
    jr nz, @+$6A                                  ; $4AEF: $20 $68

    ld h, l                                       ; $4AF1: $65
    ld [hl], d                                    ; $4AF2: $72
    ld h, l                                       ; $4AF3: $65

jr_019_4AF4:
    ld l, $FE                                     ; $4AF4: $2E $FE
    db $FD                                        ; $4AF6: $FD
    sbc d                                         ; $4AF7: $9A
    and h                                         ; $4AF8: $A4
    ld c, l                                       ; $4AF9: $4D
    and e                                         ; $4AFA: $A3
    ld [$2300], sp                                ; $4AFB: $08 $00 $23
    ld e, b                                       ; $4AFE: $58
    ret nc                                        ; $4AFF: $D0

    ld b, h                                       ; $4B00: $44
    ld e, $4B                                     ; $4B01: $1E $4B
    ld b, e                                       ; $4B03: $43
    nop                                           ; $4B04: $00
    ld c, l                                       ; $4B05: $4D
    and e                                         ; $4B06: $A3
    db $10                                        ; $4B07: $10
    add hl, de                                    ; $4B08: $19
    ld e, $4B                                     ; $4B09: $1E $4B
    sbc e                                         ; $4B0B: $9B
    ld a, b                                       ; $4B0C: $78
    ld [hl], b                                    ; $4B0D: $70
    sbc a                                         ; $4B0E: $9F
    ld d, a                                       ; $4B0F: $57
    ld l, b                                       ; $4B10: $68
    ld h, c                                       ; $4B11: $61
    ld [hl], h                                    ; $4B12: $74
    daa                                           ; $4B13: $27
    ld [hl], e                                    ; $4B14: $73
    jr nz, jr_019_4B8B                            ; $4B15: $20 $74

    ld l, b                                       ; $4B17: $68
    ld l, c                                       ; $4B18: $69
    ld [hl], e                                    ; $4B19: $73
    ccf                                           ; $4B1A: $3F
    cp $FD                                        ; $4B1B: $FE $FD
    sbc d                                         ; $4B1D: $9A
    and h                                         ; $4B1E: $A4
    ld c, l                                       ; $4B1F: $4D
    and e                                         ; $4B20: $A3
    stop                                          ; $4B21: $10 $00
    inc bc                                        ; $4B23: $03
    scf                                           ; $4B24: $37
    ret nc                                        ; $4B25: $D0

    sub e                                         ; $4B26: $93
    ld h, l                                       ; $4B27: $65
    ld [hl], $46                                  ; $4B28: $36 $46
    ld c, a                                       ; $4B2A: $4F
    ld h, h                                       ; $4B2B: $64
    ld b, h                                       ; $4B2C: $44
    ld b, a                                       ; $4B2D: $47
    ld h, [hl]                                    ; $4B2E: $66
    ret nz                                        ; $4B2F: $C0

    ld e, h                                       ; $4B30: $5C
    ld hl, $0005                                  ; $4B31: $21 $05 $00
    add c                                         ; $4B34: $81
    ld e, l                                       ; $4B35: $5D
    dec b                                         ; $4B36: $05
    dec b                                         ; $4B37: $05

jr_019_4B38:
    ld b, c                                       ; $4B38: $41
    ret nc                                        ; $4B39: $D0

    nop                                           ; $4B3A: $00
    jr nz, jr_019_4B38                            ; $4B3B: $20 $FB

    ld d, b                                       ; $4B3D: $50
    ld [hl+], a                                   ; $4B3E: $22
    dec b                                         ; $4B3F: $05
    ld b, b                                       ; $4B40: $40
    dec bc                                        ; $4B41: $0B
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    add d                                         ; $4B44: $82
    rra                                           ; $4B45: $1F
    inc d                                         ; $4B46: $14
    sub h                                         ; $4B47: $94
    ld b, d                                       ; $4B48: $42
    sub e                                         ; $4B49: $93
    ld h, l                                       ; $4B4A: $65
    ld b, l                                       ; $4B4B: $45
    ld b, [hl]                                    ; $4B4C: $46
    ld c, a                                       ; $4B4D: $4F
    ld h, h                                       ; $4B4E: $64
    ld c, l                                       ; $4B4F: $4D
    ld b, a                                       ; $4B50: $47
    ld l, c                                       ; $4B51: $69
    ld d, d                                       ; $4B52: $52

jr_019_4B53:
    ld b, a                                       ; $4B53: $47
    ld h, [hl]                                    ; $4B54: $66
    ret nz                                        ; $4B55: $C0

    ld e, h                                       ; $4B56: $5C
    ld hl, $0005                                  ; $4B57: $21 $05 $00
    add c                                         ; $4B5A: $81
    ld e, l                                       ; $4B5B: $5D
    dec b                                         ; $4B5C: $05
    dec b                                         ; $4B5D: $05

jr_019_4B5E:
    ld b, c                                       ; $4B5E: $41
    ret nc                                        ; $4B5F: $D0

    nop                                           ; $4B60: $00
    jr nz, jr_019_4B5E                            ; $4B61: $20 $FB

    ld d, b                                       ; $4B63: $50
    ld [hl+], a                                   ; $4B64: $22
    dec b                                         ; $4B65: $05
    ld b, b                                       ; $4B66: $40
    dec bc                                        ; $4B67: $0B
    nop                                           ; $4B68: $00
    nop                                           ; $4B69: $00
    add d                                         ; $4B6A: $82
    rra                                           ; $4B6B: $1F
    inc d                                         ; $4B6C: $14
    sub h                                         ; $4B6D: $94
    ld b, d                                       ; $4B6E: $42
    sub e                                         ; $4B6F: $93

jr_019_4B70:
    ld h, l                                       ; $4B70: $65
    daa                                           ; $4B71: $27
    ld b, [hl]                                    ; $4B72: $46
    ld c, a                                       ; $4B73: $4F
    ld h, h                                       ; $4B74: $64
    scf                                           ; $4B75: $37
    ld b, a                                       ; $4B76: $47
    ld h, [hl]                                    ; $4B77: $66

jr_019_4B78:
    ret nz                                        ; $4B78: $C0

    ld e, h                                       ; $4B79: $5C
    ld hl, $1995                                  ; $4B7A: $21 $95 $19
    ldh [rWX], a                                  ; $4B7D: $E0 $4B
    dec b                                         ; $4B7F: $05
    nop                                           ; $4B80: $00
    add c                                         ; $4B81: $81
    ld e, l                                       ; $4B82: $5D
    dec b                                         ; $4B83: $05
    dec b                                         ; $4B84: $05

jr_019_4B85:
    sbc e                                         ; $4B85: $9B
    ret nc                                        ; $4B86: $D0

jr_019_4B87:
    nop                                           ; $4B87: $00
    jr nz, jr_019_4B85                            ; $4B88: $20 $FB

    ld d, b                                       ; $4B8A: $50

jr_019_4B8B:
    ld [hl+], a                                   ; $4B8B: $22
    dec b                                         ; $4B8C: $05
    ld b, b                                       ; $4B8D: $40
    dec bc                                        ; $4B8E: $0B
    nop                                           ; $4B8F: $00
    dec b                                         ; $4B90: $05
    ld [bc], a                                    ; $4B91: $02
    ld l, e                                       ; $4B92: $6B
    ld c, d                                       ; $4B93: $4A
    rrca                                          ; $4B94: $0F
    ld [bc], a                                    ; $4B95: $02
    ld c, e                                       ; $4B96: $4B
    ret nc                                        ; $4B97: $D0

    nop                                           ; $4B98: $00
    ld [hl+], a                                   ; $4B99: $22
    inc b                                         ; $4B9A: $04
    ld b, b                                       ; $4B9B: $40
    ld [hl+], a                                   ; $4B9C: $22
    inc b                                         ; $4B9D: $04
    ld b, b                                       ; $4B9E: $40
    dec b                                         ; $4B9F: $05
    jr nz, jr_019_4B70                            ; $4BA0: $20 $CE

    ld h, e                                       ; $4BA2: $63
    ld a, [bc]                                    ; $4BA3: $0A
    add hl, bc                                    ; $4BA4: $09
    jr jr_019_4B78                                ; $4BA5: $18 $D1

    add hl, de                                    ; $4BA7: $19
    ld [hl+], a                                   ; $4BA8: $22
    jp c, $1940                                   ; $4BA9: $DA $40 $19

    ld sp, $0540                                  ; $4BAC: $31 $40 $05
    rra                                           ; $4BAF: $1F
    adc $63                                       ; $4BB0: $CE $63
    ld a, [bc]                                    ; $4BB2: $0A
    add hl, bc                                    ; $4BB3: $09
    jr jr_019_4B87                                ; $4BB4: $18 $D1

    add hl, de                                    ; $4BB6: $19
    ld [hl+], a                                   ; $4BB7: $22
    jp c, $1940                                   ; $4BB8: $DA $40 $19

    ld sp, $0B40                                  ; $4BBB: $31 $40 $0B
    ld [bc], a                                    ; $4BBE: $02
    dec bc                                        ; $4BBF: $0B
    jr nz, @+$0D                                  ; $4BC0: $20 $0B

    rra                                           ; $4BC2: $1F
    ld l, e                                       ; $4BC3: $6B
    inc [hl]                                      ; $4BC4: $34
    dec c                                         ; $4BC5: $0D
    jr nc, @+$6C                                  ; $4BC6: $30 $6A

    sub b                                         ; $4BC8: $90
    add c                                         ; $4BC9: $81
    nop                                           ; $4BCA: $00
    ld sp, $6F19                                  ; $4BCB: $31 $19 $6F
    ld c, e                                       ; $4BCE: $4B
    ld [hl+], a                                   ; $4BCF: $22
    adc $40                                       ; $4BD0: $CE $40

jr_019_4BD2:
    nop                                           ; $4BD2: $00
    add d                                         ; $4BD3: $82
    rra                                           ; $4BD4: $1F
    inc d                                         ; $4BD5: $14
    ld b, e                                       ; $4BD6: $43
    nop                                           ; $4BD7: $00
    xor [hl]                                      ; $4BD8: $AE
    and c                                         ; $4BD9: $A1
    ld b, b                                       ; $4BDA: $40
    add hl, de                                    ; $4BDB: $19
    ld a, a                                       ; $4BDC: $7F
    ld c, h                                       ; $4BDD: $4C

jr_019_4BDE:
    sub h                                         ; $4BDE: $94
    ld b, d                                       ; $4BDF: $42
    ld b, e                                       ; $4BE0: $43
    ld [$010F], sp                                ; $4BE1: $08 $0F $01
    inc h                                         ; $4BE4: $24
    rst $00                                       ; $4BE5: $C7
    ld b, $2A                                     ; $4BE6: $06 $2A
    nop                                           ; $4BE8: $00
    rrca                                          ; $4BE9: $0F
    ld bc, $C725                                  ; $4BEA: $01 $25 $C7
    ld b, $B0                                     ; $4BED: $06 $B0
    nop                                           ; $4BEF: $00
    add hl, de                                    ; $4BF0: $19
    rst $30                                       ; $4BF1: $F7
    ld c, e                                       ; $4BF2: $4B
    ld b, l                                       ; $4BF3: $45
    ld [hl+], a                                   ; $4BF4: $22
    ld b, $40                                     ; $4BF5: $06 $40
    xor a                                         ; $4BF7: $AF
    xor [hl]                                      ; $4BF8: $AE
    and c                                         ; $4BF9: $A1
    ld b, b                                       ; $4BFA: $40
    ld b, l                                       ; $4BFB: $45
    add hl, de                                    ; $4BFC: $19
    rst $38                                       ; $4BFD: $FF
    ld c, e                                       ; $4BFE: $4B
    adc b                                         ; $4BFF: $88
    nop                                           ; $4C00: $00
    ld a, [hl+]                                   ; $4C01: $2A
    ld bc, $0007                                  ; $4C02: $01 $07 $00
    rst $10                                       ; $4C05: $D7
    ld h, l                                       ; $4C06: $65
    add hl, bc                                    ; $4C07: $09
    nop                                           ; $4C08: $00
    add hl, de                                    ; $4C09: $19
    inc h                                         ; $4C0A: $24
    ld c, h                                       ; $4C0B: $4C
    dec b                                         ; $4C0C: $05
    inc bc                                        ; $4C0D: $03
    ld l, e                                       ; $4C0E: $6B
    ld c, d                                       ; $4C0F: $4A
    nop                                           ; $4C10: $00
    nop                                           ; $4C11: $00
    nop                                           ; $4C12: $00
    ret nc                                        ; $4C13: $D0

    ld h, h                                       ; $4C14: $64
    add hl, de                                    ; $4C15: $19
    ld b, c                                       ; $4C16: $41
    ld c, h                                       ; $4C17: $4C
    ld [hl+], a                                   ; $4C18: $22
    inc b                                         ; $4C19: $04
    ld b, b                                       ; $4C1A: $40
    ld l, e                                       ; $4C1B: $6B
    jr nz, jr_019_4C42                            ; $4C1C: $20 $24

    ret nz                                        ; $4C1E: $C0

    ld h, h                                       ; $4C1F: $64
    ld b, b                                       ; $4C20: $40
    add [hl]                                      ; $4C21: $86
    nop                                           ; $4C22: $00
    ld b, d                                       ; $4C23: $42
    dec d                                         ; $4C24: $15
    jr nz, jr_019_4BD2                            ; $4C25: $20 $AB

    ld d, b                                       ; $4C27: $50
    stop                                          ; $4C28: $10 $00
    dec bc                                        ; $4C2A: $0B
    inc bc                                        ; $4C2B: $03
    dec d                                         ; $4C2C: $15
    jr nz, jr_019_4C8C                            ; $4C2D: $20 $5D

    ld d, b                                       ; $4C2F: $50
    db $10                                        ; $4C30: $10
    jr nz, jr_019_4BDE                            ; $4C31: $20 $AB

    ld d, b                                       ; $4C33: $50
    stop                                          ; $4C34: $10 $00
    ld e, d                                       ; $4C36: $5A
    add hl, de                                    ; $4C37: $19
    ld c, h                                       ; $4C38: $4C
    ld c, h                                       ; $4C39: $4C
    inc de                                        ; $4C3A: $13
    add c                                         ; $4C3B: $81
    ld e, l                                       ; $4C3C: $5D
    ld b, l                                       ; $4C3D: $45
    jr nz, @-$53                                  ; $4C3E: $20 $AB

    ld d, b                                       ; $4C40: $50
    rrca                                          ; $4C41: $0F

jr_019_4C42:
    nop                                           ; $4C42: $00
    dec de                                        ; $4C43: $1B
    inc bc                                        ; $4C44: $03
    dec d                                         ; $4C45: $15
    ld de, $7978                                  ; $4C46: $11 $78 $79
    ld b, b                                       ; $4C49: $40
    nop                                           ; $4C4A: $00
    ld b, d                                       ; $4C4B: $42
    add e                                         ; $4C4C: $83
    ld bc, $0003                                  ; $4C4D: $01 $03 $00
    nop                                           ; $4C50: $00
    add e                                         ; $4C51: $83
    ld bc, $00FD                                  ; $4C52: $01 $FD $00
    nop                                           ; $4C55: $00
    add e                                         ; $4C56: $83
    ld bc, $FD03                                  ; $4C57: $01 $03 $FD
    nop                                           ; $4C5A: $00
    add e                                         ; $4C5B: $83
    ld bc, $03FD                                  ; $4C5C: $01 $FD $03
    nop                                           ; $4C5F: $00
    add e                                         ; $4C60: $83
    ld bc, $FD00                                  ; $4C61: $01 $00 $FD
    nop                                           ; $4C64: $00
    add e                                         ; $4C65: $83
    ld bc, $0300                                  ; $4C66: $01 $00 $03
    nop                                           ; $4C69: $00
    add hl, bc                                    ; $4C6A: $09
    ld [bc], a                                    ; $4C6B: $02
    add hl, de                                    ; $4C6C: $19
    ld [hl], b                                    ; $4C6D: $70
    ld c, h                                       ; $4C6E: $4C
    ld b, d                                       ; $4C6F: $42
    dec c                                         ; $4C70: $0D
    nop                                           ; $4C71: $00
    nop                                           ; $4C72: $00
    nop                                           ; $4C73: $00
    nop                                           ; $4C74: $00
    jp nz, $0D54                                  ; $4C75: $C2 $54 $0D

    rst $38                                       ; $4C78: $FF
    nop                                           ; $4C79: $00
    ld [c], a                                     ; $4C7A: $E2
    rst $38                                       ; $4C7B: $FF
    ld [$4244], sp                                ; $4C7C: $08 $44 $42
    inc bc                                        ; $4C7F: $03
    ld [bc], a                                    ; $4C80: $02
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00
    nop                                           ; $4C84: $00
    jp nz, $0354                                  ; $4C85: $C2 $54 $03

    ld [bc], a                                    ; $4C88: $02
    rst $38                                       ; $4C89: $FF
    nop                                           ; $4C8A: $00
    ld [c], a                                     ; $4C8B: $E2

jr_019_4C8C:
    rst $38                                       ; $4C8C: $FF
    ld [$9444], sp                                ; $4C8D: $08 $44 $94
    ld b, d                                       ; $4C90: $42
    ld bc, $0510                                  ; $4C91: $01 $10 $05
    ld b, l                                       ; $4C94: $45
    cpl                                           ; $4C95: $2F
    ld sp, hl                                     ; $4C96: $F9
    ld b, h                                       ; $4C97: $44
    ld [bc], a                                    ; $4C98: $02
    ld [bc], a                                    ; $4C99: $02
    dec h                                         ; $4C9A: $25
    nop                                           ; $4C9B: $00
    inc de                                        ; $4C9C: $13
    ld b, l                                       ; $4C9D: $45
    add hl, de                                    ; $4C9E: $19
    ld hl, sp+$54                                 ; $4C9F: $F8 $54
    ld [bc], a                                    ; $4CA1: $02
    inc e                                         ; $4CA2: $1C
    inc bc                                        ; $4CA3: $03
    nop                                           ; $4CA4: $00
    dec e                                         ; $4CA5: $1D
    ld b, l                                       ; $4CA6: $45
    add hl, de                                    ; $4CA7: $19
    inc sp                                        ; $4CA8: $33
    ld d, c                                       ; $4CA9: $51
    ld bc, $0B05                                  ; $4CAA: $01 $05 $0B
    ld b, l                                       ; $4CAD: $45
    add hl, de                                    ; $4CAE: $19
    ret z                                         ; $4CAF: $C8

    ld c, h                                       ; $4CB0: $4C
    ld bc, $1210                                  ; $4CB1: $01 $10 $12
    ld b, l                                       ; $4CB4: $45
    add hl, de                                    ; $4CB5: $19
    xor $4C                                       ; $4CB6: $EE $4C
    and h                                         ; $4CB8: $A4
    ld c, c                                       ; $4CB9: $49
    and e                                         ; $4CBA: $A3
    ld [$2300], sp                                ; $4CBB: $08 $00 $23
    ld b, c                                       ; $4CBE: $41
    ret nc                                        ; $4CBF: $D0

    and h                                         ; $4CC0: $A4
    ld c, c                                       ; $4CC1: $49
    and e                                         ; $4CC2: $A3
    stop                                          ; $4CC3: $10 $00
    dec d                                         ; $4CC5: $15
    ld b, d                                       ; $4CC6: $42
    ret nc                                        ; $4CC7: $D0

    sub e                                         ; $4CC8: $93
    ld h, l                                       ; $4CC9: $65
    ld h, e                                       ; $4CCA: $63
    ld b, [hl]                                    ; $4CCB: $46
    ld c, a                                       ; $4CCC: $4F
    ld h, h                                       ; $4CCD: $64
    ld l, h                                       ; $4CCE: $6C
    ld b, a                                       ; $4CCF: $47
    ld l, c                                       ; $4CD0: $69
    ld [hl], c                                    ; $4CD1: $71
    ld b, a                                       ; $4CD2: $47
    ld h, [hl]                                    ; $4CD3: $66
    ret nz                                        ; $4CD4: $C0

    ld e, h                                       ; $4CD5: $5C
    ld hl, $0005                                  ; $4CD6: $21 $05 $00
    add c                                         ; $4CD9: $81
    ld e, l                                       ; $4CDA: $5D
    dec b                                         ; $4CDB: $05
    dec b                                         ; $4CDC: $05

jr_019_4CDD:
    ld b, c                                       ; $4CDD: $41
    ret nc                                        ; $4CDE: $D0

    nop                                           ; $4CDF: $00
    jr nz, jr_019_4CDD                            ; $4CE0: $20 $FB

    ld d, b                                       ; $4CE2: $50
    ld [hl+], a                                   ; $4CE3: $22
    dec b                                         ; $4CE4: $05
    ld b, b                                       ; $4CE5: $40
    dec bc                                        ; $4CE6: $0B
    nop                                           ; $4CE7: $00
    nop                                           ; $4CE8: $00
    add d                                         ; $4CE9: $82
    rra                                           ; $4CEA: $1F
    inc d                                         ; $4CEB: $14
    sub h                                         ; $4CEC: $94
    ld b, d                                       ; $4CED: $42
    sub e                                         ; $4CEE: $93

jr_019_4CEF:
    ld h, l                                       ; $4CEF: $65
    ld d, h                                       ; $4CF0: $54
    ld b, [hl]                                    ; $4CF1: $46
    ld c, a                                       ; $4CF2: $4F
    ld h, h                                       ; $4CF3: $64
    ld e, e                                       ; $4CF4: $5B
    ld b, a                                       ; $4CF5: $47
    ld h, [hl]                                    ; $4CF6: $66
    ret nz                                        ; $4CF7: $C0

    ld e, h                                       ; $4CF8: $5C
    ld hl, $1995                                  ; $4CF9: $21 $95 $19
    ld e, a                                       ; $4CFC: $5F
    ld c, l                                       ; $4CFD: $4D
    dec b                                         ; $4CFE: $05
    nop                                           ; $4CFF: $00
    add c                                         ; $4D00: $81
    ld e, l                                       ; $4D01: $5D
    dec b                                         ; $4D02: $05
    dec b                                         ; $4D03: $05

jr_019_4D04:
    or h                                          ; $4D04: $B4
    ret nc                                        ; $4D05: $D0

    nop                                           ; $4D06: $00
    jr nz, jr_019_4D04                            ; $4D07: $20 $FB

    ld d, b                                       ; $4D09: $50
    ld [hl+], a                                   ; $4D0A: $22
    dec b                                         ; $4D0B: $05
    ld b, b                                       ; $4D0C: $40
    dec bc                                        ; $4D0D: $0B
    nop                                           ; $4D0E: $00
    dec b                                         ; $4D0F: $05
    ld [bc], a                                    ; $4D10: $02
    ld l, e                                       ; $4D11: $6B
    ld c, d                                       ; $4D12: $4A
    db $10                                        ; $4D13: $10
    ld [de], a                                    ; $4D14: $12
    add [hl]                                      ; $4D15: $86
    jp nc, $2200                                  ; $4D16: $D2 $00 $22

    inc b                                         ; $4D19: $04
    ld b, b                                       ; $4D1A: $40
    ld [hl+], a                                   ; $4D1B: $22
    inc b                                         ; $4D1C: $04
    ld b, b                                       ; $4D1D: $40
    dec b                                         ; $4D1E: $05
    jr nz, jr_019_4CEF                            ; $4D1F: $20 $CE

    ld h, e                                       ; $4D21: $63
    ld a, [bc]                                    ; $4D22: $0A
    add hl, bc                                    ; $4D23: $09
    ld b, l                                       ; $4D24: $45
    pop de                                        ; $4D25: $D1
    add hl, de                                    ; $4D26: $19
    ld [hl+], a                                   ; $4D27: $22
    jp c, $1940                                   ; $4D28: $DA $40 $19

    ld sp, $0540                                  ; $4D2B: $31 $40 $05
    rra                                           ; $4D2E: $1F
    adc $63                                       ; $4D2F: $CE $63
    ld a, [bc]                                    ; $4D31: $0A
    add hl, bc                                    ; $4D32: $09
    ld b, l                                       ; $4D33: $45
    pop de                                        ; $4D34: $D1
    add hl, de                                    ; $4D35: $19
    ld [hl+], a                                   ; $4D36: $22
    jp c, $1940                                   ; $4D37: $DA $40 $19

    ld sp, $0B40                                  ; $4D3A: $31 $40 $0B
    ld [bc], a                                    ; $4D3D: $02
    dec bc                                        ; $4D3E: $0B
    jr nz, @+$0D                                  ; $4D3F: $20 $0B

    rra                                           ; $4D41: $1F
    ld l, e                                       ; $4D42: $6B
    inc [hl]                                      ; $4D43: $34
    dec c                                         ; $4D44: $0D
    jr nc, jr_019_4DB1                            ; $4D45: $30 $6A

    sub b                                         ; $4D47: $90
    add c                                         ; $4D48: $81
    nop                                           ; $4D49: $00
    ld sp, $EE19                                  ; $4D4A: $31 $19 $EE
    ld c, h                                       ; $4D4D: $4C
    ld [hl+], a                                   ; $4D4E: $22
    adc $40                                       ; $4D4F: $CE $40

jr_019_4D51:
    nop                                           ; $4D51: $00
    add d                                         ; $4D52: $82
    rra                                           ; $4D53: $1F
    inc d                                         ; $4D54: $14
    ld b, e                                       ; $4D55: $43
    nop                                           ; $4D56: $00
    xor [hl]                                      ; $4D57: $AE
    and c                                         ; $4D58: $A1
    add b                                         ; $4D59: $80
    add hl, de                                    ; $4D5A: $19
    cp $4D                                        ; $4D5B: $FE $4D
    sub h                                         ; $4D5D: $94
    ld b, d                                       ; $4D5E: $42
    ld b, e                                       ; $4D5F: $43
    ld [$010F], sp                                ; $4D60: $08 $0F $01
    inc h                                         ; $4D63: $24
    rst $00                                       ; $4D64: $C7
    ld b, $2A                                     ; $4D65: $06 $2A
    nop                                           ; $4D67: $00
    rrca                                          ; $4D68: $0F
    ld bc, $C725                                  ; $4D69: $01 $25 $C7
    ld b, $B0                                     ; $4D6C: $06 $B0
    nop                                           ; $4D6E: $00
    add hl, de                                    ; $4D6F: $19
    halt                                          ; $4D70: $76
    ld c, l                                       ; $4D71: $4D
    ld b, l                                       ; $4D72: $45
    ld [hl+], a                                   ; $4D73: $22
    ld b, $40                                     ; $4D74: $06 $40
    xor a                                         ; $4D76: $AF
    xor [hl]                                      ; $4D77: $AE
    and c                                         ; $4D78: $A1
    add b                                         ; $4D79: $80
    ld b, l                                       ; $4D7A: $45
    add hl, de                                    ; $4D7B: $19
    ld a, [hl]                                    ; $4D7C: $7E
    ld c, l                                       ; $4D7D: $4D
    adc b                                         ; $4D7E: $88
    nop                                           ; $4D7F: $00
    ld a, [hl+]                                   ; $4D80: $2A
    ld bc, $0007                                  ; $4D81: $01 $07 $00
    rst $10                                       ; $4D84: $D7
    ld h, l                                       ; $4D85: $65
    add hl, bc                                    ; $4D86: $09
    nop                                           ; $4D87: $00
    add hl, de                                    ; $4D88: $19
    and e                                         ; $4D89: $A3
    ld c, l                                       ; $4D8A: $4D
    dec b                                         ; $4D8B: $05
    inc bc                                        ; $4D8C: $03
    ld l, e                                       ; $4D8D: $6B
    ld c, d                                       ; $4D8E: $4A
    nop                                           ; $4D8F: $00
    nop                                           ; $4D90: $00
    nop                                           ; $4D91: $00
    ret nc                                        ; $4D92: $D0

    ld h, h                                       ; $4D93: $64
    add hl, de                                    ; $4D94: $19
    ret nz                                        ; $4D95: $C0

    ld c, l                                       ; $4D96: $4D
    ld [hl+], a                                   ; $4D97: $22
    inc b                                         ; $4D98: $04
    ld b, b                                       ; $4D99: $40
    ld l, e                                       ; $4D9A: $6B
    jr nz, jr_019_4DC1                            ; $4D9B: $20 $24

    ret nz                                        ; $4D9D: $C0

    ld h, h                                       ; $4D9E: $64
    ld b, b                                       ; $4D9F: $40
    add [hl]                                      ; $4DA0: $86
    nop                                           ; $4DA1: $00
    ld b, d                                       ; $4DA2: $42
    dec d                                         ; $4DA3: $15
    jr nz, jr_019_4D51                            ; $4DA4: $20 $AB

    ld d, b                                       ; $4DA6: $50
    stop                                          ; $4DA7: $10 $00
    dec bc                                        ; $4DA9: $0B
    inc bc                                        ; $4DAA: $03
    dec d                                         ; $4DAB: $15
    jr nz, jr_019_4E0B                            ; $4DAC: $20 $5D

    ld d, b                                       ; $4DAE: $50
    jr jr_019_4DD1                                ; $4DAF: $18 $20

jr_019_4DB1:
    xor e                                         ; $4DB1: $AB
    ld d, b                                       ; $4DB2: $50
    stop                                          ; $4DB3: $10 $00
    ld e, d                                       ; $4DB5: $5A
    add hl, de                                    ; $4DB6: $19
    bit 1, l                                      ; $4DB7: $CB $4D
    inc de                                        ; $4DB9: $13
    add c                                         ; $4DBA: $81
    ld e, l                                       ; $4DBB: $5D
    ld b, l                                       ; $4DBC: $45
    jr nz, @-$53                                  ; $4DBD: $20 $AB

    ld d, b                                       ; $4DBF: $50
    rrca                                          ; $4DC0: $0F

jr_019_4DC1:
    nop                                           ; $4DC1: $00
    dec de                                        ; $4DC2: $1B
    inc bc                                        ; $4DC3: $03
    dec d                                         ; $4DC4: $15
    ld de, $7978                                  ; $4DC5: $11 $78 $79
    ld b, b                                       ; $4DC8: $40
    nop                                           ; $4DC9: $00
    ld b, d                                       ; $4DCA: $42
    add e                                         ; $4DCB: $83
    ld bc, $0003                                  ; $4DCC: $01 $03 $00
    nop                                           ; $4DCF: $00
    add e                                         ; $4DD0: $83

jr_019_4DD1:
    ld bc, $00FD                                  ; $4DD1: $01 $FD $00
    nop                                           ; $4DD4: $00
    add e                                         ; $4DD5: $83
    ld bc, $FD03                                  ; $4DD6: $01 $03 $FD
    nop                                           ; $4DD9: $00
    add e                                         ; $4DDA: $83
    ld bc, $03FD                                  ; $4DDB: $01 $FD $03
    nop                                           ; $4DDE: $00
    add e                                         ; $4DDF: $83
    ld bc, $FD00                                  ; $4DE0: $01 $00 $FD
    nop                                           ; $4DE3: $00
    add e                                         ; $4DE4: $83
    ld bc, $0300                                  ; $4DE5: $01 $00 $03
    nop                                           ; $4DE8: $00
    add hl, bc                                    ; $4DE9: $09
    ld [bc], a                                    ; $4DEA: $02
    add hl, de                                    ; $4DEB: $19
    rst $28                                       ; $4DEC: $EF
    ld c, l                                       ; $4DED: $4D
    ld b, d                                       ; $4DEE: $42
    dec c                                         ; $4DEF: $0D
    nop                                           ; $4DF0: $00
    nop                                           ; $4DF1: $00
    nop                                           ; $4DF2: $00
    nop                                           ; $4DF3: $00
    jp $0D54                                      ; $4DF4: $C3 $54 $0D


    rst $38                                       ; $4DF7: $FF
    nop                                           ; $4DF8: $00
    db $DD                                        ; $4DF9: $DD
    rst $38                                       ; $4DFA: $FF
    ld [$4244], sp                                ; $4DFB: $08 $44 $42
    inc bc                                        ; $4DFE: $03
    ld [bc], a                                    ; $4DFF: $02
    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    nop                                           ; $4E02: $00
    nop                                           ; $4E03: $00
    jp $0354                                      ; $4E04: $C3 $54 $03


    ld [bc], a                                    ; $4E07: $02
    rst $38                                       ; $4E08: $FF
    nop                                           ; $4E09: $00
    db $DD                                        ; $4E0A: $DD

jr_019_4E0B:
    rst $38                                       ; $4E0B: $FF
    ld [$9444], sp                                ; $4E0C: $08 $44 $94
    ld b, d                                       ; $4E0F: $42
    ld [bc], a                                    ; $4E10: $02
    inc bc                                        ; $4E11: $03
    inc e                                         ; $4E12: $1C
    dec e                                         ; $4E13: $1D
    nop                                           ; $4E14: $00
    ld b, l                                       ; $4E15: $45
    add hl, de                                    ; $4E16: $19
    xor $4C                                       ; $4E17: $EE $4C
    sub [hl]                                      ; $4E19: $96
    add hl, de                                    ; $4E1A: $19
    add hl, de                                    ; $4E1B: $19
    ld c, [hl]                                    ; $4E1C: $4E
    ld bc, $261F                                  ; $4E1D: $01 $1F $26
    ld b, l                                       ; $4E20: $45
    cpl                                           ; $4E21: $2F
    ld h, l                                       ; $4E22: $65
    ld b, c                                       ; $4E23: $41
    ld b, e                                       ; $4E24: $43
    ld [$040F], sp                                ; $4E25: $08 $0F $04
    dec b                                         ; $4E28: $05
    rlca                                          ; $4E29: $07
    rrca                                          ; $4E2A: $0F
    ld bc, $A224                                  ; $4E2B: $01 $24 $A2
    dec b                                         ; $4E2E: $05
    inc bc                                        ; $4E2F: $03
    add hl, de                                    ; $4E30: $19
    ld [$4252], sp                                ; $4E31: $08 $52 $42
    sbc e                                         ; $4E34: $9B
    add sp, $55                                   ; $4E35: $E8 $55
    sbc a                                         ; $4E37: $9F
    ld e, d                                       ; $4E38: $5A
    ld b, l                                       ; $4E39: $45
    ld d, h                                       ; $4E3A: $54
    ld hl, $2121                                  ; $4E3B: $21 $21 $21
    rst $38                                       ; $4E3E: $FF
    db $FD                                        ; $4E3F: $FD
    ld b, b                                       ; $4E40: $40
    ld [$589A], sp                                ; $4E41: $08 $9A $58
    ld bc, $E89B                                  ; $4E44: $01 $9B $E8
    ld d, l                                       ; $4E47: $55
    sbc a                                         ; $4E48: $9F
    ld c, c                                       ; $4E49: $49
    jr nz, jr_019_4EB4                            ; $4E4A: $20 $68

    ld h, c                                       ; $4E4C: $61
    halt                                          ; $4E4D: $76
    ld h, l                                       ; $4E4E: $65
    jr nz, jr_019_4EB2                            ; $4E4F: $20 $61

    rst $38                                       ; $4E51: $FF
    ld [hl], b                                    ; $4E52: $70
    ld l, h                                       ; $4E53: $6C
    ld h, c                                       ; $4E54: $61
    ld l, [hl]                                    ; $4E55: $6E
    jr nz, jr_019_4ECB                            ; $4E56: $20 $73

    ld l, a                                       ; $4E58: $6F
    cp $63                                        ; $4E59: $FE $63
    ld [hl], l                                    ; $4E5B: $75
    ld l, [hl]                                    ; $4E5C: $6E
    ld l, [hl]                                    ; $4E5D: $6E
    ld l, c                                       ; $4E5E: $69
    ld l, [hl]                                    ; $4E5F: $6E
    ld h, a                                       ; $4E60: $67
    jr nz, @+$7B                                  ; $4E61: $20 $79

    ld l, a                                       ; $4E63: $6F
    ld [hl], l                                    ; $4E64: $75
    rst $38                                       ; $4E65: $FF
    ld h, e                                       ; $4E66: $63
    ld l, a                                       ; $4E67: $6F
    ld [hl], l                                    ; $4E68: $75
    ld l, h                                       ; $4E69: $6C
    ld h, h                                       ; $4E6A: $64
    jr nz, @+$64                                  ; $4E6B: $20 $62

    ld [hl], d                                    ; $4E6D: $72
    ld [hl], l                                    ; $4E6E: $75
    ld [hl], e                                    ; $4E6F: $73
    ld l, b                                       ; $4E70: $68

jr_019_4E71:
    jr nz, jr_019_4E71                            ; $4E71: $20 $FE

    ld a, c                                       ; $4E73: $79
    ld l, a                                       ; $4E74: $6F
    ld [hl], l                                    ; $4E75: $75
    ld [hl], d                                    ; $4E76: $72
    jr nz, jr_019_4EED                            ; $4E77: $20 $74

    ld h, l                                       ; $4E79: $65
    ld h, l                                       ; $4E7A: $65
    ld [hl], h                                    ; $4E7B: $74
    ld l, b                                       ; $4E7C: $68
    rst $38                                       ; $4E7D: $FF
    ld [hl], a                                    ; $4E7E: $77
    ld l, c                                       ; $4E7F: $69
    ld [hl], h                                    ; $4E80: $74
    ld l, b                                       ; $4E81: $68
    jr nz, jr_019_4EED                            ; $4E82: $20 $69

    ld [hl], h                                    ; $4E84: $74
    ld hl, $FDFE                                  ; $4E85: $21 $FE $FD
    sbc e                                         ; $4E88: $9B
    xor c                                         ; $4E89: $A9
    ld c, a                                       ; $4E8A: $4F
    sbc a                                         ; $4E8B: $9F
    ld l, $2E                                     ; $4E8C: $2E $2E
    ld l, $59                                     ; $4E8E: $2E $59
    ld c, a                                       ; $4E90: $4F
    ld d, l                                       ; $4E91: $55
    ccf                                           ; $4E92: $3F
    cp $43                                        ; $4E93: $FE $43
    ld [hl], l                                    ; $4E95: $75
    ld l, [hl]                                    ; $4E96: $6E
    ld l, [hl]                                    ; $4E97: $6E
    ld l, c                                       ; $4E98: $69
    ld l, [hl]                                    ; $4E99: $6E
    ld h, a                                       ; $4E9A: $67
    ccf                                           ; $4E9B: $3F
    ld hl, $FDFE                                  ; $4E9C: $21 $FE $FD
    sbc e                                         ; $4E9F: $9B
    add sp, $55                                   ; $4EA0: $E8 $55
    sbc a                                         ; $4EA2: $9F
    ld c, c                                       ; $4EA3: $49
    jr nz, jr_019_4F1D                            ; $4EA4: $20 $77

    ld l, c                                       ; $4EA6: $69
    ld l, h                                       ; $4EA7: $6C
    ld l, h                                       ; $4EA8: $6C
    rst $38                                       ; $4EA9: $FF
    ld [hl], e                                    ; $4EAA: $73
    ld l, b                                       ; $4EAB: $68
    ld l, a                                       ; $4EAC: $6F
    ld [hl], a                                    ; $4EAD: $77
    jr nz, jr_019_4F29                            ; $4EAE: $20 $79

    ld l, a                                       ; $4EB0: $6F
    ld [hl], l                                    ; $4EB1: $75

jr_019_4EB2:
    ld l, $FE                                     ; $4EB2: $2E $FE

jr_019_4EB4:
    db $FD                                        ; $4EB4: $FD
    sbc d                                         ; $4EB5: $9A
    ld e, b                                       ; $4EB6: $58
    ld bc, $9B42                                  ; $4EB7: $01 $42 $9B
    add sp, $55                                   ; $4EBA: $E8 $55
    sbc a                                         ; $4EBC: $9F
    ld d, a                                       ; $4EBD: $57
    ld h, l                                       ; $4EBE: $65
    jr nz, @+$76                                  ; $4EBF: $20 $74

    ld l, b                                       ; $4EC1: $68
    ld [hl], d                                    ; $4EC2: $72
    ld l, a                                       ; $4EC3: $6F
    ld [hl], a                                    ; $4EC4: $77
    rst $38                                       ; $4EC5: $FF
    ld [hl], h                                    ; $4EC6: $74
    ld l, b                                       ; $4EC7: $68
    ld h, l                                       ; $4EC8: $65
    jr nz, jr_019_4F3D                            ; $4EC9: $20 $72

jr_019_4ECB:
    ld l, a                                       ; $4ECB: $6F
    ld h, e                                       ; $4ECC: $63
    ld l, e                                       ; $4ECD: $6B
    jr nz, @+$63                                  ; $4ECE: $20 $61

    ld [hl], h                                    ; $4ED0: $74
    cp $68                                        ; $4ED1: $FE $68
    ld l, c                                       ; $4ED3: $69
    ld l, l                                       ; $4ED4: $6D
    inc l                                         ; $4ED5: $2C
    jr nz, jr_019_4F2B                            ; $4ED6: $20 $53

    ld h, l                                       ; $4ED8: $65
    ld h, l                                       ; $4ED9: $65
    ccf                                           ; $4EDA: $3F
    cp $FD                                        ; $4EDB: $FE $FD
    sbc e                                         ; $4EDD: $9B
    xor c                                         ; $4EDE: $A9
    ld c, a                                       ; $4EDF: $4F
    sbc a                                         ; $4EE0: $9F
    ld c, e                                       ; $4EE1: $4B
    ld l, a                                       ; $4EE2: $6F
    ld [hl], d                                    ; $4EE3: $72
    ld h, a                                       ; $4EE4: $67
    inc l                                         ; $4EE5: $2C
    jr nz, jr_019_4F50                            ; $4EE6: $20 $68

    ld h, l                                       ; $4EE8: $65
    jr nz, jr_019_4F4E                            ; $4EE9: $20 $63

    ld h, c                                       ; $4EEB: $61
    ld l, [hl]                                    ; $4EEC: $6E

jr_019_4EED:
    rst $38                                       ; $4EED: $FF
    ld l, d                                       ; $4EEE: $6A
    ld [hl], l                                    ; $4EEF: $75
    ld [hl], e                                    ; $4EF0: $73
    ld [hl], h                                    ; $4EF1: $74
    jr nz, jr_019_4F61                            ; $4EF2: $20 $6D

    ld l, a                                       ; $4EF4: $6F
    halt                                          ; $4EF5: $76
    ld h, l                                       ; $4EF6: $65
    jr nz, @+$71                                  ; $4EF7: $20 $6F

    ld [hl], l                                    ; $4EF9: $75
    ld [hl], h                                    ; $4EFA: $74
    cp $6F                                        ; $4EFB: $FE $6F
    ld h, [hl]                                    ; $4EFD: $66
    jr nz, jr_019_4F74                            ; $4EFE: $20 $74

    ld l, b                                       ; $4F00: $68
    ld h, l                                       ; $4F01: $65
    jr nz, @+$79                                  ; $4F02: $20 $77

    ld h, c                                       ; $4F04: $61
    ld a, c                                       ; $4F05: $79
    ld l, $2E                                     ; $4F06: $2E $2E
    ld l, $FE                                     ; $4F08: $2E $FE
    db $FD                                        ; $4F0A: $FD
    sbc e                                         ; $4F0B: $9B
    add sp, $55                                   ; $4F0C: $E8 $55
    sbc a                                         ; $4F0E: $9F
    ld e, c                                       ; $4F0F: $59
    ld l, a                                       ; $4F10: $6F
    ld [hl], l                                    ; $4F11: $75
    jr nz, @+$69                                  ; $4F12: $20 $67

    ld l, a                                       ; $4F14: $6F
    jr nz, @+$66                                  ; $4F15: $20 $64

    ld l, a                                       ; $4F17: $6F
    ld [hl], a                                    ; $4F18: $77
    ld l, [hl]                                    ; $4F19: $6E
    rst $38                                       ; $4F1A: $FF
    ld [hl], h                                    ; $4F1B: $74
    ld l, b                                       ; $4F1C: $68

jr_019_4F1D:
    ld h, l                                       ; $4F1D: $65
    ld [hl], d                                    ; $4F1E: $72
    ld h, l                                       ; $4F1F: $65
    jr nz, jr_019_4F83                            ; $4F20: $20 $61

    ld l, [hl]                                    ; $4F22: $6E
    ld h, h                                       ; $4F23: $64
    jr nz, jr_019_4F96                            ; $4F24: $20 $70

    ld [hl], l                                    ; $4F26: $75
    ld [hl], e                                    ; $4F27: $73
    ld l, b                                       ; $4F28: $68

jr_019_4F29:
    cp $68                                        ; $4F29: $FE $68

jr_019_4F2B:
    ld l, c                                       ; $4F2B: $69
    ld l, l                                       ; $4F2C: $6D
    jr nz, @+$6B                                  ; $4F2D: $20 $69

    ld l, [hl]                                    ; $4F2F: $6E
    jr nz, jr_019_4FA6                            ; $4F30: $20 $74

    ld l, b                                       ; $4F32: $68
    ld h, l                                       ; $4F33: $65
    jr nz, jr_019_4FAD                            ; $4F34: $20 $77

    ld h, c                                       ; $4F36: $61
    ld a, c                                       ; $4F37: $79
    ld hl, $FDFE                                  ; $4F38: $21 $FE $FD
    sbc e                                         ; $4F3B: $9B
    xor c                                         ; $4F3C: $A9

jr_019_4F3D:
    ld c, a                                       ; $4F3D: $4F
    sbc a                                         ; $4F3E: $9F
    ld c, c                                       ; $4F3F: $49
    dec l                                         ; $4F40: $2D
    ld c, c                                       ; $4F41: $49
    ld [hl], h                                    ; $4F42: $74
    jr nz, jr_019_4FBC                            ; $4F43: $20 $77

Call_019_4F45:
    ld l, a                                       ; $4F45: $6F
    ld [hl], l                                    ; $4F46: $75
    ld l, h                                       ; $4F47: $6C
    ld h, h                                       ; $4F48: $64
    rst $38                                       ; $4F49: $FF
    ld h, d                                       ; $4F4A: $62
    ld h, l                                       ; $4F4B: $65
    ld [hl], h                                    ; $4F4C: $74
    ld [hl], h                                    ; $4F4D: $74

Call_019_4F4E:
jr_019_4F4E:
    ld h, l                                       ; $4F4E: $65
    ld [hl], d                                    ; $4F4F: $72

jr_019_4F50:
    jr nz, @+$6B                                  ; $4F50: $20 $69

    ld h, [hl]                                    ; $4F52: $66
    jr nz, jr_019_4FCC                            ; $4F53: $20 $77

    ld h, l                                       ; $4F55: $65
    cp $70                                        ; $4F56: $FE $70
    ld [hl], l                                    ; $4F58: $75
    ld [hl], h                                    ; $4F59: $74
    jr nz, jr_019_4FCF                            ; $4F5A: $20 $73

    ld l, a                                       ; $4F5C: $6F
    ld l, l                                       ; $4F5D: $6D
    ld h, l                                       ; $4F5E: $65
    rst $38                                       ; $4F5F: $FF
    ld b, c                                       ; $4F60: $41

jr_019_4F61:
    ld l, [hl]                                    ; $4F61: $6E
    ld l, c                                       ; $4F62: $69
    ld l, l                                       ; $4F63: $6D
    ld l, c                                       ; $4F64: $69
    ld [hl], h                                    ; $4F65: $74
    ld h, l                                       ; $4F66: $65
    jr nz, @+$71                                  ; $4F67: $20 $6F

    ld [hl], l                                    ; $4F69: $75
    ld [hl], h                                    ; $4F6A: $74
    cp $61                                        ; $4F6B: $FE $61
    ld [hl], e                                    ; $4F6D: $73
    jr nz, jr_019_4FD2                            ; $4F6E: $20 $62

    ld h, c                                       ; $4F70: $61
    ld l, c                                       ; $4F71: $69
    ld [hl], h                                    ; $4F72: $74
    rst $38                                       ; $4F73: $FF

jr_019_4F74:
    ld [hl], h                                    ; $4F74: $74
    ld l, b                                       ; $4F75: $68
    ld h, l                                       ; $4F76: $65
    ld l, [hl]                                    ; $4F77: $6E
    ld l, $2E                                     ; $4F78: $2E $2E
    ld l, $2E                                     ; $4F7A: $2E $2E
    cp $FD                                        ; $4F7C: $FE $FD
    ld e, b                                       ; $4F7E: $58
    ld b, d                                       ; $4F7F: $42
    sbc e                                         ; $4F80: $9B
    add sp, $55                                   ; $4F81: $E8 $55

jr_019_4F83:
    sbc a                                         ; $4F83: $9F
    ld d, e                                       ; $4F84: $53
    ld l, b                                       ; $4F85: $68
    ld h, c                                       ; $4F86: $61
    ld h, h                                       ; $4F87: $64
    ld h, h                                       ; $4F88: $64
    ld [hl], l                                    ; $4F89: $75
    ld [hl], b                                    ; $4F8A: $70
    jr nz, @+$5C                                  ; $4F8B: $20 $5A

    ld h, l                                       ; $4F8D: $65
    ld [hl], h                                    ; $4F8E: $74
    ld hl, $49FF                                  ; $4F8F: $21 $FF $49
    daa                                           ; $4F92: $27
    ld l, l                                       ; $4F93: $6D
    jr nz, jr_019_4FFF                            ; $4F94: $20 $69

jr_019_4F96:
    ld l, [hl]                                    ; $4F96: $6E
    jr nz, jr_019_4FFC                            ; $4F97: $20 $63

    ld l, b                                       ; $4F99: $68
    ld h, c                                       ; $4F9A: $61
    ld [hl], d                                    ; $4F9B: $72
    ld h, a                                       ; $4F9C: $67
    ld h, l                                       ; $4F9D: $65
    cp $68                                        ; $4F9E: $FE $68
    ld h, l                                       ; $4FA0: $65
    ld [hl], d                                    ; $4FA1: $72
    ld h, l                                       ; $4FA2: $65
    jr nz, jr_019_5006                            ; $4FA3: $20 $61

    ld l, [hl]                                    ; $4FA5: $6E

jr_019_4FA6:
    ld h, h                                       ; $4FA6: $64
    jr nz, jr_019_4FF2                            ; $4FA7: $20 $49

    rst $38                                       ; $4FA9: $FF
    ld [hl], e                                    ; $4FAA: $73
    ld h, c                                       ; $4FAB: $61
    ld a, c                                       ; $4FAC: $79

jr_019_4FAD:
    ld l, $2E                                     ; $4FAD: $2E $2E
    ld l, $2E                                     ; $4FAF: $2E $2E
    cp $FD                                        ; $4FB1: $FE $FD
    sbc e                                         ; $4FB3: $9B
    xor c                                         ; $4FB4: $A9
    ld c, a                                       ; $4FB5: $4F
    sbc a                                         ; $4FB6: $9F
    ld b, c                                       ; $4FB7: $41
    ld l, h                                       ; $4FB8: $6C
    ld l, h                                       ; $4FB9: $6C
    jr nz, jr_019_502E                            ; $4FBA: $20 $72

jr_019_4FBC:
    ld l, c                                       ; $4FBC: $69
    ld h, a                                       ; $4FBD: $67
    ld l, b                                       ; $4FBE: $68
    ld [hl], h                                    ; $4FBF: $74
    ld hl, $4120                                  ; $4FC0: $21 $20 $41
    ld l, h                                       ; $4FC3: $6C
    ld l, h                                       ; $4FC4: $6C
    rst $38                                       ; $4FC5: $FF
    ld [hl], d                                    ; $4FC6: $72
    ld l, c                                       ; $4FC7: $69
    ld h, a                                       ; $4FC8: $67
    ld l, b                                       ; $4FC9: $68
    ld [hl], h                                    ; $4FCA: $74
    inc l                                         ; $4FCB: $2C

jr_019_4FCC:
    jr nz, jr_019_5034                            ; $4FCC: $20 $66

    ld l, a                                       ; $4FCE: $6F

jr_019_4FCF:
    ld [hl], d                                    ; $4FCF: $72
    cp $63                                        ; $4FD0: $FE $63

jr_019_4FD2:
    ld [hl], d                                    ; $4FD2: $72
    ld a, c                                       ; $4FD3: $79
    ld l, c                                       ; $4FD4: $69
    ld l, [hl]                                    ; $4FD5: $6E
    ld h, a                                       ; $4FD6: $67
    jr nz, jr_019_5048                            ; $4FD7: $20 $6F

    ld [hl], l                                    ; $4FD9: $75
    ld [hl], h                                    ; $4FDA: $74
    rst $38                                       ; $4FDB: $FF
    ld l, h                                       ; $4FDC: $6C
    ld l, a                                       ; $4FDD: $6F
    ld [hl], l                                    ; $4FDE: $75
    ld h, h                                       ; $4FDF: $64
    ld hl, $FE21                                  ; $4FE0: $21 $21 $FE
    db $FD                                        ; $4FE3: $FD
    sbc d                                         ; $4FE4: $9A
    ld e, b                                       ; $4FE5: $58
    ld bc, $8742                                  ; $4FE6: $01 $42 $87
    inc b                                         ; $4FE9: $04
    inc b                                         ; $4FEA: $04
    dec b                                         ; $4FEB: $05
    sbc e                                         ; $4FEC: $9B
    ld a, b                                       ; $4FED: $78
    ld [hl], b                                    ; $4FEE: $70
    sbc a                                         ; $4FEF: $9F
    ld c, b                                       ; $4FF0: $48
    ld h, l                                       ; $4FF1: $65

jr_019_4FF2:
    ld a, c                                       ; $4FF2: $79
    inc l                                         ; $4FF3: $2C
    jr nz, jr_019_506A                            ; $4FF4: $20 $74

    ld l, b                                       ; $4FF6: $68
    ld h, l                                       ; $4FF7: $65
    ld [hl], d                                    ; $4FF8: $72
    ld h, l                                       ; $4FF9: $65
    jr nz, @+$6B                                  ; $4FFA: $20 $69

jr_019_4FFC:
    ld [hl], e                                    ; $4FFC: $73
    rst $38                                       ; $4FFD: $FF
    ld [hl], e                                    ; $4FFE: $73

jr_019_4FFF:
    ld l, a                                       ; $4FFF: $6F
    ld l, l                                       ; $5000: $6D
    ld h, l                                       ; $5001: $65
    jr nz, jr_019_5045                            ; $5002: $20 $41

    ld l, [hl]                                    ; $5004: $6E
    ld l, c                                       ; $5005: $69

jr_019_5006:
    ld l, l                                       ; $5006: $6D
    ld l, c                                       ; $5007: $69
    ld [hl], h                                    ; $5008: $74
    ld h, l                                       ; $5009: $65
    ld hl, $FDFE                                  ; $500A: $21 $FE $FD
    sbc e                                         ; $500D: $9B
    add sp, $55                                   ; $500E: $E8 $55
    sbc a                                         ; $5010: $9F
    ld c, [hl]                                    ; $5011: $4E
    ld c, a                                       ; $5012: $4F
    ld d, a                                       ; $5013: $57
    ld hl, $2121                                  ; $5014: $21 $21 $21
    cp $FD                                        ; $5017: $FE $FD
    sbc e                                         ; $5019: $9B
    xor c                                         ; $501A: $A9
    ld c, a                                       ; $501B: $4F
    sbc a                                         ; $501C: $9F
    ld b, l                                       ; $501D: $45
    ld b, l                                       ; $501E: $45
    ld b, l                                       ; $501F: $45
    ld b, l                                       ; $5020: $45
    ld e, c                                       ; $5021: $59
    ld b, c                                       ; $5022: $41
    ld c, b                                       ; $5023: $48
    ld c, b                                       ; $5024: $48
    ld c, b                                       ; $5025: $48
    ld hl, $FF21                                  ; $5026: $21 $21 $FF
    db $FD                                        ; $5029: $FD
    ld hl, $0840                                  ; $502A: $21 $40 $08
    sbc d                                         ; $502D: $9A

jr_019_502E:
    ld e, d                                       ; $502E: $5A
    add hl, de                                    ; $502F: $19
    and d                                         ; $5030: $A2
    ld d, e                                       ; $5031: $53
    ld e, b                                       ; $5032: $58
    inc d                                         ; $5033: $14

jr_019_5034:
    ld b, d                                       ; $5034: $42
    sbc e                                         ; $5035: $9B
    ld a, b                                       ; $5036: $78
    ld [hl], b                                    ; $5037: $70
    sbc a                                         ; $5038: $9F
    ld d, a                                       ; $5039: $57
    ld h, c                                       ; $503A: $61
    ld [hl], e                                    ; $503B: $73
    jr nz, jr_019_50B2                            ; $503C: $20 $74

    ld l, b                                       ; $503E: $68
    ld h, c                                       ; $503F: $61
    ld [hl], h                                    ; $5040: $74
    jr nz, jr_019_50B5                            ; $5041: $20 $72

    ld l, a                                       ; $5043: $6F
    ld h, e                                       ; $5044: $63

jr_019_5045:
    ld l, e                                       ; $5045: $6B
    rst $38                                       ; $5046: $FF
    ld [hl], h                                    ; $5047: $74

jr_019_5048:
    ld l, b                                       ; $5048: $68
    ld h, l                                       ; $5049: $65
    ld [hl], d                                    ; $504A: $72
    ld h, l                                       ; $504B: $65
    jr nz, jr_019_50B0                            ; $504C: $20 $62

    ld h, l                                       ; $504E: $65
    ld h, [hl]                                    ; $504F: $66
    ld l, a                                       ; $5050: $6F
    ld [hl], d                                    ; $5051: $72
    ld h, l                                       ; $5052: $65
    ccf                                           ; $5053: $3F
    cp $48                                        ; $5054: $FE $48
    ld l, l                                       ; $5056: $6D
    ld l, l                                       ; $5057: $6D
    ld l, l                                       ; $5058: $6D
    ld l, $2E                                     ; $5059: $2E $2E
    ld l, $FE                                     ; $505B: $2E $FE
    ld c, a                                       ; $505D: $4F
    ld l, b                                       ; $505E: $68
    jr nz, jr_019_50D8                            ; $505F: $20 $77

    ld h, l                                       ; $5061: $65
    ld l, h                                       ; $5062: $6C
    ld l, h                                       ; $5063: $6C
    ld l, $FE                                     ; $5064: $2E $FE
    db $FD                                        ; $5066: $FD
    sbc e                                         ; $5067: $9B
    xor c                                         ; $5068: $A9
    ld c, a                                       ; $5069: $4F

jr_019_506A:
    sbc a                                         ; $506A: $9F
    ld l, $2E                                     ; $506B: $2E $2E
    ld l, $2E                                     ; $506D: $2E $2E
    ld l, $2E                                     ; $506F: $2E $2E
    ld l, $2E                                     ; $5071: $2E $2E
    ld l, $2E                                     ; $5073: $2E $2E
    cp $FD                                        ; $5075: $FE $FD
    sbc d                                         ; $5077: $9A
    rra                                           ; $5078: $1F
    inc d                                         ; $5079: $14
    ld e, b                                       ; $507A: $58
    dec bc                                        ; $507B: $0B
    ld b, d                                       ; $507C: $42
    sbc e                                         ; $507D: $9B

Jump_019_507E:
    xor c                                         ; $507E: $A9
    ld c, a                                       ; $507F: $4F
    sbc a                                         ; $5080: $9F
    ld l, $2E                                     ; $5081: $2E $2E
    ld l, $2E                                     ; $5083: $2E $2E
    ld l, $2E                                     ; $5085: $2E $2E
    ld l, $2E                                     ; $5087: $2E $2E
    ld l, $FE                                     ; $5089: $2E $FE
    db $FD                                        ; $508B: $FD
    sbc d                                         ; $508C: $9A
    ld e, b                                       ; $508D: $58
    ld bc, $9B42                                  ; $508E: $01 $42 $9B
    add sp, $55                                   ; $5091: $E8 $55
    sbc a                                         ; $5093: $9F
    ld c, b                                       ; $5094: $48
    ld l, l                                       ; $5095: $6D
    ld l, l                                       ; $5096: $6D
    ld l, l                                       ; $5097: $6D
    ld l, l                                       ; $5098: $6D
    ld l, $2E                                     ; $5099: $2E $2E
    ld l, $2E                                     ; $509B: $2E $2E
    ld l, $FF                                     ; $509D: $2E $FF
    ld c, l                                       ; $509F: $4D
    ld h, c                                       ; $50A0: $61
    ld a, c                                       ; $50A1: $79
    ld h, d                                       ; $50A2: $62
    ld h, l                                       ; $50A3: $65
    jr nz, jr_019_510F                            ; $50A4: $20 $69

    ld h, [hl]                                    ; $50A6: $66
    cp $49                                        ; $50A7: $FE $49
    jr nz, jr_019_511B                            ; $50A9: $20 $70

    ld [hl], l                                    ; $50AB: $75
    ld [hl], h                                    ; $50AC: $74
    jr nz, @+$43                                  ; $50AD: $20 $41

    ld l, [hl]                                    ; $50AF: $6E

jr_019_50B0:
    ld l, c                                       ; $50B0: $69
    ld l, l                                       ; $50B1: $6D

jr_019_50B2:
    ld l, c                                       ; $50B2: $69
    ld [hl], h                                    ; $50B3: $74
    ld h, l                                       ; $50B4: $65

jr_019_50B5:
    rst $38                                       ; $50B5: $FF
    ld l, a                                       ; $50B6: $6F
    ld [hl], l                                    ; $50B7: $75
    ld [hl], h                                    ; $50B8: $74
    jr nz, jr_019_511C                            ; $50B9: $20 $61

    ld [hl], e                                    ; $50BB: $73
    jr nz, jr_019_5120                            ; $50BC: $20 $62

    ld h, c                                       ; $50BE: $61
    ld l, c                                       ; $50BF: $69
    ld [hl], h                                    ; $50C0: $74
    cp $74                                        ; $50C1: $FE $74
    ld l, b                                       ; $50C3: $68
    ld l, c                                       ; $50C4: $69
    ld [hl], e                                    ; $50C5: $73
    jr nz, jr_019_513C                            ; $50C6: $20 $74

    ld [hl], d                                    ; $50C8: $72
    ld h, c                                       ; $50C9: $61
    ld [hl], b                                    ; $50CA: $70
    rst $38                                       ; $50CB: $FF
    ld [hl], a                                    ; $50CC: $77
    ld l, a                                       ; $50CD: $6F
    ld [hl], l                                    ; $50CE: $75
    ld l, h                                       ; $50CF: $6C
    ld h, h                                       ; $50D0: $64
    jr nz, jr_019_514A                            ; $50D1: $20 $77

    ld l, a                                       ; $50D3: $6F
    ld [hl], d                                    ; $50D4: $72
    ld l, e                                       ; $50D5: $6B
    cp $74                                        ; $50D6: $FE $74

jr_019_50D8:
    ld [hl], a                                    ; $50D8: $77
    ld l, c                                       ; $50D9: $69
    ld h, e                                       ; $50DA: $63
    ld h, l                                       ; $50DB: $65
    jr nz, @+$63                                  ; $50DC: $20 $61

    ld [hl], e                                    ; $50DE: $73
    rst $38                                       ; $50DF: $FF
    ld h, a                                       ; $50E0: $67
    ld l, a                                       ; $50E1: $6F
    ld l, a                                       ; $50E2: $6F
    ld h, h                                       ; $50E3: $64
    ld l, $2E                                     ; $50E4: $2E $2E
    ld l, $FE                                     ; $50E6: $2E $FE
    db $FD                                        ; $50E8: $FD
    sbc d                                         ; $50E9: $9A
    ld e, b                                       ; $50EA: $58
    inc c                                         ; $50EB: $0C
    ld h, b                                       ; $50EC: $60
    inc l                                         ; $50ED: $2C
    sbc e                                         ; $50EE: $9B
    add sp, $55                                   ; $50EF: $E8 $55
    sbc a                                         ; $50F1: $9F
    ld b, e                                       ; $50F2: $43
    ld l, h                                       ; $50F3: $6C
    ld l, a                                       ; $50F4: $6F
    ld [hl], e                                    ; $50F5: $73
    ld h, l                                       ; $50F6: $65
    jr nz, jr_019_515E                            ; $50F7: $20 $65

    ld l, [hl]                                    ; $50F9: $6E
    ld l, a                                       ; $50FA: $6F
    ld [hl], l                                    ; $50FB: $75
    ld h, a                                       ; $50FC: $67
    ld l, b                                       ; $50FD: $68
    ld l, $FE                                     ; $50FE: $2E $FE
    db $FD                                        ; $5100: $FD
    sbc d                                         ; $5101: $9A
    ld e, b                                       ; $5102: $58
    ld c, l                                       ; $5103: $4D
    ld b, d                                       ; $5104: $42
    sbc e                                         ; $5105: $9B
    add sp, $55                                   ; $5106: $E8 $55
    sbc a                                         ; $5108: $9F
    ld d, c                                       ; $5109: $51
    ld d, l                                       ; $510A: $55
    ld c, c                                       ; $510B: $49
    ld d, h                                       ; $510C: $54
    jr nz, jr_019_5162                            ; $510D: $20 $53

jr_019_510F:
    ld d, h                                       ; $510F: $54
    ld b, c                                       ; $5110: $41
    ld c, h                                       ; $5111: $4C
    ld c, h                                       ; $5112: $4C
    ld c, c                                       ; $5113: $49
    ld c, [hl]                                    ; $5114: $4E
    ld b, a                                       ; $5115: $47
    ld hl, $FE21                                  ; $5116: $21 $21 $FE
    db $FD                                        ; $5119: $FD
    ld e, b                                       ; $511A: $58

jr_019_511B:
    scf                                           ; $511B: $37

jr_019_511C:
    sbc e                                         ; $511C: $9B
    xor c                                         ; $511D: $A9
    ld c, a                                       ; $511E: $4F
    sbc a                                         ; $511F: $9F

jr_019_5120:
    ld b, c                                       ; $5120: $41
    ld b, c                                       ; $5121: $41
    ld b, c                                       ; $5122: $41
    ld b, c                                       ; $5123: $41
    ld c, c                                       ; $5124: $49
    ld c, c                                       ; $5125: $49
    ld c, c                                       ; $5126: $49
    ld b, l                                       ; $5127: $45
    ld b, l                                       ; $5128: $45
    ld b, l                                       ; $5129: $45
    ld hl, $2121                                  ; $512A: $21 $21 $21
    cp $FD                                        ; $512D: $FE $FD
    sbc d                                         ; $512F: $9A
    ld e, b                                       ; $5130: $58
    jr c, jr_019_5175                             ; $5131: $38 $42

    sub e                                         ; $5133: $93
    ld h, l                                       ; $5134: $65
    ld [hl], d                                    ; $5135: $72
    ld b, [hl]                                    ; $5136: $46
    ld c, a                                       ; $5137: $4F
    ld h, h                                       ; $5138: $64
    ld a, d                                       ; $5139: $7A
    ld b, a                                       ; $513A: $47
    ld h, [hl]                                    ; $513B: $66

jr_019_513C:
    ret nz                                        ; $513C: $C0

    ld e, h                                       ; $513D: $5C
    ld hl, $0005                                  ; $513E: $21 $05 $00
    add c                                         ; $5141: $81
    ld e, l                                       ; $5142: $5D
    dec b                                         ; $5143: $05
    dec b                                         ; $5144: $05

jr_019_5145:
    sbc e                                         ; $5145: $9B
    ret nc                                        ; $5146: $D0

    nop                                           ; $5147: $00
    jr nz, jr_019_5145                            ; $5148: $20 $FB

jr_019_514A:
    ld d, b                                       ; $514A: $50
    ld [hl+], a                                   ; $514B: $22
    dec b                                         ; $514C: $05
    ld b, b                                       ; $514D: $40
    dec bc                                        ; $514E: $0B
    nop                                           ; $514F: $00
    dec b                                         ; $5150: $05
    inc bc                                        ; $5151: $03
    ld l, e                                       ; $5152: $6B
    ld c, d                                       ; $5153: $4A
    ld hl, $0205                                  ; $5154: $21 $05 $02
    pop de                                        ; $5157: $D1
    nop                                           ; $5158: $00
    add hl, de                                    ; $5159: $19
    ld b, $53                                     ; $515A: $06 $53
    ld [hl+], a                                   ; $515C: $22
    dec b                                         ; $515D: $05

jr_019_515E:
    ld b, b                                       ; $515E: $40
    dec b                                         ; $515F: $05
    inc b                                         ; $5160: $04
    ld l, e                                       ; $5161: $6B

jr_019_5162:
    ld c, d                                       ; $5162: $4A
    ld hl, $D504                                  ; $5163: $21 $04 $D5
    ret nc                                        ; $5166: $D0

    ld a, [hl+]                                   ; $5167: $2A
    add hl, de                                    ; $5168: $19
    xor e                                         ; $5169: $AB
    ld d, e                                       ; $516A: $53
    ld [hl+], a                                   ; $516B: $22
    dec b                                         ; $516C: $05
    ld b, b                                       ; $516D: $40
    dec b                                         ; $516E: $05
    rlca                                          ; $516F: $07
    ld l, e                                       ; $5170: $6B
    ld c, d                                       ; $5171: $4A
    daa                                           ; $5172: $27
    ld a, [bc]                                    ; $5173: $0A
    jp hl                                         ; $5174: $E9


jr_019_5175:
    pop de                                        ; $5175: $D1
    nop                                           ; $5176: $00
    add hl, de                                    ; $5177: $19
    ld c, c                                       ; $5178: $49
    ld d, d                                       ; $5179: $52
    ld [hl+], a                                   ; $517A: $22

jr_019_517B:
    dec b                                         ; $517B: $05
    ld b, b                                       ; $517C: $40
    dec b                                         ; $517D: $05
    ld [$4A6B], sp                                ; $517E: $08 $6B $4A
    dec h                                         ; $5181: $25
    ld a, [bc]                                    ; $5182: $0A
    rst $20                                       ; $5183: $E7
    pop de                                        ; $5184: $D1
    ld a, [hl+]                                   ; $5185: $2A
    add hl, de                                    ; $5186: $19
    sub h                                         ; $5187: $94
    ld d, d                                       ; $5188: $52
    ld [hl+], a                                   ; $5189: $22
    dec b                                         ; $518A: $05
    ld b, b                                       ; $518B: $40
    dec b                                         ; $518C: $05
    dec b                                         ; $518D: $05
    db $ED                                        ; $518E: $ED
    ld h, e                                       ; $518F: $63
    ld hl, $2F06                                  ; $5190: $21 $06 $2F
    pop de                                        ; $5193: $D1
    ld e, d                                       ; $5194: $5A
    add hl, de                                    ; $5195: $19
    sbc a                                         ; $5196: $9F
    ld d, h                                       ; $5197: $54
    add hl, de                                    ; $5198: $19
    ret                                           ; $5199: $C9


    ld d, h                                       ; $519A: $54
    dec b                                         ; $519B: $05
    ld b, $6B                                     ; $519C: $06 $6B
    ld c, d                                       ; $519E: $4A
    ld [hl+], a                                   ; $519F: $22
    dec b                                         ; $51A0: $05
    inc bc                                        ; $51A1: $03
    pop de                                        ; $51A2: $D1
    ld a, b                                       ; $51A3: $78
    add hl, de                                    ; $51A4: $19
    ret nz                                        ; $51A5: $C0

    ld d, d                                       ; $51A6: $52
    ld [hl+], a                                   ; $51A7: $22
    dec b                                         ; $51A8: $05
    ld b, b                                       ; $51A9: $40
    dec b                                         ; $51AA: $05
    jr nz, jr_019_517B                            ; $51AB: $20 $CE

    ld h, e                                       ; $51AD: $63
    ld a, [bc]                                    ; $51AE: $0A
    add hl, bc                                    ; $51AF: $09
    ld [hl], d                                    ; $51B0: $72
    pop de                                        ; $51B1: $D1
    add b                                         ; $51B2: $80
    ld [hl+], a                                   ; $51B3: $22
    jp c, $1940                                   ; $51B4: $DA $40 $19

    ld sp, $0540                                  ; $51B7: $31 $40 $05
    rra                                           ; $51BA: $1F
    adc $63                                       ; $51BB: $CE $63
    ld a, [bc]                                    ; $51BD: $0A
    add hl, bc                                    ; $51BE: $09
    ld [hl], d                                    ; $51BF: $72
    pop de                                        ; $51C0: $D1
    add b                                         ; $51C1: $80
    ld [hl+], a                                   ; $51C2: $22
    jp c, $1940                                   ; $51C3: $DA $40 $19

    ld sp, $0B40                                  ; $51C6: $31 $40 $0B
    jr nz, @+$0D                                  ; $51C9: $20 $0B

    rra                                           ; $51CB: $1F
    ld l, e                                       ; $51CC: $6B
    inc [hl]                                      ; $51CD: $34
    dec c                                         ; $51CE: $0D
    jr nc, jr_019_523B                            ; $51CF: $30 $6A

    nop                                           ; $51D1: $00
    adc b                                         ; $51D2: $88
    nop                                           ; $51D3: $00
    ld sp, $3319                                  ; $51D4: $31 $19 $33
    ld d, c                                       ; $51D7: $51
    ld [hl+], a                                   ; $51D8: $22

jr_019_51D9:
    adc $40                                       ; $51D9: $CE $40
    ld l, e                                       ; $51DB: $6B
    ld a, [hl+]                                   ; $51DC: $2A
    ld a, [bc]                                    ; $51DD: $0A
    ldh a, [$5E]                                  ; $51DE: $F0 $5E
    nop                                           ; $51E0: $00
    add b                                         ; $51E1: $80
    nop                                           ; $51E2: $00
    ld l, e                                       ; $51E3: $6B
    jr nc, jr_019_51F1                            ; $51E4: $30 $0B

    ld d, b                                       ; $51E6: $50
    ld a, d                                       ; $51E7: $7A
    and b                                         ; $51E8: $A0
    add d                                         ; $51E9: $82
    nop                                           ; $51EA: $00
    ld l, e                                       ; $51EB: $6B
    inc c                                         ; $51EC: $0C
    inc c                                         ; $51ED: $0C
    ldh a, [$71]                                  ; $51EE: $F0 $71
    and b                                         ; $51F0: $A0

jr_019_51F1:
    add l                                         ; $51F1: $85
    nop                                           ; $51F2: $00
    ld l, e                                       ; $51F3: $6B
    ld [$600D], sp                                ; $51F4: $08 $0D $60
    ld b, a                                       ; $51F7: $47
    add b                                         ; $51F8: $80
    add a                                         ; $51F9: $87
    nop                                           ; $51FA: $00
    ld sp, $3319                                  ; $51FB: $31 $19 $33
    ld d, c                                       ; $51FE: $51
    ld [hl+], a                                   ; $51FF: $22
    adc $40                                       ; $5200: $CE $40
    nop                                           ; $5202: $00
    add d                                         ; $5203: $82
    rra                                           ; $5204: $1F
    inc d                                         ; $5205: $14
    sub h                                         ; $5206: $94
    ld b, d                                       ; $5207: $42
    rlca                                          ; $5208: $07
    nop                                           ; $5209: $00
    ld l, e                                       ; $520A: $6B
    ld c, d                                       ; $520B: $4A
    add hl, bc                                    ; $520C: $09
    nop                                           ; $520D: $00
    jr nz, jr_019_51D9                            ; $520E: $20 $C9

    ld d, b                                       ; $5210: $50
    xor h                                         ; $5211: $AC
    inc h                                         ; $5212: $24
    and d                                         ; $5213: $A2
    inc b                                         ; $5214: $04
    dec bc                                        ; $5215: $0B
    rlca                                          ; $5216: $07
    dec bc                                        ; $5217: $0B
    ld [$050B], sp                                ; $5218: $08 $0B $05
    ld a, h                                       ; $521B: $7C
    dec h                                         ; $521C: $25
    ld a, [bc]                                    ; $521D: $0A
    inc bc                                        ; $521E: $03
    ld e, h                                       ; $521F: $5C
    nop                                           ; $5220: $00
    inc bc                                        ; $5221: $03
    inc c                                         ; $5222: $0C
    nop                                           ; $5223: $00
    inc c                                         ; $5224: $0C
    jr nz, jr_019_5233                            ; $5225: $20 $0C

    rra                                           ; $5227: $1F
    rra                                           ; $5228: $1F
    ld e, $05                                     ; $5229: $1E $05
    ld [bc], a                                    ; $522B: $02
    ld l, e                                       ; $522C: $6B
    ld c, d                                       ; $522D: $4A
    ld a, [bc]                                    ; $522E: $0A
    ld [de], a                                    ; $522F: $12
    inc [hl]                                      ; $5230: $34
    db $D3                                        ; $5231: $D3
    nop                                           ; $5232: $00

jr_019_5233:
    add hl, de                                    ; $5233: $19
    ret c                                         ; $5234: $D8

    ld d, d                                       ; $5235: $52
    ld [hl+], a                                   ; $5236: $22
    dec b                                         ; $5237: $05
    ld b, b                                       ; $5238: $40
    dec b                                         ; $5239: $05
    nop                                           ; $523A: $00

jr_019_523B:
    ld l, e                                       ; $523B: $6B
    ld c, d                                       ; $523C: $4A
    dec d                                         ; $523D: $15
    dec c                                         ; $523E: $0D
    ld e, [hl]                                    ; $523F: $5E
    jp nc, $1900                                  ; $5240: $D2 $00 $19

    inc [hl]                                      ; $5243: $34
    ld d, h                                       ; $5244: $54
    ld [hl+], a                                   ; $5245: $22
    dec b                                         ; $5246: $05
    ld b, b                                       ; $5247: $40
    ld b, d                                       ; $5248: $42
    inc d                                         ; $5249: $14
    ld c, $57                                     ; $524A: $0E $57
    ld [hl], d                                    ; $524C: $72
    ld e, h                                       ; $524D: $5C
    nop                                           ; $524E: $00
    inc bc                                        ; $524F: $03
    dec d                                         ; $5250: $15
    ld c, $E3                                     ; $5251: $0E $E3
    ld [hl], c                                    ; $5253: $71
    ld b, b                                       ; $5254: $40
    ld c, $57                                     ; $5255: $0E $57
    ld [hl], d                                    ; $5257: $72
    jr nz, jr_019_5268                            ; $5258: $20 $0E

    ld a, a                                       ; $525A: $7F
    ld [hl], d                                    ; $525B: $72
    nop                                           ; $525C: $00
    nop                                           ; $525D: $00
    ld e, e                                       ; $525E: $5B
    add hl, de                                    ; $525F: $19
    inc [hl]                                      ; $5260: $34
    ld c, [hl]                                    ; $5261: $4E
    add e                                         ; $5262: $83
    jr nz, jr_019_5265                            ; $5263: $20 $00

jr_019_5265:
    ld [bc], a                                    ; $5265: $02
    nop                                           ; $5266: $00
    ld h, d                                       ; $5267: $62

jr_019_5268:
    ld bc, $0E15                                  ; $5268: $01 $15 $0E
    inc de                                        ; $526B: $13
    ld [hl], d                                    ; $526C: $72
    jr nz, jr_019_526F                            ; $526D: $20 $00

jr_019_526F:
    inc d                                         ; $526F: $14
    ld c, $23                                     ; $5270: $0E $23
    ld [hl], d                                    ; $5272: $72
    ld d, [hl]                                    ; $5273: $56
    ld bc, $1883                                  ; $5274: $01 $83 $18
    cp $00                                        ; $5277: $FE $00
    nop                                           ; $5279: $00
    inc d                                         ; $527A: $14
    ld c, $57                                     ; $527B: $0E $57
    ld [hl], d                                    ; $527D: $72
    ld h, d                                       ; $527E: $62
    ld bc, $0E14                                  ; $527F: $01 $14 $0E
    di                                            ; $5282: $F3
    ld [hl], c                                    ; $5283: $71
    dec bc                                        ; $5284: $0B
    ld [bc], a                                    ; $5285: $02
    ld b, b                                       ; $5286: $40
    db $10                                        ; $5287: $10
    ld a, l                                       ; $5288: $7D
    cp a                                          ; $5289: $BF
    pop bc                                        ; $528A: $C1
    inc bc                                        ; $528B: $03
    dec bc                                        ; $528C: $0B
    inc bc                                        ; $528D: $03
    dec bc                                        ; $528E: $0B
    inc b                                         ; $528F: $04
    inc c                                         ; $5290: $0C
    ld [$4219], sp                                ; $5291: $08 $19 $42
    inc d                                         ; $5294: $14
    ld c, $96                                     ; $5295: $0E $96
    ld a, [hl]                                    ; $5297: $7E
    ld e, h                                       ; $5298: $5C
    nop                                           ; $5299: $00

jr_019_529A:
    inc bc                                        ; $529A: $03
    ld d, $0E                                     ; $529B: $16 $0E
    ld [hl+], a                                   ; $529D: $22
    ld a, [hl]                                    ; $529E: $7E
    jr nz, @+$01                                  ; $529F: $20 $FF

    nop                                           ; $52A1: $00
    nop                                           ; $52A2: $00
    dec d                                         ; $52A3: $15

jr_019_52A4:
    ld c, $12                                     ; $52A4: $0E $12
    ld a, [hl]                                    ; $52A6: $7E
    ld b, b                                       ; $52A7: $40
    ld c, $22                                     ; $52A8: $0E $22
    ld a, [hl]                                    ; $52AA: $7E
    nop                                           ; $52AB: $00
    nop                                           ; $52AC: $00
    ld h, d                                       ; $52AD: $62
    ld bc, $0E14                                  ; $52AE: $01 $14 $0E
    or h                                          ; $52B1: $B4
    ld a, [hl]                                    ; $52B2: $7E
    ld h, b                                       ; $52B3: $60
    ld bc, $0E14                                  ; $52B4: $01 $14 $0E
    and b                                         ; $52B7: $A0
    ld a, [hl]                                    ; $52B8: $7E
    ld h, d                                       ; $52B9: $62
    ld bc, $0E14                                  ; $52BA: $01 $14 $0E
    ld [hl-], a                                   ; $52BD: $32
    ld a, [hl]                                    ; $52BE: $7E
    ld b, d                                       ; $52BF: $42
    ld d, $11                                     ; $52C0: $16 $11
    and a                                         ; $52C2: $A7
    ld [hl], c                                    ; $52C3: $71
    dec c                                         ; $52C4: $0D
    nop                                           ; $52C5: $00
    ld [bc], a                                    ; $52C6: $02
    nop                                           ; $52C7: $00
    dec d                                         ; $52C8: $15
    ld de, $71A7                                  ; $52C9: $11 $A7 $71
    dec c                                         ; $52CC: $0D
    ld de, $718E                                  ; $52CD: $11 $8E $71
    jr nz, jr_019_52D2                            ; $52D0: $20 $00

jr_019_52D2:
    add e                                         ; $52D2: $83
    dec c                                         ; $52D3: $0D
    nop                                           ; $52D4: $00
    cp $00                                        ; $52D5: $FE $00
    ld b, d                                       ; $52D7: $42
    dec d                                         ; $52D8: $15
    jr nz, jr_019_52A4                            ; $52D9: $20 $C9

    ld d, b                                       ; $52DB: $50
    stop                                          ; $52DC: $10 $00
    ld d, $20                                     ; $52DE: $16 $20
    or e                                          ; $52E0: $B3
    ld c, a                                       ; $52E1: $4F
    db $10                                        ; $52E2: $10
    ld bc, $2000                                  ; $52E3: $01 $00 $20
    db $ED                                        ; $52E6: $ED
    ld c, a                                       ; $52E7: $4F
    jr nz, jr_019_52EB                            ; $52E8: $20 $01

    nop                                           ; $52EA: $00

jr_019_52EB:
    nop                                           ; $52EB: $00
    dec d                                         ; $52EC: $15
    jr nz, jr_019_529A                            ; $52ED: $20 $AB

    ld d, b                                       ; $52EF: $50
    jr nz, jr_019_5312                            ; $52F0: $20 $20

    pop af                                        ; $52F2: $F1
    ld d, b                                       ; $52F3: $50
    jr nz, @+$22                                  ; $52F4: $20 $20

    ret                                           ; $52F6: $C9


    ld d, b                                       ; $52F7: $50
    jr nz, @+$22                                  ; $52F8: $20 $20

    or e                                          ; $52FA: $B3
    ld c, a                                       ; $52FB: $4F
    nop                                           ; $52FC: $00
    nop                                           ; $52FD: $00
    ld a, h                                       ; $52FE: $7C
    ld hl, $0308                                  ; $52FF: $21 $08 $03
    ld d, [hl]                                    ; $5302: $56
    ld bc, $4219                                  ; $5303: $01 $19 $42
    inc d                                         ; $5306: $14
    ld c, $7F                                     ; $5307: $0E $7F
    ld [hl], d                                    ; $5309: $72
    ld h, b                                       ; $530A: $60
    ld bc, $2840                                  ; $530B: $01 $40 $28
    inc d                                         ; $530E: $14
    ld c, $43                                     ; $530F: $0E $43
    ld [hl], d                                    ; $5311: $72

jr_019_5312:
    ld h, d                                       ; $5312: $62
    ld b, d                                       ; $5313: $42
    dec d                                         ; $5314: $15
    ld c, $6B                                     ; $5315: $0E $6B
    ld [hl], d                                    ; $5317: $72
    inc b                                         ; $5318: $04
    ld c, $75                                     ; $5319: $0E $75
    ld [hl], d                                    ; $531B: $72
    inc b                                         ; $531C: $04
    ld c, $6B                                     ; $531D: $0E $6B
    ld [hl], d                                    ; $531F: $72
    inc b                                         ; $5320: $04
    ld c, $75                                     ; $5321: $0E $75
    ld [hl], d                                    ; $5323: $72
    inc b                                         ; $5324: $04
    ld c, $43                                     ; $5325: $0E $43
    ld [hl], d                                    ; $5327: $72
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    ld h, d                                       ; $532A: $62
    scf                                           ; $532B: $37
    dec d                                         ; $532C: $15
    ld c, $03                                     ; $532D: $0E $03
    ld [hl], d                                    ; $532F: $72
    ld [$230E], sp                                ; $5330: $08 $0E $23
    ld [hl], d                                    ; $5333: $72
    inc b                                         ; $5334: $04
    ld c, $33                                     ; $5335: $0E $33
    ld [hl], d                                    ; $5337: $72
    inc b                                         ; $5338: $04
    ld c, $13                                     ; $5339: $0E $13
    ld [hl], d                                    ; $533B: $72
    ld [$7F0E], sp                                ; $533C: $08 $0E $7F
    ld [hl], d                                    ; $533F: $72
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    ld h, d                                       ; $5342: $62
    jr c, @+$16                                   ; $5343: $38 $14

    ld c, $4D                                     ; $5345: $0E $4D
    ld [hl], d                                    ; $5347: $72
    ld e, e                                       ; $5348: $5B
    add hl, de                                    ; $5349: $19
    sub b                                         ; $534A: $90
    ld d, b                                       ; $534B: $50
    ld h, d                                       ; $534C: $62
    inc c                                         ; $534D: $0C
    dec d                                         ; $534E: $15
    ld c, $F3                                     ; $534F: $0E $F3
    ld [hl], c                                    ; $5351: $71
    stop                                          ; $5352: $10 $00
    dec d                                         ; $5354: $15
    ld c, $D3                                     ; $5355: $0E $D3
    ld [hl], c                                    ; $5357: $71
    ld [$1500], sp                                ; $5358: $08 $00 $15
    ld c, $13                                     ; $535B: $0E $13
    ld [hl], d                                    ; $535D: $72
    inc b                                         ; $535E: $04
    nop                                           ; $535F: $00
    dec d                                         ; $5360: $15
    ld c, $03                                     ; $5361: $0E $03
    ld [hl], d                                    ; $5363: $72
    inc b                                         ; $5364: $04
    nop                                           ; $5365: $00
    dec d                                         ; $5366: $15
    ld c, $4D                                     ; $5367: $0E $4D
    ld [hl], d                                    ; $5369: $72
    nop                                           ; $536A: $00
    nop                                           ; $536B: $00
    dec bc                                        ; $536C: $0B
    ld b, $40                                     ; $536D: $06 $40
    ld b, b                                       ; $536F: $40
    ld d, [hl]                                    ; $5370: $56
    inc l                                         ; $5371: $2C
    ld h, d                                       ; $5372: $62
    ld c, l                                       ; $5373: $4D
    dec d                                         ; $5374: $15
    ld c, $E3                                     ; $5375: $0E $E3
    ld [hl], c                                    ; $5377: $71
    db $10                                        ; $5378: $10
    ld c, $4D                                     ; $5379: $0E $4D
    ld [hl], d                                    ; $537B: $72
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    dec bc                                        ; $537E: $0B
    nop                                           ; $537F: $00
    ld a, h                                       ; $5380: $7C
    ld d, $0C                                     ; $5381: $16 $0C
    inc bc                                        ; $5383: $03
    ld d, a                                       ; $5384: $57
    ld bc, $0140                                  ; $5385: $01 $40 $01
    ld h, d                                       ; $5388: $62
    inc d                                         ; $5389: $14
    dec d                                         ; $538A: $15
    ld c, $13                                     ; $538B: $0E $13
    ld [hl], d                                    ; $538D: $72
    inc b                                         ; $538E: $04
    nop                                           ; $538F: $00
    ld d, [hl]                                    ; $5390: $56
    inc d                                         ; $5391: $14
    dec d                                         ; $5392: $15
    ld c, $03                                     ; $5393: $0E $03
    ld [hl], d                                    ; $5395: $72
    inc b                                         ; $5396: $04
    ld c, $4D                                     ; $5397: $0E $4D
    ld [hl], d                                    ; $5399: $72
    jr nc, @+$10                                  ; $539A: $30 $0E

    inc bc                                        ; $539C: $03
    ld [hl], d                                    ; $539D: $72
    jr nc, jr_019_53A0                            ; $539E: $30 $00

jr_019_53A0:
    add hl, de                                    ; $53A0: $19
    ld b, d                                       ; $53A1: $42
    add e                                         ; $53A2: $83
    ld [$FC00], sp                                ; $53A3: $08 $00 $FC
    jr nz, jr_019_53A8                            ; $53A6: $20 $00

jr_019_53A8:
    ld bc, $4200                                  ; $53A8: $01 $00 $42
    inc d                                         ; $53AB: $14
    ld c, $BE                                     ; $53AC: $0E $BE
    ld a, [hl]                                    ; $53AE: $7E
    ld h, b                                       ; $53AF: $60
    ld bc, $2840                                  ; $53B0: $01 $40 $28
    dec d                                         ; $53B3: $15
    ld c, $8C                                     ; $53B4: $0E $8C
    ld a, [hl]                                    ; $53B6: $7E
    nop                                           ; $53B7: $00
    nop                                           ; $53B8: $00
    ld e, e                                       ; $53B9: $5B
    add hl, de                                    ; $53BA: $19
    cp c                                          ; $53BB: $B9
    ld c, [hl]                                    ; $53BC: $4E
    ld h, d                                       ; $53BD: $62
    ld bc, $0E15                                  ; $53BE: $01 $15 $0E
    sub [hl]                                      ; $53C1: $96
    ld a, [hl]                                    ; $53C2: $7E
    jr nz, jr_019_53D3                            ; $53C3: $20 $0E

    and b                                         ; $53C5: $A0
    ld a, [hl]                                    ; $53C6: $7E
    jr nz, jr_019_53D7                            ; $53C7: $20 $0E

    cp [hl]                                       ; $53C9: $BE
    ld a, [hl]                                    ; $53CA: $7E
    jr nz, jr_019_53CD                            ; $53CB: $20 $00

jr_019_53CD:
    ld e, e                                       ; $53CD: $5B
    add hl, de                                    ; $53CE: $19
    dec b                                         ; $53CF: $05
    ld d, c                                       ; $53D0: $51
    ld h, d                                       ; $53D1: $62
    scf                                           ; $53D2: $37

jr_019_53D3:
    dec d                                         ; $53D3: $15
    ld c, $22                                     ; $53D4: $0E $22
    ld a, [hl]                                    ; $53D6: $7E

jr_019_53D7:
    ld [$620E], sp                                ; $53D7: $08 $0E $62
    ld a, [hl]                                    ; $53DA: $7E
    inc c                                         ; $53DB: $0C
    ld c, $FA                                     ; $53DC: $0E $FA
    ld a, [hl]                                    ; $53DE: $7E
    db $10                                        ; $53DF: $10
    ld c, $D2                                     ; $53E0: $0E $D2
    ld a, [hl]                                    ; $53E2: $7E
    nop                                           ; $53E3: $00
    nop                                           ; $53E4: $00
    ld h, d                                       ; $53E5: $62
    jr c, jr_019_5428                             ; $53E6: $38 $40

    ld b, b                                       ; $53E8: $40
    dec d                                         ; $53E9: $15
    ld c, $8C                                     ; $53EA: $0E $8C
    ld a, [hl]                                    ; $53EC: $7E
    jr nc, jr_019_53FD                            ; $53ED: $30 $0E

    jp nc, Jump_019_507E                          ; $53EF: $D2 $7E $50

    ld c, $8C                                     ; $53F2: $0E $8C
    ld a, [hl]                                    ; $53F4: $7E
    ld b, b                                       ; $53F5: $40
    ld c, $96                                     ; $53F6: $0E $96
    ld a, [hl]                                    ; $53F8: $7E
    jr nc, jr_019_5409                            ; $53F9: $30 $0E

    ld [hl+], a                                   ; $53FB: $22
    ld a, [hl]                                    ; $53FC: $7E

jr_019_53FD:
    ld d, b                                       ; $53FD: $50
    ld c, $42                                     ; $53FE: $0E $42
    ld a, [hl]                                    ; $5400: $7E
    ld [$620E], sp                                ; $5401: $08 $0E $62
    ld a, [hl]                                    ; $5404: $7E
    ld [$C80E], sp                                ; $5405: $08 $0E $C8
    ld a, [hl]                                    ; $5408: $7E

jr_019_5409:
    nop                                           ; $5409: $00
    nop                                           ; $540A: $00
    ld h, b                                       ; $540B: $60
    ld a, [bc]                                    ; $540C: $0A
    dec d                                         ; $540D: $15
    ld c, $72                                     ; $540E: $0E $72
    ld a, [hl]                                    ; $5410: $7E
    stop                                          ; $5411: $10 $00
    ld d, $0E                                     ; $5413: $16 $0E
    ld d, d                                       ; $5415: $52
    ld a, [hl]                                    ; $5416: $7E
    jr jr_019_5419                                ; $5417: $18 $00

jr_019_5419:
    ld [bc], a                                    ; $5419: $02
    ld c, $72                                     ; $541A: $0E $72
    ld a, [hl]                                    ; $541C: $7E
    inc e                                         ; $541D: $1C
    ld [bc], a                                    ; $541E: $02
    nop                                           ; $541F: $00
    ld c, $A0                                     ; $5420: $0E $A0
    ld a, [hl]                                    ; $5422: $7E
    inc b                                         ; $5423: $04

jr_019_5424:
    ld [bc], a                                    ; $5424: $02
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    ld h, d                                       ; $5427: $62

jr_019_5428:
    inc d                                         ; $5428: $14
    dec d                                         ; $5429: $15
    ld c, $72                                     ; $542A: $0E $72
    ld a, [hl]                                    ; $542C: $7E
    inc d                                         ; $542D: $14
    ld c, $82                                     ; $542E: $0E $82
    ld a, [hl]                                    ; $5430: $7E
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    ld b, d                                       ; $5433: $42
    inc d                                         ; $5434: $14
    jr nz, jr_019_5424                            ; $5435: $20 $ED

    ld c, a                                       ; $5437: $4F

jr_019_5438:
    ld h, c                                       ; $5438: $61
    ld bc, $2016                                  ; $5439: $01 $16 $20
    db $ED                                        ; $543C: $ED
    ld c, a                                       ; $543D: $4F
    jr nz, jr_019_5441                            ; $543E: $20 $01

    nop                                           ; $5440: $00

jr_019_5441:
    nop                                           ; $5441: $00
    ld d, $20                                     ; $5442: $16 $20
    or e                                          ; $5444: $B3
    ld c, a                                       ; $5445: $4F
    stop                                          ; $5446: $10 $00
    rst $38                                       ; $5448: $FF
    nop                                           ; $5449: $00
    ld d, $20                                     ; $544A: $16 $20
    db $ED                                        ; $544C: $ED
    ld c, a                                       ; $544D: $4F
    jr nz, jr_019_5451                            ; $544E: $20 $01

jr_019_5450:
    nop                                           ; $5450: $00

jr_019_5451:
    nop                                           ; $5451: $00
    ld d, $20                                     ; $5452: $16 $20
    or e                                          ; $5454: $B3
    ld c, a                                       ; $5455: $4F
    jr nz, jr_019_5458                            ; $5456: $20 $00

jr_019_5458:
    rst $38                                       ; $5458: $FF
    nop                                           ; $5459: $00
    ld d, [hl]                                    ; $545A: $56
    ld a, [bc]                                    ; $545B: $0A

jr_019_545C:
    ld d, $20                                     ; $545C: $16 $20
    db $ED                                        ; $545E: $ED
    ld c, a                                       ; $545F: $4F
    jr nz, jr_019_5462                            ; $5460: $20 $00

jr_019_5462:
    rst $38                                       ; $5462: $FF
    nop                                           ; $5463: $00
    ld d, $20                                     ; $5464: $16 $20
    db $ED                                        ; $5466: $ED
    ld c, a                                       ; $5467: $4F
    jr nz, jr_019_546B                            ; $5468: $20 $01

    nop                                           ; $546A: $00

jr_019_546B:
    nop                                           ; $546B: $00
    dec d                                         ; $546C: $15
    jr nz, jr_019_5438                            ; $546D: $20 $C9

    ld d, b                                       ; $546F: $50
    db $10                                        ; $5470: $10
    jr nz, jr_019_5450                            ; $5471: $20 $DD

    ld d, b                                       ; $5473: $50
    stop                                          ; $5474: $10 $00
    ld e, e                                       ; $5476: $5B
    add hl, de                                    ; $5477: $19
    add sp, $4F                                   ; $5478: $E8 $4F
    ld h, d                                       ; $547A: $62
    inc d                                         ; $547B: $14
    dec d                                         ; $547C: $15
    jr nz, @+$5F                                  ; $547D: $20 $5D

    ld d, b                                       ; $547F: $50
    inc c                                         ; $5480: $0C
    jr nz, @-$6D                                  ; $5481: $20 $91

    ld d, b                                       ; $5483: $50

jr_019_5484:
    inc c                                         ; $5484: $0C
    jr nz, jr_019_5450                            ; $5485: $20 $C9

    ld d, b                                       ; $5487: $50
    jr nz, jr_019_54AA                            ; $5488: $20 $20

    adc a                                         ; $548A: $8F
    ld d, h                                       ; $548B: $54
    stop                                          ; $548C: $10 $00
    inc c                                         ; $548E: $0C
    ld b, $15                                     ; $548F: $06 $15
    jr nz, jr_019_545C                            ; $5491: $20 $C9

    ld d, b                                       ; $5493: $50
    ld d, b                                       ; $5494: $50
    jr nz, @-$17                                  ; $5495: $20 $E7

    ld d, b                                       ; $5497: $50
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    ld e, e                                       ; $549A: $5B
    add hl, de                                    ; $549B: $19
    dec [hl]                                      ; $549C: $35
    ld d, b                                       ; $549D: $50
    ld b, d                                       ; $549E: $42
    inc d                                         ; $549F: $14
    db $10                                        ; $54A0: $10
    rlca                                          ; $54A1: $07
    ld e, l                                       ; $54A2: $5D
    ld h, b                                       ; $54A3: $60
    inc d                                         ; $54A4: $14
    dec d                                         ; $54A5: $15
    db $10                                        ; $54A6: $10
    ld de, $0F5D                                  ; $54A7: $11 $5D $0F

jr_019_54AA:
    nop                                           ; $54AA: $00
    inc c                                         ; $54AB: $0C
    inc b                                         ; $54AC: $04
    inc d                                         ; $54AD: $14
    db $10                                        ; $54AE: $10
    rlca                                          ; $54AF: $07
    ld e, l                                       ; $54B0: $5D
    ld h, d                                       ; $54B1: $62
    dec bc                                        ; $54B2: $0B
    rlca                                          ; $54B3: $07
    nop                                           ; $54B4: $00
    add c                                         ; $54B5: $81
    ld e, l                                       ; $54B6: $5D
    add hl, bc                                    ; $54B7: $09
    nop                                           ; $54B8: $00
    jr nz, jr_019_5484                            ; $54B9: $20 $C9

    ld d, b                                       ; $54BB: $50
    dec bc                                        ; $54BC: $0B
    jr nz, jr_019_54CA                            ; $54BD: $20 $0B

    rra                                           ; $54BF: $1F
    ld l, e                                       ; $54C0: $6B
    inc [hl]                                      ; $54C1: $34
    dec c                                         ; $54C2: $0D
    jr nc, @+$6C                                  ; $54C3: $30 $6A

    nop                                           ; $54C5: $00
    adc b                                         ; $54C6: $88
    nop                                           ; $54C7: $00
    ld b, d                                       ; $54C8: $42
    inc d                                         ; $54C9: $14

jr_019_54CA:
    db $10                                        ; $54CA: $10
    rlca                                          ; $54CB: $07
    ld e, l                                       ; $54CC: $5D
    ld e, e                                       ; $54CD: $5B
    add hl, de                                    ; $54CE: $19
    push de                                       ; $54CF: $D5
    ld d, h                                       ; $54D0: $54
    ld h, d                                       ; $54D1: $62
    ld bc, $4212                                  ; $54D2: $01 $12 $42
    sbc e                                         ; $54D5: $9B
    xor c                                         ; $54D6: $A9
    ld c, a                                       ; $54D7: $4F
    sbc a                                         ; $54D8: $9F
    ld l, $2E                                     ; $54D9: $2E $2E
    ld l, $2E                                     ; $54DB: $2E $2E
    ld l, $2E                                     ; $54DD: $2E $2E
    ld l, $2E                                     ; $54DF: $2E $2E
    ld l, $FE                                     ; $54E1: $2E $FE
    db $FD                                        ; $54E3: $FD
    sbc d                                         ; $54E4: $9A
    ld e, b                                       ; $54E5: $58

jr_019_54E6:
    ld bc, $0242                                  ; $54E6: $01 $42 $02
    dec h                                         ; $54E9: $25
    ld [bc], a                                    ; $54EA: $02
    inc de                                        ; $54EB: $13
    nop                                           ; $54EC: $00
    ld b, l                                       ; $54ED: $45
    add hl, de                                    ; $54EE: $19
    xor $4C                                       ; $54EF: $EE $4C
    ld bc, $1307                                  ; $54F1: $01 $07 $13
    ld b, l                                       ; $54F4: $45
    dec h                                         ; $54F5: $25
    sbc $69                                       ; $54F6: $DE $69
    sub e                                         ; $54F8: $93
    ld h, l                                       ; $54F9: $65
    add c                                         ; $54FA: $81
    ld b, [hl]                                    ; $54FB: $46
    ld c, a                                       ; $54FC: $4F
    ld h, h                                       ; $54FD: $64
    add a                                         ; $54FE: $87
    ld b, a                                       ; $54FF: $47
    ld h, [hl]                                    ; $5500: $66
    ret nz                                        ; $5501: $C0

    ld e, h                                       ; $5502: $5C
    ld hl, $0005                                  ; $5503: $21 $05 $00
    add c                                         ; $5506: $81
    ld e, l                                       ; $5507: $5D

jr_019_5508:
    dec b                                         ; $5508: $05
    dec b                                         ; $5509: $05

jr_019_550A:
    rst $38                                       ; $550A: $FF
    ret nc                                        ; $550B: $D0

    nop                                           ; $550C: $00
    jr nz, jr_019_550A                            ; $550D: $20 $FB

    ld d, b                                       ; $550F: $50
    ld [hl+], a                                   ; $5510: $22
    dec b                                         ; $5511: $05
    ld b, b                                       ; $5512: $40
    dec bc                                        ; $5513: $0B
    nop                                           ; $5514: $00
    dec b                                         ; $5515: $05
    jr nz, jr_019_54E6                            ; $5516: $20 $CE

    ld h, e                                       ; $5518: $63
    ld a, [bc]                                    ; $5519: $0A
    add hl, bc                                    ; $551A: $09
    call z, $00D1                                 ; $551B: $CC $D1 $00
    ld [hl+], a                                   ; $551E: $22
    jp c, $1940                                   ; $551F: $DA $40 $19

    ld sp, $0540                                  ; $5522: $31 $40 $05
    rra                                           ; $5525: $1F
    adc $63                                       ; $5526: $CE $63
    ld a, [bc]                                    ; $5528: $0A
    add hl, bc                                    ; $5529: $09
    call z, $00D1                                 ; $552A: $CC $D1 $00
    ld [hl+], a                                   ; $552D: $22
    jp c, $1940                                   ; $552E: $DA $40 $19

    ld sp, $0B40                                  ; $5531: $31 $40 $0B
    jr nz, @+$0D                                  ; $5534: $20 $0B

    rra                                           ; $5536: $1F
    ld l, e                                       ; $5537: $6B
    inc [hl]                                      ; $5538: $34
    dec c                                         ; $5539: $0D
    jr nc, jr_019_55A6                            ; $553A: $30 $6A

    nop                                           ; $553C: $00
    add b                                         ; $553D: $80
    nop                                           ; $553E: $00
    ld sp, $F819                                  ; $553F: $31 $19 $F8
    ld d, h                                       ; $5542: $54
    ld [hl+], a                                   ; $5543: $22
    adc $40                                       ; $5544: $CE $40
    nop                                           ; $5546: $00
    add d                                         ; $5547: $82
    rra                                           ; $5548: $1F
    inc d                                         ; $5549: $14
    sub h                                         ; $554A: $94
    ld b, d                                       ; $554B: $42
    ld [bc], a                                    ; $554C: $02
    inc b                                         ; $554D: $04
    ld b, $15                                     ; $554E: $06 $15
    ld bc, $1A45                                  ; $5550: $01 $45 $1A
    add hl, de                                    ; $5553: $19
    ld c, e                                       ; $5554: $4B
    rlca                                          ; $5555: $07
    nop                                           ; $5556: $00
    ld l, e                                       ; $5557: $6B
    ld c, d                                       ; $5558: $4A
    add hl, bc                                    ; $5559: $09
    nop                                           ; $555A: $00
    jr nz, jr_019_5508                            ; $555B: $20 $AB

    ld d, b                                       ; $555D: $50
    add e                                         ; $555E: $83
    ld d, b                                       ; $555F: $50
    nop                                           ; $5560: $00
    rst $38                                       ; $5561: $FF
    nop                                           ; $5562: $00
    ld b, b                                       ; $5563: $40
    ld d, b                                       ; $5564: $50
    add e                                         ; $5565: $83
    ld d, b                                       ; $5566: $50
    nop                                           ; $5567: $00
    ld bc, $9B00                                  ; $5568: $01 $00 $9B
    ld a, b                                       ; $556B: $78
    ld [hl], b                                    ; $556C: $70
    sbc a                                         ; $556D: $9F
    ld c, [hl]                                    ; $556E: $4E
    ld l, c                                       ; $556F: $69
    ld h, e                                       ; $5570: $63
    ld h, l                                       ; $5571: $65
    jr nz, @+$78                                  ; $5572: $20 $76

    ld l, c                                       ; $5574: $69
    ld h, l                                       ; $5575: $65
    ld [hl], a                                    ; $5576: $77
    ld l, $2E                                     ; $5577: $2E $2E
    ld l, $FE                                     ; $5579: $2E $FE
    db $FD                                        ; $557B: $FD
    sbc d                                         ; $557C: $9A
    rlca                                          ; $557D: $07
    nop                                           ; $557E: $00
    add c                                         ; $557F: $81
    ld e, l                                       ; $5580: $5D
    add hl, bc                                    ; $5581: $09
    nop                                           ; $5582: $00
    jr nz, @-$53                                  ; $5583: $20 $AB

    ld d, b                                       ; $5585: $50
    ld b, d                                       ; $5586: $42
    sbc e                                         ; $5587: $9B
    add hl, hl                                    ; $5588: $29
    ld e, h                                       ; $5589: $5C
    sbc a                                         ; $558A: $9F
    ld c, b                                       ; $558B: $48
    ld h, l                                       ; $558C: $65
    ld [hl], d                                    ; $558D: $72
    jr nz, jr_019_55FD                            ; $558E: $20 $6D

    ld h, c                                       ; $5590: $61
    ld l, d                                       ; $5591: $6A
    ld h, l                                       ; $5592: $65
    ld [hl], e                                    ; $5593: $73
    ld [hl], h                                    ; $5594: $74
    ld a, c                                       ; $5595: $79
    inc l                                         ; $5596: $2C
    rst $38                                       ; $5597: $FF
    ld d, c                                       ; $5598: $51
    ld [hl], l                                    ; $5599: $75
    ld h, l                                       ; $559A: $65
    ld h, l                                       ; $559B: $65
    ld l, [hl]                                    ; $559C: $6E
    jr nz, jr_019_55E9                            ; $559D: $20 $4A

    ld h, c                                       ; $559F: $61
    ld h, l                                       ; $55A0: $65
    ld l, h                                       ; $55A1: $6C
    ld h, c                                       ; $55A2: $61
    ld hl, $FDFE                                  ; $55A3: $21 $FE $FD

jr_019_55A6:
    sbc d                                         ; $55A6: $9A
    ld e, b                                       ; $55A7: $58
    ld bc, $9B42                                  ; $55A8: $01 $42 $9B
    ld l, b                                       ; $55AB: $68
    ld a, e                                       ; $55AC: $7B
    sbc a                                         ; $55AD: $9F
    ld d, h                                       ; $55AE: $54
    ld l, b                                       ; $55AF: $68
    ld h, c                                       ; $55B0: $61
    ld l, [hl]                                    ; $55B1: $6E
    ld l, e                                       ; $55B2: $6B
    jr nz, @+$7B                                  ; $55B3: $20 $79

    ld l, a                                       ; $55B5: $6F
    ld [hl], l                                    ; $55B6: $75
    jr nz, jr_019_5608                            ; $55B7: $20 $4F

    ld [hl], d                                    ; $55B9: $72
    ld h, c                                       ; $55BA: $61
    inc l                                         ; $55BB: $2C
    rst $38                                       ; $55BC: $FF
    ld h, d                                       ; $55BD: $62
    ld [hl], l                                    ; $55BE: $75
    ld [hl], h                                    ; $55BF: $74
    jr nz, jr_019_5639                            ; $55C0: $20 $77

    ld h, l                                       ; $55C2: $65
    jr nz, @+$75                                  ; $55C3: $20 $73

    ld l, b                                       ; $55C5: $68
    ld h, c                                       ; $55C6: $61
    ld l, h                                       ; $55C7: $6C
    ld l, h                                       ; $55C8: $6C
    cp $64                                        ; $55C9: $FE $64
    ld l, c                                       ; $55CB: $69
    ld [hl], e                                    ; $55CC: $73
    ld [hl], b                                    ; $55CD: $70
    ld h, l                                       ; $55CE: $65
    ld l, [hl]                                    ; $55CF: $6E
    ld [hl], e                                    ; $55D0: $73
    ld h, l                                       ; $55D1: $65
    jr nz, jr_019_5643                            ; $55D2: $20 $6F

    ld h, [hl]                                    ; $55D4: $66
    jr nz, jr_019_564B                            ; $55D5: $20 $74

    ld l, b                                       ; $55D7: $68
    ld h, l                                       ; $55D8: $65
    rst $38                                       ; $55D9: $FF
    ld h, [hl]                                    ; $55DA: $66
    ld l, a                                       ; $55DB: $6F
    ld [hl], d                                    ; $55DC: $72
    ld l, l                                       ; $55DD: $6D
    ld h, c                                       ; $55DE: $61
    ld l, h                                       ; $55DF: $6C
    ld l, c                                       ; $55E0: $69
    ld [hl], h                                    ; $55E1: $74
    ld l, c                                       ; $55E2: $69
    ld h, l                                       ; $55E3: $65
    ld [hl], e                                    ; $55E4: $73
    jr nz, jr_019_564D                            ; $55E5: $20 $66

    ld l, a                                       ; $55E7: $6F
    ld [hl], d                                    ; $55E8: $72

jr_019_55E9:
    cp $6E                                        ; $55E9: $FE $6E
    ld l, a                                       ; $55EB: $6F
    ld [hl], a                                    ; $55EC: $77
    ld l, $FE                                     ; $55ED: $2E $FE
    db $FD                                        ; $55EF: $FD
    sbc d                                         ; $55F0: $9A
    ld e, b                                       ; $55F1: $58
    ld [bc], a                                    ; $55F2: $02
    ld b, d                                       ; $55F3: $42
    sbc e                                         ; $55F4: $9B
    ld l, b                                       ; $55F5: $68
    ld a, e                                       ; $55F6: $7B
    sbc a                                         ; $55F7: $9F
    ld d, h                                       ; $55F8: $54
    ld l, b                                       ; $55F9: $68
    ld h, c                                       ; $55FA: $61
    ld l, [hl]                                    ; $55FB: $6E
    ld l, e                                       ; $55FC: $6B

jr_019_55FD:
    jr nz, jr_019_5666                            ; $55FD: $20 $67

    ld l, a                                       ; $55FF: $6F
    ld l, a                                       ; $5600: $6F
    ld h, h                                       ; $5601: $64
    ld l, [hl]                                    ; $5602: $6E
    ld h, l                                       ; $5603: $65
    ld [hl], e                                    ; $5604: $73
    ld [hl], e                                    ; $5605: $73
    rst $38                                       ; $5606: $FF
    ld a, c                                       ; $5607: $79

jr_019_5608:
    ld l, a                                       ; $5608: $6F
    ld [hl], l                                    ; $5609: $75
    daa                                           ; $560A: $27
    ld [hl], d                                    ; $560B: $72
    ld h, l                                       ; $560C: $65
    jr nz, jr_019_5677                            ; $560D: $20 $68

    ld h, l                                       ; $560F: $65
    ld [hl], d                                    ; $5610: $72
    ld h, l                                       ; $5611: $65
    ld l, $FE                                     ; $5612: $2E $FE
    db $FD                                        ; $5614: $FD
    sbc e                                         ; $5615: $9B
    ld a, b                                       ; $5616: $78
    ld [hl], b                                    ; $5617: $70
    sbc a                                         ; $5618: $9F
    ld c, c                                       ; $5619: $49
    jr nz, jr_019_567D                            ; $561A: $20 $61

    ld l, l                                       ; $561C: $6D
    jr nz, jr_019_5687                            ; $561D: $20 $68

    ld l, a                                       ; $561F: $6F
    ld l, [hl]                                    ; $5620: $6E
    ld l, a                                       ; $5621: $6F
    ld [hl], d                                    ; $5622: $72
    ld h, l                                       ; $5623: $65
    ld h, h                                       ; $5624: $64
    jr nz, jr_019_569B                            ; $5625: $20 $74

    ld l, a                                       ; $5627: $6F
    rst $38                                       ; $5628: $FF
    ld l, l                                       ; $5629: $6D
    ld h, l                                       ; $562A: $65
    ld h, l                                       ; $562B: $65
    ld [hl], h                                    ; $562C: $74
    jr nz, @+$7B                                  ; $562D: $20 $79

    ld l, a                                       ; $562F: $6F
    ld [hl], l                                    ; $5630: $75
    inc l                                         ; $5631: $2C
    jr nz, jr_019_56AD                            ; $5632: $20 $79

    ld l, a                                       ; $5634: $6F
    ld [hl], l                                    ; $5635: $75
    ld [hl], d                                    ; $5636: $72
    cp $6D                                        ; $5637: $FE $6D

jr_019_5639:
    ld h, c                                       ; $5639: $61
    ld l, d                                       ; $563A: $6A
    ld h, l                                       ; $563B: $65
    ld [hl], e                                    ; $563C: $73
    ld [hl], h                                    ; $563D: $74
    ld a, c                                       ; $563E: $79
    ld l, $FE                                     ; $563F: $2E $FE
    db $FD                                        ; $5641: $FD
    sbc e                                         ; $5642: $9B

jr_019_5643:
    ld l, b                                       ; $5643: $68
    ld a, e                                       ; $5644: $7B
    sbc a                                         ; $5645: $9F
    ld c, h                                       ; $5646: $4C
    ld l, c                                       ; $5647: $69
    ld l, e                                       ; $5648: $6B
    ld h, l                                       ; $5649: $65
    ld [hl], a                                    ; $564A: $77

jr_019_564B:
    ld l, c                                       ; $564B: $69
    ld [hl], e                                    ; $564C: $73

jr_019_564D:
    ld h, l                                       ; $564D: $65
    inc l                                         ; $564E: $2C
    rst $38                                       ; $564F: $FF
    ld b, a                                       ; $5650: $47
    ld [hl], d                                    ; $5651: $72
    ld h, l                                       ; $5652: $65
    ld h, c                                       ; $5653: $61
    ld [hl], h                                    ; $5654: $74
    jr nz, jr_019_56A4                            ; $5655: $20 $4D

    ld h, c                                       ; $5657: $61
    ld h, a                                       ; $5658: $67
    ld [hl], l                                    ; $5659: $75
    ld [hl], e                                    ; $565A: $73
    ld l, $FE                                     ; $565B: $2E $FE
    ld d, a                                       ; $565D: $57
    ld h, l                                       ; $565E: $65
    jr nz, jr_019_56CE                            ; $565F: $20 $6D

    ld [hl], l                                    ; $5661: $75
    ld [hl], e                                    ; $5662: $73
    ld [hl], h                                    ; $5663: $74
    jr nz, jr_019_56C7                            ; $5664: $20 $61

jr_019_5666:
    ld h, e                                       ; $5666: $63
    ld [hl], h                                    ; $5667: $74
    rst $38                                       ; $5668: $FF
    ld [hl], c                                    ; $5669: $71
    ld [hl], l                                    ; $566A: $75
    ld l, c                                       ; $566B: $69
    ld h, e                                       ; $566C: $63
    ld l, e                                       ; $566D: $6B
    ld l, h                                       ; $566E: $6C
    ld a, c                                       ; $566F: $79
    inc l                                         ; $5670: $2C
    jr nz, jr_019_56D9                            ; $5671: $20 $66

    ld l, a                                       ; $5673: $6F
    ld [hl], d                                    ; $5674: $72
    cp $74                                        ; $5675: $FE $74

jr_019_5677:
    ld l, b                                       ; $5677: $68
    ld h, l                                       ; $5678: $65
    jr nz, @+$67                                  ; $5679: $20 $65

    halt                                          ; $567B: $76
    ld l, c                                       ; $567C: $69

jr_019_567D:
    ld l, h                                       ; $567D: $6C
    jr nz, @+$71                                  ; $567E: $20 $6F

    ld l, [hl]                                    ; $5680: $6E
    ld h, l                                       ; $5681: $65
    ld [hl], e                                    ; $5682: $73
    rst $38                                       ; $5683: $FF
    ld h, a                                       ; $5684: $67
    ld [hl], d                                    ; $5685: $72
    ld l, a                                       ; $5686: $6F

jr_019_5687:
    ld [hl], a                                    ; $5687: $77
    jr nz, jr_019_56F7                            ; $5688: $20 $6D

    ld l, a                                       ; $568A: $6F
    ld [hl], d                                    ; $568B: $72
    ld h, l                                       ; $568C: $65
    cp $70                                        ; $568D: $FE $70
    ld l, a                                       ; $568F: $6F
    ld [hl], a                                    ; $5690: $77
    ld h, l                                       ; $5691: $65
    ld [hl], d                                    ; $5692: $72
    ld h, [hl]                                    ; $5693: $66
    ld [hl], l                                    ; $5694: $75
    ld l, h                                       ; $5695: $6C
    jr nz, jr_019_570F                            ; $5696: $20 $77

    ld l, c                                       ; $5698: $69
    ld [hl], h                                    ; $5699: $74
    ld l, b                                       ; $569A: $68

jr_019_569B:
    rst $38                                       ; $569B: $FF
    ld h, l                                       ; $569C: $65
    ld h, c                                       ; $569D: $61
    ld h, e                                       ; $569E: $63
    ld l, b                                       ; $569F: $68
    jr nz, jr_019_5703                            ; $56A0: $20 $61

    ld [hl], h                                    ; $56A2: $74
    ld [hl], h                                    ; $56A3: $74

jr_019_56A4:
    ld h, c                                       ; $56A4: $61
    ld h, e                                       ; $56A5: $63
    ld l, e                                       ; $56A6: $6B
    ld l, $FE                                     ; $56A7: $2E $FE
    ld c, c                                       ; $56A9: $49
    jr nz, jr_019_5717                            ; $56AA: $20 $6B

    ld l, [hl]                                    ; $56AC: $6E

jr_019_56AD:
    ld l, a                                       ; $56AD: $6F
    ld [hl], a                                    ; $56AE: $77
    jr nz, jr_019_572A                            ; $56AF: $20 $79

    ld l, a                                       ; $56B1: $6F
    ld [hl], l                                    ; $56B2: $75
    jr nz, jr_019_571D                            ; $56B3: $20 $68

    ld h, c                                       ; $56B5: $61
    halt                                          ; $56B6: $76
    ld h, l                                       ; $56B7: $65
    rst $38                                       ; $56B8: $FF
    ld [hl], h                                    ; $56B9: $74
    ld l, b                                       ; $56BA: $68
    ld h, l                                       ; $56BB: $65
    jr nz, jr_019_571F                            ; $56BC: $20 $61

    ld h, d                                       ; $56BE: $62
    ld l, c                                       ; $56BF: $69
    ld l, h                                       ; $56C0: $6C
    ld l, c                                       ; $56C1: $69
    ld [hl], h                                    ; $56C2: $74
    ld a, c                                       ; $56C3: $79
    jr nz, jr_019_573A                            ; $56C4: $20 $74

    ld l, a                                       ; $56C6: $6F

jr_019_56C7:
    cp $73                                        ; $56C7: $FE $73
    ld [hl], h                                    ; $56C9: $74
    ld l, a                                       ; $56CA: $6F
    ld [hl], b                                    ; $56CB: $70
    jr nz, jr_019_5742                            ; $56CC: $20 $74

jr_019_56CE:
    ld l, b                                       ; $56CE: $68
    ld h, l                                       ; $56CF: $65
    jr nz, @+$55                                  ; $56D0: $20 $53

    ld l, b                                       ; $56D2: $68
    ld h, c                                       ; $56D3: $61
    ld h, h                                       ; $56D4: $64
    ld l, a                                       ; $56D5: $6F
    ld [hl], a                                    ; $56D6: $77
    rst $38                                       ; $56D7: $FF
    ld b, a                                       ; $56D8: $47

jr_019_56D9:
    ld h, l                                       ; $56D9: $65
    ld a, c                                       ; $56DA: $79
    ld [hl], e                                    ; $56DB: $73
    ld h, l                                       ; $56DC: $65
    ld [hl], d                                    ; $56DD: $72
    inc l                                         ; $56DE: $2C
    jr nz, @+$75                                  ; $56DF: $20 $73

    ld l, a                                       ; $56E1: $6F
    cp $70                                        ; $56E2: $FE $70
    ld l, h                                       ; $56E4: $6C
    ld h, l                                       ; $56E5: $65
    ld h, c                                       ; $56E6: $61
    ld [hl], e                                    ; $56E7: $73
    ld h, l                                       ; $56E8: $65
    jr nz, jr_019_5753                            ; $56E9: $20 $68

    ld h, l                                       ; $56EB: $65
    ld l, h                                       ; $56EC: $6C
    ld [hl], b                                    ; $56ED: $70
    jr nz, @+$77                                  ; $56EE: $20 $75

    ld [hl], e                                    ; $56F0: $73
    ld hl, $53FE                                  ; $56F1: $21 $FE $53
    ld l, c                                       ; $56F4: $69
    ld l, [hl]                                    ; $56F5: $6E
    ld h, e                                       ; $56F6: $63

jr_019_56F7:
    ld h, l                                       ; $56F7: $65
    jr nz, jr_019_5773                            ; $56F8: $20 $79

    ld l, a                                       ; $56FA: $6F
    ld [hl], l                                    ; $56FB: $75
    jr nz, jr_019_5762                            ; $56FC: $20 $64

    ld l, a                                       ; $56FE: $6F
    rst $38                                       ; $56FF: $FF
    ld l, [hl]                                    ; $5700: $6E
    ld l, a                                       ; $5701: $6F
    ld [hl], h                                    ; $5702: $74

jr_019_5703:
    jr nz, jr_019_576D                            ; $5703: $20 $68

    ld h, c                                       ; $5705: $61
    halt                                          ; $5706: $76
    ld h, l                                       ; $5707: $65
    jr nz, @+$79                                  ; $5708: $20 $77

    ld l, c                                       ; $570A: $69
    ld l, [hl]                                    ; $570B: $6E
    ld h, a                                       ; $570C: $67
    ld [hl], e                                    ; $570D: $73
    inc l                                         ; $570E: $2C

jr_019_570F:
    cp $74                                        ; $570F: $FE $74
    ld h, c                                       ; $5711: $61
    ld l, e                                       ; $5712: $6B
    ld h, l                                       ; $5713: $65
    jr nz, jr_019_578A                            ; $5714: $20 $74

    ld l, b                                       ; $5716: $68

jr_019_5717:
    ld l, c                                       ; $5717: $69
    ld [hl], e                                    ; $5718: $73
    ld l, $FE                                     ; $5719: $2E $FE
    db $FD                                        ; $571B: $FD
    sbc d                                         ; $571C: $9A

jr_019_571D:
    rra                                           ; $571D: $1F
    nop                                           ; $571E: $00

jr_019_571F:
    sbc a                                         ; $571F: $9F
    ld d, h                                       ; $5720: $54
    ld l, a                                       ; $5721: $6F
    ld l, [hl]                                    ; $5722: $6E
    ld a, c                                       ; $5723: $79
    jr nz, jr_019_578D                            ; $5724: $20 $67

    ld l, a                                       ; $5726: $6F
    ld [hl], h                                    ; $5727: $74
    rst $38                                       ; $5728: $FF
    ld d, h                                       ; $5729: $54

jr_019_572A:
    ld l, b                                       ; $572A: $68
    ld h, l                                       ; $572B: $65
    jr nz, jr_019_5773                            ; $572C: $20 $45

    ld a, c                                       ; $572E: $79
    ld h, l                                       ; $572F: $65

jr_019_5730:
    jr nz, jr_019_57A1                            ; $5730: $20 $6F

    ld h, [hl]                                    ; $5732: $66
    rst $38                                       ; $5733: $FF
    ld [hl], h                                    ; $5734: $74
    ld l, b                                       ; $5735: $68
    ld h, l                                       ; $5736: $65
    jr nz, jr_019_578C                            ; $5737: $20 $53

    ld [hl], h                                    ; $5739: $74

jr_019_573A:
    ld l, a                                       ; $573A: $6F
    ld [hl], d                                    ; $573B: $72
    ld l, l                                       ; $573C: $6D
    ld hl, $40FD                                  ; $573D: $21 $FD $40
    or h                                          ; $5740: $B4
    ld b, b                                       ; $5741: $40

jr_019_5742:
    or h                                          ; $5742: $B4
    ld b, b                                       ; $5743: $40
    or h                                          ; $5744: $B4
    sbc d                                         ; $5745: $9A
    sbc e                                         ; $5746: $9B
    ld l, b                                       ; $5747: $68
    ld a, e                                       ; $5748: $7B
    sbc a                                         ; $5749: $9F
    ld d, h                                       ; $574A: $54
    ld l, b                                       ; $574B: $68
    ld l, c                                       ; $574C: $69
    ld [hl], e                                    ; $574D: $73
    jr nz, @+$79                                  ; $574E: $20 $77

    ld l, c                                       ; $5750: $69
    ld l, h                                       ; $5751: $6C
    ld l, h                                       ; $5752: $6C

jr_019_5753:
    jr nz, jr_019_57B6                            ; $5753: $20 $61

    ld l, h                                       ; $5755: $6C
    ld l, h                                       ; $5756: $6C
    ld l, a                                       ; $5757: $6F
    ld [hl], a                                    ; $5758: $77
    rst $38                                       ; $5759: $FF
    ld a, c                                       ; $575A: $79
    ld l, a                                       ; $575B: $6F
    ld [hl], l                                    ; $575C: $75
    jr nz, jr_019_57D3                            ; $575D: $20 $74

    ld l, a                                       ; $575F: $6F
    jr nz, @+$68                                  ; $5760: $20 $66

jr_019_5762:
    ld l, h                                       ; $5762: $6C
    ld a, c                                       ; $5763: $79
    ld l, $FE                                     ; $5764: $2E $FE
    ld c, c                                       ; $5766: $49
    ld h, [hl]                                    ; $5767: $66
    jr nz, jr_019_57DE                            ; $5768: $20 $74

    ld l, b                                       ; $576A: $68
    ld h, l                                       ; $576B: $65
    ld [hl], d                                    ; $576C: $72

jr_019_576D:
    ld h, l                                       ; $576D: $65
    daa                                           ; $576E: $27
    ld [hl], e                                    ; $576F: $73
    rst $38                                       ; $5770: $FF
    ld h, c                                       ; $5771: $61
    ld l, [hl]                                    ; $5772: $6E

jr_019_5773:
    ld a, c                                       ; $5773: $79
    ld [hl], h                                    ; $5774: $74
    ld l, b                                       ; $5775: $68
    ld l, c                                       ; $5776: $69
    ld l, [hl]                                    ; $5777: $6E
    ld h, a                                       ; $5778: $67
    jr nz, jr_019_57E0                            ; $5779: $20 $65

    ld l, h                                       ; $577B: $6C
    ld [hl], e                                    ; $577C: $73
    ld h, l                                       ; $577D: $65
    cp $49                                        ; $577E: $FE $49
    jr nz, jr_019_57E5                            ; $5780: $20 $63

    ld h, c                                       ; $5782: $61
    ld l, [hl]                                    ; $5783: $6E
    jr nz, jr_019_57EA                            ; $5784: $20 $64

    ld l, a                                       ; $5786: $6F
    dec l                                         ; $5787: $2D
    cp $FD                                        ; $5788: $FE $FD

jr_019_578A:
    sbc d                                         ; $578A: $9A
    sbc e                                         ; $578B: $9B

jr_019_578C:
    cp b                                          ; $578C: $B8

jr_019_578D:
    ld e, l                                       ; $578D: $5D
    rra                                           ; $578E: $1F
    jr jr_019_5730                                ; $578F: $18 $9F

    ld d, b                                       ; $5791: $50
    ld l, c                                       ; $5792: $69
    ld [hl], h                                    ; $5793: $74
    ld l, c                                       ; $5794: $69
    ld h, [hl]                                    ; $5795: $66
    ld [hl], l                                    ; $5796: $75
    ld l, h                                       ; $5797: $6C
    ld l, $FE                                     ; $5798: $2E $FE
    db $FD                                        ; $579A: $FD
    sbc d                                         ; $579B: $9A
    ld e, b                                       ; $579C: $58
    inc bc                                        ; $579D: $03
    ld b, d                                       ; $579E: $42
    sbc e                                         ; $579F: $9B
    ld l, b                                       ; $57A0: $68

jr_019_57A1:
    ld a, e                                       ; $57A1: $7B
    sbc a                                         ; $57A2: $9F
    ld c, h                                       ; $57A3: $4C
    ld h, l                                       ; $57A4: $65
    ld h, c                                       ; $57A5: $61
    halt                                          ; $57A6: $76
    ld h, l                                       ; $57A7: $65
    jr nz, jr_019_581F                            ; $57A8: $20 $75

    ld [hl], e                                    ; $57AA: $73
    ld l, $FF                                     ; $57AB: $2E $FF
    ld c, a                                       ; $57AD: $4F
    ld [hl], d                                    ; $57AE: $72
    ld h, c                                       ; $57AF: $61
    ld l, $FE                                     ; $57B0: $2E $FE
    db $FD                                        ; $57B2: $FD
    sbc e                                         ; $57B3: $9B
    add hl, hl                                    ; $57B4: $29
    ld e, h                                       ; $57B5: $5C

jr_019_57B6:
    sbc a                                         ; $57B6: $9F
    ld b, d                                       ; $57B7: $42
    ld [hl], l                                    ; $57B8: $75
    ld [hl], h                                    ; $57B9: $74
    ld l, $2E                                     ; $57BA: $2E $2E
    ld l, $FE                                     ; $57BC: $2E $FE
    db $FD                                        ; $57BE: $FD
    sbc e                                         ; $57BF: $9B
    ld l, b                                       ; $57C0: $68
    ld a, e                                       ; $57C1: $7B
    sbc a                                         ; $57C2: $9F
    ld c, [hl]                                    ; $57C3: $4E
    ld l, a                                       ; $57C4: $6F
    ld [hl], a                                    ; $57C5: $77
    ld hl, $FDFE                                  ; $57C6: $21 $FE $FD
    sbc e                                         ; $57C9: $9B
    add hl, hl                                    ; $57CA: $29
    ld e, h                                       ; $57CB: $5C
    sbc a                                         ; $57CC: $9F
    ld e, c                                       ; $57CD: $59
    ld h, l                                       ; $57CE: $65
    ld [hl], e                                    ; $57CF: $73
    inc l                                         ; $57D0: $2C
    jr nz, jr_019_5840                            ; $57D1: $20 $6D

jr_019_57D3:
    ld a, c                                       ; $57D3: $79
    jr nz, jr_019_5827                            ; $57D4: $20 $51

    ld [hl], l                                    ; $57D6: $75
    ld h, l                                       ; $57D7: $65
    ld h, l                                       ; $57D8: $65
    ld l, [hl]                                    ; $57D9: $6E
    ld l, $FE                                     ; $57DA: $2E $FE
    db $FD                                        ; $57DC: $FD
    sbc d                                         ; $57DD: $9A

jr_019_57DE:
    ld e, b                                       ; $57DE: $58
    inc d                                         ; $57DF: $14

jr_019_57E0:
    ld b, d                                       ; $57E0: $42
    sbc e                                         ; $57E1: $9B
    cp b                                          ; $57E2: $B8
    ld e, l                                       ; $57E3: $5D
    sbc a                                         ; $57E4: $9F

jr_019_57E5:
    ld d, a                                       ; $57E5: $57
    ld h, l                                       ; $57E6: $65
    jr nz, jr_019_5856                            ; $57E7: $20 $6D

    ld h, l                                       ; $57E9: $65

jr_019_57EA:
    ld h, l                                       ; $57EA: $65
    ld [hl], h                                    ; $57EB: $74
    jr nz, jr_019_584F                            ; $57EC: $20 $61

    ld h, a                                       ; $57EE: $67
    ld h, c                                       ; $57EF: $61
    ld l, c                                       ; $57F0: $69
    ld l, [hl]                                    ; $57F1: $6E
    inc l                                         ; $57F2: $2C
    rst $38                                       ; $57F3: $FF
    ld c, e                                       ; $57F4: $4B
    ld a, c                                       ; $57F5: $79
    ld [hl], d                                    ; $57F6: $72
    ld l, a                                       ; $57F7: $6F
    ld [hl], e                                    ; $57F8: $73
    ld hl, $4920                                  ; $57F9: $21 $20 $49
    jr nz, @+$6F                                  ; $57FC: $20 $6D

    ld [hl], l                                    ; $57FE: $75
    ld [hl], e                                    ; $57FF: $73
    ld [hl], h                                    ; $5800: $74
    cp $61                                        ; $5801: $FE $61
    ld h, h                                       ; $5803: $64
    ld l, l                                       ; $5804: $6D
    ld l, c                                       ; $5805: $69
    ld [hl], h                                    ; $5806: $74
    inc l                                         ; $5807: $2C
    jr nz, jr_019_5853                            ; $5808: $20 $49

    jr nz, jr_019_586D                            ; $580A: $20 $61

    ld l, l                                       ; $580C: $6D
    rst $38                                       ; $580D: $FF
    ld l, c                                       ; $580E: $69
    ld l, l                                       ; $580F: $6D
    ld [hl], b                                    ; $5810: $70
    ld [hl], d                                    ; $5811: $72
    ld h, l                                       ; $5812: $65
    ld [hl], e                                    ; $5813: $73
    ld [hl], e                                    ; $5814: $73
    ld h, l                                       ; $5815: $65
    ld h, h                                       ; $5816: $64
    jr nz, jr_019_588D                            ; $5817: $20 $74

    ld l, b                                       ; $5819: $68
    ld h, c                                       ; $581A: $61
    ld [hl], h                                    ; $581B: $74
    cp $79                                        ; $581C: $FE $79
    ld l, a                                       ; $581E: $6F

jr_019_581F:
    ld [hl], l                                    ; $581F: $75
    jr nz, jr_019_5899                            ; $5820: $20 $77

    ld h, l                                       ; $5822: $65
    ld [hl], d                                    ; $5823: $72
    ld h, l                                       ; $5824: $65
    jr nz, jr_019_5888                            ; $5825: $20 $61

jr_019_5827:
    ld h, d                                       ; $5827: $62
    ld l, h                                       ; $5828: $6C
    ld h, l                                       ; $5829: $65
    rst $38                                       ; $582A: $FF
    ld [hl], h                                    ; $582B: $74
    ld l, a                                       ; $582C: $6F
    jr nz, jr_019_5893                            ; $582D: $20 $64

    ld l, c                                       ; $582F: $69
    ld [hl], e                                    ; $5830: $73
    ld [hl], b                                    ; $5831: $70
    ld l, a                                       ; $5832: $6F
    ld [hl], e                                    ; $5833: $73
    ld h, l                                       ; $5834: $65
    jr nz, jr_019_58A6                            ; $5835: $20 $6F

    ld h, [hl]                                    ; $5837: $66
    cp $5A                                        ; $5838: $FE $5A
    ld h, l                                       ; $583A: $65
    ld [hl], h                                    ; $583B: $74
    inc l                                         ; $583C: $2C
    jr nz, @+$63                                  ; $583D: $20 $61

    ld l, [hl]                                    ; $583F: $6E

jr_019_5840:
    ld h, h                                       ; $5840: $64
    rst $38                                       ; $5841: $FF
    ld [hl], d                                    ; $5842: $72
    ld h, l                                       ; $5843: $65
    ld l, h                                       ; $5844: $6C
    ld l, c                                       ; $5845: $69
    ld h, l                                       ; $5846: $65
    halt                                          ; $5847: $76
    ld h, l                                       ; $5848: $65
    ld h, h                                       ; $5849: $64
    jr nz, @+$76                                  ; $584A: $20 $74

    ld l, b                                       ; $584C: $68
    ld h, c                                       ; $584D: $61
    ld [hl], h                                    ; $584E: $74

jr_019_584F:
    cp $79                                        ; $584F: $FE $79
    ld l, a                                       ; $5851: $6F
    ld [hl], l                                    ; $5852: $75

jr_019_5853:
    jr nz, jr_019_58CC                            ; $5853: $20 $77

    ld h, l                                       ; $5855: $65

jr_019_5856:
    ld [hl], d                                    ; $5856: $72
    ld h, l                                       ; $5857: $65
    jr nz, jr_019_58BB                            ; $5858: $20 $61

    ld h, d                                       ; $585A: $62
    ld l, h                                       ; $585B: $6C
    ld h, l                                       ; $585C: $65
    rst $38                                       ; $585D: $FF
    ld [hl], h                                    ; $585E: $74
    ld l, a                                       ; $585F: $6F
    jr nz, jr_019_58D4                            ; $5860: $20 $72

    ld l, c                                       ; $5862: $69
    ld h, h                                       ; $5863: $64
    jr nz, jr_019_58D3                            ; $5864: $20 $6D

    ld h, l                                       ; $5866: $65
    jr nz, jr_019_58D8                            ; $5867: $20 $6F

    ld h, [hl]                                    ; $5869: $66
    cp $4B                                        ; $586A: $FE $4B
    ld l, a                                       ; $586C: $6F

jr_019_586D:
    ld [hl], d                                    ; $586D: $72
    ld h, a                                       ; $586E: $67
    ld l, $20                                     ; $586F: $2E $20
    ld c, c                                       ; $5871: $49
    ld [hl], h                                    ; $5872: $74
    jr nz, @+$75                                  ; $5873: $20 $73

    ld h, l                                       ; $5875: $65
    ld h, l                                       ; $5876: $65
    ld l, l                                       ; $5877: $6D
    ld [hl], e                                    ; $5878: $73
    rst $38                                       ; $5879: $FF
    ld [hl], h                                    ; $587A: $74
    ld l, b                                       ; $587B: $68
    ld h, c                                       ; $587C: $61
    ld [hl], h                                    ; $587D: $74
    inc l                                         ; $587E: $2C
    jr nz, jr_019_58EA                            ; $587F: $20 $69

    ld l, [hl]                                    ; $5881: $6E
    jr nz, jr_019_58F8                            ; $5882: $20 $74

    ld l, b                                       ; $5884: $68
    ld h, l                                       ; $5885: $65
    cp $65                                        ; $5886: $FE $65

jr_019_5888:
    ld l, [hl]                                    ; $5888: $6E
    ld h, h                                       ; $5889: $64
    inc l                                         ; $588A: $2C
    jr nz, jr_019_5906                            ; $588B: $20 $79

jr_019_588D:
    ld l, a                                       ; $588D: $6F
    ld [hl], l                                    ; $588E: $75
    jr nz, jr_019_58F9                            ; $588F: $20 $68

    ld h, c                                       ; $5891: $61
    halt                                          ; $5892: $76

jr_019_5893:
    ld h, l                                       ; $5893: $65
    rst $38                                       ; $5894: $FF
    ld h, d                                       ; $5895: $62
    ld h, l                                       ; $5896: $65
    ld h, l                                       ; $5897: $65
    ld l, [hl]                                    ; $5898: $6E

jr_019_5899:
    jr nz, jr_019_590C                            ; $5899: $20 $71

    ld [hl], l                                    ; $589B: $75
    ld l, c                                       ; $589C: $69
    ld [hl], h                                    ; $589D: $74
    ld h, l                                       ; $589E: $65
    jr nz, jr_019_5902                            ; $589F: $20 $61

    cp $68                                        ; $58A1: $FE $68
    ld h, l                                       ; $58A3: $65
    ld l, h                                       ; $58A4: $6C
    ld [hl], b                                    ; $58A5: $70

jr_019_58A6:
    jr nz, jr_019_591C                            ; $58A6: $20 $74

    ld l, a                                       ; $58A8: $6F
    jr nz, jr_019_5918                            ; $58A9: $20 $6D

    ld h, l                                       ; $58AB: $65
    rst $38                                       ; $58AC: $FF
    ld h, c                                       ; $58AD: $61
    ld h, [hl]                                    ; $58AE: $66
    ld [hl], h                                    ; $58AF: $74
    ld h, l                                       ; $58B0: $65
    ld [hl], d                                    ; $58B1: $72
    jr nz, jr_019_5915                            ; $58B2: $20 $61

    ld l, h                                       ; $58B4: $6C
    ld l, h                                       ; $58B5: $6C
    ld hl, $FDFE                                  ; $58B6: $21 $FE $FD
    sbc e                                         ; $58B9: $9B
    ld a, b                                       ; $58BA: $78

jr_019_58BB:
    ld [hl], b                                    ; $58BB: $70
    sbc a                                         ; $58BC: $9F
    ld l, $2E                                     ; $58BD: $2E $2E
    ld l, $2E                                     ; $58BF: $2E $2E
    ld l, $2E                                     ; $58C1: $2E $2E
    ld l, $2E                                     ; $58C3: $2E $2E
    ld l, $FE                                     ; $58C5: $2E $FE
    db $FD                                        ; $58C7: $FD
    sbc e                                         ; $58C8: $9B
    cp b                                          ; $58C9: $B8
    ld e, l                                       ; $58CA: $5D
    sbc a                                         ; $58CB: $9F

jr_019_58CC:
    ld b, c                                       ; $58CC: $41
    ld l, [hl]                                    ; $58CD: $6E
    ld h, h                                       ; $58CE: $64
    jr nz, jr_019_591B                            ; $58CF: $20 $4A

    ld h, c                                       ; $58D1: $61
    ld h, l                                       ; $58D2: $65

jr_019_58D3:
    ld l, h                                       ; $58D3: $6C

jr_019_58D4:
    ld h, c                                       ; $58D4: $61
    ld hl, $4820                                  ; $58D5: $21 $20 $48

jr_019_58D8:
    ld l, a                                       ; $58D8: $6F
    ld [hl], a                                    ; $58D9: $77
    rst $38                                       ; $58DA: $FF
    ld h, h                                       ; $58DB: $64
    ld l, a                                       ; $58DC: $6F
    ld h, l                                       ; $58DD: $65
    ld [hl], e                                    ; $58DE: $73
    jr nz, jr_019_594A                            ; $58DF: $20 $69

    ld [hl], h                                    ; $58E1: $74
    jr nz, jr_019_594A                            ; $58E2: $20 $66

    ld h, l                                       ; $58E4: $65
    ld h, l                                       ; $58E5: $65
    ld l, h                                       ; $58E6: $6C
    jr nz, jr_019_595D                            ; $58E7: $20 $74

    ld l, a                                       ; $58E9: $6F

jr_019_58EA:
    cp $62                                        ; $58EA: $FE $62
    ld h, l                                       ; $58EC: $65
    jr nz, jr_019_595F                            ; $58ED: $20 $70

    ld l, a                                       ; $58EF: $6F
    ld [hl], a                                    ; $58F0: $77
    ld h, l                                       ; $58F1: $65
    ld [hl], d                                    ; $58F2: $72
    ld l, h                                       ; $58F3: $6C
    ld h, l                                       ; $58F4: $65
    ld [hl], e                                    ; $58F5: $73
    ld [hl], e                                    ; $58F6: $73
    rst $38                                       ; $58F7: $FF

jr_019_58F8:
    ld [hl], d                                    ; $58F8: $72

jr_019_58F9:
    ld l, a                                       ; $58F9: $6F
    ld a, c                                       ; $58FA: $79
    ld h, c                                       ; $58FB: $61
    ld l, h                                       ; $58FC: $6C
    ld [hl], h                                    ; $58FD: $74
    ld a, c                                       ; $58FE: $79
    ccf                                           ; $58FF: $3F
    jr nz, jr_019_5957                            ; $5900: $20 $55

jr_019_5902:
    ld l, [hl]                                    ; $5902: $6E
    ld h, c                                       ; $5903: $61
    ld h, d                                       ; $5904: $62
    ld l, h                                       ; $5905: $6C

jr_019_5906:
    ld h, l                                       ; $5906: $65
    cp $74                                        ; $5907: $FE $74
    ld l, a                                       ; $5909: $6F
    jr nz, jr_019_5970                            ; $590A: $20 $64

jr_019_590C:
    ld l, a                                       ; $590C: $6F
    jr nz, jr_019_5970                            ; $590D: $20 $61

    ld l, [hl]                                    ; $590F: $6E
    ld a, c                                       ; $5910: $79
    ld [hl], h                                    ; $5911: $74
    ld l, b                                       ; $5912: $68
    ld l, c                                       ; $5913: $69
    ld l, [hl]                                    ; $5914: $6E

jr_019_5915:
    ld h, a                                       ; $5915: $67
    rst $38                                       ; $5916: $FF
    ld [hl], a                                    ; $5917: $77

jr_019_5918:
    ld l, b                                       ; $5918: $68
    ld l, c                                       ; $5919: $69
    ld l, h                                       ; $591A: $6C

jr_019_591B:
    ld h, l                                       ; $591B: $65

jr_019_591C:
    jr nz, jr_019_5997                            ; $591C: $20 $79

    ld l, a                                       ; $591E: $6F
    ld [hl], l                                    ; $591F: $75
    ld [hl], d                                    ; $5920: $72
    cp $73                                        ; $5921: $FE $73
    ld [hl], l                                    ; $5923: $75
    ld h, d                                       ; $5924: $62
    ld l, d                                       ; $5925: $6A
    ld h, l                                       ; $5926: $65
    ld h, e                                       ; $5927: $63
    ld [hl], h                                    ; $5928: $74
    ld [hl], e                                    ; $5929: $73
    jr nz, jr_019_598D                            ; $592A: $20 $61

    ld [hl], d                                    ; $592C: $72
    ld h, l                                       ; $592D: $65
    rst $38                                       ; $592E: $FF
    ld [hl], e                                    ; $592F: $73
    ld [hl], l                                    ; $5930: $75
    ld h, [hl]                                    ; $5931: $66
    ld h, [hl]                                    ; $5932: $66
    ld h, l                                       ; $5933: $65
    ld [hl], d                                    ; $5934: $72
    ld l, c                                       ; $5935: $69
    ld l, [hl]                                    ; $5936: $6E
    ld h, a                                       ; $5937: $67
    ccf                                           ; $5938: $3F
    cp $FD                                        ; $5939: $FE $FD
    sbc e                                         ; $593B: $9B
    ld l, b                                       ; $593C: $68
    ld a, e                                       ; $593D: $7B
    sbc a                                         ; $593E: $9F
    ld l, $2E                                     ; $593F: $2E $2E
    ld l, $2E                                     ; $5941: $2E $2E
    ld l, $2E                                     ; $5943: $2E $2E
    ld l, $2E                                     ; $5945: $2E $2E
    ld l, $FE                                     ; $5947: $2E $FE
    db $FD                                        ; $5949: $FD

jr_019_594A:
    sbc e                                         ; $594A: $9B
    cp b                                          ; $594B: $B8
    ld e, l                                       ; $594C: $5D
    sbc a                                         ; $594D: $9F
    ld c, [hl]                                    ; $594E: $4E
    ld l, a                                       ; $594F: $6F
    ld [hl], h                                    ; $5950: $74
    ld l, b                                       ; $5951: $68
    ld l, c                                       ; $5952: $69
    ld l, [hl]                                    ; $5953: $6E
    ld h, a                                       ; $5954: $67
    jr nz, jr_019_59CB                            ; $5955: $20 $74

jr_019_5957:
    ld l, a                                       ; $5957: $6F
    jr nz, jr_019_59CD                            ; $5958: $20 $73

    ld h, c                                       ; $595A: $61
    ld a, c                                       ; $595B: $79
    ccf                                           ; $595C: $3F

jr_019_595D:
    cp $4F                                        ; $595D: $FE $4F

jr_019_595F:
    ld l, [hl]                                    ; $595F: $6E
    ld h, l                                       ; $5960: $65
    jr nz, jr_019_59DA                            ; $5961: $20 $77

    ld l, a                                       ; $5963: $6F
    ld [hl], l                                    ; $5964: $75
    ld l, h                                       ; $5965: $6C
    ld h, h                                       ; $5966: $64
    jr nz, jr_019_59DD                            ; $5967: $20 $74

    ld l, b                                       ; $5969: $68
    ld l, c                                       ; $596A: $69
    ld l, [hl]                                    ; $596B: $6E
    ld l, e                                       ; $596C: $6B
    rst $38                                       ; $596D: $FF
    ld a, c                                       ; $596E: $79
    ld l, a                                       ; $596F: $6F

jr_019_5970:
    ld [hl], l                                    ; $5970: $75
    jr nz, jr_019_59DB                            ; $5971: $20 $68

    ld h, c                                       ; $5973: $61
    halt                                          ; $5974: $76
    ld h, l                                       ; $5975: $65
    jr nz, jr_019_59D9                            ; $5976: $20 $61

    jr nz, jr_019_59E6                            ; $5978: $20 $6C

    ld l, a                                       ; $597A: $6F
    ld [hl], h                                    ; $597B: $74
    cp $6F                                        ; $597C: $FE $6F
    ld l, [hl]                                    ; $597E: $6E
    jr nz, @+$7B                                  ; $597F: $20 $79

    ld l, a                                       ; $5981: $6F
    ld [hl], l                                    ; $5982: $75
    ld [hl], d                                    ; $5983: $72
    jr nz, jr_019_59F3                            ; $5984: $20 $6D

    ld l, c                                       ; $5986: $69
    ld l, [hl]                                    ; $5987: $6E
    ld h, h                                       ; $5988: $64
    rst $38                                       ; $5989: $FF
    ld [hl], d                                    ; $598A: $72
    ld l, c                                       ; $598B: $69
    ld h, a                                       ; $598C: $67

jr_019_598D:
    ld l, b                                       ; $598D: $68
    ld [hl], h                                    ; $598E: $74
    jr nz, jr_019_59FF                            ; $598F: $20 $6E

    ld l, a                                       ; $5991: $6F
    ld [hl], a                                    ; $5992: $77
    ld l, $FE                                     ; $5993: $2E $FE
    ld d, a                                       ; $5995: $57
    ld l, b                                       ; $5996: $68

jr_019_5997:
    ld a, c                                       ; $5997: $79
    jr nz, @+$66                                  ; $5998: $20 $64

    ld l, a                                       ; $599A: $6F
    ld l, [hl]                                    ; $599B: $6E
    daa                                           ; $599C: $27
    ld [hl], h                                    ; $599D: $74
    jr nz, jr_019_5A19                            ; $599E: $20 $79

    ld l, a                                       ; $59A0: $6F
    ld [hl], l                                    ; $59A1: $75
    rst $38                                       ; $59A2: $FF
    ld h, c                                       ; $59A3: $61
    ld [hl], e                                    ; $59A4: $73
    ld l, e                                       ; $59A5: $6B
    jr nz, jr_019_5A17                            ; $59A6: $20 $6F

    ld l, [hl]                                    ; $59A8: $6E
    ld h, l                                       ; $59A9: $65
    jr nz, @+$71                                  ; $59AA: $20 $6F

    ld h, [hl]                                    ; $59AC: $66
    jr nz, jr_019_5A23                            ; $59AD: $20 $74

    ld l, b                                       ; $59AF: $68
    ld h, l                                       ; $59B0: $65
    cp $6F                                        ; $59B1: $FE $6F
    ld [hl], h                                    ; $59B3: $74
    ld l, b                                       ; $59B4: $68
    ld h, l                                       ; $59B5: $65
    ld [hl], d                                    ; $59B6: $72
    jr nz, jr_019_5A2B                            ; $59B7: $20 $72

    ld h, l                                       ; $59B9: $65
    ld h, a                                       ; $59BA: $67
    ld l, c                                       ; $59BB: $69
    ld l, a                                       ; $59BC: $6F
    ld l, [hl]                                    ; $59BD: $6E
    ld [hl], e                                    ; $59BE: $73
    rst $38                                       ; $59BF: $FF
    ld h, [hl]                                    ; $59C0: $66
    ld l, a                                       ; $59C1: $6F
    ld [hl], d                                    ; $59C2: $72
    jr nz, jr_019_5A2D                            ; $59C3: $20 $68

    ld h, l                                       ; $59C5: $65
    ld l, h                                       ; $59C6: $6C
    ld [hl], b                                    ; $59C7: $70
    ccf                                           ; $59C8: $3F
    cp $FD                                        ; $59C9: $FE $FD

jr_019_59CB:
    sbc e                                         ; $59CB: $9B
    ld l, b                                       ; $59CC: $68

jr_019_59CD:
    ld a, e                                       ; $59CD: $7B
    sbc a                                         ; $59CE: $9F
    ld l, $2E                                     ; $59CF: $2E $2E
    ld l, $2E                                     ; $59D1: $2E $2E
    ld l, $2E                                     ; $59D3: $2E $2E
    ld l, $2E                                     ; $59D5: $2E $2E
    ld l, $FE                                     ; $59D7: $2E $FE

jr_019_59D9:
    db $FD                                        ; $59D9: $FD

jr_019_59DA:
    sbc e                                         ; $59DA: $9B

jr_019_59DB:
    cp b                                          ; $59DB: $B8
    ld e, l                                       ; $59DC: $5D

jr_019_59DD:
    sbc a                                         ; $59DD: $9F
    ld b, e                                       ; $59DE: $43
    ld l, a                                       ; $59DF: $6F
    ld l, l                                       ; $59E0: $6D
    ld h, l                                       ; $59E1: $65
    inc l                                         ; $59E2: $2C
    jr nz, @+$4C                                  ; $59E3: $20 $4A

    ld h, c                                       ; $59E5: $61

jr_019_59E6:
    ld h, l                                       ; $59E6: $65
    ld l, h                                       ; $59E7: $6C
    ld h, c                                       ; $59E8: $61
    inc l                                         ; $59E9: $2C
    rst $38                                       ; $59EA: $FF
    ld [hl], e                                    ; $59EB: $73
    ld h, c                                       ; $59EC: $61
    ld a, c                                       ; $59ED: $79
    jr nz, @+$75                                  ; $59EE: $20 $73

    ld l, a                                       ; $59F0: $6F
    ld l, l                                       ; $59F1: $6D
    ld h, l                                       ; $59F2: $65

jr_019_59F3:
    ld [hl], h                                    ; $59F3: $74
    ld l, b                                       ; $59F4: $68
    ld l, c                                       ; $59F5: $69
    ld l, [hl]                                    ; $59F6: $6E
    ld h, a                                       ; $59F7: $67
    ld hl, $49FE                                  ; $59F8: $21 $FE $49
    daa                                           ; $59FB: $27
    ld l, l                                       ; $59FC: $6D
    jr nz, @+$66                                  ; $59FD: $20 $64

jr_019_59FF:
    ld a, c                                       ; $59FF: $79
    ld l, c                                       ; $5A00: $69
    ld l, [hl]                                    ; $5A01: $6E
    ld h, a                                       ; $5A02: $67
    jr nz, jr_019_5A79                            ; $5A03: $20 $74

    ld l, a                                       ; $5A05: $6F
    rst $38                                       ; $5A06: $FF
    ld l, b                                       ; $5A07: $68
    ld h, l                                       ; $5A08: $65
    ld h, c                                       ; $5A09: $61
    ld [hl], d                                    ; $5A0A: $72
    jr nz, jr_019_5A84                            ; $5A0B: $20 $77

    ld l, b                                       ; $5A0D: $68
    ld h, c                                       ; $5A0E: $61
    ld [hl], h                                    ; $5A0F: $74
    daa                                           ; $5A10: $27
    ld [hl], e                                    ; $5A11: $73
    jr nz, @+$71                                  ; $5A12: $20 $6F

    ld l, [hl]                                    ; $5A14: $6E
    cp $79                                        ; $5A15: $FE $79

jr_019_5A17:
    ld l, a                                       ; $5A17: $6F
    ld [hl], l                                    ; $5A18: $75

jr_019_5A19:
    ld [hl], d                                    ; $5A19: $72
    jr nz, jr_019_5A89                            ; $5A1A: $20 $6D

    ld l, c                                       ; $5A1C: $69
    ld l, [hl]                                    ; $5A1D: $6E
    ld h, h                                       ; $5A1E: $64
    ld l, $FE                                     ; $5A1F: $2E $FE
    db $FD                                        ; $5A21: $FD
    sbc e                                         ; $5A22: $9B

jr_019_5A23:
    ld l, b                                       ; $5A23: $68
    ld a, e                                       ; $5A24: $7B
    sbc a                                         ; $5A25: $9F
    ld c, b                                       ; $5A26: $48
    ld l, a                                       ; $5A27: $6F
    ld [hl], a                                    ; $5A28: $77
    jr nz, jr_019_5A8F                            ; $5A29: $20 $64

jr_019_5A2B:
    ld h, c                                       ; $5A2B: $61
    ld [hl], d                                    ; $5A2C: $72

jr_019_5A2D:
    ld h, l                                       ; $5A2D: $65
    jr nz, jr_019_5AA9                            ; $5A2E: $20 $79

    ld l, a                                       ; $5A30: $6F
    ld [hl], l                                    ; $5A31: $75
    ld l, $2E                                     ; $5A32: $2E $2E
    ld l, $FE                                     ; $5A34: $2E $FE
    db $FD                                        ; $5A36: $FD
    sbc e                                         ; $5A37: $9B
    cp b                                          ; $5A38: $B8
    ld e, l                                       ; $5A39: $5D
    sbc a                                         ; $5A3A: $9F
    ld d, a                                       ; $5A3B: $57
    ld l, b                                       ; $5A3C: $68
    ld h, c                                       ; $5A3D: $61
    ld [hl], h                                    ; $5A3E: $74
    daa                                           ; $5A3F: $27
    ld [hl], e                                    ; $5A40: $73
    jr nz, jr_019_5AB7                            ; $5A41: $20 $74

    ld l, b                                       ; $5A43: $68
    ld h, c                                       ; $5A44: $61
    ld [hl], h                                    ; $5A45: $74
    ccf                                           ; $5A46: $3F
    jr nz, jr_019_5A92                            ; $5A47: $20 $49

    rst $38                                       ; $5A49: $FF
    ld h, e                                       ; $5A4A: $63
    ld h, c                                       ; $5A4B: $61
    ld l, [hl]                                    ; $5A4C: $6E
    daa                                           ; $5A4D: $27
    ld [hl], h                                    ; $5A4E: $74
    jr nz, jr_019_5AB9                            ; $5A4F: $20 $68

    ld h, l                                       ; $5A51: $65
    ld h, c                                       ; $5A52: $61
    ld [hl], d                                    ; $5A53: $72
    jr nz, jr_019_5ACF                            ; $5A54: $20 $79

    ld l, a                                       ; $5A56: $6F
    ld [hl], l                                    ; $5A57: $75
    ld hl, $FDFE                                  ; $5A58: $21 $FE $FD
    sbc e                                         ; $5A5B: $9B
    ld l, b                                       ; $5A5C: $68
    ld a, e                                       ; $5A5D: $7B
    sbc a                                         ; $5A5E: $9F
    ld e, c                                       ; $5A5F: $59
    ld l, a                                       ; $5A60: $6F
    ld [hl], l                                    ; $5A61: $75
    jr nz, jr_019_5ACA                            ; $5A62: $20 $66

    ld l, c                                       ; $5A64: $69
    ld l, h                                       ; $5A65: $6C
    ld [hl], h                                    ; $5A66: $74
    ld l, b                                       ; $5A67: $68
    inc l                                         ; $5A68: $2C
    cp $73                                        ; $5A69: $FE $73
    ld [hl], h                                    ; $5A6B: $74
    ld h, c                                       ; $5A6C: $61
    ld l, [hl]                                    ; $5A6D: $6E
    ld h, h                                       ; $5A6E: $64
    ld l, c                                       ; $5A6F: $69
    ld l, [hl]                                    ; $5A70: $6E
    ld h, a                                       ; $5A71: $67
    jr nz, jr_019_5AE8                            ; $5A72: $20 $74

    ld l, b                                       ; $5A74: $68
    ld h, l                                       ; $5A75: $65
    ld [hl], d                                    ; $5A76: $72
    ld h, l                                       ; $5A77: $65
    rst $38                                       ; $5A78: $FF

jr_019_5A79:
    ld h, d                                       ; $5A79: $62
    ld h, l                                       ; $5A7A: $65
    ld h, [hl]                                    ; $5A7B: $66
    ld l, a                                       ; $5A7C: $6F
    ld [hl], d                                    ; $5A7D: $72
    ld h, l                                       ; $5A7E: $65
    jr nz, jr_019_5AEE                            ; $5A7F: $20 $6D

    ld h, l                                       ; $5A81: $65
    jr nz, jr_019_5AFB                            ; $5A82: $20 $77

jr_019_5A84:
    ld l, c                                       ; $5A84: $69
    ld [hl], h                                    ; $5A85: $74
    ld l, b                                       ; $5A86: $68
    cp $73                                        ; $5A87: $FE $73

jr_019_5A89:
    ld [hl], l                                    ; $5A89: $75
    ld h, e                                       ; $5A8A: $63
    ld l, b                                       ; $5A8B: $68
    jr nz, jr_019_5AF0                            ; $5A8C: $20 $62

    ld l, h                                       ; $5A8E: $6C

jr_019_5A8F:
    ld h, c                                       ; $5A8F: $61
    ld [hl], h                                    ; $5A90: $74
    ld h, c                                       ; $5A91: $61

jr_019_5A92:
    ld l, [hl]                                    ; $5A92: $6E
    ld [hl], h                                    ; $5A93: $74
    rst $38                                       ; $5A94: $FF
    ld h, h                                       ; $5A95: $64
    ld l, c                                       ; $5A96: $69
    ld [hl], e                                    ; $5A97: $73
    ld [hl], d                                    ; $5A98: $72
    ld h, l                                       ; $5A99: $65
    ld [hl], e                                    ; $5A9A: $73
    ld [hl], b                                    ; $5A9B: $70
    ld h, l                                       ; $5A9C: $65
    ld h, e                                       ; $5A9D: $63
    ld [hl], h                                    ; $5A9E: $74
    ld l, $FE                                     ; $5A9F: $2E $FE
    ld c, [hl]                                    ; $5AA1: $4E
    ld h, l                                       ; $5AA2: $65
    ld h, l                                       ; $5AA3: $65
    ld h, h                                       ; $5AA4: $64
    jr nz, jr_019_5AF0                            ; $5AA5: $20 $49

    jr nz, jr_019_5B1B                            ; $5AA7: $20 $72

jr_019_5AA9:
    ld h, l                                       ; $5AA9: $65
    ld l, l                                       ; $5AAA: $6D
    ld l, c                                       ; $5AAB: $69
    ld l, [hl]                                    ; $5AAC: $6E
    ld h, h                                       ; $5AAD: $64
    rst $38                                       ; $5AAE: $FF
    ld a, c                                       ; $5AAF: $79
    ld l, a                                       ; $5AB0: $6F
    ld [hl], l                                    ; $5AB1: $75
    jr nz, jr_019_5B28                            ; $5AB2: $20 $74

    ld l, b                                       ; $5AB4: $68
    ld h, c                                       ; $5AB5: $61
    ld [hl], h                                    ; $5AB6: $74

jr_019_5AB7:
    jr nz, jr_019_5B32                            ; $5AB7: $20 $79

jr_019_5AB9:
    ld l, a                                       ; $5AB9: $6F
    ld [hl], l                                    ; $5ABA: $75
    ld [hl], d                                    ; $5ABB: $72
    cp $70                                        ; $5ABC: $FE $70
    ld l, a                                       ; $5ABE: $6F
    ld [hl], a                                    ; $5ABF: $77
    ld h, l                                       ; $5AC0: $65
    ld [hl], d                                    ; $5AC1: $72
    jr nz, @+$6B                                  ; $5AC2: $20 $69

    ld [hl], e                                    ; $5AC4: $73
    rst $38                                       ; $5AC5: $FF
    ld l, [hl]                                    ; $5AC6: $6E
    ld l, a                                       ; $5AC7: $6F
    ld [hl], h                                    ; $5AC8: $74
    ld l, b                                       ; $5AC9: $68

jr_019_5ACA:
    ld l, c                                       ; $5ACA: $69
    ld l, [hl]                                    ; $5ACB: $6E
    ld h, a                                       ; $5ACC: $67
    jr nz, jr_019_5B37                            ; $5ACD: $20 $68

jr_019_5ACF:
    ld h, l                                       ; $5ACF: $65
    ld [hl], d                                    ; $5AD0: $72
    ld h, l                                       ; $5AD1: $65
    ccf                                           ; $5AD2: $3F
    cp $FD                                        ; $5AD3: $FE $FD
    sbc e                                         ; $5AD5: $9B
    cp b                                          ; $5AD6: $B8
    ld e, l                                       ; $5AD7: $5D
    sbc a                                         ; $5AD8: $9F
    ld c, b                                       ; $5AD9: $48
    ld h, c                                       ; $5ADA: $61
    ld hl, $5920                                  ; $5ADB: $21 $20 $59
    ld l, a                                       ; $5ADE: $6F
    ld [hl], l                                    ; $5ADF: $75
    jr nz, jr_019_5B48                            ; $5AE0: $20 $66

    ld l, a                                       ; $5AE2: $6F
    ld l, a                                       ; $5AE3: $6F
    ld l, h                                       ; $5AE4: $6C
    inc l                                         ; $5AE5: $2C
    jr nz, jr_019_5B31                            ; $5AE6: $20 $49

jr_019_5AE8:
    rst $38                                       ; $5AE8: $FF
    ld h, c                                       ; $5AE9: $61
    ld l, l                                       ; $5AEA: $6D
    jr nz, @+$6F                                  ; $5AEB: $20 $6D

    ld [hl], l                                    ; $5AED: $75

jr_019_5AEE:
    ld h, e                                       ; $5AEE: $63
    ld l, b                                       ; $5AEF: $68

jr_019_5AF0:
    jr nz, @+$6F                                  ; $5AF0: $20 $6D

    ld l, a                                       ; $5AF2: $6F
    ld [hl], d                                    ; $5AF3: $72
    ld h, l                                       ; $5AF4: $65
    cp $70                                        ; $5AF5: $FE $70
    ld l, a                                       ; $5AF7: $6F
    ld [hl], a                                    ; $5AF8: $77
    ld h, l                                       ; $5AF9: $65
    ld [hl], d                                    ; $5AFA: $72

jr_019_5AFB:
    ld h, [hl]                                    ; $5AFB: $66
    ld [hl], l                                    ; $5AFC: $75
    ld l, h                                       ; $5AFD: $6C
    jr nz, jr_019_5B74                            ; $5AFE: $20 $74

    ld l, b                                       ; $5B00: $68
    ld h, c                                       ; $5B01: $61
    ld l, [hl]                                    ; $5B02: $6E
    jr nz, jr_019_5B4E                            ; $5B03: $20 $49

    rst $38                                       ; $5B05: $FF
    ld [hl], a                                    ; $5B06: $77
    ld h, c                                       ; $5B07: $61
    ld [hl], e                                    ; $5B08: $73
    jr nz, @+$64                                  ; $5B09: $20 $62

    ld h, c                                       ; $5B0B: $61
    ld h, e                                       ; $5B0C: $63
    ld l, e                                       ; $5B0D: $6B
    jr nz, jr_019_5B84                            ; $5B0E: $20 $74

    ld l, b                                       ; $5B10: $68
    ld h, l                                       ; $5B11: $65
    ld l, [hl]                                    ; $5B12: $6E
    ld l, $FE                                     ; $5B13: $2E $FE
    ld c, a                                       ; $5B15: $4F
    ld h, d                                       ; $5B16: $62
    ld [hl], e                                    ; $5B17: $73
    ld h, l                                       ; $5B18: $65
    ld [hl], d                                    ; $5B19: $72
    halt                                          ; $5B1A: $76

jr_019_5B1B:
    ld h, l                                       ; $5B1B: $65
    ld l, $FE                                     ; $5B1C: $2E $FE
    db $FD                                        ; $5B1E: $FD
    sbc d                                         ; $5B1F: $9A
    ld e, b                                       ; $5B20: $58
    inc b                                         ; $5B21: $04
    ld b, d                                       ; $5B22: $42
    sbc e                                         ; $5B23: $9B
    cp b                                          ; $5B24: $B8
    ld e, l                                       ; $5B25: $5D
    sbc a                                         ; $5B26: $9F
    ld d, a                                       ; $5B27: $57

jr_019_5B28:
    ld l, b                                       ; $5B28: $68
    ld h, c                                       ; $5B29: $61
    ld [hl], h                                    ; $5B2A: $74
    ccf                                           ; $5B2B: $3F
    ld hl, $FDFE                                  ; $5B2C: $21 $FE $FD
    sbc e                                         ; $5B2F: $9B
    ld l, b                                       ; $5B30: $68

jr_019_5B31:
    ld a, e                                       ; $5B31: $7B

jr_019_5B32:
    sbc a                                         ; $5B32: $9F
    ld d, a                                       ; $5B33: $57
    ld h, l                                       ; $5B34: $65
    jr nz, jr_019_5B98                            ; $5B35: $20 $61

jr_019_5B37:
    ld [hl], d                                    ; $5B37: $72
    ld h, l                                       ; $5B38: $65
    jr nz, jr_019_5B9C                            ; $5B39: $20 $61

    ld l, h                                       ; $5B3B: $6C
    ld [hl], e                                    ; $5B3C: $73
    ld l, a                                       ; $5B3D: $6F
    rst $38                                       ; $5B3E: $FF
    ld l, l                                       ; $5B3F: $6D
    ld [hl], l                                    ; $5B40: $75
    ld h, e                                       ; $5B41: $63
    ld l, b                                       ; $5B42: $68
    jr nz, jr_019_5BB2                            ; $5B43: $20 $6D

    ld l, a                                       ; $5B45: $6F
    ld [hl], d                                    ; $5B46: $72
    ld h, l                                       ; $5B47: $65

jr_019_5B48:
    cp $70                                        ; $5B48: $FE $70
    ld l, a                                       ; $5B4A: $6F
    ld [hl], a                                    ; $5B4B: $77
    ld h, l                                       ; $5B4C: $65
    ld [hl], d                                    ; $5B4D: $72

jr_019_5B4E:
    ld h, [hl]                                    ; $5B4E: $66
    ld [hl], l                                    ; $5B4F: $75
    ld l, h                                       ; $5B50: $6C
    jr nz, @+$76                                  ; $5B51: $20 $74

    ld l, b                                       ; $5B53: $68
    ld h, c                                       ; $5B54: $61
    ld l, [hl]                                    ; $5B55: $6E
    rst $38                                       ; $5B56: $FF
    ld [hl], a                                    ; $5B57: $77
    ld h, l                                       ; $5B58: $65
    jr nz, jr_019_5BD2                            ; $5B59: $20 $77

    ld h, l                                       ; $5B5B: $65
    ld [hl], d                                    ; $5B5C: $72
    ld h, l                                       ; $5B5D: $65
    jr nz, jr_019_5BC2                            ; $5B5E: $20 $62

    ld h, c                                       ; $5B60: $61
    ld h, e                                       ; $5B61: $63
    ld l, e                                       ; $5B62: $6B
    cp $74                                        ; $5B63: $FE $74
    ld l, b                                       ; $5B65: $68
    ld h, l                                       ; $5B66: $65
    ld l, [hl]                                    ; $5B67: $6E
    ld l, $20                                     ; $5B68: $2E $20
    ld d, a                                       ; $5B6A: $57
    ld h, l                                       ; $5B6B: $65
    jr nz, @+$75                                  ; $5B6C: $20 $73

    ld l, b                                       ; $5B6E: $68
    ld h, c                                       ; $5B6F: $61
    ld l, [hl]                                    ; $5B70: $6E
    daa                                           ; $5B71: $27
    ld [hl], h                                    ; $5B72: $74
    rst $38                                       ; $5B73: $FF

jr_019_5B74:
    ld h, d                                       ; $5B74: $62
    ld h, l                                       ; $5B75: $65
    jr nz, jr_019_5BDA                            ; $5B76: $20 $62

    ld h, l                                       ; $5B78: $65
    ld h, c                                       ; $5B79: $61
    ld [hl], h                                    ; $5B7A: $74
    ld h, l                                       ; $5B7B: $65
    ld l, [hl]                                    ; $5B7C: $6E
    jr nz, @+$64                                  ; $5B7D: $20 $62

    ld a, c                                       ; $5B7F: $79
    cp $74                                        ; $5B80: $FE $74
    ld l, b                                       ; $5B82: $68
    ld h, l                                       ; $5B83: $65

jr_019_5B84:
    jr nz, @+$6E                                  ; $5B84: $20 $6C

    ld l, c                                       ; $5B86: $69
    ld l, e                                       ; $5B87: $6B
    ld h, l                                       ; $5B88: $65
    ld [hl], e                                    ; $5B89: $73
    jr nz, jr_019_5BFB                            ; $5B8A: $20 $6F

    ld h, [hl]                                    ; $5B8C: $66
    rst $38                                       ; $5B8D: $FF
    ld a, c                                       ; $5B8E: $79
    ld l, a                                       ; $5B8F: $6F
    ld [hl], l                                    ; $5B90: $75
    ld hl, $FDFE                                  ; $5B91: $21 $FE $FD
    sbc d                                         ; $5B94: $9A
    ld e, b                                       ; $5B95: $58
    dec b                                         ; $5B96: $05
    ld b, d                                       ; $5B97: $42

jr_019_5B98:
    sbc e                                         ; $5B98: $9B
    cp b                                          ; $5B99: $B8
    ld e, l                                       ; $5B9A: $5D
    sbc a                                         ; $5B9B: $9F

jr_019_5B9C:
    ld d, h                                       ; $5B9C: $54
    ld l, b                                       ; $5B9D: $68
    ld l, c                                       ; $5B9E: $69
    ld [hl], e                                    ; $5B9F: $73
    jr nz, jr_019_5C0B                            ; $5BA0: $20 $69

    ld [hl], e                                    ; $5BA2: $73
    rst $38                                       ; $5BA3: $FF
    ld l, c                                       ; $5BA4: $69
    ld l, l                                       ; $5BA5: $6D
    ld [hl], b                                    ; $5BA6: $70
    ld l, a                                       ; $5BA7: $6F
    ld [hl], e                                    ; $5BA8: $73
    ld [hl], e                                    ; $5BA9: $73
    ld l, c                                       ; $5BAA: $69
    ld h, d                                       ; $5BAB: $62
    ld l, h                                       ; $5BAC: $6C
    ld h, l                                       ; $5BAD: $65
    ld hl, $5920                                  ; $5BAE: $21 $20 $59
    ld l, a                                       ; $5BB1: $6F

jr_019_5BB2:
    ld [hl], l                                    ; $5BB2: $75
    cp $61                                        ; $5BB3: $FE $61
    ld [hl], d                                    ; $5BB5: $72
    ld h, l                                       ; $5BB6: $65
    jr nz, @+$70                                  ; $5BB7: $20 $6E

    ld l, a                                       ; $5BB9: $6F
    ld [hl], h                                    ; $5BBA: $74
    ld l, b                                       ; $5BBB: $68
    ld l, c                                       ; $5BBC: $69
    ld l, [hl]                                    ; $5BBD: $6E
    ld h, a                                       ; $5BBE: $67
    rst $38                                       ; $5BBF: $FF
    ld h, d                                       ; $5BC0: $62
    ld h, l                                       ; $5BC1: $65

jr_019_5BC2:
    ld h, [hl]                                    ; $5BC2: $66
    ld l, a                                       ; $5BC3: $6F
    ld [hl], d                                    ; $5BC4: $72
    ld h, l                                       ; $5BC5: $65
    jr nz, jr_019_5C35                            ; $5BC6: $20 $6D

    ld a, c                                       ; $5BC8: $79
    dec l                                         ; $5BC9: $2D
    dec l                                         ; $5BCA: $2D
    cp $FD                                        ; $5BCB: $FE $FD
    sbc e                                         ; $5BCD: $9B
    sbc b                                         ; $5BCE: $98
    ld b, c                                       ; $5BCF: $41
    inc h                                         ; $5BD0: $24
    db $10                                        ; $5BD1: $10

jr_019_5BD2:
    sbc a                                         ; $5BD2: $9F
    ld b, l                                       ; $5BD3: $45
    ld c, [hl]                                    ; $5BD4: $4E
    ld c, a                                       ; $5BD5: $4F
    ld d, l                                       ; $5BD6: $55
    ld b, a                                       ; $5BD7: $47
    ld c, b                                       ; $5BD8: $48
    inc l                                         ; $5BD9: $2C

jr_019_5BDA:
    jr nz, jr_019_5C29                            ; $5BDA: $20 $4D

    ld c, a                                       ; $5BDC: $4F
    ld d, d                                       ; $5BDD: $52
    ld b, c                                       ; $5BDE: $41
    ld b, a                                       ; $5BDF: $47
    ld hl, $FDFE                                  ; $5BE0: $21 $FE $FD
    sbc d                                         ; $5BE3: $9A
    ld e, b                                       ; $5BE4: $58
    ld b, $42                                     ; $5BE5: $06 $42
    sbc e                                         ; $5BE7: $9B
    ld l, b                                       ; $5BE8: $68
    ld a, e                                       ; $5BE9: $7B
    sbc a                                         ; $5BEA: $9F
    ld b, c                                       ; $5BEB: $41
    ld b, a                                       ; $5BEC: $47
    ld d, d                                       ; $5BED: $52
    ld b, c                                       ; $5BEE: $41
    ld c, l                                       ; $5BEF: $4D
    ld hl, $FDFE                                  ; $5BF0: $21 $FE $FD
    sbc e                                         ; $5BF3: $9B
    sbc b                                         ; $5BF4: $98
    ld b, c                                       ; $5BF5: $41
    sbc a                                         ; $5BF6: $9F
    ld c, c                                       ; $5BF7: $49
    jr nz, jr_019_5C6E                            ; $5BF8: $20 $74

    ld l, a                                       ; $5BFA: $6F

jr_019_5BFB:
    ld l, h                                       ; $5BFB: $6C
    ld h, h                                       ; $5BFC: $64
    jr nz, jr_019_5C78                            ; $5BFD: $20 $79

    ld l, a                                       ; $5BFF: $6F
    ld [hl], l                                    ; $5C00: $75
    jr nz, @+$6B                                  ; $5C01: $20 $69

    ld [hl], h                                    ; $5C03: $74
    rst $38                                       ; $5C04: $FF
    ld [hl], a                                    ; $5C05: $77
    ld l, a                                       ; $5C06: $6F
    ld [hl], l                                    ; $5C07: $75
    ld l, h                                       ; $5C08: $6C
    ld h, h                                       ; $5C09: $64
    ld l, [hl]                                    ; $5C0A: $6E

jr_019_5C0B:
    daa                                           ; $5C0B: $27
    ld [hl], h                                    ; $5C0C: $74
    jr nz, jr_019_5C86                            ; $5C0D: $20 $77

    ld l, a                                       ; $5C0F: $6F
    ld [hl], d                                    ; $5C10: $72
    ld l, e                                       ; $5C11: $6B
    ld l, $FE                                     ; $5C12: $2E $FE
    ld c, [hl]                                    ; $5C14: $4E
    ld l, a                                       ; $5C15: $6F
    ld [hl], a                                    ; $5C16: $77
    jr nz, jr_019_5C80                            ; $5C17: $20 $67

    ld l, a                                       ; $5C19: $6F
    jr nz, jr_019_5C90                            ; $5C1A: $20 $74

    ld h, l                                       ; $5C1C: $65
    ld l, [hl]                                    ; $5C1D: $6E
    ld h, h                                       ; $5C1E: $64
    jr nz, jr_019_5C95                            ; $5C1F: $20 $74

    ld l, a                                       ; $5C21: $6F
    rst $38                                       ; $5C22: $FF
    ld [hl], h                                    ; $5C23: $74
    ld l, b                                       ; $5C24: $68
    ld h, l                                       ; $5C25: $65
    jr nz, jr_019_5C8F                            ; $5C26: $20 $67

    ld h, l                                       ; $5C28: $65

jr_019_5C29:
    ld a, c                                       ; $5C29: $79
    ld [hl], e                                    ; $5C2A: $73
    ld h, l                                       ; $5C2B: $65
    ld [hl], d                                    ; $5C2C: $72
    inc l                                         ; $5C2D: $2C
    cp $4D                                        ; $5C2E: $FE $4D
    ld l, a                                       ; $5C30: $6F
    ld [hl], d                                    ; $5C31: $72
    ld h, c                                       ; $5C32: $61
    ld h, a                                       ; $5C33: $67
    inc l                                         ; $5C34: $2C

jr_019_5C35:
    jr nz, jr_019_5C98                            ; $5C35: $20 $61

    ld l, [hl]                                    ; $5C37: $6E
    ld h, h                                       ; $5C38: $64
    jr nz, jr_019_5C84                            ; $5C39: $20 $49

    rst $38                                       ; $5C3B: $FF
    ld [hl], e                                    ; $5C3C: $73
    ld l, b                                       ; $5C3D: $68
    ld h, c                                       ; $5C3E: $61
    ld l, h                                       ; $5C3F: $6C
    ld l, h                                       ; $5C40: $6C
    jr nz, jr_019_5CAB                            ; $5C41: $20 $68

    ld h, c                                       ; $5C43: $61
    ld l, [hl]                                    ; $5C44: $6E
    ld h, h                                       ; $5C45: $64
    ld l, h                                       ; $5C46: $6C
    ld h, l                                       ; $5C47: $65
    cp $74                                        ; $5C48: $FE $74
    ld l, b                                       ; $5C4A: $68
    ld l, c                                       ; $5C4B: $69
    ld [hl], e                                    ; $5C4C: $73
    jr nz, jr_019_5CBC                            ; $5C4D: $20 $6D

    ld a, c                                       ; $5C4F: $79
    ld [hl], e                                    ; $5C50: $73
    ld h, l                                       ; $5C51: $65
    ld l, h                                       ; $5C52: $6C
    ld h, [hl]                                    ; $5C53: $66
    ld l, $FE                                     ; $5C54: $2E $FE
    db $FD                                        ; $5C56: $FD
    sbc d                                         ; $5C57: $9A
    ld e, b                                       ; $5C58: $58
    rlca                                          ; $5C59: $07
    ld b, d                                       ; $5C5A: $42
    sbc e                                         ; $5C5B: $9B
    ld l, b                                       ; $5C5C: $68
    ld a, e                                       ; $5C5D: $7B
    sbc a                                         ; $5C5E: $9F
    ld b, c                                       ; $5C5F: $41
    ld l, b                                       ; $5C60: $68
    ld l, b                                       ; $5C61: $68
    ld l, b                                       ; $5C62: $68
    ld l, b                                       ; $5C63: $68
    ld l, b                                       ; $5C64: $68
    ld hl, $FDFE                                  ; $5C65: $21 $FE $FD
    sbc d                                         ; $5C68: $9A
    ld e, b                                       ; $5C69: $58
    ld [$9B42], sp                                ; $5C6A: $08 $42 $9B
    sbc b                                         ; $5C6D: $98

jr_019_5C6E:
    ld b, c                                       ; $5C6E: $41
    sbc a                                         ; $5C6F: $9F
    ld c, [hl]                                    ; $5C70: $4E
    ld l, a                                       ; $5C71: $6F
    jr nz, jr_019_5CD9                            ; $5C72: $20 $65

    ld h, [hl]                                    ; $5C74: $66
    ld h, [hl]                                    ; $5C75: $66
    ld h, l                                       ; $5C76: $65
    ld h, e                                       ; $5C77: $63

jr_019_5C78:
    ld [hl], h                                    ; $5C78: $74
    ccf                                           ; $5C79: $3F
    jr nz, jr_019_5CC4                            ; $5C7A: $20 $48

    ld l, a                                       ; $5C7C: $6F
    ld [hl], a                                    ; $5C7D: $77
    rst $38                                       ; $5C7E: $FF
    ld l, c                                       ; $5C7F: $69

jr_019_5C80:
    ld l, [hl]                                    ; $5C80: $6E
    ld [hl], h                                    ; $5C81: $74
    ld h, l                                       ; $5C82: $65
    ld [hl], d                                    ; $5C83: $72

jr_019_5C84:
    ld h, l                                       ; $5C84: $65
    ld [hl], e                                    ; $5C85: $73

jr_019_5C86:
    ld [hl], h                                    ; $5C86: $74
    ld l, c                                       ; $5C87: $69
    ld l, [hl]                                    ; $5C88: $6E
    ld h, a                                       ; $5C89: $67
    ld l, $FE                                     ; $5C8A: $2E $FE
    db $FD                                        ; $5C8C: $FD
    sbc d                                         ; $5C8D: $9A
    ld e, b                                       ; $5C8E: $58

jr_019_5C8F:
    add hl, bc                                    ; $5C8F: $09

jr_019_5C90:
    ld b, d                                       ; $5C90: $42
    sbc e                                         ; $5C91: $9B
    sbc b                                         ; $5C92: $98
    ld b, c                                       ; $5C93: $41
    sbc a                                         ; $5C94: $9F

jr_019_5C95:
    ld d, a                                       ; $5C95: $57
    ld h, l                                       ; $5C96: $65
    ld l, h                                       ; $5C97: $6C

jr_019_5C98:
    ld l, h                                       ; $5C98: $6C
    inc l                                         ; $5C99: $2C
    jr nz, jr_019_5D05                            ; $5C9A: $20 $69

    ld [hl], h                                    ; $5C9C: $74
    rst $38                                       ; $5C9D: $FF
    ld l, l                                       ; $5C9E: $6D
    ld h, c                                       ; $5C9F: $61
    ld [hl], h                                    ; $5CA0: $74
    ld [hl], h                                    ; $5CA1: $74
    ld h, l                                       ; $5CA2: $65
    ld [hl], d                                    ; $5CA3: $72
    ld [hl], e                                    ; $5CA4: $73
    jr nz, @+$70                                  ; $5CA5: $20 $6E

    ld l, a                                       ; $5CA7: $6F
    ld [hl], h                                    ; $5CA8: $74
    ld l, $FE                                     ; $5CA9: $2E $FE

jr_019_5CAB:
    db $FD                                        ; $5CAB: $FD
    sbc d                                         ; $5CAC: $9A
    ld e, b                                       ; $5CAD: $58
    ld a, [bc]                                    ; $5CAE: $0A
    ld b, d                                       ; $5CAF: $42
    sbc e                                         ; $5CB0: $9B
    sbc b                                         ; $5CB1: $98
    ld b, c                                       ; $5CB2: $41
    sbc a                                         ; $5CB3: $9F
    ld c, c                                       ; $5CB4: $49
    ld [hl], h                                    ; $5CB5: $74
    daa                                           ; $5CB6: $27
    ld [hl], e                                    ; $5CB7: $73
    jr nz, jr_019_5D2E                            ; $5CB8: $20 $74

    ld [hl], d                                    ; $5CBA: $72
    ld [hl], l                                    ; $5CBB: $75

jr_019_5CBC:
    ld h, l                                       ; $5CBC: $65
    inc l                                         ; $5CBD: $2C
    jr nz, jr_019_5D22                            ; $5CBE: $20 $62

    ld l, a                                       ; $5CC0: $6F
    ld a, c                                       ; $5CC1: $79
    ld l, $FE                                     ; $5CC2: $2E $FE

jr_019_5CC4:
    ld d, h                                       ; $5CC4: $54
    ld l, b                                       ; $5CC5: $68
    ld h, l                                       ; $5CC6: $65
    ld [hl], d                                    ; $5CC7: $72
    ld h, l                                       ; $5CC8: $65
    jr nz, jr_019_5D34                            ; $5CC9: $20 $69

    ld [hl], e                                    ; $5CCB: $73
    jr nz, jr_019_5D2F                            ; $5CCC: $20 $61

    rst $38                                       ; $5CCE: $FF
    ld [hl], e                                    ; $5CCF: $73
    ld [hl], h                                    ; $5CD0: $74
    ld [hl], d                                    ; $5CD1: $72
    ld h, c                                       ; $5CD2: $61
    ld l, [hl]                                    ; $5CD3: $6E
    ld h, a                                       ; $5CD4: $67
    ld h, l                                       ; $5CD5: $65
    jr nz, jr_019_5D3D                            ; $5CD6: $20 $65

    ld l, [hl]                                    ; $5CD8: $6E

jr_019_5CD9:
    ld h, l                                       ; $5CD9: $65
    ld [hl], d                                    ; $5CDA: $72
    ld h, a                                       ; $5CDB: $67
    ld a, c                                       ; $5CDC: $79
    cp $61                                        ; $5CDD: $FE $61
    ld h, d                                       ; $5CDF: $62
    ld l, a                                       ; $5CE0: $6F
    ld [hl], l                                    ; $5CE1: $75
    ld [hl], h                                    ; $5CE2: $74
    jr nz, jr_019_5D5E                            ; $5CE3: $20 $79

    ld l, a                                       ; $5CE5: $6F
    ld [hl], l                                    ; $5CE6: $75
    ld l, $FE                                     ; $5CE7: $2E $FE
    ld b, d                                       ; $5CE9: $42
    ld [hl], l                                    ; $5CEA: $75
    ld [hl], h                                    ; $5CEB: $74
    jr nz, jr_019_5D57                            ; $5CEC: $20 $69

    ld [hl], h                                    ; $5CEE: $74
    jr nz, jr_019_5D5A                            ; $5CEF: $20 $69

    ld [hl], e                                    ; $5CF1: $73
    jr nz, jr_019_5D5A                            ; $5CF2: $20 $66

    ld h, c                                       ; $5CF4: $61
    ld [hl], d                                    ; $5CF5: $72
    rst $38                                       ; $5CF6: $FF
    ld [hl], h                                    ; $5CF7: $74
    ld l, a                                       ; $5CF8: $6F
    ld l, a                                       ; $5CF9: $6F
    jr nz, jr_019_5D61                            ; $5CFA: $20 $65

    ld h, c                                       ; $5CFC: $61
    ld [hl], d                                    ; $5CFD: $72
    ld l, h                                       ; $5CFE: $6C
    ld a, c                                       ; $5CFF: $79
    jr nz, jr_019_5D76                            ; $5D00: $20 $74

    ld l, a                                       ; $5D02: $6F
    cp $62                                        ; $5D03: $FE $62

jr_019_5D05:
    ld h, l                                       ; $5D05: $65
    jr nz, jr_019_5D7B                            ; $5D06: $20 $73

    ld [hl], l                                    ; $5D08: $75
    ld [hl], d                                    ; $5D09: $72
    ld h, l                                       ; $5D0A: $65
    jr nz, jr_019_5D81                            ; $5D0B: $20 $74

    ld l, b                                       ; $5D0D: $68
    ld h, c                                       ; $5D0E: $61
    ld [hl], h                                    ; $5D0F: $74
    rst $38                                       ; $5D10: $FF
    ld a, c                                       ; $5D11: $79
    ld l, a                                       ; $5D12: $6F
    ld [hl], l                                    ; $5D13: $75
    jr nz, jr_019_5D77                            ; $5D14: $20 $61

    ld [hl], d                                    ; $5D16: $72
    ld h, l                                       ; $5D17: $65
    jr nz, jr_019_5D8E                            ; $5D18: $20 $74

    ld l, b                                       ; $5D1A: $68
    ld h, l                                       ; $5D1B: $65
    cp $47                                        ; $5D1C: $FE $47
    ld [hl], d                                    ; $5D1E: $72
    ld h, l                                       ; $5D1F: $65
    ld h, c                                       ; $5D20: $61
    ld [hl], h                                    ; $5D21: $74

jr_019_5D22:
    jr nz, jr_019_5D71                            ; $5D22: $20 $4D

    ld h, c                                       ; $5D24: $61
    ld h, a                                       ; $5D25: $67
    ld [hl], l                                    ; $5D26: $75
    ld [hl], e                                    ; $5D27: $73
    ld l, $FE                                     ; $5D28: $2E $FE
    db $FD                                        ; $5D2A: $FD
    ld e, b                                       ; $5D2B: $58
    ld h, e                                       ; $5D2C: $63
    sbc a                                         ; $5D2D: $9F

jr_019_5D2E:
    ld e, c                                       ; $5D2E: $59

jr_019_5D2F:
    ld l, a                                       ; $5D2F: $6F
    ld [hl], l                                    ; $5D30: $75
    jr nz, jr_019_5DA0                            ; $5D31: $20 $6D

    ld [hl], l                                    ; $5D33: $75

jr_019_5D34:
    ld [hl], e                                    ; $5D34: $73
    ld [hl], h                                    ; $5D35: $74
    jr nz, jr_019_5DAC                            ; $5D36: $20 $74

    ld [hl], d                                    ; $5D38: $72
    ld a, c                                       ; $5D39: $79
    rst $38                                       ; $5D3A: $FF
    ld [hl], h                                    ; $5D3B: $74
    ld l, a                                       ; $5D3C: $6F

jr_019_5D3D:
    jr nz, jr_019_5DB4                            ; $5D3D: $20 $75

    ld l, [hl]                                    ; $5D3F: $6E
    ld h, h                                       ; $5D40: $64
    ld h, l                                       ; $5D41: $65
    ld [hl], d                                    ; $5D42: $72
    ld [hl], e                                    ; $5D43: $73
    ld [hl], h                                    ; $5D44: $74
    ld h, c                                       ; $5D45: $61
    ld l, [hl]                                    ; $5D46: $6E
    ld h, h                                       ; $5D47: $64
    ld l, $FE                                     ; $5D48: $2E $FE
    ld c, l                                       ; $5D4A: $4D
    ld l, a                                       ; $5D4B: $6F
    ld [hl], d                                    ; $5D4C: $72
    ld h, c                                       ; $5D4D: $61
    ld h, a                                       ; $5D4E: $67
    jr nz, jr_019_5DBA                            ; $5D4F: $20 $69

    ld [hl], e                                    ; $5D51: $73
    jr nz, jr_019_5DB6                            ; $5D52: $20 $62

    ld [hl], l                                    ; $5D54: $75
    ld [hl], h                                    ; $5D55: $74
    rst $38                                       ; $5D56: $FF

jr_019_5D57:
    ld h, c                                       ; $5D57: $61
    jr nz, jr_019_5DC7                            ; $5D58: $20 $6D

jr_019_5D5A:
    ld h, l                                       ; $5D5A: $65
    ld h, c                                       ; $5D5B: $61
    ld l, [hl]                                    ; $5D5C: $6E
    ld [hl], e                                    ; $5D5D: $73

jr_019_5D5E:
    jr nz, jr_019_5DD4                            ; $5D5E: $20 $74

    ld l, a                                       ; $5D60: $6F

jr_019_5D61:
    jr nz, @+$63                                  ; $5D61: $20 $61

    ld l, [hl]                                    ; $5D63: $6E
    cp $65                                        ; $5D64: $FE $65
    ld l, [hl]                                    ; $5D66: $6E
    ld h, h                                       ; $5D67: $64
    ld l, $FE                                     ; $5D68: $2E $FE
    ld d, a                                       ; $5D6A: $57
    ld l, b                                       ; $5D6B: $68
    ld h, l                                       ; $5D6C: $65
    ld l, [hl]                                    ; $5D6D: $6E
    jr nz, jr_019_5DB1                            ; $5D6E: $20 $41

    ld h, a                                       ; $5D70: $67

jr_019_5D71:
    ld h, c                                       ; $5D71: $61
    ld h, h                                       ; $5D72: $64
    ld l, a                                       ; $5D73: $6F
    ld l, [hl]                                    ; $5D74: $6E
    rst $38                                       ; $5D75: $FF

jr_019_5D76:
    ld [hl], e                                    ; $5D76: $73

jr_019_5D77:
    ld [hl], h                                    ; $5D77: $74
    ld l, a                                       ; $5D78: $6F
    ld l, h                                       ; $5D79: $6C
    ld h, l                                       ; $5D7A: $65

jr_019_5D7B:
    jr nz, jr_019_5DF1                            ; $5D7B: $20 $74

    ld l, b                                       ; $5D7D: $68
    ld h, l                                       ; $5D7E: $65
    cp $77                                        ; $5D7F: $FE $77

jr_019_5D81:
    ld l, c                                       ; $5D81: $69
    ld [hl], e                                    ; $5D82: $73
    ld h, h                                       ; $5D83: $64
    ld l, a                                       ; $5D84: $6F
    ld l, l                                       ; $5D85: $6D
    jr nz, jr_019_5DF7                            ; $5D86: $20 $6F

    ld h, [hl]                                    ; $5D88: $66
    jr nz, jr_019_5DFF                            ; $5D89: $20 $74

    ld l, b                                       ; $5D8B: $68
    ld h, l                                       ; $5D8C: $65
    rst $38                                       ; $5D8D: $FF

jr_019_5D8E:
    ld b, c                                       ; $5D8E: $41
    ld l, [hl]                                    ; $5D8F: $6E
    ld h, e                                       ; $5D90: $63
    ld l, c                                       ; $5D91: $69
    ld h, l                                       ; $5D92: $65
    ld l, [hl]                                    ; $5D93: $6E
    ld [hl], h                                    ; $5D94: $74
    ld [hl], e                                    ; $5D95: $73
    inc l                                         ; $5D96: $2C
    jr nz, jr_019_5E02                            ; $5D97: $20 $69

    ld [hl], h                                    ; $5D99: $74
    cp $77                                        ; $5D9A: $FE $77
    ld h, c                                       ; $5D9C: $61
    ld [hl], e                                    ; $5D9D: $73
    jr nz, jr_019_5E0D                            ; $5D9E: $20 $6D

jr_019_5DA0:
    ld a, c                                       ; $5DA0: $79
    jr nz, jr_019_5E07                            ; $5DA1: $20 $64

    ld [hl], l                                    ; $5DA3: $75
    ld [hl], h                                    ; $5DA4: $74
    ld a, c                                       ; $5DA5: $79
    jr nz, @+$76                                  ; $5DA6: $20 $74

    ld l, a                                       ; $5DA8: $6F
    rst $38                                       ; $5DA9: $FF
    ld [hl], d                                    ; $5DAA: $72
    ld h, l                                       ; $5DAB: $65

jr_019_5DAC:
    ld h, e                                       ; $5DAC: $63
    ld l, a                                       ; $5DAD: $6F
    halt                                          ; $5DAE: $76
    ld h, l                                       ; $5DAF: $65
    ld [hl], d                                    ; $5DB0: $72

jr_019_5DB1:
    jr nz, jr_019_5E27                            ; $5DB1: $20 $74

    ld l, b                                       ; $5DB3: $68

jr_019_5DB4:
    ld l, a                                       ; $5DB4: $6F
    ld [hl], e                                    ; $5DB5: $73

jr_019_5DB6:
    ld h, l                                       ; $5DB6: $65
    cp $73                                        ; $5DB7: $FE $73
    ld h, l                                       ; $5DB9: $65

jr_019_5DBA:
    ld h, e                                       ; $5DBA: $63
    ld [hl], d                                    ; $5DBB: $72
    ld h, l                                       ; $5DBC: $65
    ld [hl], h                                    ; $5DBD: $74
    ld [hl], e                                    ; $5DBE: $73
    ld l, $FE                                     ; $5DBF: $2E $FE
    ld b, c                                       ; $5DC1: $41
    ld [hl], h                                    ; $5DC2: $74
    jr nz, jr_019_5E39                            ; $5DC3: $20 $74

    ld l, b                                       ; $5DC5: $68
    ld h, c                                       ; $5DC6: $61

jr_019_5DC7:
    ld [hl], h                                    ; $5DC7: $74
    jr nz, jr_019_5E3E                            ; $5DC8: $20 $74

    ld l, c                                       ; $5DCA: $69
    ld l, l                                       ; $5DCB: $6D
    ld h, l                                       ; $5DCC: $65
    inc l                                         ; $5DCD: $2C
    rst $38                                       ; $5DCE: $FF
    ld l, l                                       ; $5DCF: $6D
    ld a, c                                       ; $5DD0: $79
    jr nz, jr_019_5E40                            ; $5DD1: $20 $6D

    ld l, c                                       ; $5DD3: $69

jr_019_5DD4:
    ld [hl], e                                    ; $5DD4: $73
    ld h, a                                       ; $5DD5: $67
    ld [hl], l                                    ; $5DD6: $75
    ld l, c                                       ; $5DD7: $69
    ld h, h                                       ; $5DD8: $64
    ld h, l                                       ; $5DD9: $65
    ld h, h                                       ; $5DDA: $64
    cp $62                                        ; $5DDB: $FE $62
    ld [hl], d                                    ; $5DDD: $72
    ld h, l                                       ; $5DDE: $65
    ld [hl], h                                    ; $5DDF: $74
    ld l, b                                       ; $5DE0: $68
    ld [hl], d                                    ; $5DE1: $72
    ld h, l                                       ; $5DE2: $65
    ld l, [hl]                                    ; $5DE3: $6E
    dec l                                         ; $5DE4: $2D
    cp $FD                                        ; $5DE5: $FE $FD
    sbc e                                         ; $5DE7: $9B
    ld a, b                                       ; $5DE8: $78
    ld [hl], b                                    ; $5DE9: $70
    sbc a                                         ; $5DEA: $9F
    ld d, e                                       ; $5DEB: $53
    ld c, b                                       ; $5DEC: $48
    ld d, l                                       ; $5DED: $55
    ld d, h                                       ; $5DEE: $54
    jr nz, jr_019_5E46                            ; $5DEF: $20 $55

jr_019_5DF1:
    ld d, b                                       ; $5DF1: $50
    ld hl, $FE21                                  ; $5DF2: $21 $21 $FE
    db $FD                                        ; $5DF5: $FD
    sbc e                                         ; $5DF6: $9B

jr_019_5DF7:
    sbc b                                         ; $5DF7: $98
    ld b, c                                       ; $5DF8: $41
    sbc a                                         ; $5DF9: $9F
    ccf                                           ; $5DFA: $3F
    ccf                                           ; $5DFB: $3F
    cp $FD                                        ; $5DFC: $FE $FD
    sbc e                                         ; $5DFE: $9B

jr_019_5DFF:
    ld a, b                                       ; $5DFF: $78
    ld [hl], b                                    ; $5E00: $70
    sbc a                                         ; $5E01: $9F

jr_019_5E02:
    ld c, c                                       ; $5E02: $49
    jr nz, jr_019_5E69                            ; $5E03: $20 $64

    ld l, a                                       ; $5E05: $6F
    ld l, [hl]                                    ; $5E06: $6E

jr_019_5E07:
    daa                                           ; $5E07: $27
    ld [hl], h                                    ; $5E08: $74
    jr nz, jr_019_5E82                            ; $5E09: $20 $77

    ld h, c                                       ; $5E0B: $61
    ld l, [hl]                                    ; $5E0C: $6E

jr_019_5E0D:
    ld [hl], h                                    ; $5E0D: $74
    rst $38                                       ; $5E0E: $FF
    ld [hl], h                                    ; $5E0F: $74
    ld l, a                                       ; $5E10: $6F
    jr nz, @+$6A                                  ; $5E11: $20 $68

    ld h, l                                       ; $5E13: $65
    ld h, c                                       ; $5E14: $61
    ld [hl], d                                    ; $5E15: $72
    jr nz, jr_019_5E91                            ; $5E16: $20 $79

    ld l, a                                       ; $5E18: $6F
    ld [hl], l                                    ; $5E19: $75
    ld [hl], d                                    ; $5E1A: $72
    cp $6C                                        ; $5E1B: $FE $6C
    ld l, c                                       ; $5E1D: $69
    ld h, l                                       ; $5E1E: $65
    ld [hl], e                                    ; $5E1F: $73
    ld hl, $59FE                                  ; $5E20: $21 $FE $59
    ld c, a                                       ; $5E23: $4F
    ld d, l                                       ; $5E24: $55
    daa                                           ; $5E25: $27
    ld d, d                                       ; $5E26: $52

jr_019_5E27:
    ld b, l                                       ; $5E27: $45
    jr nz, jr_019_5E9E                            ; $5E28: $20 $74

    ld l, b                                       ; $5E2A: $68
    ld h, l                                       ; $5E2B: $65
    jr nz, jr_019_5E9D                            ; $5E2C: $20 $6F

    ld l, [hl]                                    ; $5E2E: $6E
    ld h, l                                       ; $5E2F: $65
    rst $38                                       ; $5E30: $FF
    ld [hl], a                                    ; $5E31: $77
    ld l, b                                       ; $5E32: $68
    ld l, a                                       ; $5E33: $6F
    daa                                           ; $5E34: $27
    ld [hl], e                                    ; $5E35: $73
    jr nz, jr_019_5E9A                            ; $5E36: $20 $62

    ld h, l                                       ; $5E38: $65

jr_019_5E39:
    ld h, l                                       ; $5E39: $65
    ld l, [hl]                                    ; $5E3A: $6E
    cp $63                                        ; $5E3B: $FE $63
    ld [hl], d                                    ; $5E3D: $72

jr_019_5E3E:
    ld h, l                                       ; $5E3E: $65
    ld h, c                                       ; $5E3F: $61

jr_019_5E40:
    ld [hl], h                                    ; $5E40: $74
    ld l, c                                       ; $5E41: $69
    ld l, [hl]                                    ; $5E42: $6E
    ld h, a                                       ; $5E43: $67
    jr nz, jr_019_5EBA                            ; $5E44: $20 $74

jr_019_5E46:
    ld l, b                                       ; $5E46: $68
    ld h, l                                       ; $5E47: $65
    rst $38                                       ; $5E48: $FF
    ld d, e                                       ; $5E49: $53
    ld l, b                                       ; $5E4A: $68
    ld h, c                                       ; $5E4B: $61
    ld h, h                                       ; $5E4C: $64
    ld l, a                                       ; $5E4D: $6F
    ld [hl], a                                    ; $5E4E: $77
    jr nz, jr_019_5E98                            ; $5E4F: $20 $47

    ld h, l                                       ; $5E51: $65
    ld a, c                                       ; $5E52: $79
    ld [hl], e                                    ; $5E53: $73
    ld h, l                                       ; $5E54: $65
    ld [hl], d                                    ; $5E55: $72
    ld [hl], e                                    ; $5E56: $73
    ld hl, $FDFE                                  ; $5E57: $21 $FE $FD
    sbc e                                         ; $5E5A: $9B
    sbc b                                         ; $5E5B: $98
    ld b, c                                       ; $5E5C: $41
    sbc a                                         ; $5E5D: $9F
    ld d, a                                       ; $5E5E: $57
    ld l, c                                       ; $5E5F: $69
    ld [hl], h                                    ; $5E60: $74
    ld l, b                                       ; $5E61: $68
    jr nz, jr_019_5EDD                            ; $5E62: $20 $79

    ld l, a                                       ; $5E64: $6F
    ld [hl], l                                    ; $5E65: $75
    ld [hl], d                                    ; $5E66: $72
    jr nz, jr_019_5ED1                            ; $5E67: $20 $68

jr_019_5E69:
    ld h, l                                       ; $5E69: $65
    ld l, h                                       ; $5E6A: $6C
    ld [hl], b                                    ; $5E6B: $70
    ld l, $FE                                     ; $5E6C: $2E $FE
    db $FD                                        ; $5E6E: $FD
    sbc e                                         ; $5E6F: $9B
    ld a, b                                       ; $5E70: $78
    ld [hl], b                                    ; $5E71: $70
    sbc a                                         ; $5E72: $9F
    ld b, c                                       ; $5E73: $41
    ld b, c                                       ; $5E74: $41
    ld b, c                                       ; $5E75: $41
    ld d, d                                       ; $5E76: $52
    ld b, a                                       ; $5E77: $47
    ld c, b                                       ; $5E78: $48
    ld hl, $49FE                                  ; $5E79: $21 $FE $49
    jr nz, jr_019_5EE1                            ; $5E7C: $20 $63

    ld h, c                                       ; $5E7E: $61
    ld l, [hl]                                    ; $5E7F: $6E
    daa                                           ; $5E80: $27
    ld [hl], h                                    ; $5E81: $74

jr_019_5E82:
    rst $38                                       ; $5E82: $FF
    ld h, d                                       ; $5E83: $62
    ld h, l                                       ; $5E84: $65
    ld l, h                                       ; $5E85: $6C
    ld l, c                                       ; $5E86: $69
    ld h, l                                       ; $5E87: $65
    halt                                          ; $5E88: $76
    ld h, l                                       ; $5E89: $65
    jr nz, jr_019_5EF5                            ; $5E8A: $20 $69

    ld [hl], h                                    ; $5E8C: $74
    ld hl, $57FE                                  ; $5E8D: $21 $FE $57
    ld l, b                                       ; $5E90: $68

jr_019_5E91:
    ld h, c                                       ; $5E91: $61
    ld [hl], h                                    ; $5E92: $74
    jr nz, @+$63                                  ; $5E93: $20 $61

    jr nz, jr_019_5EE1                            ; $5E95: $20 $4A

    ld c, a                                       ; $5E97: $4F

jr_019_5E98:
    ld c, e                                       ; $5E98: $4B
    ld b, l                                       ; $5E99: $45

jr_019_5E9A:
    ld hl, $59FE                                  ; $5E9A: $21 $FE $59

jr_019_5E9D:
    ld l, a                                       ; $5E9D: $6F

jr_019_5E9E:
    ld [hl], l                                    ; $5E9E: $75
    ld [hl], d                                    ; $5E9F: $72
    jr nz, jr_019_5F06                            ; $5EA0: $20 $64

    ld h, c                                       ; $5EA2: $61
    ld a, c                                       ; $5EA3: $79
    ld [hl], e                                    ; $5EA4: $73
    jr nz, @+$63                                  ; $5EA5: $20 $61

    ld [hl], d                                    ; $5EA7: $72
    ld h, l                                       ; $5EA8: $65
    rst $38                                       ; $5EA9: $FF
    ld l, [hl]                                    ; $5EAA: $6E
    ld [hl], l                                    ; $5EAB: $75
    ld l, l                                       ; $5EAC: $6D
    ld h, d                                       ; $5EAD: $62
    ld h, l                                       ; $5EAE: $65
    ld [hl], d                                    ; $5EAF: $72
    ld h, l                                       ; $5EB0: $65
    ld h, h                                       ; $5EB1: $64
    inc l                                         ; $5EB2: $2C
    jr nz, jr_019_5F2E                            ; $5EB3: $20 $79

    ld l, a                                       ; $5EB5: $6F
    ld [hl], l                                    ; $5EB6: $75
    cp $67                                        ; $5EB7: $FE $67
    ld l, c                                       ; $5EB9: $69

jr_019_5EBA:
    ld h, a                                       ; $5EBA: $67
    ld h, c                                       ; $5EBB: $61
    ld l, [hl]                                    ; $5EBC: $6E
    ld [hl], h                                    ; $5EBD: $74
    ld l, c                                       ; $5EBE: $69
    ld h, e                                       ; $5EBF: $63
    inc l                                         ; $5EC0: $2C
    rst $38                                       ; $5EC1: $FF
    ld h, d                                       ; $5EC2: $62
    ld h, c                                       ; $5EC3: $61
    ld l, h                                       ; $5EC4: $6C
    ld h, h                                       ; $5EC5: $64
    dec l                                         ; $5EC6: $2D
    ld l, b                                       ; $5EC7: $68
    ld h, l                                       ; $5EC8: $65
    ld h, c                                       ; $5EC9: $61
    ld h, h                                       ; $5ECA: $64
    ld h, l                                       ; $5ECB: $65
    ld h, h                                       ; $5ECC: $64
    inc l                                         ; $5ECD: $2C
    cp $63                                        ; $5ECE: $FE $63
    ld l, h                                       ; $5ED0: $6C

jr_019_5ED1:
    ld l, a                                       ; $5ED1: $6F
    ld h, a                                       ; $5ED2: $67
    dec l                                         ; $5ED3: $2D
    ld [hl], a                                    ; $5ED4: $77
    ld h, l                                       ; $5ED5: $65
    ld h, c                                       ; $5ED6: $61
    ld [hl], d                                    ; $5ED7: $72
    ld l, c                                       ; $5ED8: $69
    ld l, [hl]                                    ; $5ED9: $6E
    ld h, a                                       ; $5EDA: $67
    rst $38                                       ; $5EDB: $FF
    ld b, [hl]                                    ; $5EDC: $46

jr_019_5EDD:
    ld d, d                                       ; $5EDD: $52
    ld b, l                                       ; $5EDE: $45
    ld b, c                                       ; $5EDF: $41
    ld c, e                                       ; $5EE0: $4B

jr_019_5EE1:
    ld hl, $49FE                                  ; $5EE1: $21 $FE $49
    daa                                           ; $5EE4: $27
    ld l, h                                       ; $5EE5: $6C
    ld l, h                                       ; $5EE6: $6C
    jr nz, @+$65                                  ; $5EE7: $20 $63

    ld h, c                                       ; $5EE9: $61
    ld [hl], d                                    ; $5EEA: $72
    halt                                          ; $5EEB: $76
    ld h, l                                       ; $5EEC: $65
    jr nz, jr_019_5F50                            ; $5EED: $20 $61

    rst $38                                       ; $5EEF: $FF
    ld h, e                                       ; $5EF0: $63
    ld [hl], l                                    ; $5EF1: $75
    ld [hl], d                                    ; $5EF2: $72
    ld [hl], e                                    ; $5EF3: $73
    ld h, l                                       ; $5EF4: $65

jr_019_5EF5:
    jr nz, jr_019_5F66                            ; $5EF5: $20 $6F

    ld l, [hl]                                    ; $5EF7: $6E
    jr nz, jr_019_5F73                            ; $5EF8: $20 $79

    ld l, a                                       ; $5EFA: $6F
    ld [hl], l                                    ; $5EFB: $75
    ld [hl], d                                    ; $5EFC: $72
    cp $74                                        ; $5EFD: $FE $74
    ld l, a                                       ; $5EFF: $6F
    ld l, l                                       ; $5F00: $6D
    ld h, d                                       ; $5F01: $62
    ld [hl], e                                    ; $5F02: $73
    ld [hl], h                                    ; $5F03: $74
    ld l, a                                       ; $5F04: $6F
    ld l, [hl]                                    ; $5F05: $6E

jr_019_5F06:
    ld h, l                                       ; $5F06: $65
    ld hl, $FDFE                                  ; $5F07: $21 $FE $FD
    sbc e                                         ; $5F0A: $9B
    sbc b                                         ; $5F0B: $98
    ld b, c                                       ; $5F0C: $41
    sbc a                                         ; $5F0D: $9F
    ld c, b                                       ; $5F0E: $48
    ld h, c                                       ; $5F0F: $61
    ld l, b                                       ; $5F10: $68
    ld h, c                                       ; $5F11: $61
    ld hl, $53FE                                  ; $5F12: $21 $FE $53
    ld [hl], b                                    ; $5F15: $70
    ld h, l                                       ; $5F16: $65
    ld h, e                                       ; $5F17: $63
    ld [hl], h                                    ; $5F18: $74
    ld h, c                                       ; $5F19: $61
    ld h, e                                       ; $5F1A: $63
    ld [hl], l                                    ; $5F1B: $75
    ld l, h                                       ; $5F1C: $6C
    ld h, c                                       ; $5F1D: $61
    ld [hl], d                                    ; $5F1E: $72
    ld hl, $44FE                                  ; $5F1F: $21 $FE $44
    ld l, a                                       ; $5F22: $6F
    ld l, [hl]                                    ; $5F23: $6E
    daa                                           ; $5F24: $27
    ld [hl], h                                    ; $5F25: $74
    jr nz, jr_019_5F8E                            ; $5F26: $20 $66

    ld l, a                                       ; $5F28: $6F
    ld [hl], d                                    ; $5F29: $72
    ld h, a                                       ; $5F2A: $67
    ld h, l                                       ; $5F2B: $65
    ld [hl], h                                    ; $5F2C: $74
    rst $38                                       ; $5F2D: $FF

jr_019_5F2E:
    ld [hl], h                                    ; $5F2E: $74
    ld l, b                                       ; $5F2F: $68
    ld l, c                                       ; $5F30: $69
    ld [hl], e                                    ; $5F31: $73
    jr nz, jr_019_5F9A                            ; $5F32: $20 $66

    ld h, l                                       ; $5F34: $65
    ld h, l                                       ; $5F35: $65
    ld l, h                                       ; $5F36: $6C
    ld l, c                                       ; $5F37: $69
    ld l, [hl]                                    ; $5F38: $6E
    ld h, a                                       ; $5F39: $67
    inc l                                         ; $5F3A: $2C
    cp $62                                        ; $5F3B: $FE $62
    ld l, a                                       ; $5F3D: $6F
    ld a, c                                       ; $5F3E: $79
    ld l, $FE                                     ; $5F3F: $2E $FE
    ld c, c                                       ; $5F41: $49
    ld [hl], h                                    ; $5F42: $74
    daa                                           ; $5F43: $27
    ld [hl], e                                    ; $5F44: $73
    jr nz, jr_019_5FAF                            ; $5F45: $20 $68

    ld l, a                                       ; $5F47: $6F
    ld [hl], a                                    ; $5F48: $77
    rst $38                                       ; $5F49: $FF
    ld c, c                                       ; $5F4A: $49
    jr nz, jr_019_5FB3                            ; $5F4B: $20 $66

    ld h, l                                       ; $5F4D: $65
    ld l, h                                       ; $5F4E: $6C
    ld [hl], h                                    ; $5F4F: $74

jr_019_5F50:
    jr nz, @+$79                                  ; $5F50: $20 $77

    ld l, b                                       ; $5F52: $68
    ld h, l                                       ; $5F53: $65
    ld l, [hl]                                    ; $5F54: $6E
    cp $6D                                        ; $5F55: $FE $6D
    ld a, c                                       ; $5F57: $79
    jr nz, @+$71                                  ; $5F58: $20 $6F

    ld [hl], a                                    ; $5F5A: $77
    ld l, [hl]                                    ; $5F5B: $6E
    jr nz, @+$64                                  ; $5F5C: $20 $62

    ld [hl], d                                    ; $5F5E: $72
    ld l, a                                       ; $5F5F: $6F
    ld [hl], h                                    ; $5F60: $74
    ld l, b                                       ; $5F61: $68
    ld h, l                                       ; $5F62: $65
    ld [hl], d                                    ; $5F63: $72
    rst $38                                       ; $5F64: $FF
    ld [hl], h                                    ; $5F65: $74

jr_019_5F66:
    ld [hl], l                                    ; $5F66: $75
    ld [hl], d                                    ; $5F67: $72
    ld l, [hl]                                    ; $5F68: $6E
    ld h, l                                       ; $5F69: $65
    ld h, h                                       ; $5F6A: $64
    jr nz, jr_019_5FCE                            ; $5F6B: $20 $61

    ld h, a                                       ; $5F6D: $67
    ld h, c                                       ; $5F6E: $61
    ld l, c                                       ; $5F6F: $69
    ld l, [hl]                                    ; $5F70: $6E
    ld [hl], e                                    ; $5F71: $73
    ld [hl], h                                    ; $5F72: $74

jr_019_5F73:
    cp $6D                                        ; $5F73: $FE $6D
    ld h, l                                       ; $5F75: $65
    jr nz, jr_019_5FDE                            ; $5F76: $20 $66

    ld l, a                                       ; $5F78: $6F
    ld [hl], d                                    ; $5F79: $72
    jr nz, jr_019_5FE0                            ; $5F7A: $20 $64

    ld l, a                                       ; $5F7C: $6F
    ld l, c                                       ; $5F7D: $69
    ld l, [hl]                                    ; $5F7E: $6E
    ld h, a                                       ; $5F7F: $67
    rst $38                                       ; $5F80: $FF
    ld l, l                                       ; $5F81: $6D
    ld a, c                                       ; $5F82: $79
    jr nz, jr_019_5FE9                            ; $5F83: $20 $64

    ld [hl], l                                    ; $5F85: $75
    ld [hl], h                                    ; $5F86: $74
    ld a, c                                       ; $5F87: $79
    ld l, $FE                                     ; $5F88: $2E $FE
    ld d, h                                       ; $5F8A: $54
    ld l, b                                       ; $5F8B: $68
    ld l, c                                       ; $5F8C: $69
    ld [hl], e                                    ; $5F8D: $73

jr_019_5F8E:
    jr nz, jr_019_5FF9                            ; $5F8E: $20 $69

    ld [hl], e                                    ; $5F90: $73
    jr nz, jr_019_6007                            ; $5F91: $20 $74

    ld l, b                                       ; $5F93: $68
    ld h, l                                       ; $5F94: $65
    rst $38                                       ; $5F95: $FF
    ld [hl], d                                    ; $5F96: $72
    ld h, c                                       ; $5F97: $61
    ld h, a                                       ; $5F98: $67
    ld h, l                                       ; $5F99: $65

jr_019_5F9A:
    jr nz, jr_019_6002                            ; $5F9A: $20 $66

    ld [hl], d                                    ; $5F9C: $72
    ld l, a                                       ; $5F9D: $6F
    ld l, l                                       ; $5F9E: $6D
    jr nz, jr_019_6018                            ; $5F9F: $20 $77

    ld l, b                                       ; $5FA1: $68
    ld l, c                                       ; $5FA2: $69
    ld h, e                                       ; $5FA3: $63
    ld l, b                                       ; $5FA4: $68
    cp $4B                                        ; $5FA5: $FE $4B
    ld l, c                                       ; $5FA7: $69
    ld l, [hl]                                    ; $5FA8: $6E
    ld h, a                                       ; $5FA9: $67
    ld [hl], e                                    ; $5FAA: $73
    jr nz, jr_019_600E                            ; $5FAB: $20 $61

    ld [hl], d                                    ; $5FAD: $72
    ld h, l                                       ; $5FAE: $65

jr_019_5FAF:
    jr nz, @+$64                                  ; $5FAF: $20 $62

    ld l, a                                       ; $5FB1: $6F
    ld [hl], d                                    ; $5FB2: $72

jr_019_5FB3:
    ld l, [hl]                                    ; $5FB3: $6E
    ld l, $FE                                     ; $5FB4: $2E $FE
    db $FD                                        ; $5FB6: $FD
    sbc e                                         ; $5FB7: $9B
    ld a, b                                       ; $5FB8: $78
    ld [hl], b                                    ; $5FB9: $70
    sbc a                                         ; $5FBA: $9F
    ld b, a                                       ; $5FBB: $47
    ld [hl], d                                    ; $5FBC: $72
    ld [hl], d                                    ; $5FBD: $72
    ld [hl], d                                    ; $5FBE: $72
    ld l, $2E                                     ; $5FBF: $2E $2E
    ld l, $FE                                     ; $5FC1: $2E $FE
    ld e, c                                       ; $5FC3: $59
    ld l, a                                       ; $5FC4: $6F
    ld [hl], l                                    ; $5FC5: $75
    ld l, $2E                                     ; $5FC6: $2E $2E
    ld l, $FE                                     ; $5FC8: $2E $FE
    ld c, l                                       ; $5FCA: $4D
    ld c, a                                       ; $5FCB: $4F
    ld c, [hl]                                    ; $5FCC: $4E
    ld d, e                                       ; $5FCD: $53

jr_019_5FCE:
    ld d, h                                       ; $5FCE: $54
    ld b, l                                       ; $5FCF: $45
    ld d, d                                       ; $5FD0: $52
    ld l, $2E                                     ; $5FD1: $2E $2E
    ld l, $FE                                     ; $5FD3: $2E $FE
    db $FD                                        ; $5FD5: $FD
    sbc e                                         ; $5FD6: $9B
    sbc b                                         ; $5FD7: $98
    ld b, c                                       ; $5FD8: $41
    sbc a                                         ; $5FD9: $9F
    ld c, c                                       ; $5FDA: $49
    daa                                           ; $5FDB: $27
    halt                                          ; $5FDC: $76
    ld h, l                                       ; $5FDD: $65

jr_019_5FDE:
    jr nz, jr_019_6045                            ; $5FDE: $20 $65

jr_019_5FE0:
    ld l, [hl]                                    ; $5FE0: $6E
    ld l, d                                       ; $5FE1: $6A
    ld l, a                                       ; $5FE2: $6F
    ld a, c                                       ; $5FE3: $79
    ld h, l                                       ; $5FE4: $65
    ld h, h                                       ; $5FE5: $64
    rst $38                                       ; $5FE6: $FF
    ld l, a                                       ; $5FE7: $6F
    ld [hl], l                                    ; $5FE8: $75

jr_019_5FE9:
    ld [hl], d                                    ; $5FE9: $72
    jr nz, jr_019_6060                            ; $5FEA: $20 $74

    ld l, c                                       ; $5FEC: $69
    ld l, l                                       ; $5FED: $6D
    ld h, l                                       ; $5FEE: $65
    cp $74                                        ; $5FEF: $FE $74
    ld l, a                                       ; $5FF1: $6F
    ld h, a                                       ; $5FF2: $67
    ld h, l                                       ; $5FF3: $65
    ld [hl], h                                    ; $5FF4: $74
    ld l, b                                       ; $5FF5: $68
    ld h, l                                       ; $5FF6: $65
    ld [hl], d                                    ; $5FF7: $72
    inc l                                         ; $5FF8: $2C

jr_019_5FF9:
    jr nz, jr_019_605D                            ; $5FF9: $20 $62

    ld [hl], l                                    ; $5FFB: $75
    ld [hl], h                                    ; $5FFC: $74
    rst $38                                       ; $5FFD: $FF
    ld c, c                                       ; $5FFE: $49
    jr nz, jr_019_606E                            ; $5FFF: $20 $6D

    ld [hl], l                                    ; $6001: $75

jr_019_6002:
    ld [hl], e                                    ; $6002: $73
    ld [hl], h                                    ; $6003: $74
    jr nz, jr_019_6074                            ; $6004: $20 $6E

    ld l, a                                       ; $6006: $6F

jr_019_6007:
    ld [hl], a                                    ; $6007: $77
    cp $72                                        ; $6008: $FE $72
    ld h, l                                       ; $600A: $65
    ld [hl], h                                    ; $600B: $74
    ld [hl], l                                    ; $600C: $75
    ld [hl], d                                    ; $600D: $72

jr_019_600E:
    ld l, [hl]                                    ; $600E: $6E
    jr nz, jr_019_6085                            ; $600F: $20 $74

    ld l, a                                       ; $6011: $6F
    jr nz, jr_019_6088                            ; $6012: $20 $74

    ld l, b                                       ; $6014: $68
    ld h, l                                       ; $6015: $65
    rst $38                                       ; $6016: $FF
    ld b, e                                       ; $6017: $43

jr_019_6018:
    ld l, a                                       ; $6018: $6F
    ld [hl], d                                    ; $6019: $72
    ld h, l                                       ; $601A: $65
    ld l, $FE                                     ; $601B: $2E $FE
    ld b, d                                       ; $601D: $42
    ld a, c                                       ; $601E: $79
    jr nz, jr_019_6095                            ; $601F: $20 $74

    ld l, b                                       ; $6021: $68
    ld h, l                                       ; $6022: $65
    jr nz, jr_019_6099                            ; $6023: $20 $74

    ld l, c                                       ; $6025: $69
    ld l, l                                       ; $6026: $6D
    ld h, l                                       ; $6027: $65
    rst $38                                       ; $6028: $FF
    ld a, c                                       ; $6029: $79
    ld l, a                                       ; $602A: $6F
    ld [hl], l                                    ; $602B: $75
    jr nz, jr_019_60A0                            ; $602C: $20 $72

    ld h, l                                       ; $602E: $65
    ld h, c                                       ; $602F: $61
    ld h, e                                       ; $6030: $63
    ld l, b                                       ; $6031: $68
    jr nz, jr_019_60A8                            ; $6032: $20 $74

    ld l, b                                       ; $6034: $68
    ld h, l                                       ; $6035: $65
    cp $41                                        ; $6036: $FE $41
    ld [hl], d                                    ; $6038: $72
    ld h, h                                       ; $6039: $64
    ld h, l                                       ; $603A: $65
    ld [hl], d                                    ; $603B: $72
    ld l, c                                       ; $603C: $69
    ld h, c                                       ; $603D: $61
    ld l, h                                       ; $603E: $6C
    jr nz, jr_019_60A8                            ; $603F: $20 $67

    ld h, l                                       ; $6041: $65
    ld a, c                                       ; $6042: $79
    ld [hl], e                                    ; $6043: $73
    ld h, l                                       ; $6044: $65

jr_019_6045:
    ld [hl], d                                    ; $6045: $72
    rst $38                                       ; $6046: $FF
    ld h, c                                       ; $6047: $61
    ld l, [hl]                                    ; $6048: $6E
    ld l, a                                       ; $6049: $6F
    ld [hl], h                                    ; $604A: $74
    ld l, b                                       ; $604B: $68
    ld h, l                                       ; $604C: $65
    ld [hl], d                                    ; $604D: $72
    jr nz, jr_019_60C7                            ; $604E: $20 $77

    ld l, c                                       ; $6050: $69
    ld l, h                                       ; $6051: $6C
    ld l, h                                       ; $6052: $6C
    cp $68                                        ; $6053: $FE $68
    ld h, c                                       ; $6055: $61
    halt                                          ; $6056: $76
    ld h, l                                       ; $6057: $65
    jr nz, jr_019_60BB                            ; $6058: $20 $61

    ld [hl], b                                    ; $605A: $70
    ld [hl], b                                    ; $605B: $70
    ld h, l                                       ; $605C: $65

jr_019_605D:
    ld h, c                                       ; $605D: $61
    ld [hl], d                                    ; $605E: $72
    ld h, l                                       ; $605F: $65

jr_019_6060:
    ld h, h                                       ; $6060: $64
    rst $38                                       ; $6061: $FF
    ld l, c                                       ; $6062: $69
    ld l, [hl]                                    ; $6063: $6E
    jr nz, jr_019_60B6                            ; $6064: $20 $50

    ld h, c                                       ; $6066: $61
    ld [hl], d                                    ; $6067: $72
    ld h, c                                       ; $6068: $61
    ld h, h                                       ; $6069: $64
    ld [hl], a                                    ; $606A: $77
    ld a, c                                       ; $606B: $79
    ld l, [hl]                                    ; $606C: $6E
    inc l                                         ; $606D: $2C

jr_019_606E:
    cp $61                                        ; $606E: $FE $61
    ld l, [hl]                                    ; $6070: $6E
    ld h, h                                       ; $6071: $64
    jr nz, jr_019_60E8                            ; $6072: $20 $74

jr_019_6074:
    ld [hl], a                                    ; $6074: $77
    ld l, a                                       ; $6075: $6F
    jr nz, jr_019_60E5                            ; $6076: $20 $6D

    ld l, a                                       ; $6078: $6F
    ld [hl], d                                    ; $6079: $72
    ld h, l                                       ; $607A: $65
    rst $38                                       ; $607B: $FF
    ld l, c                                       ; $607C: $69
    ld l, [hl]                                    ; $607D: $6E
    jr nz, jr_019_60C4                            ; $607E: $20 $44

    daa                                           ; $6080: $27
    ld d, d                                       ; $6081: $52
    ld h, l                                       ; $6082: $65
    ld [hl], e                                    ; $6083: $73
    ld l, b                                       ; $6084: $68

jr_019_6085:
    ld l, $FE                                     ; $6085: $2E $FE
    db $FD                                        ; $6087: $FD

jr_019_6088:
    sbc d                                         ; $6088: $9A
    ld b, b                                       ; $6089: $40
    db $10                                        ; $608A: $10
    sbc e                                         ; $608B: $9B
    sbc b                                         ; $608C: $98
    ld b, c                                       ; $608D: $41
    sbc a                                         ; $608E: $9F
    ld c, c                                       ; $608F: $49
    ld [hl], h                                    ; $6090: $74
    jr nz, jr_019_6100                            ; $6091: $20 $6D

    ld h, c                                       ; $6093: $61
    ld a, c                                       ; $6094: $79

jr_019_6095:
    jr nz, jr_019_60F9                            ; $6095: $20 $62

    ld h, l                                       ; $6097: $65
    rst $38                                       ; $6098: $FF

jr_019_6099:
    ld c, l                                       ; $6099: $4D
    ld l, a                                       ; $609A: $6F
    ld [hl], d                                    ; $609B: $72
    ld h, c                                       ; $609C: $61
    ld h, a                                       ; $609D: $67
    daa                                           ; $609E: $27
    ld [hl], e                                    ; $609F: $73

jr_019_60A0:
    jr nz, jr_019_6108                            ; $60A0: $20 $66

    ld h, c                                       ; $60A2: $61
    ld [hl], h                                    ; $60A3: $74
    ld h, l                                       ; $60A4: $65
    cp $74                                        ; $60A5: $FE $74
    ld l, a                                       ; $60A7: $6F

jr_019_60A8:
    jr nz, jr_019_611A                            ; $60A8: $20 $70

    ld h, l                                       ; $60AA: $65
    ld [hl], d                                    ; $60AB: $72
    ld l, c                                       ; $60AC: $69
    ld [hl], e                                    ; $60AD: $73
    ld l, b                                       ; $60AE: $68
    jr nz, jr_019_6113                            ; $60AF: $20 $62

    ld a, c                                       ; $60B1: $79
    rst $38                                       ; $60B2: $FF
    ld a, c                                       ; $60B3: $79
    ld l, a                                       ; $60B4: $6F
    ld [hl], l                                    ; $60B5: $75

jr_019_60B6:
    ld [hl], d                                    ; $60B6: $72
    jr nz, jr_019_6121                            ; $60B7: $20 $68

    ld h, c                                       ; $60B9: $61
    ld l, [hl]                                    ; $60BA: $6E

jr_019_60BB:
    ld h, h                                       ; $60BB: $64
    ld [hl], e                                    ; $60BC: $73
    ld l, $FE                                     ; $60BD: $2E $FE
    ld c, c                                       ; $60BF: $49
    ld h, [hl]                                    ; $60C0: $66
    jr nz, jr_019_613C                            ; $60C1: $20 $79

    ld l, a                                       ; $60C3: $6F

jr_019_60C4:
    ld [hl], l                                    ; $60C4: $75
    jr nz, jr_019_613A                            ; $60C5: $20 $73

jr_019_60C7:
    ld [hl], l                                    ; $60C7: $75
    ld [hl], d                                    ; $60C8: $72
    halt                                          ; $60C9: $76
    ld l, c                                       ; $60CA: $69
    halt                                          ; $60CB: $76
    ld h, l                                       ; $60CC: $65
    inc l                                         ; $60CD: $2C
    rst $38                                       ; $60CE: $FF
    ld [hl], d                                    ; $60CF: $72
    ld h, l                                       ; $60D0: $65
    ld [hl], h                                    ; $60D1: $74
    ld [hl], l                                    ; $60D2: $75
    ld [hl], d                                    ; $60D3: $72
    ld l, [hl]                                    ; $60D4: $6E
    jr nz, @+$76                                  ; $60D5: $20 $74

    ld l, a                                       ; $60D7: $6F
    jr nz, jr_019_614E                            ; $60D8: $20 $74

    ld l, b                                       ; $60DA: $68
    ld h, l                                       ; $60DB: $65
    cp $43                                        ; $60DC: $FE $43
    ld l, a                                       ; $60DE: $6F
    ld [hl], d                                    ; $60DF: $72
    ld h, l                                       ; $60E0: $65
    jr nz, jr_019_6128                            ; $60E1: $20 $45

    ld l, [hl]                                    ; $60E3: $6E
    ld [hl], h                                    ; $60E4: $74

jr_019_60E5:
    ld [hl], d                                    ; $60E5: $72
    ld h, c                                       ; $60E6: $61
    ld l, [hl]                                    ; $60E7: $6E

jr_019_60E8:
    ld h, e                                       ; $60E8: $63
    ld h, l                                       ; $60E9: $65
    ld l, $FE                                     ; $60EA: $2E $FE
    ld b, [hl]                                    ; $60EC: $46
    ld l, c                                       ; $60ED: $69
    halt                                          ; $60EE: $76
    ld h, l                                       ; $60EF: $65
    jr nz, jr_019_6165                            ; $60F0: $20 $73

    ld [hl], h                                    ; $60F2: $74
    ld l, a                                       ; $60F3: $6F
    ld l, [hl]                                    ; $60F4: $6E
    ld h, l                                       ; $60F5: $65
    ld [hl], e                                    ; $60F6: $73
    rst $38                                       ; $60F7: $FF
    ld [hl], a                                    ; $60F8: $77

jr_019_60F9:
    ld l, c                                       ; $60F9: $69
    ld l, h                                       ; $60FA: $6C
    ld l, h                                       ; $60FB: $6C
    jr nz, jr_019_616D                            ; $60FC: $20 $6F

    ld [hl], b                                    ; $60FE: $70
    ld h, l                                       ; $60FF: $65

jr_019_6100:
    ld l, [hl]                                    ; $6100: $6E
    jr nz, jr_019_6177                            ; $6101: $20 $74

    ld l, b                                       ; $6103: $68
    ld h, l                                       ; $6104: $65
    cp $67                                        ; $6105: $FE $67
    ld h, c                                       ; $6107: $61

jr_019_6108:
    ld [hl], h                                    ; $6108: $74
    ld h, l                                       ; $6109: $65
    ld l, $FE                                     ; $610A: $2E $FE
    ld c, c                                       ; $610C: $49
    daa                                           ; $610D: $27
    ld l, h                                       ; $610E: $6C
    ld l, h                                       ; $610F: $6C
    jr nz, jr_019_6174                            ; $6110: $20 $62

    ld h, l                                       ; $6112: $65

jr_019_6113:
    jr nz, jr_019_618C                            ; $6113: $20 $77

    ld h, c                                       ; $6115: $61
    ld l, c                                       ; $6116: $69
    ld [hl], h                                    ; $6117: $74
    ld l, c                                       ; $6118: $69
    ld l, [hl]                                    ; $6119: $6E

jr_019_611A:
    ld h, a                                       ; $611A: $67
    rst $38                                       ; $611B: $FF
    ld h, [hl]                                    ; $611C: $66
    ld l, a                                       ; $611D: $6F
    ld [hl], d                                    ; $611E: $72
    jr nz, jr_019_619A                            ; $611F: $20 $79

jr_019_6121:
    ld l, a                                       ; $6121: $6F
    ld [hl], l                                    ; $6122: $75
    jr nz, jr_019_6199                            ; $6123: $20 $74

    ld l, b                                       ; $6125: $68
    ld h, l                                       ; $6126: $65
    ld [hl], d                                    ; $6127: $72

jr_019_6128:
    ld h, l                                       ; $6128: $65
    ld l, $FE                                     ; $6129: $2E $FE
    ld d, b                                       ; $612B: $50
    ld h, l                                       ; $612C: $65
    ld [hl], d                                    ; $612D: $72
    ld l, b                                       ; $612E: $68
    ld h, c                                       ; $612F: $61
    ld [hl], b                                    ; $6130: $70
    ld [hl], e                                    ; $6131: $73
    jr nz, jr_019_61A8                            ; $6132: $20 $74

    ld l, b                                       ; $6134: $68
    ld h, l                                       ; $6135: $65
    ld l, [hl]                                    ; $6136: $6E
    rst $38                                       ; $6137: $FF
    ld a, c                                       ; $6138: $79
    ld l, a                                       ; $6139: $6F

jr_019_613A:
    ld [hl], l                                    ; $613A: $75
    daa                                           ; $613B: $27

jr_019_613C:
    ld l, h                                       ; $613C: $6C
    ld l, h                                       ; $613D: $6C
    jr nz, jr_019_61A2                            ; $613E: $20 $62

    ld h, l                                       ; $6140: $65
    jr nz, jr_019_61B5                            ; $6141: $20 $72

    ld h, l                                       ; $6143: $65
    ld h, c                                       ; $6144: $61
    ld h, h                                       ; $6145: $64
    ld a, c                                       ; $6146: $79
    cp $74                                        ; $6147: $FE $74
    ld l, a                                       ; $6149: $6F
    jr nz, jr_019_61B2                            ; $614A: $20 $66

    ld h, c                                       ; $614C: $61
    ld h, e                                       ; $614D: $63

jr_019_614E:
    ld h, l                                       ; $614E: $65
    jr nz, jr_019_61C5                            ; $614F: $20 $74

    ld l, b                                       ; $6151: $68
    ld h, l                                       ; $6152: $65
    rst $38                                       ; $6153: $FF
    ld [hl], h                                    ; $6154: $74
    ld [hl], d                                    ; $6155: $72
    ld [hl], l                                    ; $6156: $75
    ld [hl], h                                    ; $6157: $74
    ld l, b                                       ; $6158: $68
    ld l, $FE                                     ; $6159: $2E $FE
    db $FD                                        ; $615B: $FD
    ld e, b                                       ; $615C: $58
    dec bc                                        ; $615D: $0B
    ld b, d                                       ; $615E: $42
    sbc e                                         ; $615F: $9B
    ld a, b                                       ; $6160: $78
    ld [hl], b                                    ; $6161: $70
    sbc a                                         ; $6162: $9F
    ld l, $2E                                     ; $6163: $2E $2E

jr_019_6165:
    ld l, $2E                                     ; $6165: $2E $2E
    ld l, $2E                                     ; $6167: $2E $2E
    ld l, $2E                                     ; $6169: $2E $2E
    ld l, $FE                                     ; $616B: $2E $FE

jr_019_616D:
    db $FD                                        ; $616D: $FD
    sbc d                                         ; $616E: $9A
    ld e, b                                       ; $616F: $58
    inc c                                         ; $6170: $0C
    ld b, d                                       ; $6171: $42
    sbc e                                         ; $6172: $9B
    ld a, b                                       ; $6173: $78

jr_019_6174:
    ld [hl], b                                    ; $6174: $70
    sbc a                                         ; $6175: $9F
    ld d, h                                       ; $6176: $54

jr_019_6177:
    ld l, b                                       ; $6177: $68
    ld h, l                                       ; $6178: $65
    jr nz, jr_019_61EF                            ; $6179: $20 $74

    ld [hl], d                                    ; $617B: $72
    ld [hl], l                                    ; $617C: $75
    ld [hl], h                                    ; $617D: $74
    ld l, b                                       ; $617E: $68
    ld l, $2E                                     ; $617F: $2E $2E
    ld l, $3F                                     ; $6181: $2E $3F
    cp $FD                                        ; $6183: $FE $FD
    sbc d                                         ; $6185: $9A
    ld b, b                                       ; $6186: $40
    add b                                         ; $6187: $80
    sbc e                                         ; $6188: $9B
    ld a, b                                       ; $6189: $78
    ld [hl], b                                    ; $618A: $70
    sbc a                                         ; $618B: $9F

jr_019_618C:
    ld l, $2E                                     ; $618C: $2E $2E
    ld l, $2E                                     ; $618E: $2E $2E
    ld l, $2E                                     ; $6190: $2E $2E
    ld l, $FE                                     ; $6192: $2E $FE
    db $FD                                        ; $6194: $FD
    sbc d                                         ; $6195: $9A
    ld e, b                                       ; $6196: $58
    dec c                                         ; $6197: $0D
    ld b, d                                       ; $6198: $42

jr_019_6199:
    sbc e                                         ; $6199: $9B

jr_019_619A:
    ld a, b                                       ; $619A: $78
    ld [hl], b                                    ; $619B: $70
    sbc a                                         ; $619C: $9F
    ld c, c                                       ; $619D: $49
    jr nz, jr_019_6204                            ; $619E: $20 $64

    ld l, a                                       ; $61A0: $6F
    ld l, [hl]                                    ; $61A1: $6E

jr_019_61A2:
    daa                                           ; $61A2: $27
    ld [hl], h                                    ; $61A3: $74
    jr nz, jr_019_6209                            ; $61A4: $20 $63

    ld h, c                                       ; $61A6: $61
    ld [hl], d                                    ; $61A7: $72

jr_019_61A8:
    ld h, l                                       ; $61A8: $65
    rst $38                                       ; $61A9: $FF
    ld [hl], a                                    ; $61AA: $77
    ld l, b                                       ; $61AB: $68
    ld h, c                                       ; $61AC: $61
    ld [hl], h                                    ; $61AD: $74
    jr nz, jr_019_6224                            ; $61AE: $20 $74

    ld l, b                                       ; $61B0: $68
    ld h, c                                       ; $61B1: $61

jr_019_61B2:
    ld [hl], h                                    ; $61B2: $74
    jr nz, @+$43                                  ; $61B3: $20 $41

jr_019_61B5:
    ld h, a                                       ; $61B5: $67
    ld [hl], d                                    ; $61B6: $72
    ld h, c                                       ; $61B7: $61
    ld l, l                                       ; $61B8: $6D
    cp $67                                        ; $61B9: $FE $67
    ld [hl], l                                    ; $61BB: $75
    ld a, c                                       ; $61BC: $79
    jr nz, @+$75                                  ; $61BD: $20 $73

    ld h, c                                       ; $61BF: $61
    ld a, c                                       ; $61C0: $79
    ld [hl], e                                    ; $61C1: $73
    ld l, $FE                                     ; $61C2: $2E $FE
    ld d, h                                       ; $61C4: $54

jr_019_61C5:
    ld l, b                                       ; $61C5: $68
    ld h, l                                       ; $61C6: $65
    ld [hl], e                                    ; $61C7: $73
    ld h, l                                       ; $61C8: $65
    jr nz, jr_019_623B                            ; $61C9: $20 $70

    ld h, l                                       ; $61CB: $65
    ld l, a                                       ; $61CC: $6F
    ld [hl], b                                    ; $61CD: $70
    ld l, h                                       ; $61CE: $6C
    ld h, l                                       ; $61CF: $65
    rst $38                                       ; $61D0: $FF
    ld h, c                                       ; $61D1: $61
    ld [hl], e                                    ; $61D2: $73
    ld l, e                                       ; $61D3: $6B
    ld h, l                                       ; $61D4: $65
    ld h, h                                       ; $61D5: $64
    jr nz, jr_019_623E                            ; $61D6: $20 $66

    ld l, a                                       ; $61D8: $6F
    ld [hl], d                                    ; $61D9: $72
    jr nz, jr_019_6249                            ; $61DA: $20 $6D

    ld a, c                                       ; $61DC: $79
    cp $68                                        ; $61DD: $FE $68
    ld h, l                                       ; $61DF: $65
    ld l, h                                       ; $61E0: $6C
    ld [hl], b                                    ; $61E1: $70
    inc l                                         ; $61E2: $2C
    jr nz, jr_019_6246                            ; $61E3: $20 $61

    ld l, [hl]                                    ; $61E5: $6E
    ld h, h                                       ; $61E6: $64
    rst $38                                       ; $61E7: $FF
    ld [hl], h                                    ; $61E8: $74
    ld l, b                                       ; $61E9: $68
    ld h, l                                       ; $61EA: $65
    ld a, c                                       ; $61EB: $79
    daa                                           ; $61EC: $27
    ld [hl], d                                    ; $61ED: $72
    ld h, l                                       ; $61EE: $65

jr_019_61EF:
    jr nz, jr_019_6258                            ; $61EF: $20 $67

    ld l, a                                       ; $61F1: $6F
    ld l, c                                       ; $61F2: $69
    ld l, [hl]                                    ; $61F3: $6E
    ld h, a                                       ; $61F4: $67
    cp $74                                        ; $61F5: $FE $74
    ld l, a                                       ; $61F7: $6F
    jr nz, @+$69                                  ; $61F8: $20 $67

    ld h, l                                       ; $61FA: $65
    ld [hl], h                                    ; $61FB: $74
    jr nz, jr_019_6267                            ; $61FC: $20 $69

    ld [hl], h                                    ; $61FE: $74
    ld l, $FE                                     ; $61FF: $2E $FE
    db $FD                                        ; $6201: $FD
    sbc d                                         ; $6202: $9A
    ld b, b                                       ; $6203: $40

jr_019_6204:
    db $10                                        ; $6204: $10
    sbc e                                         ; $6205: $9B
    ld a, b                                       ; $6206: $78
    ld [hl], b                                    ; $6207: $70
    sbc a                                         ; $6208: $9F

jr_019_6209:
    ld c, b                                       ; $6209: $48
    ld h, l                                       ; $620A: $65
    ld a, c                                       ; $620B: $79
    ld l, $2E                                     ; $620C: $2E $2E
    ld l, $FE                                     ; $620E: $2E $FE
    ld d, a                                       ; $6210: $57
    ld l, b                                       ; $6211: $68
    ld h, l                                       ; $6212: $65
    ld [hl], d                                    ; $6213: $72
    ld h, l                                       ; $6214: $65
    daa                                           ; $6215: $27
    ld [hl], e                                    ; $6216: $73
    jr nz, jr_019_6286                            ; $6217: $20 $6D

    ld a, c                                       ; $6219: $79
    rst $38                                       ; $621A: $FF
    ld [hl], h                                    ; $621B: $74
    ld [hl], d                                    ; $621C: $72
    ld h, c                                       ; $621D: $61
    ld l, [hl]                                    ; $621E: $6E
    ld [hl], e                                    ; $621F: $73
    ld l, h                                       ; $6220: $6C
    ld h, c                                       ; $6221: $61
    ld [hl], h                                    ; $6222: $74
    ld l, c                                       ; $6223: $69

jr_019_6224:
    ld l, a                                       ; $6224: $6F
    ld l, [hl]                                    ; $6225: $6E
    cp $62                                        ; $6226: $FE $62
    ld [hl], d                                    ; $6228: $72
    ld h, c                                       ; $6229: $61
    ld h, e                                       ; $622A: $63
    ld h, l                                       ; $622B: $65
    ld l, h                                       ; $622C: $6C
    ld h, l                                       ; $622D: $65
    ld [hl], h                                    ; $622E: $74
    ld l, $2E                                     ; $622F: $2E $2E
    ld l, $3F                                     ; $6231: $2E $3F
    cp $FD                                        ; $6233: $FE $FD
    sbc d                                         ; $6235: $9A
    ld e, b                                       ; $6236: $58
    ld de, $9B42                                  ; $6237: $11 $42 $9B
    ld a, b                                       ; $623A: $78

jr_019_623B:
    ld [hl], b                                    ; $623B: $70
    sbc a                                         ; $623C: $9F
    ld c, b                                       ; $623D: $48

jr_019_623E:
    ld h, l                                       ; $623E: $65
    ld [hl], d                                    ; $623F: $72
    ld h, l                                       ; $6240: $65
    jr nz, jr_019_62AC                            ; $6241: $20 $69

    ld [hl], h                                    ; $6243: $74
    jr nz, jr_019_62AF                            ; $6244: $20 $69

jr_019_6246:
    ld [hl], e                                    ; $6246: $73
    ld l, $FE                                     ; $6247: $2E $FE

jr_019_6249:
    ld c, c                                       ; $6249: $49
    ld [hl], h                                    ; $624A: $74
    jr nz, jr_019_62BA                            ; $624B: $20 $6D

    ld [hl], l                                    ; $624D: $75
    ld [hl], e                                    ; $624E: $73
    ld [hl], h                                    ; $624F: $74
    jr nz, jr_019_62BA                            ; $6250: $20 $68

    ld h, c                                       ; $6252: $61
    halt                                          ; $6253: $76
    ld h, l                                       ; $6254: $65
    rst $38                                       ; $6255: $FF
    ld h, [hl]                                    ; $6256: $66
    ld h, c                                       ; $6257: $61

jr_019_6258:
    ld l, h                                       ; $6258: $6C
    ld l, h                                       ; $6259: $6C
    ld h, l                                       ; $625A: $65
    ld l, [hl]                                    ; $625B: $6E
    jr nz, jr_019_62CD                            ; $625C: $20 $6F

    ld h, [hl]                                    ; $625E: $66
    ld h, [hl]                                    ; $625F: $66
    cp $77                                        ; $6260: $FE $77
    ld l, b                                       ; $6262: $68
    ld h, l                                       ; $6263: $65
    ld l, [hl]                                    ; $6264: $6E
    jr nz, jr_019_62A8                            ; $6265: $20 $41

jr_019_6267:
    ld h, a                                       ; $6267: $67
    ld [hl], d                                    ; $6268: $72
    ld h, c                                       ; $6269: $61
    ld l, l                                       ; $626A: $6D
    rst $38                                       ; $626B: $FF
    ld a, d                                       ; $626C: $7A
    ld h, c                                       ; $626D: $61
    ld [hl], b                                    ; $626E: $70
    ld [hl], b                                    ; $626F: $70
    ld h, l                                       ; $6270: $65
    ld h, h                                       ; $6271: $64
    jr nz, jr_019_62E1                            ; $6272: $20 $6D

    ld h, l                                       ; $6274: $65
    ld l, $FE                                     ; $6275: $2E $FE
    ld b, d                                       ; $6277: $42
    ld [hl], l                                    ; $6278: $75
    ld [hl], h                                    ; $6279: $74
    jr nz, jr_019_62E4                            ; $627A: $20 $68

    ld l, a                                       ; $627C: $6F
    ld [hl], a                                    ; $627D: $77
    jr nz, jr_019_62F7                            ; $627E: $20 $77

    ld h, c                                       ; $6280: $61
    ld [hl], e                                    ; $6281: $73
    rst $38                                       ; $6282: $FF
    ld c, c                                       ; $6283: $49
    jr nz, jr_019_62E7                            ; $6284: $20 $61

jr_019_6286:
    ld h, d                                       ; $6286: $62
    ld l, h                                       ; $6287: $6C
    ld h, l                                       ; $6288: $65
    jr nz, @+$76                                  ; $6289: $20 $74

    ld l, a                                       ; $628B: $6F
    cp $75                                        ; $628C: $FE $75
    ld l, [hl]                                    ; $628E: $6E
    ld h, h                                       ; $628F: $64
    ld h, l                                       ; $6290: $65
    ld [hl], d                                    ; $6291: $72
    ld [hl], e                                    ; $6292: $73
    ld [hl], h                                    ; $6293: $74
    ld h, c                                       ; $6294: $61
    ld l, [hl]                                    ; $6295: $6E
    ld h, h                                       ; $6296: $64
    rst $38                                       ; $6297: $FF
    ld l, b                                       ; $6298: $68
    ld l, c                                       ; $6299: $69
    ld l, l                                       ; $629A: $6D
    ccf                                           ; $629B: $3F
    cp $2E                                        ; $629C: $FE $2E

jr_019_629E:
    ld l, $2E                                     ; $629E: $2E $2E
    ld l, $2E                                     ; $62A0: $2E $2E
    ld l, $2E                                     ; $62A2: $2E $2E
    cp $FD                                        ; $62A4: $FE $FD
    sbc d                                         ; $62A6: $9A
    ld e, b                                       ; $62A7: $58

jr_019_62A8:
    ld [de], a                                    ; $62A8: $12
    ld b, d                                       ; $62A9: $42
    ld [bc], a                                    ; $62AA: $02
    nop                                           ; $62AB: $00

jr_019_62AC:
    nop                                           ; $62AC: $00
    nop                                           ; $62AD: $00
    nop                                           ; $62AE: $00

jr_019_62AF:
    jr nc, jr_019_629E                            ; $62AF: $30 $ED

    ld d, [hl]                                    ; $62B1: $56
    jr nz, jr_019_62FB                            ; $62B2: $20 $47

    ld [$CD19], sp                                ; $62B4: $08 $19 $CD
    ld h, d                                       ; $62B7: $62
    add hl, de                                    ; $62B8: $19
    db $DB                                        ; $62B9: $DB

jr_019_62BA:
    ld h, d                                       ; $62BA: $62
    add hl, de                                    ; $62BB: $19
    pop af                                        ; $62BC: $F1
    ld h, d                                       ; $62BD: $62
    add hl, de                                    ; $62BE: $19
    rst $38                                       ; $62BF: $FF
    ld h, d                                       ; $62C0: $62
    add hl, de                                    ; $62C1: $19
    dec c                                         ; $62C2: $0D
    ld h, e                                       ; $62C3: $63
    add hl, de                                    ; $62C4: $19
    inc hl                                        ; $62C5: $23
    ld h, e                                       ; $62C6: $63
    add hl, de                                    ; $62C7: $19
    ld b, b                                       ; $62C8: $40
    ld h, e                                       ; $62C9: $63
    add hl, de                                    ; $62CA: $19
    ld h, e                                       ; $62CB: $63
    ld h, e                                       ; $62CC: $63

jr_019_62CD:
    dec h                                         ; $62CD: $25
    nop                                           ; $62CE: $00
    ld l, h                                       ; $62CF: $6C
    ld b, e                                       ; $62D0: $43
    ld c, h                                       ; $62D1: $4C
    inc hl                                        ; $62D2: $23
    ld b, b                                       ; $62D3: $40
    ld l, $09                                     ; $62D4: $2E $09
    ld sp, $5C43                                  ; $62D6: $31 $43 $5C
    ld bc, $2527                                  ; $62D9: $01 $27 $25
    nop                                           ; $62DC: $00
    ld l, h                                       ; $62DD: $6C
    ld b, b                                       ; $62DE: $40
    ld c, h                                       ; $62DF: $4C
    inc hl                                        ; $62E0: $23

jr_019_62E1:
    ld b, b                                       ; $62E1: $40
    ld l, $09                                     ; $62E2: $2E $09

jr_019_62E4:
    ld [bc], a                                    ; $62E4: $02
    dec a                                         ; $62E5: $3D
    ld d, l                                       ; $62E6: $55

jr_019_62E7:
    ld bc, $2B2B                                  ; $62E7: $01 $2B $2B
    ld l, $09                                     ; $62EA: $2E $09
    ld a, [de]                                    ; $62EC: $1A
    ccf                                           ; $62ED: $3F
    ld e, b                                       ; $62EE: $58
    ld bc, $2527                                  ; $62EF: $01 $27 $25
    nop                                           ; $62F2: $00
    ld l, h                                       ; $62F3: $6C
    ld c, d                                       ; $62F4: $4A
    ld c, h                                       ; $62F5: $4C
    inc hl                                        ; $62F6: $23

jr_019_62F7:
    ld b, b                                       ; $62F7: $40
    ld l, $09                                     ; $62F8: $2E $09
    ld b, a                                       ; $62FA: $47

jr_019_62FB:
    ld c, d                                       ; $62FB: $4A
    ld l, [hl]                                    ; $62FC: $6E
    ld bc, $2527                                  ; $62FD: $01 $27 $25
    nop                                           ; $6300: $00
    ld l, h                                       ; $6301: $6C
    ld b, [hl]                                    ; $6302: $46
    ld c, h                                       ; $6303: $4C
    inc hl                                        ; $6304: $23
    ld b, b                                       ; $6305: $40
    ld l, $09                                     ; $6306: $2E $09
    ld [hl-], a                                   ; $6308: $32
    ld b, l                                       ; $6309: $45
    ld e, b                                       ; $630A: $58
    ld bc, $2527                                  ; $630B: $01 $27 $25
    nop                                           ; $630E: $00
    ld l, h                                       ; $630F: $6C
    ld b, h                                       ; $6310: $44
    ld c, h                                       ; $6311: $4C
    inc hl                                        ; $6312: $23
    ld b, b                                       ; $6313: $40
    ld l, $09                                     ; $6314: $2E $09
    ld sp, $5C43                                  ; $6316: $31 $43 $5C
    ld bc, $2B2B                                  ; $6319: $01 $2B $2B
    ld l, $09                                     ; $631C: $2E $09
    ld [bc], a                                    ; $631E: $02
    dec a                                         ; $631F: $3D
    ld d, l                                       ; $6320: $55
    ld bc, $2527                                  ; $6321: $01 $27 $25
    nop                                           ; $6324: $00
    ld l, h                                       ; $6325: $6C
    ld b, h                                       ; $6326: $44
    ld c, h                                       ; $6327: $4C
    inc hl                                        ; $6328: $23
    ld b, b                                       ; $6329: $40
    ld l, $09                                     ; $632A: $2E $09
    ld a, [de]                                    ; $632C: $1A
    ccf                                           ; $632D: $3F
    ld e, b                                       ; $632E: $58
    ld bc, $2E2B                                  ; $632F: $01 $2B $2E
    add hl, bc                                    ; $6332: $09
    ld a, [de]                                    ; $6333: $1A
    ccf                                           ; $6334: $3F
    ld e, b                                       ; $6335: $58
    ld bc, $2B2B                                  ; $6336: $01 $2B $2B
    ld l, $09                                     ; $6339: $2E $09
    ld [hl-], a                                   ; $633B: $32
    ld b, l                                       ; $633C: $45
    ld e, b                                       ; $633D: $58
    ld bc, $2527                                  ; $633E: $01 $27 $25
    nop                                           ; $6341: $00
    ld l, h                                       ; $6342: $6C
    ld d, b                                       ; $6343: $50
    ld c, h                                       ; $6344: $4C
    inc hl                                        ; $6345: $23
    ld b, b                                       ; $6346: $40
    ld l, $09                                     ; $6347: $2E $09
    ld b, a                                       ; $6349: $47
    ld c, d                                       ; $634A: $4A
    ld l, [hl]                                    ; $634B: $6E
    ld bc, $2E2B                                  ; $634C: $01 $2B $2E
    add hl, bc                                    ; $634F: $09
    ld b, a                                       ; $6350: $47
    ld c, d                                       ; $6351: $4A
    ld l, [hl]                                    ; $6352: $6E
    ld bc, $2E2B                                  ; $6353: $01 $2B $2E
    add hl, bc                                    ; $6356: $09
    ld b, a                                       ; $6357: $47
    ld c, d                                       ; $6358: $4A
    ld l, [hl]                                    ; $6359: $6E
    ld bc, $2E2B                                  ; $635A: $01 $2B $2E
    add hl, bc                                    ; $635D: $09
    ld b, a                                       ; $635E: $47
    ld c, d                                       ; $635F: $4A
    ld l, [hl]                                    ; $6360: $6E
    ld bc, $2527                                  ; $6361: $01 $27 $25
    nop                                           ; $6364: $00
    ld l, h                                       ; $6365: $6C
    ld b, b                                       ; $6366: $40
    ld c, h                                       ; $6367: $4C
    inc hl                                        ; $6368: $23
    ld b, b                                       ; $6369: $40
    ld l, $09                                     ; $636A: $2E $09
    ld [hl-], a                                   ; $636C: $32
    ld b, l                                       ; $636D: $45
    ld e, b                                       ; $636E: $58
    ld bc, $2E2B                                  ; $636F: $01 $2B $2E
    add hl, bc                                    ; $6372: $09
    ld a, [de]                                    ; $6373: $1A
    ccf                                           ; $6374: $3F
    ld e, b                                       ; $6375: $58
    ld bc, $2E2B                                  ; $6376: $01 $2B $2E
    add hl, bc                                    ; $6379: $09
    ld [bc], a                                    ; $637A: $02
    dec a                                         ; $637B: $3D
    ld d, l                                       ; $637C: $55
    ld bc, $2E2B                                  ; $637D: $01 $2B $2E
    add hl, bc                                    ; $6380: $09
    ld sp, $5C43                                  ; $6381: $31 $43 $5C
    ld bc, $2427                                  ; $6384: $01 $27 $24
    ld d, b                                       ; $6387: $50
    xor h                                         ; $6388: $AC
    or d                                          ; $6389: $B2
    and d                                         ; $638A: $A2
    ld bc, $0F43                                  ; $638B: $01 $43 $0F
    inc b                                         ; $638E: $04
    dec b                                         ; $638F: $05
    ld d, $19                                     ; $6390: $16 $19
    cp a                                          ; $6392: $BF
    ld h, e                                       ; $6393: $63
    sub e                                         ; $6394: $93
    ld h, l                                       ; $6395: $65
    sub l                                         ; $6396: $95
    ld d, b                                       ; $6397: $50
    ld c, a                                       ; $6398: $4F
    ld h, h                                       ; $6399: $64
    add hl, hl                                    ; $639A: $29
    ld d, [hl]                                    ; $639B: $56
    ld l, c                                       ; $639C: $69
    ld l, $56                                     ; $639D: $2E $56
    ld h, [hl]                                    ; $639F: $66
    ret nz                                        ; $63A0: $C0

    ld e, h                                       ; $63A1: $5C
    ld hl, $0005                                  ; $63A2: $21 $05 $00
    add c                                         ; $63A5: $81
    ld e, l                                       ; $63A6: $5D
    dec b                                         ; $63A7: $05
    dec b                                         ; $63A8: $05

jr_019_63A9:
    inc a                                         ; $63A9: $3C
    ret nc                                        ; $63AA: $D0

    nop                                           ; $63AB: $00
    jr nz, jr_019_63A9                            ; $63AC: $20 $FB

    ld d, b                                       ; $63AE: $50
    ld [hl+], a                                   ; $63AF: $22
    dec b                                         ; $63B0: $05
    ld b, b                                       ; $63B1: $40
    dec bc                                        ; $63B2: $0B
    nop                                           ; $63B3: $00
    ld sp, $8619                                  ; $63B4: $31 $19 $86
    ld h, e                                       ; $63B7: $63
    ld [hl+], a                                   ; $63B8: $22
    adc $40                                       ; $63B9: $CE $40
    nop                                           ; $63BB: $00
    add d                                         ; $63BC: $82
    sub h                                         ; $63BD: $94
    ld b, d                                       ; $63BE: $42
    xor h                                         ; $63BF: $AC
    or d                                          ; $63C0: $B2
    and d                                         ; $63C1: $A2
    ld bc, $A3AC                                  ; $63C2: $01 $AC $A3
    and e                                         ; $63C5: $A3
    dec b                                         ; $63C6: $05
    sub e                                         ; $63C7: $93
    ld h, l                                       ; $63C8: $65
    sub l                                         ; $63C9: $95
    ld d, b                                       ; $63CA: $50
    ld c, a                                       ; $63CB: $4F
    ld h, h                                       ; $63CC: $64
    add hl, hl                                    ; $63CD: $29
    ld d, [hl]                                    ; $63CE: $56
    ld l, c                                       ; $63CF: $69
    ld l, $56                                     ; $63D0: $2E $56
    ld h, [hl]                                    ; $63D2: $66
    ret nz                                        ; $63D3: $C0

    ld e, h                                       ; $63D4: $5C
    ld hl, $0005                                  ; $63D5: $21 $05 $00
    ld l, e                                       ; $63D8: $6B
    ld c, d                                       ; $63D9: $4A
    dec b                                         ; $63DA: $05
    dec d                                         ; $63DB: $15
    db $EC                                        ; $63DC: $EC
    ret nc                                        ; $63DD: $D0

    nop                                           ; $63DE: $00
    add hl, de                                    ; $63DF: $19
    add [hl]                                      ; $63E0: $86
    ld h, h                                       ; $63E1: $64
    ld [hl+], a                                   ; $63E2: $22
    dec b                                         ; $63E3: $05
    ld b, b                                       ; $63E4: $40
    dec b                                         ; $63E5: $05
    ld [bc], a                                    ; $63E6: $02
    ld l, e                                       ; $63E7: $6B
    ld c, d                                       ; $63E8: $4A
    dec b                                         ; $63E9: $05
    ld de, $D0C0                                  ; $63EA: $11 $C0 $D0
    nop                                           ; $63ED: $00
    add hl, de                                    ; $63EE: $19
    ld c, e                                       ; $63EF: $4B
    ld h, l                                       ; $63F0: $65
    ld [hl+], a                                   ; $63F1: $22
    dec b                                         ; $63F2: $05
    ld b, b                                       ; $63F3: $40
    dec b                                         ; $63F4: $05
    inc b                                         ; $63F5: $04
    ld l, e                                       ; $63F6: $6B
    ld c, d                                       ; $63F7: $4A
    dec b                                         ; $63F8: $05
    rlca                                          ; $63F9: $07
    ld d, d                                       ; $63FA: $52
    ret nc                                        ; $63FB: $D0

    ld b, a                                       ; $63FC: $47
    add hl, de                                    ; $63FD: $19
    add e                                         ; $63FE: $83
    ld h, l                                       ; $63FF: $65
    ld [hl+], a                                   ; $6400: $22
    dec b                                         ; $6401: $05
    ld b, b                                       ; $6402: $40
    dec b                                         ; $6403: $05
    dec b                                         ; $6404: $05
    ld l, e                                       ; $6405: $6B
    ld c, d                                       ; $6406: $4A
    dec b                                         ; $6407: $05
    dec d                                         ; $6408: $15
    db $EC                                        ; $6409: $EC
    ret nc                                        ; $640A: $D0

    ld a, c                                       ; $640B: $79
    add hl, de                                    ; $640C: $19
    add hl, de                                    ; $640D: $19
    ld h, [hl]                                    ; $640E: $66
    ld [hl+], a                                   ; $640F: $22
    dec b                                         ; $6410: $05
    ld b, b                                       ; $6411: $40
    dec b                                         ; $6412: $05
    rlca                                          ; $6413: $07
    ld l, e                                       ; $6414: $6B
    ld c, d                                       ; $6415: $4A
    dec b                                         ; $6416: $05
    rrca                                          ; $6417: $0F
    xor d                                         ; $6418: $AA
    ret nc                                        ; $6419: $D0

    or b                                          ; $641A: $B0
    add hl, de                                    ; $641B: $19
    db $F4                                        ; $641C: $F4
    ld h, [hl]                                    ; $641D: $66
    ld [hl+], a                                   ; $641E: $22
    dec b                                         ; $641F: $05
    ld b, b                                       ; $6420: $40
    dec b                                         ; $6421: $05
    ld [$4A6B], sp                                ; $6422: $08 $6B $4A
    dec b                                         ; $6425: $05
    rrca                                          ; $6426: $0F
    xor d                                         ; $6427: $AA
    ret nc                                        ; $6428: $D0

    or b                                          ; $6429: $B0
    add hl, de                                    ; $642A: $19
    ld b, $67                                     ; $642B: $06 $67
    ld [hl+], a                                   ; $642D: $22
    dec b                                         ; $642E: $05
    ld b, b                                       ; $642F: $40
    dec b                                         ; $6430: $05
    add hl, bc                                    ; $6431: $09
    ld l, e                                       ; $6432: $6B
    ld c, d                                       ; $6433: $4A
    dec b                                         ; $6434: $05
    inc c                                         ; $6435: $0C
    adc c                                         ; $6436: $89
    ret nc                                        ; $6437: $D0

    or h                                          ; $6438: $B4

jr_019_6439:
    ld de, $7936                                  ; $6439: $11 $36 $79

jr_019_643C:
    ld [hl+], a                                   ; $643C: $22
    dec b                                         ; $643D: $05
    ld b, b                                       ; $643E: $40
    ld l, e                                       ; $643F: $6B
    ld hl, $D00D                                  ; $6440: $21 $0D $D0
    ld e, e                                       ; $6443: $5B
    nop                                           ; $6444: $00
    add b                                         ; $6445: $80

jr_019_6446:
    nop                                           ; $6446: $00
    ld l, e                                       ; $6447: $6B
    ld [hl-], a                                   ; $6448: $32
    dec bc                                        ; $6449: $0B
    and b                                         ; $644A: $A0
    ld [hl], h                                    ; $644B: $74
    ld [hl], b                                    ; $644C: $70
    add h                                         ; $644D: $84
    nop                                           ; $644E: $00
    ld l, e                                       ; $644F: $6B

jr_019_6450:
    add hl, hl                                    ; $6450: $29
    ld a, [bc]                                    ; $6451: $0A
    ld [hl], b                                    ; $6452: $70
    ld l, e                                       ; $6453: $6B
    sub b                                         ; $6454: $90
    add a                                         ; $6455: $87
    nop                                           ; $6456: $00
    ld l, e                                       ; $6457: $6B
    rlca                                          ; $6458: $07
    ld a, [bc]                                    ; $6459: $0A
    ret nc                                        ; $645A: $D0

    ld l, [hl]                                    ; $645B: $6E
    sub b                                         ; $645C: $90
    adc d                                         ; $645D: $8A
    nop                                           ; $645E: $00
    ld l, e                                       ; $645F: $6B
    inc b                                         ; $6460: $04
    dec c                                         ; $6461: $0D
    and b                                         ; $6462: $A0
    ld c, e                                       ; $6463: $4B
    nop                                           ; $6464: $00
    adc e                                         ; $6465: $8B
    nop                                           ; $6466: $00
    ld l, e                                       ; $6467: $6B
    inc b                                         ; $6468: $04
    inc h                                         ; $6469: $24
    nop                                           ; $646A: $00
    ld h, c                                       ; $646B: $61
    ld b, b                                       ; $646C: $40
    adc e                                         ; $646D: $8B
    nop                                           ; $646E: $00
    dec bc                                        ; $646F: $0B
    nop                                           ; $6470: $00
    dec bc                                        ; $6471: $0B
    ld [bc], a                                    ; $6472: $02
    dec bc                                        ; $6473: $0B
    inc b                                         ; $6474: $04
    add d                                         ; $6475: $82

jr_019_6476:
    sub h                                         ; $6476: $94
    xor c                                         ; $6477: $A9
    rla                                           ; $6478: $17
    nop                                           ; $6479: $00
    ld h, b                                       ; $647A: $60
    inc bc                                        ; $647B: $03

jr_019_647C:
    rlca                                          ; $647C: $07
    nop                                           ; $647D: $00
    add c                                         ; $647E: $81
    ld e, l                                       ; $647F: $5D
    add hl, bc                                    ; $6480: $09
    nop                                           ; $6481: $00
    jr nz, jr_019_6439                            ; $6482: $20 $B5

    ld d, b                                       ; $6484: $50
    ld b, d                                       ; $6485: $42
    dec d                                         ; $6486: $15
    jr nz, jr_019_643C                            ; $6487: $20 $B3

    ld c, a                                       ; $6489: $4F
    jr nz, jr_019_64AC                            ; $648A: $20 $20

    xor e                                         ; $648C: $AB
    ld d, b                                       ; $648D: $50
    jr z, jr_019_6490                             ; $648E: $28 $00

jr_019_6490:
    ld d, $20                                     ; $6490: $16 $20
    or e                                          ; $6492: $B3
    ld c, a                                       ; $6493: $4F
    ld c, b                                       ; $6494: $48
    nop                                           ; $6495: $00
    rst $38                                       ; $6496: $FF
    nop                                           ; $6497: $00
    inc d                                         ; $6498: $14
    jr nz, jr_019_6446                            ; $6499: $20 $AB

    ld d, b                                       ; $649B: $50

jr_019_649C:
    ld h, d                                       ; $649C: $62
    ld bc, $2015                                  ; $649D: $01 $15 $20
    or e                                          ; $64A0: $B3
    ld c, a                                       ; $64A1: $4F
    ld e, b                                       ; $64A2: $58
    jr nz, jr_019_6450                            ; $64A3: $20 $AB

    ld d, b                                       ; $64A5: $50
    nop                                           ; $64A6: $00
    nop                                           ; $64A7: $00
    ld h, d                                       ; $64A8: $62
    inc bc                                        ; $64A9: $03
    ld b, b                                       ; $64AA: $40
    ld b, b                                       ; $64AB: $40

jr_019_64AC:
    dec d                                         ; $64AC: $15
    jr nz, jr_019_647C                            ; $64AD: $20 $CD

    ld c, a                                       ; $64AF: $4F
    jr @+$22                                      ; $64B0: $18 $20

    or l                                          ; $64B2: $B5
    ld d, b                                       ; $64B3: $50
    nop                                           ; $64B4: $00
    nop                                           ; $64B5: $00

jr_019_64B6:
    ld h, b                                       ; $64B6: $60
    ld bc, $0440                                  ; $64B7: $01 $40 $04
    dec d                                         ; $64BA: $15
    jr nz, @-$79                                  ; $64BB: $20 $85

    ld d, h                                       ; $64BD: $54
    ld b, b                                       ; $64BE: $40
    jr nz, jr_019_6476                            ; $64BF: $20 $B5

    ld d, b                                       ; $64C1: $50
    stop                                          ; $64C2: $10 $00
    ld h, b                                       ; $64C4: $60
    ld [bc], a                                    ; $64C5: $02
    ld e, e                                       ; $64C6: $5B
    add hl, de                                    ; $64C7: $19
    ld e, a                                       ; $64C8: $5F
    ld h, c                                       ; $64C9: $61

jr_019_64CA:
    ld h, d                                       ; $64CA: $62
    inc c                                         ; $64CB: $0C

jr_019_64CC:
    dec d                                         ; $64CC: $15
    jr nz, jr_019_649C                            ; $64CD: $20 $CD

    ld c, a                                       ; $64CF: $4F
    db $10                                        ; $64D0: $10
    jr nz, @-$49                                  ; $64D1: $20 $B5

    ld d, b                                       ; $64D3: $50

jr_019_64D4:
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00

jr_019_64D6:
    ld e, e                                       ; $64D6: $5B
    add hl, de                                    ; $64D7: $19
    ld [hl], d                                    ; $64D8: $72
    ld h, c                                       ; $64D9: $61
    ld h, d                                       ; $64DA: $62
    dec c                                         ; $64DB: $0D
    dec d                                         ; $64DC: $15
    jr nz, jr_019_64CC                            ; $64DD: $20 $ED

    ld c, a                                       ; $64DF: $4F
    ld [$CD20], sp                                ; $64E0: $08 $20 $CD
    ld c, a                                       ; $64E3: $4F
    jr nz, jr_019_6506                            ; $64E4: $20 $20

    db $DD                                        ; $64E6: $DD
    ld c, a                                       ; $64E7: $4F
    ld [$AB20], sp                                ; $64E8: $08 $20 $AB
    ld d, b                                       ; $64EB: $50
    stop                                          ; $64EC: $10 $00
    ld b, b                                       ; $64EE: $40
    inc a                                         ; $64EF: $3C
    ld e, e                                       ; $64F0: $5B
    add hl, de                                    ; $64F1: $19
    sbc c                                         ; $64F2: $99
    ld h, c                                       ; $64F3: $61

jr_019_64F4:
    dec d                                         ; $64F4: $15
    jr nz, jr_019_64D4                            ; $64F5: $20 $DD

    ld c, a                                       ; $64F7: $4F
    stop                                          ; $64F8: $10 $00
    ld d, $20                                     ; $64FA: $16 $20
    call $204F                                    ; $64FC: $CD $4F $20
    nop                                           ; $64FF: $00
    ld bc, $ED20                                  ; $6500: $01 $20 $ED
    ld c, a                                       ; $6503: $4F

jr_019_6504:
    stop                                          ; $6504: $10 $00

jr_019_6506:
    ld bc, $1500                                  ; $6506: $01 $00 $15
    jr nz, jr_019_64B6                            ; $6509: $20 $AB

    ld d, b                                       ; $650B: $50

jr_019_650C:
    jr nz, @+$22                                  ; $650C: $20 $20

    or l                                          ; $650E: $B5
    ld d, b                                       ; $650F: $50
    jr nz, jr_019_6532                            ; $6510: $20 $20

    call $104F                                    ; $6512: $CD $4F $10
    jr nz, jr_019_64CC                            ; $6515: $20 $B5

    ld d, b                                       ; $6517: $50
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    ld h, d                                       ; $651A: $62
    ld de, $2015                                  ; $651B: $11 $15 $20

jr_019_651E:
    db $DD                                        ; $651E: $DD
    ld d, b                                       ; $651F: $50
    db $10                                        ; $6520: $10
    jr nz, @-$2B                                  ; $6521: $20 $D3

    ld d, b                                       ; $6523: $50
    db $10                                        ; $6524: $10
    jr nz, jr_019_6504                            ; $6525: $20 $DD

    ld d, b                                       ; $6527: $50
    db $10                                        ; $6528: $10
    jr nz, @-$2B                                  ; $6529: $20 $D3

    ld d, b                                       ; $652B: $50
    db $10                                        ; $652C: $10
    jr nz, jr_019_650C                            ; $652D: $20 $DD

    ld d, b                                       ; $652F: $50
    jr nz, jr_019_6552                            ; $6530: $20 $20

jr_019_6532:
    db $ED                                        ; $6532: $ED
    ld c, a                                       ; $6533: $4F
    db $10                                        ; $6534: $10
    jr nz, @-$21                                  ; $6535: $20 $DD

    ld d, b                                       ; $6537: $50
    db $10                                        ; $6538: $10
    jr nz, jr_019_64CA                            ; $6539: $20 $8F

    ld d, h                                       ; $653B: $54
    inc b                                         ; $653C: $04
    jr nz, jr_019_64F4                            ; $653D: $20 $B5

    ld d, b                                       ; $653F: $50
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    ld e, e                                       ; $6542: $5B
    add hl, de                                    ; $6543: $19
    add hl, sp                                    ; $6544: $39
    ld h, d                                       ; $6545: $62
    ld h, d                                       ; $6546: $62
    ld [de], a                                    ; $6547: $12
    ld d, [hl]                                    ; $6548: $56
    inc bc                                        ; $6549: $03
    ld b, d                                       ; $654A: $42
    dec d                                         ; $654B: $15
    jr nz, jr_019_64D6                            ; $654C: $20 $88

    ld l, h                                       ; $654E: $6C
    ld d, b                                       ; $654F: $50
    jr nz, jr_019_651E                            ; $6550: $20 $CC

jr_019_6552:
    ld l, e                                       ; $6552: $6B
    ld b, b                                       ; $6553: $40
    jr nz, jr_019_6552                            ; $6554: $20 $FC

    ld l, e                                       ; $6556: $6B
    db $10                                        ; $6557: $10
    jr nz, jr_019_65A6                            ; $6558: $20 $4C

    ld l, h                                       ; $655A: $6C
    nop                                           ; $655B: $00
    nop                                           ; $655C: $00
    ld e, e                                       ; $655D: $5B
    add hl, de                                    ; $655E: $19
    add a                                         ; $655F: $87
    ld d, l                                       ; $6560: $55
    ld h, d                                       ; $6561: $62
    inc bc                                        ; $6562: $03
    dec d                                         ; $6563: $15
    jr nz, jr_019_65BC                            ; $6564: $20 $56

    ld l, h                                       ; $6566: $6C
    sbc b                                         ; $6567: $98
    jr nz, jr_019_65DE                            ; $6568: $20 $74

    ld l, h                                       ; $656A: $6C
    nop                                           ; $656B: $00
    nop                                           ; $656C: $00
    ld h, d                                       ; $656D: $62
    inc d                                         ; $656E: $14
    dec d                                         ; $656F: $15
    jr nz, jr_019_65AE                            ; $6570: $20 $3C

    ld l, h                                       ; $6572: $6C
    ld [$0C20], sp                                ; $6573: $08 $20 $0C
    ld l, h                                       ; $6576: $6C
    ld [$3C20], sp                                ; $6577: $08 $20 $3C
    ld l, h                                       ; $657A: $6C
    db $10                                        ; $657B: $10
    jr nz, jr_019_659A                            ; $657C: $20 $1C

    ld l, h                                       ; $657E: $6C
    ld c, b                                       ; $657F: $48
    nop                                           ; $6580: $00
    add hl, de                                    ; $6581: $19
    ld b, d                                       ; $6582: $42
    inc d                                         ; $6583: $14
    rrca                                          ; $6584: $0F
    adc $76                                       ; $6585: $CE $76
    ld h, d                                       ; $6587: $62
    ld bc, $057C                                  ; $6588: $01 $7C $05
    ld [$4003], sp                                ; $658B: $08 $03 $40
    ld h, b                                       ; $658E: $60
    ld e, e                                       ; $658F: $5B
    add hl, de                                    ; $6590: $19
    xor d                                         ; $6591: $AA
    ld d, l                                       ; $6592: $55

Call_019_6593:
Jump_019_6593:
    ld h, d                                       ; $6593: $62
    ld [bc], a                                    ; $6594: $02
    dec d                                         ; $6595: $15
    rrca                                          ; $6596: $0F
    ld d, h                                       ; $6597: $54
    halt                                          ; $6598: $76
    db $10                                        ; $6599: $10

jr_019_659A:
    rrca                                          ; $659A: $0F
    adc $76                                       ; $659B: $CE $76
    nop                                           ; $659D: $00
    nop                                           ; $659E: $00
    ld e, e                                       ; $659F: $5B
    add hl, de                                    ; $65A0: $19
    db $F4                                        ; $65A1: $F4
    ld d, l                                       ; $65A2: $55
    ld h, d                                       ; $65A3: $62
    inc bc                                        ; $65A4: $03
    dec bc                                        ; $65A5: $0B

jr_019_65A6:
    dec b                                         ; $65A6: $05
    ld b, b                                       ; $65A7: $40
    jr nz, jr_019_65BF                            ; $65A8: $20 $15

    rrca                                          ; $65AA: $0F
    ld d, h                                       ; $65AB: $54
    halt                                          ; $65AC: $76
    ld b, b                                       ; $65AD: $40

jr_019_65AE:
    rrca                                          ; $65AE: $0F
    adc $76                                       ; $65AF: $CE $76
    jr nz, @+$11                                  ; $65B1: $20 $0F

    dec d                                         ; $65B3: $15
    ld [hl], a                                    ; $65B4: $77
    stop                                          ; $65B5: $10 $00
    ld e, e                                       ; $65B7: $5B
    add hl, de                                    ; $65B8: $19
    sbc a                                         ; $65B9: $9F
    ld d, a                                       ; $65BA: $57
    ld h, d                                       ; $65BB: $62

jr_019_65BC:
    inc d                                         ; $65BC: $14
    ld b, b                                       ; $65BD: $40
    db $10                                        ; $65BE: $10

jr_019_65BF:
    inc d                                         ; $65BF: $14
    rrca                                          ; $65C0: $0F
    adc $76                                       ; $65C1: $CE $76
    ld h, d                                       ; $65C3: $62
    inc b                                         ; $65C4: $04
    dec d                                         ; $65C5: $15
    rrca                                          ; $65C6: $0F
    adc $76                                       ; $65C7: $CE $76
    ld b, [hl]                                    ; $65C9: $46
    rrca                                          ; $65CA: $0F
    dec bc                                        ; $65CB: $0B
    ld [hl], a                                    ; $65CC: $77
    jr nz, jr_019_65DE                            ; $65CD: $20 $0F

    adc $76                                       ; $65CF: $CE $76
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
    ld h, d                                       ; $65D3: $62
    dec b                                         ; $65D4: $05
    dec d                                         ; $65D5: $15
    rrca                                          ; $65D6: $0F
    adc $76                                       ; $65D7: $CE $76
    inc de                                        ; $65D9: $13
    rrca                                          ; $65DA: $0F
    dec bc                                        ; $65DB: $0B
    ld [hl], a                                    ; $65DC: $77
    inc b                                         ; $65DD: $04

jr_019_65DE:
    rrca                                          ; $65DE: $0F
    dec d                                         ; $65DF: $15
    ld [hl], a                                    ; $65E0: $77
    inc b                                         ; $65E1: $04
    rrca                                          ; $65E2: $0F
    adc $76                                       ; $65E3: $CE $76
    nop                                           ; $65E5: $00
    nop                                           ; $65E6: $00
    ld h, b                                       ; $65E7: $60
    rlca                                          ; $65E8: $07
    dec d                                         ; $65E9: $15
    rrca                                          ; $65EA: $0F
    sub h                                         ; $65EB: $94
    halt                                          ; $65EC: $76
    inc b                                         ; $65ED: $04
    rrca                                          ; $65EE: $0F
    adc $76                                       ; $65EF: $CE $76
    nop                                           ; $65F1: $00
    nop                                           ; $65F2: $00
    ld h, d                                       ; $65F3: $62
    rlca                                          ; $65F4: $07
    dec d                                         ; $65F5: $15
    rrca                                          ; $65F6: $0F
    dec d                                         ; $65F7: $15
    ld [hl], a                                    ; $65F8: $77
    jr jr_019_660A                                ; $65F9: $18 $0F

    dec bc                                        ; $65FB: $0B
    ld [hl], a                                    ; $65FC: $77
    jr jr_019_65FF                                ; $65FD: $18 $00

jr_019_65FF:
    ld e, e                                       ; $65FF: $5B
    add hl, de                                    ; $6600: $19
    ld e, e                                       ; $6601: $5B
    ld e, h                                       ; $6602: $5C
    dec d                                         ; $6603: $15
    rrca                                          ; $6604: $0F
    dec d                                         ; $6605: $15
    ld [hl], a                                    ; $6606: $77
    jr jr_019_6618                                ; $6607: $18 $0F

    dec bc                                        ; $6609: $0B

jr_019_660A:
    ld [hl], a                                    ; $660A: $77
    jr jr_019_660D                                ; $660B: $18 $00

jr_019_660D:
    ld h, d                                       ; $660D: $62
    ld [$0840], sp                                ; $660E: $08 $40 $08
    dec d                                         ; $6611: $15
    rrca                                          ; $6612: $0F
    ret c                                         ; $6613: $D8

    halt                                          ; $6614: $76
    jr nz, jr_019_6617                            ; $6615: $20 $00

jr_019_6617:
    add hl, de                                    ; $6617: $19

jr_019_6618:
    ld b, d                                       ; $6618: $42
    inc d                                         ; $6619: $14
    rrca                                          ; $661A: $0F
    sub a                                         ; $661B: $97
    ld c, b                                       ; $661C: $48
    ld a, h                                       ; $661D: $7C
    dec b                                         ; $661E: $05
    ld [de], a                                    ; $661F: $12
    inc bc                                        ; $6620: $03
    dec d                                         ; $6621: $15
    rrca                                          ; $6622: $0F
    sub a                                         ; $6623: $97
    ld c, b                                       ; $6624: $48
    ld b, b                                       ; $6625: $40
    rrca                                          ; $6626: $0F
    rst $20                                       ; $6627: $E7
    ld c, b                                       ; $6628: $48
    ld c, b                                       ; $6629: $48
    nop                                           ; $662A: $00
    ld a, h                                       ; $662B: $7C
    dec b                                         ; $662C: $05
    dec c                                         ; $662D: $0D
    ld [bc], a                                    ; $662E: $02
    inc d                                         ; $662F: $14
    rrca                                          ; $6630: $0F
    sub a                                         ; $6631: $97
    ld c, b                                       ; $6632: $48
    ld h, d                                       ; $6633: $62
    inc d                                         ; $6634: $14
    ld e, e                                       ; $6635: $5B
    add hl, de                                    ; $6636: $19
    pop hl                                        ; $6637: $E1
    ld d, a                                       ; $6638: $57
    ld h, d                                       ; $6639: $62
    inc b                                         ; $663A: $04
    ld d, $0F                                     ; $663B: $16 $0F
    rst $30                                       ; $663D: $F7
    ld c, b                                       ; $663E: $48
    jr nz, jr_019_6641                            ; $663F: $20 $00

jr_019_6641:
    ld bc, $1500                                  ; $6641: $01 $00 $15
    rrca                                          ; $6644: $0F
    sub a                                         ; $6645: $97

Jump_019_6646:
    ld c, b                                       ; $6646: $48
    jr jr_019_6649                                ; $6647: $18 $00

jr_019_6649:
    dec bc                                        ; $6649: $0B
    rlca                                          ; $664A: $07
    dec d                                         ; $664B: $15
    rrca                                          ; $664C: $0F
    sub a                                         ; $664D: $97
    ld c, b                                       ; $664E: $48
    ld b, b                                       ; $664F: $40
    rrca                                          ; $6650: $0F
    ldh [rOBP1], a                                ; $6651: $E0 $49
    jr nz, jr_019_6664                            ; $6653: $20 $0F

    rst $00                                       ; $6655: $C7
    ld c, b                                       ; $6656: $48
    inc b                                         ; $6657: $04
    rrca                                          ; $6658: $0F
    rst $10                                       ; $6659: $D7
    ld c, b                                       ; $665A: $48
    inc b                                         ; $665B: $04
    rrca                                          ; $665C: $0F
    rst $00                                       ; $665D: $C7
    ld c, b                                       ; $665E: $48
    inc b                                         ; $665F: $04
    rrca                                          ; $6660: $0F
    rst $10                                       ; $6661: $D7
    ld c, b                                       ; $6662: $48
    inc b                                         ; $6663: $04

jr_019_6664:
    rrca                                          ; $6664: $0F
    rst $00                                       ; $6665: $C7
    ld c, b                                       ; $6666: $48
    inc b                                         ; $6667: $04
    rrca                                          ; $6668: $0F
    rst $10                                       ; $6669: $D7
    ld c, b                                       ; $666A: $48
    inc b                                         ; $666B: $04
    rrca                                          ; $666C: $0F
    rst $00                                       ; $666D: $C7
    ld c, b                                       ; $666E: $48
    inc b                                         ; $666F: $04
    rrca                                          ; $6670: $0F
    rst $10                                       ; $6671: $D7
    ld c, b                                       ; $6672: $48
    inc b                                         ; $6673: $04
    rrca                                          ; $6674: $0F
    sub a                                         ; $6675: $97
    ld c, b                                       ; $6676: $48
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    ld e, e                                       ; $6679: $5B
    add hl, de                                    ; $667A: $19
    inc hl                                        ; $667B: $23
    ld e, e                                       ; $667C: $5B
    ld h, d                                       ; $667D: $62
    dec b                                         ; $667E: $05
    dec bc                                        ; $667F: $0B
    ld [$0F15], sp                                ; $6680: $08 $15 $0F
    sub a                                         ; $6683: $97
    ld c, b                                       ; $6684: $48
    ld b, b                                       ; $6685: $40
    nop                                           ; $6686: $00
    dec de                                        ; $6687: $1B
    add hl, bc                                    ; $6688: $09
    dec d                                         ; $6689: $15
    rrca                                          ; $668A: $0F
    inc d                                         ; $668B: $14
    ld c, d                                       ; $668C: $4A
    jr c, jr_019_669E                             ; $668D: $38 $0F

    rst $00                                       ; $668F: $C7
    ld c, b                                       ; $6690: $48
    inc b                                         ; $6691: $04
    rrca                                          ; $6692: $0F
    rst $10                                       ; $6693: $D7
    ld c, b                                       ; $6694: $48
    inc b                                         ; $6695: $04
    rrca                                          ; $6696: $0F
    rst $00                                       ; $6697: $C7
    ld c, b                                       ; $6698: $48
    inc b                                         ; $6699: $04
    rrca                                          ; $669A: $0F
    rst $10                                       ; $669B: $D7
    ld c, b                                       ; $669C: $48
    inc b                                         ; $669D: $04

jr_019_669E:
    rrca                                          ; $669E: $0F
    rst $00                                       ; $669F: $C7
    ld c, b                                       ; $66A0: $48
    inc b                                         ; $66A1: $04
    rrca                                          ; $66A2: $0F
    rst $10                                       ; $66A3: $D7
    ld c, b                                       ; $66A4: $48
    inc b                                         ; $66A5: $04
    rrca                                          ; $66A6: $0F
    rst $00                                       ; $66A7: $C7
    ld c, b                                       ; $66A8: $48
    inc b                                         ; $66A9: $04
    rrca                                          ; $66AA: $0F
    rst $10                                       ; $66AB: $D7
    ld c, b                                       ; $66AC: $48
    inc b                                         ; $66AD: $04
    rrca                                          ; $66AE: $0F
    sub a                                         ; $66AF: $97
    ld c, b                                       ; $66B0: $48
    nop                                           ; $66B1: $00
    nop                                           ; $66B2: $00
    ld e, e                                       ; $66B3: $5B
    add hl, de                                    ; $66B4: $19
    sbc b                                         ; $66B5: $98
    ld e, e                                       ; $66B6: $5B
    ld h, d                                       ; $66B7: $62
    ld b, $14                                     ; $66B8: $06 $14
    rrca                                          ; $66BA: $0F
    ld a, l                                       ; $66BB: $7D
    ld c, b                                       ; $66BC: $48
    ld b, b                                       ; $66BD: $40
    jr jr_019_66E4                                ; $66BE: $18 $24

    ld d, b                                       ; $66C0: $50
    dec b                                         ; $66C1: $05
    ld b, $6B                                     ; $66C2: $06 $6B
    ld c, d                                       ; $66C4: $4A
    dec b                                         ; $66C5: $05
    inc d                                         ; $66C6: $14
    pop hl                                        ; $66C7: $E1
    ret nc                                        ; $66C8: $D0

    nop                                           ; $66C9: $00
    add hl, de                                    ; $66CA: $19
    jr jr_019_6734                                ; $66CB: $18 $67

    ld [hl+], a                                   ; $66CD: $22
    dec b                                         ; $66CE: $05
    ld b, b                                       ; $66CF: $40
    ld l, e                                       ; $66D0: $6B
    ld b, a                                       ; $66D1: $47
    ld a, [bc]                                    ; $66D2: $0A
    nop                                           ; $66D3: $00
    ld b, b                                       ; $66D4: $40

jr_019_66D5:
    nop                                           ; $66D5: $00
    add b                                         ; $66D6: $80
    nop                                           ; $66D7: $00
    dec bc                                        ; $66D8: $0B
    ld b, $40                                     ; $66D9: $06 $40
    jr jr_019_66F2                                ; $66DB: $18 $15

    rrca                                          ; $66DD: $0F
    rlca                                          ; $66DE: $07
    ld c, c                                       ; $66DF: $49
    jr jr_019_66F1                                ; $66E0: $18 $0F

    rst $20                                       ; $66E2: $E7
    ld c, b                                       ; $66E3: $48

jr_019_66E4:
    jr nz, jr_019_66F5                            ; $66E4: $20 $0F

    rst $00                                       ; $66E6: $C7
    ld c, b                                       ; $66E7: $48
    nop                                           ; $66E8: $00
    nop                                           ; $66E9: $00
    ld h, d                                       ; $66EA: $62
    rlca                                          ; $66EB: $07
    dec d                                         ; $66EC: $15
    rrca                                          ; $66ED: $0F
    rst $30                                       ; $66EE: $F7
    ld c, b                                       ; $66EF: $48
    ld b, b                                       ; $66F0: $40

jr_019_66F1:
    nop                                           ; $66F1: $00

jr_019_66F2:
    add hl, de                                    ; $66F2: $19
    ld b, d                                       ; $66F3: $42
    dec de                                        ; $66F4: $1B

jr_019_66F5:
    add hl, de                                    ; $66F5: $19
    dec d                                         ; $66F6: $15
    ld de, $7D81                                  ; $66F7: $11 $81 $7D
    dec de                                        ; $66FA: $1B
    nop                                           ; $66FB: $00
    dec de                                        ; $66FC: $1B
    dec bc                                        ; $66FD: $0B
    dec d                                         ; $66FE: $15
    ld de, $7D69                                  ; $66FF: $11 $69 $7D
    jr jr_019_6704                                ; $6702: $18 $00

jr_019_6704:
    add hl, de                                    ; $6704: $19
    ld b, d                                       ; $6705: $42
    dec de                                        ; $6706: $1B
    add hl, de                                    ; $6707: $19
    dec d                                         ; $6708: $15
    ld de, $7D81                                  ; $6709: $11 $81 $7D
    inc e                                         ; $670C: $1C
    nop                                           ; $670D: $00
    dec de                                        ; $670E: $1B
    dec bc                                        ; $670F: $0B
    dec d                                         ; $6710: $15
    ld de, $7D8D                                  ; $6711: $11 $8D $7D
    inc e                                         ; $6714: $1C
    nop                                           ; $6715: $00
    add hl, de                                    ; $6716: $19
    ld b, d                                       ; $6717: $42
    rra                                           ; $6718: $1F
    inc de                                        ; $6719: $13
    dec d                                         ; $671A: $15
    ld c, $BD                                     ; $671B: $0E $BD
    ld b, a                                       ; $671D: $47
    jr c, jr_019_6720                             ; $671E: $38 $00

jr_019_6720:
    ld d, $0E                                     ; $6720: $16 $0E
    cp l                                          ; $6722: $BD
    ld b, a                                       ; $6723: $47
    jr jr_019_6726                                ; $6724: $18 $00

jr_019_6726:
    rst $38                                       ; $6726: $FF
    nop                                           ; $6727: $00
    inc d                                         ; $6728: $14
    ld c, $8B                                     ; $6729: $0E $8B
    ld b, a                                       ; $672B: $47
    ld d, [hl]                                    ; $672C: $56
    rlca                                          ; $672D: $07
    ld b, b                                       ; $672E: $40
    inc b                                         ; $672F: $04
    ld e, e                                       ; $6730: $5B
    add hl, de                                    ; $6731: $19
    rst $20                                       ; $6732: $E7
    ld e, e                                       ; $6733: $5B

jr_019_6734:
    ld h, d                                       ; $6734: $62
    rlca                                          ; $6735: $07
    ld b, b                                       ; $6736: $40
    jr jr_019_674F                                ; $6737: $18 $16

    ld c, $BD                                     ; $6739: $0E $BD
    ld b, a                                       ; $673B: $47
    ld [$FF00], sp                                ; $673C: $08 $00 $FF
    nop                                           ; $673F: $00
    inc d                                         ; $6740: $14
    ld c, $8B                                     ; $6741: $0E $8B
    ld b, a                                       ; $6743: $47
    ld h, d                                       ; $6744: $62
    ld [$051B], sp                                ; $6745: $08 $1B $05
    ld l, a                                       ; $6748: $6F
    rrca                                          ; $6749: $0F
    rra                                           ; $674A: $1F
    nop                                           ; $674B: $00
    halt                                          ; $674C: $76
    jr nz, jr_019_675E                            ; $674D: $20 $0F

jr_019_674F:
    ld b, b                                       ; $674F: $40
    jr nc, jr_019_66D5                            ; $6750: $30 $83

    stop                                          ; $6752: $10 $00
    rst $38                                       ; $6754: $FF
    nop                                           ; $6755: $00
    ld d, [hl]                                    ; $6756: $56
    ld bc, $051B                                  ; $6757: $01 $1B $05
    ld l, a                                       ; $675A: $6F
    rrca                                          ; $675B: $0F
    rra                                           ; $675C: $1F
    nop                                           ; $675D: $00

jr_019_675E:
    halt                                          ; $675E: $76
    jr nz, jr_019_6770                            ; $675F: $20 $0F

    ld b, b                                       ; $6761: $40
    ld d, b                                       ; $6762: $50
    ld e, e                                       ; $6763: $5B
    add hl, de                                    ; $6764: $19
    ld l, h                                       ; $6765: $6C
    ld e, h                                       ; $6766: $5C
    ld h, d                                       ; $6767: $62
    add hl, bc                                    ; $6768: $09
    dec d                                         ; $6769: $15
    ld c, $BD                                     ; $676A: $0E $BD
    ld b, a                                       ; $676C: $47
    db $10                                        ; $676D: $10
    ld c, $8B                                     ; $676E: $0E $8B

jr_019_6770:
    ld b, a                                       ; $6770: $47
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    ld e, e                                       ; $6773: $5B
    add hl, de                                    ; $6774: $19
    sub c                                         ; $6775: $91
    ld e, h                                       ; $6776: $5C
    ld h, d                                       ; $6777: $62
    ld a, [bc]                                    ; $6778: $0A
    ld d, $0E                                     ; $6779: $16 $0E
    call $1847                                    ; $677B: $CD $47 $18
    nop                                           ; $677E: $00
    ld bc, $1500                                  ; $677F: $01 $00 $15
    ld c, $81                                     ; $6782: $0E $81
    ld b, a                                       ; $6784: $47
    jr nz, jr_019_6795                            ; $6785: $20 $0E

    xor c                                         ; $6787: $A9
    ld b, a                                       ; $6788: $47
    nop                                           ; $6789: $00
    nop                                           ; $678A: $00
    ld e, e                                       ; $678B: $5B
    add hl, de                                    ; $678C: $19
    or b                                          ; $678D: $B0
    ld e, h                                       ; $678E: $5C
    ld h, d                                       ; $678F: $62
    ld h, e                                       ; $6790: $63
    dec d                                         ; $6791: $15
    ld c, $95                                     ; $6792: $0E $95
    ld b, a                                       ; $6794: $47

jr_019_6795:
    ld [$8B0E], sp                                ; $6795: $08 $0E $8B
    ld b, a                                       ; $6798: $47
    nop                                           ; $6799: $00
    nop                                           ; $679A: $00
    ld h, d                                       ; $679B: $62
    dec bc                                        ; $679C: $0B
    dec d                                         ; $679D: $15
    ld c, $95                                     ; $679E: $0E $95
    ld b, a                                       ; $67A0: $47
    ld [$810E], sp                                ; $67A1: $08 $0E $81
    ld b, a                                       ; $67A4: $47
    db $10                                        ; $67A5: $10
    ld c, $CD                                     ; $67A6: $0E $CD
    ld b, a                                       ; $67A8: $47
    jr nc, jr_019_67AB                            ; $67A9: $30 $00

jr_019_67AB:
    ld d, [hl]                                    ; $67AB: $56
    ld [bc], a                                    ; $67AC: $02
    inc h                                         ; $67AD: $24
    ld d, b                                       ; $67AE: $50
    add hl, de                                    ; $67AF: $19
    ld b, d                                       ; $67B0: $42
    dec b                                         ; $67B1: $05
    inc b                                         ; $67B2: $04
    dec b                                         ; $67B3: $05
    ld h, h                                       ; $67B4: $64
    rrca                                          ; $67B5: $0F
    rrca                                          ; $67B6: $0F
    cp $D1                                        ; $67B7: $FE $D1
    db $10                                        ; $67B9: $10
    ld [hl+], a                                   ; $67BA: $22
    cp d                                          ; $67BB: $BA
    ld b, b                                       ; $67BC: $40
    ld [hl+], a                                   ; $67BD: $22
    jp nz, $0140                                  ; $67BE: $C2 $40 $01

    dec c                                         ; $67C1: $0D
    rrca                                          ; $67C2: $0F
    ld b, l                                       ; $67C3: $45
    cpl                                           ; $67C4: $2F
    and h                                         ; $67C5: $A4
    ld b, [hl]                                    ; $67C6: $46
    ld [bc], a                                    ; $67C7: $02
    nop                                           ; $67C8: $00
    ld sp, $2708                                  ; $67C9: $31 $08 $27
    ld b, l                                       ; $67CC: $45
    add hl, de                                    ; $67CD: $19
    ld [de], a                                    ; $67CE: $12
    ld l, d                                       ; $67CF: $6A
    ld [bc], a                                    ; $67D0: $02
    nop                                           ; $67D1: $00
    ld sp, $1123                                  ; $67D2: $31 $23 $11
    ld b, l                                       ; $67D5: $45
    add hl, de                                    ; $67D6: $19
    xor c                                         ; $67D7: $A9
    ld l, d                                       ; $67D8: $6A
    and h                                         ; $67D9: $A4
    dec l                                         ; $67DA: $2D
    and e                                         ; $67DB: $A3
    stop                                          ; $67DC: $10 $00
    dec d                                         ; $67DE: $15
    ld c, a                                       ; $67DF: $4F
    ret nc                                        ; $67E0: $D0

    and h                                         ; $67E1: $A4
    dec l                                         ; $67E2: $2D
    and e                                         ; $67E3: $A3
    jr nz, jr_019_67E6                            ; $67E4: $20 $00

jr_019_67E6:
    inc bc                                        ; $67E6: $03
    db $E3                                        ; $67E7: $E3
    ret c                                         ; $67E8: $D8

    ld [bc], a                                    ; $67E9: $02
    nop                                           ; $67EA: $00
    nop                                           ; $67EB: $00
    nop                                           ; $67EC: $00
    nop                                           ; $67ED: $00
    jr nc, @-$11                                  ; $67EE: $30 $ED

    ld d, [hl]                                    ; $67F0: $56
    inc c                                         ; $67F1: $0C
    ld b, a                                       ; $67F2: $47
    ld [$0C19], sp                                ; $67F3: $08 $19 $0C
    ld l, b                                       ; $67F6: $68
    add hl, de                                    ; $67F7: $19
    ld a, [de]                                    ; $67F8: $1A
    ld l, b                                       ; $67F9: $68
    add hl, de                                    ; $67FA: $19
    cpl                                           ; $67FB: $2F
    ld l, b                                       ; $67FC: $68
    add hl, de                                    ; $67FD: $19
    dec a                                         ; $67FE: $3D
    ld l, b                                       ; $67FF: $68
    add hl, de                                    ; $6800: $19
    ld h, b                                       ; $6801: $60
    ld l, b                                       ; $6802: $68
    add hl, de                                    ; $6803: $19
    ld [hl], l                                    ; $6804: $75
    ld l, b                                       ; $6805: $68
    add hl, de                                    ; $6806: $19
    adc d                                         ; $6807: $8A
    ld l, b                                       ; $6808: $68
    add hl, de                                    ; $6809: $19
    sbc a                                         ; $680A: $9F
    ld l, b                                       ; $680B: $68
    dec h                                         ; $680C: $25
    ld a, [bc]                                    ; $680D: $0A
    ld l, h                                       ; $680E: $6C
    ld h, $4C                                     ; $680F: $26 $4C
    inc hl                                        ; $6811: $23
    ld b, b                                       ; $6812: $40
    ld l, $09                                     ; $6813: $2E $09
    ld b, b                                       ; $6815: $40
    ld h, $4C                                     ; $6816: $26 $4C
    ld bc, $2527                                  ; $6818: $01 $27 $25
    ld a, [bc]                                    ; $681B: $0A
    ld l, h                                       ; $681C: $6C
    ld h, $4C                                     ; $681D: $26 $4C
    inc hl                                        ; $681F: $23
    ld b, b                                       ; $6820: $40
    ld l, $09                                     ; $6821: $2E $09
    inc h                                         ; $6823: $24
    dec h                                         ; $6824: $25
    ld c, [hl]                                    ; $6825: $4E
    ld bc, $2E2B                                  ; $6826: $01 $2B $2E
    add hl, bc                                    ; $6829: $09
    dec [hl]                                      ; $682A: $35
    inc hl                                        ; $682B: $23
    ld b, c                                       ; $682C: $41
    ld bc, $2527                                  ; $682D: $01 $27 $25
    ld a, [bc]                                    ; $6830: $0A
    ld l, h                                       ; $6831: $6C
    dec h                                         ; $6832: $25
    ld c, h                                       ; $6833: $4C
    inc hl                                        ; $6834: $23
    ld b, b                                       ; $6835: $40
    ld l, $09                                     ; $6836: $2E $09
    inc [hl]                                      ; $6838: $34
    dec h                                         ; $6839: $25
    ld c, c                                       ; $683A: $49
    ld bc, $2527                                  ; $683B: $01 $27 $25
    ld a, [bc]                                    ; $683E: $0A
    ld l, h                                       ; $683F: $6C
    ld h, $4C                                     ; $6840: $26 $4C
    inc hl                                        ; $6842: $23
    ld b, b                                       ; $6843: $40
    ld l, $09                                     ; $6844: $2E $09
    dec [hl]                                      ; $6846: $35
    dec h                                         ; $6847: $25
    ld c, d                                       ; $6848: $4A
    ld bc, $2E2B                                  ; $6849: $01 $2B $2E
    add hl, bc                                    ; $684C: $09
    inc [hl]                                      ; $684D: $34
    inc hl                                        ; $684E: $23
    ld b, [hl]                                    ; $684F: $46
    ld bc, $2E2B                                  ; $6850: $01 $2B $2E
    add hl, bc                                    ; $6853: $09
    inc h                                         ; $6854: $24
    inc hl                                        ; $6855: $23
    ld b, a                                       ; $6856: $47
    ld bc, $2E2B                                  ; $6857: $01 $2B $2E
    add hl, bc                                    ; $685A: $09
    ld b, e                                       ; $685B: $43
    ld [hl+], a                                   ; $685C: $22
    ld b, l                                       ; $685D: $45
    ld bc, $2527                                  ; $685E: $01 $27 $25
    ld a, [bc]                                    ; $6861: $0A
    ld l, h                                       ; $6862: $6C
    dec h                                         ; $6863: $25
    ld c, h                                       ; $6864: $4C
    inc hl                                        ; $6865: $23
    ld b, b                                       ; $6866: $40
    ld l, $09                                     ; $6867: $2E $09
    ld b, e                                       ; $6869: $43
    inc h                                         ; $686A: $24
    ld b, a                                       ; $686B: $47
    ld bc, $2E2B                                  ; $686C: $01 $2B $2E
    add hl, bc                                    ; $686F: $09
    inc h                                         ; $6870: $24
    inc h                                         ; $6871: $24
    ld c, b                                       ; $6872: $48
    ld bc, $2527                                  ; $6873: $01 $27 $25
    ld a, [bc]                                    ; $6876: $0A
    ld l, h                                       ; $6877: $6C
    ld h, $4C                                     ; $6878: $26 $4C
    inc hl                                        ; $687A: $23
    ld b, b                                       ; $687B: $40
    ld l, $09                                     ; $687C: $2E $09
    inc [hl]                                      ; $687E: $34
    dec h                                         ; $687F: $25
    ld c, c                                       ; $6880: $49
    ld bc, $2E2B                                  ; $6881: $01 $2B $2E
    add hl, bc                                    ; $6884: $09
    dec [hl]                                      ; $6885: $35
    inc hl                                        ; $6886: $23
    ld b, a                                       ; $6887: $47
    ld bc, $2527                                  ; $6888: $01 $27 $25
    ld a, [bc]                                    ; $688B: $0A
    ld l, h                                       ; $688C: $6C
    daa                                           ; $688D: $27
    ld c, h                                       ; $688E: $4C
    inc hl                                        ; $688F: $23
    ld b, b                                       ; $6890: $40
    ld l, $09                                     ; $6891: $2E $09
    ld b, b                                       ; $6893: $40
    ld h, $4D                                     ; $6894: $26 $4D
    ld bc, $2E2B                                  ; $6896: $01 $2B $2E
    add hl, bc                                    ; $6899: $09
    dec [hl]                                      ; $689A: $35
    dec h                                         ; $689B: $25
    ld c, e                                       ; $689C: $4B
    ld bc, $2527                                  ; $689D: $01 $27 $25
    ld a, [bc]                                    ; $68A0: $0A
    ld l, h                                       ; $68A1: $6C
    ld h, $4C                                     ; $68A2: $26 $4C
    inc hl                                        ; $68A4: $23
    ld b, b                                       ; $68A5: $40
    ld l, $09                                     ; $68A6: $2E $09
    inc [hl]                                      ; $68A8: $34
    inc h                                         ; $68A9: $24
    ld c, b                                       ; $68AA: $48
    ld bc, $2E2B                                  ; $68AB: $01 $2B $2E
    add hl, bc                                    ; $68AE: $09
    dec [hl]                                      ; $68AF: $35
    dec h                                         ; $68B0: $25
    ld c, e                                       ; $68B1: $4B
    ld bc, $2E2B                                  ; $68B2: $01 $2B $2E
    add hl, bc                                    ; $68B5: $09
    inc h                                         ; $68B6: $24
    dec h                                         ; $68B7: $25
    ld c, [hl]                                    ; $68B8: $4E
    ld bc, $3027                                  ; $68B9: $01 $27 $30
    db $ED                                        ; $68BC: $ED
    ld d, [hl]                                    ; $68BD: $56
    inc c                                         ; $68BE: $0C
    dec h                                         ; $68BF: $25
    ld a, [bc]                                    ; $68C0: $0A
    ld l, h                                       ; $68C1: $6C

jr_019_68C2:
    inc a                                         ; $68C2: $3C
    ld c, h                                       ; $68C3: $4C
    inc hl                                        ; $68C4: $23
    ld b, b                                       ; $68C5: $40
    ld l, $09                                     ; $68C6: $2E $09
    cpl                                           ; $68C8: $2F
    inc a                                         ; $68C9: $3C

jr_019_68CA:
    and $01                                       ; $68CA: $E6 $01
    daa                                           ; $68CC: $27
    sub e                                         ; $68CD: $93
    ld h, l                                       ; $68CE: $65
    call nz, Call_019_4F4E                        ; $68CF: $C4 $4E $4F
    ld h, h                                       ; $68D2: $64
    ld d, d                                       ; $68D3: $52
    ld d, e                                       ; $68D4: $53
    ld h, [hl]                                    ; $68D5: $66
    ret nz                                        ; $68D6: $C0

    ld e, h                                       ; $68D7: $5C
    ld hl, $5F69                                  ; $68D8: $21 $69 $5F
    ld d, e                                       ; $68DB: $53
    sub l                                         ; $68DC: $95
    add hl, de                                    ; $68DD: $19
    ld a, [hl+]                                   ; $68DE: $2A
    ld l, c                                       ; $68DF: $69
    dec b                                         ; $68E0: $05
    nop                                           ; $68E1: $00
    ld b, c                                       ; $68E2: $41
    ld e, e                                       ; $68E3: $5B
    dec b                                         ; $68E4: $05
    dec b                                         ; $68E5: $05
    rst $38                                       ; $68E6: $FF
    ret nc                                        ; $68E7: $D0

    nop                                           ; $68E8: $00
    jr nz, jr_019_68CA                            ; $68E9: $20 $DF

    ld e, e                                       ; $68EB: $5B
    ld [hl+], a                                   ; $68EC: $22
    dec b                                         ; $68ED: $05
    ld b, b                                       ; $68EE: $40
    dec bc                                        ; $68EF: $0B
    nop                                           ; $68F0: $00
    dec b                                         ; $68F1: $05
    jr nz, jr_019_68C2                            ; $68F2: $20 $CE

    ld h, e                                       ; $68F4: $63
    ld a, [bc]                                    ; $68F5: $0A
    add hl, bc                                    ; $68F6: $09
    call z, $00D1                                 ; $68F7: $CC $D1 $00
    ld [hl+], a                                   ; $68FA: $22
    jp c, $1940                                   ; $68FB: $DA $40 $19

    jp hl                                         ; $68FE: $E9


    ld h, a                                       ; $68FF: $67
    dec b                                         ; $6900: $05
    rra                                           ; $6901: $1F
    adc $63                                       ; $6902: $CE $63
    ld a, [bc]                                    ; $6904: $0A
    add hl, bc                                    ; $6905: $09
    call z, $00D1                                 ; $6906: $CC $D1 $00
    ld [hl+], a                                   ; $6909: $22
    jp c, $1940                                   ; $690A: $DA $40 $19

    jp hl                                         ; $690D: $E9


    ld h, a                                       ; $690E: $67
    dec bc                                        ; $690F: $0B
    nop                                           ; $6910: $00
    dec bc                                        ; $6911: $0B
    jr nz, @+$0D                                  ; $6912: $20 $0B

    rra                                           ; $6914: $1F
    ld l, e                                       ; $6915: $6B
    inc [hl]                                      ; $6916: $34
    dec c                                         ; $6917: $0D
    jr nc, @+$6C                                  ; $6918: $30 $6A

    nop                                           ; $691A: $00
    add b                                         ; $691B: $80
    nop                                           ; $691C: $00
    ld sp, $CD19                                  ; $691D: $31 $19 $CD

jr_019_6920:
    ld l, b                                       ; $6920: $68
    ld [hl+], a                                   ; $6921: $22
    adc $40                                       ; $6922: $CE $40
    nop                                           ; $6924: $00
    add d                                         ; $6925: $82
    rra                                           ; $6926: $1F
    ld c, $94                                     ; $6927: $0E $94
    ld b, d                                       ; $6929: $42
    ld b, e                                       ; $692A: $43
    rrca                                          ; $692B: $0F
    ld bc, $C724                                  ; $692C: $01 $24 $C7
    ld b, $2A                                     ; $692F: $06 $2A
    nop                                           ; $6931: $00

jr_019_6932:
    add hl, de                                    ; $6932: $19
    add hl, sp                                    ; $6933: $39
    ld l, c                                       ; $6934: $69
    ld b, l                                       ; $6935: $45
    ld [hl+], a                                   ; $6936: $22
    ld b, $40                                     ; $6937: $06 $40
    adc b                                         ; $6939: $88
    nop                                           ; $693A: $00

jr_019_693B:
    ld a, [hl+]                                   ; $693B: $2A
    ld bc, $0007                                  ; $693C: $01 $07 $00
    rst $10                                       ; $693F: $D7
    ld h, l                                       ; $6940: $65
    add hl, bc                                    ; $6941: $09
    nop                                           ; $6942: $00
    add hl, de                                    ; $6943: $19
    ld e, [hl]                                    ; $6944: $5E
    ld l, c                                       ; $6945: $69
    dec b                                         ; $6946: $05
    inc bc                                        ; $6947: $03
    ld l, e                                       ; $6948: $6B
    ld c, d                                       ; $6949: $4A
    nop                                           ; $694A: $00
    nop                                           ; $694B: $00
    nop                                           ; $694C: $00
    ret nc                                        ; $694D: $D0

    inc [hl]                                      ; $694E: $34
    add hl, de                                    ; $694F: $19
    ld a, l                                       ; $6950: $7D
    ld l, c                                       ; $6951: $69
    ld [hl+], a                                   ; $6952: $22
    inc b                                         ; $6953: $04
    ld b, b                                       ; $6954: $40
    ld l, e                                       ; $6955: $6B
    jr nz, jr_019_697C                            ; $6956: $20 $24

    ret nz                                        ; $6958: $C0

    ld h, h                                       ; $6959: $64
    ld b, b                                       ; $695A: $40
    add e                                         ; $695B: $83
    nop                                           ; $695C: $00
    ld b, d                                       ; $695D: $42
    dec d                                         ; $695E: $15
    jr nz, jr_019_6920                            ; $695F: $20 $BF

    ld e, e                                       ; $6961: $5B
    stop                                          ; $6962: $10 $00
    dec bc                                        ; $6964: $0B
    inc bc                                        ; $6965: $03
    dec d                                         ; $6966: $15
    jr nz, @+$4E                                  ; $6967: $20 $4C

    ld e, e                                       ; $6969: $5B
    jr nz, jr_019_696C                            ; $696A: $20 $00

jr_019_696C:
    ld e, d                                       ; $696C: $5A
    add hl, de                                    ; $696D: $19
    adc b                                         ; $696E: $88
    ld l, c                                       ; $696F: $69
    dec d                                         ; $6970: $15
    jr nz, jr_019_6932                            ; $6971: $20 $BF

    ld e, e                                       ; $6973: $5B
    stop                                          ; $6974: $10 $00
    inc de                                        ; $6976: $13
    add c                                         ; $6977: $81
    ld e, l                                       ; $6978: $5D
    ld b, l                                       ; $6979: $45
    jr nz, jr_019_693B                            ; $697A: $20 $BF

jr_019_697C:
    ld e, e                                       ; $697C: $5B
    rrca                                          ; $697D: $0F
    nop                                           ; $697E: $00
    dec de                                        ; $697F: $1B
    inc bc                                        ; $6980: $03
    dec d                                         ; $6981: $15
    ld de, $7978                                  ; $6982: $11 $78 $79
    ld b, b                                       ; $6985: $40
    nop                                           ; $6986: $00
    ld b, d                                       ; $6987: $42
    add e                                         ; $6988: $83
    ld bc, $0003                                  ; $6989: $01 $03 $00
    nop                                           ; $698C: $00
    add e                                         ; $698D: $83
    ld bc, $00FD                                  ; $698E: $01 $FD $00
    nop                                           ; $6991: $00
    add e                                         ; $6992: $83
    ld bc, $FD03                                  ; $6993: $01 $03 $FD
    nop                                           ; $6996: $00
    add e                                         ; $6997: $83
    ld bc, $03FD                                  ; $6998: $01 $FD $03
    nop                                           ; $699B: $00
    add e                                         ; $699C: $83
    ld bc, $FD00                                  ; $699D: $01 $00 $FD
    nop                                           ; $69A0: $00
    add e                                         ; $69A1: $83
    ld bc, $0300                                  ; $69A2: $01 $00 $03
    nop                                           ; $69A5: $00
    ld b, b                                       ; $69A6: $40
    jr nz, jr_019_6A17                            ; $69A7: $20 $6E

    rrca                                          ; $69A9: $0F
    rst $38                                       ; $69AA: $FF
    ld a, a                                       ; $69AB: $7F
    halt                                          ; $69AC: $76
    jr nz, jr_019_69BE                            ; $69AD: $20 $0F

    ld b, l                                       ; $69AF: $45
    add hl, de                                    ; $69B0: $19
    cp e                                          ; $69B1: $BB
    ld l, b                                       ; $69B2: $68
    ld [bc], a                                    ; $69B3: $02
    ld sp, $2700                                  ; $69B4: $31 $00 $27
    ld [$1945], sp                                ; $69B7: $08 $45 $19
    call $0268                                    ; $69BA: $CD $68 $02
    ld a, [bc]                                    ; $69BD: $0A

jr_019_69BE:
    inc c                                         ; $69BE: $0C
    ld sp, $4500                                  ; $69BF: $31 $00 $45
    add hl, de                                    ; $69C2: $19
    xor c                                         ; $69C3: $A9
    ld l, d                                       ; $69C4: $6A
    and h                                         ; $69C5: $A4
    dec l                                         ; $69C6: $2D
    and e                                         ; $69C7: $A3
    ld b, b                                       ; $69C8: $40
    nop                                           ; $69C9: $00
    inc hl                                        ; $69CA: $23
    ld [c], a                                     ; $69CB: $E2
    pop de                                        ; $69CC: $D1
    and d                                         ; $69CD: $A2
    dec l                                         ; $69CE: $2D
    and e                                         ; $69CF: $A3
    add b                                         ; $69D0: $80
    ld [hl+], a                                   ; $69D1: $22
    ld e, e                                       ; $69D2: $5B
    ld b, b                                       ; $69D3: $40
    rst $38                                       ; $69D4: $FF
    db $DB                                        ; $69D5: $DB
    jp nc, HeaderNewLicenseeCode                  ; $69D6: $D2 $44 $01

    ld l, d                                       ; $69D9: $6A
    xor h                                         ; $69DA: $AC
    inc h                                         ; $69DB: $24
    and d                                         ; $69DC: $A2
    inc bc                                        ; $69DD: $03
    add a                                         ; $69DE: $87
    nop                                           ; $69DF: $00
    ld [hl+], a                                   ; $69E0: $22
    ld bc, $789B                                  ; $69E1: $01 $9B $78
    ld [hl], b                                    ; $69E4: $70
    sbc a                                         ; $69E5: $9F
    ld d, h                                       ; $69E6: $54
    ld l, a                                       ; $69E7: $6F
    ld l, [hl]                                    ; $69E8: $6E
    ld a, c                                       ; $69E9: $79
    jr nz, jr_019_6A53                            ; $69EA: $20 $67

    ld l, a                                       ; $69EC: $6F
    ld [hl], h                                    ; $69ED: $74
    jr nz, @+$63                                  ; $69EE: $20 $61

    rst $38                                       ; $69F0: $FF
    ld b, d                                       ; $69F1: $42
    ld l, h                                       ; $69F2: $6C
    ld [hl], l                                    ; $69F3: $75
    ld [hl], d                                    ; $69F4: $72
    ld [hl], d                                    ; $69F5: $72
    ld a, c                                       ; $69F6: $79
    jr nz, @+$55                                  ; $69F7: $20 $53

    ld h, e                                       ; $69F9: $63
    ld [hl], d                                    ; $69FA: $72
    ld l, a                                       ; $69FB: $6F
    ld l, h                                       ; $69FC: $6C
    ld l, h                                       ; $69FD: $6C
    cp $FD                                        ; $69FE: $FE $FD
    sbc d                                         ; $6A00: $9A
    ld b, d                                       ; $6A01: $42
    and h                                         ; $6A02: $A4
    ld l, $A3                                     ; $6A03: $2E $A3
    ld bc, $0803                                  ; $6A05: $01 $03 $08
    db $DD                                        ; $6A08: $DD
    jp nc, $2EA4                                  ; $6A09: $D2 $A4 $2E

    and e                                         ; $6A0C: $A3
    ld [bc], a                                    ; $6A0D: $02
    nop                                           ; $6A0E: $00

jr_019_6A0F:
    dec d                                         ; $6A0F: $15
    ld h, a                                       ; $6A10: $67
    jp nc, Jump_019_6593                          ; $6A11: $D2 $93 $65

    db $D3                                        ; $6A14: $D3
    ld c, [hl]                                    ; $6A15: $4E
    ld c, a                                       ; $6A16: $4F

jr_019_6A17:
    ld h, h                                       ; $6A17: $64
    ld l, b                                       ; $6A18: $68
    ld d, e                                       ; $6A19: $53
    ld h, [hl]                                    ; $6A1A: $66
    ret nz                                        ; $6A1B: $C0

    ld e, h                                       ; $6A1C: $5C
    ld hl, $7169                                  ; $6A1D: $21 $69 $71
    ld d, e                                       ; $6A20: $53
    sub l                                         ; $6A21: $95
    add hl, de                                    ; $6A22: $19
    ld a, [hl+]                                   ; $6A23: $2A
    ld l, c                                       ; $6A24: $69
    dec b                                         ; $6A25: $05
    nop                                           ; $6A26: $00
    ld b, c                                       ; $6A27: $41
    ld e, e                                       ; $6A28: $5B
    dec b                                         ; $6A29: $05
    dec b                                         ; $6A2A: $05
    rst $38                                       ; $6A2B: $FF
    ret nc                                        ; $6A2C: $D0

    nop                                           ; $6A2D: $00
    jr nz, jr_019_6A0F                            ; $6A2E: $20 $DF

    ld e, e                                       ; $6A30: $5B
    ld [hl+], a                                   ; $6A31: $22
    dec b                                         ; $6A32: $05
    ld b, b                                       ; $6A33: $40
    dec bc                                        ; $6A34: $0B
    nop                                           ; $6A35: $00
    dec b                                         ; $6A36: $05
    jr nz, @-$30                                  ; $6A37: $20 $CE

    ld h, e                                       ; $6A39: $63
    ld a, [bc]                                    ; $6A3A: $0A
    add hl, bc                                    ; $6A3B: $09
    call z, $00D1                                 ; $6A3C: $CC $D1 $00
    ld [hl+], a                                   ; $6A3F: $22
    jp c, $1940                                   ; $6A40: $DA $40 $19

    jp hl                                         ; $6A43: $E9


    ld h, a                                       ; $6A44: $67
    dec b                                         ; $6A45: $05
    rra                                           ; $6A46: $1F
    adc $63                                       ; $6A47: $CE $63
    ld a, [bc]                                    ; $6A49: $0A
    add hl, bc                                    ; $6A4A: $09
    call z, $00D1                                 ; $6A4B: $CC $D1 $00
    ld [hl+], a                                   ; $6A4E: $22
    jp c, $1940                                   ; $6A4F: $DA $40 $19

    jp hl                                         ; $6A52: $E9


jr_019_6A53:
    ld h, a                                       ; $6A53: $67
    dec bc                                        ; $6A54: $0B
    nop                                           ; $6A55: $00
    dec bc                                        ; $6A56: $0B
    jr nz, @+$0D                                  ; $6A57: $20 $0B

    rra                                           ; $6A59: $1F
    ld l, e                                       ; $6A5A: $6B
    inc [hl]                                      ; $6A5B: $34
    dec c                                         ; $6A5C: $0D
    jr nc, jr_019_6AC9                            ; $6A5D: $30 $6A

    nop                                           ; $6A5F: $00
    add b                                         ; $6A60: $80
    nop                                           ; $6A61: $00
    ld sp, $1219                                  ; $6A62: $31 $19 $12
    ld l, d                                       ; $6A65: $6A
    ld [hl+], a                                   ; $6A66: $22
    adc $40                                       ; $6A67: $CE $40
    nop                                           ; $6A69: $00
    add d                                         ; $6A6A: $82
    rra                                           ; $6A6B: $1F
    ld c, $94                                     ; $6A6C: $0E $94
    ld b, d                                       ; $6A6E: $42
    ld [bc], a                                    ; $6A6F: $02
    ld sp, $1100                                  ; $6A70: $31 $00 $11
    inc hl                                        ; $6A73: $23
    ld b, l                                       ; $6A74: $45

jr_019_6A75:
    add hl, de                                    ; $6A75: $19
    call $0268                                    ; $6A76: $CD $68 $02
    inc c                                         ; $6A79: $0C
    ld a, [bc]                                    ; $6A7A: $0A
    nop                                           ; $6A7B: $00
    ld sp, $1945                                  ; $6A7C: $31 $45 $19
    ld [de], a                                    ; $6A7F: $12
    ld l, d                                       ; $6A80: $6A
    and h                                         ; $6A81: $A4
    ld l, $A3                                     ; $6A82: $2E $A3
    inc b                                         ; $6A84: $04
    nop                                           ; $6A85: $00
    ld [de], a                                    ; $6A86: $12
    ld l, [hl]                                    ; $6A87: $6E
    ret nc                                        ; $6A88: $D0

    and h                                         ; $6A89: $A4
    ld l, $A3                                     ; $6A8A: $2E $A3
    ld [$1200], sp                                ; $6A8C: $08 $00 $12
    db $FC                                        ; $6A8F: $FC
    ret nc                                        ; $6A90: $D0

    and h                                         ; $6A91: $A4
    ld l, $A3                                     ; $6A92: $2E $A3
    stop                                          ; $6A94: $10 $00
    jr jr_019_6A75                                ; $6A96: $18 $DD

    push de                                       ; $6A98: $D5
    and h                                         ; $6A99: $A4
    ld l, $A3                                     ; $6A9A: $2E $A3
    jr nz, jr_019_6A9E                            ; $6A9C: $20 $00

jr_019_6A9E:
    inc bc                                        ; $6A9E: $03
    sub l                                         ; $6A9F: $95
    sub $A4                                       ; $6AA0: $D6 $A4
    ld l, $A3                                     ; $6AA2: $2E $A3
    ld b, b                                       ; $6AA4: $40
    nop                                           ; $6AA5: $00

jr_019_6AA6:
    inc bc                                        ; $6AA6: $03
    ld l, c                                       ; $6AA7: $69
    rst $10                                       ; $6AA8: $D7
    sub e                                         ; $6AA9: $93
    ld h, l                                       ; $6AAA: $65
    ld [c], a                                     ; $6AAB: $E2
    ld c, [hl]                                    ; $6AAC: $4E
    ld c, a                                       ; $6AAD: $4F
    ld h, h                                       ; $6AAE: $64
    add d                                         ; $6AAF: $82
    ld d, e                                       ; $6AB0: $53
    ld h, [hl]                                    ; $6AB1: $66
    ret nz                                        ; $6AB2: $C0

    ld e, h                                       ; $6AB3: $5C
    ld hl, $8B69                                  ; $6AB4: $21 $69 $8B
    ld d, e                                       ; $6AB7: $53
    sub l                                         ; $6AB8: $95
    add hl, de                                    ; $6AB9: $19
    ld a, [hl+]                                   ; $6ABA: $2A
    ld l, c                                       ; $6ABB: $69
    dec b                                         ; $6ABC: $05
    nop                                           ; $6ABD: $00
    ld b, c                                       ; $6ABE: $41
    ld e, e                                       ; $6ABF: $5B
    dec b                                         ; $6AC0: $05
    dec b                                         ; $6AC1: $05
    rst $38                                       ; $6AC2: $FF
    ret nc                                        ; $6AC3: $D0

    nop                                           ; $6AC4: $00
    jr nz, jr_019_6AA6                            ; $6AC5: $20 $DF

    ld e, e                                       ; $6AC7: $5B
    ld [hl+], a                                   ; $6AC8: $22

jr_019_6AC9:
    dec b                                         ; $6AC9: $05

jr_019_6ACA:
    ld b, b                                       ; $6ACA: $40
    dec bc                                        ; $6ACB: $0B
    nop                                           ; $6ACC: $00
    dec b                                         ; $6ACD: $05
    jr nz, jr_019_6A9E                            ; $6ACE: $20 $CE

    ld h, e                                       ; $6AD0: $63
    ld a, [bc]                                    ; $6AD1: $0A
    add hl, bc                                    ; $6AD2: $09
    call z, $00D1                                 ; $6AD3: $CC $D1 $00
    ld [hl+], a                                   ; $6AD6: $22
    jp c, $1940                                   ; $6AD7: $DA $40 $19

    jp hl                                         ; $6ADA: $E9


    ld h, a                                       ; $6ADB: $67
    dec b                                         ; $6ADC: $05
    rra                                           ; $6ADD: $1F
    adc $63                                       ; $6ADE: $CE $63
    ld a, [bc]                                    ; $6AE0: $0A
    add hl, bc                                    ; $6AE1: $09
    call z, $00D1                                 ; $6AE2: $CC $D1 $00
    ld [hl+], a                                   ; $6AE5: $22
    jp c, $1940                                   ; $6AE6: $DA $40 $19

    jp hl                                         ; $6AE9: $E9


    ld h, a                                       ; $6AEA: $67
    dec bc                                        ; $6AEB: $0B
    nop                                           ; $6AEC: $00
    dec bc                                        ; $6AED: $0B
    jr nz, @+$0D                                  ; $6AEE: $20 $0B

    rra                                           ; $6AF0: $1F
    ld l, e                                       ; $6AF1: $6B
    inc [hl]                                      ; $6AF2: $34
    dec c                                         ; $6AF3: $0D
    jr nc, @+$6C                                  ; $6AF4: $30 $6A

    nop                                           ; $6AF6: $00
    add b                                         ; $6AF7: $80
    nop                                           ; $6AF8: $00
    ld sp, $A919                                  ; $6AF9: $31 $19 $A9
    ld l, d                                       ; $6AFC: $6A
    ld [hl+], a                                   ; $6AFD: $22
    adc $40                                       ; $6AFE: $CE $40
    nop                                           ; $6B00: $00
    add d                                         ; $6B01: $82
    rra                                           ; $6B02: $1F
    ld c, $94                                     ; $6B03: $0E $94
    ld b, d                                       ; $6B05: $42
    ld [bc], a                                    ; $6B06: $02
    dec b                                         ; $6B07: $05
    add hl, bc                                    ; $6B08: $09
    ld b, $05                                     ; $6B09: $06 $05
    xor a                                         ; $6B0B: $AF
    dec h                                         ; $6B0C: $25
    and c                                         ; $6B0D: $A1
    ld [bc], a                                    ; $6B0E: $02
    rlca                                          ; $6B0F: $07
    nop                                           ; $6B10: $00
    ld l, e                                       ; $6B11: $6B
    ld c, d                                       ; $6B12: $4A
    add hl, bc                                    ; $6B13: $09
    nop                                           ; $6B14: $00
    jr nz, jr_019_6ACA                            ; $6B15: $20 $B3

    ld c, a                                       ; $6B17: $4F
    ld l, [hl]                                    ; $6B18: $6E
    rrca                                          ; $6B19: $0F
    rst $38                                       ; $6B1A: $FF
    ld a, a                                       ; $6B1B: $7F
    halt                                          ; $6B1C: $76
    jr nz, jr_019_6B2E                            ; $6B1D: $20 $0F

    ld b, l                                       ; $6B1F: $45
    dec de                                        ; $6B20: $1B
    cp l                                          ; $6B21: $BD
    ld b, e                                       ; $6B22: $43
    ld [bc], a                                    ; $6B23: $02
    nop                                           ; $6B24: $00
    dec c                                         ; $6B25: $0D
    rra                                           ; $6B26: $1F
    nop                                           ; $6B27: $00
    ld b, l                                       ; $6B28: $45

jr_019_6B29:
    add hl, de                                    ; $6B29: $19
    ld sp, hl                                     ; $6B2A: $F9
    ld l, [hl]                                    ; $6B2B: $6E
    ld [bc], a                                    ; $6B2C: $02
    inc de                                        ; $6B2D: $13

jr_019_6B2E:
    add hl, bc                                    ; $6B2E: $09
    rra                                           ; $6B2F: $1F
    nop                                           ; $6B30: $00
    ld b, l                                       ; $6B31: $45
    add hl, de                                    ; $6B32: $19
    sub d                                         ; $6B33: $92
    ld l, h                                       ; $6B34: $6C
    ld [bc], a                                    ; $6B35: $02
    nop                                           ; $6B36: $00
    nop                                           ; $6B37: $00
    nop                                           ; $6B38: $00
    nop                                           ; $6B39: $00
    jr nc, jr_019_6B29                            ; $6B3A: $30 $ED

    ld d, [hl]                                    ; $6B3C: $56
    inc c                                         ; $6B3D: $0C
    ld b, a                                       ; $6B3E: $47
    ld [$5819], sp                                ; $6B3F: $08 $19 $58
    ld l, e                                       ; $6B42: $6B
    add hl, de                                    ; $6B43: $19
    ld a, e                                       ; $6B44: $7B
    ld l, e                                       ; $6B45: $6B
    add hl, de                                    ; $6B46: $19
    sub b                                         ; $6B47: $90
    ld l, e                                       ; $6B48: $6B
    add hl, de                                    ; $6B49: $19
    and l                                         ; $6B4A: $A5
    ld l, e                                       ; $6B4B: $6B
    add hl, de                                    ; $6B4C: $19
    or e                                          ; $6B4D: $B3
    ld l, e                                       ; $6B4E: $6B
    add hl, de                                    ; $6B4F: $19
    ret z                                         ; $6B50: $C8

    ld l, e                                       ; $6B51: $6B
    add hl, de                                    ; $6B52: $19
    sub $6B                                       ; $6B53: $D6 $6B
    add hl, de                                    ; $6B55: $19
    db $EB                                        ; $6B56: $EB
    ld l, e                                       ; $6B57: $6B
    dec h                                         ; $6B58: $25
    dec bc                                        ; $6B59: $0B
    ld l, h                                       ; $6B5A: $6C
    inc e                                         ; $6B5B: $1C
    ld c, h                                       ; $6B5C: $4C
    inc hl                                        ; $6B5D: $23
    ld b, b                                       ; $6B5E: $40
    ld l, $09                                     ; $6B5F: $2E $09
    inc h                                         ; $6B61: $24
    add hl, de                                    ; $6B62: $19
    dec [hl]                                      ; $6B63: $35
    ld bc, $2E2B                                  ; $6B64: $01 $2B $2E
    add hl, bc                                    ; $6B67: $09
    nop                                           ; $6B68: $00
    jr jr_019_6B9C                                ; $6B69: $18 $31

    ld bc, $2E2B                                  ; $6B6B: $01 $2B $2E
    add hl, bc                                    ; $6B6E: $09
    inc [hl]                                      ; $6B6F: $34
    jr jr_019_6BA2                                ; $6B70: $18 $30

    ld bc, $2E2B                                  ; $6B72: $01 $2B $2E
    add hl, bc                                    ; $6B75: $09
    inc c                                         ; $6B76: $0C
    rla                                           ; $6B77: $17
    ld l, $01                                     ; $6B78: $2E $01
    daa                                           ; $6B7A: $27
    dec h                                         ; $6B7B: $25
    dec bc                                        ; $6B7C: $0B
    ld l, h                                       ; $6B7D: $6C
    dec de                                        ; $6B7E: $1B
    ld c, h                                       ; $6B7F: $4C
    inc hl                                        ; $6B80: $23
    ld b, b                                       ; $6B81: $40
    ld l, $09                                     ; $6B82: $2E $09
    inc h                                         ; $6B84: $24
    ld a, [de]                                    ; $6B85: $1A
    inc [hl]                                      ; $6B86: $34
    ld bc, $2E2B                                  ; $6B87: $01 $2B $2E
    add hl, bc                                    ; $6B8A: $09
    ld b, e                                       ; $6B8B: $43
    add hl, de                                    ; $6B8C: $19
    ld [hl-], a                                   ; $6B8D: $32
    ld bc, $2527                                  ; $6B8E: $01 $27 $25
    dec bc                                        ; $6B91: $0B
    ld l, h                                       ; $6B92: $6C
    dec de                                        ; $6B93: $1B
    ld c, h                                       ; $6B94: $4C
    inc hl                                        ; $6B95: $23
    ld b, b                                       ; $6B96: $40
    ld l, $09                                     ; $6B97: $2E $09
    inc [hl]                                      ; $6B99: $34
    dec de                                        ; $6B9A: $1B
    dec [hl]                                      ; $6B9B: $35

jr_019_6B9C:
    ld bc, $2E2B                                  ; $6B9C: $01 $2B $2E
    add hl, bc                                    ; $6B9F: $09
    inc [hl]                                      ; $6BA0: $34
    ld a, [de]                                    ; $6BA1: $1A

jr_019_6BA2:
    inc [hl]                                      ; $6BA2: $34
    ld bc, $2527                                  ; $6BA3: $01 $27 $25
    dec bc                                        ; $6BA6: $0B
    ld l, h                                       ; $6BA7: $6C
    ld a, [de]                                    ; $6BA8: $1A
    ld c, h                                       ; $6BA9: $4C
    inc hl                                        ; $6BAA: $23
    ld b, b                                       ; $6BAB: $40
    ld l, $09                                     ; $6BAC: $2E $09
    ld b, b                                       ; $6BAE: $40
    ld a, [de]                                    ; $6BAF: $1A
    dec [hl]                                      ; $6BB0: $35
    ld bc, $2527                                  ; $6BB1: $01 $27 $25
    dec bc                                        ; $6BB4: $0B
    ld l, h                                       ; $6BB5: $6C
    inc e                                         ; $6BB6: $1C
    ld c, h                                       ; $6BB7: $4C
    inc hl                                        ; $6BB8: $23
    ld b, b                                       ; $6BB9: $40
    ld l, $09                                     ; $6BBA: $2E $09
    nop                                           ; $6BBC: $00
    ld a, [de]                                    ; $6BBD: $1A
    dec [hl]                                      ; $6BBE: $35
    nop                                           ; $6BBF: $00
    dec hl                                        ; $6BC0: $2B
    ld l, $09                                     ; $6BC1: $2E $09
    inc c                                         ; $6BC3: $0C
    dec de                                        ; $6BC4: $1B
    add hl, sp                                    ; $6BC5: $39
    ld bc, $2527                                  ; $6BC6: $01 $27 $25
    dec bc                                        ; $6BC9: $0B
    ld l, h                                       ; $6BCA: $6C
    dec de                                        ; $6BCB: $1B
    ld c, h                                       ; $6BCC: $4C
    inc hl                                        ; $6BCD: $23
    ld b, b                                       ; $6BCE: $40
    ld l, $09                                     ; $6BCF: $2E $09
    inc c                                         ; $6BD1: $0C
    dec de                                        ; $6BD2: $1B
    add hl, sp                                    ; $6BD3: $39
    ld bc, $2527                                  ; $6BD4: $01 $27 $25
    dec bc                                        ; $6BD7: $0B
    ld l, h                                       ; $6BD8: $6C
    inc e                                         ; $6BD9: $1C
    ld c, h                                       ; $6BDA: $4C
    inc hl                                        ; $6BDB: $23
    ld b, b                                       ; $6BDC: $40
    ld l, $09                                     ; $6BDD: $2E $09
    ld b, b                                       ; $6BDF: $40
    inc e                                         ; $6BE0: $1C
    add hl, sp                                    ; $6BE1: $39
    ld bc, $2E2B                                  ; $6BE2: $01 $2B $2E
    add hl, bc                                    ; $6BE5: $09
    nop                                           ; $6BE6: $00
    ld a, [de]                                    ; $6BE7: $1A
    dec [hl]                                      ; $6BE8: $35
    ld bc, $2527                                  ; $6BE9: $01 $27 $25
    dec bc                                        ; $6BEC: $0B
    ld l, h                                       ; $6BED: $6C
    inc e                                         ; $6BEE: $1C
    ld c, h                                       ; $6BEF: $4C
    inc hl                                        ; $6BF0: $23
    ld b, b                                       ; $6BF1: $40
    ld l, $09                                     ; $6BF2: $2E $09
    inc [hl]                                      ; $6BF4: $34
    ld a, [de]                                    ; $6BF5: $1A
    dec [hl]                                      ; $6BF6: $35
    ld bc, $2E2B                                  ; $6BF7: $01 $2B $2E
    add hl, bc                                    ; $6BFA: $09
    ld b, e                                       ; $6BFB: $43
    add hl, de                                    ; $6BFC: $19
    inc sp                                        ; $6BFD: $33
    ld bc, $2E2B                                  ; $6BFE: $01 $2B $2E
    add hl, bc                                    ; $6C01: $09
    inc h                                         ; $6C02: $24
    ld a, [de]                                    ; $6C03: $1A
    dec [hl]                                      ; $6C04: $35
    ld bc, $2B27                                  ; $6C05: $01 $27 $2B
    ld l, $09                                     ; $6C08: $2E $09
    inc [hl]                                      ; $6C0A: $34
    ld a, [de]                                    ; $6C0B: $1A
    inc [hl]                                      ; $6C0C: $34
    ld bc, $092E                                  ; $6C0D: $01 $2E $09
    ld b, b                                       ; $6C10: $40
    inc e                                         ; $6C11: $1C
    add hl, sp                                    ; $6C12: $39
    ld bc, $B2AC                                  ; $6C13: $01 $AC $B2
    and d                                         ; $6C16: $A2
    nop                                           ; $6C17: $00
    sub e                                         ; $6C18: $93
    ld h, l                                       ; $6C19: $65
    rra                                           ; $6C1A: $1F
    ld c, [hl]                                    ; $6C1B: $4E
    ld c, a                                       ; $6C1C: $4F
    ld h, h                                       ; $6C1D: $64
    sbc a                                         ; $6C1E: $9F
    ld d, d                                       ; $6C1F: $52
    ld h, [hl]                                    ; $6C20: $66
    ret nz                                        ; $6C21: $C0

    ld e, h                                       ; $6C22: $5C
    ld hl, $0005                                  ; $6C23: $21 $05 $00
    add c                                         ; $6C26: $81
    ld e, l                                       ; $6C27: $5D
    dec b                                         ; $6C28: $05
    dec b                                         ; $6C29: $05

jr_019_6C2A:
    and l                                         ; $6C2A: $A5
    ret nc                                        ; $6C2B: $D0

    nop                                           ; $6C2C: $00
    jr nz, jr_019_6C2A                            ; $6C2D: $20 $FB

    ld d, b                                       ; $6C2F: $50
    ld [hl+], a                                   ; $6C30: $22
    dec b                                         ; $6C31: $05
    ld b, b                                       ; $6C32: $40
    dec bc                                        ; $6C33: $0B
    nop                                           ; $6C34: $00
    dec b                                         ; $6C35: $05
    jr nz, @-$30                                  ; $6C36: $20 $CE

    ld h, e                                       ; $6C38: $63
    ld a, [bc]                                    ; $6C39: $0A
    add hl, bc                                    ; $6C3A: $09
    ld a, [hl+]                                   ; $6C3B: $2A
    pop de                                        ; $6C3C: $D1
    nop                                           ; $6C3D: $00
    ld [hl+], a                                   ; $6C3E: $22
    jp c, $1940                                   ; $6C3F: $DA $40 $19

    dec [hl]                                      ; $6C42: $35
    ld l, e                                       ; $6C43: $6B
    dec b                                         ; $6C44: $05
    rra                                           ; $6C45: $1F
    adc $63                                       ; $6C46: $CE $63
    ld a, [bc]                                    ; $6C48: $0A
    add hl, bc                                    ; $6C49: $09
    ld a, [hl+]                                   ; $6C4A: $2A
    pop de                                        ; $6C4B: $D1
    nop                                           ; $6C4C: $00
    ld [hl+], a                                   ; $6C4D: $22
    jp c, $1940                                   ; $6C4E: $DA $40 $19

    dec [hl]                                      ; $6C51: $35
    ld l, e                                       ; $6C52: $6B
    dec bc                                        ; $6C53: $0B
    nop                                           ; $6C54: $00
    dec bc                                        ; $6C55: $0B
    jr nz, @+$0D                                  ; $6C56: $20 $0B

    rra                                           ; $6C58: $1F
    ld l, e                                       ; $6C59: $6B
    inc [hl]                                      ; $6C5A: $34
    dec c                                         ; $6C5B: $0D
    jr nc, jr_019_6CC8                            ; $6C5C: $30 $6A

    nop                                           ; $6C5E: $00
    add b                                         ; $6C5F: $80
    nop                                           ; $6C60: $00
    ld sp, $1419                                  ; $6C61: $31 $19 $14
    ld l, h                                       ; $6C64: $6C
    ld [hl+], a                                   ; $6C65: $22
    adc $40                                       ; $6C66: $CE $40
    nop                                           ; $6C68: $00
    rra                                           ; $6C69: $1F
    ld de, $9482                                  ; $6C6A: $11 $82 $94
    ld b, d                                       ; $6C6D: $42
    ld [bc], a                                    ; $6C6E: $02
    add hl, bc                                    ; $6C6F: $09
    inc de                                        ; $6C70: $13
    nop                                           ; $6C71: $00
    rra                                           ; $6C72: $1F
    ld b, l                                       ; $6C73: $45
    add hl, de                                    ; $6C74: $19
    inc d                                         ; $6C75: $14
    ld l, h                                       ; $6C76: $6C
    ld [bc], a                                    ; $6C77: $02
    inc h                                         ; $6C78: $24
    ld de, $1300                                  ; $6C79: $11 $00 $13
    ld b, l                                       ; $6C7C: $45
    add hl, de                                    ; $6C7D: $19
    ld a, a                                       ; $6C7E: $7F
    ld l, [hl]                                    ; $6C7F: $6E

jr_019_6C80:
    ld [bc], a                                    ; $6C80: $02
    dec b                                         ; $6C81: $05
    ld c, $09                                     ; $6C82: $0E $09
    nop                                           ; $6C84: $00
    ld b, l                                       ; $6C85: $45
    add hl, de                                    ; $6C86: $19
    ld [bc], a                                    ; $6C87: $02
    ld l, l                                       ; $6C88: $6D
    ld [bc], a                                    ; $6C89: $02
    cpl                                           ; $6C8A: $2F
    nop                                           ; $6C8B: $00
    add hl, bc                                    ; $6C8C: $09
    add hl, bc                                    ; $6C8D: $09
    ld b, l                                       ; $6C8E: $45
    add hl, de                                    ; $6C8F: $19
    ld l, l                                       ; $6C90: $6D
    ld l, a                                       ; $6C91: $6F
    sub e                                         ; $6C92: $93
    ld h, l                                       ; $6C93: $65
    ld l, $4E                                     ; $6C94: $2E $4E
    ld c, a                                       ; $6C96: $4F
    ld h, h                                       ; $6C97: $64
    xor h                                         ; $6C98: $AC
    ld d, d                                       ; $6C99: $52
    ld h, [hl]                                    ; $6C9A: $66
    ret nz                                        ; $6C9B: $C0

    ld e, h                                       ; $6C9C: $5C
    ld hl, $0005                                  ; $6C9D: $21 $05 $00
    add c                                         ; $6CA0: $81
    ld e, l                                       ; $6CA1: $5D
    dec b                                         ; $6CA2: $05
    dec b                                         ; $6CA3: $05

jr_019_6CA4:
    push af                                       ; $6CA4: $F5
    ret nc                                        ; $6CA5: $D0

    nop                                           ; $6CA6: $00
    jr nz, jr_019_6CA4                            ; $6CA7: $20 $FB

    ld d, b                                       ; $6CA9: $50
    ld [hl+], a                                   ; $6CAA: $22
    dec b                                         ; $6CAB: $05
    ld b, b                                       ; $6CAC: $40
    dec bc                                        ; $6CAD: $0B
    nop                                           ; $6CAE: $00
    dec b                                         ; $6CAF: $05
    jr nz, jr_019_6C80                            ; $6CB0: $20 $CE

    ld h, e                                       ; $6CB2: $63
    ld a, [bc]                                    ; $6CB3: $0A
    add hl, bc                                    ; $6CB4: $09
    cp d                                          ; $6CB5: $BA
    pop de                                        ; $6CB6: $D1
    nop                                           ; $6CB7: $00
    ld [hl+], a                                   ; $6CB8: $22
    jp c, $1940                                   ; $6CB9: $DA $40 $19

    dec [hl]                                      ; $6CBC: $35
    ld l, e                                       ; $6CBD: $6B
    dec b                                         ; $6CBE: $05
    rra                                           ; $6CBF: $1F
    adc $63                                       ; $6CC0: $CE $63
    ld a, [bc]                                    ; $6CC2: $0A
    add hl, bc                                    ; $6CC3: $09
    cp d                                          ; $6CC4: $BA
    pop de                                        ; $6CC5: $D1
    nop                                           ; $6CC6: $00
    ld [hl+], a                                   ; $6CC7: $22

jr_019_6CC8:
    jp c, $1940                                   ; $6CC8: $DA $40 $19

    dec [hl]                                      ; $6CCB: $35
    ld l, e                                       ; $6CCC: $6B
    dec bc                                        ; $6CCD: $0B
    nop                                           ; $6CCE: $00
    dec bc                                        ; $6CCF: $0B
    jr nz, @+$0D                                  ; $6CD0: $20 $0B

    rra                                           ; $6CD2: $1F
    ld l, e                                       ; $6CD3: $6B
    inc [hl]                                      ; $6CD4: $34
    dec c                                         ; $6CD5: $0D
    jr nc, jr_019_6D42                            ; $6CD6: $30 $6A

    nop                                           ; $6CD8: $00
    add b                                         ; $6CD9: $80
    nop                                           ; $6CDA: $00
    ld sp, $9219                                  ; $6CDB: $31 $19 $92
    ld l, h                                       ; $6CDE: $6C
    ld [hl+], a                                   ; $6CDF: $22
    adc $40                                       ; $6CE0: $CE $40
    nop                                           ; $6CE2: $00
    rra                                           ; $6CE3: $1F
    ld de, $9482                                  ; $6CE4: $11 $82 $94
    ld b, d                                       ; $6CE7: $42
    ld [bc], a                                    ; $6CE8: $02
    ld c, $05                                     ; $6CE9: $0E $05
    nop                                           ; $6CEB: $00
    add hl, bc                                    ; $6CEC: $09
    ld b, l                                       ; $6CED: $45
    add hl, de                                    ; $6CEE: $19
    sub d                                         ; $6CEF: $92
    ld l, h                                       ; $6CF0: $6C
    ld [bc], a                                    ; $6CF1: $02
    inc hl                                        ; $6CF2: $23

jr_019_6CF3:
    nop                                           ; $6CF3: $00
    rlca                                          ; $6CF4: $07
    ld a, [bc]                                    ; $6CF5: $0A
    ld b, l                                       ; $6CF6: $45
    add hl, de                                    ; $6CF7: $19
    ld [hl], l                                    ; $6CF8: $75
    ld l, l                                       ; $6CF9: $6D
    and h                                         ; $6CFA: $A4
    dec h                                         ; $6CFB: $25
    and e                                         ; $6CFC: $A3
    ld b, b                                       ; $6CFD: $40
    nop                                           ; $6CFE: $00
    dec c                                         ; $6CFF: $0D
    cp [hl]                                       ; $6D00: $BE
    sub $93                                       ; $6D01: $D6 $93
    ld h, l                                       ; $6D03: $65
    dec a                                         ; $6D04: $3D
    ld c, [hl]                                    ; $6D05: $4E
    ld c, a                                       ; $6D06: $4F
    ld h, h                                       ; $6D07: $64
    cp l                                          ; $6D08: $BD
    ld d, d                                       ; $6D09: $52
    ld h, [hl]                                    ; $6D0A: $66
    ret nz                                        ; $6D0B: $C0

    ld e, h                                       ; $6D0C: $5C
    ld hl, $C669                                  ; $6D0D: $21 $69 $C6
    ld d, d                                       ; $6D10: $52
    dec b                                         ; $6D11: $05
    nop                                           ; $6D12: $00
    add c                                         ; $6D13: $81
    ld e, l                                       ; $6D14: $5D
    dec b                                         ; $6D15: $05
    dec b                                         ; $6D16: $05

jr_019_6D17:
    ld l, c                                       ; $6D17: $69
    ret nc                                        ; $6D18: $D0

    nop                                           ; $6D19: $00
    jr nz, jr_019_6D17                            ; $6D1A: $20 $FB

    ld d, b                                       ; $6D1C: $50
    ld [hl+], a                                   ; $6D1D: $22
    dec b                                         ; $6D1E: $05
    ld b, b                                       ; $6D1F: $40
    dec bc                                        ; $6D20: $0B
    nop                                           ; $6D21: $00
    dec b                                         ; $6D22: $05
    jr nz, jr_019_6CF3                            ; $6D23: $20 $CE

    ld h, e                                       ; $6D25: $63
    ld a, [bc]                                    ; $6D26: $0A
    add hl, bc                                    ; $6D27: $09
    cp [hl]                                       ; $6D28: $BE
    ret nc                                        ; $6D29: $D0

    nop                                           ; $6D2A: $00
    ld [hl+], a                                   ; $6D2B: $22
    jp c, $1940                                   ; $6D2C: $DA $40 $19

    dec [hl]                                      ; $6D2F: $35
    ld l, e                                       ; $6D30: $6B
    dec b                                         ; $6D31: $05
    rra                                           ; $6D32: $1F
    adc $63                                       ; $6D33: $CE $63
    ld a, [bc]                                    ; $6D35: $0A
    add hl, bc                                    ; $6D36: $09
    cp [hl]                                       ; $6D37: $BE
    ret nc                                        ; $6D38: $D0

    nop                                           ; $6D39: $00
    ld [hl+], a                                   ; $6D3A: $22
    jp c, $1940                                   ; $6D3B: $DA $40 $19

    dec [hl]                                      ; $6D3E: $35
    ld l, e                                       ; $6D3F: $6B
    dec bc                                        ; $6D40: $0B
    nop                                           ; $6D41: $00

jr_019_6D42:
    dec bc                                        ; $6D42: $0B
    jr nz, @+$0D                                  ; $6D43: $20 $0B

    rra                                           ; $6D45: $1F
    ld l, e                                       ; $6D46: $6B
    inc [hl]                                      ; $6D47: $34
    dec c                                         ; $6D48: $0D
    jr nc, jr_019_6DB5                            ; $6D49: $30 $6A

    nop                                           ; $6D4B: $00
    add b                                         ; $6D4C: $80
    nop                                           ; $6D4D: $00
    ld sp, $0219                                  ; $6D4E: $31 $19 $02
    ld l, l                                       ; $6D51: $6D
    ld [hl+], a                                   ; $6D52: $22
    adc $40                                       ; $6D53: $CE $40

jr_019_6D55:
    nop                                           ; $6D55: $00
    rra                                           ; $6D56: $1F
    ld de, $9482                                  ; $6D57: $11 $82 $94
    ld b, d                                       ; $6D5A: $42
    ld [bc], a                                    ; $6D5B: $02
    nop                                           ; $6D5C: $00
    inc hl                                        ; $6D5D: $23
    ld a, [bc]                                    ; $6D5E: $0A
    rlca                                          ; $6D5F: $07
    ld b, l                                       ; $6D60: $45
    add hl, de                                    ; $6D61: $19
    ld [bc], a                                    ; $6D62: $02
    ld l, l                                       ; $6D63: $6D
    ld [bc], a                                    ; $6D64: $02
    rrca                                          ; $6D65: $0F
    inc bc                                        ; $6D66: $03
    inc sp                                        ; $6D67: $33
    ld bc, $1945                                  ; $6D68: $01 $45 $19
    ld l, a                                       ; $6D6B: $6F
    ld a, l                                       ; $6D6C: $7D
    and h                                         ; $6D6D: $A4
    dec h                                         ; $6D6E: $25
    and e                                         ; $6D6F: $A3
    jr nz, jr_019_6D72                            ; $6D70: $20 $00

jr_019_6D72:
    inc hl                                        ; $6D72: $23

jr_019_6D73:
    ld l, $D9                                     ; $6D73: $2E $D9
    sub e                                         ; $6D75: $93
    ld h, l                                       ; $6D76: $65
    ld c, h                                       ; $6D77: $4C
    ld c, [hl]                                    ; $6D78: $4E
    ld c, a                                       ; $6D79: $4F
    ld h, h                                       ; $6D7A: $64
    bit 2, d                                      ; $6D7B: $CB $52
    ld h, [hl]                                    ; $6D7D: $66
    ret nz                                        ; $6D7E: $C0

    ld e, h                                       ; $6D7F: $5C
    ld hl, $D469                                  ; $6D80: $21 $69 $D4
    ld d, d                                       ; $6D83: $52
    dec b                                         ; $6D84: $05
    jr nz, jr_019_6D55                            ; $6D85: $20 $CE

    ld h, e                                       ; $6D87: $63
    ld a, [bc]                                    ; $6D88: $0A
    add hl, bc                                    ; $6D89: $09
    ld c, [hl]                                    ; $6D8A: $4E
    pop de                                        ; $6D8B: $D1
    nop                                           ; $6D8C: $00
    ld [hl+], a                                   ; $6D8D: $22
    jp c, $1940                                   ; $6D8E: $DA $40 $19

jr_019_6D91:
    dec [hl]                                      ; $6D91: $35
    ld l, e                                       ; $6D92: $6B
    dec b                                         ; $6D93: $05
    rra                                           ; $6D94: $1F
    adc $63                                       ; $6D95: $CE $63
    ld a, [bc]                                    ; $6D97: $0A
    add hl, bc                                    ; $6D98: $09
    ld c, [hl]                                    ; $6D99: $4E
    pop de                                        ; $6D9A: $D1
    nop                                           ; $6D9B: $00
    ld [hl+], a                                   ; $6D9C: $22
    jp c, $1940                                   ; $6D9D: $DA $40 $19

    dec [hl]                                      ; $6DA0: $35
    ld l, e                                       ; $6DA1: $6B
    dec bc                                        ; $6DA2: $0B
    nop                                           ; $6DA3: $00
    dec bc                                        ; $6DA4: $0B
    jr nz, @+$0D                                  ; $6DA5: $20 $0B

    rra                                           ; $6DA7: $1F
    ld l, e                                       ; $6DA8: $6B
    inc [hl]                                      ; $6DA9: $34
    dec c                                         ; $6DAA: $0D
    jr nc, jr_019_6E17                            ; $6DAB: $30 $6A

    nop                                           ; $6DAD: $00
    add b                                         ; $6DAE: $80
    nop                                           ; $6DAF: $00
    ld sp, $BD19                                  ; $6DB0: $31 $19 $BD
    ld l, l                                       ; $6DB3: $6D
    ld [hl+], a                                   ; $6DB4: $22

jr_019_6DB5:
    adc $40                                       ; $6DB5: $CE $40
    nop                                           ; $6DB7: $00
    add d                                         ; $6DB8: $82
    rra                                           ; $6DB9: $1F
    ld de, $4294                                  ; $6DBA: $11 $94 $42
    dec b                                         ; $6DBD: $05
    nop                                           ; $6DBE: $00

jr_019_6DBF:
    add c                                         ; $6DBF: $81
    ld e, l                                       ; $6DC0: $5D
    dec b                                         ; $6DC1: $05
    dec b                                         ; $6DC2: $05
    cp c                                          ; $6DC3: $B9
    ret nc                                        ; $6DC4: $D0

    nop                                           ; $6DC5: $00
    jr nz, jr_019_6D73                            ; $6DC6: $20 $AB

    ld d, b                                       ; $6DC8: $50
    ld [hl+], a                                   ; $6DC9: $22
    dec b                                         ; $6DCA: $05
    ld b, b                                       ; $6DCB: $40
    ld b, l                                       ; $6DCC: $45
    add hl, de                                    ; $6DCD: $19
    ld [hl], l                                    ; $6DCE: $75
    ld l, l                                       ; $6DCF: $6D
    sub e                                         ; $6DD0: $93
    ld h, l                                       ; $6DD1: $65
    ld c, h                                       ; $6DD2: $4C
    ld c, [hl]                                    ; $6DD3: $4E
    ld c, a                                       ; $6DD4: $4F
    ld h, h                                       ; $6DD5: $64
    bit 2, d                                      ; $6DD6: $CB $52
    ld h, [hl]                                    ; $6DD8: $66
    ret nz                                        ; $6DD9: $C0

    ld e, h                                       ; $6DDA: $5C
    ld hl, $D469                                  ; $6DDB: $21 $69 $D4
    ld d, d                                       ; $6DDE: $52
    dec b                                         ; $6DDF: $05
    nop                                           ; $6DE0: $00
    call c, $1456                                 ; $6DE1: $DC $56 $14
    ld [hl-], a                                   ; $6DE4: $32
    inc e                                         ; $6DE5: $1C
    rst $10                                       ; $6DE6: $D7
    nop                                           ; $6DE7: $00
    jr nz, jr_019_6D91                            ; $6DE8: $20 $A7

    ld d, c                                       ; $6DEA: $51
    ld [hl+], a                                   ; $6DEB: $22
    dec b                                         ; $6DEC: $05

jr_019_6DED:
    ld b, b                                       ; $6DED: $40
    dec b                                         ; $6DEE: $05
    jr nz, jr_019_6DBF                            ; $6DEF: $20 $CE

jr_019_6DF1:
    ld h, e                                       ; $6DF1: $63
    ld a, [bc]                                    ; $6DF2: $0A
    add hl, bc                                    ; $6DF3: $09
    ld c, [hl]                                    ; $6DF4: $4E
    pop de                                        ; $6DF5: $D1
    nop                                           ; $6DF6: $00
    ld [hl+], a                                   ; $6DF7: $22
    jp c, $1940                                   ; $6DF8: $DA $40 $19

    dec [hl]                                      ; $6DFB: $35
    ld l, e                                       ; $6DFC: $6B
    dec b                                         ; $6DFD: $05
    rra                                           ; $6DFE: $1F
    adc $63                                       ; $6DFF: $CE $63

jr_019_6E01:
    ld a, [bc]                                    ; $6E01: $0A
    add hl, bc                                    ; $6E02: $09
    ld c, [hl]                                    ; $6E03: $4E
    pop de                                        ; $6E04: $D1

jr_019_6E05:
    nop                                           ; $6E05: $00
    ld [hl+], a                                   ; $6E06: $22
    jp c, $1940                                   ; $6E07: $DA $40 $19

    dec [hl]                                      ; $6E0A: $35
    ld l, e                                       ; $6E0B: $6B
    dec bc                                        ; $6E0C: $0B
    nop                                           ; $6E0D: $00
    dec bc                                        ; $6E0E: $0B
    jr nz, @+$0D                                  ; $6E0F: $20 $0B

    rra                                           ; $6E11: $1F
    ld l, e                                       ; $6E12: $6B
    inc [hl]                                      ; $6E13: $34
    dec c                                         ; $6E14: $0D
    jr nc, jr_019_6E81                            ; $6E15: $30 $6A

jr_019_6E17:
    nop                                           ; $6E17: $00
    add b                                         ; $6E18: $80
    nop                                           ; $6E19: $00
    ld sp, $BD19                                  ; $6E1A: $31 $19 $BD
    ld l, l                                       ; $6E1D: $6D
    ld [hl+], a                                   ; $6E1E: $22
    adc $40                                       ; $6E1F: $CE $40
    nop                                           ; $6E21: $00
    add d                                         ; $6E22: $82
    rra                                           ; $6E23: $1F
    ld de, $4294                                  ; $6E24: $11 $94 $42
    ld [bc], a                                    ; $6E27: $02
    ld de, $1324                                  ; $6E28: $11 $24 $13
    nop                                           ; $6E2B: $00
    ld b, l                                       ; $6E2C: $45
    add hl, de                                    ; $6E2D: $19
    sub d                                         ; $6E2E: $92
    ld l, h                                       ; $6E2F: $6C
    rlca                                          ; $6E30: $07
    nop                                           ; $6E31: $00
    ld l, e                                       ; $6E32: $6B
    ld c, d                                       ; $6E33: $4A
    add hl, bc                                    ; $6E34: $09
    nop                                           ; $6E35: $00
    add hl, de                                    ; $6E36: $19
    ld c, e                                       ; $6E37: $4B
    ld l, [hl]                                    ; $6E38: $6E
    ld b, b                                       ; $6E39: $40
    ld [hl], b                                    ; $6E3A: $70
    ld bc, $0701                                  ; $6E3B: $01 $01 $07
    ld l, [hl]                                    ; $6E3E: $6E
    rrca                                          ; $6E3F: $0F
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    halt                                          ; $6E42: $76
    db $10                                        ; $6E43: $10
    rrca                                          ; $6E44: $0F
    ld b, b                                       ; $6E45: $40
    ld h, b                                       ; $6E46: $60
    ld b, l                                       ; $6E47: $45
    jr jr_019_6E8E                                ; $6E48: $18 $44

    halt                                          ; $6E4A: $76
    dec d                                         ; $6E4B: $15
    jr nz, @-$6F                                  ; $6E4C: $20 $8F

    ld d, c                                       ; $6E4E: $51
    db $10                                        ; $6E4F: $10
    jr nz, jr_019_6E05                            ; $6E50: $20 $B3

    ld d, c                                       ; $6E52: $51
    db $10                                        ; $6E53: $10
    jr nz, jr_019_6DF1                            ; $6E54: $20 $9B

    ld d, c                                       ; $6E56: $51
    db $10                                        ; $6E57: $10
    jr nz, jr_019_6E01                            ; $6E58: $20 $A7

    ld d, c                                       ; $6E5A: $51
    db $10                                        ; $6E5B: $10
    jr nz, jr_019_6DED                            ; $6E5C: $20 $8F

    ld d, c                                       ; $6E5E: $51
    ld [$B320], sp                                ; $6E5F: $08 $20 $B3
    ld d, c                                       ; $6E62: $51
    ld [$9B20], sp                                ; $6E63: $08 $20 $9B
    ld d, c                                       ; $6E66: $51
    ld [$A720], sp                                ; $6E67: $08 $20 $A7
    ld d, c                                       ; $6E6A: $51
    ld [$1900], sp                                ; $6E6B: $08 $00 $19
    ld b, d                                       ; $6E6E: $42
    and h                                         ; $6E6F: $A4
    dec h                                         ; $6E70: $25
    and e                                         ; $6E71: $A3
    ld [$0400], sp                                ; $6E72: $08 $00 $04
    add h                                         ; $6E75: $84
    pop de                                        ; $6E76: $D1
    and h                                         ; $6E77: $A4
    dec h                                         ; $6E78: $25
    and e                                         ; $6E79: $A3
    stop                                          ; $6E7A: $10 $00
    dec b                                         ; $6E7C: $05
    add l                                         ; $6E7D: $85
    pop de                                        ; $6E7E: $D1
    sub e                                         ; $6E7F: $93
    ld h, l                                       ; $6E80: $65

jr_019_6E81:
    ld e, e                                       ; $6E81: $5B
    ld c, [hl]                                    ; $6E82: $4E
    ld c, a                                       ; $6E83: $4F
    ld h, h                                       ; $6E84: $64
    reti                                          ; $6E85: $D9


    ld d, d                                       ; $6E86: $52
    ld h, [hl]                                    ; $6E87: $66
    ret nz                                        ; $6E88: $C0

    ld e, h                                       ; $6E89: $5C
    ld hl, $E269                                  ; $6E8A: $21 $69 $E2
    ld d, d                                       ; $6E8D: $52

jr_019_6E8E:
    dec b                                         ; $6E8E: $05
    nop                                           ; $6E8F: $00
    add c                                         ; $6E90: $81
    ld e, l                                       ; $6E91: $5D
    dec b                                         ; $6E92: $05
    dec b                                         ; $6E93: $05

jr_019_6E94:
    call $00D0                                    ; $6E94: $CD $D0 $00
    jr nz, jr_019_6E94                            ; $6E97: $20 $FB

    ld d, b                                       ; $6E99: $50
    ld [hl+], a                                   ; $6E9A: $22
    dec b                                         ; $6E9B: $05
    ld b, b                                       ; $6E9C: $40
    dec b                                         ; $6E9D: $05
    ld [bc], a                                    ; $6E9E: $02
    ld l, e                                       ; $6E9F: $6B
    ld c, d                                       ; $6EA0: $4A
    dec bc                                        ; $6EA1: $0B
    dec bc                                        ; $6EA2: $0B
    jp $34D1                                      ; $6EA3: $C3 $D1 $34


    ld de, $7A1F                                  ; $6EA6: $11 $1F $7A
    ld [hl+], a                                   ; $6EA9: $22
    dec b                                         ; $6EAA: $05
    ld b, b                                       ; $6EAB: $40
    dec bc                                        ; $6EAC: $0B
    nop                                           ; $6EAD: $00
    dec b                                         ; $6EAE: $05
    rra                                           ; $6EAF: $1F
    adc $63                                       ; $6EB0: $CE $63
    ld a, [bc]                                    ; $6EB2: $0A
    add hl, bc                                    ; $6EB3: $09
    ld [hl], d                                    ; $6EB4: $72
    pop de                                        ; $6EB5: $D1
    nop                                           ; $6EB6: $00
    ld [hl+], a                                   ; $6EB7: $22
    jp c, $1940                                   ; $6EB8: $DA $40 $19

    dec [hl]                                      ; $6EBB: $35
    ld l, e                                       ; $6EBC: $6B
    dec bc                                        ; $6EBD: $0B
    nop                                           ; $6EBE: $00
    dec bc                                        ; $6EBF: $0B
    rra                                           ; $6EC0: $1F
    ld l, e                                       ; $6EC1: $6B
    inc [hl]                                      ; $6EC2: $34
    dec c                                         ; $6EC3: $0D
    jr nc, jr_019_6F30                            ; $6EC4: $30 $6A

    nop                                           ; $6EC6: $00
    add b                                         ; $6EC7: $80
    nop                                           ; $6EC8: $00
    ld l, e                                       ; $6EC9: $6B
    ld b, b                                       ; $6ECA: $40
    daa                                           ; $6ECB: $27
    nop                                           ; $6ECC: $00
    ld b, d                                       ; $6ECD: $42
    ld b, b                                       ; $6ECE: $40
    add e                                         ; $6ECF: $83
    nop                                           ; $6ED0: $00
    dec bc                                        ; $6ED1: $0B
    ld [bc], a                                    ; $6ED2: $02
    ld sp, $7F19                                  ; $6ED3: $31 $19 $7F
    ld l, [hl]                                    ; $6ED6: $6E
    ld [hl+], a                                   ; $6ED7: $22
    adc $40                                       ; $6ED8: $CE $40
    nop                                           ; $6EDA: $00
    add d                                         ; $6EDB: $82
    rra                                           ; $6EDC: $1F
    ld de, $4294                                  ; $6EDD: $11 $94 $42
    ld [bc], a                                    ; $6EE0: $02
    dec c                                         ; $6EE1: $0D
    nop                                           ; $6EE2: $00
    nop                                           ; $6EE3: $00
    rra                                           ; $6EE4: $1F
    ld b, l                                       ; $6EE5: $45
    add hl, de                                    ; $6EE6: $19
    inc d                                         ; $6EE7: $14
    ld l, h                                       ; $6EE8: $6C
    and h                                         ; $6EE9: $A4

jr_019_6EEA:
    dec l                                         ; $6EEA: $2D
    and e                                         ; $6EEB: $A3
    inc b                                         ; $6EEC: $04
    nop                                           ; $6EED: $00
    inc hl                                        ; $6EEE: $23
    sbc [hl]                                      ; $6EEF: $9E
    pop de                                        ; $6EF0: $D1
    and h                                         ; $6EF1: $A4
    dec l                                         ; $6EF2: $2D
    and e                                         ; $6EF3: $A3
    ld [$0300], sp                                ; $6EF4: $08 $00 $03
    ld a, h                                       ; $6EF7: $7C
    ret nc                                        ; $6EF8: $D0

    sub e                                         ; $6EF9: $93
    ld h, l                                       ; $6EFA: $65
    ld l, d                                       ; $6EFB: $6A
    ld c, [hl]                                    ; $6EFC: $4E
    ld c, a                                       ; $6EFD: $4F
    ld h, h                                       ; $6EFE: $64
    db $EB                                        ; $6EFF: $EB
    ld d, d                                       ; $6F00: $52
    ld h, [hl]                                    ; $6F01: $66
    ret nz                                        ; $6F02: $C0

    ld e, h                                       ; $6F03: $5C
    ld hl, $F069                                  ; $6F04: $21 $69 $F0
    ld d, d                                       ; $6F07: $52
    dec b                                         ; $6F08: $05
    nop                                           ; $6F09: $00
    add c                                         ; $6F0A: $81
    ld e, l                                       ; $6F0B: $5D
    dec b                                         ; $6F0C: $05
    dec b                                         ; $6F0D: $05

jr_019_6F0E:
    push af                                       ; $6F0E: $F5
    ret nc                                        ; $6F0F: $D0

    nop                                           ; $6F10: $00
    jr nz, jr_019_6F0E                            ; $6F11: $20 $FB

    ld d, b                                       ; $6F13: $50
    ld [hl+], a                                   ; $6F14: $22
    dec b                                         ; $6F15: $05
    ld b, b                                       ; $6F16: $40
    dec bc                                        ; $6F17: $0B
    nop                                           ; $6F18: $00
    dec b                                         ; $6F19: $05
    jr nz, jr_019_6EEA                            ; $6F1A: $20 $CE

    ld h, e                                       ; $6F1C: $63
    ld a, [bc]                                    ; $6F1D: $0A
    add hl, bc                                    ; $6F1E: $09
    cp d                                          ; $6F1F: $BA
    pop de                                        ; $6F20: $D1
    nop                                           ; $6F21: $00
    ld [hl+], a                                   ; $6F22: $22
    jp c, $1940                                   ; $6F23: $DA $40 $19

    dec [hl]                                      ; $6F26: $35
    ld l, e                                       ; $6F27: $6B
    dec b                                         ; $6F28: $05
    rra                                           ; $6F29: $1F
    adc $63                                       ; $6F2A: $CE $63
    ld a, [bc]                                    ; $6F2C: $0A
    add hl, bc                                    ; $6F2D: $09
    cp d                                          ; $6F2E: $BA
    pop de                                        ; $6F2F: $D1

jr_019_6F30:
    nop                                           ; $6F30: $00
    ld [hl+], a                                   ; $6F31: $22
    jp c, $1940                                   ; $6F32: $DA $40 $19

    dec [hl]                                      ; $6F35: $35
    ld l, e                                       ; $6F36: $6B
    dec bc                                        ; $6F37: $0B
    nop                                           ; $6F38: $00
    dec bc                                        ; $6F39: $0B
    jr nz, @+$0D                                  ; $6F3A: $20 $0B

    rra                                           ; $6F3C: $1F
    ld l, e                                       ; $6F3D: $6B
    inc [hl]                                      ; $6F3E: $34
    dec c                                         ; $6F3F: $0D
    jr nc, jr_019_6FAC                            ; $6F40: $30 $6A

    nop                                           ; $6F42: $00
    add b                                         ; $6F43: $80
    nop                                           ; $6F44: $00
    ld sp, $F919                                  ; $6F45: $31 $19 $F9
    ld l, [hl]                                    ; $6F48: $6E
    ld [hl+], a                                   ; $6F49: $22
    adc $40                                       ; $6F4A: $CE $40
    nop                                           ; $6F4C: $00
    rra                                           ; $6F4D: $1F
    ld de, $9482                                  ; $6F4E: $11 $82 $94
    ld b, d                                       ; $6F51: $42
    ld [bc], a                                    ; $6F52: $02
    nop                                           ; $6F53: $00
    cpl                                           ; $6F54: $2F
    add hl, bc                                    ; $6F55: $09
    add hl, bc                                    ; $6F56: $09
    ld b, l                                       ; $6F57: $45
    add hl, de                                    ; $6F58: $19
    sub d                                         ; $6F59: $92
    ld l, h                                       ; $6F5A: $6C
    ld [bc], a                                    ; $6F5B: $02
    dec de                                        ; $6F5C: $1B
    nop                                           ; $6F5D: $00
    inc c                                         ; $6F5E: $0C

jr_019_6F5F:
    add hl, bc                                    ; $6F5F: $09
    ld b, l                                       ; $6F60: $45
    add hl, de                                    ; $6F61: $19
    add sp, $6F                                   ; $6F62: $E8 $6F
    ld [bc], a                                    ; $6F64: $02
    dec de                                        ; $6F65: $1B
    nop                                           ; $6F66: $00
    inc [hl]                                      ; $6F67: $34
    ld a, [bc]                                    ; $6F68: $0A
    ld b, l                                       ; $6F69: $45
    add hl, de                                    ; $6F6A: $19
    ld b, h                                       ; $6F6B: $44
    ld [hl], a                                    ; $6F6C: $77
    xor h                                         ; $6F6D: $AC
    or d                                          ; $6F6E: $B2
    and d                                         ; $6F6F: $A2
    nop                                           ; $6F70: $00
    sub e                                         ; $6F71: $93
    ld h, l                                       ; $6F72: $65
    ld a, c                                       ; $6F73: $79
    ld c, [hl]                                    ; $6F74: $4E
    ld c, a                                       ; $6F75: $4F
    ld h, h                                       ; $6F76: $64
    ld sp, hl                                     ; $6F77: $F9
    ld d, d                                       ; $6F78: $52
    ld h, [hl]                                    ; $6F79: $66
    ret nz                                        ; $6F7A: $C0

    ld e, h                                       ; $6F7B: $5C
    ld hl, $0005                                  ; $6F7C: $21 $05 $00
    add c                                         ; $6F7F: $81
    ld e, l                                       ; $6F80: $5D
    dec b                                         ; $6F81: $05
    dec b                                         ; $6F82: $05

jr_019_6F83:
    ld a, l                                       ; $6F83: $7D
    ret nc                                        ; $6F84: $D0

    nop                                           ; $6F85: $00
    jr nz, jr_019_6F83                            ; $6F86: $20 $FB

    ld d, b                                       ; $6F88: $50
    ld [hl+], a                                   ; $6F89: $22
    dec b                                         ; $6F8A: $05
    ld b, b                                       ; $6F8B: $40
    dec bc                                        ; $6F8C: $0B
    nop                                           ; $6F8D: $00
    dec b                                         ; $6F8E: $05
    jr nz, jr_019_6F5F                            ; $6F8F: $20 $CE

    ld h, e                                       ; $6F91: $63
    ld a, [bc]                                    ; $6F92: $0A
    add hl, bc                                    ; $6F93: $09
    ld [c], a                                     ; $6F94: $E2
    ret nc                                        ; $6F95: $D0

    nop                                           ; $6F96: $00
    ld [hl+], a                                   ; $6F97: $22
    jp c, $1940                                   ; $6F98: $DA $40 $19

    dec [hl]                                      ; $6F9B: $35
    ld l, e                                       ; $6F9C: $6B
    dec b                                         ; $6F9D: $05
    rra                                           ; $6F9E: $1F
    adc $63                                       ; $6F9F: $CE $63
    ld a, [bc]                                    ; $6FA1: $0A
    add hl, bc                                    ; $6FA2: $09
    ld [c], a                                     ; $6FA3: $E2
    ret nc                                        ; $6FA4: $D0

    nop                                           ; $6FA5: $00
    ld [hl+], a                                   ; $6FA6: $22
    jp c, $1940                                   ; $6FA7: $DA $40 $19

    dec [hl]                                      ; $6FAA: $35
    ld l, e                                       ; $6FAB: $6B

jr_019_6FAC:
    dec bc                                        ; $6FAC: $0B
    nop                                           ; $6FAD: $00
    dec bc                                        ; $6FAE: $0B
    jr nz, @+$0D                                  ; $6FAF: $20 $0B

    rra                                           ; $6FB1: $1F
    ld l, e                                       ; $6FB2: $6B
    inc [hl]                                      ; $6FB3: $34
    dec c                                         ; $6FB4: $0D
    jr nc, jr_019_7021                            ; $6FB5: $30 $6A

    nop                                           ; $6FB7: $00
    add b                                         ; $6FB8: $80
    nop                                           ; $6FB9: $00
    ld sp, $6D19                                  ; $6FBA: $31 $19 $6D
    ld l, a                                       ; $6FBD: $6F
    ld [hl+], a                                   ; $6FBE: $22
    adc $40                                       ; $6FBF: $CE $40
    rra                                           ; $6FC1: $1F
    ld de, $8200                                  ; $6FC2: $11 $00 $82
    sub h                                         ; $6FC5: $94
    ld b, d                                       ; $6FC6: $42
    ld [bc], a                                    ; $6FC7: $02
    nop                                           ; $6FC8: $00
    dec de                                        ; $6FC9: $1B
    add hl, bc                                    ; $6FCA: $09
    inc c                                         ; $6FCB: $0C
    ld b, l                                       ; $6FCC: $45
    add hl, de                                    ; $6FCD: $19
    ld l, l                                       ; $6FCE: $6D
    ld l, a                                       ; $6FCF: $6F
    and h                                         ; $6FD0: $A4
    dec h                                         ; $6FD1: $25
    and e                                         ; $6FD2: $A3
    add b                                         ; $6FD3: $80
    nop                                           ; $6FD4: $00
    inc bc                                        ; $6FD5: $03
    di                                            ; $6FD6: $F3
    pop de                                        ; $6FD7: $D1
    and h                                         ; $6FD8: $A4
    dec l                                         ; $6FD9: $2D
    and e                                         ; $6FDA: $A3
    ld bc, $2300                                  ; $6FDB: $01 $00 $23
    dec bc                                        ; $6FDE: $0B

jr_019_6FDF:
    db $D3                                        ; $6FDF: $D3
    and h                                         ; $6FE0: $A4
    dec l                                         ; $6FE1: $2D
    and e                                         ; $6FE2: $A3
    ld [bc], a                                    ; $6FE3: $02
    nop                                           ; $6FE4: $00
    ld c, $01                                     ; $6FE5: $0E $01
    pop de                                        ; $6FE7: $D1
    ld b, e                                       ; $6FE8: $43
    rrca                                          ; $6FE9: $0F
    inc b                                         ; $6FEA: $04
    dec b                                         ; $6FEB: $05
    ld c, $19                                     ; $6FEC: $0E $19
    ld b, a                                       ; $6FEE: $47
    ld [hl], b                                    ; $6FEF: $70
    sub e                                         ; $6FF0: $93
    ld h, l                                       ; $6FF1: $65
    adc b                                         ; $6FF2: $88
    ld c, [hl]                                    ; $6FF3: $4E
    ld c, a                                       ; $6FF4: $4F
    ld h, h                                       ; $6FF5: $64
    ld b, $53                                     ; $6FF6: $06 $53
    ld h, [hl]                                    ; $6FF8: $66
    ret nz                                        ; $6FF9: $C0

    ld e, h                                       ; $6FFA: $5C
    ld hl, $0B69                                  ; $6FFB: $21 $69 $0B
    ld d, e                                       ; $6FFE: $53
    dec b                                         ; $6FFF: $05
    nop                                           ; $7000: $00
    add c                                         ; $7001: $81
    ld e, l                                       ; $7002: $5D
    dec b                                         ; $7003: $05
    dec b                                         ; $7004: $05

jr_019_7005:
    sub c                                         ; $7005: $91
    ret nc                                        ; $7006: $D0

    nop                                           ; $7007: $00
    jr nz, jr_019_7005                            ; $7008: $20 $FB

    ld d, b                                       ; $700A: $50
    ld [hl+], a                                   ; $700B: $22
    dec b                                         ; $700C: $05
    ld b, b                                       ; $700D: $40
    dec b                                         ; $700E: $05
    jr nz, jr_019_6FDF                            ; $700F: $20 $CE

    ld h, e                                       ; $7011: $63
    ld a, [bc]                                    ; $7012: $0A
    add hl, bc                                    ; $7013: $09
    ld b, $D1                                     ; $7014: $06 $D1
    nop                                           ; $7016: $00
    ld [hl+], a                                   ; $7017: $22
    jp c, $1940                                   ; $7018: $DA $40 $19

    dec [hl]                                      ; $701B: $35
    ld l, e                                       ; $701C: $6B
    dec b                                         ; $701D: $05
    rra                                           ; $701E: $1F
    adc $63                                       ; $701F: $CE $63

jr_019_7021:
    ld a, [bc]                                    ; $7021: $0A
    add hl, bc                                    ; $7022: $09
    ld b, $D1                                     ; $7023: $06 $D1
    nop                                           ; $7025: $00
    ld [hl+], a                                   ; $7026: $22
    jp c, $1940                                   ; $7027: $DA $40 $19

    dec [hl]                                      ; $702A: $35
    ld l, e                                       ; $702B: $6B
    dec bc                                        ; $702C: $0B
    nop                                           ; $702D: $00
    dec bc                                        ; $702E: $0B
    jr nz, @+$0D                                  ; $702F: $20 $0B

    rra                                           ; $7031: $1F
    ld l, e                                       ; $7032: $6B
    inc [hl]                                      ; $7033: $34
    dec c                                         ; $7034: $0D
    jr nc, jr_019_70A1                            ; $7035: $30 $6A

    nop                                           ; $7037: $00
    add b                                         ; $7038: $80
    nop                                           ; $7039: $00
    ld sp, $E819                                  ; $703A: $31 $19 $E8
    ld l, a                                       ; $703D: $6F
    ld [hl+], a                                   ; $703E: $22
    adc $40                                       ; $703F: $CE $40
    nop                                           ; $7041: $00
    add d                                         ; $7042: $82
    rra                                           ; $7043: $1F
    ld de, $4294                                  ; $7044: $11 $94 $42
    sub e                                         ; $7047: $93
    ld h, l                                       ; $7048: $65
    adc b                                         ; $7049: $88
    ld c, [hl]                                    ; $704A: $4E
    ld c, a                                       ; $704B: $4F
    ld h, h                                       ; $704C: $64
    ld b, $53                                     ; $704D: $06 $53
    ld h, [hl]                                    ; $704F: $66
    ret nz                                        ; $7050: $C0

    ld e, h                                       ; $7051: $5C
    ld hl, $0B69                                  ; $7052: $21 $69 $0B
    ld d, e                                       ; $7055: $53
    dec b                                         ; $7056: $05
    nop                                           ; $7057: $00
    add c                                         ; $7058: $81
    ld e, l                                       ; $7059: $5D
    dec b                                         ; $705A: $05
    dec b                                         ; $705B: $05

jr_019_705C:
    sub c                                         ; $705C: $91
    ret nc                                        ; $705D: $D0

    nop                                           ; $705E: $00
    jr nz, jr_019_705C                            ; $705F: $20 $FB

    ld d, b                                       ; $7061: $50
    ld [hl+], a                                   ; $7062: $22

jr_019_7063:
    dec b                                         ; $7063: $05
    ld b, b                                       ; $7064: $40
    dec b                                         ; $7065: $05
    ld [bc], a                                    ; $7066: $02
    db $ED                                        ; $7067: $ED
    ld h, e                                       ; $7068: $63
    rlca                                          ; $7069: $07
    inc b                                         ; $706A: $04
    ld [hl], a                                    ; $706B: $77
    ret nc                                        ; $706C: $D0

    inc [hl]                                      ; $706D: $34
    ld de, $7182                                  ; $706E: $11 $82 $71
    add hl, de                                    ; $7071: $19
    push af                                       ; $7072: $F5
    ld [hl], b                                    ; $7073: $70
    dec b                                         ; $7074: $05
    inc bc                                        ; $7075: $03
    db $ED                                        ; $7076: $ED
    ld h, e                                       ; $7077: $63
    dec bc                                        ; $7078: $0B
    inc bc                                        ; $7079: $03
    ld e, a                                       ; $707A: $5F
    ret nc                                        ; $707B: $D0

    inc [hl]                                      ; $707C: $34
    ld de, $7182                                  ; $707D: $11 $82 $71
    add hl, de                                    ; $7080: $19
    inc e                                         ; $7081: $1C
    ld [hl], c                                    ; $7082: $71
    dec b                                         ; $7083: $05
    inc b                                         ; $7084: $04
    db $ED                                        ; $7085: $ED
    ld h, e                                       ; $7086: $63
    rrca                                          ; $7087: $0F
    ld a, [bc]                                    ; $7088: $0A
    daa                                           ; $7089: $27
    pop de                                        ; $708A: $D1
    inc [hl]                                      ; $708B: $34
    ld de, $7182                                  ; $708C: $11 $82 $71
    add hl, de                                    ; $708F: $19
    ld b, e                                       ; $7090: $43
    ld [hl], c                                    ; $7091: $71
    dec b                                         ; $7092: $05
    jr nz, jr_019_7063                            ; $7093: $20 $CE

    ld h, e                                       ; $7095: $63
    ld a, [bc]                                    ; $7096: $0A
    add hl, bc                                    ; $7097: $09
    ld b, $D1                                     ; $7098: $06 $D1
    nop                                           ; $709A: $00
    ld [hl+], a                                   ; $709B: $22
    jp c, $1940                                   ; $709C: $DA $40 $19

    dec [hl]                                      ; $709F: $35
    ld l, e                                       ; $70A0: $6B

jr_019_70A1:
    dec b                                         ; $70A1: $05
    rra                                           ; $70A2: $1F
    adc $63                                       ; $70A3: $CE $63
    ld a, [bc]                                    ; $70A5: $0A
    add hl, bc                                    ; $70A6: $09
    ld b, $D1                                     ; $70A7: $06 $D1
    nop                                           ; $70A9: $00
    ld [hl+], a                                   ; $70AA: $22
    jp c, $1940                                   ; $70AB: $DA $40 $19

    dec [hl]                                      ; $70AE: $35
    ld l, e                                       ; $70AF: $6B
    ld l, e                                       ; $70B0: $6B
    jr nc, jr_019_70DA                            ; $70B1: $30 $27

    ret nz                                        ; $70B3: $C0

    ld d, l                                       ; $70B4: $55
    ld b, b                                       ; $70B5: $40
    add e                                         ; $70B6: $83
    nop                                           ; $70B7: $00
    dec bc                                        ; $70B8: $0B
    nop                                           ; $70B9: $00
    dec bc                                        ; $70BA: $0B
    jr nz, @+$0D                                  ; $70BB: $20 $0B

    rra                                           ; $70BD: $1F
    ld l, e                                       ; $70BE: $6B
    inc [hl]                                      ; $70BF: $34
    dec c                                         ; $70C0: $0D
    jr nc, jr_019_712D                            ; $70C1: $30 $6A

    nop                                           ; $70C3: $00
    add b                                         ; $70C4: $80
    nop                                           ; $70C5: $00
    ld sp, $E819                                  ; $70C6: $31 $19 $E8
    ld l, a                                       ; $70C9: $6F
    ld [hl+], a                                   ; $70CA: $22
    adc $40                                       ; $70CB: $CE $40
    nop                                           ; $70CD: $00
    add d                                         ; $70CE: $82
    rra                                           ; $70CF: $1F
    ld de, $0043                                  ; $70D0: $11 $43 $00
    dec h                                         ; $70D3: $25
    and c                                         ; $70D4: $A1
    jr nz, jr_019_70F0                            ; $70D5: $20 $19

    db $DB                                        ; $70D7: $DB
    ld [hl], b                                    ; $70D8: $70
    dec bc                                        ; $70D9: $0B

jr_019_70DA:
    ld [bc], a                                    ; $70DA: $02
    sub h                                         ; $70DB: $94
    ld b, b                                       ; $70DC: $40
    ld [$0043], sp                                ; $70DD: $08 $43 $00
    dec h                                         ; $70E0: $25
    and c                                         ; $70E1: $A1
    ld b, b                                       ; $70E2: $40
    add hl, de                                    ; $70E3: $19
    add sp, $70                                   ; $70E4: $E8 $70
    dec bc                                        ; $70E6: $0B
    inc bc                                        ; $70E7: $03
    ld b, b                                       ; $70E8: $40
    ld [$0043], sp                                ; $70E9: $08 $43 $00
    dec h                                         ; $70EC: $25
    and c                                         ; $70ED: $A1
    add b                                         ; $70EE: $80
    add hl, de                                    ; $70EF: $19

jr_019_70F0:
    db $F4                                        ; $70F0: $F4
    ld [hl], b                                    ; $70F1: $70
    dec bc                                        ; $70F2: $0B
    inc b                                         ; $70F3: $04
    ld b, d                                       ; $70F4: $42
    ld e, d                                       ; $70F5: $5A
    add hl, de                                    ; $70F6: $19
    ei                                            ; $70F7: $FB
    ld [hl], b                                    ; $70F8: $70
    add hl, de                                    ; $70F9: $19
    ld b, d                                       ; $70FA: $42
    add a                                         ; $70FB: $87
    nop                                           ; $70FC: $00
    daa                                           ; $70FD: $27
    ld bc, $789B                                  ; $70FE: $01 $9B $78
    ld [hl], b                                    ; $7101: $70
    sbc a                                         ; $7102: $9F
    ld d, h                                       ; $7103: $54
    ld l, a                                       ; $7104: $6F
    ld l, [hl]                                    ; $7105: $6E
    ld a, c                                       ; $7106: $79
    jr nz, jr_019_7170                            ; $7107: $20 $67

    ld l, a                                       ; $7109: $6F
    ld [hl], h                                    ; $710A: $74
    jr nz, jr_019_716E                            ; $710B: $20 $61

    rst $38                                       ; $710D: $FF
    db $FD                                        ; $710E: $FD
    sbc a                                         ; $710F: $9F
    db $FC                                        ; $7110: $FC
    cp $FD                                        ; $7111: $FE $FD
    sbc d                                         ; $7113: $9A
    ld d, [hl]                                    ; $7114: $56
    ld bc, $25AF                                  ; $7115: $01 $AF $25
    and c                                         ; $7118: $A1
    jr nz, jr_019_712D                            ; $7119: $20 $12

    ld b, d                                       ; $711B: $42
    ld e, d                                       ; $711C: $5A
    add hl, de                                    ; $711D: $19
    ld [hl+], a                                   ; $711E: $22
    ld [hl], c                                    ; $711F: $71
    add hl, de                                    ; $7120: $19
    ld b, d                                       ; $7121: $42
    add a                                         ; $7122: $87
    nop                                           ; $7123: $00
    daa                                           ; $7124: $27
    ld bc, $789B                                  ; $7125: $01 $9B $78
    ld [hl], b                                    ; $7128: $70
    sbc a                                         ; $7129: $9F
    ld d, h                                       ; $712A: $54
    ld l, a                                       ; $712B: $6F
    ld l, [hl]                                    ; $712C: $6E

jr_019_712D:
    ld a, c                                       ; $712D: $79
    jr nz, jr_019_7197                            ; $712E: $20 $67

    ld l, a                                       ; $7130: $6F
    ld [hl], h                                    ; $7131: $74
    jr nz, jr_019_7195                            ; $7132: $20 $61

    rst $38                                       ; $7134: $FF
    db $FD                                        ; $7135: $FD
    sbc a                                         ; $7136: $9F
    db $FC                                        ; $7137: $FC
    cp $FD                                        ; $7138: $FE $FD
    sbc d                                         ; $713A: $9A
    ld d, [hl]                                    ; $713B: $56
    ld bc, $25AF                                  ; $713C: $01 $AF $25
    and c                                         ; $713F: $A1
    ld b, b                                       ; $7140: $40
    ld [de], a                                    ; $7141: $12
    ld b, d                                       ; $7142: $42
    ld e, d                                       ; $7143: $5A
    add hl, de                                    ; $7144: $19
    ld c, c                                       ; $7145: $49
    ld [hl], c                                    ; $7146: $71
    add hl, de                                    ; $7147: $19
    ld b, d                                       ; $7148: $42
    add a                                         ; $7149: $87
    nop                                           ; $714A: $00
    daa                                           ; $714B: $27
    ld bc, $789B                                  ; $714C: $01 $9B $78
    ld [hl], b                                    ; $714F: $70
    sbc a                                         ; $7150: $9F
    ld d, h                                       ; $7151: $54
    ld l, a                                       ; $7152: $6F
    ld l, [hl]                                    ; $7153: $6E
    ld a, c                                       ; $7154: $79
    jr nz, jr_019_71BE                            ; $7155: $20 $67

    ld l, a                                       ; $7157: $6F
    ld [hl], h                                    ; $7158: $74
    jr nz, jr_019_71BC                            ; $7159: $20 $61

    rst $38                                       ; $715B: $FF
    db $FD                                        ; $715C: $FD
    sbc a                                         ; $715D: $9F
    db $FC                                        ; $715E: $FC
    cp $FD                                        ; $715F: $FE $FD
    sbc d                                         ; $7161: $9A
    sbc e                                         ; $7162: $9B
    ld a, b                                       ; $7163: $78
    ld [hl], b                                    ; $7164: $70
    sbc a                                         ; $7165: $9F
    ld c, b                                       ; $7166: $48
    ld h, l                                       ; $7167: $65
    ld a, c                                       ; $7168: $79
    inc l                                         ; $7169: $2C
    jr nz, jr_019_71E0                            ; $716A: $20 $74

    ld l, b                                       ; $716C: $68
    ld h, l                                       ; $716D: $65

jr_019_716E:
    ld [hl], d                                    ; $716E: $72
    ld h, l                                       ; $716F: $65

jr_019_7170:
    daa                                           ; $7170: $27
    ld [hl], e                                    ; $7171: $73
    rst $38                                       ; $7172: $FF
    ld [hl], e                                    ; $7173: $73
    ld l, a                                       ; $7174: $6F
    ld l, l                                       ; $7175: $6D
    ld h, l                                       ; $7176: $65
    ld [hl], h                                    ; $7177: $74
    ld l, b                                       ; $7178: $68
    ld l, c                                       ; $7179: $69
    ld l, [hl]                                    ; $717A: $6E
    ld h, a                                       ; $717B: $67
    jr nz, jr_019_71E7                            ; $717C: $20 $69

    ld l, [hl]                                    ; $717E: $6E
    cp $74                                        ; $717F: $FE $74
    ld l, b                                       ; $7181: $68
    ld l, c                                       ; $7182: $69
    ld [hl], e                                    ; $7183: $73
    jr nz, jr_019_71C7                            ; $7184: $20 $41

    ld l, h                                       ; $7186: $6C
    ld h, a                                       ; $7187: $67
    ld h, c                                       ; $7188: $61
    ld h, l                                       ; $7189: $65
    ld hl, $FDFE                                  ; $718A: $21 $FE $FD
    add a                                         ; $718D: $87
    nop                                           ; $718E: $00
    inc hl                                        ; $718F: $23
    ld bc, $789B                                  ; $7190: $01 $9B $78
    ld [hl], b                                    ; $7193: $70
    sbc a                                         ; $7194: $9F

jr_019_7195:
    ld d, h                                       ; $7195: $54
    ld l, a                                       ; $7196: $6F

jr_019_7197:
    ld l, [hl]                                    ; $7197: $6E
    ld a, c                                       ; $7198: $79
    jr nz, jr_019_7202                            ; $7199: $20 $67

    ld l, a                                       ; $719B: $6F
    ld [hl], h                                    ; $719C: $74
    jr nz, jr_019_7200                            ; $719D: $20 $61

    rst $38                                       ; $719F: $FF
    db $FD                                        ; $71A0: $FD
    sbc a                                         ; $71A1: $9F
    db $FC                                        ; $71A2: $FC
    cp $FD                                        ; $71A3: $FE $FD
    sbc d                                         ; $71A5: $9A
    ld d, [hl]                                    ; $71A6: $56
    ld bc, $25AF                                  ; $71A7: $01 $AF $25
    and c                                         ; $71AA: $A1
    add b                                         ; $71AB: $80
    ld [de], a                                    ; $71AC: $12
    ld b, d                                       ; $71AD: $42
    ld [bc], a                                    ; $71AE: $02
    nop                                           ; $71AF: $00
    dec de                                        ; $71B0: $1B
    ld a, [bc]                                    ; $71B1: $0A
    inc [hl]                                      ; $71B2: $34
    ld b, l                                       ; $71B3: $45
    add hl, de                                    ; $71B4: $19
    ld l, l                                       ; $71B5: $6D
    ld l, a                                       ; $71B6: $6F
    ld [bc], a                                    ; $71B7: $02
    ld a, [de]                                    ; $71B8: $1A
    ld [$1302], sp                                ; $71B9: $08 $02 $13

jr_019_71BC:
    ld b, l                                       ; $71BC: $45
    add hl, de                                    ; $71BD: $19

jr_019_71BE:
    pop bc                                        ; $71BE: $C1
    ld a, h                                       ; $71BF: $7C
    ld b, d                                       ; $71C0: $42
    ld b, e                                       ; $71C1: $43
    ld [$010F], sp                                ; $71C2: $08 $0F $01
    inc h                                         ; $71C5: $24
    and d                                         ; $71C6: $A2

jr_019_71C7:
    dec b                                         ; $71C7: $05
    nop                                           ; $71C8: $00
    rrca                                          ; $71C9: $0F
    inc b                                         ; $71CA: $04
    dec b                                         ; $71CB: $05
    ld c, $19                                     ; $71CC: $0E $19
    ld a, [bc]                                    ; $71CE: $0A
    ld a, c                                       ; $71CF: $79
    ld b, d                                       ; $71D0: $42
    ld b, e                                       ; $71D1: $43
    ld [$010F], sp                                ; $71D2: $08 $0F $01
    inc h                                         ; $71D5: $24
    and d                                         ; $71D6: $A2
    dec b                                         ; $71D7: $05
    ld bc, $040F                                  ; $71D8: $01 $0F $04
    dec b                                         ; $71DB: $05
    ld c, $19                                     ; $71DC: $0E $19
    pop hl                                        ; $71DE: $E1
    ld [hl], c                                    ; $71DF: $71

jr_019_71E0:
    ld b, d                                       ; $71E0: $42
    xor h                                         ; $71E1: $AC
    inc h                                         ; $71E2: $24
    and d                                         ; $71E3: $A2
    ld [bc], a                                    ; $71E4: $02
    ld a, [hl]                                    ; $71E5: $7E
    db $EC                                        ; $71E6: $EC

jr_019_71E7:
    db $D3                                        ; $71E7: $D3
    inc bc                                        ; $71E8: $03
    ld [bc], a                                    ; $71E9: $02
    ld a, $D0                                     ; $71EA: $3E $D0
    ld bc, $091A                                  ; $71EC: $01 $1A $09
    ld [bc], a                                    ; $71EF: $02
    add hl, de                                    ; $71F0: $19
    ld e, d                                       ; $71F1: $5A
    ld a, d                                       ; $71F2: $7A
    rlca                                          ; $71F3: $07
    nop                                           ; $71F4: $00
    ld l, e                                       ; $71F5: $6B
    ld c, d                                       ; $71F6: $4A
    add hl, bc                                    ; $71F7: $09
    nop                                           ; $71F8: $00
    add hl, de                                    ; $71F9: $19
    db $E4                                        ; $71FA: $E4
    ld a, d                                       ; $71FB: $7A
    ld b, d                                       ; $71FC: $42
    sbc e                                         ; $71FD: $9B
    jr z, jr_019_7243                             ; $71FE: $28 $43

jr_019_7200:
    sbc a                                         ; $7200: $9F
    ld b, c                                       ; $7201: $41

jr_019_7202:
    ld [hl], d                                    ; $7202: $72
    ld [hl], d                                    ; $7203: $72
    ld l, $2E                                     ; $7204: $2E $2E
    ld l, $FF                                     ; $7206: $2E $FF
    ld c, c                                       ; $7208: $49
    ld [hl], h                                    ; $7209: $74
    jr nz, jr_019_726E                            ; $720A: $20 $62

    ld h, l                                       ; $720C: $65
    jr nz, jr_019_7270                            ; $720D: $20 $61

    ld l, [hl]                                    ; $720F: $6E
    ld l, a                                       ; $7210: $6F
    ld [hl], h                                    ; $7211: $74
    ld l, b                                       ; $7212: $68
    ld h, l                                       ; $7213: $65
    ld [hl], d                                    ; $7214: $72
    cp $62                                        ; $7215: $FE $62
    ld l, a                                       ; $7217: $6F
    ld [hl], d                                    ; $7218: $72
    ld l, c                                       ; $7219: $69
    ld l, [hl]                                    ; $721A: $6E
    ld h, a                                       ; $721B: $67
    jr nz, jr_019_7282                            ; $721C: $20 $64

    ld h, c                                       ; $721E: $61
    ld a, c                                       ; $721F: $79
    ld l, $2E                                     ; $7220: $2E $2E
    ld l, $2E                                     ; $7222: $2E $2E
    rst $38                                       ; $7224: $FF
    ld c, [hl]                                    ; $7225: $4E
    ld l, a                                       ; $7226: $6F
    ld [hl], h                                    ; $7227: $74
    ld l, b                                       ; $7228: $68
    ld l, c                                       ; $7229: $69
    ld l, [hl]                                    ; $722A: $6E
    daa                                           ; $722B: $27
    jr nz, jr_019_7293                            ; $722C: $20 $65

    halt                                          ; $722E: $76
    ld h, l                                       ; $722F: $65
    ld [hl], d                                    ; $7230: $72
    cp $68                                        ; $7231: $FE $68
    ld h, c                                       ; $7233: $61
    ld [hl], b                                    ; $7234: $70
    ld [hl], b                                    ; $7235: $70
    ld h, l                                       ; $7236: $65
    ld l, [hl]                                    ; $7237: $6E
    ld [hl], e                                    ; $7238: $73
    jr nz, jr_019_729C                            ; $7239: $20 $61

    ld [hl], d                                    ; $723B: $72
    ld l, a                                       ; $723C: $6F
    ld [hl], l                                    ; $723D: $75
    ld l, [hl]                                    ; $723E: $6E
    ld h, h                                       ; $723F: $64
    rst $38                                       ; $7240: $FF
    ld l, b                                       ; $7241: $68
    ld h, l                                       ; $7242: $65

jr_019_7243:
    ld [hl], d                                    ; $7243: $72
    ld h, l                                       ; $7244: $65
    jr nz, jr_019_72A8                            ; $7245: $20 $61

    ld l, [hl]                                    ; $7247: $6E
    ld a, c                                       ; $7248: $79
    ld l, b                                       ; $7249: $68
    ld l, a                                       ; $724A: $6F
    ld l, a                                       ; $724B: $6F
    ld l, $2E                                     ; $724C: $2E $2E
    ld l, $FE                                     ; $724E: $2E $FE
    db $FD                                        ; $7250: $FD
    sbc d                                         ; $7251: $9A
    ld e, h                                       ; $7252: $5C
    ld [bc], a                                    ; $7253: $02
    inc bc                                        ; $7254: $03
    ld b, d                                       ; $7255: $42
    sbc e                                         ; $7256: $9B
    jr z, jr_019_729C                             ; $7257: $28 $43

    sbc a                                         ; $7259: $9F
    ld c, b                                       ; $725A: $48
    ld h, c                                       ; $725B: $61
    ld [hl], d                                    ; $725C: $72
    jr nz, jr_019_72C7                            ; $725D: $20 $68

    ld h, c                                       ; $725F: $61
    ld [hl], d                                    ; $7260: $72
    jr nz, jr_019_72CB                            ; $7261: $20 $68

    ld h, c                                       ; $7263: $61
    ld [hl], d                                    ; $7264: $72
    ld l, $2E                                     ; $7265: $2E $2E
    ld l, $FE                                     ; $7267: $2E $FE
    ld c, [hl]                                    ; $7269: $4E
    ld l, a                                       ; $726A: $6F
    jr nz, jr_019_72D9                            ; $726B: $20 $6C

    ld [hl], l                                    ; $726D: $75

jr_019_726E:
    ld h, e                                       ; $726E: $63
    ld l, e                                       ; $726F: $6B

jr_019_7270:
    inc l                                         ; $7270: $2C
    rst $38                                       ; $7271: $FF
    ld h, l                                       ; $7272: $65
    ld l, b                                       ; $7273: $68
    jr nz, jr_019_72CA                            ; $7274: $20 $54

    ld l, a                                       ; $7276: $6F
    ld l, [hl]                                    ; $7277: $6E
    ld h, l                                       ; $7278: $65
    ld a, c                                       ; $7279: $79
    ccf                                           ; $727A: $3F
    cp $FD                                        ; $727B: $FE $FD
    sbc d                                         ; $727D: $9A
    ld e, b                                       ; $727E: $58
    ld bc, $9B42                                  ; $727F: $01 $42 $9B

jr_019_7282:
    jr z, jr_019_72C7                             ; $7282: $28 $43

    sbc a                                         ; $7284: $9F
    ld d, a                                       ; $7285: $57
    ld h, c                                       ; $7286: $61
    ld l, c                                       ; $7287: $69
    ld [hl], h                                    ; $7288: $74
    jr nz, jr_019_72EC                            ; $7289: $20 $61

    jr nz, jr_019_7300                            ; $728B: $20 $73

    ld h, l                                       ; $728D: $65
    ld h, e                                       ; $728E: $63
    ld l, a                                       ; $728F: $6F
    ld l, [hl]                                    ; $7290: $6E
    ld h, h                                       ; $7291: $64
    inc l                                         ; $7292: $2C

jr_019_7293:
    rst $38                                       ; $7293: $FF
    ld d, h                                       ; $7294: $54
    ld l, a                                       ; $7295: $6F
    ld l, [hl]                                    ; $7296: $6E
    ld h, l                                       ; $7297: $65
    ld a, c                                       ; $7298: $79
    ld l, $FE                                     ; $7299: $2E $FE
    db $FD                                        ; $729B: $FD

jr_019_729C:
    ld e, h                                       ; $729C: $5C
    nop                                           ; $729D: $00
    inc bc                                        ; $729E: $03
    sbc e                                         ; $729F: $9B
    jr z, @+$45                                   ; $72A0: $28 $43

    sbc a                                         ; $72A2: $9F
    ld e, c                                       ; $72A3: $59
    ld h, l                                       ; $72A4: $65
    daa                                           ; $72A5: $27
    halt                                          ; $72A6: $76
    ld h, l                                       ; $72A7: $65

jr_019_72A8:
    rst $38                                       ; $72A8: $FF
    ld l, b                                       ; $72A9: $68
    ld h, l                                       ; $72AA: $65
    ld l, h                                       ; $72AB: $6C
    ld [hl], b                                    ; $72AC: $70
    ld h, l                                       ; $72AD: $65
    ld h, h                                       ; $72AE: $64
    jr nz, jr_019_731E                            ; $72AF: $20 $6D

    ld h, l                                       ; $72B1: $65
    inc l                                         ; $72B2: $2C
    cp $73                                        ; $72B3: $FE $73
    ld l, a                                       ; $72B5: $6F
    jr nz, jr_019_7319                            ; $72B6: $20 $61

    ld h, e                                       ; $72B8: $63
    ld h, e                                       ; $72B9: $63
    ld h, l                                       ; $72BA: $65
    ld [hl], b                                    ; $72BB: $70
    ld [hl], h                                    ; $72BC: $74
    jr nz, jr_019_732C                            ; $72BD: $20 $6D

    ld a, c                                       ; $72BF: $79
    rst $38                                       ; $72C0: $FF
    ld [hl], h                                    ; $72C1: $74
    ld l, b                                       ; $72C2: $68
    ld h, c                                       ; $72C3: $61
    ld l, [hl]                                    ; $72C4: $6E
    ld l, e                                       ; $72C5: $6B
    ld [hl], e                                    ; $72C6: $73

jr_019_72C7:
    jr nz, jr_019_732A                            ; $72C7: $20 $61

    ld l, [hl]                                    ; $72C9: $6E

jr_019_72CA:
    ld h, h                                       ; $72CA: $64

jr_019_72CB:
    cp $74                                        ; $72CB: $FE $74
    ld h, c                                       ; $72CD: $61
    ld l, e                                       ; $72CE: $6B
    ld h, l                                       ; $72CF: $65
    jr nz, jr_019_7346                            ; $72D0: $20 $74

    ld l, b                                       ; $72D2: $68
    ld l, c                                       ; $72D3: $69
    ld [hl], e                                    ; $72D4: $73
    ld l, $FE                                     ; $72D5: $2E $FE
    db $FD                                        ; $72D7: $FD
    add a                                         ; $72D8: $87

jr_019_72D9:
    nop                                           ; $72D9: $00
    ld e, $01                                     ; $72DA: $1E $01
    ld e, h                                       ; $72DC: $5C
    ld bc, $9B02                                  ; $72DD: $01 $02 $9B
    ld a, b                                       ; $72E0: $78
    ld [hl], b                                    ; $72E1: $70
    sbc a                                         ; $72E2: $9F
    ld b, c                                       ; $72E3: $41
    jr nz, @+$6A                                  ; $72E4: $20 $68

    ld l, a                                       ; $72E6: $6F
    ld [hl], d                                    ; $72E7: $72
    ld l, [hl]                                    ; $72E8: $6E
    ccf                                           ; $72E9: $3F
    cp $FD                                        ; $72EA: $FE $FD

jr_019_72EC:
    sbc e                                         ; $72EC: $9B
    jr z, @+$45                                   ; $72ED: $28 $43

    sbc a                                         ; $72EF: $9F
    ld b, c                                       ; $72F0: $41
    ld [hl], d                                    ; $72F1: $72
    ld [hl], d                                    ; $72F2: $72
    ld hl, $49FE                                  ; $72F3: $21 $FE $49
    ld h, [hl]                                    ; $72F6: $66
    jr nz, jr_019_7372                            ; $72F7: $20 $79

    ld h, l                                       ; $72F9: $65
    ld [hl], d                                    ; $72FA: $72
    jr nz, jr_019_7362                            ; $72FB: $20 $65

    halt                                          ; $72FD: $76
    ld h, l                                       ; $72FE: $65
    ld [hl], d                                    ; $72FF: $72

jr_019_7300:
    rst $38                                       ; $7300: $FF
    ld l, c                                       ; $7301: $69
    ld l, [hl]                                    ; $7302: $6E
    jr nz, jr_019_7379                            ; $7303: $20 $74

    ld [hl], d                                    ; $7305: $72
    ld l, a                                       ; $7306: $6F
    ld [hl], l                                    ; $7307: $75
    ld h, d                                       ; $7308: $62
    ld l, h                                       ; $7309: $6C
    ld h, l                                       ; $730A: $65
    cp $61                                        ; $730B: $FE $61
    ld l, [hl]                                    ; $730D: $6E
    ld h, h                                       ; $730E: $64
    jr nz, jr_019_735A                            ; $730F: $20 $49

    daa                                           ; $7311: $27
    ld l, l                                       ; $7312: $6D
    jr nz, jr_019_737E                            ; $7313: $20 $69

    ld l, [hl]                                    ; $7315: $6E
    rst $38                                       ; $7316: $FF
    ld h, l                                       ; $7317: $65
    ld h, c                                       ; $7318: $61

jr_019_7319:
    ld [hl], d                                    ; $7319: $72
    ld [hl], e                                    ; $731A: $73
    ld l, b                                       ; $731B: $68
    ld l, a                                       ; $731C: $6F
    ld [hl], h                                    ; $731D: $74

jr_019_731E:
    inc l                                         ; $731E: $2C
    cp $49                                        ; $731F: $FE $49
    daa                                           ; $7321: $27
    ld l, h                                       ; $7322: $6C
    ld l, h                                       ; $7323: $6C
    jr nz, jr_019_7388                            ; $7324: $20 $62

    ld h, l                                       ; $7326: $65
    jr nz, jr_019_738C                            ; $7327: $20 $63

    ld l, a                                       ; $7329: $6F

jr_019_732A:
    ld l, l                                       ; $732A: $6D
    ld l, c                                       ; $732B: $69

jr_019_732C:
    ld l, [hl]                                    ; $732C: $6E
    daa                                           ; $732D: $27
    rst $38                                       ; $732E: $FF
    ld [hl], h                                    ; $732F: $74
    ld l, a                                       ; $7330: $6F
    jr nz, @+$6A                                  ; $7331: $20 $68

    ld h, l                                       ; $7333: $65
    ld l, h                                       ; $7334: $6C
    ld [hl], b                                    ; $7335: $70
    jr nz, jr_019_73B1                            ; $7336: $20 $79

    ld h, c                                       ; $7338: $61
    jr nz, @+$71                                  ; $7339: $20 $6F

    ld [hl], l                                    ; $733B: $75
    ld [hl], h                                    ; $733C: $74
    ld l, $FE                                     ; $733D: $2E $FE
    db $FD                                        ; $733F: $FD
    sbc e                                         ; $7340: $9B
    ld a, b                                       ; $7341: $78
    ld [hl], b                                    ; $7342: $70
    sbc a                                         ; $7343: $9F
    ld d, h                                       ; $7344: $54
    ld l, b                                       ; $7345: $68

jr_019_7346:
    ld h, c                                       ; $7346: $61
    ld l, [hl]                                    ; $7347: $6E
    ld l, e                                       ; $7348: $6B
    ld [hl], e                                    ; $7349: $73
    inc l                                         ; $734A: $2C
    cp $49                                        ; $734B: $FE $49
    jr nz, @+$63                                  ; $734D: $20 $61

    ld [hl], b                                    ; $734F: $70
    ld [hl], b                                    ; $7350: $70
    ld [hl], d                                    ; $7351: $72
    ld h, l                                       ; $7352: $65
    ld h, e                                       ; $7353: $63
    ld l, c                                       ; $7354: $69
    ld h, c                                       ; $7355: $61
    ld [hl], h                                    ; $7356: $74
    ld h, l                                       ; $7357: $65
    rst $38                                       ; $7358: $FF
    ld l, c                                       ; $7359: $69

jr_019_735A:
    ld [hl], h                                    ; $735A: $74
    ld l, $FE                                     ; $735B: $2E $FE
    db $FD                                        ; $735D: $FD
    sbc e                                         ; $735E: $9B
    jr z, @+$45                                   ; $735F: $28 $43

    sbc a                                         ; $7361: $9F

jr_019_7362:
    ld c, [hl]                                    ; $7362: $4E
    ld l, a                                       ; $7363: $6F
    jr nz, jr_019_73D6                            ; $7364: $20 $70

    ld [hl], d                                    ; $7366: $72
    ld l, a                                       ; $7367: $6F
    ld h, d                                       ; $7368: $62
    ld l, h                                       ; $7369: $6C
    ld h, l                                       ; $736A: $65
    ld l, l                                       ; $736B: $6D
    inc l                                         ; $736C: $2C
    rst $38                                       ; $736D: $FF
    ld l, l                                       ; $736E: $6D
    ld h, c                                       ; $736F: $61
    ld [hl], h                                    ; $7370: $74
    ld h, l                                       ; $7371: $65

jr_019_7372:
    ld a, c                                       ; $7372: $79
    ld hl, $46FE                                  ; $7373: $21 $FE $46
    ld [hl], d                                    ; $7376: $72
    ld h, l                                       ; $7377: $65
    ld h, l                                       ; $7378: $65

jr_019_7379:
    jr nz, @+$63                                  ; $7379: $20 $61

    ld [hl], h                                    ; $737B: $74
    jr nz, jr_019_73EA                            ; $737C: $20 $6C

jr_019_737E:
    ld h, c                                       ; $737E: $61
    ld [hl], e                                    ; $737F: $73
    ld [hl], h                                    ; $7380: $74
    rst $38                                       ; $7381: $FF
    ld h, [hl]                                    ; $7382: $66
    ld [hl], d                                    ; $7383: $72
    ld l, a                                       ; $7384: $6F
    ld l, l                                       ; $7385: $6D
    jr nz, @+$6F                                  ; $7386: $20 $6D

jr_019_7388:
    ld h, l                                       ; $7388: $65
    jr nz, @+$64                                  ; $7389: $20 $62

    ld l, a                                       ; $738B: $6F

jr_019_738C:
    ld [hl], d                                    ; $738C: $72
    ld l, c                                       ; $738D: $69
    ld l, [hl]                                    ; $738E: $6E
    ld h, a                                       ; $738F: $67
    cp $64                                        ; $7390: $FE $64
    ld [hl], l                                    ; $7392: $75
    ld [hl], h                                    ; $7393: $74
    ld a, c                                       ; $7394: $79
    inc l                                         ; $7395: $2C
    cp $61                                        ; $7396: $FE $61
    ld l, [hl]                                    ; $7398: $6E
    ld h, h                                       ; $7399: $64
    jr nz, jr_019_73E5                            ; $739A: $20 $49

    daa                                           ; $739C: $27
    halt                                          ; $739D: $76
    ld h, l                                       ; $739E: $65
    rst $38                                       ; $739F: $FF
    ld h, a                                       ; $73A0: $67
    ld l, a                                       ; $73A1: $6F
    ld [hl], h                                    ; $73A2: $74
    jr nz, jr_019_741E                            ; $73A3: $20 $79

    ld h, l                                       ; $73A5: $65
    jr nz, jr_019_741C                            ; $73A6: $20 $74

    ld l, a                                       ; $73A8: $6F
    cp $74                                        ; $73A9: $FE $74
    ld l, b                                       ; $73AB: $68
    ld h, c                                       ; $73AC: $61
    ld l, [hl]                                    ; $73AD: $6E
    ld l, e                                       ; $73AE: $6B
    jr nz, @+$68                                  ; $73AF: $20 $66

jr_019_73B1:
    ld h, l                                       ; $73B1: $65
    ld [hl], d                                    ; $73B2: $72
    jr nz, jr_019_741E                            ; $73B3: $20 $69

    ld [hl], h                                    ; $73B5: $74
    ld l, $FE                                     ; $73B6: $2E $FE
    ld b, d                                       ; $73B8: $42
    ld l, a                                       ; $73B9: $6F
    ld l, [hl]                                    ; $73BA: $6E
    jr nz, jr_019_7433                            ; $73BB: $20 $76

    ld l, a                                       ; $73BD: $6F
    ld a, c                                       ; $73BE: $79
    ld h, c                                       ; $73BF: $61
    ld h, a                                       ; $73C0: $67
    ld h, l                                       ; $73C1: $65
    ld hl, $FDFE                                  ; $73C2: $21 $FE $FD
    sbc d                                         ; $73C5: $9A
    ld e, h                                       ; $73C6: $5C
    ld [bc], a                                    ; $73C7: $02
    ld [bc], a                                    ; $73C8: $02
    ld b, d                                       ; $73C9: $42
    sbc e                                         ; $73CA: $9B
    ld a, b                                       ; $73CB: $78
    ld [hl], b                                    ; $73CC: $70
    sbc a                                         ; $73CD: $9F
    ld c, a                                       ; $73CE: $4F
    ld l, b                                       ; $73CF: $68
    jr nz, jr_019_7449                            ; $73D0: $20 $77

    ld h, l                                       ; $73D2: $65
    ld l, h                                       ; $73D3: $6C
    ld l, h                                       ; $73D4: $6C
    inc l                                         ; $73D5: $2C

jr_019_73D6:
    rst $38                                       ; $73D6: $FF
    ld h, d                                       ; $73D7: $62
    ld h, c                                       ; $73D8: $61
    ld h, e                                       ; $73D9: $63
    ld l, e                                       ; $73DA: $6B
    jr nz, jr_019_7451                            ; $73DB: $20 $74

    ld l, a                                       ; $73DD: $6F
    jr nz, jr_019_7423                            ; $73DE: $20 $43

    ld h, c                                       ; $73E0: $61
    ld l, h                                       ; $73E1: $6C
    ld h, h                                       ; $73E2: $64
    ld l, $FE                                     ; $73E3: $2E $FE

jr_019_73E5:
    db $FD                                        ; $73E5: $FD

jr_019_73E6:
    sbc d                                         ; $73E6: $9A
    ld e, h                                       ; $73E7: $5C
    inc bc                                        ; $73E8: $03
    ld [bc], a                                    ; $73E9: $02

jr_019_73EA:
    ld b, d                                       ; $73EA: $42
    sbc e                                         ; $73EB: $9B
    jr z, jr_019_7431                             ; $73EC: $28 $43

    sbc a                                         ; $73EE: $9F
    ld b, c                                       ; $73EF: $41
    halt                                          ; $73F0: $76
    ld h, c                                       ; $73F1: $61
    ld [hl], e                                    ; $73F2: $73
    ld [hl], h                                    ; $73F3: $74
    ld hl, $FF21                                  ; $73F4: $21 $21 $FF
    ld b, c                                       ; $73F7: $41
    ld l, [hl]                                    ; $73F8: $6E
    ld h, e                                       ; $73F9: $63
    ld l, b                                       ; $73FA: $68
    ld l, a                                       ; $73FB: $6F
    ld [hl], d                                    ; $73FC: $72
    ld [hl], e                                    ; $73FD: $73
    ld hl, $FF21                                  ; $73FE: $21 $21 $FF
    ld b, c                                       ; $7401: $41
    ld [hl], d                                    ; $7402: $72
    ld [hl], d                                    ; $7403: $72
    ld l, $2E                                     ; $7404: $2E $2E
    ld l, $2E                                     ; $7406: $2E $2E
    rst $38                                       ; $7408: $FF
    ld l, $2E                                     ; $7409: $2E $2E
    ld l, $2E                                     ; $740B: $2E $2E
    ld l, $2E                                     ; $740D: $2E $2E
    ld l, $FE                                     ; $740F: $2E $FE
    db $FD                                        ; $7411: $FD
    ld e, b                                       ; $7412: $58
    ld bc, $219F                                  ; $7413: $01 $9F $21
    ld hl, $FDFE                                  ; $7416: $21 $FE $FD
    sbc d                                         ; $7419: $9A
    dec b                                         ; $741A: $05
    ld [bc], a                                    ; $741B: $02

jr_019_741C:
    db $ED                                        ; $741C: $ED
    ld h, e                                       ; $741D: $63

jr_019_741E:
    dec de                                        ; $741E: $1B
    dec b                                         ; $741F: $05
    rst $08                                       ; $7420: $CF
    ret nc                                        ; $7421: $D0

    nop                                           ; $7422: $00

jr_019_7423:
    ld c, $85                                     ; $7423: $0E $85
    ld c, e                                       ; $7425: $4B
    add hl, de                                    ; $7426: $19
    ld d, c                                       ; $7427: $51
    ld a, d                                       ; $7428: $7A
    rlca                                          ; $7429: $07
    nop                                           ; $742A: $00
    add c                                         ; $742B: $81
    ld e, l                                       ; $742C: $5D
    add hl, bc                                    ; $742D: $09
    nop                                           ; $742E: $00
    jr nz, jr_019_73E6                            ; $742F: $20 $B5

jr_019_7431:
    ld d, b                                       ; $7431: $50
    ld b, d                                       ; $7432: $42

jr_019_7433:
    sbc e                                         ; $7433: $9B
    jr z, jr_019_7479                             ; $7434: $28 $43

    sbc a                                         ; $7436: $9F
    ld c, c                                       ; $7437: $49
    jr nz, jr_019_749E                            ; $7438: $20 $64

    ld l, a                                       ; $743A: $6F
    ld l, [hl]                                    ; $743B: $6E
    daa                                           ; $743C: $27
    ld [hl], h                                    ; $743D: $74
    rst $38                                       ; $743E: $FF
    ld l, e                                       ; $743F: $6B
    ld l, [hl]                                    ; $7440: $6E
    ld l, a                                       ; $7441: $6F
    ld [hl], a                                    ; $7442: $77
    jr nz, jr_019_74AD                            ; $7443: $20 $68

    ld l, a                                       ; $7445: $6F
    ld [hl], a                                    ; $7446: $77
    jr nz, jr_019_74C2                            ; $7447: $20 $79

jr_019_7449:
    ld h, l                                       ; $7449: $65
    cp $64                                        ; $744A: $FE $64
    ld l, c                                       ; $744C: $69
    ld h, h                                       ; $744D: $64
    jr nz, jr_019_74B9                            ; $744E: $20 $69

    ld [hl], h                                    ; $7450: $74

jr_019_7451:
    inc l                                         ; $7451: $2C
    rst $38                                       ; $7452: $FF
    ld d, h                                       ; $7453: $54
    ld l, a                                       ; $7454: $6F
    ld l, [hl]                                    ; $7455: $6E
    ld h, l                                       ; $7456: $65
    ld a, c                                       ; $7457: $79
    ld l, $2E                                     ; $7458: $2E $2E
    ld l, $FE                                     ; $745A: $2E $FE
    db $FD                                        ; $745C: $FD
    sbc d                                         ; $745D: $9A
    ld e, b                                       ; $745E: $58
    ld bc, $9B42                                  ; $745F: $01 $42 $9B
    jr z, jr_019_74A7                             ; $7462: $28 $43

    sbc a                                         ; $7464: $9F
    ld b, c                                       ; $7465: $41
    halt                                          ; $7466: $76
    ld h, c                                       ; $7467: $61
    ld [hl], e                                    ; $7468: $73
    ld [hl], h                                    ; $7469: $74
    ld hl, $FF21                                  ; $746A: $21 $21 $FF
    db $FD                                        ; $746D: $FD
    sbc a                                         ; $746E: $9F
    ld b, c                                       ; $746F: $41
    ld l, [hl]                                    ; $7470: $6E
    ld h, e                                       ; $7471: $63
    ld l, b                                       ; $7472: $68
    ld l, a                                       ; $7473: $6F
    ld [hl], d                                    ; $7474: $72
    ld [hl], e                                    ; $7475: $73
    ld hl, $FF21                                  ; $7476: $21 $21 $FF

jr_019_7479:
    db $FD                                        ; $7479: $FD
    sbc d                                         ; $747A: $9A
    ld e, h                                       ; $747B: $5C
    inc bc                                        ; $747C: $03
    inc bc                                        ; $747D: $03
    sbc e                                         ; $747E: $9B
    jr z, @+$45                                   ; $747F: $28 $43

    sbc a                                         ; $7481: $9F
    ld b, c                                       ; $7482: $41
    ld l, b                                       ; $7483: $68
    ld l, a                                       ; $7484: $6F
    ld a, c                                       ; $7485: $79
    jr nz, jr_019_7501                            ; $7486: $20 $79

    ld h, c                                       ; $7488: $61
    rst $38                                       ; $7489: $FF
    ld [hl], e                                    ; $748A: $73
    ld h, e                                       ; $748B: $63
    ld h, c                                       ; $748C: $61
    ld l, h                                       ; $748D: $6C
    ld l, h                                       ; $748E: $6C
    ld a, c                                       ; $748F: $79
    ld [hl], a                                    ; $7490: $77
    ld h, c                                       ; $7491: $61
    ld h, a                                       ; $7492: $67
    ld hl, $5720                                  ; $7493: $21 $20 $57
    ld l, b                                       ; $7496: $68
    ld l, a                                       ; $7497: $6F
    cp $62                                        ; $7498: $FE $62
    ld h, l                                       ; $749A: $65
    jr nz, jr_019_7516                            ; $749B: $20 $79

    ld h, l                                       ; $749D: $65

jr_019_749E:
    inc l                                         ; $749E: $2C
    jr nz, jr_019_7502                            ; $749F: $20 $61

    ld l, [hl]                                    ; $74A1: $6E
    ld h, h                                       ; $74A2: $64
    jr nz, jr_019_751C                            ; $74A3: $20 $77

    ld l, b                                       ; $74A5: $68
    ld h, c                                       ; $74A6: $61

jr_019_74A7:
    ld [hl], h                                    ; $74A7: $74
    rst $38                                       ; $74A8: $FF
    ld a, c                                       ; $74A9: $79
    ld h, l                                       ; $74AA: $65
    jr nz, @+$64                                  ; $74AB: $20 $62

jr_019_74AD:
    ld h, l                                       ; $74AD: $65
    jr nz, jr_019_7514                            ; $74AE: $20 $64

    ld l, a                                       ; $74B0: $6F
    ld l, c                                       ; $74B1: $69
    ld l, [hl]                                    ; $74B2: $6E
    daa                                           ; $74B3: $27
    cp $74                                        ; $74B4: $FE $74
    ld l, b                                       ; $74B6: $68
    ld h, l                                       ; $74B7: $65
    ld [hl], d                                    ; $74B8: $72

jr_019_74B9:
    ld h, l                                       ; $74B9: $65
    ccf                                           ; $74BA: $3F
    cp $FD                                        ; $74BB: $FE $FD
    sbc e                                         ; $74BD: $9B
    ld a, b                                       ; $74BE: $78
    ld [hl], b                                    ; $74BF: $70
    sbc a                                         ; $74C0: $9F
    ld c, l                                       ; $74C1: $4D

jr_019_74C2:
    ld a, c                                       ; $74C2: $79
    jr nz, jr_019_7533                            ; $74C3: $20 $6E

    ld h, c                                       ; $74C5: $61
    ld l, l                                       ; $74C6: $6D
    ld h, l                                       ; $74C7: $65
    jr nz, jr_019_7533                            ; $74C8: $20 $69

    ld [hl], e                                    ; $74CA: $73
    rst $38                                       ; $74CB: $FF
    ld d, h                                       ; $74CC: $54
    ld l, a                                       ; $74CD: $6F
    ld l, [hl]                                    ; $74CE: $6E
    ld a, c                                       ; $74CF: $79
    ld l, $20                                     ; $74D0: $2E $20
    ld c, c                                       ; $74D2: $49
    jr nz, jr_019_7538                            ; $74D3: $20 $63

    ld h, c                                       ; $74D5: $61
    ld l, l                                       ; $74D6: $6D
    ld h, l                                       ; $74D7: $65
    jr nz, jr_019_754E                            ; $74D8: $20 $74

    ld l, a                                       ; $74DA: $6F
    cp $6F                                        ; $74DB: $FE $6F
    ld [hl], b                                    ; $74DD: $70
    ld h, l                                       ; $74DE: $65
    ld l, [hl]                                    ; $74DF: $6E
    jr nz, jr_019_7556                            ; $74E0: $20 $74

    ld l, b                                       ; $74E2: $68
    ld h, l                                       ; $74E3: $65
    jr nz, jr_019_755C                            ; $74E4: $20 $76

    ld h, c                                       ; $74E6: $61
    ld [hl], l                                    ; $74E7: $75
    ld l, h                                       ; $74E8: $6C
    ld [hl], h                                    ; $74E9: $74
    ld l, $FE                                     ; $74EA: $2E $FE
    db $FD                                        ; $74EC: $FD
    sbc e                                         ; $74ED: $9B
    jr z, jr_019_7533                             ; $74EE: $28 $43

    sbc a                                         ; $74F0: $9F
    ld c, c                                       ; $74F1: $49
    ld [hl], e                                    ; $74F2: $73
    jr nz, jr_019_7569                            ; $74F3: $20 $74

    ld l, b                                       ; $74F5: $68
    ld h, c                                       ; $74F6: $61
    ld [hl], h                                    ; $74F7: $74
    jr nz, jr_019_756D                            ; $74F8: $20 $73

    ld l, a                                       ; $74FA: $6F
    inc l                                         ; $74FB: $2C
    jr nz, jr_019_7577                            ; $74FC: $20 $79

    ld h, l                                       ; $74FE: $65
    rst $38                                       ; $74FF: $FF
    ld [hl], e                                    ; $7500: $73

jr_019_7501:
    ld l, c                                       ; $7501: $69

jr_019_7502:
    ld l, h                                       ; $7502: $6C
    ld l, h                                       ; $7503: $6C
    ld a, c                                       ; $7504: $79
    jr nz, jr_019_7577                            ; $7505: $20 $70

    ld l, a                                       ; $7507: $6F
    ld l, a                                       ; $7508: $6F
    ld [hl], b                                    ; $7509: $70
    ld h, h                                       ; $750A: $64
    ld h, l                                       ; $750B: $65
    ld h, e                                       ; $750C: $63
    ld l, e                                       ; $750D: $6B
    cp $73                                        ; $750E: $FE $73
    ld [hl], a                                    ; $7510: $77
    ld h, c                                       ; $7511: $61
    ld h, d                                       ; $7512: $62
    ld h, d                                       ; $7513: $62

jr_019_7514:
    ld h, l                                       ; $7514: $65
    ld [hl], d                                    ; $7515: $72

jr_019_7516:
    ccf                                           ; $7516: $3F
    jr nz, @+$4B                                  ; $7517: $20 $49

    rst $38                                       ; $7519: $FF
    ld [hl], h                                    ; $751A: $74
    ld l, b                                       ; $751B: $68

jr_019_751C:
    ld l, c                                       ; $751C: $69
    ld l, [hl]                                    ; $751D: $6E
    ld l, e                                       ; $751E: $6B
    jr nz, jr_019_758E                            ; $751F: $20 $6D

    ld h, c                                       ; $7521: $61
    ld a, c                                       ; $7522: $79
    ld h, d                                       ; $7523: $62
    ld h, l                                       ; $7524: $65
    jr nz, jr_019_75A0                            ; $7525: $20 $79

    ld h, l                                       ; $7527: $65
    ld [hl], d                                    ; $7528: $72
    cp $75                                        ; $7529: $FE $75
    ld [hl], b                                    ; $752B: $70
    jr nz, jr_019_75A2                            ; $752C: $20 $74

    ld l, a                                       ; $752E: $6F
    rst $38                                       ; $752F: $FF
    ld [hl], e                                    ; $7530: $73
    ld l, a                                       ; $7531: $6F
    ld l, l                                       ; $7532: $6D

jr_019_7533:
    ld h, l                                       ; $7533: $65
    ld [hl], h                                    ; $7534: $74
    ld l, b                                       ; $7535: $68
    ld l, c                                       ; $7536: $69
    ld l, [hl]                                    ; $7537: $6E

jr_019_7538:
    daa                                           ; $7538: $27
    ld hl, $FDFE                                  ; $7539: $21 $FE $FD
    sbc e                                         ; $753C: $9B
    ld a, b                                       ; $753D: $78
    ld [hl], b                                    ; $753E: $70
    sbc a                                         ; $753F: $9F
    ld c, [hl]                                    ; $7540: $4E
    ld l, a                                       ; $7541: $6F
    inc l                                         ; $7542: $2C
    jr nz, jr_019_758E                            ; $7543: $20 $49

    jr nz, @+$79                                  ; $7545: $20 $77

    ld h, c                                       ; $7547: $61
    ld [hl], e                                    ; $7548: $73
    jr nz, @+$75                                  ; $7549: $20 $73

    ld h, l                                       ; $754B: $65
    ld l, [hl]                                    ; $754C: $6E
    ld [hl], h                                    ; $754D: $74

jr_019_754E:
    rst $38                                       ; $754E: $FF
    ld h, d                                       ; $754F: $62
    ld a, c                                       ; $7550: $79
    dec l                                         ; $7551: $2D
    dec l                                         ; $7552: $2D
    cp $FD                                        ; $7553: $FE $FD
    sbc e                                         ; $7555: $9B

jr_019_7556:
    jr z, @+$45                                   ; $7556: $28 $43

    sbc a                                         ; $7558: $9F
    ld e, c                                       ; $7559: $59
    ld l, a                                       ; $755A: $6F
    ld [hl], l                                    ; $755B: $75

jr_019_755C:
    jr nz, @+$65                                  ; $755C: $20 $63

    ld l, a                                       ; $755E: $6F
    ld l, l                                       ; $755F: $6D
    ld h, l                                       ; $7560: $65
    jr nz, @+$76                                  ; $7561: $20 $74

    ld l, a                                       ; $7563: $6F
    rst $38                                       ; $7564: $FF
    ld [hl], d                                    ; $7565: $72
    ld l, c                                       ; $7566: $69
    ld h, h                                       ; $7567: $64
    ld l, c                                       ; $7568: $69

jr_019_7569:
    ld h, e                                       ; $7569: $63
    ld [hl], l                                    ; $756A: $75
    ld l, h                                       ; $756B: $6C
    ld h, l                                       ; $756C: $65

jr_019_756D:
    jr nz, jr_019_75DC                            ; $756D: $20 $6D

    ld h, l                                       ; $756F: $65
    inc l                                         ; $7570: $2C
    cp $27                                        ; $7571: $FE $27
    ld h, c                                       ; $7573: $61
    halt                                          ; $7574: $76
    ld h, l                                       ; $7575: $65
    ld l, [hl]                                    ; $7576: $6E

jr_019_7577:
    daa                                           ; $7577: $27
    ld [hl], h                                    ; $7578: $74
    jr nz, jr_019_75F4                            ; $7579: $20 $79

    ld h, l                                       ; $757B: $65
    ccf                                           ; $757C: $3F
    cp $FD                                        ; $757D: $FE $FD
    sbc e                                         ; $757F: $9B
    ld a, b                                       ; $7580: $78
    ld [hl], b                                    ; $7581: $70
    sbc a                                         ; $7582: $9F
    ld c, [hl]                                    ; $7583: $4E
    ld l, a                                       ; $7584: $6F
    inc l                                         ; $7585: $2C
    jr nz, jr_019_75F2                            ; $7586: $20 $6A

    ld [hl], l                                    ; $7588: $75
    ld [hl], e                                    ; $7589: $73
    ld [hl], h                                    ; $758A: $74
    jr nz, @+$6E                                  ; $758B: $20 $6C

    ld l, c                                       ; $758D: $69

jr_019_758E:
    ld [hl], e                                    ; $758E: $73
    ld [hl], h                                    ; $758F: $74
    ld h, l                                       ; $7590: $65
    ld l, [hl]                                    ; $7591: $6E
    rst $38                                       ; $7592: $FF
    ld h, [hl]                                    ; $7593: $66
    ld l, a                                       ; $7594: $6F
    ld [hl], d                                    ; $7595: $72
    jr nz, @+$63                                  ; $7596: $20 $61

    dec l                                         ; $7598: $2D
    dec l                                         ; $7599: $2D
    cp $FD                                        ; $759A: $FE $FD
    sbc e                                         ; $759C: $9B
    jr z, jr_019_75E2                             ; $759D: $28 $43

    sbc a                                         ; $759F: $9F

jr_019_75A0:
    ld b, c                                       ; $75A0: $41
    ld [hl], d                                    ; $75A1: $72

jr_019_75A2:
    ld [hl], d                                    ; $75A2: $72
    inc l                                         ; $75A3: $2C
    jr nz, jr_019_760F                            ; $75A4: $20 $69

    ld [hl], h                                    ; $75A6: $74
    daa                                           ; $75A7: $27
    ld [hl], e                                    ; $75A8: $73
    jr nz, jr_019_761F                            ; $75A9: $20 $74

    ld l, b                                       ; $75AB: $68
    ld h, l                                       ; $75AC: $65
    rst $38                                       ; $75AD: $FF
    ld h, l                                       ; $75AE: $65
    ld a, c                                       ; $75AF: $79
    ld h, l                                       ; $75B0: $65
    ld [hl], b                                    ; $75B1: $70
    ld h, c                                       ; $75B2: $61
    ld [hl], h                                    ; $75B3: $74
    ld h, e                                       ; $75B4: $63
    ld l, b                                       ; $75B5: $68
    inc l                                         ; $75B6: $2C
    jr nz, jr_019_7622                            ; $75B7: $20 $69

    ld [hl], e                                    ; $75B9: $73
    ld l, [hl]                                    ; $75BA: $6E
    daa                                           ; $75BB: $27
    ld [hl], h                                    ; $75BC: $74
    cp $69                                        ; $75BD: $FE $69
    ld [hl], h                                    ; $75BF: $74
    ld l, $20                                     ; $75C0: $2E $20
    ld c, c                                       ; $75C2: $49
    jr nz, @+$79                                  ; $75C3: $20 $77

    ld h, c                                       ; $75C5: $61
    ld l, [hl]                                    ; $75C6: $6E
    ld [hl], h                                    ; $75C7: $74
    ld h, l                                       ; $75C8: $65
    ld h, h                                       ; $75C9: $64
    jr nz, jr_019_762D                            ; $75CA: $20 $61

    rst $38                                       ; $75CC: $FF
    ld h, d                                       ; $75CD: $62
    ld l, h                                       ; $75CE: $6C
    ld h, c                                       ; $75CF: $61
    ld h, e                                       ; $75D0: $63
    ld l, e                                       ; $75D1: $6B
    jr nz, jr_019_7649                            ; $75D2: $20 $75

    ld l, [hl]                                    ; $75D4: $6E
    inc l                                         ; $75D5: $2C
    jr nz, jr_019_763A                            ; $75D6: $20 $62

    ld [hl], l                                    ; $75D8: $75
    ld [hl], h                                    ; $75D9: $74
    jr nz, jr_019_7625                            ; $75DA: $20 $49

jr_019_75DC:
    cp $65                                        ; $75DC: $FE $65
    ld l, [hl]                                    ; $75DE: $6E
    ld h, h                                       ; $75DF: $64
    ld h, l                                       ; $75E0: $65
    ld h, h                                       ; $75E1: $64

jr_019_75E2:
    jr nz, jr_019_7659                            ; $75E2: $20 $75

    ld [hl], b                                    ; $75E4: $70
    jr nz, jr_019_765E                            ; $75E5: $20 $77

    ld l, c                                       ; $75E7: $69
    ld [hl], h                                    ; $75E8: $74
    ld l, b                                       ; $75E9: $68
    dec l                                         ; $75EA: $2D
    dec l                                         ; $75EB: $2D
    cp $FD                                        ; $75EC: $FE $FD
    sbc e                                         ; $75EE: $9B
    ld a, b                                       ; $75EF: $78
    ld [hl], b                                    ; $75F0: $70
    sbc a                                         ; $75F1: $9F

jr_019_75F2:
    ld c, h                                       ; $75F2: $4C
    ld c, c                                       ; $75F3: $49

jr_019_75F4:
    ld d, e                                       ; $75F4: $53
    ld d, h                                       ; $75F5: $54
    ld b, l                                       ; $75F6: $45
    ld c, [hl]                                    ; $75F7: $4E
    ld hl, $4920                                  ; $75F8: $21 $20 $49
    jr nz, jr_019_7674                            ; $75FB: $20 $77

    ld h, c                                       ; $75FD: $61
    ld [hl], e                                    ; $75FE: $73
    rst $38                                       ; $75FF: $FF
    ld [hl], e                                    ; $7600: $73
    ld h, l                                       ; $7601: $65
    ld l, [hl]                                    ; $7602: $6E
    ld [hl], h                                    ; $7603: $74
    jr nz, jr_019_7668                            ; $7604: $20 $62

    ld a, c                                       ; $7606: $79
    jr nz, @+$76                                  ; $7607: $20 $74

    ld l, b                                       ; $7609: $68
    ld h, l                                       ; $760A: $65
    cp $45                                        ; $760B: $FE $45
    ld l, h                                       ; $760D: $6C
    ld h, h                                       ; $760E: $64

jr_019_760F:
    ld h, l                                       ; $760F: $65
    ld [hl], d                                    ; $7610: $72
    jr nz, jr_019_767C                            ; $7611: $20 $69

    ld l, [hl]                                    ; $7613: $6E
    jr nz, jr_019_7659                            ; $7614: $20 $43

    ld h, c                                       ; $7616: $61
    ld l, h                                       ; $7617: $6C
    ld h, h                                       ; $7618: $64
    ld l, $FE                                     ; $7619: $2E $FE
    ld c, b                                       ; $761B: $48
    ld h, l                                       ; $761C: $65
    jr nz, jr_019_7693                            ; $761D: $20 $74

jr_019_761F:
    ld l, a                                       ; $761F: $6F
    ld l, h                                       ; $7620: $6C
    ld h, h                                       ; $7621: $64

jr_019_7622:
    jr nz, @+$6F                                  ; $7622: $20 $6D

    ld h, l                                       ; $7624: $65

jr_019_7625:
    jr nz, jr_019_769B                            ; $7625: $20 $74

    ld l, a                                       ; $7627: $6F
    rst $38                                       ; $7628: $FF
    ld l, a                                       ; $7629: $6F
    ld [hl], b                                    ; $762A: $70
    ld h, l                                       ; $762B: $65
    ld l, [hl]                                    ; $762C: $6E

jr_019_762D:
    jr nz, jr_019_76A3                            ; $762D: $20 $74

    ld l, b                                       ; $762F: $68
    ld h, l                                       ; $7630: $65
    jr nz, jr_019_76A9                            ; $7631: $20 $76

    ld h, c                                       ; $7633: $61
    ld [hl], l                                    ; $7634: $75
    ld l, h                                       ; $7635: $6C
    ld [hl], h                                    ; $7636: $74
    ld l, $FE                                     ; $7637: $2E $FE
    db $FD                                        ; $7639: $FD

jr_019_763A:
    sbc e                                         ; $763A: $9B
    jr z, @+$45                                   ; $763B: $28 $43

    sbc a                                         ; $763D: $9F
    ld b, l                                       ; $763E: $45
    ld l, h                                       ; $763F: $6C
    ld h, h                                       ; $7640: $64
    ld h, l                                       ; $7641: $65
    ld [hl], d                                    ; $7642: $72
    ccf                                           ; $7643: $3F
    jr nz, jr_019_7689                            ; $7644: $20 $43

    ld h, c                                       ; $7646: $61
    ld l, h                                       ; $7647: $6C
    ld h, h                                       ; $7648: $64

jr_019_7649:
    ccf                                           ; $7649: $3F
    jr nz, jr_019_769A                            ; $764A: $20 $4E

    ld l, a                                       ; $764C: $6F
    rst $38                                       ; $764D: $FF
    ld l, c                                       ; $764E: $69
    ld h, h                                       ; $764F: $64
    ld h, l                                       ; $7650: $65
    ld h, c                                       ; $7651: $61
    jr nz, jr_019_76CB                            ; $7652: $20 $77

    ld l, b                                       ; $7654: $68
    ld h, c                                       ; $7655: $61
    ld [hl], h                                    ; $7656: $74
    jr nz, jr_019_76D2                            ; $7657: $20 $79

jr_019_7659:
    ld h, l                                       ; $7659: $65
    ld [hl], d                                    ; $765A: $72
    cp $74                                        ; $765B: $FE $74
    ld h, c                                       ; $765D: $61

jr_019_765E:
    ld l, h                                       ; $765E: $6C
    ld l, e                                       ; $765F: $6B
    ld l, c                                       ; $7660: $69
    ld l, [hl]                                    ; $7661: $6E
    daa                                           ; $7662: $27
    jr nz, jr_019_76C6                            ; $7663: $20 $61

    ld h, d                                       ; $7665: $62
    ld l, a                                       ; $7666: $6F
    ld [hl], l                                    ; $7667: $75

jr_019_7668:
    ld [hl], h                                    ; $7668: $74
    inc l                                         ; $7669: $2C
    rst $38                                       ; $766A: $FF
    ld l, l                                       ; $766B: $6D
    ld h, c                                       ; $766C: $61
    ld [hl], h                                    ; $766D: $74
    ld h, l                                       ; $766E: $65
    ld a, c                                       ; $766F: $79
    ld l, $20                                     ; $7670: $2E $20
    ld e, c                                       ; $7672: $59
    ld l, a                                       ; $7673: $6F

jr_019_7674:
    ld [hl], l                                    ; $7674: $75
    daa                                           ; $7675: $27
    ld h, h                                       ; $7676: $64
    cp $62                                        ; $7677: $FE $62
    ld h, l                                       ; $7679: $65
    ld [hl], e                                    ; $767A: $73
    ld [hl], h                                    ; $767B: $74

jr_019_767C:
    jr nz, jr_019_76E0                            ; $767C: $20 $62

    ld h, l                                       ; $767E: $65
    jr nz, jr_019_76E8                            ; $767F: $20 $67

    ld l, c                                       ; $7681: $69
    halt                                          ; $7682: $76
    ld l, c                                       ; $7683: $69
    ld l, [hl]                                    ; $7684: $6E
    daa                                           ; $7685: $27
    rst $38                                       ; $7686: $FF
    ld [hl], l                                    ; $7687: $75
    ld [hl], b                                    ; $7688: $70

jr_019_7689:
    jr nz, jr_019_76F4                            ; $7689: $20 $69

    ld h, [hl]                                    ; $768B: $66
    jr nz, jr_019_7707                            ; $768C: $20 $79

    ld l, a                                       ; $768E: $6F
    ld [hl], l                                    ; $768F: $75
    jr nz, jr_019_7709                            ; $7690: $20 $77

    ld h, c                                       ; $7692: $61

jr_019_7693:
    ld l, [hl]                                    ; $7693: $6E
    ld [hl], h                                    ; $7694: $74
    cp $74                                        ; $7695: $FE $74
    ld h, c                                       ; $7697: $61
    jr nz, jr_019_7709                            ; $7698: $20 $6F

jr_019_769A:
    ld [hl], b                                    ; $769A: $70

jr_019_769B:
    ld h, l                                       ; $769B: $65
    ld l, [hl]                                    ; $769C: $6E
    jr nz, jr_019_7713                            ; $769D: $20 $74

    ld l, b                                       ; $769F: $68
    ld h, l                                       ; $76A0: $65
    rst $38                                       ; $76A1: $FF
    halt                                          ; $76A2: $76

jr_019_76A3:
    ld h, c                                       ; $76A3: $61
    ld [hl], l                                    ; $76A4: $75
    ld l, h                                       ; $76A5: $6C
    ld [hl], h                                    ; $76A6: $74
    ld l, $20                                     ; $76A7: $2E $20

jr_019_76A9:
    ld c, [hl]                                    ; $76A9: $4E
    ld l, a                                       ; $76AA: $6F
    ld h, d                                       ; $76AB: $62
    ld l, a                                       ; $76AC: $6F
    ld h, h                                       ; $76AD: $64
    ld a, c                                       ; $76AE: $79
    daa                                           ; $76AF: $27
    ld [hl], e                                    ; $76B0: $73
    cp $65                                        ; $76B1: $FE $65
    halt                                          ; $76B3: $76
    ld h, l                                       ; $76B4: $65
    ld [hl], d                                    ; $76B5: $72
    jr nz, jr_019_771A                            ; $76B6: $20 $62

    ld h, l                                       ; $76B8: $65
    ld h, l                                       ; $76B9: $65
    ld l, [hl]                                    ; $76BA: $6E
    jr nz, jr_019_771E                            ; $76BB: $20 $61

    ld h, d                                       ; $76BD: $62
    ld l, h                                       ; $76BE: $6C
    ld h, l                                       ; $76BF: $65
    cp $74                                        ; $76C0: $FE $74
    ld l, a                                       ; $76C2: $6F
    ld l, $FE                                     ; $76C3: $2E $FE
    db $FD                                        ; $76C5: $FD

jr_019_76C6:
    sbc e                                         ; $76C6: $9B
    ld a, b                                       ; $76C7: $78
    ld [hl], b                                    ; $76C8: $70
    sbc a                                         ; $76C9: $9F
    ld e, c                                       ; $76CA: $59

jr_019_76CB:
    ld l, a                                       ; $76CB: $6F
    ld [hl], l                                    ; $76CC: $75
    jr nz, jr_019_773C                            ; $76CD: $20 $6D

    ld h, l                                       ; $76CF: $65
    ld h, c                                       ; $76D0: $61
    ld l, [hl]                                    ; $76D1: $6E

jr_019_76D2:
    jr nz, @+$76                                  ; $76D2: $20 $74

    ld l, b                                       ; $76D4: $68
    ld h, l                                       ; $76D5: $65
    rst $38                                       ; $76D6: $FF
    ld l, e                                       ; $76D7: $6B
    ld h, l                                       ; $76D8: $65
    ld a, c                                       ; $76D9: $79
    jr nz, jr_019_7740                            ; $76DA: $20 $64

    ld l, a                                       ; $76DC: $6F
    ld h, l                                       ; $76DD: $65
    ld [hl], e                                    ; $76DE: $73
    ld l, [hl]                                    ; $76DF: $6E

jr_019_76E0:
    daa                                           ; $76E0: $27
    ld [hl], h                                    ; $76E1: $74
    cp $77                                        ; $76E2: $FE $77
    ld l, a                                       ; $76E4: $6F
    ld [hl], d                                    ; $76E5: $72
    ld l, e                                       ; $76E6: $6B
    ccf                                           ; $76E7: $3F

jr_019_76E8:
    cp $FD                                        ; $76E8: $FE $FD
    sbc e                                         ; $76EA: $9B
    jr z, jr_019_7730                             ; $76EB: $28 $43

    sbc a                                         ; $76ED: $9F
    ld c, e                                       ; $76EE: $4B
    ld h, l                                       ; $76EF: $65
    ld a, c                                       ; $76F0: $79
    ccf                                           ; $76F1: $3F
    jr nz, jr_019_774B                            ; $76F2: $20 $57

jr_019_76F4:
    ld l, b                                       ; $76F4: $68
    ld h, c                                       ; $76F5: $61
    ld [hl], h                                    ; $76F6: $74
    jr nz, jr_019_775B                            ; $76F7: $20 $62

    ld h, l                                       ; $76F9: $65
    jr nz, jr_019_775D                            ; $76FA: $20 $61

    rst $38                                       ; $76FC: $FF
    ld l, e                                       ; $76FD: $6B
    ld h, l                                       ; $76FE: $65
    ld a, c                                       ; $76FF: $79
    ccf                                           ; $7700: $3F
    cp $FD                                        ; $7701: $FE $FD
    sbc e                                         ; $7703: $9B
    ld a, b                                       ; $7704: $78
    ld [hl], b                                    ; $7705: $70
    sbc a                                         ; $7706: $9F

jr_019_7707:
    ld l, $2E                                     ; $7707: $2E $2E

jr_019_7709:
    ld l, $2E                                     ; $7709: $2E $2E
    ld l, $2E                                     ; $770B: $2E $2E
    ld l, $2E                                     ; $770D: $2E $2E
    ld l, $FE                                     ; $770F: $2E $FE
    db $FD                                        ; $7711: $FD
    sbc d                                         ; $7712: $9A

jr_019_7713:
    ld e, b                                       ; $7713: $58
    inc l                                         ; $7714: $2C
    ld b, d                                       ; $7715: $42
    sbc e                                         ; $7716: $9B
    jr z, jr_019_775C                             ; $7717: $28 $43

    sbc a                                         ; $7719: $9F

jr_019_771A:
    ld e, c                                       ; $771A: $59
    ld h, l                                       ; $771B: $65
    jr nz, jr_019_778B                            ; $771C: $20 $6D

jr_019_771E:
    ld h, c                                       ; $771E: $61

jr_019_771F:
    ld a, c                                       ; $771F: $79
    jr nz, @+$63                                  ; $7720: $20 $61

    ld [hl], e                                    ; $7722: $73
    rst $38                                       ; $7723: $FF
    ld [hl], a                                    ; $7724: $77
    ld h, l                                       ; $7725: $65
    ld l, h                                       ; $7726: $6C
    ld l, h                                       ; $7727: $6C
    jr nz, jr_019_7791                            ; $7728: $20 $67

    ld l, c                                       ; $772A: $69
    halt                                          ; $772B: $76
    ld h, l                                       ; $772C: $65
    jr nz, jr_019_7798                            ; $772D: $20 $69

    ld [hl], h                                    ; $772F: $74

jr_019_7730:
    cp $61                                        ; $7730: $FE $61
    jr nz, jr_019_77A8                            ; $7732: $20 $74

    ld [hl], d                                    ; $7734: $72
    ld a, c                                       ; $7735: $79
    inc l                                         ; $7736: $2C
    jr nz, jr_019_778D                            ; $7737: $20 $54

    ld l, a                                       ; $7739: $6F
    ld l, [hl]                                    ; $773A: $6E
    ld h, l                                       ; $773B: $65

jr_019_773C:
    ld a, c                                       ; $773C: $79
    ld l, $FE                                     ; $773D: $2E $FE
    db $FD                                        ; $773F: $FD

jr_019_7740:
    sbc d                                         ; $7740: $9A
    ld e, b                                       ; $7741: $58
    ld bc, $AC42                                  ; $7742: $01 $42 $AC
    or d                                          ; $7745: $B2
    and d                                         ; $7746: $A2
    ld bc, $0F43                                  ; $7747: $01 $43 $0F
    inc b                                         ; $774A: $04

jr_019_774B:
    dec b                                         ; $774B: $05
    ld c, $19                                     ; $774C: $0E $19
    cp a                                          ; $774E: $BF
    ld a, b                                       ; $774F: $78
    sub e                                         ; $7750: $93
    ld h, l                                       ; $7751: $65

jr_019_7752:
    sub a                                         ; $7752: $97
    ld c, [hl]                                    ; $7753: $4E
    ld c, a                                       ; $7754: $4F
    ld h, h                                       ; $7755: $64
    jr jr_019_77AB                                ; $7756: $18 $53

    ld l, c                                       ; $7758: $69
    ld [hl-], a                                   ; $7759: $32
    ld d, e                                       ; $775A: $53

jr_019_775B:
    ld h, [hl]                                    ; $775B: $66

jr_019_775C:
    ret nz                                        ; $775C: $C0

jr_019_775D:
    ld e, h                                       ; $775D: $5C
    ld hl, $0005                                  ; $775E: $21 $05 $00
    add c                                         ; $7761: $81
    ld e, l                                       ; $7762: $5D
    dec b                                         ; $7763: $05
    dec b                                         ; $7764: $05
    cp c                                          ; $7765: $B9
    ret nc                                        ; $7766: $D0

    nop                                           ; $7767: $00
    jr nz, jr_019_771F                            ; $7768: $20 $B5

    ld d, b                                       ; $776A: $50
    ld [hl+], a                                   ; $776B: $22
    dec b                                         ; $776C: $05
    ld b, b                                       ; $776D: $40
    dec bc                                        ; $776E: $0B
    nop                                           ; $776F: $00
    nop                                           ; $7770: $00
    rra                                           ; $7771: $1F
    ld de, $7E82                                  ; $7772: $11 $82 $7E
    db $EC                                        ; $7775: $EC
    db $D3                                        ; $7776: $D3
    inc bc                                        ; $7777: $03
    ld [bc], a                                    ; $7778: $02
    ld a, $D0                                     ; $7779: $3E $D0
    ld bc, $941A                                  ; $777B: $01 $1A $94
    ld b, d                                       ; $777E: $42
    xor h                                         ; $777F: $AC
    or d                                          ; $7780: $B2
    and d                                         ; $7781: $A2
    ld bc, $6593                                  ; $7782: $01 $93 $65
    sub a                                         ; $7785: $97
    ld c, [hl]                                    ; $7786: $4E
    ld c, a                                       ; $7787: $4F
    ld h, h                                       ; $7788: $64
    jr jr_019_77DE                                ; $7789: $18 $53

jr_019_778B:
    ld h, [hl]                                    ; $778B: $66
    ret nz                                        ; $778C: $C0

jr_019_778D:
    ld e, h                                       ; $778D: $5C
    ld hl, $3269                                  ; $778E: $21 $69 $32

jr_019_7791:
    ld d, e                                       ; $7791: $53
    dec b                                         ; $7792: $05
    nop                                           ; $7793: $00
    add c                                         ; $7794: $81
    ld e, l                                       ; $7795: $5D
    dec b                                         ; $7796: $05
    dec b                                         ; $7797: $05

jr_019_7798:
    cp c                                          ; $7798: $B9
    ret nc                                        ; $7799: $D0

    nop                                           ; $779A: $00
    jr nz, jr_019_7752                            ; $779B: $20 $B5

    ld d, b                                       ; $779D: $50
    ld [hl+], a                                   ; $779E: $22
    dec b                                         ; $779F: $05
    ld b, b                                       ; $77A0: $40
    dec bc                                        ; $77A1: $0B
    nop                                           ; $77A2: $00
    ld l, e                                       ; $77A3: $6B
    jr nc, jr_019_77B0                            ; $77A4: $30 $0A

    ld [hl], b                                    ; $77A6: $70
    ld b, h                                       ; $77A7: $44

jr_019_77A8:
    nop                                           ; $77A8: $00
    add b                                         ; $77A9: $80
    nop                                           ; $77AA: $00

jr_019_77AB:
    nop                                           ; $77AB: $00
    rra                                           ; $77AC: $1F
    ld de, $4382                                  ; $77AD: $11 $82 $43

jr_019_77B0:
    ld [$010F], sp                                ; $77B0: $08 $0F $01
    inc h                                         ; $77B3: $24
    and d                                         ; $77B4: $A2
    dec b                                         ; $77B5: $05
    ld bc, $040F                                  ; $77B6: $01 $0F $04
    dec b                                         ; $77B9: $05
    ld c, $19                                     ; $77BA: $0E $19
    jp c, Jump_019_7E77                           ; $77BC: $DA $77 $7E

    db $EC                                        ; $77BF: $EC
    db $D3                                        ; $77C0: $D3
    inc bc                                        ; $77C1: $03
    ld [bc], a                                    ; $77C2: $02
    ld a, $D0                                     ; $77C3: $3E $D0
    ld bc, $051A                                  ; $77C5: $01 $1A $05
    ld [bc], a                                    ; $77C8: $02
    db $ED                                        ; $77C9: $ED
    ld h, e                                       ; $77CA: $63
    dec de                                        ; $77CB: $1B
    dec b                                         ; $77CC: $05
    rst $08                                       ; $77CD: $CF
    ret nc                                        ; $77CE: $D0

    nop                                           ; $77CF: $00
    ld c, $85                                     ; $77D0: $0E $85
    ld c, e                                       ; $77D2: $4B
    add hl, de                                    ; $77D3: $19
    ld d, c                                       ; $77D4: $51
    ld a, d                                       ; $77D5: $7A
    dec bc                                        ; $77D6: $0B
    ld [bc], a                                    ; $77D7: $02
    sub h                                         ; $77D8: $94
    ld b, d                                       ; $77D9: $42
    dec b                                         ; $77DA: $05
    ld [bc], a                                    ; $77DB: $02
    db $ED                                        ; $77DC: $ED
    ld h, e                                       ; $77DD: $63

jr_019_77DE:
    ld a, [de]                                    ; $77DE: $1A
    inc bc                                        ; $77DF: $03
    add [hl]                                      ; $77E0: $86
    ret nc                                        ; $77E1: $D0

    nop                                           ; $77E2: $00
    ld c, $8F                                     ; $77E3: $0E $8F
    ld c, e                                       ; $77E5: $4B
    add hl, de                                    ; $77E6: $19
    ld c, c                                       ; $77E7: $49
    ld a, d                                       ; $77E8: $7A
    dec bc                                        ; $77E9: $0B
    ld [bc], a                                    ; $77EA: $02
    sub h                                         ; $77EB: $94
    ld b, d                                       ; $77EC: $42
    xor h                                         ; $77ED: $AC
    or d                                          ; $77EE: $B2
    and d                                         ; $77EF: $A2
    ld bc, $6593                                  ; $77F0: $01 $93 $65
    sub a                                         ; $77F3: $97
    ld c, [hl]                                    ; $77F4: $4E
    ld c, a                                       ; $77F5: $4F
    ld h, h                                       ; $77F6: $64
    jr jr_019_784C                                ; $77F7: $18 $53

    ld l, c                                       ; $77F9: $69
    ld [hl-], a                                   ; $77FA: $32
    ld d, e                                       ; $77FB: $53
    ld h, [hl]                                    ; $77FC: $66
    ret nz                                        ; $77FD: $C0

    ld e, h                                       ; $77FE: $5C
    ld hl, $0005                                  ; $77FF: $21 $05 $00

jr_019_7802:
    ld l, e                                       ; $7802: $6B
    ld c, d                                       ; $7803: $4A
    dec de                                        ; $7804: $1B
    ld [bc], a                                    ; $7805: $02
    ld h, e                                       ; $7806: $63
    ret nc                                        ; $7807: $D0

    nop                                           ; $7808: $00
    add hl, de                                    ; $7809: $19
    ld b, l                                       ; $780A: $45
    ld a, b                                       ; $780B: $78
    ld [hl+], a                                   ; $780C: $22
    dec b                                         ; $780D: $05
    ld b, b                                       ; $780E: $40
    dec b                                         ; $780F: $05
    ld [bc], a                                    ; $7810: $02
    ld l, e                                       ; $7811: $6B
    ld c, d                                       ; $7812: $4A
    dec de                                        ; $7813: $1B
    ld [bc], a                                    ; $7814: $02

jr_019_7815:
    ld h, e                                       ; $7815: $63
    ret nc                                        ; $7816: $D0

    nop                                           ; $7817: $00
    add hl, de                                    ; $7818: $19
    add d                                         ; $7819: $82
    ld a, b                                       ; $781A: $78
    ld [hl+], a                                   ; $781B: $22
    dec b                                         ; $781C: $05
    ld b, b                                       ; $781D: $40
    dec bc                                        ; $781E: $0B
    nop                                           ; $781F: $00
    ld l, e                                       ; $7820: $6B
    jr nc, jr_019_782D                            ; $7821: $30 $0A

    ld [hl], b                                    ; $7823: $70
    ld b, h                                       ; $7824: $44
    nop                                           ; $7825: $00
    add b                                         ; $7826: $80
    nop                                           ; $7827: $00
    rra                                           ; $7828: $1F
    ld de, $7E82                                  ; $7829: $11 $82 $7E
    db $EC                                        ; $782C: $EC

jr_019_782D:
    db $D3                                        ; $782D: $D3
    inc bc                                        ; $782E: $03
    ld [bc], a                                    ; $782F: $02
    ld a, $D0                                     ; $7830: $3E $D0
    ld bc, $941A                                  ; $7832: $01 $1A $94
    ld e, h                                       ; $7835: $5C
    inc bc                                        ; $7836: $03
    ld [bc], a                                    ; $7837: $02
    xor c                                         ; $7838: $A9
    rrca                                          ; $7839: $0F
    nop                                           ; $783A: $00
    rlca                                          ; $783B: $07
    nop                                           ; $783C: $00
    add c                                         ; $783D: $81
    ld e, l                                       ; $783E: $5D
    add hl, bc                                    ; $783F: $09
    nop                                           ; $7840: $00
    jr nz, jr_019_7802                            ; $7841: $20 $BF

    ld d, b                                       ; $7843: $50
    ld b, d                                       ; $7844: $42
    dec d                                         ; $7845: $15
    jr nz, jr_019_7815                            ; $7846: $20 $CD

    ld c, a                                       ; $7848: $4F

jr_019_7849:
    jr nz, jr_019_786B                            ; $7849: $20 $20

jr_019_784B:
    db $DD                                        ; $784B: $DD

jr_019_784C:
    ld c, a                                       ; $784C: $4F
    jr nz, jr_019_784F                            ; $784D: $20 $00

jr_019_784F:
    ld e, e                                       ; $784F: $5B
    add hl, de                                    ; $7850: $19
    add c                                         ; $7851: $81
    ld [hl], d                                    ; $7852: $72
    ld b, b                                       ; $7853: $40
    jr @+$0D                                      ; $7854: $18 $0B

    ld [bc], a                                    ; $7856: $02
    inc d                                         ; $7857: $14
    jr nz, jr_019_784B                            ; $7858: $20 $F1

    ld d, b                                       ; $785A: $50
    ld e, h                                       ; $785B: $5C
    nop                                           ; $785C: $00
    inc bc                                        ; $785D: $03
    ld b, b                                       ; $785E: $40
    ld [$2014], sp                                ; $785F: $08 $14 $20
    ret                                           ; $7862: $C9


    ld d, b                                       ; $7863: $50
    ld e, h                                       ; $7864: $5C
    ld [bc], a                                    ; $7865: $02
    inc bc                                        ; $7866: $03
    dec d                                         ; $7867: $15
    jr nz, @-$35                                  ; $7868: $20 $C9

    ld d, b                                       ; $786A: $50

jr_019_786B:
    ld [$DD20], sp                                ; $786B: $08 $20 $DD
    ld d, b                                       ; $786E: $50
    ld [$B520], sp                                ; $786F: $08 $20 $B5
    ld d, b                                       ; $7872: $50
    db $10                                        ; $7873: $10
    jr nz, jr_019_7849                            ; $7874: $20 $D3

    ld d, b                                       ; $7876: $50
    ld [$BF20], sp                                ; $7877: $08 $20 $BF
    ld d, b                                       ; $787A: $50
    ld [$5B00], sp                                ; $787B: $08 $00 $5B
    add hl, de                                    ; $787E: $19
    jp z, Jump_019_4273                           ; $787F: $CA $73 $42

    inc d                                         ; $7882: $14
    ld c, $8F                                     ; $7883: $0E $8F
    ld c, e                                       ; $7885: $4B
    ld e, h                                       ; $7886: $5C
    nop                                           ; $7887: $00
    inc bc                                        ; $7888: $03
    dec d                                         ; $7889: $15
    ld c, $55                                     ; $788A: $0E $55
    ld c, e                                       ; $788C: $4B
    stop                                          ; $788D: $10 $00
    ld d, $0E                                     ; $788F: $16 $0E
    ld h, l                                       ; $7891: $65
    ld c, e                                       ; $7892: $4B
    inc c                                         ; $7893: $0C
    cp $00                                        ; $7894: $FE $00
    nop                                           ; $7896: $00
    ld d, $0E                                     ; $7897: $16 $0E
    sbc c                                         ; $7899: $99
    ld c, e                                       ; $789A: $4B
    inc c                                         ; $789B: $0C
    cp $00                                        ; $789C: $FE $00
    nop                                           ; $789E: $00
    ld e, h                                       ; $789F: $5C
    ld bc, $1502                                  ; $78A0: $01 $02 $15
    ld c, $65                                     ; $78A3: $0E $65
    ld c, e                                       ; $78A5: $4B
    inc c                                         ; $78A6: $0C
    ld c, $75                                     ; $78A7: $0E $75
    ld c, e                                       ; $78A9: $4B
    inc c                                         ; $78AA: $0C
    ld c, $99                                     ; $78AB: $0E $99
    ld c, e                                       ; $78AD: $4B
    nop                                           ; $78AE: $00
    nop                                           ; $78AF: $00

jr_019_78B0:
    ld e, h                                       ; $78B0: $5C
    ld [bc], a                                    ; $78B1: $02
    inc bc                                        ; $78B2: $03
    dec d                                         ; $78B3: $15
    ld c, $55                                     ; $78B4: $0E $55
    ld c, e                                       ; $78B6: $4B
    ld [$650E], sp                                ; $78B7: $08 $0E $65
    ld c, e                                       ; $78BA: $4B
    ld b, b                                       ; $78BB: $40
    nop                                           ; $78BC: $00
    add hl, de                                    ; $78BD: $19
    ld b, d                                       ; $78BE: $42
    xor h                                         ; $78BF: $AC
    or d                                          ; $78C0: $B2
    and d                                         ; $78C1: $A2
    ld bc, $1143                                  ; $78C2: $01 $43 $11
    ld bc, $A224                                  ; $78C5: $01 $24 $A2
    dec b                                         ; $78C8: $05
    nop                                           ; $78C9: $00
    add hl, de                                    ; $78CA: $19
    ld a, a                                       ; $78CB: $7F
    ld [hl], a                                    ; $78CC: $77
    sub e                                         ; $78CD: $93
    ld h, l                                       ; $78CE: $65
    sub a                                         ; $78CF: $97
    ld c, [hl]                                    ; $78D0: $4E
    ld c, a                                       ; $78D1: $4F
    ld h, h                                       ; $78D2: $64
    dec h                                         ; $78D3: $25
    ld d, e                                       ; $78D4: $53
    ld l, c                                       ; $78D5: $69
    ld [hl-], a                                   ; $78D6: $32
    ld d, e                                       ; $78D7: $53
    ld h, [hl]                                    ; $78D8: $66
    ret nz                                        ; $78D9: $C0

    ld e, h                                       ; $78DA: $5C
    ld hl, $0005                                  ; $78DB: $21 $05 $00
    add c                                         ; $78DE: $81
    ld e, l                                       ; $78DF: $5D
    dec b                                         ; $78E0: $05
    dec b                                         ; $78E1: $05
    cp c                                          ; $78E2: $B9
    ret nc                                        ; $78E3: $D0

jr_019_78E4:
    nop                                           ; $78E4: $00
    jr nz, jr_019_78B0                            ; $78E5: $20 $C9

    ld d, b                                       ; $78E7: $50
    ld [hl+], a                                   ; $78E8: $22
    dec b                                         ; $78E9: $05
    ld b, b                                       ; $78EA: $40
    dec b                                         ; $78EB: $05
    ld [bc], a                                    ; $78EC: $02
    db $ED                                        ; $78ED: $ED
    ld h, e                                       ; $78EE: $63
    jr jr_019_78F5                                ; $78EF: $18 $04

    xor b                                         ; $78F1: $A8
    ret nc                                        ; $78F2: $D0

    nop                                           ; $78F3: $00
    add hl, de                                    ; $78F4: $19

jr_019_78F5:
    ld [hl], a                                    ; $78F5: $77
    ld a, c                                       ; $78F6: $79
    add hl, de                                    ; $78F7: $19
    ld c, c                                       ; $78F8: $49
    ld a, d                                       ; $78F9: $7A
    dec bc                                        ; $78FA: $0B
    nop                                           ; $78FB: $00
    ld l, e                                       ; $78FC: $6B
    jr nc, jr_019_7909                            ; $78FD: $30 $0A

    ld [hl], b                                    ; $78FF: $70
    ld b, h                                       ; $7900: $44
    nop                                           ; $7901: $00
    add b                                         ; $7902: $80
    nop                                           ; $7903: $00
    rra                                           ; $7904: $1F
    ld de, $8200                                  ; $7905: $11 $00 $82
    sub h                                         ; $7908: $94

jr_019_7909:
    ld b, d                                       ; $7909: $42
    rlca                                          ; $790A: $07
    nop                                           ; $790B: $00
    ld l, e                                       ; $790C: $6B
    ld c, d                                       ; $790D: $4A
    add hl, bc                                    ; $790E: $09

jr_019_790F:
    nop                                           ; $790F: $00
    add hl, de                                    ; $7910: $19
    jr jr_019_798C                                ; $7911: $18 $79

    rra                                           ; $7913: $1F
    rla                                           ; $7914: $17
    dec bc                                        ; $7915: $0B
    ld [bc], a                                    ; $7916: $02

jr_019_7917:
    ld b, d                                       ; $7917: $42
    inc d                                         ; $7918: $14
    jr nz, jr_019_78E4                            ; $7919: $20 $C9

    ld d, b                                       ; $791B: $50
    ld e, h                                       ; $791C: $5C
    nop                                           ; $791D: $00

jr_019_791E:
    ld [bc], a                                    ; $791E: $02
    dec d                                         ; $791F: $15
    jr nz, jr_019_790F                            ; $7920: $20 $ED

    ld c, a                                       ; $7922: $4F
    ld b, b                                       ; $7923: $40
    jr nz, jr_019_7917                            ; $7924: $20 $F1

    ld d, b                                       ; $7926: $50
    db $10                                        ; $7927: $10
    jr nz, @-$4B                                  ; $7928: $20 $B3

jr_019_792A:
    ld c, a                                       ; $792A: $4F
    stop                                          ; $792B: $10 $00
    ld d, $20                                     ; $792D: $16 $20
    db $ED                                        ; $792F: $ED
    ld c, a                                       ; $7930: $4F
    jr z, jr_019_7934                             ; $7931: $28 $01

    nop                                           ; $7933: $00

jr_019_7934:
    nop                                           ; $7934: $00
    dec d                                         ; $7935: $15
    jr nz, @-$11                                  ; $7936: $20 $ED

    ld c, a                                       ; $7938: $4F
    ld [$C920], sp                                ; $7939: $08 $20 $C9
    ld d, b                                       ; $793C: $50
    jr nz, jr_019_793F                            ; $793D: $20 $00

jr_019_793F:
    ld e, h                                       ; $793F: $5C
    ld bc, $1502                                  ; $7940: $01 $02 $15
    jr nz, @-$11                                  ; $7943: $20 $ED

    ld c, a                                       ; $7945: $4F
    ld b, b                                       ; $7946: $40
    jr nz, @-$49                                  ; $7947: $20 $B5

    ld d, b                                       ; $7949: $50
    jr nz, jr_019_796C                            ; $794A: $20 $20

    db $D3                                        ; $794C: $D3
    ld d, b                                       ; $794D: $50
    jr nz, jr_019_7970                            ; $794E: $20 $20

    call $104F                                    ; $7950: $CD $4F $10
    jr nz, @-$21                                  ; $7953: $20 $DD

    ld c, a                                       ; $7955: $4F
    jr nz, jr_019_7978                            ; $7956: $20 $20

    cp a                                          ; $7958: $BF
    ld d, b                                       ; $7959: $50
    nop                                           ; $795A: $00
    nop                                           ; $795B: $00
    ld e, h                                       ; $795C: $5C
    ld [bc], a                                    ; $795D: $02
    inc bc                                        ; $795E: $03
    dec d                                         ; $795F: $15
    jr nz, @-$3F                                  ; $7960: $20 $BF

    ld d, b                                       ; $7962: $50
    ld h, b                                       ; $7963: $60
    nop                                           ; $7964: $00
    ld e, h                                       ; $7965: $5C
    inc bc                                        ; $7966: $03
    inc bc                                        ; $7967: $03
    dec d                                         ; $7968: $15
    jr nz, jr_019_792A                            ; $7969: $20 $BF

    ld d, b                                       ; $796B: $50

jr_019_796C:
    ld [$E720], sp                                ; $796C: $08 $20 $E7
    ld d, b                                       ; $796F: $50

jr_019_7970:
    db $10                                        ; $7970: $10
    jr nz, jr_019_791E                            ; $7971: $20 $AB

    ld d, b                                       ; $7973: $50
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    ld b, d                                       ; $7976: $42
    inc d                                         ; $7977: $14

jr_019_7978:
    ld c, $85                                     ; $7978: $0E $85
    ld c, e                                       ; $797A: $4B
    xor h                                         ; $797B: $AC
    inc h                                         ; $797C: $24
    and d                                         ; $797D: $A2
    ld bc, $BF7D                                  ; $797E: $01 $7D $BF
    pop bc                                        ; $7981: $C1
    inc bc                                        ; $7982: $03
    dec d                                         ; $7983: $15
    ld c, $85                                     ; $7984: $0E $85
    ld c, e                                       ; $7986: $4B
    jr jr_019_7989                                ; $7987: $18 $00

jr_019_7989:
    ld e, h                                       ; $7989: $5C
    nop                                           ; $798A: $00
    ld [bc], a                                    ; $798B: $02

jr_019_798C:
    dec d                                         ; $798C: $15
    ld c, $35                                     ; $798D: $0E $35
    ld c, e                                       ; $798F: $4B
    ld b, b                                       ; $7990: $40
    ld c, $CB                                     ; $7991: $0E $CB
    ld c, e                                       ; $7993: $4B
    ld b, b                                       ; $7994: $40
    ld c, $A3                                     ; $7995: $0E $A3
    ld c, e                                       ; $7997: $4B
    ld b, b                                       ; $7998: $40
    ld c, $CB                                     ; $7999: $0E $CB
    ld c, e                                       ; $799B: $4B
    jr nz, jr_019_799E                            ; $799C: $20 $00

jr_019_799E:
    ld e, h                                       ; $799E: $5C
    ld bc, $1502                                  ; $799F: $01 $02 $15
    ld c, $15                                     ; $79A2: $0E $15
    ld c, e                                       ; $79A4: $4B
    db $10                                        ; $79A5: $10
    ld c, $8F                                     ; $79A6: $0E $8F
    ld c, e                                       ; $79A8: $4B
    jr nz, jr_019_79B9                            ; $79A9: $20 $0E

    pop bc                                        ; $79AB: $C1
    ld c, e                                       ; $79AC: $4B
    jr nc, jr_019_79BD                            ; $79AD: $30 $0E

    sbc c                                         ; $79AF: $99
    ld c, e                                       ; $79B0: $4B
    jr nz, jr_019_79C1                            ; $79B1: $20 $0E

    dec h                                         ; $79B3: $25
    ld c, e                                       ; $79B4: $4B
    ld b, b                                       ; $79B5: $40
    ld c, $99                                     ; $79B6: $0E $99
    ld c, e                                       ; $79B8: $4B

jr_019_79B9:
    nop                                           ; $79B9: $00
    nop                                           ; $79BA: $00
    ld e, e                                       ; $79BB: $5B
    add hl, de                                    ; $79BC: $19

jr_019_79BD:
    db $FD                                        ; $79BD: $FD
    ld [hl], c                                    ; $79BE: $71
    ld e, h                                       ; $79BF: $5C
    ld [bc], a                                    ; $79C0: $02

jr_019_79C1:
    inc bc                                        ; $79C1: $03
    dec d                                         ; $79C2: $15
    ld c, $99                                     ; $79C3: $0E $99
    ld c, e                                       ; $79C5: $4B
    jr nz, jr_019_79D6                            ; $79C6: $20 $0E

    and e                                         ; $79C8: $A3
    ld c, e                                       ; $79C9: $4B
    jr nz, jr_019_79CC                            ; $79CA: $20 $00

jr_019_79CC:
    ld e, e                                       ; $79CC: $5B
    add hl, de                                    ; $79CD: $19
    ld h, c                                       ; $79CE: $61
    ld [hl], h                                    ; $79CF: $74
    ld b, b                                       ; $79D0: $40
    jr @+$17                                      ; $79D1: $18 $15

    ld c, $85                                     ; $79D3: $0E $85
    ld c, e                                       ; $79D5: $4B

jr_019_79D6:
    ld [bc], a                                    ; $79D6: $02
    ld c, $B7                                     ; $79D7: $0E $B7
    ld c, e                                       ; $79D9: $4B
    ld [bc], a                                    ; $79DA: $02
    ld c, $A3                                     ; $79DB: $0E $A3
    ld c, e                                       ; $79DD: $4B
    ld [bc], a                                    ; $79DE: $02
    ld c, $C1                                     ; $79DF: $0E $C1
    ld c, e                                       ; $79E1: $4B
    ld [bc], a                                    ; $79E2: $02
    ld c, $8F                                     ; $79E3: $0E $8F
    ld c, e                                       ; $79E5: $4B
    ld [bc], a                                    ; $79E6: $02
    ld c, $C1                                     ; $79E7: $0E $C1
    ld c, e                                       ; $79E9: $4B
    ld [bc], a                                    ; $79EA: $02
    ld c, $99                                     ; $79EB: $0E $99
    ld c, e                                       ; $79ED: $4B
    ld [bc], a                                    ; $79EE: $02
    ld c, $B7                                     ; $79EF: $0E $B7
    ld c, e                                       ; $79F1: $4B

jr_019_79F2:
    ld [bc], a                                    ; $79F2: $02
    ld c, $85                                     ; $79F3: $0E $85
    ld c, e                                       ; $79F5: $4B
    ld [bc], a                                    ; $79F6: $02
    ld c, $AD                                     ; $79F7: $0E $AD
    ld c, e                                       ; $79F9: $4B
    ld [bc], a                                    ; $79FA: $02
    ld c, $B7                                     ; $79FB: $0E $B7
    ld c, e                                       ; $79FD: $4B
    ld [bc], a                                    ; $79FE: $02
    ld c, $99                                     ; $79FF: $0E $99
    ld c, e                                       ; $7A01: $4B
    ld [bc], a                                    ; $7A02: $02
    ld c, $CB                                     ; $7A03: $0E $CB
    ld c, e                                       ; $7A05: $4B
    ld [bc], a                                    ; $7A06: $02
    ld c, $8F                                     ; $7A07: $0E $8F
    ld c, e                                       ; $7A09: $4B
    ld [bc], a                                    ; $7A0A: $02
    ld c, $CB                                     ; $7A0B: $0E $CB
    ld c, e                                       ; $7A0D: $4B
    ld [bc], a                                    ; $7A0E: $02
    ld c, $99                                     ; $7A0F: $0E $99
    ld c, e                                       ; $7A11: $4B
    ld [bc], a                                    ; $7A12: $02
    ld c, $A3                                     ; $7A13: $0E $A3
    ld c, e                                       ; $7A15: $4B
    jr jr_019_7A18                                ; $7A16: $18 $00

jr_019_7A18:
    ld e, h                                       ; $7A18: $5C
    inc bc                                        ; $7A19: $03
    inc bc                                        ; $7A1A: $03
    dec d                                         ; $7A1B: $15
    ld c, $45                                     ; $7A1C: $0E $45
    ld c, e                                       ; $7A1E: $4B
    db $10                                        ; $7A1F: $10
    ld c, $75                                     ; $7A20: $0E $75
    ld c, e                                       ; $7A22: $4B
    inc d                                         ; $7A23: $14
    ld c, $8F                                     ; $7A24: $0E $8F
    ld c, e                                       ; $7A26: $4B
    inc b                                         ; $7A27: $04
    nop                                           ; $7A28: $00
    ld h, d                                       ; $7A29: $62
    inc l                                         ; $7A2A: $2C
    dec d                                         ; $7A2B: $15
    ld c, $25                                     ; $7A2C: $0E $25
    ld c, e                                       ; $7A2E: $4B
    ld [$CB0E], sp                                ; $7A2F: $08 $0E $CB
    ld c, e                                       ; $7A32: $4B
    nop                                           ; $7A33: $00
    nop                                           ; $7A34: $00
    ld e, e                                       ; $7A35: $5B
    add hl, de                                    ; $7A36: $19
    ld d, $77                                     ; $7A37: $16 $77
    ld h, d                                       ; $7A39: $62
    ld bc, $0E14                                  ; $7A3A: $01 $14 $0E
    adc a                                         ; $7A3D: $8F
    ld c, e                                       ; $7A3E: $4B
    rlca                                          ; $7A3F: $07
    nop                                           ; $7A40: $00
    add c                                         ; $7A41: $81
    ld e, l                                       ; $7A42: $5D
    add hl, bc                                    ; $7A43: $09
    nop                                           ; $7A44: $00
    jr nz, jr_019_79F2                            ; $7A45: $20 $AB

    ld d, b                                       ; $7A47: $50
    ld b, d                                       ; $7A48: $42
    ld e, e                                       ; $7A49: $5B
    add hl, de                                    ; $7A4A: $19
    ld d, [hl]                                    ; $7A4B: $56
    ld [hl], d                                    ; $7A4C: $72
    ld b, l                                       ; $7A4D: $45
    ld c, $D5                                     ; $7A4E: $0E $D5
    ld c, e                                       ; $7A50: $4B
    ld e, e                                       ; $7A51: $5B
    add hl, de                                    ; $7A52: $19
    inc sp                                        ; $7A53: $33
    ld [hl], h                                    ; $7A54: $74
    ld b, l                                       ; $7A55: $45
    ld c, $D5                                     ; $7A56: $0E $D5
    ld c, e                                       ; $7A58: $4B
    ld b, d                                       ; $7A59: $42
    dec d                                         ; $7A5A: $15
    ld c, $8F                                     ; $7A5B: $0E $8F
    ld c, e                                       ; $7A5D: $4B
    inc b                                         ; $7A5E: $04
    ld c, $CB                                     ; $7A5F: $0E $CB
    ld c, e                                       ; $7A61: $4B
    inc b                                         ; $7A62: $04
    ld c, $A3                                     ; $7A63: $0E $A3
    ld c, e                                       ; $7A65: $4B
    inc b                                         ; $7A66: $04
    ld c, $B7                                     ; $7A67: $0E $B7
    ld c, e                                       ; $7A69: $4B
    nop                                           ; $7A6A: $00
    nop                                           ; $7A6B: $00
    ld e, e                                       ; $7A6C: $5B
    add hl, de                                    ; $7A6D: $19
    db $EB                                        ; $7A6E: $EB
    ld [hl], e                                    ; $7A6F: $73
    ld b, b                                       ; $7A70: $40
    jr jr_019_7AC9                                ; $7A71: $18 $56

    ld [bc], a                                    ; $7A73: $02
    dec d                                         ; $7A74: $15
    ld c, $85                                     ; $7A75: $0E $85
    ld c, e                                       ; $7A77: $4B
    ld [bc], a                                    ; $7A78: $02
    ld c, $B7                                     ; $7A79: $0E $B7
    ld c, e                                       ; $7A7B: $4B
    ld [bc], a                                    ; $7A7C: $02
    ld c, $A3                                     ; $7A7D: $0E $A3
    ld c, e                                       ; $7A7F: $4B
    ld [bc], a                                    ; $7A80: $02
    ld c, $C1                                     ; $7A81: $0E $C1
    ld c, e                                       ; $7A83: $4B
    ld [bc], a                                    ; $7A84: $02
    ld c, $8F                                     ; $7A85: $0E $8F
    ld c, e                                       ; $7A87: $4B
    ld [bc], a                                    ; $7A88: $02
    ld c, $C1                                     ; $7A89: $0E $C1
    ld c, e                                       ; $7A8B: $4B
    ld [bc], a                                    ; $7A8C: $02
    ld c, $99                                     ; $7A8D: $0E $99
    ld c, e                                       ; $7A8F: $4B
    ld [bc], a                                    ; $7A90: $02
    ld c, $B7                                     ; $7A91: $0E $B7
    ld c, e                                       ; $7A93: $4B
    ld [bc], a                                    ; $7A94: $02
    ld c, $85                                     ; $7A95: $0E $85
    ld c, e                                       ; $7A97: $4B
    ld [bc], a                                    ; $7A98: $02
    ld c, $AD                                     ; $7A99: $0E $AD
    ld c, e                                       ; $7A9B: $4B
    ld [bc], a                                    ; $7A9C: $02
    ld c, $B7                                     ; $7A9D: $0E $B7
    ld c, e                                       ; $7A9F: $4B
    ld [bc], a                                    ; $7AA0: $02
    ld c, $99                                     ; $7AA1: $0E $99
    ld c, e                                       ; $7AA3: $4B
    ld [bc], a                                    ; $7AA4: $02
    ld c, $CB                                     ; $7AA5: $0E $CB
    ld c, e                                       ; $7AA7: $4B
    ld [bc], a                                    ; $7AA8: $02
    ld c, $8F                                     ; $7AA9: $0E $8F
    ld c, e                                       ; $7AAB: $4B

jr_019_7AAC:
    ld [bc], a                                    ; $7AAC: $02

jr_019_7AAD:
    ld c, $CB                                     ; $7AAD: $0E $CB
    ld c, e                                       ; $7AAF: $4B
    ld [bc], a                                    ; $7AB0: $02
    ld c, $99                                     ; $7AB1: $0E $99
    ld c, e                                       ; $7AB3: $4B
    ld [bc], a                                    ; $7AB4: $02
    ld c, $A3                                     ; $7AB5: $0E $A3
    ld c, e                                       ; $7AB7: $4B
    jr jr_019_7ABA                                ; $7AB8: $18 $00

jr_019_7ABA:
    ld e, h                                       ; $7ABA: $5C
    nop                                           ; $7ABB: $00
    ld [bc], a                                    ; $7ABC: $02
    dec d                                         ; $7ABD: $15
    ld c, $55                                     ; $7ABE: $0E $55
    ld c, e                                       ; $7AC0: $4B
    db $10                                        ; $7AC1: $10
    ld c, $75                                     ; $7AC2: $0E $75
    ld c, e                                       ; $7AC4: $4B
    ld [$850E], sp                                ; $7AC5: $08 $0E $85
    ld c, e                                       ; $7AC8: $4B

jr_019_7AC9:
    inc b                                         ; $7AC9: $04
    nop                                           ; $7ACA: $00
    ld h, d                                       ; $7ACB: $62
    ld bc, $0E15                                  ; $7ACC: $01 $15 $0E
    xor l                                         ; $7ACF: $AD
    ld c, e                                       ; $7AD0: $4B
    inc b                                         ; $7AD1: $04
    ld c, $B7                                     ; $7AD2: $0E $B7
    ld c, e                                       ; $7AD4: $4B
    inc b                                         ; $7AD5: $04
    ld c, $AD                                     ; $7AD6: $0E $AD
    ld c, e                                       ; $7AD8: $4B
    inc b                                         ; $7AD9: $04
    ld c, $B7                                     ; $7ADA: $0E $B7
    ld c, e                                       ; $7ADC: $4B
    inc b                                         ; $7ADD: $04
    ld c, $85                                     ; $7ADE: $0E $85
    ld c, e                                       ; $7AE0: $4B

jr_019_7AE1:
    nop                                           ; $7AE1: $00
    nop                                           ; $7AE2: $00
    ld b, d                                       ; $7AE3: $42
    inc d                                         ; $7AE4: $14
    jr nz, @-$53                                  ; $7AE5: $20 $AB

    ld d, b                                       ; $7AE7: $50
    ld h, b                                       ; $7AE8: $60
    ld [bc], a                                    ; $7AE9: $02
    inc d                                         ; $7AEA: $14
    jr nz, jr_019_7AAC                            ; $7AEB: $20 $BF

    ld d, b                                       ; $7AED: $50
    ld e, h                                       ; $7AEE: $5C
    nop                                           ; $7AEF: $00
    ld [bc], a                                    ; $7AF0: $02
    dec d                                         ; $7AF1: $15
    jr nz, @-$2B                                  ; $7AF2: $20 $D3

    ld d, b                                       ; $7AF4: $50
    inc b                                         ; $7AF5: $04
    jr nz, jr_019_7AAD                            ; $7AF6: $20 $B5

    ld d, b                                       ; $7AF8: $50
    nop                                           ; $7AF9: $00
    nop                                           ; $7AFA: $00
    ld b, d                                       ; $7AFB: $42
    ld b, e                                       ; $7AFC: $43
    ld [$010F], sp                                ; $7AFD: $08 $0F $01
    inc h                                         ; $7B00: $24
    and d                                         ; $7B01: $A2
    dec b                                         ; $7B02: $05
    inc b                                         ; $7B03: $04
    rrca                                          ; $7B04: $0F
    inc b                                         ; $7B05: $04
    dec b                                         ; $7B06: $05
    ld c, $19                                     ; $7B07: $0E $19
    db $ED                                        ; $7B09: $ED
    ld [hl], a                                    ; $7B0A: $77
    ld [bc], a                                    ; $7B0B: $02
    ld [$131A], sp                                ; $7B0C: $08 $1A $13
    ld [bc], a                                    ; $7B0F: $02
    ld b, l                                       ; $7B10: $45
    add hl, de                                    ; $7B11: $19
    ld b, h                                       ; $7B12: $44
    ld [hl], a                                    ; $7B13: $77
    ld b, e                                       ; $7B14: $43
    ld [$010F], sp                                ; $7B15: $08 $0F $01
    inc h                                         ; $7B18: $24
    and d                                         ; $7B19: $A2
    dec b                                         ; $7B1A: $05
    inc bc                                        ; $7B1B: $03
    rrca                                          ; $7B1C: $0F
    inc b                                         ; $7B1D: $04
    dec b                                         ; $7B1E: $05
    ld c, $19                                     ; $7B1F: $0E $19
    inc h                                         ; $7B21: $24
    ld a, e                                       ; $7B22: $7B
    ld b, d                                       ; $7B23: $42
    rlca                                          ; $7B24: $07
    nop                                           ; $7B25: $00
    ld l, e                                       ; $7B26: $6B

jr_019_7B27:
    ld c, d                                       ; $7B27: $4A
    add hl, bc                                    ; $7B28: $09
    nop                                           ; $7B29: $00
    jr nz, jr_019_7AE1                            ; $7B2A: $20 $B5

    ld d, b                                       ; $7B2C: $50
    dec bc                                        ; $7B2D: $0B
    ld [bc], a                                    ; $7B2E: $02
    ld b, d                                       ; $7B2F: $42
    and d                                         ; $7B30: $A2
    ld b, l                                       ; $7B31: $45
    and e                                         ; $7B32: $A3
    inc b                                         ; $7B33: $04
    ld [hl+], a                                   ; $7B34: $22
    ld e, e                                       ; $7B35: $5B
    ld b, b                                       ; $7B36: $40
    rst $38                                       ; $7B37: $FF
    ld l, [hl]                                    ; $7B38: $6E
    ret nc                                        ; $7B39: $D0

    ld b, h                                       ; $7B3A: $44
    ld [hl], e                                    ; $7B3B: $73
    ld a, e                                       ; $7B3C: $7B
    rra                                           ; $7B3D: $1F
    nop                                           ; $7B3E: $00
    sbc a                                         ; $7B3F: $9F
    ld d, h                                       ; $7B40: $54
    ld l, a                                       ; $7B41: $6F
    ld l, [hl]                                    ; $7B42: $6E
    ld a, c                                       ; $7B43: $79
    jr nz, jr_019_7BAD                            ; $7B44: $20 $67

    ld l, a                                       ; $7B46: $6F
    ld [hl], h                                    ; $7B47: $74
    rst $38                                       ; $7B48: $FF
    ld b, c                                       ; $7B49: $41
    ld h, a                                       ; $7B4A: $67
    ld h, c                                       ; $7B4B: $61
    ld h, h                                       ; $7B4C: $64
    ld l, a                                       ; $7B4D: $6F
    ld l, [hl]                                    ; $7B4E: $6E
    daa                                           ; $7B4F: $27
    ld [hl], e                                    ; $7B50: $73
    jr nz, jr_019_7B95                            ; $7B51: $20 $42

    ld l, a                                       ; $7B53: $6F
    ld l, a                                       ; $7B54: $6F
    ld [hl], h                                    ; $7B55: $74
    ld [hl], e                                    ; $7B56: $73
    ld hl, $40FD                                  ; $7B57: $21 $FD $40
    or h                                          ; $7B5A: $B4
    ld b, b                                       ; $7B5B: $40
    or h                                          ; $7B5C: $B4
    ld b, b                                       ; $7B5D: $40
    or h                                          ; $7B5E: $B4
    rra                                           ; $7B5F: $1F
    ld de, $AC9A                                  ; $7B60: $11 $9A $AC
    inc h                                         ; $7B63: $24
    and d                                         ; $7B64: $A2
    inc bc                                        ; $7B65: $03
    xor h                                         ; $7B66: $AC
    and e                                         ; $7B67: $A3
    and e                                         ; $7B68: $A3
    inc bc                                        ; $7B69: $03
    rlca                                          ; $7B6A: $07
    nop                                           ; $7B6B: $00
    add c                                         ; $7B6C: $81
    ld e, l                                       ; $7B6D: $5D
    add hl, bc                                    ; $7B6E: $09
    nop                                           ; $7B6F: $00
    jr nz, jr_019_7B27                            ; $7B70: $20 $B5

    ld d, b                                       ; $7B72: $50
    ld b, d                                       ; $7B73: $42
    and h                                         ; $7B74: $A4
    ld b, l                                       ; $7B75: $45
    and e                                         ; $7B76: $A3
    ld [$2302], sp                                ; $7B77: $08 $02 $23
    push af                                       ; $7B7A: $F5
    ret nc                                        ; $7B7B: $D0

    sbc a                                         ; $7B7C: $9F
    ld e, c                                       ; $7B7D: $59
    ld l, a                                       ; $7B7E: $6F
    ld [hl], l                                    ; $7B7F: $75
    jr nz, jr_019_7BE8                            ; $7B80: $20 $66

    ld l, a                                       ; $7B82: $6F
    ld [hl], l                                    ; $7B83: $75
    ld l, [hl]                                    ; $7B84: $6E
    ld h, h                                       ; $7B85: $64
    rst $38                                       ; $7B86: $FF
    ld b, c                                       ; $7B87: $41
    ld h, a                                       ; $7B88: $67
    ld h, c                                       ; $7B89: $61
    ld h, h                                       ; $7B8A: $64
    ld l, a                                       ; $7B8B: $6F
    ld l, [hl]                                    ; $7B8C: $6E
    daa                                           ; $7B8D: $27
    ld [hl], e                                    ; $7B8E: $73
    cp $42                                        ; $7B8F: $FE $42
    ld l, a                                       ; $7B91: $6F
    ld l, a                                       ; $7B92: $6F
    ld [hl], h                                    ; $7B93: $74
    ld [hl], e                                    ; $7B94: $73

jr_019_7B95:
    ld hl, $FDFE                                  ; $7B95: $21 $FE $FD
    sbc d                                         ; $7B98: $9A
    ld b, d                                       ; $7B99: $42
    sbc e                                         ; $7B9A: $9B
    jr z, jr_019_7BE0                             ; $7B9B: $28 $43

    sbc a                                         ; $7B9D: $9F
    ld c, c                                       ; $7B9E: $49
    ld [hl], e                                    ; $7B9F: $73
    jr nz, jr_019_7C16                            ; $7BA0: $20 $74

    ld l, b                                       ; $7BA2: $68
    ld h, c                                       ; $7BA3: $61
    ld [hl], h                                    ; $7BA4: $74
    jr nz, jr_019_7C08                            ; $7BA5: $20 $61

    ld l, h                                       ; $7BA7: $6C
    ld l, h                                       ; $7BA8: $6C
    rst $38                                       ; $7BA9: $FF
    ld [hl], h                                    ; $7BAA: $74
    ld l, b                                       ; $7BAB: $68
    ld h, c                                       ; $7BAC: $61

jr_019_7BAD:
    ld [hl], h                                    ; $7BAD: $74
    jr nz, jr_019_7C27                            ; $7BAE: $20 $77

    ld h, c                                       ; $7BB0: $61
    ld [hl], e                                    ; $7BB1: $73
    jr nz, @+$6B                                  ; $7BB2: $20 $69

    ld l, [hl]                                    ; $7BB4: $6E
    cp $74                                        ; $7BB5: $FE $74
    ld l, b                                       ; $7BB7: $68
    ld h, l                                       ; $7BB8: $65
    ld [hl], d                                    ; $7BB9: $72
    ld h, l                                       ; $7BBA: $65
    ccf                                           ; $7BBB: $3F
    cp $53                                        ; $7BBC: $FE $53
    ld l, b                                       ; $7BBE: $68
    ld l, c                                       ; $7BBF: $69
    ld l, [hl]                                    ; $7BC0: $6E
    ld h, e                                       ; $7BC1: $63
    ld l, a                                       ; $7BC2: $6F
    halt                                          ; $7BC3: $76
    ld h, l                                       ; $7BC4: $65
    ld [hl], d                                    ; $7BC5: $72
    ld [hl], e                                    ; $7BC6: $73
    ccf                                           ; $7BC7: $3F
    cp $FD                                        ; $7BC8: $FE $FD
    sbc e                                         ; $7BCA: $9B
    ld a, b                                       ; $7BCB: $78
    ld [hl], b                                    ; $7BCC: $70
    sbc a                                         ; $7BCD: $9F
    ld c, c                                       ; $7BCE: $49
    ld [hl], h                                    ; $7BCF: $74
    jr nz, jr_019_7C3E                            ; $7BD0: $20 $6C

    ld l, a                                       ; $7BD2: $6F
    ld l, a                                       ; $7BD3: $6F
    ld l, e                                       ; $7BD4: $6B
    ld [hl], e                                    ; $7BD5: $73
    rst $38                                       ; $7BD6: $FF
    ld l, h                                       ; $7BD7: $6C
    ld l, c                                       ; $7BD8: $69
    ld l, e                                       ; $7BD9: $6B
    ld h, l                                       ; $7BDA: $65
    jr nz, jr_019_7C46                            ; $7BDB: $20 $69

    ld [hl], h                                    ; $7BDD: $74
    ld l, $FE                                     ; $7BDE: $2E $FE

jr_019_7BE0:
    db $FD                                        ; $7BE0: $FD
    sbc e                                         ; $7BE1: $9B
    jr z, jr_019_7C27                             ; $7BE2: $28 $43

    sbc a                                         ; $7BE4: $9F
    ld d, a                                       ; $7BE5: $57
    ld l, b                                       ; $7BE6: $68
    ld h, c                                       ; $7BE7: $61

jr_019_7BE8:
    ld [hl], h                                    ; $7BE8: $74
    jr nz, jr_019_7C4C                            ; $7BE9: $20 $61

    jr nz, jr_019_7C64                            ; $7BEB: $20 $77

    ld h, c                                       ; $7BED: $61
    ld [hl], e                                    ; $7BEE: $73
    ld [hl], h                                    ; $7BEF: $74
    ld h, l                                       ; $7BF0: $65
    ld l, $FE                                     ; $7BF1: $2E $FE
    ld b, d                                       ; $7BF3: $42
    ld [hl], l                                    ; $7BF4: $75
    ld [hl], h                                    ; $7BF5: $74
    jr nz, jr_019_7C6B                            ; $7BF6: $20 $73

    ld l, c                                       ; $7BF8: $69
    ld l, [hl]                                    ; $7BF9: $6E
    ld h, e                                       ; $7BFA: $63
    ld h, l                                       ; $7BFB: $65
    jr nz, jr_019_7C77                            ; $7BFC: $20 $79

    ld l, a                                       ; $7BFE: $6F
    ld [hl], l                                    ; $7BFF: $75
    rst $38                                       ; $7C00: $FF
    ld h, e                                       ; $7C01: $63
    ld l, h                                       ; $7C02: $6C
    ld h, l                                       ; $7C03: $65
    ld h, c                                       ; $7C04: $61
    ld l, [hl]                                    ; $7C05: $6E
    ld h, l                                       ; $7C06: $65
    ld h, h                                       ; $7C07: $64

jr_019_7C08:
    jr nz, @+$71                                  ; $7C08: $20 $6F

    ld [hl], l                                    ; $7C0A: $75
    ld [hl], h                                    ; $7C0B: $74
    cp $74                                        ; $7C0C: $FE $74
    ld l, b                                       ; $7C0E: $68
    ld h, l                                       ; $7C0F: $65
    jr nz, jr_019_7C88                            ; $7C10: $20 $76

    ld h, c                                       ; $7C12: $61
    ld [hl], l                                    ; $7C13: $75
    ld l, h                                       ; $7C14: $6C
    ld [hl], h                                    ; $7C15: $74

jr_019_7C16:
    inc l                                         ; $7C16: $2C
    rst $38                                       ; $7C17: $FF
    ld [hl], h                                    ; $7C18: $74
    ld l, b                                       ; $7C19: $68
    ld h, c                                       ; $7C1A: $61
    ld [hl], h                                    ; $7C1B: $74
    jr nz, jr_019_7C8B                            ; $7C1C: $20 $6D

    ld h, l                                       ; $7C1E: $65
    ld h, c                                       ; $7C1F: $61
    ld l, [hl]                                    ; $7C20: $6E
    ld [hl], e                                    ; $7C21: $73
    jr nz, jr_019_7C98                            ; $7C22: $20 $74

    ld l, b                                       ; $7C24: $68
    ld h, c                                       ; $7C25: $61
    ld [hl], h                                    ; $7C26: $74

jr_019_7C27:
    cp $49                                        ; $7C27: $FE $49
    daa                                           ; $7C29: $27
    ld l, l                                       ; $7C2A: $6D
    jr nz, jr_019_7C93                            ; $7C2B: $20 $66

    ld [hl], d                                    ; $7C2D: $72
    ld h, l                                       ; $7C2E: $65
    ld h, l                                       ; $7C2F: $65
    ld hl, $4EFE                                  ; $7C30: $21 $FE $4E
    ld l, a                                       ; $7C33: $6F
    jr nz, @+$75                                  ; $7C34: $20 $73

    ld h, l                                       ; $7C36: $65
    ld l, [hl]                                    ; $7C37: $6E
    ld [hl], e                                    ; $7C38: $73
    ld h, l                                       ; $7C39: $65
    jr nz, jr_019_7CA5                            ; $7C3A: $20 $69

    ld l, [hl]                                    ; $7C3C: $6E
    rst $38                                       ; $7C3D: $FF

jr_019_7C3E:
    ld h, a                                       ; $7C3E: $67
    ld [hl], l                                    ; $7C3F: $75
    ld h, c                                       ; $7C40: $61
    ld [hl], d                                    ; $7C41: $72
    ld h, h                                       ; $7C42: $64
    ld l, c                                       ; $7C43: $69
    ld l, [hl]                                    ; $7C44: $6E
    daa                                           ; $7C45: $27

jr_019_7C46:
    jr nz, @+$63                                  ; $7C46: $20 $61

    ld l, [hl]                                    ; $7C48: $6E
    cp $65                                        ; $7C49: $FE $65
    ld l, l                                       ; $7C4B: $6D

jr_019_7C4C:
    ld [hl], b                                    ; $7C4C: $70
    ld [hl], h                                    ; $7C4D: $74
    ld a, c                                       ; $7C4E: $79
    jr nz, jr_019_7CC7                            ; $7C4F: $20 $76

    ld h, c                                       ; $7C51: $61
    ld [hl], l                                    ; $7C52: $75
    ld l, h                                       ; $7C53: $6C
    ld [hl], h                                    ; $7C54: $74
    inc l                                         ; $7C55: $2C
    rst $38                                       ; $7C56: $FF
    ld l, c                                       ; $7C57: $69
    ld [hl], e                                    ; $7C58: $73
    jr nz, jr_019_7CCF                            ; $7C59: $20 $74

    ld l, b                                       ; $7C5B: $68
    ld h, l                                       ; $7C5C: $65
    ld [hl], d                                    ; $7C5D: $72
    ld h, l                                       ; $7C5E: $65
    ccf                                           ; $7C5F: $3F
    cp $54                                        ; $7C60: $FE $54
    ld l, b                                       ; $7C62: $68
    ld h, c                                       ; $7C63: $61

jr_019_7C64:
    ld l, [hl]                                    ; $7C64: $6E
    ld l, e                                       ; $7C65: $6B
    jr nz, @+$7B                                  ; $7C66: $20 $79

    ld h, l                                       ; $7C68: $65
    inc l                                         ; $7C69: $2C
    rst $38                                       ; $7C6A: $FF

jr_019_7C6B:
    ld l, l                                       ; $7C6B: $6D
    ld h, c                                       ; $7C6C: $61
    ld [hl], h                                    ; $7C6D: $74
    ld h, l                                       ; $7C6E: $65
    ld a, c                                       ; $7C6F: $79
    ld hl, $54FF                                  ; $7C70: $21 $FF $54
    ld l, b                                       ; $7C73: $68
    ld h, c                                       ; $7C74: $61
    ld l, [hl]                                    ; $7C75: $6E
    ld l, e                                       ; $7C76: $6B

jr_019_7C77:
    ld [hl], e                                    ; $7C77: $73
    jr nz, jr_019_7CDB                            ; $7C78: $20 $61

    jr nz, jr_019_7CE8                            ; $7C7A: $20 $6C

    ld l, a                                       ; $7C7C: $6F
    ld [hl], h                                    ; $7C7D: $74
    ld hl, $FDFE                                  ; $7C7E: $21 $FE $FD
    sbc e                                         ; $7C81: $9B
    ld a, b                                       ; $7C82: $78
    ld [hl], b                                    ; $7C83: $70
    sbc a                                         ; $7C84: $9F
    ld e, c                                       ; $7C85: $59
    ld l, a                                       ; $7C86: $6F
    ld [hl], l                                    ; $7C87: $75

jr_019_7C88:
    daa                                           ; $7C88: $27
    ld [hl], d                                    ; $7C89: $72
    ld h, l                                       ; $7C8A: $65

jr_019_7C8B:
    rst $38                                       ; $7C8B: $FF
    ld [hl], a                                    ; $7C8C: $77
    ld h, l                                       ; $7C8D: $65
    ld l, h                                       ; $7C8E: $6C
    ld h, e                                       ; $7C8F: $63
    ld l, a                                       ; $7C90: $6F
    ld l, l                                       ; $7C91: $6D
    ld h, l                                       ; $7C92: $65

jr_019_7C93:
    ld l, $2E                                     ; $7C93: $2E $2E
    ld l, $FE                                     ; $7C95: $2E $FE
    db $FD                                        ; $7C97: $FD

jr_019_7C98:
    sbc d                                         ; $7C98: $9A
    xor h                                         ; $7C99: $AC
    inc h                                         ; $7C9A: $24
    and d                                         ; $7C9B: $A2
    inc b                                         ; $7C9C: $04
    rlca                                          ; $7C9D: $07
    nop                                           ; $7C9E: $00
    add c                                         ; $7C9F: $81
    ld e, l                                       ; $7CA0: $5D
    add hl, bc                                    ; $7CA1: $09
    nop                                           ; $7CA2: $00
    jr nz, @-$49                                  ; $7CA3: $20 $B5

jr_019_7CA5:
    ld d, b                                       ; $7CA5: $50
    ld b, d                                       ; $7CA6: $42
    sbc e                                         ; $7CA7: $9B
    jr z, jr_019_7CED                             ; $7CA8: $28 $43

    sbc a                                         ; $7CAA: $9F
    ld d, h                                       ; $7CAB: $54
    ld l, b                                       ; $7CAC: $68
    ld h, c                                       ; $7CAD: $61
    ld l, [hl]                                    ; $7CAE: $6E
    ld l, e                                       ; $7CAF: $6B
    ld [hl], e                                    ; $7CB0: $73
    jr nz, jr_019_7D20                            ; $7CB1: $20 $6D

    ld h, c                                       ; $7CB3: $61
    ld [hl], h                                    ; $7CB4: $74
    ld h, l                                       ; $7CB5: $65
    ld a, c                                       ; $7CB6: $79
    ld hl, $FDFE                                  ; $7CB7: $21 $FE $FD
    sbc d                                         ; $7CBA: $9A
    ld e, b                                       ; $7CBB: $58
    ld bc, $0142                                  ; $7CBC: $01 $42 $01
    add hl, bc                                    ; $7CBF: $09
    ld c, $AC                                     ; $7CC0: $0E $AC
    or d                                          ; $7CC2: $B2
    and d                                         ; $7CC3: $A2
    ld bc, $1996                                  ; $7CC4: $01 $96 $19

jr_019_7CC7:
    cp [hl]                                       ; $7CC7: $BE
    ld a, h                                       ; $7CC8: $7C
    ld b, e                                       ; $7CC9: $43
    rrca                                          ; $7CCA: $0F
    inc b                                         ; $7CCB: $04
    dec b                                         ; $7CCC: $05
    ld c, $19                                     ; $7CCD: $0E $19

jr_019_7CCF:
    rst $30                                       ; $7CCF: $F7
    ld a, h                                       ; $7CD0: $7C
    sub e                                         ; $7CD1: $93
    ld h, l                                       ; $7CD2: $65
    and [hl]                                      ; $7CD3: $A6
    ld c, [hl]                                    ; $7CD4: $4E
    ld c, a                                       ; $7CD5: $4F
    ld h, h                                       ; $7CD6: $64
    scf                                           ; $7CD7: $37
    ld d, e                                       ; $7CD8: $53
    ld l, c                                       ; $7CD9: $69
    ld b, b                                       ; $7CDA: $40

jr_019_7CDB:
    ld d, e                                       ; $7CDB: $53
    ld h, [hl]                                    ; $7CDC: $66
    ret nz                                        ; $7CDD: $C0

    ld e, h                                       ; $7CDE: $5C
    ld hl, $0005                                  ; $7CDF: $21 $05 $00
    add c                                         ; $7CE2: $81
    ld e, l                                       ; $7CE3: $5D
    dec b                                         ; $7CE4: $05
    dec b                                         ; $7CE5: $05

jr_019_7CE6:
    ld l, c                                       ; $7CE6: $69
    ret nc                                        ; $7CE7: $D0

jr_019_7CE8:
    nop                                           ; $7CE8: $00
    jr nz, jr_019_7CE6                            ; $7CE9: $20 $FB

    ld d, b                                       ; $7CEB: $50
    ld [hl+], a                                   ; $7CEC: $22

jr_019_7CED:
    dec b                                         ; $7CED: $05
    ld b, b                                       ; $7CEE: $40
    dec bc                                        ; $7CEF: $0B
    nop                                           ; $7CF0: $00
    nop                                           ; $7CF1: $00
    rra                                           ; $7CF2: $1F
    ld de, $9482                                  ; $7CF3: $11 $82 $94
    ld b, d                                       ; $7CF6: $42
    sub e                                         ; $7CF7: $93
    ld h, l                                       ; $7CF8: $65
    and [hl]                                      ; $7CF9: $A6
    ld c, [hl]                                    ; $7CFA: $4E
    ld c, a                                       ; $7CFB: $4F
    ld h, h                                       ; $7CFC: $64
    scf                                           ; $7CFD: $37
    ld d, e                                       ; $7CFE: $53
    ld l, c                                       ; $7CFF: $69
    ld b, b                                       ; $7D00: $40
    ld d, e                                       ; $7D01: $53
    ld h, [hl]                                    ; $7D02: $66
    ret nz                                        ; $7D03: $C0

    ld e, h                                       ; $7D04: $5C
    ld hl, $0005                                  ; $7D05: $21 $05 $00
    add c                                         ; $7D08: $81
    ld e, l                                       ; $7D09: $5D
    dec b                                         ; $7D0A: $05
    dec b                                         ; $7D0B: $05

jr_019_7D0C:
    ld l, c                                       ; $7D0C: $69
    ret nc                                        ; $7D0D: $D0

    nop                                           ; $7D0E: $00
    jr nz, jr_019_7D0C                            ; $7D0F: $20 $FB

    ld d, b                                       ; $7D11: $50
    ld [hl+], a                                   ; $7D12: $22
    dec b                                         ; $7D13: $05
    ld b, b                                       ; $7D14: $40
    dec b                                         ; $7D15: $05
    ld [bc], a                                    ; $7D16: $02
    db $ED                                        ; $7D17: $ED
    ld h, e                                       ; $7D18: $63
    add hl, bc                                    ; $7D19: $09
    dec d                                         ; $7D1A: $15
    xor l                                         ; $7D1B: $AD
    pop de                                        ; $7D1C: $D1
    nop                                           ; $7D1D: $00
    add hl, de                                    ; $7D1E: $19
    inc [hl]                                      ; $7D1F: $34

jr_019_7D20:
    ld a, l                                       ; $7D20: $7D
    add hl, de                                    ; $7D21: $19
    ld c, b                                       ; $7D22: $48
    ld a, l                                       ; $7D23: $7D
    ld l, e                                       ; $7D24: $6B
    jr nc, @+$0C                                  ; $7D25: $30 $0A

    ld [hl], b                                    ; $7D27: $70
    ld b, h                                       ; $7D28: $44
    nop                                           ; $7D29: $00
    add b                                         ; $7D2A: $80
    nop                                           ; $7D2B: $00
    dec bc                                        ; $7D2C: $0B
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    rra                                           ; $7D2F: $1F
    ld de, $9482                                  ; $7D30: $11 $82 $94
    ld b, d                                       ; $7D33: $42
    dec d                                         ; $7D34: $15
    ld c, $45                                     ; $7D35: $0E $45
    ld c, e                                       ; $7D37: $4B
    jr jr_019_7D48                                ; $7D38: $18 $0E

    add l                                         ; $7D3A: $85
    ld c, e                                       ; $7D3B: $4B
    nop                                           ; $7D3C: $00
    nop                                           ; $7D3D: $00
    add e                                         ; $7D3E: $83
    jr nc, jr_019_7D41                            ; $7D3F: $30 $00

jr_019_7D41:
    ld bc, $5B00                                  ; $7D41: $01 $00 $5B
    add hl, de                                    ; $7D44: $19
    sbc d                                         ; $7D45: $9A
    ld a, e                                       ; $7D46: $7B
    ld b, d                                       ; $7D47: $42

jr_019_7D48:
    ld e, e                                       ; $7D48: $5B
    add hl, de                                    ; $7D49: $19
    and a                                         ; $7D4A: $A7
    ld a, h                                       ; $7D4B: $7C
    ld b, l                                       ; $7D4C: $45
    ld c, $D5                                     ; $7D4D: $0E $D5
    ld c, e                                       ; $7D4F: $4B
    ld [bc], a                                    ; $7D50: $02
    inc bc                                        ; $7D51: $03
    rrca                                          ; $7D52: $0F
    nop                                           ; $7D53: $00
    ld [hl-], a                                   ; $7D54: $32
    ld b, l                                       ; $7D55: $45
    add hl, de                                    ; $7D56: $19
    ret nc                                        ; $7D57: $D0

    ld l, l                                       ; $7D58: $6D
    dec b                                         ; $7D59: $05
    inc b                                         ; $7D5A: $04
    dec b                                         ; $7D5B: $05
    ld h, h                                       ; $7D5C: $64
    db $10                                        ; $7D5D: $10
    jr jr_019_7D88                                ; $7D5E: $18 $28

    db $D3                                        ; $7D60: $D3
    db $10                                        ; $7D61: $10
    ld [hl+], a                                   ; $7D62: $22
    cp d                                          ; $7D63: $BA
    ld b, b                                       ; $7D64: $40

jr_019_7D65:
    ld [hl+], a                                   ; $7D65: $22
    jp nz, $0140                                  ; $7D66: $C2 $40 $01

    ld c, $19                                     ; $7D69: $0E $19
    ld b, l                                       ; $7D6B: $45
    cpl                                           ; $7D6C: $2F
    and h                                         ; $7D6D: $A4
    ld b, [hl]                                    ; $7D6E: $46
    sub e                                         ; $7D6F: $93
    ld h, l                                       ; $7D70: $65
    or l                                          ; $7D71: $B5
    ld c, [hl]                                    ; $7D72: $4E
    ld c, a                                       ; $7D73: $4F
    ld h, h                                       ; $7D74: $64
    ld c, c                                       ; $7D75: $49
    ld d, e                                       ; $7D76: $53
    ld h, [hl]                                    ; $7D77: $66
    ret nz                                        ; $7D78: $C0

    ld e, h                                       ; $7D79: $5C
    ld hl, $0005                                  ; $7D7A: $21 $05 $00
    ld b, c                                       ; $7D7D: $41
    ld e, e                                       ; $7D7E: $5B
    dec b                                         ; $7D7F: $05
    dec b                                         ; $7D80: $05
    ld [hl], e                                    ; $7D81: $73
    ret nc                                        ; $7D82: $D0

    nop                                           ; $7D83: $00
    jr nz, jr_019_7D65                            ; $7D84: $20 $DF

    ld e, e                                       ; $7D86: $5B
    ld [hl+], a                                   ; $7D87: $22

jr_019_7D88:
    dec b                                         ; $7D88: $05
    ld b, b                                       ; $7D89: $40
    dec bc                                        ; $7D8A: $0B
    nop                                           ; $7D8B: $00
    nop                                           ; $7D8C: $00
    add d                                         ; $7D8D: $82
    rra                                           ; $7D8E: $1F
    ld de, $4294                                  ; $7D8F: $11 $94 $42
    ld b, e                                       ; $7D92: $43
    rrca                                          ; $7D93: $0F
    inc b                                         ; $7D94: $04
    dec b                                         ; $7D95: $05
    ld c, $19                                     ; $7D96: $0E $19
    ret nz                                        ; $7D98: $C0

    ld a, l                                       ; $7D99: $7D
    sub e                                         ; $7D9A: $93
    ld h, l                                       ; $7D9B: $65
    and [hl]                                      ; $7D9C: $A6
    ld c, [hl]                                    ; $7D9D: $4E
    ld c, a                                       ; $7D9E: $4F
    ld h, h                                       ; $7D9F: $64
    jr c, jr_019_7DF5                             ; $7DA0: $38 $53

    ld l, c                                       ; $7DA2: $69
    ld b, c                                       ; $7DA3: $41
    ld d, e                                       ; $7DA4: $53
    ld h, [hl]                                    ; $7DA5: $66
    cp c                                          ; $7DA6: $B9
    ld e, h                                       ; $7DA7: $5C
    ld hl, $0005                                  ; $7DA8: $21 $05 $00
    ld b, a                                       ; $7DAB: $47
    ld e, l                                       ; $7DAC: $5D
    dec b                                         ; $7DAD: $05
    dec b                                         ; $7DAE: $05

jr_019_7DAF:
    ld l, c                                       ; $7DAF: $69
    ret nc                                        ; $7DB0: $D0

    nop                                           ; $7DB1: $00
    jr nz, jr_019_7DAF                            ; $7DB2: $20 $FB

    ld d, b                                       ; $7DB4: $50
    ld [hl+], a                                   ; $7DB5: $22
    dec b                                         ; $7DB6: $05
    ld b, b                                       ; $7DB7: $40
    dec bc                                        ; $7DB8: $0B
    nop                                           ; $7DB9: $00
    nop                                           ; $7DBA: $00
    rra                                           ; $7DBB: $1F
    ld de, $9482                                  ; $7DBC: $11 $82 $94
    ld b, d                                       ; $7DBF: $42
    sub e                                         ; $7DC0: $93
    ld h, l                                       ; $7DC1: $65
    and [hl]                                      ; $7DC2: $A6
    ld c, [hl]                                    ; $7DC3: $4E
    ld c, a                                       ; $7DC4: $4F
    ld h, h                                       ; $7DC5: $64
    jr c, jr_019_7E1B                             ; $7DC6: $38 $53

    ld l, c                                       ; $7DC8: $69
    ld b, c                                       ; $7DC9: $41
    ld d, e                                       ; $7DCA: $53
    ld h, [hl]                                    ; $7DCB: $66
    cp c                                          ; $7DCC: $B9
    ld e, h                                       ; $7DCD: $5C
    ld hl, $0005                                  ; $7DCE: $21 $05 $00
    ld b, a                                       ; $7DD1: $47
    ld e, l                                       ; $7DD2: $5D
    dec b                                         ; $7DD3: $05
    dec b                                         ; $7DD4: $05

jr_019_7DD5:
    ld l, c                                       ; $7DD5: $69
    ret nc                                        ; $7DD6: $D0

    nop                                           ; $7DD7: $00
    jr nz, jr_019_7DD5                            ; $7DD8: $20 $FB

    ld d, b                                       ; $7DDA: $50
    ld [hl+], a                                   ; $7DDB: $22
    dec b                                         ; $7DDC: $05
    ld b, b                                       ; $7DDD: $40
    dec b                                         ; $7DDE: $05
    ld [bc], a                                    ; $7DDF: $02
    or e                                          ; $7DE0: $B3
    ld h, e                                       ; $7DE1: $63
    add hl, bc                                    ; $7DE2: $09
    dec d                                         ; $7DE3: $15
    xor l                                         ; $7DE4: $AD
    pop de                                        ; $7DE5: $D1
    nop                                           ; $7DE6: $00
    add hl, de                                    ; $7DE7: $19
    db $FD                                        ; $7DE8: $FD
    ld a, l                                       ; $7DE9: $7D
    add hl, de                                    ; $7DEA: $19
    ld de, $6B7E                                  ; $7DEB: $11 $7E $6B
    jr nc, @+$0C                                  ; $7DEE: $30 $0A

    ld [hl], b                                    ; $7DF0: $70
    ld b, h                                       ; $7DF1: $44
    nop                                           ; $7DF2: $00
    add b                                         ; $7DF3: $80
    nop                                           ; $7DF4: $00

jr_019_7DF5:
    dec bc                                        ; $7DF5: $0B
    nop                                           ; $7DF6: $00
    nop                                           ; $7DF7: $00
    rra                                           ; $7DF8: $1F
    ld de, $9482                                  ; $7DF9: $11 $82 $94
    ld b, d                                       ; $7DFC: $42
    dec d                                         ; $7DFD: $15
    ld c, $45                                     ; $7DFE: $0E $45
    ld c, e                                       ; $7E00: $4B
    jr jr_019_7E11                                ; $7E01: $18 $0E

    add l                                         ; $7E03: $85
    ld c, e                                       ; $7E04: $4B
    nop                                           ; $7E05: $00
    nop                                           ; $7E06: $00
    add e                                         ; $7E07: $83
    jr nc, jr_019_7E0A                            ; $7E08: $30 $00

jr_019_7E0A:
    ld bc, $5B00                                  ; $7E0A: $01 $00 $5B
    add hl, de                                    ; $7E0D: $19
    ld h, e                                       ; $7E0E: $63
    ld a, h                                       ; $7E0F: $7C
    ld b, d                                       ; $7E10: $42

jr_019_7E11:
    ld e, e                                       ; $7E11: $5B
    add hl, de                                    ; $7E12: $19
    ld [hl], b                                    ; $7E13: $70
    ld a, l                                       ; $7E14: $7D
    ld b, l                                       ; $7E15: $45
    ld c, $D5                                     ; $7E16: $0E $D5
    ld c, e                                       ; $7E18: $4B
    ld [bc], a                                    ; $7E19: $02
    inc bc                                        ; $7E1A: $03

jr_019_7E1B:
    rrca                                          ; $7E1B: $0F
    nop                                           ; $7E1C: $00
    ld [hl-], a                                   ; $7E1D: $32
    ld b, l                                       ; $7E1E: $45
    add hl, de                                    ; $7E1F: $19
    and b                                         ; $7E20: $A0
    ld l, [hl]                                    ; $7E21: $6E
    dec b                                         ; $7E22: $05
    inc b                                         ; $7E23: $04
    bit 4, e                                      ; $7E24: $CB $63
    db $10                                        ; $7E26: $10
    jr jr_019_7E51                                ; $7E27: $18 $28

    db $D3                                        ; $7E29: $D3
    db $10                                        ; $7E2A: $10
    ld [hl+], a                                   ; $7E2B: $22
    db $F4                                        ; $7E2C: $F4
    ld b, b                                       ; $7E2D: $40

jr_019_7E2E:
    ld [hl+], a                                   ; $7E2E: $22
    db $FC                                        ; $7E2F: $FC
    ld b, b                                       ; $7E30: $40
    ld bc, $190E                                  ; $7E31: $01 $0E $19
    ld b, l                                       ; $7E34: $45
    cpl                                           ; $7E35: $2F
    and d                                         ; $7E36: $A2
    ld b, [hl]                                    ; $7E37: $46
    sub e                                         ; $7E38: $93
    ld h, l                                       ; $7E39: $65
    or l                                          ; $7E3A: $B5
    ld c, [hl]                                    ; $7E3B: $4E
    ld c, a                                       ; $7E3C: $4F
    ld h, h                                       ; $7E3D: $64
    ld c, d                                       ; $7E3E: $4A
    ld d, e                                       ; $7E3F: $53
    ld h, [hl]                                    ; $7E40: $66
    cp c                                          ; $7E41: $B9
    ld e, h                                       ; $7E42: $5C
    ld hl, $0005                                  ; $7E43: $21 $05 $00
    rlca                                          ; $7E46: $07
    ld e, e                                       ; $7E47: $5B
    dec b                                         ; $7E48: $05
    dec b                                         ; $7E49: $05
    ld [hl], e                                    ; $7E4A: $73
    ret nc                                        ; $7E4B: $D0

    nop                                           ; $7E4C: $00
    jr nz, jr_019_7E2E                            ; $7E4D: $20 $DF

    ld e, e                                       ; $7E4F: $5B
    ld [hl+], a                                   ; $7E50: $22

jr_019_7E51:
    dec b                                         ; $7E51: $05
    ld b, b                                       ; $7E52: $40
    dec bc                                        ; $7E53: $0B
    nop                                           ; $7E54: $00
    nop                                           ; $7E55: $00
    add d                                         ; $7E56: $82
    rra                                           ; $7E57: $1F
    ld de, $4294                                  ; $7E58: $11 $94 $42
    rra                                           ; $7E5B: $1F
    ld de, $4294                                  ; $7E5C: $11 $94 $42
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

Jump_019_7E77:
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
