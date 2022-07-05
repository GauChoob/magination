SECTION "ROM Bank $060", ROMX[$4000], BANK[$60]

    nop                                           ; $4000: $00
    xor [hl]                                      ; $4001: $AE
    nop                                           ; $4002: $00
    rrca                                          ; $4003: $0F
    nop                                           ; $4004: $00
    sbc a                                         ; $4005: $9F
    nop                                           ; $4006: $00
    ld a, $00                                     ; $4007: $3E $00
    dec e                                         ; $4009: $1D
    nop                                           ; $400A: $00
    ld e, d                                       ; $400B: $5A
    nop                                           ; $400C: $00
    or h                                          ; $400D: $B4
    nop                                           ; $400E: $00
    add d                                         ; $400F: $82
    ldh a, [$B5]                                  ; $4010: $F0 $B5
    ld [hl], b                                    ; $4012: $70
    ld [hl], h                                    ; $4013: $74
    ld [hl], b                                    ; $4014: $70
    ld [hl], l                                    ; $4015: $75
    ld d, b                                       ; $4016: $50
    dec d                                         ; $4017: $15
    db $10                                        ; $4018: $10
    dec d                                         ; $4019: $15
    db $10                                        ; $401A: $10
    inc d                                         ; $401B: $14
    db $10                                        ; $401C: $10
    inc de                                        ; $401D: $13
    ld bc, $1F84                                  ; $401E: $01 $84 $1F
    ccf                                           ; $4021: $3F
    rra                                           ; $4022: $1F
    cp a                                          ; $4023: $BF
    rra                                           ; $4024: $1F
    ccf                                           ; $4025: $3F
    inc bc                                        ; $4026: $03
    jp $330C                                      ; $4027: $C3 $0C $33


    db $10                                        ; $402A: $10
    bit 4, b                                      ; $402B: $CB $60
    dec de                                        ; $402D: $1B
    add c                                         ; $402E: $81
    ld a, d                                       ; $402F: $7A
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    cpl                                           ; $4034: $2F
    nop                                           ; $4035: $00
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    dec sp                                        ; $4038: $3B
    nop                                           ; $4039: $00
    dec sp                                        ; $403A: $3B
    nop                                           ; $403B: $00
    nop                                           ; $403C: $00
    nop                                           ; $403D: $00
    inc bc                                        ; $403E: $03
    nop                                           ; $403F: $00
    ld c, $07                                     ; $4040: $0E $07
    dec c                                         ; $4042: $0D
    ld b, $69                                     ; $4043: $06 $69
    ld b, $0F                                     ; $4045: $06 $0F
    ld bc, $00EA                                  ; $4047: $01 $EA $00
    pop hl                                        ; $404A: $E1
    nop                                           ; $404B: $00
    dec c                                         ; $404C: $0D
    inc bc                                        ; $404D: $03
    ei                                            ; $404E: $FB
    rlca                                          ; $404F: $07
    adc $31                                       ; $4050: $CE $31
    db $FD                                        ; $4052: $FD
    ld [bc], a                                    ; $4053: $02
    cp $81                                        ; $4054: $FE $81
    sbc a                                         ; $4056: $9F
    nop                                           ; $4057: $00
    rra                                           ; $4058: $1F
    ld b, b                                       ; $4059: $40
    ld [hl], b                                    ; $405A: $70
    ret nz                                        ; $405B: $C0

    ld [c], a                                     ; $405C: $E2
    ret nz                                        ; $405D: $C0

    sub l                                         ; $405E: $95
    ret nz                                        ; $405F: $C0

    rst $38                                       ; $4060: $FF
    nop                                           ; $4061: $00
    ld a, a                                       ; $4062: $7F
    add b                                         ; $4063: $80
    cp e                                          ; $4064: $BB
    ld b, h                                       ; $4065: $44
    db $FD                                        ; $4066: $FD
    ld [bc], a                                    ; $4067: $02
    rst $38                                       ; $4068: $FF
    nop                                           ; $4069: $00
    nop                                           ; $406A: $00
    nop                                           ; $406B: $00
    cp a                                          ; $406C: $BF
    nop                                           ; $406D: $00
    rst $38                                       ; $406E: $FF
    nop                                           ; $406F: $00
    ldh [$1F], a                                  ; $4070: $E0 $1F
    pop af                                        ; $4072: $F1
    ld c, $FF                                     ; $4073: $0E $FF
    nop                                           ; $4075: $00
    cp $01                                        ; $4076: $FE $01
    rst $38                                       ; $4078: $FF
    nop                                           ; $4079: $00
    nop                                           ; $407A: $00
    nop                                           ; $407B: $00
    rst $38                                       ; $407C: $FF
    nop                                           ; $407D: $00
    rst $38                                       ; $407E: $FF
    nop                                           ; $407F: $00
    ld e, a                                       ; $4080: $5F
    cp a                                          ; $4081: $BF
    and e                                         ; $4082: $A3
    ld a, a                                       ; $4083: $7F
    ld d, b                                       ; $4084: $50
    rst $38                                       ; $4085: $FF
    nop                                           ; $4086: $00
    rst $38                                       ; $4087: $FF
    rst $38                                       ; $4088: $FF
    nop                                           ; $4089: $00
    nop                                           ; $408A: $00
    nop                                           ; $408B: $00
    rst $38                                       ; $408C: $FF
    nop                                           ; $408D: $00
    rst $38                                       ; $408E: $FF
    nop                                           ; $408F: $00
    rst $38                                       ; $4090: $FF
    rst $38                                       ; $4091: $FF
    rst $38                                       ; $4092: $FF
    rst $38                                       ; $4093: $FF
    rst $38                                       ; $4094: $FF
    rst $38                                       ; $4095: $FF
    rra                                           ; $4096: $1F
    rst $38                                       ; $4097: $FF
    ldh [$1F], a                                  ; $4098: $E0 $1F
    nop                                           ; $409A: $00
    nop                                           ; $409B: $00
    rst $38                                       ; $409C: $FF
    nop                                           ; $409D: $00
    rst $38                                       ; $409E: $FF
    nop                                           ; $409F: $00
    sub b                                         ; $40A0: $90
    ldh [$E8], a                                  ; $40A1: $E0 $E8
    ldh a, [$F2]                                  ; $40A3: $F0 $F2
    db $FC                                        ; $40A5: $FC
    ld sp, hl                                     ; $40A6: $F9
    cp $07                                        ; $40A7: $FE $07
    ld hl, sp+$00                                 ; $40A9: $F8 $00
    nop                                           ; $40AB: $00
    push af                                       ; $40AC: $F5
    nop                                           ; $40AD: $00
    ld a, [$FF00]                                 ; $40AE: $FA $00 $FF
    ld h, b                                       ; $40B1: $60
    rst $38                                       ; $40B2: $FF
    jr nz, @+$01                                  ; $40B3: $20 $FF

    jr nz, @+$01                                  ; $40B5: $20 $FF

    jr nc, @+$01                                  ; $40B7: $30 $FF

    rst $38                                       ; $40B9: $FF
    rst $38                                       ; $40BA: $FF
    rst $38                                       ; $40BB: $FF
    rst $38                                       ; $40BC: $FF
    add h                                         ; $40BD: $84
    rst $38                                       ; $40BE: $FF
    add h                                         ; $40BF: $84
    rst $38                                       ; $40C0: $FF
    db $10                                        ; $40C1: $10
    rst $38                                       ; $40C2: $FF
    db $10                                        ; $40C3: $10
    rst $38                                       ; $40C4: $FF
    db $10                                        ; $40C5: $10
    rst $38                                       ; $40C6: $FF
    db $10                                        ; $40C7: $10
    rst $38                                       ; $40C8: $FF
    rst $38                                       ; $40C9: $FF
    rst $38                                       ; $40CA: $FF
    rst $38                                       ; $40CB: $FF
    rst $38                                       ; $40CC: $FF

jr_060_40CD:
    inc b                                         ; $40CD: $04
    rst $38                                       ; $40CE: $FF
    inc b                                         ; $40CF: $04
    add b                                         ; $40D0: $80
    dec a                                         ; $40D1: $3D
    add b                                         ; $40D2: $80
    dec a                                         ; $40D3: $3D
    add b                                         ; $40D4: $80
    inc a                                         ; $40D5: $3C
    add b                                         ; $40D6: $80
    ld hl, $C7C0                                  ; $40D7: $21 $C0 $C7
    ldh [$EF], a                                  ; $40DA: $E0 $EF
    ldh [rIF], a                                  ; $40DC: $E0 $0F
    ldh [rIF], a                                  ; $40DE: $E0 $0F
    nop                                           ; $40E0: $00
    sub l                                         ; $40E1: $95
    nop                                           ; $40E2: $00
    inc sp                                        ; $40E3: $33
    nop                                           ; $40E4: $00
    ld [hl], a                                    ; $40E5: $77
    nop                                           ; $40E6: $00
    rst $30                                       ; $40E7: $F7
    nop                                           ; $40E8: $00
    and $00                                       ; $40E9: $E6 $00
    call $9200                                    ; $40EB: $CD $00 $92
    nop                                           ; $40EE: $00
    dec b                                         ; $40EF: $05
    ld [de], a                                    ; $40F0: $12
    ret z                                         ; $40F1: $C8

    ld b, $81                                     ; $40F2: $06 $81
    ld b, $21                                     ; $40F4: $06 $21
    ld [bc], a                                    ; $40F6: $02
    ld d, c                                       ; $40F7: $51
    ld [bc], a                                    ; $40F8: $02
    cp c                                          ; $40F9: $B9
    inc bc                                        ; $40FA: $03
    ld a, h                                       ; $40FB: $7C
    ld bc, $00FC                                  ; $40FC: $01 $FC $00
    cp $03                                        ; $40FF: $FE $03
    cp b                                          ; $4101: $B8
    dec c                                         ; $4102: $0D
    and d                                         ; $4103: $A2
    ld de, $2182                                  ; $4104: $11 $82 $21
    adc d                                         ; $4107: $8A
    pop bc                                        ; $4108: $C1
    ld a, [de]                                    ; $4109: $1A
    ld bc, $013A                                  ; $410A: $01 $3A $01
    ld a, [$FA00]                                 ; $410D: $FA $00 $FA
    rst $18                                       ; $4110: $DF
    inc b                                         ; $4111: $04
    adc a                                         ; $4112: $8F
    ld [hl], a                                    ; $4113: $77
    rra                                           ; $4114: $1F
    db $E3                                        ; $4115: $E3
    ccf                                           ; $4116: $3F
    adc h                                         ; $4117: $8C
    ld a, [hl]                                    ; $4118: $7E
    db $10                                        ; $4119: $10
    db $FC                                        ; $411A: $FC
    ld h, c                                       ; $411B: $61
    ldh a, [$83]                                  ; $411C: $F0 $83
    ldh [$0E], a                                  ; $411E: $E0 $0E
    rst $30                                       ; $4120: $F7
    rrca                                          ; $4121: $0F
    ld b, $0F                                     ; $4122: $06 $0F
    add sp, $0E                                   ; $4124: $E8 $0E
    ld hl, $66E0                                  ; $4126: $21 $E0 $66
    pop hl                                        ; $4129: $E1
    ret c                                         ; $412A: $D8

    rst $00                                       ; $412B: $C7
    jr nz, jr_060_40CD                            ; $412C: $20 $9F

    ld b, b                                       ; $412E: $40
    ccf                                           ; $412F: $3F
    rst $38                                       ; $4130: $FF
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    rst $38                                       ; $4135: $FF
    nop                                           ; $4136: $00
    rst $38                                       ; $4137: $FF
    nop                                           ; $4138: $00
    rst $38                                       ; $4139: $FF
    nop                                           ; $413A: $00
    rst $38                                       ; $413B: $FF
    nop                                           ; $413C: $00
    rst $38                                       ; $413D: $FF
    nop                                           ; $413E: $00
    rst $38                                       ; $413F: $FF
    rst $38                                       ; $4140: $FF
    add h                                         ; $4141: $84
    rst $38                                       ; $4142: $FF
    add h                                         ; $4143: $84
    rst $38                                       ; $4144: $FF
    rst $38                                       ; $4145: $FF
    rst $38                                       ; $4146: $FF
    ccf                                           ; $4147: $3F
    rst $38                                       ; $4148: $FF
    scf                                           ; $4149: $37
    rst $38                                       ; $414A: $FF
    inc [hl]                                      ; $414B: $34
    rst $38                                       ; $414C: $FF
    inc [hl]                                      ; $414D: $34
    rst $38                                       ; $414E: $FF
    inc [hl]                                      ; $414F: $34
    rst $38                                       ; $4150: $FF
    inc b                                         ; $4151: $04
    rst $38                                       ; $4152: $FF
    inc b                                         ; $4153: $04
    rst $38                                       ; $4154: $FF
    rst $38                                       ; $4155: $FF
    rst $38                                       ; $4156: $FF
    rst $38                                       ; $4157: $FF
    rst $38                                       ; $4158: $FF
    rst $38                                       ; $4159: $FF
    rst $38                                       ; $415A: $FF
    ld b, b                                       ; $415B: $40
    rst $38                                       ; $415C: $FF
    ld b, b                                       ; $415D: $40
    rst $38                                       ; $415E: $FF
    ld b, b                                       ; $415F: $40
    ldh [$0C], a                                  ; $4160: $E0 $0C
    ldh [$09], a                                  ; $4162: $E0 $09
    ldh [$E1], a                                  ; $4164: $E0 $E1
    ldh [$E5], a                                  ; $4166: $E0 $E5
    ldh [$D7], a                                  ; $4168: $E0 $D7
    ldh [$5D], a                                  ; $416A: $E0 $5D
    ldh [$5D], a                                  ; $416C: $E0 $5D
    ldh [rHDMA5], a                               ; $416E: $E0 $55
    nop                                           ; $4170: $00
    ld b, a                                       ; $4171: $47
    nop                                           ; $4172: $00
    ld c, a                                       ; $4173: $4F
    nop                                           ; $4174: $00
    ld c, a                                       ; $4175: $4F
    nop                                           ; $4176: $00
    ld c, a                                       ; $4177: $4F
    nop                                           ; $4178: $00
    ld b, a                                       ; $4179: $47
    nop                                           ; $417A: $00
    jp $C138                                      ; $417B: $C3 $38 $C1


    inc a                                         ; $417E: $3C
    ld b, b                                       ; $417F: $40
    ld bc, $0678                                  ; $4180: $01 $78 $06
    or b                                          ; $4183: $B0
    ld [$06C1], sp                                ; $4184: $08 $C1 $06
    pop af                                        ; $4187: $F1
    inc bc                                        ; $4188: $03
    add sp, $00                                   ; $4189: $E8 $00
    pop de                                        ; $418B: $D1
    nop                                           ; $418C: $00
    and a                                         ; $418D: $A7
    nop                                           ; $418E: $00
    ld c, a                                       ; $418F: $4F
    pop bc                                        ; $4190: $C1
    inc e                                         ; $4191: $1C
    ld b, [hl]                                    ; $4192: $46
    or b                                          ; $4193: $B0
    ld c, l                                       ; $4194: $4D
    and b                                         ; $4195: $A0
    jp c, $F400                                   ; $4196: $DA $00 $F4

    nop                                           ; $4199: $00
    nop                                           ; $419A: $00
    ldh a, [rP1]                                  ; $419B: $F0 $00
    ld hl, sp+$00                                 ; $419D: $F8 $00
    db $FC                                        ; $419F: $FC
    rst $38                                       ; $41A0: $FF
    scf                                           ; $41A1: $37
    rst $38                                       ; $41A2: $FF
    inc [hl]                                      ; $41A3: $34
    rst $38                                       ; $41A4: $FF
    rst $38                                       ; $41A5: $FF
    rst $38                                       ; $41A6: $FF
    rst $38                                       ; $41A7: $FF
    rst $38                                       ; $41A8: $FF
    rst $38                                       ; $41A9: $FF
    rst $38                                       ; $41AA: $FF
    rst $38                                       ; $41AB: $FF
    rst $38                                       ; $41AC: $FF
    rst $38                                       ; $41AD: $FF
    rst $38                                       ; $41AE: $FF
    ld hl, sp-$01                                 ; $41AF: $F8 $FF
    rst $38                                       ; $41B1: $FF
    rst $38                                       ; $41B2: $FF
    ld bc, $E1FF                                  ; $41B3: $01 $FF $E1
    rst $38                                       ; $41B6: $FF
    rst $38                                       ; $41B7: $FF
    rst $38                                       ; $41B8: $FF
    rst $38                                       ; $41B9: $FF
    rst $38                                       ; $41BA: $FF
    rst $38                                       ; $41BB: $FF
    rst $38                                       ; $41BC: $FF
    ret nz                                        ; $41BD: $C0

    rst $38                                       ; $41BE: $FF
    nop                                           ; $41BF: $00
    ldh [$DD], a                                  ; $41C0: $E0 $DD
    ldh [rHDMA4], a                               ; $41C2: $E0 $54
    ldh [$50], a                                  ; $41C4: $E0 $50
    ldh [$50], a                                  ; $41C6: $E0 $50
    ldh [$C0], a                                  ; $41C8: $E0 $C0
    add b                                         ; $41CA: $80
    nop                                           ; $41CB: $00
    ret nz                                        ; $41CC: $C0

    nop                                           ; $41CD: $00
    rst $38                                       ; $41CE: $FF
    nop                                           ; $41CF: $00
    ld a, $40                                     ; $41D0: $3E $40
    rra                                           ; $41D2: $1F
    nop                                           ; $41D3: $00
    inc bc                                        ; $41D4: $03
    nop                                           ; $41D5: $00
    inc d                                         ; $41D6: $14
    nop                                           ; $41D7: $00
    dec hl                                        ; $41D8: $2B
    nop                                           ; $41D9: $00
    rla                                           ; $41DA: $17
    ld bc, $027F                                  ; $41DB: $01 $7F $02
    rst $38                                       ; $41DE: $FF
    rst $38                                       ; $41DF: $FF
    add b                                         ; $41E0: $80
    ld a, [hl-]                                   ; $41E1: $3A
    ld b, b                                       ; $41E2: $40
    dec b                                         ; $41E3: $05
    or b                                          ; $41E4: $B0
    nop                                           ; $41E5: $00
    db $FC                                        ; $41E6: $FC
    nop                                           ; $41E7: $00
    ld a, a                                       ; $41E8: $7F
    nop                                           ; $41E9: $00
    rst $38                                       ; $41EA: $FF
    ld d, l                                       ; $41EB: $55
    rst $38                                       ; $41EC: $FF
    xor d                                         ; $41ED: $AA
    rst $38                                       ; $41EE: $FF
    rst $38                                       ; $41EF: $FF
    nop                                           ; $41F0: $00
    sbc a                                         ; $41F1: $9F
    nop                                           ; $41F2: $00
    ccf                                           ; $41F3: $3F
    nop                                           ; $41F4: $00
    ld a, a                                       ; $41F5: $7F
    nop                                           ; $41F6: $00
    nop                                           ; $41F7: $00
    ld hl, sp+$00                                 ; $41F8: $F8 $00
    rst $38                                       ; $41FA: $FF
    ld d, b                                       ; $41FB: $50
    rst $38                                       ; $41FC: $FF
    xor h                                         ; $41FD: $AC
    rst $38                                       ; $41FE: $FF
    rst $38                                       ; $41FF: $FF
    nop                                           ; $4200: $00
    db $FC                                        ; $4201: $FC
    nop                                           ; $4202: $00
    db $FD                                        ; $4203: $FD
    nop                                           ; $4204: $00
    db $FD                                        ; $4205: $FD
    nop                                           ; $4206: $00
    ld sp, hl                                     ; $4207: $F9
    nop                                           ; $4208: $00
    ld bc, $0080                                  ; $4209: $01 $80 $00
    ldh a, [rP1]                                  ; $420C: $F0 $00
    rst $38                                       ; $420E: $FF
    nop                                           ; $420F: $00
    nop                                           ; $4210: $00
    rst $18                                       ; $4211: $DF
    nop                                           ; $4212: $00
    rst $08                                       ; $4213: $CF
    nop                                           ; $4214: $00
    db $E3                                        ; $4215: $E3
    nop                                           ; $4216: $00
    pop af                                        ; $4217: $F1
    nop                                           ; $4218: $00
    ld hl, sp+$00                                 ; $4219: $F8 $00
    ld a, [c]                                     ; $421B: $F2
    nop                                           ; $421C: $00
    dec b                                         ; $421D: $05
    nop                                           ; $421E: $00
    nop                                           ; $421F: $00
    nop                                           ; $4220: $00
    rst $38                                       ; $4221: $FF
    nop                                           ; $4222: $00
    rst $38                                       ; $4223: $FF
    nop                                           ; $4224: $00
    rst $38                                       ; $4225: $FF
    nop                                           ; $4226: $00
    rst $38                                       ; $4227: $FF
    nop                                           ; $4228: $00
    rst $38                                       ; $4229: $FF
    nop                                           ; $422A: $00
    ld a, a                                       ; $422B: $7F
    nop                                           ; $422C: $00
    rra                                           ; $422D: $1F
    nop                                           ; $422E: $00
    cpl                                           ; $422F: $2F
    nop                                           ; $4230: $00
    ldh [rP1], a                                  ; $4231: $E0 $00
    ld hl, sp+$00                                 ; $4233: $F8 $00
    db $FD                                        ; $4235: $FD
    nop                                           ; $4236: $00
    cp $00                                        ; $4237: $FE $00
    rst $38                                       ; $4239: $FF
    nop                                           ; $423A: $00
    rst $38                                       ; $423B: $FF
    nop                                           ; $423C: $00
    rst $38                                       ; $423D: $FF
    nop                                           ; $423E: $00
    rst $38                                       ; $423F: $FF
    nop                                           ; $4240: $00
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    nop                                           ; $4244: $00
    add b                                         ; $4245: $80
    nop                                           ; $4246: $00
    rst $20                                       ; $4247: $E7
    nop                                           ; $4248: $00
    ld a, c                                       ; $4249: $79
    nop                                           ; $424A: $00
    ld a, $00                                     ; $424B: $3E $00
    sbc a                                         ; $424D: $9F
    nop                                           ; $424E: $00
    rst $18                                       ; $424F: $DF
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    nop                                           ; $4256: $00
    nop                                           ; $4257: $00
    nop                                           ; $4258: $00
    ldh a, [rP1]                                  ; $4259: $F0 $00
    ld a, [hl]                                    ; $425B: $7E
    nop                                           ; $425C: $00
    cp a                                          ; $425D: $BF
    nop                                           ; $425E: $00
    rst $08                                       ; $425F: $CF
    ldh a, [rP1]                                  ; $4260: $F0 $00
    cp $E0                                        ; $4262: $FE $E0
    rst $38                                       ; $4264: $FF
    ld hl, sp-$01                                 ; $4265: $F8 $FF
    cp $FF                                        ; $4267: $FE $FF
    rst $38                                       ; $4269: $FF
    rst $38                                       ; $426A: $FF
    rst $38                                       ; $426B: $FF
    rst $38                                       ; $426C: $FF
    rst $38                                       ; $426D: $FF
    rst $38                                       ; $426E: $FF
    rst $38                                       ; $426F: $FF
    nop                                           ; $4270: $00
    dec d                                         ; $4271: $15
    nop                                           ; $4272: $00
    ld a, [bc]                                    ; $4273: $0A
    add b                                         ; $4274: $80
    dec b                                         ; $4275: $05
    ldh a, [rSC]                                  ; $4276: $F0 $02
    ld hl, sp-$80                                 ; $4278: $F8 $80
    db $FC                                        ; $427A: $FC
    ldh a, [rIE]                                  ; $427B: $F0 $FF
    ld hl, sp-$01                                 ; $427D: $F8 $FF
    cp $00                                        ; $427F: $FE $00
    ccf                                           ; $4281: $3F
    nop                                           ; $4282: $00
    add e                                         ; $4283: $83
    nop                                           ; $4284: $00
    nop                                           ; $4285: $00
    nop                                           ; $4286: $00
    add b                                         ; $4287: $80
    stop                                          ; $4288: $10 $00
    ld a, [hl+]                                   ; $428A: $2A
    nop                                           ; $428B: $00
    ld d, l                                       ; $428C: $55
    nop                                           ; $428D: $00
    xor d                                         ; $428E: $AA
    nop                                           ; $428F: $00
    nop                                           ; $4290: $00
    rst $28                                       ; $4291: $EF
    nop                                           ; $4292: $00
    rst $30                                       ; $4293: $F7
    nop                                           ; $4294: $00
    ld h, e                                       ; $4295: $63
    inc b                                         ; $4296: $04
    ld bc, $0002                                  ; $4297: $01 $02 $00
    xor e                                         ; $429A: $AB
    nop                                           ; $429B: $00
    ld d, l                                       ; $429C: $55
    nop                                           ; $429D: $00
    rst $38                                       ; $429E: $FF
    nop                                           ; $429F: $00
    nop                                           ; $42A0: $00
    di                                            ; $42A1: $F3
    nop                                           ; $42A2: $00
    db $FD                                        ; $42A3: $FD
    nop                                           ; $42A4: $00
    add b                                         ; $42A5: $80
    nop                                           ; $42A6: $00
    ld b, b                                       ; $42A7: $40
    rlca                                          ; $42A8: $07
    and b                                         ; $42A9: $A0
    rra                                           ; $42AA: $1F
    nop                                           ; $42AB: $00
    rst $38                                       ; $42AC: $FF
    ld bc, $06FF                                  ; $42AD: $01 $FF $06
    rra                                           ; $42B0: $1F
    add b                                         ; $42B1: $80
    rra                                           ; $42B2: $1F
    rlca                                          ; $42B3: $07
    ccf                                           ; $42B4: $3F
    rrca                                          ; $42B5: $0F
    rst $38                                       ; $42B6: $FF
    rrca                                          ; $42B7: $0F
    rst $38                                       ; $42B8: $FF
    rlca                                          ; $42B9: $07
    rst $38                                       ; $42BA: $FF
    rlca                                          ; $42BB: $07
    rst $38                                       ; $42BC: $FF
    ld b, a                                       ; $42BD: $47
    rst $38                                       ; $42BE: $FF
    xor a                                         ; $42BF: $AF
    rrca                                          ; $42C0: $0F
    nop                                           ; $42C1: $00
    jr jr_060_42CB                                ; $42C2: $18 $07

    jr nc, jr_060_42D5                            ; $42C4: $30 $0F

    ld h, b                                       ; $42C6: $60
    rra                                           ; $42C7: $1F
    ld b, b                                       ; $42C8: $40
    ccf                                           ; $42C9: $3F
    ld b, b                                       ; $42CA: $40

jr_060_42CB:
    ccf                                           ; $42CB: $3F
    ld a, a                                       ; $42CC: $7F
    nop                                           ; $42CD: $00
    ld a, a                                       ; $42CE: $7F
    nop                                           ; $42CF: $00
    rst $38                                       ; $42D0: $FF
    nop                                           ; $42D1: $00
    ld bc, $01FE                                  ; $42D2: $01 $FE $01

jr_060_42D5:
    cp $03                                        ; $42D5: $FE $03
    db $FC                                        ; $42D7: $FC
    inc bc                                        ; $42D8: $03
    db $FC                                        ; $42D9: $FC
    rlca                                          ; $42DA: $07
    ld hl, sp-$01                                 ; $42DB: $F8 $FF
    ld bc, $05FF                                  ; $42DD: $01 $FF $05
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    nop                                           ; $42E2: $00
    nop                                           ; $42E3: $00
    rst $38                                       ; $42E4: $FF
    nop                                           ; $42E5: $00
    nop                                           ; $42E6: $00
    rst $38                                       ; $42E7: $FF
    nop                                           ; $42E8: $00
    rst $38                                       ; $42E9: $FF
    rst $38                                       ; $42EA: $FF
    nop                                           ; $42EB: $00
    rst $38                                       ; $42EC: $FF
    nop                                           ; $42ED: $00
    rst $38                                       ; $42EE: $FF
    rst $38                                       ; $42EF: $FF
    rst $38                                       ; $42F0: $FF
    nop                                           ; $42F1: $00
    nop                                           ; $42F2: $00
    nop                                           ; $42F3: $00
    rst $38                                       ; $42F4: $FF
    nop                                           ; $42F5: $00
    rst $38                                       ; $42F6: $FF
    nop                                           ; $42F7: $00
    inc h                                         ; $42F8: $24
    db $DB                                        ; $42F9: $DB
    inc h                                         ; $42FA: $24
    db $DB                                        ; $42FB: $DB
    inc h                                         ; $42FC: $24
    db $DB                                        ; $42FD: $DB
    inc h                                         ; $42FE: $24
    db $DB                                        ; $42FF: $DB
    pop af                                        ; $4300: $F1
    ld c, $E8                                     ; $4301: $0E $E8
    rla                                           ; $4303: $17
    or $09                                        ; $4304: $F6 $09
    dec sp                                        ; $4306: $3B
    inc b                                         ; $4307: $04
    ld e, [hl]                                    ; $4308: $5E
    ld bc, $039D                                  ; $4309: $01 $9D $03
    ld c, e                                       ; $430C: $4B
    rlca                                          ; $430D: $07
    and a                                         ; $430E: $A7
    rlca                                          ; $430F: $07
    rst $38                                       ; $4310: $FF
    nop                                           ; $4311: $00
    rst $38                                       ; $4312: $FF
    nop                                           ; $4313: $00
    ld a, a                                       ; $4314: $7F
    add b                                         ; $4315: $80
    rst $38                                       ; $4316: $FF
    nop                                           ; $4317: $00
    rst $38                                       ; $4318: $FF
    rst $38                                       ; $4319: $FF
    rst $38                                       ; $431A: $FF
    rst $38                                       ; $431B: $FF
    rst $38                                       ; $431C: $FF
    rst $38                                       ; $431D: $FF
    cp $FF                                        ; $431E: $FE $FF
    ld hl, sp+$07                                 ; $4320: $F8 $07
    db $F4                                        ; $4322: $F4
    dec bc                                        ; $4323: $0B
    ei                                            ; $4324: $FB
    inc b                                         ; $4325: $04
    push af                                       ; $4326: $F5
    ld a, [bc]                                    ; $4327: $0A
    ld a, e                                       ; $4328: $7B
    add h                                         ; $4329: $84
    db $FD                                        ; $432A: $FD
    add d                                         ; $432B: $82
    ld a, a                                       ; $432C: $7F
    add b                                         ; $432D: $80
    rst $38                                       ; $432E: $FF
    rst $38                                       ; $432F: $FF
    ld hl, sp+$00                                 ; $4330: $F8 $00
    inc e                                         ; $4332: $1C
    ldh [rTMA], a                                 ; $4333: $E0 $06
    ld hl, sp+$06                                 ; $4335: $F8 $06
    ld hl, sp+$02                                 ; $4337: $F8 $02
    db $FC                                        ; $4339: $FC
    add d                                         ; $433A: $82
    ld a, h                                       ; $433B: $7C
    rst $38                                       ; $433C: $FF
    nop                                           ; $433D: $00
    rst $38                                       ; $433E: $FF
    rst $38                                       ; $433F: $FF
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    nop                                           ; $4344: $00
    nop                                           ; $4345: $00
    nop                                           ; $4346: $00
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    nop                                           ; $434A: $00
    nop                                           ; $434B: $00
    rst $38                                       ; $434C: $FF
    nop                                           ; $434D: $00
    rst $38                                       ; $434E: $FF
    rst $38                                       ; $434F: $FF
    ld d, b                                       ; $4350: $50
    rlca                                          ; $4351: $07
    and a                                         ; $4352: $A7
    nop                                           ; $4353: $00
    ld b, a                                       ; $4354: $47
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    add b                                         ; $4358: $80
    nop                                           ; $4359: $00
    ld bc, $5300                                  ; $435A: $01 $00 $53
    nop                                           ; $435D: $00
    xor e                                         ; $435E: $AB
    nop                                           ; $435F: $00
    nop                                           ; $4360: $00
    cp $FE                                        ; $4361: $FE $FE
    nop                                           ; $4363: $00
    cp $00                                        ; $4364: $FE $00
    nop                                           ; $4366: $00
    nop                                           ; $4367: $00
    nop                                           ; $4368: $00
    nop                                           ; $4369: $00
    db $F4                                        ; $436A: $F4
    nop                                           ; $436B: $00
    ld a, [$F400]                                 ; $436C: $FA $00 $F4
    nop                                           ; $436F: $00
    nop                                           ; $4370: $00
    rst $38                                       ; $4371: $FF
    dec b                                         ; $4372: $05
    nop                                           ; $4373: $00
    cpl                                           ; $4374: $2F
    nop                                           ; $4375: $00
    ld e, a                                       ; $4376: $5F
    nop                                           ; $4377: $00
    ld a, [hl+]                                   ; $4378: $2A
    nop                                           ; $4379: $00
    ld d, a                                       ; $437A: $57
    nop                                           ; $437B: $00
    dec hl                                        ; $437C: $2B
    nop                                           ; $437D: $00
    nop                                           ; $437E: $00
    nop                                           ; $437F: $00
    nop                                           ; $4380: $00
    rst $38                                       ; $4381: $FF
    rst $38                                       ; $4382: $FF
    nop                                           ; $4383: $00
    rst $38                                       ; $4384: $FF
    nop                                           ; $4385: $00
    rst $38                                       ; $4386: $FF
    nop                                           ; $4387: $00
    rst $38                                       ; $4388: $FF
    nop                                           ; $4389: $00
    rst $38                                       ; $438A: $FF
    nop                                           ; $438B: $00
    rst $38                                       ; $438C: $FF
    nop                                           ; $438D: $00
    nop                                           ; $438E: $00
    nop                                           ; $438F: $00
    pop de                                        ; $4390: $D1
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    rra                                           ; $4394: $1F
    ldh [rIF], a                                  ; $4395: $E0 $0F
    ldh a, [$1F]                                  ; $4397: $F0 $1F
    ldh [$1F], a                                  ; $4399: $E0 $1F
    ldh [rNR41], a                                ; $439B: $E0 $20
    rst $18                                       ; $439D: $DF
    nop                                           ; $439E: $00
    rst $38                                       ; $439F: $FF
    ld a, [$0000]                                 ; $43A0: $FA $00 $00
    nop                                           ; $43A3: $00
    rst $38                                       ; $43A4: $FF
    nop                                           ; $43A5: $00
    rst $38                                       ; $43A6: $FF
    nop                                           ; $43A7: $00
    cp $01                                        ; $43A8: $FE $01
    cp $01                                        ; $43AA: $FE $01
    inc b                                         ; $43AC: $04
    ei                                            ; $43AD: $FB
    inc b                                         ; $43AE: $04
    ei                                            ; $43AF: $FB
    ld a, a                                       ; $43B0: $7F
    nop                                           ; $43B1: $00
    nop                                           ; $43B2: $00
    nop                                           ; $43B3: $00
    rst $38                                       ; $43B4: $FF
    nop                                           ; $43B5: $00
    rst $38                                       ; $43B6: $FF
    nop                                           ; $43B7: $00
    nop                                           ; $43B8: $00
    rst $38                                       ; $43B9: $FF
    nop                                           ; $43BA: $00
    rst $38                                       ; $43BB: $FF
    nop                                           ; $43BC: $00
    rst $38                                       ; $43BD: $FF
    nop                                           ; $43BE: $00
    rst $38                                       ; $43BF: $FF
    rst $38                                       ; $43C0: $FF
    nop                                           ; $43C1: $00
    nop                                           ; $43C2: $00
    nop                                           ; $43C3: $00
    rst $38                                       ; $43C4: $FF
    nop                                           ; $43C5: $00
    rst $38                                       ; $43C6: $FF
    nop                                           ; $43C7: $00
    nop                                           ; $43C8: $00
    rst $38                                       ; $43C9: $FF
    nop                                           ; $43CA: $00
    rst $38                                       ; $43CB: $FF
    nop                                           ; $43CC: $00
    rst $38                                       ; $43CD: $FF
    nop                                           ; $43CE: $00
    rst $38                                       ; $43CF: $FF
    ld a, a                                       ; $43D0: $7F
    nop                                           ; $43D1: $00
    ld a, a                                       ; $43D2: $7F
    ccf                                           ; $43D3: $3F
    ld a, a                                       ; $43D4: $7F
    ccf                                           ; $43D5: $3F
    ccf                                           ; $43D6: $3F
    jr nz, jr_060_4418                            ; $43D7: $20 $3F

    jr nz, jr_060_441A                            ; $43D9: $20 $3F

    jr nz, jr_060_441C                            ; $43DB: $20 $3F

    jr nz, @+$01                                  ; $43DD: $20 $FF

    jr nz, @+$01                                  ; $43DF: $20 $FF

    rlca                                          ; $43E1: $07
    rst $38                                       ; $43E2: $FF
    rst $38                                       ; $43E3: $FF
    rst $38                                       ; $43E4: $FF
    rst $38                                       ; $43E5: $FF
    rst $38                                       ; $43E6: $FF
    rrca                                          ; $43E7: $0F
    rst $28                                       ; $43E8: $EF
    rrca                                          ; $43E9: $0F
    rst $28                                       ; $43EA: $EF
    rrca                                          ; $43EB: $0F
    xor $0C                                       ; $43EC: $EE $0C
    db $EC                                        ; $43EE: $EC
    inc c                                         ; $43EF: $0C
    rst $38                                       ; $43F0: $FF
    add b                                         ; $43F1: $80
    rst $38                                       ; $43F2: $FF
    ld b, b                                       ; $43F3: $40
    rst $38                                       ; $43F4: $FF
    and b                                         ; $43F5: $A0
    rst $38                                       ; $43F6: $FF
    ld b, b                                       ; $43F7: $40
    rst $38                                       ; $43F8: $FF
    xor b                                         ; $43F9: $A8
    rst $38                                       ; $43FA: $FF
    rst $38                                       ; $43FB: $FF
    nop                                           ; $43FC: $00
    nop                                           ; $43FD: $00
    nop                                           ; $43FE: $00
    nop                                           ; $43FF: $00
    rst $38                                       ; $4400: $FF
    nop                                           ; $4401: $00
    rst $38                                       ; $4402: $FF
    nop                                           ; $4403: $00
    rst $38                                       ; $4404: $FF
    nop                                           ; $4405: $00
    rst $38                                       ; $4406: $FF
    nop                                           ; $4407: $00
    rst $38                                       ; $4408: $FF
    nop                                           ; $4409: $00
    rst $38                                       ; $440A: $FF
    rst $38                                       ; $440B: $FF
    nop                                           ; $440C: $00
    nop                                           ; $440D: $00
    nop                                           ; $440E: $00
    nop                                           ; $440F: $00
    rst $38                                       ; $4410: $FF
    ccf                                           ; $4411: $3F
    rst $38                                       ; $4412: $FF
    rst $38                                       ; $4413: $FF
    ldh [$C0], a                                  ; $4414: $E0 $C0
    ret nz                                        ; $4416: $C0

    add b                                         ; $4417: $80

jr_060_4418:
    rst $38                                       ; $4418: $FF
    ret nz                                        ; $4419: $C0

jr_060_441A:
    rst $38                                       ; $441A: $FF
    ret nz                                        ; $441B: $C0

jr_060_441C:
    rst $38                                       ; $441C: $FF
    ret nz                                        ; $441D: $C0

    rst $38                                       ; $441E: $FF
    ret nz                                        ; $441F: $C0

    ld sp, hl                                     ; $4420: $F9
    ld hl, sp-$05                                 ; $4421: $F8 $FB
    ldh a, [$03]                                  ; $4423: $F0 $03
    nop                                           ; $4425: $00
    rlca                                          ; $4426: $07
    ld bc, $01F7                                  ; $4427: $01 $F7 $01
    rst $30                                       ; $442A: $F7
    inc bc                                        ; $442B: $03
    rst $30                                       ; $442C: $F7
    inc bc                                        ; $442D: $03
    rst $38                                       ; $442E: $FF
    inc bc                                        ; $442F: $03
    rst $38                                       ; $4430: $FF
    adc b                                         ; $4431: $88
    rst $38                                       ; $4432: $FF
    adc b                                         ; $4433: $88
    rst $38                                       ; $4434: $FF
    adc b                                         ; $4435: $88
    rst $38                                       ; $4436: $FF
    rst $38                                       ; $4437: $FF
    rst $38                                       ; $4438: $FF
    rst $38                                       ; $4439: $FF
    rst $38                                       ; $443A: $FF
    push de                                       ; $443B: $D5
    rst $38                                       ; $443C: $FF
    xor b                                         ; $443D: $A8
    rst $38                                       ; $443E: $FF
    ld b, b                                       ; $443F: $40
    rst $38                                       ; $4440: $FF
    jr nz, @+$01                                  ; $4441: $20 $FF

    jr nz, @+$01                                  ; $4443: $20 $FF

    jr nz, @+$01                                  ; $4445: $20 $FF

    rst $38                                       ; $4447: $FF
    rst $38                                       ; $4448: $FF
    rst $38                                       ; $4449: $FF
    rst $38                                       ; $444A: $FF
    rrca                                          ; $444B: $0F
    db $FC                                        ; $444C: $FC
    inc a                                         ; $444D: $3C
    ei                                            ; $444E: $FB
    ldh a, [rIE]                                  ; $444F: $F0 $FF
    ld b, b                                       ; $4451: $40
    rst $38                                       ; $4452: $FF
    ld b, b                                       ; $4453: $40
    rst $38                                       ; $4454: $FF
    ld b, b                                       ; $4455: $40
    rst $38                                       ; $4456: $FF
    rst $38                                       ; $4457: $FF
    rst $38                                       ; $4458: $FF
    rst $38                                       ; $4459: $FF
    di                                            ; $445A: $F3
    ldh [$EF], a                                  ; $445B: $E0 $EF
    ld b, b                                       ; $445D: $40
    rst $38                                       ; $445E: $FF
    ld b, b                                       ; $445F: $40
    rst $38                                       ; $4460: $FF
    add c                                         ; $4461: $81
    rst $38                                       ; $4462: $FF
    add c                                         ; $4463: $81
    rst $38                                       ; $4464: $FF
    add c                                         ; $4465: $81
    rst $38                                       ; $4466: $FF
    rst $38                                       ; $4467: $FF
    db $DD                                        ; $4468: $DD
    adc b                                         ; $4469: $88
    xor $84                                       ; $446A: $EE $84
    rst $38                                       ; $446C: $FF
    ld b, h                                       ; $446D: $44
    rst $38                                       ; $446E: $FF
    ld a, [hl]                                    ; $446F: $7E
    rst $38                                       ; $4470: $FF
    nop                                           ; $4471: $00
    rst $38                                       ; $4472: $FF
    nop                                           ; $4473: $00
    rst $38                                       ; $4474: $FF
    nop                                           ; $4475: $00
    rst $38                                       ; $4476: $FF
    rst $38                                       ; $4477: $FF
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    rst $38                                       ; $447A: $FF
    nop                                           ; $447B: $00
    rst $38                                       ; $447C: $FF
    nop                                           ; $447D: $00
    rst $38                                       ; $447E: $FF
    nop                                           ; $447F: $00
    rst $38                                       ; $4480: $FF
    ldh [rIE], a                                  ; $4481: $E0 $FF
    rst $18                                       ; $4483: $DF
    rst $38                                       ; $4484: $FF
    ldh a, [rIE]                                  ; $4485: $F0 $FF
    rst $28                                       ; $4487: $EF
    rst $38                                       ; $4488: $FF
    ldh [rIE], a                                  ; $4489: $E0 $FF
    ldh a, [rIE]                                  ; $448B: $F0 $FF
    rst $38                                       ; $448D: $FF
    rst $38                                       ; $448E: $FF
    ldh a, [rIE]                                  ; $448F: $F0 $FF
    rlca                                          ; $4491: $07
    rst $38                                       ; $4492: $FF
    ei                                            ; $4493: $FB
    rst $38                                       ; $4494: $FF
    ld a, [bc]                                    ; $4495: $0A
    rst $38                                       ; $4496: $FF
    di                                            ; $4497: $F3
    rst $38                                       ; $4498: $FF
    ld d, $FF                                     ; $4499: $16 $FF
    rla                                           ; $449B: $17
    rst $38                                       ; $449C: $FF
    ld a, [$0BFF]                                 ; $449D: $FA $FF $0B
    rst $38                                       ; $44A0: $FF
    add b                                         ; $44A1: $80
    rst $38                                       ; $44A2: $FF
    ld b, b                                       ; $44A3: $40
    rst $38                                       ; $44A4: $FF
    add b                                         ; $44A5: $80
    rst $38                                       ; $44A6: $FF
    nop                                           ; $44A7: $00
    rst $38                                       ; $44A8: $FF
    add b                                         ; $44A9: $80

jr_060_44AA:
    rst $38                                       ; $44AA: $FF
    nop                                           ; $44AB: $00
    rst $38                                       ; $44AC: $FF
    add b                                         ; $44AD: $80
    rst $38                                       ; $44AE: $FF
    ld bc, $03FF                                  ; $44AF: $01 $FF $03
    rst $38                                       ; $44B2: $FF
    rlca                                          ; $44B3: $07
    cp $0C                                        ; $44B4: $FE $0C
    rst $38                                       ; $44B6: $FF
    inc de                                        ; $44B7: $13
    push af                                       ; $44B8: $F5
    jr nz, jr_060_44AA                            ; $44B9: $20 $EF

    ld b, b                                       ; $44BB: $40
    rst $38                                       ; $44BC: $FF
    or b                                          ; $44BD: $B0
    rst $18                                       ; $44BE: $DF
    adc l                                         ; $44BF: $8D
    rst $18                                       ; $44C0: $DF
    ret z                                         ; $44C1: $C8

    ccf                                           ; $44C2: $3F
    inc b                                         ; $44C3: $04
    rst $38                                       ; $44C4: $FF
    inc bc                                        ; $44C5: $03
    rst $38                                       ; $44C6: $FF
    rlca                                          ; $44C7: $07
    rst $38                                       ; $44C8: $FF
    sbc a                                         ; $44C9: $9F
    rst $38                                       ; $44CA: $FF
    ld a, a                                       ; $44CB: $7F
    rst $38                                       ; $44CC: $FF
    rst $38                                       ; $44CD: $FF
    rst $38                                       ; $44CE: $FF
    rst $38                                       ; $44CF: $FF
    sbc d                                         ; $44D0: $9A
    ld h, l                                       ; $44D1: $65
    and h                                         ; $44D2: $A4
    ld e, e                                       ; $44D3: $5B
    ld c, c                                       ; $44D4: $49
    or [hl]                                       ; $44D5: $B6
    ld [de], a                                    ; $44D6: $12
    db $ED                                        ; $44D7: $ED
    xor c                                         ; $44D8: $A9
    ld d, [hl]                                    ; $44D9: $56
    inc b                                         ; $44DA: $04
    ei                                            ; $44DB: $FB
    ld d, c                                       ; $44DC: $51
    xor [hl]                                      ; $44DD: $AE
    inc h                                         ; $44DE: $24
    db $DB                                        ; $44DF: $DB
    and h                                         ; $44E0: $A4
    ld e, e                                       ; $44E1: $5B
    db $10                                        ; $44E2: $10
    rst $28                                       ; $44E3: $EF

jr_060_44E4:
    ld b, b                                       ; $44E4: $40
    cp a                                          ; $44E5: $BF
    sub d                                         ; $44E6: $92
    ld l, l                                       ; $44E7: $6D
    ld b, b                                       ; $44E8: $40
    cp a                                          ; $44E9: $BF
    sub b                                         ; $44EA: $90
    ld l, a                                       ; $44EB: $6F
    ld b, b                                       ; $44EC: $40
    cp a                                          ; $44ED: $BF
    nop                                           ; $44EE: $00
    rst $38                                       ; $44EF: $FF
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    nop                                           ; $44F2: $00
    nop                                           ; $44F3: $00
    nop                                           ; $44F4: $00
    nop                                           ; $44F5: $00
    ld bc, $0200                                  ; $44F6: $01 $00 $02
    ld bc, $0103                                  ; $44F9: $01 $03 $01
    cp $01                                        ; $44FC: $FE $01
    rst $38                                       ; $44FE: $FF
    rst $38                                       ; $44FF: $FF
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    rst $38                                       ; $4506: $FF
    nop                                           ; $4507: $00
    rst $38                                       ; $4508: $FF
    rst $38                                       ; $4509: $FF
    rst $38                                       ; $450A: $FF
    rst $38                                       ; $450B: $FF
    rst $38                                       ; $450C: $FF
    rst $38                                       ; $450D: $FF
    ld a, a                                       ; $450E: $7F
    rst $38                                       ; $450F: $FF
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    ret nz                                        ; $4516: $C0

    nop                                           ; $4517: $00
    ld l, d                                       ; $4518: $6A
    add b                                         ; $4519: $80
    or b                                          ; $451A: $B0
    ret nz                                        ; $451B: $C0

    ret nc                                        ; $451C: $D0

    ldh [$F0], a                                  ; $451D: $E0 $F0
    ldh [rNR42], a                                ; $451F: $E0 $21
    ld e, $8F                                     ; $4521: $1E $8F
    ld [hl], b                                    ; $4523: $70
    ccf                                           ; $4524: $3F
    ret nz                                        ; $4525: $C0

    dec b                                         ; $4526: $05
    cp d                                          ; $4527: $BA
    cpl                                           ; $4528: $2F
    ld [hl], b                                    ; $4529: $70
    ld d, l                                       ; $452A: $55
    ld h, d                                       ; $452B: $62
    ld l, d                                       ; $452C: $6A
    rst $00                                       ; $452D: $C7
    dec [hl]                                      ; $452E: $35
    adc $FF                                       ; $452F: $CE $FF
    nop                                           ; $4531: $00
    rst $38                                       ; $4532: $FF
    nop                                           ; $4533: $00
    rst $38                                       ; $4534: $FF
    nop                                           ; $4535: $00
    rst $38                                       ; $4536: $FF
    nop                                           ; $4537: $00
    ld a, a                                       ; $4538: $7F
    add b                                         ; $4539: $80
    rst $08                                       ; $453A: $CF
    jr nc, jr_060_44E4                            ; $453B: $30 $A7

    ld a, b                                       ; $453D: $78
    ld a, a                                       ; $453E: $7F
    add b                                         ; $453F: $80
    halt                                          ; $4540: $76
    adc h                                         ; $4541: $8C
    ld e, c                                       ; $4542: $59
    and h                                         ; $4543: $A4
    reti                                          ; $4544: $D9


    ld h, h                                       ; $4545: $64
    and [hl]                                      ; $4546: $A6
    ld b, c                                       ; $4547: $41
    ld d, e                                       ; $4548: $53
    jr nz, jr_060_457C                            ; $4549: $20 $31

    nop                                           ; $454B: $00
    ld bc, $2400                                  ; $454C: $01 $00 $24
    nop                                           ; $454F: $00
    adc l                                         ; $4550: $8D
    ld [hl], d                                    ; $4551: $72
    ld e, c                                       ; $4552: $59
    and $A3                                       ; $4553: $E6 $A3
    call z, $88ED                                 ; $4555: $CC $ED $88
    ld a, [hl]                                    ; $4558: $7E
    adc c                                         ; $4559: $89
    ld d, d                                       ; $455A: $52
    xor l                                         ; $455B: $AD
    jp c, $AF25                                   ; $455C: $DA $25 $AF

    db $10                                        ; $455F: $10
    rst $30                                       ; $4560: $F7
    ld [$00FF], sp                                ; $4561: $08 $FF $00
    call c, $9723                                 ; $4564: $DC $23 $97
    ld l, c                                       ; $4567: $69
    ld a, [c]                                     ; $4568: $F2
    ld c, l                                       ; $4569: $4D
    sbc e                                         ; $456A: $9B
    ld h, h                                       ; $456B: $64
    call $B532                                    ; $456C: $CD $32 $B5
    ld [bc], a                                    ; $456F: $02
    rst $38                                       ; $4570: $FF
    nop                                           ; $4571: $00
    rst $10                                       ; $4572: $D7

jr_060_4573:
    jr z, jr_060_4573                             ; $4573: $28 $FE

    ld hl, $B34C                                  ; $4575: $21 $4C $B3
    db $EB                                        ; $4578: $EB
    sub [hl]                                      ; $4579: $96
    ld e, c                                       ; $457A: $59
    and [hl]                                      ; $457B: $A6

jr_060_457C:
    ld a, l                                       ; $457C: $7D
    add d                                         ; $457D: $82
    and a                                         ; $457E: $A7
    nop                                           ; $457F: $00
    rst $30                                       ; $4580: $F7
    nop                                           ; $4581: $00
    cp $00                                        ; $4582: $FE $00
    ei                                            ; $4584: $FB
    nop                                           ; $4585: $00
    cp $00                                        ; $4586: $FE $00
    rst $30                                       ; $4588: $F7
    nop                                           ; $4589: $00
    cp l                                          ; $458A: $BD
    nop                                           ; $458B: $00
    sub $00                                       ; $458C: $D6 $00
    xor l                                         ; $458E: $AD
    nop                                           ; $458F: $00
    jp c, $3500                                   ; $4590: $DA $00 $35

    nop                                           ; $4593: $00
    xor $00                                       ; $4594: $EE $00
    ld d, e                                       ; $4596: $53
    nop                                           ; $4597: $00
    xor [hl]                                      ; $4598: $AE
    nop                                           ; $4599: $00
    ld [hl], l                                    ; $459A: $75
    nop                                           ; $459B: $00
    jp c, $6D00                                   ; $459C: $DA $00 $6D

    nop                                           ; $459F: $00
    ld h, h                                       ; $45A0: $64
    nop                                           ; $45A1: $00
    xor d                                         ; $45A2: $AA
    nop                                           ; $45A3: $00
    dec d                                         ; $45A4: $15
    nop                                           ; $45A5: $00
    ld [$4600], a                                 ; $45A6: $EA $00 $46
    nop                                           ; $45A9: $00
    sub c                                         ; $45AA: $91
    nop                                           ; $45AB: $00
    inc h                                         ; $45AC: $24
    nop                                           ; $45AD: $00
    sbc d                                         ; $45AE: $9A
    nop                                           ; $45AF: $00
    add h                                         ; $45B0: $84
    nop                                           ; $45B1: $00
    ld c, c                                       ; $45B2: $49
    nop                                           ; $45B3: $00
    inc d                                         ; $45B4: $14
    nop                                           ; $45B5: $00
    ld b, b                                       ; $45B6: $40
    nop                                           ; $45B7: $00
    ld a, [hl+]                                   ; $45B8: $2A
    nop                                           ; $45B9: $00
    ld d, b                                       ; $45BA: $50
    nop                                           ; $45BB: $00
    add b                                         ; $45BC: $80
    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    add $01                                       ; $45C0: $C6 $01
    ld a, a                                       ; $45C2: $7F
    nop                                           ; $45C3: $00
    inc de                                        ; $45C4: $13

jr_060_45C5:
    inc c                                         ; $45C5: $0C
    ld hl, sp+$07                                 ; $45C6: $F8 $07
    ld l, [hl]                                    ; $45C8: $6E
    ld de, $0D12                                  ; $45C9: $11 $12 $0D
    db $ED                                        ; $45CC: $ED
    ld [bc], a                                    ; $45CD: $02
    ccf                                           ; $45CE: $3F
    nop                                           ; $45CF: $00
    ld [$2500], sp                                ; $45D0: $08 $00 $25
    nop                                           ; $45D3: $00
    rst $10                                       ; $45D4: $D7
    nop                                           ; $45D5: $00
    xor $11                                       ; $45D6: $EE $11
    ld e, l                                       ; $45D8: $5D
    ld [hl+], a                                   ; $45D9: $22
    reti                                          ; $45DA: $D9


    ld h, $CB                                     ; $45DB: $26 $CB
    inc [hl]                                      ; $45DD: $34
    rst $28                                       ; $45DE: $EF
    stop                                          ; $45DF: $10 $00
    nop                                           ; $45E1: $00
    ld c, h                                       ; $45E2: $4C
    nop                                           ; $45E3: $00
    and l                                         ; $45E4: $A5
    nop                                           ; $45E5: $00
    or $01                                        ; $45E6: $F6 $01
    jp c, Jump_060_4825                           ; $45E8: $DA $25 $48

    or a                                          ; $45EB: $B7
    jr z, jr_060_45C5                             ; $45EC: $28 $D7

    cp l                                          ; $45EE: $BD
    ld b, d                                       ; $45EF: $42
    nop                                           ; $45F0: $00
    nop                                           ; $45F1: $00
    ld c, b                                       ; $45F2: $48
    nop                                           ; $45F3: $00
    ld e, d                                       ; $45F4: $5A
    add b                                         ; $45F5: $80
    sub d                                         ; $45F6: $92
    ld bc, $12A5                                  ; $45F7: $01 $A5 $12
    xor c                                         ; $45FA: $A9
    ld d, [hl]                                    ; $45FB: $56
    ld h, d                                       ; $45FC: $62
    sbc l                                         ; $45FD: $9D
    rst $30                                       ; $45FE: $F7
    ld [$1C01], sp                                ; $45FF: $08 $01 $1C
    ld bc, $01DC                                  ; $4602: $01 $DC $01
    call c, $DC01                                 ; $4605: $DC $01 $DC
    inc bc                                        ; $4608: $03
    ret c                                         ; $4609: $D8

    rrca                                          ; $460A: $0F
    ret nz                                        ; $460B: $C0

    inc a                                         ; $460C: $3C
    add b                                         ; $460D: $80
    ldh a, [$E0]                                  ; $460E: $F0 $E0
    ld bc, $0FEC                                  ; $4610: $01 $EC $0F
    ldh [$7F], a                                  ; $4613: $E0 $7F
    add b                                         ; $4615: $80
    pop af                                        ; $4616: $F1
    ld c, $C1                                     ; $4617: $0E $C1
    ld a, $01                                     ; $4619: $3E $01
    cp $01                                        ; $461B: $FE $01
    cp $01                                        ; $461D: $FE $01
    sbc $02                                       ; $461F: $DE $02
    and d                                         ; $4621: $A2
    rlca                                          ; $4622: $07
    ld [hl+], a                                   ; $4623: $22
    dec b                                         ; $4624: $05
    and h                                         ; $4625: $A4
    dec c                                         ; $4626: $0D
    and h                                         ; $4627: $A4
    ld a, [bc]                                    ; $4628: $0A
    add hl, hl                                    ; $4629: $29
    ld a, [de]                                    ; $462A: $1A
    add hl, hl                                    ; $462B: $29
    ld a, [de]                                    ; $462C: $1A
    ld sp, $371C                                  ; $462D: $31 $1C $37
    add a                                         ; $4630: $87
    ld a, b                                       ; $4631: $78
    adc e                                         ; $4632: $8B
    ld [hl], h                                    ; $4633: $74
    adc e                                         ; $4634: $8B
    ld [hl], h                                    ; $4635: $74
    ld c, e                                       ; $4636: $4B
    or h                                          ; $4637: $B4
    ld d, c                                       ; $4638: $51
    xor [hl]                                      ; $4639: $AE
    ld sp, $21CE                                  ; $463A: $31 $CE $21
    sbc $13                                       ; $463D: $DE $13
    db $EC                                        ; $463F: $EC
    inc bc                                        ; $4640: $03
    ld [hl+], a                                   ; $4641: $22
    inc bc                                        ; $4642: $03
    and c                                         ; $4643: $A1
    inc bc                                        ; $4644: $03
    ld hl, $C203                                  ; $4645: $21 $03 $C2
    dec c                                         ; $4648: $0D
    inc sp                                        ; $4649: $33

jr_060_464A:
    ld de, $60CB                                  ; $464A: $11 $CB $60
    ld a, [de]                                    ; $464D: $1A
    add b                                         ; $464E: $80
    ld a, d                                       ; $464F: $7A
    sbc c                                         ; $4650: $99
    ldh [$D1], a                                  ; $4651: $E0 $D1
    ld h, b                                       ; $4653: $60
    pop de                                        ; $4654: $D1
    ld h, b                                       ; $4655: $60
    pop af                                        ; $4656: $F1
    jr nz, jr_060_464A                            ; $4657: $20 $F1

    jr nz, @-$1D                                  ; $4659: $20 $E1

    ld h, b                                       ; $465B: $60
    pop hl                                        ; $465C: $E1
    ret nz                                        ; $465D: $C0

    ld bc, $0000                                  ; $465E: $01 $00 $00
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
    add c                                         ; $466C: $81
    nop                                           ; $466D: $00
    pop bc                                        ; $466E: $C1
    nop                                           ; $466F: $00
    jp $8300                                      ; $4670: $C3 $00 $83


    nop                                           ; $4673: $00
    add e                                         ; $4674: $83
    nop                                           ; $4675: $00
    add e                                         ; $4676: $83
    nop                                           ; $4677: $00
    add e                                         ; $4678: $83
    nop                                           ; $4679: $00
    add e                                         ; $467A: $83
    nop                                           ; $467B: $00
    inc bc                                        ; $467C: $03
    nop                                           ; $467D: $00
    ld bc, $FE00                                  ; $467E: $01 $00 $FE
    nop                                           ; $4681: $00
    rlca                                          ; $4682: $07
    nop                                           ; $4683: $00
    ld sp, hl                                     ; $4684: $F9
    nop                                           ; $4685: $00
    ldh a, [rP1]                                  ; $4686: $F0 $00
    inc e                                         ; $4688: $1C

jr_060_4689:
    ldh [rNR34], a                                ; $4689: $E0 $1E

jr_060_468B:
    ldh [$6F], a                                  ; $468B: $E0 $6F
    sub b                                         ; $468D: $90
    add e                                         ; $468E: $83
    ld a, h                                       ; $468F: $7C
    ld bc, $0100                                  ; $4690: $01 $00 $01
    nop                                           ; $4693: $00
    ld bc, $8100                                  ; $4694: $01 $00 $81
    nop                                           ; $4697: $00
    add c                                         ; $4698: $81
    nop                                           ; $4699: $00
    add c                                         ; $469A: $81
    nop                                           ; $469B: $00
    nop                                           ; $469C: $00
    nop                                           ; $469D: $00
    nop                                           ; $469E: $00
    nop                                           ; $469F: $00
    rst $38                                       ; $46A0: $FF
    nop                                           ; $46A1: $00
    add b                                         ; $46A2: $80
    nop                                           ; $46A3: $00

jr_060_46A4:
    rst $38                                       ; $46A4: $FF
    nop                                           ; $46A5: $00
    ld a, a                                       ; $46A6: $7F
    add b                                         ; $46A7: $80
    jr nz, jr_060_4689                            ; $46A8: $20 $DF

    jr nz, jr_060_468B                            ; $46AA: $20 $DF

    and b                                         ; $46AC: $A0
    ld e, a                                       ; $46AD: $5F
    and b                                         ; $46AE: $A0
    ld e, a                                       ; $46AF: $5F
    nop                                           ; $46B0: $00
    nop                                           ; $46B1: $00
    nop                                           ; $46B2: $00
    nop                                           ; $46B3: $00
    rst $38                                       ; $46B4: $FF
    nop                                           ; $46B5: $00
    nop                                           ; $46B6: $00
    rst $38                                       ; $46B7: $FF
    nop                                           ; $46B8: $00
    rst $38                                       ; $46B9: $FF
    db $FC                                        ; $46BA: $FC
    inc bc                                        ; $46BB: $03
    db $FC                                        ; $46BC: $FC
    nop                                           ; $46BD: $00
    rst $38                                       ; $46BE: $FF
    db $FC                                        ; $46BF: $FC
    ld bc, $0100                                  ; $46C0: $01 $00 $01
    nop                                           ; $46C3: $00
    pop hl                                        ; $46C4: $E1
    nop                                           ; $46C5: $00
    inc de                                        ; $46C6: $13
    ret nz                                        ; $46C7: $C0

    inc c                                         ; $46C8: $0C
    pop hl                                        ; $46C9: $E1
    ld [$00E2], sp                                ; $46CA: $08 $E2 $00
    call nz, $1488                                ; $46CD: $C4 $88 $14
    inc bc                                        ; $46D0: $03
    ld b, b                                       ; $46D1: $40
    rrca                                          ; $46D2: $0F
    inc bc                                        ; $46D3: $03
    cp a                                          ; $46D4: $BF
    rrca                                          ; $46D5: $0F
    ld a, a                                       ; $46D6: $7F
    ccf                                           ; $46D7: $3F
    ld a, a                                       ; $46D8: $7F
    ccf                                           ; $46D9: $3F
    ld a, a                                       ; $46DA: $7F
    ccf                                           ; $46DB: $3F
    ld a, a                                       ; $46DC: $7F
    ccf                                           ; $46DD: $3F
    rst $38                                       ; $46DE: $FF
    ld a, a                                       ; $46DF: $7F
    ldh [$80], a                                  ; $46E0: $E0 $80
    ldh a, [$C0]                                  ; $46E2: $F0 $C0
    cp $C0                                        ; $46E4: $FE $C0
    pop af                                        ; $46E6: $F1
    call nz, $C4F1                                ; $46E7: $C4 $F1 $C4
    ei                                            ; $46EA: $FB
    ret nz                                        ; $46EB: $C0

    cp $C0                                        ; $46EC: $FE $C0
    cp $C0                                        ; $46EE: $FE $C0
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    rlca                                          ; $46F4: $07
    nop                                           ; $46F5: $00
    adc b                                         ; $46F6: $88
    rlca                                          ; $46F7: $07
    ld d, b                                       ; $46F8: $50
    inc bc                                        ; $46F9: $03
    ld h, b                                       ; $46FA: $60
    adc h                                         ; $46FB: $8C
    ld hl, $219C                                  ; $46FC: $21 $9C $21
    ld e, [hl]                                    ; $46FF: $5E
    nop                                           ; $4700: $00
    and b                                         ; $4701: $A0
    nop                                           ; $4702: $00
    jr nz, jr_060_4705                            ; $4703: $20 $00

jr_060_4705:
    and b                                         ; $4705: $A0
    nop                                           ; $4706: $00
    and b                                         ; $4707: $A0
    ld bc, $0120                                  ; $4708: $01 $20 $01
    ld hl, $2103                                  ; $470B: $21 $03 $21
    ld [bc], a                                    ; $470E: $02
    ld [hl+], a                                   ; $470F: $22
    ld [hl], c                                    ; $4710: $71
    ld b, b                                       ; $4711: $40
    ld d, c                                       ; $4712: $51
    ld b, b                                       ; $4713: $40
    or c                                          ; $4714: $B1
    add b                                         ; $4715: $80
    xor c                                         ; $4716: $A9
    sub b                                         ; $4717: $90
    xor c                                         ; $4718: $A9
    sub b                                         ; $4719: $90
    ld c, l                                       ; $471A: $4D
    jr nc, jr_060_4762                            ; $471B: $30 $45

    jr c, jr_060_46A4                             ; $471D: $38 $85

    ld a, b                                       ; $471F: $78
    inc e                                         ; $4720: $1C
    or a                                          ; $4721: $B7
    inc e                                         ; $4722: $1C
    ccf                                           ; $4723: $3F
    ld e, $AB                                     ; $4724: $1E $AB
    ld e, $AB                                     ; $4726: $1E $AB
    rrca                                          ; $4728: $0F
    dec h                                         ; $4729: $25
    rrca                                          ; $472A: $0F
    dec h                                         ; $472B: $25
    rlca                                          ; $472C: $07
    ld [hl+], a                                   ; $472D: $22
    rlca                                          ; $472E: $07
    ld [hl+], a                                   ; $472F: $22
    inc sp                                        ; $4730: $33
    call z, $D42B                                 ; $4731: $CC $2B $D4
    ld c, a                                       ; $4734: $4F
    or b                                          ; $4735: $B0
    ld b, l                                       ; $4736: $45
    cp b                                          ; $4737: $B8
    ld b, l                                       ; $4738: $45
    cp b                                          ; $4739: $B8
    adc l                                         ; $473A: $8D
    ld [hl], b                                    ; $473B: $70
    adc c                                         ; $473C: $89
    ldh a, [$89]                                  ; $473D: $F0 $89
    ldh a, [$03]                                  ; $473F: $F0 $03
    cp b                                          ; $4741: $B8
    dec c                                         ; $4742: $0D
    and d                                         ; $4743: $A2
    ld de, $2182                                  ; $4744: $11 $82 $21
    adc d                                         ; $4747: $8A
    pop bc                                        ; $4748: $C1
    ld a, [de]                                    ; $4749: $1A
    ld bc, $013A                                  ; $474A: $01 $3A $01
    ld a, [$FA01]                                 ; $474D: $FA $01 $FA
    ld bc, $0100                                  ; $4750: $01 $00 $01
    nop                                           ; $4753: $00
    ld bc, $0300                                  ; $4754: $01 $00 $03
    nop                                           ; $4757: $00
    inc bc                                        ; $4758: $03
    nop                                           ; $4759: $00
    rrca                                          ; $475A: $0F
    nop                                           ; $475B: $00
    sbc [hl]                                      ; $475C: $9E
    ld bc, $06F8                                  ; $475D: $01 $F8 $06
    cp $E0                                        ; $4760: $FE $E0

jr_060_4762:
    rst $38                                       ; $4762: $FF
    db $FC                                        ; $4763: $FC
    db $FC                                        ; $4764: $FC
    ld hl, sp-$04                                 ; $4765: $F8 $FC
    ld hl, sp-$04                                 ; $4767: $F8 $FC
    ld hl, sp-$03                                 ; $4769: $F8 $FD
    ldh a, [$F3]                                  ; $476B: $F0 $F3
    ldh [$F1], a                                  ; $476D: $E0 $F1
    ldh [rNR42], a                                ; $476F: $E0 $21
    ld e, [hl]                                    ; $4771: $5E
    ld b, c                                       ; $4772: $41
    inc e                                         ; $4773: $1C
    ld b, c                                       ; $4774: $41
    inc a                                         ; $4775: $3C
    add e                                         ; $4776: $83
    inc a                                         ; $4777: $3C
    add e                                         ; $4778: $83
    ld a, b                                       ; $4779: $78
    inc bc                                        ; $477A: $03
    ld a, c                                       ; $477B: $79
    inc b                                         ; $477C: $04
    ldh a, [rDIV]                                 ; $477D: $F0 $04
    ld h, b                                       ; $477F: $60
    ld sp, hl                                     ; $4780: $F9
    ld [c], a                                     ; $4781: $E2
    ld hl, sp-$0E                                 ; $4782: $F8 $F2
    ldh a, [$E3]                                  ; $4784: $F0 $E3
    ldh a, [$E3]                                  ; $4786: $F0 $E3
    ld hl, sp-$0F                                 ; $4788: $F8 $F1
    ld hl, sp-$0F                                 ; $478A: $F8 $F1
    cp $F8                                        ; $478C: $FE $F8
    rst $38                                       ; $478E: $FF
    cp $FF                                        ; $478F: $FE $FF
    ld [bc], a                                    ; $4791: $02
    rst $38                                       ; $4792: $FF
    ld [bc], a                                    ; $4793: $02
    rst $38                                       ; $4794: $FF
    ld [bc], a                                    ; $4795: $02
    rst $38                                       ; $4796: $FF
    rst $38                                       ; $4797: $FF
    rst $38                                       ; $4798: $FF
    rst $38                                       ; $4799: $FF
    rst $08                                       ; $479A: $CF
    rlca                                          ; $479B: $07
    rst $30                                       ; $479C: $F7
    ld [bc], a                                    ; $479D: $02
    rst $38                                       ; $479E: $FF
    ld [bc], a                                    ; $479F: $02
    ret                                           ; $47A0: $C9


    or b                                          ; $47A1: $B0
    res 6, c                                      ; $47A2: $CB $B1
    rst $08                                       ; $47A4: $CF
    or e                                          ; $47A5: $B3
    rst $08                                       ; $47A6: $CF
    or e                                          ; $47A7: $B3
    rst $00                                       ; $47A8: $C7
    or e                                          ; $47A9: $B3
    rst $00                                       ; $47AA: $C7
    or e                                          ; $47AB: $B3
    rst $00                                       ; $47AC: $C7
    inc sp                                        ; $47AD: $33
    add a                                         ; $47AE: $87
    ld h, e                                       ; $47AF: $63
    add a                                         ; $47B0: $87
    ld h, e                                       ; $47B1: $63
    adc a                                         ; $47B2: $8F
    ld h, a                                       ; $47B3: $67
    adc a                                         ; $47B4: $8F
    daa                                           ; $47B5: $27
    cp a                                          ; $47B6: $BF
    rrca                                          ; $47B7: $0F
    rst $38                                       ; $47B8: $FF
    rrca                                          ; $47B9: $0F
    rst $38                                       ; $47BA: $FF
    rra                                           ; $47BB: $1F
    rst $38                                       ; $47BC: $FF
    ccf                                           ; $47BD: $3F
    rst $38                                       ; $47BE: $FF
    ld a, a                                       ; $47BF: $7F
    ld c, d                                       ; $47C0: $4A
    nop                                           ; $47C1: $00
    call nc, $2B00                                ; $47C2: $D4 $00 $2B
    nop                                           ; $47C5: $00
    add h                                         ; $47C6: $84
    nop                                           ; $47C7: $00
    ld c, b                                       ; $47C8: $48
    nop                                           ; $47C9: $00
    ld [bc], a                                    ; $47CA: $02
    nop                                           ; $47CB: $00
    nop                                           ; $47CC: $00
    nop                                           ; $47CD: $00
    nop                                           ; $47CE: $00
    nop                                           ; $47CF: $00
    ld c, c                                       ; $47D0: $49
    nop                                           ; $47D1: $00
    stop                                          ; $47D2: $10 $00
    call nz, $2100                                ; $47D4: $C4 $00 $21
    nop                                           ; $47D7: $00
    nop                                           ; $47D8: $00
    nop                                           ; $47D9: $00
    nop                                           ; $47DA: $00
    nop                                           ; $47DB: $00
    nop                                           ; $47DC: $00
    nop                                           ; $47DD: $00
    nop                                           ; $47DE: $00
    nop                                           ; $47DF: $00
    or [hl]                                       ; $47E0: $B6
    nop                                           ; $47E1: $00
    ld l, c                                       ; $47E2: $69
    nop                                           ; $47E3: $00
    or h                                          ; $47E4: $B4
    nop                                           ; $47E5: $00
    ret nz                                        ; $47E6: $C0

    nop                                           ; $47E7: $00
    ld a, [hl+]                                   ; $47E8: $2A
    nop                                           ; $47E9: $00
    ret nc                                        ; $47EA: $D0

    nop                                           ; $47EB: $00
    add b                                         ; $47EC: $80
    nop                                           ; $47ED: $00
    nop                                           ; $47EE: $00
    nop                                           ; $47EF: $00
    nop                                           ; $47F0: $00
    rst $38                                       ; $47F1: $FF
    nop                                           ; $47F2: $00
    rst $38                                       ; $47F3: $FF
    nop                                           ; $47F4: $00
    rst $38                                       ; $47F5: $FF
    nop                                           ; $47F6: $00
    rst $38                                       ; $47F7: $FF
    nop                                           ; $47F8: $00
    rst $38                                       ; $47F9: $FF
    nop                                           ; $47FA: $00
    rst $38                                       ; $47FB: $FF
    nop                                           ; $47FC: $00
    rst $38                                       ; $47FD: $FF
    nop                                           ; $47FE: $00
    rst $38                                       ; $47FF: $FF
    ldh a, [rIE]                                  ; $4800: $F0 $FF
    ld hl, sp-$01                                 ; $4802: $F8 $FF
    ld a, l                                       ; $4804: $7D
    cp $84                                        ; $4805: $FE $84
    ld a, a                                       ; $4807: $7F
    ei                                            ; $4808: $FB
    rlca                                          ; $4809: $07
    ld a, [$0005]                                 ; $480A: $FA $05 $00
    nop                                           ; $480D: $00
    nop                                           ; $480E: $00
    nop                                           ; $480F: $00
    ld a, a                                       ; $4810: $7F
    rst $38                                       ; $4811: $FF
    ccf                                           ; $4812: $3F
    rst $38                                       ; $4813: $FF
    ld c, [hl]                                    ; $4814: $4E
    cp a                                          ; $4815: $BF
    or b                                          ; $4816: $B0
    ld c, a                                       ; $4817: $4F
    ld a, a                                       ; $4818: $7F
    add b                                         ; $4819: $80
    ccf                                           ; $481A: $3F
    ret nz                                        ; $481B: $C0

    nop                                           ; $481C: $00
    nop                                           ; $481D: $00
    nop                                           ; $481E: $00
    nop                                           ; $481F: $00
    add b                                         ; $4820: $80
    rst $38                                       ; $4821: $FF
    ld bc, $2AFE                                  ; $4822: $01 $FE $2A

Jump_060_4825:
    push de                                       ; $4825: $D5
    rst $38                                       ; $4826: $FF
    nop                                           ; $4827: $00
    rst $38                                       ; $4828: $FF
    nop                                           ; $4829: $00
    rst $38                                       ; $482A: $FF
    nop                                           ; $482B: $00
    nop                                           ; $482C: $00
    nop                                           ; $482D: $00
    nop                                           ; $482E: $00
    nop                                           ; $482F: $00
    rlca                                          ; $4830: $07
    rst $38                                       ; $4831: $FF
    ld b, b                                       ; $4832: $40
    cp a                                          ; $4833: $BF
    cp [hl]                                       ; $4834: $BE
    ld b, c                                       ; $4835: $41
    rst $38                                       ; $4836: $FF
    nop                                           ; $4837: $00
    rst $38                                       ; $4838: $FF
    nop                                           ; $4839: $00
    cp $01                                        ; $483A: $FE $01
    nop                                           ; $483C: $00
    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    nop                                           ; $483F: $00
    rst $38                                       ; $4840: $FF
    rst $38                                       ; $4841: $FF
    db $FC                                        ; $4842: $FC
    rst $38                                       ; $4843: $FF
    ld a, [bc]                                    ; $4844: $0A
    db $FD                                        ; $4845: $FD
    push de                                       ; $4846: $D5
    ld a, [hl-]                                   ; $4847: $3A
    rrca                                          ; $4848: $0F
    ldh a, [$BF]                                  ; $4849: $F0 $BF
    ld b, b                                       ; $484B: $40
    nop                                           ; $484C: $00
    nop                                           ; $484D: $00
    nop                                           ; $484E: $00
    nop                                           ; $484F: $00
    rst $38                                       ; $4850: $FF
    rst $38                                       ; $4851: $FF
    rst $10                                       ; $4852: $D7
    rst $38                                       ; $4853: $FF
    nop                                           ; $4854: $00
    rst $38                                       ; $4855: $FF
    db $E3                                        ; $4856: $E3
    inc e                                         ; $4857: $1C
    db $FC                                        ; $4858: $FC
    inc bc                                        ; $4859: $03
    rst $38                                       ; $485A: $FF
    nop                                           ; $485B: $00
    nop                                           ; $485C: $00
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    nop                                           ; $485F: $00
    rst $38                                       ; $4860: $FF
    rst $38                                       ; $4861: $FF
    rst $10                                       ; $4862: $D7
    rst $38                                       ; $4863: $FF
    nop                                           ; $4864: $00
    rst $38                                       ; $4865: $FF
    db $E3                                        ; $4866: $E3
    inc e                                         ; $4867: $1C
    db $FC                                        ; $4868: $FC
    inc bc                                        ; $4869: $03
    rst $38                                       ; $486A: $FF
    nop                                           ; $486B: $00
    nop                                           ; $486C: $00
    nop                                           ; $486D: $00
    nop                                           ; $486E: $00
    nop                                           ; $486F: $00
    xor $F1                                       ; $4870: $EE $F1
    jp c, $15E1                                   ; $4872: $DA $E1 $15

    ldh [$38], a                                  ; $4875: $E0 $38
    ret nz                                        ; $4877: $C0

    db $FD                                        ; $4878: $FD
    nop                                           ; $4879: $00
    sbc a                                         ; $487A: $9F
    jr nz, jr_060_487D                            ; $487B: $20 $00

jr_060_487D:
    nop                                           ; $487D: $00
    nop                                           ; $487E: $00
    nop                                           ; $487F: $00
    and a                                         ; $4880: $A7
    ret c                                         ; $4881: $D8

    rra                                           ; $4882: $1F
    ldh [$36], a                                  ; $4883: $E0 $36
    ret z                                         ; $4885: $C8

    rst $38                                       ; $4886: $FF
    nop                                           ; $4887: $00
    ld a, a                                       ; $4888: $7F
    add b                                         ; $4889: $80
    ld a, $C0                                     ; $488A: $3E $C0
    db $FD                                        ; $488C: $FD
    nop                                           ; $488D: $00
    cp $00                                        ; $488E: $FE $00
    db $F4                                        ; $4890: $F4
    nop                                           ; $4891: $00
    cp $00                                        ; $4892: $FE $00
    rst $38                                       ; $4894: $FF
    nop                                           ; $4895: $00
    ld e, a                                       ; $4896: $5F
    nop                                           ; $4897: $00
    cp c                                          ; $4898: $B9
    nop                                           ; $4899: $00
    add b                                         ; $489A: $80
    nop                                           ; $489B: $00
    ld b, d                                       ; $489C: $42
    nop                                           ; $489D: $00
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    cp $FF                                        ; $48A0: $FE $FF
    cp $FF                                        ; $48A2: $FE $FF
    db $FC                                        ; $48A4: $FC
    rst $38                                       ; $48A5: $FF
    ldh a, [rIE]                                  ; $48A6: $F0 $FF
    call $3BFF                                    ; $48A8: $CD $FF $3B
    rst $38                                       ; $48AB: $FF
    rst $30                                       ; $48AC: $F7
    rst $38                                       ; $48AD: $FF
    rst $08                                       ; $48AE: $CF
    rst $38                                       ; $48AF: $FF
    ldh [$F0], a                                  ; $48B0: $E0 $F0
    ldh [$F0], a                                  ; $48B2: $E0 $F0

jr_060_48B4:
    ldh a, [$F8]                                  ; $48B4: $F0 $F8
    jr c, jr_060_48B4                             ; $48B6: $38 $FC

    call c, $EEFE                                 ; $48B8: $DC $FE $EE
    rst $38                                       ; $48BB: $FF
    ld a, [c]                                     ; $48BC: $F2
    rst $38                                       ; $48BD: $FF
    db $FD                                        ; $48BE: $FD
    rst $38                                       ; $48BF: $FF
    nop                                           ; $48C0: $00
    ld a, a                                       ; $48C1: $7F
    nop                                           ; $48C2: $00
    rst $38                                       ; $48C3: $FF
    ldh a, [rIF]                                  ; $48C4: $F0 $0F
    ldh [$1F], a                                  ; $48C6: $E0 $1F
    ldh [$1F], a                                  ; $48C8: $E0 $1F
    ldh a, [rIF]                                  ; $48CA: $F0 $0F
    ret nc                                        ; $48CC: $D0

    cpl                                           ; $48CD: $2F
    add sp, $17                                   ; $48CE: $E8 $17
    ccf                                           ; $48D0: $3F
    ret nz                                        ; $48D1: $C0

    add hl, bc                                    ; $48D2: $09
    ldh [$0C], a                                  ; $48D3: $E0 $0C
    ldh a, [rSC]                                  ; $48D5: $F0 $02
    ld hl, sp+$05                                 ; $48D7: $F8 $05
    ld hl, sp+$02                                 ; $48D9: $F8 $02
    db $FC                                        ; $48DB: $FC
    ld bc, $00FE                                  ; $48DC: $01 $FE $00
    rst $38                                       ; $48DF: $FF
    ld [bc], a                                    ; $48E0: $02
    ld bc, $0007                                  ; $48E1: $01 $07 $00
    jr jr_060_48E6                                ; $48E4: $18 $00

jr_060_48E6:
    jr nz, jr_060_48E8                            ; $48E6: $20 $00

jr_060_48E8:
    ld e, b                                       ; $48E8: $58
    nop                                           ; $48E9: $00
    and b                                         ; $48EA: $A0
    nop                                           ; $48EB: $00
    ret nc                                        ; $48EC: $D0

    nop                                           ; $48ED: $00
    ld b, b                                       ; $48EE: $40
    nop                                           ; $48EF: $00
    rst $38                                       ; $48F0: $FF
    nop                                           ; $48F1: $00
    rst $38                                       ; $48F2: $FF
    nop                                           ; $48F3: $00
    ld a, a                                       ; $48F4: $7F
    nop                                           ; $48F5: $00
    ccf                                           ; $48F6: $3F
    nop                                           ; $48F7: $00
    rrca                                          ; $48F8: $0F
    nop                                           ; $48F9: $00
    nop                                           ; $48FA: $00
    nop                                           ; $48FB: $00
    ld d, b                                       ; $48FC: $50
    cpl                                           ; $48FD: $2F
    db $FD                                        ; $48FE: $FD
    ld [bc], a                                    ; $48FF: $02
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    rst $38                                       ; $4904: $FF
    rst $38                                       ; $4905: $FF
    rst $38                                       ; $4906: $FF
    nop                                           ; $4907: $00
    rst $38                                       ; $4908: $FF
    nop                                           ; $4909: $00
    rst $38                                       ; $490A: $FF
    nop                                           ; $490B: $00
    rst $38                                       ; $490C: $FF
    nop                                           ; $490D: $00
    rst $38                                       ; $490E: $FF
    nop                                           ; $490F: $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    rst $38                                       ; $4914: $FF
    rst $38                                       ; $4915: $FF
    ld hl, sp+$00                                 ; $4916: $F8 $00
    ld hl, sp+$01                                 ; $4918: $F8 $01
    ld hl, sp+$01                                 ; $491A: $F8 $01
    ld hl, sp+$01                                 ; $491C: $F8 $01
    ld hl, sp+$01                                 ; $491E: $F8 $01
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    rst $38                                       ; $4924: $FF
    rst $38                                       ; $4925: $FF
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    xor $00                                       ; $4929: $EE $00
    xor $00                                       ; $492B: $EE $00
    xor $00                                       ; $492D: $EE $00
    xor $00                                       ; $492F: $EE $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    rst $38                                       ; $4934: $FF
    rst $38                                       ; $4935: $FF
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    db $ED                                        ; $4939: $ED
    nop                                           ; $493A: $00
    db $ED                                        ; $493B: $ED
    nop                                           ; $493C: $00
    db $ED                                        ; $493D: $ED
    rlca                                          ; $493E: $07
    nop                                           ; $493F: $00
    nop                                           ; $4940: $00
    nop                                           ; $4941: $00
    inc bc                                        ; $4942: $03
    nop                                           ; $4943: $00
    rst $38                                       ; $4944: $FF
    rst $38                                       ; $4945: $FF
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    ld bc, $01DA                                  ; $4948: $01 $DA $01
    jp c, $DA01                                   ; $494B: $DA $01 $DA

    rst $38                                       ; $494E: $FF
    ld bc, $07C0                                  ; $494F: $01 $C0 $07
    jr nz, jr_060_4963                            ; $4952: $20 $0F

    rst $38                                       ; $4954: $FF
    rst $38                                       ; $4955: $FF
    add b                                         ; $4956: $80
    add b                                         ; $4957: $80
    add b                                         ; $4958: $80
    add e                                         ; $4959: $83
    add b                                         ; $495A: $80
    add e                                         ; $495B: $83
    db $FC                                        ; $495C: $FC
    add e                                         ; $495D: $83
    db $FC                                        ; $495E: $FC
    db $FC                                        ; $495F: $FC
    nop                                           ; $4960: $00
    sbc a                                         ; $4961: $9F
    nop                                           ; $4962: $00

jr_060_4963:
    cp a                                          ; $4963: $BF
    rst $38                                       ; $4964: $FF
    rst $38                                       ; $4965: $FF
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    or a                                          ; $4969: $B7
    nop                                           ; $496A: $00
    or a                                          ; $496B: $B7
    nop                                           ; $496C: $00
    or a                                          ; $496D: $B7
    nop                                           ; $496E: $00
    nop                                           ; $496F: $00
    cp $FF                                        ; $4970: $FE $FF
    rst $38                                       ; $4972: $FF
    rst $38                                       ; $4973: $FF
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    rst $38                                       ; $4977: $FF
    or [hl]                                       ; $4978: $B6
    rst $38                                       ; $4979: $FF
    or [hl]                                       ; $497A: $B6
    rst $38                                       ; $497B: $FF
    or b                                          ; $497C: $B0
    rst $38                                       ; $497D: $FF
    dec c                                         ; $497E: $0D
    rst $38                                       ; $497F: $FF
    ld b, b                                       ; $4980: $40
    add b                                         ; $4981: $80
    sub b                                         ; $4982: $90
    ldh [$F8], a                                  ; $4983: $E0 $F8
    nop                                           ; $4985: $00
    ld de, $DEE0                                  ; $4986: $11 $E0 $DE
    pop hl                                        ; $4989: $E1
    cp $C1                                        ; $498A: $FE $C1
    ld e, $E1                                     ; $498C: $1E $E1
    ld b, c                                       ; $498E: $41
    add b                                         ; $498F: $80
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00

jr_060_4994:
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    rst $38                                       ; $4997: $FF
    or l                                          ; $4998: $B5
    rst $38                                       ; $4999: $FF
    or l                                          ; $499A: $B5
    rst $38                                       ; $499B: $FF
    add b                                         ; $499C: $80
    rst $38                                       ; $499D: $FF
    sbc a                                         ; $499E: $9F
    rst $38                                       ; $499F: $FF
    nop                                           ; $49A0: $00
    nop                                           ; $49A1: $00
    nop                                           ; $49A2: $00
    nop                                           ; $49A3: $00
    nop                                           ; $49A4: $00
    nop                                           ; $49A5: $00
    nop                                           ; $49A6: $00
    ld hl, sp-$60                                 ; $49A7: $F8 $A0
    ld hl, sp-$60                                 ; $49A9: $F8 $A0
    ld hl, sp+$00                                 ; $49AB: $F8 $00
    ldh a, [$E4]                                  ; $49AD: $F0 $E4
    ldh a, [$F6]                                  ; $49AF: $F0 $F6
    nop                                           ; $49B1: $00
    db $EB                                        ; $49B2: $EB
    nop                                           ; $49B3: $00
    push af                                       ; $49B4: $F5
    nop                                           ; $49B5: $00
    ei                                            ; $49B6: $FB
    nop                                           ; $49B7: $00
    db $FD                                        ; $49B8: $FD
    nop                                           ; $49B9: $00
    rst $38                                       ; $49BA: $FF
    nop                                           ; $49BB: $00
    rra                                           ; $49BC: $1F
    nop                                           ; $49BD: $00
    ld b, e                                       ; $49BE: $43
    nop                                           ; $49BF: $00
    nop                                           ; $49C0: $00
    nop                                           ; $49C1: $00
    nop                                           ; $49C2: $00
    nop                                           ; $49C3: $00
    and b                                         ; $49C4: $A0
    nop                                           ; $49C5: $00
    ret nc                                        ; $49C6: $D0

    nop                                           ; $49C7: $00
    add sp, $00                                   ; $49C8: $E8 $00
    rst $38                                       ; $49CA: $FF
    nop                                           ; $49CB: $00
    rst $38                                       ; $49CC: $FF
    nop                                           ; $49CD: $00
    rst $38                                       ; $49CE: $FF
    nop                                           ; $49CF: $00
    ld b, b                                       ; $49D0: $40
    add b                                         ; $49D1: $80
    jr nz, jr_060_4994                            ; $49D2: $20 $C0

    db $10                                        ; $49D4: $10
    ldh [$08], a                                  ; $49D5: $E0 $08
    ldh a, [rDIV]                                 ; $49D7: $F0 $04
    ld hl, sp+$02                                 ; $49D9: $F8 $02
    db $FC                                        ; $49DB: $FC
    ld [c], a                                     ; $49DC: $E2
    inc e                                         ; $49DD: $1C
    ld sp, hl                                     ; $49DE: $F9
    ld b, $3F                                     ; $49DF: $06 $3F
    ld [bc], a                                    ; $49E1: $02
    rra                                           ; $49E2: $1F
    ld [bc], a                                    ; $49E3: $02
    rrca                                          ; $49E4: $0F
    ld [bc], a                                    ; $49E5: $02
    rlca                                          ; $49E6: $07
    ld [bc], a                                    ; $49E7: $02
    rlca                                          ; $49E8: $07
    ld [bc], a                                    ; $49E9: $02
    rlca                                          ; $49EA: $07
    ld [bc], a                                    ; $49EB: $02
    rlca                                          ; $49EC: $07
    ld [bc], a                                    ; $49ED: $02
    rra                                           ; $49EE: $1F
    ld b, $FF                                     ; $49EF: $06 $FF
    rst $38                                       ; $49F1: $FF
    rst $38                                       ; $49F2: $FF
    sub b                                         ; $49F3: $90
    rst $38                                       ; $49F4: $FF
    sub b                                         ; $49F5: $90
    rst $38                                       ; $49F6: $FF
    sub b                                         ; $49F7: $90
    rst $38                                       ; $49F8: $FF
    rst $38                                       ; $49F9: $FF
    rst $38                                       ; $49FA: $FF
    add h                                         ; $49FB: $84
    rst $38                                       ; $49FC: $FF
    add h                                         ; $49FD: $84
    rst $38                                       ; $49FE: $FF
    add h                                         ; $49FF: $84
    rst $38                                       ; $4A00: $FF
    rst $38                                       ; $4A01: $FF
    rst $38                                       ; $4A02: $FF
    nop                                           ; $4A03: $00
    rst $38                                       ; $4A04: $FF
    rst $38                                       ; $4A05: $FF
    rst $38                                       ; $4A06: $FF
    rst $38                                       ; $4A07: $FF
    rst $38                                       ; $4A08: $FF
    jr nz, @+$01                                  ; $4A09: $20 $FF

    jr nz, @+$01                                  ; $4A0B: $20 $FF

    rst $38                                       ; $4A0D: $FF
    rst $38                                       ; $4A0E: $FF
    inc b                                         ; $4A0F: $04
    ld hl, sp-$20                                 ; $4A10: $F8 $E0
    db $FC                                        ; $4A12: $FC
    add hl, de                                    ; $4A13: $19
    db $FC                                        ; $4A14: $FC
    db $FD                                        ; $4A15: $FD
    db $FC                                        ; $4A16: $FC
    adc l                                         ; $4A17: $8D
    db $FC                                        ; $4A18: $FC
    db $FD                                        ; $4A19: $FD
    db $FC                                        ; $4A1A: $FC
    adc l                                         ; $4A1B: $8D
    db $FC                                        ; $4A1C: $FC
    adc l                                         ; $4A1D: $8D
    db $FC                                        ; $4A1E: $FC
    adc l                                         ; $4A1F: $8D
    nop                                           ; $4A20: $00
    nop                                           ; $4A21: $00
    nop                                           ; $4A22: $00
    cpl                                           ; $4A23: $2F
    nop                                           ; $4A24: $00
    ld d, [hl]                                    ; $4A25: $56
    ld bc, $036D                                  ; $4A26: $01 $6D $03
    ld e, e                                       ; $4A29: $5B
    rlca                                          ; $4A2A: $07
    ld a, a                                       ; $4A2B: $7F
    rlca                                          ; $4A2C: $07
    ld [hl], a                                    ; $4A2D: $77
    rrca                                          ; $4A2E: $0F
    ld a, a                                       ; $4A2F: $7F
    nop                                           ; $4A30: $00
    nop                                           ; $4A31: $00
    ld a, [hl]                                    ; $4A32: $7E
    db $FD                                        ; $4A33: $FD
    rst $38                                       ; $4A34: $FF
    ld [c], a                                     ; $4A35: $E2
    rst $38                                       ; $4A36: $FF
    pop af                                        ; $4A37: $F1
    rst $38                                       ; $4A38: $FF
    ld hl, sp-$01                                 ; $4A39: $F8 $FF
    db $FC                                        ; $4A3B: $FC
    rst $38                                       ; $4A3C: $FF
    db $FC                                        ; $4A3D: $FC
    rst $38                                       ; $4A3E: $FF
    db $FC                                        ; $4A3F: $FC
    rrca                                          ; $4A40: $0F
    nop                                           ; $4A41: $00
    rlca                                          ; $4A42: $07
    ld d, a                                       ; $4A43: $57
    rlca                                          ; $4A44: $07
    and a                                         ; $4A45: $A7
    rlca                                          ; $4A46: $07
    ld [hl], a                                    ; $4A47: $77
    add a                                         ; $4A48: $87
    and $87                                       ; $4A49: $E6 $87
    or a                                          ; $4A4B: $B7
    rst $00                                       ; $4A4C: $C7
    ld [hl], d                                    ; $4A4D: $72
    rst $00                                       ; $4A4E: $C7
    ld [hl], d                                    ; $4A4F: $72
    db $FC                                        ; $4A50: $FC
    inc b                                         ; $4A51: $04
    db $FC                                        ; $4A52: $FC
    cp $FC                                        ; $4A53: $FE $FC
    add [hl]                                      ; $4A55: $86
    ld hl, sp-$06                                 ; $4A56: $F8 $FA
    ld hl, sp+$4A                                 ; $4A58: $F8 $4A
    ld hl, sp-$36                                 ; $4A5A: $F8 $CA
    ld hl, sp+$4A                                 ; $4A5C: $F8 $4A
    ld hl, sp+$4A                                 ; $4A5E: $F8 $4A
    nop                                           ; $4A60: $00
    ld e, h                                       ; $4A61: $5C
    inc bc                                        ; $4A62: $03
    or b                                          ; $4A63: $B0
    rrca                                          ; $4A64: $0F
    rst $20                                       ; $4A65: $E7
    rra                                           ; $4A66: $1F
    rst $28                                       ; $4A67: $EF
    rra                                           ; $4A68: $1F
    rst $18                                       ; $4A69: $DF
    rra                                           ; $4A6A: $1F
    rst $18                                       ; $4A6B: $DF
    ccf                                           ; $4A6C: $3F
    rst $18                                       ; $4A6D: $DF
    ccf                                           ; $4A6E: $3F
    rst $18                                       ; $4A6F: $DF
    dec e                                         ; $4A70: $1D
    rst $38                                       ; $4A71: $FF
    dec c                                         ; $4A72: $0D
    rra                                           ; $4A73: $1F
    push hl                                       ; $4A74: $E5
    rrca                                          ; $4A75: $0F
    ld [hl], l                                    ; $4A76: $75
    rlca                                          ; $4A77: $07
    ld sp, $0107                                  ; $4A78: $31 $07 $01
    rlca                                          ; $4A7B: $07
    add hl, de                                    ; $4A7C: $19
    inc bc                                        ; $4A7D: $03
    ld bc, $0103                                  ; $4A7E: $01 $03 $01
    add b                                         ; $4A81: $80
    inc sp                                        ; $4A82: $33
    add b                                         ; $4A83: $80
    inc sp                                        ; $4A84: $33
    add b                                         ; $4A85: $80
    inc bc                                        ; $4A86: $03
    add b                                         ; $4A87: $80
    dec hl                                        ; $4A88: $2B
    add b                                         ; $4A89: $80
    dec hl                                        ; $4A8A: $2B

jr_060_4A8B:
    add b                                         ; $4A8B: $80
    inc bc                                        ; $4A8C: $03
    add b                                         ; $4A8D: $80
    dec sp                                        ; $4A8E: $3B
    add b                                         ; $4A8F: $80
    cp c                                          ; $4A90: $B9
    db $FC                                        ; $4A91: $FC
    or c                                          ; $4A92: $B1
    ld hl, sp-$50                                 ; $4A93: $F8 $B0
    ldh a, [$A0]                                  ; $4A95: $F0 $A0
    ldh a, [$A0]                                  ; $4A97: $F0 $A0
    ldh a, [$A0]                                  ; $4A99: $F0 $A0
    ldh a, [$A1]                                  ; $4A9B: $F0 $A1
    ldh a, [$A0]                                  ; $4A9D: $F0 $A0
    ldh a, [$60]                                  ; $4A9F: $F0 $60
    ldh a, [$A1]                                  ; $4AA1: $F0 $A1
    ld [hl], b                                    ; $4AA3: $70
    ld [c], a                                     ; $4AA4: $E2
    jr nc, jr_060_4A8B                            ; $4AA5: $30 $E4

    jr nc, jr_060_4A8B                            ; $4AA7: $30 $E2

    jr nc, jr_060_4A8B                            ; $4AA9: $30 $E0

    jr nc, @+$24                                  ; $4AAB: $30 $22

    ldh a, [$E1]                                  ; $4AAD: $F0 $E1
    jr nc, @+$01                                  ; $4AAF: $30 $FF

    db $FC                                        ; $4AB1: $FC
    rst $38                                       ; $4AB2: $FF
    ld b, h                                       ; $4AB3: $44
    rst $38                                       ; $4AB4: $FF
    ld b, h                                       ; $4AB5: $44
    rst $38                                       ; $4AB6: $FF
    ld b, h                                       ; $4AB7: $44
    rst $38                                       ; $4AB8: $FF
    db $FC                                        ; $4AB9: $FC
    rst $38                                       ; $4ABA: $FF
    inc c                                         ; $4ABB: $0C
    rst $38                                       ; $4ABC: $FF
    inc c                                         ; $4ABD: $0C
    rst $38                                       ; $4ABE: $FF
    inc c                                         ; $4ABF: $0C
    ld a, a                                       ; $4AC0: $7F
    add b                                         ; $4AC1: $80
    ccf                                           ; $4AC2: $3F
    add b                                         ; $4AC3: $80
    rlca                                          ; $4AC4: $07
    add b                                         ; $4AC5: $80
    rlca                                          ; $4AC6: $07
    add b                                         ; $4AC7: $80
    ld c, $00                                     ; $4AC8: $0E $00
    dec c                                         ; $4ACA: $0D
    nop                                           ; $4ACB: $00
    ld a, [bc]                                    ; $4ACC: $0A
    nop                                           ; $4ACD: $00
    jr jr_060_4AD0                                ; $4ACE: $18 $00

jr_060_4AD0:
    db $FC                                        ; $4AD0: $FC
    nop                                           ; $4AD1: $00
    cp $00                                        ; $4AD2: $FE $00
    db $FC                                        ; $4AD4: $FC
    ld bc, $0254                                  ; $4AD5: $01 $54 $02
    xor c                                         ; $4AD8: $A9
    nop                                           ; $4AD9: $00
    ld d, e                                       ; $4ADA: $53
    ld bc, $0607                                  ; $4ADB: $01 $07 $06
    rra                                           ; $4ADE: $1F
    add hl, bc                                    ; $4ADF: $09
    nop                                           ; $4AE0: $00
    ccf                                           ; $4AE1: $3F
    nop                                           ; $4AE2: $00
    ld h, c                                       ; $4AE3: $61
    nop                                           ; $4AE4: $00
    add b                                         ; $4AE5: $80
    ldh a, [rSCY]                                 ; $4AE6: $F0 $42
    ld hl, sp-$2D                                 ; $4AE8: $F8 $D3
    db $F4                                        ; $4AEA: $F4
    and e                                         ; $4AEB: $A3
    ld hl, sp-$2E                                 ; $4AEC: $F8 $D2
    ld hl, sp+$6A                                 ; $4AEE: $F8 $6A
    ld bc, $0040                                  ; $4AF0: $01 $40 $00
    cp h                                          ; $4AF3: $BC
    nop                                           ; $4AF4: $00
    ld a, a                                       ; $4AF5: $7F
    nop                                           ; $4AF6: $00
    ccf                                           ; $4AF7: $3F
    nop                                           ; $4AF8: $00
    rrca                                          ; $4AF9: $0F
    nop                                           ; $4AFA: $00
    ld b, a                                       ; $4AFB: $47
    nop                                           ; $4AFC: $00
    ldh [rP1], a                                  ; $4AFD: $E0 $00
    halt                                          ; $4AFF: $76
    ld a, a                                       ; $4B00: $7F
    inc b                                         ; $4B01: $04
    ccf                                           ; $4B02: $3F
    add h                                         ; $4B03: $84
    rra                                           ; $4B04: $1F
    adc a                                         ; $4B05: $8F
    rra                                           ; $4B06: $1F
    ret nz                                        ; $4B07: $C0

    rra                                           ; $4B08: $1F
    ret nz                                        ; $4B09: $C0

    rra                                           ; $4B0A: $1F
    ret nz                                        ; $4B0B: $C0

    rra                                           ; $4B0C: $1F
    rst $08                                       ; $4B0D: $CF
    rra                                           ; $4B0E: $1F
    ret nz                                        ; $4B0F: $C0

    db $FC                                        ; $4B10: $FC
    adc l                                         ; $4B11: $8D
    db $FC                                        ; $4B12: $FC
    adc l                                         ; $4B13: $8D
    db $FC                                        ; $4B14: $FC
    adc l                                         ; $4B15: $8D
    db $FC                                        ; $4B16: $FC
    adc l                                         ; $4B17: $8D
    db $FC                                        ; $4B18: $FC
    adc l                                         ; $4B19: $8D
    db $FC                                        ; $4B1A: $FC
    adc l                                         ; $4B1B: $8D
    db $FC                                        ; $4B1C: $FC
    adc l                                         ; $4B1D: $8D
    db $FC                                        ; $4B1E: $FC
    adc l                                         ; $4B1F: $8D
    rrca                                          ; $4B20: $0F
    ld a, a                                       ; $4B21: $7F
    rrca                                          ; $4B22: $0F
    ld l, a                                       ; $4B23: $6F
    rra                                           ; $4B24: $1F
    ld a, a                                       ; $4B25: $7F
    rra                                           ; $4B26: $1F
    ld a, a                                       ; $4B27: $7F
    rra                                           ; $4B28: $1F
    ld a, a                                       ; $4B29: $7F
    rra                                           ; $4B2A: $1F
    ld a, a                                       ; $4B2B: $7F
    rra                                           ; $4B2C: $1F
    ld a, a                                       ; $4B2D: $7F
    rra                                           ; $4B2E: $1F
    ld a, a                                       ; $4B2F: $7F
    rst $38                                       ; $4B30: $FF
    db $FC                                        ; $4B31: $FC
    rst $38                                       ; $4B32: $FF
    rst $38                                       ; $4B33: $FF
    rst $38                                       ; $4B34: $FF
    ld hl, sp-$01                                 ; $4B35: $F8 $FF
    rst $38                                       ; $4B37: $FF
    rst $38                                       ; $4B38: $FF
    db $FC                                        ; $4B39: $FC
    rst $38                                       ; $4B3A: $FF
    db $FC                                        ; $4B3B: $FC
    rst $38                                       ; $4B3C: $FF
    db $FC                                        ; $4B3D: $FC
    rst $38                                       ; $4B3E: $FF
    db $FC                                        ; $4B3F: $FC
    rst $00                                       ; $4B40: $C7
    ld d, d                                       ; $4B41: $52
    rst $00                                       ; $4B42: $C7
    rst $30                                       ; $4B43: $F7
    rst $00                                       ; $4B44: $C7
    inc [hl]                                      ; $4B45: $34
    rst $00                                       ; $4B46: $C7
    call nc, $54E7                                ; $4B47: $D4 $E7 $54
    rst $20                                       ; $4B4A: $E7
    ld d, a                                       ; $4B4B: $57
    rst $20                                       ; $4B4C: $E7
    ld d, [hl]                                    ; $4B4D: $56
    rst $00                                       ; $4B4E: $C7
    ld d, [hl]                                    ; $4B4F: $56
    ld hl, sp+$4A                                 ; $4B50: $F8 $4A
    ld hl, sp-$36                                 ; $4B52: $F8 $CA
    ld hl, sp+$4A                                 ; $4B54: $F8 $4A
    ld hl, sp+$4A                                 ; $4B56: $F8 $4A
    ld hl, sp+$4A                                 ; $4B58: $F8 $4A
    ld hl, sp-$36                                 ; $4B5A: $F8 $CA
    ld hl, sp+$4A                                 ; $4B5C: $F8 $4A
    ld hl, sp+$4A                                 ; $4B5E: $F8 $4A
    ccf                                           ; $4B60: $3F
    cp a                                          ; $4B61: $BF
    ccf                                           ; $4B62: $3F
    cp a                                          ; $4B63: $BF
    ccf                                           ; $4B64: $3F
    cp a                                          ; $4B65: $BF
    ccf                                           ; $4B66: $3F
    cp a                                          ; $4B67: $BF
    ccf                                           ; $4B68: $3F
    cp a                                          ; $4B69: $BF
    ccf                                           ; $4B6A: $3F
    cp a                                          ; $4B6B: $BF
    ccf                                           ; $4B6C: $3F
    cp a                                          ; $4B6D: $BF
    ccf                                           ; $4B6E: $3F
    cp a                                          ; $4B6F: $BF
    add hl, sp                                    ; $4B70: $39
    inc bc                                        ; $4B71: $03
    ld bc, $1903                                  ; $4B72: $01 $03 $19
    inc bc                                        ; $4B75: $03
    add hl, de                                    ; $4B76: $19
    inc bc                                        ; $4B77: $03
    add hl, de                                    ; $4B78: $19
    inc bc                                        ; $4B79: $03
    add hl, de                                    ; $4B7A: $19
    inc bc                                        ; $4B7B: $03
    add hl, de                                    ; $4B7C: $19
    inc bc                                        ; $4B7D: $03
    add hl, de                                    ; $4B7E: $19
    inc bc                                        ; $4B7F: $03
    dec sp                                        ; $4B80: $3B
    add b                                         ; $4B81: $80
    inc bc                                        ; $4B82: $03
    add b                                         ; $4B83: $80
    dec hl                                        ; $4B84: $2B
    add b                                         ; $4B85: $80
    dec hl                                        ; $4B86: $2B
    add b                                         ; $4B87: $80
    inc bc                                        ; $4B88: $03
    add b                                         ; $4B89: $80
    inc de                                        ; $4B8A: $13
    add b                                         ; $4B8B: $80
    inc de                                        ; $4B8C: $13
    add b                                         ; $4B8D: $80
    inc bc                                        ; $4B8E: $03
    add b                                         ; $4B8F: $80
    and b                                         ; $4B90: $A0
    ldh a, [$A0]                                  ; $4B91: $F0 $A0
    ldh a, [$A0]                                  ; $4B93: $F0 $A0
    ldh a, [$A0]                                  ; $4B95: $F0 $A0
    ldh a, [$A0]                                  ; $4B97: $F0 $A0
    ldh a, [$A0]                                  ; $4B99: $F0 $A0
    ldh a, [$A0]                                  ; $4B9B: $F0 $A0
    ldh a, [$A0]                                  ; $4B9D: $F0 $A0
    ldh a, [$A1]                                  ; $4B9F: $F0 $A1
    ld [hl], b                                    ; $4BA1: $70
    and [hl]                                      ; $4BA2: $A6
    ld [hl], b                                    ; $4BA3: $70
    and l                                         ; $4BA4: $A5
    ld [hl], b                                    ; $4BA5: $70
    and h                                         ; $4BA6: $A4
    ld [hl], b                                    ; $4BA7: $70
    and d                                         ; $4BA8: $A2
    ld [hl], b                                    ; $4BA9: $70
    and l                                         ; $4BAA: $A5
    ld [hl], b                                    ; $4BAB: $70
    and l                                         ; $4BAC: $A5
    ld [hl], b                                    ; $4BAD: $70
    and a                                         ; $4BAE: $A7
    ld [hl], b                                    ; $4BAF: $70
    rst $38                                       ; $4BB0: $FF
    sbc a                                         ; $4BB1: $9F
    rst $38                                       ; $4BB2: $FF
    pop de                                        ; $4BB3: $D1
    ccf                                           ; $4BB4: $3F
    or c                                          ; $4BB5: $B1
    rra                                           ; $4BB6: $1F
    reti                                          ; $4BB7: $D9


    rrca                                          ; $4BB8: $0F
    rst $28                                       ; $4BB9: $EF
    rlca                                          ; $4BBA: $07
    db $F4                                        ; $4BBB: $F4
    rlca                                          ; $4BBC: $07
    or $07                                        ; $4BBD: $F6 $07
    ld a, [hl]                                    ; $4BBF: $7E
    di                                            ; $4BC0: $F3
    db $F4                                        ; $4BC1: $F4
    di                                            ; $4BC2: $F3
    inc d                                         ; $4BC3: $14
    ld a, [c]                                     ; $4BC4: $F2
    inc d                                         ; $4BC5: $14
    ld a, [c]                                     ; $4BC6: $F2
    dec d                                         ; $4BC7: $15
    ldh a, [$F5]                                  ; $4BC8: $F0 $F5
    ldh a, [$15]                                  ; $4BCA: $F0 $15
    ldh a, [rNR14]                                ; $4BCC: $F0 $14
    ldh a, [$15]                                  ; $4BCE: $F0 $15
    rla                                           ; $4BD0: $17
    nop                                           ; $4BD1: $00
    stop                                          ; $4BD2: $10 $00
    ld d, $00                                     ; $4BD4: $16 $00
    ld d, $00                                     ; $4BD6: $16 $00
    stop                                          ; $4BD8: $10 $00
    rlca                                          ; $4BDA: $07
    nop                                           ; $4BDB: $00
    rlca                                          ; $4BDC: $07
    nop                                           ; $4BDD: $00
    rlca                                          ; $4BDE: $07
    nop                                           ; $4BDF: $00
    ld a, [$F400]                                 ; $4BE0: $FA $00 $F4
    nop                                           ; $4BE3: $00
    ld a, [$F400]                                 ; $4BE4: $FA $00 $F4
    nop                                           ; $4BE7: $00
    ld hl, sp+$00                                 ; $4BE8: $F8 $00
    pop af                                        ; $4BEA: $F1
    nop                                           ; $4BEB: $00
    rst $00                                       ; $4BEC: $C7
    nop                                           ; $4BED: $00
    cp a                                          ; $4BEE: $BF
    nop                                           ; $4BEF: $00
    ld [bc], a                                    ; $4BF0: $02
    db $FC                                        ; $4BF1: $FC
    ld bc, $01FE                                  ; $4BF2: $01 $FE $01
    cp $00                                        ; $4BF5: $FE $00
    rst $38                                       ; $4BF7: $FF
    xor b                                         ; $4BF8: $A8
    ld a, a                                       ; $4BF9: $7F
    sub h                                         ; $4BFA: $94
    ld a, a                                       ; $4BFB: $7F
    ret                                           ; $4BFC: $C9


    ld a, $E2                                     ; $4BFD: $3E $E2
    dec e                                         ; $4BFF: $1D
    rrca                                          ; $4C00: $0F
    ldh [rIF], a                                  ; $4C01: $E0 $0F
    ldh [rIF], a                                  ; $4C03: $E0 $0F
    rst $28                                       ; $4C05: $EF
    rrca                                          ; $4C06: $0F
    ld [c], a                                     ; $4C07: $E2
    rrca                                          ; $4C08: $0F
    ld [c], a                                     ; $4C09: $E2
    rrca                                          ; $4C0A: $0F
    jp nz, $0F0F                                  ; $4C0B: $C2 $0F $0F

    rrca                                          ; $4C0E: $0F
    ldh [$1F], a                                  ; $4C0F: $E0 $1F
    ld a, a                                       ; $4C11: $7F
    rra                                           ; $4C12: $1F
    ld a, a                                       ; $4C13: $7F
    rra                                           ; $4C14: $1F
    ld a, a                                       ; $4C15: $7F
    rra                                           ; $4C16: $1F
    ld a, a                                       ; $4C17: $7F
    rra                                           ; $4C18: $1F
    ld a, a                                       ; $4C19: $7F
    rra                                           ; $4C1A: $1F
    ld a, a                                       ; $4C1B: $7F
    rra                                           ; $4C1C: $1F
    ld a, a                                       ; $4C1D: $7F
    rra                                           ; $4C1E: $1F
    ld a, a                                       ; $4C1F: $7F
    rst $38                                       ; $4C20: $FF
    db $FC                                        ; $4C21: $FC
    rst $38                                       ; $4C22: $FF
    db $FC                                        ; $4C23: $FC
    rst $38                                       ; $4C24: $FF
    db $FC                                        ; $4C25: $FC
    rst $38                                       ; $4C26: $FF
    db $FC                                        ; $4C27: $FC
    rst $38                                       ; $4C28: $FF
    db $FC                                        ; $4C29: $FC
    rst $38                                       ; $4C2A: $FF
    db $FC                                        ; $4C2B: $FC
    rst $38                                       ; $4C2C: $FF
    db $FC                                        ; $4C2D: $FC
    rst $38                                       ; $4C2E: $FF
    db $FC                                        ; $4C2F: $FC
    rst $00                                       ; $4C30: $C7
    ld d, a                                       ; $4C31: $57
    rst $00                                       ; $4C32: $C7
    ld d, a                                       ; $4C33: $57
    rst $00                                       ; $4C34: $C7
    ld d, a                                       ; $4C35: $57
    rst $00                                       ; $4C36: $C7
    ld d, a                                       ; $4C37: $57
    rst $00                                       ; $4C38: $C7
    ld d, a                                       ; $4C39: $57
    rst $00                                       ; $4C3A: $C7
    ld d, a                                       ; $4C3B: $57
    rst $00                                       ; $4C3C: $C7
    ld d, a                                       ; $4C3D: $57
    rst $00                                       ; $4C3E: $C7
    ld d, a                                       ; $4C3F: $57
    ld hl, sp+$4A                                 ; $4C40: $F8 $4A
    ld hl, sp-$36                                 ; $4C42: $F8 $CA
    ld hl, sp+$4A                                 ; $4C44: $F8 $4A
    ld hl, sp+$4A                                 ; $4C46: $F8 $4A
    ld hl, sp+$4A                                 ; $4C48: $F8 $4A
    ld hl, sp-$36                                 ; $4C4A: $F8 $CA
    ld hl, sp+$4A                                 ; $4C4C: $F8 $4A
    ld hl, sp-$36                                 ; $4C4E: $F8 $CA
    add hl, de                                    ; $4C50: $19
    inc bc                                        ; $4C51: $03
    add hl, de                                    ; $4C52: $19
    inc bc                                        ; $4C53: $03
    add hl, de                                    ; $4C54: $19
    inc bc                                        ; $4C55: $03
    add hl, de                                    ; $4C56: $19
    inc bc                                        ; $4C57: $03
    add hl, de                                    ; $4C58: $19
    inc bc                                        ; $4C59: $03
    add hl, de                                    ; $4C5A: $19
    inc bc                                        ; $4C5B: $03
    add hl, de                                    ; $4C5C: $19
    inc bc                                        ; $4C5D: $03
    add hl, de                                    ; $4C5E: $19
    inc bc                                        ; $4C5F: $03
    dec de                                        ; $4C60: $1B
    add b                                         ; $4C61: $80
    dec bc                                        ; $4C62: $0B
    add b                                         ; $4C63: $80
    inc bc                                        ; $4C64: $03
    add b                                         ; $4C65: $80
    dec bc                                        ; $4C66: $0B
    add b                                         ; $4C67: $80
    inc bc                                        ; $4C68: $03
    add b                                         ; $4C69: $80
    inc bc                                        ; $4C6A: $03
    add b                                         ; $4C6B: $80
    inc bc                                        ; $4C6C: $03
    add b                                         ; $4C6D: $80
    ld a, c                                       ; $4C6E: $79
    add b                                         ; $4C6F: $80
    and [hl]                                      ; $4C70: $A6
    ld [hl], b                                    ; $4C71: $70
    and h                                         ; $4C72: $A4
    ld [hl], b                                    ; $4C73: $70
    add e                                         ; $4C74: $83
    ld [hl], b                                    ; $4C75: $70
    add e                                         ; $4C76: $83
    ld [hl], b                                    ; $4C77: $70
    add e                                         ; $4C78: $83
    ld [hl], b                                    ; $4C79: $70
    add b                                         ; $4C7A: $80
    ld b, c                                       ; $4C7B: $41
    nop                                           ; $4C7C: $00
    nop                                           ; $4C7D: $00
    nop                                           ; $4C7E: $00
    nop                                           ; $4C7F: $00
    add c                                         ; $4C80: $81
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00
    cp $01                                        ; $4C84: $FE $01
    rst $30                                       ; $4C86: $F7
    rrca                                          ; $4C87: $0F

jr_060_4C88:
    ei                                            ; $4C88: $FB
    rlca                                          ; $4C89: $07
    ld bc, $00FF                                  ; $4C8A: $01 $FF $00
    nop                                           ; $4C8D: $00
    ld a, a                                       ; $4C8E: $7F
    nop                                           ; $4C8F: $00

jr_060_4C90:
    or l                                          ; $4C90: $B5
    nop                                           ; $4C91: $00
    dec bc                                        ; $4C92: $0B
    nop                                           ; $4C93: $00
    dec b                                         ; $4C94: $05
    ldh a, [$E3]                                  ; $4C95: $F0 $E3
    ld hl, sp-$0D                                 ; $4C97: $F8 $F3
    db $FC                                        ; $4C99: $FC
    jp $01F0                                      ; $4C9A: $C3 $F0 $01


    nop                                           ; $4C9D: $00
    adc a                                         ; $4C9E: $8F
    nop                                           ; $4C9F: $00
    rlca                                          ; $4CA0: $07
    ldh a, [rTAC]                                 ; $4CA1: $F0 $07
    ldh a, [rTAC]                                 ; $4CA3: $F0 $07
    rst $30                                       ; $4CA5: $F7
    rlca                                          ; $4CA6: $07
    ldh a, [rTAC]                                 ; $4CA7: $F0 $07
    rst $30                                       ; $4CA9: $F7
    rrca                                          ; $4CAA: $0F
    rst $30                                       ; $4CAB: $F7
    inc a                                         ; $4CAC: $3C
    ret nc                                        ; $4CAD: $D0

    ccf                                           ; $4CAE: $3F
    ldh [$FC], a                                  ; $4CAF: $E0 $FC
    adc l                                         ; $4CB1: $8D
    db $FC                                        ; $4CB2: $FC
    adc l                                         ; $4CB3: $8D
    db $FC                                        ; $4CB4: $FC
    adc l                                         ; $4CB5: $8D
    db $FC                                        ; $4CB6: $FC
    adc h                                         ; $4CB7: $8C
    rst $38                                       ; $4CB8: $FF
    ld a, a                                       ; $4CB9: $7F
    ldh a, [$E0]                                  ; $4CBA: $F0 $E0
    nop                                           ; $4CBC: $00
    nop                                           ; $4CBD: $00
    rst $38                                       ; $4CBE: $FF
    nop                                           ; $4CBF: $00
    rra                                           ; $4CC0: $1F
    ld a, a                                       ; $4CC1: $7F
    rra                                           ; $4CC2: $1F
    ld a, a                                       ; $4CC3: $7F
    rra                                           ; $4CC4: $1F
    ld a, a                                       ; $4CC5: $7F
    rra                                           ; $4CC6: $1F
    ld a, a                                       ; $4CC7: $7F
    rst $38                                       ; $4CC8: $FF
    rst $38                                       ; $4CC9: $FF
    nop                                           ; $4CCA: $00
    nop                                           ; $4CCB: $00
    nop                                           ; $4CCC: $00
    nop                                           ; $4CCD: $00
    ldh [rIF], a                                  ; $4CCE: $E0 $0F
    rst $38                                       ; $4CD0: $FF
    db $FC                                        ; $4CD1: $FC
    rst $38                                       ; $4CD2: $FF
    db $FC                                        ; $4CD3: $FC
    rst $38                                       ; $4CD4: $FF
    db $FC                                        ; $4CD5: $FC
    rst $38                                       ; $4CD6: $FF
    rst $38                                       ; $4CD7: $FF
    rst $38                                       ; $4CD8: $FF
    ld hl, sp+$00                                 ; $4CD9: $F8 $00
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    ld a, a                                       ; $4CDD: $7F
    nop                                           ; $4CDE: $00
    rst $38                                       ; $4CDF: $FF
    rst $00                                       ; $4CE0: $C7
    ld d, a                                       ; $4CE1: $57
    rst $00                                       ; $4CE2: $C7
    ld d, a                                       ; $4CE3: $57
    rst $00                                       ; $4CE4: $C7
    ld d, a                                       ; $4CE5: $57
    rst $00                                       ; $4CE6: $C7
    rst $10                                       ; $4CE7: $D7
    rst $00                                       ; $4CE8: $C7
    rst $10                                       ; $4CE9: $D7
    rst $00                                       ; $4CEA: $C7
    ld b, b                                       ; $4CEB: $40
    ld b, b                                       ; $4CEC: $40
    ld b, b                                       ; $4CED: $40
    jr nz, jr_060_4C90                            ; $4CEE: $20 $A0

    ld hl, sp-$36                                 ; $4CF0: $F8 $CA
    ld hl, sp-$36                                 ; $4CF2: $F8 $CA
    ld hl, sp-$36                                 ; $4CF4: $F8 $CA
    ld hl, sp-$36                                 ; $4CF6: $F8 $CA
    ld hl, sp-$36                                 ; $4CF8: $F8 $CA
    ld hl, sp+$32                                 ; $4CFA: $F8 $32
    ld a, h                                       ; $4CFC: $7C
    nop                                           ; $4CFD: $00
    ccf                                           ; $4CFE: $3F
    nop                                           ; $4CFF: $00
    ccf                                           ; $4D00: $3F
    cp a                                          ; $4D01: $BF
    ccf                                           ; $4D02: $3F
    cp a                                          ; $4D03: $BF
    ccf                                           ; $4D04: $3F
    cp a                                          ; $4D05: $BF
    jr nc, jr_060_4C88                            ; $4D06: $30 $80

    daa                                           ; $4D08: $27
    add b                                         ; $4D09: $80
    jr c, @-$7E                                   ; $4D0A: $38 $80

    ld bc, $E180                                  ; $4D0C: $01 $80 $E1
    ld bc, $0319                                  ; $4D0F: $01 $19 $03
    add hl, de                                    ; $4D12: $19
    inc bc                                        ; $4D13: $03
    ld [bc], a                                    ; $4D14: $02

jr_060_4D15:
    ld bc, $FC03                                  ; $4D15: $01 $03 $FC
    add sp, $17                                   ; $4D18: $E8 $17
    ld b, b                                       ; $4D1A: $40
    add b                                         ; $4D1B: $80
    jr nz, jr_060_4D3D                            ; $4D1C: $20 $1F

    ld a, a                                       ; $4D1E: $7F
    nop                                           ; $4D1F: $00
    ld a, e                                       ; $4D20: $7B
    add h                                         ; $4D21: $84
    ld e, l                                       ; $4D22: $5D
    and d                                         ; $4D23: $A2
    inc a                                         ; $4D24: $3C
    ret nz                                        ; $4D25: $C0

    add b                                         ; $4D26: $80
    ld a, a                                       ; $4D27: $7F
    ld h, b                                       ; $4D28: $60
    add b                                         ; $4D29: $80
    db $10                                        ; $4D2A: $10
    rrca                                          ; $4D2B: $0F
    nop                                           ; $4D2C: $00
    rst $38                                       ; $4D2D: $FF
    rst $38                                       ; $4D2E: $FF
    nop                                           ; $4D2F: $00
    add b                                         ; $4D30: $80
    ldh a, [rSC]                                  ; $4D31: $F0 $02
    pop bc                                        ; $4D33: $C1
    ld a, [hl+]                                   ; $4D34: $2A
    dec d                                         ; $4D35: $15
    dec d                                         ; $4D36: $15
    ld [rRAMG], a                                 ; $4D37: $EA $00 $00
    nop                                           ; $4D3A: $00
    rst $38                                       ; $4D3B: $FF
    rlca                                          ; $4D3C: $07

jr_060_4D3D:
    rst $38                                       ; $4D3D: $FF
    rst $28                                       ; $4D3E: $EF
    rra                                           ; $4D3F: $1F
    ld b, c                                       ; $4D40: $41
    ld a, $10                                     ; $4D41: $3E $10
    pop hl                                        ; $4D43: $E1
    jr nz, jr_060_4D15                            ; $4D44: $20 $CF

    ld e, a                                       ; $4D46: $5F
    add b                                         ; $4D47: $80
    rra                                           ; $4D48: $1F
    nop                                           ; $4D49: $00
    cpl                                           ; $4D4A: $2F
    ldh a, [$F1]                                  ; $4D4B: $F0 $F1
    ld hl, sp-$08                                 ; $4D4D: $F8 $F8
    db $FC                                        ; $4D4F: $FC
    nop                                           ; $4D50: $00
    nop                                           ; $4D51: $00
    nop                                           ; $4D52: $00
    rst $38                                       ; $4D53: $FF
    nop                                           ; $4D54: $00
    rst $38                                       ; $4D55: $FF
    db $FD                                        ; $4D56: $FD
    inc bc                                        ; $4D57: $03
    cp $01                                        ; $4D58: $FE $01
    rst $38                                       ; $4D5A: $FF
    nop                                           ; $4D5B: $00
    rst $38                                       ; $4D5C: $FF
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    rra                                           ; $4D60: $1F
    nop                                           ; $4D61: $00
    rlca                                          ; $4D62: $07
    ldh a, [rNR13]                                ; $4D63: $F0 $13
    ld hl, sp-$07                                 ; $4D65: $F8 $F9
    db $FC                                        ; $4D67: $FC
    db $FC                                        ; $4D68: $FC
    cp $7C                                        ; $4D69: $FE $7C
    cp $E0                                        ; $4D6B: $FE $E0
    ld [hl], b                                    ; $4D6D: $70
    ld a, c                                       ; $4D6E: $79
    nop                                           ; $4D6F: $00
    ccf                                           ; $4D70: $3F
    ldh [$3F], a                                  ; $4D71: $E0 $3F
    ldh [$3F], a                                  ; $4D73: $E0 $3F
    ldh [$3F], a                                  ; $4D75: $E0 $3F
    ld h, b                                       ; $4D77: $60
    cp a                                          ; $4D78: $BF
    jr nz, jr_060_4DBA                            ; $4D79: $20 $3F

    rra                                           ; $4D7B: $1F
    ld bc, $0700                                  ; $4D7C: $01 $00 $07
    inc bc                                        ; $4D7F: $03
    rst $38                                       ; $4D80: $FF
    nop                                           ; $4D81: $00
    rst $38                                       ; $4D82: $FF
    nop                                           ; $4D83: $00
    rst $38                                       ; $4D84: $FF
    nop                                           ; $4D85: $00
    rst $38                                       ; $4D86: $FF
    nop                                           ; $4D87: $00
    rst $38                                       ; $4D88: $FF
    nop                                           ; $4D89: $00
    rst $38                                       ; $4D8A: $FF
    rst $38                                       ; $4D8B: $FF
    rst $38                                       ; $4D8C: $FF
    ret nz                                        ; $4D8D: $C0

    rst $38                                       ; $4D8E: $FF
    rst $38                                       ; $4D8F: $FF
    ldh [rTAC], a                                 ; $4D90: $E0 $07

jr_060_4D92:
    ldh a, [rTAC]                                 ; $4D92: $F0 $07
    ldh a, [$03]                                  ; $4D94: $F0 $03
    ld hl, sp+$03                                 ; $4D96: $F8 $03
    ld hl, sp+$00                                 ; $4D98: $F8 $00
    rst $38                                       ; $4D9A: $FF
    rst $38                                       ; $4D9B: $FF
    rst $38                                       ; $4D9C: $FF
    inc b                                         ; $4D9D: $04
    rst $38                                       ; $4D9E: $FF
    rst $38                                       ; $4D9F: $FF
    nop                                           ; $4DA0: $00
    rst $38                                       ; $4DA1: $FF
    nop                                           ; $4DA2: $00
    rst $38                                       ; $4DA3: $FF
    nop                                           ; $4DA4: $00
    rst $38                                       ; $4DA5: $FF
    rlca                                          ; $4DA6: $07
    db $E3                                        ; $4DA7: $E3
    ccf                                           ; $4DA8: $3F
    rlca                                          ; $4DA9: $07
    db $FC                                        ; $4DAA: $FC
    inc a                                         ; $4DAB: $3C
    ld hl, sp-$40                                 ; $4DAC: $F8 $C0
    ret nz                                        ; $4DAE: $C0

    nop                                           ; $4DAF: $00
    jr nz, jr_060_4D92                            ; $4DB0: $20 $E0

    db $10                                        ; $4DB2: $10
    ret nc                                        ; $4DB3: $D0

    ld [hl], b                                    ; $4DB4: $70
    ld [hl], b                                    ; $4DB5: $70
    pop af                                        ; $4DB6: $F1
    ldh a, [$C2]                                  ; $4DB7: $F0 $C2
    ret nz                                        ; $4DB9: $C0

jr_060_4DBA:
    ldh a, [$F1]                                  ; $4DBA: $F0 $F1
    db $10                                        ; $4DBC: $10
    rla                                           ; $4DBD: $17
    db $10                                        ; $4DBE: $10
    sbc $18                                       ; $4DBF: $DE $18
    nop                                           ; $4DC1: $00
    jr nz, jr_060_4DC9                            ; $4DC2: $20 $05

    ld b, b                                       ; $4DC4: $40
    dec de                                        ; $4DC5: $1B
    add b                                         ; $4DC6: $80
    scf                                           ; $4DC7: $37
    nop                                           ; $4DC8: $00

jr_060_4DC9:
    rst $08                                       ; $4DC9: $CF
    nop                                           ; $4DCA: $00
    sbc a                                         ; $4DCB: $9F
    nop                                           ; $4DCC: $00
    ccf                                           ; $4DCD: $3F
    nop                                           ; $4DCE: $00
    ld a, a                                       ; $4DCF: $7F
    ld [hl], c                                    ; $4DD0: $71
    ld bc, $813F                                  ; $4DD1: $01 $3F $81
    ccf                                           ; $4DD4: $3F
    add c                                         ; $4DD5: $81
    rra                                           ; $4DD6: $1F
    pop bc                                        ; $4DD7: $C1
    rra                                           ; $4DD8: $1F
    sbc $0F                                       ; $4DD9: $DE $0F
    rst $28                                       ; $4DDB: $EF
    rrca                                          ; $4DDC: $0F
    ldh [rIF], a                                  ; $4DDD: $E0 $0F
    rst $20                                       ; $4DDF: $E7
    rst $38                                       ; $4DE0: $FF
    add b                                         ; $4DE1: $80
    rst $38                                       ; $4DE2: $FF
    add b                                         ; $4DE3: $80
    rst $38                                       ; $4DE4: $FF
    add b                                         ; $4DE5: $80
    rst $38                                       ; $4DE6: $FF
    ret nz                                        ; $4DE7: $C0

    rst $38                                       ; $4DE8: $FF
    rst $38                                       ; $4DE9: $FF
    rst $38                                       ; $4DEA: $FF
    rst $38                                       ; $4DEB: $FF
    rst $38                                       ; $4DEC: $FF
    rst $38                                       ; $4DED: $FF
    rst $38                                       ; $4DEE: $FF
    rst $38                                       ; $4DEF: $FF
    rst $38                                       ; $4DF0: $FF
    nop                                           ; $4DF1: $00
    rst $38                                       ; $4DF2: $FF
    nop                                           ; $4DF3: $00
    rst $38                                       ; $4DF4: $FF
    nop                                           ; $4DF5: $00
    rst $38                                       ; $4DF6: $FF
    nop                                           ; $4DF7: $00
    rst $38                                       ; $4DF8: $FF
    rst $38                                       ; $4DF9: $FF
    rst $38                                       ; $4DFA: $FF
    rst $38                                       ; $4DFB: $FF
    rst $38                                       ; $4DFC: $FF
    nop                                           ; $4DFD: $00
    rst $38                                       ; $4DFE: $FF
    rst $38                                       ; $4DFF: $FF
    ldh a, [rTAC]                                 ; $4E00: $F0 $07
    ldh a, [$03]                                  ; $4E02: $F0 $03
    ld hl, sp+$03                                 ; $4E04: $F8 $03
    rst $38                                       ; $4E06: $FF
    nop                                           ; $4E07: $00
    rst $38                                       ; $4E08: $FF
    rst $38                                       ; $4E09: $FF

jr_060_4E0A:
    rst $38                                       ; $4E0A: $FF
    db $FC                                        ; $4E0B: $FC
    rst $38                                       ; $4E0C: $FF
    rlca                                          ; $4E0D: $07
    rst $38                                       ; $4E0E: $FF
    rst $38                                       ; $4E0F: $FF
    ld bc, $07FC                                  ; $4E10: $01 $FC $07
    di                                            ; $4E13: $F3
    ld a, a                                       ; $4E14: $7F
    ccf                                           ; $4E15: $3F
    rst $38                                       ; $4E16: $FF
    rst $38                                       ; $4E17: $FF
    rst $38                                       ; $4E18: $FF
    ld h, a                                       ; $4E19: $67
    rst $38                                       ; $4E1A: $FF
    rst $38                                       ; $4E1B: $FF
    rst $38                                       ; $4E1C: $FF
    add hl, de                                    ; $4E1D: $19
    pop hl                                        ; $4E1E: $E1
    xor $00                                       ; $4E1F: $EE $00
    nop                                           ; $4E21: $00
    ccf                                           ; $4E22: $3F
    nop                                           ; $4E23: $00
    ld c, $00                                     ; $4E24: $0E $00
    ld h, h                                       ; $4E26: $64
    nop                                           ; $4E27: $00
    nop                                           ; $4E28: $00
    nop                                           ; $4E29: $00
    dec b                                         ; $4E2A: $05
    nop                                           ; $4E2B: $00
    ld c, c                                       ; $4E2C: $49
    inc h                                         ; $4E2D: $24
    ld bc, $01EC                                  ; $4E2E: $01 $EC $01
    nop                                           ; $4E31: $00
    add b                                         ; $4E32: $80
    nop                                           ; $4E33: $00
    rla                                           ; $4E34: $17
    dec c                                         ; $4E35: $0D
    ld e, l                                       ; $4E36: $5D
    ccf                                           ; $4E37: $3F
    ld a, h                                       ; $4E38: $7C
    ccf                                           ; $4E39: $3F
    ld a, d                                       ; $4E3A: $7A
    inc a                                         ; $4E3B: $3C
    ld d, b                                       ; $4E3C: $50
    jr nz, jr_060_4E4B                            ; $4E3D: $20 $0C

    nop                                           ; $4E3F: $00
    ccf                                           ; $4E40: $3F
    ccf                                           ; $4E41: $3F
    ccf                                           ; $4E42: $3F
    jr nz, jr_060_4E84                            ; $4E43: $20 $3F

    jr nz, jr_060_4E86                            ; $4E45: $20 $3F

    jr nz, @+$81                                  ; $4E47: $20 $7F

    jr nz, jr_060_4E0A                            ; $4E49: $20 $BF

jr_060_4E4B:
    jr nz, jr_060_4E8C                            ; $4E4B: $20 $3F

    jr nz, jr_060_4E8E                            ; $4E4D: $20 $3F

    rra                                           ; $4E4F: $1F
    rst $38                                       ; $4E50: $FF
    rst $38                                       ; $4E51: $FF
    rst $38                                       ; $4E52: $FF
    ld de, $11FF                                  ; $4E53: $11 $FF $11
    rst $38                                       ; $4E56: $FF
    ld de, $11FF                                  ; $4E57: $11 $FF $11
    rst $38                                       ; $4E5A: $FF
    ld de, $11FF                                  ; $4E5B: $11 $FF $11
    rst $38                                       ; $4E5E: $FF
    rst $38                                       ; $4E5F: $FF
    rst $38                                       ; $4E60: $FF
    rst $38                                       ; $4E61: $FF
    rst $38                                       ; $4E62: $FF
    nop                                           ; $4E63: $00
    rst $38                                       ; $4E64: $FF
    nop                                           ; $4E65: $00
    rst $38                                       ; $4E66: $FF
    nop                                           ; $4E67: $00
    rst $38                                       ; $4E68: $FF
    nop                                           ; $4E69: $00
    rst $38                                       ; $4E6A: $FF
    nop                                           ; $4E6B: $00
    rst $38                                       ; $4E6C: $FF
    nop                                           ; $4E6D: $00
    rst $38                                       ; $4E6E: $FF
    rst $38                                       ; $4E6F: $FF
    add b                                         ; $4E70: $80
    sbc l                                         ; $4E71: $9D
    nop                                           ; $4E72: $00
    ld a, l                                       ; $4E73: $7D
    nop                                           ; $4E74: $00
    ld a, l                                       ; $4E75: $7D
    nop                                           ; $4E76: $00
    ld a, h                                       ; $4E77: $7C
    nop                                           ; $4E78: $00
    ld [hl], b                                    ; $4E79: $70
    nop                                           ; $4E7A: $00
    ld b, b                                       ; $4E7B: $40
    nop                                           ; $4E7C: $00
    ld b, $80                                     ; $4E7D: $06 $80
    sub [hl]                                      ; $4E7F: $96
    db $10                                        ; $4E80: $10
    ret nc                                        ; $4E81: $D0

    db $10                                        ; $4E82: $10
    ret nc                                        ; $4E83: $D0

jr_060_4E84:
    ld d, $90                                     ; $4E84: $16 $90

jr_060_4E86:
    inc e                                         ; $4E86: $1C
    nop                                           ; $4E87: $00
    jr c, jr_060_4E8A                             ; $4E88: $38 $00

jr_060_4E8A:
    ld h, b                                       ; $4E8A: $60
    add b                                         ; $4E8B: $80

jr_060_4E8C:
    ld b, b                                       ; $4E8C: $40
    add b                                         ; $4E8D: $80

jr_060_4E8E:
    nop                                           ; $4E8E: $00
    add b                                         ; $4E8F: $80
    nop                                           ; $4E90: $00
    rst $38                                       ; $4E91: $FF
    nop                                           ; $4E92: $00
    ld a, a                                       ; $4E93: $7F
    nop                                           ; $4E94: $00
    ccf                                           ; $4E95: $3F
    nop                                           ; $4E96: $00
    rra                                           ; $4E97: $1F
    nop                                           ; $4E98: $00
    rrca                                          ; $4E99: $0F
    nop                                           ; $4E9A: $00
    dec b                                         ; $4E9B: $05
    nop                                           ; $4E9C: $00
    ld [bc], a                                    ; $4E9D: $02
    nop                                           ; $4E9E: $00
    nop                                           ; $4E9F: $00
    rlca                                          ; $4EA0: $07
    rst $30                                       ; $4EA1: $F7
    rlca                                          ; $4EA2: $07
    pop af                                        ; $4EA3: $F1
    rlca                                          ; $4EA4: $07
    pop af                                        ; $4EA5: $F1
    rlca                                          ; $4EA6: $07
    push af                                       ; $4EA7: $F5
    inc bc                                        ; $4EA8: $03
    ld sp, hl                                     ; $4EA9: $F9
    inc bc                                        ; $4EAA: $03
    ld d, e                                       ; $4EAB: $53
    inc bc                                        ; $4EAC: $03
    xor e                                         ; $4EAD: $AB
    ld bc, $FF05                                  ; $4EAE: $01 $05 $FF
    rst $38                                       ; $4EB1: $FF
    rst $38                                       ; $4EB2: $FF
    rst $38                                       ; $4EB3: $FF
    rst $38                                       ; $4EB4: $FF
    ld [$88FF], sp                                ; $4EB5: $08 $FF $88
    rst $38                                       ; $4EB8: $FF
    ret z                                         ; $4EB9: $C8

    rst $38                                       ; $4EBA: $FF
    ret z                                         ; $4EBB: $C8

    rst $38                                       ; $4EBC: $FF
    add sp, -$01                                  ; $4EBD: $E8 $FF
    ccf                                           ; $4EBF: $3F
    rst $38                                       ; $4EC0: $FF
    inc c                                         ; $4EC1: $0C
    rst $38                                       ; $4EC2: $FF
    rst $38                                       ; $4EC3: $FF
    rst $38                                       ; $4EC4: $FF
    jr nz, @+$01                                  ; $4EC5: $20 $FF

    jr nz, @+$01                                  ; $4EC7: $20 $FF

    jr nz, @+$01                                  ; $4EC9: $20 $FF

    jr nz, @+$01                                  ; $4ECB: $20 $FF

    jr nz, @+$01                                  ; $4ECD: $20 $FF

    rst $38                                       ; $4ECF: $FF
    rst $38                                       ; $4ED0: $FF
    ld hl, $FDFC                                  ; $4ED1: $21 $FC $FD
    ld hl, sp+$23                                 ; $4ED4: $F8 $23
    ld hl, sp+$23                                 ; $4ED6: $F8 $23
    ld hl, sp+$23                                 ; $4ED8: $F8 $23
    ld hl, sp+$23                                 ; $4EDA: $F8 $23
    ld hl, sp+$23                                 ; $4EDC: $F8 $23
    ld sp, hl                                     ; $4EDE: $F9
    ldh a, [rSB]                                  ; $4EDF: $F0 $01
    inc e                                         ; $4EE1: $1C
    ld bc, $01DC                                  ; $4EE2: $01 $DC $01
    call c, $DC01                                 ; $4EE5: $DC $01 $DC
    inc bc                                        ; $4EE8: $03
    reti                                          ; $4EE9: $D9


    rrca                                          ; $4EEA: $0F
    rst $00                                       ; $4EEB: $C7
    ccf                                           ; $4EEC: $3F
    sbc h                                         ; $4EED: $9C
    rst $38                                       ; $4EEE: $FF
    pop af                                        ; $4EEF: $F1
    nop                                           ; $4EF0: $00
    db $EC                                        ; $4EF1: $EC
    ld [$60E0], sp                                ; $4EF2: $08 $E0 $60
    add b                                         ; $4EF5: $80
    add e                                         ; $4EF6: $83
    nop                                           ; $4EF7: $00
    inc e                                         ; $4EF8: $1C
    nop                                           ; $4EF9: $00
    ld h, b                                       ; $4EFA: $60
    nop                                           ; $4EFB: $00
    add c                                         ; $4EFC: $81
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    ld de, $050C                                  ; $4F00: $11 $0C $05
    inc e                                         ; $4F03: $1C
    dec c                                         ; $4F04: $0D
    inc e                                         ; $4F05: $1C
    dec c                                         ; $4F06: $0D
    inc e                                         ; $4F07: $1C
    add hl, bc                                    ; $4F08: $09
    inc e                                         ; $4F09: $1C
    ld c, l                                       ; $4F0A: $4D
    inc e                                         ; $4F0B: $1C
    ld b, l                                       ; $4F0C: $45
    inc e                                         ; $4F0D: $1C
    add hl, bc                                    ; $4F0E: $09
    inc e                                         ; $4F0F: $1C
    ret nz                                        ; $4F10: $C0

    nop                                           ; $4F11: $00
    and b                                         ; $4F12: $A0
    ld b, b                                       ; $4F13: $40
    ret nz                                        ; $4F14: $C0

    jr nz, @-$3E                                  ; $4F15: $20 $C0

    jr nc, @-$16                                  ; $4F17: $30 $E8

    db $10                                        ; $4F19: $10
    and b                                         ; $4F1A: $A0
    ld e, b                                       ; $4F1B: $58
    ret nc                                        ; $4F1C: $D0

    inc l                                         ; $4F1D: $2C
    ld a, [c]                                     ; $4F1E: $F2
    inc c                                         ; $4F1F: $0C
    nop                                           ; $4F20: $00
    ld d, [hl]                                    ; $4F21: $56
    nop                                           ; $4F22: $00
    ld d, h                                       ; $4F23: $54
    nop                                           ; $4F24: $00
    ld d, b                                       ; $4F25: $50
    nop                                           ; $4F26: $00
    ld c, h                                       ; $4F27: $4C
    nop                                           ; $4F28: $00
    ld e, h                                       ; $4F29: $5C
    nop                                           ; $4F2A: $00
    ld e, h                                       ; $4F2B: $5C
    nop                                           ; $4F2C: $00
    ld d, d                                       ; $4F2D: $52
    nop                                           ; $4F2E: $00
    ld b, [hl]                                    ; $4F2F: $46
    nop                                           ; $4F30: $00
    add b                                         ; $4F31: $80
    nop                                           ; $4F32: $00
    add b                                         ; $4F33: $80
    nop                                           ; $4F34: $00
    add b                                         ; $4F35: $80
    rlca                                          ; $4F36: $07
    add b                                         ; $4F37: $80
    rra                                           ; $4F38: $1F
    add b                                         ; $4F39: $80
    ld a, a                                       ; $4F3A: $7F
    add b                                         ; $4F3B: $80
    ld a, a                                       ; $4F3C: $7F
    add b                                         ; $4F3D: $80
    ld a, a                                       ; $4F3E: $7F
    add b                                         ; $4F3F: $80
    nop                                           ; $4F40: $00
    nop                                           ; $4F41: $00
    inc c                                         ; $4F42: $0C
    ld bc, $0070                                  ; $4F43: $01 $70 $00
    add b                                         ; $4F46: $80
    nop                                           ; $4F47: $00
    add b                                         ; $4F48: $80
    nop                                           ; $4F49: $00
    ret nz                                        ; $4F4A: $C0

    nop                                           ; $4F4B: $00
    ldh [rP1], a                                  ; $4F4C: $E0 $00
    ldh a, [rP1]                                  ; $4F4E: $F0 $00
    nop                                           ; $4F50: $00
    ld a, [hl-]                                   ; $4F51: $3A
    nop                                           ; $4F52: $00
    ld e, l                                       ; $4F53: $5D
    nop                                           ; $4F54: $00
    xor b                                         ; $4F55: $A8
    nop                                           ; $4F56: $00
    ld d, e                                       ; $4F57: $53
    nop                                           ; $4F58: $00
    and a                                         ; $4F59: $A7
    nop                                           ; $4F5A: $00
    ld l, a                                       ; $4F5B: $6F
    nop                                           ; $4F5C: $00
    cpl                                           ; $4F5D: $2F
    nop                                           ; $4F5E: $00
    ccf                                           ; $4F5F: $3F
    rst $38                                       ; $4F60: $FF
    sbc a                                         ; $4F61: $9F
    ld a, a                                       ; $4F62: $7F
    ld e, a                                       ; $4F63: $5F
    ccf                                           ; $4F64: $3F
    ccf                                           ; $4F65: $3F
    rra                                           ; $4F66: $1F
    sbc a                                         ; $4F67: $9F
    rrca                                          ; $4F68: $0F
    rst $28                                       ; $4F69: $EF
    rlca                                          ; $4F6A: $07
    rst $30                                       ; $4F6B: $F7
    inc bc                                        ; $4F6C: $03
    jp $BB03                                      ; $4F6D: $C3 $03 $BB


    rst $38                                       ; $4F70: $FF
    rst $38                                       ; $4F71: $FF
    rst $38                                       ; $4F72: $FF
    rst $38                                       ; $4F73: $FF
    rst $38                                       ; $4F74: $FF
    sub h                                         ; $4F75: $94
    rst $38                                       ; $4F76: $FF
    sub h                                         ; $4F77: $94
    rst $38                                       ; $4F78: $FF
    sbc a                                         ; $4F79: $9F
    rst $38                                       ; $4F7A: $FF
    sbc b                                         ; $4F7B: $98
    rst $38                                       ; $4F7C: $FF
    sbc b                                         ; $4F7D: $98
    rst $38                                       ; $4F7E: $FF
    sbc b                                         ; $4F7F: $98
    rst $38                                       ; $4F80: $FF
    rst $20                                       ; $4F81: $E7
    rst $38                                       ; $4F82: $FF
    db $FC                                        ; $4F83: $FC
    ld a, [c]                                     ; $4F84: $F2
    inc d                                         ; $4F85: $14
    ldh a, [rNR14]                                ; $4F86: $F0 $14
    ldh a, [$F1]                                  ; $4F88: $F0 $F1
    ldh a, [$15]                                  ; $4F8A: $F0 $15
    ldh a, [rNR14]                                ; $4F8C: $F0 $14
    ld a, [c]                                     ; $4F8E: $F2
    inc d                                         ; $4F8F: $14
    rra                                           ; $4F90: $1F
    cp a                                          ; $4F91: $BF
    rra                                           ; $4F92: $1F
    ccf                                           ; $4F93: $3F
    rra                                           ; $4F94: $1F
    cp a                                          ; $4F95: $BF
    rra                                           ; $4F96: $1F
    cp a                                          ; $4F97: $BF

jr_060_4F98:
    rra                                           ; $4F98: $1F
    ccf                                           ; $4F99: $3F
    rra                                           ; $4F9A: $1F
    ccf                                           ; $4F9B: $3F

jr_060_4F9C:
    rra                                           ; $4F9C: $1F
    ccf                                           ; $4F9D: $3F
    rra                                           ; $4F9E: $1F
    ccf                                           ; $4F9F: $3F
    ld bc, $0500                                  ; $4FA0: $01 $00 $05
    nop                                           ; $4FA3: $00
    nop                                           ; $4FA4: $00
    nop                                           ; $4FA5: $00
    rla                                           ; $4FA6: $17
    nop                                           ; $4FA7: $00
    rla                                           ; $4FA8: $17
    nop                                           ; $4FA9: $00
    stop                                          ; $4FAA: $10 $00
    rla                                           ; $4FAC: $17
    nop                                           ; $4FAD: $00
    rla                                           ; $4FAE: $17
    nop                                           ; $4FAF: $00
    push bc                                       ; $4FB0: $C5
    inc e                                         ; $4FB1: $1C
    push bc                                       ; $4FB2: $C5
    inc e                                         ; $4FB3: $1C
    dec b                                         ; $4FB4: $05
    inc e                                         ; $4FB5: $1C
    ld c, l                                       ; $4FB6: $4D
    inc e                                         ; $4FB7: $1C
    ld c, l                                       ; $4FB8: $4D
    inc e                                         ; $4FB9: $1C
    add hl, bc                                    ; $4FBA: $09
    inc e                                         ; $4FBB: $1C
    add l                                         ; $4FBC: $85
    inc e                                         ; $4FBD: $1C
    adc c                                         ; $4FBE: $89
    inc e                                         ; $4FBF: $1C
    ld sp, hl                                     ; $4FC0: $F9
    nop                                           ; $4FC1: $00
    ld hl, sp+$00                                 ; $4FC2: $F8 $00
    cp b                                          ; $4FC4: $B8
    nop                                           ; $4FC5: $00
    call c, $EC00                                 ; $4FC6: $DC $00 $EC
    nop                                           ; $4FC9: $00
    sub $00                                       ; $4FCA: $D6 $00
    xor $00                                       ; $4FCC: $EE $00
    or $00                                        ; $4FCE: $F6 $00
    nop                                           ; $4FD0: $00
    nop                                           ; $4FD1: $00
    add b                                         ; $4FD2: $80
    nop                                           ; $4FD3: $00
    ld b, b                                       ; $4FD4: $40
    add b                                         ; $4FD5: $80
    jr nz, jr_060_4F98                            ; $4FD6: $20 $C0

    db $10                                        ; $4FD8: $10
    ldh [$08], a                                  ; $4FD9: $E0 $08
    ldh a, [rP1]                                  ; $4FDB: $F0 $00
    ld hl, sp+$04                                 ; $4FDD: $F8 $04
    ld hl, sp+$02                                 ; $4FDF: $F8 $02
    nop                                           ; $4FE1: $00
    ld bc, $4100                                  ; $4FE2: $01 $00 $41
    nop                                           ; $4FE5: $00
    nop                                           ; $4FE6: $00
    nop                                           ; $4FE7: $00
    nop                                           ; $4FE8: $00
    nop                                           ; $4FE9: $00
    nop                                           ; $4FEA: $00
    nop                                           ; $4FEB: $00
    nop                                           ; $4FEC: $00
    nop                                           ; $4FED: $00
    ld bc, $1200                                  ; $4FEE: $01 $00 $12
    nop                                           ; $4FF1: $00
    db $FC                                        ; $4FF2: $FC
    inc bc                                        ; $4FF3: $03
    pop af                                        ; $4FF4: $F1
    ld c, $A7                                     ; $4FF5: $0E $A7
    jr jr_060_5048                                ; $4FF7: $18 $4F

    jr nc, jr_060_505A                            ; $4FF9: $30 $5F

    jr nz, jr_060_4F9C                            ; $4FFB: $20 $9F

    ld h, b                                       ; $4FFD: $60
    ccf                                           ; $4FFE: $3F
    ret nz                                        ; $4FFF: $C0

    ld sp, hl                                     ; $5000: $F9
    rlca                                          ; $5001: $07
    db $E4                                        ; $5002: $E4
    rra                                           ; $5003: $1F
    ret nc                                        ; $5004: $D0

    ccf                                           ; $5005: $3F
    ldh [$3F], a                                  ; $5006: $E0 $3F
    and b                                         ; $5008: $A0
    ld a, a                                       ; $5009: $7F
    ret nz                                        ; $500A: $C0

    ld a, a                                       ; $500B: $7F
    ret nz                                        ; $500C: $C0

    ld a, a                                       ; $500D: $7F
    ret nz                                        ; $500E: $C0

    ld a, a                                       ; $500F: $7F
    rst $20                                       ; $5010: $E7
    ld hl, sp+$1B                                 ; $5011: $F8 $1B
    db $FC                                        ; $5013: $FC
    rlca                                          ; $5014: $07
    db $FC                                        ; $5015: $FC
    ld bc, $01FE                                  ; $5016: $01 $FE $01
    cp $00                                        ; $5019: $FE $00
    rst $38                                       ; $501B: $FF
    nop                                           ; $501C: $00
    rst $38                                       ; $501D: $FF
    nop                                           ; $501E: $00
    rst $38                                       ; $501F: $FF
    rst $38                                       ; $5020: $FF
    nop                                           ; $5021: $00
    or $FF                                        ; $5022: $F6 $FF
    nop                                           ; $5024: $00
    rst $38                                       ; $5025: $FF
    add b                                         ; $5026: $80
    ld a, a                                       ; $5027: $7F
    add b                                         ; $5028: $80
    ld a, a                                       ; $5029: $7F
    add b                                         ; $502A: $80
    ld a, a                                       ; $502B: $7F
    add b                                         ; $502C: $80
    ld a, a                                       ; $502D: $7F
    add b                                         ; $502E: $80
    ld a, a                                       ; $502F: $7F
    or $00                                        ; $5030: $F6 $00
    halt                                          ; $5032: $76
    ld sp, hl                                     ; $5033: $F9
    ld [bc], a                                    ; $5034: $02
    db $FD                                        ; $5035: $FD
    ld [bc], a                                    ; $5036: $02
    db $FD                                        ; $5037: $FD
    ld [bc], a                                    ; $5038: $02
    db $FD                                        ; $5039: $FD
    ld [bc], a                                    ; $503A: $02
    db $FD                                        ; $503B: $FD
    ld [bc], a                                    ; $503C: $02
    db $FD                                        ; $503D: $FD
    ld [bc], a                                    ; $503E: $02
    db $FD                                        ; $503F: $FD
    rst $38                                       ; $5040: $FF
    nop                                           ; $5041: $00
    cp c                                          ; $5042: $B9
    rst $38                                       ; $5043: $FF
    nop                                           ; $5044: $00
    rst $38                                       ; $5045: $FF
    nop                                           ; $5046: $00
    rst $38                                       ; $5047: $FF

jr_060_5048:
    nop                                           ; $5048: $00
    rst $38                                       ; $5049: $FF
    nop                                           ; $504A: $00
    rst $38                                       ; $504B: $FF
    nop                                           ; $504C: $00
    rst $38                                       ; $504D: $FF
    nop                                           ; $504E: $00
    rst $38                                       ; $504F: $FF
    rst $38                                       ; $5050: $FF
    nop                                           ; $5051: $00
    dec sp                                        ; $5052: $3B
    rst $38                                       ; $5053: $FF
    nop                                           ; $5054: $00
    rst $38                                       ; $5055: $FF
    nop                                           ; $5056: $00
    rst $38                                       ; $5057: $FF
    nop                                           ; $5058: $00
    rst $38                                       ; $5059: $FF

jr_060_505A:
    nop                                           ; $505A: $00
    rst $38                                       ; $505B: $FF
    nop                                           ; $505C: $00
    rst $38                                       ; $505D: $FF
    nop                                           ; $505E: $00
    rst $38                                       ; $505F: $FF
    rst $38                                       ; $5060: $FF
    nop                                           ; $5061: $00
    ld e, a                                       ; $5062: $5F
    ld hl, sp+$03                                 ; $5063: $F8 $03
    db $FC                                        ; $5065: $FC
    inc bc                                        ; $5066: $03
    db $FC                                        ; $5067: $FC
    ld bc, $01FE                                  ; $5068: $01 $FE $01
    cp $01                                        ; $506B: $FE $01
    cp $01                                        ; $506D: $FE $01
    cp $FF                                        ; $506F: $FE $FF
    nop                                           ; $5071: $00
    sbc a                                         ; $5072: $9F
    ld a, a                                       ; $5073: $7F
    nop                                           ; $5074: $00
    rst $38                                       ; $5075: $FF
    nop                                           ; $5076: $00
    rst $38                                       ; $5077: $FF
    inc bc                                        ; $5078: $03
    db $FC                                        ; $5079: $FC
    ld b, $F9                                     ; $507A: $06 $F9
    inc c                                         ; $507C: $0C
    di                                            ; $507D: $F3
    ld hl, sp+$07                                 ; $507E: $F8 $07
    rst $38                                       ; $5080: $FF
    nop                                           ; $5081: $00
    sub a                                         ; $5082: $97
    ld a, a                                       ; $5083: $7F
    add b                                         ; $5084: $80
    ld a, a                                       ; $5085: $7F
    xor b                                         ; $5086: $A8
    ld d, a                                       ; $5087: $57
    ldh [$1F], a                                  ; $5088: $E0 $1F
    nop                                           ; $508A: $00
    rst $38                                       ; $508B: $FF
    nop                                           ; $508C: $00
    rst $38                                       ; $508D: $FF
    nop                                           ; $508E: $00
    rst $38                                       ; $508F: $FF
    rst $38                                       ; $5090: $FF
    nop                                           ; $5091: $00
    add a                                         ; $5092: $87
    ld hl, sp+$03                                 ; $5093: $F8 $03
    db $FC                                        ; $5095: $FC
    inc bc                                        ; $5096: $03
    db $FC                                        ; $5097: $FC
    inc bc                                        ; $5098: $03
    db $FC                                        ; $5099: $FC
    ld [bc], a                                    ; $509A: $02
    db $FD                                        ; $509B: $FD
    ld [bc], a                                    ; $509C: $02
    db $FD                                        ; $509D: $FD
    ld b, $F9                                     ; $509E: $06 $F9
    rst $20                                       ; $50A0: $E7
    rra                                           ; $50A1: $1F
    sbc b                                         ; $50A2: $98
    ld a, a                                       ; $50A3: $7F
    jr nz, @+$01                                  ; $50A4: $20 $FF

    nop                                           ; $50A6: $00
    rst $38                                       ; $50A7: $FF
    nop                                           ; $50A8: $00
    rst $38                                       ; $50A9: $FF
    nop                                           ; $50AA: $00
    rst $38                                       ; $50AB: $FF
    nop                                           ; $50AC: $00
    rst $38                                       ; $50AD: $FF
    nop                                           ; $50AE: $00
    rst $38                                       ; $50AF: $FF
    sbc a                                         ; $50B0: $9F
    ldh [$27], a                                  ; $50B1: $E0 $27
    ld hl, sp+$0B                                 ; $50B3: $F8 $0B
    db $FC                                        ; $50B5: $FC
    rlca                                          ; $50B6: $07
    db $FC                                        ; $50B7: $FC
    dec b                                         ; $50B8: $05
    cp $03                                        ; $50B9: $FE $03
    cp $03                                        ; $50BB: $FE $03
    cp $03                                        ; $50BD: $FE $03
    cp $FF                                        ; $50BF: $FE $FF
    nop                                           ; $50C1: $00
    ret c                                         ; $50C2: $D8

    daa                                           ; $50C3: $27
    ret nc                                        ; $50C4: $D0

    cpl                                           ; $50C5: $2F
    ret nc                                        ; $50C6: $D0

    cpl                                           ; $50C7: $2F
    ret c                                         ; $50C8: $D8

    cpl                                           ; $50C9: $2F
    ret nc                                        ; $50CA: $D0

    cpl                                           ; $50CB: $2F
    ret c                                         ; $50CC: $D8

    cpl                                           ; $50CD: $2F
    db $FC                                        ; $50CE: $FC
    cpl                                           ; $50CF: $2F
    rst $38                                       ; $50D0: $FF
    nop                                           ; $50D1: $00
    inc bc                                        ; $50D2: $03
    db $FC                                        ; $50D3: $FC
    ld bc, $01FE                                  ; $50D4: $01 $FE $01
    cp $01                                        ; $50D7: $FE $01
    cp $01                                        ; $50D9: $FE $01
    cp $01                                        ; $50DB: $FE $01
    cp $01                                        ; $50DD: $FE $01
    cp $A8                                        ; $50DF: $FE $A8
    ld a, a                                       ; $50E1: $7F
    sub b                                         ; $50E2: $90
    ld a, a                                       ; $50E3: $7F
    xor b                                         ; $50E4: $A8
    ld a, a                                       ; $50E5: $7F
    add b                                         ; $50E6: $80
    ld a, a                                       ; $50E7: $7F
    sbc b                                         ; $50E8: $98
    ld a, a                                       ; $50E9: $7F
    ret nz                                        ; $50EA: $C0

    ccf                                           ; $50EB: $3F
    rst $38                                       ; $50EC: $FF
    nop                                           ; $50ED: $00
    rst $38                                       ; $50EE: $FF
    nop                                           ; $50EF: $00
    inc bc                                        ; $50F0: $03
    db $FC                                        ; $50F1: $FC
    inc bc                                        ; $50F2: $03
    db $FC                                        ; $50F3: $FC
    inc bc                                        ; $50F4: $03
    db $FC                                        ; $50F5: $FC
    inc bc                                        ; $50F6: $03
    db $FC                                        ; $50F7: $FC
    inc bc                                        ; $50F8: $03
    db $FC                                        ; $50F9: $FC
    inc bc                                        ; $50FA: $03
    db $FC                                        ; $50FB: $FC
    rst $38                                       ; $50FC: $FF
    nop                                           ; $50FD: $00
    rst $38                                       ; $50FE: $FF
    nop                                           ; $50FF: $00
    ret nz                                        ; $5100: $C0

    ld a, a                                       ; $5101: $7F
    ret nz                                        ; $5102: $C0

    ld a, a                                       ; $5103: $7F
    ldh [$7F], a                                  ; $5104: $E0 $7F
    ldh [$7F], a                                  ; $5106: $E0 $7F
    or b                                          ; $5108: $B0
    ld a, a                                       ; $5109: $7F
    ld a, h                                       ; $510A: $7C
    ccf                                           ; $510B: $3F
    ld a, a                                       ; $510C: $7F
    ccf                                           ; $510D: $3F
    ld e, a                                       ; $510E: $5F
    ccf                                           ; $510F: $3F
    nop                                           ; $5110: $00
    rst $38                                       ; $5111: $FF
    nop                                           ; $5112: $00
    rst $38                                       ; $5113: $FF
    ld [bc], a                                    ; $5114: $02
    rst $38                                       ; $5115: $FF
    ld [bc], a                                    ; $5116: $02
    rst $38                                       ; $5117: $FF
    inc b                                         ; $5118: $04
    rst $38                                       ; $5119: $FF
    dec e                                         ; $511A: $1D
    cp $FA                                        ; $511B: $FE $FA
    db $FD                                        ; $511D: $FD
    push af                                       ; $511E: $F5
    ei                                            ; $511F: $FB
    add b                                         ; $5120: $80
    ld a, a                                       ; $5121: $7F
    add b                                         ; $5122: $80
    ld a, a                                       ; $5123: $7F
    nop                                           ; $5124: $00
    rst $38                                       ; $5125: $FF
    nop                                           ; $5126: $00
    rst $38                                       ; $5127: $FF
    ld b, c                                       ; $5128: $41
    rst $38                                       ; $5129: $FF
    sub b                                         ; $512A: $90
    rst $38                                       ; $512B: $FF
    ld l, a                                       ; $512C: $6F
    rst $38                                       ; $512D: $FF
    rst $38                                       ; $512E: $FF
    rst $38                                       ; $512F: $FF
    inc bc                                        ; $5130: $03
    db $FC                                        ; $5131: $FC
    rlca                                          ; $5132: $07
    ld a, [$F70F]                                 ; $5133: $FA $0F $F7
    ld a, [hl-]                                   ; $5136: $3A
    rst $08                                       ; $5137: $CF
    ld h, b                                       ; $5138: $60
    sbc a                                         ; $5139: $9F
    ld h, a                                       ; $513A: $67
    sbc a                                         ; $513B: $9F
    xor a                                         ; $513C: $AF
    rst $18                                       ; $513D: $DF
    rst $10                                       ; $513E: $D7
    rst $28                                       ; $513F: $EF
    nop                                           ; $5140: $00
    rst $38                                       ; $5141: $FF
    add b                                         ; $5142: $80
    ld a, a                                       ; $5143: $7F
    add b                                         ; $5144: $80
    ld a, a                                       ; $5145: $7F
    ret nz                                        ; $5146: $C0

    ccf                                           ; $5147: $3F
    ld h, d                                       ; $5148: $62
    sbc a                                         ; $5149: $9F
    dec l                                         ; $514A: $2D
    rst $18                                       ; $514B: $DF
    cp a                                          ; $514C: $BF
    rst $08                                       ; $514D: $CF
    rst $18                                       ; $514E: $DF
    rst $28                                       ; $514F: $EF
    nop                                           ; $5150: $00
    rst $38                                       ; $5151: $FF
    nop                                           ; $5152: $00
    rst $38                                       ; $5153: $FF
    nop                                           ; $5154: $00
    rst $38                                       ; $5155: $FF
    nop                                           ; $5156: $00
    rst $38                                       ; $5157: $FF
    add d                                         ; $5158: $82
    rst $38                                       ; $5159: $FF
    ld c, c                                       ; $515A: $49
    rst $38                                       ; $515B: $FF
    rst $38                                       ; $515C: $FF
    rst $38                                       ; $515D: $FF
    rst $38                                       ; $515E: $FF
    rst $38                                       ; $515F: $FF
    ld bc, $01FE                                  ; $5160: $01 $FE $01
    cp $01                                        ; $5163: $FE $01
    cp $01                                        ; $5165: $FE $01
    cp $01                                        ; $5167: $FE $01
    cp $01                                        ; $5169: $FE $01
    cp $FD                                        ; $516B: $FE $FD
    cp $F8                                        ; $516D: $FE $F8
    rst $38                                       ; $516F: $FF
    nop                                           ; $5170: $00
    rst $38                                       ; $5171: $FF
    nop                                           ; $5172: $00
    rst $38                                       ; $5173: $FF
    nop                                           ; $5174: $00
    rst $38                                       ; $5175: $FF
    nop                                           ; $5176: $00
    rst $38                                       ; $5177: $FF
    jr nz, @+$01                                  ; $5178: $20 $FF

    ld d, d                                       ; $517A: $52
    rst $38                                       ; $517B: $FF
    db $FD                                        ; $517C: $FD
    ld a, a                                       ; $517D: $7F
    rst $38                                       ; $517E: $FF
    ccf                                           ; $517F: $3F
    nop                                           ; $5180: $00
    rst $38                                       ; $5181: $FF
    nop                                           ; $5182: $00
    rst $38                                       ; $5183: $FF
    nop                                           ; $5184: $00
    rst $38                                       ; $5185: $FF
    nop                                           ; $5186: $00
    rst $38                                       ; $5187: $FF
    ld [bc], a                                    ; $5188: $02
    rst $38                                       ; $5189: $FF
    add l                                         ; $518A: $85
    rst $38                                       ; $518B: $FF
    ld e, a                                       ; $518C: $5F
    rst $38                                       ; $518D: $FF
    rst $38                                       ; $518E: $FF
    rst $38                                       ; $518F: $FF
    ld b, $F9                                     ; $5190: $06 $F9
    ld b, $F9                                     ; $5192: $06 $F9
    ld b, $F9                                     ; $5194: $06 $F9
    ld b, $F9                                     ; $5196: $06 $F9
    add e                                         ; $5198: $83
    db $FC                                        ; $5199: $FC
    ld c, l                                       ; $519A: $4D
    cp $FE                                        ; $519B: $FE $FE
    rst $38                                       ; $519D: $FF
    db $FD                                        ; $519E: $FD
    cp $00                                        ; $519F: $FE $00
    rst $38                                       ; $51A1: $FF
    nop                                           ; $51A2: $00
    rst $38                                       ; $51A3: $FF
    ld b, b                                       ; $51A4: $40
    rst $38                                       ; $51A5: $FF
    ld b, b                                       ; $51A6: $40
    rst $38                                       ; $51A7: $FF
    jr nz, @+$01                                  ; $51A8: $20 $FF

    cp b                                          ; $51AA: $B8
    ld a, a                                       ; $51AB: $7F
    ld e, a                                       ; $51AC: $5F
    cp a                                          ; $51AD: $BF
    xor a                                         ; $51AE: $AF
    rst $18                                       ; $51AF: $DF
    inc bc                                        ; $51B0: $03
    cp $03                                        ; $51B1: $FE $03
    cp $07                                        ; $51B3: $FE $07
    cp $07                                        ; $51B5: $FE $07
    cp $0D                                        ; $51B7: $FE $0D
    cp $3E                                        ; $51B9: $FE $3E
    db $FC                                        ; $51BB: $FC
    cp $FC                                        ; $51BC: $FE $FC
    ld a, [$F8FC]                                 ; $51BE: $FA $FC $F8
    cpl                                           ; $51C1: $2F
    db $F4                                        ; $51C2: $F4
    cpl                                           ; $51C3: $2F
    ret nc                                        ; $51C4: $D0

    cpl                                           ; $51C5: $2F
    rst $18                                       ; $51C6: $DF
    jr nz, @-$1E                                  ; $51C7: $20 $E0

    rra                                           ; $51C9: $1F
    ret nz                                        ; $51CA: $C0

    ccf                                           ; $51CB: $3F
    ret nz                                        ; $51CC: $C0

    ccf                                           ; $51CD: $3F
    ldh [$3F], a                                  ; $51CE: $E0 $3F
    ld bc, $04FE                                  ; $51D0: $01 $FE $04
    rst $38                                       ; $51D3: $FF
    add hl, bc                                    ; $51D4: $09
    cp $E1                                        ; $51D5: $FE $E1
    ld e, $1F                                     ; $51D7: $1E $1F
    ldh [$2B], a                                  ; $51D9: $E0 $2B
    db $F4                                        ; $51DB: $F4
    add hl, de                                    ; $51DC: $19
    or $09                                        ; $51DD: $F6 $09
    or $C0                                        ; $51DF: $F6 $C0
    ccf                                           ; $51E1: $3F
    sub b                                         ; $51E2: $90
    ld a, a                                       ; $51E3: $7F
    and b                                         ; $51E4: $A0
    ld a, a                                       ; $51E5: $7F
    add b                                         ; $51E6: $80
    ld a, a                                       ; $51E7: $7F
    add e                                         ; $51E8: $83
    ld a, h                                       ; $51E9: $7C
    add h                                         ; $51EA: $84
    ld a, e                                       ; $51EB: $7B
    adc b                                         ; $51EC: $88
    ld [hl], a                                    ; $51ED: $77
    ld hl, sp+$07                                 ; $51EE: $F8 $07
    ld b, a                                       ; $51F0: $47
    cp b                                          ; $51F1: $B8
    ld b, e                                       ; $51F2: $43
    cp h                                          ; $51F3: $BC
    add e                                         ; $51F4: $83
    ld a, h                                       ; $51F5: $7C
    add e                                         ; $51F6: $83
    ld a, h                                       ; $51F7: $7C
    rst $38                                       ; $51F8: $FF
    nop                                           ; $51F9: $00
    inc bc                                        ; $51FA: $03
    db $FC                                        ; $51FB: $FC
    inc bc                                        ; $51FC: $03
    db $FC                                        ; $51FD: $FC
    dec bc                                        ; $51FE: $0B
    db $FC                                        ; $51FF: $FC
    ld c, a                                       ; $5200: $4F
    ccf                                           ; $5201: $3F
    ld b, l                                       ; $5202: $45
    ccf                                           ; $5203: $3F
    ld c, [hl]                                    ; $5204: $4E
    ccf                                           ; $5205: $3F
    ld c, a                                       ; $5206: $4F
    ccf                                           ; $5207: $3F
    ld e, [hl]                                    ; $5208: $5E
    ccf                                           ; $5209: $3F
    ld c, a                                       ; $520A: $4F
    ccf                                           ; $520B: $3F
    ld e, a                                       ; $520C: $5F
    ccf                                           ; $520D: $3F
    ld c, a                                       ; $520E: $4F
    ccf                                           ; $520F: $3F
    ret z                                         ; $5210: $C8

    di                                            ; $5211: $F3
    nop                                           ; $5212: $00
    push af                                       ; $5213: $F5
    sub b                                         ; $5214: $90
    db $EC                                        ; $5215: $EC
    ld hl, $81DE                                  ; $5216: $21 $DE $81
    ld a, [$F609]                                 ; $5219: $FA $09 $F6
    sbc c                                         ; $521C: $99
    and $A1                                       ; $521D: $E6 $A1
    call c, $FF18                                 ; $521F: $DC $18 $FF
    jp $783C                                      ; $5222: $C3 $3C $78


    add b                                         ; $5225: $80
    ret nz                                        ; $5226: $C0

    nop                                           ; $5227: $00
    sbc $20                                       ; $5228: $DE $20
    rst $38                                       ; $522A: $FF
    nop                                           ; $522B: $00
    sbc l                                         ; $522C: $9D
    ld h, d                                       ; $522D: $62
    inc hl                                        ; $522E: $23
    call c, $EF00                                 ; $522F: $DC $00 $EF
    nop                                           ; $5232: $00
    rst $20                                       ; $5233: $E7
    adc h                                         ; $5234: $8C
    ld h, e                                       ; $5235: $63
    ld b, d                                       ; $5236: $42
    ld hl, $0031                                  ; $5237: $21 $31 $00
    jr z, jr_060_524C                             ; $523A: $28 $10

    ldh a, [$08]                                  ; $523C: $F0 $08
    push bc                                       ; $523E: $C5
    inc hl                                        ; $523F: $23
    db $10                                        ; $5240: $10
    rst $28                                       ; $5241: $EF
    inc de                                        ; $5242: $13
    db $EC                                        ; $5243: $EC
    scf                                           ; $5244: $37
    ret z                                         ; $5245: $C8

    ld c, [hl]                                    ; $5246: $4E
    add b                                         ; $5247: $80
    nop                                           ; $5248: $00
    ld c, $0C                                     ; $5249: $0E $0C
    ld e, [hl]                                    ; $524B: $5E

jr_060_524C:
    ld b, $0E                                     ; $524C: $06 $0E
    nop                                           ; $524E: $00
    rst $08                                       ; $524F: $CF
    ld c, [hl]                                    ; $5250: $4E
    rst $38                                       ; $5251: $FF
    cp h                                          ; $5252: $BC
    ld b, e                                       ; $5253: $43
    rst $38                                       ; $5254: $FF
    nop                                           ; $5255: $00
    rra                                           ; $5256: $1F
    nop                                           ; $5257: $00
    ld b, $79                                     ; $5258: $06 $79
    add hl, sp                                    ; $525A: $39
    ld a, [hl]                                    ; $525B: $7E
    ld c, $7F                                     ; $525C: $0E $7F
    inc bc                                        ; $525E: $03
    ccf                                           ; $525F: $3F
    ld e, $FF                                     ; $5260: $1E $FF
    ld hl, sp+$07                                 ; $5262: $F8 $07
    push hl                                       ; $5264: $E5
    ld a, [de]                                    ; $5265: $1A
    rst $38                                       ; $5266: $FF
    nop                                           ; $5267: $00
    ld [hl], $C9                                  ; $5268: $36 $C9
    db $FC                                        ; $526A: $FC
    inc bc                                        ; $526B: $03
    di                                            ; $526C: $F3
    inc c                                         ; $526D: $0C
    xor a                                         ; $526E: $AF
    ret nc                                        ; $526F: $D0

    ret nz                                        ; $5270: $C0

    ccf                                           ; $5271: $3F
    add e                                         ; $5272: $83
    ld a, h                                       ; $5273: $7C
    cp $01                                        ; $5274: $FE $01
    cp a                                          ; $5276: $BF
    ld b, b                                       ; $5277: $40
    ld a, a                                       ; $5278: $7F
    add b                                         ; $5279: $80
    di                                            ; $527A: $F3
    inc c                                         ; $527B: $0C
    call z, $3833                                 ; $527C: $CC $33 $38
    rst $00                                       ; $527F: $C7
    ld a, [hl-]                                   ; $5280: $3A
    rst $38                                       ; $5281: $FF
    nop                                           ; $5282: $00
    rst $38                                       ; $5283: $FF
    rra                                           ; $5284: $1F
    ldh [$F7], a                                  ; $5285: $E0 $F7
    ld [$03FC], sp                                ; $5287: $08 $FC $03
    ret c                                         ; $528A: $D8

    daa                                           ; $528B: $27
    nop                                           ; $528C: $00
    rst $38                                       ; $528D: $FF
    ld bc, $23FE                                  ; $528E: $01 $FE $23
    ret nz                                        ; $5291: $C0

    ld bc, $9EC0                                  ; $5292: $01 $C0 $9E
    ld b, b                                       ; $5295: $40
    pop bc                                        ; $5296: $C1
    ld e, $49                                     ; $5297: $1E $49
    add [hl]                                      ; $5299: $86
    rlca                                          ; $529A: $07
    add b                                         ; $529B: $80
    sub c                                         ; $529C: $91
    ld [hl+], a                                   ; $529D: $22
    add hl, hl                                    ; $529E: $29
    ld [hl], b                                    ; $529F: $70
    inc de                                        ; $52A0: $13
    rst $08                                       ; $52A1: $CF
    nop                                           ; $52A2: $00
    xor a                                         ; $52A3: $AF
    add hl, bc                                    ; $52A4: $09
    scf                                           ; $52A5: $37
    add h                                         ; $52A6: $84
    ld a, e                                       ; $52A7: $7B
    add c                                         ; $52A8: $81
    ld e, a                                       ; $52A9: $5F
    sub b                                         ; $52AA: $90
    ld l, a                                       ; $52AB: $6F
    sbc c                                         ; $52AC: $99
    ld h, a                                       ; $52AD: $67
    add l                                         ; $52AE: $85
    dec sp                                        ; $52AF: $3B
    ld a, [c]                                     ; $52B0: $F2
    db $FC                                        ; $52B1: $FC
    and d                                         ; $52B2: $A2
    db $FC                                        ; $52B3: $FC
    ld [hl], d                                    ; $52B4: $72
    db $FC                                        ; $52B5: $FC
    ld a, [c]                                     ; $52B6: $F2
    db $FC                                        ; $52B7: $FC
    ld a, d                                       ; $52B8: $7A
    db $FC                                        ; $52B9: $FC
    ld a, [c]                                     ; $52BA: $F2
    db $FC                                        ; $52BB: $FC
    ld a, [$F2FC]                                 ; $52BC: $FA $FC $F2
    db $FC                                        ; $52BF: $FC
    ldh [$3F], a                                  ; $52C0: $E0 $3F
    ret nz                                        ; $52C2: $C0

    ccf                                           ; $52C3: $3F
    ldh [$3F], a                                  ; $52C4: $E0 $3F
    ret nc                                        ; $52C6: $D0

    ccf                                           ; $52C7: $3F
    ldh [$3F], a                                  ; $52C8: $E0 $3F
    ret nc                                        ; $52CA: $D0

    ccf                                           ; $52CB: $3F
    ldh [$3F], a                                  ; $52CC: $E0 $3F
    ldh [$3F], a                                  ; $52CE: $E0 $3F
    add hl, bc                                    ; $52D0: $09
    or $09                                        ; $52D1: $F6 $09
    or $09                                        ; $52D3: $F6 $09
    or $09                                        ; $52D5: $F6 $09
    or $09                                        ; $52D7: $F6 $09
    or $09                                        ; $52D9: $F6 $09
    or $0B                                        ; $52DB: $F6 $0B
    db $F4                                        ; $52DD: $F4
    dec c                                         ; $52DE: $0D
    ld a, [c]                                     ; $52DF: $F2
    add b                                         ; $52E0: $80
    ld a, a                                       ; $52E1: $7F
    and b                                         ; $52E2: $A0
    ld a, a                                       ; $52E3: $7F
    add b                                         ; $52E4: $80
    ld a, a                                       ; $52E5: $7F
    and b                                         ; $52E6: $A0
    ld a, a                                       ; $52E7: $7F
    sub b                                         ; $52E8: $90
    ld a, a                                       ; $52E9: $7F
    and b                                         ; $52EA: $A0
    ld a, a                                       ; $52EB: $7F
    sub b                                         ; $52EC: $90
    ld a, a                                       ; $52ED: $7F
    and b                                         ; $52EE: $A0
    ld a, a                                       ; $52EF: $7F
    inc bc                                        ; $52F0: $03
    db $FC                                        ; $52F1: $FC
    inc bc                                        ; $52F2: $03
    db $FC                                        ; $52F3: $FC
    inc bc                                        ; $52F4: $03
    db $FC                                        ; $52F5: $FC
    inc bc                                        ; $52F6: $03
    db $FC                                        ; $52F7: $FC
    inc bc                                        ; $52F8: $03
    db $FC                                        ; $52F9: $FC
    inc bc                                        ; $52FA: $03
    db $FC                                        ; $52FB: $FC
    inc bc                                        ; $52FC: $03
    db $FC                                        ; $52FD: $FC
    rlca                                          ; $52FE: $07
    db $FC                                        ; $52FF: $FC
    ld e, a                                       ; $5300: $5F
    ccf                                           ; $5301: $3F
    adc [hl]                                      ; $5302: $8E
    ld a, a                                       ; $5303: $7F
    rst $18                                       ; $5304: $DF
    ccf                                           ; $5305: $3F

jr_060_5306:
    xor a                                         ; $5306: $AF
    ld a, a                                       ; $5307: $7F
    sbc a                                         ; $5308: $9F
    ld a, a                                       ; $5309: $7F
    xor a                                         ; $530A: $AF
    ld a, a                                       ; $530B: $7F
    pop bc                                        ; $530C: $C1
    ccf                                           ; $530D: $3F
    call c, $853F                                 ; $530E: $DC $3F $85
    ld hl, sp+$0D                                 ; $5311: $F8 $0D
    ldh a, [$DD]                                  ; $5313: $F0 $DD
    ldh [$8C], a                                  ; $5315: $E0 $8C
    ldh a, [$CC]                                  ; $5317: $F0 $CC
    ldh a, [$DD]                                  ; $5319: $F0 $DD
    ldh [$AD], a                                  ; $531B: $E0 $AD
    ret nc                                        ; $531D: $D0

    ld d, $E8                                     ; $531E: $16 $E8
    ld c, [hl]                                    ; $5320: $4E
    or c                                          ; $5321: $B1
    ret c                                         ; $5322: $D8

    daa                                           ; $5323: $27
    or b                                          ; $5324: $B0
    ld c, a                                       ; $5325: $4F
    ld hl, $79DE                                  ; $5326: $21 $DE $79
    ld b, $02                                     ; $5329: $06 $02
    ld bc, $C030                                  ; $532B: $01 $30 $C0
    adc $00                                       ; $532E: $CE $00
    ld l, e                                       ; $5330: $6B
    add a                                         ; $5331: $87
    ld e, d                                       ; $5332: $5A
    add a                                         ; $5333: $87
    sub $0F                                       ; $5334: $D6 $0F
    sub h                                         ; $5336: $94
    rrca                                          ; $5337: $0F
    dec [hl]                                      ; $5338: $35
    adc a                                         ; $5339: $8F
    inc l                                         ; $533A: $2C
    sbc a                                         ; $533B: $9F
    and d                                         ; $533C: $A2
    rra                                           ; $533D: $1F
    inc h                                         ; $533E: $24
    rra                                           ; $533F: $1F
    ld b, a                                       ; $5340: $47
    ldh [$B0], a                                  ; $5341: $E0 $B0
    ret nz                                        ; $5343: $C0

    jr nz, jr_060_5306                            ; $5344: $20 $C0

    ld b, b                                       ; $5346: $40
    add b                                         ; $5347: $80
    inc c                                         ; $5348: $0C
    add b                                         ; $5349: $80
    sbc a                                         ; $534A: $9F
    nop                                           ; $534B: $00
    rrca                                          ; $534C: $0F
    nop                                           ; $534D: $00
    inc bc                                        ; $534E: $03
    nop                                           ; $534F: $00
    ld sp, $1C0F                                  ; $5350: $31 $0F $1C
    inc bc                                        ; $5353: $03
    ld [bc], a                                    ; $5354: $02
    ld bc, $0102                                  ; $5355: $01 $02 $01
    nop                                           ; $5358: $00
    ld bc, $0001                                  ; $5359: $01 $01 $00
    add b                                         ; $535C: $80
    nop                                           ; $535D: $00
    ldh [rP1], a                                  ; $535E: $E0 $00
    sbc [hl]                                      ; $5360: $9E
    pop hl                                        ; $5361: $E1
    ret c                                         ; $5362: $D8

    rst $20                                       ; $5363: $E7
    ld c, a                                       ; $5364: $4F
    ldh a, [rIF]                                  ; $5365: $F0 $0F
    ldh a, [$AF]                                  ; $5367: $F0 $AF
    ldh a, [rTAC]                                 ; $5369: $F0 $07
    ld hl, sp+$06                                 ; $536B: $F8 $06
    ld sp, hl                                     ; $536D: $F9
    nop                                           ; $536E: $00
    di                                            ; $536F: $F3
    ld h, c                                       ; $5370: $61
    sbc [hl]                                      ; $5371: $9E
    add $39                                       ; $5372: $C6 $39
    db $EB                                        ; $5374: $EB
    rla                                           ; $5375: $17
    rst $30                                       ; $5376: $F7
    rrca                                          ; $5377: $0F
    xor $1F                                       ; $5378: $EE $1F
    dec [hl]                                      ; $537A: $35
    adc $4E                                       ; $537B: $CE $4E
    or b                                          ; $537D: $B0
    ld d, h                                       ; $537E: $54
    cp b                                          ; $537F: $B8
    ldh a, [rP1]                                  ; $5380: $F0 $00
    ld [hl], d                                    ; $5382: $72
    ei                                            ; $5383: $FB
    di                                            ; $5384: $F3
    ei                                            ; $5385: $FB
    pop bc                                        ; $5386: $C1
    db $E3                                        ; $5387: $E3
    ld l, c                                       ; $5388: $69
    add b                                         ; $5389: $80
    nop                                           ; $538A: $00
    nop                                           ; $538B: $00
    nop                                           ; $538C: $00
    nop                                           ; $538D: $00
    nop                                           ; $538E: $00
    nop                                           ; $538F: $00
    add c                                         ; $5390: $81
    ld a, h                                       ; $5391: $7C
    ld h, c                                       ; $5392: $61
    sbc [hl]                                      ; $5393: $9E
    pop de                                        ; $5394: $D1
    db $EC                                        ; $5395: $EC
    add sp, -$0E                                  ; $5396: $E8 $F2
    ld [hl], h                                    ; $5398: $74
    ld a, [$72AD]                                 ; $5399: $FA $AD $72
    ld [hl], e                                    ; $539C: $73
    inc c                                         ; $539D: $0C
    ld a, [hl+]                                   ; $539E: $2A
    inc e                                         ; $539F: $1C
    and c                                         ; $53A0: $A1
    rra                                           ; $53A1: $1F
    or b                                          ; $53A2: $B0

jr_060_53A3:
    rrca                                          ; $53A3: $0F
    cp e                                          ; $53A4: $BB
    rlca                                          ; $53A5: $07
    ld sp, $330F                                  ; $53A6: $31 $0F $33
    rrca                                          ; $53A9: $0F
    cp e                                          ; $53AA: $BB
    rlca                                          ; $53AB: $07
    dec d                                         ; $53AC: $15
    dec bc                                        ; $53AD: $0B
    jr @+$09                                      ; $53AE: $18 $07

    pop af                                        ; $53B0: $F1
    db $FC                                        ; $53B1: $FC
    db $ED                                        ; $53B2: $ED
    ldh a, [$E3]                                  ; $53B3: $F0 $E3
    add b                                         ; $53B5: $80
    call z, $9603                                 ; $53B6: $CC $03 $96
    inc bc                                        ; $53B9: $03
    ld a, [$6607]                                 ; $53BA: $FA $07 $66
    sbc a                                         ; $53BD: $9F
    inc c                                         ; $53BE: $0C
    rst $38                                       ; $53BF: $FF
    ldh [$3F], a                                  ; $53C0: $E0 $3F
    ldh a, [$3F]                                  ; $53C2: $F0 $3F
    ld [$F43F], a                                 ; $53C4: $EA $3F $F4
    ccf                                           ; $53C7: $3F
    rst $10                                       ; $53C8: $D7
    jr c, jr_060_53A3                             ; $53C9: $38 $D8

    daa                                           ; $53CB: $27
    ldh [$1F], a                                  ; $53CC: $E0 $1F
    ret nc                                        ; $53CE: $D0

    ccf                                           ; $53CF: $3F
    dec b                                         ; $53D0: $05
    ld a, [$F609]                                 ; $53D1: $FA $09 $F6
    add hl, bc                                    ; $53D4: $09
    or $13                                        ; $53D5: $F6 $13
    db $EC                                        ; $53D7: $EC
    rst $38                                       ; $53D8: $FF
    nop                                           ; $53D9: $00
    dec de                                        ; $53DA: $1B
    db $FC                                        ; $53DB: $FC
    dec b                                         ; $53DC: $05
    cp $21                                        ; $53DD: $FE $21
    cp $A0                                        ; $53DF: $FE $A0
    ld a, a                                       ; $53E1: $7F
    or b                                          ; $53E2: $B0
    ld a, a                                       ; $53E3: $7F
    or b                                          ; $53E4: $B0
    ld a, a                                       ; $53E5: $7F
    xor b                                         ; $53E6: $A8
    ld a, a                                       ; $53E7: $7F
    sub b                                         ; $53E8: $90
    ld a, a                                       ; $53E9: $7F
    add b                                         ; $53EA: $80
    ld a, a                                       ; $53EB: $7F
    cp a                                          ; $53EC: $BF
    ld b, b                                       ; $53ED: $40
    ld hl, sp+$07                                 ; $53EE: $F8 $07
    rlca                                          ; $53F0: $07
    db $FC                                        ; $53F1: $FC
    rlca                                          ; $53F2: $07
    db $FC                                        ; $53F3: $FC
    dec bc                                        ; $53F4: $0B
    db $FC                                        ; $53F5: $FC
    dec bc                                        ; $53F6: $0B
    db $FC                                        ; $53F7: $FC
    rlca                                          ; $53F8: $07
    db $FC                                        ; $53F9: $FC
    dec bc                                        ; $53FA: $0B
    db $FC                                        ; $53FB: $FC
    rst $00                                       ; $53FC: $C7
    jr c, jr_060_547E                             ; $53FD: $38 $7F

    add b                                         ; $53FF: $80
    xor a                                         ; $5400: $AF
    ld a, a                                       ; $5401: $7F
    sbc a                                         ; $5402: $9F
    ld a, a                                       ; $5403: $7F
    xor a                                         ; $5404: $AF
    ld a, a                                       ; $5405: $7F
    sbc a                                         ; $5406: $9F
    ld a, a                                       ; $5407: $7F
    cp a                                          ; $5408: $BF
    ld a, a                                       ; $5409: $7F
    cp a                                          ; $540A: $BF
    ld a, a                                       ; $540B: $7F
    ld e, $7F                                     ; $540C: $1E $7F
    ld b, l                                       ; $540E: $45
    ccf                                           ; $540F: $3F
    adc $F0                                       ; $5410: $CE $F0
    and $F8                                       ; $5412: $E6 $F8
    xor $F0                                       ; $5414: $EE $F0
    add $F8                                       ; $5416: $C6 $F8
    xor [hl]                                      ; $5418: $AE
    ldh a, [$C6]                                  ; $5419: $F0 $C6
    ld hl, sp-$52                                 ; $541B: $F8 $AE
    ldh a, [$5C]                                  ; $541D: $F0 $5C
    ldh [$B3], a                                  ; $541F: $E0 $B3
    inc c                                         ; $5421: $0C
    ld h, h                                       ; $5422: $64
    dec de                                        ; $5423: $1B
    ld [$A307], sp                                ; $5424: $08 $07 $A3
    nop                                           ; $5427: $00
    ld e, c                                       ; $5428: $59
    jr nz, @-$72                                  ; $5429: $20 $8C

    ld [hl], b                                    ; $542B: $70
    add h                                         ; $542C: $84
    ld a, b                                       ; $542D: $78
    sbc h                                         ; $542E: $9C
    ld h, b                                       ; $542F: $60
    jr z, @+$21                                   ; $5430: $28 $1F

    inc h                                         ; $5432: $24
    rra                                           ; $5433: $1F
    jr z, jr_060_5455                             ; $5434: $28 $1F

    jr nz, jr_060_5457                            ; $5436: $20 $1F

    jr nz, jr_060_5459                            ; $5438: $20 $1F

    jr nz, jr_060_545B                            ; $543A: $20 $1F

    ld h, b                                       ; $543C: $60
    rra                                           ; $543D: $1F
    ld h, b                                       ; $543E: $60
    rra                                           ; $543F: $1F
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00

jr_060_5447:
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544A: $00
    nop                                           ; $544B: $00
    inc bc                                        ; $544C: $03
    nop                                           ; $544D: $00
    nop                                           ; $544E: $00
    nop                                           ; $544F: $00
    ld hl, sp-$01                                 ; $5450: $F8 $FF
    inc a                                         ; $5452: $3C

jr_060_5453:
    rst $38                                       ; $5453: $FF
    inc c                                         ; $5454: $0C

jr_060_5455:
    rst $38                                       ; $5455: $FF
    nop                                           ; $5456: $00

jr_060_5457:
    rst $38                                       ; $5457: $FF
    nop                                           ; $5458: $00

jr_060_5459:
    rst $38                                       ; $5459: $FF
    nop                                           ; $545A: $00

jr_060_545B:
    rst $08                                       ; $545B: $CF
    nop                                           ; $545C: $00
    ccf                                           ; $545D: $3F
    nop                                           ; $545E: $00
    rra                                           ; $545F: $1F
    nop                                           ; $5460: $00
    jp $0004                                      ; $5461: $C3 $04 $00


    nop                                           ; $5464: $00
    jr c, jr_060_547A                             ; $5465: $38 $13

    ld hl, sp+$07                                 ; $5467: $F8 $07
    ld hl, sp+$07                                 ; $5469: $F8 $07
    ld hl, sp+$07                                 ; $546B: $F8 $07
    ld hl, sp+$05                                 ; $546D: $F8 $05
    ld hl, sp-$64                                 ; $546F: $F8 $9C
    jr c, jr_060_548F                             ; $5471: $38 $1C

    jr c, @+$5E                                   ; $5473: $38 $5C

    jr c, jr_060_5453                             ; $5475: $38 $DC

    jr c, jr_060_5447                             ; $5477: $38 $CE

    add hl, sp                                    ; $5479: $39

jr_060_547A:
    push de                                       ; $547A: $D5
    dec sp                                        ; $547B: $3B
    xor b                                         ; $547C: $A8
    rla                                           ; $547D: $17

jr_060_547E:
    add b                                         ; $547E: $80
    nop                                           ; $547F: $00
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    rst $38                                       ; $5489: $FF
    ld a, [hl]                                    ; $548A: $7E
    rst $38                                       ; $548B: $FF
    nop                                           ; $548C: $00
    rst $38                                       ; $548D: $FF
    nop                                           ; $548E: $00

jr_060_548F:
    nop                                           ; $548F: $00
    ld a, [hl-]                                   ; $5490: $3A
    inc e                                         ; $5491: $1C
    ld a, [hl-]                                   ; $5492: $3A
    inc e                                         ; $5493: $1C
    ld a, [hl-]                                   ; $5494: $3A
    inc e                                         ; $5495: $1C
    ld a, [hl-]                                   ; $5496: $3A
    inc e                                         ; $5497: $1C
    ld [hl], d                                    ; $5498: $72
    sbc h                                         ; $5499: $9C
    xor d                                         ; $549A: $AA
    call c, $E816                                 ; $549B: $DC $16 $E8
    ld [bc], a                                    ; $549E: $02
    nop                                           ; $549F: $00
    dec bc                                        ; $54A0: $0B
    rlca                                          ; $54A1: $07
    dec h                                         ; $54A2: $25
    inc bc                                        ; $54A3: $03
    halt                                          ; $54A4: $76
    ld bc, $1B64                                  ; $54A5: $01 $64 $1B
    ld [hl], l                                    ; $54A8: $75
    dec bc                                        ; $54A9: $0B
    ld h, [hl]                                    ; $54AA: $66

Jump_060_54AB:
    add hl, de                                    ; $54AB: $19
    ld [hl], e                                    ; $54AC: $73
    inc c                                         ; $54AD: $0C
    add hl, sp                                    ; $54AE: $39
    ld b, $F5                                     ; $54AF: $06 $F5
    cp $F9                                        ; $54B1: $FE $F9
    cp $75                                        ; $54B3: $FE $75
    cp $09                                        ; $54B5: $FE $09
    cp $DD                                        ; $54B7: $FE $DD
    cp $CD                                        ; $54B9: $FE $CD
    cp $78                                        ; $54BB: $FE $78
    cp $A2                                        ; $54BD: $FE $A2
    ld a, h                                       ; $54BF: $7C
    add sp, $3F                                   ; $54C0: $E8 $3F
    ldh a, [$3F]                                  ; $54C2: $F0 $3F
    ldh [$3F], a                                  ; $54C4: $E0 $3F
    ldh [$3F], a                                  ; $54C6: $E0 $3F
    ldh [$3F], a                                  ; $54C8: $E0 $3F
    ldh a, [$3F]                                  ; $54CA: $F0 $3F
    ldh a, [$3F]                                  ; $54CC: $F0 $3F
    ldh a, [$3F]                                  ; $54CE: $F0 $3F
    ld de, $21FE                                  ; $54D0: $11 $FE $21
    cp $11                                        ; $54D3: $FE $11
    cp $01                                        ; $54D5: $FE $01
    cp $03                                        ; $54D7: $FE $03
    cp $0B                                        ; $54D9: $FE $0B
    cp $03                                        ; $54DB: $FE $03
    cp $0B                                        ; $54DD: $FE $0B
    cp $AF                                        ; $54DF: $FE $AF
    jr nz, jr_060_547E                            ; $54E1: $20 $9B

jr_060_54E3:
    ld a, b                                       ; $54E3: $78
    rst $20                                       ; $54E4: $E7
    rra                                           ; $54E5: $1F
    ld hl, sp+$07                                 ; $54E6: $F8 $07
    ei                                            ; $54E8: $FB
    inc b                                         ; $54E9: $04
    ei                                            ; $54EA: $FB
    inc b                                         ; $54EB: $04
    db $ED                                        ; $54EC: $ED
    inc c                                         ; $54ED: $0C
    pop af                                        ; $54EE: $F1
    ld a, $FF                                     ; $54EF: $3E $FF
    nop                                           ; $54F1: $00
    rst $38                                       ; $54F2: $FF
    nop                                           ; $54F3: $00
    ld a, a                                       ; $54F4: $7F
    nop                                           ; $54F5: $00
    rst $18                                       ; $54F6: $DF
    ret nz                                        ; $54F7: $C0

    rra                                           ; $54F8: $1F
    ret nz                                        ; $54F9: $C0

    rst $38                                       ; $54FA: $FF
    nop                                           ; $54FB: $00
    rst $38                                       ; $54FC: $FF
    nop                                           ; $54FD: $00
    rst $38                                       ; $54FE: $FF
    nop                                           ; $54FF: $00
    jr nz, jr_060_5521                            ; $5500: $20 $1F

    dec d                                         ; $5502: $15
    ld a, [bc]                                    ; $5503: $0A
    ld b, b                                       ; $5504: $40
    nop                                           ; $5505: $00
    jr z, jr_060_5567                             ; $5506: $28 $5F

    ld d, l                                       ; $5508: $55
    ld a, $68                                     ; $5509: $3E $68
    rra                                           ; $550B: $1F
    sub l                                         ; $550C: $95
    ld a, [hl+]                                   ; $550D: $2A
    ld b, b                                       ; $550E: $40
    add b                                         ; $550F: $80
    ld hl, sp-$01                                 ; $5510: $F8 $FF
    ld h, d                                       ; $5512: $62
    ld a, a                                       ; $5513: $7F
    inc c                                         ; $5514: $0C
    db $FD                                        ; $5515: $FD
    ld a, [c]                                     ; $5516: $F2
    di                                            ; $5517: $F3
    xor d                                         ; $5518: $AA
    xor e                                         ; $5519: $AB
    db $F4                                        ; $551A: $F4
    rst $30                                       ; $551B: $F7
    ld sp, hl                                     ; $551C: $F9
    rst $38                                       ; $551D: $FF
    ld [bc], a                                    ; $551E: $02
    cp $D0                                        ; $551F: $FE $D0

jr_060_5521:
    jr nz, jr_060_54E3                            ; $5521: $20 $C0

    nop                                           ; $5523: $00
    ld [hl], b                                    ; $5524: $70
    nop                                           ; $5525: $00
    xor h                                         ; $5526: $AC
    ld d, b                                       ; $5527: $50
    ld d, a                                       ; $5528: $57
    cp b                                          ; $5529: $B8
    xor d                                         ; $552A: $AA
    ld a, a                                       ; $552B: $7F
    ld bc, $7FFF                                  ; $552C: $01 $FF $7F
    nop                                           ; $552F: $00
    ld h, b                                       ; $5530: $60
    rra                                           ; $5531: $1F
    ld h, b                                       ; $5532: $60
    rra                                           ; $5533: $1F
    jr nz, @+$21                                  ; $5534: $20 $1F

    ld b, b                                       ; $5536: $40
    ccf                                           ; $5537: $3F
    add b                                         ; $5538: $80
    ccf                                           ; $5539: $3F
    ret nz                                        ; $553A: $C0

    ccf                                           ; $553B: $3F
    ld hl, $1E9E                                  ; $553C: $21 $9E $1E
    nop                                           ; $553F: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    rrca                                          ; $5542: $0F
    nop                                           ; $5543: $00
    rra                                           ; $5544: $1F
    nop                                           ; $5545: $00
    rlca                                          ; $5546: $07
    nop                                           ; $5547: $00
    rra                                           ; $5548: $1F
    nop                                           ; $5549: $00
    ccf                                           ; $554A: $3F
    nop                                           ; $554B: $00
    ld a, a                                       ; $554C: $7F
    nop                                           ; $554D: $00
    ld a, a                                       ; $554E: $7F
    nop                                           ; $554F: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    add b                                         ; $5552: $80
    nop                                           ; $5553: $00
    ldh [rP1], a                                  ; $5554: $E0 $00
    ldh a, [rP1]                                  ; $5556: $F0 $00
    ret nz                                        ; $5558: $C0

    nop                                           ; $5559: $00
    ret nz                                        ; $555A: $C0

    nop                                           ; $555B: $00
    ld hl, sp+$00                                 ; $555C: $F8 $00
    cp $00                                        ; $555E: $FE $00
    dec b                                         ; $5560: $05
    ld hl, sp+$04                                 ; $5561: $F8 $04
    ld hl, sp+$04                                 ; $5563: $F8 $04
    ld hl, sp+$02                                 ; $5565: $F8 $02

jr_060_5567:
    db $FC                                        ; $5567: $FC
    nop                                           ; $5568: $00
    db $FC                                        ; $5569: $FC
    ld bc, $84FC                                  ; $556A: $01 $FC $84
    ld a, c                                       ; $556D: $79
    ld a, b                                       ; $556E: $78
    nop                                           ; $556F: $00
    ld b, b                                       ; $5570: $40
    nop                                           ; $5571: $00
    rst $38                                       ; $5572: $FF
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    rst $38                                       ; $5578: $FF
    nop                                           ; $5579: $00
    ld d, l                                       ; $557A: $55
    rst $38                                       ; $557B: $FF
    add b                                         ; $557C: $80
    rst $38                                       ; $557D: $FF
    rst $38                                       ; $557E: $FF
    nop                                           ; $557F: $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    and $00                                       ; $5582: $E6 $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    rst $38                                       ; $5588: $FF
    nop                                           ; $5589: $00
    ld d, l                                       ; $558A: $55
    rst $38                                       ; $558B: $FF
    nop                                           ; $558C: $00
    rst $38                                       ; $558D: $FF
    rst $38                                       ; $558E: $FF
    nop                                           ; $558F: $00
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    inc d                                         ; $5596: $14
    ld a, [bc]                                    ; $5597: $0A
    ld [$541C], a                                 ; $5598: $EA $1C $54
    cp $01                                        ; $559B: $FE $01
    cp $FE                                        ; $559D: $FE $FE
    nop                                           ; $559F: $00
    rra                                           ; $55A0: $1F
    rst $38                                       ; $55A1: $FF
    ld b, [hl]                                    ; $55A2: $46
    rst $38                                       ; $55A3: $FF
    jr nc, @+$01                                  ; $55A4: $30 $FF

    ld c, a                                       ; $55A6: $4F
    rst $38                                       ; $55A7: $FF
    ld d, l                                       ; $55A8: $55
    rst $38                                       ; $55A9: $FF
    cpl                                           ; $55AA: $2F
    rst $38                                       ; $55AB: $FF
    sbc a                                         ; $55AC: $9F
    rst $38                                       ; $55AD: $FF
    ld b, b                                       ; $55AE: $40
    rst $38                                       ; $55AF: $FF
    inc b                                         ; $55B0: $04
    ld a, b                                       ; $55B1: $78
    jr z, jr_060_5604                             ; $55B2: $28 $50

    ld [bc], a                                    ; $55B4: $02
    nop                                           ; $55B5: $00
    inc d                                         ; $55B6: $14
    ld a, [$7CAA]                                 ; $55B7: $FA $AA $7C
    ld d, $F8                                     ; $55BA: $16 $F8
    xor c                                         ; $55BC: $A9
    ld d, h                                       ; $55BD: $54
    ld [bc], a                                    ; $55BE: $02
    ld bc, $3FD0                                  ; $55BF: $01 $D0 $3F
    ret nc                                        ; $55C2: $D0

    ccf                                           ; $55C3: $3F
    ret nc                                        ; $55C4: $D0

    ccf                                           ; $55C5: $3F
    ret nc                                        ; $55C6: $D0

    ccf                                           ; $55C7: $3F
    ret nc                                        ; $55C8: $D0

    ccf                                           ; $55C9: $3F
    ret nc                                        ; $55CA: $D0

    ccf                                           ; $55CB: $3F
    ldh [$1F], a                                  ; $55CC: $E0 $1F
    cp [hl]                                       ; $55CE: $BE
    ld b, c                                       ; $55CF: $41
    inc bc                                        ; $55D0: $03
    cp $03                                        ; $55D1: $FE $03
    cp $07                                        ; $55D3: $FE $07
    cp $0F                                        ; $55D5: $FE $0F
    cp $15                                        ; $55D7: $FE $15
    cp $0D                                        ; $55D9: $FE $0D
    cp $05                                        ; $55DB: $FE $05
    cp $03                                        ; $55DD: $FE $03
    db $FC                                        ; $55DF: $FC
    pop hl                                        ; $55E0: $E1
    ld a, [hl]                                    ; $55E1: $7E
    pop de                                        ; $55E2: $D1
    xor $11                                       ; $55E3: $EE $11
    adc $31                                       ; $55E5: $CE $31
    adc $F1                                       ; $55E7: $CE $F1
    ld c, $E0                                     ; $55E9: $0E $E0
    ld c, $E0                                     ; $55EB: $0E $E0
    ld c, $F1                                     ; $55ED: $0E $F1
    inc b                                         ; $55EF: $04
    add c                                         ; $55F0: $81
    add c                                         ; $55F1: $81
    ld a, [hl]                                    ; $55F2: $7E
    ld a, [hl]                                    ; $55F3: $7E
    ld a, a                                       ; $55F4: $7F
    rst $38                                       ; $55F5: $FF
    ld a, a                                       ; $55F6: $7F
    rst $38                                       ; $55F7: $FF
    ld a, a                                       ; $55F8: $7F
    rst $38                                       ; $55F9: $FF
    ld a, $FF                                     ; $55FA: $3E $FF
    add b                                         ; $55FC: $80
    cp $81                                        ; $55FD: $FE $81
    nop                                           ; $55FF: $00
    rst $38                                       ; $5600: $FF
    nop                                           ; $5601: $00
    rst $38                                       ; $5602: $FF
    nop                                           ; $5603: $00

jr_060_5604:
    db $FC                                        ; $5604: $FC
    nop                                           ; $5605: $00
    ei                                            ; $5606: $FB
    inc bc                                        ; $5607: $03
    or $07                                        ; $5608: $F6 $07
    db $EC                                        ; $560A: $EC
    rrca                                          ; $560B: $0F
    ret c                                         ; $560C: $D8

    rra                                           ; $560D: $1F
    ret c                                         ; $560E: $D8

    ccf                                           ; $560F: $3F
    ldh [rP1], a                                  ; $5610: $E0 $00
    rra                                           ; $5612: $1F
    rra                                           ; $5613: $1F
    ldh a, [rIE]                                  ; $5614: $F0 $FF
    add b                                         ; $5616: $80
    rst $38                                       ; $5617: $FF
    inc b                                         ; $5618: $04
    db $FC                                        ; $5619: $FC
    jr c, @+$01                                   ; $561A: $38 $FF

    ld b, b                                       ; $561C: $40
    rst $38                                       ; $561D: $FF
    ld [bc], a                                    ; $561E: $02
    cp $FB                                        ; $561F: $FE $FB
    rlca                                          ; $5621: $07
    ld sp, hl                                     ; $5622: $F9
    inc bc                                        ; $5623: $03
    db $FD                                        ; $5624: $FD
    inc bc                                        ; $5625: $03
    ld hl, sp+$01                                 ; $5626: $F8 $01
    db $F4                                        ; $5628: $F4
    rlca                                          ; $5629: $07
    add sp, $0F                                   ; $562A: $E8 $0F
    db $EB                                        ; $562C: $EB
    rra                                           ; $562D: $1F
    rst $08                                       ; $562E: $CF
    rra                                           ; $562F: $1F
    inc bc                                        ; $5630: $03
    nop                                           ; $5631: $00
    rrca                                          ; $5632: $0F
    nop                                           ; $5633: $00
    adc h                                         ; $5634: $8C
    inc bc                                        ; $5635: $03
    add a                                         ; $5636: $87
    nop                                           ; $5637: $00
    add $01                                       ; $5638: $C6 $01
    ld b, a                                       ; $563A: $47
    nop                                           ; $563B: $00
    daa                                           ; $563C: $27
    nop                                           ; $563D: $00
    and e                                         ; $563E: $A3
    nop                                           ; $563F: $00
    add d                                         ; $5640: $82
    ld e, a                                       ; $5641: $5F
    and l                                         ; $5642: $A5
    ld a, a                                       ; $5643: $7F
    add e                                         ; $5644: $83
    ld e, a                                       ; $5645: $5F
    add e                                         ; $5646: $83
    ld e, a                                       ; $5647: $5F
    add e                                         ; $5648: $83
    ld e, a                                       ; $5649: $5F
    add e                                         ; $564A: $83
    ld e, a                                       ; $564B: $5F
    add e                                         ; $564C: $83
    ld e, a                                       ; $564D: $5F
    add e                                         ; $564E: $83
    ld e, a                                       ; $564F: $5F
    jr nc, jr_060_5661                            ; $5650: $30 $0F

    rst $38                                       ; $5652: $FF
    nop                                           ; $5653: $00
    rst $38                                       ; $5654: $FF
    nop                                           ; $5655: $00
    adc a                                         ; $5656: $8F
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    nop                                           ; $565C: $00
    nop                                           ; $565D: $00
    nop                                           ; $565E: $00
    nop                                           ; $565F: $00
    rst $38                                       ; $5660: $FF

jr_060_5661:
    nop                                           ; $5661: $00
    ret nz                                        ; $5662: $C0

    ccf                                           ; $5663: $3F
    cp d                                          ; $5664: $BA
    ld a, a                                       ; $5665: $7F
    db $E4                                        ; $5666: $E4
    ld a, a                                       ; $5667: $7F
    ret nz                                        ; $5668: $C0

    ld a, a                                       ; $5669: $7F
    ldh [$7F], a                                  ; $566A: $E0 $7F
    ret nc                                        ; $566C: $D0

    ld a, a                                       ; $566D: $7F
    ldh [$7F], a                                  ; $566E: $E0 $7F
    rst $38                                       ; $5670: $FF
    nop                                           ; $5671: $00
    ld bc, $03FE                                  ; $5672: $01 $FE $03
    db $FC                                        ; $5675: $FC
    rlca                                          ; $5676: $07
    ld hl, sp+$0F                                 ; $5677: $F8 $0F
    ldh a, [rNR34]                                ; $5679: $F0 $1E
    pop hl                                        ; $567B: $E1
    ld a, l                                       ; $567C: $7D
    add d                                         ; $567D: $82
    ld a, [rTIMA]                                 ; $567E: $FA $05 $FF
    nop                                           ; $5681: $00
    rst $38                                       ; $5682: $FF
    nop                                           ; $5683: $00
    rst $38                                       ; $5684: $FF

jr_060_5685:
    nop                                           ; $5685: $00
    rst $38                                       ; $5686: $FF

jr_060_5687:
    nop                                           ; $5687: $00
    ld a, a                                       ; $5688: $7F
    add b                                         ; $5689: $80
    rst $38                                       ; $568A: $FF
    nop                                           ; $568B: $00
    ld a, a                                       ; $568C: $7F
    add b                                         ; $568D: $80
    rst $38                                       ; $568E: $FF
    nop                                           ; $568F: $00
    add hl, bc                                    ; $5690: $09
    ld d, [hl]                                    ; $5691: $56
    ld [de], a                                    ; $5692: $12
    ld c, h                                       ; $5693: $4C
    dec h                                         ; $5694: $25
    ld e, b                                       ; $5695: $58
    ld c, d                                       ; $5696: $4A
    ld sp, $6314                                  ; $5697: $31 $14 $63
    add hl, hl                                    ; $569A: $29
    ld b, [hl]                                    ; $569B: $46
    ld d, b                                       ; $569C: $50
    rrca                                          ; $569D: $0F
    rst $38                                       ; $569E: $FF
    nop                                           ; $569F: $00
    ld a, a                                       ; $56A0: $7F
    nop                                           ; $56A1: $00
    ldh a, [rIF]                                  ; $56A2: $F0 $0F
    jr nz, jr_060_5685                            ; $56A4: $20 $DF

    jr nz, jr_060_5687                            ; $56A6: $20 $DF

    ld [hl], b                                    ; $56A8: $70
    adc a                                         ; $56A9: $8F
    rst $38                                       ; $56AA: $FF
    nop                                           ; $56AB: $00
    inc b                                         ; $56AC: $04
    ei                                            ; $56AD: $FB
    rst $38                                       ; $56AE: $FF
    nop                                           ; $56AF: $00
    ld a, [$0005]                                 ; $56B0: $FA $05 $00
    rst $38                                       ; $56B3: $FF
    nop                                           ; $56B4: $00
    rst $38                                       ; $56B5: $FF
    nop                                           ; $56B6: $00
    rst $38                                       ; $56B7: $FF
    nop                                           ; $56B8: $00
    rst $38                                       ; $56B9: $FF
    ld b, b                                       ; $56BA: $40
    cp a                                          ; $56BB: $BF
    nop                                           ; $56BC: $00
    rst $38                                       ; $56BD: $FF
    rst $38                                       ; $56BE: $FF
    nop                                           ; $56BF: $00
    cp $00                                        ; $56C0: $FE $00
    cp $00                                        ; $56C2: $FE $00
    add b                                         ; $56C4: $80
    ld a, [hl]                                    ; $56C5: $7E
    add b                                         ; $56C6: $80
    ld a, [hl]                                    ; $56C7: $7E
    add b                                         ; $56C8: $80
    ld a, [hl]                                    ; $56C9: $7E
    add b                                         ; $56CA: $80
    ld a, [hl]                                    ; $56CB: $7E
    cp $7E                                        ; $56CC: $FE $7E
    ld a, [hl]                                    ; $56CE: $7E
    nop                                           ; $56CF: $00
    nop                                           ; $56D0: $00
    rst $38                                       ; $56D1: $FF
    ld a, a                                       ; $56D2: $7F
    rst $38                                       ; $56D3: $FF
    ld a, a                                       ; $56D4: $7F
    rst $38                                       ; $56D5: $FF
    nop                                           ; $56D6: $00
    rst $38                                       ; $56D7: $FF
    ld a, [hl]                                    ; $56D8: $7E
    rst $38                                       ; $56D9: $FF
    ld a, [hl]                                    ; $56DA: $7E
    rst $38                                       ; $56DB: $FF
    nop                                           ; $56DC: $00
    rst $38                                       ; $56DD: $FF
    nop                                           ; $56DE: $00
    rst $38                                       ; $56DF: $FF
    rst $38                                       ; $56E0: $FF
    nop                                           ; $56E1: $00
    rst $38                                       ; $56E2: $FF
    nop                                           ; $56E3: $00
    rst $38                                       ; $56E4: $FF
    nop                                           ; $56E5: $00
    ldh a, [rIF]                                  ; $56E6: $F0 $0F
    and $17                                       ; $56E8: $E6 $17
    add sp, $1B                                   ; $56EA: $E8 $1B
    ldh a, [rIF]                                  ; $56EC: $F0 $0F
    db $FC                                        ; $56EE: $FC
    inc bc                                        ; $56EF: $03
    rst $38                                       ; $56F0: $FF
    nop                                           ; $56F1: $00
    rst $38                                       ; $56F2: $FF
    nop                                           ; $56F3: $00
    add e                                         ; $56F4: $83
    ld a, h                                       ; $56F5: $7C
    ld de, $2CC2                                  ; $56F6: $11 $C2 $2C
    adc l                                         ; $56F9: $8D
    ld a, $1F                                     ; $56FA: $3E $1F
    ld e, [hl]                                    ; $56FC: $5E
    rra                                           ; $56FD: $1F
    ld a, [hl]                                    ; $56FE: $7E
    ccf                                           ; $56FF: $3F
    ret c                                         ; $5700: $D8

    ccf                                           ; $5701: $3F
    ret c                                         ; $5702: $D8

    ccf                                           ; $5703: $3F
    call c, $CE3F                                 ; $5704: $DC $3F $CE
    rra                                           ; $5707: $1F
    rst $20                                       ; $5708: $E7
    rra                                           ; $5709: $1F
    db $E3                                        ; $570A: $E3
    rrca                                          ; $570B: $0F
    db $F4                                        ; $570C: $F4
    rrca                                          ; $570D: $0F
    ld a, [c]                                     ; $570E: $F2
    rlca                                          ; $570F: $07
    ld [rRAMG], sp                                ; $5710: $08 $00 $00
    nop                                           ; $5713: $00

jr_060_5714:
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    add b                                         ; $5718: $80
    nop                                           ; $5719: $00
    ldh a, [rP1]                                  ; $571A: $F0 $00
    rst $18                                       ; $571C: $DF
    jr nz, jr_060_5732                            ; $571D: $20 $13

    rrca                                          ; $571F: $0F
    rst $18                                       ; $5720: $DF
    ccf                                           ; $5721: $3F
    rst $10                                       ; $5722: $D7
    ccf                                           ; $5723: $3F
    rst $10                                       ; $5724: $D7
    ccf                                           ; $5725: $3F
    rst $10                                       ; $5726: $D7
    ccf                                           ; $5727: $3F
    db $D3                                        ; $5728: $D3
    ccf                                           ; $5729: $3F
    db $D3                                        ; $572A: $D3
    ccf                                           ; $572B: $3F
    sub c                                         ; $572C: $91
    ccf                                           ; $572D: $3F
    and h                                         ; $572E: $A4
    ld a, a                                       ; $572F: $7F
    sub e                                         ; $5730: $93
    nop                                           ; $5731: $00

jr_060_5732:
    pop bc                                        ; $5732: $C1
    nop                                           ; $5733: $00
    ldh [rP1], a                                  ; $5734: $E0 $00
    ld hl, sp+$00                                 ; $5736: $F8 $00
    ld a, a                                       ; $5738: $7F
    add b                                         ; $5739: $80
    rrca                                          ; $573A: $0F
    ldh a, [$A0]                                  ; $573B: $F0 $A0
    ld a, a                                       ; $573D: $7F
    srl a                                         ; $573E: $CB $3F
    add e                                         ; $5740: $83
    ld e, a                                       ; $5741: $5F
    add e                                         ; $5742: $83
    cpl                                           ; $5743: $2F
    jp $C12F                                      ; $5744: $C3 $2F $C1


    rla                                           ; $5747: $17
    ld [c], a                                     ; $5748: $E2
    dec bc                                        ; $5749: $0B
    pop af                                        ; $574A: $F1
    rlca                                          ; $574B: $07
    db $FC                                        ; $574C: $FC
    ld bc, $00FF                                  ; $574D: $01 $FF $00
    ld b, b                                       ; $5750: $40
    add b                                         ; $5751: $80
    jr nz, jr_060_5714                            ; $5752: $20 $C0

    adc a                                         ; $5754: $8F
    ld [hl], b                                    ; $5755: $70
    ldh [$1F], a                                  ; $5756: $E0 $1F
    rst $38                                       ; $5758: $FF
    nop                                           ; $5759: $00
    rst $38                                       ; $575A: $FF
    nop                                           ; $575B: $00
    ccf                                           ; $575C: $3F
    nop                                           ; $575D: $00
    ret nz                                        ; $575E: $C0

    nop                                           ; $575F: $00
    ret nz                                        ; $5760: $C0

    ld a, a                                       ; $5761: $7F
    pop bc                                        ; $5762: $C1
    ld a, [hl]                                    ; $5763: $7E
    jp nz, $E87D                                  ; $5764: $C2 $7D $E8

    ld a, a                                       ; $5767: $7F
    db $F4                                        ; $5768: $F4
    ld a, a                                       ; $5769: $7F
    ld hl, sp+$7F                                 ; $576A: $F8 $7F
    push af                                       ; $576C: $F5
    ld a, a                                       ; $576D: $7F
    xor e                                         ; $576E: $AB
    ld a, a                                       ; $576F: $7F
    ret nc                                        ; $5770: $D0

    cpl                                           ; $5771: $2F
    and b                                         ; $5772: $A0
    ld e, a                                       ; $5773: $5F
    ld b, c                                       ; $5774: $41
    cp [hl]                                       ; $5775: $BE
    nop                                           ; $5776: $00
    rst $38                                       ; $5777: $FF
    ld b, d                                       ; $5778: $42
    cp a                                          ; $5779: $BF
    dec b                                         ; $577A: $05
    rst $38                                       ; $577B: $FF
    rst $38                                       ; $577C: $FF
    rst $38                                       ; $577D: $FF
    rst $38                                       ; $577E: $FF
    rst $38                                       ; $577F: $FF
    ld a, a                                       ; $5780: $7F
    add b                                         ; $5781: $80
    cp a                                          ; $5782: $BF
    ld b, b                                       ; $5783: $40
    ld e, a                                       ; $5784: $5F
    and b                                         ; $5785: $A0
    and e                                         ; $5786: $A3
    ld e, h                                       ; $5787: $5C
    nop                                           ; $5788: $00
    rst $38                                       ; $5789: $FF
    ld d, b                                       ; $578A: $50
    rst $38                                       ; $578B: $FF
    db $FC                                        ; $578C: $FC
    rst $38                                       ; $578D: $FF
    rst $38                                       ; $578E: $FF

jr_060_578F:
    rst $38                                       ; $578F: $FF
    rst $38                                       ; $5790: $FF
    nop                                           ; $5791: $00
    rst $38                                       ; $5792: $FF
    nop                                           ; $5793: $00
    rst $38                                       ; $5794: $FF
    nop                                           ; $5795: $00
    rst $38                                       ; $5796: $FF
    nop                                           ; $5797: $00
    ld a, a                                       ; $5798: $7F
    add b                                         ; $5799: $80
    ld bc, $A0FE                                  ; $579A: $01 $FE $A0
    rst $38                                       ; $579D: $FF
    ld d, b                                       ; $579E: $50
    rst $38                                       ; $579F: $FF
    rst $38                                       ; $57A0: $FF
    nop                                           ; $57A1: $00
    rst $38                                       ; $57A2: $FF
    nop                                           ; $57A3: $00
    rst $38                                       ; $57A4: $FF
    nop                                           ; $57A5: $00
    rst $38                                       ; $57A6: $FF
    nop                                           ; $57A7: $00
    rst $38                                       ; $57A8: $FF
    nop                                           ; $57A9: $00
    rst $38                                       ; $57AA: $FF
    nop                                           ; $57AB: $00
    nop                                           ; $57AC: $00
    rst $38                                       ; $57AD: $FF
    nop                                           ; $57AE: $00
    rst $38                                       ; $57AF: $FF
    cp $01                                        ; $57B0: $FE $01
    db $FD                                        ; $57B2: $FD
    ld [bc], a                                    ; $57B3: $02
    db $FD                                        ; $57B4: $FD
    ld [bc], a                                    ; $57B5: $02
    ld a, [$F505]                                 ; $57B6: $FA $05 $F5
    ld a, [bc]                                    ; $57B9: $0A
    pop bc                                        ; $57BA: $C1
    ld a, $0B                                     ; $57BB: $3E $0B
    db $F4                                        ; $57BD: $F4
    jr nc, jr_060_578F                            ; $57BE: $30 $CF

    cp a                                          ; $57C0: $BF
    ld b, b                                       ; $57C1: $40
    ld a, a                                       ; $57C2: $7F
    add b                                         ; $57C3: $80
    ld a, a                                       ; $57C4: $7F
    add b                                         ; $57C5: $80
    rst $38                                       ; $57C6: $FF
    nop                                           ; $57C7: $00
    rst $38                                       ; $57C8: $FF
    nop                                           ; $57C9: $00
    cp a                                          ; $57CA: $BF
    ld b, b                                       ; $57CB: $40
    ld e, [hl]                                    ; $57CC: $5E
    and c                                         ; $57CD: $A1
    inc a                                         ; $57CE: $3C
    jp $00FF                                      ; $57CF: $C3 $FF $00


    ei                                            ; $57D2: $FB
    inc b                                         ; $57D3: $04
    di                                            ; $57D4: $F3
    inc c                                         ; $57D5: $0C
    db $E3                                        ; $57D6: $E3
    inc e                                         ; $57D7: $1C
    jp $873C                                      ; $57D8: $C3 $3C $87


    ld a, h                                       ; $57DB: $7C
    dec bc                                        ; $57DC: $0B
    db $FC                                        ; $57DD: $FC
    rlca                                          ; $57DE: $07
    db $FC                                        ; $57DF: $FC
    nop                                           ; $57E0: $00
    rst $38                                       ; $57E1: $FF
    cp $FF                                        ; $57E2: $FE $FF
    cp $FF                                        ; $57E4: $FE $FF
    nop                                           ; $57E6: $00
    rst $38                                       ; $57E7: $FF
    nop                                           ; $57E8: $00
    rst $38                                       ; $57E9: $FF
    nop                                           ; $57EA: $00
    rst $38                                       ; $57EB: $FF
    nop                                           ; $57EC: $00
    rst $38                                       ; $57ED: $FF
    nop                                           ; $57EE: $00
    rst $38                                       ; $57EF: $FF
    rst $38                                       ; $57F0: $FF
    nop                                           ; $57F1: $00
    rst $38                                       ; $57F2: $FF
    nop                                           ; $57F3: $00
    add b                                         ; $57F4: $80
    ld a, a                                       ; $57F5: $7F
    add b                                         ; $57F6: $80
    ld a, a                                       ; $57F7: $7F
    add b                                         ; $57F8: $80
    ld a, a                                       ; $57F9: $7F
    add b                                         ; $57FA: $80
    ld a, a                                       ; $57FB: $7F
    rst $38                                       ; $57FC: $FF
    ld a, a                                       ; $57FD: $7F
    ld a, a                                       ; $57FE: $7F
    nop                                           ; $57FF: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    rlca                                          ; $5806: $07
    nop                                           ; $5807: $00
    jr jr_060_5811                                ; $5808: $18 $07

    daa                                           ; $580A: $27
    jr jr_060_585C                                ; $580B: $18 $4F

    jr nc, jr_060_586E                            ; $580D: $30 $5F

    jr nz, jr_060_5890                            ; $580F: $20 $7F

jr_060_5811:
    nop                                           ; $5811: $00
    ret nz                                        ; $5812: $C0

    ccf                                           ; $5813: $3F
    add b                                         ; $5814: $80
    ld a, a                                       ; $5815: $7F
    add b                                         ; $5816: $80
    ld a, a                                       ; $5817: $7F
    add c                                         ; $5818: $81
    ld a, a                                       ; $5819: $7F
    add e                                         ; $581A: $83
    ld a, a                                       ; $581B: $7F
    add e                                         ; $581C: $83
    ld a, a                                       ; $581D: $7F
    add d                                         ; $581E: $82
    ld a, a                                       ; $581F: $7F
    rst $38                                       ; $5820: $FF
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    rst $38                                       ; $5823: $FF
    nop                                           ; $5824: $00
    rst $38                                       ; $5825: $FF
    nop                                           ; $5826: $00
    rst $38                                       ; $5827: $FF
    rst $38                                       ; $5828: $FF
    rst $38                                       ; $5829: $FF
    rst $38                                       ; $582A: $FF
    rst $38                                       ; $582B: $FF
    rst $38                                       ; $582C: $FF
    rst $38                                       ; $582D: $FF
    rst $38                                       ; $582E: $FF
    nop                                           ; $582F: $00
    nop                                           ; $5830: $00
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
    inc bc                                        ; $583E: $03
    nop                                           ; $583F: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    ld a, b                                       ; $584A: $78
    nop                                           ; $584B: $00
    inc b                                         ; $584C: $04
    nop                                           ; $584D: $00
    db $EC                                        ; $584E: $EC
    nop                                           ; $584F: $00
    add b                                         ; $5850: $80
    ld a, a                                       ; $5851: $7F
    ld d, h                                       ; $5852: $54
    dec hl                                        ; $5853: $2B
    ld l, d                                       ; $5854: $6A
    dec d                                         ; $5855: $15
    ld d, b                                       ; $5856: $50
    cpl                                           ; $5857: $2F
    ld b, b                                       ; $5858: $40
    ccf                                           ; $5859: $3F
    ld b, b                                       ; $585A: $40
    ccf                                           ; $585B: $3F

jr_060_585C:
    ld b, b                                       ; $585C: $40
    ccf                                           ; $585D: $3F
    ld h, b                                       ; $585E: $60
    rra                                           ; $585F: $1F
    xor b                                         ; $5860: $A8
    rst $38                                       ; $5861: $FF
    ld b, b                                       ; $5862: $40
    rst $38                                       ; $5863: $FF
    nop                                           ; $5864: $00
    rst $38                                       ; $5865: $FF
    nop                                           ; $5866: $00
    rst $38                                       ; $5867: $FF
    nop                                           ; $5868: $00
    rst $38                                       ; $5869: $FF
    nop                                           ; $586A: $00
    rst $38                                       ; $586B: $FF
    nop                                           ; $586C: $00
    rst $38                                       ; $586D: $FF

jr_060_586E:
    nop                                           ; $586E: $00
    rst $38                                       ; $586F: $FF
    ccf                                           ; $5870: $3F
    ret nz                                        ; $5871: $C0

    ld c, $F0                                     ; $5872: $0E $F0
    inc b                                         ; $5874: $04
    ld hl, sp+$07                                 ; $5875: $F8 $07
    ld hl, sp+$0F                                 ; $5877: $F8 $0F
    ldh a, [rTAC]                                 ; $5879: $F0 $07
    ld hl, sp+$0F                                 ; $587B: $F8 $0F
    ldh a, [rNR22]                                ; $587D: $F0 $17
    add sp, -$01                                  ; $587F: $E8 $FF
    rst $38                                       ; $5881: $FF
    jr nz, @+$01                                  ; $5882: $20 $FF

    ld b, b                                       ; $5884: $40
    rst $38                                       ; $5885: $FF
    add b                                         ; $5886: $80
    rst $38                                       ; $5887: $FF
    add b                                         ; $5888: $80
    rst $38                                       ; $5889: $FF
    add b                                         ; $588A: $80
    rst $38                                       ; $588B: $FF
    add b                                         ; $588C: $80
    rst $38                                       ; $588D: $FF
    sbc a                                         ; $588E: $9F
    rst $38                                       ; $588F: $FF

jr_060_5890:
    cp $01                                        ; $5890: $FE $01
    ld bc, $0000                                  ; $5892: $01 $00 $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589A: $00
    nop                                           ; $589B: $00
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    add b                                         ; $589E: $80
    nop                                           ; $589F: $00
    ld [hl], a                                    ; $58A0: $77
    ld [$1768], sp                                ; $58A1: $08 $68 $17
    ld [hl], b                                    ; $58A4: $70
    rrca                                          ; $58A5: $0F
    ld [hl], b                                    ; $58A6: $70
    rrca                                          ; $58A7: $0F
    ld l, b                                       ; $58A8: $68
    rla                                           ; $58A9: $17
    ld [hl], b                                    ; $58AA: $70
    rrca                                          ; $58AB: $0F
    ld l, b                                       ; $58AC: $68
    rla                                           ; $58AD: $17
    ld a, a                                       ; $58AE: $7F
    nop                                           ; $58AF: $00
    rst $38                                       ; $58B0: $FF
    nop                                           ; $58B1: $00
    inc bc                                        ; $58B2: $03
    db $FC                                        ; $58B3: $FC
    ld bc, $01FE                                  ; $58B4: $01 $FE $01
    cp $01                                        ; $58B7: $FE $01
    cp $01                                        ; $58B9: $FE $01
    cp $03                                        ; $58BB: $FE $03
    db $FC                                        ; $58BD: $FC
    rst $38                                       ; $58BE: $FF
    nop                                           ; $58BF: $00
    rst $38                                       ; $58C0: $FF
    rst $38                                       ; $58C1: $FF
    rst $38                                       ; $58C2: $FF
    rst $38                                       ; $58C3: $FF
    cp $FF                                        ; $58C4: $FE $FF
    ld b, b                                       ; $58C6: $40
    rst $38                                       ; $58C7: $FF
    ld b, b                                       ; $58C8: $40
    rst $38                                       ; $58C9: $FF
    ld b, b                                       ; $58CA: $40
    rst $38                                       ; $58CB: $FF
    ld b, b                                       ; $58CC: $40
    rst $38                                       ; $58CD: $FF
    rst $38                                       ; $58CE: $FF
    rst $38                                       ; $58CF: $FF
    ret nz                                        ; $58D0: $C0

    rst $38                                       ; $58D1: $FF
    nop                                           ; $58D2: $00
    rst $38                                       ; $58D3: $FF
    nop                                           ; $58D4: $00
    rst $38                                       ; $58D5: $FF
    nop                                           ; $58D6: $00
    rst $38                                       ; $58D7: $FF
    nop                                           ; $58D8: $00
    rst $38                                       ; $58D9: $FF
    nop                                           ; $58DA: $00
    rst $38                                       ; $58DB: $FF
    nop                                           ; $58DC: $00
    rst $38                                       ; $58DD: $FF
    rst $38                                       ; $58DE: $FF
    rst $38                                       ; $58DF: $FF
    nop                                           ; $58E0: $00
    rst $38                                       ; $58E1: $FF
    nop                                           ; $58E2: $00
    rst $38                                       ; $58E3: $FF
    nop                                           ; $58E4: $00
    rst $38                                       ; $58E5: $FF
    nop                                           ; $58E6: $00
    rst $38                                       ; $58E7: $FF
    nop                                           ; $58E8: $00
    rst $38                                       ; $58E9: $FF
    nop                                           ; $58EA: $00
    rst $38                                       ; $58EB: $FF
    nop                                           ; $58EC: $00
    rst $38                                       ; $58ED: $FF
    rst $38                                       ; $58EE: $FF
    rst $38                                       ; $58EF: $FF
    nop                                           ; $58F0: $00
    rst $38                                       ; $58F1: $FF
    nop                                           ; $58F2: $00
    rst $38                                       ; $58F3: $FF
    nop                                           ; $58F4: $00
    rst $38                                       ; $58F5: $FF
    nop                                           ; $58F6: $00
    rst $38                                       ; $58F7: $FF
    nop                                           ; $58F8: $00
    rst $38                                       ; $58F9: $FF
    nop                                           ; $58FA: $00
    rst $38                                       ; $58FB: $FF
    nop                                           ; $58FC: $00
    rst $38                                       ; $58FD: $FF
    ld a, [$5FFF]                                 ; $58FE: $FA $FF $5F
    jr nz, jr_060_5952                            ; $5901: $20 $4F

    jr nc, jr_060_596C                            ; $5903: $30 $67

    jr @+$5B                                      ; $5905: $18 $59

    daa                                           ; $5907: $27
    sub a                                         ; $5908: $97
    ld a, b                                       ; $5909: $78
    sbc e                                         ; $590A: $9B
    ld a, a                                       ; $590B: $7F
    sbc e                                         ; $590C: $9B
    ld a, a                                       ; $590D: $7F
    sbc e                                         ; $590E: $9B
    ld a, a                                       ; $590F: $7F
    add c                                         ; $5910: $81
    ld a, [hl]                                    ; $5911: $7E
    add d                                         ; $5912: $82
    ld a, h                                       ; $5913: $7C
    add d                                         ; $5914: $82
    ld a, h                                       ; $5915: $7C
    add c                                         ; $5916: $81
    ld a, [hl]                                    ; $5917: $7E
    add b                                         ; $5918: $80
    ld a, a                                       ; $5919: $7F
    add b                                         ; $591A: $80
    ld a, a                                       ; $591B: $7F
    add b                                         ; $591C: $80
    ld a, a                                       ; $591D: $7F
    ret nz                                        ; $591E: $C0

    ld a, a                                       ; $591F: $7F
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    rst $38                                       ; $5926: $FF
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    rst $38                                       ; $5929: $FF
    nop                                           ; $592A: $00
    rst $38                                       ; $592B: $FF
    nop                                           ; $592C: $00
    rst $38                                       ; $592D: $FF
    nop                                           ; $592E: $00
    rst $38                                       ; $592F: $FF
    inc bc                                        ; $5930: $03
    nop                                           ; $5931: $00
    ld [bc], a                                    ; $5932: $02
    nop                                           ; $5933: $00
    inc bc                                        ; $5934: $03
    nop                                           ; $5935: $00
    ld bc, $0800                                  ; $5936: $01 $00 $08
    nop                                           ; $5939: $00
    dec c                                         ; $593A: $0D
    nop                                           ; $593B: $00
    rlca                                          ; $593C: $07
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    nop                                           ; $593F: $00
    cp h                                          ; $5940: $BC
    nop                                           ; $5941: $00
    ld hl, sp+$00                                 ; $5942: $F8 $00
    db $FC                                        ; $5944: $FC
    nop                                           ; $5945: $00
    db $FC                                        ; $5946: $FC
    nop                                           ; $5947: $00
    cp $00                                        ; $5948: $FE $00
    cp $00                                        ; $594A: $FE $00
    cp a                                          ; $594C: $BF
    nop                                           ; $594D: $00
    ld h, a                                       ; $594E: $67
    nop                                           ; $594F: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00

jr_060_5952:
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    ldh a, [rP1]                                  ; $595A: $F0 $00
    ld hl, sp+$00                                 ; $595C: $F8 $00
    ld [$FF00], sp                                ; $595E: $08 $00 $FF
    nop                                           ; $5961: $00
    ld a, a                                       ; $5962: $7F
    rst $38                                       ; $5963: $FF
    rst $38                                       ; $5964: $FF
    rst $38                                       ; $5965: $FF
    rst $38                                       ; $5966: $FF
    rst $38                                       ; $5967: $FF
    rst $38                                       ; $5968: $FF
    rst $38                                       ; $5969: $FF
    rst $38                                       ; $596A: $FF
    rst $38                                       ; $596B: $FF

jr_060_596C:
    xor a                                         ; $596C: $AF
    rst $38                                       ; $596D: $FF
    ld d, l                                       ; $596E: $55
    rst $38                                       ; $596F: $FF
    rst $38                                       ; $5970: $FF
    nop                                           ; $5971: $00
    ld b, b                                       ; $5972: $40
    rst $38                                       ; $5973: $FF
    and b                                         ; $5974: $A0
    rst $38                                       ; $5975: $FF
    ret nc                                        ; $5976: $D0

    rst $38                                       ; $5977: $FF
    ldh [rIE], a                                  ; $5978: $E0 $FF
    ld hl, sp-$01                                 ; $597A: $F8 $FF
    db $FC                                        ; $597C: $FC
    rst $38                                       ; $597D: $FF
    cp $FF                                        ; $597E: $FE $FF
    ld d, b                                       ; $5980: $50
    cpl                                           ; $5981: $2F
    ld h, b                                       ; $5982: $60
    rra                                           ; $5983: $1F
    ld a, a                                       ; $5984: $7F
    nop                                           ; $5985: $00
    ld h, b                                       ; $5986: $60
    rra                                           ; $5987: $1F
    ld b, b                                       ; $5988: $40
    ccf                                           ; $5989: $3F
    ld b, b                                       ; $598A: $40
    ccf                                           ; $598B: $3F
    ld b, b                                       ; $598C: $40
    ccf                                           ; $598D: $3F
    ld b, b                                       ; $598E: $40
    ccf                                           ; $598F: $3F
    nop                                           ; $5990: $00
    rst $38                                       ; $5991: $FF
    inc bc                                        ; $5992: $03
    db $FC                                        ; $5993: $FC
    rst $38                                       ; $5994: $FF
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    rst $38                                       ; $5997: $FF
    nop                                           ; $5998: $00
    rst $38                                       ; $5999: $FF
    nop                                           ; $599A: $00
    rst $38                                       ; $599B: $FF
    nop                                           ; $599C: $00
    rst $38                                       ; $599D: $FF
    nop                                           ; $599E: $00
    rst $38                                       ; $599F: $FF
    nop                                           ; $59A0: $00
    rst $38                                       ; $59A1: $FF
    rst $38                                       ; $59A2: $FF
    nop                                           ; $59A3: $00
    ld hl, sp+$07                                 ; $59A4: $F8 $07
    nop                                           ; $59A6: $00
    rst $38                                       ; $59A7: $FF
    nop                                           ; $59A8: $00
    rst $38                                       ; $59A9: $FF
    nop                                           ; $59AA: $00
    rst $38                                       ; $59AB: $FF
    nop                                           ; $59AC: $00
    rst $38                                       ; $59AD: $FF
    nop                                           ; $59AE: $00
    rst $38                                       ; $59AF: $FF
    rrca                                          ; $59B0: $0F
    ldh a, [$F8]                                  ; $59B1: $F0 $F8
    nop                                           ; $59B3: $00
    rrca                                          ; $59B4: $0F
    ldh a, [rNR22]                                ; $59B5: $F0 $17
    add sp, $0F                                   ; $59B7: $E8 $0F
    ldh a, [rTAC]                                 ; $59B9: $F0 $07
    ld hl, sp+$07                                 ; $59BB: $F8 $07
    ld hl, sp+$0F                                 ; $59BD: $F8 $0F
    ldh a, [$3E]                                  ; $59BF: $F0 $3E
    rst $38                                       ; $59C1: $FF
    dec a                                         ; $59C2: $3D
    rst $38                                       ; $59C3: $FF
    ld a, [hl+]                                   ; $59C4: $2A
    rst $38                                       ; $59C5: $FF
    and b                                         ; $59C6: $A0
    rst $38                                       ; $59C7: $FF
    add b                                         ; $59C8: $80
    rst $38                                       ; $59C9: $FF
    add b                                         ; $59CA: $80
    rst $38                                       ; $59CB: $FF
    add b                                         ; $59CC: $80
    rst $38                                       ; $59CD: $FF
    add b                                         ; $59CE: $80
    rst $38                                       ; $59CF: $FF
    rst $38                                       ; $59D0: $FF
    nop                                           ; $59D1: $00
    rst $38                                       ; $59D2: $FF
    nop                                           ; $59D3: $00
    rst $38                                       ; $59D4: $FF
    nop                                           ; $59D5: $00
    rst $38                                       ; $59D6: $FF
    nop                                           ; $59D7: $00
    rst $38                                       ; $59D8: $FF
    nop                                           ; $59D9: $00
    rst $38                                       ; $59DA: $FF
    nop                                           ; $59DB: $00
    rst $38                                       ; $59DC: $FF
    nop                                           ; $59DD: $00
    rst $38                                       ; $59DE: $FF
    nop                                           ; $59DF: $00
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    nop                                           ; $59E2: $00
    nop                                           ; $59E3: $00
    ld b, b                                       ; $59E4: $40
    nop                                           ; $59E5: $00
    jr nz, jr_060_59E8                            ; $59E6: $20 $00

jr_060_59E8:
    nop                                           ; $59E8: $00
    nop                                           ; $59E9: $00
    ld d, b                                       ; $59EA: $50
    nop                                           ; $59EB: $00
    jr z, jr_060_59EE                             ; $59EC: $28 $00

jr_060_59EE:
    inc b                                         ; $59EE: $04
    nop                                           ; $59EF: $00
    nop                                           ; $59F0: $00
    rst $38                                       ; $59F1: $FF
    nop                                           ; $59F2: $00
    rst $38                                       ; $59F3: $FF
    nop                                           ; $59F4: $00
    rst $38                                       ; $59F5: $FF
    nop                                           ; $59F6: $00
    rst $38                                       ; $59F7: $FF
    nop                                           ; $59F8: $00
    rst $38                                       ; $59F9: $FF
    nop                                           ; $59FA: $00
    rst $38                                       ; $59FB: $FF
    nop                                           ; $59FC: $00
    rst $38                                       ; $59FD: $FF
    ld d, b                                       ; $59FE: $50
    rst $38                                       ; $59FF: $FF
    sbc e                                         ; $5A00: $9B
    ld a, a                                       ; $5A01: $7F
    sbc e                                         ; $5A02: $9B
    ld a, a                                       ; $5A03: $7F
    ld c, l                                       ; $5A04: $4D
    ccf                                           ; $5A05: $3F
    ld c, l                                       ; $5A06: $4D
    ccf                                           ; $5A07: $3F
    ld l, l                                       ; $5A08: $6D
    rra                                           ; $5A09: $1F
    dec [hl]                                      ; $5A0A: $35
    rrca                                          ; $5A0B: $0F
    jr jr_060_5A15                                ; $5A0C: $18 $07

    rlca                                          ; $5A0E: $07
    nop                                           ; $5A0F: $00
    rst $38                                       ; $5A10: $FF
    ld a, a                                       ; $5A11: $7F
    rst $38                                       ; $5A12: $FF
    ld a, a                                       ; $5A13: $7F
    rst $38                                       ; $5A14: $FF

jr_060_5A15:
    ld a, a                                       ; $5A15: $7F
    rst $38                                       ; $5A16: $FF
    ld a, a                                       ; $5A17: $7F
    rst $38                                       ; $5A18: $FF
    ld a, a                                       ; $5A19: $7F
    cp a                                          ; $5A1A: $BF
    ld a, a                                       ; $5A1B: $7F
    ret nz                                        ; $5A1C: $C0

    ccf                                           ; $5A1D: $3F
    cp a                                          ; $5A1E: $BF
    ld b, b                                       ; $5A1F: $40
    rst $38                                       ; $5A20: $FF
    rst $38                                       ; $5A21: $FF
    rst $38                                       ; $5A22: $FF
    rst $38                                       ; $5A23: $FF
    rst $38                                       ; $5A24: $FF
    rst $38                                       ; $5A25: $FF
    rst $38                                       ; $5A26: $FF
    rst $38                                       ; $5A27: $FF
    rst $38                                       ; $5A28: $FF
    rst $38                                       ; $5A29: $FF
    rst $38                                       ; $5A2A: $FF
    rst $38                                       ; $5A2B: $FF
    nop                                           ; $5A2C: $00
    rst $38                                       ; $5A2D: $FF
    rst $38                                       ; $5A2E: $FF
    nop                                           ; $5A2F: $00
    nop                                           ; $5A30: $00
    nop                                           ; $5A31: $00
    ld bc, $0700                                  ; $5A32: $01 $00 $07
    nop                                           ; $5A35: $00
    rrca                                          ; $5A36: $0F
    nop                                           ; $5A37: $00
    ld e, $00                                     ; $5A38: $1E $00
    inc e                                         ; $5A3A: $1C
    nop                                           ; $5A3B: $00
    jr z, jr_060_5A3E                             ; $5A3C: $28 $00

jr_060_5A3E:
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    call z, $8C00                                 ; $5A40: $CC $00 $8C
    nop                                           ; $5A43: $00
    inc c                                         ; $5A44: $0C
    nop                                           ; $5A45: $00
    inc c                                         ; $5A46: $0C
    nop                                           ; $5A47: $00
    rlca                                          ; $5A48: $07
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    ld h, b                                       ; $5A4C: $60
    nop                                           ; $5A4D: $00
    add b                                         ; $5A4E: $80
    nop                                           ; $5A4F: $00
    ld [$0800], sp                                ; $5A50: $08 $00 $08
    nop                                           ; $5A53: $00
    ld b, $00                                     ; $5A54: $06 $00
    nop                                           ; $5A56: $00
    nop                                           ; $5A57: $00
    add b                                         ; $5A58: $80
    nop                                           ; $5A59: $00
    ld b, b                                       ; $5A5A: $40
    nop                                           ; $5A5B: $00
    ld b, b                                       ; $5A5C: $40
    nop                                           ; $5A5D: $00
    nop                                           ; $5A5E: $00
    nop                                           ; $5A5F: $00
    add b                                         ; $5A60: $80
    ld a, a                                       ; $5A61: $7F
    ld a, a                                       ; $5A62: $7F
    nop                                           ; $5A63: $00
    jr z, jr_060_5ABD                             ; $5A64: $28 $57

    ld b, b                                       ; $5A66: $40
    ccf                                           ; $5A67: $3F
    jr nz, jr_060_5AC9                            ; $5A68: $20 $5F

    ld a, a                                       ; $5A6A: $7F
    nop                                           ; $5A6B: $00
    ld b, b                                       ; $5A6C: $40
    ccf                                           ; $5A6D: $3F
    ld b, b                                       ; $5A6E: $40
    ccf                                           ; $5A6F: $3F
    ld bc, $8EFE                                  ; $5A70: $01 $FE $8E
    ld [hl], b                                    ; $5A73: $70
    inc b                                         ; $5A74: $04
    ei                                            ; $5A75: $FB
    inc b                                         ; $5A76: $04
    ei                                            ; $5A77: $FB
    ld c, $F1                                     ; $5A78: $0E $F1
    rst $38                                       ; $5A7A: $FF
    nop                                           ; $5A7B: $00
    add b                                         ; $5A7C: $80
    ld a, a                                       ; $5A7D: $7F
    add b                                         ; $5A7E: $80
    ld a, a                                       ; $5A7F: $7F
    ld h, b                                       ; $5A80: $60
    rra                                           ; $5A81: $1F
    rst $38                                       ; $5A82: $FF
    nop                                           ; $5A83: $00
    nop                                           ; $5A84: $00
    rst $38                                       ; $5A85: $FF
    nop                                           ; $5A86: $00
    rst $38                                       ; $5A87: $FF
    nop                                           ; $5A88: $00
    rst $38                                       ; $5A89: $FF
    rst $38                                       ; $5A8A: $FF
    nop                                           ; $5A8B: $00
    ld bc, $03FE                                  ; $5A8C: $01 $FE $03
    db $FC                                        ; $5A8F: $FC
    nop                                           ; $5A90: $00
    rst $38                                       ; $5A91: $FF
    rst $38                                       ; $5A92: $FF
    nop                                           ; $5A93: $00
    inc bc                                        ; $5A94: $03
    db $FC                                        ; $5A95: $FC
    ld bc, $03FE                                  ; $5A96: $01 $FE $03
    db $FC                                        ; $5A99: $FC
    rst $38                                       ; $5A9A: $FF
    nop                                           ; $5A9B: $00
    rst $38                                       ; $5A9C: $FF
    nop                                           ; $5A9D: $00
    cp $00                                        ; $5A9E: $FE $00
    nop                                           ; $5AA0: $00
    rst $38                                       ; $5AA1: $FF
    rst $38                                       ; $5AA2: $FF
    nop                                           ; $5AA3: $00
    db $FC                                        ; $5AA4: $FC
    inc bc                                        ; $5AA5: $03
    rst $38                                       ; $5AA6: $FF
    nop                                           ; $5AA7: $00
    ldh a, [rP1]                                  ; $5AA8: $F0 $00
    ldh [rP1], a                                  ; $5AAA: $E0 $00
    ret nz                                        ; $5AAC: $C0

    nop                                           ; $5AAD: $00
    nop                                           ; $5AAE: $00
    nop                                           ; $5AAF: $00
    rla                                           ; $5AB0: $17
    add sp, -$01                                  ; $5AB1: $E8 $FF
    nop                                           ; $5AB3: $00
    rrca                                          ; $5AB4: $0F
    ldh a, [rIE]                                  ; $5AB5: $F0 $FF
    nop                                           ; $5AB7: $00
    nop                                           ; $5AB8: $00
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00

jr_060_5ABD:
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    sbc a                                         ; $5AC0: $9F
    rst $38                                       ; $5AC1: $FF
    cp a                                          ; $5AC2: $BF
    rst $38                                       ; $5AC3: $FF
    or b                                          ; $5AC4: $B0
    rst $38                                       ; $5AC5: $FF
    jr z, @+$01                                   ; $5AC6: $28 $FF

    db $10                                        ; $5AC8: $10

jr_060_5AC9:
    rst $38                                       ; $5AC9: $FF
    jr nz, @+$01                                  ; $5ACA: $20 $FF

    nop                                           ; $5ACC: $00
    rst $38                                       ; $5ACD: $FF
    nop                                           ; $5ACE: $00
    rst $38                                       ; $5ACF: $FF
    cp $FF                                        ; $5AD0: $FE $FF
    cp $FF                                        ; $5AD2: $FE $FF
    nop                                           ; $5AD4: $00
    rst $38                                       ; $5AD5: $FF
    nop                                           ; $5AD6: $00
    rst $38                                       ; $5AD7: $FF
    nop                                           ; $5AD8: $00
    rst $38                                       ; $5AD9: $FF
    nop                                           ; $5ADA: $00
    rst $38                                       ; $5ADB: $FF
    nop                                           ; $5ADC: $00
    rst $38                                       ; $5ADD: $FF
    nop                                           ; $5ADE: $00
    rst $38                                       ; $5ADF: $FF
    nop                                           ; $5AE0: $00
    nop                                           ; $5AE1: $00
    nop                                           ; $5AE2: $00
    nop                                           ; $5AE3: $00
    nop                                           ; $5AE4: $00
    nop                                           ; $5AE5: $00
    rlca                                          ; $5AE6: $07
    nop                                           ; $5AE7: $00
    ld a, b                                       ; $5AE8: $78
    rlca                                          ; $5AE9: $07
    add b                                         ; $5AEA: $80
    ld a, a                                       ; $5AEB: $7F
    ret nz                                        ; $5AEC: $C0

    ld a, a                                       ; $5AED: $7F
    ret nz                                        ; $5AEE: $C0

    ld a, a                                       ; $5AEF: $7F
    ret nz                                        ; $5AF0: $C0

    nop                                           ; $5AF1: $00
    ldh [rP1], a                                  ; $5AF2: $E0 $00
    ld hl, sp+$00                                 ; $5AF4: $F8 $00
    ld a, h                                       ; $5AF6: $7C
    nop                                           ; $5AF7: $00
    ld a, $00                                     ; $5AF8: $3E $00
    rra                                           ; $5AFA: $1F
    nop                                           ; $5AFB: $00
    rrca                                          ; $5AFC: $0F
    nop                                           ; $5AFD: $00
    rlca                                          ; $5AFE: $07
    nop                                           ; $5AFF: $00
    cp $01                                        ; $5B00: $FE $01
    db $FC                                        ; $5B02: $FC
    inc bc                                        ; $5B03: $03
    ld sp, hl                                     ; $5B04: $F9
    rlca                                          ; $5B05: $07
    di                                            ; $5B06: $F3
    rrca                                          ; $5B07: $0F
    and $1F                                       ; $5B08: $E6 $1F
    call z, $983F                                 ; $5B0A: $CC $3F $98
    ld a, a                                       ; $5B0D: $7F
    inc [hl]                                      ; $5B0E: $34
    rst $38                                       ; $5B0F: $FF
    add b                                         ; $5B10: $80
    ld a, a                                       ; $5B11: $7F
    or a                                          ; $5B12: $B7
    ld a, a                                       ; $5B13: $7F
    add e                                         ; $5B14: $83
    ld a, a                                       ; $5B15: $7F
    cp a                                          ; $5B16: $BF
    ld a, a                                       ; $5B17: $7F
    cp a                                          ; $5B18: $BF
    ld a, a                                       ; $5B19: $7F
    cp a                                          ; $5B1A: $BF
    ld a, a                                       ; $5B1B: $7F
    add d                                         ; $5B1C: $82
    ld a, a                                       ; $5B1D: $7F
    cp a                                          ; $5B1E: $BF
    ld a, a                                       ; $5B1F: $7F
    nop                                           ; $5B20: $00
    rst $38                                       ; $5B21: $FF
    rst $38                                       ; $5B22: $FF
    rst $38                                       ; $5B23: $FF
    and d                                         ; $5B24: $A2
    rst $18                                       ; $5B25: $DF
    rst $08                                       ; $5B26: $CF
    rst $38                                       ; $5B27: $FF
    rst $18                                       ; $5B28: $DF
    rst $38                                       ; $5B29: $FF
    rst $18                                       ; $5B2A: $DF
    rst $38                                       ; $5B2B: $FF
    ld [$E3F7], sp                                ; $5B2C: $08 $F7 $E3
    rst $38                                       ; $5B2F: $FF
    nop                                           ; $5B30: $00
    nop                                           ; $5B31: $00
    nop                                           ; $5B32: $00
    nop                                           ; $5B33: $00
    nop                                           ; $5B34: $00
    nop                                           ; $5B35: $00
    nop                                           ; $5B36: $00
    nop                                           ; $5B37: $00
    nop                                           ; $5B38: $00
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    rlca                                          ; $5B3F: $07
    nop                                           ; $5B40: $00
    nop                                           ; $5B41: $00
    nop                                           ; $5B42: $00
    nop                                           ; $5B43: $00
    nop                                           ; $5B44: $00
    nop                                           ; $5B45: $00
    nop                                           ; $5B46: $00
    inc a                                         ; $5B47: $3C
    jr c, jr_060_5BC6                             ; $5B48: $38 $7C

    ld a, b                                       ; $5B4A: $78
    db $FC                                        ; $5B4B: $FC
    ld a, b                                       ; $5B4C: $78
    db $FC                                        ; $5B4D: $FC
    ld a, b                                       ; $5B4E: $78
    rst $38                                       ; $5B4F: $FF
    rrca                                          ; $5B50: $0F
    rra                                           ; $5B51: $1F
    rrca                                          ; $5B52: $0F
    rra                                           ; $5B53: $1F
    rrca                                          ; $5B54: $0F
    rra                                           ; $5B55: $1F
    rrca                                          ; $5B56: $0F
    rra                                           ; $5B57: $1F
    rrca                                          ; $5B58: $0F
    rra                                           ; $5B59: $1F
    rrca                                          ; $5B5A: $0F
    rra                                           ; $5B5B: $1F
    ld [$001F], sp                                ; $5B5C: $08 $1F $00
    rra                                           ; $5B5F: $1F
    ld a, d                                       ; $5B60: $7A
    rst $38                                       ; $5B61: $FF
    ld a, d                                       ; $5B62: $7A
    rst $38                                       ; $5B63: $FF
    ld b, d                                       ; $5B64: $42
    rst $38                                       ; $5B65: $FF
    ld b, $FF                                     ; $5B66: $06 $FF
    ld e, $BF                                     ; $5B68: $1E $BF
    ld e, $BF                                     ; $5B6A: $1E $BF
    db $10                                        ; $5B6C: $10
    cp a                                          ; $5B6D: $BF
    nop                                           ; $5B6E: $00
    ld a, $1F                                     ; $5B6F: $3E $1F
    nop                                           ; $5B71: $00
    jr nz, jr_060_5B93                            ; $5B72: $20 $1F

    ld b, b                                       ; $5B74: $40
    ccf                                           ; $5B75: $3F
    ld b, b                                       ; $5B76: $40
    ccf                                           ; $5B77: $3F
    ld b, b                                       ; $5B78: $40
    ccf                                           ; $5B79: $3F
    ld b, b                                       ; $5B7A: $40
    ccf                                           ; $5B7B: $3F
    ld b, b                                       ; $5B7C: $40
    ccf                                           ; $5B7D: $3F
    ld b, b                                       ; $5B7E: $40
    ccf                                           ; $5B7F: $3F
    rst $38                                       ; $5B80: $FF
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    rst $38                                       ; $5B83: $FF
    nop                                           ; $5B84: $00
    rst $38                                       ; $5B85: $FF
    nop                                           ; $5B86: $00
    rst $38                                       ; $5B87: $FF
    nop                                           ; $5B88: $00
    rst $38                                       ; $5B89: $FF
    nop                                           ; $5B8A: $00
    rst $38                                       ; $5B8B: $FF
    nop                                           ; $5B8C: $00
    rst $38                                       ; $5B8D: $FF
    ld bc, $FFFE                                  ; $5B8E: $01 $FE $FF
    nop                                           ; $5B91: $00
    ld e, a                                       ; $5B92: $5F

jr_060_5B93:
    and b                                         ; $5B93: $A0
    dec hl                                        ; $5B94: $2B
    call nc, $EA15                                ; $5B95: $D4 $15 $EA
    dec hl                                        ; $5B98: $2B
    call nc, $BA45                                ; $5B99: $D4 $45 $BA
    add e                                         ; $5B9C: $83
    ld a, h                                       ; $5B9D: $7C
    ld b, c                                       ; $5B9E: $41
    cp [hl]                                       ; $5B9F: $BE
    db $FD                                        ; $5BA0: $FD
    nop                                           ; $5BA1: $00
    cp $00                                        ; $5BA2: $FE $00
    rst $38                                       ; $5BA4: $FF
    nop                                           ; $5BA5: $00
    rst $38                                       ; $5BA6: $FF
    nop                                           ; $5BA7: $00
    rst $38                                       ; $5BA8: $FF
    nop                                           ; $5BA9: $00
    rst $38                                       ; $5BAA: $FF
    nop                                           ; $5BAB: $00
    rst $38                                       ; $5BAC: $FF
    nop                                           ; $5BAD: $00
    rst $38                                       ; $5BAE: $FF
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    nop                                           ; $5BB1: $00
    and b                                         ; $5BB2: $A0
    nop                                           ; $5BB3: $00
    ld d, b                                       ; $5BB4: $50
    nop                                           ; $5BB5: $00
    xor b                                         ; $5BB6: $A8
    nop                                           ; $5BB7: $00
    ret nc                                        ; $5BB8: $D0

    nop                                           ; $5BB9: $00
    xor b                                         ; $5BBA: $A8
    nop                                           ; $5BBB: $00
    push de                                       ; $5BBC: $D5
    nop                                           ; $5BBD: $00
    ld [rRAMG], a                                 ; $5BBE: $EA $00 $00
    nop                                           ; $5BC1: $00
    nop                                           ; $5BC2: $00
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    nop                                           ; $5BC5: $00

jr_060_5BC6:
    jr nz, jr_060_5BC8                            ; $5BC6: $20 $00

jr_060_5BC8:
    ld b, b                                       ; $5BC8: $40
    nop                                           ; $5BC9: $00
    and b                                         ; $5BCA: $A0
    nop                                           ; $5BCB: $00
    ld b, b                                       ; $5BCC: $40
    nop                                           ; $5BCD: $00
    add b                                         ; $5BCE: $80
    nop                                           ; $5BCF: $00
    rst $38                                       ; $5BD0: $FF
    nop                                           ; $5BD1: $00
    rst $38                                       ; $5BD2: $FF
    nop                                           ; $5BD3: $00
    rst $38                                       ; $5BD4: $FF
    nop                                           ; $5BD5: $00
    db $FD                                        ; $5BD6: $FD
    ld [bc], a                                    ; $5BD7: $02
    db $DB                                        ; $5BD8: $DB
    ld h, $93                                     ; $5BD9: $26 $93
    ld l, [hl]                                    ; $5BDB: $6E
    or e                                          ; $5BDC: $B3
    ld c, [hl]                                    ; $5BDD: $4E
    db $E3                                        ; $5BDE: $E3
    ld e, $00                                     ; $5BDF: $1E $00
    nop                                           ; $5BE1: $00
    nop                                           ; $5BE2: $00
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    inc c                                         ; $5BE6: $0C
    nop                                           ; $5BE7: $00
    ld c, $00                                     ; $5BE8: $0E $00
    ld c, $00                                     ; $5BEA: $0E $00
    ld c, $00                                     ; $5BEC: $0E $00
    adc [hl]                                      ; $5BEE: $8E
    nop                                           ; $5BEF: $00
    nop                                           ; $5BF0: $00
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
    nop                                           ; $5BF5: $00
    nop                                           ; $5BF6: $00
    nop                                           ; $5BF7: $00
    ld [bc], a                                    ; $5BF8: $02
    nop                                           ; $5BF9: $00
    ld b, $00                                     ; $5BFA: $06 $00
    ld b, $00                                     ; $5BFC: $06 $00
    ld b, $00                                     ; $5BFE: $06 $00
    ld h, h                                       ; $5C00: $64
    nop                                           ; $5C01: $00
    ld d, h                                       ; $5C02: $54
    nop                                           ; $5C03: $00
    db $10                                        ; $5C04: $10
    inc b                                         ; $5C05: $04
    ld b, b                                       ; $5C06: $40
    inc d                                         ; $5C07: $14
    nop                                           ; $5C08: $00
    ld d, h                                       ; $5C09: $54
    ld bc, $0254                                  ; $5C0A: $01 $54 $02
    ld d, l                                       ; $5C0D: $55
    inc b                                         ; $5C0E: $04
    ld d, e                                       ; $5C0F: $53
    cp a                                          ; $5C10: $BF
    ld a, a                                       ; $5C11: $7F
    cp a                                          ; $5C12: $BF
    ld a, a                                       ; $5C13: $7F
    cp a                                          ; $5C14: $BF
    ld a, a                                       ; $5C15: $7F
    cp a                                          ; $5C16: $BF
    ld a, a                                       ; $5C17: $7F
    xor d                                         ; $5C18: $AA
    ld a, l                                       ; $5C19: $7D
    cp l                                          ; $5C1A: $BD
    ld a, a                                       ; $5C1B: $7F
    cp l                                          ; $5C1C: $BD
    ld a, a                                       ; $5C1D: $7F
    reti                                          ; $5C1E: $D9


    ccf                                           ; $5C1F: $3F
    rst $30                                       ; $5C20: $F7
    rst $38                                       ; $5C21: $FF
    rst $30                                       ; $5C22: $F7
    rst $38                                       ; $5C23: $FF
    rst $30                                       ; $5C24: $F7
    rst $38                                       ; $5C25: $FF
    db $E3                                        ; $5C26: $E3
    rst $38                                       ; $5C27: $FF
    ld [$FFF7], sp                                ; $5C28: $08 $F7 $FF
    rst $38                                       ; $5C2B: $FF
    rst $38                                       ; $5C2C: $FF
    rst $38                                       ; $5C2D: $FF
    rst $38                                       ; $5C2E: $FF
    rst $38                                       ; $5C2F: $FF
    rlca                                          ; $5C30: $07
    rrca                                          ; $5C31: $0F
    rrca                                          ; $5C32: $0F
    rra                                           ; $5C33: $1F
    rrca                                          ; $5C34: $0F
    rra                                           ; $5C35: $1F
    rrca                                          ; $5C36: $0F
    rra                                           ; $5C37: $1F
    rrca                                          ; $5C38: $0F
    rra                                           ; $5C39: $1F
    rrca                                          ; $5C3A: $0F
    rra                                           ; $5C3B: $1F
    rrca                                          ; $5C3C: $0F
    rra                                           ; $5C3D: $1F
    rrca                                          ; $5C3E: $0F
    rra                                           ; $5C3F: $1F
    ld a, d                                       ; $5C40: $7A
    rst $38                                       ; $5C41: $FF
    ld a, d                                       ; $5C42: $7A
    rst $38                                       ; $5C43: $FF
    ld a, d                                       ; $5C44: $7A
    rst $38                                       ; $5C45: $FF
    ld a, d                                       ; $5C46: $7A
    rst $38                                       ; $5C47: $FF
    ld a, d                                       ; $5C48: $7A
    rst $38                                       ; $5C49: $FF
    ld a, d                                       ; $5C4A: $7A
    rst $38                                       ; $5C4B: $FF
    ld a, d                                       ; $5C4C: $7A
    rst $38                                       ; $5C4D: $FF
    ld a, d                                       ; $5C4E: $7A
    rst $38                                       ; $5C4F: $FF
    rst $38                                       ; $5C50: $FF
    nop                                           ; $5C51: $00
    ld a, a                                       ; $5C52: $7F
    add b                                         ; $5C53: $80
    ccf                                           ; $5C54: $3F
    ret nz                                        ; $5C55: $C0

    rra                                           ; $5C56: $1F
    ldh [rIF], a                                  ; $5C57: $E0 $0F
    ldh a, [rTAC]                                 ; $5C59: $F0 $07
    ld hl, sp+$03                                 ; $5C5B: $F8 $03
    db $FC                                        ; $5C5D: $FC
    ld bc, $00FE                                  ; $5C5E: $01 $FE $00
    nop                                           ; $5C61: $00
    add b                                         ; $5C62: $80
    nop                                           ; $5C63: $00
    ret nz                                        ; $5C64: $C0

    nop                                           ; $5C65: $00
    ldh [rP1], a                                  ; $5C66: $E0 $00
    ldh a, [rP1]                                  ; $5C68: $F0 $00
    ld hl, sp+$00                                 ; $5C6A: $F8 $00
    db $FC                                        ; $5C6C: $FC
    nop                                           ; $5C6D: $00
    cp $00                                        ; $5C6E: $FE $00
    nop                                           ; $5C70: $00
    ld a, a                                       ; $5C71: $7F
    nop                                           ; $5C72: $00
    ld a, a                                       ; $5C73: $7F
    nop                                           ; $5C74: $00
    ld a, a                                       ; $5C75: $7F
    nop                                           ; $5C76: $00
    ld a, a                                       ; $5C77: $7F
    nop                                           ; $5C78: $00
    ld a, a                                       ; $5C79: $7F
    nop                                           ; $5C7A: $00
    ld a, a                                       ; $5C7B: $7F
    ld b, b                                       ; $5C7C: $40
    ccf                                           ; $5C7D: $3F
    ld h, b                                       ; $5C7E: $60
    rra                                           ; $5C7F: $1F
    nop                                           ; $5C80: $00
    rst $38                                       ; $5C81: $FF
    ld bc, $00FE                                  ; $5C82: $01 $FE $00
    rst $38                                       ; $5C85: $FF
    nop                                           ; $5C86: $00
    rst $38                                       ; $5C87: $FF
    nop                                           ; $5C88: $00
    rst $38                                       ; $5C89: $FF
    nop                                           ; $5C8A: $00
    rst $38                                       ; $5C8B: $FF
    nop                                           ; $5C8C: $00
    rst $38                                       ; $5C8D: $FF
    nop                                           ; $5C8E: $00
    rst $38                                       ; $5C8F: $FF
    add b                                         ; $5C90: $80
    ld a, a                                       ; $5C91: $7F
    nop                                           ; $5C92: $00
    rst $38                                       ; $5C93: $FF

Call_060_5C94:
    nop                                           ; $5C94: $00
    rst $38                                       ; $5C95: $FF
    nop                                           ; $5C96: $00
    rst $38                                       ; $5C97: $FF
    nop                                           ; $5C98: $00
    rst $38                                       ; $5C99: $FF
    ld bc, $02FE                                  ; $5C9A: $01 $FE $02
    db $FD                                        ; $5C9D: $FD
    dec b                                         ; $5C9E: $05
    ld a, [$00FF]                                 ; $5C9F: $FA $FF $00
    ld a, a                                       ; $5CA2: $7F
    add b                                         ; $5CA3: $80
    ccf                                           ; $5CA4: $3F
    ret nz                                        ; $5CA5: $C0

    ld e, a                                       ; $5CA6: $5F
    and b                                         ; $5CA7: $A0
    cpl                                           ; $5CA8: $2F
    ret nc                                        ; $5CA9: $D0

    ld d, a                                       ; $5CAA: $57
    xor b                                         ; $5CAB: $A8
    xor e                                         ; $5CAC: $AB
    ld d, h                                       ; $5CAD: $54
    dec d                                         ; $5CAE: $15
    ld [$00FD], a                                 ; $5CAF: $EA $FD $00
    cp $00                                        ; $5CB2: $FE $00
    rst $38                                       ; $5CB4: $FF
    nop                                           ; $5CB5: $00
    rst $38                                       ; $5CB6: $FF
    nop                                           ; $5CB7: $00
    rst $38                                       ; $5CB8: $FF
    nop                                           ; $5CB9: $00
    rst $38                                       ; $5CBA: $FF
    nop                                           ; $5CBB: $00
    rst $38                                       ; $5CBC: $FF
    nop                                           ; $5CBD: $00
    rst $38                                       ; $5CBE: $FF
    nop                                           ; $5CBF: $00
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    add b                                         ; $5CC2: $80
    nop                                           ; $5CC3: $00
    ld b, b                                       ; $5CC4: $40
    nop                                           ; $5CC5: $00
    and b                                         ; $5CC6: $A0
    nop                                           ; $5CC7: $00
    ret nc                                        ; $5CC8: $D0

    nop                                           ; $5CC9: $00
    xor b                                         ; $5CCA: $A8
    nop                                           ; $5CCB: $00
    call nc, $EA00                                ; $5CCC: $D4 $00 $EA
    nop                                           ; $5CCF: $00
    jp $853E                                      ; $5CD0: $C3 $3E $85


    ld a, [hl]                                    ; $5CD3: $7E
    adc e                                         ; $5CD4: $8B
    ld a, h                                       ; $5CD5: $7C
    sub a                                         ; $5CD6: $97
    ld a, b                                       ; $5CD7: $78
    xor a                                         ; $5CD8: $AF
    ld [hl], b                                    ; $5CD9: $70
    sbc a                                         ; $5CDA: $9F
    ld h, b                                       ; $5CDB: $60
    cp a                                          ; $5CDC: $BF
    ld b, b                                       ; $5CDD: $40
    rst $38                                       ; $5CDE: $FF
    nop                                           ; $5CDF: $00
    rst $38                                       ; $5CE0: $FF
    nop                                           ; $5CE1: $00
    rst $38                                       ; $5CE2: $FF
    nop                                           ; $5CE3: $00
    rst $38                                       ; $5CE4: $FF
    nop                                           ; $5CE5: $00
    rst $38                                       ; $5CE6: $FF
    nop                                           ; $5CE7: $00
    rst $38                                       ; $5CE8: $FF
    nop                                           ; $5CE9: $00
    rst $38                                       ; $5CEA: $FF
    nop                                           ; $5CEB: $00
    rst $38                                       ; $5CEC: $FF
    nop                                           ; $5CED: $00
    rst $38                                       ; $5CEE: $FF
    nop                                           ; $5CEF: $00
    rra                                           ; $5CF0: $1F
    nop                                           ; $5CF1: $00
    rra                                           ; $5CF2: $1F
    nop                                           ; $5CF3: $00
    ld b, $00                                     ; $5CF4: $06 $00
    ld b, $00                                     ; $5CF6: $06 $00
    ld b, $00                                     ; $5CF8: $06 $00
    ld b, $00                                     ; $5CFA: $06 $00
    ld b, $00                                     ; $5CFC: $06 $00
    or $00                                        ; $5CFE: $F6 $00
    ld b, e                                       ; $5D00: $43
    inc a                                         ; $5D01: $3C
    ld b, d                                       ; $5D02: $42
    dec a                                         ; $5D03: $3D
    ld h, d                                       ; $5D04: $62
    dec e                                         ; $5D05: $1D
    ld b, b                                       ; $5D06: $40
    inc a                                         ; $5D07: $3C
    ld h, c                                       ; $5D08: $61
    inc e                                         ; $5D09: $1C
    ld b, c                                       ; $5D0A: $41
    inc a                                         ; $5D0B: $3C
    ld b, c                                       ; $5D0C: $41
    inc a                                         ; $5D0D: $3C
    ld a, h                                       ; $5D0E: $7C
    nop                                           ; $5D0F: $00
    rst $38                                       ; $5D10: $FF
    nop                                           ; $5D11: $00
    nop                                           ; $5D12: $00
    rst $38                                       ; $5D13: $FF
    nop                                           ; $5D14: $00
    rst $38                                       ; $5D15: $FF
    nop                                           ; $5D16: $00
    nop                                           ; $5D17: $00
    rst $38                                       ; $5D18: $FF
    nop                                           ; $5D19: $00
    rst $38                                       ; $5D1A: $FF
    nop                                           ; $5D1B: $00
    rst $38                                       ; $5D1C: $FF
    nop                                           ; $5D1D: $00
    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    rst $38                                       ; $5D20: $FF
    nop                                           ; $5D21: $00
    rst $38                                       ; $5D22: $FF
    nop                                           ; $5D23: $00
    add b                                         ; $5D24: $80
    ld a, a                                       ; $5D25: $7F
    add b                                         ; $5D26: $80
    ld a, a                                       ; $5D27: $7F
    add b                                         ; $5D28: $80
    ld a, a                                       ; $5D29: $7F
    add b                                         ; $5D2A: $80
    ld a, a                                       ; $5D2B: $7F
    rst $38                                       ; $5D2C: $FF
    ld a, a                                       ; $5D2D: $7F
    ld a, a                                       ; $5D2E: $7F
    nop                                           ; $5D2F: $00
    cp $00                                        ; $5D30: $FE $00
    cp $00                                        ; $5D32: $FE $00
    nop                                           ; $5D34: $00
    cp $00                                        ; $5D35: $FE $00
    cp $00                                        ; $5D37: $FE $00
    cp $00                                        ; $5D39: $FE $00
    cp $FE                                        ; $5D3B: $FE $FE
    cp $FE                                        ; $5D3D: $FE $FE
    nop                                           ; $5D3F: $00
    rst $38                                       ; $5D40: $FF
    nop                                           ; $5D41: $00
    rst $38                                       ; $5D42: $FF
    nop                                           ; $5D43: $00
    rst $38                                       ; $5D44: $FF
    nop                                           ; $5D45: $00
    nop                                           ; $5D46: $00
    nop                                           ; $5D47: $00
    add b                                         ; $5D48: $80
    ld a, a                                       ; $5D49: $7F
    add b                                         ; $5D4A: $80
    ld a, a                                       ; $5D4B: $7F
    add b                                         ; $5D4C: $80
    ld a, a                                       ; $5D4D: $7F
    nop                                           ; $5D4E: $00
    nop                                           ; $5D4F: $00
    add b                                         ; $5D50: $80
    nop                                           ; $5D51: $00
    rst $38                                       ; $5D52: $FF
    nop                                           ; $5D53: $00
    rst $38                                       ; $5D54: $FF
    nop                                           ; $5D55: $00
    nop                                           ; $5D56: $00
    nop                                           ; $5D57: $00
    ret nz                                        ; $5D58: $C0

    ccf                                           ; $5D59: $3F
    ret nz                                        ; $5D5A: $C0

    ccf                                           ; $5D5B: $3F
    ret nz                                        ; $5D5C: $C0

    ccf                                           ; $5D5D: $3F
    nop                                           ; $5D5E: $00
    nop                                           ; $5D5F: $00
    rst $38                                       ; $5D60: $FF
    nop                                           ; $5D61: $00
    rst $38                                       ; $5D62: $FF
    nop                                           ; $5D63: $00
    add b                                         ; $5D64: $80
    ld a, a                                       ; $5D65: $7F
    add b                                         ; $5D66: $80
    ld a, a                                       ; $5D67: $7F
    add b                                         ; $5D68: $80
    ld a, a                                       ; $5D69: $7F
    add b                                         ; $5D6A: $80
    ld a, a                                       ; $5D6B: $7F
    add b                                         ; $5D6C: $80
    ld a, a                                       ; $5D6D: $7F
    rst $38                                       ; $5D6E: $FF
    ld a, a                                       ; $5D6F: $7F
    ld b, d                                       ; $5D70: $42
    dec a                                         ; $5D71: $3D
    ld b, d                                       ; $5D72: $42
    dec a                                         ; $5D73: $3D
    ld h, d                                       ; $5D74: $62
    dec e                                         ; $5D75: $1D
    ld b, b                                       ; $5D76: $40
    inc a                                         ; $5D77: $3C
    ld h, c                                       ; $5D78: $61
    inc e                                         ; $5D79: $1C
    ld b, c                                       ; $5D7A: $41
    inc a                                         ; $5D7B: $3C
    ld b, c                                       ; $5D7C: $41
    inc a                                         ; $5D7D: $3C
    ld a, h                                       ; $5D7E: $7C
    nop                                           ; $5D7F: $00
    ld b, c                                       ; $5D80: $41
    inc a                                         ; $5D81: $3C
    ld b, c                                       ; $5D82: $41
    inc a                                         ; $5D83: $3C
    ld b, c                                       ; $5D84: $41
    inc a                                         ; $5D85: $3C
    ld b, b                                       ; $5D86: $40
    inc a                                         ; $5D87: $3C
    ld b, d                                       ; $5D88: $42
    dec a                                         ; $5D89: $3D
    ld b, d                                       ; $5D8A: $42
    dec a                                         ; $5D8B: $3D
    ld b, d                                       ; $5D8C: $42
    dec a                                         ; $5D8D: $3D
    ld b, b                                       ; $5D8E: $40
    inc a                                         ; $5D8F: $3C
    rst $38                                       ; $5D90: $FF
    nop                                           ; $5D91: $00
    rst $38                                       ; $5D92: $FF
    nop                                           ; $5D93: $00
    rst $38                                       ; $5D94: $FF
    nop                                           ; $5D95: $00
    rst $38                                       ; $5D96: $FF
    nop                                           ; $5D97: $00
    rst $38                                       ; $5D98: $FF
    nop                                           ; $5D99: $00
    rst $38                                       ; $5D9A: $FF
    nop                                           ; $5D9B: $00
    rst $38                                       ; $5D9C: $FF
    nop                                           ; $5D9D: $00
    rst $38                                       ; $5D9E: $FF
    nop                                           ; $5D9F: $00
    nop                                           ; $5DA0: $00
    nop                                           ; $5DA1: $00
    ld b, c                                       ; $5DA2: $41
    inc a                                         ; $5DA3: $3C
    ld b, c                                       ; $5DA4: $41
    inc a                                         ; $5DA5: $3C
    ld h, b                                       ; $5DA6: $60
    inc e                                         ; $5DA7: $1C
    ld b, d                                       ; $5DA8: $42
    dec a                                         ; $5DA9: $3D
    ld h, d                                       ; $5DAA: $62
    dec e                                         ; $5DAB: $1D
    ld b, d                                       ; $5DAC: $42
    dec a                                         ; $5DAD: $3D
    ld b, b                                       ; $5DAE: $40
    inc a                                         ; $5DAF: $3C
    rst $38                                       ; $5DB0: $FF
    nop                                           ; $5DB1: $00
    rst $38                                       ; $5DB2: $FF
    nop                                           ; $5DB3: $00
    dec c                                         ; $5DB4: $0D
    nop                                           ; $5DB5: $00
    dec c                                         ; $5DB6: $0D
    nop                                           ; $5DB7: $00
    db $FD                                        ; $5DB8: $FD
    nop                                           ; $5DB9: $00
    db $FD                                        ; $5DBA: $FD
    nop                                           ; $5DBB: $00
    call $FF00                                    ; $5DBC: $CD $00 $FF
    nop                                           ; $5DBF: $00
    ret nz                                        ; $5DC0: $C0

    ld a, a                                       ; $5DC1: $7F
    add b                                         ; $5DC2: $80
    ld a, a                                       ; $5DC3: $7F
    ldh [$1F], a                                  ; $5DC4: $E0 $1F
    add b                                         ; $5DC6: $80
    ld a, a                                       ; $5DC7: $7F
    rst $00                                       ; $5DC8: $C7
    ld a, a                                       ; $5DC9: $7F
    cp e                                          ; $5DCA: $BB
    ld a, h                                       ; $5DCB: $7C
    cp a                                          ; $5DCC: $BF
    ld b, b                                       ; $5DCD: $40
    rst $38                                       ; $5DCE: $FF
    nop                                           ; $5DCF: $00
    ccf                                           ; $5DD0: $3F
    ret nz                                        ; $5DD1: $C0

    rst $38                                       ; $5DD2: $FF
    nop                                           ; $5DD3: $00
    rst $38                                       ; $5DD4: $FF
    nop                                           ; $5DD5: $00
    ccf                                           ; $5DD6: $3F
    ret nz                                        ; $5DD7: $C0

    ld a, a                                       ; $5DD8: $7F
    add b                                         ; $5DD9: $80
    rst $38                                       ; $5DDA: $FF
    nop                                           ; $5DDB: $00
    rst $38                                       ; $5DDC: $FF
    nop                                           ; $5DDD: $00
    rst $38                                       ; $5DDE: $FF
    nop                                           ; $5DDF: $00
    dec de                                        ; $5DE0: $1B
    db $E4                                        ; $5DE1: $E4
    cpl                                           ; $5DE2: $2F
    ret nc                                        ; $5DE3: $D0

    ld b, $F9                                     ; $5DE4: $06 $F9
    rrca                                          ; $5DE6: $0F
    ldh a, [$5F]                                  ; $5DE7: $F0 $5F
    and b                                         ; $5DE9: $A0
    ld l, a                                       ; $5DEA: $6F
    sub b                                         ; $5DEB: $90
    cpl                                           ; $5DEC: $2F
    ret nc                                        ; $5DED: $D0

    rst $38                                       ; $5DEE: $FF
    nop                                           ; $5DEF: $00
    db $D3                                        ; $5DF0: $D3
    inc l                                         ; $5DF1: $2C
    rst $18                                       ; $5DF2: $DF
    jr nz, @+$01                                  ; $5DF3: $20 $FF

    nop                                           ; $5DF5: $00
    rst $38                                       ; $5DF6: $FF
    nop                                           ; $5DF7: $00
    rst $38                                       ; $5DF8: $FF
    nop                                           ; $5DF9: $00
    rst $38                                       ; $5DFA: $FF
    nop                                           ; $5DFB: $00
    rst $38                                       ; $5DFC: $FF
    nop                                           ; $5DFD: $00
    rst $38                                       ; $5DFE: $FF
    nop                                           ; $5DFF: $00
    nop                                           ; $5E00: $00
    rst $38                                       ; $5E01: $FF
    nop                                           ; $5E02: $00
    rst $38                                       ; $5E03: $FF
    nop                                           ; $5E04: $00
    rst $38                                       ; $5E05: $FF
    nop                                           ; $5E06: $00
    rst $38                                       ; $5E07: $FF
    ld [bc], a                                    ; $5E08: $02
    db $FD                                        ; $5E09: $FD
    inc b                                         ; $5E0A: $04
    ei                                            ; $5E0B: $FB
    ld d, $E9                                     ; $5E0C: $16 $E9
    dec e                                         ; $5E0E: $1D
    ld [c], a                                     ; $5E0F: $E2
    add hl, bc                                    ; $5E10: $09
    or $07                                        ; $5E11: $F6 $07
    ld hl, sp+$07                                 ; $5E13: $F8 $07
    ld hl, sp+$0F                                 ; $5E15: $F8 $0F
    ldh a, [$5F]                                  ; $5E17: $F0 $5F
    and b                                         ; $5E19: $A0
    ld l, a                                       ; $5E1A: $6F
    sub b                                         ; $5E1B: $90
    di                                            ; $5E1C: $F3
    inc c                                         ; $5E1D: $0C
    xor e                                         ; $5E1E: $AB
    ld d, h                                       ; $5E1F: $54
    ret nz                                        ; $5E20: $C0

    ccf                                           ; $5E21: $3F
    call c, $F723                                 ; $5E22: $DC $23 $F7
    ld [$41BE], sp                                ; $5E25: $08 $BE $41
    rst $38                                       ; $5E28: $FF
    nop                                           ; $5E29: $00
    ei                                            ; $5E2A: $FB
    inc b                                         ; $5E2B: $04
    rst $38                                       ; $5E2C: $FF
    nop                                           ; $5E2D: $00
    rst $38                                       ; $5E2E: $FF
    nop                                           ; $5E2F: $00
    dec c                                         ; $5E30: $0D
    ld a, [c]                                     ; $5E31: $F2
    cp a                                          ; $5E32: $BF
    ld b, b                                       ; $5E33: $40
    ld l, a                                       ; $5E34: $6F
    sub b                                         ; $5E35: $90
    ccf                                           ; $5E36: $3F
    ret nz                                        ; $5E37: $C0

    rst $28                                       ; $5E38: $EF
    db $10                                        ; $5E39: $10
    rst $38                                       ; $5E3A: $FF
    nop                                           ; $5E3B: $00
    rst $38                                       ; $5E3C: $FF
    nop                                           ; $5E3D: $00
    rst $38                                       ; $5E3E: $FF
    nop                                           ; $5E3F: $00
    cp a                                          ; $5E40: $BF
    ld b, b                                       ; $5E41: $40
    ld e, a                                       ; $5E42: $5F
    and b                                         ; $5E43: $A0
    sub a                                         ; $5E44: $97
    ld l, b                                       ; $5E45: $68
    ld d, e                                       ; $5E46: $53
    xor h                                         ; $5E47: $AC
    ld [hl], a                                    ; $5E48: $77
    adc b                                         ; $5E49: $88
    ld e, l                                       ; $5E4A: $5D
    and d                                         ; $5E4B: $A2
    rst $38                                       ; $5E4C: $FF
    nop                                           ; $5E4D: $00
    rst $38                                       ; $5E4E: $FF
    nop                                           ; $5E4F: $00
    rst $38                                       ; $5E50: $FF
    nop                                           ; $5E51: $00
    rra                                           ; $5E52: $1F
    ldh [$A7], a                                  ; $5E53: $E0 $A7
    ld e, b                                       ; $5E55: $58
    ld l, a                                       ; $5E56: $6F
    sub b                                         ; $5E57: $90
    rra                                           ; $5E58: $1F
    ldh [$5A], a                                  ; $5E59: $E0 $5A
    and l                                         ; $5E5B: $A5
    di                                            ; $5E5C: $F3
    inc c                                         ; $5E5D: $0C
    rst $38                                       ; $5E5E: $FF
    nop                                           ; $5E5F: $00
    ld [hl], $C9                                  ; $5E60: $36 $C9
    ld e, $E1                                     ; $5E62: $1E $E1
    dec b                                         ; $5E64: $05
    ld a, [$E619]                                 ; $5E65: $FA $19 $E6
    ld [bc], a                                    ; $5E68: $02
    db $FD                                        ; $5E69: $FD
    nop                                           ; $5E6A: $00
    rst $38                                       ; $5E6B: $FF
    nop                                           ; $5E6C: $00
    rst $38                                       ; $5E6D: $FF
    nop                                           ; $5E6E: $00
    rst $38                                       ; $5E6F: $FF
    rst $08                                       ; $5E70: $CF
    jr nc, jr_060_5EB2                            ; $5E71: $30 $3F

    ret nz                                        ; $5E73: $C0

    ld d, a                                       ; $5E74: $57
    xor b                                         ; $5E75: $A8
    dec l                                         ; $5E76: $2D
    jp nc, Jump_060_54AB                          ; $5E77: $D2 $AB $54

    ld h, a                                       ; $5E7A: $67
    sbc b                                         ; $5E7B: $98
    inc bc                                        ; $5E7C: $03
    db $FC                                        ; $5E7D: $FC
    ld bc, $EFFE                                  ; $5E7E: $01 $FE $EF
    db $10                                        ; $5E81: $10
    dec a                                         ; $5E82: $3D
    jp nz, $AA55                                  ; $5E83: $C2 $55 $AA

    ld l, $D1                                     ; $5E86: $2E $D1
    rrca                                          ; $5E88: $0F
    ldh a, [rTAC]                                 ; $5E89: $F0 $07
    ld hl, sp+$27                                 ; $5E8B: $F8 $27
    ret c                                         ; $5E8D: $D8

    rrca                                          ; $5E8E: $0F
    ldh a, [rIE]                                  ; $5E8F: $F0 $FF
    nop                                           ; $5E91: $00
    rst $38                                       ; $5E92: $FF
    nop                                           ; $5E93: $00
    rst $38                                       ; $5E94: $FF
    nop                                           ; $5E95: $00
    rst $38                                       ; $5E96: $FF
    nop                                           ; $5E97: $00
    rst $38                                       ; $5E98: $FF
    nop                                           ; $5E99: $00
    rst $38                                       ; $5E9A: $FF
    nop                                           ; $5E9B: $00
    rst $38                                       ; $5E9C: $FF
    nop                                           ; $5E9D: $00

jr_060_5E9E:
    ld a, a                                       ; $5E9E: $7F
    add b                                         ; $5E9F: $80
    rst $38                                       ; $5EA0: $FF
    rst $38                                       ; $5EA1: $FF
    rst $38                                       ; $5EA2: $FF
    rst $38                                       ; $5EA3: $FF
    rst $38                                       ; $5EA4: $FF
    rst $38                                       ; $5EA5: $FF
    ld sp, hl                                     ; $5EA6: $F9
    rst $38                                       ; $5EA7: $FF
    ld a, [c]                                     ; $5EA8: $F2
    db $FD                                        ; $5EA9: $FD
    rst $20                                       ; $5EAA: $E7
    ld hl, sp-$09                                 ; $5EAB: $F8 $F7
    ld hl, sp-$11                                 ; $5EAD: $F8 $EF
    ldh a, [rIE]                                  ; $5EAF: $F0 $FF
    rst $38                                       ; $5EB1: $FF

jr_060_5EB2:
    rst $38                                       ; $5EB2: $FF
    rst $38                                       ; $5EB3: $FF
    rst $38                                       ; $5EB4: $FF
    rst $38                                       ; $5EB5: $FF
    ld b, b                                       ; $5EB6: $40
    rst $38                                       ; $5EB7: $FF
    ld e, $E1                                     ; $5EB8: $1E $E1
    rst $38                                       ; $5EBA: $FF
    nop                                           ; $5EBB: $00
    rst $38                                       ; $5EBC: $FF
    nop                                           ; $5EBD: $00
    rst $38                                       ; $5EBE: $FF
    nop                                           ; $5EBF: $00
    rst $38                                       ; $5EC0: $FF
    rst $38                                       ; $5EC1: $FF
    rst $38                                       ; $5EC2: $FF
    rst $38                                       ; $5EC3: $FF
    rst $38                                       ; $5EC4: $FF
    rst $38                                       ; $5EC5: $FF
    ret nc                                        ; $5EC6: $D0

    rst $38                                       ; $5EC7: $FF
    dec b                                         ; $5EC8: $05
    ld a, [$00FF]                                 ; $5EC9: $FA $FF $00
    rst $38                                       ; $5ECC: $FF
    nop                                           ; $5ECD: $00
    rst $38                                       ; $5ECE: $FF
    nop                                           ; $5ECF: $00
    rst $28                                       ; $5ED0: $EF
    ldh a, [$E7]                                  ; $5ED1: $F0 $E7
    ld hl, sp-$11                                 ; $5ED3: $F8 $EF
    ldh a, [$E7]                                  ; $5ED5: $F0 $E7
    ld hl, sp-$09                                 ; $5ED7: $F8 $F7
    ld hl, sp-$09                                 ; $5ED9: $F8 $F7
    ld hl, sp-$09                                 ; $5EDB: $F8 $F7
    ld hl, sp-$19                                 ; $5EDD: $F8 $E7
    ld hl, sp-$11                                 ; $5EDF: $F8 $EF
    ldh a, [$E7]                                  ; $5EE1: $F0 $E7
    ld hl, sp-$11                                 ; $5EE3: $F8 $EF
    ldh a, [$EF]                                  ; $5EE5: $F0 $EF
    ldh a, [$E7]                                  ; $5EE7: $F0 $E7
    ld hl, sp-$09                                 ; $5EE9: $F8 $F7
    ld hl, sp-$09                                 ; $5EEB: $F8 $F7
    ld hl, sp-$09                                 ; $5EED: $F8 $F7
    ld hl, sp+$00                                 ; $5EEF: $F8 $00
    nop                                           ; $5EF1: $00
    nop                                           ; $5EF2: $00
    nop                                           ; $5EF3: $00
    nop                                           ; $5EF4: $00
    nop                                           ; $5EF5: $00
    nop                                           ; $5EF6: $00
    nop                                           ; $5EF7: $00
    nop                                           ; $5EF8: $00
    nop                                           ; $5EF9: $00
    nop                                           ; $5EFA: $00
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    xor a                                         ; $5F00: $AF
    jr nz, jr_060_5E9E                            ; $5F01: $20 $9B

    ld a, b                                       ; $5F03: $78
    rst $20                                       ; $5F04: $E7
    rra                                           ; $5F05: $1F
    ld hl, sp+$07                                 ; $5F06: $F8 $07
    ei                                            ; $5F08: $FB
    inc b                                         ; $5F09: $04
    ei                                            ; $5F0A: $FB
    inc b                                         ; $5F0B: $04
    db $ED                                        ; $5F0C: $ED
    inc c                                         ; $5F0D: $0C
    pop af                                        ; $5F0E: $F1
    ld a, $FF                                     ; $5F0F: $3E $FF
    nop                                           ; $5F11: $00
    rst $38                                       ; $5F12: $FF
    nop                                           ; $5F13: $00
    ld a, a                                       ; $5F14: $7F
    nop                                           ; $5F15: $00
    rst $18                                       ; $5F16: $DF
    ret nz                                        ; $5F17: $C0

    rra                                           ; $5F18: $1F
    ret nz                                        ; $5F19: $C0

    rst $38                                       ; $5F1A: $FF
    nop                                           ; $5F1B: $00
    rst $38                                       ; $5F1C: $FF
    nop                                           ; $5F1D: $00
    rst $38                                       ; $5F1E: $FF
    nop                                           ; $5F1F: $00
    pop hl                                        ; $5F20: $E1
    ld a, [hl]                                    ; $5F21: $7E
    pop de                                        ; $5F22: $D1
    xor $11                                       ; $5F23: $EE $11
    adc $31                                       ; $5F25: $CE $31
    adc $F1                                       ; $5F27: $CE $F1
    ld c, $E0                                     ; $5F29: $0E $E0
    ld c, $E0                                     ; $5F2B: $0E $E0
    ld c, $F1                                     ; $5F2D: $0E $F1
    inc b                                         ; $5F2F: $04
    nop                                           ; $5F30: $00
    nop                                           ; $5F31: $00
    nop                                           ; $5F32: $00
    nop                                           ; $5F33: $00
    nop                                           ; $5F34: $00
    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    nop                                           ; $5F37: $00
    nop                                           ; $5F38: $00
    nop                                           ; $5F39: $00
    nop                                           ; $5F3A: $00
    nop                                           ; $5F3B: $00
    nop                                           ; $5F3C: $00
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    nop                                           ; $5F44: $00
    nop                                           ; $5F45: $00
    nop                                           ; $5F46: $00
    nop                                           ; $5F47: $00
    nop                                           ; $5F48: $00
    nop                                           ; $5F49: $00
    nop                                           ; $5F4A: $00
    nop                                           ; $5F4B: $00
    nop                                           ; $5F4C: $00
    nop                                           ; $5F4D: $00
    nop                                           ; $5F4E: $00
    nop                                           ; $5F4F: $00
    nop                                           ; $5F50: $00
    nop                                           ; $5F51: $00
    nop                                           ; $5F52: $00
    nop                                           ; $5F53: $00
    nop                                           ; $5F54: $00
    nop                                           ; $5F55: $00
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    nop                                           ; $5F58: $00
    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    nop                                           ; $5F69: $00
    nop                                           ; $5F6A: $00
    nop                                           ; $5F6B: $00
    nop                                           ; $5F6C: $00
    nop                                           ; $5F6D: $00
    nop                                           ; $5F6E: $00
    nop                                           ; $5F6F: $00
    nop                                           ; $5F70: $00
    nop                                           ; $5F71: $00
    nop                                           ; $5F72: $00
    nop                                           ; $5F73: $00
    nop                                           ; $5F74: $00
    nop                                           ; $5F75: $00
    nop                                           ; $5F76: $00
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00
    nop                                           ; $5F7A: $00
    nop                                           ; $5F7B: $00
    nop                                           ; $5F7C: $00
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    nop                                           ; $5F82: $00
    nop                                           ; $5F83: $00
    nop                                           ; $5F84: $00
    nop                                           ; $5F85: $00
    nop                                           ; $5F86: $00
    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00
    nop                                           ; $5F89: $00
    nop                                           ; $5F8A: $00
    nop                                           ; $5F8B: $00
    nop                                           ; $5F8C: $00
    nop                                           ; $5F8D: $00
    nop                                           ; $5F8E: $00
    nop                                           ; $5F8F: $00
    nop                                           ; $5F90: $00
    nop                                           ; $5F91: $00
    nop                                           ; $5F92: $00
    nop                                           ; $5F93: $00
    nop                                           ; $5F94: $00
    nop                                           ; $5F95: $00
    nop                                           ; $5F96: $00
    nop                                           ; $5F97: $00
    nop                                           ; $5F98: $00
    nop                                           ; $5F99: $00
    nop                                           ; $5F9A: $00
    nop                                           ; $5F9B: $00
    nop                                           ; $5F9C: $00
    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
    nop                                           ; $5F9F: $00
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    nop                                           ; $5FA2: $00
    nop                                           ; $5FA3: $00
    nop                                           ; $5FA4: $00
    nop                                           ; $5FA5: $00
    nop                                           ; $5FA6: $00
    nop                                           ; $5FA7: $00
    nop                                           ; $5FA8: $00
    nop                                           ; $5FA9: $00
    nop                                           ; $5FAA: $00
    nop                                           ; $5FAB: $00
    nop                                           ; $5FAC: $00
    nop                                           ; $5FAD: $00
    nop                                           ; $5FAE: $00
    nop                                           ; $5FAF: $00
    nop                                           ; $5FB0: $00
    nop                                           ; $5FB1: $00
    nop                                           ; $5FB2: $00
    nop                                           ; $5FB3: $00
    nop                                           ; $5FB4: $00
    nop                                           ; $5FB5: $00
    nop                                           ; $5FB6: $00
    nop                                           ; $5FB7: $00
    nop                                           ; $5FB8: $00
    nop                                           ; $5FB9: $00
    nop                                           ; $5FBA: $00
    nop                                           ; $5FBB: $00
    nop                                           ; $5FBC: $00
    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    nop                                           ; $5FBF: $00
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    nop                                           ; $5FC2: $00
    nop                                           ; $5FC3: $00
    nop                                           ; $5FC4: $00
    nop                                           ; $5FC5: $00
    nop                                           ; $5FC6: $00
    nop                                           ; $5FC7: $00
    nop                                           ; $5FC8: $00
    nop                                           ; $5FC9: $00
    nop                                           ; $5FCA: $00
    nop                                           ; $5FCB: $00
    nop                                           ; $5FCC: $00
    nop                                           ; $5FCD: $00
    nop                                           ; $5FCE: $00
    nop                                           ; $5FCF: $00
    nop                                           ; $5FD0: $00
    nop                                           ; $5FD1: $00
    nop                                           ; $5FD2: $00
    nop                                           ; $5FD3: $00
    nop                                           ; $5FD4: $00
    nop                                           ; $5FD5: $00
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    nop                                           ; $5FDA: $00
    nop                                           ; $5FDB: $00
    nop                                           ; $5FDC: $00
    nop                                           ; $5FDD: $00
    nop                                           ; $5FDE: $00
    nop                                           ; $5FDF: $00
    nop                                           ; $5FE0: $00
    nop                                           ; $5FE1: $00
    nop                                           ; $5FE2: $00
    nop                                           ; $5FE3: $00
    nop                                           ; $5FE4: $00
    nop                                           ; $5FE5: $00
    nop                                           ; $5FE6: $00
    nop                                           ; $5FE7: $00
    nop                                           ; $5FE8: $00
    nop                                           ; $5FE9: $00
    nop                                           ; $5FEA: $00
    nop                                           ; $5FEB: $00
    nop                                           ; $5FEC: $00
    nop                                           ; $5FED: $00
    nop                                           ; $5FEE: $00
    nop                                           ; $5FEF: $00
    nop                                           ; $5FF0: $00
    nop                                           ; $5FF1: $00
    nop                                           ; $5FF2: $00
    nop                                           ; $5FF3: $00
    nop                                           ; $5FF4: $00
    nop                                           ; $5FF5: $00
    nop                                           ; $5FF6: $00
    nop                                           ; $5FF7: $00
    nop                                           ; $5FF8: $00
    nop                                           ; $5FF9: $00
    nop                                           ; $5FFA: $00
    nop                                           ; $5FFB: $00
    nop                                           ; $5FFC: $00
    nop                                           ; $5FFD: $00
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    add b                                         ; $6004: $80
    ld a, a                                       ; $6005: $7F
    dec a                                         ; $6006: $3D
    rst $38                                       ; $6007: $FF
    ld a, [hl]                                    ; $6008: $7E
    rst $38                                       ; $6009: $FF
    ld a, a                                       ; $600A: $7F
    rst $38                                       ; $600B: $FF
    ld a, a                                       ; $600C: $7F
    rst $38                                       ; $600D: $FF
    ld a, a                                       ; $600E: $7F
    rst $38                                       ; $600F: $FF
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    add c                                         ; $6014: $81
    nop                                           ; $6015: $00
    ld [hl], b                                    ; $6016: $70
    adc a                                         ; $6017: $8F
    adc a                                         ; $6018: $8F
    rst $38                                       ; $6019: $FF
    sbc a                                         ; $601A: $9F
    rst $38                                       ; $601B: $FF
    rst $18                                       ; $601C: $DF
    rst $38                                       ; $601D: $FF
    rst $18                                       ; $601E: $DF
    rst $38                                       ; $601F: $FF
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    ld hl, $1E1E                                  ; $6022: $21 $1E $1E
    rst $38                                       ; $6025: $FF
    rst $38                                       ; $6026: $FF
    rst $38                                       ; $6027: $FF
    rst $38                                       ; $6028: $FF
    rst $38                                       ; $6029: $FF
    rst $38                                       ; $602A: $FF
    rst $38                                       ; $602B: $FF
    rst $38                                       ; $602C: $FF
    rst $38                                       ; $602D: $FF
    rst $38                                       ; $602E: $FF
    rst $38                                       ; $602F: $FF
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    ld hl, $1C1E                                  ; $6032: $21 $1E $1C
    rst $38                                       ; $6035: $FF
    cp $FF                                        ; $6036: $FE $FF
    cp $FF                                        ; $6038: $FE $FF
    cp $FF                                        ; $603A: $FE $FF
    cp $FF                                        ; $603C: $FE $FF
    cp $FF                                        ; $603E: $FE $FF
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    ld a, b                                       ; $6043: $78
    ld a, b                                       ; $6044: $78
    rst $38                                       ; $6045: $FF
    rst $38                                       ; $6046: $FF
    rst $38                                       ; $6047: $FF
    rst $38                                       ; $6048: $FF
    rst $38                                       ; $6049: $FF
    rst $38                                       ; $604A: $FF
    rst $38                                       ; $604B: $FF
    rst $38                                       ; $604C: $FF
    rst $38                                       ; $604D: $FF
    rst $38                                       ; $604E: $FF
    rst $38                                       ; $604F: $FF
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    db $FC                                        ; $6057: $FC
    db $FC                                        ; $6058: $FC
    rst $38                                       ; $6059: $FF
    cp $FF                                        ; $605A: $FE $FF
    cp $FF                                        ; $605C: $FE $FF
    cp $FF                                        ; $605E: $FE $FF
    ld b, b                                       ; $6060: $40
    ccf                                           ; $6061: $3F
    cp a                                          ; $6062: $BF
    ld a, a                                       ; $6063: $7F
    ld e, a                                       ; $6064: $5F
    rst $38                                       ; $6065: $FF
    ccf                                           ; $6066: $3F
    rst $38                                       ; $6067: $FF
    ld a, a                                       ; $6068: $7F
    rst $38                                       ; $6069: $FF
    ld a, a                                       ; $606A: $7F
    rst $38                                       ; $606B: $FF
    ld a, a                                       ; $606C: $7F
    rst $38                                       ; $606D: $FF
    ld a, a                                       ; $606E: $7F
    rst $38                                       ; $606F: $FF
    ld [bc], a                                    ; $6070: $02
    db $FC                                        ; $6071: $FC
    db $FD                                        ; $6072: $FD
    cp $FE                                        ; $6073: $FE $FE
    rst $38                                       ; $6075: $FF
    cp $FF                                        ; $6076: $FE $FF
    cp $FF                                        ; $6078: $FE $FF

jr_060_607A:
    db $FC                                        ; $607A: $FC
    rst $38                                       ; $607B: $FF
    db $FD                                        ; $607C: $FD
    cp $FD                                        ; $607D: $FE $FD
    cp $0F                                        ; $607F: $FE $0F
    nop                                           ; $6081: $00
    ld h, b                                       ; $6082: $60
    nop                                           ; $6083: $00
    rst $38                                       ; $6084: $FF
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    cp $FD                                        ; $6087: $FE $FD
    db $FD                                        ; $6089: $FD
    di                                            ; $608A: $F3
    di                                            ; $608B: $F3
    cp $FE                                        ; $608C: $FE $FE
    adc b                                         ; $608E: $88
    cp $FC                                        ; $608F: $FE $FC
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    rst $38                                       ; $6094: $FF
    nop                                           ; $6095: $00
    ld a, a                                       ; $6096: $7F
    ld a, b                                       ; $6097: $78
    inc a                                         ; $6098: $3C
    nop                                           ; $6099: $00
    stop                                          ; $609A: $10 $00
    ret nz                                        ; $609C: $C0

    add b                                         ; $609D: $80
    add b                                         ; $609E: $80
    nop                                           ; $609F: $00
    jr nz, @+$20                                  ; $60A0: $20 $1E

    ld b, b                                       ; $60A2: $40
    ld [$6080], sp                                ; $60A3: $08 $80 $60
    pop bc                                        ; $60A6: $C1
    ld [hl], b                                    ; $60A7: $70
    pop hl                                        ; $60A8: $E1
    ld [hl], b                                    ; $60A9: $70
    ldh a, [$71]                                  ; $60AA: $F0 $71
    ld a, [c]                                     ; $60AC: $F2
    ld [hl], c                                    ; $60AD: $71
    ldh a, [$73]                                  ; $60AE: $F0 $73
    nop                                           ; $60B0: $00
    nop                                           ; $60B1: $00
    nop                                           ; $60B2: $00
    nop                                           ; $60B3: $00
    nop                                           ; $60B4: $00
    nop                                           ; $60B5: $00
    ret nz                                        ; $60B6: $C0

    nop                                           ; $60B7: $00
    jr nz, jr_060_607A                            ; $60B8: $20 $C0

    ret nc                                        ; $60BA: $D0

    ret nz                                        ; $60BB: $C0

    ld e, b                                       ; $60BC: $58
    ld [hl], b                                    ; $60BD: $70
    ld d, b                                       ; $60BE: $50
    ldh [$F0], a                                  ; $60BF: $E0 $F0
    ld [hl], e                                    ; $60C1: $73
    ldh a, [$73]                                  ; $60C2: $F0 $73
    ldh a, [$73]                                  ; $60C4: $F0 $73
    ldh a, [rNR44]                                ; $60C6: $F0 $23
    ldh a, [$03]                                  ; $60C8: $F0 $03
    ld h, b                                       ; $60CA: $60
    inc bc                                        ; $60CB: $03
    nop                                           ; $60CC: $00
    inc bc                                        ; $60CD: $03
    ld h, d                                       ; $60CE: $62
    ld bc, $C0E8                                  ; $60CF: $01 $E8 $C0
    ld l, b                                       ; $60D2: $68
    ld b, b                                       ; $60D3: $40
    ld l, b                                       ; $60D4: $68
    ret nz                                        ; $60D5: $C0

    xor b                                         ; $60D6: $A8
    ret nz                                        ; $60D7: $C0

    or b                                          ; $60D8: $B0
    ret z                                         ; $60D9: $C8

    jr nc, jr_060_612C                            ; $60DA: $30 $50

    ld d, b                                       ; $60DC: $50
    ld hl, sp-$40                                 ; $60DD: $F8 $C0
    ldh a, [$B0]                                  ; $60DF: $F0 $B0
    ld [hl], c                                    ; $60E1: $71
    jp hl                                         ; $60E2: $E9


    ld [hl], b                                    ; $60E3: $70
    adc c                                         ; $60E4: $89
    ld [hl], b                                    ; $60E5: $70
    adc c                                         ; $60E6: $89
    ld [hl], b                                    ; $60E7: $70
    adc b                                         ; $60E8: $88
    ld [hl], b                                    ; $60E9: $70
    add b                                         ; $60EA: $80
    ld [hl], b                                    ; $60EB: $70
    or b                                          ; $60EC: $B0
    ld b, b                                       ; $60ED: $40
    pop af                                        ; $60EE: $F1
    nop                                           ; $60EF: $00
    add b                                         ; $60F0: $80
    add sp, $28                                   ; $60F1: $E8 $28
    add sp, -$18                                  ; $60F3: $E8 $E8
    ld [$00E8], sp                                ; $60F5: $08 $E8 $00
    ret z                                         ; $60F8: $C8

    nop                                           ; $60F9: $00
    nop                                           ; $60FA: $00
    db $10                                        ; $60FB: $10
    ldh a, [$78]                                  ; $60FC: $F0 $78
    ld h, b                                       ; $60FE: $60
    ld hl, sp+$7F                                 ; $60FF: $F8 $7F
    rst $38                                       ; $6101: $FF
    ld a, a                                       ; $6102: $7F
    rst $38                                       ; $6103: $FF
    ld a, a                                       ; $6104: $7F
    rst $38                                       ; $6105: $FF
    ld e, a                                       ; $6106: $5F
    rst $38                                       ; $6107: $FF
    scf                                           ; $6108: $37
    rst $38                                       ; $6109: $FF
    nop                                           ; $610A: $00
    rst $38                                       ; $610B: $FF
    add b                                         ; $610C: $80
    ld a, a                                       ; $610D: $7F
    rst $38                                       ; $610E: $FF
    nop                                           ; $610F: $00
    rst $28                                       ; $6110: $EF
    rst $38                                       ; $6111: $FF
    rst $28                                       ; $6112: $EF
    rst $38                                       ; $6113: $FF
    rst $28                                       ; $6114: $EF
    rst $38                                       ; $6115: $FF
    jp z, $85FF                                   ; $6116: $CA $FF $85

    rst $38                                       ; $6119: $FF
    nop                                           ; $611A: $00
    rst $38                                       ; $611B: $FF
    add b                                         ; $611C: $80
    ld a, a                                       ; $611D: $7F
    rst $38                                       ; $611E: $FF
    nop                                           ; $611F: $00
    rst $38                                       ; $6120: $FF
    rst $38                                       ; $6121: $FF
    cp $FF                                        ; $6122: $FE $FF
    cp $FF                                        ; $6124: $FE $FF
    db $FD                                        ; $6126: $FD
    cp $41                                        ; $6127: $FE $41
    cp $03                                        ; $6129: $FE $03
    db $FC                                        ; $612B: $FC

jr_060_612C:
    daa                                           ; $612C: $27
    ret c                                         ; $612D: $D8

    ld e, a                                       ; $612E: $5F
    and b                                         ; $612F: $A0
    cp $FF                                        ; $6130: $FE $FF
    cp $FF                                        ; $6132: $FE $FF
    ld e, [hl]                                    ; $6134: $5E
    rst $38                                       ; $6135: $FF
    dec l                                         ; $6136: $2D
    cp $41                                        ; $6137: $FE $41
    cp $83                                        ; $6139: $FE $83
    ld a, h                                       ; $613B: $7C
    ld b, [hl]                                    ; $613C: $46
    cp b                                          ; $613D: $B8
    cp h                                          ; $613E: $BC
    ld b, b                                       ; $613F: $40
    rst $38                                       ; $6140: $FF
    rst $38                                       ; $6141: $FF
    ld a, a                                       ; $6142: $7F
    rst $38                                       ; $6143: $FF
    ld a, a                                       ; $6144: $7F
    rst $38                                       ; $6145: $FF
    cp a                                          ; $6146: $BF
    ld a, a                                       ; $6147: $7F
    add d                                         ; $6148: $82
    ld a, a                                       ; $6149: $7F
    ret nz                                        ; $614A: $C0

    ccf                                           ; $614B: $3F
    ret nz                                        ; $614C: $C0

    ccf                                           ; $614D: $3F
    ldh a, [rIF]                                  ; $614E: $F0 $0F
    cp $FF                                        ; $6150: $FE $FF
    cp $FF                                        ; $6152: $FE $FF
    cp $FF                                        ; $6154: $FE $FF
    db $FC                                        ; $6156: $FC
    rst $38                                       ; $6157: $FF
    cp b                                          ; $6158: $B8
    rst $38                                       ; $6159: $FF
    nop                                           ; $615A: $00
    rst $38                                       ; $615B: $FF
    ld bc, $FFFE                                  ; $615C: $01 $FE $FF
    nop                                           ; $615F: $00
    ld a, a                                       ; $6160: $7F
    rst $38                                       ; $6161: $FF
    ld a, a                                       ; $6162: $7F
    rst $38                                       ; $6163: $FF
    ld a, a                                       ; $6164: $7F
    rst $38                                       ; $6165: $FF
    ld a, a                                       ; $6166: $7F
    rst $38                                       ; $6167: $FF
    ld a, a                                       ; $6168: $7F
    rst $38                                       ; $6169: $FF
    ld a, a                                       ; $616A: $7F
    rst $38                                       ; $616B: $FF
    ccf                                           ; $616C: $3F
    rst $38                                       ; $616D: $FF
    ld e, a                                       ; $616E: $5F
    rst $38                                       ; $616F: $FF
    db $FD                                        ; $6170: $FD
    cp $FD                                        ; $6171: $FE $FD
    cp $FD                                        ; $6173: $FE $FD
    cp $FE                                        ; $6175: $FE $FE
    rst $38                                       ; $6177: $FF

jr_060_6178:
    db $FD                                        ; $6178: $FD
    cp $FE                                        ; $6179: $FE $FE
    rst $38                                       ; $617B: $FF
    cp $FF                                        ; $617C: $FE $FF
    cp $FF                                        ; $617E: $FE $FF
    ccf                                           ; $6180: $3F
    ld a, $CF                                     ; $6181: $3E $CF
    call z, $D0D6                                 ; $6183: $CC $D6 $D0
    ret c                                         ; $6186: $D8

    ret nc                                        ; $6187: $D0

    db $EC                                        ; $6188: $EC
    ldh [$FC], a                                  ; $6189: $E0 $FC
    db $10                                        ; $618B: $10
    jr z, jr_060_61AE                             ; $618C: $28 $20

    add b                                         ; $618E: $80
    nop                                           ; $618F: $00
    rst $38                                       ; $6190: $FF
    rst $38                                       ; $6191: $FF
    jp $01FF                                      ; $6192: $C3 $FF $01


    rst $38                                       ; $6195: $FF
    nop                                           ; $6196: $00
    pop hl                                        ; $6197: $E1
    nop                                           ; $6198: $00
    ret nz                                        ; $6199: $C0

    nop                                           ; $619A: $00
    sbc [hl]                                      ; $619B: $9E
    ld e, $BF                                     ; $619C: $1E $BF
    ccf                                           ; $619E: $3F
    cp a                                          ; $619F: $BF
    ld h, b                                       ; $61A0: $60
    ld de, $0180                                  ; $61A1: $11 $80 $01
    ld [hl], b                                    ; $61A4: $70
    ld bc, $61D8                                  ; $61A5: $01 $D8 $61
    xor b                                         ; $61A8: $A8
    ld [hl], c                                    ; $61A9: $71
    cp b                                          ; $61AA: $B8
    ld b, c                                       ; $61AB: $41
    ldh a, [rP1]                                  ; $61AC: $F0 $00

jr_060_61AE:
    nop                                           ; $61AE: $00
    nop                                           ; $61AF: $00
    ldh [$F8], a                                  ; $61B0: $E0 $F8
    ret z                                         ; $61B2: $C8

    ldh a, [rNR10]                                ; $61B3: $F0 $10
    ld h, b                                       ; $61B5: $60
    jr nz, jr_060_6178                            ; $61B6: $20 $C0

    ld b, b                                       ; $61B8: $40
    add b                                         ; $61B9: $80
    add b                                         ; $61BA: $80
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    add sp, -$40                                  ; $61C0: $E8 $C0
    ld l, b                                       ; $61C2: $68
    ld b, b                                       ; $61C3: $40
    ld l, b                                       ; $61C4: $68
    ret nz                                        ; $61C5: $C0

    xor b                                         ; $61C6: $A8
    ret nz                                        ; $61C7: $C0

    or b                                          ; $61C8: $B0
    ret z                                         ; $61C9: $C8

    jr nc, jr_060_621C                            ; $61CA: $30 $50

    ld d, b                                       ; $61CC: $50
    ld hl, sp-$10                                 ; $61CD: $F8 $F0
    ld hl, sp-$50                                 ; $61CF: $F8 $B0
    ld [hl], c                                    ; $61D1: $71
    add sp, $71                                   ; $61D2: $E8 $71
    adc b                                         ; $61D4: $88
    ld [hl], c                                    ; $61D5: $71
    adc b                                         ; $61D6: $88
    ld [hl], c                                    ; $61D7: $71
    adc b                                         ; $61D8: $88
    ld [hl], c                                    ; $61D9: $71
    add b                                         ; $61DA: $80
    ld [hl], c                                    ; $61DB: $71
    or b                                          ; $61DC: $B0
    ld b, c                                       ; $61DD: $41
    ldh a, [rSB]                                  ; $61DE: $F0 $01
    ldh a, [$F8]                                  ; $61E0: $F0 $F8
    ld h, b                                       ; $61E2: $60
    ld [hl], b                                    ; $61E3: $70
    ld [hl], b                                    ; $61E4: $70
    ld hl, sp-$10                                 ; $61E5: $F8 $F0
    ld hl, sp-$20                                 ; $61E7: $F8 $E0
    ld hl, sp+$70                                 ; $61E9: $F8 $70
    ld [hl], b                                    ; $61EB: $70
    ld [hl], b                                    ; $61EC: $70
    ld hl, sp+$60                                 ; $61ED: $F8 $60
    ld hl, sp+$60                                 ; $61EF: $F8 $60
    inc de                                        ; $61F1: $13
    add b                                         ; $61F2: $80
    inc bc                                        ; $61F3: $03
    ld [hl], b                                    ; $61F4: $70
    ld bc, $61D8                                  ; $61F5: $01 $D8 $61
    xor b                                         ; $61F8: $A8
    ld [hl], c                                    ; $61F9: $71
    cp b                                          ; $61FA: $B8
    ld b, c                                       ; $61FB: $41
    ldh a, [rP1]                                  ; $61FC: $F0 $00
    nop                                           ; $61FE: $00

jr_060_61FF:
    nop                                           ; $61FF: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    ld b, l                                       ; $6202: $45
    nop                                           ; $6203: $00
    cp a                                          ; $6204: $BF
    nop                                           ; $6205: $00
    ld b, b                                       ; $6206: $40
    ccf                                           ; $6207: $3F
    ld d, a                                       ; $6208: $57
    ccf                                           ; $6209: $3F
    adc a                                         ; $620A: $8F
    ld a, a                                       ; $620B: $7F
    add a                                         ; $620C: $87
    ld a, a                                       ; $620D: $7F
    add c                                         ; $620E: $81
    ld a, a                                       ; $620F: $7F
    ret nz                                        ; $6210: $C0

    nop                                           ; $6211: $00
    ld a, [hl-]                                   ; $6212: $3A
    nop                                           ; $6213: $00
    rst $00                                       ; $6214: $C7
    jr c, jr_060_6247                             ; $6215: $38 $30

    rst $38                                       ; $6217: $FF
    rst $38                                       ; $6218: $FF
    rst $38                                       ; $6219: $FF
    db $FC                                        ; $621A: $FC
    rst $38                                       ; $621B: $FF

jr_060_621C:
    ret nz                                        ; $621C: $C0

    rst $38                                       ; $621D: $FF
    nop                                           ; $621E: $00
    rst $38                                       ; $621F: $FF
    ret nz                                        ; $6220: $C0

    nop                                           ; $6221: $00
    dec bc                                        ; $6222: $0B
    nop                                           ; $6223: $00
    sbc [hl]                                      ; $6224: $9E
    ld bc, $07D9                                  ; $6225: $01 $D9 $07
    ld d, a                                       ; $6228: $57
    adc a                                         ; $6229: $8F
    ld [hl-], a                                   ; $622A: $32
    rst $08                                       ; $622B: $CF
    jr nc, @-$2F                                  ; $622C: $30 $CF

Jump_060_622E:
    jr nc, jr_060_61FF                            ; $622E: $30 $CF

    rlca                                          ; $6230: $07
    nop                                           ; $6231: $00
    add sp, $00                                   ; $6232: $E8 $00
    ld e, $E0                                     ; $6234: $1E $E0
    di                                            ; $6236: $F3
    db $FC                                        ; $6237: $FC
    call $81FE                                    ; $6238: $CD $FE $81
    cp $01                                        ; $623B: $FE $01
    cp $01                                        ; $623D: $FE $01
    cp $4F                                        ; $623F: $FE $4F
    nop                                           ; $6241: $00
    inc [hl]                                      ; $6242: $34
    nop                                           ; $6243: $00
    ld a, a                                       ; $6244: $7F
    nop                                           ; $6245: $00

jr_060_6246:
    ld [hl], b                                    ; $6246: $70

jr_060_6247:
    rrca                                          ; $6247: $0F

jr_060_6248:
    ld b, a                                       ; $6248: $47
    ccf                                           ; $6249: $3F
    rra                                           ; $624A: $1F
    ld a, a                                       ; $624B: $7F
    cp h                                          ; $624C: $BC
    ld a, a                                       ; $624D: $7F
    rla                                           ; $624E: $17
    rst $38                                       ; $624F: $FF
    ld bc, $E800                                  ; $6250: $01 $00 $E8
    nop                                           ; $6253: $00
    ld e, $E0                                     ; $6254: $1E $E0
    jp $FDFC                                      ; $6256: $C3 $FC $FD


    cp $F1                                        ; $6259: $FE $F1
    cp $01                                        ; $625B: $FE $01
    cp $01                                        ; $625D: $FE $01
    cp $3F                                        ; $625F: $FE $3F
    rst $38                                       ; $6261: $FF
    ld a, a                                       ; $6262: $7F
    rst $38                                       ; $6263: $FF
    cp a                                          ; $6264: $BF
    ld a, a                                       ; $6265: $7F
    ccf                                           ; $6266: $3F
    ld a, a                                       ; $6267: $7F
    ccf                                           ; $6268: $3F
    ld a, a                                       ; $6269: $7F
    ccf                                           ; $626A: $3F
    ld a, a                                       ; $626B: $7F
    ccf                                           ; $626C: $3F
    ld a, a                                       ; $626D: $7F
    ccf                                           ; $626E: $3F
    ld a, a                                       ; $626F: $7F
    cp $FF                                        ; $6270: $FE $FF
    cp $FF                                        ; $6272: $FE $FF
    cp $FF                                        ; $6274: $FE $FF
    cp $FF                                        ; $6276: $FE $FF
    cp $FF                                        ; $6278: $FE $FF
    cp $FF                                        ; $627A: $FE $FF
    cp $FF                                        ; $627C: $FE $FF
    cp $FF                                        ; $627E: $FE $FF
    ret z                                         ; $6280: $C8

    add b                                         ; $6281: $80
    ld h, b                                       ; $6282: $60
    ret nz                                        ; $6283: $C0

    jr nz, jr_060_6246                            ; $6284: $20 $C0

    jr nz, jr_060_6248                            ; $6286: $20 $C0

    ld b, b                                       ; $6288: $40
    add b                                         ; $6289: $80
    nop                                           ; $628A: $00
    nop                                           ; $628B: $00
    add b                                         ; $628C: $80
    nop                                           ; $628D: $00
    jr nz, jr_060_6290                            ; $628E: $20 $00

jr_060_6290:
    ld e, $DE                                     ; $6290: $1E $DE
    nop                                           ; $6292: $00
    pop hl                                        ; $6293: $E1
    nop                                           ; $6294: $00
    rst $38                                       ; $6295: $FF
    pop hl                                        ; $6296: $E1
    rst $38                                       ; $6297: $FF
    rst $38                                       ; $6298: $FF
    rst $38                                       ; $6299: $FF
    ld a, a                                       ; $629A: $7F
    rst $38                                       ; $629B: $FF
    ld a, [hl]                                    ; $629C: $7E
    rst $38                                       ; $629D: $FF
    db $FC                                        ; $629E: $FC
    rst $38                                       ; $629F: $FF
    inc b                                         ; $62A0: $04
    ld a, b                                       ; $62A1: $78
    ld [bc], a                                    ; $62A2: $02
    db $10                                        ; $62A3: $10
    ld bc, $0306                                  ; $62A4: $01 $06 $03
    ld c, $07                                     ; $62A7: $0E $07
    ld c, $0F                                     ; $62A9: $0E $0F
    ld c, $0F                                     ; $62AB: $0E $0F
    ld c, $0F                                     ; $62AD: $0E $0F
    ld c, $0F                                     ; $62AF: $0E $0F
    ld c, $0F                                     ; $62B1: $0E $0F
    ld c, $0F                                     ; $62B3: $0E $0F
    ld c, $0F                                     ; $62B5: $0E $0F
    inc b                                         ; $62B7: $04
    rrca                                          ; $62B8: $0F
    nop                                           ; $62B9: $00
    ld b, $00                                     ; $62BA: $06 $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    ld b, $08                                     ; $62BE: $06 $08
    dec c                                         ; $62C0: $0D
    ld c, $17                                     ; $62C1: $0E $17
    ld c, $11                                     ; $62C3: $0E $11
    ld c, $11                                     ; $62C5: $0E $11
    ld c, $11                                     ; $62C7: $0E $11
    ld c, $09                                     ; $62C9: $0E $09
    ld b, $0D                                     ; $62CB: $06 $0D
    ld [bc], a                                    ; $62CD: $02
    rrca                                          ; $62CE: $0F
    nop                                           ; $62CF: $00
    ld b, $08                                     ; $62D0: $06 $08
    ld bc, $0F00                                  ; $62D2: $01 $00 $0F
    nop                                           ; $62D5: $00
    dec de                                        ; $62D6: $1B
    ld b, $15                                     ; $62D7: $06 $15
    ld c, $1D                                     ; $62D9: $0E $1D
    ld [bc], a                                    ; $62DB: $02
    rrca                                          ; $62DC: $0F
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    inc bc                                        ; $62E0: $03
    db $FC                                        ; $62E1: $FC
    rlca                                          ; $62E2: $07
    ld hl, sp+$0F                                 ; $62E3: $F8 $0F
    db $10                                        ; $62E5: $10
    inc b                                         ; $62E6: $04
    dec bc                                        ; $62E7: $0B
    nop                                           ; $62E8: $00
    rlca                                          ; $62E9: $07
    ld bc, $01E3                                  ; $62EA: $01 $E3 $01
    di                                            ; $62ED: $F3
    ldh [rNR30], a                                ; $62EE: $E0 $1A
    ldh a, [$FB]                                  ; $62F0: $F0 $FB
    ld a, [c]                                     ; $62F2: $F2
    rst $30                                       ; $62F3: $F7
    rst $20                                       ; $62F4: $E7
    rst $28                                       ; $62F5: $EF
    inc bc                                        ; $62F6: $03
    rra                                           ; $62F7: $1F
    nop                                           ; $62F8: $00
    rst $38                                       ; $62F9: $FF
    nop                                           ; $62FA: $00
    rst $38                                       ; $62FB: $FF
    nop                                           ; $62FC: $00
    ccf                                           ; $62FD: $3F
    nop                                           ; $62FE: $00
    rra                                           ; $62FF: $1F
    rst $38                                       ; $6300: $FF
    ld a, a                                       ; $6301: $7F
    rst $38                                       ; $6302: $FF
    ld a, a                                       ; $6303: $7F
    rst $38                                       ; $6304: $FF
    ccf                                           ; $6305: $3F
    rst $38                                       ; $6306: $FF
    ld e, a                                       ; $6307: $5F
    rst $38                                       ; $6308: $FF
    cpl                                           ; $6309: $2F
    rst $38                                       ; $630A: $FF
    nop                                           ; $630B: $00
    and b                                         ; $630C: $A0
    nop                                           ; $630D: $00
    rrca                                          ; $630E: $0F
    nop                                           ; $630F: $00
    rst $38                                       ; $6310: $FF
    rst $38                                       ; $6311: $FF
    rst $38                                       ; $6312: $FF
    rst $38                                       ; $6313: $FF
    rst $38                                       ; $6314: $FF
    rst $38                                       ; $6315: $FF
    rst $38                                       ; $6316: $FF
    xor $FF                                       ; $6317: $EE $FF
    nop                                           ; $6319: $00
    jr c, jr_060_631C                             ; $631A: $38 $00

jr_060_631C:
    rlca                                          ; $631C: $07
    nop                                           ; $631D: $00
    rst $08                                       ; $631E: $CF
    rlca                                          ; $631F: $07
    rst $38                                       ; $6320: $FF
    rst $08                                       ; $6321: $CF
    rst $18                                       ; $6322: $DF
    adc a                                         ; $6323: $8F
    rst $18                                       ; $6324: $DF
    add l                                         ; $6325: $85
    rst $08                                       ; $6326: $CF
    nop                                           ; $6327: $00
    add a                                         ; $6328: $87
    nop                                           ; $6329: $00
    ld h, c                                       ; $632A: $61
    nop                                           ; $632B: $00
    jr jr_060_632E                                ; $632C: $18 $00

jr_060_632E:
    cp $00                                        ; $632E: $FE $00
    rst $38                                       ; $6330: $FF
    cp $FF                                        ; $6331: $FE $FF
    db $FC                                        ; $6333: $FC
    rst $38                                       ; $6334: $FF
    ld [hl], b                                    ; $6335: $70
    cp $04                                        ; $6336: $FE $04
    db $FC                                        ; $6338: $FC
    jr @-$7E                                      ; $6339: $18 $80

    nop                                           ; $633B: $00
    ld a, [hl]                                    ; $633C: $7E
    nop                                           ; $633D: $00
    cp l                                          ; $633E: $BD
    ld a, [hl]                                    ; $633F: $7E
    rst $38                                       ; $6340: $FF
    rst $38                                       ; $6341: $FF
    rst $38                                       ; $6342: $FF
    ld a, a                                       ; $6343: $7F
    rst $38                                       ; $6344: $FF
    ld a, a                                       ; $6345: $7F
    rst $38                                       ; $6346: $FF
    ccf                                           ; $6347: $3F
    rst $38                                       ; $6348: $FF
    ld c, a                                       ; $6349: $4F
    rst $38                                       ; $634A: $FF
    db $10                                        ; $634B: $10
    ld a, b                                       ; $634C: $78
    nop                                           ; $634D: $00
    rlca                                          ; $634E: $07
    inc bc                                        ; $634F: $03
    rst $38                                       ; $6350: $FF
    cp $FF                                        ; $6351: $FE $FF
    cp $FF                                        ; $6353: $FE $FF
    cp $FF                                        ; $6355: $FE $FF
    cp b                                          ; $6357: $B8
    rst $38                                       ; $6358: $FF
    nop                                           ; $6359: $00
    pop hl                                        ; $635A: $E1
    nop                                           ; $635B: $00
    jr jr_060_635E                                ; $635C: $18 $00

jr_060_635E:
    cp $00                                        ; $635E: $FE $00
    ccf                                           ; $6360: $3F
    ld a, a                                       ; $6361: $7F
    cp a                                          ; $6362: $BF
    ld a, a                                       ; $6363: $7F

jr_060_6364:
    ld a, a                                       ; $6364: $7F
    rst $38                                       ; $6365: $FF
    ld a, a                                       ; $6366: $7F
    rst $38                                       ; $6367: $FF
    cpl                                           ; $6368: $2F
    rst $38                                       ; $6369: $FF
    sub a                                         ; $636A: $97
    ld a, a                                       ; $636B: $7F
    ld [$5477], sp                                ; $636C: $08 $77 $54
    dec hl                                        ; $636F: $2B
    cp $FF                                        ; $6370: $FE $FF
    cp $FF                                        ; $6372: $FE $FF
    cp $FF                                        ; $6374: $FE $FF
    cp $FF                                        ; $6376: $FE $FF
    db $FC                                        ; $6378: $FC
    rst $38                                       ; $6379: $FF
    pop hl                                        ; $637A: $E1
    cp $03                                        ; $637B: $FE $03
    db $FC                                        ; $637D: $FC
    ld d, e                                       ; $637E: $53
    xor h                                         ; $637F: $AC
    ld [hl], b                                    ; $6380: $70
    nop                                           ; $6381: $00
    jr jr_060_6364                                ; $6382: $18 $E0

    ld [$98F0], sp                                ; $6384: $08 $F0 $98
    ld h, b                                       ; $6387: $60
    ld hl, sp+$01                                 ; $6388: $F8 $01
    inc [hl]                                      ; $638A: $34
    nop                                           ; $638B: $00
    ld [bc], a                                    ; $638C: $02
    ld h, b                                       ; $638D: $60
    inc b                                         ; $638E: $04
    di                                            ; $638F: $F3
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    inc e                                         ; $6396: $1C
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    ld h, b                                       ; $6399: $60
    ld a, b                                       ; $639A: $78
    add b                                         ; $639B: $80
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    inc b                                         ; $639E: $04
    sub b                                         ; $639F: $90
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    nop                                           ; $63A4: $00
    nop                                           ; $63A5: $00
    nop                                           ; $63A6: $00
    nop                                           ; $63A7: $00
    nop                                           ; $63A8: $00
    nop                                           ; $63A9: $00
    nop                                           ; $63AA: $00
    nop                                           ; $63AB: $00
    rst $38                                       ; $63AC: $FF
    nop                                           ; $63AD: $00
    rlca                                          ; $63AE: $07
    inc b                                         ; $63AF: $04
    nop                                           ; $63B0: $00
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    nop                                           ; $63B3: $00
    nop                                           ; $63B4: $00
    nop                                           ; $63B5: $00
    nop                                           ; $63B6: $00
    nop                                           ; $63B7: $00
    nop                                           ; $63B8: $00
    nop                                           ; $63B9: $00
    nop                                           ; $63BA: $00
    nop                                           ; $63BB: $00
    nop                                           ; $63BC: $00
    nop                                           ; $63BD: $00
    db $E3                                        ; $63BE: $E3
    nop                                           ; $63BF: $00
    nop                                           ; $63C0: $00
    nop                                           ; $63C1: $00
    nop                                           ; $63C2: $00
    nop                                           ; $63C3: $00
    nop                                           ; $63C4: $00
    nop                                           ; $63C5: $00
    nop                                           ; $63C6: $00
    nop                                           ; $63C7: $00
    nop                                           ; $63C8: $00
    nop                                           ; $63C9: $00
    nop                                           ; $63CA: $00
    nop                                           ; $63CB: $00
    nop                                           ; $63CC: $00
    nop                                           ; $63CD: $00
    ret nz                                        ; $63CE: $C0

    ret nz                                        ; $63CF: $C0

    inc bc                                        ; $63D0: $03
    db $FC                                        ; $63D1: $FC
    rlca                                          ; $63D2: $07
    ld hl, sp+$0F                                 ; $63D3: $F8 $0F
    db $10                                        ; $63D5: $10
    inc b                                         ; $63D6: $04
    dec bc                                        ; $63D7: $0B
    nop                                           ; $63D8: $00
    rst $20                                       ; $63D9: $E7
    pop hl                                        ; $63DA: $E1
    di                                            ; $63DB: $F3
    pop af                                        ; $63DC: $F1
    ei                                            ; $63DD: $FB
    ld hl, sp-$06                                 ; $63DE: $F8 $FA
    rst $38                                       ; $63E0: $FF
    nop                                           ; $63E1: $00
    jp $013C                                      ; $63E2: $C3 $3C $01


    cp $00                                        ; $63E5: $FE $00
    pop hl                                        ; $63E7: $E1
    nop                                           ; $63E8: $00
    sbc $1E                                       ; $63E9: $DE $1E
    cp a                                          ; $63EB: $BF
    ccf                                           ; $63EC: $3F
    cp a                                          ; $63ED: $BF
    ccf                                           ; $63EE: $3F
    cp a                                          ; $63EF: $BF
    ld l, b                                       ; $63F0: $68
    and b                                         ; $63F1: $A0
    inc h                                         ; $63F2: $24
    ret nc                                        ; $63F3: $D0

    or h                                          ; $63F4: $B4
    ret nc                                        ; $63F5: $D0

    sub d                                         ; $63F6: $92
    add sp, $1A                                   ; $63F7: $E8 $1A
    add sp, $1A                                   ; $63F9: $E8 $1A
    ld l, b                                       ; $63FB: $68
    ld a, [de]                                    ; $63FC: $1A
    ld l, b                                       ; $63FD: $68
    ld a, [de]                                    ; $63FE: $1A
    ld l, b                                       ; $63FF: $68
    inc sp                                        ; $6400: $33
    rrca                                          ; $6401: $0F
    ld e, [hl]                                    ; $6402: $5E
    ccf                                           ; $6403: $3F
    ld b, b                                       ; $6404: $40
    ccf                                           ; $6405: $3F
    ld b, b                                       ; $6406: $40
    ccf                                           ; $6407: $3F
    or h                                          ; $6408: $B4
    dec bc                                        ; $6409: $0B
    ld c, a                                       ; $640A: $4F
    nop                                           ; $640B: $00
    nop                                           ; $640C: $00
    nop                                           ; $640D: $00
    ld d, a                                       ; $640E: $57
    nop                                           ; $640F: $00
    sbc a                                         ; $6410: $9F
    rst $08                                       ; $6411: $CF
    ld e, h                                       ; $6412: $5C
    rst $08                                       ; $6413: $CF
    db $10                                        ; $6414: $10
    rst $08                                       ; $6415: $CF
    db $10                                        ; $6416: $10
    rst $08                                       ; $6417: $CF
    ret nc                                        ; $6418: $D0

    rrca                                          ; $6419: $0F
    sbc h                                         ; $641A: $9C
    inc bc                                        ; $641B: $03
    ld c, $01                                     ; $641C: $0E $01
    ld b, e                                       ; $641E: $43
    nop                                           ; $641F: $00
    ld a, [$E6FC]                                 ; $6420: $FA $FC $E6
    ld hl, sp+$04                                 ; $6423: $F8 $04
    ld hl, sp+$04                                 ; $6425: $F8 $04
    ld hl, sp+$04                                 ; $6427: $F8 $04
    ld hl, sp+$0C                                 ; $6429: $F8 $0C
    ldh a, [$38]                                  ; $642B: $F0 $38
    ret nz                                        ; $642D: $C0

    ld [hl], c                                    ; $642E: $71
    add b                                         ; $642F: $80
    ld a, [hl]                                    ; $6430: $7E
    rst $38                                       ; $6431: $FF
    ld hl, $00FF                                  ; $6432: $21 $FF $00
    rst $38                                       ; $6435: $FF
    nop                                           ; $6436: $00
    rst $38                                       ; $6437: $FF
    sub l                                         ; $6438: $95
    ld l, d                                       ; $6439: $6A
    db $EB                                        ; $643A: $EB
    inc d                                         ; $643B: $14
    ld a, [hl]                                    ; $643C: $7E
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    cp e                                          ; $6440: $BB
    rlca                                          ; $6441: $07
    rst $10                                       ; $6442: $D7
    rrca                                          ; $6443: $0F
    ld e, b                                       ; $6444: $58
    adc a                                         ; $6445: $8F
    ld d, b                                       ; $6446: $50
    adc a                                         ; $6447: $8F
    ld d, b                                       ; $6448: $50
    adc a                                         ; $6449: $8F
    ld d, b                                       ; $644A: $50
    adc a                                         ; $644B: $8F
    ret c                                         ; $644C: $D8

    rlca                                          ; $644D: $07
    adc a                                         ; $644E: $8F

jr_060_644F:
    nop                                           ; $644F: $00
    ld a, [$E6FC]                                 ; $6450: $FA $FC $E6
    ld hl, sp+$04                                 ; $6453: $F8 $04
    ld hl, sp+$04                                 ; $6455: $F8 $04
    ld hl, sp+$04                                 ; $6457: $F8 $04
    ld hl, sp+$0C                                 ; $6459: $F8 $0C
    ldh a, [$38]                                  ; $645B: $F0 $38
    ret nz                                        ; $645D: $C0

    ld a, c                                       ; $645E: $79
    add b                                         ; $645F: $80
    pop bc                                        ; $6460: $C1
    xor $E3                                       ; $6461: $EE $E3
    db $EC                                        ; $6463: $EC
    rst $20                                       ; $6464: $E7
    add sp, -$40                                  ; $6465: $E8 $C0
    rst $18                                       ; $6467: $DF
    nop                                           ; $6468: $00
    ccf                                           ; $6469: $3F
    inc bc                                        ; $646A: $03
    db $FC                                        ; $646B: $FC
    db $FC                                        ; $646C: $FC
    nop                                           ; $646D: $00
    nop                                           ; $646E: $00
    nop                                           ; $646F: $00
    ld sp, hl                                     ; $6470: $F9
    rst $38                                       ; $6471: $FF
    ld [c], a                                     ; $6472: $E2
    cp $05                                        ; $6473: $FE $05
    db $FC                                        ; $6475: $FC
    dec de                                        ; $6476: $1B
    ld hl, sp+$67                                 ; $6477: $F8 $67
    ldh [$9E], a                                  ; $6479: $E0 $9E
    add b                                         ; $647B: $80
    ld a, h                                       ; $647C: $7C
    nop                                           ; $647D: $00
    ldh a, [rP1]                                  ; $647E: $F0 $00
    ld [hl], b                                    ; $6480: $70
    nop                                           ; $6481: $00
    ldh [rP1], a                                  ; $6482: $E0 $00
    ret nz                                        ; $6484: $C0

    nop                                           ; $6485: $00
    add b                                         ; $6486: $80

jr_060_6487:
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    jr nz, jr_060_648C                            ; $648A: $20 $00

jr_060_648C:
    ld [hl], b                                    ; $648C: $70
    jr nz, jr_060_6487                            ; $648D: $20 $F8

    ld [hl], b                                    ; $648F: $70
    nop                                           ; $6490: $00
    ld hl, sp+$00                                 ; $6491: $F8 $00
    ccf                                           ; $6493: $3F
    rlca                                          ; $6494: $07
    rra                                           ; $6495: $1F
    inc bc                                        ; $6496: $03
    rst $08                                       ; $6497: $CF
    pop bc                                        ; $6498: $C1
    rst $28                                       ; $6499: $EF
    ldh [$EF], a                                  ; $649A: $E0 $EF
    pop bc                                        ; $649C: $C1
    rst $18                                       ; $649D: $DF
    ld bc, $003F                                  ; $649E: $01 $3F $00

jr_060_64A1:
    ld hl, sp+$00                                 ; $64A1: $F8 $00
    ccf                                           ; $64A3: $3F
    rlca                                          ; $64A4: $07
    ret c                                         ; $64A5: $D8

    jp $E1EC                                      ; $64A6: $C3 $EC $E1


    xor $E0                                       ; $64A9: $EE $E0
    rst $28                                       ; $64AB: $EF
    pop bc                                        ; $64AC: $C1
    sbc $01                                       ; $64AD: $DE $01
    ld a, $18                                     ; $64AF: $3E $18
    ld h, b                                       ; $64B1: $60
    add [hl]                                      ; $64B2: $86
    jr jr_060_64D8                                ; $64B3: $18 $23

    call nz, $F2E9                                ; $64B5: $C4 $E9 $F2
    db $F4                                        ; $64B8: $F4
    ld sp, hl                                     ; $64B9: $F9
    ld a, [$FDFC]                                 ; $64BA: $FA $FC $FD
    cp $FE                                        ; $64BD: $FE $FE
    rst $38                                       ; $64BF: $FF
    ldh [$60], a                                  ; $64C0: $E0 $60
    ld [hl], b                                    ; $64C2: $70
    jr nc, jr_060_64FD                            ; $64C3: $30 $38

    jr jr_060_644F                                ; $64C5: $18 $88

    inc e                                         ; $64C7: $1C
    call nz, $E408                                ; $64C8: $C4 $08 $E4
    add b                                         ; $64CB: $80
    ld d, b                                       ; $64CC: $50
    ld b, b                                       ; $64CD: $40
    xor b                                         ; $64CE: $A8
    jr nz, @-$06                                  ; $64CF: $20 $F8

    ei                                            ; $64D1: $FB
    ld a, [c]                                     ; $64D2: $F2
    push af                                       ; $64D3: $F5
    rst $20                                       ; $64D4: $E7
    add sp, $03                                   ; $64D5: $E8 $03
    inc e                                         ; $64D7: $1C

jr_060_64D8:
    nop                                           ; $64D8: $00
    rst $38                                       ; $64D9: $FF
    nop                                           ; $64DA: $00
    rst $38                                       ; $64DB: $FF
    nop                                           ; $64DC: $00
    ccf                                           ; $64DD: $3F
    nop                                           ; $64DE: $00
    rst $18                                       ; $64DF: $DF
    ld e, $DE                                     ; $64E0: $1E $DE
    nop                                           ; $64E2: $00
    pop hl                                        ; $64E3: $E1
    nop                                           ; $64E4: $00
    rst $38                                       ; $64E5: $FF
    pop hl                                        ; $64E6: $E1
    ld e, $FF                                     ; $64E7: $1E $FF
    nop                                           ; $64E9: $00
    ld a, a                                       ; $64EA: $7F
    add b                                         ; $64EB: $80
    ld a, [hl]                                    ; $64EC: $7E
    add c                                         ; $64ED: $81
    db $FC                                        ; $64EE: $FC
    inc bc                                        ; $64EF: $03
    ld a, [de]                                    ; $64F0: $1A
    add sp, $1A                                   ; $64F1: $E8 $1A
    add sp, -$6A                                  ; $64F3: $E8 $96
    ldh a, [$96]                                  ; $64F5: $F0 $96
    ldh a, [$2C]                                  ; $64F7: $F0 $2C
    ldh [$2C], a                                  ; $64F9: $E0 $2C
    ldh [$58], a                                  ; $64FB: $E0 $58

jr_060_64FD:
    ret nz                                        ; $64FD: $C0

    cp b                                          ; $64FE: $B8
    add b                                         ; $64FF: $80
    cp a                                          ; $6500: $BF
    nop                                           ; $6501: $00
    add b                                         ; $6502: $80
    ld a, a                                       ; $6503: $7F
    nop                                           ; $6504: $00
    rst $38                                       ; $6505: $FF
    ld l, d                                       ; $6506: $6A
    sub l                                         ; $6507: $95
    rst $10                                       ; $6508: $D7
    jr z, @+$01                                   ; $6509: $28 $FF

    nop                                           ; $650B: $00
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    nop                                           ; $650E: $00
    nop                                           ; $650F: $00
    ld sp, hl                                     ; $6510: $F9
    nop                                           ; $6511: $00
    inc e                                         ; $6512: $1C
    ldh [$08], a                                  ; $6513: $E0 $08
    ldh a, [$99]                                  ; $6515: $F0 $99
    ld h, b                                       ; $6517: $60
    db $EB                                        ; $6518: $EB
    nop                                           ; $6519: $00
    push de                                       ; $651A: $D5
    nop                                           ; $651B: $00
    ld [bc], a                                    ; $651C: $02
    nop                                           ; $651D: $00
    add b                                         ; $651E: $80
    jr nz, jr_060_64A1                            ; $651F: $20 $80

    nop                                           ; $6521: $00
    cpl                                           ; $6522: $2F
    nop                                           ; $6523: $00
    ldh a, [rIF]                                  ; $6524: $F0 $0F
    add b                                         ; $6526: $80
    ld a, a                                       ; $6527: $7F
    ret nz                                        ; $6528: $C0

    ccf                                           ; $6529: $3F
    ld a, a                                       ; $652A: $7F
    nop                                           ; $652B: $00
    ccf                                           ; $652C: $3F
    nop                                           ; $652D: $00
    nop                                           ; $652E: $00
    nop                                           ; $652F: $00
    inc e                                         ; $6530: $1C
    nop                                           ; $6531: $00
    db $E3                                        ; $6532: $E3
    nop                                           ; $6533: $00
    ld d, $E1                                     ; $6534: $16 $E1
    inc [hl]                                      ; $6536: $34
    jp $00EB                                      ; $6537: $C3 $EB $00


    pop hl                                        ; $653A: $E1
    nop                                           ; $653B: $00
    adc $00                                       ; $653C: $CE $00
    nop                                           ; $653E: $00
    nop                                           ; $653F: $00
    ld h, e                                       ; $6540: $63
    nop                                           ; $6541: $00
    ld sp, hl                                     ; $6542: $F9
    nop                                           ; $6543: $00
    inc c                                         ; $6544: $0C
    ldh a, [rDIV]                                 ; $6545: $F0 $04
    ld hl, sp-$03                                 ; $6547: $F8 $FD
    nop                                           ; $6549: $00
    di                                            ; $654A: $F3
    nop                                           ; $654B: $00
    rrca                                          ; $654C: $0F
    nop                                           ; $654D: $00
    nop                                           ; $654E: $00
    dec c                                         ; $654F: $0D
    ldh a, [rP1]                                  ; $6550: $F0 $00
    ld bc, $5100                                  ; $6552: $01 $00 $51
    nop                                           ; $6555: $00
    ld l, c                                       ; $6556: $69
    nop                                           ; $6557: $00
    ld a, l                                       ; $6558: $7D

jr_060_6559:
    nop                                           ; $6559: $00
    inc a                                         ; $655A: $3C
    nop                                           ; $655B: $00
    sbc [hl]                                      ; $655C: $9E
    nop                                           ; $655D: $00
    nop                                           ; $655E: $00
    nop                                           ; $655F: $00
    rst $38                                       ; $6560: $FF
    nop                                           ; $6561: $00
    rst $38                                       ; $6562: $FF
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656A: $00
    nop                                           ; $656B: $00
    nop                                           ; $656C: $00
    nop                                           ; $656D: $00
    nop                                           ; $656E: $00
    nop                                           ; $656F: $00
    pop bc                                        ; $6570: $C1
    nop                                           ; $6571: $00
    inc bc                                        ; $6572: $03
    nop                                           ; $6573: $00
    ld [bc], a                                    ; $6574: $02
    ld bc, $0001                                  ; $6575: $01 $01 $00
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    nop                                           ; $657B: $00
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    db $F4                                        ; $6580: $F4
    ld hl, sp-$1E                                 ; $6581: $F8 $E2
    db $FC                                        ; $6583: $FC
    ret z                                         ; $6584: $C8

    ld [hl], b                                    ; $6585: $70
    ld l, h                                       ; $6586: $6C
    sub b                                         ; $6587: $90
    sub b                                         ; $6588: $90
    ld h, b                                       ; $6589: $60
    ld c, b                                       ; $658A: $48
    nop                                           ; $658B: $00
    jr nz, jr_060_658E                            ; $658C: $20 $00

jr_060_658E:
    stop                                          ; $658E: $10 $00
    inc bc                                        ; $6590: $03
    nop                                           ; $6591: $00
    ld [bc], a                                    ; $6592: $02
    inc c                                         ; $6593: $0C
    nop                                           ; $6594: $00
    db $10                                        ; $6595: $10
    ld c, $0C                                     ; $6596: $0E $0C
    ld bc, $101E                                  ; $6598: $01 $1E $10
    rrca                                          ; $659B: $0F
    cpl                                           ; $659C: $2F
    nop                                           ; $659D: $00
    ld [hl], b                                    ; $659E: $70
    nop                                           ; $659F: $00
    nop                                           ; $65A0: $00
    ld bc, $6350                                  ; $65A1: $01 $50 $63
    xor d                                         ; $65A4: $AA
    ld e, c                                       ; $65A5: $59
    db $DB                                        ; $65A6: $DB
    jr nz, jr_060_661A                            ; $65A7: $20 $71

    nop                                           ; $65A9: $00
    adc d                                         ; $65AA: $8A
    nop                                           ; $65AB: $00
    ld sp, $2037                                  ; $65AC: $31 $37 $20
    ld e, e                                       ; $65AF: $5B
    inc bc                                        ; $65B0: $03
    nop                                           ; $65B1: $00
    ld [bc], a                                    ; $65B2: $02
    inc c                                         ; $65B3: $0C
    nop                                           ; $65B4: $00
    db $10                                        ; $65B5: $10
    ld c, $0C                                     ; $65B6: $0E $0C
    ld bc, $101E                                  ; $65B8: $01 $1E $10
    rrca                                          ; $65BB: $0F
    cpl                                           ; $65BC: $2F
    nop                                           ; $65BD: $00
    ld [hl], b                                    ; $65BE: $70
    nop                                           ; $65BF: $00
    rl h                                          ; $65C0: $CB $14
    cp [hl]                                       ; $65C2: $BE
    nop                                           ; $65C3: $00
    ld b, b                                       ; $65C4: $40
    nop                                           ; $65C5: $00
    ld l, h                                       ; $65C6: $6C
    inc c                                         ; $65C7: $0C
    nop                                           ; $65C8: $00
    sbc [hl]                                      ; $65C9: $9E
    sub b                                         ; $65CA: $90
    ld c, [hl]                                    ; $65CB: $4E
    inc c                                         ; $65CC: $0C
    nop                                           ; $65CD: $00
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    ld d, e                                       ; $65D0: $53
    jr z, jr_060_6610                             ; $65D1: $28 $3D

    nop                                           ; $65D3: $00
    ld [bc], a                                    ; $65D4: $02
    nop                                           ; $65D5: $00
    halt                                          ; $65D6: $76
    jr nc, jr_060_6559                            ; $65D7: $30 $80

    ld a, c                                       ; $65D9: $79
    add hl, bc                                    ; $65DA: $09
    ld a, [c]                                     ; $65DB: $F2
    db $F4                                        ; $65DC: $F4
    nop                                           ; $65DD: $00
    ld h, b                                       ; $65DE: $60
    nop                                           ; $65DF: $00
    db $D3                                        ; $65E0: $D3
    jr z, jr_060_6660                             ; $65E1: $28 $7D

    nop                                           ; $65E3: $00
    ld [bc], a                                    ; $65E4: $02
    nop                                           ; $65E5: $00
    halt                                          ; $65E6: $76
    jr nc, jr_060_65E9                            ; $65E7: $30 $00

jr_060_65E9:
    ld a, c                                       ; $65E9: $79
    add hl, bc                                    ; $65EA: $09
    ld a, [c]                                     ; $65EB: $F2
    ld [hl], a                                    ; $65EC: $77
    nop                                           ; $65ED: $00
    ld [bc], a                                    ; $65EE: $02
    nop                                           ; $65EF: $00
    rl h                                          ; $65F0: $CB $14
    cp [hl]                                       ; $65F2: $BE
    nop                                           ; $65F3: $00
    ld b, b                                       ; $65F4: $40
    nop                                           ; $65F5: $00
    ld l, h                                       ; $65F6: $6C
    inc c                                         ; $65F7: $0C
    nop                                           ; $65F8: $00
    sbc [hl]                                      ; $65F9: $9E
    sub b                                         ; $65FA: $90
    ld c, [hl]                                    ; $65FB: $4E
    inc c                                         ; $65FC: $0C
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    ld b, e                                       ; $6600: $43
    inc a                                         ; $6601: $3C
    cp b                                          ; $6602: $B8
    ld a, a                                       ; $6603: $7F
    ld e, a                                       ; $6604: $5F
    rst $38                                       ; $6605: $FF
    ccf                                           ; $6606: $3F
    rst $38                                       ; $6607: $FF
    ld a, a                                       ; $6608: $7F
    rst $38                                       ; $6609: $FF
    ld a, a                                       ; $660A: $7F
    rst $38                                       ; $660B: $FF
    ld a, a                                       ; $660C: $7F
    rst $38                                       ; $660D: $FF
    ld a, a                                       ; $660E: $7F
    rst $38                                       ; $660F: $FF

jr_060_6610:
    add sp, $17                                   ; $6610: $E8 $17
    rla                                           ; $6612: $17
    rst $38                                       ; $6613: $FF
    rst $38                                       ; $6614: $FF
    rst $38                                       ; $6615: $FF
    rst $38                                       ; $6616: $FF
    rst $38                                       ; $6617: $FF
    rst $38                                       ; $6618: $FF
    rst $38                                       ; $6619: $FF

jr_060_661A:
    rst $38                                       ; $661A: $FF
    rst $38                                       ; $661B: $FF
    rst $38                                       ; $661C: $FF
    rst $38                                       ; $661D: $FF
    rst $38                                       ; $661E: $FF
    rst $38                                       ; $661F: $FF
    nop                                           ; $6620: $00
    rst $38                                       ; $6621: $FF
    rst $38                                       ; $6622: $FF
    rst $38                                       ; $6623: $FF
    rst $38                                       ; $6624: $FF
    rst $38                                       ; $6625: $FF
    rst $38                                       ; $6626: $FF
    rst $38                                       ; $6627: $FF
    rst $38                                       ; $6628: $FF
    rst $38                                       ; $6629: $FF
    rst $38                                       ; $662A: $FF
    rst $38                                       ; $662B: $FF
    rst $38                                       ; $662C: $FF
    rst $38                                       ; $662D: $FF
    rst $38                                       ; $662E: $FF
    rst $38                                       ; $662F: $FF
    rlca                                          ; $6630: $07
    ld hl, sp-$15                                 ; $6631: $F8 $EB
    db $FC                                        ; $6633: $FC
    db $FC                                        ; $6634: $FC
    rst $38                                       ; $6635: $FF
    db $FC                                        ; $6636: $FC
    rst $38                                       ; $6637: $FF
    rst $38                                       ; $6638: $FF
    cp $FE                                        ; $6639: $FE $FE
    rst $38                                       ; $663B: $FF
    rst $38                                       ; $663C: $FF
    cp $FE                                        ; $663D: $FE $FE
    rst $38                                       ; $663F: $FF
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    jr jr_060_6644                                ; $6642: $18 $00

jr_060_6644:
    sbc e                                         ; $6644: $9B
    add hl, de                                    ; $6645: $19
    ld de, $8D8C                                  ; $6646: $11 $8C $8D

jr_060_6649:
    ret nz                                        ; $6649: $C0

    add b                                         ; $664A: $80
    ret nz                                        ; $664B: $C0

    ld b, d                                       ; $664C: $42
    add b                                         ; $664D: $80
    nop                                           ; $664E: $00
    nop                                           ; $664F: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    add b                                         ; $6654: $80
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    add b                                         ; $6657: $80
    add b                                         ; $6658: $80
    ret nz                                        ; $6659: $C0

    add b                                         ; $665A: $80
    ret nz                                        ; $665B: $C0

    ld b, b                                       ; $665C: $40
    add b                                         ; $665D: $80
    nop                                           ; $665E: $00
    nop                                           ; $665F: $00

jr_060_6660:
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    add b                                         ; $6664: $80
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    add b                                         ; $6667: $80
    ret nz                                        ; $6668: $C0

    add b                                         ; $6669: $80
    add b                                         ; $666A: $80
    ret nz                                        ; $666B: $C0

    ld b, b                                       ; $666C: $40
    add b                                         ; $666D: $80
    nop                                           ; $666E: $00
    nop                                           ; $666F: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    jr jr_060_6674                                ; $6672: $18 $00

jr_060_6674:
    reti                                          ; $6674: $D9


    sbc b                                         ; $6675: $98
    adc b                                         ; $6676: $88
    ld sp, $03B1                                  ; $6677: $31 $B1 $03
    ld bc, $4203                                  ; $667A: $01 $03 $42
    ld bc, $0000                                  ; $667D: $01 $00 $00
    ld hl, sp-$05                                 ; $6680: $F8 $FB
    ld a, [c]                                     ; $6682: $F2
    push af                                       ; $6683: $F5
    rst $20                                       ; $6684: $E7
    add sp, $03                                   ; $6685: $E8 $03
    inc e                                         ; $6687: $1C
    nop                                           ; $6688: $00
    rst $38                                       ; $6689: $FF
    nop                                           ; $668A: $00
    rst $38                                       ; $668B: $FF
    nop                                           ; $668C: $00
    ccf                                           ; $668D: $3F
    nop                                           ; $668E: $00
    rra                                           ; $668F: $1F
    nop                                           ; $6690: $00
    ld bc, $6350                                  ; $6691: $01 $50 $63
    xor d                                         ; $6694: $AA
    ld e, c                                       ; $6695: $59
    db $DB                                        ; $6696: $DB
    jr nz, jr_060_670A                            ; $6697: $20 $71

    nop                                           ; $6699: $00
    adc d                                         ; $669A: $8A
    nop                                           ; $669B: $00
    ld sp, $2037                                  ; $669C: $31 $37 $20
    ld e, e                                       ; $669F: $5B
    xor h                                         ; $66A0: $AC
    ld bc, $6350                                  ; $66A1: $01 $50 $63
    xor d                                         ; $66A4: $AA
    ld e, c                                       ; $66A5: $59
    db $DB                                        ; $66A6: $DB
    jr nz, jr_060_671A                            ; $66A7: $20 $71

    nop                                           ; $66A9: $00
    adc d                                         ; $66AA: $8A
    nop                                           ; $66AB: $00
    ld sp, $2077                                  ; $66AC: $31 $77 $20
    db $DB                                        ; $66AF: $DB
    xor h                                         ; $66B0: $AC
    ld bc, $6350                                  ; $66B1: $01 $50 $63
    xor d                                         ; $66B4: $AA
    ld e, c                                       ; $66B5: $59
    db $DB                                        ; $66B6: $DB
    jr nz, jr_060_672A                            ; $66B7: $20 $71

    nop                                           ; $66B9: $00
    adc d                                         ; $66BA: $8A
    nop                                           ; $66BB: $00
    ld sp, $2077                                  ; $66BC: $31 $77 $20
    db $DB                                        ; $66BF: $DB
    ld d, e                                       ; $66C0: $53
    jr z, jr_060_6700                             ; $66C1: $28 $3D

    nop                                           ; $66C3: $00
    ld [bc], a                                    ; $66C4: $02
    nop                                           ; $66C5: $00
    halt                                          ; $66C6: $76
    jr nc, jr_060_6649                            ; $66C7: $30 $80

    ld a, c                                       ; $66C9: $79
    add hl, bc                                    ; $66CA: $09
    ld a, [c]                                     ; $66CB: $F2
    db $F4                                        ; $66CC: $F4
    nop                                           ; $66CD: $00
    ld h, b                                       ; $66CE: $60
    nop                                           ; $66CF: $00
    ld b, h                                       ; $66D0: $44
    ld a, [de]                                    ; $66D1: $1A
    ld a, [de]                                    ; $66D2: $1A
    inc b                                         ; $66D3: $04
    ccf                                           ; $66D4: $3F
    nop                                           ; $66D5: $00
    nop                                           ; $66D6: $00
    nop                                           ; $66D7: $00
    ld a, [bc]                                    ; $66D8: $0A
    jr c, jr_060_66EC                             ; $66D9: $38 $11

    ld l, h                                       ; $66DB: $6C
    ld a, $00                                     ; $66DC: $3E $00
    nop                                           ; $66DE: $00
    rlca                                          ; $66DF: $07
    xor h                                         ; $66E0: $AC
    ld bc, $6350                                  ; $66E1: $01 $50 $63
    xor d                                         ; $66E4: $AA
    ld e, c                                       ; $66E5: $59
    db $DB                                        ; $66E6: $DB
    jr nz, @+$73                                  ; $66E7: $20 $71

    nop                                           ; $66E9: $00
    adc d                                         ; $66EA: $8A
    nop                                           ; $66EB: $00

jr_060_66EC:
    ld sp, $2077                                  ; $66EC: $31 $77 $20
    db $DB                                        ; $66EF: $DB
    dec [hl]                                      ; $66F0: $35
    add b                                         ; $66F1: $80
    ld a, [bc]                                    ; $66F2: $0A
    add $55                                       ; $66F3: $C6 $55
    sbc d                                         ; $66F5: $9A
    db $DB                                        ; $66F6: $DB
    inc b                                         ; $66F7: $04
    adc [hl]                                      ; $66F8: $8E
    nop                                           ; $66F9: $00
    ld d, c                                       ; $66FA: $51
    nop                                           ; $66FB: $00
    adc h                                         ; $66FC: $8C
    xor $04                                       ; $66FD: $EE $04
    db $DB                                        ; $66FF: $DB

jr_060_6700:
    ld a, a                                       ; $6700: $7F
    rst $38                                       ; $6701: $FF
    ld a, a                                       ; $6702: $7F
    rst $38                                       ; $6703: $FF
    ld a, a                                       ; $6704: $7F
    rst $38                                       ; $6705: $FF
    ld a, a                                       ; $6706: $7F
    rst $38                                       ; $6707: $FF
    cpl                                           ; $6708: $2F
    rst $38                                       ; $6709: $FF

jr_060_670A:
    dec d                                         ; $670A: $15
    rst $38                                       ; $670B: $FF
    and b                                         ; $670C: $A0
    ld e, a                                       ; $670D: $5F
    ld d, b                                       ; $670E: $50
    cpl                                           ; $670F: $2F
    rst $38                                       ; $6710: $FF
    rst $38                                       ; $6711: $FF
    rst $38                                       ; $6712: $FF
    rst $38                                       ; $6713: $FF
    rst $38                                       ; $6714: $FF
    rst $38                                       ; $6715: $FF
    rst $38                                       ; $6716: $FF
    rst $38                                       ; $6717: $FF
    rst $38                                       ; $6718: $FF
    rst $38                                       ; $6719: $FF

jr_060_671A:
    ld a, [$00FF]                                 ; $671A: $FA $FF $00
    rst $38                                       ; $671D: $FF
    ld [bc], a                                    ; $671E: $02
    db $FD                                        ; $671F: $FD
    rst $38                                       ; $6720: $FF
    rst $38                                       ; $6721: $FF
    rst $38                                       ; $6722: $FF
    rst $38                                       ; $6723: $FF
    rst $38                                       ; $6724: $FF
    rst $38                                       ; $6725: $FF
    rst $38                                       ; $6726: $FF
    rst $38                                       ; $6727: $FF
    ld a, a                                       ; $6728: $7F
    rst $38                                       ; $6729: $FF

jr_060_672A:
    add b                                         ; $672A: $80
    rst $38                                       ; $672B: $FF
    ld b, b                                       ; $672C: $40
    cp a                                          ; $672D: $BF
    and b                                         ; $672E: $A0
    ld b, b                                       ; $672F: $40
    cp $FF                                        ; $6730: $FE $FF
    cp $FF                                        ; $6732: $FE $FF
    db $FD                                        ; $6734: $FD
    cp $FA                                        ; $6735: $FE $FA
    db $FD                                        ; $6737: $FD
    push af                                       ; $6738: $F5
    cp $1A                                        ; $6739: $FE $1A
    db $FD                                        ; $673B: $FD
    ld bc, $44FE                                  ; $673C: $01 $FE $44
    jr c, jr_060_6741                             ; $673F: $38 $00

jr_060_6741:
    nop                                           ; $6741: $00
    jr nc, jr_060_6744                            ; $6742: $30 $00

jr_060_6744:
    ld a, c                                       ; $6744: $79
    jr nc, jr_060_678B                            ; $6745: $30 $44

    add hl, sp                                    ; $6747: $39
    ld sp, $8C04                                  ; $6748: $31 $04 $8C
    nop                                           ; $674B: $00
    rlca                                          ; $674C: $07
    nop                                           ; $674D: $00
    jr nz, jr_060_6750                            ; $674E: $20 $00

jr_060_6750:
    nop                                           ; $6750: $00

jr_060_6751:
    nop                                           ; $6751: $00
    call nz, $D600                                ; $6752: $C4 $00 $D6
    ld c, h                                       ; $6755: $4C
    ret z                                         ; $6756: $C8

    ld h, $28                                     ; $6757: $26 $28
    ld bc, $0045                                  ; $6759: $01 $45 $00
    ld [rROMB0], sp                                ; $675C: $08 $00 $20
    nop                                           ; $675F: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    inc hl                                        ; $6762: $23
    nop                                           ; $6763: $00
    ld e, e                                       ; $6764: $5B
    inc sp                                        ; $6765: $33
    ld de, $1666                                  ; $6766: $11 $66 $16
    nop                                           ; $6769: $00
    ld h, b                                       ; $676A: $60
    nop                                           ; $676B: $00
    ld [rROMB0], sp                                ; $676C: $08 $00 $20
    nop                                           ; $676F: $00
    rst $38                                       ; $6770: $FF
    rst $38                                       ; $6771: $FF
    rst $38                                       ; $6772: $FF
    rst $38                                       ; $6773: $FF
    rst $38                                       ; $6774: $FF
    rst $38                                       ; $6775: $FF
    rst $38                                       ; $6776: $FF
    rst $38                                       ; $6777: $FF
    rst $38                                       ; $6778: $FF
    rst $38                                       ; $6779: $FF
    rst $38                                       ; $677A: $FF
    rst $38                                       ; $677B: $FF
    rst $38                                       ; $677C: $FF
    rst $38                                       ; $677D: $FF
    rst $38                                       ; $677E: $FF
    rst $38                                       ; $677F: $FF
    ld bc, $C3CF                                  ; $6780: $01 $CF $C3
    rst $28                                       ; $6783: $EF
    rst $20                                       ; $6784: $E7
    rst $28                                       ; $6785: $EF
    ret nz                                        ; $6786: $C0

    rst $18                                       ; $6787: $DF
    nop                                           ; $6788: $00
    ccf                                           ; $6789: $3F
    inc bc                                        ; $678A: $03

jr_060_678B:
    rst $38                                       ; $678B: $FF
    db $FC                                        ; $678C: $FC
    db $FC                                        ; $678D: $FC
    nop                                           ; $678E: $00
    nop                                           ; $678F: $00
    ld c, $10                                     ; $6790: $0E $10
    db $10                                        ; $6792: $10
    dec h                                         ; $6793: $25
    inc bc                                        ; $6794: $03
    inc b                                         ; $6795: $04
    inc c                                         ; $6796: $0C
    nop                                           ; $6797: $00
    ld bc, $0A00                                  ; $6798: $01 $00 $0A
    nop                                           ; $679B: $00
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    inc de                                        ; $67A0: $13
    jr z, jr_060_6800                             ; $67A1: $28 $5D

    nop                                           ; $67A3: $00
    add b                                         ; $67A4: $80
    jr nz, jr_060_6751                            ; $67A5: $20 $AA

    ld b, b                                       ; $67A7: $40
    dec d                                         ; $67A8: $15
    jp nz, $0568                                  ; $67A9: $C2 $68 $05

    inc b                                         ; $67AC: $04
    ld a, [bc]                                    ; $67AD: $0A
    ld e, b                                       ; $67AE: $58
    nop                                           ; $67AF: $00
    call nz, $8A1A                                ; $67B0: $C4 $1A $8A
    inc b                                         ; $67B3: $04
    jr nz, jr_060_67B6                            ; $67B4: $20 $00

jr_060_67B6:
    push de                                       ; $67B6: $D5
    jr nz, jr_060_67CF                            ; $67B7: $20 $16

    ld c, c                                       ; $67B9: $49
    add hl, hl                                    ; $67BA: $29
    ld [de], a                                    ; $67BB: $12
    ld d, d                                       ; $67BC: $52
    inc h                                         ; $67BD: $24
    add c                                         ; $67BE: $81
    ld [$FFFF], sp                                ; $67BF: $08 $FF $FF
    rst $38                                       ; $67C2: $FF
    rst $38                                       ; $67C3: $FF
    rst $38                                       ; $67C4: $FF
    rst $38                                       ; $67C5: $FF
    rst $38                                       ; $67C6: $FF
    rst $38                                       ; $67C7: $FF
    rst $38                                       ; $67C8: $FF
    rst $38                                       ; $67C9: $FF
    rst $38                                       ; $67CA: $FF
    rst $38                                       ; $67CB: $FF
    rst $38                                       ; $67CC: $FF
    rst $38                                       ; $67CD: $FF
    rst $38                                       ; $67CE: $FF

jr_060_67CF:
    rst $38                                       ; $67CF: $FF
    rst $38                                       ; $67D0: $FF
    rst $38                                       ; $67D1: $FF
    rst $38                                       ; $67D2: $FF
    rst $38                                       ; $67D3: $FF
    rst $38                                       ; $67D4: $FF
    rst $38                                       ; $67D5: $FF
    rst $38                                       ; $67D6: $FF
    rst $38                                       ; $67D7: $FF
    rst $38                                       ; $67D8: $FF
    rst $38                                       ; $67D9: $FF
    rst $38                                       ; $67DA: $FF
    rst $38                                       ; $67DB: $FF
    rst $38                                       ; $67DC: $FF
    rst $38                                       ; $67DD: $FF
    rst $38                                       ; $67DE: $FF
    rst $38                                       ; $67DF: $FF
    rst $38                                       ; $67E0: $FF
    rst $38                                       ; $67E1: $FF
    rst $38                                       ; $67E2: $FF
    rst $38                                       ; $67E3: $FF
    rst $38                                       ; $67E4: $FF
    rst $38                                       ; $67E5: $FF
    rst $38                                       ; $67E6: $FF
    rst $38                                       ; $67E7: $FF
    rst $38                                       ; $67E8: $FF
    rst $38                                       ; $67E9: $FF
    rst $38                                       ; $67EA: $FF
    rst $38                                       ; $67EB: $FF
    rst $38                                       ; $67EC: $FF
    rst $38                                       ; $67ED: $FF
    rst $38                                       ; $67EE: $FF
    rst $38                                       ; $67EF: $FF
    rst $38                                       ; $67F0: $FF
    rst $38                                       ; $67F1: $FF
    rst $38                                       ; $67F2: $FF
    rst $38                                       ; $67F3: $FF
    rst $38                                       ; $67F4: $FF
    rst $38                                       ; $67F5: $FF
    rst $38                                       ; $67F6: $FF
    rst $38                                       ; $67F7: $FF
    rst $38                                       ; $67F8: $FF
    rst $38                                       ; $67F9: $FF
    rst $38                                       ; $67FA: $FF
    rst $38                                       ; $67FB: $FF
    rst $38                                       ; $67FC: $FF
    rst $38                                       ; $67FD: $FF
    rst $38                                       ; $67FE: $FF
    rst $38                                       ; $67FF: $FF

jr_060_6800:
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    ld bc, $0100                                  ; $6806: $01 $00 $01
    nop                                           ; $6809: $00
    ld bc, $0000                                  ; $680A: $01 $00 $00
    nop                                           ; $680D: $00
    nop                                           ; $680E: $00
    nop                                           ; $680F: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    xor d                                         ; $6814: $AA
    nop                                           ; $6815: $00
    ld d, c                                       ; $6816: $51
    nop                                           ; $6817: $00
    cp e                                          ; $6818: $BB
    nop                                           ; $6819: $00
    ld d, l                                       ; $681A: $55
    db $EB                                        ; $681B: $EB
    cp [hl]                                       ; $681C: $BE
    ld b, c                                       ; $681D: $41
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    add d                                         ; $6824: $82
    nop                                           ; $6825: $00
    dec d                                         ; $6826: $15
    nop                                           ; $6827: $00
    xor a                                         ; $6828: $AF
    nop                                           ; $6829: $00
    ld d, l                                       ; $682A: $55
    xor a                                         ; $682B: $AF
    ld a, [$0005]                                 ; $682C: $FA $05 $00
    nop                                           ; $682F: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    adc d                                         ; $6834: $8A
    nop                                           ; $6835: $00
    ld d, l                                       ; $6836: $55
    nop                                           ; $6837: $00
    db $DB                                        ; $6838: $DB
    nop                                           ; $6839: $00
    ld d, l                                       ; $683A: $55
    adc [hl]                                      ; $683B: $8E
    adc e                                         ; $683C: $8B
    inc b                                         ; $683D: $04
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    add d                                         ; $6844: $82
    nop                                           ; $6845: $00
    dec d                                         ; $6846: $15
    nop                                           ; $6847: $00
    xor a                                         ; $6848: $AF
    nop                                           ; $6849: $00
    ld d, l                                       ; $684A: $55
    xor a                                         ; $684B: $AF
    ld a, [$0005]                                 ; $684C: $FA $05 $00
    nop                                           ; $684F: $00
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    and b                                         ; $6854: $A0
    nop                                           ; $6855: $00
    ld d, b                                       ; $6856: $50
    nop                                           ; $6857: $00
    ldh a, [rP1]                                  ; $6858: $F0 $00
    ld d, b                                       ; $685A: $50
    ldh [$A0], a                                  ; $685B: $E0 $A0
    ld b, b                                       ; $685D: $40
    nop                                           ; $685E: $00
    nop                                           ; $685F: $00
    dec b                                         ; $6860: $05
    ld [bc], a                                    ; $6861: $02
    ret nz                                        ; $6862: $C0

    ld bc, $C024                                  ; $6863: $01 $24 $C0
    ld [hl+], a                                   ; $6866: $22
    ldh [rNR42], a                                ; $6867: $E0 $21
    ldh [$2C], a                                  ; $6869: $E0 $2C
    ldh [rNR43], a                                ; $686B: $E0 $22
    db $EC                                        ; $686D: $EC
    ld [hl+], a                                   ; $686E: $22
    xor $4D                                       ; $686F: $EE $4D
    cp $2D                                        ; $6871: $FE $2D
    ld e, [hl]                                    ; $6873: $5E
    ld c, l                                       ; $6874: $4D
    ld a, $9D                                     ; $6875: $3E $9D
    ld a, [hl]                                    ; $6877: $7E
    sbc l                                         ; $6878: $9D
    ld a, [hl]                                    ; $6879: $7E
    db $DD                                        ; $687A: $DD
    ld a, [hl]                                    ; $687B: $7E
    ld a, l                                       ; $687C: $7D
    ld l, $3D                                     ; $687D: $2E $3D
    ld d, $C0                                     ; $687F: $16 $C0
    nop                                           ; $6881: $00
    inc a                                         ; $6882: $3C
    nop                                           ; $6883: $00
    ld b, d                                       ; $6884: $42
    inc a                                         ; $6885: $3C
    dec e                                         ; $6886: $1D
    ld a, [hl]                                    ; $6887: $7E
    ccf                                           ; $6888: $3F
    ld a, [hl]                                    ; $6889: $7E
    ccf                                           ; $688A: $3F
    ld a, [hl]                                    ; $688B: $7E
    ccf                                           ; $688C: $3F
    ld a, [hl]                                    ; $688D: $7E
    daa                                           ; $688E: $27
    ld e, d                                       ; $688F: $5A
    ld [hl], b                                    ; $6890: $70
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    rst $28                                       ; $6896: $EF
    nop                                           ; $6897: $00
    pop af                                        ; $6898: $F1
    rrca                                          ; $6899: $0F
    dec de                                        ; $689A: $1B
    rst $20                                       ; $689B: $E7
    ld l, c                                       ; $689C: $69
    rst $30                                       ; $689D: $F7
    ld hl, sp-$09                                 ; $689E: $F8 $F7
    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    nop                                           ; $68A3: $00
    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00
    cp $00                                        ; $68A6: $FE $00
    pop hl                                        ; $68A8: $E1
    cp $FC                                        ; $68A9: $FE $FC
    rst $38                                       ; $68AB: $FF
    cp $FF                                        ; $68AC: $FE $FF
    ccf                                           ; $68AE: $3F
    rst $38                                       ; $68AF: $FF
    nop                                           ; $68B0: $00
    nop                                           ; $68B1: $00
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    nop                                           ; $68B4: $00
    nop                                           ; $68B5: $00
    nop                                           ; $68B6: $00
    nop                                           ; $68B7: $00
    ldh a, [rP1]                                  ; $68B8: $F0 $00
    inc e                                         ; $68BA: $1C
    ldh [rDMA], a                                 ; $68BB: $E0 $46
    ld hl, sp+$02                                 ; $68BD: $F8 $02
    db $FC                                        ; $68BF: $FC
    nop                                           ; $68C0: $00
    nop                                           ; $68C1: $00
    ret nz                                        ; $68C2: $C0

    nop                                           ; $68C3: $00
    rst $38                                       ; $68C4: $FF
    nop                                           ; $68C5: $00
    cpl                                           ; $68C6: $2F
    ret nz                                        ; $68C7: $C0

    daa                                           ; $68C8: $27
    ldh [rNR41], a                                ; $68C9: $E0 $20
    ldh [rNR43], a                                ; $68CB: $E0 $22
    db $EC                                        ; $68CD: $EC
    ld [hl+], a                                   ; $68CE: $22
    xor $00                                       ; $68CF: $EE $00
    nop                                           ; $68D1: $00
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    nop                                           ; $68D4: $00
    rst $38                                       ; $68D5: $FF
    rst $38                                       ; $68D6: $FF
    nop                                           ; $68D7: $00
    rst $38                                       ; $68D8: $FF
    nop                                           ; $68D9: $00
    nop                                           ; $68DA: $00
    nop                                           ; $68DB: $00
    dec bc                                        ; $68DC: $0B
    nop                                           ; $68DD: $00
    rla                                           ; $68DE: $17
    nop                                           ; $68DF: $00
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    nop                                           ; $68E4: $00
    rst $38                                       ; $68E5: $FF
    rst $38                                       ; $68E6: $FF
    nop                                           ; $68E7: $00
    rst $38                                       ; $68E8: $FF
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    db $FC                                        ; $68EC: $FC
    nop                                           ; $68ED: $00
    db $FC                                        ; $68EE: $FC
    nop                                           ; $68EF: $00
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    rst $38                                       ; $68F5: $FF
    cp $01                                        ; $68F6: $FE $01
    db $FC                                        ; $68F8: $FC
    ld bc, $0100                                  ; $68F9: $01 $00 $01
    ld e, [hl]                                    ; $68FC: $5E
    ld bc, $01BE                                  ; $68FD: $01 $BE $01
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    dec b                                         ; $6904: $05
    nop                                           ; $6905: $00
    ld a, [bc]                                    ; $6906: $0A
    ld bc, $0007                                  ; $6907: $01 $07 $00
    ld a, [bc]                                    ; $690A: $0A
    ld bc, $0106                                  ; $690B: $01 $06 $01
    inc bc                                        ; $690E: $03
    nop                                           ; $690F: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    or $00                                        ; $6912: $F6 $00
    dec d                                         ; $6914: $15
    cp $AB                                        ; $6915: $FE $AB
    rst $38                                       ; $6917: $FF
    ld e, [hl]                                    ; $6918: $5E
    rst $38                                       ; $6919: $FF
    dec a                                         ; $691A: $3D
    rst $38                                       ; $691B: $FF
    nop                                           ; $691C: $00

jr_060_691D:
    rst $38                                       ; $691D: $FF
    cp $00                                        ; $691E: $FE $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    and e                                         ; $6922: $A3
    nop                                           ; $6923: $00
    ld d, l                                       ; $6924: $55
    and d                                         ; $6925: $A2

jr_060_6926:
    inc h                                         ; $6926: $24
    db $D3                                        ; $6927: $D3
    sub c                                         ; $6928: $91
    rst $20                                       ; $6929: $E7
    ld h, $D1                                     ; $692A: $26 $D1
    ld d, l                                       ; $692C: $55
    add b                                         ; $692D: $80
    and d                                         ; $692E: $A2
    nop                                           ; $692F: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    ld d, a                                       ; $6932: $57
    nop                                           ; $6933: $00
    ld d, l                                       ; $6934: $55
    rst $38                                       ; $6935: $FF

jr_060_6936:
    cp a                                          ; $6936: $BF
    rst $38                                       ; $6937: $FF
    ld a, a                                       ; $6938: $7F
    rst $38                                       ; $6939: $FF
    ld d, a                                       ; $693A: $57
    rst $38                                       ; $693B: $FF
    jr nz, jr_060_691D                            ; $693C: $20 $DF

    cp a                                          ; $693E: $BF
    nop                                           ; $693F: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    rst $38                                       ; $6942: $FF
    nop                                           ; $6943: $00
    xor b                                         ; $6944: $A8
    rst $38                                       ; $6945: $FF
    push af                                       ; $6946: $F5
    rst $38                                       ; $6947: $FF

jr_060_6948:
    ld a, [$D4FF]                                 ; $6948: $FA $FF $D4
    rst $38                                       ; $694B: $FF
    nop                                           ; $694C: $00
    rst $38                                       ; $694D: $FF
    rst $38                                       ; $694E: $FF
    nop                                           ; $694F: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    ret nz                                        ; $6952: $C0

    nop                                           ; $6953: $00
    ldh [rP1], a                                  ; $6954: $E0 $00
    ld d, b                                       ; $6956: $50
    add b                                         ; $6957: $80

jr_060_6958:
    ldh [rP1], a                                  ; $6958: $E0 $00

jr_060_695A:
    ld d, b                                       ; $695A: $50
    add b                                         ; $695B: $80
    ldh [rP1], a                                  ; $695C: $E0 $00
    ret nz                                        ; $695E: $C0

    nop                                           ; $695F: $00
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    ret nz                                        ; $6962: $C0

    nop                                           ; $6963: $00
    jr nz, jr_060_6926                            ; $6964: $20 $C0

    jr nz, jr_060_6948                            ; $6966: $20 $E0

    jr nz, @-$1E                                  ; $6968: $20 $E0

    inc l                                         ; $696A: $2C
    ldh [rNR43], a                                ; $696B: $E0 $22
    db $EC                                        ; $696D: $EC
    ld [hl+], a                                   ; $696E: $22
    xor $13                                       ; $696F: $EE $13
    inc c                                         ; $6971: $0C
    adc $00                                       ; $6972: $CE $00
    jr nz, jr_060_6936                            ; $6974: $20 $C0

    jr nz, jr_060_6958                            ; $6976: $20 $E0

    jr nz, jr_060_695A                            ; $6978: $20 $E0

    inc l                                         ; $697A: $2C
    ldh [rNR43], a                                ; $697B: $E0 $22
    db $EC                                        ; $697D: $EC
    ld [hl+], a                                   ; $697E: $22
    xor $5B                                       ; $697F: $EE $5B
    inc a                                         ; $6981: $3C
    ld bc, $7E7E                                  ; $6982: $01 $7E $7E
    ld bc, $7F00                                  ; $6985: $01 $00 $7F
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698A: $00
    ld a, a                                       ; $698B: $7F
    nop                                           ; $698C: $00
    nop                                           ; $698D: $00
    nop                                           ; $698E: $00
    nop                                           ; $698F: $00
    cp $F9                                        ; $6990: $FE $F9
    rst $38                                       ; $6992: $FF
    db $FC                                        ; $6993: $FC
    cp a                                          ; $6994: $BF
    rst $38                                       ; $6995: $FF

jr_060_6996:
    rst $08                                       ; $6996: $CF
    rst $38                                       ; $6997: $FF
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699A: $00
    rst $38                                       ; $699B: $FF
    nop                                           ; $699C: $00
    nop                                           ; $699D: $00
    nop                                           ; $699E: $00
    nop                                           ; $699F: $00
    rst $38                                       ; $69A0: $FF
    rst $38                                       ; $69A1: $FF
    rst $38                                       ; $69A2: $FF
    ld a, a                                       ; $69A3: $7F
    rst $38                                       ; $69A4: $FF
    ccf                                           ; $69A5: $3F
    ld a, a                                       ; $69A6: $7F
    add a                                         ; $69A7: $87
    ld [$E007], sp                                ; $69A8: $08 $07 $E0
    ldh [rP1], a                                  ; $69AB: $E0 $00
    nop                                           ; $69AD: $00
    nop                                           ; $69AE: $00
    nop                                           ; $69AF: $00
    db $FC                                        ; $69B0: $FC
    cp $E4                                        ; $69B1: $FE $E4
    cp $F8                                        ; $69B3: $FE $F8
    cp $F8                                        ; $69B5: $FE $F8
    cp $E0                                        ; $69B7: $FE $E0
    cp $00                                        ; $69B9: $FE $00
    cp $00                                        ; $69BB: $FE $00
    ld a, $00                                     ; $69BD: $3E $00
    inc c                                         ; $69BF: $0C
    rst $38                                       ; $69C0: $FF
    rst $38                                       ; $69C1: $FF
    rst $38                                       ; $69C2: $FF
    rst $38                                       ; $69C3: $FF
    rst $38                                       ; $69C4: $FF
    rst $38                                       ; $69C5: $FF
    rst $38                                       ; $69C6: $FF
    rst $38                                       ; $69C7: $FF
    rst $38                                       ; $69C8: $FF
    rst $38                                       ; $69C9: $FF
    rst $38                                       ; $69CA: $FF
    rst $38                                       ; $69CB: $FF
    rst $38                                       ; $69CC: $FF
    rst $38                                       ; $69CD: $FF
    rst $38                                       ; $69CE: $FF
    rst $38                                       ; $69CF: $FF
    inc bc                                        ; $69D0: $03
    nop                                           ; $69D1: $00
    nop                                           ; $69D2: $00
    nop                                           ; $69D3: $00
    jr nz, jr_060_6996                            ; $69D4: $20 $C0

    jr nz, @-$1E                                  ; $69D6: $20 $E0

    jr nz, @-$1E                                  ; $69D8: $20 $E0

    jr nz, @-$1E                                  ; $69DA: $20 $E0

    ld [hl+], a                                   ; $69DC: $22
    db $EC                                        ; $69DD: $EC
    ld [hl+], a                                   ; $69DE: $22
    xor $F8                                       ; $69DF: $EE $F8
    nop                                           ; $69E1: $00
    nop                                           ; $69E2: $00
    nop                                           ; $69E3: $00
    rla                                           ; $69E4: $17
    nop                                           ; $69E5: $00
    dec l                                         ; $69E6: $2D
    nop                                           ; $69E7: $00
    ld [bc], a                                    ; $69E8: $02
    nop                                           ; $69E9: $00
    nop                                           ; $69EA: $00
    nop                                           ; $69EB: $00
    nop                                           ; $69EC: $00
    nop                                           ; $69ED: $00
    nop                                           ; $69EE: $00
    nop                                           ; $69EF: $00
    ld a, h                                       ; $69F0: $7C
    ld bc, $0100                                  ; $69F1: $01 $00 $01
    ldh [rSB], a                                  ; $69F4: $E0 $01
    ret nc                                        ; $69F6: $D0

    ld bc, $01A0                                  ; $69F7: $01 $A0 $01
    nop                                           ; $69FA: $00
    ld bc, $0100                                  ; $69FB: $01 $00 $01
    nop                                           ; $69FE: $00
    ld bc, $0000                                  ; $69FF: $01 $00 $00
    ld b, $01                                     ; $6A02: $06 $01
    dec bc                                        ; $6A04: $0B
    nop                                           ; $6A05: $00
    inc b                                         ; $6A06: $04
    inc bc                                        ; $6A07: $03
    ld a, [bc]                                    ; $6A08: $0A
    ld bc, $0025                                  ; $6A09: $01 $25 $00
    ld d, $01                                     ; $6A0C: $16 $01
    dec l                                         ; $6A0E: $2D
    ld [bc], a                                    ; $6A0F: $02
    nop                                           ; $6A10: $00
    nop                                           ; $6A11: $00
    adc a                                         ; $6A12: $8F
    nop                                           ; $6A13: $00
    ld d, l                                       ; $6A14: $55
    adc a                                         ; $6A15: $8F
    rst $08                                       ; $6A16: $CF
    sbc a                                         ; $6A17: $9F
    rst $08                                       ; $6A18: $CF
    sbc a                                         ; $6A19: $9F
    ld b, a                                       ; $6A1A: $47
    sbc a                                         ; $6A1B: $9F
    ld d, b                                       ; $6A1C: $50
    adc a                                         ; $6A1D: $8F
    adc d                                         ; $6A1E: $8A
    nop                                           ; $6A1F: $00
    nop                                           ; $6A20: $00
    nop                                           ; $6A21: $00
    rst $38                                       ; $6A22: $FF
    nop                                           ; $6A23: $00
    ld d, l                                       ; $6A24: $55
    rst $38                                       ; $6A25: $FF
    rst $38                                       ; $6A26: $FF
    rst $38                                       ; $6A27: $FF
    rst $38                                       ; $6A28: $FF
    rst $38                                       ; $6A29: $FF
    db $FD                                        ; $6A2A: $FD
    rst $38                                       ; $6A2B: $FF
    nop                                           ; $6A2C: $00
    rst $38                                       ; $6A2D: $FF
    ld a, [$0000]                                 ; $6A2E: $FA $00 $00
    nop                                           ; $6A31: $00
    adc a                                         ; $6A32: $8F
    nop                                           ; $6A33: $00
    ld d, l                                       ; $6A34: $55
    adc a                                         ; $6A35: $8F

jr_060_6A36:
    adc a                                         ; $6A36: $8F
    rst $18                                       ; $6A37: $DF
    adc a                                         ; $6A38: $8F
    rst $18                                       ; $6A39: $DF
    rlca                                          ; $6A3A: $07
    rst $18                                       ; $6A3B: $DF
    ld d, b                                       ; $6A3C: $50
    adc a                                         ; $6A3D: $8F
    adc d                                         ; $6A3E: $8A
    nop                                           ; $6A3F: $00
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    rst $18                                       ; $6A42: $DF
    nop                                           ; $6A43: $00
    ld a, [hl+]                                   ; $6A44: $2A
    push bc                                       ; $6A45: $C5
    inc l                                         ; $6A46: $2C
    db $E3                                        ; $6A47: $E3
    ld [hl+], a                                   ; $6A48: $22
    pop hl                                        ; $6A49: $E1
    dec l                                         ; $6A4A: $2D
    ldh [rNR43], a                                ; $6A4B: $E0 $22
    db $EC                                        ; $6A4D: $EC
    ld [hl+], a                                   ; $6A4E: $22
    xor $00                                       ; $6A4F: $EE $00
    nop                                           ; $6A51: $00
    adc a                                         ; $6A52: $8F
    nop                                           ; $6A53: $00
    ld d, l                                       ; $6A54: $55
    adc a                                         ; $6A55: $8F
    adc a                                         ; $6A56: $8F
    rst $18                                       ; $6A57: $DF

jr_060_6A58:
    adc a                                         ; $6A58: $8F
    rst $18                                       ; $6A59: $DF

jr_060_6A5A:
    rlca                                          ; $6A5A: $07
    rst $18                                       ; $6A5B: $DF
    ld d, b                                       ; $6A5C: $50
    rrca                                          ; $6A5D: $0F
    ld a, [bc]                                    ; $6A5E: $0A
    nop                                           ; $6A5F: $00
    ld [hl+], a                                   ; $6A60: $22
    xor $22                                       ; $6A61: $EE $22
    xor $22                                       ; $6A63: $EE $22
    xor $A2                                       ; $6A65: $EE $A2
    ld l, [hl]                                    ; $6A67: $6E
    jp nz, Jump_060_622E                          ; $6A68: $C2 $2E $62

    adc [hl]                                      ; $6A6B: $8E
    ld [hl+], a                                   ; $6A6C: $22
    adc $AA                                       ; $6A6D: $CE $AA
    ld b, [hl]                                    ; $6A6F: $46
    nop                                           ; $6A70: $00
    nop                                           ; $6A71: $00
    ret nz                                        ; $6A72: $C0

    nop                                           ; $6A73: $00
    jr nz, jr_060_6A36                            ; $6A74: $20 $C0

    jr nz, jr_060_6A58                            ; $6A76: $20 $E0

    jr nz, jr_060_6A5A                            ; $6A78: $20 $E0

    inc l                                         ; $6A7A: $2C
    ldh [rNR43], a                                ; $6A7B: $E0 $22
    db $EC                                        ; $6A7D: $EC
    ld [hl+], a                                   ; $6A7E: $22
    xor $00                                       ; $6A7F: $EE $00
    nop                                           ; $6A81: $00
    nop                                           ; $6A82: $00
    inc a                                         ; $6A83: $3C
    nop                                           ; $6A84: $00
    ld a, [hl]                                    ; $6A85: $7E
    dec c                                         ; $6A86: $0D
    ld a, [hl]                                    ; $6A87: $7E
    rra                                           ; $6A88: $1F
    ld a, [hl]                                    ; $6A89: $7E
    ccf                                           ; $6A8A: $3F
    ld a, [hl]                                    ; $6A8B: $7E
    ld a, a                                       ; $6A8C: $7F
    ld b, d                                       ; $6A8D: $42
    ld e, e                                       ; $6A8E: $5B
    inc a                                         ; $6A8F: $3C
    nop                                           ; $6A90: $00
    nop                                           ; $6A91: $00
    nop                                           ; $6A92: $00
    nop                                           ; $6A93: $00
    nop                                           ; $6A94: $00
    nop                                           ; $6A95: $00
    nop                                           ; $6A96: $00
    nop                                           ; $6A97: $00
    nop                                           ; $6A98: $00
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00
    ld [$0300], sp                                ; $6A9B: $08 $00 $03
    ld bc, $0001                                  ; $6A9E: $01 $01 $00
    nop                                           ; $6AA1: $00
    nop                                           ; $6AA2: $00
    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    nop                                           ; $6AA5: $00

jr_060_6AA6:
    nop                                           ; $6AA6: $00
    ld [$1300], sp                                ; $6AA7: $08 $00 $13
    nop                                           ; $6AAA: $00
    ret nz                                        ; $6AAB: $C0

    nop                                           ; $6AAC: $00
    ccf                                           ; $6AAD: $3F
    di                                            ; $6AAE: $F3
    rst $38                                       ; $6AAF: $FF
    nop                                           ; $6AB0: $00
    nop                                           ; $6AB1: $00
    nop                                           ; $6AB2: $00
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    ld h, b                                       ; $6AB7: $60
    nop                                           ; $6AB8: $00
    add b                                         ; $6AB9: $80
    nop                                           ; $6ABA: $00
    nop                                           ; $6ABB: $00
    nop                                           ; $6ABC: $00
    add b                                         ; $6ABD: $80
    add b                                         ; $6ABE: $80
    ldh [rIE], a                                  ; $6ABF: $E0 $FF
    rst $38                                       ; $6AC1: $FF
    rst $38                                       ; $6AC2: $FF
    rst $38                                       ; $6AC3: $FF
    rst $38                                       ; $6AC4: $FF
    rst $38                                       ; $6AC5: $FF
    rst $38                                       ; $6AC6: $FF
    rst $38                                       ; $6AC7: $FF
    rst $38                                       ; $6AC8: $FF
    rst $38                                       ; $6AC9: $FF
    rst $38                                       ; $6ACA: $FF
    rst $38                                       ; $6ACB: $FF
    rst $38                                       ; $6ACC: $FF
    rst $38                                       ; $6ACD: $FF
    rst $38                                       ; $6ACE: $FF
    rst $38                                       ; $6ACF: $FF
    ld [hl+], a                                   ; $6AD0: $22
    xor $22                                       ; $6AD1: $EE $22
    xor $22                                       ; $6AD3: $EE $22
    xor $22                                       ; $6AD5: $EE $22
    xor $22                                       ; $6AD7: $EE $22
    xor $22                                       ; $6AD9: $EE $22
    xor $22                                       ; $6ADB: $EE $22
    xor $22                                       ; $6ADD: $EE $22
    xor $00                                       ; $6ADF: $EE $00
    nop                                           ; $6AE1: $00
    nop                                           ; $6AE2: $00
    nop                                           ; $6AE3: $00
    jr nz, jr_060_6AA6                            ; $6AE4: $20 $C0

    nop                                           ; $6AE6: $00
    ldh [rP1], a                                  ; $6AE7: $E0 $00
    ldh [rP1], a                                  ; $6AE9: $E0 $00
    ldh [$0E], a                                  ; $6AEB: $E0 $0E
    ldh [$0C], a                                  ; $6AED: $E0 $0C
    ld [c], a                                     ; $6AEF: $E2
    nop                                           ; $6AF0: $00
    ld bc, $0100                                  ; $6AF1: $01 $00 $01
    nop                                           ; $6AF4: $00
    ld bc, $0100                                  ; $6AF5: $01 $00 $01
    nop                                           ; $6AF8: $00
    ld bc, $0100                                  ; $6AF9: $01 $00 $01
    nop                                           ; $6AFC: $00
    ld bc, $0100                                  ; $6AFD: $01 $00 $01
    nop                                           ; $6B00: $00
    nop                                           ; $6B01: $00
    inc bc                                        ; $6B02: $03
    nop                                           ; $6B03: $00
    rlca                                          ; $6B04: $07
    nop                                           ; $6B05: $00
    ld a, [bc]                                    ; $6B06: $0A
    ld bc, $0007                                  ; $6B07: $01 $07 $00
    ld a, [bc]                                    ; $6B0A: $0A
    ld bc, $0007                                  ; $6B0B: $01 $07 $00
    inc bc                                        ; $6B0E: $03
    nop                                           ; $6B0F: $00
    nop                                           ; $6B10: $00
    nop                                           ; $6B11: $00
    rst $38                                       ; $6B12: $FF
    nop                                           ; $6B13: $00
    dec d                                         ; $6B14: $15
    rst $38                                       ; $6B15: $FF
    xor a                                         ; $6B16: $AF
    rst $38                                       ; $6B17: $FF
    ld e, a                                       ; $6B18: $5F
    rst $38                                       ; $6B19: $FF
    ccf                                           ; $6B1A: $3F
    rst $38                                       ; $6B1B: $FF
    dec b                                         ; $6B1C: $05
    ld a, [$00FD]                                 ; $6B1D: $FA $FD $00
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    db $E3                                        ; $6B22: $E3
    nop                                           ; $6B23: $00
    ld d, l                                       ; $6B24: $55
    db $E3                                        ; $6B25: $E3
    db $E3                                        ; $6B26: $E3
    rst $30                                       ; $6B27: $F7
    db $E3                                        ; $6B28: $E3
    rst $30                                       ; $6B29: $F7
    pop hl                                        ; $6B2A: $E1
    rst $30                                       ; $6B2B: $F7
    ld d, h                                       ; $6B2C: $54
    and e                                         ; $6B2D: $A3
    and d                                         ; $6B2E: $A2
    nop                                           ; $6B2F: $00
    nop                                           ; $6B30: $00
    nop                                           ; $6B31: $00
    rst $38                                       ; $6B32: $FF
    nop                                           ; $6B33: $00
    ld d, l                                       ; $6B34: $55
    rst $38                                       ; $6B35: $FF
    rst $38                                       ; $6B36: $FF
    rst $38                                       ; $6B37: $FF
    rst $38                                       ; $6B38: $FF
    rst $38                                       ; $6B39: $FF
    ld a, a                                       ; $6B3A: $7F
    rst $38                                       ; $6B3B: $FF
    nop                                           ; $6B3C: $00
    rst $38                                       ; $6B3D: $FF
    xor a                                         ; $6B3E: $AF
    nop                                           ; $6B3F: $00
    ld [hl+], a                                   ; $6B40: $22
    xor $22                                       ; $6B41: $EE $22
    xor $22                                       ; $6B43: $EE $22
    xor $22                                       ; $6B45: $EE $22
    xor $22                                       ; $6B47: $EE $22
    xor $22                                       ; $6B49: $EE $22
    xor $22                                       ; $6B4B: $EE $22
    xor $22                                       ; $6B4D: $EE $22
    xor $00                                       ; $6B4F: $EE $00
    nop                                           ; $6B51: $00
    rst $18                                       ; $6B52: $DF
    nop                                           ; $6B53: $00
    ld a, [hl+]                                   ; $6B54: $2A
    push bc                                       ; $6B55: $C5
    inc l                                         ; $6B56: $2C
    db $E3                                        ; $6B57: $E3
    ld [hl+], a                                   ; $6B58: $22
    pop hl                                        ; $6B59: $E1
    dec l                                         ; $6B5A: $2D
    ldh [rNR43], a                                ; $6B5B: $E0 $22
    db $EC                                        ; $6B5D: $EC
    ld [hl+], a                                   ; $6B5E: $22
    xor $6E                                       ; $6B5F: $EE $6E
    ld [bc], a                                    ; $6B61: $02
    ld a, [hl]                                    ; $6B62: $7E
    inc b                                         ; $6B63: $04
    ld e, $0C                                     ; $6B64: $1E $0C
    ld c, $00                                     ; $6B66: $0E $00
    ld b, $00                                     ; $6B68: $06 $00
    inc bc                                        ; $6B6A: $03
    nop                                           ; $6B6B: $00
    ld bc, $0000                                  ; $6B6C: $01 $00 $00
    nop                                           ; $6B6F: $00
    ld [hl+], a                                   ; $6B70: $22
    xor $22                                       ; $6B71: $EE $22
    xor $22                                       ; $6B73: $EE $22
    xor $A2                                       ; $6B75: $EE $A2
    ld l, [hl]                                    ; $6B77: $6E
    jp nz, $E22E                                  ; $6B78: $C2 $2E $E2

    ld c, $22                                     ; $6B7B: $0E $22
    adc $CA                                       ; $6B7D: $CE $CA
    ld h, $7F                                     ; $6B7F: $26 $7F
    ld a, [hl]                                    ; $6B81: $7E
    ld a, [hl]                                    ; $6B82: $7E
    nop                                           ; $6B83: $00
    ld a, a                                       ; $6B84: $7F
    ld a, a                                       ; $6B85: $7F
    nop                                           ; $6B86: $00
    nop                                           ; $6B87: $00
    ld a, a                                       ; $6B88: $7F
    ld a, a                                       ; $6B89: $7F
    nop                                           ; $6B8A: $00
    nop                                           ; $6B8B: $00
    nop                                           ; $6B8C: $00
    nop                                           ; $6B8D: $00
    nop                                           ; $6B8E: $00
    nop                                           ; $6B8F: $00
    nop                                           ; $6B90: $00
    ld [hl], b                                    ; $6B91: $70
    nop                                           ; $6B92: $00
    cp $00                                        ; $6B93: $FE $00
    rst $38                                       ; $6B95: $FF
    nop                                           ; $6B96: $00
    nop                                           ; $6B97: $00
    rst $38                                       ; $6B98: $FF
    rst $38                                       ; $6B99: $FF
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    ccf                                           ; $6BA0: $3F
    rst $38                                       ; $6BA1: $FF
    rrca                                          ; $6BA2: $0F
    ld a, a                                       ; $6BA3: $7F
    rrca                                          ; $6BA4: $0F
    sbc a                                         ; $6BA5: $9F
    rlca                                          ; $6BA6: $07
    rra                                           ; $6BA7: $1F
    add e                                         ; $6BA8: $83
    adc a                                         ; $6BA9: $8F
    ld bc, $000F                                  ; $6BAA: $01 $0F $00
    rlca                                          ; $6BAD: $07
    nop                                           ; $6BAE: $00
    inc bc                                        ; $6BAF: $03
    ldh [$F8], a                                  ; $6BB0: $E0 $F8
    ld hl, sp-$04                                 ; $6BB2: $F8 $FC
    db $FC                                        ; $6BB4: $FC
    cp $FC                                        ; $6BB5: $FE $FC
    cp $F8                                        ; $6BB7: $FE $F8
    cp $C0                                        ; $6BB9: $FE $C0
    cp $00                                        ; $6BBB: $FE $00
    db $FC                                        ; $6BBD: $FC
    nop                                           ; $6BBE: $00
    ret nz                                        ; $6BBF: $C0

    ld [hl+], a                                   ; $6BC0: $22
    xor $22                                       ; $6BC1: $EE $22
    xor $22                                       ; $6BC3: $EE $22
    xor $22                                       ; $6BC5: $EE $22
    xor $22                                       ; $6BC7: $EE $22
    xor $22                                       ; $6BC9: $EE $22
    xor $79                                       ; $6BCB: $EE $79
    rst $38                                       ; $6BCD: $FF
    rst $38                                       ; $6BCE: $FF
    nop                                           ; $6BCF: $00
    ld [hl+], a                                   ; $6BD0: $22
    xor $22                                       ; $6BD1: $EE $22
    xor $22                                       ; $6BD3: $EE $22
    xor $22                                       ; $6BD5: $EE $22
    xor $22                                       ; $6BD7: $EE $22
    xor $22                                       ; $6BD9: $EE $22
    xor $FF                                       ; $6BDB: $EE $FF
    rst $38                                       ; $6BDD: $FF
    nop                                           ; $6BDE: $00
    rst $38                                       ; $6BDF: $FF
    inc c                                         ; $6BE0: $0C
    ld [c], a                                     ; $6BE1: $E2
    inc c                                         ; $6BE2: $0C
    ld [c], a                                     ; $6BE3: $E2
    inc c                                         ; $6BE4: $0C
    ld [c], a                                     ; $6BE5: $E2
    inc c                                         ; $6BE6: $0C
    ld [c], a                                     ; $6BE7: $E2
    inc c                                         ; $6BE8: $0C
    ld [c], a                                     ; $6BE9: $E2
    inc c                                         ; $6BEA: $0C
    ld [c], a                                     ; $6BEB: $E2
    rst $38                                       ; $6BEC: $FF
    rst $38                                       ; $6BED: $FF
    nop                                           ; $6BEE: $00
    rst $38                                       ; $6BEF: $FF
    nop                                           ; $6BF0: $00
    ld bc, $0100                                  ; $6BF1: $01 $00 $01
    ldh [rSB], a                                  ; $6BF4: $E0 $01
    ret nz                                        ; $6BF6: $C0

    ld hl, $21C0                                  ; $6BF7: $21 $C0 $21
    ret nz                                        ; $6BFA: $C0

    ld hl, $FFFE                                  ; $6BFB: $21 $FE $FF
    nop                                           ; $6BFE: $00
    rst $38                                       ; $6BFF: $FF
    nop                                           ; $6C00: $00
    nop                                           ; $6C01: $00
    ld b, $01                                     ; $6C02: $06 $01
    dec bc                                        ; $6C04: $0B
    nop                                           ; $6C05: $00
    inc b                                         ; $6C06: $04
    inc bc                                        ; $6C07: $03
    ld a, [bc]                                    ; $6C08: $0A
    ld bc, $0025                                  ; $6C09: $01 $25 $00
    ld d, $01                                     ; $6C0C: $16 $01
    cpl                                           ; $6C0E: $2F
    nop                                           ; $6C0F: $00
    nop                                           ; $6C10: $00
    nop                                           ; $6C11: $00
    adc a                                         ; $6C12: $8F
    nop                                           ; $6C13: $00
    ld d, l                                       ; $6C14: $55
    adc a                                         ; $6C15: $8F
    rst $08                                       ; $6C16: $CF
    sbc a                                         ; $6C17: $9F

jr_060_6C18:
    push bc                                       ; $6C18: $C5
    sbc a                                         ; $6C19: $9F
    ld d, d                                       ; $6C1A: $52
    adc a                                         ; $6C1B: $8F
    push de                                       ; $6C1C: $D5
    ld [bc], a                                    ; $6C1D: $02
    adc e                                         ; $6C1E: $8B
    nop                                           ; $6C1F: $00
    nop                                           ; $6C20: $00
    nop                                           ; $6C21: $00
    rst $38                                       ; $6C22: $FF
    nop                                           ; $6C23: $00
    ld d, l                                       ; $6C24: $55
    rst $38                                       ; $6C25: $FF
    rst $38                                       ; $6C26: $FF
    rst $38                                       ; $6C27: $FF
    rst $38                                       ; $6C28: $FF
    rst $38                                       ; $6C29: $FF
    ld e, l                                       ; $6C2A: $5D
    rst $38                                       ; $6C2B: $FF
    ld b, [hl]                                    ; $6C2C: $46
    cp c                                          ; $6C2D: $B9
    ld a, [$0000]                                 ; $6C2E: $FA $00 $00
    nop                                           ; $6C31: $00
    adc a                                         ; $6C32: $8F
    nop                                           ; $6C33: $00
    ld d, l                                       ; $6C34: $55
    adc a                                         ; $6C35: $8F
    adc a                                         ; $6C36: $8F
    rst $18                                       ; $6C37: $DF
    adc a                                         ; $6C38: $8F
    rst $18                                       ; $6C39: $DF
    ld b, a                                       ; $6C3A: $47
    sbc a                                         ; $6C3B: $9F
    pop de                                        ; $6C3C: $D1
    ld c, $8A                                     ; $6C3D: $0E $8A
    nop                                           ; $6C3F: $00
    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    pop af                                        ; $6C42: $F1
    nop                                           ; $6C43: $00
    xor d                                         ; $6C44: $AA
    pop af                                        ; $6C45: $F1
    di                                            ; $6C46: $F3
    ld sp, hl                                     ; $6C47: $F9
    db $D3                                        ; $6C48: $D3
    ld sp, hl                                     ; $6C49: $F9
    xor d                                         ; $6C4A: $AA
    pop af                                        ; $6C4B: $F1
    ld e, d                                       ; $6C4C: $5A
    and c                                         ; $6C4D: $A1
    pop af                                        ; $6C4E: $F1
    nop                                           ; $6C4F: $00
    nop                                           ; $6C50: $00
    nop                                           ; $6C51: $00
    ld h, b                                       ; $6C52: $60
    add b                                         ; $6C53: $80
    ret nc                                        ; $6C54: $D0

    nop                                           ; $6C55: $00
    jr nz, jr_060_6C18                            ; $6C56: $20 $C0

    ld d, b                                       ; $6C58: $50
    add b                                         ; $6C59: $80
    and h                                         ; $6C5A: $A4
    nop                                           ; $6C5B: $00
    ld l, b                                       ; $6C5C: $68

jr_060_6C5D:
    add b                                         ; $6C5D: $80
    or h                                          ; $6C5E: $B4
    ld b, b                                       ; $6C5F: $40
    nop                                           ; $6C60: $00
    rrca                                          ; $6C61: $0F
    ld h, b                                       ; $6C62: $60
    rst $20                                       ; $6C63: $E7
    jr nz, jr_060_6C5D                            ; $6C64: $20 $F7

    db $10                                        ; $6C66: $10
    ld [hl], a                                    ; $6C67: $77
    inc d                                         ; $6C68: $14
    inc sp                                        ; $6C69: $33
    ld [hl], d                                    ; $6C6A: $72
    ld [hl], c                                    ; $6C6B: $71
    ld d, e                                       ; $6C6C: $53
    ld [hl], b                                    ; $6C6D: $70
    ld d, e                                       ; $6C6E: $53
    ld [hl], b                                    ; $6C6F: $70
    ld l, [hl]                                    ; $6C70: $6E
    ld [bc], a                                    ; $6C71: $02
    ld a, [hl]                                    ; $6C72: $7E
    inc b                                         ; $6C73: $04
    ld e, $0C                                     ; $6C74: $1E $0C
    ld c, $00                                     ; $6C76: $0E $00
    ld b, $00                                     ; $6C78: $06 $00
    inc bc                                        ; $6C7A: $03
    nop                                           ; $6C7B: $00
    ld bc, $0000                                  ; $6C7C: $01 $00 $00
    nop                                           ; $6C7F: $00
    or c                                          ; $6C80: $B1
    ld [hl], e                                    ; $6C81: $73
    ld [$8B71], a                                 ; $6C82: $EA $71 $8B
    ld [hl], b                                    ; $6C85: $70
    adc d                                         ; $6C86: $8A
    ld [hl], c                                    ; $6C87: $71
    adc c                                         ; $6C88: $89
    ld [hl], b                                    ; $6C89: $70
    add b                                         ; $6C8A: $80
    ld [hl], b                                    ; $6C8B: $70
    or d                                          ; $6C8C: $B2
    ld b, c                                       ; $6C8D: $41
    db $F4                                        ; $6C8E: $F4
    inc bc                                        ; $6C8F: $03
    pop af                                        ; $6C90: $F1
    rst $38                                       ; $6C91: $FF
    ld hl, sp-$01                                 ; $6C92: $F8 $FF
    rst $38                                       ; $6C94: $FF
    nop                                           ; $6C95: $00
    ld a, a                                       ; $6C96: $7F
    rst $38                                       ; $6C97: $FF
    rst $38                                       ; $6C98: $FF
    nop                                           ; $6C99: $00
    nop                                           ; $6C9A: $00
    nop                                           ; $6C9B: $00
    nop                                           ; $6C9C: $00
    rst $38                                       ; $6C9D: $FF
    rst $38                                       ; $6C9E: $FF
    rst $38                                       ; $6C9F: $FF
    ld h, e                                       ; $6CA0: $63
    db $E3                                        ; $6CA1: $E3
    ld c, b                                       ; $6CA2: $48
    db $DD                                        ; $6CA3: $DD
    push de                                       ; $6CA4: $D5
    inc d                                         ; $6CA5: $14
    sub l                                         ; $6CA6: $95
    call nc, Call_060_5C94                        ; $6CA7: $D4 $94 $5C
    inc d                                         ; $6CAA: $14
    nop                                           ; $6CAB: $00
    inc e                                         ; $6CAC: $1C
    pop bc                                        ; $6CAD: $C1
    ret nz                                        ; $6CAE: $C0

    db $E3                                        ; $6CAF: $E3
    adc l                                         ; $6CB0: $8D
    adc $57                                       ; $6CB1: $CE $57
    adc [hl]                                      ; $6CB3: $8E
    pop de                                        ; $6CB4: $D1
    ld c, $11                                     ; $6CB5: $0E $11
    adc $D1                                       ; $6CB7: $CE $D1
    ld c, $09                                     ; $6CB9: $0E $09
    ld b, $4D                                     ; $6CBB: $06 $4D
    add d                                         ; $6CBD: $82
    cpl                                           ; $6CBE: $2F
    ret nz                                        ; $6CBF: $C0

    jr nz, @+$20                                  ; $6CC0: $20 $1E

    ld b, b                                       ; $6CC2: $40
    ld [$6081], sp                                ; $6CC3: $08 $81 $60
    jp nz, $E171                                  ; $6CC6: $C2 $71 $E1

    ld [hl], e                                    ; $6CC9: $73
    db $F4                                        ; $6CCA: $F4
    ld [hl], d                                    ; $6CCB: $72
    ldh a, [rPCM34]                               ; $6CCC: $F0 $77
    di                                            ; $6CCE: $F3

jr_060_6CCF:
    ld [hl], a                                    ; $6CCF: $77
    nop                                           ; $6CD0: $00
    nop                                           ; $6CD1: $00
    nop                                           ; $6CD2: $00
    nop                                           ; $6CD3: $00
    ld h, b                                       ; $6CD4: $60
    rst $38                                       ; $6CD5: $FF
    or e                                          ; $6CD6: $B3
    cp e                                          ; $6CD7: $BB
    inc hl                                        ; $6CD8: $23
    rst $38                                       ; $6CD9: $FF
    daa                                           ; $6CDA: $27
    rst $38                                       ; $6CDB: $FF
    rrca                                          ; $6CDC: $0F
    ld hl, sp-$78                                 ; $6CDD: $F8 $88
    ldh a, [rP1]                                  ; $6CDF: $F0 $00
    nop                                           ; $6CE1: $00
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    nop                                           ; $6CE4: $00
    rst $38                                       ; $6CE5: $FF
    db $DD                                        ; $6CE6: $DD
    db $DD                                        ; $6CE7: $DD
    db $DD                                        ; $6CE8: $DD
    rst $38                                       ; $6CE9: $FF
    rst $38                                       ; $6CEA: $FF
    rst $38                                       ; $6CEB: $FF
    rst $38                                       ; $6CEC: $FF
    rra                                           ; $6CED: $1F
    rra                                           ; $6CEE: $1F
    rrca                                          ; $6CEF: $0F
    inc b                                         ; $6CF0: $04
    ld a, b                                       ; $6CF1: $78
    ld [bc], a                                    ; $6CF2: $02
    db $10                                        ; $6CF3: $10
    add c                                         ; $6CF4: $81
    ld b, $43                                     ; $6CF5: $06 $43
    adc [hl]                                      ; $6CF7: $8E
    add a                                         ; $6CF8: $87
    adc $2F                                       ; $6CF9: $CE $2F
    ld c, [hl]                                    ; $6CFB: $4E
    rrca                                          ; $6CFC: $0F
    xor $CF                                       ; $6CFD: $EE $CF
    xor $00                                       ; $6CFF: $EE $00
    nop                                           ; $6D01: $00
    dec b                                         ; $6D02: $05
    ld [bc], a                                    ; $6D03: $02
    ld a, [bc]                                    ; $6D04: $0A
    rlca                                          ; $6D05: $07
    rrca                                          ; $6D06: $0F
    nop                                           ; $6D07: $00
    ld a, [bc]                                    ; $6D08: $0A
    nop                                           ; $6D09: $00
    dec b                                         ; $6D0A: $05
    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    nop                                           ; $6D0D: $00
    nop                                           ; $6D0E: $00
    nop                                           ; $6D0F: $00
    nop                                           ; $6D10: $00
    nop                                           ; $6D11: $00
    ld e, a                                       ; $6D12: $5F
    and b                                         ; $6D13: $A0
    xor d                                         ; $6D14: $AA
    push af                                       ; $6D15: $F5
    push af                                       ; $6D16: $F5
    nop                                           ; $6D17: $00
    xor b                                         ; $6D18: $A8
    nop                                           ; $6D19: $00
    ld b, c                                       ; $6D1A: $41
    nop                                           ; $6D1B: $00
    nop                                           ; $6D1C: $00
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    nop                                           ; $6D20: $00
    nop                                           ; $6D21: $00
    pop de                                        ; $6D22: $D1
    jr nz, jr_060_6CCF                            ; $6D23: $20 $AA

    ld [hl], c                                    ; $6D25: $71
    db $DB                                        ; $6D26: $DB
    nop                                           ; $6D27: $00
    xor d                                         ; $6D28: $AA
    nop                                           ; $6D29: $00
    ld d, c                                       ; $6D2A: $51
    nop                                           ; $6D2B: $00
    nop                                           ; $6D2C: $00
    nop                                           ; $6D2D: $00
    nop                                           ; $6D2E: $00
    nop                                           ; $6D2F: $00
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    ld e, a                                       ; $6D32: $5F
    and b                                         ; $6D33: $A0
    xor d                                         ; $6D34: $AA
    push af                                       ; $6D35: $F5
    push af                                       ; $6D36: $F5
    nop                                           ; $6D37: $00
    xor b                                         ; $6D38: $A8
    nop                                           ; $6D39: $00
    ld b, c                                       ; $6D3A: $41
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    nop                                           ; $6D40: $00
    nop                                           ; $6D41: $00
    ld a, l                                       ; $6D42: $7D
    add d                                         ; $6D43: $82
    xor d                                         ; $6D44: $AA
    rst $10                                       ; $6D45: $D7
    db $DD                                        ; $6D46: $DD
    nop                                           ; $6D47: $00
    adc d                                         ; $6D48: $8A
    nop                                           ; $6D49: $00
    ld d, l                                       ; $6D4A: $55
    nop                                           ; $6D4B: $00
    nop                                           ; $6D4C: $00
    nop                                           ; $6D4D: $00
    nop                                           ; $6D4E: $00
    nop                                           ; $6D4F: $00
    nop                                           ; $6D50: $00
    nop                                           ; $6D51: $00
    nop                                           ; $6D52: $00
    nop                                           ; $6D53: $00
    add b                                         ; $6D54: $80
    nop                                           ; $6D55: $00
    add b                                         ; $6D56: $80
    nop                                           ; $6D57: $00
    add b                                         ; $6D58: $80
    nop                                           ; $6D59: $00
    nop                                           ; $6D5A: $00
    nop                                           ; $6D5B: $00
    nop                                           ; $6D5C: $00
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    ld d, b                                       ; $6D60: $50
    ld [hl], b                                    ; $6D61: $70
    ld d, b                                       ; $6D62: $50
    ld [hl], b                                    ; $6D63: $70
    jp nz, $F1E0                                  ; $6D64: $C2 $E0 $F1

    ldh a, [$78]                                  ; $6D67: $F0 $78
    ld hl, sp+$3C                                 ; $6D69: $F8 $3C
    ld a, h                                       ; $6D6B: $7C
    ld a, [hl+]                                   ; $6D6C: $2A
    ld a, [hl-]                                   ; $6D6D: $3A
    ld a, [hl+]                                   ; $6D6E: $2A
    ld a, [hl+]                                   ; $6D6F: $2A
    rst $38                                       ; $6D70: $FF
    rst $38                                       ; $6D71: $FF
    rst $38                                       ; $6D72: $FF
    rst $38                                       ; $6D73: $FF
    rst $38                                       ; $6D74: $FF
    rst $38                                       ; $6D75: $FF
    rst $38                                       ; $6D76: $FF
    rst $38                                       ; $6D77: $FF
    rst $38                                       ; $6D78: $FF
    rst $38                                       ; $6D79: $FF
    rst $38                                       ; $6D7A: $FF
    rst $38                                       ; $6D7B: $FF
    rst $38                                       ; $6D7C: $FF
    rst $38                                       ; $6D7D: $FF
    rst $38                                       ; $6D7E: $FF
    rst $38                                       ; $6D7F: $FF
    cp c                                          ; $6D80: $B9
    rlca                                          ; $6D81: $07
    rst $10                                       ; $6D82: $D7
    rrca                                          ; $6D83: $0F
    ld e, a                                       ; $6D84: $5F
    adc a                                         ; $6D85: $8F
    ld d, e                                       ; $6D86: $53
    adc a                                         ; $6D87: $8F
    ld d, [hl]                                    ; $6D88: $56
    adc a                                         ; $6D89: $8F
    ld d, b                                       ; $6D8A: $50
    adc [hl]                                      ; $6D8B: $8E
    ret c                                         ; $6D8C: $D8

    ld b, $8E                                     ; $6D8D: $06 $8E
    nop                                           ; $6D8F: $00
    add e                                         ; $6D90: $83
    rst $38                                       ; $6D91: $FF
    rst $38                                       ; $6D92: $FF
    rst $38                                       ; $6D93: $FF
    ldh [$F0], a                                  ; $6D94: $E0 $F0
    rlca                                          ; $6D96: $07
    adc a                                         ; $6D97: $8F
    jr c, jr_060_6E16                             ; $6D98: $38 $7C

    ld b, b                                       ; $6D9A: $40
    ldh [$80], a                                  ; $6D9B: $E0 $80
    call nc, $9494                                ; $6D9D: $D4 $94 $94
    ret nz                                        ; $6DA0: $C0

    rst $38                                       ; $6DA1: $FF
    cp $FF                                        ; $6DA2: $FE $FF
    inc bc                                        ; $6DA4: $03
    rlca                                          ; $6DA5: $07
    ldh a, [$F9]                                  ; $6DA6: $F0 $F9
    inc c                                         ; $6DA8: $0C
    ld e, $02                                     ; $6DA9: $1E $02
    add a                                         ; $6DAB: $87
    add c                                         ; $6DAC: $81
    sub e                                         ; $6DAD: $93
    add c                                         ; $6DAE: $81
    sub c                                         ; $6DAF: $91
    xor $F0                                       ; $6DB0: $EE $F0
    ld [hl], l                                    ; $6DB2: $75
    ld hl, sp-$3B                                 ; $6DB3: $F8 $C5
    ld hl, sp-$0B                                 ; $6DB5: $F8 $F5
    ld hl, sp+$25                                 ; $6DB7: $F8 $25
    ld hl, sp+$05                                 ; $6DB9: $F8 $05
    ld a, b                                       ; $6DBB: $78
    dec c                                         ; $6DBC: $0D
    ld [hl], b                                    ; $6DBD: $70
    jr c, jr_060_6E00                             ; $6DBE: $38 $40

    pop af                                        ; $6DC0: $F1
    ld [hl], a                                    ; $6DC1: $77
    ldh a, [rPCM12]                               ; $6DC2: $F0 $76
    ld a, [c]                                     ; $6DC4: $F2
    ld [hl], a                                    ; $6DC5: $77
    di                                            ; $6DC6: $F3
    daa                                           ; $6DC7: $27
    di                                            ; $6DC8: $F3
    rlca                                          ; $6DC9: $07
    ld h, d                                       ; $6DCA: $62
    ld b, $00                                     ; $6DCB: $06 $00
    rlca                                          ; $6DCD: $07
    ld h, l                                       ; $6DCE: $65
    inc bc                                        ; $6DCF: $03
    adc b                                         ; $6DD0: $88
    ldh a, [$C8]                                  ; $6DD1: $F0 $C8
    ldh a, [$A8]                                  ; $6DD3: $F0 $A8
    ldh a, [$8F]                                  ; $6DD5: $F0 $8F
    ldh a, [$CF]                                  ; $6DD7: $F0 $CF
    rst $30                                       ; $6DD9: $F7
    rst $00                                       ; $6DDA: $C7
    ld hl, sp-$10                                 ; $6DDB: $F8 $F0
    rst $38                                       ; $6DDD: $FF
    db $EC                                        ; $6DDE: $EC
    rst $38                                       ; $6DDF: $FF
    jr jr_060_6DF1                                ; $6DE0: $18 $0F

    db $10                                        ; $6DE2: $10
    rrca                                          ; $6DE3: $0F
    jr jr_060_6DF5                                ; $6DE4: $18 $0F

    db $FC                                        ; $6DE6: $FC
    rrca                                          ; $6DE7: $0F
    ld e, $EF                                     ; $6DE8: $1E $EF
    db $ED                                        ; $6DEA: $ED
    rra                                           ; $6DEB: $1F
    ld a, b                                       ; $6DEC: $78
    rst $38                                       ; $6DED: $FF
    nop                                           ; $6DEE: $00
    rst $38                                       ; $6DEF: $FF
    adc a                                         ; $6DF0: $8F

jr_060_6DF1:
    xor $0F                                       ; $6DF1: $EE $0F
    ld l, [hl]                                    ; $6DF3: $6E
    ld c, a                                       ; $6DF4: $4F

jr_060_6DF5:
    xor $CF                                       ; $6DF5: $EE $CF
    db $E4                                        ; $6DF7: $E4
    rst $08                                       ; $6DF8: $CF
    ldh [rDMA], a                                 ; $6DF9: $E0 $46
    ld h, b                                       ; $6DFB: $60
    nop                                           ; $6DFC: $00
    ldh [$A6], a                                  ; $6DFD: $E0 $A6
    ret z                                         ; $6DFF: $C8

jr_060_6E00:
    ld de, $0E0B                                  ; $6E00: $11 $0B $0E
    inc bc                                        ; $6E03: $03
    ld b, $08                                     ; $6E04: $06 $08
    jr jr_060_6E08                                ; $6E06: $18 $00

jr_060_6E08:
    ld a, $61                                     ; $6E08: $3E $61
    ld b, e                                       ; $6E0A: $43
    add sp, $49                                   ; $6E0B: $E8 $49
    sub c                                         ; $6E0D: $91
    inc c                                         ; $6E0E: $0C
    add hl, sp                                    ; $6E0F: $39
    nop                                           ; $6E10: $00
    add b                                         ; $6E11: $80
    nop                                           ; $6E12: $00
    nop                                           ; $6E13: $00
    jr nc, jr_060_6E86                            ; $6E14: $30 $70

jr_060_6E16:
    ld h, d                                       ; $6E16: $62
    or $84                                        ; $6E17: $F6 $84
    xor $F8                                       ; $6E19: $EE $F8
    inc c                                         ; $6E1B: $0C
    ld [$ECD0], sp                                ; $6E1C: $08 $D0 $EC
    ret c                                         ; $6E1F: $D8

    ld [bc], a                                    ; $6E20: $02
    ld bc, $0001                                  ; $6E21: $01 $01 $00
    nop                                           ; $6E24: $00
    ld bc, $0201                                  ; $6E25: $01 $01 $02
    ld [hl], l                                    ; $6E28: $75
    ld a, [hl-]                                   ; $6E29: $3A
    ld l, b                                       ; $6E2A: $68
    di                                            ; $6E2B: $F3
    sub e                                         ; $6E2C: $93
    and $09                                       ; $6E2D: $E6 $09
    rlca                                          ; $6E2F: $07
    jr nz, jr_060_6EA2                            ; $6E30: $20 $70

    ret nz                                        ; $6E32: $C0

    ld h, b                                       ; $6E33: $60
    add $0E                                       ; $6E34: $C6 $0E
    inc c                                         ; $6E36: $0C
    ld e, $D0                                     ; $6E37: $1E $D0
    inc a                                         ; $6E39: $3C
    ld a, h                                       ; $6E3A: $7C
    nop                                           ; $6E3B: $00
    ld hl, $9C38                                  ; $6E3C: $21 $38 $9C
    jr c, jr_060_6E41                             ; $6E3F: $38 $00

jr_060_6E41:
    nop                                           ; $6E41: $00
    rst $38                                       ; $6E42: $FF
    nop                                           ; $6E43: $00
    ld d, l                                       ; $6E44: $55
    rst $38                                       ; $6E45: $FF
    rst $38                                       ; $6E46: $FF
    rst $38                                       ; $6E47: $FF
    rst $38                                       ; $6E48: $FF
    rst $38                                       ; $6E49: $FF
    db $FD                                        ; $6E4A: $FD
    rst $38                                       ; $6E4B: $FF
    nop                                           ; $6E4C: $00
    rst $38                                       ; $6E4D: $FF
    ld a, [$0000]                                 ; $6E4E: $FA $00 $00
    nop                                           ; $6E51: $00
    rst $38                                       ; $6E52: $FF
    nop                                           ; $6E53: $00
    ld d, l                                       ; $6E54: $55
    rst $38                                       ; $6E55: $FF
    rst $38                                       ; $6E56: $FF
    rst $38                                       ; $6E57: $FF
    rst $38                                       ; $6E58: $FF
    rst $38                                       ; $6E59: $FF
    db $FD                                        ; $6E5A: $FD
    rst $38                                       ; $6E5B: $FF
    nop                                           ; $6E5C: $00
    rst $38                                       ; $6E5D: $FF
    ld a, [$4000]                                 ; $6E5E: $FA $00 $40
    ccf                                           ; $6E61: $3F
    cp a                                          ; $6E62: $BF
    ld a, a                                       ; $6E63: $7F
    ld e, a                                       ; $6E64: $5F
    rst $38                                       ; $6E65: $FF
    ccf                                           ; $6E66: $3F
    rst $38                                       ; $6E67: $FF
    ld a, a                                       ; $6E68: $7F
    rst $38                                       ; $6E69: $FF
    ld a, a                                       ; $6E6A: $7F
    rst $38                                       ; $6E6B: $FF
    ld a, a                                       ; $6E6C: $7F
    rst $38                                       ; $6E6D: $FF
    ld a, a                                       ; $6E6E: $7F
    rst $38                                       ; $6E6F: $FF
    ld [bc], a                                    ; $6E70: $02
    db $FC                                        ; $6E71: $FC
    db $FD                                        ; $6E72: $FD
    cp $FE                                        ; $6E73: $FE $FE
    rst $38                                       ; $6E75: $FF
    cp $FF                                        ; $6E76: $FE $FF
    cp $FF                                        ; $6E78: $FE $FF
    db $FC                                        ; $6E7A: $FC
    rst $38                                       ; $6E7B: $FF
    db $FD                                        ; $6E7C: $FD
    cp $FD                                        ; $6E7D: $FE $FD
    cp $62                                        ; $6E7F: $FE $62
    nop                                           ; $6E81: $00
    ld hl, sp+$00                                 ; $6E82: $F8 $00
    db $FC                                        ; $6E84: $FC
    nop                                           ; $6E85: $00

jr_060_6E86:
    db $FC                                        ; $6E86: $FC
    nop                                           ; $6E87: $00
    ld sp, hl                                     ; $6E88: $F9
    nop                                           ; $6E89: $00
    ld a, [c]                                     ; $6E8A: $F2
    ld bc, $0708                                  ; $6E8B: $01 $08 $07
    ld bc, $9400                                  ; $6E8E: $01 $00 $94
    nop                                           ; $6E91: $00
    sub h                                         ; $6E92: $94
    nop                                           ; $6E93: $00
    sub h                                         ; $6E94: $94
    nop                                           ; $6E95: $00
    sub h                                         ; $6E96: $94
    nop                                           ; $6E97: $00
    sub h                                         ; $6E98: $94
    ld l, e                                       ; $6E99: $6B
    ld l, e                                       ; $6E9A: $6B
    rst $38                                       ; $6E9B: $FF
    rst $38                                       ; $6E9C: $FF
    rst $38                                       ; $6E9D: $FF
    adc a                                         ; $6E9E: $8F
    ld a, a                                       ; $6E9F: $7F
    sub c                                         ; $6EA0: $91
    nop                                           ; $6EA1: $00

jr_060_6EA2:
    sub c                                         ; $6EA2: $91
    nop                                           ; $6EA3: $00
    sub c                                         ; $6EA4: $91
    nop                                           ; $6EA5: $00
    sub c                                         ; $6EA6: $91
    nop                                           ; $6EA7: $00
    sub c                                         ; $6EA8: $91
    ld l, [hl]                                    ; $6EA9: $6E
    sbc h                                         ; $6EAA: $9C
    ld l, a                                       ; $6EAB: $6F
    ld l, a                                       ; $6EAC: $6F
    rst $38                                       ; $6EAD: $FF
    db $FC                                        ; $6EAE: $FC
    rst $38                                       ; $6EAF: $FF
    ld h, e                                       ; $6EB0: $63
    nop                                           ; $6EB1: $00
    ld c, a                                       ; $6EB2: $4F
    nop                                           ; $6EB3: $00
    rra                                           ; $6EB4: $1F
    nop                                           ; $6EB5: $00
    rra                                           ; $6EB6: $1F
    nop                                           ; $6EB7: $00
    sbc a                                         ; $6EB8: $9F
    nop                                           ; $6EB9: $00
    ld [hl], a                                    ; $6EBA: $77
    add b                                         ; $6EBB: $80
    ld [$04F0], sp                                ; $6EBC: $08 $F0 $04
    ld hl, sp-$4F                                 ; $6EBF: $F8 $B1
    ld [hl], e                                    ; $6EC1: $73
    add sp, $72                                   ; $6EC2: $E8 $72
    adc b                                         ; $6EC4: $88
    ld [hl], e                                    ; $6EC5: $73
    adc c                                         ; $6EC6: $89
    ld [hl], e                                    ; $6EC7: $73
    adc c                                         ; $6EC8: $89
    ld [hl], e                                    ; $6EC9: $73
    add b                                         ; $6ECA: $80
    ld [hl], d                                    ; $6ECB: $72
    or b                                          ; $6ECC: $B0
    ld b, e                                       ; $6ECD: $43
    ldh a, [$03]                                  ; $6ECE: $F0 $03
    ldh a, [rIE]                                  ; $6ED0: $F0 $FF
    ld hl, sp-$01                                 ; $6ED2: $F8 $FF
    db $FC                                        ; $6ED4: $FC
    rst $38                                       ; $6ED5: $FF
    cp $FF                                        ; $6ED6: $FE $FF
    rst $38                                       ; $6ED8: $FF
    rst $38                                       ; $6ED9: $FF
    rst $38                                       ; $6EDA: $FF
    rst $38                                       ; $6EDB: $FF
    rst $38                                       ; $6EDC: $FF
    rst $38                                       ; $6EDD: $FF
    rst $38                                       ; $6EDE: $FF
    rst $38                                       ; $6EDF: $FF
    ccf                                           ; $6EE0: $3F
    rst $38                                       ; $6EE1: $FF
    ccf                                           ; $6EE2: $3F
    rst $38                                       ; $6EE3: $FF
    rra                                           ; $6EE4: $1F
    rst $38                                       ; $6EE5: $FF
    rra                                           ; $6EE6: $1F
    rst $38                                       ; $6EE7: $FF
    adc a                                         ; $6EE8: $8F
    rst $38                                       ; $6EE9: $FF
    rst $08                                       ; $6EEA: $CF
    rst $38                                       ; $6EEB: $FF
    rst $08                                       ; $6EEC: $CF
    rst $38                                       ; $6EED: $FF
    rst $20                                       ; $6EEE: $E7
    rst $38                                       ; $6EEF: $FF
    adc l                                         ; $6EF0: $8D
    adc $17                                       ; $6EF1: $CE $17
    ld c, [hl]                                    ; $6EF3: $4E
    ld de, $91CE                                  ; $6EF4: $11 $CE $91
    adc $91                                       ; $6EF7: $CE $91
    adc $09                                       ; $6EF9: $CE $09
    ld b, [hl]                                    ; $6EFB: $46
    dec c                                         ; $6EFC: $0D
    jp nz, $C00F                                  ; $6EFD: $C2 $0F $C0

    ld l, h                                       ; $6F00: $6C
    inc e                                         ; $6F01: $1C
    inc h                                         ; $6F02: $24
    ld c, [hl]                                    ; $6F03: $4E
    ld [hl+], a                                   ; $6F04: $22
    ld b, $40                                     ; $6F05: $06 $40
    jr nz, jr_060_6F09                            ; $6F07: $20 $00

jr_060_6F09:
    ld b, b                                       ; $6F09: $40
    nop                                           ; $6F0A: $00
    jr nz, jr_060_6F43                            ; $6F0B: $20 $36

    ld [$00C1], sp                                ; $6F0D: $08 $C1 $00
    ld l, [hl]                                    ; $6F10: $6E
    db $FC                                        ; $6F11: $FC
    inc b                                         ; $6F12: $04
    ld l, [hl]                                    ; $6F13: $6E
    ld [bc], a                                    ; $6F14: $02
    ld b, $00                                     ; $6F15: $06 $00
    nop                                           ; $6F17: $00
    nop                                           ; $6F18: $00
    nop                                           ; $6F19: $00
    nop                                           ; $6F1A: $00
    nop                                           ; $6F1B: $00
    nop                                           ; $6F1C: $00
    nop                                           ; $6F1D: $00
    ret nc                                        ; $6F1E: $D0

    nop                                           ; $6F1F: $00
    add hl, bc                                    ; $6F20: $09
    inc bc                                        ; $6F21: $03
    db $10                                        ; $6F22: $10
    add hl, bc                                    ; $6F23: $09
    jr nz, jr_060_6F36                            ; $6F24: $20 $10

    nop                                           ; $6F26: $00
    jr nz, jr_060_6F49                            ; $6F27: $20 $20

    jr @+$5A                                      ; $6F29: $18 $58

    ld b, $21                                     ; $6F2B: $06 $21
    nop                                           ; $6F2D: $00
    ld [bc], a                                    ; $6F2E: $02
    nop                                           ; $6F2F: $00
    adc l                                         ; $6F30: $8D
    sbc h                                         ; $6F31: $9C
    add b                                         ; $6F32: $80
    call z, $C042                                 ; $6F33: $CC $42 $C0

jr_060_6F36:
    nop                                           ; $6F36: $00
    nop                                           ; $6F37: $00
    ld c, b                                       ; $6F38: $48
    nop                                           ; $6F39: $00
    inc d                                         ; $6F3A: $14
    nop                                           ; $6F3B: $00
    ret z                                         ; $6F3C: $C8

    nop                                           ; $6F3D: $00
    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    db $E3                                        ; $6F42: $E3

jr_060_6F43:
    nop                                           ; $6F43: $00
    ld d, l                                       ; $6F44: $55
    db $E3                                        ; $6F45: $E3
    db $E3                                        ; $6F46: $E3
    rst $30                                       ; $6F47: $F7
    db $E3                                        ; $6F48: $E3

jr_060_6F49:
    rst $30                                       ; $6F49: $F7
    pop hl                                        ; $6F4A: $E1
    rst $30                                       ; $6F4B: $F7
    ld d, h                                       ; $6F4C: $54
    and e                                         ; $6F4D: $A3
    and d                                         ; $6F4E: $A2
    nop                                           ; $6F4F: $00
    nop                                           ; $6F50: $00
    nop                                           ; $6F51: $00
    db $E3                                        ; $6F52: $E3
    nop                                           ; $6F53: $00
    ld d, l                                       ; $6F54: $55
    db $E3                                        ; $6F55: $E3
    db $E3                                        ; $6F56: $E3
    rst $30                                       ; $6F57: $F7
    db $E3                                        ; $6F58: $E3
    rst $30                                       ; $6F59: $F7
    pop hl                                        ; $6F5A: $E1
    rst $30                                       ; $6F5B: $F7
    ld d, h                                       ; $6F5C: $54
    and e                                         ; $6F5D: $A3
    and d                                         ; $6F5E: $A2
    nop                                           ; $6F5F: $00
    ccf                                           ; $6F60: $3F
    ld a, a                                       ; $6F61: $7F
    cp a                                          ; $6F62: $BF
    ld a, a                                       ; $6F63: $7F
    ld a, a                                       ; $6F64: $7F
    rst $38                                       ; $6F65: $FF
    ld a, a                                       ; $6F66: $7F
    rst $38                                       ; $6F67: $FF
    cpl                                           ; $6F68: $2F
    rst $38                                       ; $6F69: $FF
    sub a                                         ; $6F6A: $97
    ld a, a                                       ; $6F6B: $7F
    ld [$5477], sp                                ; $6F6C: $08 $77 $54
    dec hl                                        ; $6F6F: $2B
    cp $FF                                        ; $6F70: $FE $FF
    cp $FF                                        ; $6F72: $FE $FF
    cp $FF                                        ; $6F74: $FE $FF
    cp $FF                                        ; $6F76: $FE $FF
    db $FC                                        ; $6F78: $FC
    rst $38                                       ; $6F79: $FF
    pop hl                                        ; $6F7A: $E1
    cp $03                                        ; $6F7B: $FE $03
    db $FC                                        ; $6F7D: $FC
    ld d, [hl]                                    ; $6F7E: $56
    xor b                                         ; $6F7F: $A8
    nop                                           ; $6F80: $00
    nop                                           ; $6F81: $00
    ld bc, $6000                                  ; $6F82: $01 $00 $60
    rra                                           ; $6F85: $1F
    nop                                           ; $6F86: $00
    rst $38                                       ; $6F87: $FF
    rst $08                                       ; $6F88: $CF
    nop                                           ; $6F89: $00
    add b                                         ; $6F8A: $80
    nop                                           ; $6F8B: $00
    ld d, l                                       ; $6F8C: $55
    nop                                           ; $6F8D: $00
    xor d                                         ; $6F8E: $AA
    nop                                           ; $6F8F: $00
    ld h, b                                       ; $6F90: $60
    rra                                           ; $6F91: $1F
    add b                                         ; $6F92: $80
    ld a, a                                       ; $6F93: $7F
    nop                                           ; $6F94: $00
    rst $38                                       ; $6F95: $FF
    nop                                           ; $6F96: $00
    rst $38                                       ; $6F97: $FF
    rst $38                                       ; $6F98: $FF
    nop                                           ; $6F99: $00
    nop                                           ; $6F9A: $00
    nop                                           ; $6F9B: $00
    ld l, c                                       ; $6F9C: $69
    nop                                           ; $6F9D: $00
    or [hl]                                       ; $6F9E: $B6
    nop                                           ; $6F9F: $00
    nop                                           ; $6FA0: $00
    rst $38                                       ; $6FA1: $FF
    nop                                           ; $6FA2: $00
    rst $38                                       ; $6FA3: $FF
    nop                                           ; $6FA4: $00
    rst $38                                       ; $6FA5: $FF
    rlca                                          ; $6FA6: $07
    ld hl, sp-$10                                 ; $6FA7: $F8 $F0
    nop                                           ; $6FA9: $00
    nop                                           ; $6FAA: $00
    nop                                           ; $6FAB: $00
    ld d, l                                       ; $6FAC: $55
    nop                                           ; $6FAD: $00
    xor d                                         ; $6FAE: $AA
    nop                                           ; $6FAF: $00
    ld c, b                                       ; $6FB0: $48
    or b                                          ; $6FB1: $B0
    and b                                         ; $6FB2: $A0
    ld b, b                                       ; $6FB3: $40
    ld d, b                                       ; $6FB4: $50
    add b                                         ; $6FB5: $80
    jr nz, jr_060_6FB8                            ; $6FB6: $20 $00

jr_060_6FB8:
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    ld [hl], $00                                  ; $6FBA: $36 $00
    ld c, c                                       ; $6FBC: $49
    nop                                           ; $6FBD: $00
    and [hl]                                      ; $6FBE: $A6
    nop                                           ; $6FBF: $00
    ld h, c                                       ; $6FC0: $61
    rla                                           ; $6FC1: $17
    add c                                         ; $6FC2: $81
    rlca                                          ; $6FC3: $07
    ld [hl], b                                    ; $6FC4: $70
    ld [bc], a                                    ; $6FC5: $02
    ret c                                         ; $6FC6: $D8

    ld h, e                                       ; $6FC7: $63
    xor b                                         ; $6FC8: $A8
    ld [hl], e                                    ; $6FC9: $73
    cp b                                          ; $6FCA: $B8
    ld b, b                                       ; $6FCB: $40
    ldh a, [rP1]                                  ; $6FCC: $F0 $00
    nop                                           ; $6FCE: $00
    nop                                           ; $6FCF: $00
    rst $38                                       ; $6FD0: $FF
    rst $38                                       ; $6FD1: $FF
    rst $38                                       ; $6FD2: $FF
    rst $38                                       ; $6FD3: $FF
    ld a, a                                       ; $6FD4: $7F
    rst $38                                       ; $6FD5: $FF
    cpl                                           ; $6FD6: $2F
    rst $38                                       ; $6FD7: $FF
    nop                                           ; $6FD8: $00
    rst $38                                       ; $6FD9: $FF
    nop                                           ; $6FDA: $00
    nop                                           ; $6FDB: $00
    nop                                           ; $6FDC: $00
    nop                                           ; $6FDD: $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    rst $20                                       ; $6FE0: $E7
    rst $38                                       ; $6FE1: $FF
    rst $30                                       ; $6FE2: $F7
    rst $38                                       ; $6FE3: $FF
    rst $30                                       ; $6FE4: $F7
    rst $38                                       ; $6FE5: $FF
    ld h, d                                       ; $6FE6: $62
    rst $38                                       ; $6FE7: $FF
    nop                                           ; $6FE8: $00
    rst $38                                       ; $6FE9: $FF
    nop                                           ; $6FEA: $00
    nop                                           ; $6FEB: $00
    nop                                           ; $6FEC: $00
    nop                                           ; $6FED: $00
    nop                                           ; $6FEE: $00
    nop                                           ; $6FEF: $00
    add [hl]                                      ; $6FF0: $86
    add sp, -$7F                                  ; $6FF1: $E8 $81
    ldh [rIF], a                                  ; $6FF3: $E0 $0F
    ld b, b                                       ; $6FF5: $40
    dec de                                        ; $6FF6: $1B
    add $15                                       ; $6FF7: $C6 $15
    adc $1D                                       ; $6FF9: $CE $1D
    ld [bc], a                                    ; $6FFB: $02
    rrca                                          ; $6FFC: $0F
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    ld b, $00                                     ; $7000: $06 $00
    rrca                                          ; $7002: $0F
    ld b, $17                                     ; $7003: $06 $17
    rrca                                          ; $7005: $0F
    dec sp                                        ; $7006: $3B
    rra                                           ; $7007: $1F
    add hl, sp                                    ; $7008: $39
    rra                                           ; $7009: $1F
    dec sp                                        ; $700A: $3B
    dec e                                         ; $700B: $1D
    dec e                                         ; $700C: $1D
    ld a, [bc]                                    ; $700D: $0A
    ld a, [hl+]                                   ; $700E: $2A
    dec d                                         ; $700F: $15
    ldh a, [rP1]                                  ; $7010: $F0 $00
    sbc b                                         ; $7012: $98
    ldh a, [$8C]                                  ; $7013: $F0 $8C
    ld hl, sp-$32                                 ; $7015: $F8 $CE
    db $FC                                        ; $7017: $FC
    sbc $FC                                       ; $7018: $DE $FC
    db $FC                                        ; $701A: $FC
    jr c, @+$3A                                   ; $701B: $38 $38

    ret nc                                        ; $701D: $D0

    ld d, h                                       ; $701E: $54
    xor b                                         ; $701F: $A8
    ld b, $00                                     ; $7020: $06 $00
    dec bc                                        ; $7022: $0B
    ld b, $1D                                     ; $7023: $06 $1D
    rrca                                          ; $7025: $0F
    ccf                                           ; $7026: $3F
    ld e, $3F                                     ; $7027: $1E $3F
    rra                                           ; $7029: $1F
    ccf                                           ; $702A: $3F
    rra                                           ; $702B: $1F
    rra                                           ; $702C: $1F
    rrca                                          ; $702D: $0F
    cpl                                           ; $702E: $2F
    rla                                           ; $702F: $17
    ldh a, [rP1]                                  ; $7030: $F0 $00
    sbc b                                         ; $7032: $98
    ldh a, [rNR32]                                ; $7033: $F0 $1C
    ld hl, sp-$02                                 ; $7035: $F8 $FE
    db $FC                                        ; $7037: $FC
    cp $FC                                        ; $7038: $FE $FC
    db $FC                                        ; $703A: $FC
    ld hl, sp-$08                                 ; $703B: $F8 $F8
    ldh a, [$F4]                                  ; $703D: $F0 $F4
    add sp, $1F                                   ; $703F: $E8 $1F
    nop                                           ; $7041: $00
    ccf                                           ; $7042: $3F
    rra                                           ; $7043: $1F
    ld b, c                                       ; $7044: $41
    ccf                                           ; $7045: $3F
    ld [hl], b                                    ; $7046: $70
    ccf                                           ; $7047: $3F
    ld a, h                                       ; $7048: $7C
    ccf                                           ; $7049: $3F
    ccf                                           ; $704A: $3F
    ld e, $1F                                     ; $704B: $1E $1F
    ld [bc], a                                    ; $704D: $02
    rrca                                          ; $704E: $0F
    nop                                           ; $704F: $00
    ldh [rP1], a                                  ; $7050: $E0 $00
    ldh a, [$E0]                                  ; $7052: $F0 $E0
    add sp, -$30                                  ; $7054: $E8 $D0
    ld a, h                                       ; $7056: $7C
    sbc b                                         ; $7057: $98
    sbc h                                         ; $7058: $9C
    ld l, b                                       ; $7059: $68
    ld e, h                                       ; $705A: $5C
    xor b                                         ; $705B: $A8
    ld e, b                                       ; $705C: $58
    and b                                         ; $705D: $A0
    db $10                                        ; $705E: $10
    ldh [$1F], a                                  ; $705F: $E0 $1F
    nop                                           ; $7061: $00
    ccf                                           ; $7062: $3F
    rra                                           ; $7063: $1F
    ld b, c                                       ; $7064: $41
    ccf                                           ; $7065: $3F
    ld a, b                                       ; $7066: $78
    ccf                                           ; $7067: $3F
    ld a, l                                       ; $7068: $7D
    ld a, $3E                                     ; $7069: $3E $3E
    dec b                                         ; $706B: $05
    dec d                                         ; $706C: $15
    ld a, [bc]                                    ; $706D: $0A
    add hl, bc                                    ; $706E: $09
    ld b, $E0                                     ; $706F: $06 $E0
    nop                                           ; $7071: $00
    ldh a, [$A0]                                  ; $7072: $F0 $A0
    add sp, -$30                                  ; $7074: $E8 $D0
    db $FC                                        ; $7076: $FC
    ret c                                         ; $7077: $D8

    db $FC                                        ; $7078: $FC
    sbc b                                         ; $7079: $98
    sbc h                                         ; $707A: $9C
    ld l, b                                       ; $707B: $68
    jr c, @-$3E                                   ; $707C: $38 $C0

    jr nc, @-$3E                                  ; $707E: $30 $C0

    dec e                                         ; $7080: $1D
    nop                                           ; $7081: $00
    daa                                           ; $7082: $27
    dec e                                         ; $7083: $1D
    ld h, a                                       ; $7084: $67
    ld a, $73                                     ; $7085: $3E $73
    ccf                                           ; $7087: $3F
    ld [hl], a                                    ; $7088: $77
    dec a                                         ; $7089: $3D
    dec a                                         ; $708A: $3D
    ld a, [bc]                                    ; $708B: $0A
    ld a, [hl+]                                   ; $708C: $2A
    dec d                                         ; $708D: $15
    ld [de], a                                    ; $708E: $12
    dec c                                         ; $708F: $0D
    ldh [rP1], a                                  ; $7090: $E0 $00
    ret nc                                        ; $7092: $D0

    ldh [$98], a                                  ; $7093: $E0 $98
    ldh a, [$9C]                                  ; $7095: $F0 $9C
    ld a, b                                       ; $7097: $78
    call c, $3C38                                 ; $7098: $DC $38 $3C
    ret z                                         ; $709B: $C8

    ld e, b                                       ; $709C: $58
    and b                                         ; $709D: $A0
    ld d, b                                       ; $709E: $50
    and b                                         ; $709F: $A0
    dec e                                         ; $70A0: $1D
    nop                                           ; $70A1: $00
    daa                                           ; $70A2: $27
    dec e                                         ; $70A3: $1D
    ld h, a                                       ; $70A4: $67
    ld a, $73                                     ; $70A5: $3E $73
    ccf                                           ; $70A7: $3F
    ld [hl], e                                    ; $70A8: $73
    ccf                                           ; $70A9: $3F
    ccf                                           ; $70AA: $3F
    dec e                                         ; $70AB: $1D
    dec a                                         ; $70AC: $3D
    ld [de], a                                    ; $70AD: $12
    ld a, [de]                                    ; $70AE: $1A
    dec b                                         ; $70AF: $05
    ldh [rP1], a                                  ; $70B0: $E0 $00
    ret nc                                        ; $70B2: $D0

    ldh [$98], a                                  ; $70B3: $E0 $98
    ldh a, [$9C]                                  ; $70B5: $F0 $9C
    ld hl, sp-$24                                 ; $70B7: $F8 $DC
    ld a, b                                       ; $70B9: $78
    db $FC                                        ; $70BA: $FC
    jr c, @+$3A                                   ; $70BB: $38 $38

    ret nc                                        ; $70BD: $D0

    ld d, b                                       ; $70BE: $50
    and b                                         ; $70BF: $A0
    rlca                                          ; $70C0: $07
    nop                                           ; $70C1: $00
    rrca                                          ; $70C2: $0F
    rlca                                          ; $70C3: $07
    dec de                                        ; $70C4: $1B
    dec c                                         ; $70C5: $0D
    ld e, $0F                                     ; $70C6: $1E $0F
    rra                                           ; $70C8: $1F
    rrca                                          ; $70C9: $0F
    rra                                           ; $70CA: $1F
    rrca                                          ; $70CB: $0F
    rra                                           ; $70CC: $1F
    rlca                                          ; $70CD: $07
    rrca                                          ; $70CE: $0F
    inc bc                                        ; $70CF: $03
    ld hl, sp+$00                                 ; $70D0: $F8 $00

jr_060_70D2:
    and $F8                                       ; $70D2: $E6 $F8
    add e                                         ; $70D4: $83
    cp $7F                                        ; $70D5: $FE $7F
    cp $FF                                        ; $70D7: $FE $FF
    xor $FF                                       ; $70D9: $EE $FF
    jp z, $B0CA                                   ; $70DB: $CA $CA $B0

    sbc b                                         ; $70DE: $98
    ld h, b                                       ; $70DF: $60
    inc a                                         ; $70E0: $3C
    inc bc                                        ; $70E1: $03
    ld a, a                                       ; $70E2: $7F
    inc c                                         ; $70E3: $0C
    rst $38                                       ; $70E4: $FF
    ccf                                           ; $70E5: $3F
    rst $38                                       ; $70E6: $FF
    ccf                                           ; $70E7: $3F
    ld a, a                                       ; $70E8: $7F
    dec sp                                        ; $70E9: $3B
    ld a, a                                       ; $70EA: $7F
    dec sp                                        ; $70EB: $3B
    ld a, a                                       ; $70EC: $7F
    dec a                                         ; $70ED: $3D
    ccf                                           ; $70EE: $3F
    dec c                                         ; $70EF: $0D
    db $10                                        ; $70F0: $10
    ldh [$E0], a                                  ; $70F1: $E0 $E0
    nop                                           ; $70F3: $00

jr_060_70F4:
    ldh a, [$E0]                                  ; $70F4: $F0 $E0
    ldh a, [$E0]                                  ; $70F6: $F0 $E0

jr_060_70F8:
    ldh a, [$E0]                                  ; $70F8: $F0 $E0
    ld hl, sp-$40                                 ; $70FA: $F8 $C0
    ld hl, sp-$30                                 ; $70FC: $F8 $D0
    ldh a, [$80]                                  ; $70FE: $F0 $80
    jr c, jr_060_7109                             ; $7100: $38 $07

    ld a, a                                       ; $7102: $7F
    inc c                                         ; $7103: $0C
    rst $38                                       ; $7104: $FF
    ccf                                           ; $7105: $3F
    rst $38                                       ; $7106: $FF
    ccf                                           ; $7107: $3F
    ld a, a                                       ; $7108: $7F

jr_060_7109:
    dec sp                                        ; $7109: $3B

jr_060_710A:
    ld a, a                                       ; $710A: $7F
    dec sp                                        ; $710B: $3B
    ld a, a                                       ; $710C: $7F
    dec a                                         ; $710D: $3D
    ccf                                           ; $710E: $3F
    dec c                                         ; $710F: $0D
    jr nz, jr_060_70D2                            ; $7110: $20 $C0

    ldh [rP1], a                                  ; $7112: $E0 $00
    ldh a, [$E0]                                  ; $7114: $F0 $E0
    ldh a, [$E0]                                  ; $7116: $F0 $E0
    ld hl, sp-$30                                 ; $7118: $F8 $D0
    ld hl, sp-$30                                 ; $711A: $F8 $D0
    ld hl, sp-$30                                 ; $711C: $F8 $D0
    ldh a, [$80]                                  ; $711E: $F0 $80
    ld a, [hl-]                                   ; $7120: $3A
    dec b                                         ; $7121: $05
    ld a, h                                       ; $7122: $7C
    dec de                                        ; $7123: $1B
    rst $38                                       ; $7124: $FF
    jr c, @+$01                                   ; $7125: $38 $FF

    ld h, $7F                                     ; $7127: $26 $7F
    ld a, $3F                                     ; $7129: $3E $3F
    inc e                                         ; $712B: $1C
    ccf                                           ; $712C: $3F
    dec de                                        ; $712D: $1B
    rra                                           ; $712E: $1F
    rlca                                          ; $712F: $07
    ld d, b                                       ; $7130: $50
    and b                                         ; $7131: $A0
    jr nz, jr_060_70F4                            ; $7132: $20 $C0

    ldh a, [rP1]                                  ; $7134: $F0 $00
    jr nc, jr_060_70F8                            ; $7136: $30 $C0

    jr c, jr_060_710A                             ; $7138: $38 $D0

    ld hl, sp+$10                                 ; $713A: $F8 $10
    ld hl, sp-$30                                 ; $713C: $F8 $D0
    ldh a, [$80]                                  ; $713E: $F0 $80
    inc a                                         ; $7140: $3C
    inc bc                                        ; $7141: $03
    ld a, a                                       ; $7142: $7F
    inc c                                         ; $7143: $0C
    rst $38                                       ; $7144: $FF
    ccf                                           ; $7145: $3F
    rst $38                                       ; $7146: $FF
    ccf                                           ; $7147: $3F
    ld a, a                                       ; $7148: $7F
    dec sp                                        ; $7149: $3B
    ld a, a                                       ; $714A: $7F
    inc sp                                        ; $714B: $33
    ld [hl], e                                    ; $714C: $73
    dec l                                         ; $714D: $2D
    inc sp                                        ; $714E: $33
    dec c                                         ; $714F: $0D
    db $10                                        ; $7150: $10
    ldh [$E0], a                                  ; $7151: $E0 $E0
    nop                                           ; $7153: $00
    ldh a, [$E0]                                  ; $7154: $F0 $E0
    ldh a, [$E0]                                  ; $7156: $F0 $E0
    ldh a, [$C0]                                  ; $7158: $F0 $C0
    add sp, -$30                                  ; $715A: $E8 $D0
    add sp, -$30                                  ; $715C: $E8 $D0
    ldh a, [$80]                                  ; $715E: $F0 $80
    rlca                                          ; $7160: $07
    nop                                           ; $7161: $00
    rra                                           ; $7162: $1F
    rlca                                          ; $7163: $07
    ccf                                           ; $7164: $3F
    ld d, $3F                                     ; $7165: $16 $3F
    dec de                                        ; $7167: $1B
    ccf                                           ; $7168: $3F
    jr @+$41                                      ; $7169: $18 $3F

    rla                                           ; $716B: $17
    ccf                                           ; $716C: $3F
    rlca                                          ; $716D: $07
    rra                                           ; $716E: $1F
    inc bc                                        ; $716F: $03
    ldh a, [rP1]                                  ; $7170: $F0 $00
    ldh a, [rLCDC]                                ; $7172: $F0 $40
    ld hl, sp-$50                                 ; $7174: $F8 $B0
    ld hl, sp+$70                                 ; $7176: $F8 $70
    ld hl, sp-$50                                 ; $7178: $F8 $B0
    ld hl, sp-$50                                 ; $717A: $F8 $B0
    db $F4                                        ; $717C: $F4
    ret z                                         ; $717D: $C8

    db $E4                                        ; $717E: $E4
    ret c                                         ; $717F: $D8

    ld hl, sp+$00                                 ; $7180: $F8 $00
    ld hl, sp+$30                                 ; $7182: $F8 $30
    db $FC                                        ; $7184: $FC

jr_060_7185:
    ret z                                         ; $7185: $C8

    db $FC                                        ; $7186: $FC
    jr c, jr_060_7185                             ; $7187: $38 $FC

    ld hl, sp-$04                                 ; $7189: $F8 $FC
    add sp, -$04                                  ; $718B: $E8 $FC
    add sp, -$08                                  ; $718D: $E8 $F8
    ldh a, [rP1]                                  ; $718F: $F0 $00
    nop                                           ; $7191: $00
    db $FC                                        ; $7192: $FC
    db $10                                        ; $7193: $10
    cp $CC                                        ; $7194: $FE $CC
    db $FD                                        ; $7196: $FD
    ld a, [hl-]                                   ; $7197: $3A
    db $FD                                        ; $7198: $FD
    ld a, [$E0FE]                                 ; $7199: $FA $FE $E0
    ldh a, [$E0]                                  ; $719C: $F0 $E0
    ldh [rP1], a                                  ; $719E: $E0 $00
    ld a, [de]                                    ; $71A0: $1A
    dec b                                         ; $71A1: $05
    inc b                                         ; $71A2: $04
    inc bc                                        ; $71A3: $03
    rrca                                          ; $71A4: $0F
    inc b                                         ; $71A5: $04
    rra                                           ; $71A6: $1F
    rrca                                          ; $71A7: $0F
    rra                                           ; $71A8: $1F
    ld bc, $0609                                  ; $71A9: $01 $09 $06
    add hl, bc                                    ; $71AC: $09
    ld b, $06                                     ; $71AD: $06 $06
    nop                                           ; $71AF: $00
    nop                                           ; $71B0: $00
    nop                                           ; $71B1: $00
    ld a, [de]                                    ; $71B2: $1A
    dec b                                         ; $71B3: $05
    inc c                                         ; $71B4: $0C
    inc bc                                        ; $71B5: $03
    ccf                                           ; $71B6: $3F
    inc b                                         ; $71B7: $04
    ld c, a                                       ; $71B8: $4F
    scf                                           ; $71B9: $37
    ld c, a                                       ; $71BA: $4F
    jr nc, jr_060_71ED                            ; $71BB: $30 $30

    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00
    nop                                           ; $71BF: $00
    ld a, a                                       ; $71C0: $7F
    rlca                                          ; $71C1: $07
    rst $38                                       ; $71C2: $FF
    ld l, a                                       ; $71C3: $6F

jr_060_71C4:
    rst $38                                       ; $71C4: $FF
    ld e, a                                       ; $71C5: $5F
    ld a, a                                       ; $71C6: $7F
    rra                                           ; $71C7: $1F
    rst $38                                       ; $71C8: $FF
    inc a                                         ; $71C9: $3C
    rst $38                                       ; $71CA: $FF
    nop                                           ; $71CB: $00
    nop                                           ; $71CC: $00
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    ldh [rP1], a                                  ; $71D0: $E0 $00
    ret nz                                        ; $71D2: $C0

    add b                                         ; $71D3: $80
    db $FC                                        ; $71D4: $FC
    ret nz                                        ; $71D5: $C0

    ld a, [c]                                     ; $71D6: $F2
    db $EC                                        ; $71D7: $EC
    ld a, [c]                                     ; $71D8: $F2
    call z, $00FC                                 ; $71D9: $CC $FC $00
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    ld h, b                                       ; $71E0: $60
    nop                                           ; $71E1: $00
    rst $38                                       ; $71E2: $FF
    ld l, a                                       ; $71E3: $6F

jr_060_71E4:
    rst $38                                       ; $71E4: $FF
    ld c, a                                       ; $71E5: $4F
    ld a, a                                       ; $71E6: $7F
    db $10                                        ; $71E7: $10
    ld sp, hl                                     ; $71E8: $F9
    ld [hl], $F9                                  ; $71E9: $36 $F9
    ld b, $0E                                     ; $71EB: $06 $0E

jr_060_71ED:
    nop                                           ; $71ED: $00
    nop                                           ; $71EE: $00
    nop                                           ; $71EF: $00
    nop                                           ; $71F0: $00
    nop                                           ; $71F1: $00
    ret nz                                        ; $71F2: $C0

    nop                                           ; $71F3: $00

jr_060_71F4:
    ret nz                                        ; $71F4: $C0

    nop                                           ; $71F5: $00
    ret nz                                        ; $71F6: $C0

    add b                                         ; $71F7: $80
    ret nz                                        ; $71F8: $C0

    nop                                           ; $71F9: $00
    add b                                         ; $71FA: $80
    nop                                           ; $71FB: $00
    nop                                           ; $71FC: $00
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    ld e, b                                       ; $7200: $58
    and b                                         ; $7201: $A0
    jr nc, jr_060_71C4                            ; $7202: $30 $C0

    ld hl, sp+$30                                 ; $7204: $F8 $30
    db $FC                                        ; $7206: $FC
    ld hl, sp-$04                                 ; $7207: $F8 $FC
    adc b                                         ; $7209: $88
    sbc [hl]                                      ; $720A: $9E
    ld h, b                                       ; $720B: $60
    sbc [hl]                                      ; $720C: $9E
    ld h, b                                       ; $720D: $60
    cp $00                                        ; $720E: $FE $00
    ld a, [de]                                    ; $7210: $1A
    dec b                                         ; $7211: $05
    inc b                                         ; $7212: $04
    inc bc                                        ; $7213: $03
    rrca                                          ; $7214: $0F
    inc b                                         ; $7215: $04

jr_060_7216:
    rra                                           ; $7216: $1F
    add hl, bc                                    ; $7217: $09
    add hl, sp                                    ; $7218: $39
    ld d, $19                                     ; $7219: $16 $19
    ld b, $07                                     ; $721B: $06 $07
    ld bc, $0007                                  ; $721D: $01 $07 $00
    ld e, b                                       ; $7220: $58
    and b                                         ; $7221: $A0
    jr nc, jr_060_71E4                            ; $7222: $30 $C0

    ld hl, sp+$30                                 ; $7224: $F8 $30
    db $FC                                        ; $7226: $FC
    ld hl, sp-$04                                 ; $7227: $F8 $FC
    ldh a, [$FC]                                  ; $7229: $F0 $FC
    ldh a, [$F4]                                  ; $722B: $F0 $F4
    add sp, -$08                                  ; $722D: $E8 $F8
    nop                                           ; $722F: $00
    ld e, b                                       ; $7230: $58
    and b                                         ; $7231: $A0
    jr nc, jr_060_71F4                            ; $7232: $30 $C0

    ld hl, sp+$30                                 ; $7234: $F8 $30
    db $FC                                        ; $7236: $FC
    ld hl, sp-$04                                 ; $7237: $F8 $FC
    add sp, -$04                                  ; $7239: $E8 $FC
    ldh [$E4], a                                  ; $723B: $E0 $E4
    ret c                                         ; $723D: $D8

    db $E4                                        ; $723E: $E4
    ret c                                         ; $723F: $D8

    ld a, [hl+]                                   ; $7240: $2A
    dec d                                         ; $7241: $15
    ld a, [de]                                    ; $7242: $1A
    dec b                                         ; $7243: $05
    inc b                                         ; $7244: $04
    inc bc                                        ; $7245: $03
    rrca                                          ; $7246: $0F
    inc b                                         ; $7247: $04
    rra                                           ; $7248: $1F
    rrca                                          ; $7249: $0F
    rra                                           ; $724A: $1F
    dec bc                                        ; $724B: $0B
    rra                                           ; $724C: $1F
    dec bc                                        ; $724D: $0B
    rla                                           ; $724E: $17
    dec bc                                        ; $724F: $0B
    ld d, h                                       ; $7250: $54
    xor b                                         ; $7251: $A8
    ld e, b                                       ; $7252: $58
    and b                                         ; $7253: $A0
    jr nz, jr_060_7216                            ; $7254: $20 $C0

    ldh a, [rNR41]                                ; $7256: $F0 $20
    ld hl, sp-$10                                 ; $7258: $F8 $F0
    ld hl, sp-$70                                 ; $725A: $F8 $90
    sbc b                                         ; $725C: $98
    ld h, b                                       ; $725D: $60
    sub b                                         ; $725E: $90
    ld h, b                                       ; $725F: $60
    ccf                                           ; $7260: $3F
    dec bc                                        ; $7261: $0B
    ld a, a                                       ; $7262: $7F
    scf                                           ; $7263: $37
    ld a, a                                       ; $7264: $7F
    scf                                           ; $7265: $37
    cp a                                          ; $7266: $BF
    ld d, a                                       ; $7267: $57
    sbc a                                         ; $7268: $9F
    ld h, a                                       ; $7269: $67
    ld a, a                                       ; $726A: $7F
    rlca                                          ; $726B: $07
    rrca                                          ; $726C: $0F
    rlca                                          ; $726D: $07
    nop                                           ; $726E: $00
    nop                                           ; $726F: $00
    ldh a, [rP1]                                  ; $7270: $F0 $00
    xor $C0                                       ; $7272: $EE $C0
    ld sp, hl                                     ; $7274: $F9
    and $F9                                       ; $7275: $E6 $F9
    or $FE                                        ; $7277: $F6 $FE
    cp b                                          ; $7279: $B8
    ld hl, sp-$40                                 ; $727A: $F8 $C0
    ldh [$C0], a                                  ; $727C: $E0 $C0
    nop                                           ; $727E: $00
    nop                                           ; $727F: $00
    ld a, a                                       ; $7280: $7F
    rlca                                          ; $7281: $07
    rst $38                                       ; $7282: $FF
    ld l, a                                       ; $7283: $6F
    rst $38                                       ; $7284: $FF
    ld e, a                                       ; $7285: $5F
    ld a, a                                       ; $7286: $7F
    rra                                           ; $7287: $1F
    ccf                                           ; $7288: $3F
    ld c, $3F                                     ; $7289: $0E $3F
    ld c, $3E                                     ; $728B: $0E $3E
    dec c                                         ; $728D: $0D
    ld e, $05                                     ; $728E: $1E $05
    ldh [rP1], a                                  ; $7290: $E0 $00
    ret nz                                        ; $7292: $C0

    nop                                           ; $7293: $00
    ret nz                                        ; $7294: $C0

    add b                                         ; $7295: $80
    ret nz                                        ; $7296: $C0

    add b                                         ; $7297: $80
    ret nz                                        ; $7298: $C0

    add b                                         ; $7299: $80
    ret nz                                        ; $729A: $C0

    nop                                           ; $729B: $00
    ld b, b                                       ; $729C: $40
    add b                                         ; $729D: $80
    ld b, b                                       ; $729E: $40
    add b                                         ; $729F: $80
    ccf                                           ; $72A0: $3F
    dec e                                         ; $72A1: $1D
    ld a, a                                       ; $72A2: $7F
    ccf                                           ; $72A3: $3F
    ld a, a                                       ; $72A4: $7F
    rra                                           ; $72A5: $1F
    sbc a                                         ; $72A6: $9F
    ld l, c                                       ; $72A7: $69
    sbc a                                         ; $72A8: $9F
    ld h, a                                       ; $72A9: $67
    ld a, a                                       ; $72AA: $7F
    rlca                                          ; $72AB: $07
    rrca                                          ; $72AC: $0F
    rlca                                          ; $72AD: $07
    nop                                           ; $72AE: $00
    nop                                           ; $72AF: $00
    ldh a, [rP1]                                  ; $72B0: $F0 $00
    xor $C0                                       ; $72B2: $EE $C0
    ld sp, hl                                     ; $72B4: $F9
    add $F9                                       ; $72B5: $C6 $F9
    sub $FE                                       ; $72B7: $D6 $FE
    ret c                                         ; $72B9: $D8

    ld hl, sp-$20                                 ; $72BA: $F8 $E0
    ldh [$C0], a                                  ; $72BC: $E0 $C0
    nop                                           ; $72BE: $00
    nop                                           ; $72BF: $00
    call nz, $F838                                ; $72C0: $C4 $38 $F8
    add b                                         ; $72C3: $80
    ldh a, [$E0]                                  ; $72C4: $F0 $E0
    ldh a, [$E0]                                  ; $72C6: $F0 $E0
    ldh a, [$E0]                                  ; $72C8: $F0 $E0
    ldh [$C0], a                                  ; $72CA: $E0 $C0
    ldh [$C0], a                                  ; $72CC: $E0 $C0
    ldh [$C0], a                                  ; $72CE: $E0 $C0
    rrca                                          ; $72D0: $0F
    nop                                           ; $72D1: $00
    ld a, a                                       ; $72D2: $7F
    rlca                                          ; $72D3: $07
    rst $38                                       ; $72D4: $FF
    ld a, a                                       ; $72D5: $7F
    rst $38                                       ; $72D6: $FF
    ld l, a                                       ; $72D7: $6F
    ld a, a                                       ; $72D8: $7F
    cpl                                           ; $72D9: $2F
    ccf                                           ; $72DA: $3F
    rra                                           ; $72DB: $1F
    ccf                                           ; $72DC: $3F
    dec e                                         ; $72DD: $1D
    rra                                           ; $72DE: $1F
    ld c, $10                                     ; $72DF: $0E $10
    ldh [$E0], a                                  ; $72E1: $E0 $E0
    nop                                           ; $72E3: $00
    ret nz                                        ; $72E4: $C0

    add b                                         ; $72E5: $80
    ret nz                                        ; $72E6: $C0

    add b                                         ; $72E7: $80
    ret nz                                        ; $72E8: $C0

    add b                                         ; $72E9: $80
    ldh [$80], a                                  ; $72EA: $E0 $80
    sub b                                         ; $72EC: $90
    ld h, b                                       ; $72ED: $60
    sub b                                         ; $72EE: $90
    ld h, b                                       ; $72EF: $60
    rrca                                          ; $72F0: $0F
    nop                                           ; $72F1: $00
    ld a, a                                       ; $72F2: $7F
    rlca                                          ; $72F3: $07
    rst $38                                       ; $72F4: $FF
    ld l, a                                       ; $72F5: $6F
    rst $38                                       ; $72F6: $FF
    ld e, a                                       ; $72F7: $5F
    rst $38                                       ; $72F8: $FF
    rra                                           ; $72F9: $1F
    ccf                                           ; $72FA: $3F
    ld c, $3E                                     ; $72FB: $0E $3E
    dec c                                         ; $72FD: $0D
    ld e, $05                                     ; $72FE: $1E $05
    db $10                                        ; $7300: $10
    ldh [$E0], a                                  ; $7301: $E0 $E0
    nop                                           ; $7303: $00
    ret nz                                        ; $7304: $C0

    add b                                         ; $7305: $80
    ret nz                                        ; $7306: $C0

    add b                                         ; $7307: $80
    ret nz                                        ; $7308: $C0

    add b                                         ; $7309: $80
    ret nz                                        ; $730A: $C0

    nop                                           ; $730B: $00
    ld b, b                                       ; $730C: $40
    add b                                         ; $730D: $80
    ld b, b                                       ; $730E: $40
    add b                                         ; $730F: $80
    rrca                                          ; $7310: $0F
    nop                                           ; $7311: $00
    ld a, a                                       ; $7312: $7F
    rlca                                          ; $7313: $07
    rst $38                                       ; $7314: $FF
    ld l, a                                       ; $7315: $6F
    rst $38                                       ; $7316: $FF
    ld e, a                                       ; $7317: $5F
    ld a, a                                       ; $7318: $7F
    dec c                                         ; $7319: $0D
    ccf                                           ; $731A: $3F
    inc bc                                        ; $731B: $03
    inc sp                                        ; $731C: $33
    dec c                                         ; $731D: $0D
    inc de                                        ; $731E: $13
    dec c                                         ; $731F: $0D
    db $10                                        ; $7320: $10
    ldh [$E0], a                                  ; $7321: $E0 $E0
    nop                                           ; $7323: $00
    ret nz                                        ; $7324: $C0

    add b                                         ; $7325: $80
    ret nz                                        ; $7326: $C0

    add b                                         ; $7327: $80
    ret nz                                        ; $7328: $C0

    add b                                         ; $7329: $80
    ldh [$80], a                                  ; $732A: $E0 $80
    ret nc                                        ; $732C: $D0

    and b                                         ; $732D: $A0
    ret nc                                        ; $732E: $D0

    and b                                         ; $732F: $A0
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    rra                                           ; $7332: $1F
    nop                                           ; $7333: $00
    rrca                                          ; $7334: $0F
    inc bc                                        ; $7335: $03
    rra                                           ; $7336: $1F
    dec c                                         ; $7337: $0D
    rra                                           ; $7338: $1F
    ld c, $1F                                     ; $7339: $0E $1F
    dec bc                                        ; $733B: $0B
    rrca                                          ; $733C: $0F
    inc bc                                        ; $733D: $03
    rlca                                          ; $733E: $07
    inc bc                                        ; $733F: $03
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    ld hl, sp+$00                                 ; $7342: $F8 $00
    ld hl, sp+$20                                 ; $7344: $F8 $20
    db $FC                                        ; $7346: $FC

jr_060_7347:
    ret c                                         ; $7347: $D8

    db $FC                                        ; $7348: $FC
    jr c, jr_060_7347                             ; $7349: $38 $FC

    add sp, -$04                                  ; $734B: $E8 $FC
    ldh [$F4], a                                  ; $734D: $E0 $F4
    add sp, $00                                   ; $734F: $E8 $00
    nop                                           ; $7351: $00
    ld hl, sp+$00                                 ; $7352: $F8 $00
    ld hl, sp+$30                                 ; $7354: $F8 $30
    db $FC                                        ; $7356: $FC

jr_060_7357:
    ret z                                         ; $7357: $C8

    db $FC                                        ; $7358: $FC
    jr c, jr_060_7357                             ; $7359: $38 $FC

    add sp, -$04                                  ; $735B: $E8 $FC
    add sp, -$08                                  ; $735D: $E8 $F8
    ldh a, [$F8]                                  ; $735F: $F0 $F8

jr_060_7361:
    nop                                           ; $7361: $00
    ld hl, sp+$30                                 ; $7362: $F8 $30
    db $FC                                        ; $7364: $FC
    ret z                                         ; $7365: $C8

    db $FC                                        ; $7366: $FC
    jr c, jr_060_7361                             ; $7367: $38 $F8

    ldh a, [$F0]                                  ; $7369: $F0 $F0
    ldh [$F0], a                                  ; $736B: $E0 $F0
    ldh [$E0], a                                  ; $736D: $E0 $E0
    nop                                           ; $736F: $00
    rra                                           ; $7370: $1F
    nop                                           ; $7371: $00
    rrca                                          ; $7372: $0F
    inc bc                                        ; $7373: $03
    rra                                           ; $7374: $1F
    dec c                                         ; $7375: $0D
    rra                                           ; $7376: $1F
    ld c, $1F                                     ; $7377: $0E $1F
    dec bc                                        ; $7379: $0B
    rrca                                          ; $737A: $0F
    inc bc                                        ; $737B: $03
    rlca                                          ; $737C: $07
    inc bc                                        ; $737D: $03
    rlca                                          ; $737E: $07
    nop                                           ; $737F: $00
    ld hl, sp+$00                                 ; $7380: $F8 $00
    ld hl, sp+$20                                 ; $7382: $F8 $20
    db $FC                                        ; $7384: $FC

jr_060_7385:
    ret c                                         ; $7385: $D8

    db $FC                                        ; $7386: $FC
    jr c, jr_060_7385                             ; $7387: $38 $FC

    ldh [$F4], a                                  ; $7389: $E0 $F4
    add sp, -$1C                                  ; $738B: $E8 $E4
    ret c                                         ; $738D: $D8

    ld hl, sp+$00                                 ; $738E: $F8 $00
    rlca                                          ; $7390: $07
    nop                                           ; $7391: $00
    rlca                                          ; $7392: $07
    nop                                           ; $7393: $00
    rrca                                          ; $7394: $0F
    rlca                                          ; $7395: $07
    rra                                           ; $7396: $1F
    rrca                                          ; $7397: $0F
    rra                                           ; $7398: $1F
    rrca                                          ; $7399: $0F
    rra                                           ; $739A: $1F
    ld a, [bc]                                    ; $739B: $0A
    rra                                           ; $739C: $1F
    inc c                                         ; $739D: $0C
    rra                                           ; $739E: $1F
    rrca                                          ; $739F: $0F
    ld d, [hl]                                    ; $73A0: $56
    xor b                                         ; $73A1: $A8
    inc b                                         ; $73A2: $04
    ld hl, sp-$08                                 ; $73A3: $F8 $F8
    nop                                           ; $73A5: $00
    ldh a, [$E0]                                  ; $73A6: $F0 $E0
    ldh [rP1], a                                  ; $73A8: $E0 $00
    jr nz, @-$3E                                  ; $73AA: $20 $C0

    jr nz, @-$3E                                  ; $73AC: $20 $C0

    ldh [rP1], a                                  ; $73AE: $E0 $00
    inc c                                         ; $73B0: $0C
    inc bc                                        ; $73B1: $03
    ccf                                           ; $73B2: $3F
    inc c                                         ; $73B3: $0C
    ld a, a                                       ; $73B4: $7F
    ccf                                           ; $73B5: $3F
    rst $38                                       ; $73B6: $FF
    ld a, a                                       ; $73B7: $7F
    rst $38                                       ; $73B8: $FF
    ld a, e                                       ; $73B9: $7B
    ld a, a                                       ; $73BA: $7F
    rla                                           ; $73BB: $17
    sbc a                                         ; $73BC: $9F
    ld l, a                                       ; $73BD: $6F
    sbc a                                         ; $73BE: $9F
    ld h, [hl]                                    ; $73BF: $66
    db $10                                        ; $73C0: $10
    ldh [$E0], a                                  ; $73C1: $E0 $E0
    nop                                           ; $73C3: $00

jr_060_73C4:
    ldh [$C0], a                                  ; $73C4: $E0 $C0
    ldh a, [$C0]                                  ; $73C6: $F0 $C0
    ldh a, [$C0]                                  ; $73C8: $F0 $C0
    add sp, -$30                                  ; $73CA: $E8 $D0
    add sp, -$30                                  ; $73CC: $E8 $D0
    ldh a, [rP1]                                  ; $73CE: $F0 $00
    ld d, h                                       ; $73D0: $54
    xor b                                         ; $73D1: $A8
    ld e, b                                       ; $73D2: $58
    and b                                         ; $73D3: $A0
    inc a                                         ; $73D4: $3C
    ret nc                                        ; $73D5: $D0

    cp $3C                                        ; $73D6: $FE $3C
    cp $F8                                        ; $73D8: $FE $F8
    ld sp, hl                                     ; $73DA: $F9
    or $F9                                        ; $73DB: $F6 $F9
    or $FE                                        ; $73DD: $F6 $FE
    ldh a, [rNR30]                                ; $73DF: $F0 $1A
    dec b                                         ; $73E1: $05
    inc e                                         ; $73E2: $1C
    inc bc                                        ; $73E3: $03
    ccf                                           ; $73E4: $3F
    inc e                                         ; $73E5: $1C
    ld a, a                                       ; $73E6: $7F
    ccf                                           ; $73E7: $3F
    ld a, a                                       ; $73E8: $7F
    rla                                           ; $73E9: $17
    sbc a                                         ; $73EA: $9F
    ld l, a                                       ; $73EB: $6F
    sbc a                                         ; $73EC: $9F
    ld l, a                                       ; $73ED: $6F
    ld l, a                                       ; $73EE: $6F
    inc b                                         ; $73EF: $04
    ld e, b                                       ; $73F0: $58
    and b                                         ; $73F1: $A0
    jr c, jr_060_73C4                             ; $73F2: $38 $D0

    ld hl, sp+$30                                 ; $73F4: $F8 $30
    db $FC                                        ; $73F6: $FC
    ld hl, sp-$04                                 ; $73F7: $F8 $FC
    ld hl, sp-$06                                 ; $73F9: $F8 $FA
    db $F4                                        ; $73FB: $F4
    ld a, [$FCF4]                                 ; $73FC: $FA $F4 $FC
    ld [hl], b                                    ; $73FF: $70
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    rra                                           ; $7402: $1F
    nop                                           ; $7403: $00
    rra                                           ; $7404: $1F
    rlca                                          ; $7405: $07
    ccf                                           ; $7406: $3F
    ld d, $3F                                     ; $7407: $16 $3F
    dec de                                        ; $7409: $1B
    ccf                                           ; $740A: $3F
    jr @+$41                                      ; $740B: $18 $3F

    rlca                                          ; $740D: $07
    rra                                           ; $740E: $1F
    inc bc                                        ; $740F: $03
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    ld hl, sp+$00                                 ; $7412: $F8 $00

jr_060_7414:
    ldh a, [rLCDC]                                ; $7414: $F0 $40
    ld hl, sp-$50                                 ; $7416: $F8 $B0

jr_060_7418:
    db $FC                                        ; $7418: $FC
    ld a, b                                       ; $7419: $78
    ld a, [$FAB4]                                 ; $741A: $FA $B4 $FA
    db $F4                                        ; $741D: $F4
    db $FC                                        ; $741E: $FC
    ldh [$1F], a                                  ; $741F: $E0 $1F
    nop                                           ; $7421: $00
    rra                                           ; $7422: $1F
    ld b, $3F                                     ; $7423: $06 $3F
    dec de                                        ; $7425: $1B
    ccf                                           ; $7426: $3F
    jr jr_060_7468                                ; $7427: $18 $3F

    rra                                           ; $7429: $1F
    rra                                           ; $742A: $1F
    rrca                                          ; $742B: $0F
    rrca                                          ; $742C: $0F
    inc bc                                        ; $742D: $03
    rlca                                          ; $742E: $07
    nop                                           ; $742F: $00
    ld hl, sp+$00                                 ; $7430: $F8 $00
    ldh a, [$A0]                                  ; $7432: $F0 $A0
    ld hl, sp+$70                                 ; $7434: $F8 $70
    ld hl, sp-$10                                 ; $7436: $F8 $F0
    ldh a, [$60]                                  ; $7438: $F0 $60
    add sp, -$70                                  ; $743A: $E8 $90
    ret z                                         ; $743C: $C8

    or b                                          ; $743D: $B0
    ldh a, [rP1]                                  ; $743E: $F0 $00
    rra                                           ; $7440: $1F
    db $10                                        ; $7441: $10
    inc e                                         ; $7442: $1C
    rrca                                          ; $7443: $0F
    db $10                                        ; $7444: $10
    rrca                                          ; $7445: $0F
    ld de, $2F0E                                  ; $7446: $11 $0E $2F
    db $10                                        ; $7449: $10
    ccf                                           ; $744A: $3F
    ld b, $3F                                     ; $744B: $06 $3F
    ld e, $1F                                     ; $744D: $1E $1F
    nop                                           ; $744F: $00
    and b                                         ; $7450: $A0
    ld b, b                                       ; $7451: $40
    jr nz, jr_060_7414                            ; $7452: $20 $C0

    sub b                                         ; $7454: $90
    ld h, b                                       ; $7455: $60
    jr nc, jr_060_7418                            ; $7456: $30 $C0

    ld hl, sp+$30                                 ; $7458: $F8 $30
    ld hl, sp-$10                                 ; $745A: $F8 $F0
    ldh a, [rP1]                                  ; $745C: $F0 $00
    nop                                           ; $745E: $00
    nop                                           ; $745F: $00
    and b                                         ; $7460: $A0
    ld b, b                                       ; $7461: $40
    jr nz, @-$3E                                  ; $7462: $20 $C0

    or b                                          ; $7464: $B0
    ld b, b                                       ; $7465: $40
    ld a, b                                       ; $7466: $78
    or b                                          ; $7467: $B0

jr_060_7468:
    ld hl, sp+$70                                 ; $7468: $F8 $70
    ldh a, [$C0]                                  ; $746A: $F0 $C0
    ret nz                                        ; $746C: $C0

    nop                                           ; $746D: $00
    nop                                           ; $746E: $00
    nop                                           ; $746F: $00
    ld hl, sp+$00                                 ; $7470: $F8 $00
    db $10                                        ; $7472: $10
    ldh [$88], a                                  ; $7473: $E0 $88
    ld [hl], b                                    ; $7475: $70
    cp b                                          ; $7476: $B8

jr_060_7477:
    ld b, b                                       ; $7477: $40
    ld hl, sp+$30                                 ; $7478: $F8 $30
    db $FC                                        ; $747A: $FC
    ld a, b                                       ; $747B: $78
    db $FC                                        ; $747C: $FC
    jr c, jr_060_7477                             ; $747D: $38 $F8

    nop                                           ; $747F: $00
    ldh a, [rP1]                                  ; $7480: $F0 $00
    sub b                                         ; $7482: $90
    ld h, b                                       ; $7483: $60
    adc b                                         ; $7484: $88
    ld [hl], b                                    ; $7485: $70
    adc b                                         ; $7486: $88
    ld [hl], b                                    ; $7487: $70
    sbc b                                         ; $7488: $98
    ld h, b                                       ; $7489: $60
    db $FC                                        ; $748A: $FC
    ld [$70FC], sp                                ; $748B: $08 $FC $70
    ld hl, sp+$00                                 ; $748E: $F8 $00
    ld a, [hl+]                                   ; $7490: $2A
    dec d                                         ; $7491: $15
    ld a, [de]                                    ; $7492: $1A
    dec b                                         ; $7493: $05
    inc b                                         ; $7494: $04
    inc bc                                        ; $7495: $03
    rrca                                          ; $7496: $0F
    inc b                                         ; $7497: $04
    rra                                           ; $7498: $1F
    dec bc                                        ; $7499: $0B
    rra                                           ; $749A: $1F
    inc bc                                        ; $749B: $03
    inc de                                        ; $749C: $13
    dec c                                         ; $749D: $0D
    inc de                                        ; $749E: $13
    dec c                                         ; $749F: $0D
    ld a, a                                       ; $74A0: $7F
    nop                                           ; $74A1: $00
    add c                                         ; $74A2: $81
    ld a, [hl]                                    ; $74A3: $7E
    add l                                         ; $74A4: $85
    ld a, d                                       ; $74A5: $7A
    adc d                                         ; $74A6: $8A
    ld [hl], h                                    ; $74A7: $74
    adc [hl]                                      ; $74A8: $8E
    ld [hl], b                                    ; $74A9: $70
    ld a, h                                       ; $74AA: $7C
    nop                                           ; $74AB: $00
    ld a, h                                       ; $74AC: $7C
    jr c, jr_060_752B                             ; $74AD: $38 $7C

    nop                                           ; $74AF: $00
    rst $38                                       ; $74B0: $FF
    nop                                           ; $74B1: $00
    ld b, c                                       ; $74B2: $41
    ld a, $91                                     ; $74B3: $3E $91
    ld l, [hl]                                    ; $74B5: $6E
    adc l                                         ; $74B6: $8D
    ld [hl], d                                    ; $74B7: $72
    adc a                                         ; $74B8: $8F
    ld [hl], b                                    ; $74B9: $70
    ld a, a                                       ; $74BA: $7F
    ld b, $7F                                     ; $74BB: $06 $7F
    ld [hl], $7F                                  ; $74BD: $36 $7F
    nop                                           ; $74BF: $00
    ld e, $0C                                     ; $74C0: $1E $0C
    ld e, $0C                                     ; $74C2: $1E $0C
    ld e, $00                                     ; $74C4: $1E $00
    add hl, de                                    ; $74C6: $19
    ld b, $0F                                     ; $74C7: $06 $0F
    nop                                           ; $74C9: $00
    nop                                           ; $74CA: $00
    nop                                           ; $74CB: $00
    nop                                           ; $74CC: $00
    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    nop                                           ; $74CF: $00
    cp $00                                        ; $74D0: $FE $00
    ld b, d                                       ; $74D2: $42
    inc a                                         ; $74D3: $3C
    add c                                         ; $74D4: $81
    ld a, [hl]                                    ; $74D5: $7E
    push hl                                       ; $74D6: $E5
    ld a, [de]                                    ; $74D7: $1A
    ld sp, hl                                     ; $74D8: $F9
    ld h, [hl]                                    ; $74D9: $66
    cp $70                                        ; $74DA: $FE $70
    ld a, [hl]                                    ; $74DC: $7E
    inc [hl]                                      ; $74DD: $34
    ld a, h                                       ; $74DE: $7C
    nop                                           ; $74DF: $00
    rlca                                          ; $74E0: $07
    nop                                           ; $74E1: $00
    ld [$0907], sp                                ; $74E2: $08 $07 $09
    ld b, $08                                     ; $74E5: $06 $08
    rlca                                          ; $74E7: $07
    ld c, $01                                     ; $74E8: $0E $01
    rrca                                          ; $74EA: $0F
    ld b, $0F                                     ; $74EB: $06 $0F
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    nop                                           ; $74EF: $00
    db $FC                                        ; $74F0: $FC
    nop                                           ; $74F1: $00
    db $10                                        ; $74F2: $10
    ldh [$08], a                                  ; $74F3: $E0 $08
    ldh a, [$88]                                  ; $74F5: $F0 $88
    ld [hl], b                                    ; $74F7: $70
    sbc b                                         ; $74F8: $98
    ld h, b                                       ; $74F9: $60
    db $FC                                        ; $74FA: $FC
    ld [$70FC], sp                                ; $74FB: $08 $FC $70
    ld hl, sp+$00                                 ; $74FE: $F8 $00
    ld [$0807], sp                                ; $7500: $08 $07 $08
    rlca                                          ; $7503: $07
    ld a, [bc]                                    ; $7504: $0A
    dec b                                         ; $7505: $05
    add hl, bc                                    ; $7506: $09
    ld b, $07                                     ; $7507: $06 $07
    nop                                           ; $7509: $00
    ld bc, $0100                                  ; $750A: $01 $00 $01
    nop                                           ; $750D: $00
    nop                                           ; $750E: $00
    nop                                           ; $750F: $00
    db $10                                        ; $7510: $10
    ldh [rSVBK], a                                ; $7511: $E0 $70
    add b                                         ; $7513: $80
    ld hl, sp+$70                                 ; $7514: $F8 $70
    ld hl, sp+$70                                 ; $7516: $F8 $70
    ld hl, sp-$10                                 ; $7518: $F8 $F0
    ldh a, [$E0]                                  ; $751A: $F0 $E0
    ldh [rP1], a                                  ; $751C: $E0 $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    db $FC                                        ; $7520: $FC
    jr c, jr_060_759F                             ; $7521: $38 $7C

    jr jr_060_7561                                ; $7523: $18 $3C

    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    nop                                           ; $752A: $00

jr_060_752B:
    nop                                           ; $752B: $00
    nop                                           ; $752C: $00
    nop                                           ; $752D: $00
    nop                                           ; $752E: $00
    nop                                           ; $752F: $00
    rlca                                          ; $7530: $07
    nop                                           ; $7531: $00
    ld [$1807], sp                                ; $7532: $08 $07 $18
    rlca                                          ; $7535: $07
    jr jr_060_753F                                ; $7536: $18 $07

    rra                                           ; $7538: $1F
    ld [$0C1E], sp                                ; $7539: $08 $1E $0C
    inc c                                         ; $753C: $0C
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00

jr_060_753F:
    nop                                           ; $753F: $00
    ldh a, [rP1]                                  ; $7540: $F0 $00
    db $10                                        ; $7542: $10
    ldh [$08], a                                  ; $7543: $E0 $08
    ldh a, [$88]                                  ; $7545: $F0 $88
    ld [hl], b                                    ; $7547: $70
    cp b                                          ; $7548: $B8

jr_060_7549:
    ld b, b                                       ; $7549: $40
    db $FC                                        ; $754A: $FC
    jr c, jr_060_7549                             ; $754B: $38 $FC

    ld a, b                                       ; $754D: $78
    ld a, h                                       ; $754E: $7C
    nop                                           ; $754F: $00
    inc b                                         ; $7550: $04
    inc bc                                        ; $7551: $03
    ld [$0907], sp                                ; $7552: $08 $07 $09

jr_060_7555:
    ld b, $0B                                     ; $7555: $06 $0B
    dec b                                         ; $7557: $05
    rlca                                          ; $7558: $07
    inc bc                                        ; $7559: $03
    rlca                                          ; $755A: $07
    inc bc                                        ; $755B: $03
    rrca                                          ; $755C: $0F
    inc b                                         ; $755D: $04
    rrca                                          ; $755E: $0F
    nop                                           ; $755F: $00
    ld [hl], b                                    ; $7560: $70

jr_060_7561:
    add b                                         ; $7561: $80
    ret nc                                        ; $7562: $D0

    jr nz, jr_060_7555                            ; $7563: $20 $F0

    ret nz                                        ; $7565: $C0

    ldh a, [$E0]                                  ; $7566: $F0 $E0
    ldh a, [$C0]                                  ; $7568: $F0 $C0
    ldh [$80], a                                  ; $756A: $E0 $80
    ret nz                                        ; $756C: $C0

    nop                                           ; $756D: $00
    ret nz                                        ; $756E: $C0

    nop                                           ; $756F: $00
    rlca                                          ; $7570: $07
    nop                                           ; $7571: $00
    add hl, bc                                    ; $7572: $09
    ld b, $0B                                     ; $7573: $06 $0B
    dec b                                         ; $7575: $05
    dec bc                                        ; $7576: $0B
    dec b                                         ; $7577: $05
    rlca                                          ; $7578: $07
    ld bc, $0007                                  ; $7579: $01 $07 $00
    rlca                                          ; $757C: $07
    inc bc                                        ; $757D: $03
    inc bc                                        ; $757E: $03
    nop                                           ; $757F: $00
    ldh a, [rP1]                                  ; $7580: $F0 $00
    sub b                                         ; $7582: $90
    ld h, b                                       ; $7583: $60
    ret z                                         ; $7584: $C8

    or b                                          ; $7585: $B0

jr_060_7586:
    add sp, -$30                                  ; $7586: $E8 $D0
    ldh a, [$E0]                                  ; $7588: $F0 $E0

jr_060_758A:
    ldh a, [$E0]                                  ; $758A: $F0 $E0
    ldh [rP1], a                                  ; $758C: $E0 $00
    add b                                         ; $758E: $80
    nop                                           ; $758F: $00
    ld h, a                                       ; $7590: $67
    nop                                           ; $7591: $00
    ld hl, sp+$67                                 ; $7592: $F8 $67
    ldh a, [$6F]                                  ; $7594: $F0 $6F
    ldh a, [$6F]                                  ; $7596: $F0 $6F
    db $FC                                        ; $7598: $FC
    ld [hl], e                                    ; $7599: $73
    ei                                            ; $759A: $FB
    jr nc, jr_060_7615                            ; $759B: $30 $78

    nop                                           ; $759D: $00
    nop                                           ; $759E: $00

jr_060_759F:
    nop                                           ; $759F: $00
    cp $00                                        ; $75A0: $FE $00
    jp $11FC                                      ; $75A2: $C3 $FC $11


    xor $61                                       ; $75A5: $EE $61
    sbc a                                         ; $75A7: $9F
    db $E3                                        ; $75A8: $E3
    dec e                                         ; $75A9: $1D
    rra                                           ; $75AA: $1F
    inc bc                                        ; $75AB: $03
    rlca                                          ; $75AC: $07
    nop                                           ; $75AD: $00
    nop                                           ; $75AE: $00
    nop                                           ; $75AF: $00
    rrca                                          ; $75B0: $0F
    nop                                           ; $75B1: $00
    ld [hl], h                                    ; $75B2: $74
    rra                                           ; $75B3: $1F
    ld hl, sp+$6F                                 ; $75B4: $F8 $6F
    pop hl                                        ; $75B6: $E1
    ld e, [hl]                                    ; $75B7: $5E
    db $E3                                        ; $75B8: $E3
    ld e, h                                       ; $75B9: $5C
    rst $38                                       ; $75BA: $FF
    ld h, b                                       ; $75BB: $60
    ld h, e                                       ; $75BC: $63
    ld bc, $0001                                  ; $75BD: $01 $01 $00
    ret nz                                        ; $75C0: $C0

    nop                                           ; $75C1: $00
    ld b, b                                       ; $75C2: $40
    add b                                         ; $75C3: $80
    jr nz, jr_060_7586                            ; $75C4: $20 $C0

    sub b                                         ; $75C6: $90
    ld h, b                                       ; $75C7: $60
    jr nc, jr_060_758A                            ; $75C8: $30 $C0

    ld hl, sp+$30                                 ; $75CA: $F8 $30
    ld hl, sp-$10                                 ; $75CC: $F8 $F0
    ldh a, [rP1]                                  ; $75CE: $F0 $00
    ld h, [hl]                                    ; $75D0: $66
    ld bc, $0709                                  ; $75D1: $01 $09 $07
    inc c                                         ; $75D4: $0C
    inc bc                                        ; $75D5: $03
    ld [de], a                                    ; $75D6: $12
    dec c                                         ; $75D7: $0D
    ccf                                           ; $75D8: $3F
    nop                                           ; $75D9: $00
    ld a, a                                       ; $75DA: $7F
    inc a                                         ; $75DB: $3C
    ld a, a                                       ; $75DC: $7F
    ld a, $3F                                     ; $75DD: $3E $3F
    nop                                           ; $75DF: $00
    ld h, b                                       ; $75E0: $60
    add b                                         ; $75E1: $80
    ld d, [hl]                                    ; $75E2: $56
    ldh [$8F], a                                  ; $75E3: $E0 $8F
    or $1F                                        ; $75E5: $F6 $1F
    xor $3F                                       ; $75E7: $EE $3F
    call c, $38FE                                 ; $75E9: $DC $FE $38
    ld a, h                                       ; $75EC: $7C
    db $10                                        ; $75ED: $10
    jr c, jr_060_75F0                             ; $75EE: $38 $00

jr_060_75F0:
    rrca                                          ; $75F0: $0F
    nop                                           ; $75F1: $00
    dec c                                         ; $75F2: $0D
    rlca                                          ; $75F3: $07
    ld [de], a                                    ; $75F4: $12
    rrca                                          ; $75F5: $0F
    jr nz, jr_060_7617                            ; $75F6: $20 $1F

    ld [hl], e                                    ; $75F8: $73
    inc l                                         ; $75F9: $2C
    ld a, a                                       ; $75FA: $7F
    ld [hl-], a                                   ; $75FB: $32
    ld a, a                                       ; $75FC: $7F
    ld e, $7F                                     ; $75FD: $1E $7F
    nop                                           ; $75FF: $00
    ldh [rP1], a                                  ; $7600: $E0 $00
    ld h, b                                       ; $7602: $60
    add b                                         ; $7603: $80
    ld a, b                                       ; $7604: $78
    add b                                         ; $7605: $80

jr_060_7606:
    db $FC                                        ; $7606: $FC
    jr jr_060_7685                                ; $7607: $18 $7C

    cp b                                          ; $7609: $B8
    ld a, b                                       ; $760A: $78
    or b                                          ; $760B: $B0
    ld hl, sp+$40                                 ; $760C: $F8 $40
    ldh [rP1], a                                  ; $760E: $E0 $00
    rrca                                          ; $7610: $0F
    nop                                           ; $7611: $00
    dec c                                         ; $7612: $0D
    rlca                                          ; $7613: $07
    ld [de], a                                    ; $7614: $12

jr_060_7615:
    rrca                                          ; $7615: $0F
    db $10                                        ; $7616: $10

jr_060_7617:
    rrca                                          ; $7617: $0F
    cpl                                           ; $7618: $2F
    db $10                                        ; $7619: $10
    ccf                                           ; $761A: $3F
    rlca                                          ; $761B: $07
    ccf                                           ; $761C: $3F
    rrca                                          ; $761D: $0F
    rra                                           ; $761E: $1F
    nop                                           ; $761F: $00
    ret nz                                        ; $7620: $C0

    nop                                           ; $7621: $00
    jr nz, @-$3E                                  ; $7622: $20 $C0

    jr nz, @-$3E                                  ; $7624: $20 $C0

    ld h, b                                       ; $7626: $60
    add b                                         ; $7627: $80
    ldh a, [rNR41]                                ; $7628: $F0 $20
    ldh a, [$A0]                                  ; $762A: $F0 $A0
    ldh a, [$80]                                  ; $762C: $F0 $80
    ret nz                                        ; $762E: $C0

    nop                                           ; $762F: $00
    rrca                                          ; $7630: $0F
    nop                                           ; $7631: $00
    dec c                                         ; $7632: $0D
    rlca                                          ; $7633: $07
    ld [de], a                                    ; $7634: $12
    rrca                                          ; $7635: $0F
    inc [hl]                                      ; $7636: $34
    dec bc                                        ; $7637: $0B
    ld a, [hl]                                    ; $7638: $7E
    ld hl, $3C7F                                  ; $7639: $21 $7F $3C
    ld a, a                                       ; $763C: $7F
    ld e, $7F                                     ; $763D: $1E $7F
    nop                                           ; $763F: $00
    ldh [rP1], a                                  ; $7640: $E0 $00
    ld h, b                                       ; $7642: $60
    add b                                         ; $7643: $80
    jr c, jr_060_7606                             ; $7644: $38 $C0

    inc a                                         ; $7646: $3C
    ret c                                         ; $7647: $D8

    ld a, h                                       ; $7648: $7C
    cp b                                          ; $7649: $B8
    ld a, b                                       ; $764A: $78
    or b                                          ; $764B: $B0
    ld hl, sp+$40                                 ; $764C: $F8 $40
    ldh [rP1], a                                  ; $764E: $E0 $00
    ld h, a                                       ; $7650: $67
    nop                                           ; $7651: $00
    db $FC                                        ; $7652: $FC
    ld h, e                                       ; $7653: $63
    pop af                                        ; $7654: $F1
    ld l, [hl]                                    ; $7655: $6E
    ldh a, [$6F]                                  ; $7656: $F0 $6F
    db $FC                                        ; $7658: $FC
    ld [hl], e                                    ; $7659: $73
    ei                                            ; $765A: $FB
    jr nc, jr_060_76D5                            ; $765B: $30 $78

    nop                                           ; $765D: $00
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
    cp $00                                        ; $7660: $FE $00
    dec hl                                        ; $7662: $2B
    db $FC                                        ; $7663: $FC
    add hl, de                                    ; $7664: $19
    cp $81                                        ; $7665: $FE $81
    ld a, a                                       ; $7667: $7F
    db $E3                                        ; $7668: $E3
    dec e                                         ; $7669: $1D
    rra                                           ; $766A: $1F
    inc bc                                        ; $766B: $03
    inc bc                                        ; $766C: $03
    nop                                           ; $766D: $00
    nop                                           ; $766E: $00
    nop                                           ; $766F: $00
    ret nz                                        ; $7670: $C0

    nop                                           ; $7671: $00
    ldh [$C0], a                                  ; $7672: $E0 $C0
    ldh [$C0], a                                  ; $7674: $E0 $C0
    ldh [$80], a                                  ; $7676: $E0 $80
    ret nz                                        ; $7678: $C0

    add b                                         ; $7679: $80
    ret nz                                        ; $767A: $C0

    nop                                           ; $767B: $00
    add b                                         ; $767C: $80
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    rra                                           ; $7680: $1F
    nop                                           ; $7681: $00
    rrca                                          ; $7682: $0F
    rlca                                          ; $7683: $07
    rra                                           ; $7684: $1F

jr_060_7685:
    add hl, bc                                    ; $7685: $09
    rra                                           ; $7686: $1F
    ld c, $1F                                     ; $7687: $0E $1F
    rrca                                          ; $7689: $0F
    rra                                           ; $768A: $1F
    dec bc                                        ; $768B: $0B
    rra                                           ; $768C: $1F
    dec bc                                        ; $768D: $0B
    rrca                                          ; $768E: $0F
    rlca                                          ; $768F: $07
    ld a, [de]                                    ; $7690: $1A
    dec b                                         ; $7691: $05
    inc b                                         ; $7692: $04
    inc bc                                        ; $7693: $03
    rrca                                          ; $7694: $0F
    inc b                                         ; $7695: $04
    rra                                           ; $7696: $1F
    rrca                                          ; $7697: $0F
    rra                                           ; $7698: $1F
    dec bc                                        ; $7699: $0B
    rra                                           ; $769A: $1F
    inc bc                                        ; $769B: $03
    inc de                                        ; $769C: $13
    dec c                                         ; $769D: $0D
    inc de                                        ; $769E: $13
    dec c                                         ; $769F: $0D
    ld hl, sp+$00                                 ; $76A0: $F8 $00
    ldh a, [rP1]                                  ; $76A2: $F0 $00
    ld hl, sp+$70                                 ; $76A4: $F8 $70
    db $FC                                        ; $76A6: $FC
    ret z                                         ; $76A7: $C8

    db $FC                                        ; $76A8: $FC

jr_060_76A9:
    jr c, jr_060_76A9                             ; $76A9: $38 $FE

    ld hl, sp-$02                                 ; $76AB: $F8 $FE
    ldh a, [$FE]                                  ; $76AD: $F0 $FE
    ldh [$FC], a                                  ; $76AF: $E0 $FC
    nop                                           ; $76B1: $00

jr_060_76B2:
    ld a, b                                       ; $76B2: $78
    jr nc, jr_060_772D                            ; $76B3: $30 $78

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
    ccf                                           ; $76C0: $3F
    nop                                           ; $76C1: $00
    ld a, a                                       ; $76C2: $7F

jr_060_76C3:
    ccf                                           ; $76C3: $3F
    ccf                                           ; $76C4: $3F
    rla                                           ; $76C5: $17
    ccf                                           ; $76C6: $3F
    rrca                                          ; $76C7: $0F
    rra                                           ; $76C8: $1F
    dec c                                         ; $76C9: $0D
    rra                                           ; $76CA: $1F
    ld c, $1F                                     ; $76CB: $0E $1F
    inc c                                         ; $76CD: $0C
    ccf                                           ; $76CE: $3F
    nop                                           ; $76CF: $00
    ldh [rP1], a                                  ; $76D0: $E0 $00
    ret nz                                        ; $76D2: $C0

    add b                                         ; $76D3: $80
    ret nz                                        ; $76D4: $C0

jr_060_76D5:
    add b                                         ; $76D5: $80
    ldh [$C0], a                                  ; $76D6: $E0 $C0
    ldh a, [$E0]                                  ; $76D8: $F0 $E0
    ld hl, sp-$20                                 ; $76DA: $F8 $E0
    db $E4                                        ; $76DC: $E4
    jr jr_060_76C3                                ; $76DD: $18 $E4

    jr jr_060_7701                                ; $76DF: $18 $20

    rra                                           ; $76E1: $1F
    inc hl                                        ; $76E2: $23
    inc e                                         ; $76E3: $1C
    rra                                           ; $76E4: $1F
    inc bc                                        ; $76E5: $03
    rrca                                          ; $76E6: $0F
    rlca                                          ; $76E7: $07
    rrca                                          ; $76E8: $0F
    nop                                           ; $76E9: $00
    nop                                           ; $76EA: $00
    nop                                           ; $76EB: $00
    nop                                           ; $76EC: $00
    nop                                           ; $76ED: $00
    nop                                           ; $76EE: $00
    nop                                           ; $76EF: $00
    jr c, jr_060_76B2                             ; $76F0: $38 $C0

jr_060_76F2:
    ldh a, [rNR41]                                ; $76F2: $F0 $20
    ldh a, [$A0]                                  ; $76F4: $F0 $A0
    ldh a, [$80]                                  ; $76F6: $F0 $80
    ret nz                                        ; $76F8: $C0

    nop                                           ; $76F9: $00
    nop                                           ; $76FA: $00
    nop                                           ; $76FB: $00
    nop                                           ; $76FC: $00
    nop                                           ; $76FD: $00
    nop                                           ; $76FE: $00
    nop                                           ; $76FF: $00
    add hl, bc                                    ; $7700: $09

jr_060_7701:
    ld b, $3C                                     ; $7701: $06 $3C
    inc bc                                        ; $7703: $03
    ld a, a                                       ; $7704: $7F
    inc c                                         ; $7705: $0C
    rst $38                                       ; $7706: $FF
    ccf                                           ; $7707: $3F
    rst $38                                       ; $7708: $FF
    dec sp                                        ; $7709: $3B
    ld a, a                                       ; $770A: $7F
    inc sp                                        ; $770B: $33
    ld [hl], e                                    ; $770C: $73
    dec l                                         ; $770D: $2D
    inc sp                                        ; $770E: $33
    dec c                                         ; $770F: $0D
    rra                                           ; $7710: $1F
    nop                                           ; $7711: $00
    rrca                                          ; $7712: $0F
    ld [bc], a                                    ; $7713: $02
    rra                                           ; $7714: $1F
    dec c                                         ; $7715: $0D
    rra                                           ; $7716: $1F
    ld c, $1F                                     ; $7717: $0E $1F
    inc bc                                        ; $7719: $03
    rla                                           ; $771A: $17
    dec bc                                        ; $771B: $0B
    inc de                                        ; $771C: $13
    dec c                                         ; $771D: $0D
    rrca                                          ; $771E: $0F
    nop                                           ; $771F: $00
    ld hl, sp+$00                                 ; $7720: $F8 $00
    ld hl, sp+$60                                 ; $7722: $F8 $60
    db $FC                                        ; $7724: $FC

jr_060_7725:
    ret c                                         ; $7725: $D8

    db $FC                                        ; $7726: $FC
    jr c, jr_060_7725                             ; $7727: $38 $FC

    add sp, -$08                                  ; $7729: $E8 $F8
    ldh [$F0], a                                  ; $772B: $E0 $F0

jr_060_772D:
    ldh [$F0], a                                  ; $772D: $E0 $F0
    nop                                           ; $772F: $00
    jr nc, jr_060_76F2                            ; $7730: $30 $C0

    db $10                                        ; $7732: $10
    ldh [$E0], a                                  ; $7733: $E0 $E0
    nop                                           ; $7735: $00
    ldh a, [$E0]                                  ; $7736: $F0 $E0
    ldh a, [$C0]                                  ; $7738: $F0 $C0
    add sp, -$30                                  ; $773A: $E8 $D0
    add sp, -$30                                  ; $773C: $E8 $D0
    ldh a, [$80]                                  ; $773E: $F0 $80
    rra                                           ; $7740: $1F
    nop                                           ; $7741: $00
    ccf                                           ; $7742: $3F
    rra                                           ; $7743: $1F
    ld b, c                                       ; $7744: $41
    ccf                                           ; $7745: $3F
    ld a, b                                       ; $7746: $78
    ccf                                           ; $7747: $3F
    ld a, l                                       ; $7748: $7D
    ld a, $3E                                     ; $7749: $3E $3E
    dec b                                         ; $774B: $05
    ld c, l                                       ; $774C: $4D
    ld [hl-], a                                   ; $774D: $32
    ld c, l                                       ; $774E: $4D
    ld [hl-], a                                   ; $774F: $32
    ldh [rP1], a                                  ; $7750: $E0 $00
    ldh a, [$A0]                                  ; $7752: $F0 $A0
    add sp, -$30                                  ; $7754: $E8 $D0
    db $FC                                        ; $7756: $FC
    ret c                                         ; $7757: $D8

    db $FC                                        ; $7758: $FC
    sbc b                                         ; $7759: $98
    sbc h                                         ; $775A: $9C
    ld l, b                                       ; $775B: $68
    inc a                                         ; $775C: $3C
    ret nz                                        ; $775D: $C0

    ld [hl-], a                                   ; $775E: $32
    call z, $03FC                                 ; $775F: $CC $FC $03
    rst $38                                       ; $7762: $FF
    ld [hl], b                                    ; $7763: $70
    rst $38                                       ; $7764: $FF
    ld [hl], a                                    ; $7765: $77
    rst $38                                       ; $7766: $FF
    ld a, a                                       ; $7767: $7F
    ld a, a                                       ; $7768: $7F
    ccf                                           ; $7769: $3F
    ccf                                           ; $776A: $3F
    rra                                           ; $776B: $1F
    rra                                           ; $776C: $1F
    rrca                                          ; $776D: $0F
    rra                                           ; $776E: $1F
    rrca                                          ; $776F: $0F
    ld [de], a                                    ; $7770: $12
    db $EC                                        ; $7771: $EC
    db $FC                                        ; $7772: $FC
    nop                                           ; $7773: $00
    db $FC                                        ; $7774: $FC
    ret c                                         ; $7775: $D8

    ld hl, sp-$10                                 ; $7776: $F8 $F0
    ldh a, [$E0]                                  ; $7778: $F0 $E0
    ldh [$C0], a                                  ; $777A: $E0 $C0
    ret nz                                        ; $777C: $C0

    add b                                         ; $777D: $80
    ret nz                                        ; $777E: $C0

    add b                                         ; $777F: $80
    rra                                           ; $7780: $1F
    nop                                           ; $7781: $00
    ld a, [hl-]                                   ; $7782: $3A
    rlca                                          ; $7783: $07
    ld a, h                                       ; $7784: $7C
    daa                                           ; $7785: $27
    ld hl, sp+$67                                 ; $7786: $F8 $67
    db $FC                                        ; $7788: $FC
    ld [hl], e                                    ; $7789: $73
    ld [hl], a                                    ; $778A: $77
    nop                                           ; $778B: $00
    nop                                           ; $778C: $00
    nop                                           ; $778D: $00
    nop                                           ; $778E: $00
    nop                                           ; $778F: $00
    ret nc                                        ; $7790: $D0

    jr nz, jr_060_77A3                            ; $7791: $20 $10

    ldh [$08], a                                  ; $7793: $E0 $08
    ldh a, [rOBP0]                                ; $7795: $F0 $48
    or b                                          ; $7797: $B0
    ldh a, [rP1]                                  ; $7798: $F0 $00
    add b                                         ; $779A: $80
    nop                                           ; $779B: $00
    nop                                           ; $779C: $00
    nop                                           ; $779D: $00
    nop                                           ; $779E: $00
    nop                                           ; $779F: $00
    nop                                           ; $77A0: $00
    nop                                           ; $77A1: $00
    nop                                           ; $77A2: $00

jr_060_77A3:
    nop                                           ; $77A3: $00
    nop                                           ; $77A4: $00
    nop                                           ; $77A5: $00
    rlca                                          ; $77A6: $07
    nop                                           ; $77A7: $00
    add hl, bc                                    ; $77A8: $09
    rlca                                          ; $77A9: $07
    add hl, de                                    ; $77AA: $19
    rrca                                          ; $77AB: $0F
    inc e                                         ; $77AC: $1C
    rrca                                          ; $77AD: $0F
    inc e                                         ; $77AE: $1C
    rrca                                          ; $77AF: $0F
    nop                                           ; $77B0: $00
    nop                                           ; $77B1: $00
    nop                                           ; $77B2: $00
    nop                                           ; $77B3: $00
    nop                                           ; $77B4: $00
    nop                                           ; $77B5: $00
    ld [hl], b                                    ; $77B6: $70
    nop                                           ; $77B7: $00
    ld hl, sp+$70                                 ; $77B8: $F8 $70
    db $E4                                        ; $77BA: $E4
    cp b                                          ; $77BB: $B8
    and $BC                                       ; $77BC: $E6 $BC
    and $FC                                       ; $77BE: $E6 $FC
    nop                                           ; $77C0: $00
    nop                                           ; $77C1: $00
    jr nz, jr_060_77C4                            ; $77C2: $20 $00

jr_060_77C4:
    ld a, h                                       ; $77C4: $7C
    inc a                                         ; $77C5: $3C
    cp $7E                                        ; $77C6: $FE $7E
    cp $7E                                        ; $77C8: $FE $7E
    ld a, a                                       ; $77CA: $7F
    inc a                                         ; $77CB: $3C
    ld a, h                                       ; $77CC: $7C
    dec sp                                        ; $77CD: $3B
    inc a                                         ; $77CE: $3C
    dec de                                        ; $77CF: $1B
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
    db $FC                                        ; $77DC: $FC
    ld [$18FC], sp                                ; $77DD: $08 $FC $18
    inc e                                         ; $77E0: $1C
    rrca                                          ; $77E1: $0F
    rra                                           ; $77E2: $1F
    rlca                                          ; $77E3: $07
    rrca                                          ; $77E4: $0F
    ld [bc], a                                    ; $77E5: $02
    rlca                                          ; $77E6: $07
    nop                                           ; $77E7: $00
    ld [bc], a                                    ; $77E8: $02
    ld bc, $0003                                  ; $77E9: $01 $03 $00
    nop                                           ; $77EC: $00
    nop                                           ; $77ED: $00
    nop                                           ; $77EE: $00
    nop                                           ; $77EF: $00
    rst $30                                       ; $77F0: $F7
    sbc $FF                                       ; $77F1: $DE $FF
    ld c, [hl]                                    ; $77F3: $4E
    ld e, [hl]                                    ; $77F4: $5E
    and h                                         ; $77F5: $A4
    ld c, $F0                                     ; $77F6: $0E $F0
    call c, $0C20                                 ; $77F8: $DC $20 $0C
    ldh a, [rP1]                                  ; $77FB: $F0 $00
    nop                                           ; $77FD: $00
    nop                                           ; $77FE: $00
    nop                                           ; $77FF: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    ccf                                           ; $7803: $3F
    ld a, [bc]                                    ; $7804: $0A
    ccf                                           ; $7805: $3F
    rla                                           ; $7806: $17
    ccf                                           ; $7807: $3F
    dec bc                                        ; $7808: $0B
    ccf                                           ; $7809: $3F
    rla                                           ; $780A: $17
    ccf                                           ; $780B: $3F
    dec bc                                        ; $780C: $0B
    ccf                                           ; $780D: $3F
    nop                                           ; $780E: $00
    nop                                           ; $780F: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    rst $38                                       ; $7813: $FF
    rst $38                                       ; $7814: $FF
    rst $38                                       ; $7815: $FF
    rst $38                                       ; $7816: $FF
    rst $38                                       ; $7817: $FF
    rst $38                                       ; $7818: $FF
    rst $38                                       ; $7819: $FF
    rst $38                                       ; $781A: $FF
    rst $38                                       ; $781B: $FF
    rst $38                                       ; $781C: $FF
    rst $38                                       ; $781D: $FF
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    dec bc                                        ; $7820: $0B
    ccf                                           ; $7821: $3F
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    ccf                                           ; $7824: $3F
    nop                                           ; $7825: $00
    jr nz, jr_060_7828                            ; $7826: $20 $00

jr_060_7828:
    jr z, jr_060_782D                             ; $7828: $28 $03

    dec hl                                        ; $782A: $2B
    inc bc                                        ; $782B: $03
    dec hl                                        ; $782C: $2B

jr_060_782D:
    inc bc                                        ; $782D: $03
    dec hl                                        ; $782E: $2B
    inc bc                                        ; $782F: $03
    rst $38                                       ; $7830: $FF
    rst $38                                       ; $7831: $FF
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    rst $38                                       ; $7834: $FF
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    ld h, [hl]                                    ; $7838: $66
    nop                                           ; $7839: $00
    ld h, b                                       ; $783A: $60
    ld b, $60                                     ; $783B: $06 $60
    ld b, $60                                     ; $783D: $06 $60
    ld b, $00                                     ; $783F: $06 $00
    jr nz, jr_060_7862                            ; $7841: $20 $1F

    ccf                                           ; $7843: $3F
    nop                                           ; $7844: $00
    ccf                                           ; $7845: $3F
    nop                                           ; $7846: $00
    jr nz, jr_060_7854                            ; $7847: $20 $0B

    jr nz, jr_060_7856                            ; $7849: $20 $0B

    jr nz, jr_060_7858                            ; $784B: $20 $0B

    jr nz, jr_060_785A                            ; $784D: $20 $0B

    jr nz, jr_060_7851                            ; $784F: $20 $00

jr_060_7851:
    nop                                           ; $7851: $00
    rst $38                                       ; $7852: $FF
    rst $38                                       ; $7853: $FF

jr_060_7854:
    nop                                           ; $7854: $00
    rst $38                                       ; $7855: $FF

jr_060_7856:
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00

jr_060_7858:
    nop                                           ; $7858: $00
    ld h, c                                       ; $7859: $61

jr_060_785A:
    ld h, c                                       ; $785A: $61
    ld h, c                                       ; $785B: $61
    ld h, c                                       ; $785C: $61
    ld h, c                                       ; $785D: $61
    ld h, c                                       ; $785E: $61
    ld h, c                                       ; $785F: $61
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00

jr_060_7862:
    rst $38                                       ; $7862: $FF
    rst $38                                       ; $7863: $FF
    nop                                           ; $7864: $00
    rst $38                                       ; $7865: $FF
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    jr nc, jr_060_7870                            ; $7868: $30 $06

    ld b, $36                                     ; $786A: $06 $36
    ld b, $36                                     ; $786C: $06 $36
    ld b, $36                                     ; $786E: $06 $36

jr_060_7870:
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    rst $38                                       ; $7872: $FF
    rst $38                                       ; $7873: $FF
    nop                                           ; $7874: $00
    rst $38                                       ; $7875: $FF
    nop                                           ; $7876: $00
    nop                                           ; $7877: $00
    nop                                           ; $7878: $00
    inc bc                                        ; $7879: $03
    inc bc                                        ; $787A: $03
    inc bc                                        ; $787B: $03
    inc bc                                        ; $787C: $03
    inc bc                                        ; $787D: $03
    inc bc                                        ; $787E: $03
    inc bc                                        ; $787F: $03
    nop                                           ; $7880: $00
    jr nz, jr_060_78A2                            ; $7881: $20 $1F

    ccf                                           ; $7883: $3F
    nop                                           ; $7884: $00
    ccf                                           ; $7885: $3F
    jr nz, jr_060_7888                            ; $7886: $20 $00

jr_060_7888:
    dec hl                                        ; $7888: $2B
    nop                                           ; $7889: $00
    jr z, @+$05                                   ; $788A: $28 $03

    jr z, jr_060_7891                             ; $788C: $28 $03

    jr z, jr_060_7893                             ; $788E: $28 $03

    nop                                           ; $7890: $00

jr_060_7891:
    nop                                           ; $7891: $00
    rst $38                                       ; $7892: $FF

jr_060_7893:
    rst $38                                       ; $7893: $FF
    nop                                           ; $7894: $00
    rst $38                                       ; $7895: $FF
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    ld l, h                                       ; $7898: $6C
    nop                                           ; $7899: $00
    nop                                           ; $789A: $00
    ld l, h                                       ; $789B: $6C
    nop                                           ; $789C: $00
    ld l, h                                       ; $789D: $6C
    nop                                           ; $789E: $00
    ld l, h                                       ; $789F: $6C
    nop                                           ; $78A0: $00
    nop                                           ; $78A1: $00

jr_060_78A2:
    rst $38                                       ; $78A2: $FF
    rst $38                                       ; $78A3: $FF
    nop                                           ; $78A4: $00
    rst $38                                       ; $78A5: $FF
    nop                                           ; $78A6: $00
    nop                                           ; $78A7: $00
    dec de                                        ; $78A8: $1B
    ret c                                         ; $78A9: $D8

    db $DB                                        ; $78AA: $DB
    ret c                                         ; $78AB: $D8

    db $DB                                        ; $78AC: $DB
    ret c                                         ; $78AD: $D8

    db $DB                                        ; $78AE: $DB
    ret c                                         ; $78AF: $D8

    jr nz, jr_060_78B2                            ; $78B0: $20 $00

jr_060_78B2:
    jr nz, jr_060_78D3                            ; $78B2: $20 $1F

    ccf                                           ; $78B4: $3F
    nop                                           ; $78B5: $00
    ccf                                           ; $78B6: $3F
    nop                                           ; $78B7: $00
    ccf                                           ; $78B8: $3F
    nop                                           ; $78B9: $00
    ld a, $01                                     ; $78BA: $3E $01
    jr nz, jr_060_78CE                            ; $78BC: $20 $10

    nop                                           ; $78BE: $00
    nop                                           ; $78BF: $00
    nop                                           ; $78C0: $00
    nop                                           ; $78C1: $00
    nop                                           ; $78C2: $00
    rst $38                                       ; $78C3: $FF
    rst $38                                       ; $78C4: $FF
    nop                                           ; $78C5: $00
    rst $38                                       ; $78C6: $FF
    nop                                           ; $78C7: $00
    rst $38                                       ; $78C8: $FF
    nop                                           ; $78C9: $00
    nop                                           ; $78CA: $00
    nop                                           ; $78CB: $00
    nop                                           ; $78CC: $00
    nop                                           ; $78CD: $00

jr_060_78CE:
    nop                                           ; $78CE: $00
    nop                                           ; $78CF: $00
    rst $38                                       ; $78D0: $FF
    rst $38                                       ; $78D1: $FF
    nop                                           ; $78D2: $00

jr_060_78D3:
    nop                                           ; $78D3: $00
    rst $38                                       ; $78D4: $FF
    nop                                           ; $78D5: $00
    nop                                           ; $78D6: $00
    nop                                           ; $78D7: $00
    nop                                           ; $78D8: $00
    jr jr_060_790B                                ; $78D9: $18 $30

    jr nc, jr_060_793D                            ; $78DB: $30 $60

    ld h, b                                       ; $78DD: $60
    ret nz                                        ; $78DE: $C0

    rst $18                                       ; $78DF: $DF
    rst $38                                       ; $78E0: $FF
    rst $38                                       ; $78E1: $FF
    nop                                           ; $78E2: $00
    nop                                           ; $78E3: $00
    rst $38                                       ; $78E4: $FF
    nop                                           ; $78E5: $00
    nop                                           ; $78E6: $00
    nop                                           ; $78E7: $00
    inc bc                                        ; $78E8: $03
    jr jr_060_7903                                ; $78E9: $18 $18

    dec de                                        ; $78EB: $1B
    jr jr_060_7909                                ; $78EC: $18 $1B

    jr @-$63                                      ; $78EE: $18 $9B

    nop                                           ; $78F0: $00
    nop                                           ; $78F1: $00
    rst $38                                       ; $78F2: $FF
    rst $38                                       ; $78F3: $FF
    nop                                           ; $78F4: $00
    rst $38                                       ; $78F5: $FF
    nop                                           ; $78F6: $00
    nop                                           ; $78F7: $00
    nop                                           ; $78F8: $00
    ld b, $03                                     ; $78F9: $06 $03
    inc bc                                        ; $78FB: $03
    ld bc, $7E01                                  ; $78FC: $01 $01 $7E
    ld a, [hl]                                    ; $78FF: $7E
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    rst $38                                       ; $7902: $FF

jr_060_7903:
    rst $38                                       ; $7903: $FF
    nop                                           ; $7904: $00
    rst $38                                       ; $7905: $FF
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00

jr_060_7909:
    inc c                                         ; $7909: $0C
    inc c                                         ; $790A: $0C

jr_060_790B:
    inc c                                         ; $790B: $0C
    adc h                                         ; $790C: $8C
    adc h                                         ; $790D: $8C
    call z, $00CC                                 ; $790E: $CC $CC $00
    nop                                           ; $7911: $00
    ccf                                           ; $7912: $3F
    ld a, a                                       ; $7913: $7F
    jr nz, jr_060_7935                            ; $7914: $20 $1F

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
    db $FC                                        ; $7922: $FC
    cp $01                                        ; $7923: $FE $01
    cp $00                                        ; $7925: $FE $00
    nop                                           ; $7927: $00
    jr nc, jr_060_7930                            ; $7928: $30 $06

    ld b, $36                                     ; $792A: $06 $36
    ld b, $36                                     ; $792C: $06 $36
    ld b, $36                                     ; $792E: $06 $36

jr_060_7930:
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    cp $FC                                        ; $7933: $FE $FC

jr_060_7935:
    cp $FC                                        ; $7935: $FE $FC
    cp $FC                                        ; $7937: $FE $FC
    cp $FC                                        ; $7939: $FE $FC
    cp $FC                                        ; $793B: $FE $FC

jr_060_793D:
    cp $FC                                        ; $793D: $FE $FC
    cp $3F                                        ; $793F: $FE $3F
    ld a, a                                       ; $7941: $7F
    ccf                                           ; $7942: $3F
    ld a, a                                       ; $7943: $7F
    ccf                                           ; $7944: $3F
    ld a, a                                       ; $7945: $7F
    ccf                                           ; $7946: $3F
    ld a, a                                       ; $7947: $7F
    ld a, $7E                                     ; $7948: $3E $7E
    ld a, $7E                                     ; $794A: $3E $7E
    ld a, $7E                                     ; $794C: $3E $7E
    ld a, $7E                                     ; $794E: $3E $7E
    db $FC                                        ; $7950: $FC
    cp $FC                                        ; $7951: $FE $FC
    cp $FC                                        ; $7953: $FE $FC
    cp $1C                                        ; $7955: $FE $1C
    ld e, $0C                                     ; $7957: $1E $0C
    xor $60                                       ; $7959: $EE $60
    ld [c], a                                     ; $795B: $E2
    ld [$E00A], sp                                ; $795C: $08 $0A $E0
    ld b, $3C                                     ; $795F: $06 $3C
    ld a, [hl]                                    ; $7961: $7E
    inc a                                         ; $7962: $3C
    ld a, a                                       ; $7963: $7F
    jr c, jr_060_79DE                             ; $7964: $38 $78

    daa                                           ; $7966: $27
    ld h, b                                       ; $7967: $60
    rra                                           ; $7968: $1F
    ld b, b                                       ; $7969: $40
    rra                                           ; $796A: $1F
    ld b, b                                       ; $796B: $40
    rrca                                          ; $796C: $0F
    ld b, b                                       ; $796D: $40
    rlca                                          ; $796E: $07
    ld b, b                                       ; $796F: $40
    ldh [$0E], a                                  ; $7970: $E0 $0E
    inc b                                         ; $7972: $04
    ld e, $0C                                     ; $7973: $1E $0C
    cp $7C                                        ; $7975: $FE $7C
    ld a, [hl]                                    ; $7977: $7E
    cp h                                          ; $7978: $BC
    ld a, $DC                                     ; $7979: $3E $DC
    ld e, $EC                                     ; $797B: $1E $EC
    ld c, $9C                                     ; $797D: $0E $9C
    ld e, $02                                     ; $797F: $1E $02
    ld h, b                                       ; $7981: $60
    nop                                           ; $7982: $00
    ld [hl], b                                    ; $7983: $70
    jr nz, jr_060_79FE                            ; $7984: $20 $78

    jr nc, jr_060_7A04                            ; $7986: $30 $7C

    nop                                           ; $7988: $00
    ld a, a                                       ; $7989: $7F
    nop                                           ; $798A: $00
    nop                                           ; $798B: $00
    nop                                           ; $798C: $00
    ld a, a                                       ; $798D: $7F
    nop                                           ; $798E: $00
    nop                                           ; $798F: $00
    ld b, h                                       ; $7990: $44
    ld c, [hl]                                    ; $7991: $4E
    adc h                                         ; $7992: $8C
    sbc [hl]                                      ; $7993: $9E
    inc e                                         ; $7994: $1C
    ld a, [hl]                                    ; $7995: $7E
    inc a                                         ; $7996: $3C
    cp $00                                        ; $7997: $FE $00
    cp $00                                        ; $7999: $FE $00
    nop                                           ; $799B: $00
    nop                                           ; $799C: $00
    cp $00                                        ; $799D: $FE $00
    nop                                           ; $799F: $00
    ccf                                           ; $79A0: $3F
    nop                                           ; $79A1: $00
    nop                                           ; $79A2: $00
    ccf                                           ; $79A3: $3F
    nop                                           ; $79A4: $00
    ccf                                           ; $79A5: $3F
    nop                                           ; $79A6: $00
    nop                                           ; $79A7: $00
    inc e                                         ; $79A8: $1C
    nop                                           ; $79A9: $00
    nop                                           ; $79AA: $00
    jr jr_060_79AD                                ; $79AB: $18 $00

jr_060_79AD:
    stop                                          ; $79AD: $10 $00
    nop                                           ; $79AF: $00
    db $FC                                        ; $79B0: $FC
    nop                                           ; $79B1: $00
    nop                                           ; $79B2: $00
    db $FC                                        ; $79B3: $FC
    nop                                           ; $79B4: $00
    db $FC                                        ; $79B5: $FC
    nop                                           ; $79B6: $00
    nop                                           ; $79B7: $00
    jr c, jr_060_79BA                             ; $79B8: $38 $00

jr_060_79BA:
    nop                                           ; $79BA: $00
    jr jr_060_79BD                                ; $79BB: $18 $00

jr_060_79BD:
    ld [rRAMG], sp                                ; $79BD: $08 $00 $00
    nop                                           ; $79C0: $00
    nop                                           ; $79C1: $00
    nop                                           ; $79C2: $00
    ccf                                           ; $79C3: $3F
    rla                                           ; $79C4: $17
    ccf                                           ; $79C5: $3F
    dec bc                                        ; $79C6: $0B
    ccf                                           ; $79C7: $3F
    rla                                           ; $79C8: $17
    ccf                                           ; $79C9: $3F
    dec bc                                        ; $79CA: $0B
    ccf                                           ; $79CB: $3F
    rla                                           ; $79CC: $17
    ccf                                           ; $79CD: $3F
    dec bc                                        ; $79CE: $0B
    ccf                                           ; $79CF: $3F
    nop                                           ; $79D0: $00
    nop                                           ; $79D1: $00
    nop                                           ; $79D2: $00
    rst $38                                       ; $79D3: $FF
    rst $38                                       ; $79D4: $FF
    rst $38                                       ; $79D5: $FF
    rst $38                                       ; $79D6: $FF
    rst $38                                       ; $79D7: $FF
    rst $38                                       ; $79D8: $FF
    rst $38                                       ; $79D9: $FF
    rst $38                                       ; $79DA: $FF
    rst $38                                       ; $79DB: $FF
    rst $38                                       ; $79DC: $FF
    rst $38                                       ; $79DD: $FF

jr_060_79DE:
    rst $38                                       ; $79DE: $FF
    rst $38                                       ; $79DF: $FF
    rla                                           ; $79E0: $17
    ccf                                           ; $79E1: $3F
    dec bc                                        ; $79E2: $0B
    ccf                                           ; $79E3: $3F
    dec d                                         ; $79E4: $15
    ccf                                           ; $79E5: $3F
    nop                                           ; $79E6: $00
    ccf                                           ; $79E7: $3F
    nop                                           ; $79E8: $00
    ccf                                           ; $79E9: $3F
    nop                                           ; $79EA: $00
    nop                                           ; $79EB: $00
    nop                                           ; $79EC: $00
    nop                                           ; $79ED: $00
    nop                                           ; $79EE: $00
    nop                                           ; $79EF: $00
    rst $38                                       ; $79F0: $FF
    rst $38                                       ; $79F1: $FF
    rst $38                                       ; $79F2: $FF
    rst $38                                       ; $79F3: $FF
    rst $38                                       ; $79F4: $FF
    rst $38                                       ; $79F5: $FF
    nop                                           ; $79F6: $00
    rst $38                                       ; $79F7: $FF
    nop                                           ; $79F8: $00
    rst $38                                       ; $79F9: $FF
    nop                                           ; $79FA: $00
    nop                                           ; $79FB: $00
    nop                                           ; $79FC: $00
    nop                                           ; $79FD: $00

jr_060_79FE:
    nop                                           ; $79FE: $00
    nop                                           ; $79FF: $00
    nop                                           ; $7A00: $00
    nop                                           ; $7A01: $00
    nop                                           ; $7A02: $00
    nop                                           ; $7A03: $00

jr_060_7A04:
    nop                                           ; $7A04: $00
    rra                                           ; $7A05: $1F
    dec b                                         ; $7A06: $05
    rra                                           ; $7A07: $1F
    ld [bc], a                                    ; $7A08: $02
    rra                                           ; $7A09: $1F
    dec b                                         ; $7A0A: $05
    rra                                           ; $7A0B: $1F
    inc bc                                        ; $7A0C: $03
    rra                                           ; $7A0D: $1F
    rlca                                          ; $7A0E: $07
    rra                                           ; $7A0F: $1F
    nop                                           ; $7A10: $00
    nop                                           ; $7A11: $00
    nop                                           ; $7A12: $00
    nop                                           ; $7A13: $00
    nop                                           ; $7A14: $00
    cp $54                                        ; $7A15: $FE $54
    cp $A8                                        ; $7A17: $FE $A8
    cp $54                                        ; $7A19: $FE $54
    cp $FC                                        ; $7A1B: $FE $FC
    cp $FC                                        ; $7A1D: $FE $FC
    cp $07                                        ; $7A1F: $FE $07
    rra                                           ; $7A21: $1F
    rlca                                          ; $7A22: $07
    rra                                           ; $7A23: $1F
    rlca                                          ; $7A24: $07
    rra                                           ; $7A25: $1F
    rlca                                          ; $7A26: $07
    rra                                           ; $7A27: $1F
    rlca                                          ; $7A28: $07
    rra                                           ; $7A29: $1F
    rlca                                          ; $7A2A: $07
    rra                                           ; $7A2B: $1F
    rlca                                          ; $7A2C: $07
    rra                                           ; $7A2D: $1F
    rlca                                          ; $7A2E: $07
    rra                                           ; $7A2F: $1F
    db $FC                                        ; $7A30: $FC
    cp $FC                                        ; $7A31: $FE $FC
    cp $FC                                        ; $7A33: $FE $FC
    cp $FC                                        ; $7A35: $FE $FC
    cp $FC                                        ; $7A37: $FE $FC
    cp $FC                                        ; $7A39: $FE $FC
    cp $FC                                        ; $7A3B: $FE $FC
    cp $FC                                        ; $7A3D: $FE $FC
    cp $00                                        ; $7A3F: $FE $00
    nop                                           ; $7A41: $00
    nop                                           ; $7A42: $00
    ld a, a                                       ; $7A43: $7F
    ccf                                           ; $7A44: $3F
    ld a, a                                       ; $7A45: $7F
    ccf                                           ; $7A46: $3F
    ld a, a                                       ; $7A47: $7F
    ccf                                           ; $7A48: $3F
    ld a, a                                       ; $7A49: $7F
    ccf                                           ; $7A4A: $3F
    ld a, a                                       ; $7A4B: $7F
    nop                                           ; $7A4C: $00
    ld a, a                                       ; $7A4D: $7F
    nop                                           ; $7A4E: $00
    nop                                           ; $7A4F: $00
    ld a, a                                       ; $7A50: $7F
    ld a, a                                       ; $7A51: $7F
    nop                                           ; $7A52: $00
    nop                                           ; $7A53: $00
    ld a, a                                       ; $7A54: $7F
    nop                                           ; $7A55: $00
    nop                                           ; $7A56: $00
    ld a, a                                       ; $7A57: $7F
    nop                                           ; $7A58: $00
    ld a, a                                       ; $7A59: $7F
    ld [$2070], sp                                ; $7A5A: $08 $70 $20
    ld b, b                                       ; $7A5D: $40
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
    ld a, a                                       ; $7A68: $7F
    nop                                           ; $7A69: $00
    ld e, b                                       ; $7A6A: $58
    jr nz, jr_060_7AB0                            ; $7A6B: $20 $43

    dec sp                                        ; $7A6D: $3B
    ld c, b                                       ; $7A6E: $48
    jr c, jr_060_7AC8                             ; $7A6F: $38 $57

    scf                                           ; $7A71: $37
    ld c, a                                       ; $7A72: $4F
    cpl                                           ; $7A73: $2F
    ld e, a                                       ; $7A74: $5F
    rra                                           ; $7A75: $1F
    ld a, a                                       ; $7A76: $7F
    nop                                           ; $7A77: $00
    nop                                           ; $7A78: $00
    nop                                           ; $7A79: $00
    ld bc, $0000                                  ; $7A7A: $01 $00 $00
    ld bc, $0101                                  ; $7A7D: $01 $01 $01
    ld b, c                                       ; $7A80: $41
    dec e                                         ; $7A81: $1D
    ld c, l                                       ; $7A82: $4D
    dec e                                         ; $7A83: $1D
    ld c, [hl]                                    ; $7A84: $4E
    ld e, [hl]                                    ; $7A85: $5E
    ld b, b                                       ; $7A86: $40
    ld e, a                                       ; $7A87: $5F
    ld e, a                                       ; $7A88: $5F
    ld b, b                                       ; $7A89: $40
    ld b, b                                       ; $7A8A: $40
    ld b, b                                       ; $7A8B: $40
    ld a, a                                       ; $7A8C: $7F
    ld a, a                                       ; $7A8D: $7F
    nop                                           ; $7A8E: $00
    nop                                           ; $7A8F: $00
    nop                                           ; $7A90: $00
    nop                                           ; $7A91: $00
    rst $00                                       ; $7A92: $C7
    nop                                           ; $7A93: $00
    xor e                                         ; $7A94: $AB
    rst $00                                       ; $7A95: $C7
    rst $00                                       ; $7A96: $C7
    rst $28                                       ; $7A97: $EF
    rst $00                                       ; $7A98: $C7
    rst $28                                       ; $7A99: $EF
    cpl                                           ; $7A9A: $2F
    cpl                                           ; $7A9B: $2F
    ld b, d                                       ; $7A9C: $42
    ld b, l                                       ; $7A9D: $45
    ld h, h                                       ; $7A9E: $64
    ld h, b                                       ; $7A9F: $60
    ld b, b                                       ; $7AA0: $40
    ld h, b                                       ; $7AA1: $60
    ld b, e                                       ; $7AA2: $43
    ld h, b                                       ; $7AA3: $60
    ld b, h                                       ; $7AA4: $44
    ld h, e                                       ; $7AA5: $63
    ld b, h                                       ; $7AA6: $44
    ld h, e                                       ; $7AA7: $63
    ld b, h                                       ; $7AA8: $44
    ld h, e                                       ; $7AA9: $63
    inc b                                         ; $7AAA: $04
    inc hl                                        ; $7AAB: $23
    inc bc                                        ; $7AAC: $03
    ld b, b                                       ; $7AAD: $40
    nop                                           ; $7AAE: $00
    ld h, b                                       ; $7AAF: $60

jr_060_7AB0:
    nop                                           ; $7AB0: $00
    nop                                           ; $7AB1: $00
    rst $38                                       ; $7AB2: $FF
    nop                                           ; $7AB3: $00
    ld d, l                                       ; $7AB4: $55
    rst $38                                       ; $7AB5: $FF
    rst $38                                       ; $7AB6: $FF
    rst $38                                       ; $7AB7: $FF
    rst $38                                       ; $7AB8: $FF
    rst $38                                       ; $7AB9: $FF
    ld a, a                                       ; $7ABA: $7F
    rst $38                                       ; $7ABB: $FF
    nop                                           ; $7ABC: $00
    rst $38                                       ; $7ABD: $FF
    ld [bc], a                                    ; $7ABE: $02
    nop                                           ; $7ABF: $00
    nop                                           ; $7AC0: $00
    ld h, b                                       ; $7AC1: $60
    nop                                           ; $7AC2: $00
    ld l, a                                       ; $7AC3: $6F
    inc bc                                        ; $7AC4: $03
    cpl                                           ; $7AC5: $2F
    rlca                                          ; $7AC6: $07
    cpl                                           ; $7AC7: $2F

jr_060_7AC8:
    rlca                                          ; $7AC8: $07
    cpl                                           ; $7AC9: $2F
    inc bc                                        ; $7ACA: $03
    cpl                                           ; $7ACB: $2F
    nop                                           ; $7ACC: $00
    cpl                                           ; $7ACD: $2F
    nop                                           ; $7ACE: $00
    jr nz, jr_060_7AD1                            ; $7ACF: $20 $00

jr_060_7AD1:
    nop                                           ; $7AD1: $00
    nop                                           ; $7AD2: $00
    db $FC                                        ; $7AD3: $FC
    ldh a, [$FE]                                  ; $7AD4: $F0 $FE
    ld hl, sp-$02                                 ; $7AD6: $F8 $FE
    ld hl, sp-$02                                 ; $7AD8: $F8 $FE
    ldh a, [$FE]                                  ; $7ADA: $F0 $FE
    nop                                           ; $7ADC: $00
    cp $00                                        ; $7ADD: $FE $00
    ld [bc], a                                    ; $7ADF: $02
    nop                                           ; $7AE0: $00
    ccf                                           ; $7AE1: $3F
    nop                                           ; $7AE2: $00
    ccf                                           ; $7AE3: $3F
    nop                                           ; $7AE4: $00
    nop                                           ; $7AE5: $00
    nop                                           ; $7AE6: $00
    cp h                                          ; $7AE7: $BC
    db $10                                        ; $7AE8: $10
    sbc h                                         ; $7AE9: $9C
    ld [$088C], sp                                ; $7AEA: $08 $8C $08
    inc c                                         ; $7AED: $0C
    jr jr_060_7B08                                ; $7AEE: $18 $18

    nop                                           ; $7AF0: $00
    db $FC                                        ; $7AF1: $FC
    nop                                           ; $7AF2: $00
    cp $00                                        ; $7AF3: $FE $00
    nop                                           ; $7AF5: $00
    nop                                           ; $7AF6: $00
    ld e, $04                                     ; $7AF7: $1E $04
    inc e                                         ; $7AF9: $1C
    ld [$0819], sp                                ; $7AFA: $08 $19 $08
    jr jr_060_7B0B                                ; $7AFD: $18 $0C

    inc c                                         ; $7AFF: $0C
    ld a, a                                       ; $7B00: $7F
    nop                                           ; $7B01: $00
    nop                                           ; $7B02: $00
    ld a, a                                       ; $7B03: $7F
    rla                                           ; $7B04: $17
    ld a, a                                       ; $7B05: $7F
    cpl                                           ; $7B06: $2F
    ld a, a                                       ; $7B07: $7F

jr_060_7B08:
    rra                                           ; $7B08: $1F
    ld a, a                                       ; $7B09: $7F
    cpl                                           ; $7B0A: $2F

jr_060_7B0B:
    ld a, a                                       ; $7B0B: $7F
    rra                                           ; $7B0C: $1F
    ld a, a                                       ; $7B0D: $7F
    ccf                                           ; $7B0E: $3F
    ld a, a                                       ; $7B0F: $7F
    rst $38                                       ; $7B10: $FF
    nop                                           ; $7B11: $00
    nop                                           ; $7B12: $00
    rst $38                                       ; $7B13: $FF
    rst $38                                       ; $7B14: $FF
    rst $38                                       ; $7B15: $FF
    rst $38                                       ; $7B16: $FF
    rst $38                                       ; $7B17: $FF
    rst $38                                       ; $7B18: $FF
    rst $38                                       ; $7B19: $FF
    rst $38                                       ; $7B1A: $FF
    rst $38                                       ; $7B1B: $FF
    rst $38                                       ; $7B1C: $FF
    rst $38                                       ; $7B1D: $FF
    rst $38                                       ; $7B1E: $FF
    rst $38                                       ; $7B1F: $FF
    rra                                           ; $7B20: $1F
    ld a, a                                       ; $7B21: $7F
    cpl                                           ; $7B22: $2F
    ld a, a                                       ; $7B23: $7F
    dec d                                         ; $7B24: $15
    ld a, a                                       ; $7B25: $7F
    nop                                           ; $7B26: $00
    nop                                           ; $7B27: $00
    ld a, a                                       ; $7B28: $7F
    nop                                           ; $7B29: $00
    ld a, a                                       ; $7B2A: $7F
    nop                                           ; $7B2B: $00
    ld a, a                                       ; $7B2C: $7F
    nop                                           ; $7B2D: $00
    nop                                           ; $7B2E: $00
    nop                                           ; $7B2F: $00
    rst $38                                       ; $7B30: $FF
    rst $38                                       ; $7B31: $FF
    rst $38                                       ; $7B32: $FF
    rst $38                                       ; $7B33: $FF
    rst $38                                       ; $7B34: $FF
    rst $38                                       ; $7B35: $FF
    nop                                           ; $7B36: $00
    nop                                           ; $7B37: $00
    rst $38                                       ; $7B38: $FF
    nop                                           ; $7B39: $00
    rst $38                                       ; $7B3A: $FF
    nop                                           ; $7B3B: $00
    rst $38                                       ; $7B3C: $FF
    nop                                           ; $7B3D: $00
    nop                                           ; $7B3E: $00
    nop                                           ; $7B3F: $00
    nop                                           ; $7B40: $00
    rst $38                                       ; $7B41: $FF
    rst $38                                       ; $7B42: $FF
    rst $38                                       ; $7B43: $FF
    rst $38                                       ; $7B44: $FF
    rst $38                                       ; $7B45: $FF
    nop                                           ; $7B46: $00
    nop                                           ; $7B47: $00
    rst $38                                       ; $7B48: $FF
    nop                                           ; $7B49: $00
    rst $38                                       ; $7B4A: $FF
    nop                                           ; $7B4B: $00
    rst $38                                       ; $7B4C: $FF
    nop                                           ; $7B4D: $00
    nop                                           ; $7B4E: $00
    nop                                           ; $7B4F: $00
    nop                                           ; $7B50: $00
    ld a, a                                       ; $7B51: $7F
    ld e, a                                       ; $7B52: $5F
    ld a, a                                       ; $7B53: $7F
    cpl                                           ; $7B54: $2F
    ld a, a                                       ; $7B55: $7F
    nop                                           ; $7B56: $00
    nop                                           ; $7B57: $00
    ld a, a                                       ; $7B58: $7F
    nop                                           ; $7B59: $00
    ld a, a                                       ; $7B5A: $7F
    nop                                           ; $7B5B: $00
    ld a, a                                       ; $7B5C: $7F
    nop                                           ; $7B5D: $00
    nop                                           ; $7B5E: $00
    nop                                           ; $7B5F: $00
    nop                                           ; $7B60: $00
    ld a, a                                       ; $7B61: $7F
    ld e, a                                       ; $7B62: $5F
    ld a, a                                       ; $7B63: $7F
    cpl                                           ; $7B64: $2F
    ld a, a                                       ; $7B65: $7F
    nop                                           ; $7B66: $00
    nop                                           ; $7B67: $00
    ld e, a                                       ; $7B68: $5F
    nop                                           ; $7B69: $00
    ld e, a                                       ; $7B6A: $5F
    nop                                           ; $7B6B: $00
    ld e, a                                       ; $7B6C: $5F
    nop                                           ; $7B6D: $00
    nop                                           ; $7B6E: $00
    nop                                           ; $7B6F: $00
    nop                                           ; $7B70: $00
    rst $38                                       ; $7B71: $FF
    rst $38                                       ; $7B72: $FF
    rst $38                                       ; $7B73: $FF
    rst $38                                       ; $7B74: $FF
    rst $38                                       ; $7B75: $FF
    ret nz                                        ; $7B76: $C0

    ret nz                                        ; $7B77: $C0

    ccf                                           ; $7B78: $3F
    nop                                           ; $7B79: $00
    rst $38                                       ; $7B7A: $FF
    nop                                           ; $7B7B: $00
    rst $38                                       ; $7B7C: $FF
    nop                                           ; $7B7D: $00
    nop                                           ; $7B7E: $00
    nop                                           ; $7B7F: $00
    nop                                           ; $7B80: $00
    ld c, a                                       ; $7B81: $4F
    nop                                           ; $7B82: $00
    jr z, jr_060_7B88                             ; $7B83: $28 $03

    rlca                                          ; $7B85: $07
    nop                                           ; $7B86: $00
    nop                                           ; $7B87: $00

jr_060_7B88:
    scf                                           ; $7B88: $37
    nop                                           ; $7B89: $00
    ld l, a                                       ; $7B8A: $6F
    nop                                           ; $7B8B: $00
    cpl                                           ; $7B8C: $2F
    nop                                           ; $7B8D: $00
    nop                                           ; $7B8E: $00
    nop                                           ; $7B8F: $00
    nop                                           ; $7B90: $00
    ld a, a                                       ; $7B91: $7F
    ld a, a                                       ; $7B92: $7F
    rst $38                                       ; $7B93: $FF
    rst $38                                       ; $7B94: $FF
    rst $38                                       ; $7B95: $FF
    nop                                           ; $7B96: $00
    nop                                           ; $7B97: $00
    rst $38                                       ; $7B98: $FF
    nop                                           ; $7B99: $00
    rst $38                                       ; $7B9A: $FF
    nop                                           ; $7B9B: $00
    rst $38                                       ; $7B9C: $FF
    nop                                           ; $7B9D: $00
    nop                                           ; $7B9E: $00
    nop                                           ; $7B9F: $00
    nop                                           ; $7BA0: $00
    nop                                           ; $7BA1: $00
    nop                                           ; $7BA2: $00
    nop                                           ; $7BA3: $00
    ld d, b                                       ; $7BA4: $50
    cpl                                           ; $7BA5: $2F
    nop                                           ; $7BA6: $00
    nop                                           ; $7BA7: $00
    ld a, a                                       ; $7BA8: $7F
    ld e, a                                       ; $7BA9: $5F
    ld a, a                                       ; $7BAA: $7F
    jr nz, jr_060_7BAD                            ; $7BAB: $20 $00

jr_060_7BAD:
    nop                                           ; $7BAD: $00
    ccf                                           ; $7BAE: $3F
    ld a, a                                       ; $7BAF: $7F
    nop                                           ; $7BB0: $00
    nop                                           ; $7BB1: $00
    nop                                           ; $7BB2: $00
    nop                                           ; $7BB3: $00
    nop                                           ; $7BB4: $00
    rst $38                                       ; $7BB5: $FF
    nop                                           ; $7BB6: $00
    nop                                           ; $7BB7: $00
    rst $38                                       ; $7BB8: $FF
    rst $38                                       ; $7BB9: $FF
    rst $38                                       ; $7BBA: $FF
    nop                                           ; $7BBB: $00
    nop                                           ; $7BBC: $00
    nop                                           ; $7BBD: $00
    rst $38                                       ; $7BBE: $FF
    rst $38                                       ; $7BBF: $FF
    ld d, b                                       ; $7BC0: $50
    cpl                                           ; $7BC1: $2F
    jr nz, jr_060_7C23                            ; $7BC2: $20 $5F

    nop                                           ; $7BC4: $00
    nop                                           ; $7BC5: $00
    cpl                                           ; $7BC6: $2F
    ld a, a                                       ; $7BC7: $7F
    ld e, a                                       ; $7BC8: $5F
    ld a, a                                       ; $7BC9: $7F
    cpl                                           ; $7BCA: $2F
    ld a, a                                       ; $7BCB: $7F
    nop                                           ; $7BCC: $00
    ld a, a                                       ; $7BCD: $7F
    nop                                           ; $7BCE: $00
    nop                                           ; $7BCF: $00
    nop                                           ; $7BD0: $00
    rst $38                                       ; $7BD1: $FF
    nop                                           ; $7BD2: $00
    rst $38                                       ; $7BD3: $FF
    nop                                           ; $7BD4: $00
    nop                                           ; $7BD5: $00
    rst $38                                       ; $7BD6: $FF
    rst $38                                       ; $7BD7: $FF
    rst $38                                       ; $7BD8: $FF
    rst $38                                       ; $7BD9: $FF
    rst $38                                       ; $7BDA: $FF
    rst $38                                       ; $7BDB: $FF
    nop                                           ; $7BDC: $00
    rst $38                                       ; $7BDD: $FF
    nop                                           ; $7BDE: $00
    nop                                           ; $7BDF: $00
    dec d                                         ; $7BE0: $15
    ld a, a                                       ; $7BE1: $7F
    cpl                                           ; $7BE2: $2F
    ld a, a                                       ; $7BE3: $7F
    rra                                           ; $7BE4: $1F
    ld a, a                                       ; $7BE5: $7F
    ccf                                           ; $7BE6: $3F
    ld a, a                                       ; $7BE7: $7F
    rra                                           ; $7BE8: $1F
    ld a, a                                       ; $7BE9: $7F
    cpl                                           ; $7BEA: $2F
    ld a, a                                       ; $7BEB: $7F
    rra                                           ; $7BEC: $1F
    ld a, a                                       ; $7BED: $7F
    cpl                                           ; $7BEE: $2F
    ld a, a                                       ; $7BEF: $7F
    rst $38                                       ; $7BF0: $FF
    rst $38                                       ; $7BF1: $FF
    rst $38                                       ; $7BF2: $FF
    rst $38                                       ; $7BF3: $FF
    rst $38                                       ; $7BF4: $FF
    rst $38                                       ; $7BF5: $FF
    rst $38                                       ; $7BF6: $FF
    rst $38                                       ; $7BF7: $FF
    rst $38                                       ; $7BF8: $FF
    rst $38                                       ; $7BF9: $FF
    rst $38                                       ; $7BFA: $FF
    rst $38                                       ; $7BFB: $FF
    rst $38                                       ; $7BFC: $FF
    rst $38                                       ; $7BFD: $FF
    rst $38                                       ; $7BFE: $FF
    rst $38                                       ; $7BFF: $FF
    rla                                           ; $7C00: $17
    ld a, a                                       ; $7C01: $7F
    nop                                           ; $7C02: $00
    ld a, a                                       ; $7C03: $7F
    ld a, a                                       ; $7C04: $7F
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
    rst $38                                       ; $7C10: $FF
    rst $38                                       ; $7C11: $FF
    nop                                           ; $7C12: $00
    rst $38                                       ; $7C13: $FF
    rst $38                                       ; $7C14: $FF
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

jr_060_7C23:
    inc c                                         ; $7C23: $0C
    add b                                         ; $7C24: $80
    rra                                           ; $7C25: $1F
    add b                                         ; $7C26: $80
    ccf                                           ; $7C27: $3F
    ret nz                                        ; $7C28: $C0

    rra                                           ; $7C29: $1F
    jp $C71F                                      ; $7C2A: $C3 $1F $C7


    rra                                           ; $7C2D: $1F
    rlca                                          ; $7C2E: $07
    ccf                                           ; $7C2F: $3F
    nop                                           ; $7C30: $00
    nop                                           ; $7C31: $00
    nop                                           ; $7C32: $00
    nop                                           ; $7C33: $00
    nop                                           ; $7C34: $00
    nop                                           ; $7C35: $00
    nop                                           ; $7C36: $00
    rst $38                                       ; $7C37: $FF
    nop                                           ; $7C38: $00
    rst $38                                       ; $7C39: $FF
    nop                                           ; $7C3A: $00
    rst $38                                       ; $7C3B: $FF
    rst $38                                       ; $7C3C: $FF
    rst $38                                       ; $7C3D: $FF
    rst $38                                       ; $7C3E: $FF
    rst $38                                       ; $7C3F: $FF
    nop                                           ; $7C40: $00
    nop                                           ; $7C41: $00
    nop                                           ; $7C42: $00
    inc e                                         ; $7C43: $1C
    nop                                           ; $7C44: $00
    rst $38                                       ; $7C45: $FF
    nop                                           ; $7C46: $00
    rst $38                                       ; $7C47: $FF
    inc c                                         ; $7C48: $0C
    rst $38                                       ; $7C49: $FF
    ccf                                           ; $7C4A: $3F
    rst $38                                       ; $7C4B: $FF
    rst $38                                       ; $7C4C: $FF
    rst $38                                       ; $7C4D: $FF
    rst $38                                       ; $7C4E: $FF
    rst $38                                       ; $7C4F: $FF
    nop                                           ; $7C50: $00
    nop                                           ; $7C51: $00
    nop                                           ; $7C52: $00
    inc e                                         ; $7C53: $1C
    nop                                           ; $7C54: $00
    rst $38                                       ; $7C55: $FF
    nop                                           ; $7C56: $00
    rst $38                                       ; $7C57: $FF
    inc c                                         ; $7C58: $0C
    rst $38                                       ; $7C59: $FF
    ccf                                           ; $7C5A: $3F
    rst $38                                       ; $7C5B: $FF
    rst $38                                       ; $7C5C: $FF
    rst $38                                       ; $7C5D: $FF
    rst $38                                       ; $7C5E: $FF
    rst $38                                       ; $7C5F: $FF
    nop                                           ; $7C60: $00
    nop                                           ; $7C61: $00
    nop                                           ; $7C62: $00
    nop                                           ; $7C63: $00
    ld bc, $0180                                  ; $7C64: $01 $80 $01
    db $FC                                        ; $7C67: $FC
    inc bc                                        ; $7C68: $03
    ld hl, sp+$03                                 ; $7C69: $F8 $03
    ld hl, sp-$3D                                 ; $7C6B: $F8 $C3
    ld hl, sp-$40                                 ; $7C6D: $F8 $C0
    db $FC                                        ; $7C6F: $FC
    rlca                                          ; $7C70: $07
    ld a, a                                       ; $7C71: $7F
    rrca                                          ; $7C72: $0F
    ld a, a                                       ; $7C73: $7F
    adc a                                         ; $7C74: $8F
    ccf                                           ; $7C75: $3F
    add a                                         ; $7C76: $87
    ccf                                           ; $7C77: $3F
    jp $C31F                                      ; $7C78: $C3 $1F $C3


    rra                                           ; $7C7B: $1F
    jp $071F                                      ; $7C7C: $C3 $1F $07


    ccf                                           ; $7C7F: $3F
    ldh [$FE], a                                  ; $7C80: $E0 $FE
    ldh a, [$FE]                                  ; $7C82: $F0 $FE
    pop af                                        ; $7C84: $F1
    db $FC                                        ; $7C85: $FC
    pop hl                                        ; $7C86: $E1
    db $FC                                        ; $7C87: $FC
    jp $C3F8                                      ; $7C88: $C3 $F8 $C3


    ld hl, sp-$3D                                 ; $7C8B: $F8 $C3
    ld hl, sp-$20                                 ; $7C8D: $F8 $E0
    db $FC                                        ; $7C8F: $FC
    rrca                                          ; $7C90: $0F
    ld a, a                                       ; $7C91: $7F
    rrca                                          ; $7C92: $0F
    ld a, a                                       ; $7C93: $7F
    adc a                                         ; $7C94: $8F
    ccf                                           ; $7C95: $3F
    add a                                         ; $7C96: $87
    ccf                                           ; $7C97: $3F
    jp $C01F                                      ; $7C98: $C3 $1F $C0


    rra                                           ; $7C9B: $1F
    ret nz                                        ; $7C9C: $C0

    rra                                           ; $7C9D: $1F
    nop                                           ; $7C9E: $00
    nop                                           ; $7C9F: $00
    rst $38                                       ; $7CA0: $FF
    rst $38                                       ; $7CA1: $FF
    rst $38                                       ; $7CA2: $FF
    rst $38                                       ; $7CA3: $FF
    rst $38                                       ; $7CA4: $FF
    rst $38                                       ; $7CA5: $FF
    rst $38                                       ; $7CA6: $FF
    rst $38                                       ; $7CA7: $FF
    rst $38                                       ; $7CA8: $FF
    rst $38                                       ; $7CA9: $FF
    nop                                           ; $7CAA: $00
    rst $38                                       ; $7CAB: $FF
    nop                                           ; $7CAC: $00
    rst $38                                       ; $7CAD: $FF
    nop                                           ; $7CAE: $00
    nop                                           ; $7CAF: $00
    rst $38                                       ; $7CB0: $FF
    rst $38                                       ; $7CB1: $FF
    rst $38                                       ; $7CB2: $FF
    rst $38                                       ; $7CB3: $FF
    rst $38                                       ; $7CB4: $FF
    rst $38                                       ; $7CB5: $FF
    rst $38                                       ; $7CB6: $FF
    rst $38                                       ; $7CB7: $FF
    rst $38                                       ; $7CB8: $FF
    rst $38                                       ; $7CB9: $FF
    ld [hl], b                                    ; $7CBA: $70
    rst $38                                       ; $7CBB: $FF
    nop                                           ; $7CBC: $00
    rst $38                                       ; $7CBD: $FF
    nop                                           ; $7CBE: $00
    nop                                           ; $7CBF: $00
    ldh a, [$FE]                                  ; $7CC0: $F0 $FE
    ldh a, [$FE]                                  ; $7CC2: $F0 $FE
    pop af                                        ; $7CC4: $F1
    db $FC                                        ; $7CC5: $FC
    pop af                                        ; $7CC6: $F1
    db $FC                                        ; $7CC7: $FC
    db $E3                                        ; $7CC8: $E3
    ld hl, sp+$63                                 ; $7CC9: $F8 $63
    ld hl, sp+$03                                 ; $7CCB: $F8 $03
    ld hl, sp+$00                                 ; $7CCD: $F8 $00
    nop                                           ; $7CCF: $00
    nop                                           ; $7CD0: $00
    nop                                           ; $7CD1: $00
    rst $38                                       ; $7CD2: $FF
    rst $38                                       ; $7CD3: $FF
    nop                                           ; $7CD4: $00
    rst $38                                       ; $7CD5: $FF
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
    rst $38                                       ; $7CE2: $FF
    rst $38                                       ; $7CE3: $FF
    nop                                           ; $7CE4: $00
    rst $38                                       ; $7CE5: $FF
    nop                                           ; $7CE6: $00
    nop                                           ; $7CE7: $00
    jr nc, @-$7E                                  ; $7CE8: $30 $80

    add b                                         ; $7CEA: $80
    or b                                          ; $7CEB: $B0
    add b                                         ; $7CEC: $80
    or b                                          ; $7CED: $B0
    add b                                         ; $7CEE: $80
    or b                                          ; $7CEF: $B0
    nop                                           ; $7CF0: $00
    nop                                           ; $7CF1: $00
    rst $38                                       ; $7CF2: $FF
    rst $38                                       ; $7CF3: $FF
    nop                                           ; $7CF4: $00
    rst $38                                       ; $7CF5: $FF
    nop                                           ; $7CF6: $00
    nop                                           ; $7CF7: $00
    ld a, [de]                                    ; $7CF8: $1A
    ret c                                         ; $7CF9: $D8

    jp c, $DAD8                                   ; $7CFA: $DA $D8 $DA

    ret c                                         ; $7CFD: $D8

    jp c, $00D8                                   ; $7CFE: $DA $D8 $00

    nop                                           ; $7D01: $00
    rst $38                                       ; $7D02: $FF
    rst $38                                       ; $7D03: $FF
    nop                                           ; $7D04: $00
    rst $38                                       ; $7D05: $FF
    nop                                           ; $7D06: $00
    nop                                           ; $7D07: $00
    inc c                                         ; $7D08: $0C
    ld bc, $0D01                                  ; $7D09: $01 $01 $0D
    ld bc, $010D                                  ; $7D0C: $01 $0D $01
    dec c                                         ; $7D0F: $0D
    nop                                           ; $7D10: $00
    nop                                           ; $7D11: $00
    rst $38                                       ; $7D12: $FF
    rst $38                                       ; $7D13: $FF
    nop                                           ; $7D14: $00
    rst $38                                       ; $7D15: $FF
    nop                                           ; $7D16: $00
    nop                                           ; $7D17: $00
    ld bc, $CDCD                                  ; $7D18: $01 $CD $CD
    call $CDCD                                    ; $7D1B: $CD $CD $CD
    call $00CD                                    ; $7D1E: $CD $CD $00
    nop                                           ; $7D21: $00
    rst $38                                       ; $7D22: $FF
    rst $38                                       ; $7D23: $FF
    nop                                           ; $7D24: $00
    rst $38                                       ; $7D25: $FF
    nop                                           ; $7D26: $00
    nop                                           ; $7D27: $00
    or [hl]                                       ; $7D28: $B6
    add b                                         ; $7D29: $80
    or b                                          ; $7D2A: $B0
    add [hl]                                      ; $7D2B: $86
    or b                                          ; $7D2C: $B0
    add [hl]                                      ; $7D2D: $86
    or b                                          ; $7D2E: $B0
    add [hl]                                      ; $7D2F: $86
    rra                                           ; $7D30: $1F
    rra                                           ; $7D31: $1F
    nop                                           ; $7D32: $00
    nop                                           ; $7D33: $00
    nop                                           ; $7D34: $00
    nop                                           ; $7D35: $00
    nop                                           ; $7D36: $00
    ld a, [bc]                                    ; $7D37: $0A
    ld a, [bc]                                    ; $7D38: $0A
    dec d                                         ; $7D39: $15
    dec b                                         ; $7D3A: $05
    ld a, [bc]                                    ; $7D3B: $0A
    rrca                                          ; $7D3C: $0F
    db $10                                        ; $7D3D: $10
    rrca                                          ; $7D3E: $0F
    db $10                                        ; $7D3F: $10
    cp $FE                                        ; $7D40: $FE $FE
    nop                                           ; $7D42: $00
    nop                                           ; $7D43: $00
    nop                                           ; $7D44: $00
    nop                                           ; $7D45: $00
    nop                                           ; $7D46: $00
    xor d                                         ; $7D47: $AA
    xor d                                         ; $7D48: $AA
    ld d, h                                       ; $7D49: $54
    ld d, h                                       ; $7D4A: $54
    xor d                                         ; $7D4B: $AA
    cp $00                                        ; $7D4C: $FE $00
    cp $00                                        ; $7D4E: $FE $00
    rrca                                          ; $7D50: $0F
    db $10                                        ; $7D51: $10
    rrca                                          ; $7D52: $0F
    db $10                                        ; $7D53: $10
    rrca                                          ; $7D54: $0F
    db $10                                        ; $7D55: $10
    rrca                                          ; $7D56: $0F
    db $10                                        ; $7D57: $10
    rrca                                          ; $7D58: $0F
    db $10                                        ; $7D59: $10
    rrca                                          ; $7D5A: $0F
    db $10                                        ; $7D5B: $10
    rrca                                          ; $7D5C: $0F
    db $10                                        ; $7D5D: $10
    rrca                                          ; $7D5E: $0F
    db $10                                        ; $7D5F: $10
    cp $00                                        ; $7D60: $FE $00
    cp $00                                        ; $7D62: $FE $00
    cp $00                                        ; $7D64: $FE $00
    cp $00                                        ; $7D66: $FE $00
    cp $00                                        ; $7D68: $FE $00
    cp $00                                        ; $7D6A: $FE $00
    cp $00                                        ; $7D6C: $FE $00
    cp $00                                        ; $7D6E: $FE $00
    rrca                                          ; $7D70: $0F
    db $10                                        ; $7D71: $10
    rrca                                          ; $7D72: $0F
    db $10                                        ; $7D73: $10
    rrca                                          ; $7D74: $0F
    db $10                                        ; $7D75: $10
    rrca                                          ; $7D76: $0F
    db $10                                        ; $7D77: $10
    rrca                                          ; $7D78: $0F
    db $10                                        ; $7D79: $10
    ld [$0017], sp                                ; $7D7A: $08 $17 $00
    jr jr_060_7D7F                                ; $7D7D: $18 $00

jr_060_7D7F:
    nop                                           ; $7D7F: $00
    cp $00                                        ; $7D80: $FE $00
    cp $00                                        ; $7D82: $FE $00
    cp $00                                        ; $7D84: $FE $00
    cp $00                                        ; $7D86: $FE $00
    cp $00                                        ; $7D88: $FE $00
    ld b, $F8                                     ; $7D8A: $06 $F8
    ld [bc], a                                    ; $7D8C: $02
    inc b                                         ; $7D8D: $04
    nop                                           ; $7D8E: $00
    nop                                           ; $7D8F: $00
    ret nz                                        ; $7D90: $C0

    nop                                           ; $7D91: $00
    dec bc                                        ; $7D92: $0B
    nop                                           ; $7D93: $00
    sbc [hl]                                      ; $7D94: $9E
    ld bc, $07D9                                  ; $7D95: $01 $D9 $07
    ld d, a                                       ; $7D98: $57
    adc a                                         ; $7D99: $8F
    inc sp                                        ; $7D9A: $33
    adc $35                                       ; $7D9B: $CE $35
    ret z                                         ; $7D9D: $C8

    ld [hl-], a                                   ; $7D9E: $32
    call z, $61E1                                 ; $7D9F: $CC $E1 $61
    cp $60                                        ; $7DA2: $FE $60
    rst $38                                       ; $7DA4: $FF
    ld a, $FF                                     ; $7DA5: $3E $FF
    ld e, a                                       ; $7DA7: $5F
    rst $38                                       ; $7DA8: $FF
    cpl                                           ; $7DA9: $2F
    rst $38                                       ; $7DAA: $FF
    nop                                           ; $7DAB: $00
    and b                                         ; $7DAC: $A0
    nop                                           ; $7DAD: $00
    rrca                                          ; $7DAE: $0F
    nop                                           ; $7DAF: $00
    rst $38                                       ; $7DB0: $FF

jr_060_7DB1:
    rst $38                                       ; $7DB1: $FF
    ei                                            ; $7DB2: $FB
    ei                                            ; $7DB3: $FB
    ld a, h                                       ; $7DB4: $7C
    ld a, b                                       ; $7DB5: $78
    cp a                                          ; $7DB6: $BF
    inc l                                         ; $7DB7: $2C
    sbc [hl]                                      ; $7DB8: $9E
    nop                                           ; $7DB9: $00
    ld b, b                                       ; $7DBA: $40
    nop                                           ; $7DBB: $00
    ld h, b                                       ; $7DBC: $60
    nop                                           ; $7DBD: $00
    and b                                         ; $7DBE: $A0
    nop                                           ; $7DBF: $00
    cp $CC                                        ; $7DC0: $FE $CC
    sbc $8C                                       ; $7DC2: $DE $8C
    rst $18                                       ; $7DC4: $DF
    add l                                         ; $7DC5: $85
    ld c, $00                                     ; $7DC6: $0E $00
    nop                                           ; $7DC8: $00
    nop                                           ; $7DC9: $00
    nop                                           ; $7DCA: $00
    nop                                           ; $7DCB: $00
    nop                                           ; $7DCC: $00
    nop                                           ; $7DCD: $00
    nop                                           ; $7DCE: $00
    nop                                           ; $7DCF: $00
    db $FC                                        ; $7DD0: $FC
    ld a, b                                       ; $7DD1: $78
    di                                            ; $7DD2: $F3
    inc hl                                        ; $7DD3: $23
    ld b, e                                       ; $7DD4: $43
    inc bc                                        ; $7DD5: $03
    rra                                           ; $7DD6: $1F
    dec bc                                        ; $7DD7: $0B
    scf                                           ; $7DD8: $37
    rlca                                          ; $7DD9: $07
    ccf                                           ; $7DDA: $3F
    ld [$0414], sp                                ; $7DDB: $08 $14 $04
    ld bc, $3300                                  ; $7DDE: $01 $00 $33
    rrca                                          ; $7DE1: $0F
    ld e, [hl]                                    ; $7DE2: $5E
    ccf                                           ; $7DE3: $3F
    ld b, b                                       ; $7DE4: $40
    ccf                                           ; $7DE5: $3F
    ld b, b                                       ; $7DE6: $40
    ccf                                           ; $7DE7: $3F
    or h                                          ; $7DE8: $B4
    dec bc                                        ; $7DE9: $0B
    ld c, a                                       ; $7DEA: $4F
    nop                                           ; $7DEB: $00
    nop                                           ; $7DEC: $00
    nop                                           ; $7DED: $00
    ld d, h                                       ; $7DEE: $54
    nop                                           ; $7DEF: $00
    adc h                                         ; $7DF0: $8C
    ret nz                                        ; $7DF1: $C0

    ld b, [hl]                                    ; $7DF2: $46
    call nz, $CA01                                ; $7DF3: $C4 $01 $CA
    ld de, $D0CC                                  ; $7DF6: $11 $CC $D0
    dec c                                         ; $7DF9: $0D
    sbc h                                         ; $7DFA: $9C
    ld bc, $010A                                  ; $7DFB: $01 $0A $01
    inc bc                                        ; $7DFE: $03
    nop                                           ; $7DFF: $00
    nop                                           ; $7E00: $00
    nop                                           ; $7E01: $00
    nop                                           ; $7E02: $00
    nop                                           ; $7E03: $00
    ret nz                                        ; $7E04: $C0

    nop                                           ; $7E05: $00
    ld b, c                                       ; $7E06: $41
    add b                                         ; $7E07: $80
    ld hl, $10C0                                  ; $7E08: $21 $C0 $10
    ldh [$30], a                                  ; $7E0B: $E0 $30
    ret nz                                        ; $7E0D: $C0

    ld h, b                                       ; $7E0E: $60
    add b                                         ; $7E0F: $80
    ld a, [hl]                                    ; $7E10: $7E
    ld a, a                                       ; $7E11: $7F
    and c                                         ; $7E12: $A1
    ld a, a                                       ; $7E13: $7F
    ld b, b                                       ; $7E14: $40
    ccf                                           ; $7E15: $3F
    add b                                         ; $7E16: $80
    ccf                                           ; $7E17: $3F
    sub l                                         ; $7E18: $95
    ld c, d                                       ; $7E19: $4A
    rl h                                          ; $7E1A: $CB $14
    cpl                                           ; $7E1C: $2F
    nop                                           ; $7E1D: $00
    ld bc, $B100                                  ; $7E1E: $01 $00 $B1
    nop                                           ; $7E21: $00
    sbc h                                         ; $7E22: $9C
    nop                                           ; $7E23: $00
    xor b                                         ; $7E24: $A8
    db $10                                        ; $7E25: $10
    sbc c                                         ; $7E26: $99
    jr nz, jr_060_7E94                            ; $7E27: $20 $6B

    nop                                           ; $7E29: $00
    ld d, l                                       ; $7E2A: $55
    nop                                           ; $7E2B: $00
    ld [bc], a                                    ; $7E2C: $02
    nop                                           ; $7E2D: $00
    add b                                         ; $7E2E: $80
    jr nz, jr_060_7DB1                            ; $7E2F: $20 $80

    nop                                           ; $7E31: $00
    ld l, $00                                     ; $7E32: $2E $00
    ldh a, [rIF]                                  ; $7E34: $F0 $0F
    add b                                         ; $7E36: $80
    ld a, a                                       ; $7E37: $7F
    ret nz                                        ; $7E38: $C0

    ccf                                           ; $7E39: $3F
    ld a, a                                       ; $7E3A: $7F
    nop                                           ; $7E3B: $00
    ccf                                           ; $7E3C: $3F
    nop                                           ; $7E3D: $00
    nop                                           ; $7E3E: $00
    nop                                           ; $7E3F: $00
    ld c, $00                                     ; $7E40: $0E $00
    jr jr_060_7E4B                                ; $7E42: $18 $07

    jr nc, jr_060_7E55                            ; $7E44: $30 $0F

    add hl, sp                                    ; $7E46: $39
    ld b, $1F                                     ; $7E47: $06 $1F
    add b                                         ; $7E49: $80
    inc l                                         ; $7E4A: $2C

jr_060_7E4B:
    nop                                           ; $7E4B: $00
    ld b, b                                       ; $7E4C: $40
    ld b, $20                                     ; $7E4D: $06 $20
    rst $08                                       ; $7E4F: $CF
    nop                                           ; $7E50: $00
    nop                                           ; $7E51: $00
    nop                                           ; $7E52: $00
    nop                                           ; $7E53: $00
    nop                                           ; $7E54: $00

jr_060_7E55:
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

jr_060_7E94:
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
