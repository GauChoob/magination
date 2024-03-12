SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    ld bc, $0825                                  ; $4000: $01 $25 $08
    ld b, l                                       ; $4003: $45
    cpl                                           ; $4004: $2F
    ld h, l                                       ; $4005: $65
    ld b, c                                       ; $4006: $41
    inc c                                         ; $4007: $0C
    nop                                           ; $4008: $00
    ld [bc], a                                    ; $4009: $02
    inc b                                         ; $400A: $04
    dec hl                                        ; $400B: $2B
    inc b                                         ; $400C: $04
    jr jr_01D_407D                                ; $400D: $18 $6E

    rrca                                          ; $400F: $0F
    rst $38                                       ; $4010: $FF
    ld a, a                                       ; $4011: $7F
    halt                                          ; $4012: $76
    jr nz, @+$11                                  ; $4013: $20 $0F

    ld b, l                                       ; $4015: $45
    inc de                                        ; $4016: $13
    ld l, d                                       ; $4017: $6A
    ld [hl], h                                    ; $4018: $74
    inc h                                         ; $4019: $24
    ld e, $93                                     ; $401A: $1E $93
    ld h, l                                       ; $401C: $65
    sub [hl]                                      ; $401D: $96
    ld b, b                                       ; $401E: $40
    ld c, a                                       ; $401F: $4F
    ld h, [hl]                                    ; $4020: $66
    ret nz                                        ; $4021: $C0

    ld e, h                                       ; $4022: $5C
    ld hl, $8464                                  ; $4023: $21 $64 $84
    ld b, b                                       ; $4026: $40
    dec b                                         ; $4027: $05
    nop                                           ; $4028: $00
    add c                                         ; $4029: $81
    ld e, l                                       ; $402A: $5D
    dec b                                         ; $402B: $05
    dec b                                         ; $402C: $05

jr_01D_402D:
    ld b, c                                       ; $402D: $41
    ret nc                                        ; $402E: $D0

    nop                                           ; $402F: $00
    jr nz, jr_01D_402D                            ; $4030: $20 $FB

    ld d, b                                       ; $4032: $50
    ld [hl+], a                                   ; $4033: $22
    dec b                                         ; $4034: $05
    ld b, b                                       ; $4035: $40
    dec bc                                        ; $4036: $0B
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    add d                                         ; $4039: $82
    rra                                           ; $403A: $1F
    ld de, $4294                                  ; $403B: $11 $94 $42
    ld bc, $1015                                  ; $403E: $01 $15 $10
    ld b, l                                       ; $4041: $45
    cpl                                           ; $4042: $2F
    ld h, l                                       ; $4043: $65
    ld b, c                                       ; $4044: $41
    ld [bc], a                                    ; $4045: $02
    nop                                           ; $4046: $00
    daa                                           ; $4047: $27
    dec bc                                        ; $4048: $0B
    inc c                                         ; $4049: $0C
    ld b, l                                       ; $404A: $45
    rla                                           ; $404B: $17
    ld hl, $0174                                  ; $404C: $21 $74 $01
    ld a, [bc]                                    ; $404F: $0A
    inc b                                         ; $4050: $04

Jump_01D_4051:
    ld b, l                                       ; $4051: $45
    dec e                                         ; $4052: $1D
    sub a                                         ; $4053: $97
    ld b, b                                       ; $4054: $40
    ld bc, $050C                                  ; $4055: $01 $0C $05
    ld b, l                                       ; $4058: $45
    dec e                                         ; $4059: $1D
    ld [de], a                                    ; $405A: $12
    ld b, d                                       ; $405B: $42
    ld b, d                                       ; $405C: $42
    ld [bc], a                                    ; $405D: $02
    ld bc, $0301                                  ; $405E: $01 $01 $03
    ld a, [bc]                                    ; $4061: $0A
    ld b, l                                       ; $4062: $45
    dec e                                         ; $4063: $1D
    xor c                                         ; $4064: $A9
    ld b, c                                       ; $4065: $41
    and h                                         ; $4066: $A4
    ld c, b                                       ; $4067: $48
    and e                                         ; $4068: $A3
    jr nz, jr_01D_406B                            ; $4069: $20 $00

jr_01D_406B:
    inc hl                                        ; $406B: $23
    ld c, l                                       ; $406C: $4D
    ret nc                                        ; $406D: $D0

    and h                                         ; $406E: $A4
    ld c, b                                       ; $406F: $48
    and e                                         ; $4070: $A3
    ld b, b                                       ; $4071: $40
    nop                                           ; $4072: $00

Jump_01D_4073:
    db $10                                        ; $4073: $10
    ld c, [hl]                                    ; $4074: $4E
    ret nc                                        ; $4075: $D0

    ld [bc], a                                    ; $4076: $02
    ld bc, $0A01                                  ; $4077: $01 $01 $0A
    inc bc                                        ; $407A: $03
    ld b, l                                       ; $407B: $45
    dec e                                         ; $407C: $1D

jr_01D_407D:
    sub a                                         ; $407D: $97
    ld b, b                                       ; $407E: $40
    and h                                         ; $407F: $A4
    ld c, b                                       ; $4080: $48
    and e                                         ; $4081: $A3
    add b                                         ; $4082: $80
    nop                                           ; $4083: $00
    inc hl                                        ; $4084: $23
    ld c, a                                       ; $4085: $4F
    ret nc                                        ; $4086: $D0

    and h                                         ; $4087: $A4
    ld c, c                                       ; $4088: $49
    and e                                         ; $4089: $A3
    ld bc, $1000                                  ; $408A: $01 $00 $10
    ld d, b                                       ; $408D: $50
    ret nc                                        ; $408E: $D0

    and h                                         ; $408F: $A4
    ld c, c                                       ; $4090: $49
    and e                                         ; $4091: $A3
    ld [bc], a                                    ; $4092: $02
    nop                                           ; $4093: $00
    ld d, $41                                     ; $4094: $16 $41
    ret nc                                        ; $4096: $D0

    sub e                                         ; $4097: $93
    ld h, l                                       ; $4098: $65
    jp Jump_01D_4F40                              ; $4099: $C3 $40 $4F


    ld h, h                                       ; $409C: $64
    sub [hl]                                      ; $409D: $96
    ld b, b                                       ; $409E: $40
    ld l, c                                       ; $409F: $69
    and e                                         ; $40A0: $A3
    ld b, b                                       ; $40A1: $40
    ld h, [hl]                                    ; $40A2: $66
    ret nz                                        ; $40A3: $C0

    ld e, h                                       ; $40A4: $5C
    ld hl, $1D95                                  ; $40A5: $21 $95 $1D
    jp c, $0540                                   ; $40A8: $DA $40 $05

    nop                                           ; $40AB: $00
    add c                                         ; $40AC: $81
    ld e, l                                       ; $40AD: $5D
    dec b                                         ; $40AE: $05
    dec b                                         ; $40AF: $05

jr_01D_40B0:
    ld b, c                                       ; $40B0: $41
    ret nc                                        ; $40B1: $D0

    nop                                           ; $40B2: $00
    jr nz, jr_01D_40B0                            ; $40B3: $20 $FB

    ld d, b                                       ; $40B5: $50
    ld [hl+], a                                   ; $40B6: $22
    dec b                                         ; $40B7: $05
    ld b, b                                       ; $40B8: $40
    dec b                                         ; $40B9: $05
    ld [bc], a                                    ; $40BA: $02
    ld l, e                                       ; $40BB: $6B
    ld c, d                                       ; $40BC: $4A
    ld [bc], a                                    ; $40BD: $02
    inc bc                                        ; $40BE: $03
    ld h, $D0                                     ; $40BF: $26 $D0
    nop                                           ; $40C1: $00
    ld [hl+], a                                   ; $40C2: $22
    inc b                                         ; $40C3: $04
    ld b, b                                       ; $40C4: $40
    ld [hl+], a                                   ; $40C5: $22
    inc b                                         ; $40C6: $04
    ld b, b                                       ; $40C7: $40
    dec bc                                        ; $40C8: $0B
    nop                                           ; $40C9: $00
    dec bc                                        ; $40CA: $0B
    ld [bc], a                                    ; $40CB: $02

jr_01D_40CC:
    nop                                           ; $40CC: $00
    add d                                         ; $40CD: $82
    inc h                                         ; $40CE: $24
    ld d, b                                       ; $40CF: $50
    ld b, e                                       ; $40D0: $43
    nop                                           ; $40D1: $00
    xor [hl]                                      ; $40D2: $AE
    and c                                         ; $40D3: $A1
    db $10                                        ; $40D4: $10
    dec e                                         ; $40D5: $1D
    add a                                         ; $40D6: $87
    ld b, c                                       ; $40D7: $41
    sub h                                         ; $40D8: $94
    ld b, d                                       ; $40D9: $42
    ld b, e                                       ; $40DA: $43
    ld [$010F], sp                                ; $40DB: $08 $0F $01
    inc h                                         ; $40DE: $24
    rst $00                                       ; $40DF: $C7
    ld b, $2A                                     ; $40E0: $06 $2A
    nop                                           ; $40E2: $00
    rrca                                          ; $40E3: $0F
    ld bc, wScript_OverworldItemSpell_CollID                                  ; $40E4: $01 $25 $C7
    ld b, $B0                                     ; $40E7: $06 $B0
    nop                                           ; $40E9: $00
    dec e                                         ; $40EA: $1D
    pop af                                        ; $40EB: $F1
    ld b, b                                       ; $40EC: $40
    ld b, l                                       ; $40ED: $45
    ld [hl+], a                                   ; $40EE: $22
    ld b, $40                                     ; $40EF: $06 $40
    xor a                                         ; $40F1: $AF
    xor [hl]                                      ; $40F2: $AE
    and c                                         ; $40F3: $A1
    db $10                                        ; $40F4: $10
    ld b, l                                       ; $40F5: $45
    dec e                                         ; $40F6: $1D
    ld sp, hl                                     ; $40F7: $F9
    ld b, b                                       ; $40F8: $40
    adc b                                         ; $40F9: $88
    nop                                           ; $40FA: $00
    ld a, [hl+]                                   ; $40FB: $2A
    ld bc, $0007                                  ; $40FC: $01 $07 $00
    ld l, e                                       ; $40FF: $6B
    ld c, d                                       ; $4100: $4A
    add hl, bc                                    ; $4101: $09
    nop                                           ; $4102: $00
    dec e                                         ; $4103: $1D
    ld e, $41                                     ; $4104: $1E $41
    dec b                                         ; $4106: $05
    inc bc                                        ; $4107: $03
    ld l, e                                       ; $4108: $6B
    ld c, d                                       ; $4109: $4A
    nop                                           ; $410A: $00
    nop                                           ; $410B: $00
    nop                                           ; $410C: $00
    ret nc                                        ; $410D: $D0

    nop                                           ; $410E: $00
    dec e                                         ; $410F: $1D
    dec sp                                        ; $4110: $3B
    ld b, c                                       ; $4111: $41
    ld [hl+], a                                   ; $4112: $22
    inc b                                         ; $4113: $04
    ld b, b                                       ; $4114: $40
    ld l, e                                       ; $4115: $6B
    jr nz, jr_01D_413C                            ; $4116: $20 $24

    ret nz                                        ; $4118: $C0

    ld h, h                                       ; $4119: $64
    nop                                           ; $411A: $00
    add b                                         ; $411B: $80
    nop                                           ; $411C: $00
    ld b, d                                       ; $411D: $42
    dec d                                         ; $411E: $15
    jr nz, jr_01D_40CC                            ; $411F: $20 $AB

    ld d, b                                       ; $4121: $50
    stop                                          ; $4122: $10 $00
    dec bc                                        ; $4124: $0B
    inc bc                                        ; $4125: $03
    dec d                                         ; $4126: $15
    jr nz, @+$5F                                  ; $4127: $20 $5D

    ld d, b                                       ; $4129: $50
    jr jr_01D_414C                                ; $412A: $18 $20

    xor e                                         ; $412C: $AB
    ld d, b                                       ; $412D: $50
    stop                                          ; $412E: $10 $00
    ld e, d                                       ; $4130: $5A
    dec e                                         ; $4131: $1D
    ld b, [hl]                                    ; $4132: $46
    ld b, c                                       ; $4133: $41
    inc de                                        ; $4134: $13
    add c                                         ; $4135: $81
    ld e, l                                       ; $4136: $5D
    ld b, l                                       ; $4137: $45
    jr nz, @-$53                                  ; $4138: $20 $AB

    ld d, b                                       ; $413A: $50
    rrca                                          ; $413B: $0F

jr_01D_413C:
    nop                                           ; $413C: $00
    dec de                                        ; $413D: $1B
    inc bc                                        ; $413E: $03
    dec d                                         ; $413F: $15
    ld de, $7978                                  ; $4140: $11 $78 $79
    ld b, b                                       ; $4143: $40
    nop                                           ; $4144: $00
    ld b, d                                       ; $4145: $42
    add e                                         ; $4146: $83
    ld bc, $0003                                  ; $4147: $01 $03 $00
    nop                                           ; $414A: $00
    add e                                         ; $414B: $83

jr_01D_414C:
    ld bc, $00FD                                  ; $414C: $01 $FD $00
    nop                                           ; $414F: $00
    add e                                         ; $4150: $83
    ld bc, $FD03                                  ; $4151: $01 $03 $FD
    nop                                           ; $4154: $00
    add e                                         ; $4155: $83
    ld bc, $03FD                                  ; $4156: $01 $FD $03
    nop                                           ; $4159: $00
    add e                                         ; $415A: $83
    ld bc, $FD00                                  ; $415B: $01 $00 $FD
    nop                                           ; $415E: $00
    add e                                         ; $415F: $83
    ld bc, $0300                                  ; $4160: $01 $00 $03
    nop                                           ; $4163: $00
    add hl, bc                                    ; $4164: $09
    ld [bc], a                                    ; $4165: $02
    dec e                                         ; $4166: $1D
    ld l, d                                       ; $4167: $6A
    ld b, c                                       ; $4168: $41
    ld b, d                                       ; $4169: $42
    dec c                                         ; $416A: $0D
    nop                                           ; $416B: $00
    nop                                           ; $416C: $00
    nop                                           ; $416D: $00
    nop                                           ; $416E: $00
    jp nz, $0D46                                  ; $416F: $C2 $46 $0D

    nop                                           ; $4172: $00
    ld bc, $0001                                  ; $4173: $01 $01 $00
    jp nz, $0D47                                  ; $4176: $C2 $47 $0D

    rst $38                                       ; $4179: $FF
    nop                                           ; $417A: $00
    db $F4                                        ; $417B: $F4
    rst $38                                       ; $417C: $FF
    ld [$0D36], sp                                ; $417D: $08 $36 $0D
    rst $38                                       ; $4180: $FF
    ld bc, $FFF5                                  ; $4181: $01 $F5 $FF
    ld [$4237], sp                                ; $4184: $08 $37 $42
    inc bc                                        ; $4187: $03
    ld [bc], a                                    ; $4188: $02
    nop                                           ; $4189: $00
    nop                                           ; $418A: $00
    nop                                           ; $418B: $00
    nop                                           ; $418C: $00
    jp nz, $0346                                  ; $418D: $C2 $46 $03

    ld [bc], a                                    ; $4190: $02
    nop                                           ; $4191: $00
    ld bc, $0001                                  ; $4192: $01 $01 $00
    jp nz, $0347                                  ; $4195: $C2 $47 $03

    ld [bc], a                                    ; $4198: $02
    rst $38                                       ; $4199: $FF
    nop                                           ; $419A: $00
    db $F4                                        ; $419B: $F4
    rst $38                                       ; $419C: $FF
    ld [$0336], sp                                ; $419D: $08 $36 $03
    ld [bc], a                                    ; $41A0: $02
    rst $38                                       ; $41A1: $FF
    ld bc, $FFF5                                  ; $41A2: $01 $F5 $FF
    ld [$9437], sp                                ; $41A5: $08 $37 $94
    ld b, d                                       ; $41A8: $42
    sub e                                         ; $41A9: $93
    ld h, l                                       ; $41AA: $65
    jp nc, Jump_01D_4F40                          ; $41AB: $D2 $40 $4F

    ld h, h                                       ; $41AE: $64
    xor h                                         ; $41AF: $AC
    ld b, b                                       ; $41B0: $40
    ld l, c                                       ; $41B1: $69
    or c                                          ; $41B2: $B1
    ld b, b                                       ; $41B3: $40
    ld h, [hl]                                    ; $41B4: $66
    ret nz                                        ; $41B5: $C0

    ld e, h                                       ; $41B6: $5C
    ld hl, $0005                                  ; $41B7: $21 $05 $00
    add c                                         ; $41BA: $81
    ld e, l                                       ; $41BB: $5D
    dec b                                         ; $41BC: $05
    dec b                                         ; $41BD: $05

jr_01D_41BE:
    ld b, c                                       ; $41BE: $41
    ret nc                                        ; $41BF: $D0

    nop                                           ; $41C0: $00
    jr nz, jr_01D_41BE                            ; $41C1: $20 $FB

    ld d, b                                       ; $41C3: $50
    ld [hl+], a                                   ; $41C4: $22
    dec b                                         ; $41C5: $05
    ld b, b                                       ; $41C6: $40
    dec bc                                        ; $41C7: $0B
    nop                                           ; $41C8: $00
    nop                                           ; $41C9: $00
    add d                                         ; $41CA: $82
    inc h                                         ; $41CB: $24
    ld d, b                                       ; $41CC: $50
    sub h                                         ; $41CD: $94
    ld b, d                                       ; $41CE: $42
    inc h                                         ; $41CF: $24
    ld e, $93                                     ; $41D0: $1E $93
    ld h, l                                       ; $41D2: $65
    and l                                         ; $41D3: $A5
    ld b, b                                       ; $41D4: $40
    ld c, a                                       ; $41D5: $4F
    ld h, [hl]                                    ; $41D6: $66
    ret nz                                        ; $41D7: $C0

    ld e, h                                       ; $41D8: $5C
    ld hl, $8D64                                  ; $41D9: $21 $64 $8D
    ld b, b                                       ; $41DC: $40
    dec b                                         ; $41DD: $05
    nop                                           ; $41DE: $00
    add c                                         ; $41DF: $81
    ld e, l                                       ; $41E0: $5D
    dec b                                         ; $41E1: $05
    dec b                                         ; $41E2: $05

jr_01D_41E3:
    ld d, l                                       ; $41E3: $55
    ret nc                                        ; $41E4: $D0

    nop                                           ; $41E5: $00
    jr nz, jr_01D_41E3                            ; $41E6: $20 $FB

    ld d, b                                       ; $41E8: $50
    ld [hl+], a                                   ; $41E9: $22
    dec b                                         ; $41EA: $05
    ld b, b                                       ; $41EB: $40
    dec b                                         ; $41EC: $05
    ld [bc], a                                    ; $41ED: $02
    and h                                         ; $41EE: $A4
    ld h, l                                       ; $41EF: $65
    inc c                                         ; $41F0: $0C
    inc b                                         ; $41F1: $04
    ld c, h                                       ; $41F2: $4C
    ret nc                                        ; $41F3: $D0

    nop                                           ; $41F4: $00
    dec e                                         ; $41F5: $1D
    dec b                                         ; $41F6: $05
    ld b, d                                       ; $41F7: $42
    dec e                                         ; $41F8: $1D
    sub a                                         ; $41F9: $97
    ld b, b                                       ; $41FA: $40
    dec bc                                        ; $41FB: $0B
    nop                                           ; $41FC: $00
    dec bc                                        ; $41FD: $0B
    ld [bc], a                                    ; $41FE: $02
    nop                                           ; $41FF: $00
    add d                                         ; $4200: $82
    rra                                           ; $4201: $1F
    inc h                                         ; $4202: $24
    sub h                                         ; $4203: $94
    ld b, d                                       ; $4204: $42
    ld a, [de]                                    ; $4205: $1A
    db $FD                                        ; $4206: $FD
    dec c                                         ; $4207: $0D
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420A: $00
    nop                                           ; $420B: $00
    nop                                           ; $420C: $00
    add [hl]                                      ; $420D: $86
    ld bc, $040A                                  ; $420E: $01 $0A $04
    ld b, d                                       ; $4211: $42
    sub e                                         ; $4212: $93
    ld h, l                                       ; $4213: $65
    or h                                          ; $4214: $B4
    ld b, b                                       ; $4215: $40
    ld c, a                                       ; $4216: $4F
    ld h, [hl]                                    ; $4217: $66
    ret nz                                        ; $4218: $C0

    ld e, h                                       ; $4219: $5C
    ld hl, $BE64                                  ; $421A: $21 $64 $BE
    ld b, b                                       ; $421D: $40
    dec b                                         ; $421E: $05
    nop                                           ; $421F: $00
    add c                                         ; $4220: $81
    ld e, l                                       ; $4221: $5D
    dec b                                         ; $4222: $05
    dec b                                         ; $4223: $05

jr_01D_4224:
    ld d, l                                       ; $4224: $55
    ret nc                                        ; $4225: $D0

    nop                                           ; $4226: $00
    jr nz, jr_01D_4224                            ; $4227: $20 $FB

    ld d, b                                       ; $4229: $50
    ld [hl+], a                                   ; $422A: $22
    dec b                                         ; $422B: $05
    ld b, b                                       ; $422C: $40
    dec bc                                        ; $422D: $0B
    nop                                           ; $422E: $00
    nop                                           ; $422F: $00
    add d                                         ; $4230: $82
    rra                                           ; $4231: $1F
    inc h                                         ; $4232: $24
    sub h                                         ; $4233: $94
    ld b, d                                       ; $4234: $42
    dec b                                         ; $4235: $05
    ld [bc], a                                    ; $4236: $02
    and h                                         ; $4237: $A4
    ld h, l                                       ; $4238: $65
    dec h                                         ; $4239: $25
    ld [$D225], sp                                ; $423A: $08 $25 $D2
    nop                                           ; $423D: $00
    ld de, $7604                                  ; $423E: $11 $04 $76
    cpl                                           ; $4241: $2F
    db $10                                        ; $4242: $10
    ld b, d                                       ; $4243: $42
    ld bc, $2512                                  ; $4244: $01 $12 $25
    ld b, l                                       ; $4247: $45
    cpl                                           ; $4248: $2F
    ld h, l                                       ; $4249: $65
    ld b, c                                       ; $424A: $41
    ld [bc], a                                    ; $424B: $02
    ld d, $06                                     ; $424C: $16 $06
    dec d                                         ; $424E: $15
    dec bc                                        ; $424F: $0B
    ld b, l                                       ; $4250: $45
    dec e                                         ; $4251: $1D
    or d                                          ; $4252: $B2
    ld a, c                                       ; $4253: $79
    ld b, e                                       ; $4254: $43
    rrca                                          ; $4255: $0F
    inc b                                         ; $4256: $04
    dec b                                         ; $4257: $05
    inc b                                         ; $4258: $04
    dec e                                         ; $4259: $1D
    ld a, l                                       ; $425A: $7D
    ld c, c                                       ; $425B: $49
    ld b, d                                       ; $425C: $42
    ld b, e                                       ; $425D: $43
    nop                                           ; $425E: $00
    or c                                          ; $425F: $B1
    and c                                         ; $4260: $A1
    db $10                                        ; $4261: $10
    dec e                                         ; $4262: $1D
    push bc                                       ; $4263: $C5
    ld b, d                                       ; $4264: $42
    xor a                                         ; $4265: $AF
    or c                                          ; $4266: $B1
    and c                                         ; $4267: $A1
    db $10                                        ; $4268: $10
    sbc e                                         ; $4269: $9B
    ld a, b                                       ; $426A: $78
    ld [hl], b                                    ; $426B: $70

jr_01D_426C:
    sbc a                                         ; $426C: $9F
    ld d, h                                       ; $426D: $54
    ld l, b                                       ; $426E: $68
    ld l, c                                       ; $426F: $69
    ld [hl], e                                    ; $4270: $73
    jr nz, @+$6F                                  ; $4271: $20 $6D

    ld [hl], l                                    ; $4273: $75
    ld [hl], e                                    ; $4274: $73
    ld [hl], h                                    ; $4275: $74
    jr nz, jr_01D_42DA                            ; $4276: $20 $62

    ld h, l                                       ; $4278: $65
    rst $38                                       ; $4279: $FF
    ld l, b                                       ; $427A: $68
    ld h, l                                       ; $427B: $65
    ld [hl], d                                    ; $427C: $72
    jr nz, jr_01D_42F2                            ; $427D: $20 $73

    ld [hl], h                                    ; $427F: $74
    ld l, a                                       ; $4280: $6F
    ld [hl], d                                    ; $4281: $72
    ld h, c                                       ; $4282: $61
    ld h, a                                       ; $4283: $67
    ld h, l                                       ; $4284: $65
    cp $73                                        ; $4285: $FE $73
    ld l, b                                       ; $4287: $68
    ld h, l                                       ; $4288: $65
    ld h, h                                       ; $4289: $64
    ld hl, $49FE                                  ; $428A: $21 $FE $49
    jr nz, jr_01D_4306                            ; $428D: $20 $77

    ld l, a                                       ; $428F: $6F
    ld l, [hl]                                    ; $4290: $6E
    ld h, h                                       ; $4291: $64
    ld h, l                                       ; $4292: $65
    ld [hl], d                                    ; $4293: $72
    jr nz, jr_01D_430D                            ; $4294: $20 $77

    ld l, b                                       ; $4296: $68
    ld h, c                                       ; $4297: $61
    ld [hl], h                                    ; $4298: $74
    rst $38                                       ; $4299: $FF
    ld [hl], e                                    ; $429A: $73
    ld l, b                                       ; $429B: $68
    ld h, l                                       ; $429C: $65
    jr nz, jr_01D_430A                            ; $429D: $20 $6B

    ld h, l                                       ; $429F: $65
    ld h, l                                       ; $42A0: $65
    ld [hl], b                                    ; $42A1: $70
    ld [hl], e                                    ; $42A2: $73
    jr nz, @+$6B                                  ; $42A3: $20 $69

    ld l, [hl]                                    ; $42A5: $6E
    cp $68                                        ; $42A6: $FE $68
    ld h, l                                       ; $42A8: $65
    ld [hl], d                                    ; $42A9: $72
    ld h, l                                       ; $42AA: $65
    ccf                                           ; $42AB: $3F
    cp $FD                                        ; $42AC: $FE $FD
    sbc d                                         ; $42AE: $9A
    inc c                                         ; $42AF: $0C
    nop                                           ; $42B0: $00
    ld b, b                                       ; $42B1: $40
    ld b, b                                       ; $42B2: $40
    add hl, bc                                    ; $42B3: $09
    nop                                           ; $42B4: $00
    jr nz, jr_01D_426C                            ; $42B5: $20 $B5

    ld d, b                                       ; $42B7: $50
    dec bc                                        ; $42B8: $0B
    nop                                           ; $42B9: $00
    sbc e                                         ; $42BA: $9B
    ld a, b                                       ; $42BB: $78
    ld [hl], b                                    ; $42BC: $70
    sbc a                                         ; $42BD: $9F
    ld c, a                                       ; $42BE: $4F
    ld l, b                                       ; $42BF: $68
    ld l, $FE                                     ; $42C0: $2E $FE
    db $FD                                        ; $42C2: $FD
    sbc d                                         ; $42C3: $9A
    ld b, d                                       ; $42C4: $42
    sbc e                                         ; $42C5: $9B
    ld a, b                                       ; $42C6: $78
    ld [hl], b                                    ; $42C7: $70
    sbc a                                         ; $42C8: $9F
    ld c, c                                       ; $42C9: $49
    jr nz, jr_01D_433E                            ; $42CA: $20 $72

    ld h, l                                       ; $42CC: $65
    ld h, c                                       ; $42CD: $61
    ld l, h                                       ; $42CE: $6C
    ld l, h                                       ; $42CF: $6C
    ld a, c                                       ; $42D0: $79
    jr nz, @+$66                                  ; $42D1: $20 $64

    ld l, a                                       ; $42D3: $6F
    ld l, [hl]                                    ; $42D4: $6E
    daa                                           ; $42D5: $27
    ld [hl], h                                    ; $42D6: $74
    rst $38                                       ; $42D7: $FF
    ld [hl], h                                    ; $42D8: $74
    ld l, b                                       ; $42D9: $68

jr_01D_42DA:
    ld l, c                                       ; $42DA: $69
    ld l, [hl]                                    ; $42DB: $6E
    ld l, e                                       ; $42DC: $6B
    jr nz, jr_01D_4328                            ; $42DD: $20 $49

    jr nz, @+$70                                  ; $42DF: $20 $6E

    ld h, l                                       ; $42E1: $65
    ld h, l                                       ; $42E2: $65
    ld h, h                                       ; $42E3: $64
    cp $74                                        ; $42E4: $FE $74
    ld l, a                                       ; $42E6: $6F
    jr nz, jr_01D_4350                            ; $42E7: $20 $67

    ld l, a                                       ; $42E9: $6F
    jr nz, jr_01D_434E                            ; $42EA: $20 $62

    ld h, c                                       ; $42EC: $61
    ld h, e                                       ; $42ED: $63
    ld l, e                                       ; $42EE: $6B
    rst $38                                       ; $42EF: $FF
    ld l, c                                       ; $42F0: $69
    ld l, [hl]                                    ; $42F1: $6E

jr_01D_42F2:
    ld [hl], h                                    ; $42F2: $74
    ld l, a                                       ; $42F3: $6F
    jr nz, jr_01D_436A                            ; $42F4: $20 $74

    ld l, b                                       ; $42F6: $68
    ld h, l                                       ; $42F7: $65
    cp $27                                        ; $42F8: $FE $27
    ld [hl], e                                    ; $42FA: $73
    ld [hl], h                                    ; $42FB: $74
    ld l, a                                       ; $42FC: $6F
    ld [hl], d                                    ; $42FD: $72
    ld h, c                                       ; $42FE: $61
    ld h, a                                       ; $42FF: $67
    ld h, l                                       ; $4300: $65
    jr nz, jr_01D_4376                            ; $4301: $20 $73

    ld l, b                                       ; $4303: $68
    ld h, l                                       ; $4304: $65
    ld h, h                                       ; $4305: $64

jr_01D_4306:
    daa                                           ; $4306: $27
    rst $38                                       ; $4307: $FF
    ld h, c                                       ; $4308: $61
    ld h, a                                       ; $4309: $67

jr_01D_430A:
    ld h, c                                       ; $430A: $61
    ld l, c                                       ; $430B: $69
    ld l, [hl]                                    ; $430C: $6E

jr_01D_430D:
    ld l, $FE                                     ; $430D: $2E $FE
    db $FD                                        ; $430F: $FD
    sbc d                                         ; $4310: $9A
    ld b, d                                       ; $4311: $42
    sbc e                                         ; $4312: $9B
    ld a, b                                       ; $4313: $78
    ld [hl], b                                    ; $4314: $70
    sbc a                                         ; $4315: $9F
    ld b, [hl]                                    ; $4316: $46
    ld l, c                                       ; $4317: $69
    ld [hl], d                                    ; $4318: $72
    ld h, l                                       ; $4319: $65
    ld [hl], a                                    ; $431A: $77
    ld l, a                                       ; $431B: $6F
    ld l, a                                       ; $431C: $6F
    ld h, h                                       ; $431D: $64
    ld hl, $4AFE                                  ; $431E: $21 $FE $4A
    ld [hl], l                                    ; $4321: $75
    ld [hl], e                                    ; $4322: $73
    ld [hl], h                                    ; $4323: $74
    jr nz, jr_01D_4392                            ; $4324: $20 $6C

    ld l, c                                       ; $4326: $69
    ld l, e                                       ; $4327: $6B

jr_01D_4328:
    ld h, l                                       ; $4328: $65
    rst $38                                       ; $4329: $FF
    ld b, a                                       ; $432A: $47
    ld [hl], d                                    ; $432B: $72
    ld h, c                                       ; $432C: $61
    ld l, [hl]                                    ; $432D: $6E
    ld h, h                                       ; $432E: $64
    ld [hl], b                                    ; $432F: $70
    ld h, c                                       ; $4330: $61
    jr nz, jr_01D_43A8                            ; $4331: $20 $75

    ld [hl], e                                    ; $4333: $73
    ld h, l                                       ; $4334: $65
    ld h, h                                       ; $4335: $64
    cp $74                                        ; $4336: $FE $74
    ld l, a                                       ; $4338: $6F
    jr nz, jr_01D_43A8                            ; $4339: $20 $6D

    ld h, c                                       ; $433B: $61
    ld l, e                                       ; $433C: $6B
    ld h, l                                       ; $433D: $65

jr_01D_433E:
    ld hl, $FDFE                                  ; $433E: $21 $FE $FD
    sbc d                                         ; $4341: $9A
    ld b, d                                       ; $4342: $42
    sbc e                                         ; $4343: $9B
    ld a, b                                       ; $4344: $78
    ld [hl], b                                    ; $4345: $70
    sbc a                                         ; $4346: $9F
    ld d, b                                       ; $4347: $50
    ld h, l                                       ; $4348: $65
    ld [hl], d                                    ; $4349: $72
    ld h, [hl]                                    ; $434A: $66
    ld h, l                                       ; $434B: $65
    ld h, e                                       ; $434C: $63
    ld [hl], h                                    ; $434D: $74

jr_01D_434E:
    jr nz, jr_01D_43B3                            ; $434E: $20 $63

jr_01D_4350:
    ld [hl], l                                    ; $4350: $75
    ld [hl], h                                    ; $4351: $74
    ld [hl], e                                    ; $4352: $73
    rst $38                                       ; $4353: $FF
    ld l, a                                       ; $4354: $6F
    ld h, [hl]                                    ; $4355: $66
    jr nz, jr_01D_43CF                            ; $4356: $20 $77

    ld l, a                                       ; $4358: $6F
    ld l, a                                       ; $4359: $6F
    ld h, h                                       ; $435A: $64
    ld l, $FE                                     ; $435B: $2E $FE
    ld c, c                                       ; $435D: $49
    ld [hl], h                                    ; $435E: $74
    jr nz, jr_01D_43C4                            ; $435F: $20 $63

    ld h, c                                       ; $4361: $61
    ld l, [hl]                                    ; $4362: $6E
    jr nz, jr_01D_43D4                            ; $4363: $20 $6F

    ld l, [hl]                                    ; $4365: $6E
    ld l, h                                       ; $4366: $6C
    ld a, c                                       ; $4367: $79
    rst $38                                       ; $4368: $FF
    ld h, d                                       ; $4369: $62

jr_01D_436A:
    ld h, l                                       ; $436A: $65
    jr nz, jr_01D_43D2                            ; $436B: $20 $65

    ld a, b                                       ; $436D: $78
    ld [hl], b                                    ; $436E: $70
    ld h, l                                       ; $436F: $65
    ld h, e                                       ; $4370: $63
    ld [hl], h                                    ; $4371: $74
    ld h, l                                       ; $4372: $65
    ld h, h                                       ; $4373: $64
    ld l, $FE                                     ; $4374: $2E $FE

jr_01D_4376:
    db $FD                                        ; $4376: $FD
    sbc d                                         ; $4377: $9A
    ld b, d                                       ; $4378: $42
    sbc e                                         ; $4379: $9B
    ld a, b                                       ; $437A: $78
    ld [hl], b                                    ; $437B: $70
    sbc a                                         ; $437C: $9F
    ld b, c                                       ; $437D: $41
    jr nz, jr_01D_43E2                            ; $437E: $20 $62

    ld h, c                                       ; $4380: $61
    ld [hl], d                                    ; $4381: $72
    ld [hl], d                                    ; $4382: $72
    ld h, l                                       ; $4383: $65
    ld l, h                                       ; $4384: $6C
    ld l, $FE                                     ; $4385: $2E $FE
    db $FD                                        ; $4387: $FD
    sbc d                                         ; $4388: $9A
    ld b, d                                       ; $4389: $42
    sbc e                                         ; $438A: $9B
    ld a, b                                       ; $438B: $78
    ld [hl], b                                    ; $438C: $70
    sbc a                                         ; $438D: $9F
    ld b, c                                       ; $438E: $41
    ld l, [hl]                                    ; $438F: $6E
    ld l, a                                       ; $4390: $6F
    ld [hl], h                                    ; $4391: $74

jr_01D_4392:
    ld l, b                                       ; $4392: $68
    ld h, l                                       ; $4393: $65
    ld [hl], d                                    ; $4394: $72
    rst $38                                       ; $4395: $FF
    ld h, d                                       ; $4396: $62
    ld h, c                                       ; $4397: $61
    ld [hl], d                                    ; $4398: $72
    ld [hl], d                                    ; $4399: $72
    ld h, l                                       ; $439A: $65
    ld l, h                                       ; $439B: $6C
    ld l, $FE                                     ; $439C: $2E $FE
    db $FD                                        ; $439E: $FD
    sbc d                                         ; $439F: $9A
    ld b, d                                       ; $43A0: $42
    sbc e                                         ; $43A1: $9B
    ld a, b                                       ; $43A2: $78
    ld [hl], b                                    ; $43A3: $70
    sbc a                                         ; $43A4: $9F
    ld b, c                                       ; $43A5: $41
    jr nz, @+$6F                                  ; $43A6: $20 $6D

jr_01D_43A8:
    ld l, c                                       ; $43A8: $69
    ld h, a                                       ; $43A9: $67
    ld l, b                                       ; $43AA: $68
    ld [hl], h                                    ; $43AB: $74
    ld a, c                                       ; $43AC: $79
    jr nz, jr_01D_4426                            ; $43AD: $20 $77

    ld l, a                                       ; $43AF: $6F
    ld l, a                                       ; $43B0: $6F
    ld h, h                                       ; $43B1: $64
    rst $38                                       ; $43B2: $FF

jr_01D_43B3:
    ld h, d                                       ; $43B3: $62
    ld [hl], l                                    ; $43B4: $75
    ld [hl], d                                    ; $43B5: $72
    ld l, [hl]                                    ; $43B6: $6E
    ld l, c                                       ; $43B7: $69
    ld l, [hl]                                    ; $43B8: $6E
    ld h, a                                       ; $43B9: $67
    cp $66                                        ; $43BA: $FE $66
    ld [hl], l                                    ; $43BC: $75
    ld [hl], d                                    ; $43BD: $72
    ld l, [hl]                                    ; $43BE: $6E
    ld h, c                                       ; $43BF: $61
    ld h, e                                       ; $43C0: $63
    ld h, l                                       ; $43C1: $65
    ld l, $FE                                     ; $43C2: $2E $FE

jr_01D_43C4:
    ld c, b                                       ; $43C4: $48
    ld h, c                                       ; $43C5: $61
    ld [hl], d                                    ; $43C6: $72
    ld l, [hl]                                    ; $43C7: $6E
    ld h, l                                       ; $43C8: $65
    ld [hl], e                                    ; $43C9: $73
    ld [hl], e                                    ; $43CA: $73
    ld h, l                                       ; $43CB: $65
    ld [hl], e                                    ; $43CC: $73
    jr nz, @+$76                                  ; $43CD: $20 $74

jr_01D_43CF:
    ld l, b                                       ; $43CF: $68
    ld h, l                                       ; $43D0: $65
    rst $38                                       ; $43D1: $FF

jr_01D_43D2:
    ld [hl], b                                    ; $43D2: $70
    ld l, a                                       ; $43D3: $6F

jr_01D_43D4:
    ld [hl], a                                    ; $43D4: $77
    ld h, l                                       ; $43D5: $65
    ld [hl], d                                    ; $43D6: $72
    jr nz, jr_01D_4448                            ; $43D7: $20 $6F

    ld h, [hl]                                    ; $43D9: $66
    cp $62                                        ; $43DA: $FE $62
    ld [hl], l                                    ; $43DC: $75
    ld [hl], d                                    ; $43DD: $72
    ld l, [hl]                                    ; $43DE: $6E
    ld l, c                                       ; $43DF: $69
    ld l, [hl]                                    ; $43E0: $6E
    ld h, a                                       ; $43E1: $67

jr_01D_43E2:
    jr nz, jr_01D_445B                            ; $43E2: $20 $77

    ld l, a                                       ; $43E4: $6F
    ld l, a                                       ; $43E5: $6F
    ld h, h                                       ; $43E6: $64
    rst $38                                       ; $43E7: $FF
    ld [hl], a                                    ; $43E8: $77
    ld l, c                                       ; $43E9: $69
    ld [hl], h                                    ; $43EA: $74
    ld l, b                                       ; $43EB: $68
    jr nz, @+$6B                                  ; $43EC: $20 $69

    ld [hl], h                                    ; $43EE: $74
    ld [hl], e                                    ; $43EF: $73
    cp $6D                                        ; $43F0: $FE $6D
    ld l, c                                       ; $43F2: $69
    ld h, a                                       ; $43F3: $67
    ld l, b                                       ; $43F4: $68
    ld [hl], h                                    ; $43F5: $74
    ld l, c                                       ; $43F6: $69
    ld l, [hl]                                    ; $43F7: $6E
    ld h, l                                       ; $43F8: $65
    ld [hl], e                                    ; $43F9: $73
    ld [hl], e                                    ; $43FA: $73
    ld l, $FE                                     ; $43FB: $2E $FE
    ld b, [hl]                                    ; $43FD: $46
    ld l, a                                       ; $43FE: $6F
    ld [hl], d                                    ; $43FF: $72
    jr nz, jr_01D_4476                            ; $4400: $20 $74

    ld l, b                                       ; $4402: $68
    ld h, l                                       ; $4403: $65
    rst $38                                       ; $4404: $FF
    ld h, e                                       ; $4405: $63
    ld l, a                                       ; $4406: $6F
    ld l, a                                       ; $4407: $6F
    ld l, e                                       ; $4408: $6B
    ld l, c                                       ; $4409: $69
    ld l, [hl]                                    ; $440A: $6E
    ld h, a                                       ; $440B: $67
    jr nz, jr_01D_447D                            ; $440C: $20 $6F

    ld h, [hl]                                    ; $440E: $66
    jr nz, jr_01D_4481                            ; $440F: $20 $70

    ld l, a                                       ; $4411: $6F
    ld [hl], h                                    ; $4412: $74
    ld [hl], e                                    ; $4413: $73
    cp $61                                        ; $4414: $FE $61
    ld l, [hl]                                    ; $4416: $6E
    ld h, h                                       ; $4417: $64
    jr nz, jr_01D_448D                            ; $4418: $20 $73

    ld [hl], h                                    ; $441A: $74
    ld [hl], l                                    ; $441B: $75
    ld h, [hl]                                    ; $441C: $66
    ld h, [hl]                                    ; $441D: $66
    ld l, $FE                                     ; $441E: $2E $FE
    ld e, c                                       ; $4420: $59
    ld h, l                                       ; $4421: $65
    ld h, c                                       ; $4422: $61
    ld l, b                                       ; $4423: $68
    ld l, $FE                                     ; $4424: $2E $FE

jr_01D_4426:
    db $FD                                        ; $4426: $FD
    sbc d                                         ; $4427: $9A
    ld b, d                                       ; $4428: $42
    sbc e                                         ; $4429: $9B
    ld a, b                                       ; $442A: $78
    ld [hl], b                                    ; $442B: $70
    sbc a                                         ; $442C: $9F
    ld d, a                                       ; $442D: $57
    ld l, a                                       ; $442E: $6F
    ld [hl], a                                    ; $442F: $77
    ld hl, $41FE                                  ; $4430: $21 $FE $41
    jr nz, jr_01D_4498                            ; $4433: $20 $63

    ld h, c                                       ; $4435: $61
    ld h, d                                       ; $4436: $62
    ld h, d                                       ; $4437: $62
    ld h, c                                       ; $4438: $61
    ld h, a                                       ; $4439: $67
    ld h, l                                       ; $443A: $65
    jr nz, jr_01D_44B0                            ; $443B: $20 $73

    ld l, a                                       ; $443D: $6F
    rst $38                                       ; $443E: $FF
    ld h, d                                       ; $443F: $62
    ld l, c                                       ; $4440: $69
    ld h, a                                       ; $4441: $67
    jr nz, jr_01D_448D                            ; $4442: $20 $49

    jr nz, jr_01D_44A9                            ; $4444: $20 $63

    ld l, a                                       ; $4446: $6F
    ld [hl], l                                    ; $4447: $75

jr_01D_4448:
    ld l, h                                       ; $4448: $6C
    ld h, h                                       ; $4449: $64
    cp $73                                        ; $444A: $FE $73
    ld l, h                                       ; $444C: $6C
    ld h, l                                       ; $444D: $65
    ld h, l                                       ; $444E: $65
    ld [hl], b                                    ; $444F: $70
    jr nz, @+$6B                                  ; $4450: $20 $69

    ld l, [hl]                                    ; $4452: $6E
    jr nz, jr_01D_44BE                            ; $4453: $20 $69

    ld [hl], h                                    ; $4455: $74
    ld hl, $FDFE                                  ; $4456: $21 $FE $FD
    sbc d                                         ; $4459: $9A
    ld b, d                                       ; $445A: $42

jr_01D_445B:
    sbc a                                         ; $445B: $9F
    ld d, e                                       ; $445C: $53
    ld l, h                                       ; $445D: $6C
    ld [hl], l                                    ; $445E: $75
    ld [hl], d                                    ; $445F: $72
    ld [hl], b                                    ; $4460: $70
    ld hl, $5320                                  ; $4461: $21 $20 $53
    ld l, h                                       ; $4464: $6C
    ld [hl], l                                    ; $4465: $75
    ld [hl], d                                    ; $4466: $72
    ld [hl], b                                    ; $4467: $70
    ld hl, $53FE                                  ; $4468: $21 $FE $53
    ld [hl], b                                    ; $446B: $70
    ld [hl], l                                    ; $446C: $75
    ld [hl], d                                    ; $446D: $72
    ld l, h                                       ; $446E: $6C
    ld h, c                                       ; $446F: $61
    ld [hl], h                                    ; $4470: $74
    ld hl, $FDFE                                  ; $4471: $21 $FE $FD
    sbc e                                         ; $4474: $9B
    ld a, b                                       ; $4475: $78

jr_01D_4476:
    ld [hl], b                                    ; $4476: $70
    sbc a                                         ; $4477: $9F
    ld d, a                                       ; $4478: $57
    ld l, b                                       ; $4479: $68
    ld h, c                                       ; $447A: $61
    ld [hl], h                                    ; $447B: $74
    daa                                           ; $447C: $27

jr_01D_447D:
    ld [hl], e                                    ; $447D: $73
    jr nz, jr_01D_44E9                            ; $447E: $20 $69

    ld l, [hl]                                    ; $4480: $6E

jr_01D_4481:
    jr nz, jr_01D_44F7                            ; $4481: $20 $74

    ld l, b                                       ; $4483: $68
    ld l, c                                       ; $4484: $69
    ld [hl], e                                    ; $4485: $73
    rst $38                                       ; $4486: $FF
    ld [hl], e                                    ; $4487: $73
    ld [hl], h                                    ; $4488: $74
    ld [hl], l                                    ; $4489: $75
    ld h, [hl]                                    ; $448A: $66
    ld h, [hl]                                    ; $448B: $66
    inc l                                         ; $448C: $2C

jr_01D_448D:
    jr nz, jr_01D_44F0                            ; $448D: $20 $61

    ld l, [hl]                                    ; $448F: $6E
    ld a, c                                       ; $4490: $79
    ld [hl], a                                    ; $4491: $77
    ld h, c                                       ; $4492: $61
    ld a, c                                       ; $4493: $79
    ccf                                           ; $4494: $3F
    cp $FD                                        ; $4495: $FE $FD
    sbc d                                         ; $4497: $9A

jr_01D_4498:
    ld b, d                                       ; $4498: $42
    sbc e                                         ; $4499: $9B
    ld a, b                                       ; $449A: $78
    ld [hl], b                                    ; $449B: $70
    sbc a                                         ; $449C: $9F
    ld b, l                                       ; $449D: $45
    halt                                          ; $449E: $76
    ld h, l                                       ; $449F: $65
    ld [hl], d                                    ; $44A0: $72
    ld a, c                                       ; $44A1: $79
    jr nz, jr_01D_450C                            ; $44A2: $20 $68

    ld [hl], l                                    ; $44A4: $75
    ld [hl], h                                    ; $44A5: $74
    rst $38                                       ; $44A6: $FF
    ld [hl], e                                    ; $44A7: $73
    ld l, b                                       ; $44A8: $68

jr_01D_44A9:
    ld l, a                                       ; $44A9: $6F
    ld [hl], l                                    ; $44AA: $75
    ld l, h                                       ; $44AB: $6C
    ld h, h                                       ; $44AC: $64
    jr nz, jr_01D_4517                            ; $44AD: $20 $68

    ld h, c                                       ; $44AF: $61

jr_01D_44B0:
    halt                                          ; $44B0: $76
    ld h, l                                       ; $44B1: $65
    cp $69                                        ; $44B2: $FE $69
    ld [hl], h                                    ; $44B4: $74
    ld [hl], e                                    ; $44B5: $73
    jr nz, jr_01D_4527                            ; $44B6: $20 $6F

    ld [hl], a                                    ; $44B8: $77
    ld l, [hl]                                    ; $44B9: $6E
    jr nz, jr_01D_452F                            ; $44BA: $20 $73

    ld [hl], b                                    ; $44BC: $70
    ld h, l                                       ; $44BD: $65

jr_01D_44BE:
    ld h, e                                       ; $44BE: $63
    ld l, c                                       ; $44BF: $69
    ld h, c                                       ; $44C0: $61
    ld l, h                                       ; $44C1: $6C
    rst $38                                       ; $44C2: $FF
    ld h, [hl]                                    ; $44C3: $66
    ld [hl], d                                    ; $44C4: $72
    ld l, a                                       ; $44C5: $6F
    ld h, a                                       ; $44C6: $67
    jr nz, jr_01D_4540                            ; $44C7: $20 $77

    ld h, l                                       ; $44C9: $65
    ld h, c                                       ; $44CA: $61
    ld [hl], h                                    ; $44CB: $74
    ld l, b                                       ; $44CC: $68
    ld h, l                                       ; $44CD: $65
    ld [hl], d                                    ; $44CE: $72
    cp $76                                        ; $44CF: $FE $76
    ld h, c                                       ; $44D1: $61
    ld l, [hl]                                    ; $44D2: $6E
    ld h, l                                       ; $44D3: $65
    ld l, $FE                                     ; $44D4: $2E $FE
    db $FD                                        ; $44D6: $FD
    sbc d                                         ; $44D7: $9A
    ld b, d                                       ; $44D8: $42
    sbc e                                         ; $44D9: $9B
    ld a, b                                       ; $44DA: $78
    ld [hl], b                                    ; $44DB: $70
    sbc a                                         ; $44DC: $9F
    ld c, c                                       ; $44DD: $49
    ld [hl], h                                    ; $44DE: $74
    jr nz, jr_01D_4558                            ; $44DF: $20 $77

    ld l, a                                       ; $44E1: $6F
    ld l, [hl]                                    ; $44E2: $6E
    daa                                           ; $44E3: $27
    ld [hl], h                                    ; $44E4: $74
    jr nz, jr_01D_4556                            ; $44E5: $20 $6F

    ld [hl], b                                    ; $44E7: $70
    ld h, l                                       ; $44E8: $65

jr_01D_44E9:
    ld l, [hl]                                    ; $44E9: $6E
    ld l, $FE                                     ; $44EA: $2E $FE
    db $FD                                        ; $44EC: $FD
    sbc d                                         ; $44ED: $9A
    ld b, d                                       ; $44EE: $42
    ld e, e                                       ; $44EF: $5B

jr_01D_44F0:
    dec e                                         ; $44F0: $1D
    rst $30                                       ; $44F1: $F7
    ld b, h                                       ; $44F2: $44
    ld b, l                                       ; $44F3: $45
    ld c, $35                                     ; $44F4: $0E $35
    ld d, l                                       ; $44F6: $55

jr_01D_44F7:
    ld c, e                                       ; $44F7: $4B
    inc b                                         ; $44F8: $04
    dec e                                         ; $44F9: $1D
    dec b                                         ; $44FA: $05
    nop                                           ; $44FB: $00
    jr nc, jr_01D_4543                            ; $44FC: $30 $45

    dec e                                         ; $44FE: $1D
    ld b, $00                                     ; $44FF: $06 $00
    ld e, b                                       ; $4501: $58
    ld b, l                                       ; $4502: $45
    dec e                                         ; $4503: $1D
    rlca                                          ; $4504: $07
    nop                                           ; $4505: $00
    ld a, h                                       ; $4506: $7C
    ld b, a                                       ; $4507: $47
    dec e                                         ; $4508: $1D
    ld c, $00                                     ; $4509: $0E $00
    or [hl]                                       ; $450B: $B6

jr_01D_450C:
    ld b, a                                       ; $450C: $47
    dec e                                         ; $450D: $1D
    rrca                                          ; $450E: $0F
    nop                                           ; $450F: $00
    or [hl]                                       ; $4510: $B6
    ld b, a                                       ; $4511: $47
    rst $38                                       ; $4512: $FF
    sbc e                                         ; $4513: $9B

jr_01D_4514:
    ld c, b                                       ; $4514: $48
    ld b, [hl]                                    ; $4515: $46
    sbc a                                         ; $4516: $9F

jr_01D_4517:
    ld b, a                                       ; $4517: $47
    ld l, c                                       ; $4518: $69
    ld h, c                                       ; $4519: $61
    daa                                           ; $451A: $27
    ld [hl], e                                    ; $451B: $73
    jr nz, @+$79                                  ; $451C: $20 $77

    ld h, c                                       ; $451E: $61
    ld l, c                                       ; $451F: $69
    ld [hl], h                                    ; $4520: $74
    ld l, c                                       ; $4521: $69
    ld l, [hl]                                    ; $4522: $6E
    ld h, a                                       ; $4523: $67
    rst $38                                       ; $4524: $FF
    ld l, c                                       ; $4525: $69
    ld l, [hl]                                    ; $4526: $6E

jr_01D_4527:
    ld [hl], e                                    ; $4527: $73
    ld l, c                                       ; $4528: $69
    ld h, h                                       ; $4529: $64
    ld h, l                                       ; $452A: $65
    ld l, $FE                                     ; $452B: $2E $FE
    db $FD                                        ; $452D: $FD
    sbc d                                         ; $452E: $9A

jr_01D_452F:
    ld [de], a                                    ; $452F: $12
    sbc e                                         ; $4530: $9B
    ld c, b                                       ; $4531: $48
    ld b, [hl]                                    ; $4532: $46
    sbc a                                         ; $4533: $9F
    ld b, d                                       ; $4534: $42
    ld h, l                                       ; $4535: $65
    jr nz, jr_01D_459B                            ; $4536: $20 $63

    ld h, c                                       ; $4538: $61
    ld [hl], d                                    ; $4539: $72
    ld h, l                                       ; $453A: $65
    ld h, [hl]                                    ; $453B: $66
    ld [hl], l                                    ; $453C: $75
    ld l, h                                       ; $453D: $6C
    jr nz, jr_01D_45A9                            ; $453E: $20 $69

jr_01D_4540:
    ld l, [hl]                                    ; $4540: $6E
    rst $38                                       ; $4541: $FF
    ld [hl], h                                    ; $4542: $74

jr_01D_4543:
    ld l, b                                       ; $4543: $68
    ld h, l                                       ; $4544: $65
    jr nz, jr_01D_459A                            ; $4545: $20 $53

    ld l, b                                       ; $4547: $68
    ld h, c                                       ; $4548: $61
    ld h, h                                       ; $4549: $64
    ld l, a                                       ; $454A: $6F
    ld [hl], a                                    ; $454B: $77
    cp $47                                        ; $454C: $FE $47
    ld h, l                                       ; $454E: $65
    ld a, c                                       ; $454F: $79
    ld [hl], e                                    ; $4550: $73
    ld h, l                                       ; $4551: $65
    ld [hl], d                                    ; $4552: $72
    ld l, $FE                                     ; $4553: $2E $FE
    db $FD                                        ; $4555: $FD

jr_01D_4556:
    sbc d                                         ; $4556: $9A
    ld [de], a                                    ; $4557: $12

jr_01D_4558:
    ld c, e                                       ; $4558: $4B
    ld bc, $A225                                  ; $4559: $01 $25 $A2
    dec e                                         ; $455C: $1D
    nop                                           ; $455D: $00
    nop                                           ; $455E: $00
    ld l, h                                       ; $455F: $6C
    ld b, l                                       ; $4560: $45
    dec e                                         ; $4561: $1D
    ld bc, $6C00                                  ; $4562: $01 $00 $6C
    ld b, l                                       ; $4565: $45
    dec e                                         ; $4566: $1D
    ld [bc], a                                    ; $4567: $02
    nop                                           ; $4568: $00
    ld e, l                                       ; $4569: $5D
    ld b, [hl]                                    ; $456A: $46
    rst $38                                       ; $456B: $FF
    ld b, e                                       ; $456C: $43
    nop                                           ; $456D: $00
    xor c                                         ; $456E: $A9
    and c                                         ; $456F: $A1
    jr nz, jr_01D_458F                            ; $4570: $20 $1D

    dec a                                         ; $4572: $3D
    ld b, [hl]                                    ; $4573: $46
    xor a                                         ; $4574: $AF
    xor c                                         ; $4575: $A9
    and c                                         ; $4576: $A1
    jr nz, jr_01D_4514                            ; $4577: $20 $9B

    ld a, b                                       ; $4579: $78
    ld [hl], b                                    ; $457A: $70
    sbc a                                         ; $457B: $9F
    ld c, b                                       ; $457C: $48
    ld l, c                                       ; $457D: $69
    inc l                                         ; $457E: $2C
    jr nz, @+$47                                  ; $457F: $20 $45

    ld l, c                                       ; $4581: $69
    ld h, h                                       ; $4582: $64
    ld l, a                                       ; $4583: $6F
    ld l, [hl]                                    ; $4584: $6E
    ld l, $20                                     ; $4585: $2E $20
    ld c, c                                       ; $4587: $49
    rst $38                                       ; $4588: $FF
    ld [hl], e                                    ; $4589: $73
    ld [hl], h                                    ; $458A: $74
    ld l, a                                       ; $458B: $6F
    ld [hl], b                                    ; $458C: $70
    ld [hl], b                                    ; $458D: $70
    ld h, l                                       ; $458E: $65

jr_01D_458F:
    ld h, h                                       ; $458F: $64
    jr nz, jr_01D_4606                            ; $4590: $20 $74

    ld l, b                                       ; $4592: $68
    ld h, l                                       ; $4593: $65
    cp $53                                        ; $4594: $FE $53
    ld l, b                                       ; $4596: $68
    ld h, c                                       ; $4597: $61
    ld h, h                                       ; $4598: $64
    ld l, a                                       ; $4599: $6F

jr_01D_459A:
    ld [hl], a                                    ; $459A: $77

jr_01D_459B:
    jr nz, jr_01D_45E4                            ; $459B: $20 $47

    ld h, l                                       ; $459D: $65
    ld a, c                                       ; $459E: $79
    ld [hl], e                                    ; $459F: $73
    ld h, l                                       ; $45A0: $65
    ld [hl], d                                    ; $45A1: $72
    ld hl, $FDFE                                  ; $45A2: $21 $FE $FD
    sbc e                                         ; $45A5: $9B
    ld c, b                                       ; $45A6: $48
    ld b, [hl]                                    ; $45A7: $46
    sbc a                                         ; $45A8: $9F

jr_01D_45A9:
    ld b, a                                       ; $45A9: $47
    ld l, a                                       ; $45AA: $6F
    ld l, a                                       ; $45AB: $6F
    ld h, h                                       ; $45AC: $64
    jr nz, jr_01D_4626                            ; $45AD: $20 $77

    ld l, a                                       ; $45AF: $6F
    ld [hl], d                                    ; $45B0: $72
    ld l, e                                       ; $45B1: $6B
    inc l                                         ; $45B2: $2C
    rst $38                                       ; $45B3: $FF
    ld d, h                                       ; $45B4: $54
    ld l, a                                       ; $45B5: $6F
    ld l, [hl]                                    ; $45B6: $6E
    ld a, c                                       ; $45B7: $79
    ld l, $FE                                     ; $45B8: $2E $FE
    db $FD                                        ; $45BA: $FD
    sbc e                                         ; $45BB: $9B
    ld a, b                                       ; $45BC: $78
    ld [hl], b                                    ; $45BD: $70
    sbc a                                         ; $45BE: $9F
    ld c, c                                       ; $45BF: $49
    jr nz, jr_01D_4623                            ; $45C0: $20 $61

    ld l, h                                       ; $45C2: $6C
    ld [hl], e                                    ; $45C3: $73
    ld l, a                                       ; $45C4: $6F
    jr nz, jr_01D_462D                            ; $45C5: $20 $66

    ld l, a                                       ; $45C7: $6F
    ld [hl], l                                    ; $45C8: $75
    ld l, [hl]                                    ; $45C9: $6E
    ld h, h                                       ; $45CA: $64
    rst $38                                       ; $45CB: $FF
    ld [hl], h                                    ; $45CC: $74
    ld l, b                                       ; $45CD: $68
    ld l, c                                       ; $45CE: $69
    ld [hl], e                                    ; $45CF: $73
    jr nz, @+$75                                  ; $45D0: $20 $73

    ld [hl], h                                    ; $45D2: $74
    ld [hl], d                                    ; $45D3: $72
    ld h, c                                       ; $45D4: $61
    ld l, [hl]                                    ; $45D5: $6E
    ld h, a                                       ; $45D6: $67
    ld h, l                                       ; $45D7: $65
    cp $73                                        ; $45D8: $FE $73
    ld [hl], h                                    ; $45DA: $74
    ld l, a                                       ; $45DB: $6F
    ld l, [hl]                                    ; $45DC: $6E
    ld h, l                                       ; $45DD: $65
    jr nz, jr_01D_4649                            ; $45DE: $20 $69

    ld l, [hl]                                    ; $45E0: $6E
    ld [hl], e                                    ; $45E1: $73
    ld l, c                                       ; $45E2: $69
    ld h, h                                       ; $45E3: $64

jr_01D_45E4:
    ld h, l                                       ; $45E4: $65
    ld l, $FF                                     ; $45E5: $2E $FF
    ld b, h                                       ; $45E7: $44
    ld l, a                                       ; $45E8: $6F
    jr nz, jr_01D_4664                            ; $45E9: $20 $79

    ld l, a                                       ; $45EB: $6F
    ld [hl], l                                    ; $45EC: $75
    jr nz, jr_01D_465A                            ; $45ED: $20 $6B

    ld l, [hl]                                    ; $45EF: $6E
    ld l, a                                       ; $45F0: $6F
    ld [hl], a                                    ; $45F1: $77
    cp $77                                        ; $45F2: $FE $77
    ld l, b                                       ; $45F4: $68
    ld h, c                                       ; $45F5: $61
    ld [hl], h                                    ; $45F6: $74
    jr nz, jr_01D_4662                            ; $45F7: $20 $69

    ld [hl], h                                    ; $45F9: $74
    jr nz, jr_01D_4665                            ; $45FA: $20 $69

    ld [hl], e                                    ; $45FC: $73
    ccf                                           ; $45FD: $3F
    cp $FD                                        ; $45FE: $FE $FD
    sbc e                                         ; $4600: $9B
    ld c, b                                       ; $4601: $48
    ld b, [hl]                                    ; $4602: $46
    sbc a                                         ; $4603: $9F
    ld c, b                                       ; $4604: $48
    ld l, l                                       ; $4605: $6D

jr_01D_4606:
    ld l, l                                       ; $4606: $6D
    ld l, l                                       ; $4607: $6D
    ld l, $2E                                     ; $4608: $2E $2E
    ld l, $20                                     ; $460A: $2E $20
    ld c, c                                       ; $460C: $49
    jr nz, jr_01D_4677                            ; $460D: $20 $68

    ld h, c                                       ; $460F: $61
    halt                                          ; $4610: $76
    ld h, l                                       ; $4611: $65
    rst $38                                       ; $4612: $FF
    ld l, [hl]                                    ; $4613: $6E
    ld l, a                                       ; $4614: $6F
    jr nz, jr_01D_4680                            ; $4615: $20 $69

    ld h, h                                       ; $4617: $64
    ld h, l                                       ; $4618: $65
    ld h, c                                       ; $4619: $61
    ld l, $20                                     ; $461A: $2E $20
    jr nz, jr_01D_4677                            ; $461C: $20 $59

    ld l, a                                       ; $461E: $6F
    ld [hl], l                                    ; $461F: $75
    cp $73                                        ; $4620: $FE $73
    ld l, b                                       ; $4622: $68

jr_01D_4623:
    ld l, a                                       ; $4623: $6F
    ld [hl], l                                    ; $4624: $75
    ld l, h                                       ; $4625: $6C

jr_01D_4626:
    ld h, h                                       ; $4626: $64
    jr nz, @+$75                                  ; $4627: $20 $73

    ld l, b                                       ; $4629: $68
    ld l, a                                       ; $462A: $6F
    ld [hl], a                                    ; $462B: $77
    rst $38                                       ; $462C: $FF

jr_01D_462D:
    ld [hl], h                                    ; $462D: $74
    ld l, b                                       ; $462E: $68
    ld h, c                                       ; $462F: $61
    ld [hl], h                                    ; $4630: $74
    jr nz, jr_01D_46A7                            ; $4631: $20 $74

    ld l, a                                       ; $4633: $6F
    jr nz, jr_01D_467D                            ; $4634: $20 $47

    ld l, c                                       ; $4636: $69
    ld h, c                                       ; $4637: $61
    ld l, $FE                                     ; $4638: $2E $FE
    db $FD                                        ; $463A: $FD
    sbc d                                         ; $463B: $9A
    ld [de], a                                    ; $463C: $12
    sbc e                                         ; $463D: $9B
    ld c, b                                       ; $463E: $48
    ld b, [hl]                                    ; $463F: $46
    sbc a                                         ; $4640: $9F
    ld b, a                                       ; $4641: $47
    ld l, c                                       ; $4642: $69
    ld h, c                                       ; $4643: $61
    jr nz, jr_01D_46AF                            ; $4644: $20 $69

    ld [hl], e                                    ; $4646: $73
    jr nz, jr_01D_46B2                            ; $4647: $20 $69

jr_01D_4649:
    ld l, [hl]                                    ; $4649: $6E
    ld [hl], e                                    ; $464A: $73
    ld l, c                                       ; $464B: $69
    ld h, h                                       ; $464C: $64
    ld h, l                                       ; $464D: $65
    rst $38                                       ; $464E: $FF
    ld [hl], d                                    ; $464F: $72
    ld l, c                                       ; $4650: $69
    ld h, a                                       ; $4651: $67
    ld l, b                                       ; $4652: $68
    ld [hl], h                                    ; $4653: $74
    jr nz, jr_01D_46C4                            ; $4654: $20 $6E

jr_01D_4656:
    ld l, a                                       ; $4656: $6F
    ld [hl], a                                    ; $4657: $77
    ld l, $FE                                     ; $4658: $2E $FE

jr_01D_465A:
    db $FD                                        ; $465A: $FD
    sbc d                                         ; $465B: $9A
    ld [de], a                                    ; $465C: $12
    xor c                                         ; $465D: $A9
    rlca                                          ; $465E: $07
    nop                                           ; $465F: $00
    xor h                                         ; $4660: $AC
    and e                                         ; $4661: $A3

jr_01D_4662:
    and e                                         ; $4662: $A3
    ld [bc], a                                    ; $4663: $02

jr_01D_4664:
    sbc e                                         ; $4664: $9B

jr_01D_4665:
    ld c, b                                       ; $4665: $48
    ld b, [hl]                                    ; $4666: $46
    sbc a                                         ; $4667: $9F
    ld e, c                                       ; $4668: $59
    ld l, a                                       ; $4669: $6F
    ld [hl], l                                    ; $466A: $75
    jr nz, @+$70                                  ; $466B: $20 $6E

    ld h, l                                       ; $466D: $65
    ld h, l                                       ; $466E: $65
    ld h, h                                       ; $466F: $64
    jr nz, jr_01D_46E5                            ; $4670: $20 $73

    ld l, a                                       ; $4672: $6F
    ld l, l                                       ; $4673: $6D
    ld h, l                                       ; $4674: $65
    rst $38                                       ; $4675: $FF
    ld b, e                                       ; $4676: $43

jr_01D_4677:
    ld [hl], d                                    ; $4677: $72
    ld a, c                                       ; $4678: $79
    ld [hl], e                                    ; $4679: $73
    ld [hl], h                                    ; $467A: $74
    ld h, c                                       ; $467B: $61
    ld l, h                                       ; $467C: $6C

jr_01D_467D:
    jr nz, jr_01D_46C6                            ; $467D: $20 $47

    ld l, h                                       ; $467F: $6C

jr_01D_4680:
    ld l, a                                       ; $4680: $6F
    halt                                          ; $4681: $76
    ld h, l                                       ; $4682: $65
    ld [hl], e                                    ; $4683: $73
    ccf                                           ; $4684: $3F
    cp $49                                        ; $4685: $FE $49
    jr nz, jr_01D_46EC                            ; $4687: $20 $63

    ld h, c                                       ; $4689: $61
    ld l, [hl]                                    ; $468A: $6E
    jr nz, jr_01D_46FA                            ; $468B: $20 $6D

    ld h, c                                       ; $468D: $61
    ld l, e                                       ; $468E: $6B
    ld h, l                                       ; $468F: $65
    rst $38                                       ; $4690: $FF
    ld a, c                                       ; $4691: $79
    ld l, a                                       ; $4692: $6F
    ld [hl], l                                    ; $4693: $75
    jr nz, jr_01D_46F7                            ; $4694: $20 $61

    jr nz, jr_01D_4708                            ; $4696: $20 $70

    ld h, c                                       ; $4698: $61
    ld l, c                                       ; $4699: $69
    ld [hl], d                                    ; $469A: $72
    jr nz, jr_01D_4706                            ; $469B: $20 $69

    ld l, [hl]                                    ; $469D: $6E
    cp $68                                        ; $469E: $FE $68
    ld h, c                                       ; $46A0: $61
    ld [hl], d                                    ; $46A1: $72
    ld h, h                                       ; $46A2: $64
    ld l, h                                       ; $46A3: $6C
    ld a, c                                       ; $46A4: $79
    jr nz, jr_01D_4715                            ; $46A5: $20 $6E

jr_01D_46A7:
    ld l, a                                       ; $46A7: $6F
    jr nz, jr_01D_471E                            ; $46A8: $20 $74

    ld l, c                                       ; $46AA: $69
    ld l, l                                       ; $46AB: $6D
    ld h, l                                       ; $46AC: $65
    rst $38                                       ; $46AD: $FF
    ld h, c                                       ; $46AE: $61

jr_01D_46AF:
    ld [hl], h                                    ; $46AF: $74
    jr nz, @+$63                                  ; $46B0: $20 $61

jr_01D_46B2:
    ld l, h                                       ; $46B2: $6C
    ld l, h                                       ; $46B3: $6C
    ld hl, $FDFE                                  ; $46B4: $21 $FE $FD
    sbc d                                         ; $46B7: $9A
    ld b, b                                       ; $46B8: $40
    jr nc, jr_01D_4656                            ; $46B9: $30 $9B

    ld c, b                                       ; $46BB: $48
    ld b, [hl]                                    ; $46BC: $46
    sbc a                                         ; $46BD: $9F
    ld c, b                                       ; $46BE: $48
    ld h, l                                       ; $46BF: $65
    ld [hl], d                                    ; $46C0: $72
    ld h, l                                       ; $46C1: $65
    jr nz, jr_01D_473D                            ; $46C2: $20 $79

jr_01D_46C4:
    ld l, a                                       ; $46C4: $6F
    ld [hl], l                                    ; $46C5: $75

jr_01D_46C6:
    jr nz, jr_01D_472F                            ; $46C6: $20 $67

    ld l, a                                       ; $46C8: $6F
    inc l                                         ; $46C9: $2C
    rst $38                                       ; $46CA: $FF
    ld d, h                                       ; $46CB: $54
    ld l, a                                       ; $46CC: $6F
    ld l, [hl]                                    ; $46CD: $6E
    ld a, c                                       ; $46CE: $79
    ld hl, $FDFE                                  ; $46CF: $21 $FE $FD
    sbc d                                         ; $46D2: $9A
    rra                                           ; $46D3: $1F
    nop                                           ; $46D4: $00
    sbc a                                         ; $46D5: $9F
    ld d, h                                       ; $46D6: $54
    ld l, a                                       ; $46D7: $6F
    ld l, [hl]                                    ; $46D8: $6E
    ld a, c                                       ; $46D9: $79
    jr nz, jr_01D_4743                            ; $46DA: $20 $67

    ld l, a                                       ; $46DC: $6F
    ld [hl], h                                    ; $46DD: $74
    jr nz, jr_01D_4754                            ; $46DE: $20 $74

    ld l, b                                       ; $46E0: $68
    ld h, l                                       ; $46E1: $65
    rst $38                                       ; $46E2: $FF
    ld b, e                                       ; $46E3: $43
    ld [hl], d                                    ; $46E4: $72

jr_01D_46E5:
    ld a, c                                       ; $46E5: $79
    ld [hl], e                                    ; $46E6: $73
    ld [hl], h                                    ; $46E7: $74
    ld h, c                                       ; $46E8: $61
    ld l, h                                       ; $46E9: $6C
    jr nz, @+$49                                  ; $46EA: $20 $47

jr_01D_46EC:
    ld l, h                                       ; $46EC: $6C
    ld l, a                                       ; $46ED: $6F
    halt                                          ; $46EE: $76
    ld h, l                                       ; $46EF: $65
    ld [hl], e                                    ; $46F0: $73
    ld hl, $40FD                                  ; $46F1: $21 $FD $40
    or h                                          ; $46F4: $B4
    ld b, b                                       ; $46F5: $40
    or h                                          ; $46F6: $B4

jr_01D_46F7:
    ld b, b                                       ; $46F7: $40
    or h                                          ; $46F8: $B4
    rra                                           ; $46F9: $1F

jr_01D_46FA:
    ld a, [de]                                    ; $46FA: $1A
    sbc d                                         ; $46FB: $9A
    sbc e                                         ; $46FC: $9B
    ld c, b                                       ; $46FD: $48
    ld b, [hl]                                    ; $46FE: $46
    sbc a                                         ; $46FF: $9F
    ld d, a                                       ; $4700: $57
    ld l, c                                       ; $4701: $69
    ld [hl], h                                    ; $4702: $74
    ld l, b                                       ; $4703: $68
    jr nz, jr_01D_477A                            ; $4704: $20 $74

jr_01D_4706:
    ld l, b                                       ; $4706: $68
    ld h, l                                       ; $4707: $65

jr_01D_4708:
    ld [hl], e                                    ; $4708: $73
    ld h, l                                       ; $4709: $65
    jr nz, jr_01D_4785                            ; $470A: $20 $79

    ld l, a                                       ; $470C: $6F
    ld [hl], l                                    ; $470D: $75
    rst $38                                       ; $470E: $FF
    ld h, e                                       ; $470F: $63
    ld h, c                                       ; $4710: $61
    ld l, [hl]                                    ; $4711: $6E
    jr nz, @+$66                                  ; $4712: $20 $64

    ld l, c                                       ; $4714: $69

jr_01D_4715:
    ld h, a                                       ; $4715: $67
    jr nz, jr_01D_478C                            ; $4716: $20 $74

    ld l, b                                       ; $4718: $68
    ld [hl], d                                    ; $4719: $72
    ld l, a                                       ; $471A: $6F
    ld [hl], l                                    ; $471B: $75
    ld h, a                                       ; $471C: $67
    ld l, b                                       ; $471D: $68

jr_01D_471E:
    cp $74                                        ; $471E: $FE $74
    ld l, b                                       ; $4720: $68
    ld h, c                                       ; $4721: $61
    ld [hl], h                                    ; $4722: $74
    jr nz, @+$75                                  ; $4723: $20 $73

    ld l, a                                       ; $4725: $6F
    ld h, [hl]                                    ; $4726: $66
    ld [hl], h                                    ; $4727: $74
    ld h, l                                       ; $4728: $65
    ld [hl], d                                    ; $4729: $72
    rst $38                                       ; $472A: $FF
    ld h, h                                       ; $472B: $64
    ld l, c                                       ; $472C: $69
    ld [hl], d                                    ; $472D: $72
    ld [hl], h                                    ; $472E: $74

jr_01D_472F:
    jr nz, jr_01D_47A5                            ; $472F: $20 $74

    ld l, a                                       ; $4731: $6F
    jr nz, jr_01D_47A8                            ; $4732: $20 $74

    ld l, b                                       ; $4734: $68
    ld h, l                                       ; $4735: $65
    cp $55                                        ; $4736: $FE $55
    ld l, [hl]                                    ; $4738: $6E
    ld h, h                                       ; $4739: $64
    ld h, l                                       ; $473A: $65
    ld [hl], d                                    ; $473B: $72
    ld l, [hl]                                    ; $473C: $6E

jr_01D_473D:
    ld h, l                                       ; $473D: $65
    ld h, c                                       ; $473E: $61
    ld [hl], h                                    ; $473F: $74
    ld l, b                                       ; $4740: $68
    ld l, $FF                                     ; $4741: $2E $FF

jr_01D_4743:
    ld d, h                                       ; $4743: $54
    ld l, b                                       ; $4744: $68
    ld h, l                                       ; $4745: $65
    jr nz, jr_01D_47AD                            ; $4746: $20 $65

    ld l, [hl]                                    ; $4748: $6E
    ld [hl], h                                    ; $4749: $74
    ld [hl], d                                    ; $474A: $72
    ld h, c                                       ; $474B: $61
    ld l, [hl]                                    ; $474C: $6E
    ld h, e                                       ; $474D: $63
    ld h, l                                       ; $474E: $65
    cp $69                                        ; $474F: $FE $69
    ld [hl], e                                    ; $4751: $73
    jr nz, jr_01D_47BE                            ; $4752: $20 $6A

jr_01D_4754:
    ld [hl], l                                    ; $4754: $75
    ld [hl], e                                    ; $4755: $73
    ld [hl], h                                    ; $4756: $74
    jr nz, jr_01D_47A7                            ; $4757: $20 $4E

    ld l, a                                       ; $4759: $6F
    ld [hl], d                                    ; $475A: $72
    ld [hl], h                                    ; $475B: $74
    ld l, b                                       ; $475C: $68
    rst $38                                       ; $475D: $FF
    ld l, a                                       ; $475E: $6F
    ld h, [hl]                                    ; $475F: $66
    jr nz, jr_01D_47CA                            ; $4760: $20 $68

    ld h, l                                       ; $4762: $65
    ld [hl], d                                    ; $4763: $72
    ld h, l                                       ; $4764: $65
    ld l, $FE                                     ; $4765: $2E $FE
    db $FD                                        ; $4767: $FD
    sbc e                                         ; $4768: $9B
    ld a, b                                       ; $4769: $78
    ld [hl], b                                    ; $476A: $70
    sbc a                                         ; $476B: $9F
    ld d, a                                       ; $476C: $57
    ld l, a                                       ; $476D: $6F
    ld [hl], a                                    ; $476E: $77
    ld hl, $5420                                  ; $476F: $21 $20 $54
    ld l, b                                       ; $4772: $68
    ld h, c                                       ; $4773: $61
    ld l, [hl]                                    ; $4774: $6E
    ld l, e                                       ; $4775: $6B
    ld [hl], e                                    ; $4776: $73
    ld hl, $FDFE                                  ; $4777: $21 $FE $FD

jr_01D_477A:
    sbc d                                         ; $477A: $9A
    ld [de], a                                    ; $477B: $12
    sbc e                                         ; $477C: $9B
    ld c, b                                       ; $477D: $48
    ld b, [hl]                                    ; $477E: $46
    sbc a                                         ; $477F: $9F
    ld d, h                                       ; $4780: $54
    ld l, b                                       ; $4781: $68
    ld h, l                                       ; $4782: $65
    jr nz, jr_01D_47DA                            ; $4783: $20 $55

jr_01D_4785:
    ld l, [hl]                                    ; $4785: $6E
    ld h, h                                       ; $4786: $64
    ld h, l                                       ; $4787: $65
    ld [hl], d                                    ; $4788: $72
    ld l, [hl]                                    ; $4789: $6E
    ld h, l                                       ; $478A: $65
    ld h, c                                       ; $478B: $61

jr_01D_478C:
    ld [hl], h                                    ; $478C: $74
    ld l, b                                       ; $478D: $68
    rst $38                                       ; $478E: $FF
    ld l, b                                       ; $478F: $68
    ld h, c                                       ; $4790: $61
    ld [hl], e                                    ; $4791: $73
    jr nz, jr_01D_4801                            ; $4792: $20 $6D

    ld h, c                                       ; $4794: $61
    ld l, [hl]                                    ; $4795: $6E
    ld a, c                                       ; $4796: $79
    cp $73                                        ; $4797: $FE $73
    ld [hl], h                                    ; $4799: $74
    ld [hl], d                                    ; $479A: $72
    ld h, c                                       ; $479B: $61
    ld l, [hl]                                    ; $479C: $6E
    ld h, a                                       ; $479D: $67
    ld h, l                                       ; $479E: $65
    jr nz, jr_01D_4814                            ; $479F: $20 $73

    ld [hl], b                                    ; $47A1: $70
    ld h, l                                       ; $47A2: $65
    ld h, e                                       ; $47A3: $63
    ld l, c                                       ; $47A4: $69

jr_01D_47A5:
    ld h, l                                       ; $47A5: $65
    ld [hl], e                                    ; $47A6: $73

jr_01D_47A7:
    rst $38                                       ; $47A7: $FF

jr_01D_47A8:
    ld l, a                                       ; $47A8: $6F
    ld h, [hl]                                    ; $47A9: $66
    jr nz, jr_01D_4812                            ; $47AA: $20 $66

    ld [hl], l                                    ; $47AC: $75

jr_01D_47AD:
    ld l, [hl]                                    ; $47AD: $6E
    ld h, a                                       ; $47AE: $67
    ld [hl], l                                    ; $47AF: $75
    ld [hl], e                                    ; $47B0: $73
    ld l, $FE                                     ; $47B1: $2E $FE
    db $FD                                        ; $47B3: $FD
    sbc d                                         ; $47B4: $9A
    ld [de], a                                    ; $47B5: $12
    ld b, e                                       ; $47B6: $43
    nop                                           ; $47B7: $00
    xor h                                         ; $47B8: $AC
    and c                                         ; $47B9: $A1
    ld [bc], a                                    ; $47BA: $02
    dec e                                         ; $47BB: $1D
    ld d, h                                       ; $47BC: $54
    ld c, b                                       ; $47BD: $48

jr_01D_47BE:
    sbc e                                         ; $47BE: $9B
    ld c, b                                       ; $47BF: $48
    ld b, [hl]                                    ; $47C0: $46
    sbc a                                         ; $47C1: $9F
    ld d, h                                       ; $47C2: $54
    ld l, a                                       ; $47C3: $6F
    ld l, [hl]                                    ; $47C4: $6E
    ld a, c                                       ; $47C5: $79
    ld hl, $59FE                                  ; $47C6: $21 $FE $59
    ld l, a                                       ; $47C9: $6F

jr_01D_47CA:
    ld [hl], l                                    ; $47CA: $75
    jr nz, jr_01D_482E                            ; $47CB: $20 $61

    ld [hl], d                                    ; $47CD: $72
    ld h, l                                       ; $47CE: $65
    jr nz, jr_01D_4844                            ; $47CF: $20 $73

    ld h, c                                       ; $47D1: $61
    ld h, [hl]                                    ; $47D2: $66
    ld h, l                                       ; $47D3: $65
    ld hl, $57FE                                  ; $47D4: $21 $FE $57
    ld l, b                                       ; $47D7: $68
    ld h, c                                       ; $47D8: $61
    ld [hl], h                                    ; $47D9: $74

jr_01D_47DA:
    jr nz, jr_01D_4844                            ; $47DA: $20 $68

    ld h, c                                       ; $47DC: $61
    ld [hl], b                                    ; $47DD: $70
    ld [hl], b                                    ; $47DE: $70
    ld h, l                                       ; $47DF: $65
    ld l, [hl]                                    ; $47E0: $6E
    ld h, l                                       ; $47E1: $65
    ld h, h                                       ; $47E2: $64
    ccf                                           ; $47E3: $3F
    cp $FD                                        ; $47E4: $FE $FD
    sbc e                                         ; $47E6: $9B
    ld a, b                                       ; $47E7: $78
    ld [hl], b                                    ; $47E8: $70
    sbc a                                         ; $47E9: $9F
    ld c, c                                       ; $47EA: $49
    jr nz, jr_01D_4864                            ; $47EB: $20 $77

    ld l, c                                       ; $47ED: $69
    ld l, h                                       ; $47EE: $6C
    ld l, h                                       ; $47EF: $6C
    jr nz, jr_01D_4866                            ; $47F0: $20 $74

    ld h, l                                       ; $47F2: $65
    ld l, h                                       ; $47F3: $6C
    ld l, h                                       ; $47F4: $6C
    cp $79                                        ; $47F5: $FE $79
    ld l, a                                       ; $47F7: $6F
    ld [hl], l                                    ; $47F8: $75
    jr nz, @+$63                                  ; $47F9: $20 $61

    ld l, [hl]                                    ; $47FB: $6E
    ld h, h                                       ; $47FC: $64
    jr nz, jr_01D_4846                            ; $47FD: $20 $47

    ld l, c                                       ; $47FF: $69
    ld h, c                                       ; $4800: $61

jr_01D_4801:
    cp $61                                        ; $4801: $FE $61
    ld l, h                                       ; $4803: $6C
    ld l, h                                       ; $4804: $6C
    jr nz, jr_01D_4868                            ; $4805: $20 $61

    ld h, d                                       ; $4807: $62
    ld l, a                                       ; $4808: $6F
    ld [hl], l                                    ; $4809: $75
    ld [hl], h                                    ; $480A: $74
    jr nz, jr_01D_4876                            ; $480B: $20 $69

    ld [hl], h                                    ; $480D: $74
    ld l, $FE                                     ; $480E: $2E $FE
    db $FD                                        ; $4810: $FD
    sbc d                                         ; $4811: $9A

jr_01D_4812:
    ld l, [hl]                                    ; $4812: $6E
    rrca                                          ; $4813: $0F

jr_01D_4814:
    rst $38                                       ; $4814: $FF
    ld a, a                                       ; $4815: $7F
    halt                                          ; $4816: $76
    jr nz, jr_01D_4828                            ; $4817: $20 $0F

    ld b, l                                       ; $4819: $45
    dec e                                         ; $481A: $1D
    ld [hl], c                                    ; $481B: $71
    ld e, d                                       ; $481C: $5A
    sbc e                                         ; $481D: $9B
    ld a, b                                       ; $481E: $78
    ld [hl], b                                    ; $481F: $70
    sbc a                                         ; $4820: $9F
    ld c, b                                       ; $4821: $48
    ld h, l                                       ; $4822: $65
    ld a, c                                       ; $4823: $79
    jr nz, @+$47                                  ; $4824: $20 $45

    ld l, c                                       ; $4826: $69
    ld h, h                                       ; $4827: $64

jr_01D_4828:
    ld l, a                                       ; $4828: $6F
    ld l, [hl]                                    ; $4829: $6E
    inc l                                         ; $482A: $2C
    rst $38                                       ; $482B: $FF
    ld h, a                                       ; $482C: $67
    ld [hl], l                                    ; $482D: $75

jr_01D_482E:
    ld h, l                                       ; $482E: $65
    ld [hl], e                                    ; $482F: $73
    ld [hl], e                                    ; $4830: $73
    jr nz, jr_01D_48AA                            ; $4831: $20 $77

    ld l, b                                       ; $4833: $68
    ld h, c                                       ; $4834: $61
    ld [hl], h                                    ; $4835: $74
    ccf                                           ; $4836: $3F
    cp $FD                                        ; $4837: $FE $FD
    sbc e                                         ; $4839: $9B
    ld c, b                                       ; $483A: $48
    ld b, [hl]                                    ; $483B: $46
    sbc a                                         ; $483C: $9F
    ld d, a                                       ; $483D: $57
    ld l, b                                       ; $483E: $68
    ld h, c                                       ; $483F: $61
    ld [hl], h                                    ; $4840: $74
    ccf                                           ; $4841: $3F
    cp $FD                                        ; $4842: $FE $FD

jr_01D_4844:
    sbc d                                         ; $4844: $9A
    ld l, [hl]                                    ; $4845: $6E

jr_01D_4846:
    rrca                                          ; $4846: $0F
    rst $38                                       ; $4847: $FF
    ld a, a                                       ; $4848: $7F
    halt                                          ; $4849: $76
    jr nz, @+$11                                  ; $484A: $20 $0F

    xor a                                         ; $484C: $AF
    or c                                          ; $484D: $B1
    and c                                         ; $484E: $A1
    ld [$1D45], sp                                ; $484F: $08 $45 $1D
    ld d, d                                       ; $4852: $52
    ld c, a                                       ; $4853: $4F
    ld b, e                                       ; $4854: $43
    ld [$000A], sp                                ; $4855: $08 $0A $00
    or c                                          ; $4858: $B1
    and c                                         ; $4859: $A1
    ld [$B100], sp                                ; $485A: $08 $00 $B1
    and c                                         ; $485D: $A1
    inc b                                         ; $485E: $04
    dec e                                         ; $485F: $1D
    dec e                                         ; $4860: $1D
    ld c, b                                       ; $4861: $48
    sbc e                                         ; $4862: $9B
    ld c, b                                       ; $4863: $48

jr_01D_4864:
    ld b, [hl]                                    ; $4864: $46
    sbc a                                         ; $4865: $9F

jr_01D_4866:
    ld c, c                                       ; $4866: $49
    daa                                           ; $4867: $27

jr_01D_4868:
    ld l, h                                       ; $4868: $6C
    ld l, h                                       ; $4869: $6C
    jr nz, jr_01D_48DA                            ; $486A: $20 $6E

    ld h, l                                       ; $486C: $65
    halt                                          ; $486D: $76
    ld h, l                                       ; $486E: $65
    ld [hl], d                                    ; $486F: $72
    cp $75                                        ; $4870: $FE $75
    ld l, [hl]                                    ; $4872: $6E
    ld h, h                                       ; $4873: $64
    ld h, l                                       ; $4874: $65
    ld [hl], d                                    ; $4875: $72

jr_01D_4876:
    ld [hl], e                                    ; $4876: $73
    ld [hl], h                                    ; $4877: $74
    ld h, c                                       ; $4878: $61
    ld l, [hl]                                    ; $4879: $6E
    ld h, h                                       ; $487A: $64
    jr nz, jr_01D_48F1                            ; $487B: $20 $74

    ld l, b                                       ; $487D: $68
    ld h, l                                       ; $487E: $65
    cp $43                                        ; $487F: $FE $43
    ld h, c                                       ; $4881: $61
    ld l, h                                       ; $4882: $6C
    ld h, h                                       ; $4883: $64
    ld l, h                                       ; $4884: $6C
    ld l, c                                       ; $4885: $69
    ld l, [hl]                                    ; $4886: $6E
    ld h, a                                       ; $4887: $67
    ld [hl], e                                    ; $4888: $73
    ld l, $FE                                     ; $4889: $2E $FE
    db $FD                                        ; $488B: $FD
    sbc d                                         ; $488C: $9A
    ld [de], a                                    ; $488D: $12
    sub e                                         ; $488E: $93
    inc h                                         ; $488F: $24
    ld e, $93                                     ; $4890: $1E $93
    ld l, a                                       ; $4892: $6F
    rlca                                          ; $4893: $07
    rst $38                                       ; $4894: $FF
    ld a, a                                       ; $4895: $7F
    xor h                                         ; $4896: $AC
    or d                                          ; $4897: $B2
    and d                                         ; $4898: $A2
    ld bc, $044B                                  ; $4899: $01 $4B $04
    dec e                                         ; $489C: $1D
    dec bc                                        ; $489D: $0B
    nop                                           ; $489E: $00
    adc b                                         ; $489F: $88
    ld c, d                                       ; $48A0: $4A
    dec e                                         ; $48A1: $1D
    rla                                           ; $48A2: $17
    nop                                           ; $48A3: $00
    xor c                                         ; $48A4: $A9
    ld c, e                                       ; $48A5: $4B
    rst $38                                       ; $48A6: $FF
    ld b, e                                       ; $48A7: $43
    ld [de], a                                    ; $48A8: $12
    inc b                                         ; $48A9: $04

jr_01D_48AA:
    dec b                                         ; $48AA: $05
    inc d                                         ; $48AB: $14
    dec e                                         ; $48AC: $1D
    add b                                         ; $48AD: $80
    ld c, e                                       ; $48AE: $4B
    sub e                                         ; $48AF: $93
    ld h, [hl]                                    ; $48B0: $66
    ret nz                                        ; $48B1: $C0

    ld e, h                                       ; $48B2: $5C
    ld hl, $1165                                  ; $48B3: $21 $65 $11
    ld c, l                                       ; $48B6: $4D
    ld c, a                                       ; $48B7: $4F
    ld h, h                                       ; $48B8: $64
    or d                                          ; $48B9: $B2
    ld d, b                                       ; $48BA: $50
    ld l, c                                       ; $48BB: $69
    cp a                                          ; $48BC: $BF
    ld d, b                                       ; $48BD: $50
    dec b                                         ; $48BE: $05
    nop                                           ; $48BF: $00
    add c                                         ; $48C0: $81
    ld e, l                                       ; $48C1: $5D
    rla                                           ; $48C2: $17
    inc h                                         ; $48C3: $24

jr_01D_48C4:
    or a                                          ; $48C4: $B7
    push de                                       ; $48C5: $D5
    nop                                           ; $48C6: $00
    jr nz, jr_01D_48C4                            ; $48C7: $20 $FB

    ld d, b                                       ; $48C9: $50
    ld [hl+], a                                   ; $48CA: $22
    dec b                                         ; $48CB: $05
    ld b, b                                       ; $48CC: $40
    dec b                                         ; $48CD: $05
    ld [bc], a                                    ; $48CE: $02
    ld l, e                                       ; $48CF: $6B
    ld c, d                                       ; $48D0: $4A
    nop                                           ; $48D1: $00
    nop                                           ; $48D2: $00
    nop                                           ; $48D3: $00
    ret nc                                        ; $48D4: $D0

    nop                                           ; $48D5: $00
    ld [hl+], a                                   ; $48D6: $22
    inc b                                         ; $48D7: $04
    ld b, b                                       ; $48D8: $40
    ld [hl+], a                                   ; $48D9: $22

jr_01D_48DA:
    inc b                                         ; $48DA: $04
    ld b, b                                       ; $48DB: $40
    dec bc                                        ; $48DC: $0B
    nop                                           ; $48DD: $00
    dec bc                                        ; $48DE: $0B
    ld [bc], a                                    ; $48DF: $02
    ld l, e                                       ; $48E0: $6B
    ld a, [hl+]                                   ; $48E1: $2A
    ld a, [bc]                                    ; $48E2: $0A
    or b                                          ; $48E3: $B0
    ld c, b                                       ; $48E4: $48
    nop                                           ; $48E5: $00
    add b                                         ; $48E6: $80
    nop                                           ; $48E7: $00
    ld l, e                                       ; $48E8: $6B
    jr nc, jr_01D_48F5                            ; $48E9: $30 $0A

    ld [hl], b                                    ; $48EB: $70
    ld c, e                                       ; $48EC: $4B
    nop                                           ; $48ED: $00
    add e                                         ; $48EE: $83
    nop                                           ; $48EF: $00
    nop                                           ; $48F0: $00

jr_01D_48F1:
    add d                                         ; $48F1: $82
    ld e, d                                       ; $48F2: $5A
    dec e                                         ; $48F3: $1D
    db $FD                                        ; $48F4: $FD

jr_01D_48F5:
    ld c, b                                       ; $48F5: $48
    rra                                           ; $48F6: $1F
    ld a, [de]                                    ; $48F7: $1A
    sub h                                         ; $48F8: $94
    halt                                          ; $48F9: $76
    jr nz, jr_01D_4903                            ; $48FA: $20 $07

    ld b, d                                       ; $48FC: $42
    ld c, e                                       ; $48FD: $4B
    inc b                                         ; $48FE: $04
    dec e                                         ; $48FF: $1D
    inc b                                         ; $4900: $04
    nop                                           ; $4901: $00
    dec a                                         ; $4902: $3D

jr_01D_4903:
    ld c, c                                       ; $4903: $49
    dec e                                         ; $4904: $1D
    dec b                                         ; $4905: $05
    nop                                           ; $4906: $00
    ld e, l                                       ; $4907: $5D
    ld c, c                                       ; $4908: $49
    dec e                                         ; $4909: $1D
    ld b, $00                                     ; $490A: $06 $00
    add hl, hl                                    ; $490C: $29
    ld c, c                                       ; $490D: $49
    dec e                                         ; $490E: $1D
    ld c, $00                                     ; $490F: $0E $00
    dec a                                         ; $4911: $3D
    ld c, c                                       ; $4912: $49
    dec e                                         ; $4913: $1D
    rrca                                          ; $4914: $0F
    nop                                           ; $4915: $00
    ld l, l                                       ; $4916: $6D
    ld c, c                                       ; $4917: $49
    rst $38                                       ; $4918: $FF
    dec b                                         ; $4919: $05
    ld [bc], a                                    ; $491A: $02
    db $ED                                        ; $491B: $ED
    ld h, e                                       ; $491C: $63
    inc de                                        ; $491D: $13
    rla                                           ; $491E: $17
    xor e                                         ; $491F: $AB
    db $D3                                        ; $4920: $D3
    nop                                           ; $4921: $00
    ld c, $0E                                     ; $4922: $0E $0E
    ld d, h                                       ; $4924: $54
    dec e                                         ; $4925: $1D
    rst $28                                       ; $4926: $EF
    ld b, h                                       ; $4927: $44
    ld b, d                                       ; $4928: $42
    ld c, e                                       ; $4929: $4B
    ld bc, $A225                                  ; $492A: $01 $25 $A2
    dec e                                         ; $492D: $1D
    nop                                           ; $492E: $00
    nop                                           ; $492F: $00
    dec a                                         ; $4930: $3D
    ld c, c                                       ; $4931: $49
    dec e                                         ; $4932: $1D
    ld bc, $4D00                                  ; $4933: $01 $00 $4D
    ld c, c                                       ; $4936: $49
    dec e                                         ; $4937: $1D
    ld [bc], a                                    ; $4938: $02
    nop                                           ; $4939: $00
    ld e, l                                       ; $493A: $5D
    ld c, c                                       ; $493B: $49
    rst $38                                       ; $493C: $FF
    dec b                                         ; $493D: $05
    ld [bc], a                                    ; $493E: $02
    db $ED                                        ; $493F: $ED
    ld h, e                                       ; $4940: $63
    inc d                                         ; $4941: $14
    ld a, [de]                                    ; $4942: $1A
    inc h                                         ; $4943: $24
    call nc, $0E00                                ; $4944: $D4 $00 $0E
    cp l                                          ; $4947: $BD
    ld d, h                                       ; $4948: $54
    dec e                                         ; $4949: $1D
    rst $28                                       ; $494A: $EF
    ld b, h                                       ; $494B: $44
    ld b, d                                       ; $494C: $42
    dec b                                         ; $494D: $05
    ld [bc], a                                    ; $494E: $02
    db $ED                                        ; $494F: $ED
    ld h, e                                       ; $4950: $63
    dec de                                        ; $4951: $1B
    ld de, $D2C3                                  ; $4952: $11 $C3 $D2
    nop                                           ; $4955: $00
    ld c, $04                                     ; $4956: $0E $04
    ld d, h                                       ; $4958: $54
    dec e                                         ; $4959: $1D
    rst $28                                       ; $495A: $EF
    ld b, h                                       ; $495B: $44
    ld b, d                                       ; $495C: $42
    dec b                                         ; $495D: $05

jr_01D_495E:
    ld [bc], a                                    ; $495E: $02
    db $ED                                        ; $495F: $ED
    ld h, e                                       ; $4960: $63
    ld d, $16                                     ; $4961: $16 $16
    add [hl]                                      ; $4963: $86
    db $D3                                        ; $4964: $D3
    nop                                           ; $4965: $00
    ld c, $FA                                     ; $4966: $0E $FA
    ld d, e                                       ; $4968: $53
    dec e                                         ; $4969: $1D
    rst $28                                       ; $496A: $EF
    ld b, h                                       ; $496B: $44
    ld b, d                                       ; $496C: $42
    dec b                                         ; $496D: $05
    ld [bc], a                                    ; $496E: $02
    db $ED                                        ; $496F: $ED
    ld h, e                                       ; $4970: $63
    dec de                                        ; $4971: $1B
    add hl, de                                    ; $4972: $19
    inc bc                                        ; $4973: $03
    call nc, $0E00                                ; $4974: $D4 $00 $0E
    ld a, [$1D53]                                 ; $4977: $FA $53 $1D
    rst $28                                       ; $497A: $EF
    ld b, h                                       ; $497B: $44
    ld b, d                                       ; $497C: $42
    ld b, e                                       ; $497D: $43
    db $10                                        ; $497E: $10
    inc b                                         ; $497F: $04
    dec b                                         ; $4980: $05
    inc b                                         ; $4981: $04
    ld [hl+], a                                   ; $4982: $22
    inc b                                         ; $4983: $04
    ld b, b                                       ; $4984: $40

jr_01D_4985:
    ld b, e                                       ; $4985: $43
    nop                                           ; $4986: $00
    dec h                                         ; $4987: $25
    and c                                         ; $4988: $A1
    ld bc, $0422                                  ; $4989: $01 $22 $04
    ld b, b                                       ; $498C: $40
    xor a                                         ; $498D: $AF
    dec h                                         ; $498E: $25
    and c                                         ; $498F: $A1
    ld bc, $0209                                  ; $4990: $01 $09 $02
    dec e                                         ; $4993: $1D
    ret z                                         ; $4994: $C8

    ld c, c                                       ; $4995: $49
    rlca                                          ; $4996: $07
    nop                                           ; $4997: $00
    ld l, e                                       ; $4998: $6B
    ld c, d                                       ; $4999: $4A

jr_01D_499A:
    add hl, bc                                    ; $499A: $09
    nop                                           ; $499B: $00
    jr nz, jr_01D_4985                            ; $499C: $20 $E7

    ld d, b                                       ; $499E: $50
    ld a, h                                       ; $499F: $7C
    inc d                                         ; $49A0: $14
    ld a, [de]                                    ; $49A1: $1A
    inc bc                                        ; $49A2: $03
    ld e, e                                       ; $49A3: $5B
    dec e                                         ; $49A4: $1D
    add sp, $49                                   ; $49A5: $E8 $49
    ld b, d                                       ; $49A7: $42
    dec d                                         ; $49A8: $15
    jr nz, jr_01D_495E                            ; $49A9: $20 $B3

    ld c, a                                       ; $49AB: $4F
    jr nc, jr_01D_49CE                            ; $49AC: $30 $20

jr_01D_49AE:
    db $DD                                        ; $49AE: $DD
    ld c, a                                       ; $49AF: $4F
    db $10                                        ; $49B0: $10
    jr nz, jr_01D_499A                            ; $49B1: $20 $E7

    ld d, b                                       ; $49B3: $50
    nop                                           ; $49B4: $00
    nop                                           ; $49B5: $00
    add e                                         ; $49B6: $83
    db $10                                        ; $49B7: $10
    ld [bc], a                                    ; $49B8: $02
    ld bc, $5B00                                  ; $49B9: $01 $00 $5B
    dec e                                         ; $49BC: $1D
    ld hl, sp+$49                                 ; $49BD: $F8 $49
    ld h, d                                       ; $49BF: $62
    ld [bc], a                                    ; $49C0: $02
    inc de                                        ; $49C1: $13
    add c                                         ; $49C2: $81
    ld e, l                                       ; $49C3: $5D
    ld b, l                                       ; $49C4: $45
    jr nz, jr_01D_49AE                            ; $49C5: $20 $E7

    ld d, b                                       ; $49C7: $50
    inc d                                         ; $49C8: $14
    ld c, $BD                                     ; $49C9: $0E $BD
    ld d, h                                       ; $49CB: $54
    ld h, d                                       ; $49CC: $62
    ld a, [bc]                                    ; $49CD: $0A

jr_01D_49CE:
    dec b                                         ; $49CE: $05
    nop                                           ; $49CF: $00
    ld l, e                                       ; $49D0: $6B
    ld c, d                                       ; $49D1: $4A
    jr @+$21                                      ; $49D2: $18 $1F

    ldh a, [$D4]                                  ; $49D4: $F0 $D4
    nop                                           ; $49D6: $00
    dec e                                         ; $49D7: $1D
    xor b                                         ; $49D8: $A8
    ld c, c                                       ; $49D9: $49
    ld [hl+], a                                   ; $49DA: $22
    inc b                                         ; $49DB: $04
    ld b, b                                       ; $49DC: $40
    inc d                                         ; $49DD: $14
    ld c, $36                                     ; $49DE: $0E $36
    ld d, h                                       ; $49E0: $54
    ld h, d                                       ; $49E1: $62
    ld [bc], a                                    ; $49E2: $02
    inc d                                         ; $49E3: $14
    ld c, $BD                                     ; $49E4: $0E $BD
    ld d, h                                       ; $49E6: $54
    ld b, d                                       ; $49E7: $42
    sbc e                                         ; $49E8: $9B
    ld a, b                                       ; $49E9: $78
    ld [hl], b                                    ; $49EA: $70
    sbc a                                         ; $49EB: $9F
    ld b, l                                       ; $49EC: $45
    ld l, c                                       ; $49ED: $69
    ld h, h                                       ; $49EE: $64
    ld l, a                                       ; $49EF: $6F
    ld l, [hl]                                    ; $49F0: $6E
    ccf                                           ; $49F1: $3F
    cp $FD                                        ; $49F2: $FE $FD
    sbc d                                         ; $49F4: $9A
    ld e, b                                       ; $49F5: $58
    ld a, [bc]                                    ; $49F6: $0A
    ld b, d                                       ; $49F7: $42
    sbc e                                         ; $49F8: $9B
    ld c, b                                       ; $49F9: $48
    ld b, [hl]                                    ; $49FA: $46
    sbc a                                         ; $49FB: $9F
    ld c, a                                       ; $49FC: $4F
    ld l, b                                       ; $49FD: $68
    jr nz, @+$6A                                  ; $49FE: $20 $68

    ld h, l                                       ; $4A00: $65
    ld l, h                                       ; $4A01: $6C
    ld l, h                                       ; $4A02: $6C
    ld l, a                                       ; $4A03: $6F
    jr nz, jr_01D_4A5A                            ; $4A04: $20 $54

    ld l, a                                       ; $4A06: $6F
    ld l, [hl]                                    ; $4A07: $6E
    ld a, c                                       ; $4A08: $79
    inc l                                         ; $4A09: $2C
    rst $38                                       ; $4A0A: $FF
    ld b, a                                       ; $4A0B: $47
    ld l, c                                       ; $4A0C: $69
    ld h, c                                       ; $4A0D: $61
    daa                                           ; $4A0E: $27
    ld [hl], e                                    ; $4A0F: $73
    jr nz, jr_01D_4A7B                            ; $4A10: $20 $69

    ld l, [hl]                                    ; $4A12: $6E
    ld [hl], e                                    ; $4A13: $73
    ld l, c                                       ; $4A14: $69
    ld h, h                                       ; $4A15: $64
    ld h, l                                       ; $4A16: $65
    ld l, $FE                                     ; $4A17: $2E $FE
    db $FD                                        ; $4A19: $FD
    sbc e                                         ; $4A1A: $9B
    ld a, b                                       ; $4A1B: $78
    ld [hl], b                                    ; $4A1C: $70
    sbc a                                         ; $4A1D: $9F
    ld d, a                                       ; $4A1E: $57
    ld l, b                                       ; $4A1F: $68
    ld h, c                                       ; $4A20: $61
    ld [hl], h                                    ; $4A21: $74
    jr nz, jr_01D_4A85                            ; $4A22: $20 $61

    ld [hl], d                                    ; $4A24: $72
    ld h, l                                       ; $4A25: $65
    jr nz, jr_01D_4AA1                            ; $4A26: $20 $79

    ld l, a                                       ; $4A28: $6F
    ld [hl], l                                    ; $4A29: $75
    rst $38                                       ; $4A2A: $FF
    ld h, h                                       ; $4A2B: $64
    ld l, a                                       ; $4A2C: $6F
    ld l, c                                       ; $4A2D: $69
    ld l, [hl]                                    ; $4A2E: $6E
    ld h, a                                       ; $4A2F: $67
    jr nz, jr_01D_4A9A                            ; $4A30: $20 $68

    ld h, l                                       ; $4A32: $65
    ld [hl], d                                    ; $4A33: $72
    ld h, l                                       ; $4A34: $65
    ccf                                           ; $4A35: $3F
    cp $FD                                        ; $4A36: $FE $FD
    sbc e                                         ; $4A38: $9B
    ld c, b                                       ; $4A39: $48
    ld b, [hl]                                    ; $4A3A: $46
    sbc a                                         ; $4A3B: $9F
    ld c, [hl]                                    ; $4A3C: $4E
    ld l, a                                       ; $4A3D: $6F
    ld h, d                                       ; $4A3E: $62
    ld l, a                                       ; $4A3F: $6F
    ld h, h                                       ; $4A40: $64
    ld a, c                                       ; $4A41: $79
    jr nz, jr_01D_4AB8                            ; $4A42: $20 $74

    ld l, a                                       ; $4A44: $6F
    ld l, h                                       ; $4A45: $6C
    ld h, h                                       ; $4A46: $64
    rst $38                                       ; $4A47: $FF
    ld a, c                                       ; $4A48: $79
    ld l, a                                       ; $4A49: $6F
    ld [hl], l                                    ; $4A4A: $75
    ccf                                           ; $4A4B: $3F
    jr nz, jr_01D_4A97                            ; $4A4C: $20 $49

    jr nz, jr_01D_4AB8                            ; $4A4E: $20 $68

    ld h, c                                       ; $4A50: $61
    halt                                          ; $4A51: $76
    ld h, l                                       ; $4A52: $65
    cp $62                                        ; $4A53: $FE $62
    ld h, l                                       ; $4A55: $65
    ld h, l                                       ; $4A56: $65
    ld l, [hl]                                    ; $4A57: $6E
    jr nz, jr_01D_4ACE                            ; $4A58: $20 $74

jr_01D_4A5A:
    ld [hl], d                                    ; $4A5A: $72
    ld h, c                                       ; $4A5B: $61
    ld l, c                                       ; $4A5C: $69
    ld l, [hl]                                    ; $4A5D: $6E
    ld l, c                                       ; $4A5E: $69
    ld l, [hl]                                    ; $4A5F: $6E
    ld h, a                                       ; $4A60: $67
    rst $38                                       ; $4A61: $FF
    ld [hl], l                                    ; $4A62: $75
    ld l, [hl]                                    ; $4A63: $6E
    ld h, h                                       ; $4A64: $64
    ld h, l                                       ; $4A65: $65
    ld [hl], d                                    ; $4A66: $72
    jr nz, jr_01D_4AB0                            ; $4A67: $20 $47

    ld l, c                                       ; $4A69: $69
    ld h, c                                       ; $4A6A: $61
    jr nz, jr_01D_4AD3                            ; $4A6B: $20 $66

    ld l, a                                       ; $4A6D: $6F
    ld [hl], d                                    ; $4A6E: $72
    cp $79                                        ; $4A6F: $FE $79
    ld h, l                                       ; $4A71: $65
    ld h, c                                       ; $4A72: $61
    ld [hl], d                                    ; $4A73: $72
    ld [hl], e                                    ; $4A74: $73
    ld l, $FE                                     ; $4A75: $2E $FE
    db $FD                                        ; $4A77: $FD
    sbc e                                         ; $4A78: $9B
    ld a, b                                       ; $4A79: $78
    ld [hl], b                                    ; $4A7A: $70

jr_01D_4A7B:
    sbc a                                         ; $4A7B: $9F
    ld c, a                                       ; $4A7C: $4F
    ld l, b                                       ; $4A7D: $68
    ld l, $2E                                     ; $4A7E: $2E $2E
    ld l, $2E                                     ; $4A80: $2E $2E
    cp $FD                                        ; $4A82: $FE $FD
    sbc d                                         ; $4A84: $9A

jr_01D_4A85:
    ld e, b                                       ; $4A85: $58
    ld [bc], a                                    ; $4A86: $02
    ld b, d                                       ; $4A87: $42
    sub e                                         ; $4A88: $93
    ld h, [hl]                                    ; $4A89: $66
    ret nz                                        ; $4A8A: $C0

    ld e, h                                       ; $4A8B: $5C
    ld hl, $1165                                  ; $4A8C: $21 $65 $11
    ld c, l                                       ; $4A8F: $4D
    ld c, a                                       ; $4A90: $4F
    ld h, h                                       ; $4A91: $64
    or d                                          ; $4A92: $B2
    ld d, b                                       ; $4A93: $50
    ld l, c                                       ; $4A94: $69
    cp a                                          ; $4A95: $BF
    ld d, b                                       ; $4A96: $50

jr_01D_4A97:
    dec b                                         ; $4A97: $05
    nop                                           ; $4A98: $00
    ld l, e                                       ; $4A99: $6B

jr_01D_4A9A:
    ld c, d                                       ; $4A9A: $4A
    ld d, $26                                     ; $4A9B: $16 $26
    ld b, $D6                                     ; $4A9D: $06 $D6
    nop                                           ; $4A9F: $00
    dec e                                         ; $4AA0: $1D

jr_01D_4AA1:
    jp z, $224A                                   ; $4AA1: $CA $4A $22

    inc b                                         ; $4AA4: $04
    ld b, b                                       ; $4AA5: $40
    dec b                                         ; $4AA6: $05
    ld [bc], a                                    ; $4AA7: $02
    ld l, e                                       ; $4AA8: $6B
    ld c, d                                       ; $4AA9: $4A
    dec d                                         ; $4AAA: $15
    ld a, [de]                                    ; $4AAB: $1A
    dec h                                         ; $4AAC: $25
    call nc, $1D00                                ; $4AAD: $D4 $00 $1D

jr_01D_4AB0:
    or $4A                                        ; $4AB0: $F6 $4A
    ld [hl+], a                                   ; $4AB2: $22
    inc b                                         ; $4AB3: $04
    ld b, b                                       ; $4AB4: $40
    dec bc                                        ; $4AB5: $0B
    nop                                           ; $4AB6: $00
    dec bc                                        ; $4AB7: $0B

jr_01D_4AB8:
    ld [bc], a                                    ; $4AB8: $02
    ld l, e                                       ; $4AB9: $6B
    ld a, [hl+]                                   ; $4ABA: $2A
    ld a, [bc]                                    ; $4ABB: $0A
    or b                                          ; $4ABC: $B0
    ld c, b                                       ; $4ABD: $48

jr_01D_4ABE:
    nop                                           ; $4ABE: $00
    add b                                         ; $4ABF: $80
    nop                                           ; $4AC0: $00
    nop                                           ; $4AC1: $00
    add d                                         ; $4AC2: $82
    rra                                           ; $4AC3: $1F
    ld a, [de]                                    ; $4AC4: $1A
    sub h                                         ; $4AC5: $94
    halt                                          ; $4AC6: $76
    jr nz, jr_01D_4AD0                            ; $4AC7: $20 $07

    ld b, d                                       ; $4AC9: $42
    ld d, $20                                     ; $4ACA: $16 $20
    or e                                          ; $4ACC: $B3
    ld c, a                                       ; $4ACD: $4F

jr_01D_4ACE:
    ld h, b                                       ; $4ACE: $60
    nop                                           ; $4ACF: $00

jr_01D_4AD0:
    rst $38                                       ; $4AD0: $FF
    nop                                           ; $4AD1: $00
    ld b, b                                       ; $4AD2: $40

jr_01D_4AD3:
    jr nz, jr_01D_4AE9                            ; $4AD3: $20 $14

    jr nz, jr_01D_4ABE                            ; $4AD5: $20 $E7

    ld d, b                                       ; $4AD7: $50
    ld a, h                                       ; $4AD8: $7C
    ld d, $1E                                     ; $4AD9: $16 $1E
    ld bc, $0162                                  ; $4ADB: $01 $62 $01
    ld d, $20                                     ; $4ADE: $16 $20
    or e                                          ; $4AE0: $B3
    ld c, a                                       ; $4AE1: $4F
    ld b, b                                       ; $4AE2: $40
    nop                                           ; $4AE3: $00
    rst $38                                       ; $4AE4: $FF
    jr nz, @-$11                                  ; $4AE5: $20 $ED

    ld c, a                                       ; $4AE7: $4F
    db $10                                        ; $4AE8: $10

jr_01D_4AE9:
    ld bc, $2000                                  ; $4AE9: $01 $00 $20
    or e                                          ; $4AEC: $B3
    ld c, a                                       ; $4AED: $4F
    ld d, b                                       ; $4AEE: $50
    nop                                           ; $4AEF: $00
    rst $38                                       ; $4AF0: $FF
    nop                                           ; $4AF1: $00
    ld b, l                                       ; $4AF2: $45
    dec e                                         ; $4AF3: $1D
    adc $68                                       ; $4AF4: $CE $68
    dec d                                         ; $4AF6: $15
    ld c, $18                                     ; $4AF7: $0E $18
    ld d, h                                       ; $4AF9: $54
    jr nc, jr_01D_4B0A                            ; $4AFA: $30 $0E

    ld [hl], $54                                  ; $4AFC: $36 $54
    stop                                          ; $4AFE: $10 $00
    ld e, e                                       ; $4B00: $5B
    dec e                                         ; $4B01: $1D
    ld [de], a                                    ; $4B02: $12
    ld c, e                                       ; $4B03: $4B
    ld h, d                                       ; $4B04: $62
    ld bc, $0E15                                  ; $4B05: $01 $15 $0E
    and b                                         ; $4B08: $A0
    ld d, e                                       ; $4B09: $53

jr_01D_4B0A:
    jr nz, jr_01D_4B1A                            ; $4B0A: $20 $0E

    ld [hl], b                                    ; $4B0C: $70
    ld d, e                                       ; $4B0D: $53
    ld d, b                                       ; $4B0E: $50
    nop                                           ; $4B0F: $00
    add hl, de                                    ; $4B10: $19
    ld b, d                                       ; $4B11: $42
    sbc e                                         ; $4B12: $9B
    ld c, b                                       ; $4B13: $48
    ld b, [hl]                                    ; $4B14: $46
    sbc a                                         ; $4B15: $9F
    ld d, a                                       ; $4B16: $57
    ld h, l                                       ; $4B17: $65
    ld l, h                                       ; $4B18: $6C
    ld h, e                                       ; $4B19: $63

jr_01D_4B1A:
    ld l, a                                       ; $4B1A: $6F
    ld l, l                                       ; $4B1B: $6D
    ld h, l                                       ; $4B1C: $65
    jr nz, jr_01D_4B81                            ; $4B1D: $20 $62

    ld h, c                                       ; $4B1F: $61
    ld h, e                                       ; $4B20: $63
    ld l, e                                       ; $4B21: $6B
    inc l                                         ; $4B22: $2C
    rst $38                                       ; $4B23: $FF
    ld d, h                                       ; $4B24: $54
    ld l, a                                       ; $4B25: $6F
    ld l, [hl]                                    ; $4B26: $6E
    ld a, c                                       ; $4B27: $79
    ld l, $FE                                     ; $4B28: $2E $FE
    db $FD                                        ; $4B2A: $FD
    sbc e                                         ; $4B2B: $9B
    ld a, b                                       ; $4B2C: $78
    ld [hl], b                                    ; $4B2D: $70
    sbc a                                         ; $4B2E: $9F
    ld d, e                                       ; $4B2F: $53
    ld l, a                                       ; $4B30: $6F
    ld l, l                                       ; $4B31: $6D
    ld h, l                                       ; $4B32: $65
    ld [hl], h                                    ; $4B33: $74
    ld l, b                                       ; $4B34: $68
    ld l, c                                       ; $4B35: $69
    ld l, [hl]                                    ; $4B36: $6E
    ld h, a                                       ; $4B37: $67
    jr nz, jr_01D_4B9B                            ; $4B38: $20 $61

    ld [hl], a                                    ; $4B3A: $77
    ld h, [hl]                                    ; $4B3B: $66
    ld [hl], l                                    ; $4B3C: $75
    ld l, h                                       ; $4B3D: $6C
    rst $38                                       ; $4B3E: $FF
    ld l, d                                       ; $4B3F: $6A
    ld [hl], l                                    ; $4B40: $75
    ld [hl], e                                    ; $4B41: $73
    ld [hl], h                                    ; $4B42: $74
    jr nz, jr_01D_4BAD                            ; $4B43: $20 $68

    ld h, c                                       ; $4B45: $61
    ld [hl], b                                    ; $4B46: $70
    ld [hl], b                                    ; $4B47: $70
    ld h, l                                       ; $4B48: $65
    ld l, [hl]                                    ; $4B49: $6E
    ld h, l                                       ; $4B4A: $65
    ld h, h                                       ; $4B4B: $64
    ld l, $FE                                     ; $4B4C: $2E $FE
    ld c, c                                       ; $4B4E: $49
    jr nz, jr_01D_4BBF                            ; $4B4F: $20 $6E

    ld h, l                                       ; $4B51: $65
    ld h, l                                       ; $4B52: $65
    ld h, h                                       ; $4B53: $64
    jr nz, jr_01D_4BCA                            ; $4B54: $20 $74

    ld l, a                                       ; $4B56: $6F
    jr nz, @+$76                                  ; $4B57: $20 $74

    ld h, c                                       ; $4B59: $61
    ld l, h                                       ; $4B5A: $6C
    ld l, e                                       ; $4B5B: $6B
    rst $38                                       ; $4B5C: $FF
    ld [hl], h                                    ; $4B5D: $74
    ld l, a                                       ; $4B5E: $6F
    jr nz, jr_01D_4BA8                            ; $4B5F: $20 $47

    ld l, c                                       ; $4B61: $69
    ld h, c                                       ; $4B62: $61
    ld l, $FE                                     ; $4B63: $2E $FE
    db $FD                                        ; $4B65: $FD
    sbc e                                         ; $4B66: $9B
    ld c, b                                       ; $4B67: $48
    ld b, [hl]                                    ; $4B68: $46
    sbc a                                         ; $4B69: $9F
    ld c, a                                       ; $4B6A: $4F
    ld l, e                                       ; $4B6B: $6B
    ld h, c                                       ; $4B6C: $61
    ld a, c                                       ; $4B6D: $79
    inc l                                         ; $4B6E: $2C
    rst $38                                       ; $4B6F: $FF
    ld h, [hl]                                    ; $4B70: $66
    ld l, a                                       ; $4B71: $6F
    ld l, h                                       ; $4B72: $6C
    ld l, h                                       ; $4B73: $6C
    ld l, a                                       ; $4B74: $6F
    ld [hl], a                                    ; $4B75: $77
    jr nz, @+$6F                                  ; $4B76: $20 $6D

    ld h, l                                       ; $4B78: $65
    ld l, $FE                                     ; $4B79: $2E $FE
    db $FD                                        ; $4B7B: $FD
    sbc d                                         ; $4B7C: $9A
    ld e, b                                       ; $4B7D: $58
    ld bc, $9342                                  ; $4B7E: $01 $42 $93

jr_01D_4B81:
    ld h, [hl]                                    ; $4B81: $66
    ret nz                                        ; $4B82: $C0

    ld e, h                                       ; $4B83: $5C
    ld hl, $2065                                  ; $4B84: $21 $65 $20
    ld c, l                                       ; $4B87: $4D
    ld c, a                                       ; $4B88: $4F
    ld h, h                                       ; $4B89: $64
    or d                                          ; $4B8A: $B2
    ld d, b                                       ; $4B8B: $50
    ld l, c                                       ; $4B8C: $69
    cp a                                          ; $4B8D: $BF
    ld d, b                                       ; $4B8E: $50
    dec b                                         ; $4B8F: $05
    nop                                           ; $4B90: $00
    add c                                         ; $4B91: $81
    ld e, l                                       ; $4B92: $5D
    rla                                           ; $4B93: $17
    inc h                                         ; $4B94: $24

jr_01D_4B95:
    or a                                          ; $4B95: $B7
    push de                                       ; $4B96: $D5
    nop                                           ; $4B97: $00
    jr nz, jr_01D_4B95                            ; $4B98: $20 $FB

    ld d, b                                       ; $4B9A: $50

jr_01D_4B9B:
    ld [hl+], a                                   ; $4B9B: $22
    dec b                                         ; $4B9C: $05
    ld b, b                                       ; $4B9D: $40
    dec bc                                        ; $4B9E: $0B
    nop                                           ; $4B9F: $00
    nop                                           ; $4BA0: $00
    add d                                         ; $4BA1: $82
    rra                                           ; $4BA2: $1F
    dec c                                         ; $4BA3: $0D
    sub h                                         ; $4BA4: $94
    halt                                          ; $4BA5: $76
    jr nz, jr_01D_4BAF                            ; $4BA6: $20 $07

jr_01D_4BA8:
    ld b, d                                       ; $4BA8: $42
    sub e                                         ; $4BA9: $93
    ld h, l                                       ; $4BAA: $65
    jr nz, @+$4F                                  ; $4BAB: $20 $4D

jr_01D_4BAD:
    ld c, a                                       ; $4BAD: $4F
    ld h, h                                       ; $4BAE: $64

jr_01D_4BAF:
    or d                                          ; $4BAF: $B2
    ld d, b                                       ; $4BB0: $50
    ld l, c                                       ; $4BB1: $69
    cp a                                          ; $4BB2: $BF
    ld d, b                                       ; $4BB3: $50
    dec b                                         ; $4BB4: $05
    nop                                           ; $4BB5: $00
    add c                                         ; $4BB6: $81
    ld e, l                                       ; $4BB7: $5D
    rla                                           ; $4BB8: $17
    inc h                                         ; $4BB9: $24

jr_01D_4BBA:
    or a                                          ; $4BBA: $B7
    push de                                       ; $4BBB: $D5
    nop                                           ; $4BBC: $00
    jr nz, jr_01D_4BBA                            ; $4BBD: $20 $FB

jr_01D_4BBF:
    ld d, b                                       ; $4BBF: $50
    ld [hl+], a                                   ; $4BC0: $22
    inc b                                         ; $4BC1: $04
    ld b, b                                       ; $4BC2: $40
    dec b                                         ; $4BC3: $05
    ld [bc], a                                    ; $4BC4: $02
    dec b                                         ; $4BC5: $05
    ld h, h                                       ; $4BC6: $64
    rla                                           ; $4BC7: $17
    ld d, $87                                     ; $4BC8: $16 $87

jr_01D_4BCA:
    db $D3                                        ; $4BCA: $D3
    nop                                           ; $4BCB: $00
    ld c, $F0                                     ; $4BCC: $0E $F0
    ld d, e                                       ; $4BCE: $53
    dec e                                         ; $4BCF: $1D
    pop af                                        ; $4BD0: $F1
    ld c, e                                       ; $4BD1: $4B
    ld l, e                                       ; $4BD2: $6B
    jr nc, @+$0C                                  ; $4BD3: $30 $0A

    or b                                          ; $4BD5: $B0
    ld c, b                                       ; $4BD6: $48
    nop                                           ; $4BD7: $00
    add b                                         ; $4BD8: $80
    nop                                           ; $4BD9: $00
    dec bc                                        ; $4BDA: $0B
    nop                                           ; $4BDB: $00
    ld b, e                                       ; $4BDC: $43
    ld de, $2401                                  ; $4BDD: $11 $01 $24
    and d                                         ; $4BE0: $A2
    dec b                                         ; $4BE1: $05
    nop                                           ; $4BE2: $00
    dec e                                         ; $4BE3: $1D
    add sp, $4B                                   ; $4BE4: $E8 $4B
    dec bc                                        ; $4BE6: $0B
    ld [bc], a                                    ; $4BE7: $02
    nop                                           ; $4BE8: $00
    add d                                         ; $4BE9: $82
    sub h                                         ; $4BEA: $94
    halt                                          ; $4BEB: $76
    jr nz, jr_01D_4BF5                            ; $4BEC: $20 $07

    rra                                           ; $4BEE: $1F
    dec c                                         ; $4BEF: $0D
    ld b, d                                       ; $4BF0: $42
    inc d                                         ; $4BF1: $14
    ld c, $F0                                     ; $4BF2: $0E $F0
    ld d, e                                       ; $4BF4: $53

jr_01D_4BF5:
    xor h                                         ; $4BF5: $AC
    inc h                                         ; $4BF6: $24
    and d                                         ; $4BF7: $A2
    ld bc, $1D5B                                  ; $4BF8: $01 $5B $1D
    ld a, h                                       ; $4BFB: $7C
    ld c, h                                       ; $4BFC: $4C
    ld h, d                                       ; $4BFD: $62

jr_01D_4BFE:
    dec b                                         ; $4BFE: $05
    ld b, l                                       ; $4BFF: $45
    ld c, $35                                     ; $4C00: $0E $35
    ld d, l                                       ; $4C02: $55
    dec d                                         ; $4C03: $15
    ld c, $F0                                     ; $4C04: $0E $F0
    ld d, e                                       ; $4C06: $53
    add b                                         ; $4C07: $80
    nop                                           ; $4C08: $00
    ld e, e                                       ; $4C09: $5B
    dec e                                         ; $4C0A: $1D
    ld sp, hl                                     ; $4C0B: $F9
    ld c, l                                       ; $4C0C: $4D
    ld h, d                                       ; $4C0D: $62
    dec b                                         ; $4C0E: $05
    ld b, l                                       ; $4C0F: $45
    ld c, $35                                     ; $4C10: $0E $35

jr_01D_4C12:
    ld d, l                                       ; $4C12: $55
    inc d                                         ; $4C13: $14
    ld c, $FA                                     ; $4C14: $0E $FA
    ld d, e                                       ; $4C16: $53
    ld b, e                                       ; $4C17: $43
    rrca                                          ; $4C18: $0F
    inc bc                                        ; $4C19: $03
    dec b                                         ; $4C1A: $05
    ld bc, $271D                                  ; $4C1B: $01 $1D $27
    ld c, h                                       ; $4C1E: $4C
    add hl, bc                                    ; $4C1F: $09
    nop                                           ; $4C20: $00
    dec e                                         ; $4C21: $1D
    ld d, b                                       ; $4C22: $50
    ld c, h                                       ; $4C23: $4C
    ld b, [hl]                                    ; $4C24: $46
    inc l                                         ; $4C25: $2C
    ld c, h                                       ; $4C26: $4C
    add hl, bc                                    ; $4C27: $09
    nop                                           ; $4C28: $00
    dec e                                         ; $4C29: $1D

jr_01D_4C2A:
    ld h, c                                       ; $4C2A: $61
    ld c, h                                       ; $4C2B: $4C
    ld b, e                                       ; $4C2C: $43

jr_01D_4C2D:
    rrca                                          ; $4C2D: $0F
    inc bc                                        ; $4C2E: $03
    dec b                                         ; $4C2F: $05

jr_01D_4C30:
    inc bc                                        ; $4C30: $03
    dec e                                         ; $4C31: $1D
    dec sp                                        ; $4C32: $3B
    ld c, h                                       ; $4C33: $4C
    dec d                                         ; $4C34: $15
    ld c, $80                                     ; $4C35: $0E $80
    ld d, e                                       ; $4C37: $53
    add b                                         ; $4C38: $80
    nop                                           ; $4C39: $00
    add hl, de                                    ; $4C3A: $19
    dec d                                         ; $4C3B: $15
    ld c, $90                                     ; $4C3C: $0E $90
    ld d, e                                       ; $4C3E: $53
    db $10                                        ; $4C3F: $10
    ld c, $80                                     ; $4C40: $0E $80
    ld d, e                                       ; $4C42: $53
    add b                                         ; $4C43: $80
    nop                                           ; $4C44: $00

jr_01D_4C45:
    add hl, de                                    ; $4C45: $19
    inc d                                         ; $4C46: $14
    jr nz, jr_01D_4BFE                            ; $4C47: $20 $B5

    ld d, b                                       ; $4C49: $50
    ld h, d                                       ; $4C4A: $62
    dec b                                         ; $4C4B: $05
    ld b, l                                       ; $4C4C: $45
    jr nz, @-$79                                  ; $4C4D: $20 $85

    ld e, a                                       ; $4C4F: $5F
    dec d                                         ; $4C50: $15
    jr nz, jr_01D_4C12                            ; $4C51: $20 $BF

    ld d, b                                       ; $4C53: $50
    db $10                                        ; $4C54: $10
    jr nz, jr_01D_4C2A                            ; $4C55: $20 $D3

    ld d, b                                       ; $4C57: $50
    jr nz, @+$22                                  ; $4C58: $20 $20

    or l                                          ; $4C5A: $B5
    ld d, b                                       ; $4C5B: $50
    jr nz, jr_01D_4C5E                            ; $4C5C: $20 $00

jr_01D_4C5E:
    ld b, [hl]                                    ; $4C5E: $46
    ld l, a                                       ; $4C5F: $6F
    ld c, h                                       ; $4C60: $4C
    dec d                                         ; $4C61: $15
    jr nz, jr_01D_4C2D                            ; $4C62: $20 $C9

    ld d, b                                       ; $4C64: $50
    db $10                                        ; $4C65: $10
    jr nz, jr_01D_4C45                            ; $4C66: $20 $DD

    ld d, b                                       ; $4C68: $50
    jr nz, @+$22                                  ; $4C69: $20 $20

    or l                                          ; $4C6B: $B5
    ld d, b                                       ; $4C6C: $50
    jr nz, jr_01D_4C6F                            ; $4C6D: $20 $00

jr_01D_4C6F:
    ld e, e                                       ; $4C6F: $5B
    dec e                                         ; $4C70: $1D
    pop af                                        ; $4C71: $F1
    ld c, [hl]                                    ; $4C72: $4E
    ld h, d                                       ; $4C73: $62
    dec b                                         ; $4C74: $05
    inc de                                        ; $4C75: $13
    add c                                         ; $4C76: $81
    ld e, l                                       ; $4C77: $5D
    ld b, l                                       ; $4C78: $45
    jr nz, jr_01D_4C30                            ; $4C79: $20 $B5

    ld d, b                                       ; $4C7B: $50
    sbc e                                         ; $4C7C: $9B
    ld a, b                                       ; $4C7D: $78
    ld [hl], b                                    ; $4C7E: $70
    sbc a                                         ; $4C7F: $9F
    ld d, l                                       ; $4C80: $55
    ld l, l                                       ; $4C81: $6D
    inc l                                         ; $4C82: $2C
    jr nz, jr_01D_4CCA                            ; $4C83: $20 $45

    ld l, c                                       ; $4C85: $69
    ld h, h                                       ; $4C86: $64
    ld l, a                                       ; $4C87: $6F
    ld l, [hl]                                    ; $4C88: $6E
    ccf                                           ; $4C89: $3F
    cp $2E                                        ; $4C8A: $FE $2E
    ld l, $2E                                     ; $4C8C: $2E $2E
    cp $45                                        ; $4C8E: $FE $45
    ld l, c                                       ; $4C90: $69
    ld h, h                                       ; $4C91: $64
    ld l, a                                       ; $4C92: $6F
    ld l, [hl]                                    ; $4C93: $6E
    ccf                                           ; $4C94: $3F
    cp $FD                                        ; $4C95: $FE $FD
    ld e, b                                       ; $4C97: $58
    dec b                                         ; $4C98: $05
    sbc e                                         ; $4C99: $9B
    ld c, b                                       ; $4C9A: $48
    ld b, [hl]                                    ; $4C9B: $46
    sbc a                                         ; $4C9C: $9F
    ld l, $2E                                     ; $4C9D: $2E $2E
    ld l, $FE                                     ; $4C9F: $2E $FE
    ld l, $2E                                     ; $4CA1: $2E $2E
    ld l, $54                                     ; $4CA3: $2E $54
    ld l, a                                       ; $4CA5: $6F
    ld l, [hl]                                    ; $4CA6: $6E
    ld a, c                                       ; $4CA7: $79
    ld l, $FE                                     ; $4CA8: $2E $FE
    ld e, c                                       ; $4CAA: $59
    ld l, a                                       ; $4CAB: $6F
    ld [hl], l                                    ; $4CAC: $75
    daa                                           ; $4CAD: $27
    ld [hl], d                                    ; $4CAE: $72
    ld h, l                                       ; $4CAF: $65
    jr nz, jr_01D_4D13                            ; $4CB0: $20 $61

    ld l, h                                       ; $4CB2: $6C
    ld l, c                                       ; $4CB3: $69
    halt                                          ; $4CB4: $76
    ld h, l                                       ; $4CB5: $65
    ld l, $FF                                     ; $4CB6: $2E $FF
    db $FD                                        ; $4CB8: $FD
    sbc e                                         ; $4CB9: $9B
    ld a, b                                       ; $4CBA: $78
    ld [hl], b                                    ; $4CBB: $70
    sbc a                                         ; $4CBC: $9F
    ld d, a                                       ; $4CBD: $57
    ld l, b                                       ; $4CBE: $68
    ld h, c                                       ; $4CBF: $61
    ld [hl], h                                    ; $4CC0: $74
    jr nz, jr_01D_4D24                            ; $4CC1: $20 $61

    ld [hl], d                                    ; $4CC3: $72
    ld h, l                                       ; $4CC4: $65
    jr nz, jr_01D_4D40                            ; $4CC5: $20 $79

    ld l, a                                       ; $4CC7: $6F
    ld [hl], l                                    ; $4CC8: $75
    rst $38                                       ; $4CC9: $FF

jr_01D_4CCA:
    ld h, h                                       ; $4CCA: $64
    ld l, a                                       ; $4CCB: $6F
    ld l, c                                       ; $4CCC: $69
    ld l, [hl]                                    ; $4CCD: $6E
    ld h, a                                       ; $4CCE: $67
    jr nz, jr_01D_4D39                            ; $4CCF: $20 $68

    ld h, l                                       ; $4CD1: $65
    ld [hl], d                                    ; $4CD2: $72
    ld h, l                                       ; $4CD3: $65
    ccf                                           ; $4CD4: $3F
    cp $FD                                        ; $4CD5: $FE $FD
    sbc e                                         ; $4CD7: $9B
    ld c, b                                       ; $4CD8: $48
    ld b, [hl]                                    ; $4CD9: $46
    sbc a                                         ; $4CDA: $9F
    ld d, e                                       ; $4CDB: $53
    ld l, a                                       ; $4CDC: $6F
    ld l, l                                       ; $4CDD: $6D
    ld h, l                                       ; $4CDE: $65
    ld [hl], h                                    ; $4CDF: $74
    ld l, b                                       ; $4CE0: $68
    ld l, c                                       ; $4CE1: $69
    ld l, [hl]                                    ; $4CE2: $6E
    ld h, a                                       ; $4CE3: $67
    jr nz, jr_01D_4D4E                            ; $4CE4: $20 $68

    ld l, c                                       ; $4CE6: $69
    ld [hl], h                                    ; $4CE7: $74
    rst $38                                       ; $4CE8: $FF
    ld l, l                                       ; $4CE9: $6D
    ld h, l                                       ; $4CEA: $65
    jr nz, jr_01D_4D4E                            ; $4CEB: $20 $61

    ld h, [hl]                                    ; $4CED: $66
    ld [hl], h                                    ; $4CEE: $74
    ld h, l                                       ; $4CEF: $65
    ld [hl], d                                    ; $4CF0: $72
    jr nz, jr_01D_4D6C                            ; $4CF1: $20 $79

    ld l, a                                       ; $4CF3: $6F
    ld [hl], l                                    ; $4CF4: $75
    rst $38                                       ; $4CF5: $FF

jr_01D_4CF6:
    ld [hl], a                                    ; $4CF6: $77
    ld h, l                                       ; $4CF7: $65
    ld [hl], d                                    ; $4CF8: $72
    ld h, l                                       ; $4CF9: $65
    jr nz, jr_01D_4D60                            ; $4CFA: $20 $64

    ld l, a                                       ; $4CFC: $6F
    ld l, [hl]                                    ; $4CFD: $6E
    ld h, l                                       ; $4CFE: $65
    cp $66                                        ; $4CFF: $FE $66
    ld l, c                                       ; $4D01: $69
    ld h, a                                       ; $4D02: $67
    ld l, b                                       ; $4D03: $68
    ld [hl], h                                    ; $4D04: $74
    ld l, c                                       ; $4D05: $69
    ld l, [hl]                                    ; $4D06: $6E
    ld h, a                                       ; $4D07: $67
    ld l, $2E                                     ; $4D08: $2E $2E
    ld l, $FE                                     ; $4D0A: $2E $FE
    ld c, c                                       ; $4D0C: $49
    jr nz, jr_01D_4D76                            ; $4D0D: $20 $67

    ld l, a                                       ; $4D0F: $6F
    ld [hl], h                                    ; $4D10: $74
    jr nz, jr_01D_4D7E                            ; $4D11: $20 $6B

jr_01D_4D13:
    ld l, c                                       ; $4D13: $69
    ld l, [hl]                                    ; $4D14: $6E
    ld h, h                                       ; $4D15: $64
    jr nz, jr_01D_4D87                            ; $4D16: $20 $6F

    ld h, [hl]                                    ; $4D18: $66
    rst $38                                       ; $4D19: $FF
    ld h, h                                       ; $4D1A: $64
    ld l, c                                       ; $4D1B: $69
    ld [hl], e                                    ; $4D1C: $73
    ld l, a                                       ; $4D1D: $6F
    ld [hl], d                                    ; $4D1E: $72
    ld l, c                                       ; $4D1F: $69
    ld h, l                                       ; $4D20: $65
    ld l, [hl]                                    ; $4D21: $6E
    ld [hl], h                                    ; $4D22: $74
    ld h, l                                       ; $4D23: $65

jr_01D_4D24:
    ld h, h                                       ; $4D24: $64
    ld l, $FE                                     ; $4D25: $2E $FE
    ld d, a                                       ; $4D27: $57
    ld l, b                                       ; $4D28: $68
    ld h, c                                       ; $4D29: $61
    ld [hl], h                                    ; $4D2A: $74
    jr nz, jr_01D_4D95                            ; $4D2B: $20 $68

    ld h, c                                       ; $4D2D: $61
    ld [hl], b                                    ; $4D2E: $70
    ld [hl], b                                    ; $4D2F: $70
    ld h, l                                       ; $4D30: $65
    ld l, [hl]                                    ; $4D31: $6E
    ld h, l                                       ; $4D32: $65
    ld h, h                                       ; $4D33: $64
    ccf                                           ; $4D34: $3F
    cp $FD                                        ; $4D35: $FE $FD
    sbc e                                         ; $4D37: $9B
    ld a, b                                       ; $4D38: $78

jr_01D_4D39:
    ld [hl], b                                    ; $4D39: $70
    sbc a                                         ; $4D3A: $9F
    ld c, c                                       ; $4D3B: $49
    ld l, $2E                                     ; $4D3C: $2E $2E
    ld l, $20                                     ; $4D3E: $2E $20

jr_01D_4D40:
    ld [hl], l                                    ; $4D40: $75
    ld l, b                                       ; $4D41: $68
    ld l, $2E                                     ; $4D42: $2E $2E
    ld l, $FE                                     ; $4D44: $2E $FE
    db $FD                                        ; $4D46: $FD
    sbc e                                         ; $4D47: $9B
    ld c, b                                       ; $4D48: $48
    ld b, [hl]                                    ; $4D49: $46
    sbc a                                         ; $4D4A: $9F
    ld d, a                                       ; $4D4B: $57
    ld l, b                                       ; $4D4C: $68
    ld h, c                                       ; $4D4D: $61

jr_01D_4D4E:
    ld [hl], h                                    ; $4D4E: $74
    ccf                                           ; $4D4F: $3F
    cp $FD                                        ; $4D50: $FE $FD
    sbc d                                         ; $4D52: $9A
    add hl, bc                                    ; $4D53: $09
    nop                                           ; $4D54: $00
    dec e                                         ; $4D55: $1D
    ld b, [hl]                                    ; $4D56: $46
    ld c, h                                       ; $4D57: $4C
    ld b, b                                       ; $4D58: $40
    jr nz, jr_01D_4CF6                            ; $4D59: $20 $9B

    ld a, b                                       ; $4D5B: $78
    ld [hl], b                                    ; $4D5C: $70
    sbc a                                         ; $4D5D: $9F
    ld b, h                                       ; $4D5E: $44
    ld h, c                                       ; $4D5F: $61

jr_01D_4D60:
    ld [hl], d                                    ; $4D60: $72
    ld l, [hl]                                    ; $4D61: $6E
    ld l, $20                                     ; $4D62: $2E $20
    ld c, c                                       ; $4D64: $49
    jr nz, jr_01D_4DD9                            ; $4D65: $20 $72

    ld h, l                                       ; $4D67: $65
    ld h, c                                       ; $4D68: $61
    ld l, h                                       ; $4D69: $6C
    ld l, h                                       ; $4D6A: $6C
    ld a, c                                       ; $4D6B: $79

jr_01D_4D6C:
    rst $38                                       ; $4D6C: $FF
    ld [hl], e                                    ; $4D6D: $73
    ld l, b                                       ; $4D6E: $68
    ld l, a                                       ; $4D6F: $6F
    ld [hl], l                                    ; $4D70: $75
    ld l, h                                       ; $4D71: $6C
    ld h, h                                       ; $4D72: $64
    ld l, [hl]                                    ; $4D73: $6E
    daa                                           ; $4D74: $27
    ld [hl], h                                    ; $4D75: $74

jr_01D_4D76:
    jr nz, jr_01D_4DEC                            ; $4D76: $20 $74

    ld h, l                                       ; $4D78: $65
    ld l, h                                       ; $4D79: $6C
    ld l, h                                       ; $4D7A: $6C
    cp $68                                        ; $4D7B: $FE $68
    ld l, c                                       ; $4D7D: $69

jr_01D_4D7E:
    ld l, l                                       ; $4D7E: $6D
    jr nz, jr_01D_4DE2                            ; $4D7F: $20 $61

    ld h, d                                       ; $4D81: $62
    ld l, a                                       ; $4D82: $6F
    ld [hl], l                                    ; $4D83: $75
    ld [hl], h                                    ; $4D84: $74
    jr nz, jr_01D_4DFB                            ; $4D85: $20 $74

jr_01D_4D87:
    ld l, b                                       ; $4D87: $68
    ld h, l                                       ; $4D88: $65
    rst $38                                       ; $4D89: $FF
    ld b, c                                       ; $4D8A: $41
    ld [hl], d                                    ; $4D8B: $72
    ld h, h                                       ; $4D8C: $64
    ld h, l                                       ; $4D8D: $65
    ld [hl], d                                    ; $4D8E: $72
    ld l, c                                       ; $4D8F: $69
    ld h, c                                       ; $4D90: $61
    ld l, h                                       ; $4D91: $6C
    ld [hl], e                                    ; $4D92: $73
    ld l, $2E                                     ; $4D93: $2E $2E

jr_01D_4D95:
    ld l, $FE                                     ; $4D95: $2E $FE
    ld d, h                                       ; $4D97: $54
    ld l, b                                       ; $4D98: $68
    ld h, c                                       ; $4D99: $61
    ld [hl], h                                    ; $4D9A: $74
    jr nz, jr_01D_4E14                            ; $4D9B: $20 $77

    ld l, a                                       ; $4D9D: $6F
    ld [hl], l                                    ; $4D9E: $75
    ld l, h                                       ; $4D9F: $6C
    ld h, h                                       ; $4DA0: $64
    jr nz, jr_01D_4E05                            ; $4DA1: $20 $62

    ld h, l                                       ; $4DA3: $65
    rst $38                                       ; $4DA4: $FF
    ld h, h                                       ; $4DA5: $64
    ld l, c                                       ; $4DA6: $69
    ld [hl], e                                    ; $4DA7: $73
    ld [hl], d                                    ; $4DA8: $72
    ld h, l                                       ; $4DA9: $65
    ld [hl], e                                    ; $4DAA: $73
    ld [hl], b                                    ; $4DAB: $70
    ld h, l                                       ; $4DAC: $65
    ld h, e                                       ; $4DAD: $63
    ld [hl], h                                    ; $4DAE: $74
    ld h, [hl]                                    ; $4DAF: $66
    ld [hl], l                                    ; $4DB0: $75
    ld l, h                                       ; $4DB1: $6C
    cp $73                                        ; $4DB2: $FE $73
    ld l, c                                       ; $4DB4: $69
    ld l, [hl]                                    ; $4DB5: $6E
    ld h, e                                       ; $4DB6: $63
    ld h, l                                       ; $4DB7: $65
    jr nz, jr_01D_4E2E                            ; $4DB8: $20 $74

    ld l, b                                       ; $4DBA: $68
    ld h, l                                       ; $4DBB: $65
    ld a, c                                       ; $4DBC: $79
    jr nz, @+$79                                  ; $4DBD: $20 $77

    ld h, c                                       ; $4DBF: $61
    ld l, [hl]                                    ; $4DC0: $6E
    ld [hl], h                                    ; $4DC1: $74
    rst $38                                       ; $4DC2: $FF
    ld [hl], h                                    ; $4DC3: $74
    ld l, a                                       ; $4DC4: $6F
    jr nz, jr_01D_4E3A                            ; $4DC5: $20 $73

    ld [hl], h                                    ; $4DC7: $74
    ld h, c                                       ; $4DC8: $61
    ld a, c                                       ; $4DC9: $79
    dec l                                         ; $4DCA: $2D
    cp $FD                                        ; $4DCB: $FE $FD
    sbc e                                         ; $4DCD: $9B
    ld c, b                                       ; $4DCE: $48
    ld b, [hl]                                    ; $4DCF: $46
    sbc a                                         ; $4DD0: $9F
    ld d, h                                       ; $4DD1: $54
    ld l, a                                       ; $4DD2: $6F
    ld l, [hl]                                    ; $4DD3: $6E
    ld a, c                                       ; $4DD4: $79
    ccf                                           ; $4DD5: $3F
    jr nz, jr_01D_4E2F                            ; $4DD6: $20 $57

    ld l, b                                       ; $4DD8: $68

jr_01D_4DD9:
    ld h, c                                       ; $4DD9: $61
    ld [hl], h                                    ; $4DDA: $74
    daa                                           ; $4DDB: $27
    ld [hl], e                                    ; $4DDC: $73
    rst $38                                       ; $4DDD: $FF
    ld [hl], a                                    ; $4DDE: $77
    ld [hl], d                                    ; $4DDF: $72
    ld l, a                                       ; $4DE0: $6F
    ld l, [hl]                                    ; $4DE1: $6E

jr_01D_4DE2:
    ld h, a                                       ; $4DE2: $67
    ccf                                           ; $4DE3: $3F
    cp $FD                                        ; $4DE4: $FE $FD
    sbc d                                         ; $4DE6: $9A
    ld e, b                                       ; $4DE7: $58
    dec b                                         ; $4DE8: $05
    sbc e                                         ; $4DE9: $9B
    ld a, b                                       ; $4DEA: $78
    ld [hl], b                                    ; $4DEB: $70

jr_01D_4DEC:
    sbc a                                         ; $4DEC: $9F
    ld l, $2E                                     ; $4DED: $2E $2E
    ld l, $FE                                     ; $4DEF: $2E $FE
    db $FD                                        ; $4DF1: $FD
    sbc d                                         ; $4DF2: $9A
    add hl, bc                                    ; $4DF3: $09
    ld [bc], a                                    ; $4DF4: $02
    dec e                                         ; $4DF5: $1D
    inc bc                                        ; $4DF6: $03
    ld c, h                                       ; $4DF7: $4C
    ld b, d                                       ; $4DF8: $42
    sbc e                                         ; $4DF9: $9B
    ld c, b                                       ; $4DFA: $48

jr_01D_4DFB:
    ld b, [hl]                                    ; $4DFB: $46
    sbc a                                         ; $4DFC: $9F
    ld c, c                                       ; $4DFD: $49
    ld [hl], h                                    ; $4DFE: $74
    jr nz, jr_01D_4E65                            ; $4DFF: $20 $64

    ld l, a                                       ; $4E01: $6F
    ld h, l                                       ; $4E02: $65
    ld [hl], e                                    ; $4E03: $73
    ld l, [hl]                                    ; $4E04: $6E

jr_01D_4E05:
    daa                                           ; $4E05: $27
    ld [hl], h                                    ; $4E06: $74
    rst $38                                       ; $4E07: $FF
    ld l, l                                       ; $4E08: $6D
    ld h, c                                       ; $4E09: $61
    ld [hl], h                                    ; $4E0A: $74
    ld [hl], h                                    ; $4E0B: $74
    ld h, l                                       ; $4E0C: $65
    ld [hl], d                                    ; $4E0D: $72
    jr nz, jr_01D_4E71                            ; $4E0E: $20 $61

    ld l, [hl]                                    ; $4E10: $6E
    ld a, c                                       ; $4E11: $79
    ld [hl], a                                    ; $4E12: $77
    ld h, c                                       ; $4E13: $61

jr_01D_4E14:
    ld a, c                                       ; $4E14: $79
    ld l, $FE                                     ; $4E15: $2E $FE
    db $FD                                        ; $4E17: $FD
    sbc d                                         ; $4E18: $9A
    ld e, b                                       ; $4E19: $58
    dec b                                         ; $4E1A: $05
    sbc e                                         ; $4E1B: $9B
    ld c, b                                       ; $4E1C: $48
    ld b, [hl]                                    ; $4E1D: $46
    sbc a                                         ; $4E1E: $9F
    ld c, c                                       ; $4E1F: $49
    daa                                           ; $4E20: $27
    ld l, l                                       ; $4E21: $6D
    jr nz, jr_01D_4E97                            ; $4E22: $20 $73

    ld l, a                                       ; $4E24: $6F
    jr nz, jr_01D_4E9A                            ; $4E25: $20 $73

    ld l, a                                       ; $4E27: $6F
    ld [hl], d                                    ; $4E28: $72
    ld [hl], d                                    ; $4E29: $72
    ld a, c                                       ; $4E2A: $79
    inc l                                         ; $4E2B: $2C
    rst $38                                       ; $4E2C: $FF
    ld d, h                                       ; $4E2D: $54

jr_01D_4E2E:
    ld l, a                                       ; $4E2E: $6F

jr_01D_4E2F:
    ld l, [hl]                                    ; $4E2F: $6E
    ld a, c                                       ; $4E30: $79
    ld l, $20                                     ; $4E31: $2E $20
    jr nz, @+$4B                                  ; $4E33: $20 $49

    jr nz, jr_01D_4EA9                            ; $4E35: $20 $72

    ld h, l                                       ; $4E37: $65
    ld h, c                                       ; $4E38: $61
    ld l, h                                       ; $4E39: $6C

jr_01D_4E3A:
    ld l, h                                       ; $4E3A: $6C
    ld a, c                                       ; $4E3B: $79
    cp $66                                        ; $4E3C: $FE $66
    ld h, l                                       ; $4E3E: $65
    ld h, l                                       ; $4E3F: $65
    ld l, h                                       ; $4E40: $6C
    jr nz, jr_01D_4EB7                            ; $4E41: $20 $74

    ld l, b                                       ; $4E43: $68
    ld h, c                                       ; $4E44: $61
    ld [hl], h                                    ; $4E45: $74
    jr nz, jr_01D_4EBC                            ; $4E46: $20 $74

    ld l, b                                       ; $4E48: $68
    ld l, c                                       ; $4E49: $69
    ld [hl], e                                    ; $4E4A: $73
    rst $38                                       ; $4E4B: $FF
    ld l, c                                       ; $4E4C: $69
    ld [hl], e                                    ; $4E4D: $73
    jr nz, jr_01D_4EB1                            ; $4E4E: $20 $61

    ld l, h                                       ; $4E50: $6C
    ld l, h                                       ; $4E51: $6C
    jr nz, jr_01D_4EC1                            ; $4E52: $20 $6D

    ld a, c                                       ; $4E54: $79
    cp $66                                        ; $4E55: $FE $66
    ld h, c                                       ; $4E57: $61
    ld [hl], l                                    ; $4E58: $75
    ld l, h                                       ; $4E59: $6C
    ld [hl], h                                    ; $4E5A: $74
    ld l, $FE                                     ; $4E5B: $2E $FE
    ld c, c                                       ; $4E5D: $49
    ld h, [hl]                                    ; $4E5E: $66
    jr nz, jr_01D_4EAA                            ; $4E5F: $20 $49

    jr nz, jr_01D_4ECB                            ; $4E61: $20 $68

    ld h, c                                       ; $4E63: $61
    ld h, h                                       ; $4E64: $64

jr_01D_4E65:
    jr nz, jr_01D_4ED1                            ; $4E65: $20 $6A

    ld [hl], l                                    ; $4E67: $75
    ld [hl], e                                    ; $4E68: $73
    ld [hl], h                                    ; $4E69: $74
    cp $6C                                        ; $4E6A: $FE $6C
    ld l, c                                       ; $4E6C: $69
    ld [hl], e                                    ; $4E6D: $73
    ld [hl], h                                    ; $4E6E: $74
    ld h, l                                       ; $4E6F: $65
    ld l, [hl]                                    ; $4E70: $6E

jr_01D_4E71:
    ld h, l                                       ; $4E71: $65
    ld h, h                                       ; $4E72: $64
    jr nz, jr_01D_4EE9                            ; $4E73: $20 $74

    ld l, a                                       ; $4E75: $6F
    cp $4F                                        ; $4E76: $FE $4F
    ld [hl], d                                    ; $4E78: $72
    ld [hl], a                                    ; $4E79: $77
    ld l, c                                       ; $4E7A: $69
    ld l, [hl]                                    ; $4E7B: $6E
    inc l                                         ; $4E7C: $2C
    jr nz, jr_01D_4EF8                            ; $4E7D: $20 $79

    ld l, a                                       ; $4E7F: $6F
    ld [hl], l                                    ; $4E80: $75
    daa                                           ; $4E81: $27
    ld h, h                                       ; $4E82: $64
    cp $70                                        ; $4E83: $FE $70
    ld [hl], d                                    ; $4E85: $72
    ld l, a                                       ; $4E86: $6F
    ld h, d                                       ; $4E87: $62
    ld h, c                                       ; $4E88: $61
    ld h, d                                       ; $4E89: $62
    ld l, h                                       ; $4E8A: $6C
    ld a, c                                       ; $4E8B: $79
    jr nz, jr_01D_4EF0                            ; $4E8C: $20 $62

    ld h, l                                       ; $4E8E: $65
    cp $68                                        ; $4E8F: $FE $68
    ld l, a                                       ; $4E91: $6F
    ld l, l                                       ; $4E92: $6D
    ld h, l                                       ; $4E93: $65
    jr nz, jr_01D_4EF8                            ; $4E94: $20 $62

    ld a, c                                       ; $4E96: $79

jr_01D_4E97:
    jr nz, jr_01D_4F07                            ; $4E97: $20 $6E

    ld l, a                                       ; $4E99: $6F

jr_01D_4E9A:
    ld [hl], a                                    ; $4E9A: $77
    ld l, $FE                                     ; $4E9B: $2E $FE
    db $FD                                        ; $4E9D: $FD
    sbc e                                         ; $4E9E: $9B
    ld a, b                                       ; $4E9F: $78
    ld [hl], b                                    ; $4EA0: $70
    sbc a                                         ; $4EA1: $9F
    ld l, $2E                                     ; $4EA2: $2E $2E
    ld l, $FE                                     ; $4EA4: $2E $FE
    db $FD                                        ; $4EA6: $FD
    sbc e                                         ; $4EA7: $9B
    ld c, b                                       ; $4EA8: $48

jr_01D_4EA9:
    ld b, [hl]                                    ; $4EA9: $46

jr_01D_4EAA:
    sbc a                                         ; $4EAA: $9F
    ld c, c                                       ; $4EAB: $49
    daa                                           ; $4EAC: $27
    ld l, h                                       ; $4EAD: $6C
    ld l, h                                       ; $4EAE: $6C
    jr nz, @+$64                                  ; $4EAF: $20 $62

jr_01D_4EB1:
    ld h, l                                       ; $4EB1: $65
    jr nz, jr_01D_4F16                            ; $4EB2: $20 $62

    ld h, c                                       ; $4EB4: $61
    ld h, e                                       ; $4EB5: $63
    ld l, e                                       ; $4EB6: $6B

jr_01D_4EB7:
    cp $69                                        ; $4EB7: $FE $69
    ld l, [hl]                                    ; $4EB9: $6E
    jr nz, jr_01D_4F12                            ; $4EBA: $20 $56

jr_01D_4EBC:
    ld h, c                                       ; $4EBC: $61
    ld [hl], e                                    ; $4EBD: $73
    ld l, b                                       ; $4EBE: $68
    jr nz, jr_01D_4F0F                            ; $4EBF: $20 $4E

jr_01D_4EC1:
    ld h, c                                       ; $4EC1: $61
    ld [hl], d                                    ; $4EC2: $72
    ld l, a                                       ; $4EC3: $6F
    ld l, a                                       ; $4EC4: $6F
    ld l, l                                       ; $4EC5: $6D
    cp $69                                        ; $4EC6: $FE $69
    ld h, [hl]                                    ; $4EC8: $66
    jr nz, jr_01D_4F44                            ; $4EC9: $20 $79

jr_01D_4ECB:
    ld l, a                                       ; $4ECB: $6F
    ld [hl], l                                    ; $4ECC: $75
    jr nz, jr_01D_4F3D                            ; $4ECD: $20 $6E

    ld h, l                                       ; $4ECF: $65
    ld h, l                                       ; $4ED0: $65

jr_01D_4ED1:
    ld h, h                                       ; $4ED1: $64
    jr nz, jr_01D_4F41                            ; $4ED2: $20 $6D

    ld h, l                                       ; $4ED4: $65
    ld l, $FE                                     ; $4ED5: $2E $FE
    ld b, a                                       ; $4ED7: $47
    ld l, c                                       ; $4ED8: $69
    ld h, c                                       ; $4ED9: $61
    daa                                           ; $4EDA: $27
    ld [hl], e                                    ; $4EDB: $73
    jr nz, jr_01D_4F52                            ; $4EDC: $20 $74

    ld l, b                                       ; $4EDE: $68
    ld h, l                                       ; $4EDF: $65
    ld [hl], d                                    ; $4EE0: $72
    ld h, l                                       ; $4EE1: $65
    inc l                                         ; $4EE2: $2C
    cp $74                                        ; $4EE3: $FE $74
    ld l, a                                       ; $4EE5: $6F
    ld l, a                                       ; $4EE6: $6F
    ld l, $FE                                     ; $4EE7: $2E $FE

jr_01D_4EE9:
    db $FD                                        ; $4EE9: $FD
    sbc d                                         ; $4EEA: $9A
    add hl, bc                                    ; $4EEB: $09
    ld [bc], a                                    ; $4EEC: $02
    dec e                                         ; $4EED: $1D
    inc de                                        ; $4EEE: $13
    ld c, h                                       ; $4EEF: $4C

jr_01D_4EF0:
    ld b, d                                       ; $4EF0: $42
    ld b, b                                       ; $4EF1: $40
    ld b, b                                       ; $4EF2: $40
    sbc e                                         ; $4EF3: $9B
    ld a, b                                       ; $4EF4: $78
    ld [hl], b                                    ; $4EF5: $70
    sbc a                                         ; $4EF6: $9F
    ld c, c                                       ; $4EF7: $49

jr_01D_4EF8:
    jr nz, jr_01D_4F5D                            ; $4EF8: $20 $63

    ld h, c                                       ; $4EFA: $61
    ld l, [hl]                                    ; $4EFB: $6E
    jr nz, jr_01D_4F71                            ; $4EFC: $20 $73

    ld h, l                                       ; $4EFE: $65
    ld h, l                                       ; $4EFF: $65
    jr nz, jr_01D_4F49                            ; $4F00: $20 $47

    ld l, c                                       ; $4F02: $69
    ld h, c                                       ; $4F03: $61
    rst $38                                       ; $4F04: $FF
    ld l, h                                       ; $4F05: $6C
    ld h, c                                       ; $4F06: $61

jr_01D_4F07:
    ld [hl], h                                    ; $4F07: $74
    ld h, l                                       ; $4F08: $65
    ld [hl], d                                    ; $4F09: $72
    ld l, $FE                                     ; $4F0A: $2E $FE
    ld d, a                                       ; $4F0C: $57
    ld l, b                                       ; $4F0D: $68
    ld h, c                                       ; $4F0E: $61

jr_01D_4F0F:
    ld [hl], h                                    ; $4F0F: $74
    jr nz, jr_01D_4F5B                            ; $4F10: $20 $49

jr_01D_4F12:
    jr nz, jr_01D_4F82                            ; $4F12: $20 $6E

    ld h, l                                       ; $4F14: $65
    ld h, l                                       ; $4F15: $65

jr_01D_4F16:
    ld h, h                                       ; $4F16: $64
    rst $38                                       ; $4F17: $FF
    ld [hl], h                                    ; $4F18: $74
    ld l, a                                       ; $4F19: $6F
    jr nz, jr_01D_4F80                            ; $4F1A: $20 $64

    ld l, a                                       ; $4F1C: $6F
    jr nz, jr_01D_4F91                            ; $4F1D: $20 $72

    ld l, c                                       ; $4F1F: $69
    ld h, a                                       ; $4F20: $67
    ld l, b                                       ; $4F21: $68
    ld [hl], h                                    ; $4F22: $74
    jr nz, jr_01D_4F93                            ; $4F23: $20 $6E

    ld l, a                                       ; $4F25: $6F
    ld [hl], a                                    ; $4F26: $77
    cp $69                                        ; $4F27: $FE $69
    ld [hl], e                                    ; $4F29: $73
    jr nz, jr_01D_4F9F                            ; $4F2A: $20 $73

    ld [hl], h                                    ; $4F2C: $74
    ld l, a                                       ; $4F2D: $6F
    ld [hl], b                                    ; $4F2E: $70
    jr nz, jr_01D_4FA5                            ; $4F2F: $20 $74

    ld l, b                                       ; $4F31: $68
    ld h, c                                       ; $4F32: $61
    ld [hl], h                                    ; $4F33: $74
    cp $41                                        ; $4F34: $FE $41
    ld [hl], d                                    ; $4F36: $72
    ld h, h                                       ; $4F37: $64
    ld h, l                                       ; $4F38: $65
    ld [hl], d                                    ; $4F39: $72
    ld l, c                                       ; $4F3A: $69
    ld h, c                                       ; $4F3B: $61
    ld l, h                                       ; $4F3C: $6C

jr_01D_4F3D:
    jr nz, jr_01D_4F92                            ; $4F3D: $20 $53

    ld l, b                                       ; $4F3F: $68

Jump_01D_4F40:
    ld h, c                                       ; $4F40: $61

jr_01D_4F41:
    ld h, h                                       ; $4F41: $64
    ld l, a                                       ; $4F42: $6F
    ld [hl], a                                    ; $4F43: $77

jr_01D_4F44:
    rst $38                                       ; $4F44: $FF
    ld b, a                                       ; $4F45: $47
    ld h, l                                       ; $4F46: $65
    ld a, c                                       ; $4F47: $79
    ld [hl], e                                    ; $4F48: $73

jr_01D_4F49:
    ld h, l                                       ; $4F49: $65
    ld [hl], d                                    ; $4F4A: $72
    ld l, $FE                                     ; $4F4B: $2E $FE
    db $FD                                        ; $4F4D: $FD
    sbc d                                         ; $4F4E: $9A
    ld e, b                                       ; $4F4F: $58
    dec b                                         ; $4F50: $05
    ld b, d                                       ; $4F51: $42

jr_01D_4F52:
    sub e                                         ; $4F52: $93
    ld h, [hl]                                    ; $4F53: $66
    ret nz                                        ; $4F54: $C0

    ld e, h                                       ; $4F55: $5C
    ld hl, $1165                                  ; $4F56: $21 $65 $11
    ld c, l                                       ; $4F59: $4D
    ld c, a                                       ; $4F5A: $4F

jr_01D_4F5B:
    ld h, h                                       ; $4F5B: $64
    or d                                          ; $4F5C: $B2

jr_01D_4F5D:
    ld d, b                                       ; $4F5D: $50
    ld l, c                                       ; $4F5E: $69
    cp a                                          ; $4F5F: $BF
    ld d, b                                       ; $4F60: $50
    dec b                                         ; $4F61: $05
    nop                                           ; $4F62: $00
    ld l, e                                       ; $4F63: $6B
    ld c, d                                       ; $4F64: $4A
    dec de                                        ; $4F65: $1B
    dec de                                        ; $4F66: $1B
    ld d, e                                       ; $4F67: $53
    call nc, $2000                                ; $4F68: $D4 $00 $20
    xor e                                         ; $4F6B: $AB
    ld d, b                                       ; $4F6C: $50
    ld [hl+], a                                   ; $4F6D: $22
    inc b                                         ; $4F6E: $04
    ld b, b                                       ; $4F6F: $40
    dec b                                         ; $4F70: $05

jr_01D_4F71:
    ld [bc], a                                    ; $4F71: $02
    db $ED                                        ; $4F72: $ED
    ld h, e                                       ; $4F73: $63
    dec de                                        ; $4F74: $1B
    add hl, de                                    ; $4F75: $19
    inc bc                                        ; $4F76: $03
    call nc, $0E00                                ; $4F77: $D4 $00 $0E
    ld a, [$1D53]                                 ; $4F7A: $FA $53 $1D
    rst $28                                       ; $4F7D: $EF
    ld b, h                                       ; $4F7E: $44
    dec bc                                        ; $4F7F: $0B

jr_01D_4F80:
    nop                                           ; $4F80: $00
    dec bc                                        ; $4F81: $0B

jr_01D_4F82:
    ld [bc], a                                    ; $4F82: $02
    ld l, e                                       ; $4F83: $6B
    ld a, [hl+]                                   ; $4F84: $2A
    ld a, [bc]                                    ; $4F85: $0A
    or b                                          ; $4F86: $B0
    ld c, b                                       ; $4F87: $48
    nop                                           ; $4F88: $00
    add b                                         ; $4F89: $80
    nop                                           ; $4F8A: $00
    add d                                         ; $4F8B: $82
    rra                                           ; $4F8C: $1F
    ld a, [de]                                    ; $4F8D: $1A
    ld l, a                                       ; $4F8E: $6F
    rrca                                          ; $4F8F: $0F
    rst $38                                       ; $4F90: $FF

jr_01D_4F91:
    ld a, a                                       ; $4F91: $7F

jr_01D_4F92:
    sub h                                         ; $4F92: $94

jr_01D_4F93:
    ld b, b                                       ; $4F93: $40
    jr nz, jr_01D_500C                            ; $4F94: $20 $76

    and b                                         ; $4F96: $A0
    rrca                                          ; $4F97: $0F

jr_01D_4F98:
    ld e, e                                       ; $4F98: $5B
    dec e                                         ; $4F99: $1D
    sbc l                                         ; $4F9A: $9D
    ld c, a                                       ; $4F9B: $4F
    ld b, d                                       ; $4F9C: $42
    sbc e                                         ; $4F9D: $9B
    ld c, b                                       ; $4F9E: $48

jr_01D_4F9F:
    ld b, [hl]                                    ; $4F9F: $46
    sbc a                                         ; $4FA0: $9F
    ld d, e                                       ; $4FA1: $53
    ld l, a                                       ; $4FA2: $6F
    jr nz, jr_01D_5019                            ; $4FA3: $20 $74

jr_01D_4FA5:
    ld l, b                                       ; $4FA5: $68
    ld h, c                                       ; $4FA6: $61
    ld [hl], h                                    ; $4FA7: $74
    daa                                           ; $4FA8: $27
    ld [hl], e                                    ; $4FA9: $73
    rst $38                                       ; $4FAA: $FF
    ld [hl], a                                    ; $4FAB: $77
    ld l, b                                       ; $4FAC: $68
    ld h, l                                       ; $4FAD: $65
    ld [hl], d                                    ; $4FAE: $72
    ld h, l                                       ; $4FAF: $65
    jr nz, jr_01D_5025                            ; $4FB0: $20 $73

    ld l, a                                       ; $4FB2: $6F
    ld h, c                                       ; $4FB3: $61
    ld [hl], b                                    ; $4FB4: $70
    cp $63                                        ; $4FB5: $FE $63
    ld l, a                                       ; $4FB7: $6F
    ld l, l                                       ; $4FB8: $6D
    ld h, l                                       ; $4FB9: $65
    ld [hl], e                                    ; $4FBA: $73
    jr nz, jr_01D_5023                            ; $4FBB: $20 $66

    ld [hl], d                                    ; $4FBD: $72
    ld l, a                                       ; $4FBE: $6F
    ld l, l                                       ; $4FBF: $6D
    ld hl, $49FF                                  ; $4FC0: $21 $FF $49
    daa                                           ; $4FC3: $27
    halt                                          ; $4FC4: $76
    ld h, l                                       ; $4FC5: $65
    jr nz, jr_01D_5029                            ; $4FC6: $20 $61

    ld l, h                                       ; $4FC8: $6C
    ld [hl], a                                    ; $4FC9: $77
    ld h, c                                       ; $4FCA: $61
    ld a, c                                       ; $4FCB: $79
    ld [hl], e                                    ; $4FCC: $73
    cp $77                                        ; $4FCD: $FE $77
    ld l, a                                       ; $4FCF: $6F
    ld l, [hl]                                    ; $4FD0: $6E
    ld h, h                                       ; $4FD1: $64
    ld h, l                                       ; $4FD2: $65
    ld [hl], d                                    ; $4FD3: $72
    ld h, l                                       ; $4FD4: $65
    ld h, h                                       ; $4FD5: $64
    jr nz, jr_01D_5039                            ; $4FD6: $20 $61

    ld h, d                                       ; $4FD8: $62
    ld l, a                                       ; $4FD9: $6F
    ld [hl], l                                    ; $4FDA: $75
    ld [hl], h                                    ; $4FDB: $74
    rst $38                                       ; $4FDC: $FF
    ld [hl], h                                    ; $4FDD: $74
    ld l, b                                       ; $4FDE: $68
    ld h, c                                       ; $4FDF: $61
    ld [hl], h                                    ; $4FE0: $74
    ld l, $FE                                     ; $4FE1: $2E $FE
    db $FD                                        ; $4FE3: $FD
    sbc d                                         ; $4FE4: $9A
    rlca                                          ; $4FE5: $07
    nop                                           ; $4FE6: $00
    add c                                         ; $4FE7: $81
    ld e, l                                       ; $4FE8: $5D
    add hl, bc                                    ; $4FE9: $09
    nop                                           ; $4FEA: $00
    jr nz, jr_01D_4F98                            ; $4FEB: $20 $AB

    ld d, b                                       ; $4FED: $50
    ld b, d                                       ; $4FEE: $42
    sub e                                         ; $4FEF: $93
    ld h, l                                       ; $4FF0: $65
    ld de, $4F4D                                  ; $4FF1: $11 $4D $4F
    ld h, [hl]                                    ; $4FF4: $66
    ret nz                                        ; $4FF5: $C0

    ld e, h                                       ; $4FF6: $5C
    ld hl, $B264                                  ; $4FF7: $21 $64 $B2
    ld d, b                                       ; $4FFA: $50
    ld l, c                                       ; $4FFB: $69
    cp a                                          ; $4FFC: $BF
    ld d, b                                       ; $4FFD: $50
    dec b                                         ; $4FFE: $05
    nop                                           ; $4FFF: $00
    ld l, e                                       ; $5000: $6B
    ld c, d                                       ; $5001: $4A
    ld a, [de]                                    ; $5002: $1A
    ld de, $D2C2                                  ; $5003: $11 $C2 $D2
    nop                                           ; $5006: $00
    dec e                                         ; $5007: $1D
    ld c, b                                       ; $5008: $48
    ld d, b                                       ; $5009: $50
    ld [hl+], a                                   ; $500A: $22
    dec b                                         ; $500B: $05

jr_01D_500C:
    ld b, b                                       ; $500C: $40
    dec b                                         ; $500D: $05
    ld [bc], a                                    ; $500E: $02
    ld l, e                                       ; $500F: $6B
    ld c, d                                       ; $5010: $4A
    rla                                           ; $5011: $17
    dec d                                         ; $5012: $15
    ld e, a                                       ; $5013: $5F
    db $D3                                        ; $5014: $D3
    add hl, hl                                    ; $5015: $29
    dec e                                         ; $5016: $1D
    or h                                          ; $5017: $B4
    ld d, c                                       ; $5018: $51

jr_01D_5019:
    ld [hl+], a                                   ; $5019: $22
    dec b                                         ; $501A: $05
    ld b, b                                       ; $501B: $40
    ld l, e                                       ; $501C: $6B
    add hl, hl                                    ; $501D: $29
    dec bc                                        ; $501E: $0B
    ld h, b                                       ; $501F: $60
    ld l, a                                       ; $5020: $6F
    nop                                           ; $5021: $00
    add b                                         ; $5022: $80

jr_01D_5023:
    nop                                           ; $5023: $00
    ld l, e                                       ; $5024: $6B

jr_01D_5025:
    ld [hl+], a                                   ; $5025: $22
    ld a, [bc]                                    ; $5026: $0A
    ldh a, [$4E]                                  ; $5027: $F0 $4E

jr_01D_5029:
    sub b                                         ; $5029: $90
    add d                                         ; $502A: $82
    nop                                           ; $502B: $00
    dec bc                                        ; $502C: $0B
    nop                                           ; $502D: $00
    add d                                         ; $502E: $82
    sub h                                         ; $502F: $94
    ld e, d                                       ; $5030: $5A
    dec e                                         ; $5031: $1D
    jp nc, Jump_01D_4051                          ; $5032: $D2 $51 $40

    add b                                         ; $5035: $80
    ld e, d                                       ; $5036: $5A
    dec hl                                        ; $5037: $2B
    ld h, b                                       ; $5038: $60

jr_01D_5039:
    ld h, c                                       ; $5039: $61
    ld h, b                                       ; $503A: $60
    ld bc, $0F6E                                  ; $503B: $01 $6E $0F
    rst $38                                       ; $503E: $FF
    ld a, a                                       ; $503F: $7F
    halt                                          ; $5040: $76
    and b                                         ; $5041: $A0
    rrca                                          ; $5042: $0F
    ld b, l                                       ; $5043: $45
    rra                                           ; $5044: $1F
    ld a, [bc]                                    ; $5045: $0A
    ld e, c                                       ; $5046: $59
    ld b, d                                       ; $5047: $42
    dec d                                         ; $5048: $15
    rrca                                          ; $5049: $0F
    or h                                          ; $504A: $B4
    ld [hl], e                                    ; $504B: $73
    ld b, b                                       ; $504C: $40
    rrca                                          ; $504D: $0F
    ld b, h                                       ; $504E: $44
    ld [hl], e                                    ; $504F: $73
    db $10                                        ; $5050: $10
    rrca                                          ; $5051: $0F
    or h                                          ; $5052: $B4
    ld [hl], e                                    ; $5053: $73
    jr nz, @+$11                                  ; $5054: $20 $0F

    call c, $2073                                 ; $5056: $DC $73 $20
    rrca                                          ; $5059: $0F
    or h                                          ; $505A: $B4
    ld [hl], e                                    ; $505B: $73
    jr nz, jr_01D_506D                            ; $505C: $20 $0F

    call c, $2073                                 ; $505E: $DC $73 $20
    rrca                                          ; $5061: $0F
    or h                                          ; $5062: $B4
    ld [hl], e                                    ; $5063: $73
    jr nz, @+$11                                  ; $5064: $20 $0F

    call c, $2073                                 ; $5066: $DC $73 $20
    rrca                                          ; $5069: $0F
    or h                                          ; $506A: $B4
    ld [hl], e                                    ; $506B: $73
    ld b, b                                       ; $506C: $40

jr_01D_506D:
    rrca                                          ; $506D: $0F
    ld d, h                                       ; $506E: $54
    ld [hl], e                                    ; $506F: $73
    jr nz, @+$11                                  ; $5070: $20 $0F

    or h                                          ; $5072: $B4
    ld [hl], e                                    ; $5073: $73
    jr nz, @+$11                                  ; $5074: $20 $0F

    and $73                                       ; $5076: $E6 $73
    jr nz, @+$11                                  ; $5078: $20 $0F

    or h                                          ; $507A: $B4
    ld [hl], e                                    ; $507B: $73
    jr nz, jr_01D_508D                            ; $507C: $20 $0F

    and $73                                       ; $507E: $E6 $73
    jr nz, jr_01D_5091                            ; $5080: $20 $0F

    or h                                          ; $5082: $B4
    ld [hl], e                                    ; $5083: $73
    jr nz, jr_01D_5095                            ; $5084: $20 $0F

    and $73                                       ; $5086: $E6 $73
    jr nz, jr_01D_5099                            ; $5088: $20 $0F

    or h                                          ; $508A: $B4
    ld [hl], e                                    ; $508B: $73
    ld b, b                                       ; $508C: $40

jr_01D_508D:
    rrca                                          ; $508D: $0F
    ret z                                         ; $508E: $C8

    ld [hl], e                                    ; $508F: $73
    ld b, b                                       ; $5090: $40

jr_01D_5091:
    rrca                                          ; $5091: $0F
    or h                                          ; $5092: $B4
    ld [hl], e                                    ; $5093: $73
    ld b, b                                       ; $5094: $40

jr_01D_5095:
    rrca                                          ; $5095: $0F
    jp nc, Jump_01D_4073                          ; $5096: $D2 $73 $40

jr_01D_5099:
    rrca                                          ; $5099: $0F
    or h                                          ; $509A: $B4
    ld [hl], e                                    ; $509B: $73
    ld b, b                                       ; $509C: $40
    rrca                                          ; $509D: $0F
    call c, $1073                                 ; $509E: $DC $73 $10
    rrca                                          ; $50A1: $0F
    ret z                                         ; $50A2: $C8

    ld [hl], e                                    ; $50A3: $73
    ld [$F00F], sp                                ; $50A4: $08 $0F $F0
    ld [hl], e                                    ; $50A7: $73
    inc b                                         ; $50A8: $04
    rrca                                          ; $50A9: $0F
    cp [hl]                                       ; $50AA: $BE
    ld [hl], e                                    ; $50AB: $73
    jr nz, jr_01D_50AE                            ; $50AC: $20 $00

jr_01D_50AE:
    ld d, $0F                                     ; $50AE: $16 $0F
    ld b, h                                       ; $50B0: $44
    ld [hl], e                                    ; $50B1: $73
    stop                                          ; $50B2: $10 $00
    ld bc, $BE0F                                  ; $50B4: $01 $0F $BE
    ld [hl], e                                    ; $50B7: $73
    jr nz, jr_01D_50BA                            ; $50B8: $20 $00

jr_01D_50BA:
    nop                                           ; $50BA: $00
    rrca                                          ; $50BB: $0F
    add h                                         ; $50BC: $84
    ld [hl], e                                    ; $50BD: $73
    ld [$0200], sp                                ; $50BE: $08 $00 $02
    rrca                                          ; $50C1: $0F
    add h                                         ; $50C2: $84
    ld [hl], e                                    ; $50C3: $73
    ld [$0200], sp                                ; $50C4: $08 $00 $02
    rrca                                          ; $50C7: $0F
    add h                                         ; $50C8: $84
    ld [hl], e                                    ; $50C9: $73
    ld [$0200], sp                                ; $50CA: $08 $00 $02
    rrca                                          ; $50CD: $0F
    cp [hl]                                       ; $50CE: $BE
    ld [hl], e                                    ; $50CF: $73
    jr nz, jr_01D_50D2                            ; $50D0: $20 $00

jr_01D_50D2:
    nop                                           ; $50D2: $00
    rrca                                          ; $50D3: $0F
    ld d, h                                       ; $50D4: $54
    ld [hl], e                                    ; $50D5: $73
    db $10                                        ; $50D6: $10
    rst $38                                       ; $50D7: $FF
    nop                                           ; $50D8: $00
    rrca                                          ; $50D9: $0F
    or h                                          ; $50DA: $B4
    ld [hl], e                                    ; $50DB: $73
    stop                                          ; $50DC: $10 $00
    nop                                           ; $50DE: $00
    rrca                                          ; $50DF: $0F
    inc [hl]                                      ; $50E0: $34
    ld [hl], e                                    ; $50E1: $73
    ld [rRAMG], sp                                ; $50E2: $08 $00 $00
    nop                                           ; $50E5: $00
    dec bc                                        ; $50E6: $0B
    ld [bc], a                                    ; $50E7: $02
    add hl, de                                    ; $50E8: $19
    dec d                                         ; $50E9: $15
    rrca                                          ; $50EA: $0F
    add h                                         ; $50EB: $84
    ld [hl], e                                    ; $50EC: $73
    inc b                                         ; $50ED: $04
    rrca                                          ; $50EE: $0F
    and h                                         ; $50EF: $A4
    ld [hl], e                                    ; $50F0: $73
    db $10                                        ; $50F1: $10
    rrca                                          ; $50F2: $0F
    or h                                          ; $50F3: $B4
    ld [hl], e                                    ; $50F4: $73
    db $10                                        ; $50F5: $10
    rrca                                          ; $50F6: $0F
    ld [hl], h                                    ; $50F7: $74
    ld [hl], e                                    ; $50F8: $73
    ld [$B40F], sp                                ; $50F9: $08 $0F $B4
    ld [hl], e                                    ; $50FC: $73
    db $10                                        ; $50FD: $10
    rrca                                          ; $50FE: $0F
    ld [hl], h                                    ; $50FF: $74
    ld [hl], e                                    ; $5100: $73
    ld [$B40F], sp                                ; $5101: $08 $0F $B4
    ld [hl], e                                    ; $5104: $73
    db $10                                        ; $5105: $10
    rrca                                          ; $5106: $0F
    ld [hl], h                                    ; $5107: $74
    ld [hl], e                                    ; $5108: $73
    ld [$740F], sp                                ; $5109: $08 $0F $74
    ld [hl], e                                    ; $510C: $73
    ld [$B40F], sp                                ; $510D: $08 $0F $B4
    ld [hl], e                                    ; $5110: $73
    ld [$DC0F], sp                                ; $5111: $08 $0F $DC
    ld [hl], e                                    ; $5114: $73
    ld [$B40F], sp                                ; $5115: $08 $0F $B4
    ld [hl], e                                    ; $5118: $73
    ld [$E60F], sp                                ; $5119: $08 $0F $E6
    ld [hl], e                                    ; $511C: $73
    ld [$B40F], sp                                ; $511D: $08 $0F $B4
    ld [hl], e                                    ; $5120: $73
    ld [$DC0F], sp                                ; $5121: $08 $0F $DC
    ld [hl], e                                    ; $5124: $73
    ld [$B40F], sp                                ; $5125: $08 $0F $B4
    ld [hl], e                                    ; $5128: $73
    ld [$E60F], sp                                ; $5129: $08 $0F $E6
    ld [hl], e                                    ; $512C: $73
    ld [$B40F], sp                                ; $512D: $08 $0F $B4
    ld [hl], e                                    ; $5130: $73
    ld [$DC0F], sp                                ; $5131: $08 $0F $DC
    ld [hl], e                                    ; $5134: $73
    ld [$B40F], sp                                ; $5135: $08 $0F $B4
    ld [hl], e                                    ; $5138: $73
    ld [$E60F], sp                                ; $5139: $08 $0F $E6
    ld [hl], e                                    ; $513C: $73
    ld [$B40F], sp                                ; $513D: $08 $0F $B4
    ld [hl], e                                    ; $5140: $73
    ld [$DC0F], sp                                ; $5141: $08 $0F $DC
    ld [hl], e                                    ; $5144: $73
    ld [$B40F], sp                                ; $5145: $08 $0F $B4
    ld [hl], e                                    ; $5148: $73
    ld [$E60F], sp                                ; $5149: $08 $0F $E6
    ld [hl], e                                    ; $514C: $73
    ld [$B40F], sp                                ; $514D: $08 $0F $B4
    ld [hl], e                                    ; $5150: $73
    ld [$DC0F], sp                                ; $5151: $08 $0F $DC
    ld [hl], e                                    ; $5154: $73
    ld [$B40F], sp                                ; $5155: $08 $0F $B4
    ld [hl], e                                    ; $5158: $73
    ld [$E60F], sp                                ; $5159: $08 $0F $E6
    ld [hl], e                                    ; $515C: $73
    ld [$B40F], sp                                ; $515D: $08 $0F $B4
    ld [hl], e                                    ; $5160: $73
    ld [$DC0F], sp                                ; $5161: $08 $0F $DC
    ld [hl], e                                    ; $5164: $73
    ld [$B40F], sp                                ; $5165: $08 $0F $B4
    ld [hl], e                                    ; $5168: $73
    ld [$E60F], sp                                ; $5169: $08 $0F $E6
    ld [hl], e                                    ; $516C: $73
    ld [$5600], sp                                ; $516D: $08 $00 $56
    ld bc, $0F15                                  ; $5170: $01 $15 $0F
    or h                                          ; $5173: $B4
    ld [hl], e                                    ; $5174: $73
    ld [$DC0F], sp                                ; $5175: $08 $0F $DC
    ld [hl], e                                    ; $5178: $73
    ld [$B40F], sp                                ; $5179: $08 $0F $B4
    ld [hl], e                                    ; $517C: $73
    ld [$E60F], sp                                ; $517D: $08 $0F $E6
    ld [hl], e                                    ; $5180: $73
    ld [$B40F], sp                                ; $5181: $08 $0F $B4
    ld [hl], e                                    ; $5184: $73
    ld [$DC0F], sp                                ; $5185: $08 $0F $DC
    ld [hl], e                                    ; $5188: $73
    ld [$B40F], sp                                ; $5189: $08 $0F $B4
    ld [hl], e                                    ; $518C: $73
    ld [$E60F], sp                                ; $518D: $08 $0F $E6
    ld [hl], e                                    ; $5190: $73
    ld [$B40F], sp                                ; $5191: $08 $0F $B4
    ld [hl], e                                    ; $5194: $73
    ld [$DC0F], sp                                ; $5195: $08 $0F $DC
    ld [hl], e                                    ; $5198: $73
    ld [$B40F], sp                                ; $5199: $08 $0F $B4
    ld [hl], e                                    ; $519C: $73
    ld [$E60F], sp                                ; $519D: $08 $0F $E6
    ld [hl], e                                    ; $51A0: $73
    ld [$B40F], sp                                ; $51A1: $08 $0F $B4
    ld [hl], e                                    ; $51A4: $73
    ld [$DC0F], sp                                ; $51A5: $08 $0F $DC
    ld [hl], e                                    ; $51A8: $73
    ld [$B40F], sp                                ; $51A9: $08 $0F $B4
    ld [hl], e                                    ; $51AC: $73
    ld [$E60F], sp                                ; $51AD: $08 $0F $E6
    ld [hl], e                                    ; $51B0: $73
    ld [$4200], sp                                ; $51B1: $08 $00 $42
    ld b, b                                       ; $51B4: $40
    add b                                         ; $51B5: $80
    dec bc                                        ; $51B6: $0B
    nop                                           ; $51B7: $00
    ld b, b                                       ; $51B8: $40
    inc b                                         ; $51B9: $04
    dec d                                         ; $51BA: $15
    ld c, $9F                                     ; $51BB: $0E $9F
    ld h, b                                       ; $51BD: $60
    ld [$ED0E], sp                                ; $51BE: $08 $0E $ED
    ld h, b                                       ; $51C1: $60
    db $10                                        ; $51C2: $10
    ld c, $5F                                     ; $51C3: $0E $5F
    ld h, b                                       ; $51C5: $60
    db $10                                        ; $51C6: $10
    ld c, $01                                     ; $51C7: $0E $01
    ld h, c                                       ; $51C9: $61
    ld h, b                                       ; $51CA: $60
    ld c, $4F                                     ; $51CB: $0E $4F
    ld h, b                                       ; $51CD: $60
    jr nz, jr_01D_51D0                            ; $51CE: $20 $00

jr_01D_51D0:
    add hl, de                                    ; $51D0: $19
    ld b, d                                       ; $51D1: $42
    add e                                         ; $51D2: $83
    ld bc, $00FF                                  ; $51D3: $01 $FF $00
    inc bc                                        ; $51D6: $03
    nop                                           ; $51D7: $00
    nop                                           ; $51D8: $00
    nop                                           ; $51D9: $00
    ld b, l                                       ; $51DA: $45
    dec e                                         ; $51DB: $1D
    jp nc, $9351                                  ; $51DC: $D2 $51 $93

    ld h, l                                       ; $51DF: $65
    ld de, $4F4D                                  ; $51E0: $11 $4D $4F
    ld h, [hl]                                    ; $51E3: $66
    ret nz                                        ; $51E4: $C0

    ld e, h                                       ; $51E5: $5C
    ld hl, $B264                                  ; $51E6: $21 $64 $B2
    ld d, b                                       ; $51E9: $50
    ld l, c                                       ; $51EA: $69
    cp a                                          ; $51EB: $BF
    ld d, b                                       ; $51EC: $50
    dec b                                         ; $51ED: $05
    nop                                           ; $51EE: $00
    ld l, e                                       ; $51EF: $6B
    ld c, d                                       ; $51F0: $4A
    dec d                                         ; $51F1: $15
    add hl, de                                    ; $51F2: $19
    db $FD                                        ; $51F3: $FD
    db $D3                                        ; $51F4: $D3
    nop                                           ; $51F5: $00
    dec e                                         ; $51F6: $1D
    ccf                                           ; $51F7: $3F
    ld d, d                                       ; $51F8: $52
    ld [hl+], a                                   ; $51F9: $22
    dec b                                         ; $51FA: $05
    ld b, b                                       ; $51FB: $40
    dec b                                         ; $51FC: $05
    ld [bc], a                                    ; $51FD: $02
    ld l, e                                       ; $51FE: $6B
    ld c, d                                       ; $51FF: $4A
    rla                                           ; $5200: $17
    inc e                                         ; $5201: $1C
    ld [hl], a                                    ; $5202: $77
    call nc, $1D44                                ; $5203: $D4 $44 $1D
    ld d, e                                       ; $5206: $53
    ld d, e                                       ; $5207: $53
    ld [hl+], a                                   ; $5208: $22
    dec b                                         ; $5209: $05
    ld b, b                                       ; $520A: $40
    ld l, e                                       ; $520B: $6B
    ld a, [hl+]                                   ; $520C: $2A
    ld a, [bc]                                    ; $520D: $0A
    or b                                          ; $520E: $B0
    ld c, b                                       ; $520F: $48
    nop                                           ; $5210: $00
    add b                                         ; $5211: $80
    nop                                           ; $5212: $00
    ld l, e                                       ; $5213: $6B
    inc d                                         ; $5214: $14
    ld a, [bc]                                    ; $5215: $0A
    ld [hl], b                                    ; $5216: $70
    ld c, e                                       ; $5217: $4B
    nop                                           ; $5218: $00
    add e                                         ; $5219: $83
    nop                                           ; $521A: $00
    ld l, e                                       ; $521B: $6B
    ld [hl+], a                                   ; $521C: $22
    ld a, [bc]                                    ; $521D: $0A
    ldh a, [$4E]                                  ; $521E: $F0 $4E
    ld b, b                                       ; $5220: $40
    add h                                         ; $5221: $84
    nop                                           ; $5222: $00
    dec bc                                        ; $5223: $0B
    nop                                           ; $5224: $00
    add d                                         ; $5225: $82
    sub h                                         ; $5226: $94
    ld h, b                                       ; $5227: $60
    ld [bc], a                                    ; $5228: $02
    ld b, b                                       ; $5229: $40
    add b                                         ; $522A: $80
    dec bc                                        ; $522B: $0B
    nop                                           ; $522C: $00
    ld b, b                                       ; $522D: $40
    ld [$020B], sp                                ; $522E: $08 $0B $02
    ld h, b                                       ; $5231: $60
    ld bc, $0F6E                                  ; $5232: $01 $6E $0F
    rst $38                                       ; $5235: $FF
    ld a, a                                       ; $5236: $7F
    halt                                          ; $5237: $76
    and b                                         ; $5238: $A0
    rrca                                          ; $5239: $0F
    ld b, l                                       ; $523A: $45
    rra                                           ; $523B: $1F
    ld a, [bc]                                    ; $523C: $0A
    ld e, c                                       ; $523D: $59
    ld b, d                                       ; $523E: $42
    dec d                                         ; $523F: $15
    ld c, $BD                                     ; $5240: $0E $BD
    ld d, h                                       ; $5242: $54
    ret nz                                        ; $5243: $C0

    ld c, $2C                                     ; $5244: $0E $2C
    ld d, h                                       ; $5246: $54
    ld b, b                                       ; $5247: $40
    ld c, $FA                                     ; $5248: $0E $FA
    ld d, e                                       ; $524A: $53
    ld [$360E], sp                                ; $524B: $08 $0E $36
    ld d, h                                       ; $524E: $54
    ld [$0E0E], sp                                ; $524F: $08 $0E $0E
    ld d, h                                       ; $5252: $54
    jr nz, jr_01D_5255                            ; $5253: $20 $00

jr_01D_5255:
    ld d, $0E                                     ; $5255: $16 $0E
    and b                                         ; $5257: $A0
    ld d, e                                       ; $5258: $53
    jr nc, jr_01D_525C                            ; $5259: $30 $01

    nop                                           ; $525B: $00

jr_01D_525C:
    nop                                           ; $525C: $00
    dec d                                         ; $525D: $15
    ld c, $0E                                     ; $525E: $0E $0E
    ld d, h                                       ; $5260: $54
    ld b, b                                       ; $5261: $40
    ld c, $80                                     ; $5262: $0E $80
    ld d, e                                       ; $5264: $53
    db $10                                        ; $5265: $10
    ld c, $A0                                     ; $5266: $0E $A0
    ld d, e                                       ; $5268: $53
    jr nz, jr_01D_5279                            ; $5269: $20 $0E

    ldh a, [rHDMA3]                               ; $526B: $F0 $53
    ld b, b                                       ; $526D: $40
    ld c, $18                                     ; $526E: $0E $18
    ld d, h                                       ; $5270: $54
    jr nz, jr_01D_5281                            ; $5271: $20 $0E

    and b                                         ; $5273: $A0
    ld d, e                                       ; $5274: $53
    db $10                                        ; $5275: $10
    ld c, $70                                     ; $5276: $0E $70
    ld d, e                                       ; $5278: $53

jr_01D_5279:
    jr nz, jr_01D_5289                            ; $5279: $20 $0E

    inc b                                         ; $527B: $04
    ld d, h                                       ; $527C: $54
    jr nz, jr_01D_528D                            ; $527D: $20 $0E

    jr jr_01D_52D5                                ; $527F: $18 $54

jr_01D_5281:
    inc b                                         ; $5281: $04
    ld c, $F0                                     ; $5282: $0E $F0
    ld d, e                                       ; $5284: $53
    ld b, b                                       ; $5285: $40
    ld c, $A0                                     ; $5286: $0E $A0
    ld d, e                                       ; $5288: $53

jr_01D_5289:
    stop                                          ; $5289: $10 $00
    ld d, $0E                                     ; $528B: $16 $0E

jr_01D_528D:
    ld [hl], b                                    ; $528D: $70
    ld d, e                                       ; $528E: $53
    ld [hl+], a                                   ; $528F: $22
    nop                                           ; $5290: $00
    rst $38                                       ; $5291: $FF
    ld c, $90                                     ; $5292: $0E $90
    ld d, e                                       ; $5294: $53
    jr nc, jr_01D_5297                            ; $5295: $30 $00

jr_01D_5297:
    nop                                           ; $5297: $00
    ld c, $F0                                     ; $5298: $0E $F0
    ld d, e                                       ; $529A: $53
    jr nz, jr_01D_529D                            ; $529B: $20 $00

jr_01D_529D:
    nop                                           ; $529D: $00
    ld c, $70                                     ; $529E: $0E $70
    ld d, e                                       ; $52A0: $53
    ld c, $00                                     ; $52A1: $0E $00
    rst $38                                       ; $52A3: $FF
    ld c, $F0                                     ; $52A4: $0E $F0
    ld d, e                                       ; $52A6: $53
    jr nz, jr_01D_52A9                            ; $52A7: $20 $00

jr_01D_52A9:
    nop                                           ; $52A9: $00
    ld c, $70                                     ; $52AA: $0E $70
    ld d, e                                       ; $52AC: $53
    stop                                          ; $52AD: $10 $00
    rst $38                                       ; $52AF: $FF
    ld c, $F0                                     ; $52B0: $0E $F0
    ld d, e                                       ; $52B2: $53
    jr nz, jr_01D_52B5                            ; $52B3: $20 $00

jr_01D_52B5:
    nop                                           ; $52B5: $00
    ld c, $70                                     ; $52B6: $0E $70
    ld d, e                                       ; $52B8: $53
    stop                                          ; $52B9: $10 $00
    rst $38                                       ; $52BB: $FF
    ld c, $F0                                     ; $52BC: $0E $F0
    ld d, e                                       ; $52BE: $53
    jr nz, jr_01D_52C1                            ; $52BF: $20 $00

jr_01D_52C1:
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    dec d                                         ; $52C3: $15
    ld c, $70                                     ; $52C4: $0E $70
    ld d, e                                       ; $52C6: $53
    jr nz, jr_01D_52D7                            ; $52C7: $20 $0E

    ldh a, [rHDMA3]                               ; $52C9: $F0 $53
    jr nz, jr_01D_52DB                            ; $52CB: $20 $0E

    jr jr_01D_5323                                ; $52CD: $18 $54

    jr nz, jr_01D_52DF                            ; $52CF: $20 $0E

    ldh a, [rHDMA3]                               ; $52D1: $F0 $53
    jr nz, jr_01D_52E3                            ; $52D3: $20 $0E

jr_01D_52D5:
    jr @+$56                                      ; $52D5: $18 $54

jr_01D_52D7:
    jr nz, jr_01D_52E7                            ; $52D7: $20 $0E

    ldh a, [rHDMA3]                               ; $52D9: $F0 $53

jr_01D_52DB:
    jr nz, jr_01D_52EB                            ; $52DB: $20 $0E

    jr jr_01D_5333                                ; $52DD: $18 $54

jr_01D_52DF:
    jr nz, jr_01D_52EF                            ; $52DF: $20 $0E

    ldh a, [rHDMA3]                               ; $52E1: $F0 $53

jr_01D_52E3:
    ld b, b                                       ; $52E3: $40
    ld c, $04                                     ; $52E4: $0E $04
    ld d, h                                       ; $52E6: $54

jr_01D_52E7:
    ld b, b                                       ; $52E7: $40
    ld c, $90                                     ; $52E8: $0E $90
    ld d, e                                       ; $52EA: $53

jr_01D_52EB:
    jr nc, jr_01D_52FB                            ; $52EB: $30 $0E

    ldh a, [rHDMA3]                               ; $52ED: $F0 $53

jr_01D_52EF:
    jr nz, jr_01D_52FF                            ; $52EF: $20 $0E

    ld [hl+], a                                   ; $52F1: $22
    ld d, h                                       ; $52F2: $54
    jr nz, jr_01D_5303                            ; $52F3: $20 $0E

    ldh a, [rHDMA3]                               ; $52F5: $F0 $53
    jr nz, jr_01D_5307                            ; $52F7: $20 $0E

    ld [hl+], a                                   ; $52F9: $22
    ld d, h                                       ; $52FA: $54

jr_01D_52FB:
    jr nz, jr_01D_530B                            ; $52FB: $20 $0E

    ldh a, [rHDMA3]                               ; $52FD: $F0 $53

jr_01D_52FF:
    jr nz, jr_01D_530F                            ; $52FF: $20 $0E

    ld [hl+], a                                   ; $5301: $22
    ld d, h                                       ; $5302: $54

jr_01D_5303:
    jr nz, jr_01D_5313                            ; $5303: $20 $0E

    ldh a, [rHDMA3]                               ; $5305: $F0 $53

jr_01D_5307:
    ld b, b                                       ; $5307: $40
    ld c, $0E                                     ; $5308: $0E $0E
    ld d, h                                       ; $530A: $54

jr_01D_530B:
    ld b, b                                       ; $530B: $40
    ld c, $FA                                     ; $530C: $0E $FA
    ld d, e                                       ; $530E: $53

jr_01D_530F:
    jr nz, @+$10                                  ; $530F: $20 $0E

    add b                                         ; $5311: $80
    ld d, e                                       ; $5312: $53

jr_01D_5313:
    jr nz, jr_01D_5323                            ; $5313: $20 $0E

    ld a, [$1053]                                 ; $5315: $FA $53 $10
    nop                                           ; $5318: $00
    ld d, $0E                                     ; $5319: $16 $0E
    ret nz                                        ; $531B: $C0

    ld d, e                                       ; $531C: $53
    ld [$0200], sp                                ; $531D: $08 $00 $02
    ld c, $C0                                     ; $5320: $0E $C0
    ld d, e                                       ; $5322: $53

jr_01D_5323:
    ld [$0200], sp                                ; $5323: $08 $00 $02
    ld c, $C0                                     ; $5326: $0E $C0
    ld d, e                                       ; $5328: $53
    ld [$0200], sp                                ; $5329: $08 $00 $02
    nop                                           ; $532C: $00
    dec d                                         ; $532D: $15
    ld c, $FA                                     ; $532E: $0E $FA
    ld d, e                                       ; $5330: $53
    jr nz, jr_01D_5341                            ; $5331: $20 $0E

jr_01D_5333:
    ld c, $54                                     ; $5333: $0E $54
    jr nz, jr_01D_5345                            ; $5335: $20 $0E

    and b                                         ; $5337: $A0
    ld d, e                                       ; $5338: $53
    db $10                                        ; $5339: $10
    ld c, $70                                     ; $533A: $0E $70
    ld d, e                                       ; $533C: $53
    ld [$0B00], sp                                ; $533D: $08 $00 $0B
    ld [bc], a                                    ; $5340: $02

jr_01D_5341:
    add hl, de                                    ; $5341: $19
    dec d                                         ; $5342: $15
    ld c, $C0                                     ; $5343: $0E $C0

jr_01D_5345:
    ld d, e                                       ; $5345: $53
    jr jr_01D_5356                                ; $5346: $18 $0E

    ret nc                                        ; $5348: $D0

    ld d, e                                       ; $5349: $53
    db $10                                        ; $534A: $10
    ld c, $EA                                     ; $534B: $0E $EA
    ld d, h                                       ; $534D: $54
    call nz, Call_01D_5600                        ; $534E: $C4 $00 $56
    ld bc, $4042                                  ; $5351: $01 $42 $40
    add b                                         ; $5354: $80
    dec d                                         ; $5355: $15

jr_01D_5356:
    ld c, $4F                                     ; $5356: $0E $4F
    ld h, b                                       ; $5358: $60
    jr nc, jr_01D_5369                            ; $5359: $30 $0E

jr_01D_535B:
    rst $08                                       ; $535B: $CF
    ld h, b                                       ; $535C: $60
    ld b, b                                       ; $535D: $40
    ld c, $F7                                     ; $535E: $0E $F7
    ld h, b                                       ; $5360: $60
    ld b, b                                       ; $5361: $40
    ld c, $01                                     ; $5362: $0E $01
    ld h, c                                       ; $5364: $61
    ld b, b                                       ; $5365: $40
    ld c, $4F                                     ; $5366: $0E $4F
    ld h, b                                       ; $5368: $60

jr_01D_5369:
    ld b, b                                       ; $5369: $40
    nop                                           ; $536A: $00
    ld d, [hl]                                    ; $536B: $56
    ld [bc], a                                    ; $536C: $02
    add hl, de                                    ; $536D: $19
    dec d                                         ; $536E: $15
    ld c, $9F                                     ; $536F: $0E $9F
    ld h, b                                       ; $5371: $60
    ld [$D90E], sp                                ; $5372: $08 $0E $D9
    ld h, b                                       ; $5375: $60
    add b                                         ; $5376: $80
    ld c, $E3                                     ; $5377: $0E $E3
    ld h, b                                       ; $5379: $60
    db $10                                        ; $537A: $10
    ld c, $4F                                     ; $537B: $0E $4F
    ld h, b                                       ; $537D: $60
    stop                                          ; $537E: $10 $00
    add hl, de                                    ; $5380: $19
    ld b, d                                       ; $5381: $42
    ld b, e                                       ; $5382: $43
    nop                                           ; $5383: $00
    xor h                                         ; $5384: $AC
    and c                                         ; $5385: $A1
    ld bc, $C81D                                  ; $5386: $01 $1D $C8
    ld a, c                                       ; $5389: $79
    xor a                                         ; $538A: $AF
    xor h                                         ; $538B: $AC
    and c                                         ; $538C: $A1
    ld bc, $6593                                  ; $538D: $01 $93 $65
    cpl                                           ; $5390: $2F
    ld c, l                                       ; $5391: $4D
    ld c, a                                       ; $5392: $4F
    ld h, h                                       ; $5393: $64
    add sp, $50                                   ; $5394: $E8 $50
    ld l, c                                       ; $5396: $69
    ld a, [c]                                     ; $5397: $F2
    ld d, b                                       ; $5398: $50
    ld h, [hl]                                    ; $5399: $66
    ret nz                                        ; $539A: $C0

    ld e, h                                       ; $539B: $5C
    ld hl, $0005                                  ; $539C: $21 $05 $00
    ld l, e                                       ; $539F: $6B
    ld c, d                                       ; $53A0: $4A
    rlca                                          ; $53A1: $07
    dec bc                                        ; $53A2: $0B
    xor h                                         ; $53A3: $AC
    ret nc                                        ; $53A4: $D0

    nop                                           ; $53A5: $00
    dec e                                         ; $53A6: $1D
    db $E3                                        ; $53A7: $E3
    ld d, e                                       ; $53A8: $53
    ld [hl+], a                                   ; $53A9: $22
    dec b                                         ; $53AA: $05
    ld b, b                                       ; $53AB: $40
    dec b                                         ; $53AC: $05
    ld [bc], a                                    ; $53AD: $02
    db $ED                                        ; $53AE: $ED
    ld h, e                                       ; $53AF: $63
    ld [$4404], sp                                ; $53B0: $08 $04 $44
    ret nc                                        ; $53B3: $D0

    nop                                           ; $53B4: $00

jr_01D_53B5:
    dec e                                         ; $53B5: $1D
    ld e, $54                                     ; $53B6: $1E $54
    dec e                                         ; $53B8: $1D
    call c, $0576                                 ; $53B9: $DC $76 $05
    inc bc                                        ; $53BC: $03
    ld l, e                                       ; $53BD: $6B
    ld c, d                                       ; $53BE: $4A
    ld [$6206], sp                                ; $53BF: $08 $06 $62
    ret nc                                        ; $53C2: $D0

jr_01D_53C3:
    ld [hl+], a                                   ; $53C3: $22
    ld de, $76A3                                  ; $53C4: $11 $A3 $76
    ld [hl+], a                                   ; $53C7: $22
    dec b                                         ; $53C8: $05
    ld b, b                                       ; $53C9: $40
    ld l, e                                       ; $53CA: $6B
    ld [hl+], a                                   ; $53CB: $22
    ld a, [bc]                                    ; $53CC: $0A
    ldh a, [$4E]                                  ; $53CD: $F0 $4E
    nop                                           ; $53CF: $00
    add b                                         ; $53D0: $80
    nop                                           ; $53D1: $00
    ld l, e                                       ; $53D2: $6B
    inc b                                         ; $53D3: $04
    dec c                                         ; $53D4: $0D

jr_01D_53D5:
    ldh [$58], a                                  ; $53D5: $E0 $58
    jr nz, jr_01D_535B                            ; $53D7: $20 $82

    nop                                           ; $53D9: $00
    dec bc                                        ; $53DA: $0B

jr_01D_53DB:
    nop                                           ; $53DB: $00
    dec bc                                        ; $53DC: $0B
    ld [bc], a                                    ; $53DD: $02
    add d                                         ; $53DE: $82
    rra                                           ; $53DF: $1F
    ld a, [de]                                    ; $53E0: $1A
    sub h                                         ; $53E1: $94
    ld b, d                                       ; $53E2: $42
    ld d, $20                                     ; $53E3: $16 $20
    or e                                          ; $53E5: $B3
    ld c, a                                       ; $53E6: $4F
    jr nz, jr_01D_53E9                            ; $53E7: $20 $00

jr_01D_53E9:
    rst $38                                       ; $53E9: $FF
    nop                                           ; $53EA: $00
    dec d                                         ; $53EB: $15
    jr nz, jr_01D_53DB                            ; $53EC: $20 $ED

    ld c, a                                       ; $53EE: $4F
    jr nz, jr_01D_5411                            ; $53EF: $20 $20

    or e                                          ; $53F1: $B3
    ld c, a                                       ; $53F2: $4F
    ld b, b                                       ; $53F3: $40
    jr nz, jr_01D_53B5                            ; $53F4: $20 $BF

    ld d, b                                       ; $53F6: $50
    nop                                           ; $53F7: $00
    nop                                           ; $53F8: $00
    ld d, [hl]                                    ; $53F9: $56
    ld bc, $1D5B                                  ; $53FA: $01 $5B $1D
    ld e, a                                       ; $53FD: $5F
    ld d, h                                       ; $53FE: $54
    ld h, d                                       ; $53FF: $62
    ld a, [bc]                                    ; $5400: $0A

jr_01D_5401:
    dec d                                         ; $5401: $15
    jr nz, jr_01D_53C3                            ; $5402: $20 $BF

    ld d, b                                       ; $5404: $50
    jr nz, jr_01D_5407                            ; $5405: $20 $00

jr_01D_5407:
    dec bc                                        ; $5407: $0B
    inc bc                                        ; $5408: $03
    ld b, b                                       ; $5409: $40
    jr @+$16                                      ; $540A: $18 $14

    jr nz, @-$17                                  ; $540C: $20 $E7

    ld d, b                                       ; $540E: $50
    ld h, d                                       ; $540F: $62
    dec bc                                        ; $5410: $0B

jr_01D_5411:
    inc c                                         ; $5411: $0C
    inc bc                                        ; $5412: $03
    dec d                                         ; $5413: $15
    jr nz, jr_01D_53D5                            ; $5414: $20 $BF

    ld d, b                                       ; $5416: $50
    ld b, b                                       ; $5417: $40
    jr nz, jr_01D_5401                            ; $5418: $20 $E7

    ld d, b                                       ; $541A: $50
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00
    ld b, d                                       ; $541D: $42
    inc d                                         ; $541E: $14
    ld c, $D9                                     ; $541F: $0E $D9
    ld h, b                                       ; $5421: $60
    ld h, b                                       ; $5422: $60
    ld bc, $0E14                                  ; $5423: $01 $14 $0E
    dec d                                         ; $5426: $15
    ld h, c                                       ; $5427: $61
    ld h, d                                       ; $5428: $62
    ld a, [bc]                                    ; $5429: $0A
    ld b, b                                       ; $542A: $40
    jr jr_01D_5441                                ; $542B: $18 $14

    ld c, $D9                                     ; $542D: $0E $D9
    ld h, b                                       ; $542F: $60
    ld h, d                                       ; $5430: $62
    inc c                                         ; $5431: $0C
    inc d                                         ; $5432: $14
    ld c, $15                                     ; $5433: $0E $15
    ld h, c                                       ; $5435: $61
    ld h, d                                       ; $5436: $62
    dec c                                         ; $5437: $0D
    dec d                                         ; $5438: $15
    ld c, $4F                                     ; $5439: $0E $4F
    ld h, b                                       ; $543B: $60
    ld [$CF0E], sp                                ; $543C: $08 $0E $CF
    ld h, b                                       ; $543F: $60
    ld d, b                                       ; $5440: $50

jr_01D_5441:
    ld c, $5F                                     ; $5441: $0E $5F
    ld h, b                                       ; $5443: $60
    ld [$150E], sp                                ; $5444: $08 $0E $15
    ld h, c                                       ; $5447: $61
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    ld h, d                                       ; $544A: $62
    ld c, $15                                     ; $544B: $0E $15
    ld c, $5F                                     ; $544D: $0E $5F
    ld h, b                                       ; $544F: $60
    ld [$ED0E], sp                                ; $5450: $08 $0E $ED
    ld h, b                                       ; $5453: $60
    jr nz, jr_01D_5464                            ; $5454: $20 $0E

    ld c, a                                       ; $5456: $4F
    ld h, b                                       ; $5457: $60
    ld [$150E], sp                                ; $5458: $08 $0E $15
    ld h, c                                       ; $545B: $61
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    ld b, d                                       ; $545E: $42
    xor h                                         ; $545F: $AC
    and h                                         ; $5460: $A4
    and e                                         ; $5461: $A3
    ld [bc], a                                    ; $5462: $02
    sbc e                                         ; $5463: $9B

jr_01D_5464:
    ld a, b                                       ; $5464: $78
    ld [hl], b                                    ; $5465: $70
    sbc a                                         ; $5466: $9F
    ld b, a                                       ; $5467: $47
    ld l, c                                       ; $5468: $69
    ld h, c                                       ; $5469: $61
    inc l                                         ; $546A: $2C
    jr nz, jr_01D_54D9                            ; $546B: $20 $6C

    ld l, a                                       ; $546D: $6F
    ld l, a                                       ; $546E: $6F
    ld l, e                                       ; $546F: $6B
    jr nz, jr_01D_54E9                            ; $5470: $20 $77

    ld l, b                                       ; $5472: $68
    ld h, c                                       ; $5473: $61
    ld [hl], h                                    ; $5474: $74
    rst $38                                       ; $5475: $FF
    ld c, c                                       ; $5476: $49
    jr nz, jr_01D_54DF                            ; $5477: $20 $66

    ld l, a                                       ; $5479: $6F
    ld [hl], l                                    ; $547A: $75
    ld l, [hl]                                    ; $547B: $6E
    ld h, h                                       ; $547C: $64
    jr nz, jr_01D_54E0                            ; $547D: $20 $61

    ld [hl], h                                    ; $547F: $74
    jr nz, @+$76                                  ; $5480: $20 $74

    ld l, b                                       ; $5482: $68
    ld h, l                                       ; $5483: $65
    cp $47                                        ; $5484: $FE $47
    ld h, l                                       ; $5486: $65
    ld a, c                                       ; $5487: $79
    ld [hl], e                                    ; $5488: $73
    ld h, l                                       ; $5489: $65
    ld [hl], d                                    ; $548A: $72
    ld l, $FE                                     ; $548B: $2E $FE
    db $FD                                        ; $548D: $FD
    ld b, b                                       ; $548E: $40
    jr nz, @-$63                                  ; $548F: $20 $9B

    ld hl, sp+$4A                                 ; $5491: $F8 $4A
    sbc a                                         ; $5493: $9F
    ld b, c                                       ; $5494: $41
    jr nz, @+$75                                  ; $5495: $20 $73

    ld [hl], h                                    ; $5497: $74
    ld l, a                                       ; $5498: $6F
    ld l, [hl]                                    ; $5499: $6E
    ld h, l                                       ; $549A: $65
    ccf                                           ; $549B: $3F
    jr nz, jr_01D_54F5                            ; $549C: $20 $57

    ld l, b                                       ; $549E: $68
    ld h, c                                       ; $549F: $61
    ld [hl], h                                    ; $54A0: $74
    rst $38                                       ; $54A1: $FF
    ld h, c                                       ; $54A2: $61
    ld l, [hl]                                    ; $54A3: $6E
    jr nz, jr_01D_551B                            ; $54A4: $20 $75

    ld l, [hl]                                    ; $54A6: $6E
    ld [hl], l                                    ; $54A7: $75
    ld [hl], e                                    ; $54A8: $73
    ld [hl], l                                    ; $54A9: $75
    ld h, c                                       ; $54AA: $61
    ld l, h                                       ; $54AB: $6C
    cp $73                                        ; $54AC: $FE $73
    ld l, b                                       ; $54AE: $68
    ld h, c                                       ; $54AF: $61
    ld [hl], b                                    ; $54B0: $70
    ld h, l                                       ; $54B1: $65
    ld l, $2E                                     ; $54B2: $2E $2E
    ld l, $20                                     ; $54B4: $2E $20
    ld [hl], h                                    ; $54B6: $74
    ld l, b                                       ; $54B7: $68
    ld l, c                                       ; $54B8: $69
    ld [hl], e                                    ; $54B9: $73
    rst $38                                       ; $54BA: $FF
    ld l, c                                       ; $54BB: $69
    ld [hl], e                                    ; $54BC: $73
    jr nz, jr_01D_5536                            ; $54BD: $20 $77

    ld l, b                                       ; $54BF: $68
    ld h, c                                       ; $54C0: $61
    ld [hl], h                                    ; $54C1: $74
    jr nz, jr_01D_552A                            ; $54C2: $20 $66

    ld l, a                                       ; $54C4: $6F
    ld [hl], d                                    ; $54C5: $72
    ld l, l                                       ; $54C6: $6D
    ld h, l                                       ; $54C7: $65
    ld h, h                                       ; $54C8: $64
    cp $74                                        ; $54C9: $FE $74
    ld l, b                                       ; $54CB: $68
    ld h, l                                       ; $54CC: $65
    jr nz, @+$49                                  ; $54CD: $20 $47

    ld h, l                                       ; $54CF: $65
    ld a, c                                       ; $54D0: $79
    ld [hl], e                                    ; $54D1: $73
    ld h, l                                       ; $54D2: $65
    ld [hl], d                                    ; $54D3: $72
    ccf                                           ; $54D4: $3F
    cp $FD                                        ; $54D5: $FE $FD
    sbc e                                         ; $54D7: $9B
    ld a, b                                       ; $54D8: $78

jr_01D_54D9:
    ld [hl], b                                    ; $54D9: $70
    sbc a                                         ; $54DA: $9F
    ld c, c                                       ; $54DB: $49
    jr nz, jr_01D_5545                            ; $54DC: $20 $67

    ld [hl], l                                    ; $54DE: $75

jr_01D_54DF:
    ld h, l                                       ; $54DF: $65

jr_01D_54E0:
    ld [hl], e                                    ; $54E0: $73
    ld [hl], e                                    ; $54E1: $73
    ld l, $20                                     ; $54E2: $2E $20
    ld d, h                                       ; $54E4: $54
    ld l, b                                       ; $54E5: $68
    ld h, l                                       ; $54E6: $65
    rst $38                                       ; $54E7: $FF
    ld h, a                                       ; $54E8: $67

jr_01D_54E9:
    ld h, l                                       ; $54E9: $65
    ld a, c                                       ; $54EA: $79
    ld [hl], e                                    ; $54EB: $73
    ld h, l                                       ; $54EC: $65
    ld [hl], d                                    ; $54ED: $72
    jr nz, jr_01D_5553                            ; $54EE: $20 $63

    ld l, h                                       ; $54F0: $6C
    ld l, a                                       ; $54F1: $6F
    ld [hl], e                                    ; $54F2: $73
    ld h, l                                       ; $54F3: $65
    ld h, h                                       ; $54F4: $64

jr_01D_54F5:
    cp $77                                        ; $54F5: $FE $77
    ld l, b                                       ; $54F7: $68
    ld h, l                                       ; $54F8: $65
    ld l, [hl]                                    ; $54F9: $6E
    jr nz, jr_01D_5545                            ; $54FA: $20 $49

    jr nz, jr_01D_5570                            ; $54FC: $20 $72

    ld h, l                                       ; $54FE: $65
    ld l, l                                       ; $54FF: $6D
    ld l, a                                       ; $5500: $6F
    halt                                          ; $5501: $76
    ld h, l                                       ; $5502: $65
    ld h, h                                       ; $5503: $64
    rst $38                                       ; $5504: $FF
    ld [hl], h                                    ; $5505: $74
    ld l, b                                       ; $5506: $68
    ld l, c                                       ; $5507: $69
    ld [hl], e                                    ; $5508: $73
    jr nz, @+$68                                  ; $5509: $20 $66

    ld [hl], d                                    ; $550B: $72
    ld l, a                                       ; $550C: $6F
    ld l, l                                       ; $550D: $6D
    jr nz, jr_01D_5579                            ; $550E: $20 $69

    ld [hl], h                                    ; $5510: $74
    ld l, $FE                                     ; $5511: $2E $FE
    db $FD                                        ; $5513: $FD
    sbc e                                         ; $5514: $9B
    ld hl, sp+$4A                                 ; $5515: $F8 $4A
    sbc a                                         ; $5517: $9F
    ld c, b                                       ; $5518: $48
    ld l, l                                       ; $5519: $6D
    ld l, l                                       ; $551A: $6D

jr_01D_551B:
    ld l, $2E                                     ; $551B: $2E $2E
    ld l, $20                                     ; $551D: $2E $20
    ld [hl], h                                    ; $551F: $74
    ld l, b                                       ; $5520: $68
    ld h, l                                       ; $5521: $65
    rst $38                                       ; $5522: $FF
    ld [hl], e                                    ; $5523: $73
    ld l, b                                       ; $5524: $68
    ld h, c                                       ; $5525: $61
    ld [hl], b                                    ; $5526: $70
    ld h, l                                       ; $5527: $65
    jr nz, jr_01D_5593                            ; $5528: $20 $69

jr_01D_552A:
    ld [hl], e                                    ; $552A: $73
    jr nz, @+$78                                  ; $552B: $20 $76

    ld h, l                                       ; $552D: $65
    ld [hl], d                                    ; $552E: $72
    ld a, c                                       ; $552F: $79
    cp $66                                        ; $5530: $FE $66
    ld h, c                                       ; $5532: $61
    ld l, l                                       ; $5533: $6D
    ld l, c                                       ; $5534: $69
    ld l, h                                       ; $5535: $6C

jr_01D_5536:
    ld l, c                                       ; $5536: $69
    ld h, c                                       ; $5537: $61
    ld [hl], d                                    ; $5538: $72
    ld l, $FF                                     ; $5539: $2E $FF
    ld c, e                                       ; $553B: $4B
    ld a, c                                       ; $553C: $79
    ld [hl], d                                    ; $553D: $72
    ld l, a                                       ; $553E: $6F
    ld [hl], e                                    ; $553F: $73
    inc l                                         ; $5540: $2C
    jr nz, @+$65                                  ; $5541: $20 $63

    ld l, a                                       ; $5543: $6F
    ld [hl], l                                    ; $5544: $75

jr_01D_5545:
    ld l, h                                       ; $5545: $6C
    ld h, h                                       ; $5546: $64
    cp $79                                        ; $5547: $FE $79
    ld l, a                                       ; $5549: $6F
    ld [hl], l                                    ; $554A: $75
    jr nz, jr_01D_55C0                            ; $554B: $20 $73

    ld l, b                                       ; $554D: $68
    ld l, a                                       ; $554E: $6F
    ld [hl], a                                    ; $554F: $77
    jr nz, jr_01D_55BF                            ; $5550: $20 $6D

    ld h, l                                       ; $5552: $65

jr_01D_5553:
    rst $38                                       ; $5553: $FF
    ld [hl], h                                    ; $5554: $74
    ld l, b                                       ; $5555: $68
    ld h, l                                       ; $5556: $65
    jr nz, jr_01D_559C                            ; $5557: $20 $43

    ld l, a                                       ; $5559: $6F
    ld [hl], d                                    ; $555A: $72
    ld h, l                                       ; $555B: $65
    jr nz, jr_01D_55A5                            ; $555C: $20 $47

    ld l, h                                       ; $555E: $6C
    ld a, c                                       ; $555F: $79
    ld [hl], b                                    ; $5560: $70
    ld l, b                                       ; $5561: $68
    cp $61                                        ; $5562: $FE $61
    ld h, a                                       ; $5564: $67
    ld h, c                                       ; $5565: $61
    ld l, c                                       ; $5566: $69
    ld l, [hl]                                    ; $5567: $6E
    ccf                                           ; $5568: $3F
    cp $FD                                        ; $5569: $FE $FD
    ld e, b                                       ; $556B: $58
    ld a, [bc]                                    ; $556C: $0A
    ld b, b                                       ; $556D: $40
    ld [hl], b                                    ; $556E: $70
    sbc e                                         ; $556F: $9B

jr_01D_5570:
    ld hl, sp+$4A                                 ; $5570: $F8 $4A
    sbc a                                         ; $5572: $9F
    ld b, c                                       ; $5573: $41
    ld l, b                                       ; $5574: $68
    ld h, c                                       ; $5575: $61
    ld hl, $5420                                  ; $5576: $21 $20 $54

jr_01D_5579:
    ld l, b                                       ; $5579: $68
    ld h, c                                       ; $557A: $61
    ld [hl], h                                    ; $557B: $74
    jr nz, @+$75                                  ; $557C: $20 $73

    ld l, h                                       ; $557E: $6C
    ld l, a                                       ; $557F: $6F
    ld [hl], h                                    ; $5580: $74
    rst $38                                       ; $5581: $FF
    ld l, c                                       ; $5582: $69
    ld [hl], e                                    ; $5583: $73
    jr nz, jr_01D_55FA                            ; $5584: $20 $74

    ld l, b                                       ; $5586: $68
    ld h, l                                       ; $5587: $65
    jr nz, jr_01D_55EF                            ; $5588: $20 $65

    ld a, b                                       ; $558A: $78
    ld h, c                                       ; $558B: $61
    ld h, e                                       ; $558C: $63
    ld [hl], h                                    ; $558D: $74
    cp $73                                        ; $558E: $FE $73
    ld h, c                                       ; $5590: $61
    ld l, l                                       ; $5591: $6D
    ld h, l                                       ; $5592: $65

jr_01D_5593:
    jr nz, jr_01D_5608                            ; $5593: $20 $73

    ld l, b                                       ; $5595: $68
    ld h, c                                       ; $5596: $61
    ld [hl], b                                    ; $5597: $70
    ld h, l                                       ; $5598: $65
    jr nz, jr_01D_55FC                            ; $5599: $20 $61

    ld l, [hl]                                    ; $559B: $6E

jr_01D_559C:
    ld h, h                                       ; $559C: $64
    rst $38                                       ; $559D: $FF
    ld [hl], e                                    ; $559E: $73
    ld l, c                                       ; $559F: $69
    ld a, d                                       ; $55A0: $7A
    ld h, l                                       ; $55A1: $65
    jr nz, jr_01D_5605                            ; $55A2: $20 $61

    ld [hl], e                                    ; $55A4: $73

jr_01D_55A5:
    jr nz, jr_01D_561B                            ; $55A5: $20 $74

    ld l, b                                       ; $55A7: $68
    ld l, c                                       ; $55A8: $69
    ld [hl], e                                    ; $55A9: $73
    cp $73                                        ; $55AA: $FE $73
    ld [hl], h                                    ; $55AC: $74
    ld l, a                                       ; $55AD: $6F
    ld l, [hl]                                    ; $55AE: $6E
    ld h, l                                       ; $55AF: $65
    ld hl, $4B20                                  ; $55B0: $21 $20 $4B
    ld a, c                                       ; $55B3: $79
    ld [hl], d                                    ; $55B4: $72
    ld l, a                                       ; $55B5: $6F
    ld [hl], e                                    ; $55B6: $73
    inc l                                         ; $55B7: $2C
    rst $38                                       ; $55B8: $FF
    ld [hl], b                                    ; $55B9: $70
    ld [hl], l                                    ; $55BA: $75
    ld [hl], h                                    ; $55BB: $74
    jr nz, jr_01D_5632                            ; $55BC: $20 $74

    ld l, b                                       ; $55BE: $68

jr_01D_55BF:
    ld h, l                                       ; $55BF: $65

jr_01D_55C0:
    jr nz, jr_01D_5635                            ; $55C0: $20 $73

    ld [hl], h                                    ; $55C2: $74
    ld l, a                                       ; $55C3: $6F
    ld l, [hl]                                    ; $55C4: $6E
    ld h, l                                       ; $55C5: $65
    cp $69                                        ; $55C6: $FE $69
    ld l, [hl]                                    ; $55C8: $6E
    ld [hl], h                                    ; $55C9: $74
    ld l, a                                       ; $55CA: $6F
    jr nz, jr_01D_5641                            ; $55CB: $20 $74

    ld l, b                                       ; $55CD: $68
    ld h, l                                       ; $55CE: $65
    jr nz, jr_01D_5618                            ; $55CF: $20 $47

    ld l, h                                       ; $55D1: $6C
    ld a, c                                       ; $55D2: $79
    ld [hl], b                                    ; $55D3: $70
    ld l, b                                       ; $55D4: $68
    ld l, $FE                                     ; $55D5: $2E $FE
    db $FD                                        ; $55D7: $FD
    ld e, b                                       ; $55D8: $58
    dec bc                                        ; $55D9: $0B
    ld b, b                                       ; $55DA: $40
    jr nc, @-$63                                  ; $55DB: $30 $9B

    ld hl, sp+$4A                                 ; $55DD: $F8 $4A
    sbc a                                         ; $55DF: $9F
    ld d, h                                       ; $55E0: $54
    ld l, b                                       ; $55E1: $68
    ld h, c                                       ; $55E2: $61
    ld [hl], h                                    ; $55E3: $74
    jr nz, jr_01D_5653                            ; $55E4: $20 $6D

    ld [hl], l                                    ; $55E6: $75
    ld [hl], e                                    ; $55E7: $73
    ld [hl], h                                    ; $55E8: $74
    jr nz, jr_01D_564D                            ; $55E9: $20 $62

    ld h, l                                       ; $55EB: $65
    rst $38                                       ; $55EC: $FF
    ld [hl], h                                    ; $55ED: $74
    ld l, b                                       ; $55EE: $68

jr_01D_55EF:
    ld h, l                                       ; $55EF: $65
    jr nz, jr_01D_565D                            ; $55F0: $20 $6B

    ld h, l                                       ; $55F2: $65
    ld a, c                                       ; $55F3: $79
    jr nz, jr_01D_566A                            ; $55F4: $20 $74

    ld l, a                                       ; $55F6: $6F
    cp $75                                        ; $55F7: $FE $75
    ld l, [hl]                                    ; $55F9: $6E

jr_01D_55FA:
    ld l, h                                       ; $55FA: $6C
    ld l, a                                       ; $55FB: $6F

jr_01D_55FC:
    ld h, e                                       ; $55FC: $63
    ld l, e                                       ; $55FD: $6B
    ld l, c                                       ; $55FE: $69
    ld l, [hl]                                    ; $55FF: $6E

Call_01D_5600:
    ld h, a                                       ; $5600: $67
    jr nz, @+$76                                  ; $5601: $20 $74

    ld l, b                                       ; $5603: $68
    ld h, l                                       ; $5604: $65

jr_01D_5605:
    rst $38                                       ; $5605: $FF
    ld b, e                                       ; $5606: $43
    ld l, a                                       ; $5607: $6F

jr_01D_5608:
    ld [hl], d                                    ; $5608: $72
    ld h, l                                       ; $5609: $65
    jr nz, jr_01D_5653                            ; $560A: $20 $47

    ld l, h                                       ; $560C: $6C
    ld a, c                                       ; $560D: $79
    ld [hl], b                                    ; $560E: $70
    ld l, b                                       ; $560F: $68
    daa                                           ; $5610: $27
    ld [hl], e                                    ; $5611: $73
    cp $70                                        ; $5612: $FE $70
    ld l, a                                       ; $5614: $6F
    ld [hl], a                                    ; $5615: $77
    ld h, l                                       ; $5616: $65
    ld [hl], d                                    ; $5617: $72

jr_01D_5618:
    ld hl, $FDFE                                  ; $5618: $21 $FE $FD

jr_01D_561B:
    sbc e                                         ; $561B: $9B
    ld a, b                                       ; $561C: $78
    ld [hl], b                                    ; $561D: $70
    sbc a                                         ; $561E: $9F
    ld b, d                                       ; $561F: $42
    ld [hl], l                                    ; $5620: $75
    ld [hl], h                                    ; $5621: $74
    jr nz, jr_01D_5698                            ; $5622: $20 $74

    ld l, b                                       ; $5624: $68
    ld h, l                                       ; $5625: $65
    ld [hl], d                                    ; $5626: $72
    ld h, l                                       ; $5627: $65
    jr nz, jr_01D_568B                            ; $5628: $20 $61

    ld [hl], d                                    ; $562A: $72
    ld h, l                                       ; $562B: $65
    rst $38                                       ; $562C: $FF
    ld [hl], h                                    ; $562D: $74
    ld l, b                                       ; $562E: $68
    ld [hl], d                                    ; $562F: $72
    ld h, l                                       ; $5630: $65
    ld h, l                                       ; $5631: $65

jr_01D_5632:
    jr nz, @+$6F                                  ; $5632: $20 $6D

    ld l, a                                       ; $5634: $6F

jr_01D_5635:
    ld [hl], d                                    ; $5635: $72
    ld h, l                                       ; $5636: $65
    cp $73                                        ; $5637: $FE $73
    ld l, h                                       ; $5639: $6C
    ld l, a                                       ; $563A: $6F
    ld [hl], h                                    ; $563B: $74
    ld [hl], e                                    ; $563C: $73
    ld l, $20                                     ; $563D: $2E $20
    ld d, a                                       ; $563F: $57
    ld l, b                                       ; $5640: $68

jr_01D_5641:
    ld h, l                                       ; $5641: $65
    ld [hl], d                                    ; $5642: $72
    ld h, l                                       ; $5643: $65
    jr nz, jr_01D_56AA                            ; $5644: $20 $64

    ld l, a                                       ; $5646: $6F
    rst $38                                       ; $5647: $FF
    ld c, c                                       ; $5648: $49
    jr nz, jr_01D_56B2                            ; $5649: $20 $67

    ld h, l                                       ; $564B: $65
    ld [hl], h                                    ; $564C: $74

jr_01D_564D:
    jr nz, jr_01D_56C3                            ; $564D: $20 $74

    ld l, b                                       ; $564F: $68
    ld h, l                                       ; $5650: $65
    jr nz, jr_01D_56C2                            ; $5651: $20 $6F

jr_01D_5653:
    ld [hl], h                                    ; $5653: $74
    ld l, b                                       ; $5654: $68
    ld h, l                                       ; $5655: $65
    ld [hl], d                                    ; $5656: $72
    cp $74                                        ; $5657: $FE $74
    ld l, b                                       ; $5659: $68
    ld [hl], d                                    ; $565A: $72
    ld h, l                                       ; $565B: $65
    ld h, l                                       ; $565C: $65

jr_01D_565D:
    jr nz, jr_01D_56D2                            ; $565D: $20 $73

    ld [hl], h                                    ; $565F: $74
    ld l, a                                       ; $5660: $6F
    ld l, [hl]                                    ; $5661: $6E
    ld h, l                                       ; $5662: $65
    ld [hl], e                                    ; $5663: $73
    ccf                                           ; $5664: $3F
    cp $FD                                        ; $5665: $FE $FD
    ld e, b                                       ; $5667: $58
    inc c                                         ; $5668: $0C
    sbc e                                         ; $5669: $9B

jr_01D_566A:
    ld hl, sp+$4A                                 ; $566A: $F8 $4A
    sbc a                                         ; $566C: $9F
    ld d, b                                       ; $566D: $50
    ld h, l                                       ; $566E: $65
    ld [hl], d                                    ; $566F: $72
    ld l, b                                       ; $5670: $68
    ld h, c                                       ; $5671: $61
    ld [hl], b                                    ; $5672: $70
    ld [hl], e                                    ; $5673: $73
    ld l, $2E                                     ; $5674: $2E $2E
    ld l, $20                                     ; $5676: $2E $20
    ld l, [hl]                                    ; $5678: $6E
    ld l, a                                       ; $5679: $6F
    ld [hl], a                                    ; $567A: $77
    rst $38                                       ; $567B: $FF
    ld [hl], h                                    ; $567C: $74
    ld l, b                                       ; $567D: $68
    ld h, c                                       ; $567E: $61
    ld [hl], h                                    ; $567F: $74
    jr nz, jr_01D_56CB                            ; $5680: $20 $49

    jr nz, jr_01D_56EF                            ; $5682: $20 $6B

    ld l, [hl]                                    ; $5684: $6E
    ld l, a                                       ; $5685: $6F
    ld [hl], a                                    ; $5686: $77
    cp $77                                        ; $5687: $FE $77
    ld l, b                                       ; $5689: $68
    ld h, c                                       ; $568A: $61

jr_01D_568B:
    ld [hl], h                                    ; $568B: $74
    jr nz, jr_01D_5705                            ; $568C: $20 $77

    ld h, l                                       ; $568E: $65
    jr nz, jr_01D_56F2                            ; $568F: $20 $61

    ld [hl], d                                    ; $5691: $72
    ld h, l                                       ; $5692: $65
    rst $38                                       ; $5693: $FF
    ld l, h                                       ; $5694: $6C
    ld l, a                                       ; $5695: $6F
    ld l, a                                       ; $5696: $6F
    ld l, e                                       ; $5697: $6B

jr_01D_5698:
    ld l, c                                       ; $5698: $69
    ld l, [hl]                                    ; $5699: $6E
    ld h, a                                       ; $569A: $67
    jr nz, jr_01D_5703                            ; $569B: $20 $66

    ld l, a                                       ; $569D: $6F
    ld [hl], d                                    ; $569E: $72
    inc l                                         ; $569F: $2C
    jr nz, jr_01D_56EB                            ; $56A0: $20 $49

    cp $63                                        ; $56A2: $FE $63
    ld h, c                                       ; $56A4: $61
    ld l, [hl]                                    ; $56A5: $6E
    jr nz, @+$76                                  ; $56A6: $20 $74

    ld [hl], d                                    ; $56A8: $72
    ld a, c                                       ; $56A9: $79

jr_01D_56AA:
    jr nz, @+$76                                  ; $56AA: $20 $74

    ld l, a                                       ; $56AC: $6F
    rst $38                                       ; $56AD: $FF
    ld l, h                                       ; $56AE: $6C
    ld l, a                                       ; $56AF: $6F
    ld h, e                                       ; $56B0: $63
    ld h, c                                       ; $56B1: $61

jr_01D_56B2:
    ld [hl], h                                    ; $56B2: $74
    ld h, l                                       ; $56B3: $65
    jr nz, jr_01D_572A                            ; $56B4: $20 $74

    ld l, b                                       ; $56B6: $68
    ld h, l                                       ; $56B7: $65
    ld l, l                                       ; $56B8: $6D
    ld l, $2E                                     ; $56B9: $2E $2E
    ld l, $FE                                     ; $56BB: $2E $FE
    db $FD                                        ; $56BD: $FD
    sbc d                                         ; $56BE: $9A
    ld e, b                                       ; $56BF: $58
    dec c                                         ; $56C0: $0D
    ld b, b                                       ; $56C1: $40

jr_01D_56C2:
    ld h, b                                       ; $56C2: $60

jr_01D_56C3:
    sbc e                                         ; $56C3: $9B
    ld hl, sp+$4A                                 ; $56C4: $F8 $4A
    sbc a                                         ; $56C6: $9F
    ld c, [hl]                                    ; $56C7: $4E
    ld l, a                                       ; $56C8: $6F
    jr nz, jr_01D_5732                            ; $56C9: $20 $67

jr_01D_56CB:
    ld l, a                                       ; $56CB: $6F
    ld l, a                                       ; $56CC: $6F
    ld h, h                                       ; $56CD: $64
    inc l                                         ; $56CE: $2C
    rst $38                                       ; $56CF: $FF
    ld [hl], e                                    ; $56D0: $73
    ld l, a                                       ; $56D1: $6F

jr_01D_56D2:
    ld l, l                                       ; $56D2: $6D
    ld h, l                                       ; $56D3: $65
    ld [hl], h                                    ; $56D4: $74
    ld l, b                                       ; $56D5: $68
    ld l, c                                       ; $56D6: $69
    ld l, [hl]                                    ; $56D7: $6E
    ld h, a                                       ; $56D8: $67
    jr nz, jr_01D_5744                            ; $56D9: $20 $69

    ld [hl], e                                    ; $56DB: $73
    cp $70                                        ; $56DC: $FE $70
    ld [hl], d                                    ; $56DE: $72
    ld h, l                                       ; $56DF: $65
    halt                                          ; $56E0: $76
    ld h, l                                       ; $56E1: $65
    ld l, [hl]                                    ; $56E2: $6E
    ld [hl], h                                    ; $56E3: $74
    ld l, c                                       ; $56E4: $69
    ld l, [hl]                                    ; $56E5: $6E
    ld h, a                                       ; $56E6: $67
    jr nz, @+$6F                                  ; $56E7: $20 $6D

    ld h, l                                       ; $56E9: $65
    rst $38                                       ; $56EA: $FF

jr_01D_56EB:
    ld h, [hl]                                    ; $56EB: $66
    ld [hl], d                                    ; $56EC: $72
    ld l, a                                       ; $56ED: $6F
    ld l, l                                       ; $56EE: $6D

jr_01D_56EF:
    jr nz, @+$75                                  ; $56EF: $20 $73

    ld h, l                                       ; $56F1: $65

jr_01D_56F2:
    ld h, l                                       ; $56F2: $65
    ld l, c                                       ; $56F3: $69
    ld l, [hl]                                    ; $56F4: $6E
    ld h, a                                       ; $56F5: $67
    jr nz, jr_01D_5761                            ; $56F6: $20 $69

    ld [hl], h                                    ; $56F8: $74
    cp $63                                        ; $56F9: $FE $63
    ld l, h                                       ; $56FB: $6C
    ld h, l                                       ; $56FC: $65
    ld h, c                                       ; $56FD: $61
    ld [hl], d                                    ; $56FE: $72
    ld l, h                                       ; $56FF: $6C
    ld a, c                                       ; $5700: $79
    ld l, $20                                     ; $5701: $2E $20

jr_01D_5703:
    ld b, c                                       ; $5703: $41
    ld l, h                                       ; $5704: $6C

jr_01D_5705:
    ld l, h                                       ; $5705: $6C
    jr nz, jr_01D_5751                            ; $5706: $20 $49

    rst $38                                       ; $5708: $FF
    ld [hl], e                                    ; $5709: $73
    ld h, l                                       ; $570A: $65
    ld l, [hl]                                    ; $570B: $6E
    ld [hl], e                                    ; $570C: $73
    ld h, l                                       ; $570D: $65
    jr nz, jr_01D_5779                            ; $570E: $20 $69

    ld [hl], e                                    ; $5710: $73
    jr nz, jr_01D_5787                            ; $5711: $20 $74

    ld l, b                                       ; $5713: $68
    ld h, c                                       ; $5714: $61
    ld [hl], h                                    ; $5715: $74
    cp $74                                        ; $5716: $FE $74
    ld l, b                                       ; $5718: $68
    ld h, l                                       ; $5719: $65
    ld a, c                                       ; $571A: $79
    jr nz, jr_01D_577E                            ; $571B: $20 $61

    ld [hl], d                                    ; $571D: $72
    ld h, l                                       ; $571E: $65
    jr nz, jr_01D_5782                            ; $571F: $20 $61

    ld l, h                                       ; $5721: $6C
    ld l, h                                       ; $5722: $6C
    rst $38                                       ; $5723: $FF
    ld h, e                                       ; $5724: $63
    ld l, a                                       ; $5725: $6F
    ld l, [hl]                                    ; $5726: $6E
    ld h, e                                       ; $5727: $63
    ld h, l                                       ; $5728: $65
    ld l, [hl]                                    ; $5729: $6E

jr_01D_572A:
    ld [hl], h                                    ; $572A: $74
    ld [hl], d                                    ; $572B: $72
    ld h, c                                       ; $572C: $61
    ld [hl], h                                    ; $572D: $74
    ld h, l                                       ; $572E: $65
    ld h, h                                       ; $572F: $64
    jr nz, jr_01D_579B                            ; $5730: $20 $69

jr_01D_5732:
    ld l, [hl]                                    ; $5732: $6E
    cp $6F                                        ; $5733: $FE $6F
    ld l, [hl]                                    ; $5735: $6E
    ld h, l                                       ; $5736: $65
    jr nz, jr_01D_579A                            ; $5737: $20 $61

    ld [hl], d                                    ; $5739: $72
    ld h, l                                       ; $573A: $65
    ld h, c                                       ; $573B: $61
    inc l                                         ; $573C: $2C
    jr nz, jr_01D_57B8                            ; $573D: $20 $79

    ld h, l                                       ; $573F: $65
    ld [hl], h                                    ; $5740: $74
    rst $38                                       ; $5741: $FF
    ld h, c                                       ; $5742: $61
    ld l, h                                       ; $5743: $6C

jr_01D_5744:
    ld [hl], a                                    ; $5744: $77
    ld h, c                                       ; $5745: $61
    ld a, c                                       ; $5746: $79
    ld [hl], e                                    ; $5747: $73
    jr nz, jr_01D_57B7                            ; $5748: $20 $6D

    ld l, a                                       ; $574A: $6F
    halt                                          ; $574B: $76
    ld l, c                                       ; $574C: $69
    ld l, [hl]                                    ; $574D: $6E
    ld h, a                                       ; $574E: $67
    ld l, $FE                                     ; $574F: $2E $FE

jr_01D_5751:
    ld d, h                                       ; $5751: $54
    ld l, b                                       ; $5752: $68
    ld l, c                                       ; $5753: $69
    ld [hl], e                                    ; $5754: $73
    jr nz, jr_01D_57BA                            ; $5755: $20 $63

    ld h, c                                       ; $5757: $61
    ld l, [hl]                                    ; $5758: $6E
    jr nz, jr_01D_57CA                            ; $5759: $20 $6F

    ld l, [hl]                                    ; $575B: $6E
    ld l, h                                       ; $575C: $6C
    ld a, c                                       ; $575D: $79
    rst $38                                       ; $575E: $FF
    ld l, l                                       ; $575F: $6D
    ld h, l                                       ; $5760: $65

jr_01D_5761:
    ld h, c                                       ; $5761: $61
    ld l, [hl]                                    ; $5762: $6E
    jr nz, jr_01D_57D4                            ; $5763: $20 $6F

    ld l, [hl]                                    ; $5765: $6E
    ld h, l                                       ; $5766: $65
    jr nz, jr_01D_57DD                            ; $5767: $20 $74

    ld l, b                                       ; $5769: $68
    ld l, c                                       ; $576A: $69
    ld l, [hl]                                    ; $576B: $6E
    ld h, a                                       ; $576C: $67
    ld a, [hl-]                                   ; $576D: $3A
    cp $73                                        ; $576E: $FE $73
    ld l, a                                       ; $5770: $6F
    ld l, l                                       ; $5771: $6D
    ld h, l                                       ; $5772: $65
    ld h, d                                       ; $5773: $62
    ld l, a                                       ; $5774: $6F
    ld h, h                                       ; $5775: $64
    ld a, c                                       ; $5776: $79
    jr nz, @+$6B                                  ; $5777: $20 $69

jr_01D_5779:
    ld [hl], e                                    ; $5779: $73
    rst $38                                       ; $577A: $FF
    ld l, b                                       ; $577B: $68
    ld l, a                                       ; $577C: $6F
    ld l, h                                       ; $577D: $6C

jr_01D_577E:
    ld h, h                                       ; $577E: $64
    ld l, c                                       ; $577F: $69
    ld l, [hl]                                    ; $5780: $6E
    ld h, a                                       ; $5781: $67

jr_01D_5782:
    jr nz, @+$76                                  ; $5782: $20 $74

    ld l, b                                       ; $5784: $68
    ld h, l                                       ; $5785: $65
    ld l, l                                       ; $5786: $6D

jr_01D_5787:
    ld l, $FE                                     ; $5787: $2E $FE
    ld c, [hl]                                    ; $5789: $4E
    ld l, a                                       ; $578A: $6F
    jr nz, jr_01D_57F1                            ; $578B: $20 $64

    ld l, a                                       ; $578D: $6F
    ld [hl], l                                    ; $578E: $75
    ld h, d                                       ; $578F: $62
    ld [hl], h                                    ; $5790: $74
    jr nz, jr_01D_57FC                            ; $5791: $20 $69

    ld [hl], h                                    ; $5793: $74
    jr nz, jr_01D_57FF                            ; $5794: $20 $69

    ld [hl], e                                    ; $5796: $73
    rst $38                                       ; $5797: $FF
    ld [hl], h                                    ; $5798: $74
    ld l, b                                       ; $5799: $68

jr_01D_579A:
    ld h, l                                       ; $579A: $65

jr_01D_579B:
    jr nz, jr_01D_5810                            ; $579B: $20 $73

    ld h, c                                       ; $579D: $61
    ld l, l                                       ; $579E: $6D
    ld h, l                                       ; $579F: $65
    jr nz, jr_01D_5812                            ; $57A0: $20 $70

    ld h, l                                       ; $57A2: $65
    ld [hl], d                                    ; $57A3: $72
    ld [hl], e                                    ; $57A4: $73
    ld l, a                                       ; $57A5: $6F
    ld l, [hl]                                    ; $57A6: $6E
    cp $77                                        ; $57A7: $FE $77
    ld l, b                                       ; $57A9: $68
    ld l, a                                       ; $57AA: $6F
    jr nz, jr_01D_5822                            ; $57AB: $20 $75

    ld [hl], e                                    ; $57AD: $73
    ld h, l                                       ; $57AE: $65
    ld h, h                                       ; $57AF: $64
    jr nz, jr_01D_5826                            ; $57B0: $20 $74

    ld l, b                                       ; $57B2: $68
    ld l, c                                       ; $57B3: $69
    ld [hl], e                                    ; $57B4: $73
    rst $38                                       ; $57B5: $FF
    ld [hl], e                                    ; $57B6: $73

jr_01D_57B7:
    ld [hl], h                                    ; $57B7: $74

jr_01D_57B8:
    ld l, a                                       ; $57B8: $6F
    ld l, [hl]                                    ; $57B9: $6E

jr_01D_57BA:
    ld h, l                                       ; $57BA: $65
    jr nz, jr_01D_5831                            ; $57BB: $20 $74

    ld l, a                                       ; $57BD: $6F
    jr nz, jr_01D_5826                            ; $57BE: $20 $66

    ld l, a                                       ; $57C0: $6F
    ld [hl], d                                    ; $57C1: $72
    ld l, l                                       ; $57C2: $6D
    cp $74                                        ; $57C3: $FE $74
    ld l, b                                       ; $57C5: $68
    ld h, l                                       ; $57C6: $65
    jr nz, jr_01D_5810                            ; $57C7: $20 $47

    ld h, l                                       ; $57C9: $65

jr_01D_57CA:
    ld a, c                                       ; $57CA: $79
    ld [hl], e                                    ; $57CB: $73
    ld h, l                                       ; $57CC: $65
    ld [hl], d                                    ; $57CD: $72
    jr nz, jr_01D_5839                            ; $57CE: $20 $69

    ld l, [hl]                                    ; $57D0: $6E
    rst $38                                       ; $57D1: $FF
    ld c, [hl]                                    ; $57D2: $4E
    ld h, c                                       ; $57D3: $61

jr_01D_57D4:
    ld [hl], d                                    ; $57D4: $72
    ld l, a                                       ; $57D5: $6F
    ld l, a                                       ; $57D6: $6F
    ld l, l                                       ; $57D7: $6D
    ld l, $20                                     ; $57D8: $2E $20
    ld b, h                                       ; $57DA: $44
    ld l, c                                       ; $57DB: $69
    ld h, h                                       ; $57DC: $64

jr_01D_57DD:
    jr nz, jr_01D_5858                            ; $57DD: $20 $79

    ld l, a                                       ; $57DF: $6F
    ld [hl], l                                    ; $57E0: $75
    cp $6E                                        ; $57E1: $FE $6E
    ld l, a                                       ; $57E3: $6F
    ld [hl], h                                    ; $57E4: $74
    ld l, c                                       ; $57E5: $69
    ld h, e                                       ; $57E6: $63
    ld h, l                                       ; $57E7: $65
    jr nz, jr_01D_584B                            ; $57E8: $20 $61

    ld l, [hl]                                    ; $57EA: $6E
    ld a, c                                       ; $57EB: $79
    rst $38                                       ; $57EC: $FF
    ld [hl], e                                    ; $57ED: $73
    ld [hl], l                                    ; $57EE: $75
    ld [hl], e                                    ; $57EF: $73
    ld [hl], b                                    ; $57F0: $70

jr_01D_57F1:
    ld l, c                                       ; $57F1: $69
    ld h, e                                       ; $57F2: $63
    ld l, c                                       ; $57F3: $69
    ld l, a                                       ; $57F4: $6F
    ld [hl], l                                    ; $57F5: $75
    ld [hl], e                                    ; $57F6: $73
    cp $63                                        ; $57F7: $FE $63
    ld l, b                                       ; $57F9: $68
    ld h, c                                       ; $57FA: $61
    ld [hl], d                                    ; $57FB: $72

jr_01D_57FC:
    ld h, c                                       ; $57FC: $61
    ld h, e                                       ; $57FD: $63
    ld [hl], h                                    ; $57FE: $74

jr_01D_57FF:
    ld h, l                                       ; $57FF: $65
    ld [hl], d                                    ; $5800: $72
    ld [hl], e                                    ; $5801: $73
    rst $38                                       ; $5802: $FF
    ld h, c                                       ; $5803: $61
    ld [hl], d                                    ; $5804: $72
    ld l, a                                       ; $5805: $6F
    ld [hl], l                                    ; $5806: $75
    ld l, [hl]                                    ; $5807: $6E
    ld h, h                                       ; $5808: $64
    jr nz, jr_01D_587F                            ; $5809: $20 $74

    ld l, b                                       ; $580B: $68
    ld h, l                                       ; $580C: $65
    cp $47                                        ; $580D: $FE $47
    ld h, l                                       ; $580F: $65

jr_01D_5810:
    ld a, c                                       ; $5810: $79
    ld [hl], e                                    ; $5811: $73

jr_01D_5812:
    ld h, l                                       ; $5812: $65
    ld [hl], d                                    ; $5813: $72
    ccf                                           ; $5814: $3F
    cp $FD                                        ; $5815: $FE $FD
    sbc e                                         ; $5817: $9B
    ld a, b                                       ; $5818: $78
    ld [hl], b                                    ; $5819: $70
    sbc a                                         ; $581A: $9F
    ld b, c                                       ; $581B: $41
    ld h, e                                       ; $581C: $63
    ld [hl], h                                    ; $581D: $74
    ld [hl], l                                    ; $581E: $75
    ld h, c                                       ; $581F: $61
    ld l, h                                       ; $5820: $6C
    ld l, h                                       ; $5821: $6C

jr_01D_5822:
    ld a, c                                       ; $5822: $79
    inc l                                         ; $5823: $2C
    jr nz, jr_01D_586F                            ; $5824: $20 $49

jr_01D_5826:
    jr nz, @+$66                                  ; $5826: $20 $64

    ld l, c                                       ; $5828: $69
    ld h, h                                       ; $5829: $64
    rst $38                                       ; $582A: $FF
    ld l, [hl]                                    ; $582B: $6E
    ld l, a                                       ; $582C: $6F
    ld [hl], h                                    ; $582D: $74
    ld l, c                                       ; $582E: $69
    ld h, e                                       ; $582F: $63
    ld h, l                                       ; $5830: $65

jr_01D_5831:
    jr nz, jr_01D_58A6                            ; $5831: $20 $73

    ld l, a                                       ; $5833: $6F
    ld l, l                                       ; $5834: $6D
    ld h, l                                       ; $5835: $65
    ld l, a                                       ; $5836: $6F
    ld l, [hl]                                    ; $5837: $6E
    ld h, l                                       ; $5838: $65

jr_01D_5839:
    inc l                                         ; $5839: $2C
    cp $62                                        ; $583A: $FE $62
    ld [hl], l                                    ; $583C: $75
    ld [hl], h                                    ; $583D: $74
    jr nz, @+$6A                                  ; $583E: $20 $68

    ld h, l                                       ; $5840: $65
    jr nz, jr_01D_58BA                            ; $5841: $20 $77

    ld h, l                                       ; $5843: $65
    ld l, [hl]                                    ; $5844: $6E
    ld [hl], h                                    ; $5845: $74
    jr nz, jr_01D_58BC                            ; $5846: $20 $74

    ld l, a                                       ; $5848: $6F
    ld l, a                                       ; $5849: $6F
    rst $38                                       ; $584A: $FF

jr_01D_584B:
    ld h, [hl]                                    ; $584B: $66
    ld h, c                                       ; $584C: $61
    ld [hl], e                                    ; $584D: $73
    ld [hl], h                                    ; $584E: $74
    jr nz, jr_01D_58B7                            ; $584F: $20 $66

    ld l, a                                       ; $5851: $6F
    ld [hl], d                                    ; $5852: $72
    jr nz, @+$6F                                  ; $5853: $20 $6D

    ld h, l                                       ; $5855: $65
    jr nz, jr_01D_58CC                            ; $5856: $20 $74

jr_01D_5858:
    ld l, a                                       ; $5858: $6F
    cp $73                                        ; $5859: $FE $73
    ld h, l                                       ; $585B: $65
    ld h, l                                       ; $585C: $65
    jr nz, @+$65                                  ; $585D: $20 $63

    ld l, h                                       ; $585F: $6C
    ld h, l                                       ; $5860: $65
    ld h, c                                       ; $5861: $61
    ld [hl], d                                    ; $5862: $72
    ld l, h                                       ; $5863: $6C
    ld a, c                                       ; $5864: $79
    ld l, $FE                                     ; $5865: $2E $FE
    db $FD                                        ; $5867: $FD
    sbc e                                         ; $5868: $9B
    ld hl, sp+$4A                                 ; $5869: $F8 $4A
    sbc a                                         ; $586B: $9F
    ld b, h                                       ; $586C: $44
    ld l, c                                       ; $586D: $69
    ld h, h                                       ; $586E: $64

jr_01D_586F:
    jr nz, jr_01D_58EA                            ; $586F: $20 $79

    ld l, a                                       ; $5871: $6F
    ld [hl], l                                    ; $5872: $75
    jr nz, jr_01D_58E8                            ; $5873: $20 $73

    ld h, l                                       ; $5875: $65
    ld h, l                                       ; $5876: $65
    rst $38                                       ; $5877: $FF
    ld [hl], a                                    ; $5878: $77
    ld l, b                                       ; $5879: $68
    ld h, l                                       ; $587A: $65
    ld [hl], d                                    ; $587B: $72
    ld h, l                                       ; $587C: $65
    jr nz, jr_01D_58E7                            ; $587D: $20 $68

jr_01D_587F:
    ld h, l                                       ; $587F: $65
    jr nz, jr_01D_58F9                            ; $5880: $20 $77

    ld h, l                                       ; $5882: $65
    ld l, [hl]                                    ; $5883: $6E
    ld [hl], h                                    ; $5884: $74
    ccf                                           ; $5885: $3F
    cp $FD                                        ; $5886: $FE $FD
    sbc d                                         ; $5888: $9A
    ld b, e                                       ; $5889: $43
    rrca                                          ; $588A: $0F
    ld bc, $A225                                  ; $588B: $01 $25 $A2
    dec b                                         ; $588E: $05
    nop                                           ; $588F: $00
    dec e                                         ; $5890: $1D
    rst $38                                       ; $5891: $FF
    ld e, c                                       ; $5892: $59
    xor h                                         ; $5893: $AC
    dec h                                         ; $5894: $25
    and d                                         ; $5895: $A2
    ld [bc], a                                    ; $5896: $02
    sbc e                                         ; $5897: $9B
    ld a, b                                       ; $5898: $78
    ld [hl], b                                    ; $5899: $70
    sbc a                                         ; $589A: $9F
    ld c, b                                       ; $589B: $48
    ld h, l                                       ; $589C: $65
    jr nz, jr_01D_5916                            ; $589D: $20 $77

    ld h, l                                       ; $589F: $65
    ld l, [hl]                                    ; $58A0: $6E
    ld [hl], h                                    ; $58A1: $74
    jr nz, @+$6B                                  ; $58A2: $20 $69

    ld l, [hl]                                    ; $58A4: $6E
    ld [hl], h                                    ; $58A5: $74

jr_01D_58A6:
    ld l, a                                       ; $58A6: $6F
    jr nz, jr_01D_590A                            ; $58A7: $20 $61

    rst $38                                       ; $58A9: $FF
    ld h, e                                       ; $58AA: $63
    ld h, c                                       ; $58AB: $61
    halt                                          ; $58AC: $76
    ld h, l                                       ; $58AD: $65
    ld l, $FE                                     ; $58AE: $2E $FE
    ld c, c                                       ; $58B0: $49
    jr nz, jr_01D_5927                            ; $58B1: $20 $74

    ld [hl], d                                    ; $58B3: $72
    ld l, c                                       ; $58B4: $69
    ld h, l                                       ; $58B5: $65
    ld h, h                                       ; $58B6: $64

jr_01D_58B7:
    jr nz, jr_01D_592D                            ; $58B7: $20 $74

    ld l, a                                       ; $58B9: $6F

jr_01D_58BA:
    rst $38                                       ; $58BA: $FF
    ld h, [hl]                                    ; $58BB: $66

jr_01D_58BC:
    ld l, a                                       ; $58BC: $6F
    ld l, h                                       ; $58BD: $6C
    ld l, h                                       ; $58BE: $6C
    ld l, a                                       ; $58BF: $6F
    ld [hl], a                                    ; $58C0: $77
    jr nz, jr_01D_592B                            ; $58C1: $20 $68

    ld l, c                                       ; $58C3: $69
    ld l, l                                       ; $58C4: $6D
    inc l                                         ; $58C5: $2C
    jr nz, jr_01D_592A                            ; $58C6: $20 $62

    ld [hl], l                                    ; $58C8: $75
    ld [hl], h                                    ; $58C9: $74
    cp $68                                        ; $58CA: $FE $68

jr_01D_58CC:
    ld h, l                                       ; $58CC: $65
    jr nz, jr_01D_5933                            ; $58CD: $20 $64

    ld l, c                                       ; $58CF: $69
    ld [hl], e                                    ; $58D0: $73
    ld h, c                                       ; $58D1: $61
    ld [hl], b                                    ; $58D2: $70
    ld [hl], b                                    ; $58D3: $70
    ld h, l                                       ; $58D4: $65
    ld h, c                                       ; $58D5: $61
    ld [hl], d                                    ; $58D6: $72
    ld h, l                                       ; $58D7: $65
    ld h, h                                       ; $58D8: $64
    ld l, $FF                                     ; $58D9: $2E $FF
    ld c, c                                       ; $58DB: $49
    jr nz, jr_01D_5942                            ; $58DC: $20 $64

    ld l, c                                       ; $58DE: $69
    ld h, h                                       ; $58DF: $64
    jr nz, jr_01D_5948                            ; $58E0: $20 $66

    ld l, c                                       ; $58E2: $69
    ld l, [hl]                                    ; $58E3: $6E
    ld h, h                                       ; $58E4: $64
    cp $74                                        ; $58E5: $FE $74

jr_01D_58E7:
    ld l, b                                       ; $58E7: $68

jr_01D_58E8:
    ld h, l                                       ; $58E8: $65
    ld [hl], e                                    ; $58E9: $73

jr_01D_58EA:
    ld h, l                                       ; $58EA: $65
    jr nz, jr_01D_5950                            ; $58EB: $20 $63

    ld [hl], d                                    ; $58ED: $72
    ld a, c                                       ; $58EE: $79
    ld [hl], e                                    ; $58EF: $73
    ld [hl], h                                    ; $58F0: $74
    ld h, c                                       ; $58F1: $61
    ld l, h                                       ; $58F2: $6C
    rst $38                                       ; $58F3: $FF
    ld h, d                                       ; $58F4: $62
    ld l, h                                       ; $58F5: $6C
    ld h, c                                       ; $58F6: $61
    ld h, h                                       ; $58F7: $64
    ld h, l                                       ; $58F8: $65

jr_01D_58F9:
    ld [hl], e                                    ; $58F9: $73
    inc l                                         ; $58FA: $2C
    jr nz, jr_01D_5971                            ; $58FB: $20 $74

    ld l, b                                       ; $58FD: $68
    ld l, a                                       ; $58FE: $6F
    ld [hl], l                                    ; $58FF: $75
    ld h, a                                       ; $5900: $67
    ld l, b                                       ; $5901: $68
    ld l, $FE                                     ; $5902: $2E $FE
    db $FD                                        ; $5904: $FD
    sbc e                                         ; $5905: $9B
    ld hl, sp+$4A                                 ; $5906: $F8 $4A
    sbc a                                         ; $5908: $9F
    ld c, h                                       ; $5909: $4C

jr_01D_590A:
    ld h, l                                       ; $590A: $65
    ld [hl], h                                    ; $590B: $74
    jr nz, @+$6F                                  ; $590C: $20 $6D

    ld h, l                                       ; $590E: $65
    jr nz, jr_01D_5979                            ; $590F: $20 $68

    ld h, c                                       ; $5911: $61
    halt                                          ; $5912: $76
    ld h, l                                       ; $5913: $65
    jr nz, jr_01D_5977                            ; $5914: $20 $61

jr_01D_5916:
    rst $38                                       ; $5916: $FF
    ld l, h                                       ; $5917: $6C
    ld l, a                                       ; $5918: $6F
    ld l, a                                       ; $5919: $6F
    ld l, e                                       ; $591A: $6B
    ld l, $2E                                     ; $591B: $2E $2E
    ld l, $FE                                     ; $591D: $2E $FE
    db $FD                                        ; $591F: $FD
    ld e, b                                       ; $5920: $58
    ld c, $9F                                     ; $5921: $0E $9F
    ld d, h                                       ; $5923: $54
    ld l, b                                       ; $5924: $68
    ld l, a                                       ; $5925: $6F
    ld [hl], e                                    ; $5926: $73

jr_01D_5927:
    ld h, l                                       ; $5927: $65
    jr nz, @+$6E                                  ; $5928: $20 $6C

jr_01D_592A:
    ld l, a                                       ; $592A: $6F

jr_01D_592B:
    ld l, a                                       ; $592B: $6F
    ld l, e                                       ; $592C: $6B

jr_01D_592D:
    jr nz, jr_01D_599B                            ; $592D: $20 $6C

    ld l, c                                       ; $592F: $69
    ld l, e                                       ; $5930: $6B
    ld h, l                                       ; $5931: $65
    rst $38                                       ; $5932: $FF

jr_01D_5933:
    ld [hl], h                                    ; $5933: $74
    ld l, b                                       ; $5934: $68
    ld h, l                                       ; $5935: $65
    jr nz, jr_01D_59A3                            ; $5936: $20 $6B

    ld l, c                                       ; $5938: $69
    ld l, [hl]                                    ; $5939: $6E
    ld h, h                                       ; $593A: $64
    jr nz, jr_01D_59AC                            ; $593B: $20 $6F

    ld h, [hl]                                    ; $593D: $66
    cp $62                                        ; $593E: $FE $62
    ld l, h                                       ; $5940: $6C
    ld h, c                                       ; $5941: $61

jr_01D_5942:
    ld h, h                                       ; $5942: $64
    ld h, l                                       ; $5943: $65
    ld [hl], e                                    ; $5944: $73
    jr nz, jr_01D_59BC                            ; $5945: $20 $75

    ld [hl], e                                    ; $5947: $73

jr_01D_5948:
    ld h, l                                       ; $5948: $65
    ld h, h                                       ; $5949: $64
    jr nz, jr_01D_59AE                            ; $594A: $20 $62

    ld a, c                                       ; $594C: $79
    rst $38                                       ; $594D: $FF
    ld l, l                                       ; $594E: $6D
    ld l, c                                       ; $594F: $69

jr_01D_5950:
    ld l, [hl]                                    ; $5950: $6E
    ld h, l                                       ; $5951: $65
    ld [hl], d                                    ; $5952: $72
    ld [hl], e                                    ; $5953: $73
    jr nz, @+$6B                                  ; $5954: $20 $69

    ld l, [hl]                                    ; $5956: $6E
    jr nz, jr_01D_59CD                            ; $5957: $20 $74

    ld l, b                                       ; $5959: $68
    ld h, l                                       ; $595A: $65
    cp $55                                        ; $595B: $FE $55
    ld l, [hl]                                    ; $595D: $6E
    ld h, h                                       ; $595E: $64
    ld h, l                                       ; $595F: $65
    ld [hl], d                                    ; $5960: $72
    ld l, [hl]                                    ; $5961: $6E
    ld h, l                                       ; $5962: $65
    ld h, c                                       ; $5963: $61
    ld [hl], h                                    ; $5964: $74
    ld l, b                                       ; $5965: $68
    ld l, $FF                                     ; $5966: $2E $FF
    ld c, b                                       ; $5968: $48
    ld h, l                                       ; $5969: $65
    jr nz, jr_01D_59D9                            ; $596A: $20 $6D

    ld [hl], l                                    ; $596C: $75
    ld [hl], e                                    ; $596D: $73
    ld [hl], h                                    ; $596E: $74
    jr nz, jr_01D_59D9                            ; $596F: $20 $68

jr_01D_5971:
    ld h, c                                       ; $5971: $61
    halt                                          ; $5972: $76
    ld h, l                                       ; $5973: $65
    cp $74                                        ; $5974: $FE $74
    ld h, c                                       ; $5976: $61

jr_01D_5977:
    ld l, e                                       ; $5977: $6B
    ld h, l                                       ; $5978: $65

jr_01D_5979:
    ld l, [hl]                                    ; $5979: $6E
    jr nz, jr_01D_59DD                            ; $597A: $20 $61

    ld l, [hl]                                    ; $597C: $6E
    jr nz, jr_01D_59EE                            ; $597D: $20 $6F

    ld l, h                                       ; $597F: $6C
    ld h, h                                       ; $5980: $64
    rst $38                                       ; $5981: $FF
    ld l, l                                       ; $5982: $6D
    ld l, c                                       ; $5983: $69
    ld l, [hl]                                    ; $5984: $6E
    ld h, l                                       ; $5985: $65
    jr nz, jr_01D_59FB                            ; $5986: $20 $73

    ld l, b                                       ; $5988: $68
    ld h, c                                       ; $5989: $61
    ld h, [hl]                                    ; $598A: $66
    ld [hl], h                                    ; $598B: $74
    ld l, $2E                                     ; $598C: $2E $2E
    ld l, $FE                                     ; $598E: $2E $FE
    ld b, l                                       ; $5990: $45
    ld l, c                                       ; $5991: $69
    ld h, h                                       ; $5992: $64
    ld l, a                                       ; $5993: $6F
    ld l, [hl]                                    ; $5994: $6E
    jr nz, @+$65                                  ; $5995: $20 $63

    ld h, c                                       ; $5997: $61
    ld l, [hl]                                    ; $5998: $6E
    jr nz, jr_01D_5A01                            ; $5999: $20 $66

jr_01D_599B:
    ld l, c                                       ; $599B: $69
    ld [hl], h                                    ; $599C: $74
    rst $38                                       ; $599D: $FF
    ld [hl], h                                    ; $599E: $74
    ld l, b                                       ; $599F: $68
    ld l, a                                       ; $59A0: $6F
    ld [hl], e                                    ; $59A1: $73
    ld h, l                                       ; $59A2: $65

jr_01D_59A3:
    jr nz, jr_01D_5A07                            ; $59A3: $20 $62

    ld l, h                                       ; $59A5: $6C
    ld h, c                                       ; $59A6: $61
    ld h, h                                       ; $59A7: $64
    ld h, l                                       ; $59A8: $65
    ld [hl], e                                    ; $59A9: $73
    cp $69                                        ; $59AA: $FE $69

jr_01D_59AC:
    ld l, [hl]                                    ; $59AC: $6E
    ld [hl], h                                    ; $59AD: $74

jr_01D_59AE:
    ld l, a                                       ; $59AE: $6F
    jr nz, jr_01D_5A15                            ; $59AF: $20 $64

    ld l, c                                       ; $59B1: $69
    ld h, a                                       ; $59B2: $67
    ld h, a                                       ; $59B3: $67
    ld l, c                                       ; $59B4: $69
    ld l, [hl]                                    ; $59B5: $6E
    ld h, a                                       ; $59B6: $67
    rst $38                                       ; $59B7: $FF
    ld h, a                                       ; $59B8: $67
    ld l, h                                       ; $59B9: $6C
    ld l, a                                       ; $59BA: $6F
    halt                                          ; $59BB: $76

jr_01D_59BC:
    ld h, l                                       ; $59BC: $65
    ld [hl], e                                    ; $59BD: $73
    jr nz, @+$68                                  ; $59BE: $20 $66

    ld l, a                                       ; $59C0: $6F
    ld [hl], d                                    ; $59C1: $72
    jr nz, jr_01D_5A3D                            ; $59C2: $20 $79

    ld l, a                                       ; $59C4: $6F
    ld [hl], l                                    ; $59C5: $75
    ld l, $FE                                     ; $59C6: $2E $FE
    db $FD                                        ; $59C8: $FD
    sbc e                                         ; $59C9: $9B
    ld a, b                                       ; $59CA: $78
    ld [hl], b                                    ; $59CB: $70
    sbc a                                         ; $59CC: $9F

jr_01D_59CD:
    ld d, h                                       ; $59CD: $54
    ld l, b                                       ; $59CE: $68
    ld h, c                                       ; $59CF: $61
    ld l, [hl]                                    ; $59D0: $6E
    ld l, e                                       ; $59D1: $6B
    ld [hl], e                                    ; $59D2: $73
    jr nz, jr_01D_5A3B                            ; $59D3: $20 $66

    ld l, a                                       ; $59D5: $6F
    ld [hl], d                                    ; $59D6: $72
    jr nz, jr_01D_5A52                            ; $59D7: $20 $79

jr_01D_59D9:
    ld l, a                                       ; $59D9: $6F
    ld [hl], l                                    ; $59DA: $75
    ld [hl], d                                    ; $59DB: $72
    rst $38                                       ; $59DC: $FF

jr_01D_59DD:
    ld l, b                                       ; $59DD: $68
    ld h, l                                       ; $59DE: $65
    ld l, h                                       ; $59DF: $6C
    ld [hl], b                                    ; $59E0: $70
    ld l, $FE                                     ; $59E1: $2E $FE
    db $FD                                        ; $59E3: $FD
    sbc e                                         ; $59E4: $9B
    ld hl, sp+$4A                                 ; $59E5: $F8 $4A
    sbc a                                         ; $59E7: $9F
    ld b, a                                       ; $59E8: $47
    ld l, a                                       ; $59E9: $6F
    ld l, a                                       ; $59EA: $6F
    ld h, h                                       ; $59EB: $64
    jr nz, jr_01D_5A5A                            ; $59EC: $20 $6C

jr_01D_59EE:
    ld [hl], l                                    ; $59EE: $75
    ld h, e                                       ; $59EF: $63
    ld l, e                                       ; $59F0: $6B
    inc l                                         ; $59F1: $2C
    cp $4B                                        ; $59F2: $FE $4B
    ld a, c                                       ; $59F4: $79
    ld [hl], d                                    ; $59F5: $72
    ld l, a                                       ; $59F6: $6F
    ld [hl], e                                    ; $59F7: $73
    ld hl, $FDFE                                  ; $59F8: $21 $FE $FD

jr_01D_59FB:
    sbc d                                         ; $59FB: $9A
    ld b, [hl]                                    ; $59FC: $46
    ld h, d                                       ; $59FD: $62
    ld e, d                                       ; $59FE: $5A
    sbc e                                         ; $59FF: $9B
    ld a, b                                       ; $5A00: $78

jr_01D_5A01:
    ld [hl], b                                    ; $5A01: $70
    sbc a                                         ; $5A02: $9F
    ld c, [hl]                                    ; $5A03: $4E
    ld l, a                                       ; $5A04: $6F
    ld [hl], d                                    ; $5A05: $72
    ld [hl], h                                    ; $5A06: $74

jr_01D_5A07:
    ld l, b                                       ; $5A07: $68
    jr nz, jr_01D_5A79                            ; $5A08: $20 $6F

    ld h, [hl]                                    ; $5A0A: $66
    jr nz, @+$79                                  ; $5A0B: $20 $77

    ld l, b                                       ; $5A0D: $68
    ld h, l                                       ; $5A0E: $65
    ld [hl], d                                    ; $5A0F: $72
    ld h, l                                       ; $5A10: $65
    rst $38                                       ; $5A11: $FF
    ld [hl], h                                    ; $5A12: $74
    ld l, b                                       ; $5A13: $68
    ld h, l                                       ; $5A14: $65

jr_01D_5A15:
    jr nz, jr_01D_5A5E                            ; $5A15: $20 $47

    ld h, l                                       ; $5A17: $65
    ld a, c                                       ; $5A18: $79
    ld [hl], e                                    ; $5A19: $73
    ld h, l                                       ; $5A1A: $65
    ld [hl], d                                    ; $5A1B: $72
    jr nz, jr_01D_5A95                            ; $5A1C: $20 $77

    ld h, c                                       ; $5A1E: $61
    ld [hl], e                                    ; $5A1F: $73
    inc l                                         ; $5A20: $2C
    cp $62                                        ; $5A21: $FE $62
    ld [hl], l                                    ; $5A23: $75
    ld [hl], h                                    ; $5A24: $74
    jr nz, jr_01D_5A70                            ; $5A25: $20 $49

    jr nz, jr_01D_5A8D                            ; $5A27: $20 $64

    ld l, c                                       ; $5A29: $69

jr_01D_5A2A:
    ld h, h                                       ; $5A2A: $64
    ld l, [hl]                                    ; $5A2B: $6E
    daa                                           ; $5A2C: $27
    ld [hl], h                                    ; $5A2D: $74
    rst $38                                       ; $5A2E: $FF
    ld h, [hl]                                    ; $5A2F: $66
    ld l, a                                       ; $5A30: $6F
    ld l, h                                       ; $5A31: $6C
    ld l, h                                       ; $5A32: $6C
    ld l, a                                       ; $5A33: $6F
    ld [hl], a                                    ; $5A34: $77
    jr nz, jr_01D_5A9F                            ; $5A35: $20 $68

    ld l, c                                       ; $5A37: $69
    ld l, l                                       ; $5A38: $6D
    ld l, $FE                                     ; $5A39: $2E $FE

jr_01D_5A3B:
    db $FD                                        ; $5A3B: $FD
    sbc e                                         ; $5A3C: $9B

jr_01D_5A3D:
    ld hl, sp+$4A                                 ; $5A3D: $F8 $4A
    sbc a                                         ; $5A3F: $9F
    ld d, b                                       ; $5A40: $50
    ld h, l                                       ; $5A41: $65

jr_01D_5A42:
    ld [hl], d                                    ; $5A42: $72
    ld l, b                                       ; $5A43: $68
    ld h, c                                       ; $5A44: $61
    ld [hl], b                                    ; $5A45: $70
    ld [hl], e                                    ; $5A46: $73
    jr nz, jr_01D_5AC2                            ; $5A47: $20 $79

    ld l, a                                       ; $5A49: $6F
    ld [hl], l                                    ; $5A4A: $75
    rst $38                                       ; $5A4B: $FF
    ld [hl], e                                    ; $5A4C: $73
    ld l, b                                       ; $5A4D: $68
    ld l, a                                       ; $5A4E: $6F
    ld [hl], l                                    ; $5A4F: $75
    ld l, h                                       ; $5A50: $6C
    ld h, h                                       ; $5A51: $64

jr_01D_5A52:
    cp $69                                        ; $5A52: $FE $69
    ld l, [hl]                                    ; $5A54: $6E
    halt                                          ; $5A55: $76
    ld h, l                                       ; $5A56: $65
    ld [hl], e                                    ; $5A57: $73
    ld [hl], h                                    ; $5A58: $74
    ld l, c                                       ; $5A59: $69

jr_01D_5A5A:
    ld h, a                                       ; $5A5A: $67
    ld h, c                                       ; $5A5B: $61
    ld [hl], h                                    ; $5A5C: $74
    ld h, l                                       ; $5A5D: $65

jr_01D_5A5E:
    ld l, $FE                                     ; $5A5E: $2E $FE
    db $FD                                        ; $5A60: $FD
    sbc d                                         ; $5A61: $9A
    add hl, bc                                    ; $5A62: $09
    ld [bc], a                                    ; $5A63: $02
    dec e                                         ; $5A64: $1D
    rst $10                                       ; $5A65: $D7
    halt                                          ; $5A66: $76
    add hl, bc                                    ; $5A67: $09
    nop                                           ; $5A68: $00
    jr nz, jr_01D_5A2A                            ; $5A69: $20 $BF

    ld d, b                                       ; $5A6B: $50
    rlca                                          ; $5A6C: $07
    nop                                           ; $5A6D: $00
    add c                                         ; $5A6E: $81
    ld e, l                                       ; $5A6F: $5D

jr_01D_5A70:
    ld b, d                                       ; $5A70: $42
    xor a                                         ; $5A71: $AF
    xor h                                         ; $5A72: $AC
    and c                                         ; $5A73: $A1
    ld [bc], a                                    ; $5A74: $02
    sub e                                         ; $5A75: $93
    ld h, l                                       ; $5A76: $65
    cpl                                           ; $5A77: $2F
    ld c, l                                       ; $5A78: $4D

jr_01D_5A79:
    ld c, a                                       ; $5A79: $4F
    ld h, h                                       ; $5A7A: $64
    add sp, $50                                   ; $5A7B: $E8 $50
    ld l, c                                       ; $5A7D: $69
    ld a, [c]                                     ; $5A7E: $F2
    ld d, b                                       ; $5A7F: $50
    ld h, [hl]                                    ; $5A80: $66
    ret nz                                        ; $5A81: $C0

    ld e, h                                       ; $5A82: $5C
    ld hl, $0005                                  ; $5A83: $21 $05 $00
    ld l, e                                       ; $5A86: $6B
    ld c, d                                       ; $5A87: $4A
    add hl, bc                                    ; $5A88: $09
    ld b, $63                                     ; $5A89: $06 $63
    ret nc                                        ; $5A8B: $D0

    nop                                           ; $5A8C: $00

jr_01D_5A8D:
    dec e                                         ; $5A8D: $1D
    rst $10                                       ; $5A8E: $D7
    ld e, d                                       ; $5A8F: $5A
    ld [hl+], a                                   ; $5A90: $22
    inc b                                         ; $5A91: $04
    ld b, b                                       ; $5A92: $40
    dec b                                         ; $5A93: $05
    ld [bc], a                                    ; $5A94: $02

jr_01D_5A95:
    db $ED                                        ; $5A95: $ED
    ld h, e                                       ; $5A96: $63
    ld [$4404], sp                                ; $5A97: $08 $04 $44
    ret nc                                        ; $5A9A: $D0

    nop                                           ; $5A9B: $00
    dec e                                         ; $5A9C: $1D
    ld hl, sp+$5A                                 ; $5A9D: $F8 $5A

jr_01D_5A9F:
    dec e                                         ; $5A9F: $1D
    call c, $0576                                 ; $5AA0: $DC $76 $05
    inc bc                                        ; $5AA3: $03
    ld l, e                                       ; $5AA4: $6B

jr_01D_5AA5:
    ld c, d                                       ; $5AA5: $4A
    ld a, [bc]                                    ; $5AA6: $0A
    inc b                                         ; $5AA7: $04
    ld b, [hl]                                    ; $5AA8: $46
    ret nc                                        ; $5AA9: $D0

    ld [hl+], a                                   ; $5AAA: $22
    dec e                                         ; $5AAB: $1D
    inc h                                         ; $5AAC: $24
    ld e, e                                       ; $5AAD: $5B
    ld [hl+], a                                   ; $5AAE: $22
    inc b                                         ; $5AAF: $04
    ld b, b                                       ; $5AB0: $40
    ld l, e                                       ; $5AB1: $6B
    ld [hl+], a                                   ; $5AB2: $22
    ld a, [bc]                                    ; $5AB3: $0A
    ldh a, [$4E]                                  ; $5AB4: $F0 $4E
    nop                                           ; $5AB6: $00
    add b                                         ; $5AB7: $80
    nop                                           ; $5AB8: $00
    ld l, e                                       ; $5AB9: $6B
    ld a, [hl+]                                   ; $5ABA: $2A
    ld a, [bc]                                    ; $5ABB: $0A
    or b                                          ; $5ABC: $B0
    ld c, b                                       ; $5ABD: $48
    jr nz, jr_01D_5A42                            ; $5ABE: $20 $82

    nop                                           ; $5AC0: $00

jr_01D_5AC1:
    dec bc                                        ; $5AC1: $0B

jr_01D_5AC2:
    nop                                           ; $5AC2: $00
    dec bc                                        ; $5AC3: $0B
    ld [bc], a                                    ; $5AC4: $02
    dec bc                                        ; $5AC5: $0B
    inc bc                                        ; $5AC6: $03
    add d                                         ; $5AC7: $82
    rra                                           ; $5AC8: $1F
    ld a, [de]                                    ; $5AC9: $1A
    ld l, a                                       ; $5ACA: $6F
    rrca                                          ; $5ACB: $0F
    rst $38                                       ; $5ACC: $FF

jr_01D_5ACD:
    ld a, a                                       ; $5ACD: $7F
    sub h                                         ; $5ACE: $94
    halt                                          ; $5ACF: $76
    jr nz, jr_01D_5AE1                            ; $5AD0: $20 $0F

jr_01D_5AD2:
    ld e, e                                       ; $5AD2: $5B
    dec e                                         ; $5AD3: $1D
    ld d, b                                       ; $5AD4: $50
    ld e, e                                       ; $5AD5: $5B
    ld b, d                                       ; $5AD6: $42
    inc d                                         ; $5AD7: $14
    jr nz, jr_01D_5AC1                            ; $5AD8: $20 $E7

    ld d, b                                       ; $5ADA: $50
    ld e, h                                       ; $5ADB: $5C
    inc bc                                        ; $5ADC: $03
    inc bc                                        ; $5ADD: $03
    inc d                                         ; $5ADE: $14
    jr nz, jr_01D_5AD2                            ; $5ADF: $20 $F1

jr_01D_5AE1:
    ld d, b                                       ; $5AE1: $50
    ld e, h                                       ; $5AE2: $5C
    inc b                                         ; $5AE3: $04
    inc b                                         ; $5AE4: $04
    dec d                                         ; $5AE5: $15
    jr nz, @-$0D                                  ; $5AE6: $20 $F1

    ld d, b                                       ; $5AE8: $50
    jr nz, jr_01D_5B0B                            ; $5AE9: $20 $20

    ret                                           ; $5AEB: $C9


    ld d, b                                       ; $5AEC: $50
    db $10                                        ; $5AED: $10
    jr nz, jr_01D_5AA5                            ; $5AEE: $20 $B5

    ld d, b                                       ; $5AF0: $50
    db $10                                        ; $5AF1: $10
    jr nz, jr_01D_5A9F                            ; $5AF2: $20 $AB

    ld d, b                                       ; $5AF4: $50
    nop                                           ; $5AF5: $00
    nop                                           ; $5AF6: $00
    ld b, d                                       ; $5AF7: $42
    inc d                                         ; $5AF8: $14
    ld c, $15                                     ; $5AF9: $0E $15
    ld h, c                                       ; $5AFB: $61
    ld e, h                                       ; $5AFC: $5C
    inc bc                                        ; $5AFD: $03
    inc bc                                        ; $5AFE: $03
    inc d                                         ; $5AFF: $14
    ld c, $ED                                     ; $5B00: $0E $ED
    ld h, b                                       ; $5B02: $60
    ld e, h                                       ; $5B03: $5C
    inc b                                         ; $5B04: $04
    inc b                                         ; $5B05: $04
    dec d                                         ; $5B06: $15
    ld c, $ED                                     ; $5B07: $0E $ED
    ld h, b                                       ; $5B09: $60
    db $10                                        ; $5B0A: $10

jr_01D_5B0B:
    ld c, $15                                     ; $5B0B: $0E $15
    ld h, c                                       ; $5B0D: $61
    db $10                                        ; $5B0E: $10
    ld c, $7F                                     ; $5B0F: $0E $7F
    ld h, b                                       ; $5B11: $60
    db $10                                        ; $5B12: $10
    ld c, $D9                                     ; $5B13: $0E $D9
    ld h, b                                       ; $5B15: $60
    nop                                           ; $5B16: $00
    nop                                           ; $5B17: $00
    ld h, d                                       ; $5B18: $62
    ld bc, $0007                                  ; $5B19: $01 $07 $00
    add c                                         ; $5B1C: $81
    ld e, l                                       ; $5B1D: $5D
    add hl, bc                                    ; $5B1E: $09
    nop                                           ; $5B1F: $00
    jr nz, jr_01D_5ACD                            ; $5B20: $20 $AB

    ld d, b                                       ; $5B22: $50
    ld b, d                                       ; $5B23: $42
    inc d                                         ; $5B24: $14
    ld c, $2C                                     ; $5B25: $0E $2C
    ld d, h                                       ; $5B27: $54
    ld e, h                                       ; $5B28: $5C
    nop                                           ; $5B29: $00
    ld [bc], a                                    ; $5B2A: $02
    inc d                                         ; $5B2B: $14
    ld c, $04                                     ; $5B2C: $0E $04
    ld d, h                                       ; $5B2E: $54
    ld e, h                                       ; $5B2F: $5C
    ld bc, $1402                                  ; $5B30: $01 $02 $14
    ld c, $2C                                     ; $5B33: $0E $2C
    ld d, h                                       ; $5B35: $54
    ld e, h                                       ; $5B36: $5C
    ld [bc], a                                    ; $5B37: $02
    ld [bc], a                                    ; $5B38: $02
    inc d                                         ; $5B39: $14
    ld c, $04                                     ; $5B3A: $0E $04
    ld d, h                                       ; $5B3C: $54
    ld e, h                                       ; $5B3D: $5C
    inc b                                         ; $5B3E: $04
    inc b                                         ; $5B3F: $04
    dec d                                         ; $5B40: $15
    ld c, $80                                     ; $5B41: $0E $80
    ld d, e                                       ; $5B43: $53
    jr nc, jr_01D_5B54                            ; $5B44: $30 $0E

    sub b                                         ; $5B46: $90
    ld d, e                                       ; $5B47: $53
    db $10                                        ; $5B48: $10
    ld c, $80                                     ; $5B49: $0E $80
    ld d, e                                       ; $5B4B: $53
    jr nz, jr_01D_5B4E                            ; $5B4C: $20 $00

jr_01D_5B4E:
    add hl, de                                    ; $5B4E: $19
    ld b, d                                       ; $5B4F: $42
    sbc e                                         ; $5B50: $9B
    ld a, b                                       ; $5B51: $78
    ld [hl], b                                    ; $5B52: $70
    sbc a                                         ; $5B53: $9F

jr_01D_5B54:
    ld l, $2E                                     ; $5B54: $2E $2E
    ld b, c                                       ; $5B56: $41
    ld l, [hl]                                    ; $5B57: $6E
    ld h, h                                       ; $5B58: $64
    jr nz, jr_01D_5BCF                            ; $5B59: $20 $74

    ld l, b                                       ; $5B5B: $68
    ld h, l                                       ; $5B5C: $65
    ld l, [hl]                                    ; $5B5D: $6E
    jr nz, jr_01D_5BA9                            ; $5B5E: $20 $49

    rst $38                                       ; $5B60: $FF
    ld h, e                                       ; $5B61: $63
    ld h, c                                       ; $5B62: $61
    ld l, l                                       ; $5B63: $6D
    ld h, l                                       ; $5B64: $65
    jr nz, jr_01D_5BCF                            ; $5B65: $20 $68

    ld h, l                                       ; $5B67: $65
    ld [hl], d                                    ; $5B68: $72
    ld h, l                                       ; $5B69: $65
    ld hl, $FDFE                                  ; $5B6A: $21 $FE $FD
    sbc e                                         ; $5B6D: $9B
    ld hl, sp+$4A                                 ; $5B6E: $F8 $4A
    ld e, h                                       ; $5B70: $5C
    nop                                           ; $5B71: $00
    ld [bc], a                                    ; $5B72: $02
    sbc a                                         ; $5B73: $9F
    ld d, h                                       ; $5B74: $54
    ld l, b                                       ; $5B75: $68
    ld h, c                                       ; $5B76: $61
    ld [hl], h                                    ; $5B77: $74
    jr nz, @+$6B                                  ; $5B78: $20 $69

    ld [hl], e                                    ; $5B7A: $73
    jr nz, jr_01D_5BDE                            ; $5B7B: $20 $61

    ld l, [hl]                                    ; $5B7D: $6E
    rst $38                                       ; $5B7E: $FF
    ld h, c                                       ; $5B7F: $61
    ld l, l                                       ; $5B80: $6D
    ld h, c                                       ; $5B81: $61
    ld a, d                                       ; $5B82: $7A
    ld l, c                                       ; $5B83: $69
    ld l, [hl]                                    ; $5B84: $6E
    ld h, a                                       ; $5B85: $67
    jr nz, @+$6C                                  ; $5B86: $20 $6A

    ld l, a                                       ; $5B88: $6F
    ld [hl], l                                    ; $5B89: $75
    ld [hl], d                                    ; $5B8A: $72
    ld l, [hl]                                    ; $5B8B: $6E
    ld h, l                                       ; $5B8C: $65
    ld a, c                                       ; $5B8D: $79
    cp $4B                                        ; $5B8E: $FE $4B
    ld a, c                                       ; $5B90: $79
    ld [hl], d                                    ; $5B91: $72
    ld l, a                                       ; $5B92: $6F
    ld [hl], e                                    ; $5B93: $73
    ld hl, $59FE                                  ; $5B94: $21 $FE $59
    ld l, a                                       ; $5B97: $6F
    ld [hl], l                                    ; $5B98: $75
    jr nz, jr_01D_5BFC                            ; $5B99: $20 $61

    ld [hl], d                                    ; $5B9B: $72
    ld h, l                                       ; $5B9C: $65
    jr nz, jr_01D_5C13                            ; $5B9D: $20 $74

    ld [hl], d                                    ; $5B9F: $72
    ld [hl], l                                    ; $5BA0: $75
    ld l, h                                       ; $5BA1: $6C
    ld a, c                                       ; $5BA2: $79
    rst $38                                       ; $5BA3: $FF
    ld l, h                                       ; $5BA4: $6C
    ld l, c                                       ; $5BA5: $69
    halt                                          ; $5BA6: $76
    ld l, c                                       ; $5BA7: $69
    ld l, [hl]                                    ; $5BA8: $6E

jr_01D_5BA9:
    ld h, a                                       ; $5BA9: $67
    jr nz, jr_01D_5C21                            ; $5BAA: $20 $75

    ld [hl], b                                    ; $5BAC: $70
    jr nz, jr_01D_5C23                            ; $5BAD: $20 $74

    ld l, a                                       ; $5BAF: $6F
    cp $74                                        ; $5BB0: $FE $74
    ld l, b                                       ; $5BB2: $68
    ld h, l                                       ; $5BB3: $65
    jr nz, @+$6E                                  ; $5BB4: $20 $6C

    ld h, l                                       ; $5BB6: $65
    ld h, a                                       ; $5BB7: $67
    ld h, l                                       ; $5BB8: $65
    ld l, [hl]                                    ; $5BB9: $6E
    ld h, h                                       ; $5BBA: $64
    ld l, $2E                                     ; $5BBB: $2E $2E
    ld l, $FF                                     ; $5BBD: $2E $FF
    ld b, c                                       ; $5BBF: $41
    ld [hl], d                                    ; $5BC0: $72
    ld h, l                                       ; $5BC1: $65
    jr nz, jr_01D_5C3D                            ; $5BC2: $20 $79

    ld l, a                                       ; $5BC4: $6F
    ld [hl], l                                    ; $5BC5: $75
    jr nz, jr_01D_5C2F                            ; $5BC6: $20 $67

    ld l, a                                       ; $5BC8: $6F
    ld l, c                                       ; $5BC9: $69
    ld l, [hl]                                    ; $5BCA: $6E
    ld h, a                                       ; $5BCB: $67
    cp $62                                        ; $5BCC: $FE $62
    ld h, c                                       ; $5BCE: $61

jr_01D_5BCF:
    ld h, e                                       ; $5BCF: $63
    ld l, e                                       ; $5BD0: $6B
    jr nz, jr_01D_5C47                            ; $5BD1: $20 $74

    ld l, a                                       ; $5BD3: $6F
    jr nz, jr_01D_5C4A                            ; $5BD4: $20 $74

    ld l, b                                       ; $5BD6: $68
    ld h, l                                       ; $5BD7: $65
    rst $38                                       ; $5BD8: $FF
    ld b, e                                       ; $5BD9: $43
    ld h, c                                       ; $5BDA: $61
    ld l, h                                       ; $5BDB: $6C
    ld h, h                                       ; $5BDC: $64
    ccf                                           ; $5BDD: $3F

jr_01D_5BDE:
    cp $FD                                        ; $5BDE: $FE $FD
    sbc c                                         ; $5BE0: $99
    ld e, h                                       ; $5BE1: $5C
    ld bc, $9B02                                  ; $5BE2: $01 $02 $9B
    ld a, b                                       ; $5BE5: $78
    ld [hl], b                                    ; $5BE6: $70
    sbc a                                         ; $5BE7: $9F
    jr nz, jr_01D_5C3D                            ; $5BE8: $20 $53

    ld [hl], l                                    ; $5BEA: $75
    ld [hl], d                                    ; $5BEB: $72
    ld h, l                                       ; $5BEC: $65
    rst $38                                       ; $5BED: $FF
    jr nz, jr_01D_5C3E                            ; $5BEE: $20 $4E

    ld c, a                                       ; $5BF0: $4F
    ld hl, $9CFD                                  ; $5BF1: $21 $FD $9C
    ld [bc], a                                    ; $5BF4: $02
    dec e                                         ; $5BF5: $1D
    inc h                                         ; $5BF6: $24
    ld e, h                                       ; $5BF7: $5C
    dec e                                         ; $5BF8: $1D
    ei                                            ; $5BF9: $FB
    ld e, e                                       ; $5BFA: $5B
    sbc c                                         ; $5BFB: $99

jr_01D_5BFC:
    sbc e                                         ; $5BFC: $9B
    ld hl, sp+$4A                                 ; $5BFD: $F8 $4A
    sbc a                                         ; $5BFF: $9F
    ld b, d                                       ; $5C00: $42
    ld d, l                                       ; $5C01: $55
    ld d, h                                       ; $5C02: $54
    jr nz, jr_01D_5C59                            ; $5C03: $20 $54

    ld c, b                                       ; $5C05: $48
    ld c, a                                       ; $5C06: $4F
    ld d, l                                       ; $5C07: $55
    jr nz, jr_01D_5C57                            ; $5C08: $20 $4D

    ld d, l                                       ; $5C0A: $55
    ld d, e                                       ; $5C0B: $53
    ld d, h                                       ; $5C0C: $54
    ld hl, $FDFE                                  ; $5C0D: $21 $FE $FD
    sbc e                                         ; $5C10: $9B
    ld a, b                                       ; $5C11: $78
    ld [hl], b                                    ; $5C12: $70

jr_01D_5C13:
    sbc a                                         ; $5C13: $9F
    ld d, a                                       ; $5C14: $57
    ld h, l                                       ; $5C15: $65
    ld l, h                                       ; $5C16: $6C
    ld l, h                                       ; $5C17: $6C
    ld l, $2E                                     ; $5C18: $2E $2E
    ld l, $2E                                     ; $5C1A: $2E $2E
    cp $4F                                        ; $5C1C: $FE $4F
    ld l, e                                       ; $5C1E: $6B
    ld h, c                                       ; $5C1F: $61
    ld a, c                                       ; $5C20: $79

jr_01D_5C21:
    ld l, $FE                                     ; $5C21: $2E $FE

jr_01D_5C23:
    db $FD                                        ; $5C23: $FD
    sbc e                                         ; $5C24: $9B
    ld hl, sp+$4A                                 ; $5C25: $F8 $4A
    ld e, h                                       ; $5C27: $5C
    ld [bc], a                                    ; $5C28: $02
    ld [bc], a                                    ; $5C29: $02
    sbc a                                         ; $5C2A: $9F
    ld b, a                                       ; $5C2B: $47
    ld l, a                                       ; $5C2C: $6F
    ld l, a                                       ; $5C2D: $6F
    ld h, h                                       ; $5C2E: $64

jr_01D_5C2F:
    ld hl, $45FF                                  ; $5C2F: $21 $FF $45
    halt                                          ; $5C32: $76
    ld h, l                                       ; $5C33: $65
    ld l, [hl]                                    ; $5C34: $6E
    jr nz, jr_01D_5CAB                            ; $5C35: $20 $74

    ld l, b                                       ; $5C37: $68
    ld h, l                                       ; $5C38: $65
    cp $70                                        ; $5C39: $FE $70
    ld h, l                                       ; $5C3B: $65
    ld l, a                                       ; $5C3C: $6F

jr_01D_5C3D:
    ld [hl], b                                    ; $5C3D: $70

jr_01D_5C3E:
    ld l, h                                       ; $5C3E: $6C
    ld h, l                                       ; $5C3F: $65
    jr nz, jr_01D_5CB1                            ; $5C40: $20 $6F

    ld h, [hl]                                    ; $5C42: $66
    rst $38                                       ; $5C43: $FF
    ld [hl], h                                    ; $5C44: $74
    ld l, b                                       ; $5C45: $68
    ld h, l                                       ; $5C46: $65

jr_01D_5C47:
    jr nz, jr_01D_5C8C                            ; $5C47: $20 $43

    ld h, c                                       ; $5C49: $61

jr_01D_5C4A:
    ld l, h                                       ; $5C4A: $6C
    ld h, h                                       ; $5C4B: $64
    cp $64                                        ; $5C4C: $FE $64
    ld l, a                                       ; $5C4E: $6F
    ld l, [hl]                                    ; $5C4F: $6E
    daa                                           ; $5C50: $27
    ld [hl], h                                    ; $5C51: $74
    jr nz, jr_01D_5CB8                            ; $5C52: $20 $64

    ld h, l                                       ; $5C54: $65
    ld [hl], e                                    ; $5C55: $73
    ld h, l                                       ; $5C56: $65

jr_01D_5C57:
    ld [hl], d                                    ; $5C57: $72
    halt                                          ; $5C58: $76

jr_01D_5C59:
    ld h, l                                       ; $5C59: $65
    rst $38                                       ; $5C5A: $FF
    ld l, a                                       ; $5C5B: $6F
    ld l, [hl]                                    ; $5C5C: $6E
    ld h, l                                       ; $5C5D: $65
    jr nz, jr_01D_5CCF                            ; $5C5E: $20 $6F

    ld h, [hl]                                    ; $5C60: $66
    jr nz, @+$76                                  ; $5C61: $20 $74

    ld l, b                                       ; $5C63: $68
    ld l, a                                       ; $5C64: $6F
    ld [hl], e                                    ; $5C65: $73
    ld h, l                                       ; $5C66: $65
    cp $74                                        ; $5C67: $FE $74
    ld h, l                                       ; $5C69: $65
    ld [hl], d                                    ; $5C6A: $72
    ld [hl], d                                    ; $5C6B: $72
    ld l, c                                       ; $5C6C: $69
    ld h, d                                       ; $5C6D: $62
    ld l, h                                       ; $5C6E: $6C
    ld h, l                                       ; $5C6F: $65
    rst $38                                       ; $5C70: $FF
    ld b, a                                       ; $5C71: $47
    ld h, l                                       ; $5C72: $65
    ld a, c                                       ; $5C73: $79
    ld [hl], e                                    ; $5C74: $73
    ld h, l                                       ; $5C75: $65
    ld [hl], d                                    ; $5C76: $72
    ld [hl], e                                    ; $5C77: $73
    ld l, $FE                                     ; $5C78: $2E $FE
    db $FD                                        ; $5C7A: $FD
    sbc e                                         ; $5C7B: $9B
    ld c, b                                       ; $5C7C: $48
    ld b, [hl]                                    ; $5C7D: $46
    ld e, h                                       ; $5C7E: $5C
    inc bc                                        ; $5C7F: $03
    inc bc                                        ; $5C80: $03
    sbc a                                         ; $5C81: $9F
    ld c, d                                       ; $5C82: $4A

jr_01D_5C83:
    ld [hl], l                                    ; $5C83: $75
    ld [hl], e                                    ; $5C84: $73
    ld [hl], h                                    ; $5C85: $74
    jr nz, @+$64                                  ; $5C86: $20 $62

    ld h, c                                       ; $5C88: $61
    ld [hl], d                                    ; $5C89: $72
    ld h, l                                       ; $5C8A: $65
    ld l, h                                       ; $5C8B: $6C

jr_01D_5C8C:
    ld a, c                                       ; $5C8C: $79
    ld l, $2E                                     ; $5C8D: $2E $2E
    ld l, $FE                                     ; $5C8F: $2E $FE
    db $FD                                        ; $5C91: $FD
    sbc e                                         ; $5C92: $9B
    ld hl, sp+$4A                                 ; $5C93: $F8 $4A
    sbc a                                         ; $5C95: $9F
    ld c, a                                       ; $5C96: $4F
    ld c, e                                       ; $5C97: $4B
    jr nz, jr_01D_5CDF                            ; $5C98: $20 $45

    ld l, c                                       ; $5C9A: $69
    ld h, h                                       ; $5C9B: $64
    ld l, a                                       ; $5C9C: $6F
    ld l, [hl]                                    ; $5C9D: $6E
    ld l, $FE                                     ; $5C9E: $2E $FE
    ld d, h                                       ; $5CA0: $54
    ld l, b                                       ; $5CA1: $68
    ld h, c                                       ; $5CA2: $61
    ld [hl], h                                    ; $5CA3: $74
    jr nz, jr_01D_5D0F                            ; $5CA4: $20 $69

    ld [hl], e                                    ; $5CA6: $73
    jr nz, jr_01D_5D0A                            ; $5CA7: $20 $61

    rst $38                                       ; $5CA9: $FF
    ld l, h                                       ; $5CAA: $6C

jr_01D_5CAB:
    ld l, a                                       ; $5CAB: $6F
    ld l, [hl]                                    ; $5CAC: $6E
    ld h, a                                       ; $5CAD: $67
    jr nz, jr_01D_5D15                            ; $5CAE: $20 $65

    ld l, [hl]                                    ; $5CB0: $6E

jr_01D_5CB1:
    ld l, a                                       ; $5CB1: $6F
    ld [hl], l                                    ; $5CB2: $75
    ld h, a                                       ; $5CB3: $67
    ld l, b                                       ; $5CB4: $68
    cp $62                                        ; $5CB5: $FE $62
    ld [hl], d                                    ; $5CB7: $72

jr_01D_5CB8:
    ld h, l                                       ; $5CB8: $65
    ld h, c                                       ; $5CB9: $61
    ld l, e                                       ; $5CBA: $6B
    ld l, $FE                                     ; $5CBB: $2E $FE
    db $FD                                        ; $5CBD: $FD
    sbc e                                         ; $5CBE: $9B
    ld c, b                                       ; $5CBF: $48
    ld b, [hl]                                    ; $5CC0: $46
    ld e, h                                       ; $5CC1: $5C
    inc b                                         ; $5CC2: $04
    inc b                                         ; $5CC3: $04
    sbc a                                         ; $5CC4: $9F
    ld l, $2E                                     ; $5CC5: $2E $2E
    ld l, $2E                                     ; $5CC7: $2E $2E
    ld l, $2E                                     ; $5CC9: $2E $2E
    ld l, $2E                                     ; $5CCB: $2E $2E
    cp $FD                                        ; $5CCD: $FE $FD

jr_01D_5CCF:
    sbc d                                         ; $5CCF: $9A
    rlca                                          ; $5CD0: $07
    nop                                           ; $5CD1: $00
    add c                                         ; $5CD2: $81
    ld e, l                                       ; $5CD3: $5D
    add hl, bc                                    ; $5CD4: $09
    nop                                           ; $5CD5: $00
    jr nz, jr_01D_5C83                            ; $5CD6: $20 $AB

    ld d, b                                       ; $5CD8: $50
    ld b, d                                       ; $5CD9: $42
    sub e                                         ; $5CDA: $93
    ld h, l                                       ; $5CDB: $65
    cpl                                           ; $5CDC: $2F
    ld c, l                                       ; $5CDD: $4D
    ld c, a                                       ; $5CDE: $4F

jr_01D_5CDF:
    ld h, h                                       ; $5CDF: $64
    add sp, $50                                   ; $5CE0: $E8 $50
    ld l, c                                       ; $5CE2: $69
    ld a, [c]                                     ; $5CE3: $F2
    ld d, b                                       ; $5CE4: $50
    ld h, [hl]                                    ; $5CE5: $66
    ret nz                                        ; $5CE6: $C0

    ld e, h                                       ; $5CE7: $5C
    ld hl, $0005                                  ; $5CE8: $21 $05 $00
    ld l, e                                       ; $5CEB: $6B
    ld c, d                                       ; $5CEC: $4A
    rlca                                          ; $5CED: $07
    dec bc                                        ; $5CEE: $0B
    xor h                                         ; $5CEF: $AC
    ret nc                                        ; $5CF0: $D0

    nop                                           ; $5CF1: $00
    dec e                                         ; $5CF2: $1D
    push af                                       ; $5CF3: $F5
    ld e, l                                       ; $5CF4: $5D
    ld [hl+], a                                   ; $5CF5: $22
    dec b                                         ; $5CF6: $05
    ld b, b                                       ; $5CF7: $40
    dec b                                         ; $5CF8: $05
    ld [bc], a                                    ; $5CF9: $02
    db $ED                                        ; $5CFA: $ED
    ld h, e                                       ; $5CFB: $63
    ld [$4404], sp                                ; $5CFC: $08 $04 $44
    ret nc                                        ; $5CFF: $D0

    nop                                           ; $5D00: $00
    dec e                                         ; $5D01: $1D
    ld c, c                                       ; $5D02: $49
    ld e, l                                       ; $5D03: $5D
    dec e                                         ; $5D04: $1D
    call c, $0576                                 ; $5D05: $DC $76 $05
    inc bc                                        ; $5D08: $03
    ld l, e                                       ; $5D09: $6B

jr_01D_5D0A:
    ld c, d                                       ; $5D0A: $4A
    ld [$6206], sp                                ; $5D0B: $08 $06 $62
    ret nc                                        ; $5D0E: $D0

jr_01D_5D0F:
    ld [hl+], a                                   ; $5D0F: $22
    dec e                                         ; $5D10: $1D
    xor b                                         ; $5D11: $A8
    ld e, [hl]                                    ; $5D12: $5E
    ld [hl+], a                                   ; $5D13: $22
    dec b                                         ; $5D14: $05

jr_01D_5D15:
    ld b, b                                       ; $5D15: $40
    dec b                                         ; $5D16: $05
    inc b                                         ; $5D17: $04
    ld l, e                                       ; $5D18: $6B
    ld c, d                                       ; $5D19: $4A
    rlca                                          ; $5D1A: $07
    dec bc                                        ; $5D1B: $0B
    xor h                                         ; $5D1C: $AC
    ret nc                                        ; $5D1D: $D0

    dec h                                         ; $5D1E: $25
    dec e                                         ; $5D1F: $1D
    adc d                                         ; $5D20: $8A
    ld e, [hl]                                    ; $5D21: $5E
    ld [hl+], a                                   ; $5D22: $22
    dec b                                         ; $5D23: $05
    ld b, b                                       ; $5D24: $40
    ld l, e                                       ; $5D25: $6B
    ld [hl+], a                                   ; $5D26: $22
    ld a, [bc]                                    ; $5D27: $0A
    ldh a, [$4E]                                  ; $5D28: $F0 $4E
    nop                                           ; $5D2A: $00
    add b                                         ; $5D2B: $80
    nop                                           ; $5D2C: $00
    ld l, e                                       ; $5D2D: $6B
    inc bc                                        ; $5D2E: $03
    dec c                                         ; $5D2F: $0D
    or b                                          ; $5D30: $B0
    ld e, b                                       ; $5D31: $58
    jr nz, @-$7C                                  ; $5D32: $20 $82

    nop                                           ; $5D34: $00
    ld l, e                                       ; $5D35: $6B
    ld a, [hl+]                                   ; $5D36: $2A
    ld a, [bc]                                    ; $5D37: $0A
    or b                                          ; $5D38: $B0
    ld c, b                                       ; $5D39: $48
    ld d, b                                       ; $5D3A: $50
    add d                                         ; $5D3B: $82
    nop                                           ; $5D3C: $00
    dec bc                                        ; $5D3D: $0B
    nop                                           ; $5D3E: $00
    dec bc                                        ; $5D3F: $0B
    ld [bc], a                                    ; $5D40: $02
    add d                                         ; $5D41: $82
    rra                                           ; $5D42: $1F
    ld a, [de]                                    ; $5D43: $1A
    sub h                                         ; $5D44: $94
    xor c                                         ; $5D45: $A9
    dec b                                         ; $5D46: $05
    nop                                           ; $5D47: $00
    ld b, d                                       ; $5D48: $42
    inc d                                         ; $5D49: $14
    ld c, $D9                                     ; $5D4A: $0E $D9
    ld h, b                                       ; $5D4C: $60
    ld h, b                                       ; $5D4D: $60
    ld de, $0E14                                  ; $5D4E: $11 $14 $0E
    dec d                                         ; $5D51: $15
    ld h, c                                       ; $5D52: $61
    ld h, d                                       ; $5D53: $62
    rlca                                          ; $5D54: $07
    dec d                                         ; $5D55: $15
    ld c, $6F                                     ; $5D56: $0E $6F
    ld h, b                                       ; $5D58: $60
    stop                                          ; $5D59: $10 $00
    dec d                                         ; $5D5B: $15
    ld c, $E3                                     ; $5D5C: $0E $E3
    ld h, b                                       ; $5D5E: $60
    db $10                                        ; $5D5F: $10
    ld c, $7F                                     ; $5D60: $0E $7F
    ld h, b                                       ; $5D62: $60
    jr nz, jr_01D_5D73                            ; $5D63: $20 $0E

    db $ED                                        ; $5D65: $ED
    ld h, b                                       ; $5D66: $60
    nop                                           ; $5D67: $00
    nop                                           ; $5D68: $00
    ld h, d                                       ; $5D69: $62
    jr z, jr_01D_5D81                             ; $5D6A: $28 $15

    ld c, $6F                                     ; $5D6C: $0E $6F
    ld h, b                                       ; $5D6E: $60
    jr nz, jr_01D_5D7F                            ; $5D6F: $20 $0E

    db $E3                                        ; $5D71: $E3
    ld h, b                                       ; $5D72: $60

jr_01D_5D73:
    nop                                           ; $5D73: $00
    nop                                           ; $5D74: $00
    ld h, d                                       ; $5D75: $62
    add hl, hl                                    ; $5D76: $29
    dec d                                         ; $5D77: $15
    ld c, $7F                                     ; $5D78: $0E $7F
    ld h, b                                       ; $5D7A: $60
    jr nz, @+$10                                  ; $5D7B: $20 $0E

    db $ED                                        ; $5D7D: $ED
    ld h, b                                       ; $5D7E: $60

jr_01D_5D7F:
    nop                                           ; $5D7F: $00
    nop                                           ; $5D80: $00

jr_01D_5D81:
    ld h, d                                       ; $5D81: $62
    ld a, [hl+]                                   ; $5D82: $2A
    dec d                                         ; $5D83: $15
    ld c, $6F                                     ; $5D84: $0E $6F
    ld h, b                                       ; $5D86: $60
    stop                                          ; $5D87: $10 $00
    inc d                                         ; $5D89: $14
    ld c, $15                                     ; $5D8A: $0E $15
    ld h, c                                       ; $5D8C: $61
    ld h, d                                       ; $5D8D: $62
    rla                                           ; $5D8E: $17
    dec d                                         ; $5D8F: $15
    ld c, $4F                                     ; $5D90: $0E $4F
    ld h, b                                       ; $5D92: $60
    ld [$CF0E], sp                                ; $5D93: $08 $0E $CF
    ld h, b                                       ; $5D96: $60
    jr nc, @+$10                                  ; $5D97: $30 $0E

    ld e, a                                       ; $5D99: $5F
    ld h, b                                       ; $5D9A: $60
    db $10                                        ; $5D9B: $10
    ld c, $D9                                     ; $5D9C: $0E $D9
    ld h, b                                       ; $5D9E: $60
    ld [$5600], sp                                ; $5D9F: $08 $00 $56
    ld a, [hl+]                                   ; $5DA2: $2A
    dec bc                                        ; $5DA3: $0B
    inc bc                                        ; $5DA4: $03
    dec d                                         ; $5DA5: $15
    ld c, $4F                                     ; $5DA6: $0E $4F
    ld h, b                                       ; $5DA8: $60
    ld [$150E], sp                                ; $5DA9: $08 $0E $15
    ld h, c                                       ; $5DAC: $61
    nop                                           ; $5DAD: $00
    nop                                           ; $5DAE: $00

jr_01D_5DAF:
    ld d, [hl]                                    ; $5DAF: $56
    dec l                                         ; $5DB0: $2D
    ld e, e                                       ; $5DB1: $5B
    dec e                                         ; $5DB2: $1D

jr_01D_5DB3:
    ld e, b                                       ; $5DB3: $58
    ld h, d                                       ; $5DB4: $62
    ld h, d                                       ; $5DB5: $62
    ld [bc], a                                    ; $5DB6: $02

jr_01D_5DB7:
    dec d                                         ; $5DB7: $15
    ld c, $4F                                     ; $5DB8: $0E $4F
    ld h, b                                       ; $5DBA: $60
    ld [$CF0E], sp                                ; $5DBB: $08 $0E $CF
    ld h, b                                       ; $5DBE: $60
    jr nz, jr_01D_5DC1                            ; $5DBF: $20 $00

jr_01D_5DC1:
    ld d, [hl]                                    ; $5DC1: $56
    dec de                                        ; $5DC2: $1B
    ld e, e                                       ; $5DC3: $5B
    dec e                                         ; $5DC4: $1D
    ld [hl], e                                    ; $5DC5: $73
    ld h, h                                       ; $5DC6: $64
    ld h, d                                       ; $5DC7: $62
    inc bc                                        ; $5DC8: $03
    dec d                                         ; $5DC9: $15
    ld c, $D9                                     ; $5DCA: $0E $D9
    ld h, b                                       ; $5DCC: $60

jr_01D_5DCD:
    jr jr_01D_5DDD                                ; $5DCD: $18 $0E

    sbc a                                         ; $5DCF: $9F
    ld h, b                                       ; $5DD0: $60
    ld [$150E], sp                                ; $5DD1: $08 $0E $15
    ld h, c                                       ; $5DD4: $61
    nop                                           ; $5DD5: $00
    nop                                           ; $5DD6: $00
    ld e, e                                       ; $5DD7: $5B
    dec e                                         ; $5DD8: $1D
    sbc [hl]                                      ; $5DD9: $9E

jr_01D_5DDA:
    ld h, l                                       ; $5DDA: $65
    ld h, d                                       ; $5DDB: $62
    inc b                                         ; $5DDC: $04

jr_01D_5DDD:
    dec bc                                        ; $5DDD: $0B
    inc b                                         ; $5DDE: $04
    ld h, d                                       ; $5DDF: $62
    ld bc, $0E15                                  ; $5DE0: $01 $15 $0E
    ld c, a                                       ; $5DE3: $4F
    ld h, b                                       ; $5DE4: $60

jr_01D_5DE5:
    ld [$D90E], sp                                ; $5DE5: $08 $0E $D9
    ld h, b                                       ; $5DE8: $60
    nop                                           ; $5DE9: $00
    nop                                           ; $5DEA: $00
    rlca                                          ; $5DEB: $07
    nop                                           ; $5DEC: $00

jr_01D_5DED:
    add c                                         ; $5DED: $81
    ld e, l                                       ; $5DEE: $5D
    add hl, bc                                    ; $5DEF: $09
    nop                                           ; $5DF0: $00
    jr nz, jr_01D_5DDA                            ; $5DF1: $20 $E7

    ld d, b                                       ; $5DF3: $50
    ld b, d                                       ; $5DF4: $42
    ld a, h                                       ; $5DF5: $7C
    ld [$0206], sp                                ; $5DF6: $08 $06 $02

jr_01D_5DF9:
    dec d                                         ; $5DF9: $15
    jr nz, jr_01D_5DAF                            ; $5DFA: $20 $B3

    ld c, a                                       ; $5DFC: $4F

jr_01D_5DFD:
    db $10                                        ; $5DFD: $10
    jr nz, jr_01D_5DED                            ; $5DFE: $20 $ED

    ld c, a                                       ; $5E00: $4F
    db $10                                        ; $5E01: $10
    jr nz, jr_01D_5DB7                            ; $5E02: $20 $B3

    ld c, a                                       ; $5E04: $4F
    ld a, [hl+]                                   ; $5E05: $2A
    jr nz, jr_01D_5DB3                            ; $5E06: $20 $AB

    ld d, b                                       ; $5E08: $50

jr_01D_5E09:
    nop                                           ; $5E09: $00
    nop                                           ; $5E0A: $00
    ld e, e                                       ; $5E0B: $5B
    dec e                                         ; $5E0C: $1D
    or e                                          ; $5E0D: $B3
    ld e, [hl]                                    ; $5E0E: $5E
    ld h, d                                       ; $5E0F: $62
    inc c                                         ; $5E10: $0C
    ld b, b                                       ; $5E11: $40
    jr nc, @+$17                                  ; $5E12: $30 $15

    jr nz, @-$11                                  ; $5E14: $20 $ED

    ld c, a                                       ; $5E16: $4F
    db $10                                        ; $5E17: $10
    jr nz, jr_01D_5DCD                            ; $5E18: $20 $B3

    ld c, a                                       ; $5E1A: $4F
    jr nz, @+$22                                  ; $5E1B: $20 $20

    rst $20                                       ; $5E1D: $E7
    ld d, b                                       ; $5E1E: $50

jr_01D_5E1F:
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    ld d, [hl]                                    ; $5E21: $56
    ld de, $0440                                  ; $5E22: $11 $40 $04
    ld h, b                                       ; $5E25: $60
    dec l                                         ; $5E26: $2D
    ld b, b                                       ; $5E27: $40
    jr nc, jr_01D_5E3F                            ; $5E28: $30 $15

    jr nz, jr_01D_5DF9                            ; $5E2A: $20 $CD

    ld c, a                                       ; $5E2C: $4F
    ld [$BF20], sp                                ; $5E2D: $08 $20 $BF
    ld d, b                                       ; $5E30: $50
    inc l                                         ; $5E31: $2C
    nop                                           ; $5E32: $00
    ld h, d                                       ; $5E33: $62
    ld e, $14                                     ; $5E34: $1E $14
    jr nz, jr_01D_5E1F                            ; $5E36: $20 $E7

    ld d, b                                       ; $5E38: $50
    ld h, d                                       ; $5E39: $62
    rra                                           ; $5E3A: $1F
    inc d                                         ; $5E3B: $14
    jr nz, jr_01D_5DFD                            ; $5E3C: $20 $BF

    ld d, b                                       ; $5E3E: $50

jr_01D_5E3F:
    ld h, d                                       ; $5E3F: $62
    jr nz, jr_01D_5E56                            ; $5E40: $20 $14

    jr nz, @-$17                                  ; $5E42: $20 $E7

    ld d, b                                       ; $5E44: $50
    ld h, d                                       ; $5E45: $62
    inc hl                                        ; $5E46: $23
    inc d                                         ; $5E47: $14
    jr nz, jr_01D_5E09                            ; $5E48: $20 $BF

    ld d, b                                       ; $5E4A: $50
    ld h, b                                       ; $5E4B: $60
    dec de                                        ; $5E4C: $1B
    dec d                                         ; $5E4D: $15
    jr nz, jr_01D_5EC7                            ; $5E4E: $20 $77

    ld d, b                                       ; $5E50: $50
    ld [bc], a                                    ; $5E51: $02
    jr nz, jr_01D_5DE5                            ; $5E52: $20 $91

    ld d, b                                       ; $5E54: $50

jr_01D_5E55:
    ld [bc], a                                    ; $5E55: $02

jr_01D_5E56:
    jr nz, @-$2B                                  ; $5E56: $20 $D3

    ld d, b                                       ; $5E58: $50
    ld b, b                                       ; $5E59: $40
    jr nz, @-$11                                  ; $5E5A: $20 $ED

    ld c, a                                       ; $5E5C: $4F
    db $10                                        ; $5E5D: $10
    jr nz, @-$21                                  ; $5E5E: $20 $DD

    ld d, b                                       ; $5E60: $50
    nop                                           ; $5E61: $00
    nop                                           ; $5E62: $00
    ld h, d                                       ; $5E63: $62
    ld hl, $2015                                  ; $5E64: $21 $15 $20
    db $D3                                        ; $5E67: $D3
    ld d, b                                       ; $5E68: $50
    jr nc, jr_01D_5E8B                            ; $5E69: $30 $20

    rst $20                                       ; $5E6B: $E7
    ld d, b                                       ; $5E6C: $50
    ld b, b                                       ; $5E6D: $40
    jr nz, @-$2B                                  ; $5E6E: $20 $D3

    ld d, b                                       ; $5E70: $50
    nop                                           ; $5E71: $00
    nop                                           ; $5E72: $00
    ld h, d                                       ; $5E73: $62
    ld [hl+], a                                   ; $5E74: $22
    dec d                                         ; $5E75: $15
    jr nz, jr_01D_5E55                            ; $5E76: $20 $DD

    ld c, a                                       ; $5E78: $4F
    db $10                                        ; $5E79: $10
    jr nz, @-$2B                                  ; $5E7A: $20 $D3

    ld d, b                                       ; $5E7C: $50
    jr nc, jr_01D_5E9F                            ; $5E7D: $30 $20

    db $DD                                        ; $5E7F: $DD
    ld d, b                                       ; $5E80: $50
    nop                                           ; $5E81: $00
    nop                                           ; $5E82: $00
    ld h, d                                       ; $5E83: $62
    inc b                                         ; $5E84: $04
    inc d                                         ; $5E85: $14
    jr nz, @-$17                                  ; $5E86: $20 $E7

    ld d, b                                       ; $5E88: $50
    ld b, d                                       ; $5E89: $42
    dec d                                         ; $5E8A: $15

jr_01D_5E8B:
    ld c, $B0                                     ; $5E8B: $0E $B0
    ld d, e                                       ; $5E8D: $53
    jr nz, jr_01D_5E9E                            ; $5E8E: $20 $0E

    ldh a, [rHDMA3]                               ; $5E90: $F0 $53
    nop                                           ; $5E92: $00
    nop                                           ; $5E93: $00
    ld e, e                                       ; $5E94: $5B
    dec e                                         ; $5E95: $1D
    or b                                          ; $5E96: $B0
    ld h, l                                       ; $5E97: $65
    ld h, d                                       ; $5E98: $62
    ld [hl-], a                                   ; $5E99: $32
    inc d                                         ; $5E9A: $14
    ld c, $22                                     ; $5E9B: $0E $22
    ld d, h                                       ; $5E9D: $54

jr_01D_5E9E:
    ld h, d                                       ; $5E9E: $62

jr_01D_5E9F:
    ld a, [hl+]                                   ; $5E9F: $2A
    dec d                                         ; $5EA0: $15
    ld c, $80                                     ; $5EA1: $0E $80
    ld d, e                                       ; $5EA3: $53
    jr nc, jr_01D_5EA6                            ; $5EA4: $30 $00

jr_01D_5EA6:
    add hl, de                                    ; $5EA6: $19
    ld b, d                                       ; $5EA7: $42
    inc d                                         ; $5EA8: $14
    ld de, $7699                                  ; $5EA9: $11 $99 $76
    ld h, b                                       ; $5EAC: $60
    dec de                                        ; $5EAD: $1B
    inc d                                         ; $5EAE: $14
    ld de, $76BC                                  ; $5EAF: $11 $BC $76
    ld b, d                                       ; $5EB2: $42
    xor h                                         ; $5EB3: $AC
    and h                                         ; $5EB4: $A4
    and e                                         ; $5EB5: $A3
    ld bc, $789B                                  ; $5EB6: $01 $9B $78
    ld [hl], b                                    ; $5EB9: $70
    sbc a                                         ; $5EBA: $9F
    ld c, b                                       ; $5EBB: $48
    ld h, l                                       ; $5EBC: $65
    ld a, c                                       ; $5EBD: $79
    inc l                                         ; $5EBE: $2C
    jr nz, jr_01D_5F3A                            ; $5EBF: $20 $79

    ld l, a                                       ; $5EC1: $6F
    ld [hl], l                                    ; $5EC2: $75
    daa                                           ; $5EC3: $27
    ld [hl], d                                    ; $5EC4: $72
    ld h, l                                       ; $5EC5: $65
    rst $38                                       ; $5EC6: $FF

jr_01D_5EC7:
    ld [hl], h                                    ; $5EC7: $74
    ld l, b                                       ; $5EC8: $68
    ld h, l                                       ; $5EC9: $65
    jr nz, jr_01D_5F3B                            ; $5ECA: $20 $6F

    ld l, h                                       ; $5ECC: $6C
    ld h, h                                       ; $5ECD: $64
    jr nz, jr_01D_5F32                            ; $5ECE: $20 $62

    ld h, c                                       ; $5ED0: $61
    ld [hl], h                                    ; $5ED1: $74
    cp $66                                        ; $5ED2: $FE $66
    ld [hl], d                                    ; $5ED4: $72
    ld l, a                                       ; $5ED5: $6F
    ld l, l                                       ; $5ED6: $6D
    jr nz, jr_01D_5F3B                            ; $5ED7: $20 $62

    ld h, l                                       ; $5ED9: $65
    ld h, [hl]                                    ; $5EDA: $66
    ld l, a                                       ; $5EDB: $6F
    ld [hl], d                                    ; $5EDC: $72
    ld h, l                                       ; $5EDD: $65
    ld hl, $FDFE                                  ; $5EDE: $21 $FE $FD
    sbc e                                         ; $5EE1: $9B
    ld hl, sp+$4A                                 ; $5EE2: $F8 $4A
    sbc a                                         ; $5EE4: $9F
    ld d, a                                       ; $5EE5: $57
    ld h, c                                       ; $5EE6: $61
    ld [hl], h                                    ; $5EE7: $74
    ld h, e                                       ; $5EE8: $63
    ld l, b                                       ; $5EE9: $68
    jr nz, jr_01D_5F65                            ; $5EEA: $20 $79

    ld l, a                                       ; $5EEC: $6F
    ld [hl], l                                    ; $5EED: $75
    ld [hl], d                                    ; $5EEE: $72
    rst $38                                       ; $5EEF: $FF
    ld [hl], h                                    ; $5EF0: $74
    ld l, a                                       ; $5EF1: $6F
    ld l, [hl]                                    ; $5EF2: $6E
    ld h, a                                       ; $5EF3: $67
    ld [hl], l                                    ; $5EF4: $75
    ld h, l                                       ; $5EF5: $65
    ld hl, $49FE                                  ; $5EF6: $21 $FE $49
    jr nz, jr_01D_5F5C                            ; $5EF9: $20 $61

    ld l, l                                       ; $5EFB: $6D
    jr nz, jr_01D_5F45                            ; $5EFC: $20 $47

    ld l, c                                       ; $5EFE: $69
    ld h, c                                       ; $5EFF: $61
    inc l                                         ; $5F00: $2C
    jr nz, jr_01D_5F77                            ; $5F01: $20 $74

    ld l, b                                       ; $5F03: $68
    ld h, l                                       ; $5F04: $65
    rst $38                                       ; $5F05: $FF
    ld l, a                                       ; $5F06: $6F
    ld l, [hl]                                    ; $5F07: $6E
    ld h, l                                       ; $5F08: $65
    jr nz, jr_01D_5F84                            ; $5F09: $20 $79

    ld l, a                                       ; $5F0B: $6F
    ld [hl], l                                    ; $5F0C: $75
    jr nz, jr_01D_5F82                            ; $5F0D: $20 $73

    ld h, l                                       ; $5F0F: $65
    ld h, l                                       ; $5F10: $65
    ld l, e                                       ; $5F11: $6B
    inc l                                         ; $5F12: $2C
    cp $54                                        ; $5F13: $FE $54
    ld l, a                                       ; $5F15: $6F
    ld l, [hl]                                    ; $5F16: $6E
    ld a, c                                       ; $5F17: $79
    jr nz, jr_01D_5F64                            ; $5F18: $20 $4A

    ld l, a                                       ; $5F1A: $6F
    ld l, [hl]                                    ; $5F1B: $6E
    ld h, l                                       ; $5F1C: $65
    ld [hl], e                                    ; $5F1D: $73
    ld l, $20                                     ; $5F1E: $2E $20
    ld c, a                                       ; $5F20: $4F
    ld [hl], d                                    ; $5F21: $72
    rst $38                                       ; $5F22: $FF
    ld [hl], e                                    ; $5F23: $73
    ld l, b                                       ; $5F24: $68
    ld l, a                                       ; $5F25: $6F
    ld [hl], l                                    ; $5F26: $75
    ld l, h                                       ; $5F27: $6C
    ld h, h                                       ; $5F28: $64
    jr nz, @+$4B                                  ; $5F29: $20 $49

    jr nz, @+$75                                  ; $5F2B: $20 $73

    ld h, c                                       ; $5F2D: $61
    ld a, c                                       ; $5F2E: $79
    inc l                                         ; $5F2F: $2C
    cp $4B                                        ; $5F30: $FE $4B

jr_01D_5F32:
    ld a, c                                       ; $5F32: $79
    ld [hl], d                                    ; $5F33: $72
    ld l, a                                       ; $5F34: $6F
    ld [hl], e                                    ; $5F35: $73
    ld l, $FE                                     ; $5F36: $2E $FE
    db $FD                                        ; $5F38: $FD
    sbc e                                         ; $5F39: $9B

jr_01D_5F3A:
    ld a, b                                       ; $5F3A: $78

jr_01D_5F3B:
    ld [hl], b                                    ; $5F3B: $70
    sbc a                                         ; $5F3C: $9F
    ld c, e                                       ; $5F3D: $4B
    ld a, c                                       ; $5F3E: $79
    ld [hl], d                                    ; $5F3F: $72
    ld l, a                                       ; $5F40: $6F
    ld [hl], e                                    ; $5F41: $73
    ld hl, $FE3F                                  ; $5F42: $21 $3F $FE

jr_01D_5F45:
    db $FD                                        ; $5F45: $FD
    ld e, b                                       ; $5F46: $58
    inc c                                         ; $5F47: $0C
    sbc e                                         ; $5F48: $9B
    ld hl, sp+$4A                                 ; $5F49: $F8 $4A
    sbc a                                         ; $5F4B: $9F
    ld e, c                                       ; $5F4C: $59
    ld l, a                                       ; $5F4D: $6F
    ld [hl], l                                    ; $5F4E: $75
    ld [hl], d                                    ; $5F4F: $72
    jr nz, jr_01D_5FB5                            ; $5F50: $20 $63

    ld l, a                                       ; $5F52: $6F
    ld l, l                                       ; $5F53: $6D
    ld l, c                                       ; $5F54: $69
    ld l, [hl]                                    ; $5F55: $6E
    ld h, a                                       ; $5F56: $67
    jr nz, jr_01D_5FC1                            ; $5F57: $20 $68

    ld h, c                                       ; $5F59: $61
    ld [hl], e                                    ; $5F5A: $73
    rst $38                                       ; $5F5B: $FF

jr_01D_5F5C:
    ld h, d                                       ; $5F5C: $62
    ld h, l                                       ; $5F5D: $65
    ld h, l                                       ; $5F5E: $65
    ld l, [hl]                                    ; $5F5F: $6E
    jr nz, jr_01D_5FC8                            ; $5F60: $20 $66

    ld l, a                                       ; $5F62: $6F
    ld [hl], d                                    ; $5F63: $72

jr_01D_5F64:
    ld h, l                                       ; $5F64: $65

jr_01D_5F65:
    ld [hl], h                                    ; $5F65: $74
    ld l, a                                       ; $5F66: $6F
    ld l, h                                       ; $5F67: $6C
    ld h, h                                       ; $5F68: $64
    cp $66                                        ; $5F69: $FE $66
    ld l, a                                       ; $5F6B: $6F
    ld [hl], d                                    ; $5F6C: $72
    jr nz, jr_01D_5FDC                            ; $5F6D: $20 $6D

    ld h, c                                       ; $5F6F: $61
    ld l, [hl]                                    ; $5F70: $6E
    ld a, c                                       ; $5F71: $79
    inc l                                         ; $5F72: $2C
    jr nz, @+$6F                                  ; $5F73: $20 $6D

    ld h, c                                       ; $5F75: $61
    ld l, [hl]                                    ; $5F76: $6E

jr_01D_5F77:
    ld a, c                                       ; $5F77: $79
    rst $38                                       ; $5F78: $FF
    ld a, c                                       ; $5F79: $79
    ld h, l                                       ; $5F7A: $65
    ld h, c                                       ; $5F7B: $61
    ld [hl], d                                    ; $5F7C: $72
    ld [hl], e                                    ; $5F7D: $73
    ld l, $FE                                     ; $5F7E: $2E $FE
    ld d, h                                       ; $5F80: $54
    ld [hl], d                                    ; $5F81: $72

jr_01D_5F82:
    ld [hl], l                                    ; $5F82: $75
    ld [hl], h                                    ; $5F83: $74

jr_01D_5F84:
    ld l, b                                       ; $5F84: $68
    ld h, [hl]                                    ; $5F85: $66
    ld [hl], l                                    ; $5F86: $75
    ld l, h                                       ; $5F87: $6C
    ld l, h                                       ; $5F88: $6C
    ld a, c                                       ; $5F89: $79
    inc l                                         ; $5F8A: $2C
    jr nz, jr_01D_5FD6                            ; $5F8B: $20 $49

    rst $38                                       ; $5F8D: $FF
    ld h, h                                       ; $5F8E: $64
    ld l, c                                       ; $5F8F: $69
    ld h, h                                       ; $5F90: $64
    ld l, [hl]                                    ; $5F91: $6E
    daa                                           ; $5F92: $27
    ld [hl], h                                    ; $5F93: $74
    jr nz, jr_01D_5FFB                            ; $5F94: $20 $65

    ld a, b                                       ; $5F96: $78
    ld [hl], b                                    ; $5F97: $70
    ld h, l                                       ; $5F98: $65
    ld h, e                                       ; $5F99: $63
    ld [hl], h                                    ; $5F9A: $74
    cp $74                                        ; $5F9B: $FE $74
    ld l, b                                       ; $5F9D: $68
    ld h, l                                       ; $5F9E: $65
    jr nz, jr_01D_5FF1                            ; $5F9F: $20 $50

    ld [hl], d                                    ; $5FA1: $72
    ld l, a                                       ; $5FA2: $6F
    ld [hl], b                                    ; $5FA3: $70
    ld l, b                                       ; $5FA4: $68
    ld h, l                                       ; $5FA5: $65
    ld h, e                                       ; $5FA6: $63
    ld a, c                                       ; $5FA7: $79
    jr nz, jr_01D_601E                            ; $5FA8: $20 $74

    ld l, a                                       ; $5FAA: $6F
    rst $38                                       ; $5FAB: $FF
    ld h, d                                       ; $5FAC: $62
    ld h, l                                       ; $5FAD: $65
    jr nz, jr_01D_6016                            ; $5FAE: $20 $66

    ld [hl], l                                    ; $5FB0: $75
    ld l, h                                       ; $5FB1: $6C
    ld h, [hl]                                    ; $5FB2: $66
    ld l, c                                       ; $5FB3: $69
    ld l, h                                       ; $5FB4: $6C

jr_01D_5FB5:
    ld l, h                                       ; $5FB5: $6C
    ld h, l                                       ; $5FB6: $65
    ld h, h                                       ; $5FB7: $64
    cp $66                                        ; $5FB8: $FE $66
    ld l, a                                       ; $5FBA: $6F
    ld [hl], d                                    ; $5FBB: $72
    jr nz, jr_01D_601F                            ; $5FBC: $20 $61

    ld [hl], h                                    ; $5FBE: $74
    jr nz, jr_01D_602D                            ; $5FBF: $20 $6C

jr_01D_5FC1:
    ld h, l                                       ; $5FC1: $65
    ld h, c                                       ; $5FC2: $61
    ld [hl], e                                    ; $5FC3: $73
    ld [hl], h                                    ; $5FC4: $74
    jr nz, jr_01D_6028                            ; $5FC5: $20 $61

    rst $38                                       ; $5FC7: $FF

jr_01D_5FC8:
    ld h, [hl]                                    ; $5FC8: $66
    ld h, l                                       ; $5FC9: $65
    ld [hl], a                                    ; $5FCA: $77
    jr nz, jr_01D_6031                            ; $5FCB: $20 $64

    ld l, a                                       ; $5FCD: $6F
    ld a, d                                       ; $5FCE: $7A
    ld h, l                                       ; $5FCF: $65
    ld l, [hl]                                    ; $5FD0: $6E
    jr nz, @+$6F                                  ; $5FD1: $20 $6D

    ld l, a                                       ; $5FD3: $6F
    ld [hl], d                                    ; $5FD4: $72
    ld h, l                                       ; $5FD5: $65

jr_01D_5FD6:
    cp $79                                        ; $5FD6: $FE $79
    ld h, l                                       ; $5FD8: $65
    ld h, c                                       ; $5FD9: $61
    ld [hl], d                                    ; $5FDA: $72
    ld [hl], e                                    ; $5FDB: $73

jr_01D_5FDC:
    inc l                                         ; $5FDC: $2C
    jr nz, jr_01D_6041                            ; $5FDD: $20 $62

    ld [hl], l                                    ; $5FDF: $75
    ld [hl], h                                    ; $5FE0: $74
    jr nz, jr_01D_6048                            ; $5FE1: $20 $65

    halt                                          ; $5FE3: $76
    ld h, l                                       ; $5FE4: $65
    ld l, [hl]                                    ; $5FE5: $6E
    rst $38                                       ; $5FE6: $FF
    ld c, c                                       ; $5FE7: $49
    jr nz, jr_01D_604D                            ; $5FE8: $20 $63

    ld h, c                                       ; $5FEA: $61
    ld l, [hl]                                    ; $5FEB: $6E
    daa                                           ; $5FEC: $27
    ld [hl], h                                    ; $5FED: $74
    jr nz, jr_01D_6052                            ; $5FEE: $20 $62

    ld h, l                                       ; $5FF0: $65

jr_01D_5FF1:
    cp $72                                        ; $5FF1: $FE $72
    ld l, c                                       ; $5FF3: $69
    ld h, a                                       ; $5FF4: $67
    ld l, b                                       ; $5FF5: $68
    ld [hl], h                                    ; $5FF6: $74
    jr nz, jr_01D_605A                            ; $5FF7: $20 $61

    ld l, h                                       ; $5FF9: $6C
    ld l, h                                       ; $5FFA: $6C

jr_01D_5FFB:
    jr nz, jr_01D_6071                            ; $5FFB: $20 $74

    ld l, b                                       ; $5FFD: $68
    ld h, l                                       ; $5FFE: $65
    rst $38                                       ; $5FFF: $FF
    ld [hl], h                                    ; $6000: $74
    ld l, c                                       ; $6001: $69
    ld l, l                                       ; $6002: $6D
    ld h, l                                       ; $6003: $65
    ld l, $FE                                     ; $6004: $2E $FE
    db $FD                                        ; $6006: $FD
    sbc e                                         ; $6007: $9B
    ld a, b                                       ; $6008: $78
    ld [hl], b                                    ; $6009: $70
    sbc a                                         ; $600A: $9F
    ld d, b                                       ; $600B: $50
    ld [hl], d                                    ; $600C: $72
    ld l, a                                       ; $600D: $6F
    ld [hl], b                                    ; $600E: $70
    ld l, b                                       ; $600F: $68
    ld h, l                                       ; $6010: $65
    ld h, e                                       ; $6011: $63
    ld a, c                                       ; $6012: $79
    ccf                                           ; $6013: $3F
    cp $FD                                        ; $6014: $FE $FD

jr_01D_6016:
    sbc e                                         ; $6016: $9B
    ld hl, sp+$4A                                 ; $6017: $F8 $4A
    sbc a                                         ; $6019: $9F
    ld c, c                                       ; $601A: $49
    ld [hl], h                                    ; $601B: $74
    jr nz, @+$75                                  ; $601C: $20 $73

jr_01D_601E:
    ld [hl], h                                    ; $601E: $74

jr_01D_601F:
    ld h, c                                       ; $601F: $61
    ld [hl], h                                    ; $6020: $74
    ld h, l                                       ; $6021: $65
    ld [hl], e                                    ; $6022: $73
    inc l                                         ; $6023: $2C
    cp $27                                        ; $6024: $FE $27
    ld b, h                                       ; $6026: $44
    ld h, c                                       ; $6027: $61

jr_01D_6028:
    ld [hl], d                                    ; $6028: $72
    ld l, e                                       ; $6029: $6B
    jr nz, jr_01D_6072                            ; $602A: $20 $46

    ld l, a                                       ; $602C: $6F

jr_01D_602D:
    ld [hl], d                                    ; $602D: $72
    ld h, e                                       ; $602E: $63
    ld h, l                                       ; $602F: $65
    ld [hl], e                                    ; $6030: $73

jr_01D_6031:
    rst $38                                       ; $6031: $FF
    ld [hl], a                                    ; $6032: $77
    ld l, c                                       ; $6033: $69
    ld l, h                                       ; $6034: $6C
    ld l, h                                       ; $6035: $6C
    jr nz, jr_01D_6099                            ; $6036: $20 $61

    ld h, d                                       ; $6038: $62
    ld l, a                                       ; $6039: $6F
    ld [hl], l                                    ; $603A: $75
    ld l, [hl]                                    ; $603B: $6E
    ld h, h                                       ; $603C: $64
    ld l, $2E                                     ; $603D: $2E $2E
    ld l, $FE                                     ; $603F: $2E $FE

jr_01D_6041:
    ld b, a                                       ; $6041: $47
    ld h, l                                       ; $6042: $65
    ld a, c                                       ; $6043: $79
    ld [hl], e                                    ; $6044: $73
    ld h, l                                       ; $6045: $65
    ld [hl], d                                    ; $6046: $72
    ld [hl], e                                    ; $6047: $73

jr_01D_6048:
    jr nz, jr_01D_60B9                            ; $6048: $20 $6F

    ld h, [hl]                                    ; $604A: $66
    rst $38                                       ; $604B: $FF
    ld h, h                                       ; $604C: $64

jr_01D_604D:
    ld h, c                                       ; $604D: $61
    ld [hl], d                                    ; $604E: $72
    ld l, e                                       ; $604F: $6B
    ld h, l                                       ; $6050: $65
    ld [hl], e                                    ; $6051: $73

jr_01D_6052:
    ld [hl], h                                    ; $6052: $74
    jr nz, @+$55                                  ; $6053: $20 $53

    ld l, b                                       ; $6055: $68
    ld h, c                                       ; $6056: $61
    ld h, h                                       ; $6057: $64
    ld l, a                                       ; $6058: $6F
    ld [hl], a                                    ; $6059: $77

jr_01D_605A:
    cp $77                                        ; $605A: $FE $77
    ld l, c                                       ; $605C: $69
    ld l, h                                       ; $605D: $6C
    ld l, h                                       ; $605E: $6C
    jr nz, jr_01D_60C2                            ; $605F: $20 $61

    ld [hl], b                                    ; $6061: $70
    ld [hl], b                                    ; $6062: $70
    ld h, l                                       ; $6063: $65
    ld h, c                                       ; $6064: $61
    ld [hl], d                                    ; $6065: $72
    ld l, $2E                                     ; $6066: $2E $2E
    ld l, $FE                                     ; $6068: $2E $FE
    ld [hl], h                                    ; $606A: $74
    ld l, b                                       ; $606B: $68
    ld h, l                                       ; $606C: $65
    jr nz, jr_01D_60B6                            ; $606D: $20 $47

    ld [hl], d                                    ; $606F: $72
    ld h, l                                       ; $6070: $65

jr_01D_6071:
    ld h, c                                       ; $6071: $61

jr_01D_6072:
    ld [hl], h                                    ; $6072: $74
    jr nz, jr_01D_60C2                            ; $6073: $20 $4D

    ld h, c                                       ; $6075: $61
    ld h, a                                       ; $6076: $67
    ld [hl], l                                    ; $6077: $75
    ld [hl], e                                    ; $6078: $73
    rst $38                                       ; $6079: $FF
    ld l, e                                       ; $607A: $6B
    ld l, [hl]                                    ; $607B: $6E
    ld l, a                                       ; $607C: $6F
    ld [hl], a                                    ; $607D: $77
    ld l, [hl]                                    ; $607E: $6E
    jr nz, jr_01D_60E2                            ; $607F: $20 $61

    ld [hl], e                                    ; $6081: $73
    jr nz, jr_01D_60CF                            ; $6082: $20 $4B

    ld a, c                                       ; $6084: $79
    ld [hl], d                                    ; $6085: $72
    ld l, a                                       ; $6086: $6F
    ld [hl], e                                    ; $6087: $73
    cp $72                                        ; $6088: $FE $72
    ld h, l                                       ; $608A: $65
    halt                                          ; $608B: $76
    ld h, l                                       ; $608C: $65
    ld h, c                                       ; $608D: $61
    ld l, h                                       ; $608E: $6C
    ld [hl], e                                    ; $608F: $73
    jr nz, jr_01D_60FA                            ; $6090: $20 $68

    ld l, c                                       ; $6092: $69
    ld l, l                                       ; $6093: $6D
    ld [hl], e                                    ; $6094: $73
    ld h, l                                       ; $6095: $65
    ld l, h                                       ; $6096: $6C
    ld h, [hl]                                    ; $6097: $66
    rst $38                                       ; $6098: $FF

jr_01D_6099:
    ld [hl], a                                    ; $6099: $77
    ld l, c                                       ; $609A: $69
    ld [hl], h                                    ; $609B: $74
    ld l, b                                       ; $609C: $68
    jr nz, jr_01D_6100                            ; $609D: $20 $61

    jr nz, jr_01D_610E                            ; $609F: $20 $6D

    ld l, c                                       ; $60A1: $69
    ld [hl], d                                    ; $60A2: $72
    ld h, c                                       ; $60A3: $61
    ld h, e                                       ; $60A4: $63
    ld l, h                                       ; $60A5: $6C
    ld h, l                                       ; $60A6: $65
    ld l, $FE                                     ; $60A7: $2E $FE
    ld b, c                                       ; $60A9: $41
    ld l, h                                       ; $60AA: $6C
    ld l, h                                       ; $60AB: $6C
    jr nz, jr_01D_6125                            ; $60AC: $20 $77

    ld l, c                                       ; $60AE: $69
    ld l, h                                       ; $60AF: $6C
    ld l, h                                       ; $60B0: $6C
    jr nz, jr_01D_6115                            ; $60B1: $20 $62

    ld h, l                                       ; $60B3: $65
    rst $38                                       ; $60B4: $FF
    ld l, c                                       ; $60B5: $69

jr_01D_60B6:
    ld l, [hl]                                    ; $60B6: $6E
    jr nz, jr_01D_611C                            ; $60B7: $20 $63

jr_01D_60B9:
    ld l, b                                       ; $60B9: $68
    ld h, c                                       ; $60BA: $61
    ld l, a                                       ; $60BB: $6F
    ld [hl], e                                    ; $60BC: $73
    jr nz, jr_01D_6134                            ; $60BD: $20 $75

    ld l, [hl]                                    ; $60BF: $6E
    ld [hl], h                                    ; $60C0: $74
    ld l, c                                       ; $60C1: $69

jr_01D_60C2:
    ld l, h                                       ; $60C2: $6C
    cp $74                                        ; $60C3: $FE $74
    ld l, b                                       ; $60C5: $68
    ld h, l                                       ; $60C6: $65
    jr nz, jr_01D_612E                            ; $60C7: $20 $65

    ld l, [hl]                                    ; $60C9: $6E
    ld h, h                                       ; $60CA: $64
    inc l                                         ; $60CB: $2C
    jr nz, jr_01D_6145                            ; $60CC: $20 $77

    ld l, b                                       ; $60CE: $68

jr_01D_60CF:
    ld l, c                                       ; $60CF: $69
    ld h, e                                       ; $60D0: $63
    ld l, b                                       ; $60D1: $68
    rst $38                                       ; $60D2: $FF
    ld [hl], h                                    ; $60D3: $74
    ld l, b                                       ; $60D4: $68
    ld h, l                                       ; $60D5: $65
    jr nz, jr_01D_611F                            ; $60D6: $20 $47

    ld [hl], d                                    ; $60D8: $72
    ld h, l                                       ; $60D9: $65
    ld h, c                                       ; $60DA: $61
    ld [hl], h                                    ; $60DB: $74
    jr nz, jr_01D_612B                            ; $60DC: $20 $4D

    ld h, c                                       ; $60DE: $61
    ld h, a                                       ; $60DF: $67
    ld [hl], l                                    ; $60E0: $75
    ld [hl], e                                    ; $60E1: $73

jr_01D_60E2:
    cp $73                                        ; $60E2: $FE $73
    ld l, b                                       ; $60E4: $68
    ld h, c                                       ; $60E5: $61
    ld l, h                                       ; $60E6: $6C
    ld l, h                                       ; $60E7: $6C
    jr nz, jr_01D_614C                            ; $60E8: $20 $62

    ld [hl], d                                    ; $60EA: $72
    ld l, c                                       ; $60EB: $69
    ld l, [hl]                                    ; $60EC: $6E
    ld h, a                                       ; $60ED: $67
    ld l, $2E                                     ; $60EE: $2E $2E
    ld l, $FE                                     ; $60F0: $2E $FE
    ld [hl], d                                    ; $60F2: $72
    ld h, l                                       ; $60F3: $65
    ld [hl], h                                    ; $60F4: $74
    ld [hl], l                                    ; $60F5: $75
    ld [hl], d                                    ; $60F6: $72
    ld l, [hl]                                    ; $60F7: $6E
    ld l, c                                       ; $60F8: $69
    ld l, [hl]                                    ; $60F9: $6E

jr_01D_60FA:
    ld h, a                                       ; $60FA: $67
    jr nz, jr_01D_6163                            ; $60FB: $20 $66

    ld [hl], d                                    ; $60FD: $72
    ld l, a                                       ; $60FE: $6F
    ld l, l                                       ; $60FF: $6D

jr_01D_6100:
    rst $38                                       ; $6100: $FF
    ld [hl], a                                    ; $6101: $77
    ld l, b                                       ; $6102: $68
    ld h, l                                       ; $6103: $65
    ld l, [hl]                                    ; $6104: $6E
    ld h, e                                       ; $6105: $63
    ld h, l                                       ; $6106: $65
    jr nz, jr_01D_6171                            ; $6107: $20 $68

    ld h, l                                       ; $6109: $65
    cp $63                                        ; $610A: $FE $63
    ld h, c                                       ; $610C: $61
    ld l, l                                       ; $610D: $6D

jr_01D_610E:
    ld h, l                                       ; $610E: $65
    ld l, $27                                     ; $610F: $2E $27
    cp $FD                                        ; $6111: $FE $FD
    sbc e                                         ; $6113: $9B
    ld a, b                                       ; $6114: $78

jr_01D_6115:
    ld [hl], b                                    ; $6115: $70
    sbc a                                         ; $6116: $9F
    ld c, b                                       ; $6117: $48
    ld l, l                                       ; $6118: $6D
    ld l, l                                       ; $6119: $6D
    ld l, $2E                                     ; $611A: $2E $2E

jr_01D_611C:
    ld l, $FE                                     ; $611C: $2E $FE
    ld c, c                                       ; $611E: $49

jr_01D_611F:
    daa                                           ; $611F: $27
    ld l, l                                       ; $6120: $6D
    jr nz, jr_01D_6196                            ; $6121: $20 $73

    ld l, a                                       ; $6123: $6F
    ld [hl], d                                    ; $6124: $72

jr_01D_6125:
    ld [hl], d                                    ; $6125: $72
    ld a, c                                       ; $6126: $79
    inc l                                         ; $6127: $2C
    jr nz, jr_01D_618C                            ; $6128: $20 $62

    ld [hl], l                                    ; $612A: $75

jr_01D_612B:
    ld [hl], h                                    ; $612B: $74
    rst $38                                       ; $612C: $FF
    ld c, c                                       ; $612D: $49

jr_01D_612E:
    jr nz, jr_01D_6194                            ; $612E: $20 $64

    ld l, a                                       ; $6130: $6F
    ld l, [hl]                                    ; $6131: $6E
    daa                                           ; $6132: $27
    ld [hl], h                                    ; $6133: $74

jr_01D_6134:
    jr nz, @+$6D                                  ; $6134: $20 $6B

    ld l, [hl]                                    ; $6136: $6E
    ld l, a                                       ; $6137: $6F
    ld [hl], a                                    ; $6138: $77
    cp $61                                        ; $6139: $FE $61
    ld l, [hl]                                    ; $613B: $6E
    ld a, c                                       ; $613C: $79
    ld [hl], h                                    ; $613D: $74
    ld l, b                                       ; $613E: $68
    ld l, c                                       ; $613F: $69
    ld l, [hl]                                    ; $6140: $6E
    ld h, a                                       ; $6141: $67
    jr nz, jr_01D_61A5                            ; $6142: $20 $61

    ld h, d                                       ; $6144: $62

jr_01D_6145:
    ld l, a                                       ; $6145: $6F
    ld [hl], l                                    ; $6146: $75
    ld [hl], h                                    ; $6147: $74
    rst $38                                       ; $6148: $FF
    ld [hl], h                                    ; $6149: $74
    ld l, b                                       ; $614A: $68
    ld h, c                                       ; $614B: $61

jr_01D_614C:
    ld [hl], h                                    ; $614C: $74
    ld l, $FE                                     ; $614D: $2E $FE
    ld c, c                                       ; $614F: $49
    jr nz, jr_01D_61BC                            ; $6150: $20 $6A

    ld [hl], l                                    ; $6152: $75
    ld [hl], e                                    ; $6153: $73
    ld [hl], h                                    ; $6154: $74
    rst $38                                       ; $6155: $FF
    ld [hl], a                                    ; $6156: $77
    ld h, c                                       ; $6157: $61
    ld l, [hl]                                    ; $6158: $6E
    ld [hl], h                                    ; $6159: $74
    ld l, $2E                                     ; $615A: $2E $2E
    ld l, $2E                                     ; $615C: $2E $2E
    ld l, $FE                                     ; $615E: $2E $FE
    db $FD                                        ; $6160: $FD
    ld e, b                                       ; $6161: $58
    rlca                                          ; $6162: $07

jr_01D_6163:
    sbc e                                         ; $6163: $9B
    ld hl, sp+$4A                                 ; $6164: $F8 $4A
    sbc a                                         ; $6166: $9F
    ld e, c                                       ; $6167: $59
    ld h, l                                       ; $6168: $65
    ld [hl], e                                    ; $6169: $73
    inc l                                         ; $616A: $2C
    jr nz, jr_01D_61B6                            ; $616B: $20 $49

    jr nz, jr_01D_61DA                            ; $616D: $20 $6B

    ld l, [hl]                                    ; $616F: $6E
    ld l, a                                       ; $6170: $6F

jr_01D_6171:
    ld [hl], a                                    ; $6171: $77
    inc l                                         ; $6172: $2C
    rst $38                                       ; $6173: $FF
    ld a, c                                       ; $6174: $79
    ld l, a                                       ; $6175: $6F
    ld [hl], l                                    ; $6176: $75
    jr nz, jr_01D_61E3                            ; $6177: $20 $6A

    ld [hl], l                                    ; $6179: $75
    ld [hl], e                                    ; $617A: $73
    ld [hl], h                                    ; $617B: $74
    jr nz, jr_01D_61F5                            ; $617C: $20 $77

    ld h, c                                       ; $617E: $61
    ld l, [hl]                                    ; $617F: $6E
    ld [hl], h                                    ; $6180: $74
    cp $FD                                        ; $6181: $FE $FD
    ld e, b                                       ; $6183: $58
    jr z, jr_01D_6125                             ; $6184: $28 $9F

    ld [hl], h                                    ; $6186: $74
    ld l, a                                       ; $6187: $6F
    jr nz, jr_01D_61F1                            ; $6188: $20 $67

    ld h, l                                       ; $618A: $65
    ld [hl], h                                    ; $618B: $74

jr_01D_618C:
    jr nz, @+$6A                                  ; $618C: $20 $68

    ld l, a                                       ; $618E: $6F
    ld l, l                                       ; $618F: $6D
    ld h, l                                       ; $6190: $65
    jr nz, jr_01D_6207                            ; $6191: $20 $74

    ld l, a                                       ; $6193: $6F

jr_01D_6194:
    rst $38                                       ; $6194: $FF
    ld d, h                                       ; $6195: $54

jr_01D_6196:
    ld h, c                                       ; $6196: $61
    halt                                          ; $6197: $76
    ld h, l                                       ; $6198: $65
    ld l, h                                       ; $6199: $6C
    jr nz, jr_01D_61E3                            ; $619A: $20 $47

    ld l, a                                       ; $619C: $6F
    ld [hl], d                                    ; $619D: $72
    ld h, a                                       ; $619E: $67
    ld h, l                                       ; $619F: $65
    ld l, $FE                                     ; $61A0: $2E $FE
    db $FD                                        ; $61A2: $FD
    ld e, b                                       ; $61A3: $58
    add hl, hl                                    ; $61A4: $29

jr_01D_61A5:
    sbc e                                         ; $61A5: $9B
    ld a, b                                       ; $61A6: $78
    ld [hl], b                                    ; $61A7: $70
    sbc a                                         ; $61A8: $9F
    ld c, b                                       ; $61A9: $48
    ld l, a                                       ; $61AA: $6F
    ld [hl], a                                    ; $61AB: $77
    jr nz, jr_01D_6212                            ; $61AC: $20 $64

    ld l, c                                       ; $61AE: $69
    ld h, h                                       ; $61AF: $64
    jr nz, jr_01D_622B                            ; $61B0: $20 $79

    ld l, a                                       ; $61B2: $6F
    ld [hl], l                                    ; $61B3: $75
    rst $38                                       ; $61B4: $FF
    ld l, e                                       ; $61B5: $6B

jr_01D_61B6:
    ld l, [hl]                                    ; $61B6: $6E
    ld l, a                                       ; $61B7: $6F
    ld [hl], a                                    ; $61B8: $77
    ccf                                           ; $61B9: $3F
    cp $FD                                        ; $61BA: $FE $FD

jr_01D_61BC:
    sbc e                                         ; $61BC: $9B
    ld hl, sp+$4A                                 ; $61BD: $F8 $4A
    sbc a                                         ; $61BF: $9F
    ld c, a                                       ; $61C0: $4F
    ld l, b                                       ; $61C1: $68
    inc l                                         ; $61C2: $2C
    jr nz, jr_01D_620E                            ; $61C3: $20 $49

    jr nz, jr_01D_622F                            ; $61C5: $20 $68

    ld h, c                                       ; $61C7: $61
    halt                                          ; $61C8: $76
    ld h, l                                       ; $61C9: $65
    jr nz, @+$6F                                  ; $61CA: $20 $6D

    ld a, c                                       ; $61CC: $79
    rst $38                                       ; $61CD: $FF
    ld [hl], a                                    ; $61CE: $77
    ld h, c                                       ; $61CF: $61
    ld a, c                                       ; $61D0: $79
    ld [hl], e                                    ; $61D1: $73
    ld l, $FE                                     ; $61D2: $2E $FE
    db $FD                                        ; $61D4: $FD
    sbc e                                         ; $61D5: $9B
    ld a, b                                       ; $61D6: $78
    ld [hl], b                                    ; $61D7: $70
    sbc a                                         ; $61D8: $9F
    ld c, a                                       ; $61D9: $4F

jr_01D_61DA:
    ld [hl], d                                    ; $61DA: $72
    jr nz, @+$47                                  ; $61DB: $20 $45

    ld l, c                                       ; $61DD: $69
    ld h, h                                       ; $61DE: $64
    ld l, a                                       ; $61DF: $6F
    ld l, [hl]                                    ; $61E0: $6E
    jr nz, jr_01D_6257                            ; $61E1: $20 $74

jr_01D_61E3:
    ld l, a                                       ; $61E3: $6F
    ld l, h                                       ; $61E4: $6C
    ld h, h                                       ; $61E5: $64
    rst $38                                       ; $61E6: $FF
    ld a, c                                       ; $61E7: $79
    ld l, a                                       ; $61E8: $6F
    ld [hl], l                                    ; $61E9: $75
    ld hl, $FDFE                                  ; $61EA: $21 $FE $FD
    sbc e                                         ; $61ED: $9B
    ld hl, sp+$4A                                 ; $61EE: $F8 $4A
    sbc a                                         ; $61F0: $9F

jr_01D_61F1:
    ld d, h                                       ; $61F1: $54
    ld l, b                                       ; $61F2: $68
    ld h, c                                       ; $61F3: $61
    ld [hl], h                                    ; $61F4: $74

jr_01D_61F5:
    jr nz, jr_01D_626B                            ; $61F5: $20 $74

    ld l, a                                       ; $61F7: $6F
    ld l, a                                       ; $61F8: $6F
    ld l, $FE                                     ; $61F9: $2E $FE
    db $FD                                        ; $61FB: $FD
    sbc d                                         ; $61FC: $9A
    sbc e                                         ; $61FD: $9B
    ld hl, sp+$4A                                 ; $61FE: $F8 $4A
    sbc a                                         ; $6200: $9F
    ld c, e                                       ; $6201: $4B
    ld a, c                                       ; $6202: $79
    ld [hl], d                                    ; $6203: $72
    ld l, a                                       ; $6204: $6F
    ld [hl], e                                    ; $6205: $73
    inc l                                         ; $6206: $2C

jr_01D_6207:
    rst $38                                       ; $6207: $FF
    ld c, c                                       ; $6208: $49
    jr nz, jr_01D_626F                            ; $6209: $20 $64

    ld l, a                                       ; $620B: $6F
    jr nz, jr_01D_627C                            ; $620C: $20 $6E

jr_01D_620E:
    ld l, a                                       ; $620E: $6F
    ld [hl], h                                    ; $620F: $74
    jr nz, jr_01D_627D                            ; $6210: $20 $6B

jr_01D_6212:
    ld l, [hl]                                    ; $6212: $6E
    ld l, a                                       ; $6213: $6F
    ld [hl], a                                    ; $6214: $77
    cp $65                                        ; $6215: $FE $65
    ld a, b                                       ; $6217: $78
    ld h, c                                       ; $6218: $61
    ld h, e                                       ; $6219: $63
    ld [hl], h                                    ; $621A: $74
    ld l, h                                       ; $621B: $6C
    ld a, c                                       ; $621C: $79
    jr nz, @+$6A                                  ; $621D: $20 $68

    ld l, a                                       ; $621F: $6F
    ld [hl], a                                    ; $6220: $77
    jr nz, jr_01D_6297                            ; $6221: $20 $74

    ld l, a                                       ; $6223: $6F
    rst $38                                       ; $6224: $FF
    ld h, a                                       ; $6225: $67
    ld h, l                                       ; $6226: $65
    ld [hl], h                                    ; $6227: $74
    jr nz, jr_01D_62A3                            ; $6228: $20 $79

    ld l, a                                       ; $622A: $6F

jr_01D_622B:
    ld [hl], l                                    ; $622B: $75
    jr nz, jr_01D_6296                            ; $622C: $20 $68

    ld l, a                                       ; $622E: $6F

jr_01D_622F:
    ld l, l                                       ; $622F: $6D
    ld h, l                                       ; $6230: $65
    ld l, $FE                                     ; $6231: $2E $FE
    db $FD                                        ; $6233: $FD
    ld e, b                                       ; $6234: $58
    ld a, [hl+]                                   ; $6235: $2A
    sbc a                                         ; $6236: $9F
    ld c, c                                       ; $6237: $49
    jr nz, jr_01D_629E                            ; $6238: $20 $64

    ld l, a                                       ; $623A: $6F
    jr nz, jr_01D_62A5                            ; $623B: $20 $68

    ld l, a                                       ; $623D: $6F
    ld [hl], a                                    ; $623E: $77
    ld h, l                                       ; $623F: $65
    halt                                          ; $6240: $76
    ld h, l                                       ; $6241: $65
    ld [hl], d                                    ; $6242: $72
    rst $38                                       ; $6243: $FF
    ld l, b                                       ; $6244: $68
    ld h, c                                       ; $6245: $61
    halt                                          ; $6246: $76
    ld h, l                                       ; $6247: $65
    jr nz, jr_01D_62AB                            ; $6248: $20 $61

    jr nz, jr_01D_62C0                            ; $624A: $20 $74

    ld l, b                                       ; $624C: $68
    ld h, l                                       ; $624D: $65
    ld l, a                                       ; $624E: $6F
    ld [hl], d                                    ; $624F: $72
    ld a, c                                       ; $6250: $79
    ld l, $FE                                     ; $6251: $2E $FE
    db $FD                                        ; $6253: $FD
    sbc d                                         ; $6254: $9A
    ld e, b                                       ; $6255: $58
    rla                                           ; $6256: $17

jr_01D_6257:
    ld b, d                                       ; $6257: $42
    sbc e                                         ; $6258: $9B
    ld hl, sp+$4A                                 ; $6259: $F8 $4A
    sbc a                                         ; $625B: $9F
    ld d, h                                       ; $625C: $54
    ld l, b                                       ; $625D: $68
    ld l, c                                       ; $625E: $69
    ld [hl], e                                    ; $625F: $73
    jr nz, jr_01D_62CB                            ; $6260: $20 $69

    ld [hl], e                                    ; $6262: $73
    jr nz, jr_01D_62D9                            ; $6263: $20 $74

    ld l, b                                       ; $6265: $68
    ld h, l                                       ; $6266: $65
    rst $38                                       ; $6267: $FF
    ld b, e                                       ; $6268: $43
    ld l, a                                       ; $6269: $6F

Call_01D_626A:
    ld [hl], d                                    ; $626A: $72

jr_01D_626B:
    ld h, l                                       ; $626B: $65
    jr nz, jr_01D_62B5                            ; $626C: $20 $47

    ld l, h                                       ; $626E: $6C

jr_01D_626F:
    ld a, c                                       ; $626F: $79
    ld [hl], b                                    ; $6270: $70
    ld l, b                                       ; $6271: $68
    inc l                                         ; $6272: $2C
    cp $61                                        ; $6273: $FE $61
    ld l, [hl]                                    ; $6275: $6E
    jr nz, jr_01D_62E7                            ; $6276: $20 $6F

    ld l, h                                       ; $6278: $6C
    ld h, h                                       ; $6279: $64
    jr nz, jr_01D_62EE                            ; $627A: $20 $72

jr_01D_627C:
    ld h, l                                       ; $627C: $65

jr_01D_627D:
    ld l, h                                       ; $627D: $6C
    ld l, c                                       ; $627E: $69
    ld h, e                                       ; $627F: $63
    rst $38                                       ; $6280: $FF
    ld [hl], a                                    ; $6281: $77
    ld l, b                                       ; $6282: $68
    ld l, c                                       ; $6283: $69
    ld h, e                                       ; $6284: $63
    ld l, b                                       ; $6285: $68
    jr nz, @+$4B                                  ; $6286: $20 $49

    jr nz, @+$68                                  ; $6288: $20 $66

    ld l, a                                       ; $628A: $6F
    ld [hl], l                                    ; $628B: $75
    ld l, [hl]                                    ; $628C: $6E
    ld h, h                                       ; $628D: $64
    cp $6F                                        ; $628E: $FE $6F
    ld l, [hl]                                    ; $6290: $6E
    jr nz, jr_01D_62F4                            ; $6291: $20 $61

    ld l, [hl]                                    ; $6293: $6E
    rst $38                                       ; $6294: $FF
    ld h, l                                       ; $6295: $65

jr_01D_6296:
    ld a, b                                       ; $6296: $78

jr_01D_6297:
    ld [hl], b                                    ; $6297: $70
    ld h, l                                       ; $6298: $65
    ld h, h                                       ; $6299: $64
    ld l, c                                       ; $629A: $69
    ld [hl], h                                    ; $629B: $74
    ld l, c                                       ; $629C: $69
    ld l, a                                       ; $629D: $6F

jr_01D_629E:
    ld l, [hl]                                    ; $629E: $6E
    cp $33                                        ; $629F: $FE $33
    jr c, jr_01D_62D3                             ; $62A1: $38 $30

jr_01D_62A3:
    jr nz, jr_01D_631E                            ; $62A3: $20 $79

jr_01D_62A5:
    ld h, l                                       ; $62A5: $65
    ld h, c                                       ; $62A6: $61
    ld [hl], d                                    ; $62A7: $72
    ld [hl], e                                    ; $62A8: $73
    jr nz, jr_01D_630C                            ; $62A9: $20 $61

jr_01D_62AB:
    ld h, a                                       ; $62AB: $67
    ld l, a                                       ; $62AC: $6F
    ld l, $FE                                     ; $62AD: $2E $FE
    db $FD                                        ; $62AF: $FD
    ld e, b                                       ; $62B0: $58
    ld e, $9F                                     ; $62B1: $1E $9F
    ld b, c                                       ; $62B3: $41
    ld [hl], b                                    ; $62B4: $70

jr_01D_62B5:
    ld [hl], b                                    ; $62B5: $70
    ld h, c                                       ; $62B6: $61
    ld [hl], d                                    ; $62B7: $72
    ld h, l                                       ; $62B8: $65
    ld l, [hl]                                    ; $62B9: $6E
    ld [hl], h                                    ; $62BA: $74
    ld l, h                                       ; $62BB: $6C
    ld a, c                                       ; $62BC: $79
    inc l                                         ; $62BD: $2C
    cp $69                                        ; $62BE: $FE $69

jr_01D_62C0:
    ld [hl], h                                    ; $62C0: $74
    jr nz, jr_01D_6326                            ; $62C1: $20 $63

    ld h, c                                       ; $62C3: $61
    ld l, [hl]                                    ; $62C4: $6E
    jr nz, jr_01D_6329                            ; $62C5: $20 $62

    ld h, l                                       ; $62C7: $65
    jr nz, jr_01D_633F                            ; $62C8: $20 $75

    ld [hl], e                                    ; $62CA: $73

jr_01D_62CB:
    ld h, l                                       ; $62CB: $65
    ld h, h                                       ; $62CC: $64
    rst $38                                       ; $62CD: $FF
    ld [hl], h                                    ; $62CE: $74
    ld l, a                                       ; $62CF: $6F
    jr nz, jr_01D_6344                            ; $62D0: $20 $72

    ld h, l                                       ; $62D2: $65

jr_01D_62D3:
    ld h, c                                       ; $62D3: $61
    ld h, e                                       ; $62D4: $63
    ld l, b                                       ; $62D5: $68
    jr nz, @+$76                                  ; $62D6: $20 $74

    ld l, b                                       ; $62D8: $68

jr_01D_62D9:
    ld h, l                                       ; $62D9: $65
    cp $43                                        ; $62DA: $FE $43
    ld l, a                                       ; $62DC: $6F
    ld [hl], d                                    ; $62DD: $72
    ld h, l                                       ; $62DE: $65
    jr nz, @+$54                                  ; $62DF: $20 $52

    ld h, l                                       ; $62E1: $65
    ld h, a                                       ; $62E2: $67
    ld l, c                                       ; $62E3: $69
    ld l, a                                       ; $62E4: $6F
    ld l, [hl]                                    ; $62E5: $6E
    inc l                                         ; $62E6: $2C

jr_01D_62E7:
    rst $38                                       ; $62E7: $FF
    ld h, c                                       ; $62E8: $61
    ld l, [hl]                                    ; $62E9: $6E
    jr nz, jr_01D_634D                            ; $62EA: $20 $61

    ld [hl], d                                    ; $62EC: $72
    ld h, l                                       ; $62ED: $65

jr_01D_62EE:
    ld h, c                                       ; $62EE: $61
    jr nz, @+$76                                  ; $62EF: $20 $74

    ld l, b                                       ; $62F1: $68
    ld h, c                                       ; $62F2: $61
    ld [hl], h                                    ; $62F3: $74

jr_01D_62F4:
    cp $69                                        ; $62F4: $FE $69
    ld [hl], e                                    ; $62F6: $73
    jr nz, @+$68                                  ; $62F7: $20 $66

    ld h, c                                       ; $62F9: $61
    ld h, d                                       ; $62FA: $62
    ld l, h                                       ; $62FB: $6C
    ld h, l                                       ; $62FC: $65
    ld h, h                                       ; $62FD: $64
    jr nz, jr_01D_6374                            ; $62FE: $20 $74

    ld l, a                                       ; $6300: $6F
    jr nz, @+$64                                  ; $6301: $20 $62

    ld h, l                                       ; $6303: $65
    rst $38                                       ; $6304: $FF
    db $FD                                        ; $6305: $FD
    ld e, b                                       ; $6306: $58
    rra                                           ; $6307: $1F
    sbc a                                         ; $6308: $9F
    ld [hl], h                                    ; $6309: $74
    ld l, b                                       ; $630A: $68
    ld h, l                                       ; $630B: $65

jr_01D_630C:
    jr nz, jr_01D_6371                            ; $630C: $20 $63

    ld h, l                                       ; $630E: $65
    ld l, [hl]                                    ; $630F: $6E
    ld [hl], h                                    ; $6310: $74
    ld h, l                                       ; $6311: $65
    ld [hl], d                                    ; $6312: $72
    jr nz, jr_01D_6384                            ; $6313: $20 $6F

    ld h, [hl]                                    ; $6315: $66
    cp $74                                        ; $6316: $FE $74
    ld l, b                                       ; $6318: $68
    ld h, l                                       ; $6319: $65
    jr nz, @+$77                                  ; $631A: $20 $75

    ld l, [hl]                                    ; $631C: $6E
    ld l, c                                       ; $631D: $69

jr_01D_631E:
    halt                                          ; $631E: $76
    ld h, l                                       ; $631F: $65
    ld [hl], d                                    ; $6320: $72
    ld [hl], e                                    ; $6321: $73
    ld h, l                                       ; $6322: $65
    inc l                                         ; $6323: $2C
    rst $38                                       ; $6324: $FF
    ld h, c                                       ; $6325: $61

jr_01D_6326:
    jr nz, jr_01D_638C                            ; $6326: $20 $64

    ld l, c                                       ; $6328: $69

jr_01D_6329:
    ld l, l                                       ; $6329: $6D
    ld h, l                                       ; $632A: $65
    ld l, [hl]                                    ; $632B: $6E
    ld [hl], e                                    ; $632C: $73
    ld l, c                                       ; $632D: $69
    ld l, a                                       ; $632E: $6F
    ld l, [hl]                                    ; $632F: $6E
    ld h, c                                       ; $6330: $61
    ld l, h                                       ; $6331: $6C
    cp $66                                        ; $6332: $FE $66
    ld l, a                                       ; $6334: $6F
    ld h, e                                       ; $6335: $63
    ld h, c                                       ; $6336: $61
    ld l, h                                       ; $6337: $6C
    jr nz, jr_01D_63AA                            ; $6338: $20 $70

    ld l, a                                       ; $633A: $6F
    ld l, c                                       ; $633B: $69
    ld l, [hl]                                    ; $633C: $6E
    ld [hl], h                                    ; $633D: $74
    inc l                                         ; $633E: $2C

jr_01D_633F:
    rst $38                                       ; $633F: $FF
    ld l, c                                       ; $6340: $69
    ld h, [hl]                                    ; $6341: $66
    jr nz, jr_01D_63BD                            ; $6342: $20 $79

jr_01D_6344:
    ld l, a                                       ; $6344: $6F
    ld [hl], l                                    ; $6345: $75
    jr nz, jr_01D_63BF                            ; $6346: $20 $77

    ld l, c                                       ; $6348: $69
    ld l, h                                       ; $6349: $6C
    ld l, h                                       ; $634A: $6C
    ld l, $FE                                     ; $634B: $2E $FE

jr_01D_634D:
    ld d, e                                       ; $634D: $53
    ld l, a                                       ; $634E: $6F
    jr nz, jr_01D_63BA                            ; $634F: $20 $69

    ld l, [hl]                                    ; $6351: $6E
    jr nz, jr_01D_63C8                            ; $6352: $20 $74

    ld l, b                                       ; $6354: $68
    ld h, l                                       ; $6355: $65
    ld l, a                                       ; $6356: $6F
    ld [hl], d                                    ; $6357: $72
    ld a, c                                       ; $6358: $79
    inc l                                         ; $6359: $2C
    rst $38                                       ; $635A: $FF
    ld a, c                                       ; $635B: $79
    ld l, a                                       ; $635C: $6F
    ld [hl], l                                    ; $635D: $75
    jr nz, jr_01D_63C3                            ; $635E: $20 $63

    ld l, a                                       ; $6360: $6F
    ld [hl], l                                    ; $6361: $75
    ld l, h                                       ; $6362: $6C
    ld h, h                                       ; $6363: $64
    jr nz, @+$77                                  ; $6364: $20 $75

    ld [hl], e                                    ; $6366: $73
    ld h, l                                       ; $6367: $65
    cp $FD                                        ; $6368: $FE $FD
    ld e, b                                       ; $636A: $58
    jr nz, jr_01D_630C                            ; $636B: $20 $9F

    ld [hl], h                                    ; $636D: $74
    ld l, b                                       ; $636E: $68
    ld l, c                                       ; $636F: $69
    ld [hl], e                                    ; $6370: $73

jr_01D_6371:
    jr nz, jr_01D_63E7                            ; $6371: $20 $74

    ld l, a                                       ; $6373: $6F

jr_01D_6374:
    jr nz, jr_01D_63DD                            ; $6374: $20 $67

    ld h, l                                       ; $6376: $65
    ld [hl], h                                    ; $6377: $74
    jr nz, @+$76                                  ; $6378: $20 $74

    ld l, a                                       ; $637A: $6F
    rst $38                                       ; $637B: $FF
    ld a, c                                       ; $637C: $79
    ld l, a                                       ; $637D: $6F
    ld [hl], l                                    ; $637E: $75
    ld [hl], d                                    ; $637F: $72
    jr nz, jr_01D_63F9                            ; $6380: $20 $77

    ld l, a                                       ; $6382: $6F
    ld [hl], d                                    ; $6383: $72

jr_01D_6384:
    ld l, h                                       ; $6384: $6C
    ld h, h                                       ; $6385: $64
    ld l, $FE                                     ; $6386: $2E $FE
    ld c, b                                       ; $6388: $48
    ld l, a                                       ; $6389: $6F
    ld [hl], a                                    ; $638A: $77
    ld h, l                                       ; $638B: $65

jr_01D_638C:
    halt                                          ; $638C: $76
    ld h, l                                       ; $638D: $65
    ld [hl], d                                    ; $638E: $72
    inc l                                         ; $638F: $2C
    jr nz, jr_01D_6406                            ; $6390: $20 $74

    ld l, b                                       ; $6392: $68
    ld h, l                                       ; $6393: $65
    cp $43                                        ; $6394: $FE $43
    ld l, a                                       ; $6396: $6F
    ld [hl], d                                    ; $6397: $72
    ld h, l                                       ; $6398: $65
    jr nz, jr_01D_63E0                            ; $6399: $20 $45

    ld l, [hl]                                    ; $639B: $6E
    ld [hl], h                                    ; $639C: $74
    ld [hl], d                                    ; $639D: $72
    ld h, c                                       ; $639E: $61
    ld l, [hl]                                    ; $639F: $6E
    ld h, e                                       ; $63A0: $63
    ld h, l                                       ; $63A1: $65
    rst $38                                       ; $63A2: $FF
    ld l, c                                       ; $63A3: $69
    ld [hl], e                                    ; $63A4: $73
    jr nz, jr_01D_641A                            ; $63A5: $20 $73

    ld h, l                                       ; $63A7: $65
    ld h, c                                       ; $63A8: $61
    ld l, h                                       ; $63A9: $6C

jr_01D_63AA:
    ld h, l                                       ; $63AA: $65
    ld h, h                                       ; $63AB: $64
    jr nz, jr_01D_641C                            ; $63AC: $20 $6E

    ld l, a                                       ; $63AE: $6F
    ld [hl], a                                    ; $63AF: $77
    inc l                                         ; $63B0: $2C
    cp $73                                        ; $63B1: $FE $73
    ld l, a                                       ; $63B3: $6F
    jr nz, jr_01D_642F                            ; $63B4: $20 $79

    ld l, a                                       ; $63B6: $6F
    ld [hl], l                                    ; $63B7: $75
    jr nz, jr_01D_642A                            ; $63B8: $20 $70

jr_01D_63BA:
    ld [hl], d                                    ; $63BA: $72
    ld l, a                                       ; $63BB: $6F
    ld h, d                                       ; $63BC: $62

jr_01D_63BD:
    ld h, c                                       ; $63BD: $61
    ld h, d                                       ; $63BE: $62

jr_01D_63BF:
    ld l, h                                       ; $63BF: $6C
    ld a, c                                       ; $63C0: $79
    rst $38                                       ; $63C1: $FF
    db $FD                                        ; $63C2: $FD

jr_01D_63C3:
    ld e, b                                       ; $63C3: $58
    inc hl                                        ; $63C4: $23
    sbc a                                         ; $63C5: $9F
    ld [hl], a                                    ; $63C6: $77
    ld l, a                                       ; $63C7: $6F

jr_01D_63C8:
    ld l, [hl]                                    ; $63C8: $6E
    daa                                           ; $63C9: $27
    ld [hl], h                                    ; $63CA: $74
    jr nz, jr_01D_642F                            ; $63CB: $20 $62

    ld h, l                                       ; $63CD: $65
    jr nz, jr_01D_6431                            ; $63CE: $20 $61

    ld h, d                                       ; $63D0: $62
    ld l, h                                       ; $63D1: $6C
    ld h, l                                       ; $63D2: $65
    cp $74                                        ; $63D3: $FE $74
    ld l, a                                       ; $63D5: $6F
    jr nz, jr_01D_643F                            ; $63D6: $20 $67

    ld h, l                                       ; $63D8: $65
    ld [hl], h                                    ; $63D9: $74
    jr nz, jr_01D_6450                            ; $63DA: $20 $74

    ld l, b                                       ; $63DC: $68

jr_01D_63DD:
    ld h, l                                       ; $63DD: $65
    ld [hl], d                                    ; $63DE: $72
    ld h, l                                       ; $63DF: $65

jr_01D_63E0:
    rst $38                                       ; $63E0: $FF
    ld h, c                                       ; $63E1: $61
    ld [hl], h                                    ; $63E2: $74
    jr nz, jr_01D_6459                            ; $63E3: $20 $74

    ld l, b                                       ; $63E5: $68
    ld l, c                                       ; $63E6: $69

jr_01D_63E7:
    ld [hl], e                                    ; $63E7: $73
    jr nz, @+$76                                  ; $63E8: $20 $74

    ld l, c                                       ; $63EA: $69
    ld l, l                                       ; $63EB: $6D
    ld h, l                                       ; $63EC: $65
    ld l, $FE                                     ; $63ED: $2E $FE
    ld b, d                                       ; $63EF: $42
    ld [hl], l                                    ; $63F0: $75
    ld [hl], h                                    ; $63F1: $74
    jr nz, jr_01D_6458                            ; $63F2: $20 $64

    ld l, c                                       ; $63F4: $69
    ld h, h                                       ; $63F5: $64
    jr nz, jr_01D_6471                            ; $63F6: $20 $79

    ld l, a                                       ; $63F8: $6F

jr_01D_63F9:
    ld [hl], l                                    ; $63F9: $75
    rst $38                                       ; $63FA: $FF
    ld [hl], e                                    ; $63FB: $73
    ld h, l                                       ; $63FC: $65
    ld h, l                                       ; $63FD: $65
    jr nz, jr_01D_6474                            ; $63FE: $20 $74

    ld l, b                                       ; $6400: $68
    ld h, l                                       ; $6401: $65
    cp $53                                        ; $6402: $FE $53
    ld l, b                                       ; $6404: $68
    ld h, c                                       ; $6405: $61

jr_01D_6406:
    ld h, h                                       ; $6406: $64
    ld l, a                                       ; $6407: $6F
    ld [hl], a                                    ; $6408: $77
    jr nz, jr_01D_6452                            ; $6409: $20 $47

    ld h, l                                       ; $640B: $65
    ld a, c                                       ; $640C: $79
    ld [hl], e                                    ; $640D: $73
    ld h, l                                       ; $640E: $65
    ld [hl], d                                    ; $640F: $72
    rst $38                                       ; $6410: $FF
    ld [hl], h                                    ; $6411: $74
    ld l, b                                       ; $6412: $68
    ld h, c                                       ; $6413: $61
    ld [hl], h                                    ; $6414: $74
    jr nz, jr_01D_6489                            ; $6415: $20 $72

    ld h, l                                       ; $6417: $65
    ld h, e                                       ; $6418: $63
    ld h, l                                       ; $6419: $65

jr_01D_641A:
    ld l, [hl]                                    ; $641A: $6E
    ld [hl], h                                    ; $641B: $74

jr_01D_641C:
    ld l, h                                       ; $641C: $6C
    ld a, c                                       ; $641D: $79
    cp $61                                        ; $641E: $FE $61
    ld [hl], b                                    ; $6420: $70
    ld [hl], b                                    ; $6421: $70
    ld h, l                                       ; $6422: $65
    ld h, c                                       ; $6423: $61
    ld [hl], d                                    ; $6424: $72
    ld h, l                                       ; $6425: $65
    ld h, h                                       ; $6426: $64
    jr nz, @+$6B                                  ; $6427: $20 $69

    ld l, [hl]                                    ; $6429: $6E

jr_01D_642A:
    rst $38                                       ; $642A: $FF
    ld c, [hl]                                    ; $642B: $4E
    ld h, c                                       ; $642C: $61
    ld [hl], d                                    ; $642D: $72
    ld l, a                                       ; $642E: $6F

jr_01D_642F:
    ld l, a                                       ; $642F: $6F
    ld l, l                                       ; $6430: $6D

jr_01D_6431:
    ccf                                           ; $6431: $3F
    jr nz, jr_01D_6488                            ; $6432: $20 $54

    ld l, b                                       ; $6434: $68
    ld l, c                                       ; $6435: $69
    ld [hl], e                                    ; $6436: $73
    cp $47                                        ; $6437: $FE $47
    ld l, h                                       ; $6439: $6C
    ld a, c                                       ; $643A: $79
    ld [hl], b                                    ; $643B: $70
    ld l, b                                       ; $643C: $68
    jr nz, jr_01D_64B1                            ; $643D: $20 $72

jr_01D_643F:
    ld h, l                                       ; $643F: $65
    ld [hl], e                                    ; $6440: $73
    ld l, a                                       ; $6441: $6F
    ld l, [hl]                                    ; $6442: $6E
    ld h, c                                       ; $6443: $61
    ld [hl], h                                    ; $6444: $74
    ld h, l                                       ; $6445: $65
    ld [hl], e                                    ; $6446: $73
    rst $38                                       ; $6447: $FF
    ld [hl], a                                    ; $6448: $77
    ld l, c                                       ; $6449: $69
    ld [hl], h                                    ; $644A: $74
    ld l, b                                       ; $644B: $68
    jr nz, jr_01D_64AF                            ; $644C: $20 $61

    jr nz, jr_01D_64C3                            ; $644E: $20 $73

jr_01D_6450:
    ld l, c                                       ; $6450: $69
    ld l, l                                       ; $6451: $6D

jr_01D_6452:
    ld l, c                                       ; $6452: $69
    ld l, h                                       ; $6453: $6C
    ld h, c                                       ; $6454: $61
    ld [hl], d                                    ; $6455: $72
    cp $65                                        ; $6456: $FE $65

jr_01D_6458:
    ld l, [hl]                                    ; $6458: $6E

jr_01D_6459:
    ld h, l                                       ; $6459: $65
    ld [hl], d                                    ; $645A: $72
    ld h, a                                       ; $645B: $67
    ld a, c                                       ; $645C: $79
    jr nz, jr_01D_64D3                            ; $645D: $20 $74

    ld l, a                                       ; $645F: $6F
    jr nz, jr_01D_64D6                            ; $6460: $20 $74

    ld l, b                                       ; $6462: $68
    ld h, c                                       ; $6463: $61
    ld [hl], h                                    ; $6464: $74
    rst $38                                       ; $6465: $FF
    ld b, a                                       ; $6466: $47
    ld h, l                                       ; $6467: $65
    ld a, c                                       ; $6468: $79
    ld [hl], e                                    ; $6469: $73
    ld h, l                                       ; $646A: $65
    ld [hl], d                                    ; $646B: $72
    ld l, $FE                                     ; $646C: $2E $FE
    db $FD                                        ; $646E: $FD
    sbc d                                         ; $646F: $9A
    ld e, b                                       ; $6470: $58

jr_01D_6471:
    ld [bc], a                                    ; $6471: $02
    ld b, d                                       ; $6472: $42
    sbc e                                         ; $6473: $9B

jr_01D_6474:
    ld hl, sp+$4A                                 ; $6474: $F8 $4A
    sbc a                                         ; $6476: $9F
    ld d, h                                       ; $6477: $54
    ld l, b                                       ; $6478: $68
    ld h, l                                       ; $6479: $65
    ld [hl], d                                    ; $647A: $72
    ld h, l                                       ; $647B: $65
    ld h, [hl]                                    ; $647C: $66
    ld l, a                                       ; $647D: $6F
    ld [hl], d                                    ; $647E: $72
    ld h, l                                       ; $647F: $65
    inc l                                         ; $6480: $2C
    cp $49                                        ; $6481: $FE $49
    jr nz, jr_01D_64F9                            ; $6483: $20 $74

    ld l, b                                       ; $6485: $68
    ld l, c                                       ; $6486: $69
    ld l, [hl]                                    ; $6487: $6E

jr_01D_6488:
    ld l, e                                       ; $6488: $6B

jr_01D_6489:
    jr nz, jr_01D_64FF                            ; $6489: $20 $74

    ld l, b                                       ; $648B: $68
    ld h, l                                       ; $648C: $65
    rst $38                                       ; $648D: $FF
    ld l, e                                       ; $648E: $6B
    ld h, l                                       ; $648F: $65
    ld a, c                                       ; $6490: $79
    jr nz, jr_01D_6507                            ; $6491: $20 $74

    ld l, a                                       ; $6493: $6F
    jr nz, jr_01D_650B                            ; $6494: $20 $75

    ld [hl], e                                    ; $6496: $73
    ld l, c                                       ; $6497: $69
    ld l, [hl]                                    ; $6498: $6E
    ld h, a                                       ; $6499: $67
    cp $FD                                        ; $649A: $FE $FD
    ld e, b                                       ; $649C: $58
    ld hl, $749F                                  ; $649D: $21 $9F $74
    ld l, b                                       ; $64A0: $68
    ld h, l                                       ; $64A1: $65
    jr nz, jr_01D_64E7                            ; $64A2: $20 $43

    ld l, a                                       ; $64A4: $6F
    ld [hl], d                                    ; $64A5: $72
    ld h, l                                       ; $64A6: $65
    jr nz, jr_01D_64F0                            ; $64A7: $20 $47

    ld l, h                                       ; $64A9: $6C
    ld a, c                                       ; $64AA: $79
    ld [hl], b                                    ; $64AB: $70
    ld l, b                                       ; $64AC: $68
    rst $38                                       ; $64AD: $FF
    ld l, h                                       ; $64AE: $6C

jr_01D_64AF:
    ld l, c                                       ; $64AF: $69
    ld h, l                                       ; $64B0: $65

jr_01D_64B1:
    ld [hl], e                                    ; $64B1: $73
    jr nz, jr_01D_651D                            ; $64B2: $20 $69

    ld l, [hl]                                    ; $64B4: $6E
    jr nz, jr_01D_652B                            ; $64B5: $20 $74

    ld l, b                                       ; $64B7: $68
    ld h, l                                       ; $64B8: $65
    cp $53                                        ; $64B9: $FE $53
    ld l, b                                       ; $64BB: $68
    ld h, c                                       ; $64BC: $61
    ld h, h                                       ; $64BD: $64
    ld l, a                                       ; $64BE: $6F
    ld [hl], a                                    ; $64BF: $77
    jr nz, jr_01D_6509                            ; $64C0: $20 $47

    ld h, l                                       ; $64C2: $65

jr_01D_64C3:
    ld a, c                                       ; $64C3: $79
    ld [hl], e                                    ; $64C4: $73
    ld h, l                                       ; $64C5: $65
    ld [hl], d                                    ; $64C6: $72
    ld l, $FF                                     ; $64C7: $2E $FF
    ld d, l                                       ; $64C9: $55
    ld l, [hl]                                    ; $64CA: $6E
    ld h, [hl]                                    ; $64CB: $66
    ld l, a                                       ; $64CC: $6F
    ld [hl], d                                    ; $64CD: $72
    ld [hl], h                                    ; $64CE: $74
    ld [hl], l                                    ; $64CF: $75
    ld l, [hl]                                    ; $64D0: $6E
    ld h, c                                       ; $64D1: $61
    ld [hl], h                                    ; $64D2: $74

jr_01D_64D3:
    ld h, l                                       ; $64D3: $65
    ld l, h                                       ; $64D4: $6C
    ld a, c                                       ; $64D5: $79

jr_01D_64D6:
    inc l                                         ; $64D6: $2C
    cp $FD                                        ; $64D7: $FE $FD
    ld e, b                                       ; $64D9: $58
    ld [hl+], a                                   ; $64DA: $22
    sbc a                                         ; $64DB: $9F
    ld c, c                                       ; $64DC: $49
    jr nz, jr_01D_6543                            ; $64DD: $20 $64

    ld l, a                                       ; $64DF: $6F
    ld l, [hl]                                    ; $64E0: $6E
    daa                                           ; $64E1: $27
    ld [hl], h                                    ; $64E2: $74
    jr nz, jr_01D_6550                            ; $64E3: $20 $6B

    ld l, [hl]                                    ; $64E5: $6E
    ld l, a                                       ; $64E6: $6F

jr_01D_64E7:
    ld [hl], a                                    ; $64E7: $77
    rst $38                                       ; $64E8: $FF
    ld h, l                                       ; $64E9: $65
    ld a, b                                       ; $64EA: $78
    ld h, c                                       ; $64EB: $61
    ld h, e                                       ; $64EC: $63
    ld [hl], h                                    ; $64ED: $74
    ld l, h                                       ; $64EE: $6C
    ld a, c                                       ; $64EF: $79

jr_01D_64F0:
    jr nz, @+$6A                                  ; $64F0: $20 $68

    ld l, a                                       ; $64F2: $6F
    ld [hl], a                                    ; $64F3: $77
    jr nz, jr_01D_655F                            ; $64F4: $20 $69

    ld [hl], h                                    ; $64F6: $74
    cp $77                                        ; $64F7: $FE $77

jr_01D_64F9:
    ld l, a                                       ; $64F9: $6F
    ld [hl], d                                    ; $64FA: $72
    ld l, e                                       ; $64FB: $6B
    ld [hl], e                                    ; $64FC: $73
    ld l, $20                                     ; $64FD: $2E $20

jr_01D_64FF:
    ld b, c                                       ; $64FF: $41
    ld l, [hl]                                    ; $6500: $6E
    ld a, c                                       ; $6501: $79
    ld l, a                                       ; $6502: $6F
    ld l, [hl]                                    ; $6503: $6E
    ld h, l                                       ; $6504: $65
    rst $38                                       ; $6505: $FF
    ld [hl], a                                    ; $6506: $77

jr_01D_6507:
    ld l, b                                       ; $6507: $68
    ld l, a                                       ; $6508: $6F

jr_01D_6509:
    jr nz, jr_01D_657B                            ; $6509: $20 $70

jr_01D_650B:
    ld l, c                                       ; $650B: $69
    ld h, e                                       ; $650C: $63
    ld l, e                                       ; $650D: $6B
    ld [hl], e                                    ; $650E: $73
    jr nz, jr_01D_6586                            ; $650F: $20 $75

    ld [hl], b                                    ; $6511: $70
    cp $74                                        ; $6512: $FE $74
    ld l, b                                       ; $6514: $68
    ld h, l                                       ; $6515: $65
    jr nz, jr_01D_655F                            ; $6516: $20 $47

    ld l, h                                       ; $6518: $6C
    ld a, c                                       ; $6519: $79
    ld [hl], b                                    ; $651A: $70
    ld l, b                                       ; $651B: $68
    rst $38                                       ; $651C: $FF

jr_01D_651D:
    ld h, l                                       ; $651D: $65
    ld a, b                                       ; $651E: $78
    ld [hl], b                                    ; $651F: $70
    ld h, l                                       ; $6520: $65
    ld [hl], d                                    ; $6521: $72
    ld l, c                                       ; $6522: $69
    ld h, l                                       ; $6523: $65
    ld l, [hl]                                    ; $6524: $6E
    ld h, e                                       ; $6525: $63
    ld h, l                                       ; $6526: $65
    ld [hl], e                                    ; $6527: $73
    cp $69                                        ; $6528: $FE $69
    ld l, [hl]                                    ; $652A: $6E

jr_01D_652B:
    ld [hl], h                                    ; $652B: $74
    ld h, l                                       ; $652C: $65
    ld l, [hl]                                    ; $652D: $6E
    ld [hl], e                                    ; $652E: $73
    ld h, l                                       ; $652F: $65
    jr nz, jr_01D_65A2                            ; $6530: $20 $70

    ld h, c                                       ; $6532: $61
    ld l, c                                       ; $6533: $69
    ld l, [hl]                                    ; $6534: $6E
    ld hl, $50FF                                  ; $6535: $21 $FF $50
    ld l, a                                       ; $6538: $6F
    ld l, a                                       ; $6539: $6F
    ld [hl], d                                    ; $653A: $72
    jr nz, jr_01D_6582                            ; $653B: $20 $45

    ld l, c                                       ; $653D: $69
    ld h, h                                       ; $653E: $64
    ld l, a                                       ; $653F: $6F
    ld l, [hl]                                    ; $6540: $6E
    jr nz, @+$79                                  ; $6541: $20 $77

jr_01D_6543:
    ld h, c                                       ; $6543: $61
    ld [hl], e                                    ; $6544: $73
    cp $6E                                        ; $6545: $FE $6E
    ld h, l                                       ; $6547: $65
    ld h, c                                       ; $6548: $61
    ld [hl], d                                    ; $6549: $72
    ld l, h                                       ; $654A: $6C
    ld a, c                                       ; $654B: $79
    jr nz, jr_01D_65B9                            ; $654C: $20 $6B

    ld l, c                                       ; $654E: $69
    ld l, h                                       ; $654F: $6C

jr_01D_6550:
    ld l, h                                       ; $6550: $6C
    ld h, l                                       ; $6551: $65
    ld h, h                                       ; $6552: $64
    rst $38                                       ; $6553: $FF
    ld h, d                                       ; $6554: $62
    ld a, c                                       ; $6555: $79
    jr nz, jr_01D_65C1                            ; $6556: $20 $69

    ld [hl], h                                    ; $6558: $74
    ld l, $2E                                     ; $6559: $2E $2E
    ld l, $62                                     ; $655B: $2E $62
    ld [hl], l                                    ; $655D: $75
    ld [hl], h                                    ; $655E: $74

jr_01D_655F:
    jr nz, jr_01D_65C2                            ; $655F: $20 $61

    ld [hl], e                                    ; $6561: $73
    cp $6C                                        ; $6562: $FE $6C
    ld l, a                                       ; $6564: $6F
    ld l, [hl]                                    ; $6565: $6E
    ld h, a                                       ; $6566: $67
    jr nz, jr_01D_65CA                            ; $6567: $20 $61

    ld [hl], e                                    ; $6569: $73
    jr nz, jr_01D_65D5                            ; $656A: $20 $69

    ld [hl], h                                    ; $656C: $74
    cp $73                                        ; $656D: $FE $73
    ld [hl], h                                    ; $656F: $74
    ld h, c                                       ; $6570: $61
    ld a, c                                       ; $6571: $79
    ld [hl], e                                    ; $6572: $73
    jr nz, jr_01D_65DE                            ; $6573: $20 $69

    ld l, [hl]                                    ; $6575: $6E
    jr nz, @+$76                                  ; $6576: $20 $74

    ld l, b                                       ; $6578: $68
    ld h, l                                       ; $6579: $65
    rst $38                                       ; $657A: $FF

jr_01D_657B:
    ld h, d                                       ; $657B: $62
    ld l, a                                       ; $657C: $6F
    ld a, b                                       ; $657D: $78
    inc l                                         ; $657E: $2C
    jr nz, jr_01D_65FA                            ; $657F: $20 $79

    ld l, a                                       ; $6581: $6F

jr_01D_6582:
    ld [hl], l                                    ; $6582: $75
    jr nz, jr_01D_65F8                            ; $6583: $20 $73

    ld l, b                                       ; $6585: $68

jr_01D_6586:
    ld l, a                                       ; $6586: $6F
    ld [hl], l                                    ; $6587: $75
    ld l, h                                       ; $6588: $6C
    ld h, h                                       ; $6589: $64
    cp $62                                        ; $658A: $FE $62
    ld h, l                                       ; $658C: $65
    jr nz, jr_01D_65F0                            ; $658D: $20 $61

    ld h, d                                       ; $658F: $62
    ld l, h                                       ; $6590: $6C
    ld h, l                                       ; $6591: $65
    jr nz, jr_01D_6608                            ; $6592: $20 $74

    ld l, a                                       ; $6594: $6F
    ld l, $2E                                     ; $6595: $2E $2E
    ld l, $FE                                     ; $6597: $2E $FE
    db $FD                                        ; $6599: $FD
    sbc d                                         ; $659A: $9A
    ld e, b                                       ; $659B: $58
    inc bc                                        ; $659C: $03
    ld b, d                                       ; $659D: $42
    sbc e                                         ; $659E: $9B
    ld hl, sp+$4A                                 ; $659F: $F8 $4A
    sbc a                                         ; $65A1: $9F

jr_01D_65A2:
    ld c, e                                       ; $65A2: $4B
    ld e, c                                       ; $65A3: $59
    ld d, d                                       ; $65A4: $52
    ld c, a                                       ; $65A5: $4F
    ld d, e                                       ; $65A6: $53
    ld hl, $2121                                  ; $65A7: $21 $21 $21
    cp $FD                                        ; $65AA: $FE $FD
    sbc d                                         ; $65AC: $9A
    ld e, b                                       ; $65AD: $58
    inc b                                         ; $65AE: $04
    ld b, d                                       ; $65AF: $42
    sbc e                                         ; $65B0: $9B
    ld c, b                                       ; $65B1: $48
    ld b, [hl]                                    ; $65B2: $46
    sbc a                                         ; $65B3: $9F
    ld d, a                                       ; $65B4: $57
    ld l, b                                       ; $65B5: $68
    ld h, c                                       ; $65B6: $61
    ld [hl], h                                    ; $65B7: $74
    ccf                                           ; $65B8: $3F

jr_01D_65B9:
    jr nz, jr_01D_6612                            ; $65B9: $20 $57

    ld l, b                                       ; $65BB: $68
    ld h, c                                       ; $65BC: $61
    ld [hl], h                                    ; $65BD: $74
    rst $38                                       ; $65BE: $FF
    ld l, b                                       ; $65BF: $68
    ld h, c                                       ; $65C0: $61

jr_01D_65C1:
    ld [hl], b                                    ; $65C1: $70

jr_01D_65C2:
    ld [hl], b                                    ; $65C2: $70
    ld h, l                                       ; $65C3: $65
    ld l, [hl]                                    ; $65C4: $6E
    ld h, l                                       ; $65C5: $65
    ld h, h                                       ; $65C6: $64
    ccf                                           ; $65C7: $3F
    cp $FD                                        ; $65C8: $FE $FD

jr_01D_65CA:
    sbc e                                         ; $65CA: $9B
    ld a, b                                       ; $65CB: $78
    ld [hl], b                                    ; $65CC: $70
    sbc a                                         ; $65CD: $9F
    ld d, e                                       ; $65CE: $53
    ld l, a                                       ; $65CF: $6F
    jr nz, jr_01D_663B                            ; $65D0: $20 $69

    ld h, [hl]                                    ; $65D2: $66
    jr nz, jr_01D_661E                            ; $65D3: $20 $49

jr_01D_65D5:
    jr nz, @+$76                                  ; $65D5: $20 $74

    ld h, c                                       ; $65D7: $61
    ld l, e                                       ; $65D8: $6B
    ld h, l                                       ; $65D9: $65
    jr nz, jr_01D_6645                            ; $65DA: $20 $69

    ld [hl], h                                    ; $65DC: $74
    rst $38                                       ; $65DD: $FF

jr_01D_65DE:
    ld [hl], h                                    ; $65DE: $74
    ld l, a                                       ; $65DF: $6F
    jr nz, jr_01D_6656                            ; $65E0: $20 $74

    ld l, b                                       ; $65E2: $68
    ld h, l                                       ; $65E3: $65
    jr nz, jr_01D_6639                            ; $65E4: $20 $53

    ld l, b                                       ; $65E6: $68
    ld h, c                                       ; $65E7: $61
    ld h, h                                       ; $65E8: $64
    ld l, a                                       ; $65E9: $6F
    ld [hl], a                                    ; $65EA: $77
    cp $47                                        ; $65EB: $FE $47
    ld h, l                                       ; $65ED: $65
    ld a, c                                       ; $65EE: $79
    ld [hl], e                                    ; $65EF: $73

jr_01D_65F0:
    ld h, l                                       ; $65F0: $65
    ld [hl], d                                    ; $65F1: $72
    inc l                                         ; $65F2: $2C
    jr nz, jr_01D_663E                            ; $65F3: $20 $49

    jr nz, jr_01D_665A                            ; $65F5: $20 $63

    ld h, c                                       ; $65F7: $61

jr_01D_65F8:
    ld l, [hl]                                    ; $65F8: $6E
    rst $38                                       ; $65F9: $FF

jr_01D_65FA:
    ld h, a                                       ; $65FA: $67
    ld h, l                                       ; $65FB: $65
    ld [hl], h                                    ; $65FC: $74
    jr nz, @+$76                                  ; $65FD: $20 $74

    ld l, a                                       ; $65FF: $6F
    jr nz, jr_01D_6676                            ; $6600: $20 $74

    ld l, b                                       ; $6602: $68
    ld h, l                                       ; $6603: $65

jr_01D_6604:
    jr nz, jr_01D_6604                            ; $6604: $20 $FE

    ld b, e                                       ; $6606: $43
    ld l, a                                       ; $6607: $6F

jr_01D_6608:
    ld [hl], d                                    ; $6608: $72
    ld h, l                                       ; $6609: $65
    jr nz, jr_01D_665E                            ; $660A: $20 $52

    ld h, l                                       ; $660C: $65
    ld h, a                                       ; $660D: $67
    ld l, c                                       ; $660E: $69
    ld l, a                                       ; $660F: $6F
    ld l, [hl]                                    ; $6610: $6E
    ccf                                           ; $6611: $3F

jr_01D_6612:
    cp $FD                                        ; $6612: $FE $FD
    ld e, b                                       ; $6614: $58
    ld [hl-], a                                   ; $6615: $32
    sbc e                                         ; $6616: $9B
    ld c, b                                       ; $6617: $48
    ld b, [hl]                                    ; $6618: $46
    sbc a                                         ; $6619: $9F
    ld d, h                                       ; $661A: $54
    dec l                                         ; $661B: $2D
    ld d, h                                       ; $661C: $54
    ld l, a                                       ; $661D: $6F

jr_01D_661E:
    ld l, [hl]                                    ; $661E: $6E
    ld a, c                                       ; $661F: $79
    ld hl, $5920                                  ; $6620: $21 $20 $59
    ld l, a                                       ; $6623: $6F
    ld [hl], l                                    ; $6624: $75
    ld l, $2E                                     ; $6625: $2E $2E
    ld l, $FF                                     ; $6627: $2E $FF
    ld a, c                                       ; $6629: $79
    ld l, a                                       ; $662A: $6F
    ld [hl], l                                    ; $662B: $75
    daa                                           ; $662C: $27
    ld [hl], d                                    ; $662D: $72
    ld h, l                                       ; $662E: $65
    jr nz, jr_01D_6699                            ; $662F: $20 $68

    ld l, a                                       ; $6631: $6F
    ld l, h                                       ; $6632: $6C
    ld h, h                                       ; $6633: $64
    ld l, c                                       ; $6634: $69
    ld l, [hl]                                    ; $6635: $6E
    ld h, a                                       ; $6636: $67
    cp $74                                        ; $6637: $FE $74

jr_01D_6639:
    ld l, b                                       ; $6639: $68
    ld h, l                                       ; $663A: $65

jr_01D_663B:
    jr nz, jr_01D_6680                            ; $663B: $20 $43

    ld l, a                                       ; $663D: $6F

jr_01D_663E:
    ld [hl], d                                    ; $663E: $72
    ld h, l                                       ; $663F: $65
    jr nz, @+$49                                  ; $6640: $20 $47

    ld l, h                                       ; $6642: $6C
    ld a, c                                       ; $6643: $79
    ld [hl], b                                    ; $6644: $70

jr_01D_6645:
    ld l, b                                       ; $6645: $68
    ld hl, $FDFE                                  ; $6646: $21 $FE $FD
    sbc e                                         ; $6649: $9B
    ld hl, sp+$4A                                 ; $664A: $F8 $4A
    sbc a                                         ; $664C: $9F
    ld c, e                                       ; $664D: $4B
    ld a, c                                       ; $664E: $79
    ld [hl], d                                    ; $664F: $72
    ld l, a                                       ; $6650: $6F
    ld [hl], e                                    ; $6651: $73
    inc l                                         ; $6652: $2C
    jr nz, @+$66                                  ; $6653: $20 $64

    ld l, c                                       ; $6655: $69

jr_01D_6656:
    ld h, h                                       ; $6656: $64
    jr nz, jr_01D_66D2                            ; $6657: $20 $79

    ld l, a                                       ; $6659: $6F

jr_01D_665A:
    ld [hl], l                                    ; $665A: $75
    rst $38                                       ; $665B: $FF
    ld l, b                                       ; $665C: $68
    ld h, l                                       ; $665D: $65

jr_01D_665E:
    ld h, c                                       ; $665E: $61
    ld [hl], d                                    ; $665F: $72
    jr nz, jr_01D_66D9                            ; $6660: $20 $77

    ld l, b                                       ; $6662: $68
    ld h, c                                       ; $6663: $61
    ld [hl], h                                    ; $6664: $74
    jr nz, jr_01D_66B0                            ; $6665: $20 $49

    cp $6A                                        ; $6667: $FE $6A
    ld [hl], l                                    ; $6669: $75
    ld [hl], e                                    ; $666A: $73
    ld [hl], h                                    ; $666B: $74
    jr nz, jr_01D_66E1                            ; $666C: $20 $73

    ld h, c                                       ; $666E: $61
    ld l, c                                       ; $666F: $69
    ld h, h                                       ; $6670: $64
    ccf                                           ; $6671: $3F
    cp $FD                                        ; $6672: $FE $FD
    sbc e                                         ; $6674: $9B
    ld a, b                                       ; $6675: $78

jr_01D_6676:
    ld [hl], b                                    ; $6676: $70
    sbc a                                         ; $6677: $9F
    ld e, c                                       ; $6678: $59
    ld l, a                                       ; $6679: $6F
    ld [hl], l                                    ; $667A: $75
    jr nz, jr_01D_66F0                            ; $667B: $20 $73

    ld h, c                                       ; $667D: $61
    ld l, c                                       ; $667E: $69
    ld h, h                                       ; $667F: $64

jr_01D_6680:
    jr nz, jr_01D_66F6                            ; $6680: $20 $74

    ld l, b                                       ; $6682: $68
    ld h, l                                       ; $6683: $65
    rst $38                                       ; $6684: $FF
    ld l, e                                       ; $6685: $6B
    ld h, l                                       ; $6686: $65
    ld a, c                                       ; $6687: $79
    jr nz, jr_01D_66FE                            ; $6688: $20 $74

    ld l, a                                       ; $668A: $6F
    jr nz, jr_01D_6702                            ; $668B: $20 $75

    ld [hl], e                                    ; $668D: $73
    ld l, c                                       ; $668E: $69
    ld l, [hl]                                    ; $668F: $6E
    ld h, a                                       ; $6690: $67
    cp $74                                        ; $6691: $FE $74
    ld l, b                                       ; $6693: $68
    ld h, l                                       ; $6694: $65
    jr nz, jr_01D_66DE                            ; $6695: $20 $47

    ld l, h                                       ; $6697: $6C
    ld a, c                                       ; $6698: $79

jr_01D_6699:
    ld [hl], b                                    ; $6699: $70
    ld l, b                                       ; $669A: $68
    jr nz, @+$6E                                  ; $669B: $20 $6C

    ld l, c                                       ; $669D: $69
    ld h, l                                       ; $669E: $65
    ld [hl], e                                    ; $669F: $73
    rst $38                                       ; $66A0: $FF
    ld l, c                                       ; $66A1: $69
    ld l, [hl]                                    ; $66A2: $6E
    jr nz, jr_01D_6719                            ; $66A3: $20 $74

    ld l, b                                       ; $66A5: $68
    ld h, l                                       ; $66A6: $65
    jr nz, jr_01D_66F0                            ; $66A7: $20 $47

    ld h, l                                       ; $66A9: $65
    ld a, c                                       ; $66AA: $79
    ld [hl], e                                    ; $66AB: $73
    ld h, l                                       ; $66AC: $65
    ld [hl], d                                    ; $66AD: $72
    cp $72                                        ; $66AE: $FE $72

jr_01D_66B0:
    ld l, c                                       ; $66B0: $69
    ld h, a                                       ; $66B1: $67
    ld l, b                                       ; $66B2: $68
    ld [hl], h                                    ; $66B3: $74
    ccf                                           ; $66B4: $3F
    cp $FD                                        ; $66B5: $FE $FD
    sbc e                                         ; $66B7: $9B
    ld hl, sp+$4A                                 ; $66B8: $F8 $4A
    sbc a                                         ; $66BA: $9F
    ld c, [hl]                                    ; $66BB: $4E
    ld l, a                                       ; $66BC: $6F
    inc l                                         ; $66BD: $2C
    jr nz, jr_01D_6721                            ; $66BE: $20 $61

    ld h, [hl]                                    ; $66C0: $66
    ld [hl], h                                    ; $66C1: $74
    ld h, l                                       ; $66C2: $65
    ld [hl], d                                    ; $66C3: $72
    jr nz, jr_01D_673A                            ; $66C4: $20 $74

    ld l, b                                       ; $66C6: $68
    ld h, c                                       ; $66C7: $61
    ld [hl], h                                    ; $66C8: $74
    ld hl, $FDFE                                  ; $66C9: $21 $FE $FD
    sbc e                                         ; $66CC: $9B
    ld a, b                                       ; $66CD: $78
    ld [hl], b                                    ; $66CE: $70
    sbc a                                         ; $66CF: $9F
    ld c, a                                       ; $66D0: $4F
    ld l, b                                       ; $66D1: $68

jr_01D_66D2:
    inc l                                         ; $66D2: $2C
    jr nz, jr_01D_6748                            ; $66D3: $20 $73

    ld l, a                                       ; $66D5: $6F
    ld [hl], d                                    ; $66D6: $72
    ld [hl], d                                    ; $66D7: $72
    ld a, c                                       ; $66D8: $79

jr_01D_66D9:
    inc l                                         ; $66D9: $2C
    jr nz, @+$4B                                  ; $66DA: $20 $49

    rst $38                                       ; $66DC: $FF
    ld l, e                                       ; $66DD: $6B

jr_01D_66DE:
    ld l, c                                       ; $66DE: $69
    ld l, [hl]                                    ; $66DF: $6E
    ld h, h                                       ; $66E0: $64

jr_01D_66E1:
    jr nz, jr_01D_6752                            ; $66E1: $20 $6F

    ld h, [hl]                                    ; $66E3: $66
    jr nz, jr_01D_6748                            ; $66E4: $20 $62

    ld l, h                                       ; $66E6: $6C
    ld h, c                                       ; $66E7: $61
    ld l, [hl]                                    ; $66E8: $6E
    ld l, e                                       ; $66E9: $6B
    ld h, l                                       ; $66EA: $65
    ld h, h                                       ; $66EB: $64
    cp $6F                                        ; $66EC: $FE $6F
    ld [hl], l                                    ; $66EE: $75
    ld [hl], h                                    ; $66EF: $74

jr_01D_66F0:
    jr nz, jr_01D_6753                            ; $66F0: $20 $61

    ld h, [hl]                                    ; $66F2: $66
    ld [hl], h                                    ; $66F3: $74
    ld h, l                                       ; $66F4: $65
    ld [hl], d                                    ; $66F5: $72

jr_01D_66F6:
    jr nz, jr_01D_676C                            ; $66F6: $20 $74

    ld l, b                                       ; $66F8: $68
    ld h, c                                       ; $66F9: $61
    ld [hl], h                                    ; $66FA: $74
    ld l, $FE                                     ; $66FB: $2E $FE
    db $FD                                        ; $66FD: $FD

jr_01D_66FE:
    sbc e                                         ; $66FE: $9B
    ld hl, sp+$4A                                 ; $66FF: $F8 $4A
    sbc a                                         ; $6701: $9F

jr_01D_6702:
    ld d, a                                       ; $6702: $57
    ld h, l                                       ; $6703: $65
    ld l, h                                       ; $6704: $6C
    ld l, h                                       ; $6705: $6C
    ld l, $2E                                     ; $6706: $2E $2E
    ld l, $2E                                     ; $6708: $2E $2E
    ld l, $FE                                     ; $670A: $2E $FE
    ld a, c                                       ; $670C: $79
    ld l, a                                       ; $670D: $6F
    ld [hl], l                                    ; $670E: $75
    jr nz, @+$75                                  ; $670F: $20 $73

    ld h, l                                       ; $6711: $65
    ld h, l                                       ; $6712: $65
    ld l, l                                       ; $6713: $6D
    jr nz, jr_01D_678A                            ; $6714: $20 $74

    ld l, a                                       ; $6716: $6F
    jr nz, jr_01D_677B                            ; $6717: $20 $62

jr_01D_6719:
    ld h, l                                       ; $6719: $65
    rst $38                                       ; $671A: $FF
    ld h, c                                       ; $671B: $61
    ld l, h                                       ; $671C: $6C
    ld l, h                                       ; $671D: $6C
    jr nz, jr_01D_6792                            ; $671E: $20 $72

    ld l, c                                       ; $6720: $69

jr_01D_6721:
    ld h, a                                       ; $6721: $67
    ld l, b                                       ; $6722: $68
    ld [hl], h                                    ; $6723: $74
    ld l, $FE                                     ; $6724: $2E $FE
    ld c, [hl]                                    ; $6726: $4E
    ld h, l                                       ; $6727: $65
    halt                                          ; $6728: $76
    ld h, l                                       ; $6729: $65
    ld [hl], d                                    ; $672A: $72
    jr nz, jr_01D_679A                            ; $672B: $20 $6D

    ld l, c                                       ; $672D: $69
    ld l, [hl]                                    ; $672E: $6E
    ld h, h                                       ; $672F: $64
    ld l, $FE                                     ; $6730: $2E $FE
    ld b, l                                       ; $6732: $45
    ld l, c                                       ; $6733: $69
    ld h, h                                       ; $6734: $64
    ld l, a                                       ; $6735: $6F
    ld l, [hl]                                    ; $6736: $6E
    inc l                                         ; $6737: $2C
    jr nz, jr_01D_67B3                            ; $6738: $20 $79

jr_01D_673A:
    ld l, a                                       ; $673A: $6F
    ld [hl], l                                    ; $673B: $75
    jr nz, jr_01D_679F                            ; $673C: $20 $61

    ld [hl], d                                    ; $673E: $72
    ld h, l                                       ; $673F: $65
    rst $38                                       ; $6740: $FF
    ld h, l                                       ; $6741: $65
    ld a, b                                       ; $6742: $78
    ld h, e                                       ; $6743: $63
    ld [hl], l                                    ; $6744: $75
    ld [hl], e                                    ; $6745: $73
    ld h, l                                       ; $6746: $65
    ld h, h                                       ; $6747: $64

jr_01D_6748:
    ld l, $FE                                     ; $6748: $2E $FE
    db $FD                                        ; $674A: $FD
    ld e, b                                       ; $674B: $58
    ld a, [hl+]                                   ; $674C: $2A
    sbc a                                         ; $674D: $9F
    ld c, a                                       ; $674E: $4F
    ld h, [hl]                                    ; $674F: $66
    jr nz, jr_01D_67B5                            ; $6750: $20 $63

jr_01D_6752:
    ld l, a                                       ; $6752: $6F

jr_01D_6753:
    ld [hl], l                                    ; $6753: $75
    ld [hl], d                                    ; $6754: $72
    ld [hl], e                                    ; $6755: $73
    ld h, l                                       ; $6756: $65
    rst $38                                       ; $6757: $FF
    ld l, c                                       ; $6758: $69
    ld [hl], h                                    ; $6759: $74
    daa                                           ; $675A: $27
    ld [hl], e                                    ; $675B: $73
    jr nz, jr_01D_67CF                            ; $675C: $20 $71

    ld [hl], l                                    ; $675E: $75
    ld l, c                                       ; $675F: $69
    ld [hl], h                                    ; $6760: $74
    ld h, l                                       ; $6761: $65
    cp $63                                        ; $6762: $FE $63
    ld l, a                                       ; $6764: $6F
    ld l, [hl]                                    ; $6765: $6E
    ld h, e                                       ; $6766: $63
    ld h, l                                       ; $6767: $65
    ld l, c                                       ; $6768: $69
    halt                                          ; $6769: $76
    ld h, c                                       ; $676A: $61
    ld h, d                                       ; $676B: $62

jr_01D_676C:
    ld l, h                                       ; $676C: $6C
    ld h, l                                       ; $676D: $65
    rst $38                                       ; $676E: $FF
    ld [hl], h                                    ; $676F: $74
    ld l, b                                       ; $6770: $68
    ld h, c                                       ; $6771: $61
    ld [hl], h                                    ; $6772: $74
    jr nz, jr_01D_67E9                            ; $6773: $20 $74

    ld l, b                                       ; $6775: $68
    ld h, l                                       ; $6776: $65
    jr nz, @+$49                                  ; $6777: $20 $47

    ld [hl], d                                    ; $6779: $72
    ld h, l                                       ; $677A: $65

jr_01D_677B:
    ld h, c                                       ; $677B: $61
    ld [hl], h                                    ; $677C: $74
    cp $4D                                        ; $677D: $FE $4D
    ld h, c                                       ; $677F: $61
    ld h, a                                       ; $6780: $67
    ld [hl], l                                    ; $6781: $75
    ld [hl], e                                    ; $6782: $73
    jr nz, jr_01D_67D0                            ; $6783: $20 $4B

    ld a, c                                       ; $6785: $79
    ld [hl], d                                    ; $6786: $72
    ld l, a                                       ; $6787: $6F
    ld [hl], e                                    ; $6788: $73
    rst $38                                       ; $6789: $FF

jr_01D_678A:
    ld [hl], a                                    ; $678A: $77
    ld l, a                                       ; $678B: $6F
    ld [hl], l                                    ; $678C: $75
    ld l, h                                       ; $678D: $6C
    ld h, h                                       ; $678E: $64
    jr nz, jr_01D_67F3                            ; $678F: $20 $62

    ld h, l                                       ; $6791: $65

jr_01D_6792:
    jr nz, jr_01D_67F5                            ; $6792: $20 $61

    ld h, d                                       ; $6794: $62
    ld l, h                                       ; $6795: $6C
    ld h, l                                       ; $6796: $65
    cp $74                                        ; $6797: $FE $74
    ld l, a                                       ; $6799: $6F

jr_01D_679A:
    jr nz, jr_01D_6804                            ; $679A: $20 $68

    ld h, c                                       ; $679C: $61
    ld l, [hl]                                    ; $679D: $6E
    ld h, h                                       ; $679E: $64

jr_01D_679F:
    ld l, h                                       ; $679F: $6C
    ld h, l                                       ; $67A0: $65
    jr nz, jr_01D_6817                            ; $67A1: $20 $74

    ld l, b                                       ; $67A3: $68
    ld h, l                                       ; $67A4: $65
    rst $38                                       ; $67A5: $FF
    ld b, e                                       ; $67A6: $43
    ld l, a                                       ; $67A7: $6F
    ld [hl], d                                    ; $67A8: $72
    ld h, l                                       ; $67A9: $65
    jr nz, jr_01D_67F3                            ; $67AA: $20 $47

    ld l, h                                       ; $67AC: $6C
    ld a, c                                       ; $67AD: $79
    ld [hl], b                                    ; $67AE: $70
    ld l, b                                       ; $67AF: $68
    ld l, $FE                                     ; $67B0: $2E $FE
    db $FD                                        ; $67B2: $FD

jr_01D_67B3:
    sbc e                                         ; $67B3: $9B
    ld a, b                                       ; $67B4: $78

jr_01D_67B5:
    ld [hl], b                                    ; $67B5: $70
    sbc a                                         ; $67B6: $9F
    ccf                                           ; $67B7: $3F
    ccf                                           ; $67B8: $3F
    ccf                                           ; $67B9: $3F
    ccf                                           ; $67BA: $3F
    ccf                                           ; $67BB: $3F
    cp $FD                                        ; $67BC: $FE $FD
    sbc e                                         ; $67BE: $9B
    ld hl, sp+$4A                                 ; $67BF: $F8 $4A
    sbc a                                         ; $67C1: $9F
    ld b, h                                       ; $67C2: $44
    ld l, a                                       ; $67C3: $6F
    ld l, [hl]                                    ; $67C4: $6E
    daa                                           ; $67C5: $27
    ld [hl], h                                    ; $67C6: $74
    jr nz, jr_01D_6840                            ; $67C7: $20 $77

    ld l, a                                       ; $67C9: $6F
    ld [hl], d                                    ; $67CA: $72
    ld [hl], d                                    ; $67CB: $72
    ld a, c                                       ; $67CC: $79
    rst $38                                       ; $67CD: $FF
    ld h, c                                       ; $67CE: $61

jr_01D_67CF:
    ld h, d                                       ; $67CF: $62

jr_01D_67D0:
    ld l, a                                       ; $67D0: $6F
    ld [hl], l                                    ; $67D1: $75
    ld [hl], h                                    ; $67D2: $74
    jr nz, jr_01D_683E                            ; $67D3: $20 $69

    ld [hl], h                                    ; $67D5: $74
    ld l, $FE                                     ; $67D6: $2E $FE
    db $FD                                        ; $67D8: $FD
    sbc e                                         ; $67D9: $9B
    ld a, b                                       ; $67DA: $78
    ld [hl], b                                    ; $67DB: $70
    sbc a                                         ; $67DC: $9F
    ld b, d                                       ; $67DD: $42
    ld a, c                                       ; $67DE: $79
    jr nz, jr_01D_6855                            ; $67DF: $20 $74

    ld l, b                                       ; $67E1: $68
    ld h, l                                       ; $67E2: $65
    jr nz, jr_01D_685C                            ; $67E3: $20 $77

    ld h, c                                       ; $67E5: $61
    ld a, c                                       ; $67E6: $79
    inc l                                         ; $67E7: $2C
    rst $38                                       ; $67E8: $FF

jr_01D_67E9:
    ld [hl], a                                    ; $67E9: $77
    ld l, b                                       ; $67EA: $68
    ld h, l                                       ; $67EB: $65
    ld [hl], d                                    ; $67EC: $72
    ld h, l                                       ; $67ED: $65
    jr nz, @+$6B                                  ; $67EE: $20 $69

    ld [hl], e                                    ; $67F0: $73
    jr nz, jr_01D_6867                            ; $67F1: $20 $74

jr_01D_67F3:
    ld l, b                                       ; $67F3: $68
    ld l, c                                       ; $67F4: $69

jr_01D_67F5:
    ld [hl], e                                    ; $67F5: $73
    cp $43                                        ; $67F6: $FE $43
    ld l, a                                       ; $67F8: $6F
    ld [hl], d                                    ; $67F9: $72
    ld h, l                                       ; $67FA: $65
    jr nz, jr_01D_6842                            ; $67FB: $20 $45

    ld l, [hl]                                    ; $67FD: $6E
    ld [hl], h                                    ; $67FE: $74
    ld [hl], d                                    ; $67FF: $72
    ld h, c                                       ; $6800: $61
    ld l, [hl]                                    ; $6801: $6E
    ld h, e                                       ; $6802: $63
    ld h, l                                       ; $6803: $65

jr_01D_6804:
    ccf                                           ; $6804: $3F
    cp $FD                                        ; $6805: $FE $FD
    sbc e                                         ; $6807: $9B
    ld hl, sp+$4A                                 ; $6808: $F8 $4A
    sbc a                                         ; $680A: $9F
    ld c, c                                       ; $680B: $49
    ld [hl], h                                    ; $680C: $74
    jr nz, jr_01D_6878                            ; $680D: $20 $69

    ld [hl], e                                    ; $680F: $73
    jr nz, @+$59                                  ; $6810: $20 $57

    ld h, l                                       ; $6812: $65
    ld [hl], e                                    ; $6813: $73
    ld [hl], h                                    ; $6814: $74
    jr nz, jr_01D_6886                            ; $6815: $20 $6F

jr_01D_6817:
    ld h, [hl]                                    ; $6817: $66
    rst $38                                       ; $6818: $FF
    ld l, b                                       ; $6819: $68
    ld h, l                                       ; $681A: $65
    ld [hl], d                                    ; $681B: $72
    ld h, l                                       ; $681C: $65
    ld l, $20                                     ; $681D: $2E $20
    ld c, c                                       ; $681F: $49
    jr nz, jr_01D_688E                            ; $6820: $20 $6C

    ld l, c                                       ; $6822: $69
    halt                                          ; $6823: $76
    ld h, l                                       ; $6824: $65
    cp $6E                                        ; $6825: $FE $6E
    ld h, l                                       ; $6827: $65
    ld h, c                                       ; $6828: $61
    ld [hl], d                                    ; $6829: $72
    ld h, d                                       ; $682A: $62
    ld a, c                                       ; $682B: $79
    jr nz, jr_01D_6890                            ; $682C: $20 $62

    ld h, l                                       ; $682E: $65
    ld h, e                                       ; $682F: $63
    ld h, c                                       ; $6830: $61
    ld [hl], l                                    ; $6831: $75
    ld [hl], e                                    ; $6832: $73
    ld h, l                                       ; $6833: $65
    rst $38                                       ; $6834: $FF
    ld c, c                                       ; $6835: $49
    jr nz, jr_01D_6899                            ; $6836: $20 $61

    ld l, l                                       ; $6838: $6D
    jr nz, @+$76                                  ; $6839: $20 $74

    ld [hl], d                                    ; $683B: $72
    ld a, c                                       ; $683C: $79
    ld l, c                                       ; $683D: $69

jr_01D_683E:
    ld l, [hl]                                    ; $683E: $6E
    ld h, a                                       ; $683F: $67

jr_01D_6840:
    jr nz, jr_01D_68B6                            ; $6840: $20 $74

jr_01D_6842:
    ld l, a                                       ; $6842: $6F
    cp $73                                        ; $6843: $FE $73
    ld [hl], h                                    ; $6845: $74
    ld [hl], l                                    ; $6846: $75
    ld h, h                                       ; $6847: $64
    ld a, c                                       ; $6848: $79
    jr nz, jr_01D_68BF                            ; $6849: $20 $74

    ld l, b                                       ; $684B: $68
    ld h, l                                       ; $684C: $65
    jr nz, jr_01D_6892                            ; $684D: $20 $43

    ld l, a                                       ; $684F: $6F
    ld [hl], d                                    ; $6850: $72
    ld h, l                                       ; $6851: $65
    ld l, $FF                                     ; $6852: $2E $FF
    ld e, c                                       ; $6854: $59

jr_01D_6855:
    ld l, a                                       ; $6855: $6F
    ld [hl], l                                    ; $6856: $75
    inc l                                         ; $6857: $2C
    jr nz, jr_01D_68C2                            ; $6858: $20 $68

    ld l, a                                       ; $685A: $6F
    ld [hl], a                                    ; $685B: $77

jr_01D_685C:
    ld h, l                                       ; $685C: $65
    halt                                          ; $685D: $76
    ld h, l                                       ; $685E: $65
    ld [hl], d                                    ; $685F: $72
    inc l                                         ; $6860: $2C
    cp $73                                        ; $6861: $FE $73
    ld l, b                                       ; $6863: $68
    ld l, a                                       ; $6864: $6F
    ld [hl], l                                    ; $6865: $75
    ld l, h                                       ; $6866: $6C

jr_01D_6867:
    ld h, h                                       ; $6867: $64
    jr nz, jr_01D_68D0                            ; $6868: $20 $66

    ld l, a                                       ; $686A: $6F
    ld [hl], d                                    ; $686B: $72
    ld h, a                                       ; $686C: $67
    ld h, l                                       ; $686D: $65
    ld [hl], h                                    ; $686E: $74
    rst $38                                       ; $686F: $FF
    ld h, c                                       ; $6870: $61
    ld h, d                                       ; $6871: $62
    ld l, a                                       ; $6872: $6F
    ld [hl], l                                    ; $6873: $75
    ld [hl], h                                    ; $6874: $74
    jr nz, jr_01D_68EB                            ; $6875: $20 $74

    ld l, b                                       ; $6877: $68

jr_01D_6878:
    ld h, l                                       ; $6878: $65
    jr nz, jr_01D_68BE                            ; $6879: $20 $43

    ld l, a                                       ; $687B: $6F
    ld [hl], d                                    ; $687C: $72
    ld h, l                                       ; $687D: $65
    cp $45                                        ; $687E: $FE $45
    ld l, [hl]                                    ; $6880: $6E

jr_01D_6881:
    ld [hl], h                                    ; $6881: $74
    ld [hl], d                                    ; $6882: $72
    ld h, c                                       ; $6883: $61
    ld l, [hl]                                    ; $6884: $6E
    ld h, e                                       ; $6885: $63

jr_01D_6886:
    ld h, l                                       ; $6886: $65
    jr nz, jr_01D_68EF                            ; $6887: $20 $66

    ld l, a                                       ; $6889: $6F
    ld [hl], d                                    ; $688A: $72
    rst $38                                       ; $688B: $FF
    ld l, [hl]                                    ; $688C: $6E
    ld l, a                                       ; $688D: $6F

jr_01D_688E:
    ld [hl], a                                    ; $688E: $77
    inc l                                         ; $688F: $2C

jr_01D_6890:
    jr nz, @+$4D                                  ; $6890: $20 $4B

jr_01D_6892:
    ld a, c                                       ; $6892: $79
    ld [hl], d                                    ; $6893: $72
    ld l, a                                       ; $6894: $6F
    ld [hl], e                                    ; $6895: $73
    ld l, $FE                                     ; $6896: $2E $FE
    ld e, c                                       ; $6898: $59

jr_01D_6899:
    ld l, a                                       ; $6899: $6F
    ld [hl], l                                    ; $689A: $75

jr_01D_689B:
    ld [hl], d                                    ; $689B: $72
    jr nz, jr_01D_690D                            ; $689C: $20 $6F

    ld h, d                                       ; $689E: $62
    ld l, d                                       ; $689F: $6A
    ld h, l                                       ; $68A0: $65
    ld h, e                                       ; $68A1: $63
    ld [hl], h                                    ; $68A2: $74
    ld l, c                                       ; $68A3: $69
    halt                                          ; $68A4: $76
    ld h, l                                       ; $68A5: $65
    rst $38                                       ; $68A6: $FF
    ld l, h                                       ; $68A7: $6C
    ld l, c                                       ; $68A8: $69
    ld h, l                                       ; $68A9: $65
    ld [hl], e                                    ; $68AA: $73
    jr nz, jr_01D_6916                            ; $68AB: $20 $69

    ld l, [hl]                                    ; $68AD: $6E
    jr nz, jr_01D_6924                            ; $68AE: $20 $74

    ld l, b                                       ; $68B0: $68
    ld h, l                                       ; $68B1: $65
    cp $53                                        ; $68B2: $FE $53
    ld l, b                                       ; $68B4: $68
    ld h, c                                       ; $68B5: $61

jr_01D_68B6:
    ld h, h                                       ; $68B6: $64
    ld l, a                                       ; $68B7: $6F
    ld [hl], a                                    ; $68B8: $77
    jr nz, jr_01D_6902                            ; $68B9: $20 $47

    ld h, l                                       ; $68BB: $65
    ld a, c                                       ; $68BC: $79
    ld [hl], e                                    ; $68BD: $73

jr_01D_68BE:
    ld h, l                                       ; $68BE: $65

jr_01D_68BF:
    ld [hl], d                                    ; $68BF: $72
    ld l, $FE                                     ; $68C0: $2E $FE

jr_01D_68C2:
    db $FD                                        ; $68C2: $FD
    sbc d                                         ; $68C3: $9A
    rlca                                          ; $68C4: $07
    nop                                           ; $68C5: $00
    add c                                         ; $68C6: $81
    ld e, l                                       ; $68C7: $5D
    add hl, bc                                    ; $68C8: $09
    nop                                           ; $68C9: $00
    jr nz, jr_01D_6881                            ; $68CA: $20 $B5

    ld d, b                                       ; $68CC: $50
    ld b, d                                       ; $68CD: $42
    sub e                                         ; $68CE: $93
    ld h, l                                       ; $68CF: $65

jr_01D_68D0:
    cpl                                           ; $68D0: $2F
    ld c, l                                       ; $68D1: $4D
    ld c, a                                       ; $68D2: $4F
    ld h, h                                       ; $68D3: $64
    db $ED                                        ; $68D4: $ED
    ld d, b                                       ; $68D5: $50
    ld l, c                                       ; $68D6: $69
    ld a, [c]                                     ; $68D7: $F2
    ld d, b                                       ; $68D8: $50
    ld h, [hl]                                    ; $68D9: $66
    ret nz                                        ; $68DA: $C0

    ld e, h                                       ; $68DB: $5C
    ld hl, $0005                                  ; $68DC: $21 $05 $00
    ld l, e                                       ; $68DF: $6B
    ld c, d                                       ; $68E0: $4A
    rlca                                          ; $68E1: $07
    dec bc                                        ; $68E2: $0B
    xor h                                         ; $68E3: $AC
    ret nc                                        ; $68E4: $D0

    nop                                           ; $68E5: $00
    dec e                                         ; $68E6: $1D
    ld [hl], e                                    ; $68E7: $73
    ld l, c                                       ; $68E8: $69
    ld [hl+], a                                   ; $68E9: $22
    inc b                                         ; $68EA: $04

jr_01D_68EB:
    ld b, b                                       ; $68EB: $40
    dec b                                         ; $68EC: $05
    ld [bc], a                                    ; $68ED: $02
    ld l, e                                       ; $68EE: $6B

jr_01D_68EF:
    ld c, d                                       ; $68EF: $4A
    add hl, bc                                    ; $68F0: $09
    inc b                                         ; $68F1: $04
    ld b, l                                       ; $68F2: $45
    ret nc                                        ; $68F3: $D0

    nop                                           ; $68F4: $00
    dec e                                         ; $68F5: $1D
    jp c, $1D69                                   ; $68F6: $DA $69 $1D

    ld h, c                                       ; $68F9: $61
    ld l, c                                       ; $68FA: $69
    dec b                                         ; $68FB: $05
    inc bc                                        ; $68FC: $03
    ld l, e                                       ; $68FD: $6B
    ld c, d                                       ; $68FE: $4A
    rlca                                          ; $68FF: $07
    inc b                                         ; $6900: $04
    ld b, e                                       ; $6901: $43

jr_01D_6902:
    ret nc                                        ; $6902: $D0

    ld [hl+], a                                   ; $6903: $22
    dec e                                         ; $6904: $1D
    ld d, l                                       ; $6905: $55
    ld l, d                                       ; $6906: $6A
    dec e                                         ; $6907: $1D
    ld l, e                                       ; $6908: $6B
    ld l, c                                       ; $6909: $69
    ld l, e                                       ; $690A: $6B
    ld [hl+], a                                   ; $690B: $22
    ld a, [bc]                                    ; $690C: $0A

jr_01D_690D:
    ldh a, [$4E]                                  ; $690D: $F0 $4E
    nop                                           ; $690F: $00
    add b                                         ; $6910: $80
    nop                                           ; $6911: $00
    ld l, e                                       ; $6912: $6B
    ld a, [hl+]                                   ; $6913: $2A
    ld a, [bc]                                    ; $6914: $0A
    or b                                          ; $6915: $B0

jr_01D_6916:
    ld c, b                                       ; $6916: $48
    jr nz, jr_01D_689B                            ; $6917: $20 $82

    nop                                           ; $6919: $00
    ld l, e                                       ; $691A: $6B
    add hl, hl                                    ; $691B: $29
    ld a, [bc]                                    ; $691C: $0A
    ld [hl], b                                    ; $691D: $70
    ld l, e                                       ; $691E: $6B
    ret nz                                        ; $691F: $C0

    add h                                         ; $6920: $84
    nop                                           ; $6921: $00
    ld l, e                                       ; $6922: $6B
    ld a, [hl+]                                   ; $6923: $2A

jr_01D_6924:
    ld a, [bc]                                    ; $6924: $0A
    ldh a, [$5E]                                  ; $6925: $F0 $5E
    ld d, b                                       ; $6927: $50
    add a                                         ; $6928: $87

jr_01D_6929:
    nop                                           ; $6929: $00
    ld l, e                                       ; $692A: $6B
    jr nc, jr_01D_6938                            ; $692B: $30 $0B

    ld d, b                                       ; $692D: $50
    ld a, d                                       ; $692E: $7A
    ldh a, [$89]                                  ; $692F: $F0 $89
    nop                                           ; $6931: $00
    dec bc                                        ; $6932: $0B
    nop                                           ; $6933: $00
    dec bc                                        ; $6934: $0B
    ld [bc], a                                    ; $6935: $02
    dec bc                                        ; $6936: $0B
    inc bc                                        ; $6937: $03

jr_01D_6938:
    add d                                         ; $6938: $82
    rra                                           ; $6939: $1F
    ld a, [de]                                    ; $693A: $1A
    sub h                                         ; $693B: $94
    ld b, b                                       ; $693C: $40
    db $10                                        ; $693D: $10
    add e                                         ; $693E: $83
    jr nz, jr_01D_6941                            ; $693F: $20 $00

jr_01D_6941:
    rst $38                                       ; $6941: $FF
    nop                                           ; $6942: $00
    ld h, b                                       ; $6943: $60
    inc d                                         ; $6944: $14
    rlca                                          ; $6945: $07
    nop                                           ; $6946: $00
    add c                                         ; $6947: $81
    ld e, l                                       ; $6948: $5D
    add hl, bc                                    ; $6949: $09
    nop                                           ; $694A: $00
    jr nz, jr_01D_6902                            ; $694B: $20 $B5

    ld d, b                                       ; $694D: $50
    rlca                                          ; $694E: $07
    ld [bc], a                                    ; $694F: $02
    db $ED                                        ; $6950: $ED
    ld h, e                                       ; $6951: $63
    add hl, bc                                    ; $6952: $09
    ld [bc], a                                    ; $6953: $02
    ld c, $D9                                     ; $6954: $0E $D9
    ld h, b                                       ; $6956: $60
    rlca                                          ; $6957: $07
    inc bc                                        ; $6958: $03
    db $ED                                        ; $6959: $ED
    ld h, e                                       ; $695A: $63
    add hl, bc                                    ; $695B: $09
    inc bc                                        ; $695C: $03
    ld c, $0E                                     ; $695D: $0E $0E

jr_01D_695F:
    ld d, h                                       ; $695F: $54
    ld b, d                                       ; $6960: $42
    inc d                                         ; $6961: $14
    ld c, $D9                                     ; $6962: $0E $D9
    ld h, b                                       ; $6964: $60
    ld e, e                                       ; $6965: $5B
    dec e                                         ; $6966: $1D
    sub h                                         ; $6967: $94
    ld l, d                                       ; $6968: $6A
    ld e, a                                       ; $6969: $5F
    ld [de], a                                    ; $696A: $12
    ld e, e                                       ; $696B: $5B
    dec e                                         ; $696C: $1D
    and a                                         ; $696D: $A7
    ld l, d                                       ; $696E: $6A
    ld b, l                                       ; $696F: $45
    ld c, $35                                     ; $6970: $0E $35
    ld d, l                                       ; $6972: $55
    dec d                                         ; $6973: $15
    jr nz, jr_01D_6929                            ; $6974: $20 $B3

    ld c, a                                       ; $6976: $4F
    jr nc, @+$22                                  ; $6977: $30 $20

    db $ED                                        ; $6979: $ED
    ld c, a                                       ; $697A: $4F
    jr nz, jr_01D_699D                            ; $697B: $20 $20

    or e                                          ; $697D: $B3
    ld c, a                                       ; $697E: $4F
    jr nz, jr_01D_69A1                            ; $697F: $20 $20

    xor e                                         ; $6981: $AB
    ld d, b                                       ; $6982: $50

jr_01D_6983:
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    ld h, d                                       ; $6985: $62
    ld bc, $1D5B                                  ; $6986: $01 $5B $1D
    rst $28                                       ; $6989: $EF
    ld l, d                                       ; $698A: $6A
    dec d                                         ; $698B: $15
    jr nz, jr_01D_6941                            ; $698C: $20 $B3

    ld c, a                                       ; $698E: $4F
    ld [$AB20], sp                                ; $698F: $08 $20 $AB
    ld d, b                                       ; $6992: $50
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    ld h, d                                       ; $6995: $62
    inc bc                                        ; $6996: $03
    ld b, b                                       ; $6997: $40
    jr nz, jr_01D_69AE                            ; $6998: $20 $14

    jr nz, jr_01D_6983                            ; $699A: $20 $E7

    ld d, b                                       ; $699C: $50

jr_01D_699D:
    ld e, e                                       ; $699D: $5B
    dec e                                         ; $699E: $1D
    daa                                           ; $699F: $27
    ld l, e                                       ; $69A0: $6B

jr_01D_69A1:
    ld h, d                                       ; $69A1: $62
    ld b, $5B                                     ; $69A2: $06 $5B
    dec e                                         ; $69A4: $1D
    jp hl                                         ; $69A5: $E9


    ld l, e                                       ; $69A6: $6B
    ld h, b                                       ; $69A7: $60
    ld bc, $2015                                  ; $69A8: $01 $15 $20
    xor e                                         ; $69AB: $AB
    ld d, b                                       ; $69AC: $50
    inc c                                         ; $69AD: $0C

jr_01D_69AE:
    jr nz, @+$1F                                  ; $69AE: $20 $1D

    ld d, b                                       ; $69B0: $50
    db $10                                        ; $69B1: $10
    jr nz, jr_01D_695F                            ; $69B2: $20 $AB

    ld d, b                                       ; $69B4: $50
    nop                                           ; $69B5: $00
    nop                                           ; $69B6: $00
    ld h, d                                       ; $69B7: $62
    ld [$1D5B], sp                                ; $69B8: $08 $5B $1D
    ld b, c                                       ; $69BB: $41
    ld l, h                                       ; $69BC: $6C
    ld h, d                                       ; $69BD: $62
    ld a, [bc]                                    ; $69BE: $0A
    dec d                                         ; $69BF: $15
    jr nz, @-$0D                                  ; $69C0: $20 $F1

    ld d, b                                       ; $69C2: $50
    ld [$C920], sp                                ; $69C3: $08 $20 $C9
    ld d, b                                       ; $69C6: $50
    ld [$DD20], sp                                ; $69C7: $08 $20 $DD
    ld d, b                                       ; $69CA: $50
    ld [$B520], sp                                ; $69CB: $08 $20 $B5
    ld d, b                                       ; $69CE: $50
    nop                                           ; $69CF: $00
    nop                                           ; $69D0: $00
    ld e, e                                       ; $69D1: $5B
    dec e                                         ; $69D2: $1D
    rrca                                          ; $69D3: $0F
    ld [hl], d                                    ; $69D4: $72
    ld h, d                                       ; $69D5: $62
    dec bc                                        ; $69D6: $0B
    ld d, [hl]                                    ; $69D7: $56
    inc d                                         ; $69D8: $14
    ld b, d                                       ; $69D9: $42
    dec d                                         ; $69DA: $15
    ld c, $E3                                     ; $69DB: $0E $E3
    ld h, b                                       ; $69DD: $60
    jr nc, jr_01D_69EE                            ; $69DE: $30 $0E

    dec bc                                        ; $69E0: $0B
    ld h, c                                       ; $69E1: $61
    db $10                                        ; $69E2: $10
    ld c, $D9                                     ; $69E3: $0E $D9
    ld h, b                                       ; $69E5: $60
    jr nz, jr_01D_69E8                            ; $69E6: $20 $00

jr_01D_69E8:
    ld e, e                                       ; $69E8: $5B
    dec e                                         ; $69E9: $1D
    call z, Call_01D_626A                         ; $69EA: $CC $6A $62
    inc b                                         ; $69ED: $04

jr_01D_69EE:
    dec d                                         ; $69EE: $15
    ld c, $15                                     ; $69EF: $0E $15
    ld h, c                                       ; $69F1: $61
    db $10                                        ; $69F2: $10
    ld c, $ED                                     ; $69F3: $0E $ED
    ld h, b                                       ; $69F5: $60
    db $10                                        ; $69F6: $10
    ld c, $01                                     ; $69F7: $0E $01
    ld h, c                                       ; $69F9: $61
    db $10                                        ; $69FA: $10
    ld c, $CF                                     ; $69FB: $0E $CF
    ld h, b                                       ; $69FD: $60
    stop                                          ; $69FE: $10 $00
    ld e, e                                       ; $6A00: $5B
    dec e                                         ; $6A01: $1D
    and [hl]                                      ; $6A02: $A6
    ld l, e                                       ; $6A03: $6B
    ld h, d                                       ; $6A04: $62
    rlca                                          ; $6A05: $07
    ld d, [hl]                                    ; $6A06: $56
    ld bc, $0E15                                  ; $6A07: $01 $15 $0E
    rst $30                                       ; $6A0A: $F7
    ld h, b                                       ; $6A0B: $60
    ld [bc], a                                    ; $6A0C: $02
    ld c, $E3                                     ; $6A0D: $0E $E3
    ld h, b                                       ; $6A0F: $60
    ld [bc], a                                    ; $6A10: $02
    ld c, $0B                                     ; $6A11: $0E $0B
    ld h, c                                       ; $6A13: $61
    ld [bc], a                                    ; $6A14: $02
    ld c, $D9                                     ; $6A15: $0E $D9
    ld h, b                                       ; $6A17: $60
    ld [bc], a                                    ; $6A18: $02
    nop                                           ; $6A19: $00
    ld e, e                                       ; $6A1A: $5B
    dec e                                         ; $6A1B: $1D
    dec e                                         ; $6A1C: $1D
    ld l, h                                       ; $6A1D: $6C
    dec d                                         ; $6A1E: $15
    ld c, $5F                                     ; $6A1F: $0E $5F
    ld h, b                                       ; $6A21: $60
    db $10                                        ; $6A22: $10
    ld c, $D9                                     ; $6A23: $0E $D9
    ld h, b                                       ; $6A25: $60
    nop                                           ; $6A26: $00
    nop                                           ; $6A27: $00
    ld h, d                                       ; $6A28: $62
    add hl, bc                                    ; $6A29: $09
    dec d                                         ; $6A2A: $15
    ld c, $15                                     ; $6A2B: $0E $15
    ld h, c                                       ; $6A2D: $61
    db $10                                        ; $6A2E: $10
    ld c, $ED                                     ; $6A2F: $0E $ED
    ld h, b                                       ; $6A31: $60
    db $10                                        ; $6A32: $10
    ld c, $01                                     ; $6A33: $0E $01
    ld h, c                                       ; $6A35: $61
    db $10                                        ; $6A36: $10
    ld c, $4F                                     ; $6A37: $0E $4F
    ld h, b                                       ; $6A39: $60
    db $10                                        ; $6A3A: $10
    ld c, $CF                                     ; $6A3B: $0E $CF
    ld h, b                                       ; $6A3D: $60
    ld d, b                                       ; $6A3E: $50
    ld c, $F7                                     ; $6A3F: $0E $F7
    ld h, b                                       ; $6A41: $60
    ld [$E30E], sp                                ; $6A42: $08 $0E $E3
    ld h, b                                       ; $6A45: $60
    ld [$0B0E], sp                                ; $6A46: $08 $0E $0B
    ld h, c                                       ; $6A49: $61
    ld [$D90E], sp                                ; $6A4A: $08 $0E $D9
    ld h, b                                       ; $6A4D: $60
    nop                                           ; $6A4E: $00
    nop                                           ; $6A4F: $00
    ld e, e                                       ; $6A50: $5B
    dec e                                         ; $6A51: $1D
    ld l, a                                       ; $6A52: $6F
    ld l, h                                       ; $6A53: $6C
    ld b, d                                       ; $6A54: $42
    inc d                                         ; $6A55: $14
    ld c, $F0                                     ; $6A56: $0E $F0
    ld d, e                                       ; $6A58: $53
    ld h, d                                       ; $6A59: $62
    ld [bc], a                                    ; $6A5A: $02
    dec d                                         ; $6A5B: $15
    ld c, $22                                     ; $6A5C: $0E $22
    ld d, h                                       ; $6A5E: $54
    ld [$0E0E], sp                                ; $6A5F: $08 $0E $0E
    ld d, h                                       ; $6A62: $54
    ld [$360E], sp                                ; $6A63: $08 $0E $36
    ld d, h                                       ; $6A66: $54
    nop                                           ; $6A67: $00
    nop                                           ; $6A68: $00
    ld e, e                                       ; $6A69: $5B
    dec e                                         ; $6A6A: $1D
    inc d                                         ; $6A6B: $14
    ld l, e                                       ; $6A6C: $6B
    ld h, d                                       ; $6A6D: $62
    dec b                                         ; $6A6E: $05
    dec d                                         ; $6A6F: $15
    ld c, $FA                                     ; $6A70: $0E $FA
    ld d, e                                       ; $6A72: $53
    db $10                                        ; $6A73: $10
    ld c, $2C                                     ; $6A74: $0E $2C
    ld d, h                                       ; $6A76: $54
    db $10                                        ; $6A77: $10
    ld c, $90                                     ; $6A78: $0E $90
    ld d, e                                       ; $6A7A: $53
    db $10                                        ; $6A7B: $10
    ld c, $04                                     ; $6A7C: $0E $04
    ld d, h                                       ; $6A7E: $54
    ld b, b                                       ; $6A7F: $40
    ld c, $FA                                     ; $6A80: $0E $FA
    ld d, e                                       ; $6A82: $53
    ld [$360E], sp                                ; $6A83: $08 $0E $36
    ld d, h                                       ; $6A86: $54
    nop                                           ; $6A87: $00
    nop                                           ; $6A88: $00
    ld e, e                                       ; $6A89: $5B
    dec e                                         ; $6A8A: $1D
    cp e                                          ; $6A8B: $BB
    ld l, e                                       ; $6A8C: $6B
    ld h, d                                       ; $6A8D: $62
    rlca                                          ; $6A8E: $07
    inc d                                         ; $6A8F: $14
    ld c, $0E                                     ; $6A90: $0E $0E
    ld d, h                                       ; $6A92: $54
    ld b, d                                       ; $6A93: $42
    sbc e                                         ; $6A94: $9B
    ld hl, sp+$4A                                 ; $6A95: $F8 $4A
    sbc a                                         ; $6A97: $9F
    ld l, $2E                                     ; $6A98: $2E $2E
    ld l, $2E                                     ; $6A9A: $2E $2E
    ld l, $2E                                     ; $6A9C: $2E $2E
    ld l, $2E                                     ; $6A9E: $2E $2E
    ld l, $FE                                     ; $6AA0: $2E $FE
    db $FD                                        ; $6AA2: $FD
    sbc d                                         ; $6AA3: $9A
    ld e, b                                       ; $6AA4: $58
    ld bc, $9B42                                  ; $6AA5: $01 $42 $9B
    ld c, b                                       ; $6AA8: $48
    ld b, [hl]                                    ; $6AA9: $46
    sbc a                                         ; $6AAA: $9F
    ld e, c                                       ; $6AAB: $59
    ld l, a                                       ; $6AAC: $6F
    ld [hl], l                                    ; $6AAD: $75
    daa                                           ; $6AAE: $27
    ld [hl], d                                    ; $6AAF: $72
    ld h, l                                       ; $6AB0: $65
    jr nz, jr_01D_6B1A                            ; $6AB1: $20 $67

    ld l, a                                       ; $6AB3: $6F
    ld l, c                                       ; $6AB4: $69
    ld l, [hl]                                    ; $6AB5: $6E
    ld h, a                                       ; $6AB6: $67
    rst $38                                       ; $6AB7: $FF
    ld [hl], h                                    ; $6AB8: $74
    ld l, a                                       ; $6AB9: $6F
    jr nz, @+$68                                  ; $6ABA: $20 $66

    ld l, c                                       ; $6ABC: $69
    ld l, [hl]                                    ; $6ABD: $6E
    ld h, h                                       ; $6ABE: $64
    jr nz, @+$4F                                  ; $6ABF: $20 $4D

    ld l, a                                       ; $6AC1: $6F
    ld [hl], d                                    ; $6AC2: $72
    ld h, c                                       ; $6AC3: $61
    ld h, a                                       ; $6AC4: $67
    ccf                                           ; $6AC5: $3F
    cp $FD                                        ; $6AC6: $FE $FD
    sbc d                                         ; $6AC8: $9A
    ld e, b                                       ; $6AC9: $58
    ld bc, $9B42                                  ; $6ACA: $01 $42 $9B
    ld hl, sp+$4A                                 ; $6ACD: $F8 $4A
    sbc a                                         ; $6ACF: $9F
    ld c, b                                       ; $6AD0: $48
    ld l, a                                       ; $6AD1: $6F
    ld [hl], a                                    ; $6AD2: $77
    jr nz, jr_01D_6B36                            ; $6AD3: $20 $61

    ld [hl], d                                    ; $6AD5: $72
    ld h, l                                       ; $6AD6: $65
    jr nz, jr_01D_6B52                            ; $6AD7: $20 $79

    ld l, a                                       ; $6AD9: $6F
    ld [hl], l                                    ; $6ADA: $75
    rst $38                                       ; $6ADB: $FF
    ld h, h                                       ; $6ADC: $64
    ld l, a                                       ; $6ADD: $6F
    ld l, c                                       ; $6ADE: $69
    ld l, [hl]                                    ; $6ADF: $6E
    ld h, a                                       ; $6AE0: $67
    inc l                                         ; $6AE1: $2C
    jr nz, jr_01D_6B2F                            ; $6AE2: $20 $4B

    ld a, c                                       ; $6AE4: $79
    ld [hl], d                                    ; $6AE5: $72
    ld l, a                                       ; $6AE6: $6F
    ld [hl], e                                    ; $6AE7: $73
    ccf                                           ; $6AE8: $3F
    cp $FD                                        ; $6AE9: $FE $FD
    sbc d                                         ; $6AEB: $9A
    ld e, b                                       ; $6AEC: $58
    ld bc, $9B42                                  ; $6AED: $01 $42 $9B
    ld a, b                                       ; $6AF0: $78
    ld [hl], b                                    ; $6AF1: $70
    sbc a                                         ; $6AF2: $9F
    ld c, c                                       ; $6AF3: $49
    jr nz, jr_01D_6B5D                            ; $6AF4: $20 $67

    ld l, a                                       ; $6AF6: $6F
    ld [hl], h                                    ; $6AF7: $74
    jr nz, jr_01D_6B5B                            ; $6AF8: $20 $61

    ld l, [hl]                                    ; $6AFA: $6E
    ld l, a                                       ; $6AFB: $6F
    ld [hl], h                                    ; $6AFC: $74
    ld l, b                                       ; $6AFD: $68
    ld h, l                                       ; $6AFE: $65
    ld [hl], d                                    ; $6AFF: $72
    rst $38                                       ; $6B00: $FF
    ld b, e                                       ; $6B01: $43
    ld l, a                                       ; $6B02: $6F
    ld [hl], d                                    ; $6B03: $72
    ld h, l                                       ; $6B04: $65
    jr nz, jr_01D_6B5A                            ; $6B05: $20 $53

    ld [hl], h                                    ; $6B07: $74
    ld l, a                                       ; $6B08: $6F
    ld l, [hl]                                    ; $6B09: $6E
    ld h, l                                       ; $6B0A: $65
    ld l, $2E                                     ; $6B0B: $2E $2E
    ld l, $FE                                     ; $6B0D: $2E $FE
    db $FD                                        ; $6B0F: $FD
    sbc d                                         ; $6B10: $9A
    ld e, b                                       ; $6B11: $58
    ld [bc], a                                    ; $6B12: $02
    ld b, d                                       ; $6B13: $42
    sbc e                                         ; $6B14: $9B
    ld c, b                                       ; $6B15: $48
    ld b, [hl]                                    ; $6B16: $46
    sbc a                                         ; $6B17: $9F
    ld b, a                                       ; $6B18: $47
    ld l, a                                       ; $6B19: $6F

jr_01D_6B1A:
    ld l, a                                       ; $6B1A: $6F
    ld h, h                                       ; $6B1B: $64
    jr nz, jr_01D_6B88                            ; $6B1C: $20 $6A

    ld l, a                                       ; $6B1E: $6F
    ld h, d                                       ; $6B1F: $62
    ld hl, $FDFE                                  ; $6B20: $21 $FE $FD
    sbc d                                         ; $6B23: $9A
    ld e, b                                       ; $6B24: $58
    inc bc                                        ; $6B25: $03
    ld b, d                                       ; $6B26: $42
    sbc e                                         ; $6B27: $9B
    ld a, b                                       ; $6B28: $78
    ld [hl], b                                    ; $6B29: $70
    sbc a                                         ; $6B2A: $9F
    ld l, $2E                                     ; $6B2B: $2E $2E
    ld l, $62                                     ; $6B2D: $2E $62

jr_01D_6B2F:
    ld [hl], l                                    ; $6B2F: $75
    ld [hl], h                                    ; $6B30: $74
    jr nz, jr_01D_6BA7                            ; $6B31: $20 $74

    ld l, b                                       ; $6B33: $68
    ld h, l                                       ; $6B34: $65
    rst $38                                       ; $6B35: $FF

jr_01D_6B36:
    ld h, a                                       ; $6B36: $67
    ld h, l                                       ; $6B37: $65
    ld a, c                                       ; $6B38: $79
    ld [hl], e                                    ; $6B39: $73
    ld h, l                                       ; $6B3A: $65
    ld [hl], d                                    ; $6B3B: $72
    jr nz, jr_01D_6BA1                            ; $6B3C: $20 $63

    ld h, c                                       ; $6B3E: $61
    ld [hl], l                                    ; $6B3F: $75
    ld [hl], e                                    ; $6B40: $73
    ld h, l                                       ; $6B41: $65
    ld h, h                                       ; $6B42: $64
    jr nz, jr_01D_6BA6                            ; $6B43: $20 $61

    cp $71                                        ; $6B45: $FE $71
    ld [hl], l                                    ; $6B47: $75
    ld h, c                                       ; $6B48: $61
    ld l, e                                       ; $6B49: $6B
    ld h, l                                       ; $6B4A: $65
    jr nz, jr_01D_6BB6                            ; $6B4B: $20 $69

    ld l, [hl]                                    ; $6B4D: $6E
    jr nz, jr_01D_6BC4                            ; $6B4E: $20 $74

    ld l, b                                       ; $6B50: $68
    ld h, l                                       ; $6B51: $65

jr_01D_6B52:
    rst $38                                       ; $6B52: $FF
    ld d, l                                       ; $6B53: $55
    ld l, [hl]                                    ; $6B54: $6E
    ld h, h                                       ; $6B55: $64
    ld h, l                                       ; $6B56: $65
    ld [hl], d                                    ; $6B57: $72
    ld l, [hl]                                    ; $6B58: $6E
    ld h, l                                       ; $6B59: $65

jr_01D_6B5A:
    ld h, c                                       ; $6B5A: $61

jr_01D_6B5B:
    ld [hl], h                                    ; $6B5B: $74
    ld l, b                                       ; $6B5C: $68

jr_01D_6B5D:
    inc l                                         ; $6B5D: $2C
    jr nz, jr_01D_6BC1                            ; $6B5E: $20 $61

    ld l, [hl]                                    ; $6B60: $6E
    ld h, h                                       ; $6B61: $64
    cp $64                                        ; $6B62: $FE $64
    ld h, l                                       ; $6B64: $65
    ld [hl], e                                    ; $6B65: $73
    ld [hl], h                                    ; $6B66: $74
    ld [hl], d                                    ; $6B67: $72
    ld l, a                                       ; $6B68: $6F
    ld a, c                                       ; $6B69: $79
    ld h, l                                       ; $6B6A: $65
    ld h, h                                       ; $6B6B: $64
    jr nz, jr_01D_6BE2                            ; $6B6C: $20 $74

    ld l, b                                       ; $6B6E: $68
    ld h, l                                       ; $6B6F: $65
    rst $38                                       ; $6B70: $FF
    ld l, [hl]                                    ; $6B71: $6E
    ld h, l                                       ; $6B72: $65
    ld h, c                                       ; $6B73: $61
    ld [hl], d                                    ; $6B74: $72
    ld h, d                                       ; $6B75: $62

Call_01D_6B76:
    ld a, c                                       ; $6B76: $79
    jr nz, jr_01D_6BDC                            ; $6B77: $20 $63

    ld l, c                                       ; $6B79: $69
    ld [hl], h                                    ; $6B7A: $74
    ld a, c                                       ; $6B7B: $79
    ld l, $FE                                     ; $6B7C: $2E $FE
    ld c, c                                       ; $6B7E: $49
    ld l, $2E                                     ; $6B7F: $2E $2E
    ld l, $2E                                     ; $6B81: $2E $2E
    jr nz, jr_01D_6BE9                            ; $6B83: $20 $64

    ld l, a                                       ; $6B85: $6F
    ld l, [hl]                                    ; $6B86: $6E
    daa                                           ; $6B87: $27

jr_01D_6B88:
    ld [hl], h                                    ; $6B88: $74
    rst $38                                       ; $6B89: $FF
    ld [hl], h                                    ; $6B8A: $74
    ld l, b                                       ; $6B8B: $68
    ld l, c                                       ; $6B8C: $69
    ld l, [hl]                                    ; $6B8D: $6E
    ld l, e                                       ; $6B8E: $6B
    jr nz, @+$63                                  ; $6B8F: $20 $61

    ld l, [hl]                                    ; $6B91: $6E
    ld a, c                                       ; $6B92: $79
    ld l, a                                       ; $6B93: $6F
    ld l, [hl]                                    ; $6B94: $6E
    ld h, l                                       ; $6B95: $65
    cp $73                                        ; $6B96: $FE $73
    ld [hl], l                                    ; $6B98: $75
    ld [hl], d                                    ; $6B99: $72
    halt                                          ; $6B9A: $76
    ld l, c                                       ; $6B9B: $69
    halt                                          ; $6B9C: $76
    ld h, l                                       ; $6B9D: $65
    ld h, h                                       ; $6B9E: $64
    ld l, $FE                                     ; $6B9F: $2E $FE

jr_01D_6BA1:
    db $FD                                        ; $6BA1: $FD
    sbc d                                         ; $6BA2: $9A
    ld e, b                                       ; $6BA3: $58
    inc b                                         ; $6BA4: $04
    ld b, d                                       ; $6BA5: $42

jr_01D_6BA6:
    sbc e                                         ; $6BA6: $9B

jr_01D_6BA7:
    ld hl, sp+$4A                                 ; $6BA7: $F8 $4A
    sbc a                                         ; $6BA9: $9F
    ld c, [hl]                                    ; $6BAA: $4E
    ld l, a                                       ; $6BAB: $6F
    ld l, $2E                                     ; $6BAC: $2E $2E
    ld l, $2E                                     ; $6BAE: $2E $2E
    ld l, $2E                                     ; $6BB0: $2E $2E
    ld l, $2E                                     ; $6BB2: $2E $2E
    ld l, $FE                                     ; $6BB4: $2E $FE

jr_01D_6BB6:
    db $FD                                        ; $6BB6: $FD
    sbc d                                         ; $6BB7: $9A
    ld e, b                                       ; $6BB8: $58
    dec b                                         ; $6BB9: $05
    ld b, d                                       ; $6BBA: $42
    sbc e                                         ; $6BBB: $9B
    ld c, b                                       ; $6BBC: $48
    ld b, [hl]                                    ; $6BBD: $46
    sbc a                                         ; $6BBE: $9F
    ld d, e                                       ; $6BBF: $53
    ld l, b                                       ; $6BC0: $68

jr_01D_6BC1:
    ld h, c                                       ; $6BC1: $61
    ld l, l                                       ; $6BC2: $6D
    ld h, l                                       ; $6BC3: $65

jr_01D_6BC4:
    ld h, [hl]                                    ; $6BC4: $66
    ld [hl], l                                    ; $6BC5: $75
    ld l, h                                       ; $6BC6: $6C
    ld l, $20                                     ; $6BC7: $2E $20
    ld d, a                                       ; $6BC9: $57
    ld l, b                                       ; $6BCA: $68
    ld l, a                                       ; $6BCB: $6F
    rst $38                                       ; $6BCC: $FF
    ld [hl], a                                    ; $6BCD: $77
    ld l, a                                       ; $6BCE: $6F
    ld [hl], l                                    ; $6BCF: $75
    ld l, h                                       ; $6BD0: $6C
    ld h, h                                       ; $6BD1: $64
    jr nz, jr_01D_6C38                            ; $6BD2: $20 $64

    ld l, a                                       ; $6BD4: $6F
    jr nz, @+$75                                  ; $6BD5: $20 $73

    ld [hl], l                                    ; $6BD7: $75
    ld h, e                                       ; $6BD8: $63
    ld l, b                                       ; $6BD9: $68
    cp $61                                        ; $6BDA: $FE $61

jr_01D_6BDC:
    jr nz, @+$76                                  ; $6BDC: $20 $74

    ld l, b                                       ; $6BDE: $68
    ld l, c                                       ; $6BDF: $69
    ld l, [hl]                                    ; $6BE0: $6E
    ld h, a                                       ; $6BE1: $67

jr_01D_6BE2:
    ccf                                           ; $6BE2: $3F
    cp $FD                                        ; $6BE3: $FE $FD
    sbc d                                         ; $6BE5: $9A
    ld e, b                                       ; $6BE6: $58
    ld b, $42                                     ; $6BE7: $06 $42

jr_01D_6BE9:
    sbc e                                         ; $6BE9: $9B
    ld a, b                                       ; $6BEA: $78
    ld [hl], b                                    ; $6BEB: $70
    sbc a                                         ; $6BEC: $9F
    ld d, e                                       ; $6BED: $53
    ld l, a                                       ; $6BEE: $6F
    ld l, l                                       ; $6BEF: $6D
    ld h, l                                       ; $6BF0: $65
    jr nz, @+$69                                  ; $6BF1: $20 $67

    ld [hl], l                                    ; $6BF3: $75
    ld a, c                                       ; $6BF4: $79
    jr nz, jr_01D_6C65                            ; $6BF5: $20 $6E

    ld h, c                                       ; $6BF7: $61
    ld l, l                                       ; $6BF8: $6D
    ld h, l                                       ; $6BF9: $65
    ld h, h                                       ; $6BFA: $64
    rst $38                                       ; $6BFB: $FF
    ld c, l                                       ; $6BFC: $4D
    ld l, a                                       ; $6BFD: $6F
    ld [hl], d                                    ; $6BFE: $72
    ld h, c                                       ; $6BFF: $61
    ld h, a                                       ; $6C00: $67
    ld l, $FE                                     ; $6C01: $2E $FE
    ld c, b                                       ; $6C03: $48
    ld h, l                                       ; $6C04: $65
    jr nz, jr_01D_6C75                            ; $6C05: $20 $6E

    ld h, l                                       ; $6C07: $65
    ld h, c                                       ; $6C08: $61
    ld [hl], d                                    ; $6C09: $72
    ld l, h                                       ; $6C0A: $6C
    ld a, c                                       ; $6C0B: $79
    rst $38                                       ; $6C0C: $FF
    ld [hl], a                                    ; $6C0D: $77
    ld h, c                                       ; $6C0E: $61
    ld [hl], e                                    ; $6C0F: $73
    ld [hl], h                                    ; $6C10: $74
    ld h, l                                       ; $6C11: $65
    ld h, h                                       ; $6C12: $64
    jr nz, jr_01D_6C82                            ; $6C13: $20 $6D

    ld h, l                                       ; $6C15: $65
    ld l, $FE                                     ; $6C16: $2E $FE
    db $FD                                        ; $6C18: $FD
    sbc d                                         ; $6C19: $9A
    ld e, b                                       ; $6C1A: $58
    rlca                                          ; $6C1B: $07
    ld b, d                                       ; $6C1C: $42
    sbc e                                         ; $6C1D: $9B
    ld hl, sp+$4A                                 ; $6C1E: $F8 $4A
    sbc a                                         ; $6C20: $9F
    ld c, l                                       ; $6C21: $4D
    ld c, a                                       ; $6C22: $4F
    ld d, d                                       ; $6C23: $52
    ld b, c                                       ; $6C24: $41
    ld b, a                                       ; $6C25: $47
    ccf                                           ; $6C26: $3F
    jr nz, jr_01D_6C6D                            ; $6C27: $20 $44

    ld l, c                                       ; $6C29: $69
    ld h, h                                       ; $6C2A: $64
    jr nz, jr_01D_6CA6                            ; $6C2B: $20 $79

    ld l, a                                       ; $6C2D: $6F
    ld [hl], l                                    ; $6C2E: $75
    rst $38                                       ; $6C2F: $FF
    ld [hl], e                                    ; $6C30: $73
    ld h, c                                       ; $6C31: $61
    ld a, c                                       ; $6C32: $79
    jr nz, jr_01D_6C82                            ; $6C33: $20 $4D

    ld c, a                                       ; $6C35: $4F
    ld d, d                                       ; $6C36: $52
    ld b, c                                       ; $6C37: $41

jr_01D_6C38:
    ld b, a                                       ; $6C38: $47
    ccf                                           ; $6C39: $3F
    ccf                                           ; $6C3A: $3F
    cp $FD                                        ; $6C3B: $FE $FD
    sbc d                                         ; $6C3D: $9A
    ld e, b                                       ; $6C3E: $58
    ld [$9B42], sp                                ; $6C3F: $08 $42 $9B
    ld a, b                                       ; $6C42: $78
    ld [hl], b                                    ; $6C43: $70
    sbc a                                         ; $6C44: $9F
    ld d, l                                       ; $6C45: $55
    ld l, b                                       ; $6C46: $68
    ld l, $2E                                     ; $6C47: $2E $2E
    ld l, $79                                     ; $6C49: $2E $79
    dec l                                         ; $6C4B: $2D
    ld a, c                                       ; $6C4C: $79
    ld h, l                                       ; $6C4D: $65
    ld [hl], e                                    ; $6C4E: $73
    ld l, $2E                                     ; $6C4F: $2E $2E
    ld l, $FE                                     ; $6C51: $2E $FE
    ld b, h                                       ; $6C53: $44
    ld l, a                                       ; $6C54: $6F
    jr nz, jr_01D_6CD0                            ; $6C55: $20 $79

    ld l, a                                       ; $6C57: $6F
    ld [hl], l                                    ; $6C58: $75
    jr nz, jr_01D_6CC6                            ; $6C59: $20 $6B

    ld l, [hl]                                    ; $6C5B: $6E
    ld l, a                                       ; $6C5C: $6F
    ld [hl], a                                    ; $6C5D: $77
    rst $38                                       ; $6C5E: $FF
    ld [hl], a                                    ; $6C5F: $77
    ld l, b                                       ; $6C60: $68
    ld l, a                                       ; $6C61: $6F
    jr nz, jr_01D_6CCC                            ; $6C62: $20 $68

    ld h, l                                       ; $6C64: $65

jr_01D_6C65:
    jr nz, jr_01D_6CD0                            ; $6C65: $20 $69

    ld [hl], e                                    ; $6C67: $73
    ccf                                           ; $6C68: $3F
    cp $FD                                        ; $6C69: $FE $FD
    sbc d                                         ; $6C6B: $9A
    ld e, b                                       ; $6C6C: $58

jr_01D_6C6D:
    add hl, bc                                    ; $6C6D: $09
    ld b, d                                       ; $6C6E: $42
    sbc e                                         ; $6C6F: $9B
    ld hl, sp+$4A                                 ; $6C70: $F8 $4A
    sbc a                                         ; $6C72: $9F
    ld c, l                                       ; $6C73: $4D
    ld l, a                                       ; $6C74: $6F

jr_01D_6C75:
    ld [hl], d                                    ; $6C75: $72
    ld h, c                                       ; $6C76: $61
    ld h, a                                       ; $6C77: $67
    ld l, $2E                                     ; $6C78: $2E $2E
    ld l, $2E                                     ; $6C7A: $2E $2E
    jr nz, jr_01D_6CC7                            ; $6C7C: $20 $49

    rst $38                                       ; $6C7E: $FF
    ld l, b                                       ; $6C7F: $68
    ld h, c                                       ; $6C80: $61
    halt                                          ; $6C81: $76

jr_01D_6C82:
    ld h, l                                       ; $6C82: $65
    ld l, [hl]                                    ; $6C83: $6E
    daa                                           ; $6C84: $27
    ld [hl], h                                    ; $6C85: $74
    jr nz, @+$6A                                  ; $6C86: $20 $68

    ld h, l                                       ; $6C88: $65
    ld h, c                                       ; $6C89: $61
    ld [hl], d                                    ; $6C8A: $72
    ld h, h                                       ; $6C8B: $64
    cp $74                                        ; $6C8C: $FE $74
    ld l, b                                       ; $6C8E: $68
    ld h, c                                       ; $6C8F: $61
    ld [hl], h                                    ; $6C90: $74
    jr nz, @+$70                                  ; $6C91: $20 $6E

    ld h, c                                       ; $6C93: $61
    ld l, l                                       ; $6C94: $6D
    ld h, l                                       ; $6C95: $65
    jr nz, jr_01D_6CFE                            ; $6C96: $20 $66

    ld l, a                                       ; $6C98: $6F
    ld [hl], d                                    ; $6C99: $72
    jr nz, jr_01D_6CFD                            ; $6C9A: $20 $61

    rst $38                                       ; $6C9C: $FF
    ld l, h                                       ; $6C9D: $6C
    ld l, a                                       ; $6C9E: $6F
    ld l, [hl]                                    ; $6C9F: $6E
    ld h, a                                       ; $6CA0: $67
    jr nz, jr_01D_6D17                            ; $6CA1: $20 $74

    ld l, c                                       ; $6CA3: $69
    ld l, l                                       ; $6CA4: $6D
    ld h, l                                       ; $6CA5: $65

jr_01D_6CA6:
    ld l, $FE                                     ; $6CA6: $2E $FE
    ld d, h                                       ; $6CA8: $54
    ld l, b                                       ; $6CA9: $68
    ld h, l                                       ; $6CAA: $65
    ld [hl], d                                    ; $6CAB: $72
    ld h, l                                       ; $6CAC: $65
    jr nz, jr_01D_6D18                            ; $6CAD: $20 $69

    ld [hl], e                                    ; $6CAF: $73
    jr nz, jr_01D_6D13                            ; $6CB0: $20 $61

    ld l, [hl]                                    ; $6CB2: $6E
    jr nz, jr_01D_6D24                            ; $6CB3: $20 $6F

    ld l, h                                       ; $6CB5: $6C
    ld h, h                                       ; $6CB6: $64
    rst $38                                       ; $6CB7: $FF
    ld h, c                                       ; $6CB8: $61
    ld l, [hl]                                    ; $6CB9: $6E
    ld h, h                                       ; $6CBA: $64
    jr nz, @+$68                                  ; $6CBB: $20 $66

    ld h, c                                       ; $6CBD: $61
    ld l, l                                       ; $6CBE: $6D
    ld l, a                                       ; $6CBF: $6F
    ld [hl], l                                    ; $6CC0: $75
    ld [hl], e                                    ; $6CC1: $73
    cp $6C                                        ; $6CC2: $FE $6C
    ld h, l                                       ; $6CC4: $65
    ld h, a                                       ; $6CC5: $67

jr_01D_6CC6:
    ld h, l                                       ; $6CC6: $65

jr_01D_6CC7:
    ld l, [hl]                                    ; $6CC7: $6E
    ld h, h                                       ; $6CC8: $64
    jr nz, jr_01D_6D2C                            ; $6CC9: $20 $61

    ld h, d                                       ; $6CCB: $62

jr_01D_6CCC:
    ld l, a                                       ; $6CCC: $6F
    ld [hl], l                                    ; $6CCD: $75
    ld [hl], h                                    ; $6CCE: $74
    rst $38                                       ; $6CCF: $FF

jr_01D_6CD0:
    ld l, b                                       ; $6CD0: $68
    ld l, a                                       ; $6CD1: $6F
    ld [hl], a                                    ; $6CD2: $77
    jr nz, jr_01D_6D49                            ; $6CD3: $20 $74

    ld l, b                                       ; $6CD5: $68
    ld h, l                                       ; $6CD6: $65
    cp $63                                        ; $6CD7: $FE $63
    ld l, a                                       ; $6CD9: $6F
    ld [hl], l                                    ; $6CDA: $75
    ld l, [hl]                                    ; $6CDB: $6E
    ld [hl], h                                    ; $6CDC: $74
    ld [hl], d                                    ; $6CDD: $72
    ld l, c                                       ; $6CDE: $69
    ld h, l                                       ; $6CDF: $65
    ld [hl], e                                    ; $6CE0: $73
    jr nz, @+$76                                  ; $6CE1: $20 $74

    ld l, b                                       ; $6CE3: $68
    ld h, c                                       ; $6CE4: $61
    ld [hl], h                                    ; $6CE5: $74
    rst $38                                       ; $6CE6: $FF
    ld h, l                                       ; $6CE7: $65
    ld a, b                                       ; $6CE8: $78
    ld l, c                                       ; $6CE9: $69
    ld [hl], e                                    ; $6CEA: $73
    ld [hl], h                                    ; $6CEB: $74
    jr nz, @+$6B                                  ; $6CEC: $20 $69

    ld l, [hl]                                    ; $6CEE: $6E
    cp $4D                                        ; $6CEF: $FE $4D
    ld h, c                                       ; $6CF1: $61
    ld h, a                                       ; $6CF2: $67
    ld l, c                                       ; $6CF3: $69
    dec l                                         ; $6CF4: $2D
    ld c, [hl]                                    ; $6CF5: $4E
    ld h, c                                       ; $6CF6: $61
    ld [hl], h                                    ; $6CF7: $74
    ld l, c                                       ; $6CF8: $69
    ld l, a                                       ; $6CF9: $6F
    ld l, [hl]                                    ; $6CFA: $6E
    rst $38                                       ; $6CFB: $FF
    ld h, e                                       ; $6CFC: $63

jr_01D_6CFD:
    ld h, c                                       ; $6CFD: $61

jr_01D_6CFE:
    ld l, l                                       ; $6CFE: $6D
    ld h, l                                       ; $6CFF: $65
    jr nz, jr_01D_6D76                            ; $6D00: $20 $74

    ld l, a                                       ; $6D02: $6F
    jr nz, jr_01D_6D67                            ; $6D03: $20 $62

    ld h, l                                       ; $6D05: $65
    ld l, $FE                                     ; $6D06: $2E $FE
    ld d, a                                       ; $6D08: $57
    ld l, a                                       ; $6D09: $6F
    ld [hl], l                                    ; $6D0A: $75
    ld l, h                                       ; $6D0B: $6C
    ld h, h                                       ; $6D0C: $64
    jr nz, jr_01D_6D88                            ; $6D0D: $20 $79

    ld l, a                                       ; $6D0F: $6F
    ld [hl], l                                    ; $6D10: $75
    jr nz, jr_01D_6D7F                            ; $6D11: $20 $6C

jr_01D_6D13:
    ld l, c                                       ; $6D13: $69
    ld l, e                                       ; $6D14: $6B
    ld h, l                                       ; $6D15: $65
    rst $38                                       ; $6D16: $FF

jr_01D_6D17:
    ld [hl], h                                    ; $6D17: $74

jr_01D_6D18:
    ld l, a                                       ; $6D18: $6F
    jr nz, jr_01D_6D83                            ; $6D19: $20 $68

    ld h, l                                       ; $6D1B: $65
    ld h, c                                       ; $6D1C: $61
    ld [hl], d                                    ; $6D1D: $72
    jr nz, jr_01D_6D89                            ; $6D1E: $20 $69

    ld [hl], h                                    ; $6D20: $74
    ccf                                           ; $6D21: $3F
    cp $FD                                        ; $6D22: $FE $FD

jr_01D_6D24:
    sbc e                                         ; $6D24: $9B
    ld a, b                                       ; $6D25: $78
    ld [hl], b                                    ; $6D26: $70
    sbc a                                         ; $6D27: $9F
    jr nz, jr_01D_6D79                            ; $6D28: $20 $4F

    ld l, e                                       ; $6D2A: $6B
    ld h, c                                       ; $6D2B: $61

jr_01D_6D2C:
    ld a, c                                       ; $6D2C: $79
    rst $38                                       ; $6D2D: $FF
    jr nz, jr_01D_6D7E                            ; $6D2E: $20 $4E

    ld l, a                                       ; $6D30: $6F
    ld [hl], h                                    ; $6D31: $74
    jr nz, @+$74                                  ; $6D32: $20 $72

    ld h, l                                       ; $6D34: $65
    ld h, c                                       ; $6D35: $61
    ld l, h                                       ; $6D36: $6C
    ld l, h                                       ; $6D37: $6C
    ld a, c                                       ; $6D38: $79
    db $FD                                        ; $6D39: $FD
    sbc h                                         ; $6D3A: $9C
    ld [bc], a                                    ; $6D3B: $02
    dec e                                         ; $6D3C: $1D
    ld b, d                                       ; $6D3D: $42
    ld l, l                                       ; $6D3E: $6D
    dec e                                         ; $6D3F: $1D
    ret c                                         ; $6D40: $D8

    ld [hl], c                                    ; $6D41: $71
    sbc e                                         ; $6D42: $9B
    ld hl, sp+$4A                                 ; $6D43: $F8 $4A
    sbc a                                         ; $6D45: $9F
    ld b, c                                       ; $6D46: $41
    jr nz, jr_01D_6DB5                            ; $6D47: $20 $6C

jr_01D_6D49:
    ld l, a                                       ; $6D49: $6F
    ld l, [hl]                                    ; $6D4A: $6E
    ld h, a                                       ; $6D4B: $67
    jr nz, jr_01D_6DC2                            ; $6D4C: $20 $74

    ld l, c                                       ; $6D4E: $69
    ld l, l                                       ; $6D4F: $6D
    ld h, l                                       ; $6D50: $65
    rst $38                                       ; $6D51: $FF
    ld h, c                                       ; $6D52: $61
    ld h, a                                       ; $6D53: $67
    ld l, a                                       ; $6D54: $6F
    inc l                                         ; $6D55: $2C
    jr nz, jr_01D_6DCF                            ; $6D56: $20 $77

    ld l, b                                       ; $6D58: $68
    ld h, l                                       ; $6D59: $65
    ld l, [hl]                                    ; $6D5A: $6E
    jr nz, jr_01D_6DD1                            ; $6D5B: $20 $74

    ld l, b                                       ; $6D5D: $68
    ld h, l                                       ; $6D5E: $65
    cp $6C                                        ; $6D5F: $FE $6C
    ld h, c                                       ; $6D61: $61
    ld l, [hl]                                    ; $6D62: $6E
    ld h, h                                       ; $6D63: $64
    jr nz, jr_01D_6DDD                            ; $6D64: $20 $77

    ld h, c                                       ; $6D66: $61

jr_01D_6D67:
    ld [hl], e                                    ; $6D67: $73
    jr nz, jr_01D_6DDC                            ; $6D68: $20 $72

    ld [hl], l                                    ; $6D6A: $75
    ld l, h                                       ; $6D6B: $6C
    ld h, l                                       ; $6D6C: $65
    ld h, h                                       ; $6D6D: $64
    rst $38                                       ; $6D6E: $FF
    ld h, d                                       ; $6D6F: $62
    ld a, c                                       ; $6D70: $79
    jr nz, @+$79                                  ; $6D71: $20 $77

    ld h, c                                       ; $6D73: $61
    ld l, [hl]                                    ; $6D74: $6E
    ld h, h                                       ; $6D75: $64

jr_01D_6D76:
    ld h, l                                       ; $6D76: $65
    ld [hl], d                                    ; $6D77: $72
    ld l, c                                       ; $6D78: $69

jr_01D_6D79:
    ld l, [hl]                                    ; $6D79: $6E
    ld h, a                                       ; $6D7A: $67
    cp $74                                        ; $6D7B: $FE $74
    ld [hl], d                                    ; $6D7D: $72

jr_01D_6D7E:
    ld l, c                                       ; $6D7E: $69

jr_01D_6D7F:
    ld h, d                                       ; $6D7F: $62
    ld h, l                                       ; $6D80: $65
    ld [hl], e                                    ; $6D81: $73
    inc l                                         ; $6D82: $2C

jr_01D_6D83:
    jr nz, jr_01D_6DE6                            ; $6D83: $20 $61

    jr nz, jr_01D_6DF4                            ; $6D85: $20 $6D

    ld h, c                                       ; $6D87: $61

jr_01D_6D88:
    ld l, [hl]                                    ; $6D88: $6E

jr_01D_6D89:
    rst $38                                       ; $6D89: $FF
    ld l, [hl]                                    ; $6D8A: $6E
    ld h, c                                       ; $6D8B: $61
    ld l, l                                       ; $6D8C: $6D
    ld h, l                                       ; $6D8D: $65
    ld h, h                                       ; $6D8E: $64
    jr nz, jr_01D_6DD2                            ; $6D8F: $20 $41

    ld h, a                                       ; $6D91: $67
    ld h, c                                       ; $6D92: $61
    ld h, h                                       ; $6D93: $64
    ld l, a                                       ; $6D94: $6F
    ld l, [hl]                                    ; $6D95: $6E
    cp $64                                        ; $6D96: $FE $64
    ld l, c                                       ; $6D98: $69
    ld [hl], e                                    ; $6D99: $73
    ld h, e                                       ; $6D9A: $63
    ld l, a                                       ; $6D9B: $6F
    halt                                          ; $6D9C: $76
    ld h, l                                       ; $6D9D: $65
    ld [hl], d                                    ; $6D9E: $72
    ld h, l                                       ; $6D9F: $65
    ld h, h                                       ; $6DA0: $64
    rst $38                                       ; $6DA1: $FF
    ld [hl], h                                    ; $6DA2: $74
    ld l, b                                       ; $6DA3: $68
    ld h, l                                       ; $6DA4: $65
    jr nz, @+$45                                  ; $6DA5: $20 $43

    ld l, c                                       ; $6DA7: $69
    ld [hl], h                                    ; $6DA8: $74
    ld a, c                                       ; $6DA9: $79
    jr nz, @+$71                                  ; $6DAA: $20 $6F

    ld h, [hl]                                    ; $6DAC: $66
    cp $41                                        ; $6DAD: $FE $41
    ld l, [hl]                                    ; $6DAF: $6E
    ld h, e                                       ; $6DB0: $63
    ld l, c                                       ; $6DB1: $69
    ld h, l                                       ; $6DB2: $65
    ld l, [hl]                                    ; $6DB3: $6E
    ld [hl], h                                    ; $6DB4: $74

jr_01D_6DB5:
    jr nz, jr_01D_6E06                            ; $6DB5: $20 $4F

    ld l, [hl]                                    ; $6DB7: $6E
    ld h, l                                       ; $6DB8: $65
    ld [hl], e                                    ; $6DB9: $73
    ld l, $FF                                     ; $6DBA: $2E $FF
    ld c, b                                       ; $6DBC: $48
    ld h, l                                       ; $6DBD: $65
    jr nz, jr_01D_6E33                            ; $6DBE: $20 $73

    ld [hl], b                                    ; $6DC0: $70
    ld l, a                                       ; $6DC1: $6F

jr_01D_6DC2:
    ld l, e                                       ; $6DC2: $6B
    ld h, l                                       ; $6DC3: $65
    jr nz, jr_01D_6E3D                            ; $6DC4: $20 $77

    ld l, c                                       ; $6DC6: $69
    ld [hl], h                                    ; $6DC7: $74
    ld l, b                                       ; $6DC8: $68
    cp $74                                        ; $6DC9: $FE $74
    ld l, b                                       ; $6DCB: $68
    ld h, l                                       ; $6DCC: $65
    ld l, l                                       ; $6DCD: $6D
    inc l                                         ; $6DCE: $2C

jr_01D_6DCF:
    jr nz, jr_01D_6E32                            ; $6DCF: $20 $61

jr_01D_6DD1:
    ld l, [hl]                                    ; $6DD1: $6E

jr_01D_6DD2:
    ld h, h                                       ; $6DD2: $64
    jr nz, @+$76                                  ; $6DD3: $20 $74

    ld l, b                                       ; $6DD5: $68
    ld h, l                                       ; $6DD6: $65
    ld a, c                                       ; $6DD7: $79
    rst $38                                       ; $6DD8: $FF
    ld h, d                                       ; $6DD9: $62
    ld l, h                                       ; $6DDA: $6C
    ld h, l                                       ; $6DDB: $65

jr_01D_6DDC:
    ld [hl], e                                    ; $6DDC: $73

jr_01D_6DDD:
    ld [hl], e                                    ; $6DDD: $73
    ld h, l                                       ; $6DDE: $65
    ld h, h                                       ; $6DDF: $64
    jr nz, jr_01D_6E4A                            ; $6DE0: $20 $68

    ld l, c                                       ; $6DE2: $69
    ld l, l                                       ; $6DE3: $6D
    cp $77                                        ; $6DE4: $FE $77

jr_01D_6DE6:
    ld l, c                                       ; $6DE6: $69
    ld [hl], h                                    ; $6DE7: $74
    ld l, b                                       ; $6DE8: $68
    jr nz, @+$6D                                  ; $6DE9: $20 $6B

    ld l, [hl]                                    ; $6DEB: $6E
    ld l, a                                       ; $6DEC: $6F
    ld [hl], a                                    ; $6DED: $77
    ld l, h                                       ; $6DEE: $6C
    ld h, l                                       ; $6DEF: $65
    ld h, h                                       ; $6DF0: $64
    ld h, a                                       ; $6DF1: $67
    ld h, l                                       ; $6DF2: $65
    rst $38                                       ; $6DF3: $FF

jr_01D_6DF4:
    ld l, a                                       ; $6DF4: $6F
    ld h, [hl]                                    ; $6DF5: $66
    jr nz, jr_01D_6E6C                            ; $6DF6: $20 $74

    ld l, b                                       ; $6DF8: $68
    ld h, l                                       ; $6DF9: $65
    jr nz, @+$4F                                  ; $6DFA: $20 $4D

    ld h, c                                       ; $6DFC: $61
    ld h, a                                       ; $6DFD: $67
    ld l, c                                       ; $6DFE: $69
    inc l                                         ; $6DFF: $2C
    cp $77                                        ; $6E00: $FE $77
    ld l, b                                       ; $6E02: $68
    ld l, c                                       ; $6E03: $69
    ld h, e                                       ; $6E04: $63
    ld l, b                                       ; $6E05: $68

jr_01D_6E06:
    jr nz, jr_01D_6E70                            ; $6E06: $20 $68

    ld h, l                                       ; $6E08: $65
    jr nz, jr_01D_6E7F                            ; $6E09: $20 $74

    ld l, a                                       ; $6E0B: $6F
    ld l, a                                       ; $6E0C: $6F
    ld l, e                                       ; $6E0D: $6B
    rst $38                                       ; $6E0E: $FF
    ld h, d                                       ; $6E0F: $62
    ld h, c                                       ; $6E10: $61
    ld h, e                                       ; $6E11: $63
    ld l, e                                       ; $6E12: $6B
    jr nz, jr_01D_6E89                            ; $6E13: $20 $74

    ld l, a                                       ; $6E15: $6F
    jr nz, jr_01D_6E80                            ; $6E16: $20 $68

    ld l, c                                       ; $6E18: $69
    ld [hl], e                                    ; $6E19: $73
    cp $74                                        ; $6E1A: $FE $74
    ld [hl], d                                    ; $6E1C: $72
    ld l, c                                       ; $6E1D: $69
    ld h, d                                       ; $6E1E: $62
    ld h, l                                       ; $6E1F: $65
    ld l, $FE                                     ; $6E20: $2E $FE
    db $FD                                        ; $6E22: $FD
    sbc d                                         ; $6E23: $9A
    sbc e                                         ; $6E24: $9B
    ld hl, sp+$4A                                 ; $6E25: $F8 $4A
    sbc a                                         ; $6E27: $9F
    ld b, d                                       ; $6E28: $42
    ld [hl], l                                    ; $6E29: $75
    ld [hl], h                                    ; $6E2A: $74
    jr nz, jr_01D_6E8E                            ; $6E2B: $20 $61

    ld l, h                                       ; $6E2D: $6C
    ld [hl], h                                    ; $6E2E: $74
    ld l, b                                       ; $6E2F: $68
    ld l, a                                       ; $6E30: $6F
    ld [hl], l                                    ; $6E31: $75

jr_01D_6E32:
    ld h, a                                       ; $6E32: $67

jr_01D_6E33:
    ld l, b                                       ; $6E33: $68
    rst $38                                       ; $6E34: $FF
    ld [hl], h                                    ; $6E35: $74
    ld l, b                                       ; $6E36: $68
    ld h, l                                       ; $6E37: $65
    jr nz, jr_01D_6E7B                            ; $6E38: $20 $41

    ld l, [hl]                                    ; $6E3A: $6E
    ld h, e                                       ; $6E3B: $63
    ld l, c                                       ; $6E3C: $69

jr_01D_6E3D:
    ld h, l                                       ; $6E3D: $65
    ld l, [hl]                                    ; $6E3E: $6E
    ld [hl], h                                    ; $6E3F: $74
    ld [hl], e                                    ; $6E40: $73
    cp $77                                        ; $6E41: $FE $77
    ld l, c                                       ; $6E43: $69
    ld [hl], e                                    ; $6E44: $73
    ld l, b                                       ; $6E45: $68
    ld h, l                                       ; $6E46: $65
    ld h, h                                       ; $6E47: $64
    jr nz, jr_01D_6EBE                            ; $6E48: $20 $74

jr_01D_6E4A:
    ld l, a                                       ; $6E4A: $6F
    jr nz, jr_01D_6EB4                            ; $6E4B: $20 $67

    ld l, c                                       ; $6E4D: $69
    halt                                          ; $6E4E: $76
    ld h, l                                       ; $6E4F: $65
    rst $38                                       ; $6E50: $FF
    ld [hl], h                                    ; $6E51: $74
    ld l, b                                       ; $6E52: $68
    ld l, c                                       ; $6E53: $69
    ld [hl], e                                    ; $6E54: $73
    jr nz, jr_01D_6EC2                            ; $6E55: $20 $6B

    ld l, [hl]                                    ; $6E57: $6E
    ld l, a                                       ; $6E58: $6F
    ld [hl], a                                    ; $6E59: $77
    ld l, h                                       ; $6E5A: $6C
    ld h, l                                       ; $6E5B: $65
    ld h, h                                       ; $6E5C: $64
    ld h, a                                       ; $6E5D: $67
    ld h, l                                       ; $6E5E: $65
    cp $61                                        ; $6E5F: $FE $61
    ld [hl], e                                    ; $6E61: $73
    jr nz, jr_01D_6EC5                            ; $6E62: $20 $61

    jr nz, jr_01D_6ECD                            ; $6E64: $20 $67

    ld l, c                                       ; $6E66: $69
    ld h, [hl]                                    ; $6E67: $66
    ld [hl], h                                    ; $6E68: $74
    inc l                                         ; $6E69: $2C
    jr nz, jr_01D_6EDB                            ; $6E6A: $20 $6F

jr_01D_6E6C:
    ld l, [hl]                                    ; $6E6C: $6E
    ld h, l                                       ; $6E6D: $65
    rst $38                                       ; $6E6E: $FF
    ld b, c                                       ; $6E6F: $41

jr_01D_6E70:
    ld l, [hl]                                    ; $6E70: $6E
    ld h, e                                       ; $6E71: $63
    ld l, c                                       ; $6E72: $69
    ld h, l                                       ; $6E73: $65
    ld l, [hl]                                    ; $6E74: $6E
    ld [hl], h                                    ; $6E75: $74
    jr nz, jr_01D_6EEF                            ; $6E76: $20 $77

    ld l, a                                       ; $6E78: $6F
    ld [hl], l                                    ; $6E79: $75
    ld l, h                                       ; $6E7A: $6C

jr_01D_6E7B:
    ld h, h                                       ; $6E7B: $64
    cp $6E                                        ; $6E7C: $FE $6E
    ld l, a                                       ; $6E7E: $6F

jr_01D_6E7F:
    ld [hl], h                                    ; $6E7F: $74

jr_01D_6E80:
    jr nz, jr_01D_6EE3                            ; $6E80: $20 $61

    ld h, e                                       ; $6E82: $63
    ld h, e                                       ; $6E83: $63
    ld h, l                                       ; $6E84: $65
    ld [hl], b                                    ; $6E85: $70
    ld [hl], h                                    ; $6E86: $74
    jr nz, jr_01D_6EFC                            ; $6E87: $20 $73

jr_01D_6E89:
    ld [hl], l                                    ; $6E89: $75
    ld h, e                                       ; $6E8A: $63
    ld l, b                                       ; $6E8B: $68
    rst $38                                       ; $6E8C: $FF
    ld l, e                                       ; $6E8D: $6B

jr_01D_6E8E:
    ld l, [hl]                                    ; $6E8E: $6E
    ld l, a                                       ; $6E8F: $6F
    ld [hl], a                                    ; $6E90: $77
    ld l, h                                       ; $6E91: $6C
    ld h, l                                       ; $6E92: $65
    ld h, h                                       ; $6E93: $64
    ld h, a                                       ; $6E94: $67
    ld h, l                                       ; $6E95: $65
    jr nz, jr_01D_6EFA                            ; $6E96: $20 $62

    ld h, l                                       ; $6E98: $65
    ld l, c                                       ; $6E99: $69
    ld l, [hl]                                    ; $6E9A: $6E
    ld h, a                                       ; $6E9B: $67
    cp $67                                        ; $6E9C: $FE $67
    ld l, c                                       ; $6E9E: $69
    halt                                          ; $6E9F: $76
    ld h, l                                       ; $6EA0: $65
    ld l, [hl]                                    ; $6EA1: $6E
    jr nz, jr_01D_6F18                            ; $6EA2: $20 $74

    ld l, a                                       ; $6EA4: $6F
    jr nz, jr_01D_6F08                            ; $6EA5: $20 $61

    ld l, [hl]                                    ; $6EA7: $6E
    rst $38                                       ; $6EA8: $FF
    ld l, a                                       ; $6EA9: $6F
    ld [hl], l                                    ; $6EAA: $75
    ld [hl], h                                    ; $6EAB: $74
    ld [hl], e                                    ; $6EAC: $73
    ld l, c                                       ; $6EAD: $69
    ld h, h                                       ; $6EAE: $64
    ld h, l                                       ; $6EAF: $65
    ld [hl], d                                    ; $6EB0: $72
    ld l, $20                                     ; $6EB1: $2E $20
    ld c, b                                       ; $6EB3: $48

jr_01D_6EB4:
    ld h, l                                       ; $6EB4: $65
    dec l                                         ; $6EB5: $2D
    cp $6F                                        ; $6EB6: $FE $6F
    ld [hl], d                                    ; $6EB8: $72
    jr nz, jr_01D_6F2E                            ; $6EB9: $20 $73

    ld l, b                                       ; $6EBB: $68
    ld h, l                                       ; $6EBC: $65
    dec l                                         ; $6EBD: $2D

jr_01D_6EBE:
    jr nz, @+$68                                  ; $6EBE: $20 $66

    ld l, a                                       ; $6EC0: $6F
    ld [hl], d                                    ; $6EC1: $72

jr_01D_6EC2:
    ld l, l                                       ; $6EC2: $6D
    ld h, l                                       ; $6EC3: $65
    ld h, h                                       ; $6EC4: $64

jr_01D_6EC5:
    rst $38                                       ; $6EC5: $FF
    ld h, c                                       ; $6EC6: $61
    ld l, [hl]                                    ; $6EC7: $6E
    jr nz, jr_01D_6F2B                            ; $6EC8: $20 $61

    ld [hl], d                                    ; $6ECA: $72
    ld l, l                                       ; $6ECB: $6D
    ld a, c                                       ; $6ECC: $79

jr_01D_6ECD:
    jr nz, jr_01D_6F3E                            ; $6ECD: $20 $6F

    ld h, [hl]                                    ; $6ECF: $66
    rst $38                                       ; $6ED0: $FF
    ld [hl], e                                    ; $6ED1: $73
    ld l, b                                       ; $6ED2: $68
    ld h, c                                       ; $6ED3: $61
    ld h, h                                       ; $6ED4: $64
    ld l, a                                       ; $6ED5: $6F
    ld [hl], a                                    ; $6ED6: $77
    dec l                                         ; $6ED7: $2D
    ld l, h                                       ; $6ED8: $6C
    ld l, c                                       ; $6ED9: $69
    ld l, e                                       ; $6EDA: $6B

jr_01D_6EDB:
    ld h, l                                       ; $6EDB: $65
    cp $63                                        ; $6EDC: $FE $63
    ld [hl], d                                    ; $6EDE: $72
    ld h, l                                       ; $6EDF: $65
    ld h, c                                       ; $6EE0: $61
    ld [hl], h                                    ; $6EE1: $74
    ld [hl], l                                    ; $6EE2: $75

jr_01D_6EE3:
    ld [hl], d                                    ; $6EE3: $72
    ld h, l                                       ; $6EE4: $65
    ld [hl], e                                    ; $6EE5: $73
    jr nz, jr_01D_6F49                            ; $6EE6: $20 $61

    ld l, [hl]                                    ; $6EE8: $6E
    ld h, h                                       ; $6EE9: $64
    rst $38                                       ; $6EEA: $FF
    ld [hl], e                                    ; $6EEB: $73
    ld h, l                                       ; $6EEC: $65
    ld l, [hl]                                    ; $6EED: $6E
    ld [hl], h                                    ; $6EEE: $74

jr_01D_6EEF:
    jr nz, jr_01D_6F5A                            ; $6EEF: $20 $69

    ld [hl], h                                    ; $6EF1: $74
    jr nz, jr_01D_6F68                            ; $6EF2: $20 $74

    ld l, a                                       ; $6EF4: $6F
    cp $77                                        ; $6EF5: $FE $77
    ld l, c                                       ; $6EF7: $69
    ld [hl], b                                    ; $6EF8: $70
    ld h, l                                       ; $6EF9: $65

jr_01D_6EFA:
    jr nz, jr_01D_6F6B                            ; $6EFA: $20 $6F

jr_01D_6EFC:
    ld [hl], l                                    ; $6EFC: $75
    ld [hl], h                                    ; $6EFD: $74
    jr nz, jr_01D_6F61                            ; $6EFE: $20 $61

    ld l, h                                       ; $6F00: $6C
    ld l, h                                       ; $6F01: $6C
    rst $38                                       ; $6F02: $FF
    ld l, a                                       ; $6F03: $6F
    ld h, [hl]                                    ; $6F04: $66
    jr nz, jr_01D_6F48                            ; $6F05: $20 $41

    ld h, a                                       ; $6F07: $67

jr_01D_6F08:
    ld h, c                                       ; $6F08: $61
    ld h, h                                       ; $6F09: $64
    ld l, a                                       ; $6F0A: $6F
    ld l, [hl]                                    ; $6F0B: $6E
    daa                                           ; $6F0C: $27
    ld [hl], e                                    ; $6F0D: $73
    cp $74                                        ; $6F0E: $FE $74
    ld [hl], d                                    ; $6F10: $72
    ld l, c                                       ; $6F11: $69
    ld h, d                                       ; $6F12: $62
    ld h, l                                       ; $6F13: $65
    ld l, $FE                                     ; $6F14: $2E $FE
    ld d, h                                       ; $6F16: $54
    ld l, b                                       ; $6F17: $68

jr_01D_6F18:
    ld h, l                                       ; $6F18: $65
    jr nz, @+$71                                  ; $6F19: $20 $6F

    ld l, [hl]                                    ; $6F1B: $6E
    ld h, l                                       ; $6F1C: $65
    rst $38                                       ; $6F1D: $FF
    ld [hl], a                                    ; $6F1E: $77
    ld l, b                                       ; $6F1F: $68
    ld l, a                                       ; $6F20: $6F
    jr nz, jr_01D_6F9A                            ; $6F21: $20 $77

    ld h, c                                       ; $6F23: $61
    ld [hl], e                                    ; $6F24: $73
    jr nz, jr_01D_6F97                            ; $6F25: $20 $70

    ld [hl], l                                    ; $6F27: $75
    ld [hl], h                                    ; $6F28: $74
    jr nz, jr_01D_6F94                            ; $6F29: $20 $69

jr_01D_6F2B:
    ld l, [hl]                                    ; $6F2B: $6E
    cp $63                                        ; $6F2C: $FE $63

jr_01D_6F2E:
    ld l, b                                       ; $6F2E: $68
    ld h, c                                       ; $6F2F: $61
    ld [hl], d                                    ; $6F30: $72
    ld h, a                                       ; $6F31: $67
    ld h, l                                       ; $6F32: $65
    jr nz, jr_01D_6FA4                            ; $6F33: $20 $6F

    ld h, [hl]                                    ; $6F35: $66
    jr nz, jr_01D_6FAC                            ; $6F36: $20 $74

    ld l, b                                       ; $6F38: $68
    ld l, c                                       ; $6F39: $69
    ld [hl], e                                    ; $6F3A: $73
    rst $38                                       ; $6F3B: $FF
    ld h, c                                       ; $6F3C: $61
    ld [hl], d                                    ; $6F3D: $72

jr_01D_6F3E:
    ld l, l                                       ; $6F3E: $6D
    ld a, c                                       ; $6F3F: $79
    jr nz, jr_01D_6FB9                            ; $6F40: $20 $77

    ld h, c                                       ; $6F42: $61
    ld [hl], e                                    ; $6F43: $73
    jr nz, jr_01D_6F93                            ; $6F44: $20 $4D

    ld l, a                                       ; $6F46: $6F
    ld [hl], d                                    ; $6F47: $72

jr_01D_6F48:
    ld h, c                                       ; $6F48: $61

jr_01D_6F49:
    ld h, a                                       ; $6F49: $67
    ld l, $FE                                     ; $6F4A: $2E $FE
    db $FD                                        ; $6F4C: $FD
    sbc d                                         ; $6F4D: $9A
    sbc e                                         ; $6F4E: $9B
    ld hl, sp+$4A                                 ; $6F4F: $F8 $4A
    sbc a                                         ; $6F51: $9F
    ld b, c                                       ; $6F52: $41
    ld l, l                                       ; $6F53: $6D
    jr nz, jr_01D_6F9F                            ; $6F54: $20 $49

    jr nz, jr_01D_6FBA                            ; $6F56: $20 $62

    ld l, a                                       ; $6F58: $6F
    ld [hl], d                                    ; $6F59: $72

jr_01D_6F5A:
    ld l, c                                       ; $6F5A: $69
    ld l, [hl]                                    ; $6F5B: $6E
    ld h, a                                       ; $6F5C: $67
    rst $38                                       ; $6F5D: $FF
    ld a, c                                       ; $6F5E: $79
    ld l, a                                       ; $6F5F: $6F
    ld [hl], l                                    ; $6F60: $75

jr_01D_6F61:
    inc l                                         ; $6F61: $2C
    jr nz, jr_01D_6FD3                            ; $6F62: $20 $6F

    ld [hl], d                                    ; $6F64: $72
    cp $73                                        ; $6F65: $FE $73
    ld l, b                                       ; $6F67: $68

jr_01D_6F68:
    ld h, c                                       ; $6F68: $61
    ld l, h                                       ; $6F69: $6C
    ld l, h                                       ; $6F6A: $6C

jr_01D_6F6B:
    jr nz, jr_01D_6FB6                            ; $6F6B: $20 $49

    jr nz, jr_01D_6FD6                            ; $6F6D: $20 $67

    ld l, a                                       ; $6F6F: $6F
    jr nz, jr_01D_6FE1                            ; $6F70: $20 $6F

    ld l, [hl]                                    ; $6F72: $6E
    ccf                                           ; $6F73: $3F
    cp $FD                                        ; $6F74: $FE $FD
    sbc e                                         ; $6F76: $9B
    ld a, b                                       ; $6F77: $78
    ld [hl], b                                    ; $6F78: $70
    sbc a                                         ; $6F79: $9F
    jr nz, jr_01D_6FC7                            ; $6F7A: $20 $4B

    ld h, l                                       ; $6F7C: $65
    ld h, l                                       ; $6F7D: $65
    ld [hl], b                                    ; $6F7E: $70
    jr nz, jr_01D_6FE8                            ; $6F7F: $20 $67

    ld l, a                                       ; $6F81: $6F
    ld l, c                                       ; $6F82: $69
    ld l, [hl]                                    ; $6F83: $6E
    ld h, a                                       ; $6F84: $67
    ld l, $2E                                     ; $6F85: $2E $2E
    ld l, $FF                                     ; $6F87: $2E $FF
    jr nz, jr_01D_6FD6                            ; $6F89: $20 $4B

    ld l, c                                       ; $6F8B: $69
    ld l, [hl]                                    ; $6F8C: $6E
    ld h, h                                       ; $6F8D: $64
    ld h, c                                       ; $6F8E: $61
    jr nz, jr_01D_6FF3                            ; $6F8F: $20 $62

    ld l, a                                       ; $6F91: $6F
    ld [hl], d                                    ; $6F92: $72

jr_01D_6F93:
    ld l, c                                       ; $6F93: $69

jr_01D_6F94:
    ld l, [hl]                                    ; $6F94: $6E
    ld h, a                                       ; $6F95: $67
    db $FD                                        ; $6F96: $FD

jr_01D_6F97:
    sbc h                                         ; $6F97: $9C
    ld [bc], a                                    ; $6F98: $02
    dec e                                         ; $6F99: $1D

jr_01D_6F9A:
    sbc a                                         ; $6F9A: $9F
    ld l, a                                       ; $6F9B: $6F
    dec e                                         ; $6F9C: $1D
    ret c                                         ; $6F9D: $D8

    ld [hl], c                                    ; $6F9E: $71

jr_01D_6F9F:
    sbc e                                         ; $6F9F: $9B
    ld hl, sp+$4A                                 ; $6FA0: $F8 $4A
    sbc a                                         ; $6FA2: $9F
    ld d, h                                       ; $6FA3: $54

jr_01D_6FA4:
    ld l, b                                       ; $6FA4: $68
    ld h, l                                       ; $6FA5: $65
    ld [hl], d                                    ; $6FA6: $72
    ld h, l                                       ; $6FA7: $65
    jr nz, jr_01D_700B                            ; $6FA8: $20 $61

    ld [hl], d                                    ; $6FAA: $72
    ld h, l                                       ; $6FAB: $65

jr_01D_6FAC:
    jr nz, jr_01D_701B                            ; $6FAC: $20 $6D

    ld h, c                                       ; $6FAE: $61
    ld l, [hl]                                    ; $6FAF: $6E
    ld a, c                                       ; $6FB0: $79
    rst $38                                       ; $6FB1: $FF
    ld l, c                                       ; $6FB2: $69
    ld l, [hl]                                    ; $6FB3: $6E
    ld h, h                                       ; $6FB4: $64
    ld l, c                                       ; $6FB5: $69

jr_01D_6FB6:
    halt                                          ; $6FB6: $76
    ld l, c                                       ; $6FB7: $69
    ld h, h                                       ; $6FB8: $64

jr_01D_6FB9:
    ld [hl], l                                    ; $6FB9: $75

jr_01D_6FBA:
    ld h, c                                       ; $6FBA: $61
    ld l, h                                       ; $6FBB: $6C
    cp $61                                        ; $6FBC: $FE $61
    ld h, e                                       ; $6FBE: $63
    ld h, e                                       ; $6FBF: $63
    ld l, a                                       ; $6FC0: $6F
    ld [hl], l                                    ; $6FC1: $75
    ld l, [hl]                                    ; $6FC2: $6E
    ld [hl], h                                    ; $6FC3: $74
    ld [hl], e                                    ; $6FC4: $73
    jr nz, jr_01D_7036                            ; $6FC5: $20 $6F

jr_01D_6FC7:
    ld h, [hl]                                    ; $6FC7: $66
    rst $38                                       ; $6FC8: $FF
    ld [hl], h                                    ; $6FC9: $74
    ld l, b                                       ; $6FCA: $68
    ld h, l                                       ; $6FCB: $65
    jr nz, jr_01D_7030                            ; $6FCC: $20 $62

    ld h, c                                       ; $6FCE: $61
    ld [hl], h                                    ; $6FCF: $74
    ld [hl], h                                    ; $6FD0: $74
    ld l, h                                       ; $6FD1: $6C
    ld h, l                                       ; $6FD2: $65

jr_01D_6FD3:
    ld [hl], e                                    ; $6FD3: $73
    cp $74                                        ; $6FD4: $FE $74

jr_01D_6FD6:
    ld l, b                                       ; $6FD6: $68
    ld h, c                                       ; $6FD7: $61
    ld [hl], h                                    ; $6FD8: $74
    jr nz, jr_01D_704A                            ; $6FD9: $20 $6F

    ld h, e                                       ; $6FDB: $63
    ld h, e                                       ; $6FDC: $63
    ld [hl], l                                    ; $6FDD: $75
    ld [hl], d                                    ; $6FDE: $72
    ld [hl], d                                    ; $6FDF: $72
    ld h, l                                       ; $6FE0: $65

jr_01D_6FE1:
    ld h, h                                       ; $6FE1: $64
    rst $38                                       ; $6FE2: $FF
    ld l, c                                       ; $6FE3: $69
    ld l, [hl]                                    ; $6FE4: $6E
    jr nz, jr_01D_705B                            ; $6FE5: $20 $74

    ld l, b                                       ; $6FE7: $68

jr_01D_6FE8:
    ld h, c                                       ; $6FE8: $61
    ld [hl], h                                    ; $6FE9: $74
    jr nz, jr_01D_7050                            ; $6FEA: $20 $64

    ld h, c                                       ; $6FEC: $61
    ld [hl], d                                    ; $6FED: $72
    ld l, e                                       ; $6FEE: $6B
    cp $74                                        ; $6FEF: $FE $74
    ld l, c                                       ; $6FF1: $69
    ld l, l                                       ; $6FF2: $6D

jr_01D_6FF3:
    ld h, l                                       ; $6FF3: $65
    inc l                                         ; $6FF4: $2C
    jr nz, jr_01D_7059                            ; $6FF5: $20 $62

    ld [hl], l                                    ; $6FF7: $75
    ld [hl], h                                    ; $6FF8: $74
    jr nz, jr_01D_706F                            ; $6FF9: $20 $74

    ld l, a                                       ; $6FFB: $6F
    rst $38                                       ; $6FFC: $FF
    ld l, l                                       ; $6FFD: $6D
    ld h, c                                       ; $6FFE: $61
    ld l, e                                       ; $6FFF: $6B
    ld h, l                                       ; $7000: $65
    jr nz, jr_01D_7064                            ; $7001: $20 $61

    jr nz, @+$6E                                  ; $7003: $20 $6C

    ld l, a                                       ; $7005: $6F
    ld l, [hl]                                    ; $7006: $6E
    ld h, a                                       ; $7007: $67
    cp $73                                        ; $7008: $FE $73
    ld [hl], h                                    ; $700A: $74

jr_01D_700B:
    ld l, a                                       ; $700B: $6F
    ld [hl], d                                    ; $700C: $72
    ld a, c                                       ; $700D: $79
    jr nz, jr_01D_7083                            ; $700E: $20 $73

    ld l, b                                       ; $7010: $68
    ld l, a                                       ; $7011: $6F
    ld [hl], d                                    ; $7012: $72
    ld [hl], h                                    ; $7013: $74
    inc l                                         ; $7014: $2C
    cp $41                                        ; $7015: $FE $41
    ld h, a                                       ; $7017: $67
    ld h, c                                       ; $7018: $61
    ld h, h                                       ; $7019: $64
    ld l, a                                       ; $701A: $6F

jr_01D_701B:
    ld l, [hl]                                    ; $701B: $6E
    rst $38                                       ; $701C: $FF
    ld [hl], e                                    ; $701D: $73
    ld h, c                                       ; $701E: $61
    ld h, e                                       ; $701F: $63
    ld [hl], d                                    ; $7020: $72
    ld l, c                                       ; $7021: $69
    ld h, [hl]                                    ; $7022: $66
    ld l, c                                       ; $7023: $69
    ld h, e                                       ; $7024: $63
    ld h, l                                       ; $7025: $65
    ld h, h                                       ; $7026: $64
    cp $68                                        ; $7027: $FE $68
    ld l, c                                       ; $7029: $69
    ld l, l                                       ; $702A: $6D
    ld [hl], e                                    ; $702B: $73
    ld h, l                                       ; $702C: $65
    ld l, h                                       ; $702D: $6C
    ld h, [hl]                                    ; $702E: $66
    inc l                                         ; $702F: $2C

jr_01D_7030:
    cp $61                                        ; $7030: $FE $61
    ld l, h                                       ; $7032: $6C
    ld l, h                                       ; $7033: $6C
    ld l, a                                       ; $7034: $6F
    ld [hl], a                                    ; $7035: $77

jr_01D_7036:
    ld l, c                                       ; $7036: $69
    ld l, [hl]                                    ; $7037: $6E
    ld h, a                                       ; $7038: $67
    jr nz, jr_01D_70A3                            ; $7039: $20 $68

    ld l, c                                       ; $703B: $69
    ld [hl], e                                    ; $703C: $73
    rst $38                                       ; $703D: $FF
    ld [hl], b                                    ; $703E: $70
    ld h, l                                       ; $703F: $65
    ld l, a                                       ; $7040: $6F
    ld [hl], b                                    ; $7041: $70
    ld l, h                                       ; $7042: $6C
    ld h, l                                       ; $7043: $65
    jr nz, jr_01D_70BA                            ; $7044: $20 $74

    ld l, a                                       ; $7046: $6F
    cp $65                                        ; $7047: $FE $65
    ld [hl], e                                    ; $7049: $73

jr_01D_704A:
    ld h, e                                       ; $704A: $63
    ld h, c                                       ; $704B: $61
    ld [hl], b                                    ; $704C: $70
    ld h, l                                       ; $704D: $65
    jr nz, jr_01D_70C4                            ; $704E: $20 $74

jr_01D_7050:
    ld l, a                                       ; $7050: $6F
    rst $38                                       ; $7051: $FF
    ld [hl], h                                    ; $7052: $74
    ld l, b                                       ; $7053: $68
    ld h, l                                       ; $7054: $65
    jr nz, jr_01D_70BD                            ; $7055: $20 $66

    ld h, c                                       ; $7057: $61
    ld [hl], d                                    ; $7058: $72

jr_01D_7059:
    cp $72                                        ; $7059: $FE $72

jr_01D_705B:
    ld h, l                                       ; $705B: $65
    ld h, c                                       ; $705C: $61
    ld h, e                                       ; $705D: $63
    ld l, b                                       ; $705E: $68
    ld h, l                                       ; $705F: $65
    ld [hl], e                                    ; $7060: $73
    jr nz, jr_01D_70D2                            ; $7061: $20 $6F

    ld h, [hl]                                    ; $7063: $66

jr_01D_7064:
    rst $38                                       ; $7064: $FF
    ld c, l                                       ; $7065: $4D
    ld h, c                                       ; $7066: $61
    ld h, a                                       ; $7067: $67
    ld l, c                                       ; $7068: $69
    dec l                                         ; $7069: $2D
    ld c, [hl]                                    ; $706A: $4E
    ld h, c                                       ; $706B: $61
    ld [hl], h                                    ; $706C: $74
    ld l, c                                       ; $706D: $69
    ld l, a                                       ; $706E: $6F

jr_01D_706F:
    ld l, [hl]                                    ; $706F: $6E
    ld l, $FE                                     ; $7070: $2E $FE
    db $FD                                        ; $7072: $FD
    sbc d                                         ; $7073: $9A
    sbc e                                         ; $7074: $9B
    ld hl, sp+$4A                                 ; $7075: $F8 $4A
    sbc a                                         ; $7077: $9F
    ld b, [hl]                                    ; $7078: $46
    ld l, c                                       ; $7079: $69
    ld l, [hl]                                    ; $707A: $6E
    ld h, c                                       ; $707B: $61
    ld l, h                                       ; $707C: $6C
    ld l, h                                       ; $707D: $6C
    ld a, c                                       ; $707E: $79
    inc l                                         ; $707F: $2C
    cp $54                                        ; $7080: $FE $54
    ld l, b                                       ; $7082: $68

jr_01D_7083:
    ld h, l                                       ; $7083: $65
    jr nz, jr_01D_70F5                            ; $7084: $20 $6F

    ld [hl], h                                    ; $7086: $74
    ld l, b                                       ; $7087: $68
    ld h, l                                       ; $7088: $65
    ld [hl], d                                    ; $7089: $72
    rst $38                                       ; $708A: $FF
    ld b, c                                       ; $708B: $41
    ld l, [hl]                                    ; $708C: $6E
    ld h, e                                       ; $708D: $63
    ld l, c                                       ; $708E: $69
    ld h, l                                       ; $708F: $65
    ld l, [hl]                                    ; $7090: $6E
    ld [hl], h                                    ; $7091: $74
    jr nz, jr_01D_70E3                            ; $7092: $20 $4F

    ld l, [hl]                                    ; $7094: $6E
    ld h, l                                       ; $7095: $65
    ld [hl], e                                    ; $7096: $73
    cp $69                                        ; $7097: $FE $69
    ld l, [hl]                                    ; $7099: $6E
    ld [hl], h                                    ; $709A: $74
    ld h, l                                       ; $709B: $65
    ld [hl], d                                    ; $709C: $72
    halt                                          ; $709D: $76
    ld h, l                                       ; $709E: $65
    ld l, [hl]                                    ; $709F: $6E
    ld h, l                                       ; $70A0: $65
    ld h, h                                       ; $70A1: $64
    inc l                                         ; $70A2: $2C

jr_01D_70A3:
    rst $38                                       ; $70A3: $FF
    ld [hl], e                                    ; $70A4: $73
    ld [hl], h                                    ; $70A5: $74
    ld [hl], d                                    ; $70A6: $72
    ld l, c                                       ; $70A7: $69
    ld [hl], b                                    ; $70A8: $70
    ld [hl], b                                    ; $70A9: $70
    ld h, l                                       ; $70AA: $65
    ld h, h                                       ; $70AB: $64
    jr nz, jr_01D_7122                            ; $70AC: $20 $74

    ld l, b                                       ; $70AE: $68
    ld h, l                                       ; $70AF: $65
    cp $61                                        ; $70B0: $FE $61
    ld h, a                                       ; $70B2: $67
    ld h, a                                       ; $70B3: $67
    ld [hl], d                                    ; $70B4: $72
    ld h, l                                       ; $70B5: $65
    ld [hl], e                                    ; $70B6: $73
    ld [hl], e                                    ; $70B7: $73
    ld l, a                                       ; $70B8: $6F
    ld [hl], d                                    ; $70B9: $72

jr_01D_70BA:
    ld [hl], e                                    ; $70BA: $73
    jr nz, @+$71                                  ; $70BB: $20 $6F

jr_01D_70BD:
    ld h, [hl]                                    ; $70BD: $66
    rst $38                                       ; $70BE: $FF
    ld [hl], h                                    ; $70BF: $74
    ld l, b                                       ; $70C0: $68
    ld h, l                                       ; $70C1: $65
    ld l, c                                       ; $70C2: $69
    ld [hl], d                                    ; $70C3: $72

jr_01D_70C4:
    jr nz, jr_01D_7136                            ; $70C4: $20 $70

    ld l, a                                       ; $70C6: $6F
    ld [hl], a                                    ; $70C7: $77
    ld h, l                                       ; $70C8: $65
    ld [hl], d                                    ; $70C9: $72
    inc l                                         ; $70CA: $2C
    cp $61                                        ; $70CB: $FE $61
    ld l, [hl]                                    ; $70CD: $6E
    ld h, h                                       ; $70CE: $64
    jr nz, @+$64                                  ; $70CF: $20 $62

    ld h, c                                       ; $70D1: $61

jr_01D_70D2:
    ld l, [hl]                                    ; $70D2: $6E
    ld l, c                                       ; $70D3: $69
    ld [hl], e                                    ; $70D4: $73
    ld l, b                                       ; $70D5: $68
    ld h, l                                       ; $70D6: $65
    ld h, h                                       ; $70D7: $64
    rst $38                                       ; $70D8: $FF
    ld [hl], h                                    ; $70D9: $74
    ld l, b                                       ; $70DA: $68
    ld h, l                                       ; $70DB: $65
    ld l, l                                       ; $70DC: $6D
    jr nz, jr_01D_7153                            ; $70DD: $20 $74

    ld l, a                                       ; $70DF: $6F
    jr nz, @+$76                                  ; $70E0: $20 $74

    ld l, b                                       ; $70E2: $68

jr_01D_70E3:
    ld h, l                                       ; $70E3: $65
    cp $62                                        ; $70E4: $FE $62
    ld h, c                                       ; $70E6: $61
    ld [hl], d                                    ; $70E7: $72
    ld [hl], d                                    ; $70E8: $72
    ld h, l                                       ; $70E9: $65
    ld l, [hl]                                    ; $70EA: $6E
    rst $38                                       ; $70EB: $FF
    ld d, a                                       ; $70EC: $57
    ld h, c                                       ; $70ED: $61
    ld [hl], e                                    ; $70EE: $73
    ld [hl], h                                    ; $70EF: $74
    ld h, l                                       ; $70F0: $65
    ld l, h                                       ; $70F1: $6C
    ld h, c                                       ; $70F2: $61
    ld l, [hl]                                    ; $70F3: $6E
    ld h, h                                       ; $70F4: $64

jr_01D_70F5:
    ld [hl], e                                    ; $70F5: $73
    ld l, $FE                                     ; $70F6: $2E $FE
    db $FD                                        ; $70F8: $FD
    sbc d                                         ; $70F9: $9A
    sbc e                                         ; $70FA: $9B
    ld hl, sp+$4A                                 ; $70FB: $F8 $4A
    sbc a                                         ; $70FD: $9F
    ld c, l                                       ; $70FE: $4D
    ld l, a                                       ; $70FF: $6F
    ld [hl], d                                    ; $7100: $72
    ld h, c                                       ; $7101: $61
    ld h, a                                       ; $7102: $67
    jr nz, jr_01D_7172                            ; $7103: $20 $6D

    ld [hl], l                                    ; $7105: $75
    ld [hl], e                                    ; $7106: $73
    ld [hl], h                                    ; $7107: $74
    jr nz, jr_01D_7172                            ; $7108: $20 $68

    ld h, c                                       ; $710A: $61
    halt                                          ; $710B: $76
    ld h, l                                       ; $710C: $65
    rst $38                                       ; $710D: $FF
    ld h, [hl]                                    ; $710E: $66
    ld l, a                                       ; $710F: $6F
    ld [hl], l                                    ; $7110: $75
    ld l, [hl]                                    ; $7111: $6E
    ld h, h                                       ; $7112: $64
    jr nz, jr_01D_7176                            ; $7113: $20 $61

    jr nz, @+$79                                  ; $7115: $20 $77

    ld h, c                                       ; $7117: $61
    ld a, c                                       ; $7118: $79
    jr nz, jr_01D_718F                            ; $7119: $20 $74

    ld l, a                                       ; $711B: $6F
    cp $65                                        ; $711C: $FE $65
    ld [hl], e                                    ; $711E: $73
    ld h, e                                       ; $711F: $63
    ld h, c                                       ; $7120: $61
    ld [hl], b                                    ; $7121: $70

jr_01D_7122:
    ld h, l                                       ; $7122: $65
    jr nz, jr_01D_7198                            ; $7123: $20 $73

    ld l, a                                       ; $7125: $6F
    ld l, l                                       ; $7126: $6D
    ld h, l                                       ; $7127: $65
    ld l, b                                       ; $7128: $68
    ld l, a                                       ; $7129: $6F
    ld [hl], a                                    ; $712A: $77
    ld l, $FF                                     ; $712B: $2E $FF
    ld b, d                                       ; $712D: $42
    ld [hl], l                                    ; $712E: $75
    ld [hl], h                                    ; $712F: $74
    ld l, $2E                                     ; $7130: $2E $2E
    ld l, $69                                     ; $7132: $2E $69
    ld [hl], h                                    ; $7134: $74
    daa                                           ; $7135: $27

jr_01D_7136:
    ld [hl], e                                    ; $7136: $73
    cp $73                                        ; $7137: $FE $73
    ld [hl], h                                    ; $7139: $74
    ld [hl], d                                    ; $713A: $72
    ld h, c                                       ; $713B: $61
    ld l, [hl]                                    ; $713C: $6E
    ld h, a                                       ; $713D: $67
    ld h, l                                       ; $713E: $65
    ld l, $2E                                     ; $713F: $2E $2E
    ld l, $FF                                     ; $7141: $2E $FF
    ld c, b                                       ; $7143: $48
    ld l, a                                       ; $7144: $6F
    ld [hl], a                                    ; $7145: $77
    jr nz, jr_01D_71AC                            ; $7146: $20 $64

    ld l, c                                       ; $7148: $69
    ld h, h                                       ; $7149: $64
    jr nz, jr_01D_71B4                            ; $714A: $20 $68

    ld h, l                                       ; $714C: $65
    cp $72                                        ; $714D: $FE $72
    ld h, l                                       ; $714F: $65
    ld h, e                                       ; $7150: $63
    ld l, a                                       ; $7151: $6F
    halt                                          ; $7152: $76

jr_01D_7153:
    ld h, l                                       ; $7153: $65
    ld [hl], d                                    ; $7154: $72
    jr nz, jr_01D_71BF                            ; $7155: $20 $68

    ld l, c                                       ; $7157: $69
    ld [hl], e                                    ; $7158: $73
    rst $38                                       ; $7159: $FF
    ld [hl], b                                    ; $715A: $70
    ld l, a                                       ; $715B: $6F
    ld [hl], a                                    ; $715C: $77
    ld h, l                                       ; $715D: $65
    ld [hl], d                                    ; $715E: $72
    ccf                                           ; $715F: $3F
    jr nz, @+$4A                                  ; $7160: $20 $48

    ld h, l                                       ; $7162: $65
    jr nz, jr_01D_71CE                            ; $7163: $20 $69

    ld [hl], e                                    ; $7165: $73
    cp $6A                                        ; $7166: $FE $6A
    ld [hl], l                                    ; $7168: $75
    ld [hl], e                                    ; $7169: $73
    ld [hl], h                                    ; $716A: $74
    jr nz, jr_01D_71CE                            ; $716B: $20 $61

    jr nz, jr_01D_71DC                            ; $716D: $20 $6D

    ld h, c                                       ; $716F: $61
    ld l, [hl]                                    ; $7170: $6E
    inc l                                         ; $7171: $2C

jr_01D_7172:
    rst $38                                       ; $7172: $FF
    ld h, c                                       ; $7173: $61
    ld h, [hl]                                    ; $7174: $66
    ld [hl], h                                    ; $7175: $74

jr_01D_7176:
    ld h, l                                       ; $7176: $65
    ld [hl], d                                    ; $7177: $72
    jr nz, jr_01D_71DB                            ; $7178: $20 $61

    ld l, h                                       ; $717A: $6C
    ld l, h                                       ; $717B: $6C
    inc l                                         ; $717C: $2C
    jr nz, jr_01D_71E0                            ; $717D: $20 $61

    ld l, [hl]                                    ; $717F: $6E
    ld h, h                                       ; $7180: $64
    cp $61                                        ; $7181: $FE $61
    ld l, [hl]                                    ; $7183: $6E
    ld a, c                                       ; $7184: $79
    jr nz, jr_01D_71F4                            ; $7185: $20 $6D

    ld h, c                                       ; $7187: $61
    ld l, [hl]                                    ; $7188: $6E
    jr nz, jr_01D_7202                            ; $7189: $20 $77

    ld l, b                                       ; $718B: $68
    ld l, a                                       ; $718C: $6F
    jr nz, jr_01D_71F8                            ; $718D: $20 $69

jr_01D_718F:
    ld [hl], e                                    ; $718F: $73
    rst $38                                       ; $7190: $FF
    ld [hl], e                                    ; $7191: $73
    ld [hl], h                                    ; $7192: $74
    ld [hl], d                                    ; $7193: $72
    ld l, c                                       ; $7194: $69
    ld [hl], b                                    ; $7195: $70
    ld [hl], b                                    ; $7196: $70
    ld h, l                                       ; $7197: $65

jr_01D_7198:
    ld h, h                                       ; $7198: $64
    jr nz, jr_01D_720A                            ; $7199: $20 $6F

    ld h, [hl]                                    ; $719B: $66
    jr nz, jr_01D_7206                            ; $719C: $20 $68

    ld l, c                                       ; $719E: $69
    ld [hl], e                                    ; $719F: $73
    cp $70                                        ; $71A0: $FE $70
    ld l, a                                       ; $71A2: $6F
    ld [hl], a                                    ; $71A3: $77
    ld h, l                                       ; $71A4: $65
    ld [hl], d                                    ; $71A5: $72
    jr nz, jr_01D_720A                            ; $71A6: $20 $62

    ld a, c                                       ; $71A8: $79
    jr nz, jr_01D_720C                            ; $71A9: $20 $61

    ld l, [hl]                                    ; $71AB: $6E

jr_01D_71AC:
    rst $38                                       ; $71AC: $FF
    ld b, c                                       ; $71AD: $41
    ld l, [hl]                                    ; $71AE: $6E
    ld h, e                                       ; $71AF: $63
    ld l, c                                       ; $71B0: $69
    ld h, l                                       ; $71B1: $65
    ld l, [hl]                                    ; $71B2: $6E
    ld [hl], h                                    ; $71B3: $74

jr_01D_71B4:
    jr nz, jr_01D_7222                            ; $71B4: $20 $6C

    ld l, a                                       ; $71B6: $6F
    ld [hl], e                                    ; $71B7: $73
    ld h, l                                       ; $71B8: $65
    ld [hl], e                                    ; $71B9: $73
    cp $74                                        ; $71BA: $FE $74
    ld l, b                                       ; $71BC: $68
    ld h, c                                       ; $71BD: $61
    ld [hl], h                                    ; $71BE: $74

jr_01D_71BF:
    jr nz, jr_01D_7231                            ; $71BF: $20 $70

    ld l, a                                       ; $71C1: $6F
    ld [hl], a                                    ; $71C2: $77
    ld h, l                                       ; $71C3: $65
    ld [hl], d                                    ; $71C4: $72
    rst $38                                       ; $71C5: $FF
    ld [hl], b                                    ; $71C6: $70
    ld h, l                                       ; $71C7: $65
    ld [hl], d                                    ; $71C8: $72
    ld l, l                                       ; $71C9: $6D
    ld h, c                                       ; $71CA: $61
    ld l, [hl]                                    ; $71CB: $6E
    ld h, l                                       ; $71CC: $65
    ld l, [hl]                                    ; $71CD: $6E

jr_01D_71CE:
    ld [hl], h                                    ; $71CE: $74
    ld l, h                                       ; $71CF: $6C
    ld a, c                                       ; $71D0: $79
    ld l, $FE                                     ; $71D1: $2E $FE
    db $FD                                        ; $71D3: $FD
    sbc d                                         ; $71D4: $9A
    ld e, b                                       ; $71D5: $58
    ld a, [bc]                                    ; $71D6: $0A
    ld b, d                                       ; $71D7: $42
    sbc e                                         ; $71D8: $9B
    ld hl, sp+$4A                                 ; $71D9: $F8 $4A

jr_01D_71DB:
    sbc a                                         ; $71DB: $9F

jr_01D_71DC:
    ld d, [hl]                                    ; $71DC: $56
    ld h, l                                       ; $71DD: $65
    ld [hl], d                                    ; $71DE: $72
    ld a, c                                       ; $71DF: $79

jr_01D_71E0:
    jr nz, jr_01D_7259                            ; $71E0: $20 $77

    ld h, l                                       ; $71E2: $65
    ld l, h                                       ; $71E3: $6C
    ld l, h                                       ; $71E4: $6C
    ld l, $FF                                     ; $71E5: $2E $FF
    ld c, d                                       ; $71E7: $4A
    ld [hl], l                                    ; $71E8: $75
    ld [hl], e                                    ; $71E9: $73
    ld [hl], h                                    ; $71EA: $74
    jr nz, jr_01D_7258                            ; $71EB: $20 $6B

    ld l, [hl]                                    ; $71ED: $6E
    ld l, a                                       ; $71EE: $6F
    ld [hl], a                                    ; $71EF: $77
    jr nz, jr_01D_7266                            ; $71F0: $20 $74

    ld l, b                                       ; $71F2: $68
    ld h, c                                       ; $71F3: $61

jr_01D_71F4:
    ld [hl], h                                    ; $71F4: $74
    cp $4D                                        ; $71F5: $FE $4D
    ld l, a                                       ; $71F7: $6F

jr_01D_71F8:
    ld [hl], d                                    ; $71F8: $72
    ld h, c                                       ; $71F9: $61
    ld h, a                                       ; $71FA: $67
    jr nz, jr_01D_7266                            ; $71FB: $20 $69

    ld [hl], e                                    ; $71FD: $73
    rst $38                                       ; $71FE: $FF
    ld h, h                                       ; $71FF: $64
    ld h, c                                       ; $7200: $61
    ld l, [hl]                                    ; $7201: $6E

jr_01D_7202:
    ld h, a                                       ; $7202: $67
    ld h, l                                       ; $7203: $65
    ld [hl], d                                    ; $7204: $72
    ld l, a                                       ; $7205: $6F

jr_01D_7206:
    ld [hl], l                                    ; $7206: $75
    ld [hl], e                                    ; $7207: $73
    ld l, $FE                                     ; $7208: $2E $FE

jr_01D_720A:
    db $FD                                        ; $720A: $FD
    sbc d                                         ; $720B: $9A

jr_01D_720C:
    ld e, b                                       ; $720C: $58
    ld a, [bc]                                    ; $720D: $0A
    ld b, d                                       ; $720E: $42
    sbc e                                         ; $720F: $9B
    ld a, b                                       ; $7210: $78
    ld [hl], b                                    ; $7211: $70
    sbc a                                         ; $7212: $9F
    ld b, c                                       ; $7213: $41
    ld l, [hl]                                    ; $7214: $6E
    ld a, c                                       ; $7215: $79
    ld [hl], a                                    ; $7216: $77
    ld h, c                                       ; $7217: $61
    ld a, c                                       ; $7218: $79
    inc l                                         ; $7219: $2C
    jr nz, jr_01D_7284                            ; $721A: $20 $68

    ld h, l                                       ; $721C: $65
    jr nz, jr_01D_7287                            ; $721D: $20 $68

    ld h, c                                       ; $721F: $61
    ld [hl], e                                    ; $7220: $73
    rst $38                                       ; $7221: $FF

jr_01D_7222:
    ld [hl], h                                    ; $7222: $74
    ld l, b                                       ; $7223: $68
    ld h, l                                       ; $7224: $65
    jr nz, jr_01D_7299                            ; $7225: $20 $72

    ld h, l                                       ; $7227: $65
    ld l, l                                       ; $7228: $6D
    ld h, c                                       ; $7229: $61
    ld l, c                                       ; $722A: $69
    ld l, [hl]                                    ; $722B: $6E
    ld l, c                                       ; $722C: $69
    ld l, [hl]                                    ; $722D: $6E
    ld h, a                                       ; $722E: $67
    cp $74                                        ; $722F: $FE $74

jr_01D_7231:
    ld [hl], a                                    ; $7231: $77
    ld l, a                                       ; $7232: $6F
    jr nz, jr_01D_7278                            ; $7233: $20 $43

    ld l, a                                       ; $7235: $6F
    ld [hl], d                                    ; $7236: $72
    ld h, l                                       ; $7237: $65
    rst $38                                       ; $7238: $FF
    ld d, e                                       ; $7239: $53
    ld [hl], h                                    ; $723A: $74
    ld l, a                                       ; $723B: $6F
    ld l, [hl]                                    ; $723C: $6E
    ld h, l                                       ; $723D: $65
    ld [hl], e                                    ; $723E: $73
    inc l                                         ; $723F: $2C
    jr nz, jr_01D_72B5                            ; $7240: $20 $73

    ld l, a                                       ; $7242: $6F
    jr nz, jr_01D_728E                            ; $7243: $20 $49

    cp $68                                        ; $7245: $FE $68
    ld h, c                                       ; $7247: $61
    halt                                          ; $7248: $76
    ld h, l                                       ; $7249: $65

jr_01D_724A:
    jr nz, jr_01D_72C0                            ; $724A: $20 $74

    ld l, a                                       ; $724C: $6F
    jr nz, jr_01D_72B5                            ; $724D: $20 $66

    ld l, c                                       ; $724F: $69
    ld l, [hl]                                    ; $7250: $6E
    ld h, h                                       ; $7251: $64
    rst $38                                       ; $7252: $FF
    ld l, b                                       ; $7253: $68
    ld l, c                                       ; $7254: $69
    ld l, l                                       ; $7255: $6D
    ld l, $FE                                     ; $7256: $2E $FE

jr_01D_7258:
    db $FD                                        ; $7258: $FD

jr_01D_7259:
    sbc d                                         ; $7259: $9A
    ld e, b                                       ; $725A: $58
    dec bc                                        ; $725B: $0B
    ld b, d                                       ; $725C: $42
    dec b                                         ; $725D: $05
    nop                                           ; $725E: $00
    ld l, e                                       ; $725F: $6B
    ld c, d                                       ; $7260: $4A
    rlca                                          ; $7261: $07
    ld a, [bc]                                    ; $7262: $0A
    sbc l                                         ; $7263: $9D
    ret nc                                        ; $7264: $D0

    nop                                           ; $7265: $00

jr_01D_7266:
    dec e                                         ; $7266: $1D
    or h                                          ; $7267: $B4
    ld [hl], d                                    ; $7268: $72
    ld [hl+], a                                   ; $7269: $22
    inc b                                         ; $726A: $04
    ld b, b                                       ; $726B: $40
    add hl, bc                                    ; $726C: $09
    ld [bc], a                                    ; $726D: $02
    dec e                                         ; $726E: $1D
    ldh a, [$72]                                  ; $726F: $F0 $72
    add hl, bc                                    ; $7271: $09
    inc bc                                        ; $7272: $03
    dec e                                         ; $7273: $1D
    rst $38                                       ; $7274: $FF
    ld [hl], d                                    ; $7275: $72
    dec b                                         ; $7276: $05
    inc b                                         ; $7277: $04

jr_01D_7278:
    ld l, e                                       ; $7278: $6B
    ld c, d                                       ; $7279: $4A
    rlca                                          ; $727A: $07
    dec bc                                        ; $727B: $0B
    xor h                                         ; $727C: $AC
    ret nc                                        ; $727D: $D0

    ld c, h                                       ; $727E: $4C
    dec e                                         ; $727F: $1D
    dec e                                         ; $7280: $1D
    ld [hl], e                                    ; $7281: $73
    ld [hl+], a                                   ; $7282: $22
    inc b                                         ; $7283: $04

jr_01D_7284:
    ld b, b                                       ; $7284: $40
    dec b                                         ; $7285: $05
    dec b                                         ; $7286: $05

jr_01D_7287:
    ld l, e                                       ; $7287: $6B
    ld c, d                                       ; $7288: $4A
    rlca                                          ; $7289: $07
    dec bc                                        ; $728A: $0B
    xor h                                         ; $728B: $AC
    ret nc                                        ; $728C: $D0

    ld [hl], l                                    ; $728D: $75

jr_01D_728E:
    dec e                                         ; $728E: $1D
    or d                                          ; $728F: $B2
    ld [hl], e                                    ; $7290: $73
    ld [hl+], a                                   ; $7291: $22
    inc b                                         ; $7292: $04
    ld b, b                                       ; $7293: $40
    dec b                                         ; $7294: $05
    ld b, $6B                                     ; $7295: $06 $6B
    ld c, d                                       ; $7297: $4A
    rlca                                          ; $7298: $07

jr_01D_7299:
    dec bc                                        ; $7299: $0B
    xor h                                         ; $729A: $AC
    ret nc                                        ; $729B: $D0

    sbc a                                         ; $729C: $9F
    dec e                                         ; $729D: $1D
    add c                                         ; $729E: $81
    ld [hl], e                                    ; $729F: $73
    ld [hl+], a                                   ; $72A0: $22
    inc b                                         ; $72A1: $04
    ld b, b                                       ; $72A2: $40
    dec bc                                        ; $72A3: $0B
    inc b                                         ; $72A4: $04
    ld h, b                                       ; $72A5: $60
    dec b                                         ; $72A6: $05
    ld l, [hl]                                    ; $72A7: $6E
    rrca                                          ; $72A8: $0F
    rst $38                                       ; $72A9: $FF
    ld a, a                                       ; $72AA: $7F
    halt                                          ; $72AB: $76
    and b                                         ; $72AC: $A0
    rrca                                          ; $72AD: $0F
    ld b, b                                       ; $72AE: $40
    ld b, b                                       ; $72AF: $40
    ld b, l                                       ; $72B0: $45
    jr z, @+$0C                                   ; $72B1: $28 $0A

    ld l, d                                       ; $72B3: $6A
    dec d                                         ; $72B4: $15

jr_01D_72B5:
    jr nz, jr_01D_72C4                            ; $72B5: $20 $0D

    ld d, b                                       ; $72B7: $50
    db $10                                        ; $72B8: $10
    jr nz, jr_01D_724A                            ; $72B9: $20 $8F

    ld d, h                                       ; $72BB: $54
    jr nz, jr_01D_72BE                            ; $72BC: $20 $00

jr_01D_72BE:
    ld h, b                                       ; $72BE: $60
    ld [bc], a                                    ; $72BF: $02

jr_01D_72C0:
    dec d                                         ; $72C0: $15
    jr nz, jr_01D_7278                            ; $72C1: $20 $B5

    ld d, b                                       ; $72C3: $50

jr_01D_72C4:
    jr z, jr_01D_72E6                             ; $72C4: $28 $20

    db $FD                                        ; $72C6: $FD
    ld c, a                                       ; $72C7: $4F
    ld [$B520], sp                                ; $72C8: $08 $20 $B5
    ld d, b                                       ; $72CB: $50
    ld [$6000], sp                                ; $72CC: $08 $00 $60
    inc bc                                        ; $72CF: $03

jr_01D_72D0:
    dec d                                         ; $72D0: $15
    jr nz, jr_01D_72D0                            ; $72D1: $20 $FD

    ld c, a                                       ; $72D3: $4F
    ld [$D320], sp                                ; $72D4: $08 $20 $D3
    ld d, b                                       ; $72D7: $50
    ld [$B520], sp                                ; $72D8: $08 $20 $B5
    ld d, b                                       ; $72DB: $50
    ld [$DD20], sp                                ; $72DC: $08 $20 $DD
    ld d, b                                       ; $72DF: $50
    ld [$8520], sp                                ; $72E0: $08 $20 $85
    ld d, h                                       ; $72E3: $54
    nop                                           ; $72E4: $00
    nop                                           ; $72E5: $00

jr_01D_72E6:
    ld h, d                                       ; $72E6: $62
    ld de, $005C                                  ; $72E7: $11 $5C $00
    ld [bc], a                                    ; $72EA: $02
    inc d                                         ; $72EB: $14
    jr nz, jr_01D_730B                            ; $72EC: $20 $1D

    ld d, b                                       ; $72EE: $50
    ld b, d                                       ; $72EF: $42
    inc d                                         ; $72F0: $14
    ld c, $D9                                     ; $72F1: $0E $D9
    ld h, b                                       ; $72F3: $60
    ld h, b                                       ; $72F4: $60
    inc b                                         ; $72F5: $04
    inc d                                         ; $72F6: $14
    ld c, $0B                                     ; $72F7: $0E $0B
    ld h, c                                       ; $72F9: $61
    ld e, e                                       ; $72FA: $5B
    dec e                                         ; $72FB: $1D
    ld hl, $4274                                  ; $72FC: $21 $74 $42
    inc d                                         ; $72FF: $14
    ld c, $0E                                     ; $7300: $0E $0E
    ld d, h                                       ; $7302: $54
    ld h, d                                       ; $7303: $62
    dec c                                         ; $7304: $0D
    inc d                                         ; $7305: $14
    ld c, $FA                                     ; $7306: $0E $FA
    ld d, e                                       ; $7308: $53
    ld h, b                                       ; $7309: $60
    inc b                                         ; $730A: $04

jr_01D_730B:
    dec d                                         ; $730B: $15
    ld c, $C0                                     ; $730C: $0E $C0
    ld d, e                                       ; $730E: $53
    ld a, [bc]                                    ; $730F: $0A
    ld c, $40                                     ; $7310: $0E $40
    ld d, h                                       ; $7312: $54
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    ld e, h                                       ; $7315: $5C
    nop                                           ; $7316: $00
    ld [bc], a                                    ; $7317: $02
    inc d                                         ; $7318: $14
    ld c, $FA                                     ; $7319: $0E $FA
    ld d, e                                       ; $731B: $53
    ld b, d                                       ; $731C: $42
    ld l, a                                       ; $731D: $6F
    rrca                                          ; $731E: $0F
    rra                                           ; $731F: $1F
    nop                                           ; $7320: $00
    halt                                          ; $7321: $76
    jr nz, jr_01D_7333                            ; $7322: $20 $0F

    rra                                           ; $7324: $1F
    jr jr_01D_7382                                ; $7325: $18 $5B

    dec e                                         ; $7327: $1D
    db $E3                                        ; $7328: $E3
    ld [hl], e                                    ; $7329: $73
    ld h, d                                       ; $732A: $62
    dec c                                         ; $732B: $0D
    add e                                         ; $732C: $83
    jr nz, jr_01D_732F                            ; $732D: $20 $00

jr_01D_732F:
    ld bc, $1400                                  ; $732F: $01 $00 $14
    rrca                                          ; $7332: $0F

jr_01D_7333:
    sub a                                         ; $7333: $97
    ld c, b                                       ; $7334: $48
    ld d, [hl]                                    ; $7335: $56
    ld [bc], a                                    ; $7336: $02
    ld b, b                                       ; $7337: $40
    jr nc, jr_01D_734F                            ; $7338: $30 $15

    rrca                                          ; $733A: $0F
    rst $20                                       ; $733B: $E7
    ld c, b                                       ; $733C: $48
    jr nz, jr_01D_734E                            ; $733D: $20 $0F

    sub a                                         ; $733F: $97
    ld c, b                                       ; $7340: $48
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    dec bc                                        ; $7343: $0B
    ld b, $60                                     ; $7344: $06 $60
    inc bc                                        ; $7346: $03
    ld l, a                                       ; $7347: $6F
    rrca                                          ; $7348: $0F
    rra                                           ; $7349: $1F
    nop                                           ; $734A: $00
    halt                                          ; $734B: $76
    jr nz, jr_01D_735D                            ; $734C: $20 $0F

jr_01D_734E:
    ld d, [hl]                                    ; $734E: $56

jr_01D_734F:
    inc b                                         ; $734F: $04
    ld h, d                                       ; $7350: $62
    rrca                                          ; $7351: $0F
    dec d                                         ; $7352: $15
    rrca                                          ; $7353: $0F
    rst $20                                       ; $7354: $E7
    ld c, b                                       ; $7355: $48
    db $10                                        ; $7356: $10
    rrca                                          ; $7357: $0F
    sub a                                         ; $7358: $97
    ld c, b                                       ; $7359: $48
    jr nz, jr_01D_736B                            ; $735A: $20 $0F

    rst $00                                       ; $735C: $C7

jr_01D_735D:
    ld c, b                                       ; $735D: $48
    jr nz, jr_01D_7360                            ; $735E: $20 $00

jr_01D_7360:
    ld e, e                                       ; $7360: $5B
    dec e                                         ; $7361: $1D
    sbc l                                         ; $7362: $9D
    ld [hl], h                                    ; $7363: $74
    dec d                                         ; $7364: $15
    rrca                                          ; $7365: $0F
    rst $00                                       ; $7366: $C7
    ld c, b                                       ; $7367: $48
    jr nz, @+$11                                  ; $7368: $20 $0F

    sub a                                         ; $736A: $97

jr_01D_736B:
    ld c, b                                       ; $736B: $48
    ld [$D70F], sp                                ; $736C: $08 $0F $D7
    ld c, b                                       ; $736F: $48
    ld b, b                                       ; $7370: $40
    rrca                                          ; $7371: $0F
    sub a                                         ; $7372: $97
    ld c, b                                       ; $7373: $48
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    ld h, d                                       ; $7376: $62
    ld de, $0556                                  ; $7377: $11 $56 $05
    dec d                                         ; $737A: $15
    rrca                                          ; $737B: $0F
    rst $30                                       ; $737C: $F7
    ld c, b                                       ; $737D: $48
    jr nc, jr_01D_7380                            ; $737E: $30 $00

jr_01D_7380:
    ld b, d                                       ; $7380: $42
    dec d                                         ; $7381: $15

jr_01D_7382:
    ld c, $42                                     ; $7382: $0E $42
    ld a, [hl]                                    ; $7384: $7E
    ld [$0B00], sp                                ; $7385: $08 $00 $0B
    dec b                                         ; $7388: $05
    dec d                                         ; $7389: $15
    ld c, $62                                     ; $738A: $0E $62
    ld a, [hl]                                    ; $738C: $7E
    ld [$420E], sp                                ; $738D: $08 $0E $42
    ld a, [hl]                                    ; $7390: $7E
    jr nz, jr_01D_73A1                            ; $7391: $20 $0E

    add d                                         ; $7393: $82
    ld a, [hl]                                    ; $7394: $7E
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    ld h, d                                       ; $7397: $62
    db $10                                        ; $7398: $10
    ld e, e                                       ; $7399: $5B
    dec e                                         ; $739A: $1D
    rst $28                                       ; $739B: $EF
    ld [hl], h                                    ; $739C: $74
    inc d                                         ; $739D: $14
    ld c, $B4                                     ; $739E: $0E $B4
    ld a, [hl]                                    ; $73A0: $7E

jr_01D_73A1:
    ld h, b                                       ; $73A1: $60
    dec b                                         ; $73A2: $05
    dec d                                         ; $73A3: $15
    ld c, $12                                     ; $73A4: $0E $12
    ld a, [hl]                                    ; $73A6: $7E
    ld b, b                                       ; $73A7: $40
    ld c, $32                                     ; $73A8: $0E $32
    ld a, [hl]                                    ; $73AA: $7E
    db $10                                        ; $73AB: $10
    ld c, $12                                     ; $73AC: $0E $12
    ld a, [hl]                                    ; $73AE: $7E
    nop                                           ; $73AF: $00
    nop                                           ; $73B0: $00
    ld b, d                                       ; $73B1: $42
    dec d                                         ; $73B2: $15
    ld c, $03                                     ; $73B3: $0E $03
    ld [hl], d                                    ; $73B5: $72
    ld [$330E], sp                                ; $73B6: $08 $0E $33
    ld [hl], d                                    ; $73B9: $72
    db $10                                        ; $73BA: $10
    ld c, $03                                     ; $73BB: $0E $03
    ld [hl], d                                    ; $73BD: $72
    jr z, jr_01D_73CE                             ; $73BE: $28 $0E

    ld b, e                                       ; $73C0: $43
    ld [hl], d                                    ; $73C1: $72
    nop                                           ; $73C2: $00
    nop                                           ; $73C3: $00
    ld d, [hl]                                    ; $73C4: $56
    inc bc                                        ; $73C5: $03
    ld h, d                                       ; $73C6: $62
    ld c, $5B                                     ; $73C7: $0E $5B
    dec e                                         ; $73C9: $1D
    ld b, c                                       ; $73CA: $41
    ld [hl], h                                    ; $73CB: $74
    ld h, d                                       ; $73CC: $62
    db $10                                        ; $73CD: $10

jr_01D_73CE:
    inc d                                         ; $73CE: $14
    ld c, $6B                                     ; $73CF: $0E $6B
    ld [hl], d                                    ; $73D1: $72
    ld h, b                                       ; $73D2: $60
    dec b                                         ; $73D3: $05
    dec d                                         ; $73D4: $15
    ld c, $D3                                     ; $73D5: $0E $D3
    ld [hl], c                                    ; $73D7: $71
    ld d, b                                       ; $73D8: $50
    ld c, $E3                                     ; $73D9: $0E $E3
    ld [hl], c                                    ; $73DB: $71
    jr nz, jr_01D_73EC                            ; $73DC: $20 $0E

    db $D3                                        ; $73DE: $D3
    ld [hl], c                                    ; $73DF: $71
    nop                                           ; $73E0: $00
    nop                                           ; $73E1: $00
    ld b, d                                       ; $73E2: $42
    sbc e                                         ; $73E3: $9B
    cp b                                          ; $73E4: $B8
    ld e, l                                       ; $73E5: $5D
    sbc a                                         ; $73E6: $9F
    ld e, c                                       ; $73E7: $59
    ld l, a                                       ; $73E8: $6F
    ld [hl], l                                    ; $73E9: $75
    daa                                           ; $73EA: $27
    halt                                          ; $73EB: $76

jr_01D_73EC:
    ld h, l                                       ; $73EC: $65
    jr nz, jr_01D_7455                            ; $73ED: $20 $66

    ld l, a                                       ; $73EF: $6F
    ld [hl], l                                    ; $73F0: $75
    ld l, [hl]                                    ; $73F1: $6E
    ld h, h                                       ; $73F2: $64
    rst $38                                       ; $73F3: $FF
    ld l, b                                       ; $73F4: $68
    ld l, c                                       ; $73F5: $69
    ld l, l                                       ; $73F6: $6D
    ld l, $20                                     ; $73F7: $2E $20
    ld c, [hl]                                    ; $73F9: $4E
    ld l, a                                       ; $73FA: $6F
    ld [hl], a                                    ; $73FB: $77
    jr nz, jr_01D_7475                            ; $73FC: $20 $77

    ld l, b                                       ; $73FE: $68
    ld h, c                                       ; $73FF: $61
    ld [hl], h                                    ; $7400: $74
    cp $77                                        ; $7401: $FE $77
    ld l, c                                       ; $7403: $69
    ld l, h                                       ; $7404: $6C
    ld l, h                                       ; $7405: $6C
    jr nz, jr_01D_7481                            ; $7406: $20 $79

    ld l, a                                       ; $7408: $6F
    ld [hl], l                                    ; $7409: $75
    jr nz, @+$66                                  ; $740A: $20 $64

    ld l, a                                       ; $740C: $6F
    ccf                                           ; $740D: $3F
    rst $38                                       ; $740E: $FF
    ld c, b                                       ; $740F: $48
    ld h, c                                       ; $7410: $61
    jr nz, jr_01D_747B                            ; $7411: $20 $68

    ld h, c                                       ; $7413: $61
    jr nz, @+$6A                                  ; $7414: $20 $68

    ld h, c                                       ; $7416: $61
    jr nz, jr_01D_7481                            ; $7417: $20 $68

    ld h, c                                       ; $7419: $61
    ld hl, $FDFE                                  ; $741A: $21 $FE $FD
    sbc d                                         ; $741D: $9A
    ld e, b                                       ; $741E: $58
    dec c                                         ; $741F: $0D
    ld b, d                                       ; $7420: $42
    sbc e                                         ; $7421: $9B
    ld c, b                                       ; $7422: $48
    ld b, [hl]                                    ; $7423: $46
    sbc a                                         ; $7424: $9F
    ld d, h                                       ; $7425: $54
    ld c, a                                       ; $7426: $4F
    ld c, [hl]                                    ; $7427: $4E
    ld e, c                                       ; $7428: $59
    ld hl, $2121                                  ; $7429: $21 $21 $21
    ld hl, $FDFE                                  ; $742C: $21 $FE $FD
    sbc e                                         ; $742F: $9B
    ld hl, sp+$4A                                 ; $7430: $F8 $4A
    sbc a                                         ; $7432: $9F
    ld c, e                                       ; $7433: $4B
    ld e, c                                       ; $7434: $59
    ld d, d                                       ; $7435: $52
    ld c, a                                       ; $7436: $4F
    ld d, e                                       ; $7437: $53
    ld hl, $2121                                  ; $7438: $21 $21 $21
    cp $FD                                        ; $743B: $FE $FD
    sbc d                                         ; $743D: $9A
    ld e, b                                       ; $743E: $58
    ld c, $42                                     ; $743F: $0E $42
    sbc e                                         ; $7441: $9B
    xor c                                         ; $7442: $A9
    ld c, a                                       ; $7443: $4F
    sbc a                                         ; $7444: $9F
    ld d, a                                       ; $7445: $57
    ld l, b                                       ; $7446: $68
    ld h, l                                       ; $7447: $65
    ld [hl], d                                    ; $7448: $72
    ld h, l                                       ; $7449: $65
    jr nz, jr_01D_74B0                            ; $744A: $20 $64

    ld l, a                                       ; $744C: $6F
    jr nz, jr_01D_74C8                            ; $744D: $20 $79

    ld h, c                                       ; $744F: $61
    cp $74                                        ; $7450: $FE $74
    ld l, b                                       ; $7452: $68
    ld l, c                                       ; $7453: $69
    ld l, [hl]                                    ; $7454: $6E

jr_01D_7455:
    ld l, e                                       ; $7455: $6B
    jr nz, jr_01D_74B1                            ; $7456: $20 $59

    ld c, a                                       ; $7458: $4F
    ld d, l                                       ; $7459: $55
    daa                                           ; $745A: $27
    ld d, d                                       ; $745B: $52
    ld b, l                                       ; $745C: $45
    rst $38                                       ; $745D: $FF
    ld h, a                                       ; $745E: $67
    ld l, a                                       ; $745F: $6F
    ld l, c                                       ; $7460: $69
    ld l, [hl]                                    ; $7461: $6E
    daa                                           ; $7462: $27
    ccf                                           ; $7463: $3F
    cp $FD                                        ; $7464: $FE $FD
    sbc e                                         ; $7466: $9B
    add sp, $55                                   ; $7467: $E8 $55
    sbc a                                         ; $7469: $9F
    ld c, b                                       ; $746A: $48
    ld h, c                                       ; $746B: $61
    jr nz, jr_01D_74D6                            ; $746C: $20 $68

    ld h, c                                       ; $746E: $61
    jr nz, jr_01D_74D9                            ; $746F: $20 $68

    ld h, c                                       ; $7471: $61
    jr nz, @+$6A                                  ; $7472: $20 $68

    ld h, c                                       ; $7474: $61

jr_01D_7475:
    ld l, $2E                                     ; $7475: $2E $2E
    ld l, $FE                                     ; $7477: $2E $FE
    ld c, d                                       ; $7479: $4A
    ld [hl], l                                    ; $747A: $75

jr_01D_747B:
    ld [hl], e                                    ; $747B: $73
    ld [hl], h                                    ; $747C: $74
    jr nz, jr_01D_74F2                            ; $747D: $20 $73

    ld [hl], h                                    ; $747F: $74
    ld h, c                                       ; $7480: $61

jr_01D_7481:
    ld a, c                                       ; $7481: $79
    jr nz, jr_01D_74F6                            ; $7482: $20 $72

    ld l, c                                       ; $7484: $69
    ld h, a                                       ; $7485: $67
    ld l, b                                       ; $7486: $68
    ld [hl], h                                    ; $7487: $74
    rst $38                                       ; $7488: $FF
    ld [hl], h                                    ; $7489: $74
    ld l, b                                       ; $748A: $68
    ld h, l                                       ; $748B: $65
    ld [hl], d                                    ; $748C: $72
    ld h, l                                       ; $748D: $65
    inc l                                         ; $748E: $2C
    jr nz, jr_01D_74F8                            ; $748F: $20 $67

    ld [hl], d                                    ; $7491: $72
    ld h, c                                       ; $7492: $61
    ld l, [hl]                                    ; $7493: $6E
    ld l, [hl]                                    ; $7494: $6E
    ld a, c                                       ; $7495: $79
    ld hl, $FDFE                                  ; $7496: $21 $FE $FD
    sbc d                                         ; $7499: $9A
    ld e, b                                       ; $749A: $58
    rrca                                          ; $749B: $0F
    ld b, d                                       ; $749C: $42
    sbc e                                         ; $749D: $9B
    cp b                                          ; $749E: $B8
    ld e, l                                       ; $749F: $5D
    sbc a                                         ; $74A0: $9F
    ld c, d                                       ; $74A1: $4A
    ld [hl], l                                    ; $74A2: $75
    ld [hl], e                                    ; $74A3: $73
    ld [hl], h                                    ; $74A4: $74
    jr nz, jr_01D_7509                            ; $74A5: $20 $62

    ld h, l                                       ; $74A7: $65
    jr nz, jr_01D_7511                            ; $74A8: $20 $67

    ld l, h                                       ; $74AA: $6C
    ld h, c                                       ; $74AB: $61
    ld h, h                                       ; $74AC: $64
    rst $38                                       ; $74AD: $FF
    ld [hl], h                                    ; $74AE: $74
    ld l, b                                       ; $74AF: $68

jr_01D_74B0:
    ld h, c                                       ; $74B0: $61

jr_01D_74B1:
    ld [hl], h                                    ; $74B1: $74
    jr nz, jr_01D_752D                            ; $74B2: $20 $79

    ld l, a                                       ; $74B4: $6F
    ld [hl], l                                    ; $74B5: $75
    jr nz, jr_01D_751A                            ; $74B6: $20 $62

    ld l, a                                       ; $74B8: $6F
    ld [hl], h                                    ; $74B9: $74
    ld l, b                                       ; $74BA: $68
    cp $67                                        ; $74BB: $FE $67
    ld h, l                                       ; $74BD: $65
    ld [hl], h                                    ; $74BE: $74
    jr nz, @+$76                                  ; $74BF: $20 $74

    ld l, a                                       ; $74C1: $6F
    jr nz, jr_01D_7530                            ; $74C2: $20 $6C

    ld l, c                                       ; $74C4: $69
    halt                                          ; $74C5: $76
    ld h, l                                       ; $74C6: $65
    inc l                                         ; $74C7: $2C

jr_01D_74C8:
    rst $38                                       ; $74C8: $FF
    ld h, [hl]                                    ; $74C9: $66
    ld l, a                                       ; $74CA: $6F
    ld [hl], d                                    ; $74CB: $72
    jr nz, @+$70                                  ; $74CC: $20 $6E

    ld l, a                                       ; $74CE: $6F
    ld [hl], a                                    ; $74CF: $77
    ld l, $FE                                     ; $74D0: $2E $FE
    ld c, e                                       ; $74D2: $4B
    ld l, a                                       ; $74D3: $6F
    ld [hl], d                                    ; $74D4: $72
    ld h, a                                       ; $74D5: $67

jr_01D_74D6:
    inc l                                         ; $74D6: $2C
    jr nz, jr_01D_7533                            ; $74D7: $20 $5A

jr_01D_74D9:
    ld h, l                                       ; $74D9: $65
    ld [hl], h                                    ; $74DA: $74
    ld l, $2E                                     ; $74DB: $2E $2E
    ld l, $FF                                     ; $74DD: $2E $FF
    ld [hl], a                                    ; $74DF: $77
    ld h, l                                       ; $74E0: $65
    daa                                           ; $74E1: $27
    ld [hl], d                                    ; $74E2: $72
    ld h, l                                       ; $74E3: $65
    jr nz, jr_01D_7555                            ; $74E4: $20 $6F

    ld h, [hl]                                    ; $74E6: $66
    ld h, [hl]                                    ; $74E7: $66
    ld l, $FE                                     ; $74E8: $2E $FE
    db $FD                                        ; $74EA: $FD
    sbc d                                         ; $74EB: $9A
    ld e, b                                       ; $74EC: $58
    db $10                                        ; $74ED: $10
    ld b, d                                       ; $74EE: $42
    sbc e                                         ; $74EF: $9B
    add sp, $55                                   ; $74F0: $E8 $55

jr_01D_74F2:
    sbc a                                         ; $74F2: $9F
    ld c, a                                       ; $74F3: $4F
    ld l, e                                       ; $74F4: $6B
    ld h, c                                       ; $74F5: $61

jr_01D_74F6:
    ld a, c                                       ; $74F6: $79
    inc l                                         ; $74F7: $2C

jr_01D_74F8:
    jr nz, jr_01D_755C                            ; $74F8: $20 $62

    ld l, a                                       ; $74FA: $6F
    ld [hl], e                                    ; $74FB: $73
    ld [hl], e                                    ; $74FC: $73
    ld l, $FE                                     ; $74FD: $2E $FE
    db $FD                                        ; $74FF: $FD
    sbc e                                         ; $7500: $9B
    xor c                                         ; $7501: $A9
    ld c, a                                       ; $7502: $4F
    sbc a                                         ; $7503: $9F
    ld d, d                                       ; $7504: $52
    ld l, a                                       ; $7505: $6F
    ld h, a                                       ; $7506: $67
    ld h, l                                       ; $7507: $65
    ld [hl], d                                    ; $7508: $72

jr_01D_7509:
    inc l                                         ; $7509: $2C
    jr nz, jr_01D_756E                            ; $750A: $20 $62

    ld l, a                                       ; $750C: $6F
    ld [hl], e                                    ; $750D: $73
    ld [hl], e                                    ; $750E: $73
    ld l, $FE                                     ; $750F: $2E $FE

jr_01D_7511:
    db $FD                                        ; $7511: $FD
    sbc d                                         ; $7512: $9A
    ld e, b                                       ; $7513: $58
    ld de, $0242                                  ; $7514: $11 $42 $02
    ld b, $16                                     ; $7517: $06 $16
    dec bc                                        ; $7519: $0B

jr_01D_751A:
    dec d                                         ; $751A: $15
    ld b, l                                       ; $751B: $45
    dec e                                         ; $751C: $1D
    sub [hl]                                      ; $751D: $96
    ld c, b                                       ; $751E: $48
    and h                                         ; $751F: $A4
    daa                                           ; $7520: $27
    and e                                         ; $7521: $A3
    ld [bc], a                                    ; $7522: $02
    ld [bc], a                                    ; $7523: $02
    inc h                                         ; $7524: $24
    ld [hl-], a                                   ; $7525: $32
    ret nc                                        ; $7526: $D0

    sbc e                                         ; $7527: $9B
    ld a, b                                       ; $7528: $78
    ld [hl], b                                    ; $7529: $70
    sbc a                                         ; $752A: $9F
    ld b, c                                       ; $752B: $41
    ld l, h                                       ; $752C: $6C

jr_01D_752D:
    ld l, h                                       ; $752D: $6C
    jr nz, jr_01D_759B                            ; $752E: $20 $6B

jr_01D_7530:
    ld l, c                                       ; $7530: $69
    ld l, [hl]                                    ; $7531: $6E
    ld h, h                                       ; $7532: $64

jr_01D_7533:
    ld [hl], e                                    ; $7533: $73
    jr nz, jr_01D_75A5                            ; $7534: $20 $6F

    ld h, [hl]                                    ; $7536: $66
    rst $38                                       ; $7537: $FF
    ld l, a                                       ; $7538: $6F
    ld l, h                                       ; $7539: $6C
    ld h, h                                       ; $753A: $64
    jr nz, jr_01D_759F                            ; $753B: $20 $62

    ld l, a                                       ; $753D: $6F
    ld l, a                                       ; $753E: $6F
    ld l, e                                       ; $753F: $6B
    ld [hl], e                                    ; $7540: $73
    jr nz, jr_01D_75A4                            ; $7541: $20 $61

    ld l, [hl]                                    ; $7543: $6E
    ld h, h                                       ; $7544: $64
    cp $72                                        ; $7545: $FE $72
    ld [hl], l                                    ; $7547: $75
    ld [hl], e                                    ; $7548: $73
    ld [hl], h                                    ; $7549: $74
    ld a, c                                       ; $754A: $79
    jr nz, @+$69                                  ; $754B: $20 $67

    ld h, c                                       ; $754D: $61
    ld h, h                                       ; $754E: $64
    ld h, a                                       ; $754F: $67
    ld h, l                                       ; $7550: $65
    ld [hl], h                                    ; $7551: $74
    ld [hl], e                                    ; $7552: $73
    ld l, $FE                                     ; $7553: $2E $FE

jr_01D_7555:
    db $FD                                        ; $7555: $FD
    sbc d                                         ; $7556: $9A
    ld b, d                                       ; $7557: $42
    sbc e                                         ; $7558: $9B
    ld a, b                                       ; $7559: $78
    ld [hl], b                                    ; $755A: $70
    sbc a                                         ; $755B: $9F

jr_01D_755C:
    ld c, e                                       ; $755C: $4B
    ld l, [hl]                                    ; $755D: $6E
    ld l, c                                       ; $755E: $69
    ld h, e                                       ; $755F: $63
    ld l, e                                       ; $7560: $6B
    jr nz, jr_01D_75CE                            ; $7561: $20 $6B

    ld l, [hl]                                    ; $7563: $6E
    ld h, c                                       ; $7564: $61
    ld h, e                                       ; $7565: $63
    ld l, e                                       ; $7566: $6B
    ld [hl], e                                    ; $7567: $73
    inc l                                         ; $7568: $2C
    rst $38                                       ; $7569: $FF
    ld [hl], h                                    ; $756A: $74
    ld [hl], d                                    ; $756B: $72
    ld l, c                                       ; $756C: $69
    ld l, [hl]                                    ; $756D: $6E

jr_01D_756E:
    ld l, e                                       ; $756E: $6B
    ld h, l                                       ; $756F: $65
    ld [hl], h                                    ; $7570: $74
    ld [hl], e                                    ; $7571: $73
    cp $61                                        ; $7572: $FE $61
    ld l, [hl]                                    ; $7574: $6E
    ld h, h                                       ; $7575: $64
    jr nz, jr_01D_75E5                            ; $7576: $20 $6D

    ld l, c                                       ; $7578: $69
    ld h, d                                       ; $7579: $62
    ld l, a                                       ; $757A: $6F
    ld h, d                                       ; $757B: $62
    ld h, d                                       ; $757C: $62
    ld h, l                                       ; $757D: $65
    ld [hl], d                                    ; $757E: $72
    ld [hl], e                                    ; $757F: $73
    ld l, $FE                                     ; $7580: $2E $FE
    ld c, b                                       ; $7582: $48
    ld h, l                                       ; $7583: $65
    ld a, c                                       ; $7584: $79
    inc l                                         ; $7585: $2C
    jr nz, jr_01D_75F4                            ; $7586: $20 $6C

    ld l, a                                       ; $7588: $6F
    ld l, a                                       ; $7589: $6F
    ld l, e                                       ; $758A: $6B
    ld hl, $41FE                                  ; $758B: $21 $FE $41
    jr nz, jr_01D_7600                            ; $758E: $20 $70

    ld l, c                                       ; $7590: $69
    ld h, e                                       ; $7591: $63
    ld [hl], h                                    ; $7592: $74
    ld [hl], l                                    ; $7593: $75
    ld [hl], d                                    ; $7594: $72
    ld h, l                                       ; $7595: $65
    jr nz, jr_01D_7607                            ; $7596: $20 $6F

    ld h, [hl]                                    ; $7598: $66
    rst $38                                       ; $7599: $FF
    ld b, l                                       ; $759A: $45

jr_01D_759B:
    ld l, c                                       ; $759B: $69
    ld h, h                                       ; $759C: $64
    ld l, a                                       ; $759D: $6F
    ld l, [hl]                                    ; $759E: $6E

jr_01D_759F:
    ld l, $FE                                     ; $759F: $2E $FE
    db $FD                                        ; $75A1: $FD
    sbc d                                         ; $75A2: $9A
    ld b, d                                       ; $75A3: $42

jr_01D_75A4:
    sbc e                                         ; $75A4: $9B

jr_01D_75A5:
    ld a, b                                       ; $75A5: $78
    ld [hl], b                                    ; $75A6: $70
    sbc a                                         ; $75A7: $9F
    ld b, d                                       ; $75A8: $42
    ld h, l                                       ; $75A9: $65
    ld [hl], h                                    ; $75AA: $74
    ld [hl], h                                    ; $75AB: $74
    ld h, l                                       ; $75AC: $65
    ld [hl], d                                    ; $75AD: $72
    jr nz, @+$6A                                  ; $75AE: $20 $68

    ld l, a                                       ; $75B0: $6F
    ld [hl], b                                    ; $75B1: $70
    ld h, l                                       ; $75B2: $65
    jr nz, @+$75                                  ; $75B3: $20 $73

    ld l, b                                       ; $75B5: $68
    ld h, l                                       ; $75B6: $65
    rst $38                                       ; $75B7: $FF
    ld h, h                                       ; $75B8: $64
    ld l, a                                       ; $75B9: $6F
    ld h, l                                       ; $75BA: $65
    ld [hl], e                                    ; $75BB: $73
    ld l, [hl]                                    ; $75BC: $6E
    daa                                           ; $75BD: $27
    ld [hl], h                                    ; $75BE: $74
    jr nz, jr_01D_7633                            ; $75BF: $20 $72

    ld [hl], l                                    ; $75C1: $75
    ld l, [hl]                                    ; $75C2: $6E
    jr nz, jr_01D_7634                            ; $75C3: $20 $6F

    ld [hl], l                                    ; $75C5: $75
    ld [hl], h                                    ; $75C6: $74
    cp $6F                                        ; $75C7: $FE $6F
    ld h, [hl]                                    ; $75C9: $66
    jr nz, jr_01D_7632                            ; $75CA: $20 $66

    ld l, c                                       ; $75CC: $69
    ld [hl], d                                    ; $75CD: $72

jr_01D_75CE:
    ld h, l                                       ; $75CE: $65
    ld [hl], a                                    ; $75CF: $77
    ld l, a                                       ; $75D0: $6F
    ld l, a                                       ; $75D1: $6F
    ld h, h                                       ; $75D2: $64
    inc l                                         ; $75D3: $2C
    rst $38                                       ; $75D4: $FF
    ld l, h                                       ; $75D5: $6C
    ld l, c                                       ; $75D6: $69
    ld [hl], h                                    ; $75D7: $74
    ld [hl], h                                    ; $75D8: $74
    ld l, h                                       ; $75D9: $6C
    ld h, l                                       ; $75DA: $65
    jr nz, jr_01D_7650                            ; $75DB: $20 $73

    ld [hl], h                                    ; $75DD: $74
    ld l, a                                       ; $75DE: $6F
    ld l, a                                       ; $75DF: $6F
    ld l, h                                       ; $75E0: $6C
    ld l, $FE                                     ; $75E1: $2E $FE
    ld e, c                                       ; $75E3: $59
    ld l, a                                       ; $75E4: $6F

jr_01D_75E5:
    ld [hl], l                                    ; $75E5: $75
    jr nz, jr_01D_7655                            ; $75E6: $20 $6D

    ld l, c                                       ; $75E8: $69
    ld h, a                                       ; $75E9: $67
    ld l, b                                       ; $75EA: $68
    ld [hl], h                                    ; $75EB: $74
    jr nz, jr_01D_7650                            ; $75EC: $20 $62

    ld h, l                                       ; $75EE: $65
    rst $38                                       ; $75EF: $FF
    ld l, [hl]                                    ; $75F0: $6E
    ld h, l                                       ; $75F1: $65
    ld a, b                                       ; $75F2: $78
    ld [hl], h                                    ; $75F3: $74

jr_01D_75F4:
    ld hl, $FDFE                                  ; $75F4: $21 $FE $FD
    sbc d                                         ; $75F7: $9A
    ld b, d                                       ; $75F8: $42
    sbc e                                         ; $75F9: $9B
    ld e, c                                       ; $75FA: $59
    ld d, h                                       ; $75FB: $54
    sbc a                                         ; $75FC: $9F
    ld d, a                                       ; $75FD: $57
    ld l, b                                       ; $75FE: $68
    ld [hl], l                                    ; $75FF: $75

jr_01D_7600:
    ld l, l                                       ; $7600: $6D
    ld [hl], b                                    ; $7601: $70
    ld l, b                                       ; $7602: $68
    ld hl, $FDFE                                  ; $7603: $21 $FE $FD
    sbc e                                         ; $7606: $9B

jr_01D_7607:
    ld a, b                                       ; $7607: $78
    ld [hl], b                                    ; $7608: $70
    sbc a                                         ; $7609: $9F
    ld d, h                                       ; $760A: $54
    ld l, b                                       ; $760B: $68
    ld h, l                                       ; $760C: $65
    jr nz, jr_01D_7675                            ; $760D: $20 $66

    ld [hl], l                                    ; $760F: $75
    ld l, [hl]                                    ; $7610: $6E
    rst $38                                       ; $7611: $FF
    ld l, [hl]                                    ; $7612: $6E
    ld h, l                                       ; $7613: $65
    halt                                          ; $7614: $76
    ld h, l                                       ; $7615: $65
    ld [hl], d                                    ; $7616: $72
    jr nz, jr_01D_768C                            ; $7617: $20 $73

    ld [hl], h                                    ; $7619: $74
    ld l, a                                       ; $761A: $6F
    ld [hl], b                                    ; $761B: $70
    ld [hl], e                                    ; $761C: $73
    ld l, $FE                                     ; $761D: $2E $FE
    db $FD                                        ; $761F: $FD
    sbc d                                         ; $7620: $9A
    ld b, d                                       ; $7621: $42
    sbc e                                         ; $7622: $9B
    ld a, b                                       ; $7623: $78
    ld [hl], b                                    ; $7624: $70
    sbc a                                         ; $7625: $9F
    ld b, c                                       ; $7626: $41
    jr nz, jr_01D_768C                            ; $7627: $20 $63

    ld l, b                                       ; $7629: $68
    ld h, c                                       ; $762A: $61
    ld l, c                                       ; $762B: $69
    ld [hl], d                                    ; $762C: $72
    jr nz, jr_01D_769E                            ; $762D: $20 $6F

    ld h, [hl]                                    ; $762F: $66
    rst $38                                       ; $7630: $FF
    ld h, e                                       ; $7631: $63

jr_01D_7632:
    ld l, a                                       ; $7632: $6F

jr_01D_7633:
    ld l, l                                       ; $7633: $6D

jr_01D_7634:
    ld h, [hl]                                    ; $7634: $66
    ld a, c                                       ; $7635: $79
    dec l                                         ; $7636: $2D
    ld l, [hl]                                    ; $7637: $6E
    ld h, l                                       ; $7638: $65
    ld [hl], e                                    ; $7639: $73
    ld [hl], e                                    ; $763A: $73
    ld hl, $54FE                                  ; $763B: $21 $FE $54
    ld l, b                                       ; $763E: $68
    ld h, l                                       ; $763F: $65
    ld [hl], d                                    ; $7640: $72
    ld h, l                                       ; $7641: $65
    daa                                           ; $7642: $27
    ld [hl], e                                    ; $7643: $73
    jr nz, jr_01D_76A7                            ; $7644: $20 $61

    jr nz, jr_01D_768F                            ; $7646: $20 $47

    ld l, c                                       ; $7648: $69
    ld h, c                                       ; $7649: $61
    rst $38                                       ; $764A: $FF
    ld [hl], e                                    ; $764B: $73
    ld l, b                                       ; $764C: $68
    ld h, c                                       ; $764D: $61
    ld [hl], b                                    ; $764E: $70
    ld h, l                                       ; $764F: $65

jr_01D_7650:
    ld h, h                                       ; $7650: $64
    jr nz, @+$69                                  ; $7651: $20 $67

    ld [hl], d                                    ; $7653: $72
    ld l, a                                       ; $7654: $6F

jr_01D_7655:
    ld l, a                                       ; $7655: $6F
    halt                                          ; $7656: $76
    ld h, l                                       ; $7657: $65
    cp $69                                        ; $7658: $FE $69
    ld l, [hl]                                    ; $765A: $6E
    jr nz, jr_01D_76D1                            ; $765B: $20 $74

    ld l, b                                       ; $765D: $68
    ld l, c                                       ; $765E: $69
    ld [hl], e                                    ; $765F: $73
    jr nz, jr_01D_76C5                            ; $7660: $20 $63

    ld l, b                                       ; $7662: $68
    ld h, c                                       ; $7663: $61
    ld l, c                                       ; $7664: $69
    ld [hl], d                                    ; $7665: $72
    ld l, $FE                                     ; $7666: $2E $FE
    db $FD                                        ; $7668: $FD
    sbc d                                         ; $7669: $9A
    ld b, d                                       ; $766A: $42
    sbc e                                         ; $766B: $9B
    ld a, b                                       ; $766C: $78
    ld [hl], b                                    ; $766D: $70
    sbc a                                         ; $766E: $9F
    ld d, h                                       ; $766F: $54
    ld l, b                                       ; $7670: $68
    ld l, c                                       ; $7671: $69
    ld [hl], e                                    ; $7672: $73
    jr nz, @+$6F                                  ; $7673: $20 $6D

jr_01D_7675:
    ld [hl], l                                    ; $7675: $75
    ld [hl], e                                    ; $7676: $73
    ld [hl], h                                    ; $7677: $74
    jr nz, jr_01D_76DC                            ; $7678: $20 $62

    ld h, l                                       ; $767A: $65
    rst $38                                       ; $767B: $FF
    ld [hl], h                                    ; $767C: $74
    ld l, b                                       ; $767D: $68
    ld h, l                                       ; $767E: $65
    jr nz, jr_01D_76F8                            ; $767F: $20 $77

    ld h, c                                       ; $7681: $61
    ld l, c                                       ; $7682: $69
    ld [hl], h                                    ; $7683: $74
    ld l, c                                       ; $7684: $69
    ld l, [hl]                                    ; $7685: $6E
    ld h, a                                       ; $7686: $67
    ld l, $2E                                     ; $7687: $2E $2E
    ld l, $FE                                     ; $7689: $2E $FE
    ld h, l                                       ; $768B: $65

jr_01D_768C:
    ld [hl], d                                    ; $768C: $72
    ld l, $2E                                     ; $768D: $2E $2E

jr_01D_768F:
    ld l, $FE                                     ; $768F: $2E $FE
    ld l, [hl]                                    ; $7691: $6E
    ld l, a                                       ; $7692: $6F
    ld l, a                                       ; $7693: $6F
    ld l, e                                       ; $7694: $6B
    ccf                                           ; $7695: $3F
    cp $FD                                        ; $7696: $FE $FD
    sbc d                                         ; $7698: $9A
    ld b, d                                       ; $7699: $42
    sbc e                                         ; $769A: $9B
    ld a, b                                       ; $769B: $78
    ld [hl], b                                    ; $769C: $70
    sbc a                                         ; $769D: $9F

jr_01D_769E:
    ld c, [hl]                                    ; $769E: $4E
    ld l, a                                       ; $769F: $6F
    ld [hl], h                                    ; $76A0: $74
    ld l, b                                       ; $76A1: $68
    ld l, c                                       ; $76A2: $69
    ld l, [hl]                                    ; $76A3: $6E
    ld h, a                                       ; $76A4: $67
    jr nz, jr_01D_771C                            ; $76A5: $20 $75

jr_01D_76A7:
    ld l, [hl]                                    ; $76A7: $6E
    ld h, h                                       ; $76A8: $64
    ld h, l                                       ; $76A9: $65
    ld [hl], d                                    ; $76AA: $72
    rst $38                                       ; $76AB: $FF
    ld l, b                                       ; $76AC: $68
    ld h, l                                       ; $76AD: $65
    ld [hl], d                                    ; $76AE: $72
    ld h, l                                       ; $76AF: $65
    jr nz, jr_01D_7714                            ; $76B0: $20 $62

    ld [hl], l                                    ; $76B2: $75
    ld [hl], h                                    ; $76B3: $74
    jr nz, jr_01D_7729                            ; $76B4: $20 $73

    ld l, a                                       ; $76B6: $6F
    ld l, l                                       ; $76B7: $6D
    ld h, l                                       ; $76B8: $65
    cp $63                                        ; $76B9: $FE $63
    ld l, a                                       ; $76BB: $6F
    ld h, d                                       ; $76BC: $62
    ld [hl], a                                    ; $76BD: $77
    ld h, l                                       ; $76BE: $65
    ld h, d                                       ; $76BF: $62
    ld [hl], e                                    ; $76C0: $73
    jr nz, @+$63                                  ; $76C1: $20 $61

    ld l, [hl]                                    ; $76C3: $6E
    ld h, h                                       ; $76C4: $64

jr_01D_76C5:
    jr nz, jr_01D_7728                            ; $76C5: $20 $61

    rst $38                                       ; $76C7: $FF
    ld h, d                                       ; $76C8: $62
    ld [hl], l                                    ; $76C9: $75
    ld h, a                                       ; $76CA: $67
    jr nz, jr_01D_773C                            ; $76CB: $20 $6F

    ld [hl], d                                    ; $76CD: $72
    jr nz, jr_01D_7744                            ; $76CE: $20 $74

    ld [hl], a                                    ; $76D0: $77

jr_01D_76D1:
    ld l, a                                       ; $76D1: $6F
    ld l, $FE                                     ; $76D2: $2E $FE
    db $FD                                        ; $76D4: $FD
    sbc d                                         ; $76D5: $9A
    ld b, d                                       ; $76D6: $42
    inc d                                         ; $76D7: $14
    ld c, $D9                                     ; $76D8: $0E $D9
    ld h, b                                       ; $76DA: $60
    ld b, d                                       ; $76DB: $42

jr_01D_76DC:
    ld e, e                                       ; $76DC: $5B
    dec e                                         ; $76DD: $1D
    db $E4                                        ; $76DE: $E4
    halt                                          ; $76DF: $76
    ld b, l                                       ; $76E0: $45
    ld c, $29                                     ; $76E1: $0E $29
    ld h, c                                       ; $76E3: $61
    ld c, e                                       ; $76E4: $4B
    inc b                                         ; $76E5: $04
    dec e                                         ; $76E6: $1D
    dec b                                         ; $76E7: $05
    nop                                           ; $76E8: $00
    cp $76                                        ; $76E9: $FE $76
    dec e                                         ; $76EB: $1D
    ld b, $00                                     ; $76EC: $06 $00
    inc h                                         ; $76EE: $24
    ld [hl], a                                    ; $76EF: $77
    dec e                                         ; $76F0: $1D
    ld c, $00                                     ; $76F1: $0E $00
    and d                                         ; $76F3: $A2
    ld a, b                                       ; $76F4: $78
    dec e                                         ; $76F5: $1D
    rrca                                          ; $76F6: $0F
    nop                                           ; $76F7: $00

jr_01D_76F8:
    and d                                         ; $76F8: $A2
    ld a, b                                       ; $76F9: $78
    rst $38                                       ; $76FA: $FF
    ld b, [hl]                                    ; $76FB: $46
    ld sp, $9B79                                  ; $76FC: $31 $79 $9B
    ld hl, sp+$4A                                 ; $76FF: $F8 $4A
    sbc a                                         ; $7701: $9F
    ld b, a                                       ; $7702: $47
    ld l, a                                       ; $7703: $6F
    jr nz, jr_01D_7774                            ; $7704: $20 $6E

    ld l, a                                       ; $7706: $6F
    ld [hl], a                                    ; $7707: $77
    jr nz, jr_01D_777E                            ; $7708: $20 $74

    ld l, a                                       ; $770A: $6F
    jr nz, jr_01D_7781                            ; $770B: $20 $74

    ld l, b                                       ; $770D: $68
    ld h, l                                       ; $770E: $65
    rst $38                                       ; $770F: $FF
    ld d, e                                       ; $7710: $53
    ld l, b                                       ; $7711: $68
    ld h, c                                       ; $7712: $61
    ld h, h                                       ; $7713: $64

jr_01D_7714:
    ld l, a                                       ; $7714: $6F
    ld [hl], a                                    ; $7715: $77
    jr nz, jr_01D_775F                            ; $7716: $20 $47

    ld h, l                                       ; $7718: $65
    ld a, c                                       ; $7719: $79
    ld [hl], e                                    ; $771A: $73
    ld h, l                                       ; $771B: $65

jr_01D_771C:
    ld [hl], d                                    ; $771C: $72
    ld l, $FE                                     ; $771D: $2E $FE
    db $FD                                        ; $771F: $FD
    sbc d                                         ; $7720: $9A
    ld b, [hl]                                    ; $7721: $46
    ld sp, $4B79                                  ; $7722: $31 $79 $4B
    ld bc, $A225                                  ; $7725: $01 $25 $A2

jr_01D_7728:
    dec e                                         ; $7728: $1D

jr_01D_7729:
    nop                                           ; $7729: $00
    nop                                           ; $772A: $00
    jr c, jr_01D_77A4                             ; $772B: $38 $77

    dec e                                         ; $772D: $1D
    ld bc, $6A00                                  ; $772E: $01 $00 $6A
    ld [hl], a                                    ; $7731: $77
    dec e                                         ; $7732: $1D
    ld [bc], a                                    ; $7733: $02
    nop                                           ; $7734: $00
    ld sp, $FF79                                  ; $7735: $31 $79 $FF
    sbc e                                         ; $7738: $9B
    ld hl, sp+$4A                                 ; $7739: $F8 $4A
    sbc a                                         ; $773B: $9F

jr_01D_773C:
    ld d, h                                       ; $773C: $54
    ld [hl], d                                    ; $773D: $72
    ld a, c                                       ; $773E: $79
    jr nz, jr_01D_77AD                            ; $773F: $20 $6C

    ld l, a                                       ; $7741: $6F
    ld l, a                                       ; $7742: $6F
    ld l, e                                       ; $7743: $6B

jr_01D_7744:
    ld l, c                                       ; $7744: $69
    ld l, [hl]                                    ; $7745: $6E
    ld h, a                                       ; $7746: $67
    jr nz, jr_01D_77AF                            ; $7747: $20 $66

    ld l, a                                       ; $7749: $6F
    ld [hl], d                                    ; $774A: $72
    rst $38                                       ; $774B: $FF
    ld [hl], e                                    ; $774C: $73
    ld l, a                                       ; $774D: $6F
    ld l, l                                       ; $774E: $6D
    ld h, l                                       ; $774F: $65
    jr nz, jr_01D_77B5                            ; $7750: $20 $63

    ld l, h                                       ; $7752: $6C
    ld [hl], l                                    ; $7753: $75
    ld h, l                                       ; $7754: $65
    jr nz, @+$63                                  ; $7755: $20 $61

    ld [hl], h                                    ; $7757: $74
    cp $74                                        ; $7758: $FE $74
    ld l, b                                       ; $775A: $68
    ld h, l                                       ; $775B: $65
    jr nz, jr_01D_77A5                            ; $775C: $20 $47

    ld h, l                                       ; $775E: $65

jr_01D_775F:
    ld a, c                                       ; $775F: $79
    ld [hl], e                                    ; $7760: $73
    ld h, l                                       ; $7761: $65
    ld [hl], d                                    ; $7762: $72
    ld l, $FE                                     ; $7763: $2E $FE
    db $FD                                        ; $7765: $FD
    sbc d                                         ; $7766: $9A
    ld b, [hl]                                    ; $7767: $46
    ld sp, $AC79                                  ; $7768: $31 $79 $AC
    dec h                                         ; $776B: $25
    and d                                         ; $776C: $A2
    ld [bc], a                                    ; $776D: $02
    sbc e                                         ; $776E: $9B
    ld a, b                                       ; $776F: $78
    ld [hl], b                                    ; $7770: $70
    sbc a                                         ; $7771: $9F
    ld b, a                                       ; $7772: $47
    ld l, c                                       ; $7773: $69

jr_01D_7774:
    ld h, c                                       ; $7774: $61
    ld hl, $4920                                  ; $7775: $21 $20 $49
    rst $38                                       ; $7778: $FF
    ld h, [hl]                                    ; $7779: $66
    ld l, a                                       ; $777A: $6F
    ld [hl], l                                    ; $777B: $75
    ld l, [hl]                                    ; $777C: $6E
    ld h, h                                       ; $777D: $64

jr_01D_777E:
    jr nz, jr_01D_77F3                            ; $777E: $20 $73

    ld l, a                                       ; $7780: $6F

jr_01D_7781:
    ld l, l                                       ; $7781: $6D
    ld h, l                                       ; $7782: $65
    cp $77                                        ; $7783: $FE $77
    ld h, l                                       ; $7785: $65
    ld l, c                                       ; $7786: $69
    ld [hl], d                                    ; $7787: $72
    ld h, h                                       ; $7788: $64
    jr nz, jr_01D_77EE                            ; $7789: $20 $63

    ld [hl], d                                    ; $778B: $72
    ld a, c                                       ; $778C: $79
    ld [hl], e                                    ; $778D: $73
    ld [hl], h                                    ; $778E: $74
    ld h, c                                       ; $778F: $61
    ld l, h                                       ; $7790: $6C
    rst $38                                       ; $7791: $FF
    ld h, d                                       ; $7792: $62
    ld l, h                                       ; $7793: $6C
    ld h, c                                       ; $7794: $61
    ld h, h                                       ; $7795: $64
    ld h, l                                       ; $7796: $65
    ld [hl], e                                    ; $7797: $73
    jr nz, jr_01D_77FB                            ; $7798: $20 $61

    ld [hl], h                                    ; $779A: $74
    jr nz, jr_01D_7811                            ; $779B: $20 $74

    ld l, b                                       ; $779D: $68
    ld h, l                                       ; $779E: $65
    cp $47                                        ; $779F: $FE $47
    ld h, l                                       ; $77A1: $65
    ld a, c                                       ; $77A2: $79
    ld [hl], e                                    ; $77A3: $73

jr_01D_77A4:
    ld h, l                                       ; $77A4: $65

jr_01D_77A5:
    ld [hl], d                                    ; $77A5: $72
    ld l, $FE                                     ; $77A6: $2E $FE
    db $FD                                        ; $77A8: $FD
    sbc e                                         ; $77A9: $9B
    ld hl, sp+$4A                                 ; $77AA: $F8 $4A
    sbc a                                         ; $77AC: $9F

jr_01D_77AD:
    ld d, h                                       ; $77AD: $54
    ld l, b                                       ; $77AE: $68

jr_01D_77AF:
    ld l, a                                       ; $77AF: $6F
    ld [hl], e                                    ; $77B0: $73
    ld h, l                                       ; $77B1: $65
    jr nz, jr_01D_7820                            ; $77B2: $20 $6C

    ld l, a                                       ; $77B4: $6F

jr_01D_77B5:
    ld l, a                                       ; $77B5: $6F
    ld l, e                                       ; $77B6: $6B
    jr nz, @+$6E                                  ; $77B7: $20 $6C

    ld l, c                                       ; $77B9: $69
    ld l, e                                       ; $77BA: $6B
    ld h, l                                       ; $77BB: $65
    rst $38                                       ; $77BC: $FF
    ld [hl], h                                    ; $77BD: $74
    ld l, b                                       ; $77BE: $68
    ld h, l                                       ; $77BF: $65
    jr nz, jr_01D_782D                            ; $77C0: $20 $6B

    ld l, c                                       ; $77C2: $69
    ld l, [hl]                                    ; $77C3: $6E
    ld h, h                                       ; $77C4: $64
    jr nz, jr_01D_7836                            ; $77C5: $20 $6F

    ld h, [hl]                                    ; $77C7: $66
    cp $62                                        ; $77C8: $FE $62
    ld l, h                                       ; $77CA: $6C
    ld h, c                                       ; $77CB: $61
    ld h, h                                       ; $77CC: $64
    ld h, l                                       ; $77CD: $65
    ld [hl], e                                    ; $77CE: $73
    jr nz, jr_01D_7846                            ; $77CF: $20 $75

    ld [hl], e                                    ; $77D1: $73
    ld h, l                                       ; $77D2: $65
    ld h, h                                       ; $77D3: $64
    jr nz, jr_01D_7838                            ; $77D4: $20 $62

    ld a, c                                       ; $77D6: $79
    rst $38                                       ; $77D7: $FF
    ld l, l                                       ; $77D8: $6D
    ld l, c                                       ; $77D9: $69
    ld l, [hl]                                    ; $77DA: $6E
    ld h, l                                       ; $77DB: $65
    ld [hl], d                                    ; $77DC: $72
    ld [hl], e                                    ; $77DD: $73
    jr nz, jr_01D_7849                            ; $77DE: $20 $69

    ld l, [hl]                                    ; $77E0: $6E
    jr nz, jr_01D_7857                            ; $77E1: $20 $74

    ld l, b                                       ; $77E3: $68
    ld h, l                                       ; $77E4: $65
    cp $55                                        ; $77E5: $FE $55
    ld l, [hl]                                    ; $77E7: $6E
    ld h, h                                       ; $77E8: $64
    ld h, l                                       ; $77E9: $65
    ld [hl], d                                    ; $77EA: $72
    ld l, [hl]                                    ; $77EB: $6E
    ld h, l                                       ; $77EC: $65
    ld h, c                                       ; $77ED: $61

jr_01D_77EE:
    ld [hl], h                                    ; $77EE: $74
    ld l, b                                       ; $77EF: $68
    ld l, $FF                                     ; $77F0: $2E $FF
    ld d, a                                       ; $77F2: $57

jr_01D_77F3:
    ld l, b                                       ; $77F3: $68
    ld l, a                                       ; $77F4: $6F
    ld h, l                                       ; $77F5: $65
    halt                                          ; $77F6: $76
    ld h, l                                       ; $77F7: $65
    ld [hl], d                                    ; $77F8: $72
    jr nz, jr_01D_785E                            ; $77F9: $20 $63

jr_01D_77FB:
    ld [hl], d                                    ; $77FB: $72
    ld h, l                                       ; $77FC: $65
    ld h, c                                       ; $77FD: $61
    ld [hl], h                                    ; $77FE: $74
    ld h, l                                       ; $77FF: $65
    ld h, h                                       ; $7800: $64
    cp $74                                        ; $7801: $FE $74
    ld l, b                                       ; $7803: $68
    ld h, c                                       ; $7804: $61
    ld [hl], h                                    ; $7805: $74
    jr nz, jr_01D_784F                            ; $7806: $20 $47

    ld h, l                                       ; $7808: $65
    ld a, c                                       ; $7809: $79
    ld [hl], e                                    ; $780A: $73
    ld h, l                                       ; $780B: $65
    ld [hl], d                                    ; $780C: $72
    rst $38                                       ; $780D: $FF
    ld l, l                                       ; $780E: $6D
    ld [hl], l                                    ; $780F: $75
    ld [hl], e                                    ; $7810: $73

jr_01D_7811:
    ld [hl], h                                    ; $7811: $74
    jr nz, jr_01D_787C                            ; $7812: $20 $68

    ld h, c                                       ; $7814: $61
    halt                                          ; $7815: $76
    ld h, l                                       ; $7816: $65
    jr nz, jr_01D_788D                            ; $7817: $20 $74

    ld h, c                                       ; $7819: $61
    ld l, e                                       ; $781A: $6B
    ld h, l                                       ; $781B: $65
    ld l, [hl]                                    ; $781C: $6E
    cp $61                                        ; $781D: $FE $61
    ld l, [hl]                                    ; $781F: $6E

jr_01D_7820:
    jr nz, jr_01D_7891                            ; $7820: $20 $6F

    ld l, h                                       ; $7822: $6C
    ld h, h                                       ; $7823: $64
    jr nz, jr_01D_7893                            ; $7824: $20 $6D

    ld l, c                                       ; $7826: $69
    ld l, [hl]                                    ; $7827: $6E
    ld h, l                                       ; $7828: $65
    rst $38                                       ; $7829: $FF
    ld [hl], e                                    ; $782A: $73
    ld l, b                                       ; $782B: $68
    ld h, c                                       ; $782C: $61

jr_01D_782D:
    ld h, [hl]                                    ; $782D: $66
    ld [hl], h                                    ; $782E: $74
    ld l, $2E                                     ; $782F: $2E $2E
    ld l, $FE                                     ; $7831: $2E $FE
    ld b, l                                       ; $7833: $45
    ld l, c                                       ; $7834: $69
    ld h, h                                       ; $7835: $64

jr_01D_7836:
    ld l, a                                       ; $7836: $6F
    ld l, [hl]                                    ; $7837: $6E

jr_01D_7838:
    jr nz, @+$65                                  ; $7838: $20 $63

    ld h, c                                       ; $783A: $61
    ld l, [hl]                                    ; $783B: $6E
    jr nz, jr_01D_78A4                            ; $783C: $20 $66

    ld l, c                                       ; $783E: $69
    ld [hl], h                                    ; $783F: $74
    rst $38                                       ; $7840: $FF
    ld [hl], h                                    ; $7841: $74
    ld l, b                                       ; $7842: $68
    ld l, a                                       ; $7843: $6F
    ld [hl], e                                    ; $7844: $73
    ld h, l                                       ; $7845: $65

jr_01D_7846:
    jr nz, jr_01D_78AA                            ; $7846: $20 $62

    ld l, h                                       ; $7848: $6C

jr_01D_7849:
    ld h, c                                       ; $7849: $61
    ld h, h                                       ; $784A: $64
    ld h, l                                       ; $784B: $65
    ld [hl], e                                    ; $784C: $73
    cp $69                                        ; $784D: $FE $69

jr_01D_784F:
    ld l, [hl]                                    ; $784F: $6E
    ld [hl], h                                    ; $7850: $74
    ld l, a                                       ; $7851: $6F
    jr nz, jr_01D_78B8                            ; $7852: $20 $64

    ld l, c                                       ; $7854: $69
    ld h, a                                       ; $7855: $67
    ld h, a                                       ; $7856: $67

jr_01D_7857:
    ld l, c                                       ; $7857: $69
    ld l, [hl]                                    ; $7858: $6E
    ld h, a                                       ; $7859: $67
    rst $38                                       ; $785A: $FF
    ld h, a                                       ; $785B: $67
    ld l, h                                       ; $785C: $6C
    ld l, a                                       ; $785D: $6F

jr_01D_785E:
    halt                                          ; $785E: $76
    ld h, l                                       ; $785F: $65
    ld [hl], e                                    ; $7860: $73
    jr nz, jr_01D_78C9                            ; $7861: $20 $66

    ld l, a                                       ; $7863: $6F
    ld [hl], d                                    ; $7864: $72
    jr nz, jr_01D_78E0                            ; $7865: $20 $79

    ld l, a                                       ; $7867: $6F
    ld [hl], l                                    ; $7868: $75
    ld l, $FE                                     ; $7869: $2E $FE
    db $FD                                        ; $786B: $FD
    sbc e                                         ; $786C: $9B
    ld a, b                                       ; $786D: $78
    ld [hl], b                                    ; $786E: $70
    sbc a                                         ; $786F: $9F
    ld d, h                                       ; $7870: $54
    ld l, b                                       ; $7871: $68
    ld h, c                                       ; $7872: $61
    ld l, [hl]                                    ; $7873: $6E
    ld l, e                                       ; $7874: $6B
    ld [hl], e                                    ; $7875: $73
    jr nz, jr_01D_78DE                            ; $7876: $20 $66

    ld l, a                                       ; $7878: $6F
    ld [hl], d                                    ; $7879: $72
    jr nz, jr_01D_78F5                            ; $787A: $20 $79

jr_01D_787C:
    ld l, a                                       ; $787C: $6F
    ld [hl], l                                    ; $787D: $75
    ld [hl], d                                    ; $787E: $72
    rst $38                                       ; $787F: $FF
    ld l, b                                       ; $7880: $68
    ld h, l                                       ; $7881: $65
    ld l, h                                       ; $7882: $6C
    ld [hl], b                                    ; $7883: $70
    ld l, $FE                                     ; $7884: $2E $FE
    db $FD                                        ; $7886: $FD
    sbc e                                         ; $7887: $9B
    ld hl, sp+$4A                                 ; $7888: $F8 $4A
    sbc a                                         ; $788A: $9F
    ld b, a                                       ; $788B: $47
    ld l, a                                       ; $788C: $6F

jr_01D_788D:
    ld l, a                                       ; $788D: $6F
    ld h, h                                       ; $788E: $64
    jr nz, jr_01D_78FD                            ; $788F: $20 $6C

jr_01D_7891:
    ld [hl], l                                    ; $7891: $75
    ld h, e                                       ; $7892: $63

jr_01D_7893:
    ld l, e                                       ; $7893: $6B
    inc l                                         ; $7894: $2C
    cp $4B                                        ; $7895: $FE $4B
    ld a, c                                       ; $7897: $79
    ld [hl], d                                    ; $7898: $72
    ld l, a                                       ; $7899: $6F
    ld [hl], e                                    ; $789A: $73
    ld hl, $FDFE                                  ; $789B: $21 $FE $FD
    sbc d                                         ; $789E: $9A
    ld e, b                                       ; $789F: $58
    ld bc, $4342                                  ; $78A0: $01 $42 $43
    nop                                           ; $78A3: $00

jr_01D_78A4:
    xor h                                         ; $78A4: $AC
    and c                                         ; $78A5: $A1
    ld [bc], a                                    ; $78A6: $02
    dec e                                         ; $78A7: $1D
    push hl                                       ; $78A8: $E5
    ld a, b                                       ; $78A9: $78

jr_01D_78AA:
    sbc e                                         ; $78AA: $9B
    ld hl, sp+$4A                                 ; $78AB: $F8 $4A
    sbc a                                         ; $78AD: $9F
    ld c, e                                       ; $78AE: $4B
    ld e, c                                       ; $78AF: $59
    ld d, d                                       ; $78B0: $52
    ld c, a                                       ; $78B1: $4F
    ld d, e                                       ; $78B2: $53
    ld hl, $5920                                  ; $78B3: $21 $20 $59
    ld l, a                                       ; $78B6: $6F
    ld [hl], l                                    ; $78B7: $75

jr_01D_78B8:
    rst $38                                       ; $78B8: $FF
    ld h, l                                       ; $78B9: $65
    ld [hl], e                                    ; $78BA: $73
    ld h, e                                       ; $78BB: $63
    ld h, c                                       ; $78BC: $61
    ld [hl], b                                    ; $78BD: $70
    ld h, l                                       ; $78BE: $65
    ld h, h                                       ; $78BF: $64
    ld hl, $5420                                  ; $78C0: $21 $20 $54
    ld h, l                                       ; $78C3: $65
    ld l, h                                       ; $78C4: $6C
    ld l, h                                       ; $78C5: $6C
    cp $6D                                        ; $78C6: $FE $6D
    ld h, l                                       ; $78C8: $65

jr_01D_78C9:
    jr nz, jr_01D_7942                            ; $78C9: $20 $77

    ld l, b                                       ; $78CB: $68
    ld h, c                                       ; $78CC: $61
    ld [hl], h                                    ; $78CD: $74
    rst $38                                       ; $78CE: $FF
    ld l, b                                       ; $78CF: $68
    ld h, c                                       ; $78D0: $61
    ld [hl], b                                    ; $78D1: $70
    ld [hl], b                                    ; $78D2: $70
    ld h, l                                       ; $78D3: $65
    ld l, [hl]                                    ; $78D4: $6E
    ld h, l                                       ; $78D5: $65
    ld h, h                                       ; $78D6: $64
    ld l, $FE                                     ; $78D7: $2E $FE
    db $FD                                        ; $78D9: $FD
    sbc d                                         ; $78DA: $9A
    ld l, [hl]                                    ; $78DB: $6E
    rrca                                          ; $78DC: $0F
    rst $38                                       ; $78DD: $FF

jr_01D_78DE:
    ld a, a                                       ; $78DE: $7F
    halt                                          ; $78DF: $76

jr_01D_78E0:
    jr nz, jr_01D_78F1                            ; $78E0: $20 $0F

    ld b, [hl]                                    ; $78E2: $46
    ld [hl], c                                    ; $78E3: $71
    ld e, d                                       ; $78E4: $5A
    sbc e                                         ; $78E5: $9B
    ld hl, sp+$4A                                 ; $78E6: $F8 $4A
    sbc a                                         ; $78E8: $9F
    ld c, l                                       ; $78E9: $4D
    ld a, c                                       ; $78EA: $79
    jr nz, jr_01D_7954                            ; $78EB: $20 $67

    ld [hl], d                                    ; $78ED: $72
    ld h, c                                       ; $78EE: $61
    ld l, [hl]                                    ; $78EF: $6E
    ld h, h                                       ; $78F0: $64

jr_01D_78F1:
    ld l, l                                       ; $78F1: $6D
    ld l, a                                       ; $78F2: $6F
    ld [hl], h                                    ; $78F3: $74
    ld l, b                                       ; $78F4: $68

jr_01D_78F5:
    ld h, l                                       ; $78F5: $65
    ld [hl], d                                    ; $78F6: $72
    rst $38                                       ; $78F7: $FF
    ld [hl], a                                    ; $78F8: $77
    ld h, c                                       ; $78F9: $61
    ld [hl], e                                    ; $78FA: $73
    jr nz, jr_01D_7963                            ; $78FB: $20 $66

jr_01D_78FD:
    ld [hl], d                                    ; $78FD: $72
    ld l, a                                       ; $78FE: $6F
    ld l, l                                       ; $78FF: $6D
    cp $54                                        ; $7900: $FE $54
    ld l, b                                       ; $7902: $68
    ld h, l                                       ; $7903: $65
    jr nz, @+$45                                  ; $7904: $20 $43

    ld h, c                                       ; $7906: $61
    ld l, h                                       ; $7907: $6C
    ld h, h                                       ; $7908: $64
    ld l, $2E                                     ; $7909: $2E $2E
    ld l, $FE                                     ; $790B: $2E $FE
    db $FD                                        ; $790D: $FD
    sbc d                                         ; $790E: $9A
    ld b, [hl]                                    ; $790F: $46
    ld sp, $9B79                                  ; $7910: $31 $79 $9B
    ld hl, sp+$4A                                 ; $7913: $F8 $4A
    sbc a                                         ; $7915: $9F
    ld b, d                                       ; $7916: $42
    ld h, l                                       ; $7917: $65
    jr nz, jr_01D_797D                            ; $7918: $20 $63

    ld h, c                                       ; $791A: $61
    ld [hl], d                                    ; $791B: $72
    ld h, l                                       ; $791C: $65
    ld h, [hl]                                    ; $791D: $66
    ld [hl], l                                    ; $791E: $75
    ld l, h                                       ; $791F: $6C
    jr nz, jr_01D_798B                            ; $7920: $20 $69

    ld l, [hl]                                    ; $7922: $6E
    rst $38                                       ; $7923: $FF
    ld c, a                                       ; $7924: $4F
    ld [hl], d                                    ; $7925: $72
    ld l, a                                       ; $7926: $6F
    ld [hl], h                                    ; $7927: $74
    ld l, b                                       ; $7928: $68
    ld h, l                                       ; $7929: $65
    ld l, $FE                                     ; $792A: $2E $FE
    db $FD                                        ; $792C: $FD
    sbc d                                         ; $792D: $9A
    ld b, [hl]                                    ; $792E: $46
    ld sp, $9B79                                  ; $792F: $31 $79 $9B
    ld hl, sp+$4A                                 ; $7932: $F8 $4A
    sbc a                                         ; $7934: $9F
    ld d, e                                       ; $7935: $53
    ld l, b                                       ; $7936: $68
    ld h, c                                       ; $7937: $61
    ld l, h                                       ; $7938: $6C
    ld l, h                                       ; $7939: $6C
    jr nz, jr_01D_7985                            ; $793A: $20 $49

    jr nz, jr_01D_79B0                            ; $793C: $20 $72

    ld h, l                                       ; $793E: $65
    ld h, e                                       ; $793F: $63
    ld l, a                                       ; $7940: $6F
    ld [hl], d                                    ; $7941: $72

jr_01D_7942:
    ld h, h                                       ; $7942: $64
    rst $38                                       ; $7943: $FF
    ld a, c                                       ; $7944: $79
    ld l, a                                       ; $7945: $6F
    ld [hl], l                                    ; $7946: $75
    ld [hl], d                                    ; $7947: $72
    jr nz, jr_01D_79B4                            ; $7948: $20 $6A

    ld l, a                                       ; $794A: $6F
    ld [hl], l                                    ; $794B: $75
    ld [hl], d                                    ; $794C: $72
    ld l, [hl]                                    ; $794D: $6E
    ld h, l                                       ; $794E: $65
    ld a, c                                       ; $794F: $79
    ccf                                           ; $7950: $3F
    cp $FD                                        ; $7951: $FE $FD
    sbc c                                         ; $7953: $99

jr_01D_7954:
    sbc e                                         ; $7954: $9B
    ld a, b                                       ; $7955: $78
    ld [hl], b                                    ; $7956: $70
    sbc a                                         ; $7957: $9F
    jr nz, jr_01D_79B3                            ; $7958: $20 $59

    ld h, l                                       ; $795A: $65
    ld [hl], e                                    ; $795B: $73
    rst $38                                       ; $795C: $FF
    jr nz, jr_01D_79AD                            ; $795D: $20 $4E

    ld l, a                                       ; $795F: $6F
    db $FD                                        ; $7960: $FD
    sbc h                                         ; $7961: $9C
    ld [bc], a                                    ; $7962: $02

jr_01D_7963:
    dec e                                         ; $7963: $1D
    ld l, c                                       ; $7964: $69
    ld a, c                                       ; $7965: $79
    dec e                                         ; $7966: $1D
    sub h                                         ; $7967: $94
    ld a, c                                       ; $7968: $79
    sbc c                                         ; $7969: $99
    sbc a                                         ; $796A: $9F
    ld e, c                                       ; $796B: $59
    ld l, a                                       ; $796C: $6F
    ld [hl], l                                    ; $796D: $75
    ld [hl], d                                    ; $796E: $72
    jr nz, jr_01D_79DB                            ; $796F: $20 $6A

    ld l, a                                       ; $7971: $6F
    ld [hl], l                                    ; $7972: $75
    ld [hl], d                                    ; $7973: $72
    ld l, [hl]                                    ; $7974: $6E
    ld h, l                                       ; $7975: $65
    ld a, c                                       ; $7976: $79
    jr nz, jr_01D_79E2                            ; $7977: $20 $69

    ld [hl], e                                    ; $7979: $73
    rst $38                                       ; $797A: $FF
    ld l, [hl]                                    ; $797B: $6E
    ld l, a                                       ; $797C: $6F

jr_01D_797D:
    ld [hl], a                                    ; $797D: $77
    jr nz, jr_01D_79F2                            ; $797E: $20 $72

    ld h, l                                       ; $7980: $65
    ld h, e                                       ; $7981: $63
    ld l, a                                       ; $7982: $6F
    ld [hl], d                                    ; $7983: $72
    ld h, h                                       ; $7984: $64

jr_01D_7985:
    ld h, l                                       ; $7985: $65
    ld h, h                                       ; $7986: $64
    ld l, $FE                                     ; $7987: $2E $FE
    db $FD                                        ; $7989: $FD
    sbc d                                         ; $798A: $9A

jr_01D_798B:
    sub [hl]                                      ; $798B: $96
    dec e                                         ; $798C: $1D

jr_01D_798D:
    xor a                                         ; $798D: $AF
    ld a, c                                       ; $798E: $79
    sub d                                         ; $798F: $92
    ld bc, $0158                                  ; $7990: $01 $58 $01
    ld b, d                                       ; $7993: $42
    sbc c                                         ; $7994: $99
    sbc e                                         ; $7995: $9B
    ld hl, sp+$4A                                 ; $7996: $F8 $4A
    sbc a                                         ; $7998: $9F
    ld b, a                                       ; $7999: $47
    ld l, a                                       ; $799A: $6F
    ld l, a                                       ; $799B: $6F
    ld h, h                                       ; $799C: $64
    jr nz, jr_01D_7A0B                            ; $799D: $20 $6C

    ld [hl], l                                    ; $799F: $75
    ld h, e                                       ; $79A0: $63
    ld l, e                                       ; $79A1: $6B
    rst $38                                       ; $79A2: $FF
    ld c, e                                       ; $79A3: $4B
    ld a, c                                       ; $79A4: $79
    ld [hl], d                                    ; $79A5: $72
    ld l, a                                       ; $79A6: $6F
    ld [hl], e                                    ; $79A7: $73
    ld hl, $FDFE                                  ; $79A8: $21 $FE $FD
    sbc d                                         ; $79AB: $9A
    ld e, b                                       ; $79AC: $58

jr_01D_79AD:
    ld bc, $4642                                  ; $79AD: $01 $42 $46

jr_01D_79B0:
    or d                                          ; $79B0: $B2
    ld a, c                                       ; $79B1: $79
    xor h                                         ; $79B2: $AC

jr_01D_79B3:
    or d                                          ; $79B3: $B2

jr_01D_79B4:
    and d                                         ; $79B4: $A2
    ld bc, $044B                                  ; $79B5: $01 $4B $04
    dec e                                         ; $79B8: $1D
    inc b                                         ; $79B9: $04
    nop                                           ; $79BA: $00
    jp c, $1D5C                                   ; $79BB: $DA $5C $1D

    ld b, $00                                     ; $79BE: $06 $00
    add d                                         ; $79C0: $82
    ld d, e                                       ; $79C1: $53
    dec e                                         ; $79C2: $1D
    dec bc                                        ; $79C3: $0B
    nop                                           ; $79C4: $00
    adc $68                                       ; $79C5: $CE $68
    rst $38                                       ; $79C7: $FF
    sub e                                         ; $79C8: $93
    ld h, l                                       ; $79C9: $65
    cpl                                           ; $79CA: $2F
    ld c, l                                       ; $79CB: $4D
    ld c, a                                       ; $79CC: $4F
    ld h, h                                       ; $79CD: $64
    add sp, $50                                   ; $79CE: $E8 $50
    ld l, c                                       ; $79D0: $69
    ld a, [c]                                     ; $79D1: $F2
    ld d, b                                       ; $79D2: $50
    ld h, [hl]                                    ; $79D3: $66
    ret nz                                        ; $79D4: $C0

    ld e, h                                       ; $79D5: $5C
    ld hl, $0005                                  ; $79D6: $21 $05 $00
    add c                                         ; $79D9: $81
    ld e, l                                       ; $79DA: $5D

jr_01D_79DB:
    rlca                                          ; $79DB: $07
    dec bc                                        ; $79DC: $0B
    xor h                                         ; $79DD: $AC
    ret nc                                        ; $79DE: $D0

    nop                                           ; $79DF: $00
    jr nz, jr_01D_798D                            ; $79E0: $20 $AB

jr_01D_79E2:
    ld d, b                                       ; $79E2: $50
    ld [hl+], a                                   ; $79E3: $22
    dec b                                         ; $79E4: $05
    ld b, b                                       ; $79E5: $40
    dec b                                         ; $79E6: $05
    ld [bc], a                                    ; $79E7: $02
    db $ED                                        ; $79E8: $ED
    ld h, e                                       ; $79E9: $63
    ld [$4404], sp                                ; $79EA: $08 $04 $44
    ret nc                                        ; $79ED: $D0

    nop                                           ; $79EE: $00
    dec e                                         ; $79EF: $1D
    rst $10                                       ; $79F0: $D7
    halt                                          ; $79F1: $76

jr_01D_79F2:
    dec e                                         ; $79F2: $1D
    call c, Call_01D_6B76                         ; $79F3: $DC $76 $6B
    ld [hl+], a                                   ; $79F6: $22
    ld a, [bc]                                    ; $79F7: $0A
    ldh a, [$4E]                                  ; $79F8: $F0 $4E
    nop                                           ; $79FA: $00
    add b                                         ; $79FB: $80
    nop                                           ; $79FC: $00
    dec bc                                        ; $79FD: $0B
    nop                                           ; $79FE: $00
    dec bc                                        ; $79FF: $0B
    ld [bc], a                                    ; $7A00: $02
    add d                                         ; $7A01: $82
    rra                                           ; $7A02: $1F
    ld a, [de]                                    ; $7A03: $1A
    sub h                                         ; $7A04: $94
    ld b, d                                       ; $7A05: $42
    nop                                           ; $7A06: $00
    nop                                           ; $7A07: $00
    nop                                           ; $7A08: $00
    nop                                           ; $7A09: $00
    nop                                           ; $7A0A: $00

jr_01D_7A0B:
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
