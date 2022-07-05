SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]

    rrca                                          ; $4000: $0F
    rlca                                          ; $4001: $07
    dec de                                        ; $4002: $1B
    rra                                           ; $4003: $1F
    rla                                           ; $4004: $17
    rra                                           ; $4005: $1F
    rra                                           ; $4006: $1F
    rlca                                          ; $4007: $07
    ld b, $0F                                     ; $4008: $06 $0F
    dec e                                         ; $400A: $1D
    rra                                           ; $400B: $1F
    dec bc                                        ; $400C: $0B
    scf                                           ; $400D: $37
    ld [de], a                                    ; $400E: $12
    ld sp, $C0C0                                  ; $400F: $31 $C0 $C0
    ldh [$E0], a                                  ; $4012: $E0 $E0
    ldh [$E0], a                                  ; $4014: $E0 $E0
    ldh [$E0], a                                  ; $4016: $E0 $E0
    ldh [$E0], a                                  ; $4018: $E0 $E0
    ret nz                                        ; $401A: $C0

    ldh a, [$A0]                                  ; $401B: $F0 $A0
    ret nc                                        ; $401D: $D0

    add b                                         ; $401E: $80
    sub b                                         ; $401F: $90
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    ld bc, $0100                                  ; $4024: $01 $00 $01
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    ld [bc], a                                    ; $4029: $02
    rlca                                          ; $402A: $07
    nop                                           ; $402B: $00
    ld bc, $0106                                  ; $402C: $01 $06 $01
    ld c, $3B                                     ; $402F: $0E $3B
    ld de, $0736                                  ; $4031: $11 $36 $07
    add l                                         ; $4034: $85
    rlca                                          ; $4035: $07
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    rst $00                                       ; $4038: $C7
    nop                                           ; $4039: $00
    add c                                         ; $403A: $81
    inc bc                                        ; $403B: $03
    ld d, l                                       ; $403C: $55
    jr c, jr_041_406F                             ; $403D: $38 $30

    ret nz                                        ; $403F: $C0

    db $E3                                        ; $4040: $E3
    add b                                         ; $4041: $80
    nop                                           ; $4042: $00
    add b                                         ; $4043: $80
    add b                                         ; $4044: $80
    ret nz                                        ; $4045: $C0

    rlca                                          ; $4046: $07
    jr nz, @+$42                                  ; $4047: $20 $40

    ret nz                                        ; $4049: $C0

    nop                                           ; $404A: $00
    ld bc, $0301                                  ; $404B: $01 $01 $03
    ld b, $03                                     ; $404E: $06 $03
    add b                                         ; $4050: $80
    nop                                           ; $4051: $00
    ld b, b                                       ; $4052: $40
    nop                                           ; $4053: $00
    and b                                         ; $4054: $A0
    ld b, b                                       ; $4055: $40
    nop                                           ; $4056: $00
    ret nz                                        ; $4057: $C0

    ld b, b                                       ; $4058: $40
    nop                                           ; $4059: $00
    add b                                         ; $405A: $80
    nop                                           ; $405B: $00
    nop                                           ; $405C: $00
    nop                                           ; $405D: $00
    nop                                           ; $405E: $00
    nop                                           ; $405F: $00
    ld l, $00                                     ; $4060: $2E $00
    inc e                                         ; $4062: $1C
    nop                                           ; $4063: $00
    inc d                                         ; $4064: $14
    jr @+$36                                      ; $4065: $18 $34

    jr jr_041_4091                                ; $4067: $18 $28

    inc c                                         ; $4069: $0C
    ld [$141C], sp                                ; $406A: $08 $1C $14
    inc c                                         ; $406D: $0C
    inc d                                         ; $406E: $14

jr_041_406F:
    inc c                                         ; $406F: $0C
    inc bc                                        ; $4070: $03
    nop                                           ; $4071: $00
    jr jr_041_40B2                                ; $4072: $18 $3E

    inc c                                         ; $4074: $0C
    db $10                                        ; $4075: $10
    jr nc, jr_041_4078                            ; $4076: $30 $00

jr_041_4078:
    ld h, b                                       ; $4078: $60
    nop                                           ; $4079: $00
    ret nz                                        ; $407A: $C0

    nop                                           ; $407B: $00
    nop                                           ; $407C: $00
    nop                                           ; $407D: $00
    nop                                           ; $407E: $00
    nop                                           ; $407F: $00
    add a                                         ; $4080: $87
    ld b, $86                                     ; $4081: $06 $86
    inc c                                         ; $4083: $0C
    jr jr_041_4092                                ; $4084: $18 $0C

    jr jr_041_40A0                                ; $4086: $18 $18

    jr nc, jr_041_409A                            ; $4088: $30 $10

    ld h, b                                       ; $408A: $60
    jr nc, jr_041_40CD                            ; $408B: $30 $40

    ld h, b                                       ; $408D: $60
    ld h, b                                       ; $408E: $60
    ret nz                                        ; $408F: $C0

    nop                                           ; $4090: $00

jr_041_4091:
    nop                                           ; $4091: $00

jr_041_4092:
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00

jr_041_409A:
    ld bc, $0500                                  ; $409A: $01 $00 $05
    inc bc                                        ; $409D: $03
    dec bc                                        ; $409E: $0B
    rlca                                          ; $409F: $07

jr_041_40A0:
    nop                                           ; $40A0: $00
    nop                                           ; $40A1: $00
    nop                                           ; $40A2: $00
    nop                                           ; $40A3: $00
    nop                                           ; $40A4: $00
    nop                                           ; $40A5: $00
    nop                                           ; $40A6: $00
    nop                                           ; $40A7: $00
    ret nz                                        ; $40A8: $C0

    nop                                           ; $40A9: $00
    ret nz                                        ; $40AA: $C0

    ldh [$FC], a                                  ; $40AB: $E0 $FC
    ld hl, sp-$11                                 ; $40AD: $F8 $EF
    cp $00                                        ; $40AF: $FE $00
    nop                                           ; $40B1: $00

jr_041_40B2:
    nop                                           ; $40B2: $00
    nop                                           ; $40B3: $00
    nop                                           ; $40B4: $00
    nop                                           ; $40B5: $00
    nop                                           ; $40B6: $00
    nop                                           ; $40B7: $00
    nop                                           ; $40B8: $00
    nop                                           ; $40B9: $00
    inc bc                                        ; $40BA: $03
    nop                                           ; $40BB: $00
    inc b                                         ; $40BC: $04
    inc bc                                        ; $40BD: $03
    ld b, $04                                     ; $40BE: $06 $04
    nop                                           ; $40C0: $00
    nop                                           ; $40C1: $00
    nop                                           ; $40C2: $00
    nop                                           ; $40C3: $00
    nop                                           ; $40C4: $00
    nop                                           ; $40C5: $00
    nop                                           ; $40C6: $00
    nop                                           ; $40C7: $00
    nop                                           ; $40C8: $00
    nop                                           ; $40C9: $00
    and b                                         ; $40CA: $A0
    ld b, b                                       ; $40CB: $40
    ld l, h                                       ; $40CC: $6C

jr_041_40CD:
    or c                                          ; $40CD: $B1
    inc a                                         ; $40CE: $3C
    ccf                                           ; $40CF: $3F
    ld c, $0C                                     ; $40D0: $0E $0C
    ld b, $0C                                     ; $40D2: $06 $0C

jr_041_40D4:
    ld b, $08                                     ; $40D4: $06 $08
    inc c                                         ; $40D6: $0C
    ld c, $50                                     ; $40D7: $0E $50
    jr c, jr_041_40FD                             ; $40D9: $38 $22

    ld b, c                                       ; $40DB: $41
    and [hl]                                      ; $40DC: $A6
    ld [bc], a                                    ; $40DD: $02
    ld b, b                                       ; $40DE: $40
    add l                                         ; $40DF: $85
    nop                                           ; $40E0: $00
    nop                                           ; $40E1: $00
    rlca                                          ; $40E2: $07
    inc bc                                        ; $40E3: $03
    jr z, jr_041_4105                             ; $40E4: $28 $1F

    ld [hl+], a                                   ; $40E6: $22
    ld a, h                                       ; $40E7: $7C
    ld b, h                                       ; $40E8: $44
    ld hl, sp+$00                                 ; $40E9: $F8 $00
    ldh a, [$C0]                                  ; $40EB: $F0 $C0
    ld h, b                                       ; $40ED: $60
    ld b, b                                       ; $40EE: $40
    add b                                         ; $40EF: $80

Call_041_40F0:
    ldh [$C0], a                                  ; $40F0: $E0 $C0
    jr nz, jr_041_40D4                            ; $40F2: $20 $E0

    sub b                                         ; $40F4: $90
    ld h, b                                       ; $40F5: $60
    nop                                           ; $40F6: $00
    nop                                           ; $40F7: $00
    nop                                           ; $40F8: $00
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00

Call_041_40FC:
    nop                                           ; $40FC: $00

jr_041_40FD:
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    rra                                           ; $4100: $1F
    rrca                                          ; $4101: $0F
    ld c, a                                       ; $4102: $4F
    rra                                           ; $4103: $1F
    inc e                                         ; $4104: $1C

jr_041_4105:
    rra                                           ; $4105: $1F
    ld e, a                                       ; $4106: $5F
    ld a, $7E                                     ; $4107: $3E $7E
    ld a, $7E                                     ; $4109: $3E $7E
    ld a, $3E                                     ; $410B: $3E $3E
    rra                                           ; $410D: $1F
    rrca                                          ; $410E: $0F
    rrca                                          ; $410F: $0F
    or e                                          ; $4110: $B3
    pop bc                                        ; $4111: $C1
    sub b                                         ; $4112: $90
    nop                                           ; $4113: $00
    ld b, d                                       ; $4114: $42
    nop                                           ; $4115: $00

jr_041_4116:
    stop                                          ; $4116: $10 $00
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    nop                                           ; $411A: $00
    nop                                           ; $411B: $00
    nop                                           ; $411C: $00
    nop                                           ; $411D: $00
    add b                                         ; $411E: $80
    add b                                         ; $411F: $80
    db $EC                                        ; $4120: $EC
    db $F4                                        ; $4121: $F4

jr_041_4122:
    jr c, jr_041_4122                             ; $4122: $38 $FE

    ld c, d                                       ; $4124: $4A
    dec sp                                        ; $4125: $3B
    dec bc                                        ; $4126: $0B
    inc bc                                        ; $4127: $03
    inc de                                        ; $4128: $13
    rrca                                          ; $4129: $0F
    nop                                           ; $412A: $00
    rrca                                          ; $412B: $0F
    nop                                           ; $412C: $00
    ld bc, $0000                                  ; $412D: $01 $00 $00
    inc e                                         ; $4130: $1C
    add hl, sp                                    ; $4131: $39
    daa                                           ; $4132: $27
    jr c, jr_041_41AE                             ; $4133: $38 $79

    cp a                                          ; $4135: $BF
    ld a, [hl]                                    ; $4136: $7E
    rst $38                                       ; $4137: $FF
    ld d, h                                       ; $4138: $54
    db $E3                                        ; $4139: $E3
    inc bc                                        ; $413A: $03
    ldh [$80], a                                  ; $413B: $E0 $80
    pop bc                                        ; $413D: $C1
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    ld c, $39                                     ; $4140: $0E $39
    and e                                         ; $4142: $A3
    ld b, l                                       ; $4143: $45
    xor e                                         ; $4144: $AB
    push bc                                       ; $4145: $C5
    ld [$26C5], a                                 ; $4146: $EA $C5 $26
    rst $30                                       ; $4149: $F7
    sbc b                                         ; $414A: $98
    ldh a, [rP1]                                  ; $414B: $F0 $00
    ld hl, sp-$40                                 ; $414D: $F8 $C0
    nop                                           ; $414F: $00
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    nop                                           ; $4152: $00
    nop                                           ; $4153: $00
    jr nc, jr_041_4116                            ; $4154: $30 $C0

    cp h                                          ; $4156: $BC
    ld a, a                                       ; $4157: $7F
    ld d, l                                       ; $4158: $55
    db $EB                                        ; $4159: $EB
    add hl, de                                    ; $415A: $19
    ld b, $00                                     ; $415B: $06 $00
    nop                                           ; $415D: $00
    nop                                           ; $415E: $00
    nop                                           ; $415F: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    nop                                           ; $4164: $00
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    add b                                         ; $4167: $80
    jp nz, Jump_041_5DFC                          ; $4168: $C2 $FC $5D

    ld [hl-], a                                   ; $416B: $32
    rst $38                                       ; $416C: $FF
    inc bc                                        ; $416D: $03
    dec d                                         ; $416E: $15
    dec bc                                        ; $416F: $0B
    rlca                                          ; $4170: $07
    inc bc                                        ; $4171: $03
    ld bc, $0000                                  ; $4172: $01 $00 $00
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00
    nop                                           ; $417C: $00
    nop                                           ; $417D: $00
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    ret nz                                        ; $4180: $C0

    ret nz                                        ; $4181: $C0

    ld [$10E0], sp                                ; $4182: $08 $E0 $10
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418A: $00
    nop                                           ; $418B: $00
    nop                                           ; $418C: $00
    nop                                           ; $418D: $00
    nop                                           ; $418E: $00
    nop                                           ; $418F: $00
    jr nc, jr_041_420E                            ; $4190: $30 $7C

    db $FC                                        ; $4192: $FC
    cp $FE                                        ; $4193: $FE $FE
    rst $38                                       ; $4195: $FF
    rst $18                                       ; $4196: $DF
    adc a                                         ; $4197: $8F
    scf                                           ; $4198: $37
    adc a                                         ; $4199: $8F
    dec sp                                        ; $419A: $3B
    ccf                                           ; $419B: $3F
    xor c                                         ; $419C: $A9
    ld [hl], e                                    ; $419D: $73
    nop                                           ; $419E: $00
    ld b, c                                       ; $419F: $41
    nop                                           ; $41A0: $00
    nop                                           ; $41A1: $00
    nop                                           ; $41A2: $00
    nop                                           ; $41A3: $00
    jr nz, jr_041_41A6                            ; $41A4: $20 $00

jr_041_41A6:
    ld h, b                                       ; $41A6: $60
    nop                                           ; $41A7: $00
    jr nc, jr_041_41AA                            ; $41A8: $30 $00

jr_041_41AA:
    jr nc, jr_041_41AC                            ; $41AA: $30 $00

jr_041_41AC:
    sub b                                         ; $41AC: $90
    nop                                           ; $41AD: $00

jr_041_41AE:
    sub d                                         ; $41AE: $92
    nop                                           ; $41AF: $00
    dec hl                                        ; $41B0: $2B
    ld e, b                                       ; $41B1: $58
    ld c, $DE                                     ; $41B2: $0E $DE
    sub h                                         ; $41B4: $94
    adc b                                         ; $41B5: $88
    ld h, b                                       ; $41B6: $60
    and b                                         ; $41B7: $A0
    jr nc, jr_041_4212                            ; $41B8: $30 $58

    jr nz, @+$1A                                  ; $41BA: $20 $18

    jr nz, jr_041_41CE                            ; $41BC: $20 $10

    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    rra                                           ; $41C0: $1F
    nop                                           ; $41C1: $00
    ld a, [de]                                    ; $41C2: $1A
    inc b                                         ; $41C3: $04
    ccf                                           ; $41C4: $3F
    nop                                           ; $41C5: $00
    add hl, sp                                    ; $41C6: $39
    nop                                           ; $41C7: $00
    nop                                           ; $41C8: $00
    nop                                           ; $41C9: $00
    nop                                           ; $41CA: $00
    nop                                           ; $41CB: $00
    nop                                           ; $41CC: $00
    nop                                           ; $41CD: $00

jr_041_41CE:
    nop                                           ; $41CE: $00
    nop                                           ; $41CF: $00
    add [hl]                                      ; $41D0: $86
    nop                                           ; $41D1: $00
    ld bc, $8880                                  ; $41D2: $01 $80 $88
    nop                                           ; $41D5: $00
    add sp, $00                                   ; $41D6: $E8 $00
    ld h, h                                       ; $41D8: $64
    nop                                           ; $41D9: $00
    ld b, b                                       ; $41DA: $40
    nop                                           ; $41DB: $00
    jr nz, jr_041_41DE                            ; $41DC: $20 $00

jr_041_41DE:
    nop                                           ; $41DE: $00
    nop                                           ; $41DF: $00
    ld bc, $0100                                  ; $41E0: $01 $00 $01
    nop                                           ; $41E3: $00
    ld bc, $0300                                  ; $41E4: $01 $00 $03
    nop                                           ; $41E7: $00
    ld [bc], a                                    ; $41E8: $02
    ld bc, $0102                                  ; $41E9: $01 $02 $01
    ld [bc], a                                    ; $41EC: $02
    ld bc, $0205                                  ; $41ED: $01 $05 $02
    sbc d                                         ; $41F0: $9A
    nop                                           ; $41F1: $00
    adc [hl]                                      ; $41F2: $8E
    db $10                                        ; $41F3: $10
    adc [hl]                                      ; $41F4: $8E
    db $10                                        ; $41F5: $10
    adc [hl]                                      ; $41F6: $8E
    db $10                                        ; $41F7: $10
    adc $10                                       ; $41F8: $CE $10
    adc [hl]                                      ; $41FA: $8E
    db $10                                        ; $41FB: $10
    cp [hl]                                       ; $41FC: $BE
    nop                                           ; $41FD: $00
    cp h                                          ; $41FE: $BC
    nop                                           ; $41FF: $00
    ld a, [bc]                                    ; $4200: $0A

jr_041_4201:
    inc b                                         ; $4201: $04
    ld d, $08                                     ; $4202: $16 $08
    rra                                           ; $4204: $1F
    nop                                           ; $4205: $00
    db $10                                        ; $4206: $10
    rrca                                          ; $4207: $0F
    db $10                                        ; $4208: $10
    rlca                                          ; $4209: $07
    nop                                           ; $420A: $00
    rlca                                          ; $420B: $07
    rrca                                          ; $420C: $0F
    nop                                           ; $420D: $00

jr_041_420E:
    ccf                                           ; $420E: $3F
    nop                                           ; $420F: $00
    nop                                           ; $4210: $00
    nop                                           ; $4211: $00

jr_041_4212:
    add b                                         ; $4212: $80
    nop                                           ; $4213: $00
    ldh a, [rP1]                                  ; $4214: $F0 $00
    ldh [rP1], a                                  ; $4216: $E0 $00
    ret z                                         ; $4218: $C8

    nop                                           ; $4219: $00
    jr nc, jr_041_421C                            ; $421A: $30 $00

jr_041_421C:
    ldh [rP1], a                                  ; $421C: $E0 $00
    ld e, d                                       ; $421E: $5A
    and h                                         ; $421F: $A4
    nop                                           ; $4220: $00
    nop                                           ; $4221: $00
    inc b                                         ; $4222: $04
    nop                                           ; $4223: $00
    inc b                                         ; $4224: $04
    nop                                           ; $4225: $00
    inc c                                         ; $4226: $0C
    nop                                           ; $4227: $00
    ld [rRAMG], sp                                ; $4228: $08 $00 $00
    nop                                           ; $422B: $00
    nop                                           ; $422C: $00
    nop                                           ; $422D: $00
    nop                                           ; $422E: $00
    nop                                           ; $422F: $00
    rlca                                          ; $4230: $07
    nop                                           ; $4231: $00
    rlca                                          ; $4232: $07
    nop                                           ; $4233: $00
    adc a                                         ; $4234: $8F
    nop                                           ; $4235: $00
    ld c, $00                                     ; $4236: $0E $00
    ld e, $00                                     ; $4238: $1E $00
    inc e                                         ; $423A: $1C
    nop                                           ; $423B: $00
    dec a                                         ; $423C: $3D
    nop                                           ; $423D: $00
    add hl, hl                                    ; $423E: $29

jr_041_423F:
    nop                                           ; $423F: $00
    adc h                                         ; $4240: $8C
    jr nc, @+$4E                                  ; $4241: $30 $4C

    jr nc, jr_041_429D                            ; $4243: $30 $58

    jr nz, jr_041_429F                            ; $4245: $20 $58

    jr nz, jr_041_4201                            ; $4247: $20 $B8

    ld b, b                                       ; $4249: $40
    or b                                          ; $424A: $B0
    ld b, b                                       ; $424B: $40
    jr nc, jr_041_420E                            ; $424C: $30 $C0

    ld h, b                                       ; $424E: $60
    add b                                         ; $424F: $80
    db $FD                                        ; $4250: $FD
    nop                                           ; $4251: $00
    ld h, d                                       ; $4252: $62
    ld bc, $0304                                  ; $4253: $01 $04 $03
    ld b, $09                                     ; $4256: $06 $09
    inc e                                         ; $4258: $1C
    inc de                                        ; $4259: $13
    ld a, [bc]                                    ; $425A: $0A
    inc b                                         ; $425B: $04
    ld [bc], a                                    ; $425C: $02
    ld bc, $0001                                  ; $425D: $01 $01 $00
    nop                                           ; $4260: $00
    db $FC                                        ; $4261: $FC
    nop                                           ; $4262: $00
    db $FC                                        ; $4263: $FC
    sbc b                                         ; $4264: $98
    ld h, b                                       ; $4265: $60
    ld d, b                                       ; $4266: $50
    and b                                         ; $4267: $A0
    ldh [rP1], a                                  ; $4268: $E0 $00
    ldh [rP1], a                                  ; $426A: $E0 $00
    add b                                         ; $426C: $80
    ld b, b                                       ; $426D: $40
    sub b                                         ; $426E: $90
    nop                                           ; $426F: $00
    ld [hl], d                                    ; $4270: $72
    ld bc, $03E4                                  ; $4271: $01 $E4 $03
    dec h                                         ; $4274: $25
    ld [bc], a                                    ; $4275: $02
    ld c, a                                       ; $4276: $4F
    nop                                           ; $4277: $00
    ld d, $08                                     ; $4278: $16 $08
    inc l                                         ; $427A: $2C
    db $10                                        ; $427B: $10
    jr c, jr_041_427E                             ; $427C: $38 $00

jr_041_427E:
    ld h, b                                       ; $427E: $60
    nop                                           ; $427F: $00
    inc bc                                        ; $4280: $03
    nop                                           ; $4281: $00
    ld [$1804], sp                                ; $4282: $08 $04 $18
    nop                                           ; $4285: $00
    ld [hl-], a                                   ; $4286: $32
    nop                                           ; $4287: $00
    ld b, b                                       ; $4288: $40
    nop                                           ; $4289: $00
    stop                                          ; $428A: $10 $00
    nop                                           ; $428C: $00
    nop                                           ; $428D: $00
    jr nz, jr_041_4290                            ; $428E: $20 $00

jr_041_4290:
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    ld bc, $0300                                  ; $4296: $01 $00 $03
    rlca                                          ; $4299: $07
    ld c, $1F                                     ; $429A: $0E $1F
    ld h, b                                       ; $429C: $60

jr_041_429D:
    jr c, jr_041_423F                             ; $429D: $38 $A0

jr_041_429F:
    ret nz                                        ; $429F: $C0

    nop                                           ; $42A0: $00
    nop                                           ; $42A1: $00
    ld bc, $1700                                  ; $42A2: $01 $00 $17
    rrca                                          ; $42A5: $0F
    ld sp, hl                                     ; $42A6: $F9
    ld a, [hl]                                    ; $42A7: $7E
    and b                                         ; $42A8: $A0
    ret nz                                        ; $42A9: $C0

    nop                                           ; $42AA: $00
    nop                                           ; $42AB: $00
    nop                                           ; $42AC: $00
    nop                                           ; $42AD: $00
    nop                                           ; $42AE: $00
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00
    add c                                         ; $42B2: $81
    ld a, [hl]                                    ; $42B3: $7E
    rst $38                                       ; $42B4: $FF
    db $FC                                        ; $42B5: $FC
    db $ED                                        ; $42B6: $ED
    ld [de], a                                    ; $42B7: $12
    inc bc                                        ; $42B8: $03
    nop                                           ; $42B9: $00
    add hl, bc                                    ; $42BA: $09
    ld b, $0A                                     ; $42BB: $06 $0A
    inc e                                         ; $42BD: $1C
    db $10                                        ; $42BE: $10
    jr c, jr_041_42C1                             ; $42BF: $38 $00

jr_041_42C1:
    nop                                           ; $42C1: $00
    ldh [$C0], a                                  ; $42C2: $E0 $C0
    pop bc                                        ; $42C4: $C1
    ld h, b                                       ; $42C5: $60
    nop                                           ; $42C6: $00
    ld h, c                                       ; $42C7: $61
    ld b, b                                       ; $42C8: $40
    add c                                         ; $42C9: $81
    nop                                           ; $42CA: $00
    ld bc, $0001                                  ; $42CB: $01 $01 $00
    nop                                           ; $42CE: $00
    nop                                           ; $42CF: $00
    ld a, b                                       ; $42D0: $78
    inc a                                         ; $42D1: $3C
    ld a, [hl]                                    ; $42D2: $7E
    db $FC                                        ; $42D3: $FC
    rst $30                                       ; $42D4: $F7
    cp $F6                                        ; $42D5: $FE $F6
    di                                            ; $42D7: $F3
    jp hl                                         ; $42D8: $E9


    and $BC                                       ; $42D9: $E6 $BC
    ret z                                         ; $42DB: $C8

    pop bc                                        ; $42DC: $C1
    jr jr_041_42F5                                ; $42DD: $18 $16

    add hl, bc                                    ; $42DF: $09
    nop                                           ; $42E0: $00
    inc bc                                        ; $42E1: $03
    nop                                           ; $42E2: $00
    inc b                                         ; $42E3: $04
    nop                                           ; $42E4: $00
    ld [$0010], sp                                ; $42E5: $08 $10 $00
    nop                                           ; $42E8: $00
    nop                                           ; $42E9: $00
    nop                                           ; $42EA: $00
    nop                                           ; $42EB: $00

jr_041_42EC:
    nop                                           ; $42EC: $00
    nop                                           ; $42ED: $00
    nop                                           ; $42EE: $00
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00
    nop                                           ; $42F1: $00
    ld c, $01                                     ; $42F2: $0E $01
    ld a, [de]                                    ; $42F4: $1A

jr_041_42F5:
    ld bc, $0819                                  ; $42F5: $01 $19 $08
    inc bc                                        ; $42F8: $03
    jr z, jr_041_432B                             ; $42F9: $28 $30

    ld bc, $1F1E                                  ; $42FB: $01 $1E $1F
    ld d, $38                                     ; $42FE: $16 $38
    or b                                          ; $4300: $B0
    ld h, b                                       ; $4301: $60
    ld b, b                                       ; $4302: $40
    ret nz                                        ; $4303: $C0

    ret nz                                        ; $4304: $C0

    add b                                         ; $4305: $80
    or b                                          ; $4306: $B0
    ret nz                                        ; $4307: $C0

    or l                                          ; $4308: $B5
    ld hl, sp-$33                                 ; $4309: $F8 $CD
    di                                            ; $430B: $F3
    add l                                         ; $430C: $85
    inc bc                                        ; $430D: $03
    inc bc                                        ; $430E: $03
    inc bc                                        ; $430F: $03
    inc d                                         ; $4310: $14
    ld [$1D32], sp                                ; $4311: $08 $32 $1D
    cp [hl]                                       ; $4314: $BE
    ld [hl], h                                    ; $4315: $74
    sub b                                         ; $4316: $90
    db $EC                                        ; $4317: $EC
    sbc d                                         ; $4318: $9A
    call z, $9CE2                                 ; $4319: $CC $E2 $9C
    jp z, $113C                                   ; $431C: $CA $3C $11

    ld a, h                                       ; $431F: $7C
    ld a, [hl+]                                   ; $4320: $2A
    ld d, $0E                                     ; $4321: $16 $0E
    nop                                           ; $4323: $00
    jr z, jr_041_42EC                             ; $4324: $28 $C6

    ld e, e                                       ; $4326: $5B
    ccf                                           ; $4327: $3F
    dec bc                                        ; $4328: $0B
    rra                                           ; $4329: $1F
    dec hl                                        ; $432A: $2B

jr_041_432B:
    dec e                                         ; $432B: $1D
    db $10                                        ; $432C: $10
    jr jr_041_433F                                ; $432D: $18 $10

    nop                                           ; $432F: $00
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    nop                                           ; $4334: $00
    nop                                           ; $4335: $00
    nop                                           ; $4336: $00
    add b                                         ; $4337: $80
    ld h, b                                       ; $4338: $60
    add b                                         ; $4339: $80
    jr nz, @-$6E                                  ; $433A: $20 $90

    sub b                                         ; $433C: $90

jr_041_433D:
    nop                                           ; $433D: $00
    ld l, b                                       ; $433E: $68

jr_041_433F:
    jr nc, jr_041_4341                            ; $433F: $30 $00

jr_041_4341:
    nop                                           ; $4341: $00
    ld b, $02                                     ; $4342: $06 $02
    ld b, $07                                     ; $4344: $06 $07
    dec c                                         ; $4346: $0D
    ld b, $04                                     ; $4347: $06 $04
    rrca                                          ; $4349: $0F
    ld e, $0F                                     ; $434A: $1E $0F
    rlca                                          ; $434C: $07
    rra                                           ; $434D: $1F
    add hl, de                                    ; $434E: $19
    ccf                                           ; $434F: $3F
    ld [hl], b                                    ; $4350: $70
    jr nc, @-$0E                                  ; $4351: $30 $F0

    ld h, b                                       ; $4353: $60
    ret z                                         ; $4354: $C8

    ldh a, [$E1]                                  ; $4355: $F0 $E1
    ldh a, [$D1]                                  ; $4357: $F0 $D1
    di                                            ; $4359: $F3
    sbc b                                         ; $435A: $98
    and $85                                       ; $435B: $E6 $85
    cp d                                          ; $435D: $BA
    ld a, [c]                                     ; $435E: $F2
    db $FC                                        ; $435F: $FC
    ld [bc], a                                    ; $4360: $02
    rlca                                          ; $4361: $07
    ld c, $07                                     ; $4362: $0E $07
    ld e, $0F                                     ; $4364: $1E $0F
    ld e, l                                       ; $4366: $5D
    cp a                                          ; $4367: $BF
    adc l                                         ; $4368: $8D
    ld b, $7F                                     ; $4369: $06 $7F
    ld a, $C0                                     ; $436B: $3E $C0
    ccf                                           ; $436D: $3F
    rla                                           ; $436E: $17
    ld [$7803], sp                                ; $436F: $08 $03 $78
    rrca                                          ; $4372: $0F
    ld [hl], b                                    ; $4373: $70
    ld e, $60                                     ; $4374: $1E $60
    xor [hl]                                      ; $4376: $AE
    ld b, b                                       ; $4377: $40
    inc h                                         ; $4378: $24
    ret z                                         ; $4379: $C8

    ld d, h                                       ; $437A: $54
    adc b                                         ; $437B: $88
    adc b                                         ; $437C: $88
    stop                                          ; $437D: $10 $00
    jr nc, jr_041_4399                            ; $437F: $30 $18

    jr nz, jr_041_4387                            ; $4381: $20 $04

    db $10                                        ; $4383: $10
    jr nc, jr_041_4386                            ; $4384: $30 $00

jr_041_4386:
    db $10                                        ; $4386: $10

jr_041_4387:
    jr nz, jr_041_43A9                            ; $4387: $20 $20

    nop                                           ; $4389: $00
    jr nz, jr_041_438C                            ; $438A: $20 $00

jr_041_438C:
    nop                                           ; $438C: $00
    nop                                           ; $438D: $00
    ld b, b                                       ; $438E: $40
    nop                                           ; $438F: $00
    inc h                                         ; $4390: $24
    ld a, b                                       ; $4391: $78
    and b                                         ; $4392: $A0
    ld a, b                                       ; $4393: $78
    ld hl, sp+$40                                 ; $4394: $F8 $40
    and b                                         ; $4396: $A0
    ret nc                                        ; $4397: $D0

    ret nc                                        ; $4398: $D0

jr_041_4399:
    and b                                         ; $4399: $A0
    ld b, b                                       ; $439A: $40
    jr nz, jr_041_433D                            ; $439B: $20 $A0

    ld b, b                                       ; $439D: $40
    ret nz                                        ; $439E: $C0

    nop                                           ; $439F: $00
    ldh a, [$60]                                  ; $43A0: $F0 $60
    nop                                           ; $43A2: $00
    nop                                           ; $43A3: $00
    nop                                           ; $43A4: $00
    nop                                           ; $43A5: $00
    nop                                           ; $43A6: $00
    nop                                           ; $43A7: $00
    nop                                           ; $43A8: $00

jr_041_43A9:
    nop                                           ; $43A9: $00
    nop                                           ; $43AA: $00
    nop                                           ; $43AB: $00
    nop                                           ; $43AC: $00
    nop                                           ; $43AD: $00
    nop                                           ; $43AE: $00
    nop                                           ; $43AF: $00
    ld e, $11                                     ; $43B0: $1E $11
    rla                                           ; $43B2: $17
    jr nz, jr_041_43E4                            ; $43B3: $20 $2F

    nop                                           ; $43B5: $00
    ld [hl], e                                    ; $43B6: $73
    nop                                           ; $43B7: $00
    ld h, c                                       ; $43B8: $61
    nop                                           ; $43B9: $00
    ld b, b                                       ; $43BA: $40
    nop                                           ; $43BB: $00
    nop                                           ; $43BC: $00
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    nop                                           ; $43C0: $00
    nop                                           ; $43C1: $00
    nop                                           ; $43C2: $00
    nop                                           ; $43C3: $00
    rlca                                          ; $43C4: $07
    nop                                           ; $43C5: $00
    nop                                           ; $43C6: $00
    nop                                           ; $43C7: $00
    nop                                           ; $43C8: $00
    nop                                           ; $43C9: $00
    nop                                           ; $43CA: $00
    nop                                           ; $43CB: $00
    nop                                           ; $43CC: $00
    nop                                           ; $43CD: $00
    nop                                           ; $43CE: $00
    nop                                           ; $43CF: $00
    nop                                           ; $43D0: $00
    nop                                           ; $43D1: $00
    stop                                          ; $43D2: $10 $00
    sub b                                         ; $43D4: $90
    ld a, a                                       ; $43D5: $7F
    jr c, jr_041_43DF                             ; $43D6: $38 $07

    add hl, de                                    ; $43D8: $19
    ld b, $02                                     ; $43D9: $06 $02
    ld bc, $0000                                  ; $43DB: $01 $00 $00
    nop                                           ; $43DE: $00

jr_041_43DF:
    nop                                           ; $43DF: $00
    nop                                           ; $43E0: $00
    nop                                           ; $43E1: $00
    nop                                           ; $43E2: $00
    nop                                           ; $43E3: $00

jr_041_43E4:
    ld b, b                                       ; $43E4: $40
    add b                                         ; $43E5: $80
    ld c, b                                       ; $43E6: $48
    or b                                          ; $43E7: $B0
    add hl, sp                                    ; $43E8: $39
    add $0B                                       ; $43E9: $C6 $0B
    ldh a, [$E2]                                  ; $43EB: $F0 $E2
    inc e                                         ; $43ED: $1C
    cp a                                          ; $43EE: $BF
    nop                                           ; $43EF: $00
    nop                                           ; $43F0: $00
    nop                                           ; $43F1: $00
    nop                                           ; $43F2: $00
    nop                                           ; $43F3: $00
    nop                                           ; $43F4: $00
    nop                                           ; $43F5: $00
    nop                                           ; $43F6: $00
    nop                                           ; $43F7: $00
    nop                                           ; $43F8: $00
    nop                                           ; $43F9: $00
    ld b, b                                       ; $43FA: $40
    add b                                         ; $43FB: $80
    sub b                                         ; $43FC: $90
    jr nz, @+$3A                                  ; $43FD: $20 $38

    nop                                           ; $43FF: $00
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    nop                                           ; $4405: $00
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
    inc c                                         ; $4408: $0C
    nop                                           ; $4409: $00
    inc e                                         ; $440A: $1C
    nop                                           ; $440B: $00
    inc a                                         ; $440C: $3C
    nop                                           ; $440D: $00
    jr c, jr_041_4410                             ; $440E: $38 $00

jr_041_4410:
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    ld bc, $2000                                  ; $4412: $01 $00 $20
    nop                                           ; $4415: $00
    inc h                                         ; $4416: $24
    nop                                           ; $4417: $00
    ld c, h                                       ; $4418: $4C
    nop                                           ; $4419: $00
    ld d, b                                       ; $441A: $50
    nop                                           ; $441B: $00
    stop                                          ; $441C: $10 $00
    jr nc, jr_041_4420                            ; $441E: $30 $00

jr_041_4420:
    jr c, jr_041_4422                             ; $4420: $38 $00

jr_041_4422:
    ccf                                           ; $4422: $3F
    nop                                           ; $4423: $00
    ld a, $00                                     ; $4424: $3E $00
    inc e                                         ; $4426: $1C
    nop                                           ; $4427: $00
    inc e                                         ; $4428: $1C
    nop                                           ; $4429: $00
    inc e                                         ; $442A: $1C
    nop                                           ; $442B: $00
    inc e                                         ; $442C: $1C
    nop                                           ; $442D: $00
    inc e                                         ; $442E: $1C
    nop                                           ; $442F: $00
    ldh a, [rP1]                                  ; $4430: $F0 $00
    ldh a, [rP1]                                  ; $4432: $F0 $00
    ldh [rP1], a                                  ; $4434: $E0 $00
    ldh [rP1], a                                  ; $4436: $E0 $00
    ret nz                                        ; $4438: $C0

    nop                                           ; $4439: $00
    add b                                         ; $443A: $80
    nop                                           ; $443B: $00
    add b                                         ; $443C: $80
    nop                                           ; $443D: $00
    add b                                         ; $443E: $80
    nop                                           ; $443F: $00
    inc b                                         ; $4440: $04
    nop                                           ; $4441: $00
    rlca                                          ; $4442: $07
    nop                                           ; $4443: $00
    rlca                                          ; $4444: $07
    nop                                           ; $4445: $00
    rlca                                          ; $4446: $07
    nop                                           ; $4447: $00
    inc bc                                        ; $4448: $03
    nop                                           ; $4449: $00
    inc bc                                        ; $444A: $03
    nop                                           ; $444B: $00
    inc bc                                        ; $444C: $03
    nop                                           ; $444D: $00
    nop                                           ; $444E: $00
    nop                                           ; $444F: $00
    inc bc                                        ; $4450: $03
    nop                                           ; $4451: $00
    inc bc                                        ; $4452: $03
    nop                                           ; $4453: $00
    rst $00                                       ; $4454: $C7
    nop                                           ; $4455: $00
    rst $38                                       ; $4456: $FF
    nop                                           ; $4457: $00
    rst $38                                       ; $4458: $FF
    nop                                           ; $4459: $00
    rst $38                                       ; $445A: $FF
    nop                                           ; $445B: $00
    ret nz                                        ; $445C: $C0

    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    nop                                           ; $445F: $00
    add b                                         ; $4460: $80
    nop                                           ; $4461: $00
    ret nz                                        ; $4462: $C0

    nop                                           ; $4463: $00
    add b                                         ; $4464: $80
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446A: $00
    nop                                           ; $446B: $00
    nop                                           ; $446C: $00
    nop                                           ; $446D: $00
    nop                                           ; $446E: $00
    nop                                           ; $446F: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    ld bc, $0305                                  ; $4477: $01 $05 $03
    inc bc                                        ; $447A: $03
    rrca                                          ; $447B: $0F
    rra                                           ; $447C: $1F
    rrca                                          ; $447D: $0F
    rrca                                          ; $447E: $0F
    rrca                                          ; $447F: $0F
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    db $FC                                        ; $4482: $FC
    nop                                           ; $4483: $00
    add d                                         ; $4484: $82
    ld a, h                                       ; $4485: $7C
    jr c, @+$01                                   ; $4486: $38 $FF

    rst $38                                       ; $4488: $FF
    rst $38                                       ; $4489: $FF
    rst $38                                       ; $448A: $FF
    rst $38                                       ; $448B: $FF
    add a                                         ; $448C: $87
    rst $38                                       ; $448D: $FF
    adc a                                         ; $448E: $8F
    inc bc                                        ; $448F: $03
    rrca                                          ; $4490: $0F
    ld c, $3C                                     ; $4491: $0E $3C
    ld e, $3E                                     ; $4493: $1E $3E
    inc e                                         ; $4495: $1C
    ld a, [hl-]                                   ; $4496: $3A
    inc e                                         ; $4497: $1C
    dec de                                        ; $4498: $1B
    inc a                                         ; $4499: $3C
    inc a                                         ; $449A: $3C
    ccf                                           ; $449B: $3F
    ld hl, sp+$3F                                 ; $449C: $F8 $3F
    cp h                                          ; $449E: $BC
    ld a, e                                       ; $449F: $7B
    dec b                                         ; $44A0: $05
    inc bc                                        ; $44A1: $03
    inc bc                                        ; $44A2: $03
    inc bc                                        ; $44A3: $03
    inc bc                                        ; $44A4: $03
    ld bc, $0003                                  ; $44A5: $01 $03 $00
    ld b, $01                                     ; $44A8: $06 $01
    rrca                                          ; $44AA: $0F
    ld bc, $038C                                  ; $44AB: $01 $8C $03
    sbc [hl]                                      ; $44AE: $9E
    ld bc, $E09F                                  ; $44AF: $01 $9F $E0
    adc a                                         ; $44B2: $8F
    ldh a, [$E7]                                  ; $44B3: $F0 $E7
    ld hl, sp-$11                                 ; $44B5: $F8 $EF
    ldh a, [rPCM34]                               ; $44B7: $F0 $77
    ld hl, sp-$01                                 ; $44B9: $F8 $FF
    ld hl, sp-$01                                 ; $44BB: $F8 $FF
    ld hl, sp+$7F                                 ; $44BD: $F8 $7F
    db $FC                                        ; $44BF: $FC
    ldh [rP1], a                                  ; $44C0: $E0 $00
    xor $00                                       ; $44C2: $EE $00
    rst $38                                       ; $44C4: $FF
    nop                                           ; $44C5: $00
    rst $38                                       ; $44C6: $FF
    nop                                           ; $44C7: $00
    rst $38                                       ; $44C8: $FF
    nop                                           ; $44C9: $00
    rst $38                                       ; $44CA: $FF
    nop                                           ; $44CB: $00
    rra                                           ; $44CC: $1F
    nop                                           ; $44CD: $00
    ccf                                           ; $44CE: $3F
    nop                                           ; $44CF: $00
    nop                                           ; $44D0: $00
    nop                                           ; $44D1: $00
    nop                                           ; $44D2: $00
    nop                                           ; $44D3: $00
    add b                                         ; $44D4: $80
    nop                                           ; $44D5: $00
    ret nz                                        ; $44D6: $C0

    nop                                           ; $44D7: $00
    ret nz                                        ; $44D8: $C0

    nop                                           ; $44D9: $00
    ldh [rP1], a                                  ; $44DA: $E0 $00
    cp b                                          ; $44DC: $B8
    ld b, b                                       ; $44DD: $40
    ld e, b                                       ; $44DE: $58
    and b                                         ; $44DF: $A0
    cp l                                          ; $44E0: $BD
    ld a, b                                       ; $44E1: $78
    cp b                                          ; $44E2: $B8
    ld a, h                                       ; $44E3: $7C
    db $FC                                        ; $44E4: $FC
    ld a, h                                       ; $44E5: $7C
    db $FC                                        ; $44E6: $FC
    ld a, h                                       ; $44E7: $7C
    ld a, d                                       ; $44E8: $7A
    inc a                                         ; $44E9: $3C
    ld a, d                                       ; $44EA: $7A
    inc e                                         ; $44EB: $1C
    inc c                                         ; $44EC: $0C
    jr nc, @+$0E                                  ; $44ED: $30 $0C

    nop                                           ; $44EF: $00
    sbc a                                         ; $44F0: $9F
    nop                                           ; $44F1: $00

jr_041_44F2:
    rra                                           ; $44F2: $1F
    nop                                           ; $44F3: $00
    rra                                           ; $44F4: $1F
    nop                                           ; $44F5: $00
    rra                                           ; $44F6: $1F
    nop                                           ; $44F7: $00
    rrca                                          ; $44F8: $0F
    nop                                           ; $44F9: $00
    ld c, $00                                     ; $44FA: $0E $00
    ld c, $00                                     ; $44FC: $0E $00
    inc e                                         ; $44FE: $1C
    nop                                           ; $44FF: $00
    ei                                            ; $4500: $FB
    db $FC                                        ; $4501: $FC
    ldh a, [$FE]                                  ; $4502: $F0 $FE

jr_041_4504:
    db $FC                                        ; $4504: $FC
    ldh a, [$F6]                                  ; $4505: $F0 $F6
    ld hl, sp-$02                                 ; $4507: $F8 $FE
    ld a, b                                       ; $4509: $78
    add c                                         ; $450A: $81
    ld a, [hl]                                    ; $450B: $7E
    db $DB                                        ; $450C: $DB
    daa                                           ; $450D: $27
    rst $08                                       ; $450E: $CF
    ld sp, $003F                                  ; $450F: $31 $3F $00
    rra                                           ; $4512: $1F
    nop                                           ; $4513: $00
    rlca                                          ; $4514: $07
    nop                                           ; $4515: $00
    inc bc                                        ; $4516: $03
    nop                                           ; $4517: $00
    ld b, c                                       ; $4518: $41
    nop                                           ; $4519: $00
    pop bc                                        ; $451A: $C1
    nop                                           ; $451B: $00
    ld h, c                                       ; $451C: $61
    add b                                         ; $451D: $80
    adc d                                         ; $451E: $8A
    pop af                                        ; $451F: $F1
    jr z, jr_041_44F2                             ; $4520: $28 $D0

    jr jr_041_4504                                ; $4522: $18 $E0

    db $10                                        ; $4524: $10
    ldh [rNR10], a                                ; $4525: $E0 $10
    ldh [rNR23], a                                ; $4527: $E0 $18
    ldh [rNR34], a                                ; $4529: $E0 $1E
    ldh [$9E], a                                  ; $452B: $E0 $9E
    ld h, b                                       ; $452D: $60
    ld a, a                                       ; $452E: $7F
    add b                                         ; $452F: $80
    jr jr_041_4532                                ; $4530: $18 $00

jr_041_4532:
    jr jr_041_4534                                ; $4532: $18 $00

jr_041_4534:
    ld [hl], b                                    ; $4534: $70
    nop                                           ; $4535: $00
    ld [hl], b                                    ; $4536: $70
    nop                                           ; $4537: $00
    ld [hl], b                                    ; $4538: $70
    nop                                           ; $4539: $00
    jr nc, jr_041_453C                            ; $453A: $30 $00

jr_041_453C:
    or b                                          ; $453C: $B0
    nop                                           ; $453D: $00
    ldh [rP1], a                                  ; $453E: $E0 $00
    inc a                                         ; $4540: $3C
    inc bc                                        ; $4541: $03
    inc e                                         ; $4542: $1C
    inc bc                                        ; $4543: $03
    ld [bc], a                                    ; $4544: $02
    ld bc, $0000                                  ; $4545: $01 $00 $00
    ld [bc], a                                    ; $4548: $02
    ld bc, $0300                                  ; $4549: $01 $00 $03
    nop                                           ; $454C: $00
    inc bc                                        ; $454D: $03

jr_041_454E:
    ld bc, $E500                                  ; $454E: $01 $00 $E5
    ld a, [$FC33]                                 ; $4551: $FA $33 $FC
    jr nc, jr_041_454E                            ; $4554: $30 $F8

    ret c                                         ; $4556: $D8

    jr nc, @-$26                                  ; $4557: $30 $D8

    jr nc, jr_041_455B                            ; $4559: $30 $00

jr_041_455B:
    ld hl, sp+$14                                 ; $455B: $F8 $14
    add sp, -$18                                  ; $455D: $E8 $E8
    nop                                           ; $455F: $00
    cp $00                                        ; $4560: $FE $00
    ldh [rP1], a                                  ; $4562: $E0 $00
    ldh [rP1], a                                  ; $4564: $E0 $00
    ld h, b                                       ; $4566: $60
    nop                                           ; $4567: $00
    jr nz, jr_041_456A                            ; $4568: $20 $00

jr_041_456A:
    nop                                           ; $456A: $00
    nop                                           ; $456B: $00
    nop                                           ; $456C: $00
    nop                                           ; $456D: $00

jr_041_456E:
    nop                                           ; $456E: $00
    nop                                           ; $456F: $00

jr_041_4570:
    ld de, $0F00                                  ; $4570: $11 $00 $0F
    nop                                           ; $4573: $00
    rlca                                          ; $4574: $07
    nop                                           ; $4575: $00
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    nop                                           ; $457A: $00
    nop                                           ; $457B: $00
    nop                                           ; $457C: $00
    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    ret nz                                        ; $4580: $C0

    nop                                           ; $4581: $00
    ret nz                                        ; $4582: $C0

    nop                                           ; $4583: $00
    add b                                         ; $4584: $80
    nop                                           ; $4585: $00
    nop                                           ; $4586: $00
    nop                                           ; $4587: $00
    nop                                           ; $4588: $00
    nop                                           ; $4589: $00
    nop                                           ; $458A: $00
    nop                                           ; $458B: $00
    nop                                           ; $458C: $00
    nop                                           ; $458D: $00
    nop                                           ; $458E: $00
    nop                                           ; $458F: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459A: $00
    nop                                           ; $459B: $00
    ld b, $01                                     ; $459C: $06 $01
    nop                                           ; $459E: $00
    rrca                                          ; $459F: $0F
    nop                                           ; $45A0: $00
    nop                                           ; $45A1: $00
    nop                                           ; $45A2: $00
    nop                                           ; $45A3: $00
    nop                                           ; $45A4: $00
    nop                                           ; $45A5: $00
    nop                                           ; $45A6: $00
    nop                                           ; $45A7: $00
    nop                                           ; $45A8: $00
    nop                                           ; $45A9: $00
    add b                                         ; $45AA: $80
    nop                                           ; $45AB: $00
    jr nz, jr_041_456E                            ; $45AC: $20 $C0

    jr nz, jr_041_4570                            ; $45AE: $20 $C0

    nop                                           ; $45B0: $00
    nop                                           ; $45B1: $00
    nop                                           ; $45B2: $00
    nop                                           ; $45B3: $00
    nop                                           ; $45B4: $00
    nop                                           ; $45B5: $00
    nop                                           ; $45B6: $00
    nop                                           ; $45B7: $00
    nop                                           ; $45B8: $00
    nop                                           ; $45B9: $00
    inc b                                         ; $45BA: $04
    nop                                           ; $45BB: $00
    db $FC                                        ; $45BC: $FC
    nop                                           ; $45BD: $00
    ldh a, [rP1]                                  ; $45BE: $F0 $00
    nop                                           ; $45C0: $00
    nop                                           ; $45C1: $00
    nop                                           ; $45C2: $00
    nop                                           ; $45C3: $00
    nop                                           ; $45C4: $00
    nop                                           ; $45C5: $00
    rst $18                                       ; $45C6: $DF
    nop                                           ; $45C7: $00
    ld a, a                                       ; $45C8: $7F
    nop                                           ; $45C9: $00
    ld a, a                                       ; $45CA: $7F
    nop                                           ; $45CB: $00
    ld a, a                                       ; $45CC: $7F
    nop                                           ; $45CD: $00
    ccf                                           ; $45CE: $3F
    nop                                           ; $45CF: $00
    nop                                           ; $45D0: $00
    nop                                           ; $45D1: $00
    nop                                           ; $45D2: $00
    nop                                           ; $45D3: $00
    nop                                           ; $45D4: $00
    nop                                           ; $45D5: $00
    add b                                         ; $45D6: $80
    nop                                           ; $45D7: $00
    ldh [rP1], a                                  ; $45D8: $E0 $00
    ldh a, [rP1]                                  ; $45DA: $F0 $00
    ret nc                                        ; $45DC: $D0

    jr nz, jr_041_45E7                            ; $45DD: $20 $08

    ldh a, [$39]                                  ; $45DF: $F0 $39
    rla                                           ; $45E1: $17
    ld [hl-], a                                   ; $45E2: $32
    ld bc, $0021                                  ; $45E3: $01 $21 $00
    nop                                           ; $45E6: $00

jr_041_45E7:
    nop                                           ; $45E7: $00
    nop                                           ; $45E8: $00
    nop                                           ; $45E9: $00
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00
    nop                                           ; $45EF: $00
    and c                                         ; $45F0: $A1
    ret nz                                        ; $45F1: $C0

    sub e                                         ; $45F2: $93
    ldh [rNR22], a                                ; $45F3: $E0 $17
    ldh [$CE], a                                  ; $45F5: $E0 $CE
    jr nc, @+$50                                  ; $45F7: $30 $4E

    jr nc, jr_041_4601                            ; $45F9: $30 $06

    jr c, jr_041_4621                             ; $45FB: $38 $24

    jr @+$26                                      ; $45FD: $18 $24

    jr @+$3E                                      ; $45FF: $18 $3C

jr_041_4601:
    inc bc                                        ; $4601: $03
    jr jr_041_460B                                ; $4602: $18 $07

    jr jr_041_460D                                ; $4604: $18 $07

    ld [$0007], sp                                ; $4606: $08 $07 $00
    rlca                                          ; $4609: $07
    nop                                           ; $460A: $00

jr_041_460B:
    rlca                                          ; $460B: $07
    rlca                                          ; $460C: $07

jr_041_460D:
    nop                                           ; $460D: $00

jr_041_460E:
    ld [bc], a                                    ; $460E: $02
    ld bc, $F800                                  ; $460F: $01 $00 $F8
    inc b                                         ; $4612: $04
    ld hl, sp+$04                                 ; $4613: $F8 $04
    ld hl, sp+$00                                 ; $4615: $F8 $00
    db $FC                                        ; $4617: $FC
    nop                                           ; $4618: $00
    cp $30                                        ; $4619: $FE $30
    cp $70                                        ; $461B: $FE $70
    rst $38                                       ; $461D: $FF
    ld h, b                                       ; $461E: $60
    rst $38                                       ; $461F: $FF
    ld a, [hl+]                                   ; $4620: $2A

jr_041_4621:
    inc e                                         ; $4621: $1C
    ld [$101E], sp                                ; $4622: $08 $1E $10
    ld c, $10                                     ; $4625: $0E $10
    rrca                                          ; $4627: $0F
    ld de, $310E                                  ; $4628: $11 $0E $31
    ld c, $37                                     ; $462B: $0E $37
    rrca                                          ; $462D: $0F
    scf                                           ; $462E: $37
    rrca                                          ; $462F: $0F
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    nop                                           ; $4635: $00
    nop                                           ; $4636: $00
    nop                                           ; $4637: $00
    add b                                         ; $4638: $80
    nop                                           ; $4639: $00
    add b                                         ; $463A: $80
    nop                                           ; $463B: $00
    jr nz, jr_041_460E                            ; $463C: $20 $D0

    rst $00                                       ; $463E: $C7
    ld hl, sp+$02                                 ; $463F: $F8 $02
    ld bc, $0106                                  ; $4641: $01 $06 $01
    ld b, $01                                     ; $4644: $06 $01
    ld b, $01                                     ; $4646: $06 $01
    inc c                                         ; $4648: $0C
    inc bc                                        ; $4649: $03
    dec e                                         ; $464A: $1D
    inc bc                                        ; $464B: $03
    dec sp                                        ; $464C: $3B
    rlca                                          ; $464D: $07
    ld [hl], a                                    ; $464E: $77
    rrca                                          ; $464F: $0F
    ld h, a                                       ; $4650: $67
    cp $67                                        ; $4651: $FE $67
    rst $38                                       ; $4653: $FF
    ld l, h                                       ; $4654: $6C
    rst $38                                       ; $4655: $FF
    ld a, h                                       ; $4656: $7C
    rst $38                                       ; $4657: $FF
    ld a, b                                       ; $4658: $78
    cp $7E                                        ; $4659: $FE $7E
    ld hl, sp+$7E                                 ; $465B: $F8 $7E
    ld hl, sp-$10                                 ; $465D: $F8 $F0
    db $FC                                        ; $465F: $FC
    rla                                           ; $4660: $17
    rrca                                          ; $4661: $0F
    rla                                           ; $4662: $17
    rrca                                          ; $4663: $0F
    rla                                           ; $4664: $17
    rrca                                          ; $4665: $0F
    add hl, hl                                    ; $4666: $29
    rla                                           ; $4667: $17
    jr jr_041_4671                                ; $4668: $18 $07

    inc c                                         ; $466A: $0C
    inc bc                                        ; $466B: $03
    ld [bc], a                                    ; $466C: $02
    ld bc, $0007                                  ; $466D: $01 $07 $00
    rst $08                                       ; $4670: $CF

jr_041_4671:
    rst $38                                       ; $4671: $FF
    rst $38                                       ; $4672: $FF
    rst $38                                       ; $4673: $FF
    rst $38                                       ; $4674: $FF
    rst $38                                       ; $4675: $FF
    ld a, a                                       ; $4676: $7F
    rst $38                                       ; $4677: $FF
    ld a, a                                       ; $4678: $7F
    rst $38                                       ; $4679: $FF
    ld a, a                                       ; $467A: $7F
    rst $38                                       ; $467B: $FF
    ld a, a                                       ; $467C: $7F
    rst $38                                       ; $467D: $FF
    ld a, a                                       ; $467E: $7F
    rst $38                                       ; $467F: $FF
    ld c, a                                       ; $4680: $4F
    cp a                                          ; $4681: $BF
    rra                                           ; $4682: $1F
    rst $38                                       ; $4683: $FF
    rra                                           ; $4684: $1F
    rst $38                                       ; $4685: $FF
    rrca                                          ; $4686: $0F
    rst $38                                       ; $4687: $FF
    rst $08                                       ; $4688: $CF
    rst $38                                       ; $4689: $FF
    cp $FF                                        ; $468A: $FE $FF
    ld sp, hl                                     ; $468C: $F9
    cp $D7                                        ; $468D: $FE $D7
    ld hl, sp-$10                                 ; $468F: $F8 $F0
    db $FC                                        ; $4691: $FC
    ldh a, [$FC]                                  ; $4692: $F0 $FC
    or $F8                                        ; $4694: $F6 $F8
    ld h, $C0                                     ; $4696: $26 $C0
    nop                                           ; $4698: $00
    ret nz                                        ; $4699: $C0

    ret nz                                        ; $469A: $C0

    nop                                           ; $469B: $00
    nop                                           ; $469C: $00
    add b                                         ; $469D: $80
    jp nz, $BF00                                  ; $469E: $C2 $00 $BF

    ld a, a                                       ; $46A1: $7F
    ld e, b                                       ; $46A2: $58
    daa                                           ; $46A3: $27
    ld b, $01                                     ; $46A4: $06 $01
    ld bc, $0000                                  ; $46A6: $01 $00 $00
    nop                                           ; $46A9: $00
    nop                                           ; $46AA: $00
    nop                                           ; $46AB: $00
    nop                                           ; $46AC: $00
    nop                                           ; $46AD: $00
    nop                                           ; $46AE: $00
    nop                                           ; $46AF: $00
    call $0DF0                                    ; $46B0: $CD $F0 $0D
    ldh a, [rNR32]                                ; $46B3: $F0 $1C
    ldh [$BF], a                                  ; $46B5: $E0 $BF
    ld b, b                                       ; $46B7: $40
    rst $38                                       ; $46B8: $FF
    nop                                           ; $46B9: $00
    ld a, a                                       ; $46BA: $7F
    nop                                           ; $46BB: $00
    ld a, a                                       ; $46BC: $7F
    nop                                           ; $46BD: $00
    ccf                                           ; $46BE: $3F
    nop                                           ; $46BF: $00
    add d                                         ; $46C0: $82
    nop                                           ; $46C1: $00
    inc c                                         ; $46C2: $0C
    nop                                           ; $46C3: $00
    ld a, h                                       ; $46C4: $7C
    nop                                           ; $46C5: $00
    ld hl, sp+$00                                 ; $46C6: $F8 $00
    ld hl, sp+$00                                 ; $46C8: $F8 $00
    ldh [rP1], a                                  ; $46CA: $E0 $00
    ldh [rP1], a                                  ; $46CC: $E0 $00
    ret nz                                        ; $46CE: $C0

    nop                                           ; $46CF: $00
    ccf                                           ; $46D0: $3F
    nop                                           ; $46D1: $00
    rra                                           ; $46D2: $1F
    nop                                           ; $46D3: $00
    nop                                           ; $46D4: $00
    nop                                           ; $46D5: $00
    nop                                           ; $46D6: $00
    nop                                           ; $46D7: $00
    nop                                           ; $46D8: $00
    nop                                           ; $46D9: $00
    nop                                           ; $46DA: $00
    nop                                           ; $46DB: $00
    nop                                           ; $46DC: $00
    nop                                           ; $46DD: $00
    nop                                           ; $46DE: $00
    nop                                           ; $46DF: $00
    inc b                                         ; $46E0: $04
    inc bc                                        ; $46E1: $03
    dec de                                        ; $46E2: $1B
    rlca                                          ; $46E3: $07
    nop                                           ; $46E4: $00
    rra                                           ; $46E5: $1F
    nop                                           ; $46E6: $00
    ccf                                           ; $46E7: $3F
    ldh [$7F], a                                  ; $46E8: $E0 $7F
    ldh [$7F], a                                  ; $46EA: $E0 $7F
    ld b, b                                       ; $46EC: $40
    rst $38                                       ; $46ED: $FF
    ld b, e                                       ; $46EE: $43
    db $FC                                        ; $46EF: $FC
    ldh [$80], a                                  ; $46F0: $E0 $80
    ret nz                                        ; $46F2: $C0

    ldh [rP1], a                                  ; $46F3: $E0 $00
    ldh a, [rLCDC]                                ; $46F5: $F0 $40
    ld hl, sp+$40                                 ; $46F7: $F8 $40
    cp $0C                                        ; $46F9: $FE $0C
    cp $C0                                        ; $46FB: $FE $C0
    ccf                                           ; $46FD: $3F
    ldh a, [rIF]                                  ; $46FE: $F0 $0F
    ld b, a                                       ; $4700: $47
    ld hl, sp+$67                                 ; $4701: $F8 $67
    ld hl, sp+$67                                 ; $4703: $F8 $67
    ld hl, sp+$77                                 ; $4705: $F8 $77
    ld hl, sp+$70                                 ; $4707: $F8 $70
    rst $38                                       ; $4709: $FF
    ld a, [hl]                                    ; $470A: $7E
    rst $38                                       ; $470B: $FF
    cp a                                          ; $470C: $BF
    ld a, a                                       ; $470D: $7F
    ccf                                           ; $470E: $3F
    ld a, a                                       ; $470F: $7F
    ld hl, sp+$07                                 ; $4710: $F8 $07
    cp $01                                        ; $4712: $FE $01
    ccf                                           ; $4714: $3F
    pop bc                                        ; $4715: $C1
    cp $01                                        ; $4716: $FE $01
    ld a, [hl]                                    ; $4718: $7E
    add c                                         ; $4719: $81
    ld a, [hl]                                    ; $471A: $7E
    add c                                         ; $471B: $81
    ld d, b                                       ; $471C: $50
    pop hl                                        ; $471D: $E1
    ldh [$E0], a                                  ; $471E: $E0 $E0
    ld a, a                                       ; $4720: $7F
    ccf                                           ; $4721: $3F
    ld a, a                                       ; $4722: $7F
    ccf                                           ; $4723: $3F
    rlca                                          ; $4724: $07
    ccf                                           ; $4725: $3F
    inc bc                                        ; $4726: $03
    rra                                           ; $4727: $1F
    dec bc                                        ; $4728: $0B
    rlca                                          ; $4729: $07
    rlca                                          ; $472A: $07
    inc bc                                        ; $472B: $03
    inc bc                                        ; $472C: $03
    rlca                                          ; $472D: $07
    inc bc                                        ; $472E: $03
    rlca                                          ; $472F: $07
    ldh [$F0], a                                  ; $4730: $E0 $F0
    ldh [$F0], a                                  ; $4732: $E0 $F0
    ldh [$F0], a                                  ; $4734: $E0 $F0
    ldh a, [$F8]                                  ; $4736: $F0 $F8
    ldh a, [$FC]                                  ; $4738: $F0 $FC
    db $FC                                        ; $473A: $FC
    cp $FE                                        ; $473B: $FE $FE
    rst $38                                       ; $473D: $FF
    db $FD                                        ; $473E: $FD
    cp $43                                        ; $473F: $FE $43
    rlca                                          ; $4741: $07
    ld h, e                                       ; $4742: $63
    inc bc                                        ; $4743: $03
    ld h, c                                       ; $4744: $61
    inc bc                                        ; $4745: $03
    ld b, e                                       ; $4746: $43
    ld bc, $0162                                  ; $4747: $01 $62 $01
    dec a                                         ; $474A: $3D
    inc bc                                        ; $474B: $03
    rlca                                          ; $474C: $07
    rra                                           ; $474D: $1F
    ccf                                           ; $474E: $3F
    rrca                                          ; $474F: $0F
    db $FD                                        ; $4750: $FD
    cp $FE                                        ; $4751: $FE $FE
    rst $38                                       ; $4753: $FF
    rst $38                                       ; $4754: $FF
    rst $38                                       ; $4755: $FF
    rst $38                                       ; $4756: $FF
    rst $38                                       ; $4757: $FF
    rst $38                                       ; $4758: $FF
    rst $38                                       ; $4759: $FF
    rst $38                                       ; $475A: $FF
    rst $38                                       ; $475B: $FF
    rst $38                                       ; $475C: $FF
    rst $38                                       ; $475D: $FF
    cp $FF                                        ; $475E: $FE $FF
    sbc h                                         ; $4760: $9C
    ld h, b                                       ; $4761: $60
    add e                                         ; $4762: $83
    ld a, h                                       ; $4763: $7C
    add e                                         ; $4764: $83
    ld a, h                                       ; $4765: $7C
    add a                                         ; $4766: $87
    ld a, b                                       ; $4767: $78
    ccf                                           ; $4768: $3F
    nop                                           ; $4769: $00
    rrca                                          ; $476A: $0F
    nop                                           ; $476B: $00
    nop                                           ; $476C: $00
    nop                                           ; $476D: $00
    nop                                           ; $476E: $00
    nop                                           ; $476F: $00
    ccf                                           ; $4770: $3F
    rrca                                          ; $4771: $0F
    ccf                                           ; $4772: $3F
    rrca                                          ; $4773: $0F
    rst $38                                       ; $4774: $FF
    rra                                           ; $4775: $1F
    rst $18                                       ; $4776: $DF
    ccf                                           ; $4777: $3F
    rst $18                                       ; $4778: $DF
    ccf                                           ; $4779: $3F
    rst $00                                       ; $477A: $C7
    ccf                                           ; $477B: $3F
    ld d, b                                       ; $477C: $50
    cpl                                           ; $477D: $2F
    ld h, a                                       ; $477E: $67
    nop                                           ; $477F: $00
    db $FC                                        ; $4780: $FC
    rst $38                                       ; $4781: $FF
    db $FC                                        ; $4782: $FC
    cp $F8                                        ; $4783: $FE $F8
    db $FC                                        ; $4785: $FC
    db $F4                                        ; $4786: $F4
    ld hl, sp-$3C                                 ; $4787: $F8 $C4
    ld hl, sp+$70                                 ; $4789: $F8 $70
    adc b                                         ; $478B: $88
    ld a, b                                       ; $478C: $78
    add b                                         ; $478D: $80
    or b                                          ; $478E: $B0
    nop                                           ; $478F: $00
    ld [hl], b                                    ; $4790: $70
    rrca                                          ; $4791: $0F
    ld l, [hl]                                    ; $4792: $6E
    rra                                           ; $4793: $1F
    ld a, $1D                                     ; $4794: $3E $1D
    ld e, [hl]                                    ; $4796: $5E
    add hl, sp                                    ; $4797: $39
    dec e                                         ; $4798: $1D
    inc sp                                        ; $4799: $33
    ld de, $6727                                  ; $479A: $11 $27 $67
    cpl                                           ; $479D: $2F
    daa                                           ; $479E: $27
    ld c, a                                       ; $479F: $4F
    ld b, h                                       ; $47A0: $44
    add [hl]                                      ; $47A1: $86
    pop bc                                        ; $47A2: $C1
    cp $FF                                        ; $47A3: $FE $FF
    cp $7E                                        ; $47A5: $FE $7E

jr_041_47A7:
    rst $38                                       ; $47A7: $FF
    add [hl]                                      ; $47A8: $86
    rst $38                                       ; $47A9: $FF
    jp nz, $CEFF                                  ; $47AA: $C2 $FF $CE

    di                                            ; $47AD: $F3
    add $FE                                       ; $47AE: $C6 $FE
    inc bc                                        ; $47B0: $03
    ld l, a                                       ; $47B1: $6F
    add hl, de                                    ; $47B2: $19
    ld h, a                                       ; $47B3: $67
    add hl, bc                                    ; $47B4: $09
    ld h, a                                       ; $47B5: $67
    ld l, [hl]                                    ; $47B6: $6E
    ld bc, $015E                                  ; $47B7: $01 $5E $01
    ld a, [hl]                                    ; $47BA: $7E
    ld bc, $004F                                  ; $47BB: $01 $4F $00
    ld c, a                                       ; $47BE: $4F
    nop                                           ; $47BF: $00
    and $FE                                       ; $47C0: $E6 $FE
    add $FF                                       ; $47C2: $C6 $FF
    adc [hl]                                      ; $47C4: $8E
    rst $38                                       ; $47C5: $FF
    ld c, a                                       ; $47C6: $4F
    cp $0D                                        ; $47C7: $FE $0D
    cp $B8                                        ; $47C9: $FE $B8
    ld a, [hl]                                    ; $47CB: $7E
    sbc d                                         ; $47CC: $9A
    ld a, h                                       ; $47CD: $7C
    ld a, [$433C]                                 ; $47CE: $FA $3C $43
    nop                                           ; $47D1: $00
    ld h, e                                       ; $47D2: $63
    nop                                           ; $47D3: $00
    ld h, a                                       ; $47D4: $67
    nop                                           ; $47D5: $00
    inc hl                                        ; $47D6: $23
    nop                                           ; $47D7: $00
    inc hl                                        ; $47D8: $23
    nop                                           ; $47D9: $00
    jr nz, jr_041_47DC                            ; $47DA: $20 $00

jr_041_47DC:
    ld h, b                                       ; $47DC: $60

jr_041_47DD:
    nop                                           ; $47DD: $00
    ret nz                                        ; $47DE: $C0

    nop                                           ; $47DF: $00
    add $38                                       ; $47E0: $C6 $38
    call nz, $C438                                ; $47E2: $C4 $38 $C4
    jr c, jr_041_47A7                             ; $47E5: $38 $C0

    jr c, jr_041_47DD                             ; $47E7: $38 $F4

    jr c, jr_041_47A7                             ; $47E9: $38 $BC

    ld a, b                                       ; $47EB: $78
    ld c, b                                       ; $47EC: $48
    inc a                                         ; $47ED: $3C
    ld b, b                                       ; $47EE: $40
    inc a                                         ; $47EF: $3C
    ld [hl-], a                                   ; $47F0: $32
    nop                                           ; $47F1: $00
    inc hl                                        ; $47F2: $23
    nop                                           ; $47F3: $00
    ld h, d                                       ; $47F4: $62
    inc bc                                        ; $47F5: $03
    ld c, l                                       ; $47F6: $4D
    ld [bc], a                                    ; $47F7: $02
    ld a, b                                       ; $47F8: $78
    ld b, $62                                     ; $47F9: $06 $62
    inc e                                         ; $47FB: $1C
    inc h                                         ; $47FC: $24
    jr jr_041_483B                                ; $47FD: $18 $3C

    nop                                           ; $47FF: $00
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    ld bc, $0300                                  ; $4802: $01 $00 $03
    nop                                           ; $4805: $00
    ld a, [de]                                    ; $4806: $1A
    dec b                                         ; $4807: $05
    inc d                                         ; $4808: $14
    dec bc                                        ; $4809: $0B
    ld l, b                                       ; $480A: $68
    rla                                           ; $480B: $17
    ldh a, [rIF]                                  ; $480C: $F0 $0F
    sub c                                         ; $480E: $91
    ld l, a                                       ; $480F: $6F
    dec d                                         ; $4810: $15
    nop                                           ; $4811: $00
    ret c                                         ; $4812: $D8

    daa                                           ; $4813: $27
    and d                                         ; $4814: $A2
    ld e, l                                       ; $4815: $5D
    ld b, b                                       ; $4816: $40
    cp a                                          ; $4817: $BF
    nop                                           ; $4818: $00
    rst $38                                       ; $4819: $FF
    add hl, hl                                    ; $481A: $29
    rst $38                                       ; $481B: $FF
    ld [bc], a                                    ; $481C: $02
    rst $38                                       ; $481D: $FF
    dec e                                         ; $481E: $1D
    rst $38                                       ; $481F: $FF
    rlca                                          ; $4820: $07
    nop                                           ; $4821: $00
    rlca                                          ; $4822: $07
    nop                                           ; $4823: $00
    ld b, $01                                     ; $4824: $06 $01
    ld c, $01                                     ; $4826: $0E $01
    ld a, [de]                                    ; $4828: $1A
    dec b                                         ; $4829: $05
    ld e, $01                                     ; $482A: $1E $01
    inc e                                         ; $482C: $1C
    inc bc                                        ; $482D: $03
    inc a                                         ; $482E: $3C
    inc bc                                        ; $482F: $03
    ld b, d                                       ; $4830: $42
    cp a                                          ; $4831: $BF
    ld bc, $93FF                                  ; $4832: $01 $FF $93
    ld a, a                                       ; $4835: $7F
    ld b, c                                       ; $4836: $41
    cp a                                          ; $4837: $BF
    add a                                         ; $4838: $87
    ld a, a                                       ; $4839: $7F
    ld [bc], a                                    ; $483A: $02

jr_041_483B:
    rst $38                                       ; $483B: $FF
    dec c                                         ; $483C: $0D
    rst $38                                       ; $483D: $FF
    ld [de], a                                    ; $483E: $12
    rst $38                                       ; $483F: $FF
    db $D3                                        ; $4840: $D3
    rst $38                                       ; $4841: $FF
    ld l, a                                       ; $4842: $6F
    rst $38                                       ; $4843: $FF
    ld l, a                                       ; $4844: $6F
    rst $38                                       ; $4845: $FF
    rst $38                                       ; $4846: $FF
    rst $38                                       ; $4847: $FF
    rst $38                                       ; $4848: $FF
    rst $38                                       ; $4849: $FF
    rst $18                                       ; $484A: $DF
    rst $38                                       ; $484B: $FF
    ld l, a                                       ; $484C: $6F
    rst $38                                       ; $484D: $FF
    or [hl]                                       ; $484E: $B6
    rst $38                                       ; $484F: $FF
    jr c, jr_041_4859                             ; $4850: $38 $07

    ld h, [hl]                                    ; $4852: $66
    add hl, de                                    ; $4853: $19
    add hl, sp                                    ; $4854: $39
    ld b, $64                                     ; $4855: $06 $64
    dec de                                        ; $4857: $1B
    ld a, d                                       ; $4858: $7A

jr_041_4859:
    dec b                                         ; $4859: $05
    ld l, h                                       ; $485A: $6C
    inc de                                        ; $485B: $13
    ld a, c                                       ; $485C: $79
    rlca                                          ; $485D: $07
    rst $20                                       ; $485E: $E7
    rra                                           ; $485F: $1F
    dec b                                         ; $4860: $05
    rst $38                                       ; $4861: $FF
    inc b                                         ; $4862: $04
    rst $38                                       ; $4863: $FF
    inc bc                                        ; $4864: $03
    rst $38                                       ; $4865: $FF
    ld bc, $97FF                                  ; $4866: $01 $FF $97
    ld a, a                                       ; $4869: $7F
    rst $38                                       ; $486A: $FF
    rst $38                                       ; $486B: $FF
    ei                                            ; $486C: $FB
    rst $38                                       ; $486D: $FF
    db $D4, $FF, $7F
    rst $38                                       ; $4871: $FF
    rst $10                                       ; $4872: $D7
    rst $38                                       ; $4873: $FF
    ld e, d                                       ; $4874: $5A
    rst $38                                       ; $4875: $FF
    rst $38                                       ; $4876: $FF
    rst $38                                       ; $4877: $FF
    rst $38                                       ; $4878: $FF
    rst $38                                       ; $4879: $FF
    cp d                                          ; $487A: $BA
    rst $38                                       ; $487B: $FF
    ld d, l                                       ; $487C: $55
    rst $38                                       ; $487D: $FF
    adc e                                         ; $487E: $8B
    rst $38                                       ; $487F: $FF
    ld c, $3F                                     ; $4880: $0E $3F
    ld d, $7F                                     ; $4882: $16 $7F
    xor b                                         ; $4884: $A8
    ld a, a                                       ; $4885: $7F
    ret nc                                        ; $4886: $D0

    ld a, a                                       ; $4887: $7F
    ret nc                                        ; $4888: $D0

    rst $38                                       ; $4889: $FF
    ld h, c                                       ; $488A: $61
    cp $60                                        ; $488B: $FE $60
    rst $38                                       ; $488D: $FF
    ld a, [c]                                     ; $488E: $F2
    ld a, l                                       ; $488F: $7D
    inc bc                                        ; $4890: $03
    rst $38                                       ; $4891: $FF
    nop                                           ; $4892: $00
    rst $38                                       ; $4893: $FF
    ld b, b                                       ; $4894: $40
    cp a                                          ; $4895: $BF
    nop                                           ; $4896: $00
    rst $38                                       ; $4897: $FF
    inc h                                         ; $4898: $24
    db $DB                                        ; $4899: $DB
    ld de, $22EE                                  ; $489A: $11 $EE $22
    db $DD                                        ; $489D: $DD
    ret nz                                        ; $489E: $C0

    ccf                                           ; $489F: $3F
    inc d                                         ; $48A0: $14
    rst $38                                       ; $48A1: $FF
    ld [hl+], a                                   ; $48A2: $22
    rst $38                                       ; $48A3: $FF
    db $10                                        ; $48A4: $10
    rst $38                                       ; $48A5: $FF
    ld [bc], a                                    ; $48A6: $02
    rst $38                                       ; $48A7: $FF
    nop                                           ; $48A8: $00
    rst $38                                       ; $48A9: $FF
    nop                                           ; $48AA: $00
    rst $38                                       ; $48AB: $FF
    ld b, b                                       ; $48AC: $40
    cp a                                          ; $48AD: $BF
    and b                                         ; $48AE: $A0
    ld e, a                                       ; $48AF: $5F
    ld [hl], h                                    ; $48B0: $74
    ccf                                           ; $48B1: $3F
    ld c, h                                       ; $48B2: $4C
    ccf                                           ; $48B3: $3F
    rlca                                          ; $48B4: $07
    rra                                           ; $48B5: $1F
    dec bc                                        ; $48B6: $0B
    rlca                                          ; $48B7: $07
    ld b, $01                                     ; $48B8: $06 $01
    ld bc, $2000                                  ; $48BA: $01 $00 $20
    nop                                           ; $48BD: $00
    stop                                          ; $48BE: $10 $00
    ld de, $26EE                                  ; $48C0: $11 $EE $26
    reti                                          ; $48C3: $D9


    add hl, bc                                    ; $48C4: $09
    or $84                                        ; $48C5: $F6 $84
    ei                                            ; $48C7: $FB
    ld a, h                                       ; $48C8: $7C
    rst $38                                       ; $48C9: $FF
    rst $08                                       ; $48CA: $CF
    ccf                                           ; $48CB: $3F
    ld l, d                                       ; $48CC: $6A
    rla                                           ; $48CD: $17
    ld c, e                                       ; $48CE: $4B
    nop                                           ; $48CF: $00
    ld b, d                                       ; $48D0: $42
    cp l                                          ; $48D1: $BD
    or c                                          ; $48D2: $B1
    ld c, [hl]                                    ; $48D3: $4E
    ld c, b                                       ; $48D4: $48
    or a                                          ; $48D5: $B7
    sub d                                         ; $48D6: $92
    ld l, l                                       ; $48D7: $6D
    dec b                                         ; $48D8: $05
    ld a, [$FFA9]                                 ; $48D9: $FA $A9 $FF
    rst $38                                       ; $48DC: $FF
    rst $38                                       ; $48DD: $FF
    pop bc                                        ; $48DE: $C1
    ld a, $00                                     ; $48DF: $3E $00
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    nop                                           ; $48E3: $00
    nop                                           ; $48E4: $00
    nop                                           ; $48E5: $00
    nop                                           ; $48E6: $00
    nop                                           ; $48E7: $00
    nop                                           ; $48E8: $00
    nop                                           ; $48E9: $00
    ld [de], a                                    ; $48EA: $12
    nop                                           ; $48EB: $00
    ld e, a                                       ; $48EC: $5F
    nop                                           ; $48ED: $00
    ret nc                                        ; $48EE: $D0

    cpl                                           ; $48EF: $2F
    nop                                           ; $48F0: $00

jr_041_48F1:
    nop                                           ; $48F1: $00
    nop                                           ; $48F2: $00
    nop                                           ; $48F3: $00
    nop                                           ; $48F4: $00
    nop                                           ; $48F5: $00
    nop                                           ; $48F6: $00
    nop                                           ; $48F7: $00
    inc bc                                        ; $48F8: $03
    nop                                           ; $48F9: $00
    ld b, $01                                     ; $48FA: $06 $01
    dec b                                         ; $48FC: $05
    ld [bc], a                                    ; $48FD: $02
    ld c, $01                                     ; $48FE: $0E $01
    inc de                                        ; $4900: $13
    inc b                                         ; $4901: $04
    ld e, b                                       ; $4902: $58
    rlca                                          ; $4903: $07
    ld l, h                                       ; $4904: $6C
    inc de                                        ; $4905: $13
    ret nc                                        ; $4906: $D0

    cpl                                           ; $4907: $2F
    add c                                         ; $4908: $81
    ld a, a                                       ; $4909: $7F
    ld b, l                                       ; $490A: $45
    cp a                                          ; $490B: $BF
    add hl, bc                                    ; $490C: $09
    rst $38                                       ; $490D: $FF
    ld [bc], a                                    ; $490E: $02
    rst $38                                       ; $490F: $FF
    jr nz, jr_041_48F1                            ; $4910: $20 $DF

    jr z, @+$01                                   ; $4912: $28 $FF

    ld bc, $25FF                                  ; $4914: $01 $FF $25
    rst $38                                       ; $4917: $FF
    ld c, e                                       ; $4918: $4B
    rst $38                                       ; $4919: $FF
    ld l, $FF                                     ; $491A: $2E $FF
    ld e, a                                       ; $491C: $5F
    rst $38                                       ; $491D: $FF
    rst $28                                       ; $491E: $EF
    rst $38                                       ; $491F: $FF
    ld e, $01                                     ; $4920: $1E $01
    ld a, [hl-]                                   ; $4922: $3A
    dec b                                         ; $4923: $05
    ld a, [de]                                    ; $4924: $1A
    dec b                                         ; $4925: $05
    ld l, b                                       ; $4926: $68
    rla                                           ; $4927: $17
    ld a, d                                       ; $4928: $7A
    dec b                                         ; $4929: $05
    db $FC                                        ; $492A: $FC
    inc bc                                        ; $492B: $03
    ld [hl], c                                    ; $492C: $71
    rrca                                          ; $492D: $0F
    ld h, a                                       ; $492E: $67
    rra                                           ; $492F: $1F
    nop                                           ; $4930: $00
    rst $38                                       ; $4931: $FF
    inc de                                        ; $4932: $13
    rst $38                                       ; $4933: $FF
    ld [bc], a                                    ; $4934: $02
    rst $38                                       ; $4935: $FF
    dec de                                        ; $4936: $1B
    rst $38                                       ; $4937: $FF
    rrca                                          ; $4938: $0F
    rst $38                                       ; $4939: $FF
    ld a, e                                       ; $493A: $7B
    rst $38                                       ; $493B: $FF
    db $FD                                        ; $493C: $FD
    rst $38                                       ; $493D: $FF
    db $F4                                        ; $493E: $F4
    rst $38                                       ; $493F: $FF
    or a                                          ; $4940: $B7
    rst $38                                       ; $4941: $FF
    rst $28                                       ; $4942: $EF
    rst $38                                       ; $4943: $FF
    rst $10                                       ; $4944: $D7
    rst $38                                       ; $4945: $FF
    ld a, a                                       ; $4946: $7F
    rst $38                                       ; $4947: $FF
    rst $38                                       ; $4948: $FF
    rst $38                                       ; $4949: $FF
    ld l, a                                       ; $494A: $6F
    rst $38                                       ; $494B: $FF
    xor l                                         ; $494C: $AD
    rst $38                                       ; $494D: $FF
    jp nc, $0EFF                                  ; $494E: $D2 $FF $0E

    ccf                                           ; $4951: $3F
    inc d                                         ; $4952: $14
    ld a, a                                       ; $4953: $7F
    ld l, b                                       ; $4954: $68
    ld a, a                                       ; $4955: $7F
    ld [hl], c                                    ; $4956: $71
    cp $50                                        ; $4957: $FE $50
    rst $38                                       ; $4959: $FF
    ld [c], a                                     ; $495A: $E2
    db $FD                                        ; $495B: $FD
    ld [hl], c                                    ; $495C: $71
    cp $F0                                        ; $495D: $FE $F0
    ld a, a                                       ; $495F: $7F
    ld a, [bc]                                    ; $4960: $0A
    rst $38                                       ; $4961: $FF
    db $10                                        ; $4962: $10
    rst $38                                       ; $4963: $FF
    nop                                           ; $4964: $00
    rst $38                                       ; $4965: $FF
    nop                                           ; $4966: $00
    rst $38                                       ; $4967: $FF
    add b                                         ; $4968: $80
    ld a, a                                       ; $4969: $7F
    ld d, b                                       ; $496A: $50
    xor a                                         ; $496B: $AF
    and b                                         ; $496C: $A0
    ld e, a                                       ; $496D: $5F
    ld a, [hl+]                                   ; $496E: $2A
    push de                                       ; $496F: $D5
    dec b                                         ; $4970: $05
    rst $38                                       ; $4971: $FF
    sbc d                                         ; $4972: $9A
    rst $38                                       ; $4973: $FF
    dec h                                         ; $4974: $25
    rst $38                                       ; $4975: $FF
    ld a, [bc]                                    ; $4976: $0A
    rst $38                                       ; $4977: $FF
    ld bc, $00FF                                  ; $4978: $01 $FF $00
    rst $38                                       ; $497B: $FF
    nop                                           ; $497C: $00
    rst $38                                       ; $497D: $FF
    nop                                           ; $497E: $00
    rst $38                                       ; $497F: $FF
    inc [hl]                                      ; $4980: $34
    ld a, a                                       ; $4981: $7F
    ld a, [de]                                    ; $4982: $1A
    ccf                                           ; $4983: $3F
    rlca                                          ; $4984: $07
    rra                                           ; $4985: $1F
    dec bc                                        ; $4986: $0B
    rlca                                          ; $4987: $07
    ld [bc], a                                    ; $4988: $02
    ld bc, $0000                                  ; $4989: $01 $00 $00
    ld bc, $8000                                  ; $498C: $01 $00 $80
    nop                                           ; $498F: $00
    sub c                                         ; $4990: $91
    ld l, [hl]                                    ; $4991: $6E
    ld d, d                                       ; $4992: $52
    xor l                                         ; $4993: $AD
    nop                                           ; $4994: $00
    rst $38                                       ; $4995: $FF
    and d                                         ; $4996: $A2
    db $FD                                        ; $4997: $FD
    ld a, d                                       ; $4998: $7A
    rst $38                                       ; $4999: $FF
    sbc a                                         ; $499A: $9F
    ld a, a                                       ; $499B: $7F
    ld a, c                                       ; $499C: $79
    rlca                                          ; $499D: $07
    ld e, [hl]                                    ; $499E: $5E
    ld bc, $FF00                                  ; $499F: $01 $00 $FF
    add hl, hl                                    ; $49A2: $29
    sub $44                                       ; $49A3: $D6 $44
    cp e                                          ; $49A5: $BB
    ld a, [de]                                    ; $49A6: $1A
    push hl                                       ; $49A7: $E5
    nop                                           ; $49A8: $00
    rst $38                                       ; $49A9: $FF
    ret c                                         ; $49AA: $D8

    rst $38                                       ; $49AB: $FF
    rst $38                                       ; $49AC: $FF
    rst $38                                       ; $49AD: $FF
    and [hl]                                      ; $49AE: $A6
    ld e, c                                       ; $49AF: $59
    nop                                           ; $49B0: $00
    nop                                           ; $49B1: $00
    nop                                           ; $49B2: $00
    nop                                           ; $49B3: $00
    nop                                           ; $49B4: $00
    nop                                           ; $49B5: $00
    nop                                           ; $49B6: $00
    nop                                           ; $49B7: $00
    ld [bc], a                                    ; $49B8: $02
    nop                                           ; $49B9: $00
    rla                                           ; $49BA: $17
    nop                                           ; $49BB: $00
    ld a, [hl-]                                   ; $49BC: $3A
    dec b                                         ; $49BD: $05
    ld l, b                                       ; $49BE: $68
    rla                                           ; $49BF: $17
    nop                                           ; $49C0: $00
    nop                                           ; $49C1: $00
    nop                                           ; $49C2: $00
    nop                                           ; $49C3: $00
    nop                                           ; $49C4: $00
    nop                                           ; $49C5: $00
    dec b                                         ; $49C6: $05
    nop                                           ; $49C7: $00
    db $ED                                        ; $49C8: $ED
    ld [de], a                                    ; $49C9: $12
    add b                                         ; $49CA: $80
    ld a, a                                       ; $49CB: $7F
    ld bc, $B5FF                                  ; $49CC: $01 $FF $B5
    rst $38                                       ; $49CF: $FF
    ld bc, $0200                                  ; $49D0: $01 $00 $02
    ld bc, $0007                                  ; $49D3: $01 $07 $00
    ld e, h                                       ; $49D6: $5C
    inc bc                                        ; $49D7: $03
    rrca                                          ; $49D8: $0F
    nop                                           ; $49D9: $00
    ld a, [hl-]                                   ; $49DA: $3A
    dec b                                         ; $49DB: $05
    ld d, e                                       ; $49DC: $53
    rrca                                          ; $49DD: $0F
    scf                                           ; $49DE: $37
    rrca                                          ; $49DF: $0F
    ret nz                                        ; $49E0: $C0

    ccf                                           ; $49E1: $3F
    inc hl                                        ; $49E2: $23
    rst $18                                       ; $49E3: $DF
    nop                                           ; $49E4: $00
    rst $38                                       ; $49E5: $FF
    dec bc                                        ; $49E6: $0B
    rst $38                                       ; $49E7: $FF
    rrca                                          ; $49E8: $0F
    rst $38                                       ; $49E9: $FF
    ccf                                           ; $49EA: $3F
    rst $38                                       ; $49EB: $FF
    push hl                                       ; $49EC: $E5
    rst $38                                       ; $49ED: $FF
    halt                                          ; $49EE: $76
    rst $38                                       ; $49EF: $FF
    ld c, d                                       ; $49F0: $4A
    rst $38                                       ; $49F1: $FF
    ld [hl], $FF                                  ; $49F2: $36 $FF
    rst $18                                       ; $49F4: $DF
    rst $38                                       ; $49F5: $FF
    ld a, a                                       ; $49F6: $7F
    rst $38                                       ; $49F7: $FF
    rst $38                                       ; $49F8: $FF
    rst $38                                       ; $49F9: $FF
    rst $38                                       ; $49FA: $FF
    rst $38                                       ; $49FB: $FF
    ld a, a                                       ; $49FC: $7F
    rst $38                                       ; $49FD: $FF
    db $FD                                        ; $49FE: $FD
    rst $38                                       ; $49FF: $FF
    ld a, [hl]                                    ; $4A00: $7E
    rra                                           ; $4A01: $1F
    ld hl, sp+$3F                                 ; $4A02: $F8 $3F
    xor b                                         ; $4A04: $A8
    ld a, a                                       ; $4A05: $7F
    ld a, b                                       ; $4A06: $78
    rst $38                                       ; $4A07: $FF
    ld h, b                                       ; $4A08: $60
    rst $38                                       ; $4A09: $FF
    ldh a, [rIE]                                  ; $4A0A: $F0 $FF
    ld l, d                                       ; $4A0C: $6A
    db $FD                                        ; $4A0D: $FD
    ldh a, [$7F]                                  ; $4A0E: $F0 $7F
    pop de                                        ; $4A10: $D1
    rst $38                                       ; $4A11: $FF
    ld a, [bc]                                    ; $4A12: $0A
    rst $38                                       ; $4A13: $FF
    ld bc, $00FF                                  ; $4A14: $01 $FF $00
    rst $38                                       ; $4A17: $FF
    ld [bc], a                                    ; $4A18: $02
    rst $38                                       ; $4A19: $FF
    ld bc, $00FF                                  ; $4A1A: $01 $FF $00
    rst $38                                       ; $4A1D: $FF
    ld b, b                                       ; $4A1E: $40
    cp a                                          ; $4A1F: $BF
    ld c, [hl]                                    ; $4A20: $4E
    rst $38                                       ; $4A21: $FF
    sub d                                         ; $4A22: $92
    rst $38                                       ; $4A23: $FF
    ld d, l                                       ; $4A24: $55
    rst $38                                       ; $4A25: $FF
    and d                                         ; $4A26: $A2
    rst $38                                       ; $4A27: $FF
    xor c                                         ; $4A28: $A9
    rst $38                                       ; $4A29: $FF
    nop                                           ; $4A2A: $00
    rst $38                                       ; $4A2B: $FF
    add b                                         ; $4A2C: $80
    rst $38                                       ; $4A2D: $FF
    nop                                           ; $4A2E: $00
    rst $38                                       ; $4A2F: $FF
    ld a, b                                       ; $4A30: $78
    ccf                                           ; $4A31: $3F
    ld e, h                                       ; $4A32: $5C
    ccf                                           ; $4A33: $3F
    rra                                           ; $4A34: $1F
    rrca                                          ; $4A35: $0F
    dec de                                        ; $4A36: $1B
    rlca                                          ; $4A37: $07
    ld b, $01                                     ; $4A38: $06 $01
    ld bc, $1000                                  ; $4A3A: $01 $00 $10
    nop                                           ; $4A3D: $00
    nop                                           ; $4A3E: $00
    nop                                           ; $4A3F: $00
    ld hl, $50DE                                  ; $4A40: $21 $DE $50
    xor a                                         ; $4A43: $AF
    nop                                           ; $4A44: $00
    rst $38                                       ; $4A45: $FF
    and b                                         ; $4A46: $A0
    rst $38                                       ; $4A47: $FF
    push af                                       ; $4A48: $F5
    rst $38                                       ; $4A49: $FF
    sbc [hl]                                      ; $4A4A: $9E
    ld a, a                                       ; $4A4B: $7F
    ld [hl], b                                    ; $4A4C: $70
    rrca                                          ; $4A4D: $0F
    scf                                           ; $4A4E: $37
    nop                                           ; $4A4F: $00
    nop                                           ; $4A50: $00
    rst $38                                       ; $4A51: $FF
    ld b, b                                       ; $4A52: $40
    cp a                                          ; $4A53: $BF
    add d                                         ; $4A54: $82
    ld a, l                                       ; $4A55: $7D
    ld b, l                                       ; $4A56: $45
    cp d                                          ; $4A57: $BA
    ld [bc], a                                    ; $4A58: $02
    db $FD                                        ; $4A59: $FD
    sbc e                                         ; $4A5A: $9B
    rst $38                                       ; $4A5B: $FF
    xor l                                         ; $4A5C: $AD
    rst $38                                       ; $4A5D: $FF
    and b                                         ; $4A5E: $A0
    ld e, a                                       ; $4A5F: $5F
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    nop                                           ; $4A62: $00
    nop                                           ; $4A63: $00
    nop                                           ; $4A64: $00
    nop                                           ; $4A65: $00
    add b                                         ; $4A66: $80
    nop                                           ; $4A67: $00
    ld bc, $0300                                  ; $4A68: $01 $00 $03
    nop                                           ; $4A6B: $00
    inc b                                         ; $4A6C: $04
    inc bc                                        ; $4A6D: $03
    inc de                                        ; $4A6E: $13
    rrca                                          ; $4A6F: $0F
    nop                                           ; $4A70: $00
    nop                                           ; $4A71: $00
    ld bc, $0F00                                  ; $4A72: $01 $00 $0F
    nop                                           ; $4A75: $00
    ld c, h                                       ; $4A76: $4C
    inc de                                        ; $4A77: $13
    ld c, a                                       ; $4A78: $4F
    ccf                                           ; $4A79: $3F
    rst $38                                       ; $4A7A: $FF
    rst $38                                       ; $4A7B: $FF
    db $F4                                        ; $4A7C: $F4
    rst $38                                       ; $4A7D: $FF
    set 7, a                                      ; $4A7E: $CB $FF
    inc b                                         ; $4A80: $04
    nop                                           ; $4A81: $00
    cp l                                          ; $4A82: $BD
    ld [bc], a                                    ; $4A83: $02
    add b                                         ; $4A84: $80
    ld a, a                                       ; $4A85: $7F
    cp a                                          ; $4A86: $BF
    rst $38                                       ; $4A87: $FF
    rst $38                                       ; $4A88: $FF
    rst $38                                       ; $4A89: $FF
    rst $38                                       ; $4A8A: $FF
    rst $38                                       ; $4A8B: $FF
    ld e, l                                       ; $4A8C: $5D
    rst $38                                       ; $4A8D: $FF
    cp a                                          ; $4A8E: $BF
    rst $38                                       ; $4A8F: $FF
    ld a, $1F                                     ; $4A90: $3E $1F
    ld a, l                                       ; $4A92: $7D
    ccf                                           ; $4A93: $3F
    or b                                          ; $4A94: $B0
    ld a, a                                       ; $4A95: $7F
    ld [hl], h                                    ; $4A96: $74
    rst $38                                       ; $4A97: $FF
    ld l, b                                       ; $4A98: $68
    rst $38                                       ; $4A99: $FF
    ldh a, [rIE]                                  ; $4A9A: $F0 $FF
    ld [hl], b                                    ; $4A9C: $70
    rst $38                                       ; $4A9D: $FF
    ldh a, [$7F]                                  ; $4A9E: $F0 $7F
    dec d                                         ; $4AA0: $15
    rst $38                                       ; $4AA1: $FF
    inc bc                                        ; $4AA2: $03
    rst $38                                       ; $4AA3: $FF
    dec c                                         ; $4AA4: $0D
    rst $38                                       ; $4AA5: $FF
    ld [bc], a                                    ; $4AA6: $02
    rst $38                                       ; $4AA7: $FF
    ld [$12FF], sp                                ; $4AA8: $08 $FF $12
    rst $38                                       ; $4AAB: $FF
    nop                                           ; $4AAC: $00
    rst $38                                       ; $4AAD: $FF
    nop                                           ; $4AAE: $00
    rst $38                                       ; $4AAF: $FF
    ld a, a                                       ; $4AB0: $7F
    rst $38                                       ; $4AB1: $FF
    dec sp                                        ; $4AB2: $3B
    rst $38                                       ; $4AB3: $FF
    sbc $FF                                       ; $4AB4: $DE $FF
    and a                                         ; $4AB6: $A7
    rst $38                                       ; $4AB7: $FF
    ld c, e                                       ; $4AB8: $4B
    rst $38                                       ; $4AB9: $FF
    or h                                          ; $4ABA: $B4
    rst $38                                       ; $4ABB: $FF
    dec b                                         ; $4ABC: $05
    rst $38                                       ; $4ABD: $FF
    ld [hl-], a                                   ; $4ABE: $32

jr_041_4ABF:
    rst $38                                       ; $4ABF: $FF
    inc [hl]                                      ; $4AC0: $34
    ld a, a                                       ; $4AC1: $7F
    add hl, de                                    ; $4AC2: $19
    ccf                                           ; $4AC3: $3F
    ld h, $1F                                     ; $4AC4: $26 $1F
    inc de                                        ; $4AC6: $13
    rrca                                          ; $4AC7: $0F
    inc b                                         ; $4AC8: $04
    inc bc                                        ; $4AC9: $03
    dec b                                         ; $4ACA: $05
    nop                                           ; $4ACB: $00
    nop                                           ; $4ACC: $00
    nop                                           ; $4ACD: $00
    nop                                           ; $4ACE: $00
    nop                                           ; $4ACF: $00
    nop                                           ; $4AD0: $00
    rst $38                                       ; $4AD1: $FF
    nop                                           ; $4AD2: $00
    rst $38                                       ; $4AD3: $FF
    nop                                           ; $4AD4: $00
    rst $38                                       ; $4AD5: $FF
    and b                                         ; $4AD6: $A0
    rst $38                                       ; $4AD7: $FF
    ld a, [$AFFF]                                 ; $4AD8: $FA $FF $AF
    ld a, a                                       ; $4ADB: $7F
    db $E3                                        ; $4ADC: $E3
    rra                                           ; $4ADD: $1F
    ld d, a                                       ; $4ADE: $57
    nop                                           ; $4ADF: $00
    nop                                           ; $4AE0: $00
    rst $38                                       ; $4AE1: $FF
    nop                                           ; $4AE2: $00
    rst $38                                       ; $4AE3: $FF
    nop                                           ; $4AE4: $00
    rst $38                                       ; $4AE5: $FF
    jr z, jr_041_4ABF                             ; $4AE6: $28 $D7

    nop                                           ; $4AE8: $00
    rst $38                                       ; $4AE9: $FF
    xor d                                         ; $4AEA: $AA
    rst $38                                       ; $4AEB: $FF
    rst $10                                       ; $4AEC: $D7
    rst $38                                       ; $4AED: $FF
    ret nc                                        ; $4AEE: $D0

    cpl                                           ; $4AEF: $2F
    nop                                           ; $4AF0: $00
    nop                                           ; $4AF1: $00
    nop                                           ; $4AF2: $00
    nop                                           ; $4AF3: $00
    nop                                           ; $4AF4: $00
    nop                                           ; $4AF5: $00
    nop                                           ; $4AF6: $00
    nop                                           ; $4AF7: $00
    nop                                           ; $4AF8: $00
    nop                                           ; $4AF9: $00
    ld bc, $0700                                  ; $4AFA: $01 $00 $07
    ld bc, $070A                                  ; $4AFD: $01 $0A $07
    nop                                           ; $4B00: $00
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    nop                                           ; $4B05: $00
    inc bc                                        ; $4B06: $03
    nop                                           ; $4B07: $00
    jr nc, jr_041_4B19                            ; $4B08: $30 $0F

    sub a                                         ; $4B0A: $97
    ld a, a                                       ; $4B0B: $7F
    ret nc                                        ; $4B0C: $D0

    rst $38                                       ; $4B0D: $FF
    add b                                         ; $4B0E: $80
    rst $38                                       ; $4B0F: $FF
    nop                                           ; $4B10: $00
    nop                                           ; $4B11: $00
    nop                                           ; $4B12: $00
    nop                                           ; $4B13: $00
    ld de, $8700                                  ; $4B14: $11 $00 $87
    ld a, a                                       ; $4B17: $7F
    db $DB                                        ; $4B18: $DB

jr_041_4B19:
    rst $38                                       ; $4B19: $FF
    ld b, [hl]                                    ; $4B1A: $46
    rst $38                                       ; $4B1B: $FF
    ld bc, $2FFF                                  ; $4B1C: $01 $FF $2F
    rst $38                                       ; $4B1F: $FF
    inc c                                         ; $4B20: $0C
    rra                                           ; $4B21: $1F
    ld e, c                                       ; $4B22: $59
    ld a, $B7                                     ; $4B23: $3E $B7
    ld a, b                                       ; $4B25: $78
    adc $70                                       ; $4B26: $CE $70
    ld l, l                                       ; $4B28: $6D
    ldh a, [$C9]                                  ; $4B29: $F0 $C9
    ldh a, [$FC]                                  ; $4B2B: $F0 $FC
    ld h, b                                       ; $4B2D: $60
    rst $38                                       ; $4B2E: $FF
    ld [hl], b                                    ; $4B2F: $70
    ld d, d                                       ; $4B30: $52
    xor l                                         ; $4B31: $AD
    db $EC                                        ; $4B32: $EC
    inc de                                        ; $4B33: $13
    ld a, [$F505]                                 ; $4B34: $FA $05 $F5
    ld a, [bc]                                    ; $4B37: $0A
    ld a, [hl-]                                   ; $4B38: $3A
    dec b                                         ; $4B39: $05
    ccf                                           ; $4B3A: $3F
    nop                                           ; $4B3B: $00
    rla                                           ; $4B3C: $17
    nop                                           ; $4B3D: $00
    dec de                                        ; $4B3E: $1B
    nop                                           ; $4B3F: $00
    ld d, a                                       ; $4B40: $57
    rst $38                                       ; $4B41: $FF
    dec bc                                        ; $4B42: $0B
    rst $38                                       ; $4B43: $FF
    inc b                                         ; $4B44: $04
    rst $38                                       ; $4B45: $FF
    nop                                           ; $4B46: $00
    rst $38                                       ; $4B47: $FF
    sub b                                         ; $4B48: $90
    ld l, a                                       ; $4B49: $6F
    add sp, $17                                   ; $4B4A: $E8 $17
    jp c, $FF25                                   ; $4B4C: $DA $25 $FF

    nop                                           ; $4B4F: $00
    ld [hl], h                                    ; $4B50: $74
    jr c, jr_041_4B82                             ; $4B51: $38 $2F

    inc e                                         ; $4B53: $1C
    ld e, $0F                                     ; $4B54: $1E $0F
    rlca                                          ; $4B56: $07
    inc bc                                        ; $4B57: $03
    nop                                           ; $4B58: $00
    ld bc, $0000                                  ; $4B59: $01 $00 $00
    nop                                           ; $4B5C: $00
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    inc b                                         ; $4B60: $04
    nop                                           ; $4B61: $00
    ld [$5400], sp                                ; $4B62: $08 $00 $54
    add b                                         ; $4B65: $80
    cp h                                          ; $4B66: $BC
    ret nz                                        ; $4B67: $C0

    ld [hl], a                                    ; $4B68: $77
    ld hl, sp+$77                                 ; $4B69: $F8 $77
    rrca                                          ; $4B6B: $0F
    rla                                           ; $4B6C: $17
    nop                                           ; $4B6D: $00
    ld [bc], a                                    ; $4B6E: $02
    nop                                           ; $4B6F: $00
    ld [hl], a                                    ; $4B70: $77
    nop                                           ; $4B71: $00
    adc c                                         ; $4B72: $89
    nop                                           ; $4B73: $00
    inc b                                         ; $4B74: $04
    nop                                           ; $4B75: $00
    add d                                         ; $4B76: $82
    nop                                           ; $4B77: $00
    ld h, b                                       ; $4B78: $60
    nop                                           ; $4B79: $00
    dec hl                                        ; $4B7A: $2B
    call nc, $FF8A                                ; $4B7B: $D4 $8A $FF
    ld a, [hl]                                    ; $4B7E: $7E
    ld bc, $0000                                  ; $4B7F: $01 $00 $00

jr_041_4B82:
    nop                                           ; $4B82: $00
    nop                                           ; $4B83: $00
    nop                                           ; $4B84: $00
    nop                                           ; $4B85: $00
    nop                                           ; $4B86: $00
    nop                                           ; $4B87: $00
    nop                                           ; $4B88: $00
    nop                                           ; $4B89: $00
    nop                                           ; $4B8A: $00
    nop                                           ; $4B8B: $00
    ld [bc], a                                    ; $4B8C: $02
    ld bc, $0718                                  ; $4B8D: $01 $18 $07
    nop                                           ; $4B90: $00
    nop                                           ; $4B91: $00
    nop                                           ; $4B92: $00
    nop                                           ; $4B93: $00
    nop                                           ; $4B94: $00
    nop                                           ; $4B95: $00
    nop                                           ; $4B96: $00
    nop                                           ; $4B97: $00
    add hl, de                                    ; $4B98: $19
    rlca                                          ; $4B99: $07
    ld b, c                                       ; $4B9A: $41
    cp [hl]                                       ; $4B9B: $BE
    ld a, e                                       ; $4B9C: $7B
    ret nz                                        ; $4B9D: $C0

    nop                                           ; $4B9E: $00
    add b                                         ; $4B9F: $80
    nop                                           ; $4BA0: $00
    nop                                           ; $4BA1: $00
    nop                                           ; $4BA2: $00
    nop                                           ; $4BA3: $00
    nop                                           ; $4BA4: $00
    nop                                           ; $4BA5: $00
    ld [c], a                                     ; $4BA6: $E2
    rra                                           ; $4BA7: $1F
    dec l                                         ; $4BA8: $2D
    rst $38                                       ; $4BA9: $FF
    inc l                                         ; $4BAA: $2C
    db $D3                                        ; $4BAB: $D3
    ld [hl], b                                    ; $4BAC: $70
    rrca                                          ; $4BAD: $0F
    ld [hl], d                                    ; $4BAE: $72
    rrca                                          ; $4BAF: $0F
    ld a, $0C                                     ; $4BB0: $3E $0C
    db $10                                        ; $4BB2: $10
    jr c, jr_041_4BD5                             ; $4BB3: $38 $20

    ld [hl], b                                    ; $4BB5: $70
    ret nc                                        ; $4BB6: $D0

    ld h, b                                       ; $4BB7: $60
    ret nz                                        ; $4BB8: $C0

    ld h, b                                       ; $4BB9: $60
    ld h, b                                       ; $4BBA: $60
    ret nz                                        ; $4BBB: $C0

    ret nz                                        ; $4BBC: $C0

    ld h, b                                       ; $4BBD: $60
    jr nc, jr_041_4C20                            ; $4BBE: $30 $60

    push hl                                       ; $4BC0: $E5
    rra                                           ; $4BC1: $1F
    jp nc, $3A2F                                  ; $4BC2: $D2 $2F $3A

    dec b                                         ; $4BC5: $05
    cpl                                           ; $4BC6: $2F
    nop                                           ; $4BC7: $00
    nop                                           ; $4BC8: $00
    nop                                           ; $4BC9: $00
    nop                                           ; $4BCA: $00
    nop                                           ; $4BCB: $00
    nop                                           ; $4BCC: $00
    nop                                           ; $4BCD: $00
    nop                                           ; $4BCE: $00
    nop                                           ; $4BCF: $00
    ld e, b                                       ; $4BD0: $58
    jr nc, jr_041_4C07                            ; $4BD1: $30 $34

    jr jr_041_4BEC                                ; $4BD3: $18 $17

jr_041_4BD5:
    inc c                                         ; $4BD5: $0C
    ld bc, $0003                                  ; $4BD6: $01 $03 $00
    nop                                           ; $4BD9: $00
    nop                                           ; $4BDA: $00
    nop                                           ; $4BDB: $00
    nop                                           ; $4BDC: $00
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    nop                                           ; $4BE0: $00
    nop                                           ; $4BE1: $00
    nop                                           ; $4BE2: $00
    nop                                           ; $4BE3: $00
    nop                                           ; $4BE4: $00
    nop                                           ; $4BE5: $00
    ld h, b                                       ; $4BE6: $60
    add b                                         ; $4BE7: $80
    ld [$10F0], sp                                ; $4BE8: $08 $F0 $10
    cpl                                           ; $4BEB: $2F

jr_041_4BEC:
    inc bc                                        ; $4BEC: $03
    nop                                           ; $4BED: $00
    ld bc, $0000                                  ; $4BEE: $01 $00 $00
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    nop                                           ; $4BF3: $00
    nop                                           ; $4BF4: $00
    nop                                           ; $4BF5: $00
    nop                                           ; $4BF6: $00
    nop                                           ; $4BF7: $00
    nop                                           ; $4BF8: $00
    nop                                           ; $4BF9: $00
    ld l, b                                       ; $4BFA: $68
    add b                                         ; $4BFB: $80
    add sp, $17                                   ; $4BFC: $E8 $17
    ccf                                           ; $4BFE: $3F
    nop                                           ; $4BFF: $00
    nop                                           ; $4C00: $00
    nop                                           ; $4C01: $00
    ld h, [hl]                                    ; $4C02: $66
    ld h, [hl]                                    ; $4C03: $66
    rst $38                                       ; $4C04: $FF
    cp $FF                                        ; $4C05: $FE $FF

jr_041_4C07:
    db $EC                                        ; $4C07: $EC
    rst $38                                       ; $4C08: $FF
    ld b, b                                       ; $4C09: $40
    ld a, [hl]                                    ; $4C0A: $7E
    nop                                           ; $4C0B: $00
    inc a                                         ; $4C0C: $3C
    nop                                           ; $4C0D: $00
    jr jr_041_4C10                                ; $4C0E: $18 $00

jr_041_4C10:
    nop                                           ; $4C10: $00
    nop                                           ; $4C11: $00
    inc a                                         ; $4C12: $3C
    jr c, jr_041_4C93                             ; $4C13: $38 $7E

    ld a, [hl]                                    ; $4C15: $7E
    rst $38                                       ; $4C16: $FF
    cp $FF                                        ; $4C17: $FE $FF
    cp $FF                                        ; $4C19: $FE $FF
    cp $FF                                        ; $4C1B: $FE $FF
    db $FC                                        ; $4C1D: $FC
    rst $38                                       ; $4C1E: $FF
    ld a, b                                       ; $4C1F: $78

jr_041_4C20:
    nop                                           ; $4C20: $00
    nop                                           ; $4C21: $00
    inc a                                         ; $4C22: $3C
    jr c, jr_041_4CA3                             ; $4C23: $38 $7E

    ld a, [hl]                                    ; $4C25: $7E
    rst $38                                       ; $4C26: $FF
    db $FC                                        ; $4C27: $FC
    rst $38                                       ; $4C28: $FF
    db $FC                                        ; $4C29: $FC
    rst $38                                       ; $4C2A: $FF
    ld a, b                                       ; $4C2B: $78
    rst $38                                       ; $4C2C: $FF
    nop                                           ; $4C2D: $00
    cp $00                                        ; $4C2E: $FE $00
    ld a, a                                       ; $4C30: $7F
    jr nc, jr_041_4C72                            ; $4C31: $30 $3F

    db $10                                        ; $4C33: $10
    rra                                           ; $4C34: $1F
    nop                                           ; $4C35: $00
    rrca                                          ; $4C36: $0F
    nop                                           ; $4C37: $00

Call_041_4C38:
    rlca                                          ; $4C38: $07
    nop                                           ; $4C39: $00
    inc bc                                        ; $4C3A: $03
    nop                                           ; $4C3B: $00
    ld bc, $0000                                  ; $4C3C: $01 $00 $00
    nop                                           ; $4C3F: $00
    cp $00                                        ; $4C40: $FE $00
    db $FC                                        ; $4C42: $FC
    nop                                           ; $4C43: $00
    ld hl, sp+$00                                 ; $4C44: $F8 $00
    ldh a, [rP1]                                  ; $4C46: $F0 $00
    ldh [rP1], a                                  ; $4C48: $E0 $00
    ret nz                                        ; $4C4A: $C0

    nop                                           ; $4C4B: $00
    add b                                         ; $4C4C: $80
    nop                                           ; $4C4D: $00
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    nop                                           ; $4C50: $00
    nop                                           ; $4C51: $00
    nop                                           ; $4C52: $00
    nop                                           ; $4C53: $00
    ld [bc], a                                    ; $4C54: $02
    ld [bc], a                                    ; $4C55: $02
    nop                                           ; $4C56: $00
    nop                                           ; $4C57: $00
    ld [bc], a                                    ; $4C58: $02
    ld [bc], a                                    ; $4C59: $02

jr_041_4C5A:
    ld bc, $0301                                  ; $4C5A: $01 $01 $03
    inc bc                                        ; $4C5D: $03
    ld [bc], a                                    ; $4C5E: $02
    inc bc                                        ; $4C5F: $03
    nop                                           ; $4C60: $00
    nop                                           ; $4C61: $00
    nop                                           ; $4C62: $00
    nop                                           ; $4C63: $00
    cp b                                          ; $4C64: $B8
    cp b                                          ; $4C65: $B8
    db $10                                        ; $4C66: $10
    db $10                                        ; $4C67: $10
    sub [hl]                                      ; $4C68: $96
    sbc [hl]                                      ; $4C69: $9E
    ld c, b                                       ; $4C6A: $48
    ld c, h                                       ; $4C6B: $4C
    sub $FE                                       ; $4C6C: $D6 $FE

Jump_041_4C6E:
jr_041_4C6E:
    adc [hl]                                      ; $4C6E: $8E
    cp $00                                        ; $4C6F: $FE $00
    nop                                           ; $4C71: $00

jr_041_4C72:
    nop                                           ; $4C72: $00
    nop                                           ; $4C73: $00
    nop                                           ; $4C74: $00
    nop                                           ; $4C75: $00
    nop                                           ; $4C76: $00
    nop                                           ; $4C77: $00
    jr nz, jr_041_4C5A                            ; $4C78: $20 $E0

    inc h                                         ; $4C7A: $24
    ld h, h                                       ; $4C7B: $64
    inc e                                         ; $4C7C: $1C
    ld a, $7C                                     ; $4C7D: $3E $7C
    ld h, e                                       ; $4C7F: $63
    dec bc                                        ; $4C80: $0B
    dec bc                                        ; $4C81: $0B
    ld bc, $0E01                                  ; $4C82: $01 $01 $0E
    rrca                                          ; $4C85: $0F
    ld a, [de]                                    ; $4C86: $1A
    rra                                           ; $4C87: $1F
    ld c, $0F                                     ; $4C88: $0E $0F
    ld d, $17                                     ; $4C8A: $16 $17
    inc h                                         ; $4C8C: $24
    daa                                           ; $4C8D: $27
    inc de                                        ; $4C8E: $13
    inc d                                         ; $4C8F: $14
    ld h, $DE                                     ; $4C90: $26 $DE
    ret z                                         ; $4C92: $C8

jr_041_4C93:
    cp b                                          ; $4C93: $B8
    jr z, jr_041_4C6E                             ; $4C94: $28 $D8

    ld d, b                                       ; $4C96: $50
    or b                                          ; $4C97: $B0
    ld hl, sp+$18                                 ; $4C98: $F8 $18
    db $10                                        ; $4C9A: $10
    ldh a, [$30]                                  ; $4C9B: $F0 $30
    ret nc                                        ; $4C9D: $D0

    ld d, b                                       ; $4C9E: $50
    or b                                          ; $4C9F: $B0
    nop                                           ; $4CA0: $00
    nop                                           ; $4CA1: $00
    nop                                           ; $4CA2: $00

jr_041_4CA3:
    nop                                           ; $4CA3: $00
    ld [bc], a                                    ; $4CA4: $02
    ld [bc], a                                    ; $4CA5: $02
    inc b                                         ; $4CA6: $04
    inc b                                         ; $4CA7: $04

jr_041_4CA8:
    ld c, $0E                                     ; $4CA8: $0E $0E
    dec bc                                        ; $4CAA: $0B
    rrca                                          ; $4CAB: $0F
    add hl, bc                                    ; $4CAC: $09
    rrca                                          ; $4CAD: $0F
    ld b, $07                                     ; $4CAE: $06 $07
    rst $08                                       ; $4CB0: $CF
    ldh a, [rNR22]                                ; $4CB1: $F0 $17
    jr @+$31                                      ; $4CB3: $18 $2F

    jr nc, @+$41                                  ; $4CB5: $30 $3F

    jr nz, jr_041_4CA8                            ; $4CB7: $20 $EF

    ldh a, [$CD]                                  ; $4CB9: $F0 $CD
    jp nc, $848B                                  ; $4CBB: $D2 $8B $84

    adc [hl]                                      ; $4CBE: $8E
    adc c                                         ; $4CBF: $89
    nop                                           ; $4CC0: $00
    add b                                         ; $4CC1: $80
    add b                                         ; $4CC2: $80
    add b                                         ; $4CC3: $80
    nop                                           ; $4CC4: $00
    add b                                         ; $4CC5: $80
    add b                                         ; $4CC6: $80
    add b                                         ; $4CC7: $80
    nop                                           ; $4CC8: $00
    add b                                         ; $4CC9: $80
    add b                                         ; $4CCA: $80
    add b                                         ; $4CCB: $80
    ld bc, $0681                                  ; $4CCC: $01 $81 $06
    ld b, $23                                     ; $4CCF: $06 $23
    inc h                                         ; $4CD1: $24
    ld b, c                                       ; $4CD2: $41
    ld b, [hl]                                    ; $4CD3: $46
    add hl, hl                                    ; $4CD4: $29
    cpl                                           ; $4CD5: $2F
    ld [bc], a                                    ; $4CD6: $02
    ld b, $86                                     ; $4CD7: $06 $86
    adc d                                         ; $4CD9: $8A
    nop                                           ; $4CDA: $00
    inc e                                         ; $4CDB: $1C
    xor h                                         ; $4CDC: $AC
    or h                                          ; $4CDD: $B4
    jr c, jr_041_4D08                             ; $4CDE: $38 $28

    ldh [rLCDC], a                                ; $4CE0: $E0 $40
    ld b, b                                       ; $4CE2: $40
    ldh [$80], a                                  ; $4CE3: $E0 $80
    and b                                         ; $4CE5: $A0
    jr nc, jr_041_4D18                            ; $4CE6: $30 $30

    jr c, jr_041_4D22                             ; $4CE8: $38 $38

    nop                                           ; $4CEA: $00
    nop                                           ; $4CEB: $00
    nop                                           ; $4CEC: $00
    nop                                           ; $4CED: $00
    nop                                           ; $4CEE: $00
    nop                                           ; $4CEF: $00
    ld b, [hl]                                    ; $4CF0: $46
    ret                                           ; $4CF1: $C9


    call nc, $0EDB                                ; $4CF2: $D4 $DB $0E
    ld sp, $605F                                  ; $4CF5: $31 $5F $60
    ld c, a                                       ; $4CF8: $4F
    ld [hl], b                                    ; $4CF9: $70
    ld h, a                                       ; $4CFA: $67
    ld a, b                                       ; $4CFB: $78
    dec sp                                        ; $4CFC: $3B
    inc a                                         ; $4CFD: $3C
    dec d                                         ; $4CFE: $15
    ld d, $96                                     ; $4CFF: $16 $96
    sbc [hl]                                      ; $4D01: $9E
    add h                                         ; $4D02: $84
    sbc h                                         ; $4D03: $9C
    db $FC                                        ; $4D04: $FC
    ld b, h                                       ; $4D05: $44
    ld [hl], c                                    ; $4D06: $71
    adc l                                         ; $4D07: $8D

jr_041_4D08:
    ld sp, hl                                     ; $4D08: $F9
    rlca                                          ; $4D09: $07
    db $FD                                        ; $4D0A: $FD
    inc bc                                        ; $4D0B: $03
    db $FC                                        ; $4D0C: $FC
    ld [bc], a                                    ; $4D0D: $02
    ld d, b                                       ; $4D0E: $50
    xor h                                         ; $4D0F: $AC
    jr c, jr_041_4D2A                             ; $4D10: $38 $18

    db $10                                        ; $4D12: $10
    ld [hl], b                                    ; $4D13: $70
    add b                                         ; $4D14: $80
    ldh [$80], a                                  ; $4D15: $E0 $80
    ret nz                                        ; $4D17: $C0

jr_041_4D18:
    nop                                           ; $4D18: $00
    add b                                         ; $4D19: $80
    nop                                           ; $4D1A: $00
    nop                                           ; $4D1B: $00
    nop                                           ; $4D1C: $00
    nop                                           ; $4D1D: $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00

jr_041_4D22:
    ld bc, $0001                                  ; $4D22: $01 $01 $00
    nop                                           ; $4D25: $00
    ld bc, $0F01                                  ; $4D26: $01 $01 $0F
    rrca                                          ; $4D29: $0F

jr_041_4D2A:
    ld bc, $0606                                  ; $4D2A: $01 $06 $06
    dec b                                         ; $4D2D: $05
    dec b                                         ; $4D2E: $05
    ld b, $BE                                     ; $4D2F: $06 $BE
    cp a                                          ; $4D31: $BF
    ld a, h                                       ; $4D32: $7C
    ld a, l                                       ; $4D33: $7D
    ld [hl], h                                    ; $4D34: $74
    ld c, a                                       ; $4D35: $4F
    pop af                                        ; $4D36: $F1
    adc [hl]                                      ; $4D37: $8E
    cp $01                                        ; $4D38: $FE $01
    ld e, h                                       ; $4D3A: $5C
    and e                                         ; $4D3B: $A3
    xor b                                         ; $4D3C: $A8
    ld d, a                                       ; $4D3D: $57
    ld [de], a                                    ; $4D3E: $12
    rst $28                                       ; $4D3F: $EF
    db $FC                                        ; $4D40: $FC
    inc b                                         ; $4D41: $04
    call nc, $E82C                                ; $4D42: $D4 $2C $E8
    jr jr_041_4D87                                ; $4D45: $18 $40

    or b                                          ; $4D47: $B0
    sub b                                         ; $4D48: $90
    ld [hl], b                                    ; $4D49: $70
    nop                                           ; $4D4A: $00
    ret nz                                        ; $4D4B: $C0

    ld h, b                                       ; $4D4C: $60
    ldh [$C0], a                                  ; $4D4D: $E0 $C0
    ret nz                                        ; $4D4F: $C0

    nop                                           ; $4D50: $00
    nop                                           ; $4D51: $00
    nop                                           ; $4D52: $00
    nop                                           ; $4D53: $00
    nop                                           ; $4D54: $00
    nop                                           ; $4D55: $00
    nop                                           ; $4D56: $00
    nop                                           ; $4D57: $00
    nop                                           ; $4D58: $00
    nop                                           ; $4D59: $00
    ld bc, $8A01                                  ; $4D5A: $01 $01 $8A
    adc d                                         ; $4D5D: $8A
    ld d, h                                       ; $4D5E: $54
    ld d, h                                       ; $4D5F: $54
    rrca                                          ; $4D60: $0F
    inc c                                         ; $4D61: $0C
    dec d                                         ; $4D62: $15
    ld d, $2A                                     ; $4D63: $16 $2A
    dec l                                         ; $4D65: $2D
    ld bc, $A606                                  ; $4D66: $01 $06 $A6
    xor c                                         ; $4D69: $A9
    inc d                                         ; $4D6A: $14
    dec de                                        ; $4D6B: $1B
    ld [hl-], a                                   ; $4D6C: $32
    dec a                                         ; $4D6D: $3D

Call_041_4D6E:
    ld b, [hl]                                    ; $4D6E: $46
    ld [hl], a                                    ; $4D6F: $77
    and c                                         ; $4D70: $A1
    ld e, a                                       ; $4D71: $5F
    ld sp, $C0F1                                  ; $4D72: $31 $F1 $C0
    ld b, b                                       ; $4D75: $40
    ld b, b                                       ; $4D76: $40
    ret nz                                        ; $4D77: $C0

jr_041_4D78:
    add e                                         ; $4D78: $83
    ld h, e                                       ; $4D79: $63
    ld [hl], $F7                                  ; $4D7A: $36 $F7
    ld e, h                                       ; $4D7C: $5C
    rst $38                                       ; $4D7D: $FF
    ld d, a                                       ; $4D7E: $57
    rst $10                                       ; $4D7F: $D7
    add b                                         ; $4D80: $80
    add b                                         ; $4D81: $80
    ret nz                                        ; $4D82: $C0

    ret nz                                        ; $4D83: $C0

    add b                                         ; $4D84: $80
    add b                                         ; $4D85: $80
    add b                                         ; $4D86: $80

jr_041_4D87:
    ret nz                                        ; $4D87: $C0

    nop                                           ; $4D88: $00
    ldh [$90], a                                  ; $4D89: $E0 $90
    ldh a, [$38]                                  ; $4D8B: $F0 $38
    ret z                                         ; $4D8D: $C8

    jr jr_041_4D78                                ; $4D8E: $18 $E8

    adc $EE                                       ; $4D90: $CE $EE
    dec b                                         ; $4D92: $05
    dec b                                         ; $4D93: $05
    jr nz, jr_041_4DB9                            ; $4D94: $20 $23

    ld b, $07                                     ; $4D96: $06 $07
    ld [$58ED], a                                 ; $4D98: $EA $ED $58
    ld a, a                                       ; $4D9B: $7F
    ld d, h                                       ; $4D9C: $54
    ld a, a                                       ; $4D9D: $7F
    dec hl                                        ; $4D9E: $2B
    ccf                                           ; $4D9F: $3F

jr_041_4DA0:
    jp nz, $C2E3                                  ; $4DA0: $C2 $E3 $C2

    jp $8381                                      ; $4DA3: $C3 $81 $83


    inc b                                         ; $4DA6: $04
    rlca                                          ; $4DA7: $07
    adc l                                         ; $4DA8: $8D
    adc a                                         ; $4DA9: $8F
    ld [bc], a                                    ; $4DAA: $02
    rlca                                          ; $4DAB: $07
    adc l                                         ; $4DAC: $8D
    adc a                                         ; $4DAD: $8F
    ld h, [hl]                                    ; $4DAE: $66
    ld h, a                                       ; $4DAF: $67
    ld l, d                                       ; $4DB0: $6A
    db $EB                                        ; $4DB1: $EB
    or d                                          ; $4DB2: $B2
    di                                            ; $4DB3: $F3
    ld e, h                                       ; $4DB4: $5C
    rst $38                                       ; $4DB5: $FF
    or e                                          ; $4DB6: $B3
    rst $30                                       ; $4DB7: $F7
    ld d, c                                       ; $4DB8: $51

jr_041_4DB9:
    rst $38                                       ; $4DB9: $FF
    or d                                          ; $4DBA: $B2
    rst $38                                       ; $4DBB: $FF
    ld d, b                                       ; $4DBC: $50
    rst $38                                       ; $4DBD: $FF
    ldh a, [rIE]                                  ; $4DBE: $F0 $FF
    cp h                                          ; $4DC0: $BC
    ld b, h                                       ; $4DC1: $44
    sbc b                                         ; $4DC2: $98
    db $E4                                        ; $4DC3: $E4
    ld c, d                                       ; $4DC4: $4A
    or $00                                        ; $4DC5: $F6 $00
    ld a, h                                       ; $4DC7: $7C
    jr z, jr_041_4DA0                             ; $4DC8: $28 $D6

    add d                                         ; $4DCA: $82
    cp $20                                        ; $4DCB: $FE $20
    sbc $8B                                       ; $4DCD: $DE $8B
    rst $38                                       ; $4DCF: $FF
    cpl                                           ; $4DD0: $2F
    cpl                                           ; $4DD1: $2F
    ld b, $07                                     ; $4DD2: $06 $07
    ld a, [bc]                                    ; $4DD4: $0A
    dec c                                         ; $4DD5: $0D
    ld a, [bc]                                    ; $4DD6: $0A
    rrca                                          ; $4DD7: $0F
    inc de                                        ; $4DD8: $13
    dec de                                        ; $4DD9: $1B
    db $10                                        ; $4DDA: $10
    stop                                          ; $4DDB: $10 $00
    nop                                           ; $4DDD: $00
    nop                                           ; $4DDE: $00
    nop                                           ; $4DDF: $00
    ld l, l                                       ; $4DE0: $6D
    rst $28                                       ; $4DE1: $EF
    add a                                         ; $4DE2: $87
    add a                                         ; $4DE3: $87
    add l                                         ; $4DE4: $85
    add a                                         ; $4DE5: $87
    rst $00                                       ; $4DE6: $C7
    rst $00                                       ; $4DE7: $C7
    ld c, a                                       ; $4DE8: $4F
    rst $08                                       ; $4DE9: $CF
    add a                                         ; $4DEA: $87
    rst $00                                       ; $4DEB: $C7
    cpl                                           ; $4DEC: $2F
    rst $28                                       ; $4DED: $EF
    ld d, a                                       ; $4DEE: $57
    ld [hl], a                                    ; $4DEF: $77
    or b                                          ; $4DF0: $B0
    cp [hl]                                       ; $4DF1: $BE
    jr nc, jr_041_4E20                            ; $4DF2: $30 $2C

    sbc h                                         ; $4DF4: $9C
    and h                                         ; $4DF5: $A4
    inc a                                         ; $4DF6: $3C
    inc h                                         ; $4DF7: $24
    call c, $ACE4                                 ; $4DF8: $DC $E4 $AC
    db $F4                                        ; $4DFB: $F4
    call z, $E4F4                                 ; $4DFC: $CC $F4 $E4
    db $FC                                        ; $4DFF: $FC
    add c                                         ; $4E00: $81
    cp a                                          ; $4E01: $BF
    dec hl                                        ; $4E02: $2B
    ccf                                           ; $4E03: $3F
    dec h                                         ; $4E04: $25
    ccf                                           ; $4E05: $3F
    dec hl                                        ; $4E06: $2B
    ccf                                           ; $4E07: $3F
    ld [bc], a                                    ; $4E08: $02
    ld a, $28                                     ; $4E09: $3E $28
    inc a                                         ; $4E0B: $3C
    ld c, $3E                                     ; $4E0C: $0E $3E
    ld l, b                                       ; $4E0E: $68
    ld a, b                                       ; $4E0F: $78
    rst $18                                       ; $4E10: $DF
    rst $38                                       ; $4E11: $FF
    ld l, h                                       ; $4E12: $6C
    ld a, l                                       ; $4E13: $7D
    ld [hl+], a                                   ; $4E14: $22
    dec sp                                        ; $4E15: $3B
    dec b                                         ; $4E16: $05
    dec e                                         ; $4E17: $1D
    cpl                                           ; $4E18: $2F
    scf                                           ; $4E19: $37
    add hl, de                                    ; $4E1A: $19
    dec e                                         ; $4E1B: $1D
    inc hl                                        ; $4E1C: $23
    cpl                                           ; $4E1D: $2F
    dec b                                         ; $4E1E: $05
    rlca                                          ; $4E1F: $07

jr_041_4E20:
    ld b, h                                       ; $4E20: $44
    db $FC                                        ; $4E21: $FC
    ldh [$F0], a                                  ; $4E22: $E0 $F0
    ld c, b                                       ; $4E24: $48
    ld hl, sp-$80                                 ; $4E25: $F8 $80
    ldh a, [rP1]                                  ; $4E27: $F0 $00
    ld hl, sp+$34                                 ; $4E29: $F8 $34
    db $EC                                        ; $4E2B: $EC
    inc l                                         ; $4E2C: $2C
    call nc, $FB85                                ; $4E2D: $D4 $85 $FB
    ret c                                         ; $4E30: $D8

    ld hl, sp+$30                                 ; $4E31: $F8 $30
    ld [hl], b                                    ; $4E33: $70
    ldh [$E0], a                                  ; $4E34: $E0 $E0
    nop                                           ; $4E36: $00
    ld b, b                                       ; $4E37: $40
    and b                                         ; $4E38: $A0
    ldh [$50], a                                  ; $4E39: $E0 $50
    jr nc, @+$72                                  ; $4E3B: $30 $70

    ld d, b                                       ; $4E3D: $50
    ld b, b                                       ; $4E3E: $40
    ld [hl], b                                    ; $4E3F: $70
    dec b                                         ; $4E40: $05
    rlca                                          ; $4E41: $07
    nop                                           ; $4E42: $00
    ld bc, $0302                                  ; $4E43: $01 $02 $03
    ld bc, $0101                                  ; $4E46: $01 $01 $01
    ld bc, $0000                                  ; $4E49: $01 $00 $00
    nop                                           ; $4E4C: $00
    nop                                           ; $4E4D: $00
    nop                                           ; $4E4E: $00
    nop                                           ; $4E4F: $00
    xor $D1                                       ; $4E50: $EE $D1
    call nc, $82EB                                ; $4E52: $D4 $EB $82
    cp l                                          ; $4E55: $BD
    xor l                                         ; $4E56: $AD
    cp d                                          ; $4E57: $BA
    inc sp                                        ; $4E58: $33
    cp h                                          ; $4E59: $BC
    sbc c                                         ; $4E5A: $99
    sbc $CB                                       ; $4E5B: $DE $CB
    ret z                                         ; $4E5D: $C8

    ld b, c                                       ; $4E5E: $41
    ld b, d                                       ; $4E5F: $42
    xor b                                         ; $4E60: $A8
    ret c                                         ; $4E61: $D8

    call z, Call_041_40FC                         ; $4E62: $CC $FC $40
    ld hl, sp-$34                                 ; $4E65: $F8 $CC
    call c, $9C14                                 ; $4E67: $DC $14 $9C
    sbc h                                         ; $4E6A: $9C
    sbc h                                         ; $4E6B: $9C
    sub b                                         ; $4E6C: $90
    sbc b                                         ; $4E6D: $98
    sbc b                                         ; $4E6E: $98
    sbc b                                         ; $4E6F: $98
    ld h, b                                       ; $4E70: $60
    ld h, e                                       ; $4E71: $63
    db $10                                        ; $4E72: $10
    ld de, $3332                                  ; $4E73: $11 $32 $33
    db $10                                        ; $4E76: $10
    ld de, $1919                                  ; $4E77: $11 $19 $19
    rlca                                          ; $4E7A: $07
    ld b, $0C                                     ; $4E7B: $06 $0C
    rrca                                          ; $4E7D: $0F
    dec b                                         ; $4E7E: $05
    ld b, $30                                     ; $4E7F: $06 $30
    cp b                                          ; $4E81: $B8
    xor b                                         ; $4E82: $A8
    ld a, b                                       ; $4E83: $78
    sbc b                                         ; $4E84: $98
    ld a, b                                       ; $4E85: $78
    db $FC                                        ; $4E86: $FC
    inc a                                         ; $4E87: $3C
    xor h                                         ; $4E88: $AC
    ld l, h                                       ; $4E89: $6C
    ld d, h                                       ; $4E8A: $54
    call nc, $EA6A                                ; $4E8B: $D4 $6A $EA
    ret nc                                        ; $4E8E: $D0

    ret nc                                        ; $4E8F: $D0

    ld b, $05                                     ; $4E90: $06 $05
    rlca                                          ; $4E92: $07
    rlca                                          ; $4E93: $07
    inc c                                         ; $4E94: $0C
    ld c, $14                                     ; $4E95: $0E $14
    inc d                                         ; $4E97: $14
    jr jr_041_4ED2                                ; $4E98: $18 $38

    ld [hl], b                                    ; $4E9A: $70
    ld [hl], b                                    ; $4E9B: $70
    jr jr_041_4ED6                                ; $4E9C: $18 $38

    nop                                           ; $4E9E: $00
    nop                                           ; $4E9F: $00
    xor [hl]                                      ; $4EA0: $AE
    xor [hl]                                      ; $4EA1: $AE
    inc e                                         ; $4EA2: $1C
    inc e                                         ; $4EA3: $1C
    jr z, jr_041_4ECE                             ; $4EA4: $28 $28

    db $10                                        ; $4EA6: $10
    db $10                                        ; $4EA7: $10
    ld [$0008], sp                                ; $4EA8: $08 $08 $00
    nop                                           ; $4EAB: $00
    jr nz, jr_041_4ECE                            ; $4EAC: $20 $20

    nop                                           ; $4EAE: $00
    nop                                           ; $4EAF: $00
    nop                                           ; $4EB0: $00
    nop                                           ; $4EB1: $00
    nop                                           ; $4EB2: $00
    nop                                           ; $4EB3: $00
    nop                                           ; $4EB4: $00
    nop                                           ; $4EB5: $00
    nop                                           ; $4EB6: $00
    nop                                           ; $4EB7: $00
    nop                                           ; $4EB8: $00
    nop                                           ; $4EB9: $00
    nop                                           ; $4EBA: $00
    nop                                           ; $4EBB: $00
    ld bc, $0601                                  ; $4EBC: $01 $01 $06
    ld b, $0F                                     ; $4EBF: $06 $0F
    rrca                                          ; $4EC1: $0F
    ld c, $0E                                     ; $4EC2: $0E $0E
    ld a, $3E                                     ; $4EC4: $3E $3E
    jr @+$1A                                      ; $4EC6: $18 $18

    cp $FE                                        ; $4EC8: $FE $FE
    ld a, [hl]                                    ; $4ECA: $7E
    ld a, [hl]                                    ; $4ECB: $7E
    ld e, $1E                                     ; $4ECC: $1E $1E

jr_041_4ECE:
    jr c, jr_041_4F08                             ; $4ECE: $38 $38

    ldh [$E0], a                                  ; $4ED0: $E0 $E0

jr_041_4ED2:
    or b                                          ; $4ED2: $B0
    ldh a, [rNR41]                                ; $4ED3: $F0 $20
    ld h, b                                       ; $4ED5: $60

jr_041_4ED6:
    jr nc, jr_041_4F48                            ; $4ED6: $30 $70

    db $10                                        ; $4ED8: $10
    jr nc, jr_041_4EFB                            ; $4ED9: $30 $20

    jr nz, @+$62                                  ; $4EDB: $20 $60

    ld h, b                                       ; $4EDD: $60
    db $10                                        ; $4EDE: $10
    jr nc, jr_041_4EE1                            ; $4EDF: $30 $00

jr_041_4EE1:
    nop                                           ; $4EE1: $00
    nop                                           ; $4EE2: $00
    nop                                           ; $4EE3: $00
    ld bc, $0701                                  ; $4EE4: $01 $01 $07
    rlca                                          ; $4EE7: $07
    inc bc                                        ; $4EE8: $03
    inc bc                                        ; $4EE9: $03
    ld bc, $0001                                  ; $4EEA: $01 $01 $00
    nop                                           ; $4EED: $00
    nop                                           ; $4EEE: $00
    nop                                           ; $4EEF: $00
    nop                                           ; $4EF0: $00
    nop                                           ; $4EF1: $00
    nop                                           ; $4EF2: $00
    ld b, b                                       ; $4EF3: $40
    ld b, b                                       ; $4EF4: $40
    ld b, c                                       ; $4EF5: $41

Call_041_4EF6:
    add b                                         ; $4EF6: $80
    xor c                                         ; $4EF7: $A9
    call c, $F0E1                                 ; $4EF8: $DC $E1 $F0

jr_041_4EFB:
    rst $28                                       ; $4EFB: $EF
    ldh [$FB], a                                  ; $4EFC: $E0 $FB
    jr nc, jr_041_4F33                            ; $4EFE: $30 $33

    nop                                           ; $4F00: $00
    nop                                           ; $4F01: $00
    ld bc, $0101                                  ; $4F02: $01 $01 $01
    ld bc, $0504                                  ; $4F05: $01 $04 $05

jr_041_4F08:
    jr nz, @+$25                                  ; $4F08: $20 $23

    jr jr_041_4F2B                                ; $4F0A: $18 $1F

    nop                                           ; $4F0C: $00
    add hl, de                                    ; $4F0D: $19
    nop                                           ; $4F0E: $00
    jr jr_041_4F33                                ; $4F0F: $18 $22

    ld h, $82                                     ; $4F11: $26 $82
    add [hl]                                      ; $4F13: $86
    add e                                         ; $4F14: $83
    adc a                                         ; $4F15: $8F
    or b                                          ; $4F16: $B0
    or [hl]                                       ; $4F17: $B6
    ld [de], a                                    ; $4F18: $12
    cp [hl]                                       ; $4F19: $BE
    ld [hl], b                                    ; $4F1A: $70
    ldh a, [rP1]                                  ; $4F1B: $F0 $00
    ld b, b                                       ; $4F1D: $40
    jr nz, @+$22                                  ; $4F1E: $20 $20

    ld [$0818], sp                                ; $4F20: $08 $18 $08
    jr c, jr_041_4F25                             ; $4F23: $38 $00

jr_041_4F25:
    jr @+$0A                                      ; $4F25: $18 $08

    jr c, jr_041_4F29                             ; $4F27: $38 $00

jr_041_4F29:
    inc a                                         ; $4F29: $3C
    inc l                                         ; $4F2A: $2C

jr_041_4F2B:
    ld a, h                                       ; $4F2B: $7C
    jr z, @+$3A                                   ; $4F2C: $28 $38

    jr c, jr_041_4F68                             ; $4F2E: $38 $38

    jr nz, jr_041_4F52                            ; $4F30: $20 $20

    nop                                           ; $4F32: $00

jr_041_4F33:
    nop                                           ; $4F33: $00
    nop                                           ; $4F34: $00
    nop                                           ; $4F35: $00
    nop                                           ; $4F36: $00
    nop                                           ; $4F37: $00
    nop                                           ; $4F38: $00
    nop                                           ; $4F39: $00
    inc e                                         ; $4F3A: $1C
    inc e                                         ; $4F3B: $1C
    jr c, jr_041_4F76                             ; $4F3C: $38 $38

    ld bc, $180B                                  ; $4F3E: $01 $0B $18
    jr jr_041_4F5D                                ; $4F41: $18 $1A

    ld a, [de]                                    ; $4F43: $1A
    inc b                                         ; $4F44: $04
    inc b                                         ; $4F45: $04
    ld d, $16                                     ; $4F46: $16 $16

jr_041_4F48:
    ld e, $1E                                     ; $4F48: $1E $1E
    inc a                                         ; $4F4A: $3C
    inc a                                         ; $4F4B: $3C
    ld [hl], a                                    ; $4F4C: $77
    ld [hl], a                                    ; $4F4D: $77
    dec hl                                        ; $4F4E: $2B
    dec hl                                        ; $4F4F: $2B
    ld e, $1F                                     ; $4F50: $1E $1F

jr_041_4F52:
    inc b                                         ; $4F52: $04
    rlca                                          ; $4F53: $07
    rlca                                          ; $4F54: $07
    rlca                                          ; $4F55: $07
    rlca                                          ; $4F56: $07
    rlca                                          ; $4F57: $07
    db $E3                                        ; $4F58: $E3
    db $E3                                        ; $4F59: $E3
    rst $38                                       ; $4F5A: $FF
    rst $38                                       ; $4F5B: $FF
    di                                            ; $4F5C: $F3

jr_041_4F5D:
    di                                            ; $4F5D: $F3
    jp $23C3                                      ; $4F5E: $C3 $C3 $23


    inc hl                                        ; $4F61: $23
    ld h, c                                       ; $4F62: $61
    ld h, c                                       ; $4F63: $61
    ld de, $0011                                  ; $4F64: $11 $11 $00
    nop                                           ; $4F67: $00

jr_041_4F68:
    ld hl, $0721                                  ; $4F68: $21 $21 $07
    rlca                                          ; $4F6B: $07
    inc de                                        ; $4F6C: $13
    inc de                                        ; $4F6D: $13
    rrca                                          ; $4F6E: $0F
    rrca                                          ; $4F6F: $0F
    add e                                         ; $4F70: $83
    add e                                         ; $4F71: $83
    add c                                         ; $4F72: $81
    add c                                         ; $4F73: $81
    pop bc                                        ; $4F74: $C1
    pop bc                                        ; $4F75: $C1

jr_041_4F76:
    add c                                         ; $4F76: $81
    add c                                         ; $4F77: $81
    ret nz                                        ; $4F78: $C0

    ret nz                                        ; $4F79: $C0

    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    ld bc, $4001                                  ; $4F7C: $01 $01 $40
    ld b, b                                       ; $4F7F: $40
    sbc e                                         ; $4F80: $9B
    sbc e                                         ; $4F81: $9B
    add h                                         ; $4F82: $84
    add h                                         ; $4F83: $84
    ld c, $0E                                     ; $4F84: $0E $0E
    ld a, [bc]                                    ; $4F86: $0A
    ld c, $1E                                     ; $4F87: $0E $1E
    ld e, $0F                                     ; $4F89: $1E $0F
    rrca                                          ; $4F8B: $0F
    ccf                                           ; $4F8C: $3F
    ccf                                           ; $4F8D: $3F
    rrca                                          ; $4F8E: $0F
    rrca                                          ; $4F8F: $0F
    dec b                                         ; $4F90: $05
    dec b                                         ; $4F91: $05
    dec b                                         ; $4F92: $05
    dec b                                         ; $4F93: $05
    ld [bc], a                                    ; $4F94: $02
    ld [bc], a                                    ; $4F95: $02
    nop                                           ; $4F96: $00
    nop                                           ; $4F97: $00
    nop                                           ; $4F98: $00
    nop                                           ; $4F99: $00
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    nop                                           ; $4F9C: $00
    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    add b                                         ; $4FA0: $80
    add b                                         ; $4FA1: $80
    ld [bc], a                                    ; $4FA2: $02
    jp nz, Jump_041_5858                          ; $4FA3: $C2 $58 $58

    ret nc                                        ; $4FA6: $D0

    ldh a, [$50]                                  ; $4FA7: $F0 $50
    ld d, b                                       ; $4FA9: $50
    nop                                           ; $4FAA: $00
    nop                                           ; $4FAB: $00
    nop                                           ; $4FAC: $00
    nop                                           ; $4FAD: $00
    db $10                                        ; $4FAE: $10
    stop                                          ; $4FAF: $10 $00
    nop                                           ; $4FB1: $00
    ld c, $0E                                     ; $4FB2: $0E $0E
    rrca                                          ; $4FB4: $0F
    rrca                                          ; $4FB5: $0F
    rrca                                          ; $4FB6: $0F
    rrca                                          ; $4FB7: $0F
    ld [$1808], sp                                ; $4FB8: $08 $08 $18
    jr @+$1A                                      ; $4FBB: $18 $18

    jr jr_041_4FCF                                ; $4FBD: $18 $10

    db $10                                        ; $4FBF: $10
    stop                                          ; $4FC0: $10 $00
    jr z, @+$3A                                   ; $4FC2: $28 $38

    jr z, @+$3A                                   ; $4FC4: $28 $38

    ld b, h                                       ; $4FC6: $44
    ld d, h                                       ; $4FC7: $54
    cp d                                          ; $4FC8: $BA
    ld l, h                                       ; $4FC9: $6C
    ld a, h                                       ; $4FCA: $7C
    add d                                         ; $4FCB: $82
    jr c, jr_041_5006                             ; $4FCC: $38 $38

    nop                                           ; $4FCE: $00

jr_041_4FCF:
    nop                                           ; $4FCF: $00
    ld bc, $0100                                  ; $4FD0: $01 $00 $01
    ld bc, $0303                                  ; $4FD3: $01 $03 $03
    inc bc                                        ; $4FD6: $03
    inc bc                                        ; $4FD7: $03
    inc bc                                        ; $4FD8: $03
    inc bc                                        ; $4FD9: $03
    inc bc                                        ; $4FDA: $03
    inc bc                                        ; $4FDB: $03
    inc bc                                        ; $4FDC: $03
    ld [bc], a                                    ; $4FDD: $02
    nop                                           ; $4FDE: $00
    ld [bc], a                                    ; $4FDF: $02
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    add b                                         ; $4FE2: $80
    nop                                           ; $4FE3: $00
    add b                                         ; $4FE4: $80
    add b                                         ; $4FE5: $80
    add b                                         ; $4FE6: $80
    ret nz                                        ; $4FE7: $C0

    ret nz                                        ; $4FE8: $C0

    ret nz                                        ; $4FE9: $C0

    add sp, -$10                                  ; $4FEA: $E8 $F0
    ld a, h                                       ; $4FEC: $7C
    rst $38                                       ; $4FED: $FF
    call nz, $0038                                ; $4FEE: $C4 $38 $00
    ld [bc], a                                    ; $4FF1: $02
    ld [bc], a                                    ; $4FF2: $02
    ld [bc], a                                    ; $4FF3: $02
    ld [bc], a                                    ; $4FF4: $02
    ld [bc], a                                    ; $4FF5: $02
    ld [bc], a                                    ; $4FF6: $02
    ld [bc], a                                    ; $4FF7: $02
    ld [bc], a                                    ; $4FF8: $02
    ld [bc], a                                    ; $4FF9: $02
    ld bc, $0002                                  ; $4FFA: $01 $02 $00
    ld bc, $0100                                  ; $4FFD: $01 $00 $01
    nop                                           ; $5000: $00
    ld bc, $1E21                                  ; $5001: $01 $21 $1E
    ccf                                           ; $5004: $3F
    ld a, a                                       ; $5005: $7F

jr_041_5006:
    rst $38                                       ; $5006: $FF
    ld a, a                                       ; $5007: $7F
    rst $38                                       ; $5008: $FF
    ld a, a                                       ; $5009: $7F
    rst $38                                       ; $500A: $FF
    ld a, [hl]                                    ; $500B: $7E
    ld e, h                                       ; $500C: $5C
    ld a, $04                                     ; $500D: $3E $04
    nop                                           ; $500F: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    nop                                           ; $5013: $00
    inc b                                         ; $5014: $04
    nop                                           ; $5015: $00
    inc b                                         ; $5016: $04
    ld b, $06                                     ; $5017: $06 $06
    ld [bc], a                                    ; $5019: $02
    inc bc                                        ; $501A: $03
    inc bc                                        ; $501B: $03
    ld [bc], a                                    ; $501C: $02
    inc bc                                        ; $501D: $03
    ld b, $07                                     ; $501E: $06 $07
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    jr nz, @+$36                                  ; $5023: $20 $34

    jr nz, @+$3E                                  ; $5025: $20 $3C

    inc a                                         ; $5027: $3C
    ld hl, sp-$10                                 ; $5028: $F8 $F0
    ld [hl], b                                    ; $502A: $70
    and b                                         ; $502B: $A0
    jr nc, jr_041_504E                            ; $502C: $30 $20

    jr nc, jr_041_5050                            ; $502E: $30 $20

    inc b                                         ; $5030: $04
    rrca                                          ; $5031: $0F
    add hl, bc                                    ; $5032: $09
    dec de                                        ; $5033: $1B
    dec de                                        ; $5034: $1B
    ld de, $0300                                  ; $5035: $11 $00 $03
    ld [bc], a                                    ; $5038: $02
    inc bc                                        ; $5039: $03
    inc bc                                        ; $503A: $03
    ld [bc], a                                    ; $503B: $02
    inc bc                                        ; $503C: $03
    inc bc                                        ; $503D: $03
    ld b, $03                                     ; $503E: $06 $03
    jr nz, jr_041_5072                            ; $5040: $20 $30

    nop                                           ; $5042: $00
    jr nc, @+$1E                                  ; $5043: $30 $1C

    jr nc, jr_041_5083                            ; $5045: $30 $3C

    ld a, $30                                     ; $5047: $3E $30
    ld [hl], b                                    ; $5049: $70
    sub b                                         ; $504A: $90
    ret nc                                        ; $504B: $D0

    sub b                                         ; $504C: $90
    sub b                                         ; $504D: $90

jr_041_504E:
    db $10                                        ; $504E: $10
    db $10                                        ; $504F: $10

jr_041_5050:
    ld e, $1E                                     ; $5050: $1E $1E
    ld d, $02                                     ; $5052: $16 $02
    inc b                                         ; $5054: $04
    ld b, $06                                     ; $5055: $06 $06
    inc b                                         ; $5057: $04
    ld b, $06                                     ; $5058: $06 $06
    ld [bc], a                                    ; $505A: $02
    ld [bc], a                                    ; $505B: $02
    nop                                           ; $505C: $00
    nop                                           ; $505D: $00
    nop                                           ; $505E: $00
    nop                                           ; $505F: $00
    jr nc, jr_041_5072                            ; $5060: $30 $10

    jr nc, jr_041_5074                            ; $5062: $30 $10

    nop                                           ; $5064: $00
    stop                                          ; $5065: $10 $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    nop                                           ; $506A: $00
    nop                                           ; $506B: $00
    nop                                           ; $506C: $00
    nop                                           ; $506D: $00
    nop                                           ; $506E: $00
    nop                                           ; $506F: $00
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00

jr_041_5072:
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00

jr_041_5074:
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    inc b                                         ; $5076: $04
    inc bc                                        ; $5077: $03
    rra                                           ; $5078: $1F
    rrca                                          ; $5079: $0F
    rra                                           ; $507A: $1F
    inc e                                         ; $507B: $1C
    ld e, $1C                                     ; $507C: $1E $1C
    ld c, $1C                                     ; $507E: $0E $1C
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00

jr_041_5083:
    nop                                           ; $5083: $00
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    add b                                         ; $5087: $80
    ldh a, [$F0]                                  ; $5088: $F0 $F0
    ld [hl], b                                    ; $508A: $70
    ldh a, [rNR23]                                ; $508B: $F0 $18
    jr jr_041_509B                                ; $508D: $18 $0C

    inc c                                         ; $508F: $0C
    rra                                           ; $5090: $1F
    rrca                                          ; $5091: $0F
    rlca                                          ; $5092: $07
    rrca                                          ; $5093: $0F
    rlca                                          ; $5094: $07
    inc bc                                        ; $5095: $03
    nop                                           ; $5096: $00
    ld bc, $0000                                  ; $5097: $01 $00 $00
    nop                                           ; $509A: $00

jr_041_509B:
    nop                                           ; $509B: $00
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    inc c                                         ; $50A0: $0C
    inc c                                         ; $50A1: $0C
    adc $8C                                       ; $50A2: $CE $8C
    db $FC                                        ; $50A4: $FC
    db $FC                                        ; $50A5: $FC
    db $EC                                        ; $50A6: $EC
    db $FC                                        ; $50A7: $FC
    jr z, jr_041_50BA                             ; $50A8: $28 $10

    nop                                           ; $50AA: $00
    nop                                           ; $50AB: $00
    nop                                           ; $50AC: $00
    nop                                           ; $50AD: $00
    nop                                           ; $50AE: $00
    nop                                           ; $50AF: $00
    rlca                                          ; $50B0: $07
    nop                                           ; $50B1: $00
    ld [$1607], sp                                ; $50B2: $08 $07 $16
    rrca                                          ; $50B5: $0F
    cpl                                           ; $50B6: $2F
    rra                                           ; $50B7: $1F
    inc a                                         ; $50B8: $3C
    rra                                           ; $50B9: $1F

jr_041_50BA:
    ld e, b                                       ; $50BA: $58
    ccf                                           ; $50BB: $3F
    ld [hl], b                                    ; $50BC: $70
    ccf                                           ; $50BD: $3F
    ld [hl], c                                    ; $50BE: $71
    ld a, $81                                     ; $50BF: $3E $81
    nop                                           ; $50C1: $00
    ld h, a                                       ; $50C2: $67
    add c                                         ; $50C3: $81
    dec sp                                        ; $50C4: $3B
    rst $00                                       ; $50C5: $C7
    ld d, $EF                                     ; $50C6: $16 $EF
    dec e                                         ; $50C8: $1D
    xor $2E                                       ; $50C9: $EE $2E
    db $DD                                        ; $50CB: $DD
    ld a, [hl-]                                   ; $50CC: $3A
    db $DD                                        ; $50CD: $DD
    dec sp                                        ; $50CE: $3B
    call c, $00C0                                 ; $50CF: $DC $C0 $00
    and b                                         ; $50D2: $A0
    ret nz                                        ; $50D3: $C0

    ret nc                                        ; $50D4: $D0

    ldh [$90], a                                  ; $50D5: $E0 $90
    ld h, b                                       ; $50D7: $60
    db $10                                        ; $50D8: $10
    ldh [rNR10], a                                ; $50D9: $E0 $10
    ldh [rNR41], a                                ; $50DB: $E0 $20
    ret nz                                        ; $50DD: $C0

    inc a                                         ; $50DE: $3C
    ret nz                                        ; $50DF: $C0

    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    nop                                           ; $50E4: $00
    nop                                           ; $50E5: $00
    nop                                           ; $50E6: $00
    nop                                           ; $50E7: $00
    nop                                           ; $50E8: $00
    nop                                           ; $50E9: $00
    nop                                           ; $50EA: $00
    nop                                           ; $50EB: $00
    nop                                           ; $50EC: $00
    nop                                           ; $50ED: $00
    nop                                           ; $50EE: $00
    nop                                           ; $50EF: $00
    ld [hl], c                                    ; $50F0: $71
    ld a, $78                                     ; $50F1: $3E $78
    ccf                                           ; $50F3: $3F
    ld e, b                                       ; $50F4: $58
    ccf                                           ; $50F5: $3F
    inc a                                         ; $50F6: $3C
    rra                                           ; $50F7: $1F
    jr z, jr_041_5119                             ; $50F8: $28 $1F

    inc d                                         ; $50FA: $14
    rrca                                          ; $50FB: $0F
    ld c, b                                       ; $50FC: $48
    rlca                                          ; $50FD: $07
    or h                                          ; $50FE: $B4
    ld c, a                                       ; $50FF: $4F
    cp e                                          ; $5100: $BB
    ld e, h                                       ; $5101: $5C
    ei                                            ; $5102: $FB
    inc e                                         ; $5103: $1C
    ld l, l                                       ; $5104: $6D
    sbc [hl]                                      ; $5105: $9E
    ld a, l                                       ; $5106: $7D
    adc [hl]                                      ; $5107: $8E
    inc [hl]                                      ; $5108: $34
    rst $08                                       ; $5109: $CF
    ld a, [hl-]                                   ; $510A: $3A
    push bc                                       ; $510B: $C5
    inc a                                         ; $510C: $3C
    jp $C13E                                      ; $510D: $C3 $3E $C1


    cp a                                          ; $5110: $BF
    ld b, b                                       ; $5111: $40
    jp hl                                         ; $5112: $E9


    ld e, $BD                                     ; $5113: $1E $BD
    ld a, [hl]                                    ; $5115: $7E
    ld a, [hl]                                    ; $5116: $7E
    rst $38                                       ; $5117: $FF
    ld e, e                                       ; $5118: $5B

jr_041_5119:
    cp $FF                                        ; $5119: $FE $FF
    jp c, $DAFF                                   ; $511B: $DA $FF $DA

    ld a, [hl]                                    ; $511E: $7E
    rst $38                                       ; $511F: $FF
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    ld hl, sp+$00                                 ; $5122: $F8 $00
    and h                                         ; $5124: $A4
    ld a, b                                       ; $5125: $78
    sbc d                                         ; $5126: $9A
    ld a, h                                       ; $5127: $7C
    ld l, $FC                                     ; $5128: $2E $FC
    call $F73E                                    ; $512A: $CD $3E $F7
    ld c, $CB                                     ; $512D: $0E $CB
    ld [hl], $E8                                  ; $512F: $36 $E8
    ld a, a                                       ; $5131: $7F
    or b                                          ; $5132: $B0
    ld a, a                                       ; $5133: $7F
    add b                                         ; $5134: $80
    ld a, a                                       ; $5135: $7F
    ld b, c                                       ; $5136: $41
    ld a, $37                                     ; $5137: $3E $37
    ld [$000E], sp                                ; $5139: $08 $0E $00
    nop                                           ; $513C: $00
    nop                                           ; $513D: $00
    nop                                           ; $513E: $00
    nop                                           ; $513F: $00
    ld a, a                                       ; $5140: $7F
    add b                                         ; $5141: $80
    ld h, e                                       ; $5142: $63
    sbc h                                         ; $5143: $9C
    pop de                                        ; $5144: $D1
    ld a, $B8                                     ; $5145: $3E $B8
    ld a, a                                       ; $5147: $7F
    jp c, $F27D                                   ; $5148: $DA $7D $F2

    dec e                                         ; $514B: $1D
    ld h, e                                       ; $514C: $63
    inc e                                         ; $514D: $1C
    ld e, $00                                     ; $514E: $1E $00
    jp $FF3C                                      ; $5150: $C3 $3C $FF


    nop                                           ; $5153: $00
    jr c, @-$37                                   ; $5154: $38 $C7

    sub b                                         ; $5156: $90
    ld l, a                                       ; $5157: $6F
    or $0D                                        ; $5158: $F6 $0D
    adc a                                         ; $515A: $8F
    nop                                           ; $515B: $00
    nop                                           ; $515C: $00
    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    nop                                           ; $515F: $00
    add l                                         ; $5160: $85
    ld a, [hl]                                    ; $5161: $7E
    jp hl                                         ; $5162: $E9


    ld e, $DE                                     ; $5163: $1E $DE
    nop                                           ; $5165: $00
    ld b, b                                       ; $5166: $40
    add b                                         ; $5167: $80
    add b                                         ; $5168: $80
    nop                                           ; $5169: $00
    nop                                           ; $516A: $00
    nop                                           ; $516B: $00
    nop                                           ; $516C: $00
    nop                                           ; $516D: $00
    nop                                           ; $516E: $00
    nop                                           ; $516F: $00
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    nop                                           ; $5179: $00
    nop                                           ; $517A: $00
    nop                                           ; $517B: $00
    nop                                           ; $517C: $00
    nop                                           ; $517D: $00
    nop                                           ; $517E: $00
    nop                                           ; $517F: $00
    jp nz, $B83C                                  ; $5180: $C2 $3C $B8

    ld a, a                                       ; $5183: $7F
    ld b, h                                       ; $5184: $44
    inc bc                                        ; $5185: $03
    ld b, $01                                     ; $5186: $06 $01
    db $FC                                        ; $5188: $FC
    inc bc                                        ; $5189: $03
    nop                                           ; $518A: $00
    nop                                           ; $518B: $00
    nop                                           ; $518C: $00
    nop                                           ; $518D: $00
    nop                                           ; $518E: $00
    nop                                           ; $518F: $00
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    inc c                                         ; $5192: $0C
    ldh a, [$FC]                                  ; $5193: $F0 $FC
    rst $38                                       ; $5195: $FF
    rst $38                                       ; $5196: $FF
    rst $38                                       ; $5197: $FF
    ccf                                           ; $5198: $3F
    rst $38                                       ; $5199: $FF
    ld e, a                                       ; $519A: $5F
    ccf                                           ; $519B: $3F
    sbc a                                         ; $519C: $9F
    ld a, a                                       ; $519D: $7F
    rst $00                                       ; $519E: $C7
    ccf                                           ; $519F: $3F
    nop                                           ; $51A0: $00
    nop                                           ; $51A1: $00
    nop                                           ; $51A2: $00
    nop                                           ; $51A3: $00
    ret nz                                        ; $51A4: $C0

    nop                                           ; $51A5: $00
    ldh [$E0], a                                  ; $51A6: $E0 $E0
    db $F4                                        ; $51A8: $F4
    ld hl, sp-$02                                 ; $51A9: $F8 $FE
    db $FC                                        ; $51AB: $FC
    rst $38                                       ; $51AC: $FF
    cp $FF                                        ; $51AD: $FE $FF
    rst $38                                       ; $51AF: $FF
    ld bc, $0100                                  ; $51B0: $01 $00 $01
    nop                                           ; $51B3: $00
    ld bc, $0300                                  ; $51B4: $01 $00 $03
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    nop                                           ; $51B9: $00
    cp $01                                        ; $51BA: $FE $01
    nop                                           ; $51BC: $00
    nop                                           ; $51BD: $00
    ld bc, $DF00                                  ; $51BE: $01 $00 $DF
    ccf                                           ; $51C1: $3F
    rra                                           ; $51C2: $1F
    rst $38                                       ; $51C3: $FF
    rrca                                          ; $51C4: $0F
    rst $38                                       ; $51C5: $FF
    rst $08                                       ; $51C6: $CF
    ccf                                           ; $51C7: $3F
    rra                                           ; $51C8: $1F
    rrca                                          ; $51C9: $0F
    ccf                                           ; $51CA: $3F
    rst $38                                       ; $51CB: $FF
    ld a, a                                       ; $51CC: $7F
    ccf                                           ; $51CD: $3F
    ld a, a                                       ; $51CE: $7F
    rst $38                                       ; $51CF: $FF
    rst $38                                       ; $51D0: $FF
    rst $38                                       ; $51D1: $FF
    rst $38                                       ; $51D2: $FF
    rst $38                                       ; $51D3: $FF
    rst $38                                       ; $51D4: $FF
    rst $38                                       ; $51D5: $FF
    rst $38                                       ; $51D6: $FF
    rst $38                                       ; $51D7: $FF
    db $FC                                        ; $51D8: $FC
    cp $FC                                        ; $51D9: $FE $FC
    db $FC                                        ; $51DB: $FC
    ld hl, sp-$08                                 ; $51DC: $F8 $F8
    ldh [$F0], a                                  ; $51DE: $E0 $F0
    nop                                           ; $51E0: $00
    nop                                           ; $51E1: $00
    nop                                           ; $51E2: $00
    nop                                           ; $51E3: $00
    nop                                           ; $51E4: $00
    nop                                           ; $51E5: $00
    nop                                           ; $51E6: $00
    nop                                           ; $51E7: $00
    nop                                           ; $51E8: $00
    nop                                           ; $51E9: $00
    nop                                           ; $51EA: $00
    nop                                           ; $51EB: $00
    nop                                           ; $51EC: $00
    nop                                           ; $51ED: $00
    ld a, a                                       ; $51EE: $7F
    nop                                           ; $51EF: $00
    nop                                           ; $51F0: $00
    nop                                           ; $51F1: $00
    nop                                           ; $51F2: $00
    nop                                           ; $51F3: $00
    nop                                           ; $51F4: $00
    nop                                           ; $51F5: $00
    nop                                           ; $51F6: $00
    nop                                           ; $51F7: $00
    nop                                           ; $51F8: $00
    nop                                           ; $51F9: $00
    inc bc                                        ; $51FA: $03
    nop                                           ; $51FB: $00
    ld a, a                                       ; $51FC: $7F
    nop                                           ; $51FD: $00
    db $FC                                        ; $51FE: $FC
    nop                                           ; $51FF: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    nop                                           ; $5203: $00
    ld bc, $0700                                  ; $5204: $01 $00 $07
    nop                                           ; $5207: $00
    ccf                                           ; $5208: $3F
    nop                                           ; $5209: $00
    rst $38                                       ; $520A: $FF
    nop                                           ; $520B: $00
    db $FC                                        ; $520C: $FC
    nop                                           ; $520D: $00
    nop                                           ; $520E: $00
    nop                                           ; $520F: $00
    dec de                                        ; $5210: $1B
    rlca                                          ; $5211: $07
    inc bc                                        ; $5212: $03
    rlca                                          ; $5213: $07
    dec bc                                        ; $5214: $0B
    db $FC                                        ; $5215: $FC
    rst $38                                       ; $5216: $FF
    nop                                           ; $5217: $00
    cp $00                                        ; $5218: $FE $00
    ldh [rP1], a                                  ; $521A: $E0 $00
    nop                                           ; $521C: $00
    nop                                           ; $521D: $00
    nop                                           ; $521E: $00
    nop                                           ; $521F: $00
    rst $38                                       ; $5220: $FF
    rst $38                                       ; $5221: $FF
    db $FD                                        ; $5222: $FD
    cp $FC                                        ; $5223: $FE $FC
    nop                                           ; $5225: $00
    ret nz                                        ; $5226: $C0

    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    nop                                           ; $5229: $00
    nop                                           ; $522A: $00
    nop                                           ; $522B: $00
    nop                                           ; $522C: $00
    nop                                           ; $522D: $00
    nop                                           ; $522E: $00
    nop                                           ; $522F: $00
    rlca                                          ; $5230: $07
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    nop                                           ; $5236: $00
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    nop                                           ; $523A: $00
    nop                                           ; $523B: $00
    nop                                           ; $523C: $00
    nop                                           ; $523D: $00
    nop                                           ; $523E: $00
    nop                                           ; $523F: $00
    cp $01                                        ; $5240: $FE $01
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    ld bc, $0000                                  ; $5246: $01 $00 $00
    nop                                           ; $5249: $00
    nop                                           ; $524A: $00
    nop                                           ; $524B: $00
    nop                                           ; $524C: $00
    nop                                           ; $524D: $00
    nop                                           ; $524E: $00
    nop                                           ; $524F: $00
    nop                                           ; $5250: $00
    rst $38                                       ; $5251: $FF
    ld e, $01                                     ; $5252: $1E $01
    ld bc, $F000                                  ; $5254: $01 $00 $F0
    rrca                                          ; $5257: $0F
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    nop                                           ; $525A: $00
    nop                                           ; $525B: $00
    nop                                           ; $525C: $00
    nop                                           ; $525D: $00
    nop                                           ; $525E: $00
    nop                                           ; $525F: $00
    call z, $3FF0                                 ; $5260: $CC $F0 $3F
    rst $38                                       ; $5263: $FF
    rst $38                                       ; $5264: $FF
    ccf                                           ; $5265: $3F
    ccf                                           ; $5266: $3F
    rst $38                                       ; $5267: $FF
    ld b, $01                                     ; $5268: $06 $01
    ld a, h                                       ; $526A: $7C
    inc bc                                        ; $526B: $03
    ld [hl], c                                    ; $526C: $71
    ld c, $01                                     ; $526D: $0E $01
    nop                                           ; $526F: $00
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    ld b, b                                       ; $5272: $40
    add b                                         ; $5273: $80
    add sp, -$10                                  ; $5274: $E8 $F0
    ld hl, sp-$04                                 ; $5276: $F8 $FC
    cp $FF                                        ; $5278: $FE $FF
    rst $38                                       ; $527A: $FF
    rst $38                                       ; $527B: $FF
    rst $38                                       ; $527C: $FF
    ld a, a                                       ; $527D: $7F
    rst $38                                       ; $527E: $FF
    ld a, a                                       ; $527F: $7F
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    nop                                           ; $528A: $00
    nop                                           ; $528B: $00
    nop                                           ; $528C: $00
    nop                                           ; $528D: $00
    inc bc                                        ; $528E: $03
    nop                                           ; $528F: $00
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529A: $00
    nop                                           ; $529B: $00
    ld a, $01                                     ; $529C: $3E $01
    ret nz                                        ; $529E: $C0

    ccf                                           ; $529F: $3F
    nop                                           ; $52A0: $00
    nop                                           ; $52A1: $00
    nop                                           ; $52A2: $00
    nop                                           ; $52A3: $00
    nop                                           ; $52A4: $00
    nop                                           ; $52A5: $00
    nop                                           ; $52A6: $00
    nop                                           ; $52A7: $00
    ld b, $01                                     ; $52A8: $06 $01
    rlca                                          ; $52AA: $07
    ld bc, $FF1F                                  ; $52AB: $01 $1F $FF
    dec de                                        ; $52AE: $1B
    db $E4                                        ; $52AF: $E4
    ld bc, $1900                                  ; $52B0: $01 $00 $19
    rlca                                          ; $52B3: $07
    dec bc                                        ; $52B4: $0B
    rlca                                          ; $52B5: $07
    ld [hl], a                                    ; $52B6: $77
    rrca                                          ; $52B7: $0F
    ccf                                           ; $52B8: $3F
    rst $38                                       ; $52B9: $FF
    cp $FF                                        ; $52BA: $FE $FF
    call z, $00F0                                 ; $52BC: $CC $F0 $00
    nop                                           ; $52BF: $00

jr_041_52C0:
    rst $38                                       ; $52C0: $FF
    rst $38                                       ; $52C1: $FF
    rst $38                                       ; $52C2: $FF
    cp $FC                                        ; $52C3: $FE $FC
    db $FC                                        ; $52C5: $FC
    ldh a, [$F8]                                  ; $52C6: $F0 $F8
    ldh [$C0], a                                  ; $52C8: $E0 $C0
    add b                                         ; $52CA: $80
    nop                                           ; $52CB: $00
    nop                                           ; $52CC: $00
    nop                                           ; $52CD: $00
    nop                                           ; $52CE: $00
    nop                                           ; $52CF: $00
    nop                                           ; $52D0: $00
    nop                                           ; $52D1: $00
    nop                                           ; $52D2: $00
    nop                                           ; $52D3: $00
    nop                                           ; $52D4: $00
    nop                                           ; $52D5: $00
    nop                                           ; $52D6: $00
    nop                                           ; $52D7: $00
    nop                                           ; $52D8: $00
    nop                                           ; $52D9: $00

jr_041_52DA:
    nop                                           ; $52DA: $00
    nop                                           ; $52DB: $00
    nop                                           ; $52DC: $00
    nop                                           ; $52DD: $00
    nop                                           ; $52DE: $00
    nop                                           ; $52DF: $00
    jr @+$09                                      ; $52E0: $18 $07

    nop                                           ; $52E2: $00
    rra                                           ; $52E3: $1F
    nop                                           ; $52E4: $00
    nop                                           ; $52E5: $00
    nop                                           ; $52E6: $00
    nop                                           ; $52E7: $00
    ld bc, $0700                                  ; $52E8: $01 $00 $07
    nop                                           ; $52EB: $00
    nop                                           ; $52EC: $00
    rlca                                          ; $52ED: $07
    ldh [$1F], a                                  ; $52EE: $E0 $1F
    ret c                                         ; $52F0: $D8

    ldh [$FE], a                                  ; $52F1: $E0 $FE
    db $FC                                        ; $52F3: $FC
    ld c, a                                       ; $52F4: $4F
    ld a, $FF                                     ; $52F5: $3E $FF
    ccf                                           ; $52F7: $3F
    cp a                                          ; $52F8: $BF
    ld a, [hl]                                    ; $52F9: $7E
    ld a, h                                       ; $52FA: $7C
    db $FC                                        ; $52FB: $FC
    ld [hl], b                                    ; $52FC: $70
    ldh a, [$80]                                  ; $52FD: $F0 $80
    nop                                           ; $52FF: $00
    ld bc, $0000                                  ; $5300: $01 $00 $00
    nop                                           ; $5303: $00
    rrca                                          ; $5304: $0F
    ld c, $0F                                     ; $5305: $0E $0F
    rra                                           ; $5307: $1F
    dec sp                                        ; $5308: $3B
    add hl, de                                    ; $5309: $19
    dec de                                        ; $530A: $1B
    ld a, c                                       ; $530B: $79
    rra                                           ; $530C: $1F
    ld a, a                                       ; $530D: $7F
    rst $38                                       ; $530E: $FF
    ld a, a                                       ; $530F: $7F
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    ret nz                                        ; $5312: $C0

    nop                                           ; $5313: $00
    ret nz                                        ; $5314: $C0

    ld b, b                                       ; $5315: $40
    nop                                           ; $5316: $00
    ld b, b                                       ; $5317: $40
    jr nz, jr_041_52DA                            ; $5318: $20 $C0

    ldh [$C0], a                                  ; $531A: $E0 $C0
    ret nz                                        ; $531C: $C0

    and b                                         ; $531D: $A0
    jr nz, jr_041_52C0                            ; $531E: $20 $A0

    ld bc, $0100                                  ; $5320: $01 $00 $01
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    ld bc, $0101                                  ; $5325: $01 $01 $01
    inc bc                                        ; $5328: $03
    ld bc, $0302                                  ; $5329: $01 $02 $03
    nop                                           ; $532C: $00
    ld b, $00                                     ; $532D: $06 $00
    inc c                                         ; $532F: $0C
    rst $38                                       ; $5330: $FF
    ld a, a                                       ; $5331: $7F
    push af                                       ; $5332: $F5
    rst $38                                       ; $5333: $FF
    push de                                       ; $5334: $D5
    xor $8F                                       ; $5335: $EE $8F
    rst $08                                       ; $5337: $CF
    add e                                         ; $5338: $83
    rrca                                          ; $5339: $0F
    ld [bc], a                                    ; $533A: $02
    nop                                           ; $533B: $00
    nop                                           ; $533C: $00
    nop                                           ; $533D: $00
    nop                                           ; $533E: $00
    nop                                           ; $533F: $00
    and b                                         ; $5340: $A0
    ldh [$C0], a                                  ; $5341: $E0 $C0
    ldh [$80], a                                  ; $5343: $E0 $80
    ret nz                                        ; $5345: $C0

    ret nz                                        ; $5346: $C0

    add b                                         ; $5347: $80
    ret nz                                        ; $5348: $C0

    add b                                         ; $5349: $80
    ld b, b                                       ; $534A: $40
    ret nz                                        ; $534B: $C0

    ld b, b                                       ; $534C: $40
    ld h, b                                       ; $534D: $60
    jr nc, jr_041_5370                            ; $534E: $30 $20

    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    ld [bc], a                                    ; $5356: $02
    ld bc, $070B                                  ; $5357: $01 $0B $07
    ld a, [hl+]                                   ; $535A: $2A
    inc e                                         ; $535B: $1C

jr_041_535C:
    ldh a, [rP1]                                  ; $535C: $F0 $00
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    nop                                           ; $5360: $00
    jr jr_041_537B                                ; $5361: $18 $18

    jr nc, jr_041_53D5                            ; $5363: $30 $70

    ld h, b                                       ; $5365: $60
    add b                                         ; $5366: $80
    ret nz                                        ; $5367: $C0

    add b                                         ; $5368: $80
    nop                                           ; $5369: $00
    nop                                           ; $536A: $00
    nop                                           ; $536B: $00
    nop                                           ; $536C: $00
    nop                                           ; $536D: $00
    nop                                           ; $536E: $00
    nop                                           ; $536F: $00

jr_041_5370:
    jr z, jr_041_5382                             ; $5370: $28 $10

    inc c                                         ; $5372: $0C
    ld [$060D], sp                                ; $5373: $08 $0D $06
    inc bc                                        ; $5376: $03
    ld bc, $0000                                  ; $5377: $01 $00 $00
    nop                                           ; $537A: $00

jr_041_537B:
    nop                                           ; $537B: $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00

jr_041_5382:
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    ld b, b                                       ; $5386: $40
    add b                                         ; $5387: $80
    db $EC                                        ; $5388: $EC
    ld [hl], b                                    ; $5389: $70
    ld [hl-], a                                   ; $538A: $32
    rrca                                          ; $538B: $0F
    inc bc                                        ; $538C: $03
    nop                                           ; $538D: $00
    nop                                           ; $538E: $00
    nop                                           ; $538F: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00

jr_041_539A:
    ld [hl], b                                    ; $539A: $70
    add b                                         ; $539B: $80
    add b                                         ; $539C: $80
    ld a, a                                       ; $539D: $7F
    inc b                                         ; $539E: $04
    nop                                           ; $539F: $00
    nop                                           ; $53A0: $00
    nop                                           ; $53A1: $00
    nop                                           ; $53A2: $00
    nop                                           ; $53A3: $00
    nop                                           ; $53A4: $00
    nop                                           ; $53A5: $00
    nop                                           ; $53A6: $00
    nop                                           ; $53A7: $00
    nop                                           ; $53A8: $00
    nop                                           ; $53A9: $00
    nop                                           ; $53AA: $00
    nop                                           ; $53AB: $00
    nop                                           ; $53AC: $00
    rst $38                                       ; $53AD: $FF
    inc b                                         ; $53AE: $04
    nop                                           ; $53AF: $00
    nop                                           ; $53B0: $00
    nop                                           ; $53B1: $00
    nop                                           ; $53B2: $00
    nop                                           ; $53B3: $00
    ld bc, $0300                                  ; $53B4: $01 $00 $03
    ld bc, $0301                                  ; $53B7: $01 $01 $03
    nop                                           ; $53BA: $00
    ld bc, $0000                                  ; $53BB: $01 $00 $00
    ld bc, $0200                                  ; $53BE: $01 $00 $02
    ld bc, $0306                                  ; $53C1: $01 $06 $03
    ld b, h                                       ; $53C4: $44
    add [hl]                                      ; $53C5: $86
    db $EC                                        ; $53C6: $EC
    add $26                                       ; $53C7: $C6 $26
    ld l, a                                       ; $53C9: $6F
    and a                                         ; $53CA: $A7
    rst $38                                       ; $53CB: $FF
    ld e, a                                       ; $53CC: $5F
    or a                                          ; $53CD: $B7
    ld [hl], e                                    ; $53CE: $73
    scf                                           ; $53CF: $37
    nop                                           ; $53D0: $00
    nop                                           ; $53D1: $00
    nop                                           ; $53D2: $00
    add b                                         ; $53D3: $80
    ld b, b                                       ; $53D4: $40

jr_041_53D5:
    add b                                         ; $53D5: $80
    nop                                           ; $53D6: $00
    ret nz                                        ; $53D7: $C0

    jr nz, jr_041_539A                            ; $53D8: $20 $C0

    jr nz, jr_041_535C                            ; $53DA: $20 $80

    add b                                         ; $53DC: $80
    ret nz                                        ; $53DD: $C0

    ret nz                                        ; $53DE: $C0

    ret nz                                        ; $53DF: $C0

    inc de                                        ; $53E0: $13
    ld bc, $3113                                  ; $53E1: $01 $13 $31
    ld de, $1333                                  ; $53E4: $11 $33 $13
    rlca                                          ; $53E7: $07
    dec b                                         ; $53E8: $05
    rlca                                          ; $53E9: $07
    dec b                                         ; $53EA: $05
    dec b                                         ; $53EB: $05
    dec c                                         ; $53EC: $0D
    rlca                                          ; $53ED: $07
    rrca                                          ; $53EE: $0F
    rlca                                          ; $53EF: $07
    rst $30                                       ; $53F0: $F7
    ld a, a                                       ; $53F1: $7F
    ld a, a                                       ; $53F2: $7F
    rst $38                                       ; $53F3: $FF
    rst $38                                       ; $53F4: $FF
    push af                                       ; $53F5: $F5
    call c, $FFF5                                 ; $53F6: $DC $F5 $FF
    db $F4                                        ; $53F9: $F4
    di                                            ; $53FA: $F3
    cp $CC                                        ; $53FB: $FE $CC
    ld a, [$C0B8]                                 ; $53FD: $FA $B8 $C0
    ret nz                                        ; $5400: $C0

    ret nz                                        ; $5401: $C0

    ld h, b                                       ; $5402: $60
    ret nz                                        ; $5403: $C0

    and b                                         ; $5404: $A0
    ld h, b                                       ; $5405: $60
    ldh [rNR41], a                                ; $5406: $E0 $20
    ld h, b                                       ; $5408: $60
    and b                                         ; $5409: $A0
    ld h, b                                       ; $540A: $60
    ldh [$60], a                                  ; $540B: $E0 $60
    ret nz                                        ; $540D: $C0

    ret nz                                        ; $540E: $C0

    ld b, b                                       ; $540F: $40
    ld b, $0F                                     ; $5410: $06 $0F
    inc b                                         ; $5412: $04
    ld c, $08                                     ; $5413: $0E $08
    inc e                                         ; $5415: $1C
    jr c, @+$1A                                   ; $5416: $38 $18

    jr nc, jr_041_544A                            ; $5418: $30 $30

    jr nc, jr_041_547C                            ; $541A: $30 $60

    ld b, b                                       ; $541C: $40
    ldh [$80], a                                  ; $541D: $E0 $80
    ret nz                                        ; $541F: $C0

    ret nz                                        ; $5420: $C0

    ld b, b                                       ; $5421: $40
    ld b, b                                       ; $5422: $40
    ld b, b                                       ; $5423: $40
    jr nz, jr_041_5466                            ; $5424: $20 $40

    nop                                           ; $5426: $00
    jr nz, jr_041_5439                            ; $5427: $20 $10

jr_041_5429:
    jr nz, @+$22                                  ; $5429: $20 $20

    db $10                                        ; $542B: $10
    ld [$1010], sp                                ; $542C: $08 $10 $10
    ld [rRAMG], sp                                ; $542F: $08 $00 $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00

jr_041_5439:
    nop                                           ; $5439: $00
    inc bc                                        ; $543A: $03
    ld bc, $0F17                                  ; $543B: $01 $17 $0F
    add d                                         ; $543E: $82
    ld a, h                                       ; $543F: $7C
    ld bc, $0203                                  ; $5440: $01 $03 $02
    rlca                                          ; $5443: $07
    ld d, $0C                                     ; $5444: $16 $0C
    inc a                                         ; $5446: $3C
    jr jr_041_5429                                ; $5447: $18 $E0

    ld [hl], b                                    ; $5449: $70

jr_041_544A:
    ldh [$C0], a                                  ; $544A: $E0 $C0
    add b                                         ; $544C: $80
    nop                                           ; $544D: $00
    nop                                           ; $544E: $00
    nop                                           ; $544F: $00
    ld [$0704], sp                                ; $5450: $08 $04 $07
    nop                                           ; $5453: $00
    ld [bc], a                                    ; $5454: $02
    ld bc, $0001                                  ; $5455: $01 $01 $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00
    nop                                           ; $545B: $00
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    nop                                           ; $545E: $00
    nop                                           ; $545F: $00
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    add b                                         ; $5464: $80
    nop                                           ; $5465: $00

jr_041_5466:
    add b                                         ; $5466: $80
    ret nz                                        ; $5467: $C0

    and b                                         ; $5468: $A0
    ld [hl], b                                    ; $5469: $70
    ld [bc], a                                    ; $546A: $02
    inc a                                         ; $546B: $3C
    dec bc                                        ; $546C: $0B
    rlca                                          ; $546D: $07
    ld [bc], a                                    ; $546E: $02
    ld bc, $0000                                  ; $546F: $01 $00 $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547A: $00
    nop                                           ; $547B: $00

jr_041_547C:
    or b                                          ; $547C: $B0
    ret nz                                        ; $547D: $C0

    db $FD                                        ; $547E: $FD
    cp $00                                        ; $547F: $FE $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    ld [$1C00], sp                                ; $5484: $08 $00 $1C
    add hl, de                                    ; $5487: $19
    dec e                                         ; $5488: $1D
    jr jr_041_5493                                ; $5489: $18 $08

    db $10                                        ; $548B: $10
    ld b, e                                       ; $548C: $43
    nop                                           ; $548D: $00
    add e                                         ; $548E: $83
    ld b, e                                       ; $548F: $43
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00

jr_041_5493:
    nop                                           ; $5493: $00
    inc bc                                        ; $5494: $03
    rlca                                          ; $5495: $07
    inc hl                                        ; $5496: $23
    rla                                           ; $5497: $17
    inc sp                                        ; $5498: $33
    inc sp                                        ; $5499: $33
    dec h                                         ; $549A: $25
    ld [hl], e                                    ; $549B: $73
    ld b, a                                       ; $549C: $47
    cpl                                           ; $549D: $2F
    rrca                                          ; $549E: $0F
    rrca                                          ; $549F: $0F
    inc de                                        ; $54A0: $13
    rrca                                          ; $54A1: $0F
    ld e, a                                       ; $54A2: $5F
    ccf                                           ; $54A3: $3F
    rst $38                                       ; $54A4: $FF
    rst $38                                       ; $54A5: $FF
    cp $FF                                        ; $54A6: $FE $FF
    rst $38                                       ; $54A8: $FF
    rst $38                                       ; $54A9: $FF
    db $E3                                        ; $54AA: $E3
    rst $38                                       ; $54AB: $FF
    pop hl                                        ; $54AC: $E1
    jp nz, $8000                                  ; $54AD: $C2 $00 $80

    db $FC                                        ; $54B0: $FC
    ld hl, sp-$64                                 ; $54B1: $F8 $9C
    cp $F7                                        ; $54B3: $FE $F7
    cp $FB                                        ; $54B5: $FE $FB
    rst $30                                       ; $54B7: $F7
    ld sp, hl                                     ; $54B8: $F9
    rst $38                                       ; $54B9: $FF
    ld a, h                                       ; $54BA: $7C
    ei                                            ; $54BB: $FB
    inc e                                         ; $54BC: $1C
    ld [hl], e                                    ; $54BD: $73
    inc hl                                        ; $54BE: $23
    inc sp                                        ; $54BF: $33
    rlca                                          ; $54C0: $07
    nop                                           ; $54C1: $00
    inc b                                         ; $54C2: $04
    ld [bc], a                                    ; $54C3: $02
    nop                                           ; $54C4: $00
    nop                                           ; $54C5: $00
    nop                                           ; $54C6: $00

jr_041_54C7:
    nop                                           ; $54C7: $00
    nop                                           ; $54C8: $00
    nop                                           ; $54C9: $00
    ld bc, $0100                                  ; $54CA: $01 $00 $01
    ld bc, $0301                                  ; $54CD: $01 $01 $03
    dec a                                         ; $54D0: $3D
    ld e, $7E                                     ; $54D1: $1E $7E
    inc a                                         ; $54D3: $3C
    ld [hl], h                                    ; $54D4: $74
    jr c, jr_041_54C7                             ; $54D5: $38 $F0

    ld h, b                                       ; $54D7: $60
    ret nz                                        ; $54D8: $C0

    ldh [$C0], a                                  ; $54D9: $E0 $C0
    add b                                         ; $54DB: $80
    nop                                           ; $54DC: $00
    add b                                         ; $54DD: $80
    nop                                           ; $54DE: $00
    nop                                           ; $54DF: $00
    nop                                           ; $54E0: $00
    nop                                           ; $54E1: $00
    ld bc, $0300                                  ; $54E2: $01 $00 $03
    ld bc, $0103                                  ; $54E5: $01 $03 $01
    ld bc, $0103                                  ; $54E8: $01 $03 $01
    inc bc                                        ; $54EB: $03
    inc bc                                        ; $54EC: $03

jr_041_54ED:
    ld bc, $0103                                  ; $54ED: $01 $03 $01
    and e                                         ; $54F0: $A3
    scf                                           ; $54F1: $37
    xor $FD                                       ; $54F2: $EE $FD
    rst $38                                       ; $54F4: $FF
    rst $38                                       ; $54F5: $FF
    cp $BF                                        ; $54F6: $FE $BF
    cp a                                          ; $54F8: $BF
    cp [hl]                                       ; $54F9: $BE
    cp $FE                                        ; $54FA: $FE $FE
    ldh a, [$FE]                                  ; $54FC: $F0 $FE
    ldh [$F0], a                                  ; $54FE: $E0 $F0
    rlca                                          ; $5500: $07
    ld [bc], a                                    ; $5501: $02
    inc b                                         ; $5502: $04
    ld b, $0C                                     ; $5503: $06 $0C
    inc b                                         ; $5505: $04
    inc e                                         ; $5506: $1C
    ld [$1038], sp                                ; $5507: $08 $38 $10

jr_041_550A:
    ld [hl], b                                    ; $550A: $70
    jr nz, jr_041_54ED                            ; $550B: $20 $E0

    ld b, b                                       ; $550D: $40
    nop                                           ; $550E: $00
    add b                                         ; $550F: $80
    ld bc, $0101                                  ; $5510: $01 $01 $01
    ld bc, $0103                                  ; $5513: $01 $03 $01
    ld bc, $0103                                  ; $5516: $01 $03 $01
    inc bc                                        ; $5519: $03
    inc bc                                        ; $551A: $03
    ld bc, $0101                                  ; $551B: $01 $01 $01
    nop                                           ; $551E: $00
    ld bc, $E0F0                                  ; $551F: $01 $F0 $E0
    ldh [$E0], a                                  ; $5522: $E0 $E0
    ldh [$C0], a                                  ; $5524: $E0 $C0
    ld b, b                                       ; $5526: $40
    add b                                         ; $5527: $80
    ld b, b                                       ; $5528: $40
    and b                                         ; $5529: $A0
    ret nz                                        ; $552A: $C0

    ldh [$80], a                                  ; $552B: $E0 $80
    ret nz                                        ; $552D: $C0

    nop                                           ; $552E: $00
    add b                                         ; $552F: $80
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    dec b                                         ; $553A: $05
    inc bc                                        ; $553B: $03
    pop hl                                        ; $553C: $E1
    ld e, $18                                     ; $553D: $1E $18
    ldh [rP1], a                                  ; $553F: $E0 $00
    inc bc                                        ; $5541: $03
    nop                                           ; $5542: $00
    ld b, $14                                     ; $5543: $06 $14
    ld [$1028], sp                                ; $5545: $08 $28 $10
    jr nz, jr_041_550A                            ; $5548: $20 $C0

    nop                                           ; $554A: $00
    add b                                         ; $554B: $80
    nop                                           ; $554C: $00
    nop                                           ; $554D: $00
    nop                                           ; $554E: $00
    nop                                           ; $554F: $00
    ret nz                                        ; $5550: $C0

    add b                                         ; $5551: $80
    ret nz                                        ; $5552: $C0

    ret nz                                        ; $5553: $C0

    ldh [rLCDC], a                                ; $5554: $E0 $40
    ld l, b                                       ; $5556: $68
    jr nc, jr_041_5591                            ; $5557: $30 $38

    inc e                                         ; $5559: $1C
    ld a, [bc]                                    ; $555A: $0A
    rlca                                          ; $555B: $07
    ld [bc], a                                    ; $555C: $02
    ld bc, $0000                                  ; $555D: $01 $00 $00
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    add b                                         ; $556A: $80
    nop                                           ; $556B: $00
    inc c                                         ; $556C: $0C
    ldh a, [$58]                                  ; $556D: $F0 $58
    ccf                                           ; $556F: $3F
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    inc bc                                        ; $557A: $03
    nop                                           ; $557B: $00
    rla                                           ; $557C: $17
    rrca                                          ; $557D: $0F
    ccf                                           ; $557E: $3F
    rra                                           ; $557F: $1F
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    ret nz                                        ; $558A: $C0

    nop                                           ; $558B: $00
    ldh a, [$E0]                                  ; $558C: $F0 $E0
    db $F4                                        ; $558E: $F4
    ld hl, sp+$00                                 ; $558F: $F8 $00

jr_041_5591:
    nop                                           ; $5591: $00
    ld bc, $0100                                  ; $5592: $01 $00 $01
    inc bc                                        ; $5595: $03
    rlca                                          ; $5596: $07
    inc bc                                        ; $5597: $03
    inc bc                                        ; $5598: $03
    rlca                                          ; $5599: $07
    ld [$0E06], sp                                ; $559A: $08 $06 $0E
    inc c                                         ; $559D: $0C
    inc e                                         ; $559E: $1C
    jr @+$01                                      ; $559F: $18 $FF

    ld a, a                                       ; $55A1: $7F
    rst $38                                       ; $55A2: $FF
    rst $38                                       ; $55A3: $FF
    xor $F1                                       ; $55A4: $EE $F1
    pop hl                                        ; $55A6: $E1
    ret nz                                        ; $55A7: $C0

    ld bc, $0282                                  ; $55A8: $01 $82 $02
    nop                                           ; $55AB: $00
    nop                                           ; $55AC: $00
    ld [$0008], sp                                ; $55AD: $08 $08 $00
    cp $FC                                        ; $55B0: $FE $FC
    rst $28                                       ; $55B2: $EF
    cp $FC                                        ; $55B3: $FE $FC
    rst $20                                       ; $55B5: $E7
    db $E3                                        ; $55B6: $E3
    ld [hl], a                                    ; $55B7: $77
    ccf                                           ; $55B8: $3F
    ld [hl], e                                    ; $55B9: $73
    rst $30                                       ; $55BA: $F7
    dec sp                                        ; $55BB: $3B
    sbc c                                         ; $55BC: $99
    inc hl                                        ; $55BD: $23
    push bc                                       ; $55BE: $C5
    add hl, hl                                    ; $55BF: $29
    nop                                           ; $55C0: $00
    nop                                           ; $55C1: $00
    nop                                           ; $55C2: $00
    nop                                           ; $55C3: $00
    nop                                           ; $55C4: $00
    nop                                           ; $55C5: $00
    nop                                           ; $55C6: $00
    ld bc, $0301                                  ; $55C7: $01 $01 $03
    rlca                                          ; $55CA: $07
    ld [bc], a                                    ; $55CB: $02
    ld c, $04                                     ; $55CC: $0E $04
    ld [$2818], sp                                ; $55CE: $08 $18 $28
    jr nc, @+$2A                                  ; $55D1: $30 $28

    ld h, b                                       ; $55D3: $60
    ld d, b                                       ; $55D4: $50
    ret z                                         ; $55D5: $C8

    add b                                         ; $55D6: $80
    add b                                         ; $55D7: $80
    add b                                         ; $55D8: $80
    nop                                           ; $55D9: $00
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    nop                                           ; $55DC: $00
    nop                                           ; $55DD: $00
    nop                                           ; $55DE: $00
    nop                                           ; $55DF: $00
    nop                                           ; $55E0: $00
    nop                                           ; $55E1: $00
    ld b, b                                       ; $55E2: $40
    nop                                           ; $55E3: $00
    ld b, $00                                     ; $55E4: $06 $00
    ld bc, $0200                                  ; $55E6: $01 $00 $02
    ld bc, $0103                                  ; $55E9: $01 $03 $01
    ld bc, $0000                                  ; $55EC: $01 $00 $00
    nop                                           ; $55EF: $00
    inc bc                                        ; $55F0: $03
    db $ED                                        ; $55F1: $ED
    and a                                         ; $55F2: $A7
    call $8FD5                                    ; $55F3: $CD $D5 $8F
    sbc l                                         ; $55F6: $9D
    adc e                                         ; $55F7: $8B
    ld e, $8B                                     ; $55F8: $1E $8B
    ld b, $1C                                     ; $55FA: $06 $1C
    ld e, $04                                     ; $55FC: $1E $04
    ld [$0007], sp                                ; $55FE: $08 $07 $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    add b                                         ; $5608: $80
    nop                                           ; $5609: $00
    ld b, b                                       ; $560A: $40
    rst $38                                       ; $560B: $FF
    ld [hl], a                                    ; $560C: $77
    rrca                                          ; $560D: $0F
    nop                                           ; $560E: $00
    nop                                           ; $560F: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    ld bc, $0306                                  ; $5615: $01 $06 $03
    inc e                                         ; $5618: $1C
    ld c, $34                                     ; $5619: $0E $34
    ld hl, sp-$50                                 ; $561B: $F8 $B0
    ret nz                                        ; $561D: $C0

    nop                                           ; $561E: $00
    nop                                           ; $561F: $00
    jr c, jr_041_5652                             ; $5620: $38 $30

    ret nz                                        ; $5622: $C0

    ld h, b                                       ; $5623: $60
    nop                                           ; $5624: $00
    ret nz                                        ; $5625: $C0

    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    nop                                           ; $562A: $00
    nop                                           ; $562B: $00
    nop                                           ; $562C: $00
    nop                                           ; $562D: $00
    nop                                           ; $562E: $00
    nop                                           ; $562F: $00
    dec c                                         ; $5630: $0D
    inc bc                                        ; $5631: $03
    dec bc                                        ; $5632: $0B
    rlca                                          ; $5633: $07
    nop                                           ; $5634: $00
    rlca                                          ; $5635: $07
    inc bc                                        ; $5636: $03
    ld bc, $0101                                  ; $5637: $01 $01 $01
    nop                                           ; $563A: $00
    nop                                           ; $563B: $00
    nop                                           ; $563C: $00
    nop                                           ; $563D: $00
    nop                                           ; $563E: $00
    nop                                           ; $563F: $00
    ldh [$80], a                                  ; $5640: $E0 $80
    ret nz                                        ; $5642: $C0

    ldh [$F0], a                                  ; $5643: $E0 $F0
    ldh [$30], a                                  ; $5645: $E0 $30
    ldh a, [rNR14]                                ; $5647: $F0 $14
    jr c, jr_041_5653                             ; $5649: $38 $08

    rlca                                          ; $564B: $07
    ld bc, $0000                                  ; $564C: $01 $00 $00
    nop                                           ; $564F: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00

jr_041_5652:
    nop                                           ; $5652: $00

jr_041_5653:
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    db $10                                        ; $5656: $10
    ld [$1C38], sp                                ; $5657: $08 $38 $1C
    ld a, $64                                     ; $565A: $3E $64
    ld h, [hl]                                    ; $565C: $66
    jp $8381                                      ; $565D: $C3 $81 $83


    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    add b                                         ; $5665: $80
    ret nz                                        ; $5666: $C0

    ldh [$09], a                                  ; $5667: $E0 $09
    halt                                          ; $5669: $76
    dec bc                                        ; $566A: $0B
    rlca                                          ; $566B: $07
    nop                                           ; $566C: $00
    nop                                           ; $566D: $00
    nop                                           ; $566E: $00
    nop                                           ; $566F: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00

jr_041_5672:
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    nop                                           ; $5676: $00
    nop                                           ; $5677: $00
    ret nz                                        ; $5678: $C0

    nop                                           ; $5679: $00
    adc $FF                                       ; $567A: $CE $FF
    pop hl                                        ; $567C: $E1
    rra                                           ; $567D: $1F
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    db $FC                                        ; $568A: $FC
    inc bc                                        ; $568B: $03
    add hl, bc                                    ; $568C: $09
    or $00                                        ; $568D: $F6 $00
    nop                                           ; $568F: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    ld bc, $2603                                  ; $5696: $01 $03 $26
    inc e                                         ; $5699: $1C
    ld [$00F0], sp                                ; $569A: $08 $F0 $00
    nop                                           ; $569D: $00
    nop                                           ; $569E: $00
    nop                                           ; $569F: $00
    inc b                                         ; $56A0: $04
    inc bc                                        ; $56A1: $03
    ld a, [de]                                    ; $56A2: $1A
    inc b                                         ; $56A3: $04
    ret nc                                        ; $56A4: $D0

    jr nz, jr_041_56E7                            ; $56A5: $20 $40

    add b                                         ; $56A7: $80
    nop                                           ; $56A8: $00
    nop                                           ; $56A9: $00
    nop                                           ; $56AA: $00
    nop                                           ; $56AB: $00
    nop                                           ; $56AC: $00
    nop                                           ; $56AD: $00
    nop                                           ; $56AE: $00
    nop                                           ; $56AF: $00
    jr nz, jr_041_5672                            ; $56B0: $20 $C0

    jr nz, jr_041_5724                            ; $56B2: $20 $70

    cpl                                           ; $56B4: $2F
    jr jr_041_56C1                                ; $56B5: $18 $0A

    rlca                                          ; $56B7: $07
    ld bc, $0000                                  ; $56B8: $01 $00 $00
    nop                                           ; $56BB: $00
    nop                                           ; $56BC: $00
    nop                                           ; $56BD: $00
    nop                                           ; $56BE: $00
    nop                                           ; $56BF: $00
    nop                                           ; $56C0: $00

jr_041_56C1:
    nop                                           ; $56C1: $00
    ld bc, $0100                                  ; $56C2: $01 $00 $01
    nop                                           ; $56C5: $00
    ld bc, $0100                                  ; $56C6: $01 $00 $01
    nop                                           ; $56C9: $00
    inc bc                                        ; $56CA: $03
    nop                                           ; $56CB: $00
    ld bc, $0300                                  ; $56CC: $01 $00 $03
    nop                                           ; $56CF: $00
    ld bc, $0300                                  ; $56D0: $01 $00 $03
    nop                                           ; $56D3: $00
    nop                                           ; $56D4: $00
    ld bc, $0003                                  ; $56D5: $01 $03 $00
    nop                                           ; $56D8: $00
    ld bc, $0003                                  ; $56D9: $01 $03 $00
    ld [bc], a                                    ; $56DC: $02
    ld bc, $01C0                                  ; $56DD: $01 $C0 $01
    ld bc, $0703                                  ; $56E0: $01 $03 $07
    inc bc                                        ; $56E3: $03
    rlca                                          ; $56E4: $07
    inc bc                                        ; $56E5: $03
    rrca                                          ; $56E6: $0F

jr_041_56E7:
    rlca                                          ; $56E7: $07
    ld c, $07                                     ; $56E8: $0E $07
    ld c, $07                                     ; $56EA: $0E $07
    ld c, $07                                     ; $56EC: $0E $07
    ld c, $07                                     ; $56EE: $0E $07
    ld b, d                                       ; $56F0: $42
    add c                                         ; $56F1: $81
    nop                                           ; $56F2: $00
    add c                                         ; $56F3: $81
    add d                                         ; $56F4: $82
    ld bc, $0180                                  ; $56F5: $01 $80 $01
    ld [bc], a                                    ; $56F8: $02
    ld bc, $0182                                  ; $56F9: $01 $82 $01
    nop                                           ; $56FC: $00
    ld bc, $0182                                  ; $56FD: $01 $82 $01
    rrca                                          ; $5700: $0F
    rlca                                          ; $5701: $07
    dec bc                                        ; $5702: $0B
    rlca                                          ; $5703: $07
    dec bc                                        ; $5704: $0B
    rlca                                          ; $5705: $07
    rlca                                          ; $5706: $07
    inc bc                                        ; $5707: $03
    rlca                                          ; $5708: $07
    inc bc                                        ; $5709: $03
    rlca                                          ; $570A: $07
    inc bc                                        ; $570B: $03
    rlca                                          ; $570C: $07
    inc bc                                        ; $570D: $03
    inc bc                                        ; $570E: $03
    ld bc, $0182                                  ; $570F: $01 $82 $01
    rst $38                                       ; $5712: $FF
    ld bc, $FFFF                                  ; $5713: $01 $FF $FF
    rst $38                                       ; $5716: $FF
    rst $38                                       ; $5717: $FF
    rst $38                                       ; $5718: $FF
    rst $38                                       ; $5719: $FF
    rst $38                                       ; $571A: $FF
    rst $38                                       ; $571B: $FF
    rst $38                                       ; $571C: $FF
    rst $38                                       ; $571D: $FF
    rst $38                                       ; $571E: $FF
    rst $38                                       ; $571F: $FF
    rst $38                                       ; $5720: $FF
    rst $38                                       ; $5721: $FF
    rst $38                                       ; $5722: $FF
    ccf                                           ; $5723: $3F

jr_041_5724:
    ccf                                           ; $5724: $3F
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572A: $00
    nop                                           ; $572B: $00
    nop                                           ; $572C: $00
    nop                                           ; $572D: $00
    nop                                           ; $572E: $00
    nop                                           ; $572F: $00
    ld [$1800], sp                                ; $5730: $08 $00 $18
    nop                                           ; $5733: $00
    jr jr_041_5736                                ; $5734: $18 $00

jr_041_5736:
    jr nc, jr_041_5738                            ; $5736: $30 $00

jr_041_5738:
    ld [hl], b                                    ; $5738: $70
    nop                                           ; $5739: $00
    jr nc, jr_041_573C                            ; $573A: $30 $00

jr_041_573C:
    ret nc                                        ; $573C: $D0

    jr nz, jr_041_57AF                            ; $573D: $20 $70

    nop                                           ; $573F: $00
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    ld bc, $0100                                  ; $5746: $01 $00 $01
    nop                                           ; $5749: $00
    ld bc, $0100                                  ; $574A: $01 $00 $01
    nop                                           ; $574D: $00
    ld bc, $F000                                  ; $574E: $01 $00 $F0
    nop                                           ; $5751: $00
    sub b                                         ; $5752: $90
    ld h, b                                       ; $5753: $60
    add b                                         ; $5754: $80
    ld h, b                                       ; $5755: $60
    sub b                                         ; $5756: $90
    ld h, b                                       ; $5757: $60
    add b                                         ; $5758: $80
    ld h, b                                       ; $5759: $60
    ld d, b                                       ; $575A: $50
    ld h, b                                       ; $575B: $60
    ld b, b                                       ; $575C: $40
    ld h, b                                       ; $575D: $60
    jr nc, jr_041_57C0                            ; $575E: $30 $60

    ld bc, $2301                                  ; $5760: $01 $01 $23
    ld bc, $0123                                  ; $5763: $01 $23 $01
    inc hl                                        ; $5766: $23
    ld bc, $0103                                  ; $5767: $01 $03 $01
    inc bc                                        ; $576A: $03
    ld bc, $0303                                  ; $576B: $01 $03 $03
    inc bc                                        ; $576E: $03
    inc bc                                        ; $576F: $03
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    ld c, $00                                     ; $5776: $0E $00
    dec bc                                        ; $5778: $0B
    inc b                                         ; $5779: $04
    inc b                                         ; $577A: $04
    inc bc                                        ; $577B: $03
    ld [bc], a                                    ; $577C: $02
    ld bc, $0102                                  ; $577D: $01 $02 $01
    ld [hl], b                                    ; $5780: $70
    ld h, b                                       ; $5781: $60
    ld d, b                                       ; $5782: $50
    jr nz, jr_041_57D5                            ; $5783: $20 $50

    jr nz, @+$2D                                  ; $5785: $20 $2B

    db $10                                        ; $5787: $10
    ccf                                           ; $5788: $3F
    nop                                           ; $5789: $00
    add h                                         ; $578A: $84
    jr c, jr_041_57C5                             ; $578B: $38 $38

    ldh a, [$F0]                                  ; $578D: $F0 $F0
    ldh a, [rTAC]                                 ; $578F: $F0 $07
    inc bc                                        ; $5791: $03
    rlca                                          ; $5792: $07
    inc bc                                        ; $5793: $03
    rlca                                          ; $5794: $07
    rlca                                          ; $5795: $07
    rrca                                          ; $5796: $0F
    rlca                                          ; $5797: $07
    ld a, a                                       ; $5798: $7F
    rlca                                          ; $5799: $07
    ld c, a                                       ; $579A: $4F
    ccf                                           ; $579B: $3F
    dec sp                                        ; $579C: $3B
    ld b, $02                                     ; $579D: $06 $02
    nop                                           ; $579F: $00
    dec b                                         ; $57A0: $05
    nop                                           ; $57A1: $00
    ld bc, $0000                                  ; $57A2: $01 $00 $00
    nop                                           ; $57A5: $00
    nop                                           ; $57A6: $00
    nop                                           ; $57A7: $00
    nop                                           ; $57A8: $00
    ld bc, $0003                                  ; $57A9: $01 $03 $00
    nop                                           ; $57AC: $00
    nop                                           ; $57AD: $00
    nop                                           ; $57AE: $00

jr_041_57AF:
    nop                                           ; $57AF: $00
    ld [hl], a                                    ; $57B0: $77
    ld hl, sp-$21                                 ; $57B1: $F8 $DF
    ccf                                           ; $57B3: $3F
    rst $38                                       ; $57B4: $FF
    ccf                                           ; $57B5: $3F
    ld [hl], a                                    ; $57B6: $77
    rst $38                                       ; $57B7: $FF
    ld [hl+], a                                   ; $57B8: $22
    pop bc                                        ; $57B9: $C1
    push bc                                       ; $57BA: $C5
    inc bc                                        ; $57BB: $03
    dec b                                         ; $57BC: $05
    inc bc                                        ; $57BD: $03
    dec b                                         ; $57BE: $05
    ld [bc], a                                    ; $57BF: $02

jr_041_57C0:
    ld [bc], a                                    ; $57C0: $02
    nop                                           ; $57C1: $00
    ld [bc], a                                    ; $57C2: $02
    nop                                           ; $57C3: $00
    inc bc                                        ; $57C4: $03

jr_041_57C5:
    nop                                           ; $57C5: $00
    inc bc                                        ; $57C6: $03
    nop                                           ; $57C7: $00
    ld bc, $0300                                  ; $57C8: $01 $00 $03
    nop                                           ; $57CB: $00
    dec b                                         ; $57CC: $05
    nop                                           ; $57CD: $00
    rlca                                          ; $57CE: $07
    nop                                           ; $57CF: $00
    rst $38                                       ; $57D0: $FF
    nop                                           ; $57D1: $00
    rst $38                                       ; $57D2: $FF
    db $FC                                        ; $57D3: $FC
    di                                            ; $57D4: $F3

jr_041_57D5:
    rst $38                                       ; $57D5: $FF
    rst $38                                       ; $57D6: $FF
    rst $38                                       ; $57D7: $FF
    cp $FF                                        ; $57D8: $FE $FF
    ld [$C6C7], a                                 ; $57DA: $EA $C7 $C6
    add e                                         ; $57DD: $83
    ld b, $01                                     ; $57DE: $06 $01
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    nop                                           ; $57E5: $00
    nop                                           ; $57E6: $00
    nop                                           ; $57E7: $00
    ld bc, $0100                                  ; $57E8: $01 $00 $01
    nop                                           ; $57EB: $00
    inc bc                                        ; $57EC: $03
    nop                                           ; $57ED: $00
    inc bc                                        ; $57EE: $03
    nop                                           ; $57EF: $00
    ld b, $00                                     ; $57F0: $06 $00
    ld [bc], a                                    ; $57F2: $02
    inc b                                         ; $57F3: $04
    ld b, $00                                     ; $57F4: $06 $00
    inc c                                         ; $57F6: $0C
    nop                                           ; $57F7: $00
    inc b                                         ; $57F8: $04
    ld [$0814], sp                                ; $57F9: $08 $14 $08
    inc e                                         ; $57FC: $1C
    nop                                           ; $57FD: $00
    inc e                                         ; $57FE: $1C
    nop                                           ; $57FF: $00
    inc [hl]                                      ; $5800: $34
    ld [$003C], sp                                ; $5801: $08 $3C $00
    inc a                                         ; $5804: $3C
    nop                                           ; $5805: $00
    inc d                                         ; $5806: $14
    ld [$102C], sp                                ; $5807: $08 $2C $10
    inc e                                         ; $580A: $1C
    nop                                           ; $580B: $00
    inc a                                         ; $580C: $3C
    nop                                           ; $580D: $00
    ld e, $00                                     ; $580E: $1E $00
    ld e, $00                                     ; $5810: $1E $00
    inc e                                         ; $5812: $1C
    nop                                           ; $5813: $00
    ld a, [bc]                                    ; $5814: $0A
    nop                                           ; $5815: $00
    dec bc                                        ; $5816: $0B
    nop                                           ; $5817: $00
    rlca                                          ; $5818: $07
    ld bc, $070E                                  ; $5819: $01 $0E $07
    ld l, l                                       ; $581C: $6D
    ld e, $7E                                     ; $581D: $1E $7E
    cp $00                                        ; $581F: $FE $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    rra                                           ; $5824: $1F
    nop                                           ; $5825: $00
    cp $00                                        ; $5826: $FE $00
    ldh a, [$80]                                  ; $5828: $F0 $80
    ret nz                                        ; $582A: $C0

    nop                                           ; $582B: $00
    nop                                           ; $582C: $00
    nop                                           ; $582D: $00
    nop                                           ; $582E: $00
    nop                                           ; $582F: $00
    inc bc                                        ; $5830: $03
    nop                                           ; $5831: $00
    inc bc                                        ; $5832: $03
    nop                                           ; $5833: $00
    dec b                                         ; $5834: $05
    ld [bc], a                                    ; $5835: $02
    dec b                                         ; $5836: $05
    ld [bc], a                                    ; $5837: $02
    jr jr_041_5840                                ; $5838: $18 $06

    db $10                                        ; $583A: $10
    ld c, $10                                     ; $583B: $0E $10
    ld c, $1A                                     ; $583D: $0E $1A
    inc b                                         ; $583F: $04

jr_041_5840:
    rlca                                          ; $5840: $07
    ld bc, $071E                                  ; $5841: $01 $1E $07
    call c, $8000                                 ; $5844: $DC $00 $80
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    ld b, $01                                     ; $584A: $06 $01
    inc c                                         ; $584C: $0C
    inc bc                                        ; $584D: $03
    ld a, $00                                     ; $584E: $3E $00
    rst $08                                       ; $5850: $CF
    cp $F7                                        ; $5851: $FE $F7
    rrca                                          ; $5853: $0F
    rra                                           ; $5854: $1F
    rrca                                          ; $5855: $0F
    ld h, a                                       ; $5856: $67
    rra                                           ; $5857: $1F

Jump_041_5858:
    or c                                          ; $5858: $B1
    ld a, a                                       ; $5859: $7F
    ld d, b                                       ; $585A: $50
    pop hl                                        ; $585B: $E1
    jp $0701                                      ; $585C: $C3 $01 $07


    inc bc                                        ; $585F: $03
    add b                                         ; $5860: $80
    nop                                           ; $5861: $00
    ld h, b                                       ; $5862: $60
    add b                                         ; $5863: $80
    rst $20                                       ; $5864: $E7
    ld hl, sp-$32                                 ; $5865: $F8 $CE
    rst $38                                       ; $5867: $FF
    rst $38                                       ; $5868: $FF
    rst $38                                       ; $5869: $FF
    rst $38                                       ; $586A: $FF
    rst $38                                       ; $586B: $FF
    rst $38                                       ; $586C: $FF
    rst $38                                       ; $586D: $FF
    rst $30                                       ; $586E: $F7
    jp $0020                                      ; $586F: $C3 $20 $00


    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    rst $28                                       ; $5874: $EF
    nop                                           ; $5875: $00
    jr z, @-$27                                   ; $5876: $28 $D7

    pop af                                        ; $5878: $F1
    rst $38                                       ; $5879: $FF
    cp $FF                                        ; $587A: $FE $FF
    rst $38                                       ; $587C: $FF
    rst $38                                       ; $587D: $FF
    rst $28                                       ; $587E: $EF
    rst $38                                       ; $587F: $FF
    ld d, $0F                                     ; $5880: $16 $0F
    inc [hl]                                      ; $5882: $34
    jr @+$12                                      ; $5883: $18 $10

    jr nz, jr_041_58C7                            ; $5885: $20 $40

    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588A: $00
    nop                                           ; $588B: $00
    nop                                           ; $588C: $00
    nop                                           ; $588D: $00
    nop                                           ; $588E: $00
    nop                                           ; $588F: $00
    add e                                         ; $5890: $83
    ld bc, $0007                                  ; $5891: $01 $07 $00
    ld c, $00                                     ; $5894: $0E $00
    inc c                                         ; $5896: $0C
    nop                                           ; $5897: $00
    ld [$1000], sp                                ; $5898: $08 $00 $10
    nop                                           ; $589B: $00
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
    ld c, e                                       ; $58A0: $4B
    add a                                         ; $58A1: $87
    rlca                                          ; $58A2: $07
    inc bc                                        ; $58A3: $03
    ld bc, $0303                                  ; $58A4: $01 $03 $03
    ld bc, $0001                                  ; $58A7: $01 $01 $00
    ld bc, $0000                                  ; $58AA: $01 $00 $00
    nop                                           ; $58AD: $00
    nop                                           ; $58AE: $00
    nop                                           ; $58AF: $00
    nop                                           ; $58B0: $00
    nop                                           ; $58B1: $00
    nop                                           ; $58B2: $00
    nop                                           ; $58B3: $00
    nop                                           ; $58B4: $00
    nop                                           ; $58B5: $00
    ld a, [bc]                                    ; $58B6: $0A
    nop                                           ; $58B7: $00
    and $00                                       ; $58B8: $E6 $00
    ld a, [hl+]                                   ; $58BA: $2A
    call nz, $84FA                                ; $58BB: $C4 $FA $84
    ret nc                                        ; $58BE: $D0

    xor h                                         ; $58BF: $AC
    ld bc, $0100                                  ; $58C0: $01 $00 $01
    nop                                           ; $58C3: $00
    ld bc, $1100                                  ; $58C4: $01 $00 $11

jr_041_58C7:
    nop                                           ; $58C7: $00
    ld [bc], a                                    ; $58C8: $02
    ld bc, $0304                                  ; $58C9: $01 $04 $03
    inc bc                                        ; $58CC: $03
    nop                                           ; $58CD: $00
    ld bc, $0700                                  ; $58CE: $01 $00 $07
    nop                                           ; $58D1: $00
    ld [bc], a                                    ; $58D2: $02
    ld bc, $0001                                  ; $58D3: $01 $01 $00
    nop                                           ; $58D6: $00
    nop                                           ; $58D7: $00
    ld bc, $0100                                  ; $58D8: $01 $00 $01
    nop                                           ; $58DB: $00
    nop                                           ; $58DC: $00
    nop                                           ; $58DD: $00
    nop                                           ; $58DE: $00
    nop                                           ; $58DF: $00
    ld b, b                                       ; $58E0: $40
    db $FC                                        ; $58E1: $FC
    ret nc                                        ; $58E2: $D0

    db $FC                                        ; $58E3: $FC
    ld h, b                                       ; $58E4: $60
    db $FC                                        ; $58E5: $FC
    cp $7C                                        ; $58E6: $FE $7C
    db $DD                                        ; $58E8: $DD
    ld a, $57                                     ; $58E9: $3E $57
    rrca                                          ; $58EB: $0F
    ld c, $01                                     ; $58EC: $0E $01
    dec bc                                        ; $58EE: $0B
    inc b                                         ; $58EF: $04
    inc b                                         ; $58F0: $04
    nop                                           ; $58F1: $00
    ld b, $00                                     ; $58F2: $06 $00
    ld b, $00                                     ; $58F4: $06 $00
    ld b, $00                                     ; $58F6: $06 $00
    ld b, $00                                     ; $58F8: $06 $00
    sbc e                                         ; $58FA: $9B
    db $E4                                        ; $58FB: $E4
    cp $1F                                        ; $58FC: $FE $1F
    pop hl                                        ; $58FE: $E1
    rrca                                          ; $58FF: $0F
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590A: $00
    nop                                           ; $590B: $00
    rrca                                          ; $590C: $0F
    ldh a, [rSCX]                                 ; $590D: $F0 $43
    cp h                                          ; $590F: $BC
    inc c                                         ; $5910: $0C
    inc bc                                        ; $5911: $03
    ld a, [bc]                                    ; $5912: $0A
    dec b                                         ; $5913: $05
    rra                                           ; $5914: $1F
    nop                                           ; $5915: $00
    ld [rRAMG], sp                                ; $5916: $08 $00 $00
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    nop                                           ; $591B: $00
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    nop                                           ; $591F: $00
    ret z                                         ; $5920: $C8

    rlca                                          ; $5921: $07
    ret                                           ; $5922: $C9


    ld b, $04                                     ; $5923: $06 $04
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592A: $00
    nop                                           ; $592B: $00
    nop                                           ; $592C: $00
    nop                                           ; $592D: $00
    nop                                           ; $592E: $00
    nop                                           ; $592F: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    jr jr_041_593C                                ; $593A: $18 $00

jr_041_593C:
    ld h, b                                       ; $593C: $60
    nop                                           ; $593D: $00
    add b                                         ; $593E: $80
    nop                                           ; $593F: $00
    dec b                                         ; $5940: $05
    nop                                           ; $5941: $00
    rlca                                          ; $5942: $07
    nop                                           ; $5943: $00
    rlca                                          ; $5944: $07
    nop                                           ; $5945: $00
    rlca                                          ; $5946: $07
    nop                                           ; $5947: $00
    inc bc                                        ; $5948: $03
    ld [bc], a                                    ; $5949: $02
    inc bc                                        ; $594A: $03
    ld bc, $0100                                  ; $594B: $01 $00 $01
    nop                                           ; $594E: $00
    nop                                           ; $594F: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    ret nz                                        ; $5954: $C0

    nop                                           ; $5955: $00
    ldh [rP1], a                                  ; $5956: $E0 $00
    ldh a, [rP1]                                  ; $5958: $F0 $00
    sbc h                                         ; $595A: $9C
    ld h, b                                       ; $595B: $60
    scf                                           ; $595C: $37
    ret z                                         ; $595D: $C8

    sub l                                         ; $595E: $95
    ld l, d                                       ; $595F: $6A
    ld h, a                                       ; $5960: $67
    jr jr_041_59A1                                ; $5961: $18 $3E

    rlca                                          ; $5963: $07
    ld b, $01                                     ; $5964: $06 $01
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596A: $00
    nop                                           ; $596B: $00
    nop                                           ; $596C: $00
    nop                                           ; $596D: $00
    nop                                           ; $596E: $00
    nop                                           ; $596F: $00
    ld a, a                                       ; $5970: $7F
    add b                                         ; $5971: $80
    ld b, $F9                                     ; $5972: $06 $F9
    ld l, b                                       ; $5974: $68
    rst $38                                       ; $5975: $FF
    ld a, e                                       ; $5976: $7B
    inc b                                         ; $5977: $04
    ld b, $00                                     ; $5978: $06 $00
    nop                                           ; $597A: $00
    nop                                           ; $597B: $00
    nop                                           ; $597C: $00
    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    nop                                           ; $597F: $00
    call c, $0323                                 ; $5980: $DC $23 $03
    db $FC                                        ; $5983: $FC
    ldh [rIE], a                                  ; $5984: $E0 $FF
    ld sp, hl                                     ; $5986: $F9
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598A: $00
    nop                                           ; $598B: $00
    nop                                           ; $598C: $00
    nop                                           ; $598D: $00
    nop                                           ; $598E: $00
    nop                                           ; $598F: $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    jr nz, jr_041_599C                            ; $599A: $20 $00

jr_041_599C:
    inc e                                         ; $599C: $1C
    inc bc                                        ; $599D: $03
    ld de, $0C0E                                  ; $599E: $11 $0E $0C

jr_041_59A1:
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    inc b                                         ; $59A3: $04
    nop                                           ; $59A4: $00
    inc b                                         ; $59A5: $04
    inc c                                         ; $59A6: $0C
    nop                                           ; $59A7: $00
    jr jr_041_59AA                                ; $59A8: $18 $00

jr_041_59AA:
    jr nc, jr_041_59AC                            ; $59AA: $30 $00

jr_041_59AC:
    ldh [rP1], a                                  ; $59AC: $E0 $00
    add b                                         ; $59AE: $80
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    nop                                           ; $59B1: $00
    nop                                           ; $59B2: $00
    nop                                           ; $59B3: $00
    ld bc, $1E00                                  ; $59B4: $01 $00 $1E
    nop                                           ; $59B7: $00
    ld h, b                                       ; $59B8: $60
    nop                                           ; $59B9: $00
    add e                                         ; $59BA: $83
    nop                                           ; $59BB: $00
    jr nc, jr_041_59CD                            ; $59BC: $30 $0F

    adc a                                         ; $59BE: $8F
    ld [hl], b                                    ; $59BF: $70
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    nop                                           ; $59C2: $00
    nop                                           ; $59C3: $00
    db $FC                                        ; $59C4: $FC
    nop                                           ; $59C5: $00
    rlca                                          ; $59C6: $07
    nop                                           ; $59C7: $00
    ld a, c                                       ; $59C8: $79
    nop                                           ; $59C9: $00
    ld b, $FF                                     ; $59CA: $06 $FF
    nop                                           ; $59CC: $00

jr_041_59CD:
    rst $38                                       ; $59CD: $FF
    ld [bc], a                                    ; $59CE: $02
    rst $38                                       ; $59CF: $FF
    nop                                           ; $59D0: $00
    nop                                           ; $59D1: $00
    nop                                           ; $59D2: $00
    nop                                           ; $59D3: $00
    nop                                           ; $59D4: $00
    nop                                           ; $59D5: $00
    nop                                           ; $59D6: $00
    nop                                           ; $59D7: $00
    ret nz                                        ; $59D8: $C0

    nop                                           ; $59D9: $00
    jr nz, jr_041_599C                            ; $59DA: $20 $C0

    db $10                                        ; $59DC: $10
    ldh [rBCPS], a                                ; $59DD: $E0 $68
    ldh a, [rDIV]                                 ; $59DF: $F0 $04
    inc bc                                        ; $59E1: $03
    rla                                           ; $59E2: $17
    ld [$1E21], sp                                ; $59E3: $08 $21 $1E
    inc e                                         ; $59E6: $1C
    jr nz, jr_041_59E9                            ; $59E7: $20 $00

jr_041_59E9:
    jr nz, jr_041_5A0B                            ; $59E9: $20 $20

    nop                                           ; $59EB: $00
    stop                                          ; $59EC: $10 $00
    ld [$F100], sp                                ; $59EE: $08 $00 $F1
    ld c, $1F                                     ; $59F1: $0E $1F
    ldh [$80], a                                  ; $59F3: $E0 $80
    nop                                           ; $59F5: $00
    nop                                           ; $59F6: $00
    nop                                           ; $59F7: $00
    nop                                           ; $59F8: $00
    nop                                           ; $59F9: $00
    nop                                           ; $59FA: $00
    nop                                           ; $59FB: $00
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    rst $38                                       ; $5A00: $FF
    nop                                           ; $5A01: $00
    ld hl, sp+$00                                 ; $5A02: $F8 $00
    ld h, c                                       ; $5A04: $61
    ld e, $79                                     ; $5A05: $1E $79
    rlca                                          ; $5A07: $07
    ld [hl], c                                    ; $5A08: $71
    rlca                                          ; $5A09: $07
    add hl, sp                                    ; $5A0A: $39

jr_041_5A0B:
    rlca                                          ; $5A0B: $07
    ld [hl], e                                    ; $5A0C: $73
    adc a                                         ; $5A0D: $8F

jr_041_5A0E:
    ld l, $DF                                     ; $5A0E: $2E $DF
    jr nc, jr_041_5A0E                            ; $5A10: $30 $FC

    ld e, d                                       ; $5A12: $5A
    inc a                                         ; $5A13: $3C
    ld l, d                                       ; $5A14: $6A
    inc e                                         ; $5A15: $1C
    cp [hl]                                       ; $5A16: $BE
    jr jr_041_59E9                                ; $5A17: $18 $D0

    jr c, jr_041_5A1F                             ; $5A19: $38 $04

    ldh a, [rNR23]                                ; $5A1B: $F0 $18
    ldh [$30], a                                  ; $5A1D: $E0 $30

jr_041_5A1F:
    ret nz                                        ; $5A1F: $C0

    ld bc, $0200                                  ; $5A20: $01 $00 $02
    ld bc, $0305                                  ; $5A23: $01 $05 $03
    rlca                                          ; $5A26: $07
    rrca                                          ; $5A27: $0F
    cpl                                           ; $5A28: $2F
    rra                                           ; $5A29: $1F
    ld c, c                                       ; $5A2A: $49
    ld a, $46                                     ; $5A2B: $3E $46
    jr c, jr_041_5A2F                             ; $5A2D: $38 $00

jr_041_5A2F:
    nop                                           ; $5A2F: $00
    dec e                                         ; $5A30: $1D
    cp $FF                                        ; $5A31: $FE $FF
    ld hl, sp-$11                                 ; $5A33: $F8 $EF
    ldh a, [$DE]                                  ; $5A35: $F0 $DE
    ldh [rNR41], a                                ; $5A37: $E0 $20
    ret nz                                        ; $5A39: $C0

    nop                                           ; $5A3A: $00
    nop                                           ; $5A3B: $00
    nop                                           ; $5A3C: $00
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    ldh [rP1], a                                  ; $5A40: $E0 $00
    ret nz                                        ; $5A42: $C0

    nop                                           ; $5A43: $00
    add b                                         ; $5A44: $80
    nop                                           ; $5A45: $00
    nop                                           ; $5A46: $00
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    nop                                           ; $5A4C: $00
    nop                                           ; $5A4D: $00
    nop                                           ; $5A4E: $00
    nop                                           ; $5A4F: $00
    ld bc, $7F00                                  ; $5A50: $01 $00 $7F
    nop                                           ; $5A53: $00
    nop                                           ; $5A54: $00
    nop                                           ; $5A55: $00
    nop                                           ; $5A56: $00
    nop                                           ; $5A57: $00
    nop                                           ; $5A58: $00
    nop                                           ; $5A59: $00
    nop                                           ; $5A5A: $00
    nop                                           ; $5A5B: $00
    nop                                           ; $5A5C: $00
    nop                                           ; $5A5D: $00
    nop                                           ; $5A5E: $00
    nop                                           ; $5A5F: $00
    db $FC                                        ; $5A60: $FC
    nop                                           ; $5A61: $00
    add b                                         ; $5A62: $80
    ld a, a                                       ; $5A63: $7F
    inc bc                                        ; $5A64: $03
    nop                                           ; $5A65: $00
    nop                                           ; $5A66: $00
    nop                                           ; $5A67: $00
    nop                                           ; $5A68: $00
    nop                                           ; $5A69: $00
    nop                                           ; $5A6A: $00
    nop                                           ; $5A6B: $00
    nop                                           ; $5A6C: $00
    nop                                           ; $5A6D: $00
    nop                                           ; $5A6E: $00
    nop                                           ; $5A6F: $00
    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00
    ld b, b                                       ; $5A72: $40
    add b                                         ; $5A73: $80
    nop                                           ; $5A74: $00
    ldh a, [$A0]                                  ; $5A75: $F0 $A0
    inc e                                         ; $5A77: $1C
    ld b, c                                       ; $5A78: $41
    ld c, $0B                                     ; $5A79: $0E $0B
    inc b                                         ; $5A7B: $04
    ld bc, $0202                                  ; $5A7C: $01 $02 $02
    ld bc, $0000                                  ; $5A7F: $01 $00 $00
    nop                                           ; $5A82: $00
    nop                                           ; $5A83: $00
    nop                                           ; $5A84: $00
    nop                                           ; $5A85: $00
    nop                                           ; $5A86: $00
    nop                                           ; $5A87: $00
    inc bc                                        ; $5A88: $03
    nop                                           ; $5A89: $00
    dec de                                        ; $5A8A: $1B
    rlca                                          ; $5A8B: $07
    ld h, l                                       ; $5A8C: $65
    ld e, $94                                     ; $5A8D: $1E $94
    ld a, a                                       ; $5A8F: $7F
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    nop                                           ; $5A92: $00
    nop                                           ; $5A93: $00
    nop                                           ; $5A94: $00
    nop                                           ; $5A95: $00
    jr z, jr_041_5AA8                             ; $5A96: $28 $10

    nop                                           ; $5A98: $00
    ldh [rLCDC], a                                ; $5A99: $E0 $40
    add b                                         ; $5A9B: $80
    nop                                           ; $5A9C: $00
    nop                                           ; $5A9D: $00
    ret nz                                        ; $5A9E: $C0

    nop                                           ; $5A9F: $00
    nop                                           ; $5AA0: $00
    nop                                           ; $5AA1: $00
    nop                                           ; $5AA2: $00
    nop                                           ; $5AA3: $00
    nop                                           ; $5AA4: $00
    nop                                           ; $5AA5: $00
    nop                                           ; $5AA6: $00
    nop                                           ; $5AA7: $00

jr_041_5AA8:
    nop                                           ; $5AA8: $00
    nop                                           ; $5AA9: $00
    ld bc, $0000                                  ; $5AAA: $01 $00 $00
    inc bc                                        ; $5AAD: $03
    sbc b                                         ; $5AAE: $98
    rlca                                          ; $5AAF: $07
    ld [bc], a                                    ; $5AB0: $02
    ld bc, $0304                                  ; $5AB1: $01 $04 $03
    ld [$1006], sp                                ; $5AB4: $08 $06 $10
    inc c                                         ; $5AB7: $0C
    inc h                                         ; $5AB8: $24
    jr jr_041_5AFB                                ; $5AB9: $18 $40

    jr nc, jr_041_5ABD                            ; $5ABB: $30 $00

jr_041_5ABD:
    ldh a, [$A0]                                  ; $5ABD: $F0 $A0
    ret nz                                        ; $5ABF: $C0

    ld [hl], l                                    ; $5AC0: $75
    ld hl, sp-$05                                 ; $5AC1: $F8 $FB
    db $FC                                        ; $5AC3: $FC
    rst $38                                       ; $5AC4: $FF
    rst $38                                       ; $5AC5: $FF
    ld a, a                                       ; $5AC6: $7F
    rst $38                                       ; $5AC7: $FF
    rst $38                                       ; $5AC8: $FF
    ccf                                           ; $5AC9: $3F
    and a                                         ; $5ACA: $A7
    rra                                           ; $5ACB: $1F
    inc bc                                        ; $5ACC: $03
    nop                                           ; $5ACD: $00
    nop                                           ; $5ACE: $00
    nop                                           ; $5ACF: $00
    db $10                                        ; $5AD0: $10
    rst $28                                       ; $5AD1: $EF
    add $3F                                       ; $5AD2: $C6 $3F
    rst $38                                       ; $5AD4: $FF
    rst $38                                       ; $5AD5: $FF
    db $FC                                        ; $5AD6: $FC
    rst $38                                       ; $5AD7: $FF
    xor $F1                                       ; $5AD8: $EE $F1
    rlca                                          ; $5ADA: $07
    rst $38                                       ; $5ADB: $FF
    db $E3                                        ; $5ADC: $E3
    inc e                                         ; $5ADD: $1C
    jr jr_041_5AE0                                ; $5ADE: $18 $00

jr_041_5AE0:
    dec e                                         ; $5AE0: $1D
    rst $38                                       ; $5AE1: $FF
    ldh a, [rIE]                                  ; $5AE2: $F0 $FF
    jp nc, $C4EC                                  ; $5AE4: $D2 $EC $C4

    jr c, jr_041_5AF1                             ; $5AE7: $38 $08

    ldh a, [rNR41]                                ; $5AE9: $F0 $20
    ret nz                                        ; $5AEB: $C0

    nop                                           ; $5AEC: $00
    nop                                           ; $5AED: $00
    nop                                           ; $5AEE: $00
    nop                                           ; $5AEF: $00
    nop                                           ; $5AF0: $00

jr_041_5AF1:
    nop                                           ; $5AF1: $00
    nop                                           ; $5AF2: $00
    nop                                           ; $5AF3: $00
    inc b                                         ; $5AF4: $04
    nop                                           ; $5AF5: $00
    add hl, bc                                    ; $5AF6: $09
    nop                                           ; $5AF7: $00
    ld e, $00                                     ; $5AF8: $1E $00
    dec a                                         ; $5AFA: $3D

jr_041_5AFB:
    nop                                           ; $5AFB: $00
    dec de                                        ; $5AFC: $1B
    jr nz, jr_041_5B07                            ; $5AFD: $20 $08

    inc sp                                        ; $5AFF: $33
    nop                                           ; $5B00: $00
    nop                                           ; $5B01: $00
    inc c                                         ; $5B02: $0C
    nop                                           ; $5B03: $00
    add hl, sp                                    ; $5B04: $39
    nop                                           ; $5B05: $00
    pop hl                                        ; $5B06: $E1

jr_041_5B07:
    inc bc                                        ; $5B07: $03
    ld c, [hl]                                    ; $5B08: $4E
    rlca                                          ; $5B09: $07
    and h                                         ; $5B0A: $A4
    ld e, $B6                                     ; $5B0B: $1E $B6
    ld l, h                                       ; $5B0D: $6C
    db $10                                        ; $5B0E: $10
    db $EC                                        ; $5B0F: $EC
    rlca                                          ; $5B10: $07
    nop                                           ; $5B11: $00
    ld b, [hl]                                    ; $5B12: $46
    jr c, jr_041_5B25                             ; $5B13: $38 $10

    ldh [rLCDC], a                                ; $5B15: $E0 $40
    add b                                         ; $5B17: $80

jr_041_5B18:
    nop                                           ; $5B18: $00
    nop                                           ; $5B19: $00
    nop                                           ; $5B1A: $00
    nop                                           ; $5B1B: $00
    nop                                           ; $5B1C: $00
    nop                                           ; $5B1D: $00
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00
    nop                                           ; $5B20: $00
    nop                                           ; $5B21: $00
    nop                                           ; $5B22: $00
    nop                                           ; $5B23: $00
    inc c                                         ; $5B24: $0C

jr_041_5B25:
    nop                                           ; $5B25: $00
    inc b                                         ; $5B26: $04
    nop                                           ; $5B27: $00
    ld e, $00                                     ; $5B28: $1E $00
    inc c                                         ; $5B2A: $0C
    ld [bc], a                                    ; $5B2B: $02
    dec c                                         ; $5B2C: $0D
    ld [bc], a                                    ; $5B2D: $02
    ld a, [bc]                                    ; $5B2E: $0A
    dec b                                         ; $5B2F: $05
    ld c, c                                       ; $5B30: $49
    scf                                           ; $5B31: $37
    ld [hl], a                                    ; $5B32: $77
    ld l, $6B                                     ; $5B33: $2E $6B
    inc a                                         ; $5B35: $3C
    halt                                          ; $5B36: $76
    add hl, sp                                    ; $5B37: $39
    ld a, [hl]                                    ; $5B38: $7E
    add hl, sp                                    ; $5B39: $39
    dec de                                        ; $5B3A: $1B
    dec a                                         ; $5B3B: $3D
    dec e                                         ; $5B3C: $1D
    ccf                                           ; $5B3D: $3F
    ld h, $1F                                     ; $5B3E: $26 $1F
    adc h                                         ; $5B40: $8C
    ld h, b                                       ; $5B41: $60
    and b                                         ; $5B42: $A0
    ld b, b                                       ; $5B43: $40
    ld h, b                                       ; $5B44: $60
    add b                                         ; $5B45: $80
    and b                                         ; $5B46: $A0
    nop                                           ; $5B47: $00
    and b                                         ; $5B48: $A0
    nop                                           ; $5B49: $00
    or b                                          ; $5B4A: $B0
    nop                                           ; $5B4B: $00
    ld [hl], b                                    ; $5B4C: $70
    add b                                         ; $5B4D: $80
    cp b                                          ; $5B4E: $B8
    ret nz                                        ; $5B4F: $C0

    nop                                           ; $5B50: $00
    nop                                           ; $5B51: $00
    nop                                           ; $5B52: $00

jr_041_5B53:
    nop                                           ; $5B53: $00
    nop                                           ; $5B54: $00
    nop                                           ; $5B55: $00
    nop                                           ; $5B56: $00
    nop                                           ; $5B57: $00
    nop                                           ; $5B58: $00
    nop                                           ; $5B59: $00
    ld [bc], a                                    ; $5B5A: $02
    ld bc, $0703                                  ; $5B5B: $01 $03 $07
    ld l, $1F                                     ; $5B5E: $2E $1F
    nop                                           ; $5B60: $00
    rrca                                          ; $5B61: $0F
    db $10                                        ; $5B62: $10
    rrca                                          ; $5B63: $0F
    inc h                                         ; $5B64: $24
    dec de                                        ; $5B65: $1B
    ld c, h                                       ; $5B66: $4C
    inc sp                                        ; $5B67: $33
    ld de, $AAE6                                  ; $5B68: $11 $E6 $AA
    call nz, $8C70                                ; $5B6B: $C4 $70 $8C
    and h                                         ; $5B6E: $A4
    jr jr_041_5B18                                ; $5B6F: $18 $A7

    rra                                           ; $5B71: $1F
    sub e                                         ; $5B72: $93
    ld l, a                                       ; $5B73: $6F
    ld h, b                                       ; $5B74: $60
    rra                                           ; $5B75: $1F
    inc c                                         ; $5B76: $0C
    inc bc                                        ; $5B77: $03
    nop                                           ; $5B78: $00
    nop                                           ; $5B79: $00
    nop                                           ; $5B7A: $00
    nop                                           ; $5B7B: $00
    nop                                           ; $5B7C: $00
    nop                                           ; $5B7D: $00
    nop                                           ; $5B7E: $00
    nop                                           ; $5B7F: $00
    call nc, $F9E8                                ; $5B80: $D4 $E8 $F9
    cp $FF                                        ; $5B83: $FE $FF
    rst $38                                       ; $5B85: $FF

jr_041_5B86:
    ccf                                           ; $5B86: $3F
    rst $38                                       ; $5B87: $FF
    ld h, e                                       ; $5B88: $63
    rra                                           ; $5B89: $1F
    ld e, $01                                     ; $5B8A: $1E $01
    inc c                                         ; $5B8C: $0C
    inc bc                                        ; $5B8D: $03
    ld [bc], a                                    ; $5B8E: $02
    ld bc, $0000                                  ; $5B8F: $01 $00 $00
    nop                                           ; $5B92: $00
    nop                                           ; $5B93: $00
    add b                                         ; $5B94: $80
    rst $38                                       ; $5B95: $FF
    rst $38                                       ; $5B96: $FF
    rst $38                                       ; $5B97: $FF
    rst $38                                       ; $5B98: $FF
    rst $38                                       ; $5B99: $FF
    ld a, a                                       ; $5B9A: $7F
    rst $38                                       ; $5B9B: $FF
    nop                                           ; $5B9C: $00
    rst $38                                       ; $5B9D: $FF
    ld bc, $01FE                                  ; $5B9E: $01 $FE $01
    nop                                           ; $5BA1: $00
    inc de                                        ; $5BA2: $13
    rrca                                          ; $5BA3: $0F
    ld a, a                                       ; $5BA4: $7F
    rst $38                                       ; $5BA5: $FF
    cp $FF                                        ; $5BA6: $FE $FF
    di                                            ; $5BA8: $F3
    db $FC                                        ; $5BA9: $FC
    jp $07FF                                      ; $5BAA: $C3 $FF $07


    ld hl, sp-$20                                 ; $5BAD: $F8 $E0
    nop                                           ; $5BAF: $00
    ld a, $FC                                     ; $5BB0: $3E $FC
    push af                                       ; $5BB2: $F5
    ld hl, sp-$3A                                 ; $5BB3: $F8 $C6
    pop hl                                        ; $5BB5: $E1
    sub c                                         ; $5BB6: $91
    ld c, $81                                     ; $5BB7: $0E $81
    ld a, [hl]                                    ; $5BB9: $7E
    adc b                                         ; $5BBA: $88
    ldh a, [$C0]                                  ; $5BBB: $F0 $C0
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    ld c, b                                       ; $5BC0: $48
    jr nc, jr_041_5B53                            ; $5BC1: $30 $90

    ld h, b                                       ; $5BC3: $60
    jr nz, jr_041_5B86                            ; $5BC4: $20 $C0

jr_041_5BC6:
    add b                                         ; $5BC6: $80
    nop                                           ; $5BC7: $00
    nop                                           ; $5BC8: $00
    nop                                           ; $5BC9: $00
    nop                                           ; $5BCA: $00
    nop                                           ; $5BCB: $00
    nop                                           ; $5BCC: $00
    nop                                           ; $5BCD: $00
    nop                                           ; $5BCE: $00
    nop                                           ; $5BCF: $00
    nop                                           ; $5BD0: $00
    nop                                           ; $5BD1: $00
    nop                                           ; $5BD2: $00
    nop                                           ; $5BD3: $00
    nop                                           ; $5BD4: $00
    nop                                           ; $5BD5: $00
    nop                                           ; $5BD6: $00
    nop                                           ; $5BD7: $00
    nop                                           ; $5BD8: $00
    nop                                           ; $5BD9: $00
    nop                                           ; $5BDA: $00
    nop                                           ; $5BDB: $00
    ld bc, $0500                                  ; $5BDC: $01 $00 $05
    inc bc                                        ; $5BDF: $03
    nop                                           ; $5BE0: $00
    nop                                           ; $5BE1: $00
    nop                                           ; $5BE2: $00
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    nop                                           ; $5BE6: $00
    nop                                           ; $5BE7: $00
    inc b                                         ; $5BE8: $04
    inc bc                                        ; $5BE9: $03
    inc h                                         ; $5BEA: $24
    rra                                           ; $5BEB: $1F
    jr nz, @+$01                                  ; $5BEC: $20 $FF

    add b                                         ; $5BEE: $80
    rst $38                                       ; $5BEF: $FF
    nop                                           ; $5BF0: $00
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    nop                                           ; $5BF3: $00
    ld [$8107], sp                                ; $5BF4: $08 $07 $81
    ld a, [hl]                                    ; $5BF7: $7E
    ld sp, $F1C0                                  ; $5BF8: $31 $C0 $F1
    ld c, $0E                                     ; $5BFB: $0E $0E
    ldh a, [$60]                                  ; $5BFD: $F0 $60
    add b                                         ; $5BFF: $80
    rlca                                          ; $5C00: $07
    nop                                           ; $5C01: $00
    add $38                                       ; $5C02: $C6 $38
    jr nc, jr_041_5BC6                            ; $5C04: $30 $C0

    sbc [hl]                                      ; $5C06: $9E
    nop                                           ; $5C07: $00
    ldh [rP1], a                                  ; $5C08: $E0 $00
    nop                                           ; $5C0A: $00
    nop                                           ; $5C0B: $00
    nop                                           ; $5C0C: $00
    nop                                           ; $5C0D: $00
    nop                                           ; $5C0E: $00
    nop                                           ; $5C0F: $00
    nop                                           ; $5C10: $00
    nop                                           ; $5C11: $00
    nop                                           ; $5C12: $00
    nop                                           ; $5C13: $00
    nop                                           ; $5C14: $00
    nop                                           ; $5C15: $00
    ld bc, $0200                                  ; $5C16: $01 $00 $02
    ld bc, $0703                                  ; $5C19: $01 $03 $07
    ld b, $0F                                     ; $5C1C: $06 $0F
    rra                                           ; $5C1E: $1F
    rrca                                          ; $5C1F: $0F
    db $10                                        ; $5C20: $10
    rrca                                          ; $5C21: $0F
    ld h, a                                       ; $5C22: $67
    rra                                           ; $5C23: $1F
    rst $18                                       ; $5C24: $DF
    ccf                                           ; $5C25: $3F
    ld a, c                                       ; $5C26: $79
    cp $C4                                        ; $5C27: $FE $C4
    ld hl, sp-$78                                 ; $5C29: $F8 $88
    ldh a, [$E0]                                  ; $5C2B: $F0 $E0
    ret nz                                        ; $5C2D: $C0

    ld b, b                                       ; $5C2E: $40
    add b                                         ; $5C2F: $80
    or b                                          ; $5C30: $B0
    rst $38                                       ; $5C31: $FF
    call z, Call_041_40F0                         ; $5C32: $CC $F0 $40
    add b                                         ; $5C35: $80
    nop                                           ; $5C36: $00
    nop                                           ; $5C37: $00
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    nop                                           ; $5C3A: $00
    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    ld c, $1F                                     ; $5C40: $0E $1F
    inc a                                         ; $5C42: $3C
    ld e, $1E                                     ; $5C43: $1E $1E
    inc a                                         ; $5C45: $3C
    jr c, jr_041_5CC4                             ; $5C46: $38 $7C

    sbc b                                         ; $5C48: $98
    ld a, h                                       ; $5C49: $7C
    sbc [hl]                                      ; $5C4A: $9E
    ld a, h                                       ; $5C4B: $7C
    cp c                                          ; $5C4C: $B9
    ld e, [hl]                                    ; $5C4D: $5E
    dec h                                         ; $5C4E: $25
    sbc $E2                                       ; $5C4F: $DE $E2
    rra                                           ; $5C51: $1F
    sub $09                                       ; $5C52: $D6 $09
    cp c                                          ; $5C54: $B9
    ld b, [hl]                                    ; $5C55: $46
    ld a, [hl]                                    ; $5C56: $7E
    inc bc                                        ; $5C57: $03
    jr nz, jr_041_5C79                            ; $5C58: $20 $1F

    inc bc                                        ; $5C5A: $03
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    nop                                           ; $5C5F: $00
    ldh a, [rP1]                                  ; $5C60: $F0 $00
    rlca                                          ; $5C62: $07
    ld hl, sp-$40                                 ; $5C63: $F8 $C0
    nop                                           ; $5C65: $00
    ld [hl], b                                    ; $5C66: $70
    add b                                         ; $5C67: $80
    di                                            ; $5C68: $F3
    db $FC                                        ; $5C69: $FC
    rra                                           ; $5C6A: $1F
    rst $38                                       ; $5C6B: $FF
    dec c                                         ; $5C6C: $0D
    inc bc                                        ; $5C6D: $03

jr_041_5C6E:
    nop                                           ; $5C6E: $00
    nop                                           ; $5C6F: $00
    nop                                           ; $5C70: $00
    nop                                           ; $5C71: $00
    nop                                           ; $5C72: $00
    nop                                           ; $5C73: $00
    nop                                           ; $5C74: $00
    nop                                           ; $5C75: $00
    nop                                           ; $5C76: $00
    nop                                           ; $5C77: $00
    cp a                                          ; $5C78: $BF

jr_041_5C79:
    nop                                           ; $5C79: $00
    ldh [rIE], a                                  ; $5C7A: $E0 $FF
    db $FC                                        ; $5C7C: $FC
    rst $38                                       ; $5C7D: $FF
    ld a, $00                                     ; $5C7E: $3E $00
    nop                                           ; $5C80: $00
    nop                                           ; $5C81: $00
    nop                                           ; $5C82: $00
    nop                                           ; $5C83: $00
    nop                                           ; $5C84: $00
    nop                                           ; $5C85: $00
    nop                                           ; $5C86: $00
    nop                                           ; $5C87: $00
    nop                                           ; $5C88: $00
    nop                                           ; $5C89: $00
    ld h, b                                       ; $5C8A: $60
    add b                                         ; $5C8B: $80
    jr jr_041_5C6E                                ; $5C8C: $18 $E0

    nop                                           ; $5C8E: $00
    nop                                           ; $5C8F: $00
    nop                                           ; $5C90: $00
    nop                                           ; $5C91: $00
    nop                                           ; $5C92: $00
    nop                                           ; $5C93: $00
    nop                                           ; $5C94: $00
    nop                                           ; $5C95: $00
    nop                                           ; $5C96: $00
    nop                                           ; $5C97: $00
    nop                                           ; $5C98: $00
    nop                                           ; $5C99: $00
    inc bc                                        ; $5C9A: $03
    nop                                           ; $5C9B: $00
    ld b, $00                                     ; $5C9C: $06 $00
    jr jr_041_5CA0                                ; $5C9E: $18 $00

jr_041_5CA0:
    nop                                           ; $5CA0: $00
    nop                                           ; $5CA1: $00
    nop                                           ; $5CA2: $00
    nop                                           ; $5CA3: $00
    nop                                           ; $5CA4: $00
    nop                                           ; $5CA5: $00
    rlca                                          ; $5CA6: $07
    nop                                           ; $5CA7: $00
    ldh [$1F], a                                  ; $5CA8: $E0 $1F
    ld a, a                                       ; $5CAA: $7F
    add b                                         ; $5CAB: $80
    nop                                           ; $5CAC: $00
    nop                                           ; $5CAD: $00
    nop                                           ; $5CAE: $00
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    nop                                           ; $5CB1: $00
    nop                                           ; $5CB2: $00
    nop                                           ; $5CB3: $00
    nop                                           ; $5CB4: $00
    nop                                           ; $5CB5: $00
    ret nz                                        ; $5CB6: $C0

    nop                                           ; $5CB7: $00
    db $10                                        ; $5CB8: $10
    ldh [$FC], a                                  ; $5CB9: $E0 $FC
    nop                                           ; $5CBB: $00
    ld e, $00                                     ; $5CBC: $1E $00
    rlca                                          ; $5CBE: $07
    nop                                           ; $5CBF: $00
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    nop                                           ; $5CC3: $00

jr_041_5CC4:
    inc bc                                        ; $5CC4: $03
    nop                                           ; $5CC5: $00
    ld b, $00                                     ; $5CC6: $06 $00
    inc d                                         ; $5CC8: $14
    ld [$0030], sp                                ; $5CC9: $08 $30 $00
    ld b, b                                       ; $5CCC: $40
    nop                                           ; $5CCD: $00
    add b                                         ; $5CCE: $80
    nop                                           ; $5CCF: $00
    ld h, b                                       ; $5CD0: $60
    nop                                           ; $5CD1: $00
    ret nz                                        ; $5CD2: $C0

    nop                                           ; $5CD3: $00
    nop                                           ; $5CD4: $00
    nop                                           ; $5CD5: $00
    nop                                           ; $5CD6: $00
    nop                                           ; $5CD7: $00
    ld bc, $0100                                  ; $5CD8: $01 $00 $01
    nop                                           ; $5CDB: $00
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00
    nop                                           ; $5CDF: $00
    nop                                           ; $5CE0: $00
    nop                                           ; $5CE1: $00
    stop                                          ; $5CE2: $10 $00
    ld h, b                                       ; $5CE4: $60
    nop                                           ; $5CE5: $00
    add b                                         ; $5CE6: $80
    nop                                           ; $5CE7: $00
    nop                                           ; $5CE8: $00
    nop                                           ; $5CE9: $00
    add b                                         ; $5CEA: $80
    nop                                           ; $5CEB: $00
    ret nz                                        ; $5CEC: $C0

    nop                                           ; $5CED: $00
    ld [hl], b                                    ; $5CEE: $70
    rrca                                          ; $5CEF: $0F
    ld [bc], a                                    ; $5CF0: $02
    ld bc, $0102                                  ; $5CF1: $01 $02 $01
    ld [bc], a                                    ; $5CF4: $02
    ld bc, $0201                                  ; $5CF5: $01 $01 $02
    inc b                                         ; $5CF8: $04
    ld [bc], a                                    ; $5CF9: $02
    ld [hl], d                                    ; $5CFA: $72
    inc c                                         ; $5CFB: $0C
    ret nz                                        ; $5CFC: $C0

    jr c, jr_041_5D1F                             ; $5CFD: $38 $20

    ret nz                                        ; $5CFF: $C0

    nop                                           ; $5D00: $00
    nop                                           ; $5D01: $00
    nop                                           ; $5D02: $00
    nop                                           ; $5D03: $00
    nop                                           ; $5D04: $00
    nop                                           ; $5D05: $00
    nop                                           ; $5D06: $00
    nop                                           ; $5D07: $00
    ld bc, $0000                                  ; $5D08: $01 $00 $00
    ld bc, $0301                                  ; $5D0B: $01 $01 $03
    daa                                           ; $5D0E: $27
    rra                                           ; $5D0F: $1F
    jr c, jr_041_5D12                             ; $5D10: $38 $00

jr_041_5D12:
    ld [de], a                                    ; $5D12: $12
    inc c                                         ; $5D13: $0C
    ld [bc], a                                    ; $5D14: $02
    rlca                                          ; $5D15: $07
    inc bc                                        ; $5D16: $03
    ld bc, $0000                                  ; $5D17: $01 $00 $00
    nop                                           ; $5D1A: $00
    nop                                           ; $5D1B: $00
    nop                                           ; $5D1C: $00
    nop                                           ; $5D1D: $00
    nop                                           ; $5D1E: $00

jr_041_5D1F:
    nop                                           ; $5D1F: $00
    nop                                           ; $5D20: $00
    nop                                           ; $5D21: $00
    nop                                           ; $5D22: $00
    nop                                           ; $5D23: $00
    add b                                         ; $5D24: $80
    nop                                           ; $5D25: $00
    pop de                                        ; $5D26: $D1
    ldh [rIE], a                                  ; $5D27: $E0 $FF
    rst $38                                       ; $5D29: $FF
    ccf                                           ; $5D2A: $3F
    ld a, a                                       ; $5D2B: $7F
    rra                                           ; $5D2C: $1F
    ccf                                           ; $5D2D: $3F
    rra                                           ; $5D2E: $1F
    rra                                           ; $5D2F: $1F
    nop                                           ; $5D30: $00
    nop                                           ; $5D31: $00
    nop                                           ; $5D32: $00
    db $10                                        ; $5D33: $10
    ld d, b                                       ; $5D34: $50
    jr nc, jr_041_5D97                            ; $5D35: $30 $60

    ldh a, [$E0]                                  ; $5D37: $F0 $E0
    ldh a, [$E0]                                  ; $5D39: $F0 $E0
    ldh a, [$F0]                                  ; $5D3B: $F0 $F0
    ldh a, [$F8]                                  ; $5D3D: $F0 $F8
    ldh a, [rP1]                                  ; $5D3F: $F0 $00
    nop                                           ; $5D41: $00
    nop                                           ; $5D42: $00
    nop                                           ; $5D43: $00
    nop                                           ; $5D44: $00
    nop                                           ; $5D45: $00
    jr nz, jr_041_5D48                            ; $5D46: $20 $00

jr_041_5D48:
    stop                                          ; $5D48: $10 $00
    nop                                           ; $5D4A: $00
    jr @+$0E                                      ; $5D4B: $18 $0C

    ld [$0C04], sp                                ; $5D4D: $08 $04 $0C
    ld b, $06                                     ; $5D50: $06 $06
    ld b, $03                                     ; $5D52: $06 $03
    inc bc                                        ; $5D54: $03
    inc bc                                        ; $5D55: $03
    inc bc                                        ; $5D56: $03
    ld bc, $0100                                  ; $5D57: $01 $00 $01
    ld bc, $0000                                  ; $5D5A: $01 $00 $00
    nop                                           ; $5D5D: $00
    nop                                           ; $5D5E: $00
    nop                                           ; $5D5F: $00
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    nop                                           ; $5D64: $00
    add b                                         ; $5D65: $80
    ret nz                                        ; $5D66: $C0

    add b                                         ; $5D67: $80
    ldh [$C0], a                                  ; $5D68: $E0 $C0
    ldh a, [$E0]                                  ; $5D6A: $F0 $E0
    ld hl, sp-$10                                 ; $5D6C: $F8 $F0
    ld a, h                                       ; $5D6E: $7C
    ld hl, sp-$04                                 ; $5D6F: $F8 $FC
    ld a, [hl]                                    ; $5D71: $7E
    ld a, a                                       ; $5D72: $7F
    ld a, a                                       ; $5D73: $7F
    ccf                                           ; $5D74: $3F
    ld a, a                                       ; $5D75: $7F
    ld a, a                                       ; $5D76: $7F
    ccf                                           ; $5D77: $3F
    ld a, a                                       ; $5D78: $7F
    ccf                                           ; $5D79: $3F
    ccf                                           ; $5D7A: $3F
    ccf                                           ; $5D7B: $3F
    ccf                                           ; $5D7C: $3F
    ccf                                           ; $5D7D: $3F
    ld a, a                                       ; $5D7E: $7F
    ccf                                           ; $5D7F: $3F
    nop                                           ; $5D80: $00
    nop                                           ; $5D81: $00
    ld b, b                                       ; $5D82: $40
    add b                                         ; $5D83: $80
    ei                                            ; $5D84: $FB
    rst $38                                       ; $5D85: $FF
    rst $38                                       ; $5D86: $FF
    rst $38                                       ; $5D87: $FF
    rst $38                                       ; $5D88: $FF
    rst $38                                       ; $5D89: $FF
    cp $FF                                        ; $5D8A: $FE $FF
    rst $38                                       ; $5D8C: $FF
    cp $FE                                        ; $5D8D: $FE $FE
    cp $00                                        ; $5D8F: $FE $00
    nop                                           ; $5D91: $00
    and b                                         ; $5D92: $A0
    ld b, b                                       ; $5D93: $40
    add b                                         ; $5D94: $80
    ret nz                                        ; $5D95: $C0

    add b                                         ; $5D96: $80

jr_041_5D97:
    add b                                         ; $5D97: $80
    add b                                         ; $5D98: $80
    nop                                           ; $5D99: $00
    nop                                           ; $5D9A: $00
    nop                                           ; $5D9B: $00
    nop                                           ; $5D9C: $00
    nop                                           ; $5D9D: $00
    nop                                           ; $5D9E: $00
    nop                                           ; $5D9F: $00
    nop                                           ; $5DA0: $00
    nop                                           ; $5DA1: $00
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    nop                                           ; $5DA4: $00
    nop                                           ; $5DA5: $00
    nop                                           ; $5DA6: $00
    nop                                           ; $5DA7: $00
    nop                                           ; $5DA8: $00
    nop                                           ; $5DA9: $00
    nop                                           ; $5DAA: $00
    nop                                           ; $5DAB: $00
    ld bc, $0100                                  ; $5DAC: $01 $00 $01
    nop                                           ; $5DAF: $00
    ld bc, $0100                                  ; $5DB0: $01 $00 $01
    nop                                           ; $5DB3: $00
    nop                                           ; $5DB4: $00
    ld bc, $0100                                  ; $5DB5: $01 $00 $01
    nop                                           ; $5DB8: $00
    ld bc, $0101                                  ; $5DB9: $01 $01 $01
    ld bc, $0101                                  ; $5DBC: $01 $01 $01
    ld bc, $0101                                  ; $5DBF: $01 $01 $01
    ld bc, $0301                                  ; $5DC2: $01 $01 $03
    ld bc, $0103                                  ; $5DC5: $01 $03 $01
    ld bc, $0103                                  ; $5DC8: $01 $03 $01
    inc bc                                        ; $5DCB: $03
    inc bc                                        ; $5DCC: $03
    inc bc                                        ; $5DCD: $03
    inc bc                                        ; $5DCE: $03
    inc bc                                        ; $5DCF: $03
    rlca                                          ; $5DD0: $07
    inc bc                                        ; $5DD1: $03
    rlca                                          ; $5DD2: $07
    inc bc                                        ; $5DD3: $03
    inc bc                                        ; $5DD4: $03
    rlca                                          ; $5DD5: $07
    rlca                                          ; $5DD6: $07
    rlca                                          ; $5DD7: $07
    rrca                                          ; $5DD8: $0F
    rlca                                          ; $5DD9: $07
    rlca                                          ; $5DDA: $07
    rrca                                          ; $5DDB: $0F
    rrca                                          ; $5DDC: $0F
    rrca                                          ; $5DDD: $0F
    rra                                           ; $5DDE: $1F
    rrca                                          ; $5DDF: $0F
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    nop                                           ; $5DE6: $00
    nop                                           ; $5DE7: $00
    inc bc                                        ; $5DE8: $03
    ld bc, $0307                                  ; $5DE9: $01 $07 $03
    rra                                           ; $5DEC: $1F
    rrca                                          ; $5DED: $0F
    cp a                                          ; $5DEE: $BF
    ld a, a                                       ; $5DEF: $7F
    rra                                           ; $5DF0: $1F
    rra                                           ; $5DF1: $1F
    rra                                           ; $5DF2: $1F
    ccf                                           ; $5DF3: $3F
    ccf                                           ; $5DF4: $3F
    ld a, a                                       ; $5DF5: $7F
    ld a, a                                       ; $5DF6: $7F
    rst $38                                       ; $5DF7: $FF
    rst $38                                       ; $5DF8: $FF
    rst $38                                       ; $5DF9: $FF
    rst $38                                       ; $5DFA: $FF
    rst $38                                       ; $5DFB: $FF

Jump_041_5DFC:
    rst $38                                       ; $5DFC: $FF
    rst $38                                       ; $5DFD: $FF
    rst $38                                       ; $5DFE: $FF
    rst $38                                       ; $5DFF: $FF
    nop                                           ; $5E00: $00
    nop                                           ; $5E01: $00
    nop                                           ; $5E02: $00
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00
    nop                                           ; $5E05: $00
    nop                                           ; $5E06: $00
    nop                                           ; $5E07: $00
    nop                                           ; $5E08: $00
    nop                                           ; $5E09: $00
    ld bc, $0300                                  ; $5E0A: $01 $00 $03
    nop                                           ; $5E0D: $00
    dec c                                         ; $5E0E: $0D
    ld [bc], a                                    ; $5E0F: $02
    ld bc, $0700                                  ; $5E10: $01 $00 $07
    nop                                           ; $5E13: $00
    rrca                                          ; $5E14: $0F
    nop                                           ; $5E15: $00
    ccf                                           ; $5E16: $3F
    nop                                           ; $5E17: $00
    ld l, e                                       ; $5E18: $6B
    nop                                           ; $5E19: $00
    db $FD                                        ; $5E1A: $FD
    nop                                           ; $5E1B: $00
    rst $30                                       ; $5E1C: $F7
    nop                                           ; $5E1D: $00
    rst $38                                       ; $5E1E: $FF
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    nop                                           ; $5E21: $00
    nop                                           ; $5E22: $00
    nop                                           ; $5E23: $00
    nop                                           ; $5E24: $00
    nop                                           ; $5E25: $00
    ld [bc], a                                    ; $5E26: $02
    ld bc, $0601                                  ; $5E27: $01 $01 $06
    ld [de], a                                    ; $5E2A: $12
    rrca                                          ; $5E2B: $0F
    rrca                                          ; $5E2C: $0F
    ld a, [hl-]                                   ; $5E2D: $3A
    rst $38                                       ; $5E2E: $FF
    ld d, l                                       ; $5E2F: $55
    dec d                                         ; $5E30: $15
    ld a, [bc]                                    ; $5E31: $0A
    ld d, d                                       ; $5E32: $52
    dec l                                         ; $5E33: $2D
    and h                                         ; $5E34: $A4
    ld e, e                                       ; $5E35: $5B
    ld [$50F7], sp                                ; $5E36: $08 $F7 $50
    xor a                                         ; $5E39: $AF
    ldh [$BF], a                                  ; $5E3A: $E0 $BF
    ld d, b                                       ; $5E3C: $50
    rst $38                                       ; $5E3D: $FF
    ret nz                                        ; $5E3E: $C0

    rst $38                                       ; $5E3F: $FF
    rst $38                                       ; $5E40: $FF
    nop                                           ; $5E41: $00
    cp a                                          ; $5E42: $BF
    ld b, b                                       ; $5E43: $40
    ld e, a                                       ; $5E44: $5F
    and b                                         ; $5E45: $A0
    ccf                                           ; $5E46: $3F
    ret nz                                        ; $5E47: $C0

    ld e, a                                       ; $5E48: $5F
    and b                                         ; $5E49: $A0
    cpl                                           ; $5E4A: $2F
    ret nc                                        ; $5E4B: $D0

    ld c, $F1                                     ; $5E4C: $0E $F1
    rra                                           ; $5E4E: $1F
    ldh [$3F], a                                  ; $5E4F: $E0 $3F
    ld l, a                                       ; $5E51: $6F
    sbc a                                         ; $5E52: $9F
    rla                                           ; $5E53: $17
    adc c                                         ; $5E54: $89
    rrca                                          ; $5E55: $0F
    ld b, d                                       ; $5E56: $42
    inc bc                                        ; $5E57: $03
    ld d, h                                       ; $5E58: $54
    ld bc, $002A                                  ; $5E59: $01 $2A $00
    daa                                           ; $5E5C: $27
    nop                                           ; $5E5D: $00
    dec l                                         ; $5E5E: $2D
    nop                                           ; $5E5F: $00
    ld d, b                                       ; $5E60: $50
    rst $38                                       ; $5E61: $FF
    and b                                         ; $5E62: $A0
    rst $38                                       ; $5E63: $FF
    xor b                                         ; $5E64: $A8
    rst $38                                       ; $5E65: $FF
    ret nc                                        ; $5E66: $D0

    rst $38                                       ; $5E67: $FF
    ld h, h                                       ; $5E68: $64
    rst $38                                       ; $5E69: $FF
    sub b                                         ; $5E6A: $90
    ld a, a                                       ; $5E6B: $7F
    call z, $E23F                                 ; $5E6C: $CC $3F $E2
    rra                                           ; $5E6F: $1F
    ld d, $E9                                     ; $5E70: $16 $E9
    dec bc                                        ; $5E72: $0B
    db $F4                                        ; $5E73: $F4
    rlca                                          ; $5E74: $07
    ld hl, sp+$0A                                 ; $5E75: $F8 $0A
    push af                                       ; $5E77: $F5
    inc b                                         ; $5E78: $04
    ei                                            ; $5E79: $FB
    ld [bc], a                                    ; $5E7A: $02
    db $FD                                        ; $5E7B: $FD
    ld [bc], a                                    ; $5E7C: $02
    db $FD                                        ; $5E7D: $FD
    nop                                           ; $5E7E: $00
    rst $38                                       ; $5E7F: $FF
    rla                                           ; $5E80: $17
    nop                                           ; $5E81: $00
    rla                                           ; $5E82: $17
    nop                                           ; $5E83: $00
    dec de                                        ; $5E84: $1B
    nop                                           ; $5E85: $00
    dec bc                                        ; $5E86: $0B
    nop                                           ; $5E87: $00
    rrca                                          ; $5E88: $0F
    nop                                           ; $5E89: $00
    dec bc                                        ; $5E8A: $0B
    nop                                           ; $5E8B: $00
    dec b                                         ; $5E8C: $05
    nop                                           ; $5E8D: $00
    rlca                                          ; $5E8E: $07
    nop                                           ; $5E8F: $00
    ld hl, sp+$07                                 ; $5E90: $F8 $07
    db $F4                                        ; $5E92: $F4
    dec bc                                        ; $5E93: $0B
    ret nc                                        ; $5E94: $D0

    cpl                                           ; $5E95: $2F
    ldh [$1F], a                                  ; $5E96: $E0 $1F
    ret nz                                        ; $5E98: $C0

    ccf                                           ; $5E99: $3F
    ret nc                                        ; $5E9A: $D0

    cpl                                           ; $5E9B: $2F
    ret nz                                        ; $5E9C: $C0

    ccf                                           ; $5E9D: $3F
    add b                                         ; $5E9E: $80
    ld a, a                                       ; $5E9F: $7F
    nop                                           ; $5EA0: $00
    rst $38                                       ; $5EA1: $FF
    nop                                           ; $5EA2: $00
    rst $38                                       ; $5EA3: $FF
    nop                                           ; $5EA4: $00
    rst $38                                       ; $5EA5: $FF
    nop                                           ; $5EA6: $00
    rst $38                                       ; $5EA7: $FF
    nop                                           ; $5EA8: $00
    rst $38                                       ; $5EA9: $FF
    ld [$00F7], sp                                ; $5EAA: $08 $F7 $00
    rst $38                                       ; $5EAD: $FF
    dec d                                         ; $5EAE: $15
    cp $05                                        ; $5EAF: $FE $05
    nop                                           ; $5EB1: $00
    inc bc                                        ; $5EB2: $03
    nop                                           ; $5EB3: $00
    inc bc                                        ; $5EB4: $03
    nop                                           ; $5EB5: $00
    inc bc                                        ; $5EB6: $03
    nop                                           ; $5EB7: $00
    ld bc, $0100                                  ; $5EB8: $01 $00 $01
    nop                                           ; $5EBB: $00
    ld bc, $0000                                  ; $5EBC: $01 $00 $00
    nop                                           ; $5EBF: $00
    ret nz                                        ; $5EC0: $C0

    ccf                                           ; $5EC1: $3F
    add b                                         ; $5EC2: $80
    ld a, a                                       ; $5EC3: $7F
    ret nz                                        ; $5EC4: $C0

    ccf                                           ; $5EC5: $3F
    add d                                         ; $5EC6: $82
    ld a, a                                       ; $5EC7: $7F
    call nz, $C43F                                ; $5EC8: $C4 $3F $C4
    dec sp                                        ; $5ECB: $3B
    cp $01                                        ; $5ECC: $FE $01
    cp h                                          ; $5ECE: $BC
    inc bc                                        ; $5ECF: $03
    ld [$20FF], sp                                ; $5ED0: $08 $FF $20
    rst $38                                       ; $5ED3: $FF
    add b                                         ; $5ED4: $80
    rst $38                                       ; $5ED5: $FF
    dec b                                         ; $5ED6: $05
    rst $38                                       ; $5ED7: $FF
    nop                                           ; $5ED8: $00
    rst $38                                       ; $5ED9: $FF
    dec bc                                        ; $5EDA: $0B
    rst $38                                       ; $5EDB: $FF
    inc b                                         ; $5EDC: $04
    rst $38                                       ; $5EDD: $FF
    dec de                                        ; $5EDE: $1B
    rst $38                                       ; $5EDF: $FF
    ld a, h                                       ; $5EE0: $7C
    inc bc                                        ; $5EE1: $03
    inc e                                         ; $5EE2: $1C
    inc bc                                        ; $5EE3: $03
    ld b, $01                                     ; $5EE4: $06 $01
    ld bc, $0000                                  ; $5EE6: $01 $00 $00
    nop                                           ; $5EE9: $00
    nop                                           ; $5EEA: $00
    nop                                           ; $5EEB: $00
    nop                                           ; $5EEC: $00
    nop                                           ; $5EED: $00
    nop                                           ; $5EEE: $00
    nop                                           ; $5EEF: $00
    ld c, $FF                                     ; $5EF0: $0E $FF
    dec hl                                        ; $5EF2: $2B
    rst $38                                       ; $5EF3: $FF
    rra                                           ; $5EF4: $1F
    rst $38                                       ; $5EF5: $FF
    ld l, $FF                                     ; $5EF6: $2E $FF
    rra                                           ; $5EF8: $1F
    ld a, a                                       ; $5EF9: $7F
    rlca                                          ; $5EFA: $07
    rra                                           ; $5EFB: $1F
    ld bc, $0007                                  ; $5EFC: $01 $07 $00
    ld bc, $0000                                  ; $5EFF: $01 $00 $00
    ld b, $04                                     ; $5F02: $06 $04
    rlca                                          ; $5F04: $07
    ld c, $0F                                     ; $5F05: $0E $0F
    rrca                                          ; $5F07: $0F
    rrca                                          ; $5F08: $0F
    rra                                           ; $5F09: $1F
    rrca                                          ; $5F0A: $0F
    ccf                                           ; $5F0B: $3F
    daa                                           ; $5F0C: $27
    rra                                           ; $5F0D: $1F
    ld h, e                                       ; $5F0E: $63
    rra                                           ; $5F0F: $1F
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    ldh a, [rP1]                                  ; $5F14: $F0 $00
    db $10                                        ; $5F16: $10
    ld hl, sp-$10                                 ; $5F17: $F8 $F0
    db $FC                                        ; $5F19: $FC
    db $FC                                        ; $5F1A: $FC
    db $FC                                        ; $5F1B: $FC
    cp $FE                                        ; $5F1C: $FE $FE
    cp $FE                                        ; $5F1E: $FE $FE
    ld h, e                                       ; $5F20: $63
    rra                                           ; $5F21: $1F
    rrca                                          ; $5F22: $0F
    ccf                                           ; $5F23: $3F
    cpl                                           ; $5F24: $2F
    rra                                           ; $5F25: $1F
    rrca                                          ; $5F26: $0F
    rra                                           ; $5F27: $1F
    ld c, $0F                                     ; $5F28: $0E $0F
    rlca                                          ; $5F2A: $07
    ld c, $04                                     ; $5F2B: $0E $04
    inc b                                         ; $5F2D: $04
    nop                                           ; $5F2E: $00
    nop                                           ; $5F2F: $00
    cp $FE                                        ; $5F30: $FE $FE
    cp $FE                                        ; $5F32: $FE $FE
    db $FC                                        ; $5F34: $FC
    db $FC                                        ; $5F35: $FC
    ld [hl], h                                    ; $5F36: $74
    ld hl, sp+$08                                 ; $5F37: $F8 $08
    ldh a, [$E0]                                  ; $5F39: $F0 $E0
    nop                                           ; $5F3B: $00
    nop                                           ; $5F3C: $00
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    inc bc                                        ; $5F42: $03
    inc bc                                        ; $5F43: $03
    rlca                                          ; $5F44: $07
    rrca                                          ; $5F45: $0F
    rlca                                          ; $5F46: $07
    rra                                           ; $5F47: $1F
    ccf                                           ; $5F48: $3F
    rra                                           ; $5F49: $1F
    cpl                                           ; $5F4A: $2F
    rra                                           ; $5F4B: $1F
    cpl                                           ; $5F4C: $2F
    rra                                           ; $5F4D: $1F
    cpl                                           ; $5F4E: $2F
    rra                                           ; $5F4F: $1F
    nop                                           ; $5F50: $00
    nop                                           ; $5F51: $00
    ret nz                                        ; $5F52: $C0

    ret nz                                        ; $5F53: $C0

    ldh a, [$E0]                                  ; $5F54: $F0 $E0
    add sp, -$10                                  ; $5F56: $E8 $F0
    ldh a, [$F8]                                  ; $5F58: $F0 $F8
    db $F4                                        ; $5F5A: $F4
    ld hl, sp-$0C                                 ; $5F5B: $F8 $F4
    ld hl, sp-$1C                                 ; $5F5D: $F8 $E4
    ld hl, sp+$3F                                 ; $5F5F: $F8 $3F
    rra                                           ; $5F61: $1F
    ld a, a                                       ; $5F62: $7F
    ccf                                           ; $5F63: $3F
    ld a, [hl]                                    ; $5F64: $7E
    ld a, a                                       ; $5F65: $7F
    inc e                                         ; $5F66: $1C
    ccf                                           ; $5F67: $3F
    nop                                           ; $5F68: $00
    rrca                                          ; $5F69: $0F
    inc bc                                        ; $5F6A: $03
    inc b                                         ; $5F6B: $04
    ld bc, $0000                                  ; $5F6C: $01 $00 $00
    nop                                           ; $5F6F: $00
    db $F4                                        ; $5F70: $F4
    ld hl, sp-$04                                 ; $5F71: $F8 $FC
    db $FC                                        ; $5F73: $FC
    ld a, [hl]                                    ; $5F74: $7E
    cp $78                                        ; $5F75: $FE $78
    db $FC                                        ; $5F77: $FC
    nop                                           ; $5F78: $00
    ldh a, [$A0]                                  ; $5F79: $F0 $A0
    ld b, b                                       ; $5F7B: $40
    add b                                         ; $5F7C: $80
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    jr jr_041_5FC0                                ; $5F82: $18 $3C

    ld a, $7C                                     ; $5F84: $3E $7C
    ld a, [hl-]                                   ; $5F86: $3A
    ld a, h                                       ; $5F87: $7C
    ld e, d                                       ; $5F88: $5A
    inc a                                         ; $5F89: $3C
    ld h, $58                                     ; $5F8A: $26 $58
    inc c                                         ; $5F8C: $0C
    jr nc, jr_041_5F8F                            ; $5F8D: $30 $00

jr_041_5F8F:
    nop                                           ; $5F8F: $00
    nop                                           ; $5F90: $00
    nop                                           ; $5F91: $00
    ld bc, $0701                                  ; $5F92: $01 $01 $07
    inc bc                                        ; $5F95: $03
    ld bc, $3301                                  ; $5F96: $01 $01 $33
    ld l, c                                       ; $5F99: $69
    ld a, e                                       ; $5F9A: $7B
    dec e                                         ; $5F9B: $1D
    rlca                                          ; $5F9C: $07
    cpl                                           ; $5F9D: $2F
    dec b                                         ; $5F9E: $05
    dec bc                                        ; $5F9F: $0B
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    ld bc, $2000                                  ; $5FA2: $01 $00 $20
    ld de, $3C10                                  ; $5FA5: $11 $10 $3C
    nop                                           ; $5FA8: $00
    dec e                                         ; $5FA9: $1D
    ld a, $07                                     ; $5FAA: $3E $07
    dec bc                                        ; $5FAC: $0B
    rlca                                          ; $5FAD: $07
    dec h                                         ; $5FAE: $25
    dec bc                                        ; $5FAF: $0B
    nop                                           ; $5FB0: $00
    nop                                           ; $5FB1: $00
    ldh [rLCDC], a                                ; $5FB2: $E0 $40
    ldh a, [$E0]                                  ; $5FB4: $F0 $E0
    ld [hl], b                                    ; $5FB6: $70
    ret nz                                        ; $5FB7: $C0

    ret nz                                        ; $5FB8: $C0

    ret nz                                        ; $5FB9: $C0

    db $E4                                        ; $5FBA: $E4
    jp z, $FF9E                                   ; $5FBB: $CA $9E $FF

    ld hl, sp-$0C                                 ; $5FBE: $F8 $F4

jr_041_5FC0:
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    nop                                           ; $5FC2: $00
    ld [$0C19], sp                                ; $5FC3: $08 $19 $0C
    rlca                                          ; $5FC6: $07
    inc c                                         ; $5FC7: $0C
    ld e, $06                                     ; $5FC8: $1E $06
    ld [hl+], a                                   ; $5FCA: $22
    rlca                                          ; $5FCB: $07
    add hl, bc                                    ; $5FCC: $09
    daa                                           ; $5FCD: $27
    ld l, c                                       ; $5FCE: $69
    rst $38                                       ; $5FCF: $FF
    nop                                           ; $5FD0: $00
    nop                                           ; $5FD1: $00
    ld d, b                                       ; $5FD2: $50
    nop                                           ; $5FD3: $00
    jr nc, jr_041_6046                            ; $5FD4: $30 $70

    ld [hl], b                                    ; $5FD6: $70
    jr c, jr_041_6051                             ; $5FD7: $38 $78

    ldh [rLCDC], a                                ; $5FD9: $E0 $40
    ldh [$FC], a                                  ; $5FDB: $E0 $FC
    ret nz                                        ; $5FDD: $C0

    rst $38                                       ; $5FDE: $FF
    cp $02                                        ; $5FDF: $FE $02
    nop                                           ; $5FE1: $00
    ld b, $02                                     ; $5FE2: $06 $02
    dec bc                                        ; $5FE4: $0B
    ld b, $0A                                     ; $5FE5: $06 $0A
    rlca                                          ; $5FE7: $07
    ld [de], a                                    ; $5FE8: $12
    inc bc                                        ; $5FE9: $03
    ld d, l                                       ; $5FEA: $55
    inc bc                                        ; $5FEB: $03
    ld e, a                                       ; $5FEC: $5F
    ld h, l                                       ; $5FED: $65
    ld a, c                                       ; $5FEE: $79
    ccf                                           ; $5FEF: $3F
    nop                                           ; $5FF0: $00
    nop                                           ; $5FF1: $00
    nop                                           ; $5FF2: $00
    nop                                           ; $5FF3: $00
    xor b                                         ; $5FF4: $A8
    db $10                                        ; $5FF5: $10

jr_041_5FF6:
    inc a                                         ; $5FF6: $3C
    sbc b                                         ; $5FF7: $98
    jr jr_041_5FF6                                ; $5FF8: $18 $FC

    ld h, b                                       ; $5FFA: $60
    db $F4                                        ; $5FFB: $F4
    ldh a, [$E0]                                  ; $5FFC: $F0 $E0
    ldh [$F8], a                                  ; $5FFE: $E0 $F8
    jr jr_041_6002                                ; $6000: $18 $00

jr_041_6002:
    sbc c                                         ; $6002: $99
    jr jr_041_605F                                ; $6003: $18 $5A

    ld a, [hl]                                    ; $6005: $7E
    jr jr_041_6044                                ; $6006: $18 $3C

    jr jr_041_6046                                ; $6008: $18 $3C

    ld e, d                                       ; $600A: $5A
    ld a, [hl]                                    ; $600B: $7E
    sbc c                                         ; $600C: $99
    jr @+$1A                                      ; $600D: $18 $18

    nop                                           ; $600F: $00
    inc c                                         ; $6010: $0C
    ld [$684C], sp                                ; $6011: $08 $4C $68
    ld a, c                                       ; $6014: $79
    jr c, @+$21                                   ; $6015: $38 $1F

    ccf                                           ; $6017: $3F
    ld hl, sp-$04                                 ; $6018: $F8 $FC
    sbc [hl]                                      ; $601A: $9E
    inc e                                         ; $601B: $1C
    ld [hl-], a                                   ; $601C: $32
    ld d, $30                                     ; $601D: $16 $30
    db $10                                        ; $601F: $10
    ld [bc], a                                    ; $6020: $02
    jr nz, jr_041_6057                            ; $6021: $20 $34

    inc h                                         ; $6023: $24
    inc a                                         ; $6024: $3C
    inc e                                         ; $6025: $1C
    cp $F8                                        ; $6026: $FE $F8
    ld a, a                                       ; $6028: $7F
    rra                                           ; $6029: $1F
    inc a                                         ; $602A: $3C
    jr c, @+$2E                                   ; $602B: $38 $2C

    inc h                                         ; $602D: $24
    ld b, b                                       ; $602E: $40
    inc b                                         ; $602F: $04
    jr nc, jr_041_6032                            ; $6030: $30 $00

jr_041_6032:
    ld [hl+], a                                   ; $6032: $22
    db $10                                        ; $6033: $10
    sub [hl]                                      ; $6034: $96
    ld e, $7C                                     ; $6035: $1E $7C
    ld a, h                                       ; $6037: $7C
    ld a, $3E                                     ; $6038: $3E $3E
    ld l, c                                       ; $603A: $69
    ld a, b                                       ; $603B: $78
    ld b, h                                       ; $603C: $44
    ld [$000C], sp                                ; $603D: $08 $0C $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00

jr_041_6044:
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00

jr_041_6046:
    ld b, $01                                     ; $6046: $06 $01
    inc e                                         ; $6048: $1C
    inc bc                                        ; $6049: $03
    scf                                           ; $604A: $37
    rrca                                          ; $604B: $0F
    ld l, a                                       ; $604C: $6F
    rra                                           ; $604D: $1F
    rst $10                                       ; $604E: $D7
    ccf                                           ; $604F: $3F
    nop                                           ; $6050: $00

jr_041_6051:
    nop                                           ; $6051: $00
    dec bc                                        ; $6052: $0B
    nop                                           ; $6053: $00
    push bc                                       ; $6054: $C5
    ccf                                           ; $6055: $3F
    rra                                           ; $6056: $1F

jr_041_6057:
    rst $38                                       ; $6057: $FF
    cp $FF                                        ; $6058: $FE $FF
    cp $F8                                        ; $605A: $FE $F8
    ret nz                                        ; $605C: $C0

    ldh a, [$C0]                                  ; $605D: $F0 $C0

jr_041_605F:
    ldh [$31], a                                  ; $605F: $E0 $31
    nop                                           ; $6061: $00
    add c                                         ; $6062: $81
    ld a, a                                       ; $6063: $7F
    rst $38                                       ; $6064: $FF
    rst $38                                       ; $6065: $FF
    rst $38                                       ; $6066: $FF
    rst $38                                       ; $6067: $FF
    ld a, [hl]                                    ; $6068: $7E
    add b                                         ; $6069: $80
    nop                                           ; $606A: $00
    nop                                           ; $606B: $00
    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    nop                                           ; $606E: $00
    nop                                           ; $606F: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    ld [$FF00], a                                 ; $6072: $EA $00 $FF
    nop                                           ; $6075: $00
    rst $38                                       ; $6076: $FF
    nop                                           ; $6077: $00
    inc bc                                        ; $6078: $03
    nop                                           ; $6079: $00
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    add b                                         ; $6082: $80
    nop                                           ; $6083: $00
    db $FD                                        ; $6084: $FD
    nop                                           ; $6085: $00
    rst $38                                       ; $6086: $FF
    nop                                           ; $6087: $00
    db $EB                                        ; $6088: $EB
    inc d                                         ; $6089: $14
    dec e                                         ; $608A: $1D
    ld [bc], a                                    ; $608B: $02
    ld b, $01                                     ; $608C: $06 $01
    inc bc                                        ; $608E: $03
    nop                                           ; $608F: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    and b                                         ; $6096: $A0
    nop                                           ; $6097: $00
    ldh a, [rP1]                                  ; $6098: $F0 $00
    db $FC                                        ; $609A: $FC
    nop                                           ; $609B: $00
    ccf                                           ; $609C: $3F
    ret nz                                        ; $609D: $C0

    rst $28                                       ; $609E: $EF
    db $10                                        ; $609F: $10
    rst $08                                       ; $60A0: $CF
    ccf                                           ; $60A1: $3F
    dec b                                         ; $60A2: $05
    ld a, a                                       ; $60A3: $7F
    ld h, d                                       ; $60A4: $62
    rra                                           ; $60A5: $1F
    jr nc, jr_041_60B7                            ; $60A6: $30 $0F

    inc c                                         ; $60A8: $0C
    inc bc                                        ; $60A9: $03
    inc bc                                        ; $60AA: $03
    nop                                           ; $60AB: $00
    nop                                           ; $60AC: $00
    nop                                           ; $60AD: $00
    nop                                           ; $60AE: $00
    nop                                           ; $60AF: $00
    ldh [$C0], a                                  ; $60B0: $E0 $C0
    ret nz                                        ; $60B2: $C0

    ldh a, [$A6]                                  ; $60B3: $F0 $A6
    ld hl, sp+$30                                 ; $60B5: $F8 $30

jr_041_60B7:
    rst $38                                       ; $60B7: $FF
    inc b                                         ; $60B8: $04
    rst $38                                       ; $60B9: $FF
    add b                                         ; $60BA: $80
    ld a, a                                       ; $60BB: $7F
    dec a                                         ; $60BC: $3D
    ld [bc], a                                    ; $60BD: $02
    dec b                                         ; $60BE: $05
    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00

Call_041_60C4:
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    ld h, b                                       ; $60C6: $60
    add b                                         ; $60C7: $80
    ld b, b                                       ; $60C8: $40
    rst $38                                       ; $60C9: $FF
    nop                                           ; $60CA: $00
    rst $38                                       ; $60CB: $FF
    nop                                           ; $60CC: $00
    rst $38                                       ; $60CD: $FF
    sbc l                                         ; $60CE: $9D
    nop                                           ; $60CF: $00
    nop                                           ; $60D0: $00
    nop                                           ; $60D1: $00
    nop                                           ; $60D2: $00
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    nop                                           ; $60D5: $00
    rlca                                          ; $60D6: $07
    nop                                           ; $60D7: $00
    ld [bc], a                                    ; $60D8: $02
    db $FD                                        ; $60D9: $FD
    nop                                           ; $60DA: $00
    rst $38                                       ; $60DB: $FF
    rla                                           ; $60DC: $17
    add sp, -$02                                  ; $60DD: $E8 $FE
    nop                                           ; $60DF: $00
    ld b, $01                                     ; $60E0: $06 $01
    ld c, $01                                     ; $60E2: $0E $01
    jr c, jr_041_60ED                             ; $60E4: $38 $07

    ld d, b                                       ; $60E6: $50
    xor a                                         ; $60E7: $AF
    rlca                                          ; $60E8: $07
    ld hl, sp+$6F                                 ; $60E9: $F8 $6F
    sub b                                         ; $60EB: $90
    cp [hl]                                       ; $60EC: $BE

jr_041_60ED:
    ld b, b                                       ; $60ED: $40
    and b                                         ; $60EE: $A0
    nop                                           ; $60EF: $00
    ccf                                           ; $60F0: $3F
    ret nz                                        ; $60F1: $C0

    sub a                                         ; $60F2: $97
    ld l, b                                       ; $60F3: $68
    ld a, [hl]                                    ; $60F4: $7E
    add b                                         ; $60F5: $80
    sbc $20                                       ; $60F6: $DE $20
    ld hl, sp+$00                                 ; $60F8: $F8 $00
    ret nz                                        ; $60FA: $C0

    nop                                           ; $60FB: $00
    nop                                           ; $60FC: $00
    nop                                           ; $60FD: $00
    nop                                           ; $60FE: $00
    nop                                           ; $60FF: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00
    nop                                           ; $6105: $00
    dec b                                         ; $6106: $05
    ld [bc], a                                    ; $6107: $02
    jr c, jr_041_6111                             ; $6108: $38 $07

    inc hl                                        ; $610A: $23
    rra                                           ; $610B: $1F
    push bc                                       ; $610C: $C5
    ccf                                           ; $610D: $3F
    add c                                         ; $610E: $81
    ld a, a                                       ; $610F: $7F
    nop                                           ; $6110: $00

jr_041_6111:
    nop                                           ; $6111: $00
    ld b, $01                                     ; $6112: $06 $01
    ret nz                                        ; $6114: $C0

    ccf                                           ; $6115: $3F
    rra                                           ; $6116: $1F
    rst $38                                       ; $6117: $FF

jr_041_6118:
    db $FD                                        ; $6118: $FD
    cp $EC                                        ; $6119: $FE $EC
    ldh a, [$B0]                                  ; $611B: $F0 $B0
    ret nz                                        ; $611D: $C0

    nop                                           ; $611E: $00
    ret nz                                        ; $611F: $C0

    ld b, d                                       ; $6120: $42
    nop                                           ; $6121: $00
    and [hl]                                      ; $6122: $A6
    ld e, c                                       ; $6123: $59
    rst $38                                       ; $6124: $FF
    rst $38                                       ; $6125: $FF
    rst $30                                       ; $6126: $F7
    rst $38                                       ; $6127: $FF
    db $ED                                        ; $6128: $ED
    nop                                           ; $6129: $00
    nop                                           ; $612A: $00
    nop                                           ; $612B: $00
    nop                                           ; $612C: $00
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
    nop                                           ; $612F: $00
    call z, Boot                                  ; $6130: $CC $00 $01
    cp $FF                                        ; $6133: $FE $FF
    rst $38                                       ; $6135: $FF
    ld a, a                                       ; $6136: $7F
    rst $38                                       ; $6137: $FF
    ld l, [hl]                                    ; $6138: $6E
    ld bc, $0001                                  ; $6139: $01 $01 $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    ld h, b                                       ; $6142: $60
    add b                                         ; $6143: $80
    inc bc                                        ; $6144: $03
    db $FC                                        ; $6145: $FC
    db $FC                                        ; $6146: $FC
    rst $38                                       ; $6147: $FF
    ld a, a                                       ; $6148: $7F
    rst $38                                       ; $6149: $FF
    ld c, a                                       ; $614A: $4F
    ccf                                           ; $614B: $3F
    rra                                           ; $614C: $1F
    rlca                                          ; $614D: $07
    dec bc                                        ; $614E: $0B
    rlca                                          ; $614F: $07
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    jr nz, jr_041_6118                            ; $6156: $20 $C0

    adc b                                         ; $6158: $88
    ldh a, [$E6]                                  ; $6159: $F0 $E6
    ld hl, sp-$05                                 ; $615B: $F8 $FB
    db $FC                                        ; $615D: $FC
    ld sp, hl                                     ; $615E: $F9
    cp $C5                                        ; $615F: $FE $C5
    ccf                                           ; $6161: $3F
    ret nz                                        ; $6162: $C0

    ccf                                           ; $6163: $3F
    ldh [$1F], a                                  ; $6164: $E0 $1F
    ld e, b                                       ; $6166: $58
    daa                                           ; $6167: $27
    inc e                                         ; $6168: $1C
    inc bc                                        ; $6169: $03
    dec bc                                        ; $616A: $0B
    nop                                           ; $616B: $00
    ld bc, $0000                                  ; $616C: $01 $00 $00
    nop                                           ; $616F: $00
    ld h, b                                       ; $6170: $60
    add b                                         ; $6171: $80
    jr nz, @-$3E                                  ; $6172: $20 $C0

    ld [$07F0], sp                                ; $6174: $08 $F0 $07
    ld hl, sp+$00                                 ; $6177: $F8 $00
    rst $38                                       ; $6179: $FF
    ei                                            ; $617A: $FB
    inc b                                         ; $617B: $04
    ld a, a                                       ; $617C: $7F
    nop                                           ; $617D: $00
    inc de                                        ; $617E: $13
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    add b                                         ; $6186: $80
    nop                                           ; $6187: $00
    rst $38                                       ; $6188: $FF
    nop                                           ; $6189: $00
    dec hl                                        ; $618A: $2B
    call nc, $00FF                                ; $618B: $D4 $FF $00
    ld a, a                                       ; $618E: $7F
    nop                                           ; $618F: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
    ld [bc], a                                    ; $6196: $02
    nop                                           ; $6197: $00
    rst $38                                       ; $6198: $FF
    nop                                           ; $6199: $00
    rst $38                                       ; $619A: $FF
    nop                                           ; $619B: $00
    rst $38                                       ; $619C: $FF
    nop                                           ; $619D: $00
    cp $00                                        ; $619E: $FE $00
    rlca                                          ; $61A0: $07
    nop                                           ; $61A1: $00
    rlca                                          ; $61A2: $07
    nop                                           ; $61A3: $00
    ccf                                           ; $61A4: $3F
    nop                                           ; $61A5: $00
    rst $38                                       ; $61A6: $FF
    nop                                           ; $61A7: $00
    rst $38                                       ; $61A8: $FF
    nop                                           ; $61A9: $00
    cp $00                                        ; $61AA: $FE $00
    ld hl, sp+$00                                 ; $61AC: $F8 $00
    add b                                         ; $61AE: $80
    nop                                           ; $61AF: $00
    ld a, a                                       ; $61B0: $7F
    add b                                         ; $61B1: $80
    cp $00                                        ; $61B2: $FE $00
    db $FC                                        ; $61B4: $FC
    nop                                           ; $61B5: $00
    ldh a, [rP1]                                  ; $61B6: $F0 $00
    ret nz                                        ; $61B8: $C0

jr_041_61B9:
    nop                                           ; $61B9: $00
    nop                                           ; $61BA: $00
    nop                                           ; $61BB: $00
    add b                                         ; $61BC: $80
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    ld a, b                                       ; $61C0: $78
    nop                                           ; $61C1: $00
    add h                                         ; $61C2: $84
    ld a, b                                       ; $61C3: $78
    ld [hl-], a                                   ; $61C4: $32
    xor $37                                       ; $61C5: $EE $37
    rst $08                                       ; $61C7: $CF
    adc a                                         ; $61C8: $8F
    ld [hl], b                                    ; $61C9: $70
    ld [$30F0], sp                                ; $61CA: $08 $F0 $30
    ret nz                                        ; $61CD: $C0

    ldh [rP1], a                                  ; $61CE: $E0 $00
    nop                                           ; $61D0: $00
    nop                                           ; $61D1: $00
    inc b                                         ; $61D2: $04
    nop                                           ; $61D3: $00
    inc c                                         ; $61D4: $0C
    nop                                           ; $61D5: $00
    ld d, $08                                     ; $61D6: $16 $08
    ld c, $10                                     ; $61D8: $0E $10
    ld a, $00                                     ; $61DA: $3E $00
    ld e, $20                                     ; $61DC: $1E $20
    ccf                                           ; $61DE: $3F
    nop                                           ; $61DF: $00
    rra                                           ; $61E0: $1F
    jr nz, jr_041_6202                            ; $61E1: $20 $1F

    nop                                           ; $61E3: $00
    rra                                           ; $61E4: $1F
    nop                                           ; $61E5: $00
    rra                                           ; $61E6: $1F
    nop                                           ; $61E7: $00
    ccf                                           ; $61E8: $3F
    nop                                           ; $61E9: $00
    rst $38                                       ; $61EA: $FF
    nop                                           ; $61EB: $00
    ld a, [hl]                                    ; $61EC: $7E
    ld bc, $001F                                  ; $61ED: $01 $1F $00
    nop                                           ; $61F0: $00
    nop                                           ; $61F1: $00
    nop                                           ; $61F2: $00
    nop                                           ; $61F3: $00
    inc bc                                        ; $61F4: $03
    nop                                           ; $61F5: $00
    rrca                                          ; $61F6: $0F
    nop                                           ; $61F7: $00
    dec sp                                        ; $61F8: $3B
    inc b                                         ; $61F9: $04
    rst $00                                       ; $61FA: $C7
    jr c, @+$71                                   ; $61FB: $38 $6F

    db $10                                        ; $61FD: $10
    ld e, a                                       ; $61FE: $5F
    jr nz, jr_041_61B9                            ; $61FF: $20 $B8

    ld b, b                                       ; $6201: $40

jr_041_6202:
    ldh a, [rP1]                                  ; $6202: $F0 $00
    add b                                         ; $6204: $80
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    nop                                           ; $6209: $00
    nop                                           ; $620A: $00
    nop                                           ; $620B: $00
    nop                                           ; $620C: $00
    nop                                           ; $620D: $00
    nop                                           ; $620E: $00
    nop                                           ; $620F: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00

jr_041_6214:
    inc bc                                        ; $6214: $03
    nop                                           ; $6215: $00
    rrca                                          ; $6216: $0F
    nop                                           ; $6217: $00
    ccf                                           ; $6218: $3F
    nop                                           ; $6219: $00
    ld sp, hl                                     ; $621A: $F9
    ld b, $61                                     ; $621B: $06 $61
    ld e, $3B                                     ; $621D: $1E $3B
    inc b                                         ; $621F: $04
    dec [hl]                                      ; $6220: $35
    ld a, [bc]                                    ; $6221: $0A
    dec e                                         ; $6222: $1D
    ld [bc], a                                    ; $6223: $02
    dec e                                         ; $6224: $1D
    ld [bc], a                                    ; $6225: $02
    dec bc                                        ; $6226: $0B
    inc b                                         ; $6227: $04
    rrca                                          ; $6228: $0F
    nop                                           ; $6229: $00
    ld c, $00                                     ; $622A: $0E $00
    ld c, $00                                     ; $622C: $0E $00
    inc c                                         ; $622E: $0C
    nop                                           ; $622F: $00
    inc bc                                        ; $6230: $03
    nop                                           ; $6231: $00
    rlca                                          ; $6232: $07
    nop                                           ; $6233: $00
    dec c                                         ; $6234: $0D
    ld [bc], a                                    ; $6235: $02
    dec bc                                        ; $6236: $0B
    inc b                                         ; $6237: $04
    inc sp                                        ; $6238: $33
    inc c                                         ; $6239: $0C
    rst $30                                       ; $623A: $F7
    ld [$007F], sp                                ; $623B: $08 $7F $00
    rra                                           ; $623E: $1F
    nop                                           ; $623F: $00
    rrca                                          ; $6240: $0F
    nop                                           ; $6241: $00
    rrca                                          ; $6242: $0F
    nop                                           ; $6243: $00
    rlca                                          ; $6244: $07
    nop                                           ; $6245: $00
    inc bc                                        ; $6246: $03
    nop                                           ; $6247: $00
    inc bc                                        ; $6248: $03
    nop                                           ; $6249: $00
    ld bc, $0000                                  ; $624A: $01 $00 $00
    nop                                           ; $624D: $00
    nop                                           ; $624E: $00
    nop                                           ; $624F: $00
    ldh [rP1], a                                  ; $6250: $E0 $00
    jr c, jr_041_6214                             ; $6252: $38 $C0

    inc c                                         ; $6254: $0C
    ldh a, [rDIV]                                 ; $6255: $F0 $04
    ld hl, sp+$04                                 ; $6257: $F8 $04
    ld hl, sp+$04                                 ; $6259: $F8 $04
    ld hl, sp+$0C                                 ; $625B: $F8 $0C
    ldh a, [rTMA]                                 ; $625D: $F0 $06
    ld hl, sp+$42                                 ; $625F: $F8 $42
    dec a                                         ; $6261: $3D
    ld e, c                                       ; $6262: $59
    ld h, $5C                                     ; $6263: $26 $5C
    inc hl                                        ; $6265: $23
    ld c, [hl]                                    ; $6266: $4E
    ld sp, $1F60                                  ; $6267: $31 $60 $1F
    ld sp, $290E                                  ; $626A: $31 $0E $29
    ld d, $2C                                     ; $626D: $16 $2C
    inc de                                        ; $626F: $13
    ld b, d                                       ; $6270: $42
    cp h                                          ; $6271: $BC
    sbc d                                         ; $6272: $9A
    ld h, h                                       ; $6273: $64

jr_041_6274:
    ld a, [hl-]                                   ; $6274: $3A
    call nz, $8C72                                ; $6275: $C4 $72 $8C
    add [hl]                                      ; $6278: $86
    ld a, b                                       ; $6279: $78
    call nz, Call_041_4C38                        ; $627A: $C4 $38 $4C
    or b                                          ; $627D: $B0
    inc d                                         ; $627E: $14
    add sp, $1A                                   ; $627F: $E8 $1A
    dec b                                         ; $6281: $05
    inc b                                         ; $6282: $04
    inc bc                                        ; $6283: $03
    ld [bc], a                                    ; $6284: $02
    ld bc, $0001                                  ; $6285: $01 $01 $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628A: $00
    nop                                           ; $628B: $00
    nop                                           ; $628C: $00
    nop                                           ; $628D: $00
    nop                                           ; $628E: $00
    nop                                           ; $628F: $00
    add sp, $10                                   ; $6290: $E8 $10
    xor b                                         ; $6292: $A8
    ld d, b                                       ; $6293: $50
    or b                                          ; $6294: $B0
    ld b, b                                       ; $6295: $40
    ret nz                                        ; $6296: $C0

    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    nop                                           ; $629A: $00
    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    inc bc                                        ; $62A0: $03
    nop                                           ; $62A1: $00
    inc c                                         ; $62A2: $0C
    inc bc                                        ; $62A3: $03
    db $10                                        ; $62A4: $10
    rrca                                          ; $62A5: $0F
    cpl                                           ; $62A6: $2F
    db $10                                        ; $62A7: $10
    dec sp                                        ; $62A8: $3B
    rrca                                          ; $62A9: $0F
    ld l, a                                       ; $62AA: $6F
    db $10                                        ; $62AB: $10
    ld e, c                                       ; $62AC: $59
    ld h, $79                                     ; $62AD: $26 $79
    ld c, $C0                                     ; $62AF: $0E $C0
    nop                                           ; $62B1: $00
    jr nc, jr_041_6274                            ; $62B2: $30 $C0

    ld [$04F0], sp                                ; $62B4: $08 $F0 $04
    ld hl, sp-$7E                                 ; $62B7: $F8 $82
    ld a, h                                       ; $62B9: $7C
    jp nz, $E3BC                                  ; $62BA: $C2 $BC $E3

    ld e, h                                       ; $62BD: $5C
    rst $18                                       ; $62BE: $DF
    ld [hl+], a                                   ; $62BF: $22
    ld a, l                                       ; $62C0: $7D
    ld b, $3E                                     ; $62C1: $06 $3E
    inc bc                                        ; $62C3: $03
    rrca                                          ; $62C4: $0F
    nop                                           ; $62C5: $00
    rra                                           ; $62C6: $1F
    dec b                                         ; $62C7: $05
    ld a, $0B                                     ; $62C8: $3E $0B
    ld [hl], $1B                                  ; $62CA: $36 $1B
    ld h, $1B                                     ; $62CC: $26 $1B
    rra                                           ; $62CE: $1F
    nop                                           ; $62CF: $00
    db $E3                                        ; $62D0: $E3
    inc e                                         ; $62D1: $1C
    sbc $20                                       ; $62D2: $DE $20
    db $FC                                        ; $62D4: $FC
    nop                                           ; $62D5: $00
    cp h                                          ; $62D6: $BC
    ld l, b                                       ; $62D7: $68
    sbc $34                                       ; $62D8: $DE $34
    sbc $34                                       ; $62DA: $DE $34
    jp c, $3C34                                   ; $62DC: $DA $34 $3C

    nop                                           ; $62DF: $00
    inc bc                                        ; $62E0: $03
    nop                                           ; $62E1: $00
    rrca                                          ; $62E2: $0F
    inc bc                                        ; $62E3: $03

jr_041_62E4:
    ld e, $0F                                     ; $62E4: $1E $0F
    ccf                                           ; $62E6: $3F
    db $10                                        ; $62E7: $10
    dec sp                                        ; $62E8: $3B
    rrca                                          ; $62E9: $0F
    ld l, a                                       ; $62EA: $6F
    db $10                                        ; $62EB: $10
    ld e, c                                       ; $62EC: $59
    ld h, $79                                     ; $62ED: $26 $79
    ld c, $C0                                     ; $62EF: $0E $C0
    nop                                           ; $62F1: $00
    ldh a, [$C0]                                  ; $62F2: $F0 $C0
    ld [$04F0], sp                                ; $62F4: $08 $F0 $04
    ld hl, sp-$7E                                 ; $62F7: $F8 $82
    ld a, h                                       ; $62F9: $7C
    jp nz, $E3BC                                  ; $62FA: $C2 $BC $E3

    ld e, h                                       ; $62FD: $5C
    rst $18                                       ; $62FE: $DF
    ld [hl+], a                                   ; $62FF: $22
    inc bc                                        ; $6300: $03
    nop                                           ; $6301: $00
    inc c                                         ; $6302: $0C
    inc bc                                        ; $6303: $03
    ld de, $2F0F                                  ; $6304: $11 $0F $2F
    db $10                                        ; $6307: $10
    dec sp                                        ; $6308: $3B
    rrca                                          ; $6309: $0F
    ld l, a                                       ; $630A: $6F
    db $10                                        ; $630B: $10
    ld e, c                                       ; $630C: $59
    ld h, $79                                     ; $630D: $26 $79
    ld c, $C0                                     ; $630F: $0E $C0
    nop                                           ; $6311: $00
    ld [hl], b                                    ; $6312: $70
    ret nz                                        ; $6313: $C0

    ld hl, sp-$10                                 ; $6314: $F8 $F0
    db $F4                                        ; $6316: $F4
    ld hl, sp-$1E                                 ; $6317: $F8 $E2
    ld a, h                                       ; $6319: $7C
    ld [c], a                                     ; $631A: $E2
    cp h                                          ; $631B: $BC
    db $E3                                        ; $631C: $E3
    ld e, h                                       ; $631D: $5C
    rst $18                                       ; $631E: $DF
    ld [hl+], a                                   ; $631F: $22
    ret nz                                        ; $6320: $C0

    nop                                           ; $6321: $00
    jr nc, jr_041_62E4                            ; $6322: $30 $C0

    ld [$04F0], sp                                ; $6324: $08 $F0 $04
    ld hl, sp-$72                                 ; $6327: $F8 $8E
    ld a, h                                       ; $6329: $7C
    cp $BC                                        ; $632A: $FE $BC
    rst $38                                       ; $632C: $FF
    ld e, h                                       ; $632D: $5C
    rst $18                                       ; $632E: $DF
    ld [hl+], a                                   ; $632F: $22
    rlca                                          ; $6330: $07
    nop                                           ; $6331: $00
    ld e, $07                                     ; $6332: $1E $07
    inc a                                         ; $6334: $3C
    rra                                           ; $6335: $1F

jr_041_6336:
    ld a, h                                       ; $6336: $7C
    ccf                                           ; $6337: $3F
    ld a, h                                       ; $6338: $7C
    ccf                                           ; $6339: $3F
    cp $7F                                        ; $633A: $FE $7F
    cp $7F                                        ; $633C: $FE $7F
    rst $08                                       ; $633E: $CF
    ld a, a                                       ; $633F: $7F
    ret nz                                        ; $6340: $C0

    nop                                           ; $6341: $00
    ld [hl], b                                    ; $6342: $70
    ret nz                                        ; $6343: $C0

    jr jr_041_6336                                ; $6344: $18 $F0

    inc c                                         ; $6346: $0C
    jr jr_041_634D                                ; $6347: $18 $04

    ld [$8406], sp                                ; $6349: $08 $06 $84
    ld [bc], a                                    ; $634C: $02

jr_041_634D:
    call nz, $E402                                ; $634D: $C4 $02 $E4
    dec bc                                        ; $6350: $0B
    inc b                                         ; $6351: $04
    ld [$1407], sp                                ; $6352: $08 $07 $14
    rrca                                          ; $6355: $0F
    dec d                                         ; $6356: $15
    rrca                                          ; $6357: $0F
    dec hl                                        ; $6358: $2B
    rra                                           ; $6359: $1F
    add hl, sp                                    ; $635A: $39
    rra                                           ; $635B: $1F
    ld e, l                                       ; $635C: $5D
    ccf                                           ; $635D: $3F
    ld a, c                                       ; $635E: $79
    ccf                                           ; $635F: $3F
    ret nc                                        ; $6360: $D0

    jr nz, jr_041_6393                            ; $6361: $20 $30

    ldh [$B8], a                                  ; $6363: $E0 $B8
    ldh a, [$D8]                                  ; $6365: $F0 $D8
    ldh a, [$CC]                                  ; $6367: $F0 $CC
    ld hl, sp-$14                                 ; $6369: $F8 $EC
    ld hl, sp+$66                                 ; $636B: $F8 $66
    db $FC                                        ; $636D: $FC
    ld h, d                                       ; $636E: $62
    db $FC                                        ; $636F: $FC
    add hl, sp                                    ; $6370: $39
    rrca                                          ; $6371: $0F
    rrca                                          ; $6372: $0F
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637A: $00
    nop                                           ; $637B: $00
    nop                                           ; $637C: $00
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    inc l                                         ; $6380: $2C
    ldh a, [$F0]                                  ; $6381: $F0 $F0
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638A: $00
    nop                                           ; $638B: $00
    nop                                           ; $638C: $00
    nop                                           ; $638D: $00
    nop                                           ; $638E: $00
    nop                                           ; $638F: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00

jr_041_6393:
    nop                                           ; $6393: $00
    ld [bc], a                                    ; $6394: $02
    ld [bc], a                                    ; $6395: $02
    dec h                                         ; $6396: $25
    dec h                                         ; $6397: $25
    ld a, [de]                                    ; $6398: $1A
    ld a, [de]                                    ; $6399: $1A
    rrca                                          ; $639A: $0F
    rrca                                          ; $639B: $0F
    rlca                                          ; $639C: $07
    rlca                                          ; $639D: $07
    rlca                                          ; $639E: $07
    inc bc                                        ; $639F: $03
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    db $10                                        ; $63A4: $10
    db $10                                        ; $63A5: $10
    and h                                         ; $63A6: $A4
    and h                                         ; $63A7: $A4
    ret c                                         ; $63A8: $D8

    ret c                                         ; $63A9: $D8

    ldh a, [$F0]                                  ; $63AA: $F0 $F0
    ldh [$E0], a                                  ; $63AC: $E0 $E0
    ldh [$C0], a                                  ; $63AE: $E0 $C0
    nop                                           ; $63B0: $00
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    nop                                           ; $63B3: $00
    nop                                           ; $63B4: $00
    nop                                           ; $63B5: $00
    nop                                           ; $63B6: $00
    nop                                           ; $63B7: $00
    ld [de], a                                    ; $63B8: $12
    ld [de], a                                    ; $63B9: $12
    dec c                                         ; $63BA: $0D
    dec c                                         ; $63BB: $0D
    rlca                                          ; $63BC: $07
    rlca                                          ; $63BD: $07
    rlca                                          ; $63BE: $07
    inc bc                                        ; $63BF: $03
    nop                                           ; $63C0: $00
    nop                                           ; $63C1: $00
    nop                                           ; $63C2: $00
    nop                                           ; $63C3: $00
    nop                                           ; $63C4: $00
    nop                                           ; $63C5: $00
    nop                                           ; $63C6: $00
    nop                                           ; $63C7: $00
    ret z                                         ; $63C8: $C8

    ret z                                         ; $63C9: $C8

    or b                                          ; $63CA: $B0
    or b                                          ; $63CB: $B0
    ldh [$E0], a                                  ; $63CC: $E0 $E0
    ldh [$C0], a                                  ; $63CE: $E0 $C0
    nop                                           ; $63D0: $00
    nop                                           ; $63D1: $00
    nop                                           ; $63D2: $00
    nop                                           ; $63D3: $00
    nop                                           ; $63D4: $00
    nop                                           ; $63D5: $00
    nop                                           ; $63D6: $00
    nop                                           ; $63D7: $00
    nop                                           ; $63D8: $00
    nop                                           ; $63D9: $00
    ld a, [bc]                                    ; $63DA: $0A
    ld a, [bc]                                    ; $63DB: $0A
    ld b, $06                                     ; $63DC: $06 $06
    rlca                                          ; $63DE: $07
    inc bc                                        ; $63DF: $03
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    nop                                           ; $63E2: $00
    nop                                           ; $63E3: $00
    nop                                           ; $63E4: $00
    nop                                           ; $63E5: $00
    nop                                           ; $63E6: $00
    nop                                           ; $63E7: $00
    nop                                           ; $63E8: $00
    nop                                           ; $63E9: $00
    sub b                                         ; $63EA: $90
    sub b                                         ; $63EB: $90
    ld h, b                                       ; $63EC: $60
    ld h, b                                       ; $63ED: $60
    ldh [$C0], a                                  ; $63EE: $E0 $C0
    ld a, [hl]                                    ; $63F0: $7E
    nop                                           ; $63F1: $00
    xor e                                         ; $63F2: $AB
    ld d, [hl]                                    ; $63F3: $56
    rst $38                                       ; $63F4: $FF
    ld d, l                                       ; $63F5: $55
    rst $38                                       ; $63F6: $FF
    ld d, [hl]                                    ; $63F7: $56
    ld a, a                                       ; $63F8: $7F
    nop                                           ; $63F9: $00
    push de                                       ; $63FA: $D5
    ld a, [hl+]                                   ; $63FB: $2A
    db $FD                                        ; $63FC: $FD
    ld a, [hl+]                                   ; $63FD: $2A
    rst $38                                       ; $63FE: $FF
    ld a, [hl+]                                   ; $63FF: $2A
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    rst $38                                       ; $6402: $FF
    nop                                           ; $6403: $00
    rst $38                                       ; $6404: $FF
    rst $38                                       ; $6405: $FF
    rst $38                                       ; $6406: $FF
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    nop                                           ; $640A: $00
    nop                                           ; $640B: $00
    nop                                           ; $640C: $00
    nop                                           ; $640D: $00
    nop                                           ; $640E: $00
    nop                                           ; $640F: $00
    rst $38                                       ; $6410: $FF
    ld a, [hl+]                                   ; $6411: $2A
    rst $28                                       ; $6412: $EF
    ld a, d                                       ; $6413: $7A
    db $EB                                        ; $6414: $EB
    ld a, [hl]                                    ; $6415: $7E
    db $EB                                        ; $6416: $EB
    ld e, [hl]                                    ; $6417: $5E
    db $EB                                        ; $6418: $EB
    ld d, [hl]                                    ; $6419: $56
    db $EB                                        ; $641A: $EB
    ld d, [hl]                                    ; $641B: $56
    rst $28                                       ; $641C: $EF
    ld d, d                                       ; $641D: $52
    ld a, [hl]                                    ; $641E: $7E
    nop                                           ; $641F: $00
    xor $00                                       ; $6420: $EE $00
    cp e                                          ; $6422: $BB
    ld h, [hl]                                    ; $6423: $66
    rst $38                                       ; $6424: $FF
    ld d, l                                       ; $6425: $55
    rst $38                                       ; $6426: $FF
    ld h, [hl]                                    ; $6427: $66
    xor $00                                       ; $6428: $EE $00
    rst $38                                       ; $642A: $FF
    ld h, d                                       ; $642B: $62
    rst $38                                       ; $642C: $FF
    halt                                          ; $642D: $76
    rst $30                                       ; $642E: $F7
    ld a, [hl]                                    ; $642F: $7E
    ldh [rP1], a                                  ; $6430: $E0 $00
    cp a                                          ; $6432: $BF
    ld h, b                                       ; $6433: $60
    rst $38                                       ; $6434: $FF
    ld e, a                                       ; $6435: $5F
    rst $38                                       ; $6436: $FF
    ld h, b                                       ; $6437: $60
    ldh a, [rP1]                                  ; $6438: $F0 $00
    ldh a, [$60]                                  ; $643A: $F0 $60
    ld [hl], b                                    ; $643C: $70
    ldh [rSVBK], a                                ; $643D: $E0 $70
    ldh [$F6], a                                  ; $643F: $E0 $F6
    ld a, a                                       ; $6441: $7F
    or $7F                                        ; $6442: $F6 $7F
    or $7F                                        ; $6444: $F6 $7F
    or $7F                                        ; $6446: $F6 $7F
    xor $77                                       ; $6448: $EE $77
    rst $28                                       ; $644A: $EF
    halt                                          ; $644B: $76
    db $CD, $76, $7F
    nop                                           ; $644F: $00
    ld [hl], b                                    ; $6450: $70
    ldh [rSVBK], a                                ; $6451: $E0 $70
    ldh [$F0], a                                  ; $6453: $E0 $F0
    ldh [$F0], a                                  ; $6455: $E0 $F0
    ldh [$F0], a                                  ; $6457: $E0 $F0
    ldh [$F0], a                                  ; $6459: $E0 $F0
    ldh [$F0], a                                  ; $645B: $E0 $F0
    ldh [$E0], a                                  ; $645D: $E0 $E0
    nop                                           ; $645F: $00
    db $E3                                        ; $6460: $E3
    nop                                           ; $6461: $00
    cp [hl]                                       ; $6462: $BE
    ld h, c                                       ; $6463: $61
    rst $38                                       ; $6464: $FF
    ld e, l                                       ; $6465: $5D
    rst $38                                       ; $6466: $FF
    ld h, c                                       ; $6467: $61
    jp hl                                         ; $6468: $E9


    db $10                                        ; $6469: $10
    rst $30                                       ; $646A: $F7
    ld a, c                                       ; $646B: $79
    di                                            ; $646C: $F3
    ld a, a                                       ; $646D: $7F
    di                                            ; $646E: $F3
    ld a, a                                       ; $646F: $7F
    adc [hl]                                      ; $6470: $8E
    nop                                           ; $6471: $00
    ei                                            ; $6472: $FB
    add [hl]                                      ; $6473: $86
    rst $38                                       ; $6474: $FF
    ld [hl], l                                    ; $6475: $75
    rst $38                                       ; $6476: $FF
    add [hl]                                      ; $6477: $86
    and a                                         ; $6478: $A7
    ld b, b                                       ; $6479: $40
    rst $18                                       ; $647A: $DF
    and $CF                                       ; $647B: $E6 $CF
    cp $CF                                        ; $647D: $FE $CF
    cp $FB                                        ; $647F: $FE $FB
    ld a, a                                       ; $6481: $7F
    ei                                            ; $6482: $FB
    ld a, a                                       ; $6483: $7F
    rst $38                                       ; $6484: $FF
    ld a, a                                       ; $6485: $7F
    rst $38                                       ; $6486: $FF
    ld a, a                                       ; $6487: $7F
    ei                                            ; $6488: $FB
    ld a, a                                       ; $6489: $7F
    ei                                            ; $648A: $FB
    ld a, a                                       ; $648B: $7F
    rst $30                                       ; $648C: $F7
    ld a, e                                       ; $648D: $7B
    ld a, a                                       ; $648E: $7F
    nop                                           ; $648F: $00
    rst $28                                       ; $6490: $EF
    cp $EF                                        ; $6491: $FE $EF
    cp $FF                                        ; $6493: $FE $FF
    cp $FF                                        ; $6495: $FE $FF
    cp $EF                                        ; $6497: $FE $EF
    cp $EF                                        ; $6499: $FE $EF
    cp $DF                                        ; $649B: $FE $DF
    xor $FE                                       ; $649D: $EE $FE
    nop                                           ; $649F: $00
    rst $28                                       ; $64A0: $EF
    cp $EF                                        ; $64A1: $FE $EF
    cp $FF                                        ; $64A3: $FE $FF
    cp $FF                                        ; $64A5: $FE $FF
    rst $38                                       ; $64A7: $FF
    rst $28                                       ; $64A8: $EF
    rst $38                                       ; $64A9: $FF
    rst $28                                       ; $64AA: $EF
    rst $38                                       ; $64AB: $FF
    rst $18                                       ; $64AC: $DF
    rst $28                                       ; $64AD: $EF
    rst $38                                       ; $64AE: $FF
    nop                                           ; $64AF: $00
    nop                                           ; $64B0: $00
    nop                                           ; $64B1: $00
    nop                                           ; $64B2: $00
    nop                                           ; $64B3: $00
    nop                                           ; $64B4: $00
    nop                                           ; $64B5: $00
    add b                                         ; $64B6: $80
    nop                                           ; $64B7: $00
    add b                                         ; $64B8: $80
    nop                                           ; $64B9: $00
    ret nz                                        ; $64BA: $C0

    add b                                         ; $64BB: $80
    add b                                         ; $64BC: $80
    nop                                           ; $64BD: $00
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    rst $38                                       ; $64C0: $FF
    nop                                           ; $64C1: $00
    add b                                         ; $64C2: $80
    ld a, a                                       ; $64C3: $7F
    rst $38                                       ; $64C4: $FF
    nop                                           ; $64C5: $00
    ld a, a                                       ; $64C6: $7F
    rrca                                          ; $64C7: $0F
    ld e, a                                       ; $64C8: $5F
    cpl                                           ; $64C9: $2F
    ld e, a                                       ; $64CA: $5F
    cpl                                           ; $64CB: $2F
    ld e, a                                       ; $64CC: $5F
    cpl                                           ; $64CD: $2F
    ld e, a                                       ; $64CE: $5F
    cpl                                           ; $64CF: $2F
    rst $38                                       ; $64D0: $FF
    nop                                           ; $64D1: $00
    ld bc, $FFFE                                  ; $64D2: $01 $FE $FF
    nop                                           ; $64D5: $00
    cp $F0                                        ; $64D6: $FE $F0
    ld a, [$FAF4]                                 ; $64D8: $FA $F4 $FA
    db $F4                                        ; $64DB: $F4
    ld a, [$FAF4]                                 ; $64DC: $FA $F4 $FA
    db $F4                                        ; $64DF: $F4
    ld e, a                                       ; $64E0: $5F
    cpl                                           ; $64E1: $2F
    ld e, a                                       ; $64E2: $5F
    cpl                                           ; $64E3: $2F
    ld e, a                                       ; $64E4: $5F
    cpl                                           ; $64E5: $2F
    ld e, a                                       ; $64E6: $5F
    cpl                                           ; $64E7: $2F
    ld e, a                                       ; $64E8: $5F
    cpl                                           ; $64E9: $2F
    rst $38                                       ; $64EA: $FF
    nop                                           ; $64EB: $00
    add b                                         ; $64EC: $80
    ld a, a                                       ; $64ED: $7F
    rst $38                                       ; $64EE: $FF
    nop                                           ; $64EF: $00
    ld a, [$FAF4]                                 ; $64F0: $FA $F4 $FA
    db $F4                                        ; $64F3: $F4
    ld a, [$FAF4]                                 ; $64F4: $FA $F4 $FA
    db $F4                                        ; $64F7: $F4
    ld a, [$FFF4]                                 ; $64F8: $FA $F4 $FF
    nop                                           ; $64FB: $00
    ld bc, $FFFE                                  ; $64FC: $01 $FE $FF
    nop                                           ; $64FF: $00
    rst $38                                       ; $6500: $FF
    nop                                           ; $6501: $00
    add b                                         ; $6502: $80
    ld a, a                                       ; $6503: $7F
    rst $38                                       ; $6504: $FF
    nop                                           ; $6505: $00
    ld [hl], b                                    ; $6506: $70
    rrca                                          ; $6507: $0F
    ld d, b                                       ; $6508: $50
    cpl                                           ; $6509: $2F
    ld d, b                                       ; $650A: $50
    cpl                                           ; $650B: $2F
    ld d, e                                       ; $650C: $53
    cpl                                           ; $650D: $2F
    ld d, a                                       ; $650E: $57
    cpl                                           ; $650F: $2F
    rst $38                                       ; $6510: $FF
    nop                                           ; $6511: $00
    ld bc, $FFFE                                  ; $6512: $01 $FE $FF
    nop                                           ; $6515: $00
    ld a, $F0                                     ; $6516: $3E $F0
    ld a, d                                       ; $6518: $7A
    db $F4                                        ; $6519: $F4
    ld a, [$FAF4]                                 ; $651A: $FA $F4 $FA
    db $F4                                        ; $651D: $F4
    ld a, [$50F4]                                 ; $651E: $FA $F4 $50
    cpl                                           ; $6521: $2F
    ld d, b                                       ; $6522: $50
    cpl                                           ; $6523: $2F
    ld d, b                                       ; $6524: $50
    cpl                                           ; $6525: $2F
    ld d, b                                       ; $6526: $50
    cpl                                           ; $6527: $2F
    ld d, e                                       ; $6528: $53
    cpl                                           ; $6529: $2F
    rst $38                                       ; $652A: $FF
    nop                                           ; $652B: $00
    add b                                         ; $652C: $80
    ld a, a                                       ; $652D: $7F
    rst $38                                       ; $652E: $FF
    nop                                           ; $652F: $00
    ld a, [bc]                                    ; $6530: $0A
    db $F4                                        ; $6531: $F4
    ld a, [de]                                    ; $6532: $1A
    db $F4                                        ; $6533: $F4
    ld a, d                                       ; $6534: $7A
    db $F4                                        ; $6535: $F4
    ld a, [$FAF4]                                 ; $6536: $FA $F4 $FA
    db $F4                                        ; $6539: $F4
    rst $38                                       ; $653A: $FF
    nop                                           ; $653B: $00
    ld bc, $FFFE                                  ; $653C: $01 $FE $FF
    nop                                           ; $653F: $00
    rst $38                                       ; $6540: $FF
    nop                                           ; $6541: $00
    add b                                         ; $6542: $80
    ld a, a                                       ; $6543: $7F
    rst $38                                       ; $6544: $FF
    nop                                           ; $6545: $00
    ld a, a                                       ; $6546: $7F
    rrca                                          ; $6547: $0F
    ld e, a                                       ; $6548: $5F
    cpl                                           ; $6549: $2F
    ld e, h                                       ; $654A: $5C
    cpl                                           ; $654B: $2F
    ld e, b                                       ; $654C: $58
    cpl                                           ; $654D: $2F
    ld d, b                                       ; $654E: $50
    cpl                                           ; $654F: $2F
    rst $38                                       ; $6550: $FF
    nop                                           ; $6551: $00
    ld bc, $FFFE                                  ; $6552: $01 $FE $FF
    nop                                           ; $6555: $00
    adc [hl]                                      ; $6556: $8E
    ldh a, [$0A]                                  ; $6557: $F0 $0A
    db $F4                                        ; $6559: $F4
    ld a, [bc]                                    ; $655A: $0A
    db $F4                                        ; $655B: $F4
    ld a, [bc]                                    ; $655C: $0A
    db $F4                                        ; $655D: $F4
    ld a, [bc]                                    ; $655E: $0A
    db $F4                                        ; $655F: $F4
    ld e, a                                       ; $6560: $5F
    cpl                                           ; $6561: $2F
    ld e, a                                       ; $6562: $5F
    cpl                                           ; $6563: $2F
    ld e, a                                       ; $6564: $5F
    cpl                                           ; $6565: $2F
    ld e, [hl]                                    ; $6566: $5E
    cpl                                           ; $6567: $2F
    ld e, h                                       ; $6568: $5C
    cpl                                           ; $6569: $2F
    rst $38                                       ; $656A: $FF
    nop                                           ; $656B: $00
    add b                                         ; $656C: $80
    ld a, a                                       ; $656D: $7F
    rst $38                                       ; $656E: $FF
    nop                                           ; $656F: $00
    ld [$8AF4], a                                 ; $6570: $EA $F4 $8A
    db $F4                                        ; $6573: $F4
    ld a, [bc]                                    ; $6574: $0A
    db $F4                                        ; $6575: $F4
    ld a, [bc]                                    ; $6576: $0A
    db $F4                                        ; $6577: $F4
    ld a, [bc]                                    ; $6578: $0A
    db $F4                                        ; $6579: $F4
    rst $38                                       ; $657A: $FF
    nop                                           ; $657B: $00
    ld bc, $FFFE                                  ; $657C: $01 $FE $FF

jr_041_657F:
    nop                                           ; $657F: $00
    rrca                                          ; $6580: $0F
    nop                                           ; $6581: $00
    ccf                                           ; $6582: $3F
    rrca                                          ; $6583: $0F
    ld a, a                                       ; $6584: $7F
    jr c, jr_041_657F                             ; $6585: $38 $F8

    ld [hl], b                                    ; $6587: $70
    db $FC                                        ; $6588: $FC
    ld a, b                                       ; $6589: $78
    ld a, h                                       ; $658A: $7C
    jr c, jr_041_65C6                             ; $658B: $38 $39

    nop                                           ; $658D: $00
    inc bc                                        ; $658E: $03
    ld bc, $00F0                                  ; $658F: $01 $F0 $00
    ld hl, sp-$10                                 ; $6592: $F8 $F0
    db $FC                                        ; $6594: $FC

jr_041_6595:
    jr c, @+$40                                   ; $6595: $38 $3E

    inc e                                         ; $6597: $1C
    ld a, $1C                                     ; $6598: $3E $1C
    db $FC                                        ; $659A: $FC
    jr c, jr_041_6595                             ; $659B: $38 $F8

    ldh a, [$F0]                                  ; $659D: $F0 $F0
    ret nz                                        ; $659F: $C0

    ld a, $1C                                     ; $65A0: $3E $1C
    ld a, $1C                                     ; $65A2: $3E $1C
    inc e                                         ; $65A4: $1C
    nop                                           ; $65A5: $00
    nop                                           ; $65A6: $00
    nop                                           ; $65A7: $00
    inc e                                         ; $65A8: $1C
    nop                                           ; $65A9: $00
    ld a, $1C                                     ; $65AA: $3E $1C
    ld a, $1C                                     ; $65AC: $3E $1C
    inc e                                         ; $65AE: $1C
    nop                                           ; $65AF: $00
    jr c, jr_041_65B2                             ; $65B0: $38 $00

jr_041_65B2:
    jr c, @+$12                                   ; $65B2: $38 $10

    jr c, jr_041_65C6                             ; $65B4: $38 $10

    cp $10                                        ; $65B6: $FE $10
    cp $7C                                        ; $65B8: $FE $7C
    ld a, h                                       ; $65BA: $7C
    jr c, jr_041_65F5                             ; $65BB: $38 $38

    db $10                                        ; $65BD: $10
    stop                                          ; $65BE: $10 $00
    jr jr_041_65C2                                ; $65C0: $18 $00

jr_041_65C2:
    inc e                                         ; $65C2: $1C
    ld [$0CFE], sp                                ; $65C3: $08 $FE $0C

jr_041_65C6:
    rst $38                                       ; $65C6: $FF
    ld a, [hl]                                    ; $65C7: $7E
    cp $0C                                        ; $65C8: $FE $0C
    inc e                                         ; $65CA: $1C
    ld [$0018], sp                                ; $65CB: $08 $18 $00
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    inc bc                                        ; $65D0: $03
    nop                                           ; $65D1: $00
    inc b                                         ; $65D2: $04
    inc bc                                        ; $65D3: $03
    ld [$0B07], sp                                ; $65D4: $08 $07 $0B
    inc b                                         ; $65D7: $04
    inc b                                         ; $65D8: $04
    inc bc                                        ; $65D9: $03
    ld [$1007], sp                                ; $65DA: $08 $07 $10
    rrca                                          ; $65DD: $0F
    db $10                                        ; $65DE: $10
    rrca                                          ; $65DF: $0F
    ldh [rP1], a                                  ; $65E0: $E0 $00
    db $10                                        ; $65E2: $10
    ldh [$08], a                                  ; $65E3: $E0 $08
    ldh a, [$E8]                                  ; $65E5: $F0 $E8
    db $10                                        ; $65E7: $10
    db $10                                        ; $65E8: $10
    ldh [$08], a                                  ; $65E9: $E0 $08
    ldh a, [$08]                                  ; $65EB: $F0 $08
    ldh a, [$08]                                  ; $65ED: $F0 $08
    ldh a, [rNR14]                                ; $65EF: $F0 $14
    dec bc                                        ; $65F1: $0B
    inc h                                         ; $65F2: $24
    dec de                                        ; $65F3: $1B
    inc h                                         ; $65F4: $24

jr_041_65F5:
    dec de                                        ; $65F5: $1B
    inc e                                         ; $65F6: $1C
    inc bc                                        ; $65F7: $03
    inc b                                         ; $65F8: $04
    inc bc                                        ; $65F9: $03
    inc b                                         ; $65FA: $04
    inc bc                                        ; $65FB: $03
    inc b                                         ; $65FC: $04
    inc bc                                        ; $65FD: $03
    inc bc                                        ; $65FE: $03
    nop                                           ; $65FF: $00
    ld [$28F0], sp                                ; $6600: $08 $F0 $28
    ret nc                                        ; $6603: $D0

    or b                                          ; $6604: $B0
    ld b, b                                       ; $6605: $40
    ret nz                                        ; $6606: $C0

    nop                                           ; $6607: $00
    add b                                         ; $6608: $80
    nop                                           ; $6609: $00
    add b                                         ; $660A: $80
    nop                                           ; $660B: $00
    add b                                         ; $660C: $80
    nop                                           ; $660D: $00
    nop                                           ; $660E: $00
    nop                                           ; $660F: $00
    add e                                         ; $6610: $83
    ld a, a                                       ; $6611: $7F
    pop bc                                        ; $6612: $C1
    ld e, a                                       ; $6613: $5F
    ld b, b                                       ; $6614: $40
    daa                                           ; $6615: $27
    ld h, b                                       ; $6616: $60
    inc sp                                        ; $6617: $33
    jr nc, @+$1A                                  ; $6618: $30 $18

    inc e                                         ; $661A: $1C
    rlca                                          ; $661B: $07
    rlca                                          ; $661C: $07
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    nop                                           ; $661F: $00
    add $FC                                       ; $6620: $C6 $FC
    cp $FC                                        ; $6622: $FE $FC
    db $FC                                        ; $6624: $FC
    ld hl, sp-$04                                 ; $6625: $F8 $FC
    ld hl, sp+$78                                 ; $6627: $F8 $78
    ldh a, [$F0]                                  ; $6629: $F0 $F0
    ret nz                                        ; $662B: $C0

    ret nz                                        ; $662C: $C0

    nop                                           ; $662D: $00
    nop                                           ; $662E: $00
    nop                                           ; $662F: $00
    ld bc, $4100                                  ; $6630: $01 $00 $41
    nop                                           ; $6633: $00
    jr nz, jr_041_6636                            ; $6634: $20 $00

jr_041_6636:
    stop                                          ; $6636: $10 $00
    ld [$C000], sp                                ; $6638: $08 $00 $C0
    nop                                           ; $663B: $00
    jr nc, jr_041_663E                            ; $663C: $30 $00

jr_041_663E:
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    ld [bc], a                                    ; $6642: $02
    nop                                           ; $6643: $00
    add h                                         ; $6644: $84
    nop                                           ; $6645: $00
    adc b                                         ; $6646: $88
    nop                                           ; $6647: $00
    sub b                                         ; $6648: $90
    nop                                           ; $6649: $00
    ld b, $00                                     ; $664A: $06 $00
    jr jr_041_664E                                ; $664C: $18 $00

jr_041_664E:
    nop                                           ; $664E: $00
    nop                                           ; $664F: $00
    ld hl, $1121                                  ; $6650: $21 $21 $11
    ld de, $1919                                  ; $6653: $11 $19 $19
    add hl, sp                                    ; $6656: $39
    add hl, sp                                    ; $6657: $39
    add hl, hl                                    ; $6658: $29
    add hl, sp                                    ; $6659: $39
    daa                                           ; $665A: $27
    ccf                                           ; $665B: $3F
    db $10                                        ; $665C: $10
    rra                                           ; $665D: $1F
    dec c                                         ; $665E: $0D
    rrca                                          ; $665F: $0F
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    add h                                         ; $6664: $84
    add h                                         ; $6665: $84
    ret z                                         ; $6666: $C8

    ret z                                         ; $6667: $C8

    ld l, h                                       ; $6668: $6C
    db $EC                                        ; $6669: $EC
    scf                                           ; $666A: $37
    rst $38                                       ; $666B: $FF
    nop                                           ; $666C: $00
    rst $38                                       ; $666D: $FF
    ld l, b                                       ; $666E: $68
    rst $38                                       ; $666F: $FF
    ld [hl+], a                                   ; $6670: $22
    ld [hl+], a                                   ; $6671: $22
    db $10                                        ; $6672: $10
    db $10                                        ; $6673: $10
    jr jr_041_668E                                ; $6674: $18 $18

    ld l, $3E                                     ; $6676: $2E $3E
    rst $20                                       ; $6678: $E7
    rst $38                                       ; $6679: $FF
    jp $00FF                                      ; $667A: $C3 $FF $00


    rst $38                                       ; $667D: $FF
    set 7, a                                      ; $667E: $CB $FF
    ld [bc], a                                    ; $6680: $02
    ld [bc], a                                    ; $6681: $02
    inc b                                         ; $6682: $04
    inc b                                         ; $6683: $04
    adc h                                         ; $6684: $8C
    adc h                                         ; $6685: $8C
    call $D4CD                                    ; $6686: $CD $CD $D4
    call c, $FD75                                 ; $6689: $DC $75 $FD
    rlca                                          ; $668C: $07
    rst $38                                       ; $668D: $FF

jr_041_668E:
    xor h                                         ; $668E: $AC
    rst $38                                       ; $668F: $FF
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    jr jr_041_66AC                                ; $6692: $18 $18

    jr nc, jr_041_66C6                            ; $6694: $30 $30

    jr nc, jr_041_66C8                            ; $6696: $30 $30

    ld l, b                                       ; $6698: $68
    ld a, b                                       ; $6699: $78
    ret z                                         ; $669A: $C8

    ld hl, sp+$18                                 ; $669B: $F8 $18
    ld hl, sp-$50                                 ; $669D: $F8 $B0
    ldh a, [rDIV]                                 ; $669F: $F0 $04
    inc b                                         ; $66A1: $04
    ld [$1808], sp                                ; $66A2: $08 $08 $18
    jr jr_041_66CF                                ; $66A5: $18 $28

    jr c, jr_041_66D1                             ; $66A7: $38 $28

    jr c, jr_041_66BF                             ; $66A9: $38 $14

    inc e                                         ; $66AB: $1C

jr_041_66AC:
    dec de                                        ; $66AC: $1B
    rra                                           ; $66AD: $1F
    dec c                                         ; $66AE: $0D
    rrca                                          ; $66AF: $0F
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00
    jr z, @+$2A                                   ; $66B2: $28 $28

    ld b, h                                       ; $66B4: $44
    ld b, h                                       ; $66B5: $44
    add $C6                                       ; $66B6: $C6 $C6
    xor l                                         ; $66B8: $AD
    rst $28                                       ; $66B9: $EF
    sbc b                                         ; $66BA: $98
    rst $38                                       ; $66BB: $FF
    ld de, $A6FF                                  ; $66BC: $11 $FF $A6

jr_041_66BF:
    rst $38                                       ; $66BF: $FF
    ld b, $06                                     ; $66C0: $06 $06
    ld c, h                                       ; $66C2: $4C
    ld c, h                                       ; $66C3: $4C

Call_041_66C4:
    inc d                                         ; $66C4: $14
    inc e                                         ; $66C5: $1C

jr_041_66C6:
    inc d                                         ; $66C6: $14
    inc e                                         ; $66C7: $1C

jr_041_66C8:
    inc h                                         ; $66C8: $24
    inc a                                         ; $66C9: $3C
    ld [c], a                                     ; $66CA: $E2
    cp $03                                        ; $66CB: $FE $03
    rst $38                                       ; $66CD: $FF
    ld l, e                                       ; $66CE: $6B

jr_041_66CF:
    rst $38                                       ; $66CF: $FF
    ld h, b                                       ; $66D0: $60

jr_041_66D1:
    ld h, b                                       ; $66D1: $60
    ld sp, $1831                                  ; $66D2: $31 $31 $18
    jr jr_041_66EF                                ; $66D5: $18 $18

    jr @+$26                                      ; $66D7: $18 $24

    inc a                                         ; $66D9: $3C
    ld [c], a                                     ; $66DA: $E2
    cp $8B                                        ; $66DB: $FE $8B
    rst $38                                       ; $66DD: $FF
    ld e, [hl]                                    ; $66DE: $5E
    rst $38                                       ; $66DF: $FF
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    add b                                         ; $66E2: $80
    add b                                         ; $66E3: $80
    call nz, Call_041_60C4                        ; $66E4: $C4 $C4 $60
    ld h, b                                       ; $66E7: $60
    ld d, h                                       ; $66E8: $54
    ld [hl], h                                    ; $66E9: $74
    ld c, h                                       ; $66EA: $4C
    ld a, h                                       ; $66EB: $7C
    call z, $B8FC                                 ; $66EC: $CC $FC $B8

jr_041_66EF:
    ld hl, sp+$00                                 ; $66EF: $F8 $00
    nop                                           ; $66F1: $00
    ld bc, $0301                                  ; $66F2: $01 $01 $03
    inc bc                                        ; $66F5: $03
    inc hl                                        ; $66F6: $23
    inc hl                                        ; $66F7: $23
    ld a, [de]                                    ; $66F8: $1A
    dec de                                        ; $66F9: $1B
    inc d                                         ; $66FA: $14
    rra                                           ; $66FB: $1F
    jr jr_041_671D                                ; $66FC: $18 $1F

    dec c                                         ; $66FE: $0D
    rrca                                          ; $66FF: $0F
    add b                                         ; $6700: $80
    add b                                         ; $6701: $80
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    db $10                                        ; $6704: $10
    db $10                                        ; $6705: $10
    ld [$8C08], sp                                ; $6706: $08 $08 $8C
    adc h                                         ; $6709: $8C
    sub h                                         ; $670A: $94
    sbc h                                         ; $670B: $9C
    ld [hl], e                                    ; $670C: $73
    rst $38                                       ; $670D: $FF
    xor h                                         ; $670E: $AC
    rst $38                                       ; $670F: $FF
    call nz, Call_041_66C4                        ; $6710: $C4 $C4 $66
    ld h, [hl]                                    ; $6713: $66
    ld [hl], $36                                  ; $6714: $36 $36
    ld a, [hl+]                                   ; $6716: $2A
    ld a, $64                                     ; $6717: $3E $64
    ld a, h                                       ; $6719: $7C
    call nc, $87FC                                ; $671A: $D4 $FC $87

jr_041_671D:
    rst $38                                       ; $671D: $FF
    or l                                          ; $671E: $B5
    rst $38                                       ; $671F: $FF
    ld b, $06                                     ; $6720: $06 $06
    inc e                                         ; $6722: $1C
    inc e                                         ; $6723: $1C
    jr z, jr_041_675E                             ; $6724: $28 $38

    ld l, b                                       ; $6726: $68
    ld a, b                                       ; $6727: $78
    ld c, b                                       ; $6728: $48
    ld a, b                                       ; $6729: $78
    call $87FD                                    ; $672A: $CD $FD $87
    rst $38                                       ; $672D: $FF
    xor e                                         ; $672E: $AB
    rst $38                                       ; $672F: $FF
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    ld hl, $4621                                  ; $6732: $21 $21 $46
    ld b, [hl]                                    ; $6735: $46
    call z, $ACCC                                 ; $6736: $CC $CC $AC
    db $EC                                        ; $6739: $EC
    sbc b                                         ; $673A: $98
    ld hl, sp+$18                                 ; $673B: $F8 $18
    ld hl, sp+$70                                 ; $673D: $F8 $70
    ldh a, [$ED]                                  ; $673F: $F0 $ED
    db $ED                                        ; $6741: $ED
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674A: $00
    nop                                           ; $674B: $00
    nop                                           ; $674C: $00
    nop                                           ; $674D: $00
    nop                                           ; $674E: $00
    nop                                           ; $674F: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    db $10                                        ; $6754: $10
    db $10                                        ; $6755: $10
    inc e                                         ; $6756: $1C
    inc e                                         ; $6757: $1C
    jr c, jr_041_6792                             ; $6758: $38 $38

    ld [$0008], sp                                ; $675A: $08 $08 $00
    nop                                           ; $675D: $00

jr_041_675E:
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    db $10                                        ; $6766: $10
    stop                                          ; $6767: $10 $00
    nop                                           ; $6769: $00
    nop                                           ; $676A: $00
    nop                                           ; $676B: $00
    nop                                           ; $676C: $00
    nop                                           ; $676D: $00
    nop                                           ; $676E: $00
    nop                                           ; $676F: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    db $10                                        ; $6778: $10
    stop                                          ; $6779: $10 $00
    nop                                           ; $677B: $00
    db $10                                        ; $677C: $10
    db $10                                        ; $677D: $10
    db $10                                        ; $677E: $10
    stop                                          ; $677F: $10 $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    dec bc                                        ; $6788: $0B
    dec bc                                        ; $6789: $0B
    nop                                           ; $678A: $00
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    nop                                           ; $678D: $00
    nop                                           ; $678E: $00
    nop                                           ; $678F: $00
    db $10                                        ; $6790: $10
    db $10                                        ; $6791: $10

jr_041_6792:
    db $10                                        ; $6792: $10
    db $10                                        ; $6793: $10
    jr @+$1A                                      ; $6794: $18 $18

    daa                                           ; $6796: $27
    ccf                                           ; $6797: $3F
    db $E4                                        ; $6798: $E4
    db $FC                                        ; $6799: $FC
    jr jr_041_67B4                                ; $679A: $18 $18

    ld [$0808], sp                                ; $679C: $08 $08 $08
    ld [rRAMG], sp                                ; $679F: $08 $00 $00
    db $10                                        ; $67A2: $10
    db $10                                        ; $67A3: $10
    jr jr_041_67BE                                ; $67A4: $18 $18

    ld h, $3E                                     ; $67A6: $26 $3E
    ld h, h                                       ; $67A8: $64
    ld a, h                                       ; $67A9: $7C
    jr jr_041_67C4                                ; $67AA: $18 $18

    ld [$0008], sp                                ; $67AC: $08 $08 $00
    nop                                           ; $67AF: $00
    nop                                           ; $67B0: $00
    nop                                           ; $67B1: $00
    nop                                           ; $67B2: $00
    nop                                           ; $67B3: $00

jr_041_67B4:
    rlca                                          ; $67B4: $07
    rlca                                          ; $67B5: $07
    jr jr_041_67D4                                ; $67B6: $18 $1C

    jr nc, jr_041_67EA                            ; $67B8: $30 $30

    db $10                                        ; $67BA: $10
    inc e                                         ; $67BB: $1C
    rrca                                          ; $67BC: $0F
    rrca                                          ; $67BD: $0F

jr_041_67BE:
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    rrca                                          ; $67C2: $0F
    rrca                                          ; $67C3: $0F

jr_041_67C4:
    jr nc, @+$3E                                  ; $67C4: $30 $3C

    ld b, b                                       ; $67C6: $40
    ld h, b                                       ; $67C7: $60
    add b                                         ; $67C8: $80
    ret nz                                        ; $67C9: $C0

    ld b, b                                       ; $67CA: $40
    ld h, b                                       ; $67CB: $60
    jr nc, jr_041_680A                            ; $67CC: $30 $3C

    rrca                                          ; $67CE: $0F
    rrca                                          ; $67CF: $0F
    nop                                           ; $67D0: $00
    nop                                           ; $67D1: $00
    nop                                           ; $67D2: $00
    nop                                           ; $67D3: $00

jr_041_67D4:
    nop                                           ; $67D4: $00
    nop                                           ; $67D5: $00
    nop                                           ; $67D6: $00
    nop                                           ; $67D7: $00
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00
    nop                                           ; $67DA: $00
    nop                                           ; $67DB: $00
    rlca                                          ; $67DC: $07
    rlca                                          ; $67DD: $07
    jr nz, @+$2E                                  ; $67DE: $20 $2C

    nop                                           ; $67E0: $00
    nop                                           ; $67E1: $00
    nop                                           ; $67E2: $00
    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    nop                                           ; $67E7: $00
    nop                                           ; $67E8: $00
    nop                                           ; $67E9: $00

jr_041_67EA:
    nop                                           ; $67EA: $00
    nop                                           ; $67EB: $00
    ret nz                                        ; $67EC: $C0

    ret nz                                        ; $67ED: $C0

    jr z, jr_041_6818                             ; $67EE: $28 $28

    ld b, b                                       ; $67F0: $40
    ld h, b                                       ; $67F1: $60
    or b                                          ; $67F2: $B0
    ldh a, [rLCDC]                                ; $67F3: $F0 $40
    ld b, b                                       ; $67F5: $40
    ld h, b                                       ; $67F6: $60
    ld l, l                                       ; $67F7: $6D
    xor e                                         ; $67F8: $AB
    xor e                                         ; $67F9: $AB
    db $10                                        ; $67FA: $10
    inc d                                         ; $67FB: $14
    ld [bc], a                                    ; $67FC: $02
    ld [bc], a                                    ; $67FD: $02
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    ld a, [de]                                    ; $6800: $1A
    ld e, $09                                     ; $6801: $1E $09
    dec bc                                        ; $6803: $0B
    ld [bc], a                                    ; $6804: $02
    ld [bc], a                                    ; $6805: $02
    inc c                                         ; $6806: $0C
    inc l                                         ; $6807: $2C
    or b                                          ; $6808: $B0
    or b                                          ; $6809: $B0

jr_041_680A:
    ld [$000A], sp                                ; $680A: $08 $0A $00
    ld b, b                                       ; $680D: $40
    jr nz, @+$22                                  ; $680E: $20 $20

    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00

jr_041_6818:
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    ld bc, $2A01                                  ; $681C: $01 $01 $2A
    ld l, $00                                     ; $681F: $2E $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682A: $00
    nop                                           ; $682B: $00
    ld h, b                                       ; $682C: $60
    ld h, b                                       ; $682D: $60
    ld [$6008], sp                                ; $682E: $08 $08 $60
    ld h, b                                       ; $6831: $60
    db $10                                        ; $6832: $10
    db $10                                        ; $6833: $10
    ld b, b                                       ; $6834: $40
    ld b, b                                       ; $6835: $40
    ld b, b                                       ; $6836: $40
    ld c, l                                       ; $6837: $4D
    xor d                                         ; $6838: $AA
    xor d                                         ; $6839: $AA
    ld de, $0215                                  ; $683A: $11 $15 $02
    ld [bc], a                                    ; $683D: $02
    db $10                                        ; $683E: $10
    db $10                                        ; $683F: $10
    ld [bc], a                                    ; $6840: $02
    ld [bc], a                                    ; $6841: $02
    ld a, [bc]                                    ; $6842: $0A
    ld a, [bc]                                    ; $6843: $0A
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    inc b                                         ; $6846: $04
    inc h                                         ; $6847: $24
    or d                                          ; $6848: $B2
    or d                                          ; $6849: $B2
    ld [$000A], sp                                ; $684A: $08 $0A $00
    ld b, b                                       ; $684D: $40
    inc h                                         ; $684E: $24
    inc h                                         ; $684F: $24
    ld b, c                                       ; $6850: $41
    ld b, l                                       ; $6851: $45
    inc b                                         ; $6852: $04
    inc b                                         ; $6853: $04
    nop                                           ; $6854: $00
    ld [$0909], sp                                ; $6855: $08 $09 $09
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    jr nz, jr_041_6880                            ; $685A: $20 $24

    ld bc, $0001                                  ; $685C: $01 $01 $00
    nop                                           ; $685F: $00
    ld b, b                                       ; $6860: $40
    ld b, b                                       ; $6861: $40
    nop                                           ; $6862: $00
    add b                                         ; $6863: $80
    db $10                                        ; $6864: $10
    db $10                                        ; $6865: $10
    ld [$2048], sp                                ; $6866: $08 $48 $20
    jr nz, jr_041_686B                            ; $6869: $20 $00

jr_041_686B:
    nop                                           ; $686B: $00
    nop                                           ; $686C: $00
    nop                                           ; $686D: $00
    inc b                                         ; $686E: $04
    inc b                                         ; $686F: $04
    inc b                                         ; $6870: $04
    dec b                                         ; $6871: $05
    jr nz, jr_041_6894                            ; $6872: $20 $20

    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    ld b, b                                       ; $6876: $40
    ld b, b                                       ; $6877: $40
    nop                                           ; $6878: $00
    ld [bc], a                                    ; $6879: $02
    ld c, b                                       ; $687A: $48
    ld c, b                                       ; $687B: $48
    jr nz, jr_041_689E                            ; $687C: $20 $20

    nop                                           ; $687E: $00
    ld a, [bc]                                    ; $687F: $0A

jr_041_6880:
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    db $10                                        ; $6882: $10
    db $10                                        ; $6883: $10
    ld [$0008], sp                                ; $6884: $08 $08 $00
    nop                                           ; $6887: $00
    add h                                         ; $6888: $84
    add h                                         ; $6889: $84
    db $10                                        ; $688A: $10
    db $10                                        ; $688B: $10
    ld c, b                                       ; $688C: $48
    ld c, b                                       ; $688D: $48
    nop                                           ; $688E: $00
    nop                                           ; $688F: $00
    ld de, $0011                                  ; $6890: $11 $11 $00
    nop                                           ; $6893: $00

jr_041_6894:
    nop                                           ; $6894: $00
    ld [bc], a                                    ; $6895: $02
    db $10                                        ; $6896: $10
    stop                                          ; $6897: $10 $00
    nop                                           ; $6899: $00
    nop                                           ; $689A: $00
    ld bc, $0404                                  ; $689B: $01 $04 $04

jr_041_689E:
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    inc b                                         ; $68A2: $04
    ld b, h                                       ; $68A3: $44
    db $10                                        ; $68A4: $10
    stop                                          ; $68A5: $10 $00
    nop                                           ; $68A7: $00
    add b                                         ; $68A8: $80
    add b                                         ; $68A9: $80
    nop                                           ; $68AA: $00
    jr nz, jr_041_68B5                            ; $68AB: $20 $08

    ld [$2020], sp                                ; $68AD: $08 $20 $20
    nop                                           ; $68B0: $00
    nop                                           ; $68B1: $00
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    nop                                           ; $68B4: $00

jr_041_68B5:
    nop                                           ; $68B5: $00
    nop                                           ; $68B6: $00
    nop                                           ; $68B7: $00
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00
    nop                                           ; $68BB: $00
    db $10                                        ; $68BC: $10
    stop                                          ; $68BD: $10 $00
    ld [bc], a                                    ; $68BF: $02
    nop                                           ; $68C0: $00
    nop                                           ; $68C1: $00
    nop                                           ; $68C2: $00
    nop                                           ; $68C3: $00
    nop                                           ; $68C4: $00
    nop                                           ; $68C5: $00
    nop                                           ; $68C6: $00
    nop                                           ; $68C7: $00
    ld b, b                                       ; $68C8: $40
    ld b, b                                       ; $68C9: $40
    nop                                           ; $68CA: $00
    nop                                           ; $68CB: $00
    nop                                           ; $68CC: $00
    nop                                           ; $68CD: $00
    nop                                           ; $68CE: $00
    nop                                           ; $68CF: $00
    nop                                           ; $68D0: $00
    nop                                           ; $68D1: $00
    inc b                                         ; $68D2: $04
    inc b                                         ; $68D3: $04
    nop                                           ; $68D4: $00
    nop                                           ; $68D5: $00
    nop                                           ; $68D6: $00
    nop                                           ; $68D7: $00
    nop                                           ; $68D8: $00
    nop                                           ; $68D9: $00
    ld [$0008], sp                                ; $68DA: $08 $08 $00
    nop                                           ; $68DD: $00
    nop                                           ; $68DE: $00
    nop                                           ; $68DF: $00
    nop                                           ; $68E0: $00
    add b                                         ; $68E1: $80
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    add b                                         ; $68E4: $80
    add b                                         ; $68E5: $80
    nop                                           ; $68E6: $00
    nop                                           ; $68E7: $00
    nop                                           ; $68E8: $00
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    add b                                         ; $68EB: $80
    jr nz, @+$22                                  ; $68EC: $20 $20

    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    rst $38                                       ; $68F0: $FF
    rst $38                                       ; $68F1: $FF
    rst $38                                       ; $68F2: $FF
    rst $38                                       ; $68F3: $FF
    ret nz                                        ; $68F4: $C0

    ret nz                                        ; $68F5: $C0

    ret nz                                        ; $68F6: $C0

    ret nz                                        ; $68F7: $C0

    ret nz                                        ; $68F8: $C0

    ret nz                                        ; $68F9: $C0

    ret nz                                        ; $68FA: $C0

    ret nz                                        ; $68FB: $C0

    ret nz                                        ; $68FC: $C0

    ret nz                                        ; $68FD: $C0

    ret nz                                        ; $68FE: $C0

    ret nz                                        ; $68FF: $C0

    db $D8, $08, $AA, $20, $D8, $F0, $AA, $00, $F8, $08, $AA, $60, $F8, $F0, $AA, $40
    db $80

    add sp, -$05                                  ; $6911: $E8 $FB
    ld [hl], l                                    ; $6913: $75
    nop                                           ; $6914: $00
    ldh [rP1], a                                  ; $6915: $E0 $00
    ld [hl], h                                    ; $6917: $74
    nop                                           ; $6918: $00

jr_041_6919:
    ldh [$F8], a                                  ; $6919: $E0 $F8
    ld [hl], e                                    ; $691B: $73
    nop                                           ; $691C: $00
    add b                                         ; $691D: $80
    push hl                                       ; $691E: $E5
    or $77                                        ; $691F: $F6 $77
    jr nz, @-$19                                  ; $6921: $20 $E5

    inc bc                                        ; $6923: $03
    ld [hl], a                                    ; $6924: $77
    nop                                           ; $6925: $00
    sbc $FD                                       ; $6926: $DE $FD
    halt                                          ; $6928: $76
    ld b, b                                       ; $6929: $40

jr_041_692A:
    db $EB                                        ; $692A: $EB
    db $FD                                        ; $692B: $FD
    halt                                          ; $692C: $76
    nop                                           ; $692D: $00
    add b                                         ; $692E: $80
    push hl                                       ; $692F: $E5
    push af                                       ; $6930: $F5
    ld [hl], a                                    ; $6931: $77
    jr nz, jr_041_6919                            ; $6932: $20 $E5

    inc b                                         ; $6934: $04
    ld [hl], a                                    ; $6935: $77
    nop                                           ; $6936: $00
    db $DD                                        ; $6937: $DD
    db $FD                                        ; $6938: $FD
    halt                                          ; $6939: $76
    ld b, b                                       ; $693A: $40
    db $EC                                        ; $693B: $EC
    db $FD                                        ; $693C: $FD
    halt                                          ; $693D: $76
    nop                                           ; $693E: $00
    add b                                         ; $693F: $80
    push hl                                       ; $6940: $E5
    db $F4                                        ; $6941: $F4
    ld [hl], a                                    ; $6942: $77
    jr nz, jr_041_692A                            ; $6943: $20 $E5

    dec b                                         ; $6945: $05
    ld [hl], a                                    ; $6946: $77
    nop                                           ; $6947: $00
    db $DC, $FD, $76
    ld b, b                                       ; $694B: $40
    db $ED                                        ; $694C: $ED
    db $FD                                        ; $694D: $FD
    halt                                          ; $694E: $76
    nop                                           ; $694F: $00
    add b                                         ; $6950: $80
    ldh [rP1], a                                  ; $6951: $E0 $00
    ld e, c                                       ; $6953: $59
    ld bc, $F8E0                                  ; $6954: $01 $E0 $F8
    ld e, b                                       ; $6957: $58
    ld bc, $00F0                                  ; $6958: $01 $F0 $00
    ld d, e                                       ; $695B: $53
    ld [bc], a                                    ; $695C: $02
    ldh a, [$F8]                                  ; $695D: $F0 $F8
    ld d, d                                       ; $695F: $52
    ld [bc], a                                    ; $6960: $02
    add sp, $00                                   ; $6961: $E8 $00
    ld d, c                                       ; $6963: $51
    ld [bc], a                                    ; $6964: $02
    add sp, -$08                                  ; $6965: $E8 $F8
    ld d, b                                       ; $6967: $50
    ld [bc], a                                    ; $6968: $02
    add b                                         ; $6969: $80
    ldh [rP1], a                                  ; $696A: $E0 $00
    ld d, a                                       ; $696C: $57
    ld bc, $F8E0                                  ; $696D: $01 $E0 $F8
    ld d, [hl]                                    ; $6970: $56
    ld bc, $00F0                                  ; $6971: $01 $F0 $00
    ld d, e                                       ; $6974: $53
    ld [bc], a                                    ; $6975: $02
    ldh a, [$F8]                                  ; $6976: $F0 $F8
    ld d, d                                       ; $6978: $52
    ld [bc], a                                    ; $6979: $02
    add sp, $00                                   ; $697A: $E8 $00
    ld d, c                                       ; $697C: $51
    ld [bc], a                                    ; $697D: $02
    add sp, -$08                                  ; $697E: $E8 $F8
    ld d, b                                       ; $6980: $50
    ld [bc], a                                    ; $6981: $02
    add b                                         ; $6982: $80
    ldh [rP1], a                                  ; $6983: $E0 $00
    ld d, l                                       ; $6985: $55
    ld bc, $F8E0                                  ; $6986: $01 $E0 $F8
    ld d, h                                       ; $6989: $54
    ld bc, $00F0                                  ; $698A: $01 $F0 $00
    ld d, e                                       ; $698D: $53
    ld [bc], a                                    ; $698E: $02
    ldh a, [$F8]                                  ; $698F: $F0 $F8
    ld d, d                                       ; $6991: $52
    ld [bc], a                                    ; $6992: $02
    add sp, $00                                   ; $6993: $E8 $00
    ld d, c                                       ; $6995: $51
    ld [bc], a                                    ; $6996: $02
    add sp, -$08                                  ; $6997: $E8 $F8
    ld d, b                                       ; $6999: $50
    ld [bc], a                                    ; $699A: $02
    add b                                         ; $699B: $80
    db $DB                                        ; $699C: $DB
    db $FD                                        ; $699D: $FD
    adc a                                         ; $699E: $8F
    nop                                           ; $699F: $00
    db $D3                                        ; $69A0: $D3
    nop                                           ; $69A1: $00
    adc c                                         ; $69A2: $89
    nop                                           ; $69A3: $00
    db $D3                                        ; $69A4: $D3
    ld hl, sp-$7B                                 ; $69A5: $F8 $85
    nop                                           ; $69A7: $00
    add b                                         ; $69A8: $80
    db $DD                                        ; $69A9: $DD
    db $FC                                        ; $69AA: $FC
    adc a                                         ; $69AB: $8F
    nop                                           ; $69AC: $00
    push de                                       ; $69AD: $D5
    db $FC                                        ; $69AE: $FC
    add a                                         ; $69AF: $87
    nop                                           ; $69B0: $00
    push de                                       ; $69B1: $D5
    db $F4                                        ; $69B2: $F4
    adc d                                         ; $69B3: $8A
    nop                                           ; $69B4: $00
    push de                                       ; $69B5: $D5
    inc b                                         ; $69B6: $04
    adc [hl]                                      ; $69B7: $8E
    nop                                           ; $69B8: $00
    add b                                         ; $69B9: $80
    rst $18                                       ; $69BA: $DF
    ld b, $8F                                     ; $69BB: $06 $8F
    nop                                           ; $69BD: $00

jr_041_69BE:
    rst $18                                       ; $69BE: $DF
    db $FD                                        ; $69BF: $FD
    adc a                                         ; $69C0: $8F
    nop                                           ; $69C1: $00
    rst $18                                       ; $69C2: $DF
    db $F4                                        ; $69C3: $F4
    adc a                                         ; $69C4: $8F
    nop                                           ; $69C5: $00
    rst $10                                       ; $69C6: $D7
    dec c                                         ; $69C7: $0D
    add h                                         ; $69C8: $84
    nop                                           ; $69C9: $00
    rst $10                                       ; $69CA: $D7
    dec b                                         ; $69CB: $05
    add e                                         ; $69CC: $83
    nop                                           ; $69CD: $00
    rst $10                                       ; $69CE: $D7
    db $FD                                        ; $69CF: $FD
    add d                                         ; $69D0: $82
    nop                                           ; $69D1: $00
    rst $10                                       ; $69D2: $D7
    push af                                       ; $69D3: $F5
    add c                                         ; $69D4: $81
    nop                                           ; $69D5: $00
    rst $10                                       ; $69D6: $D7
    db $ED                                        ; $69D7: $ED
    add b                                         ; $69D8: $80
    nop                                           ; $69D9: $00
    add b                                         ; $69DA: $80
    pop hl                                        ; $69DB: $E1
    dec b                                         ; $69DC: $05
    adc a                                         ; $69DD: $8F
    nop                                           ; $69DE: $00

jr_041_69DF:
    pop hl                                        ; $69DF: $E1
    db $FD                                        ; $69E0: $FD
    adc a                                         ; $69E1: $8F
    nop                                           ; $69E2: $00
    pop hl                                        ; $69E3: $E1
    push af                                       ; $69E4: $F5
    adc a                                         ; $69E5: $8F
    nop                                           ; $69E6: $00
    reti                                          ; $69E7: $D9


    dec c                                         ; $69E8: $0D
    adc c                                         ; $69E9: $89
    nop                                           ; $69EA: $00
    reti                                          ; $69EB: $D9


    dec b                                         ; $69EC: $05
    adc b                                         ; $69ED: $88
    nop                                           ; $69EE: $00
    reti                                          ; $69EF: $D9


    db $FD                                        ; $69F0: $FD
    add a                                         ; $69F1: $87
    nop                                           ; $69F2: $00
    reti                                          ; $69F3: $D9


    push af                                       ; $69F4: $F5
    add [hl]                                      ; $69F5: $86
    nop                                           ; $69F6: $00
    reti                                          ; $69F7: $D9


    db $ED                                        ; $69F8: $ED
    add l                                         ; $69F9: $85
    nop                                           ; $69FA: $00
    add b                                         ; $69FB: $80
    db $E3                                        ; $69FC: $E3
    dec b                                         ; $69FD: $05
    adc a                                         ; $69FE: $8F
    nop                                           ; $69FF: $00

jr_041_6A00:
    db $E3                                        ; $6A00: $E3
    db $FD                                        ; $6A01: $FD
    adc a                                         ; $6A02: $8F
    nop                                           ; $6A03: $00
    db $E3                                        ; $6A04: $E3
    push af                                       ; $6A05: $F5
    adc a                                         ; $6A06: $8F
    nop                                           ; $6A07: $00
    db $DB                                        ; $6A08: $DB
    inc c                                         ; $6A09: $0C
    adc [hl]                                      ; $6A0A: $8E

jr_041_6A0B:
    nop                                           ; $6A0B: $00
    db $DB                                        ; $6A0C: $DB
    inc b                                         ; $6A0D: $04
    adc l                                         ; $6A0E: $8D

jr_041_6A0F:
    nop                                           ; $6A0F: $00
    db $DB                                        ; $6A10: $DB
    db $FC                                        ; $6A11: $FC
    adc h                                         ; $6A12: $8C

jr_041_6A13:
    nop                                           ; $6A13: $00
    db $DB                                        ; $6A14: $DB
    db $F4                                        ; $6A15: $F4
    adc e                                         ; $6A16: $8B

jr_041_6A17:
    nop                                           ; $6A17: $00
    db $DB                                        ; $6A18: $DB
    db $EC                                        ; $6A19: $EC
    adc d                                         ; $6A1A: $8A
    nop                                           ; $6A1B: $00
    add b                                         ; $6A1C: $80
    push hl                                       ; $6A1D: $E5
    or $8F                                        ; $6A1E: $F6 $8F
    nop                                           ; $6A20: $00
    push hl                                       ; $6A21: $E5
    rst $38                                       ; $6A22: $FF
    adc a                                         ; $6A23: $8F
    nop                                           ; $6A24: $00
    push hl                                       ; $6A25: $E5
    ld b, $8F                                     ; $6A26: $06 $8F
    nop                                           ; $6A28: $00
    db $DD                                        ; $6A29: $DD
    db $EC                                        ; $6A2A: $EC
    add h                                         ; $6A2B: $84
    jr nz, jr_041_6A0B                            ; $6A2C: $20 $DD

    db $F4                                        ; $6A2E: $F4

jr_041_6A2F:
    add e                                         ; $6A2F: $83
    jr nz, jr_041_6A0F                            ; $6A30: $20 $DD

    db $FC                                        ; $6A32: $FC

jr_041_6A33:
    add d                                         ; $6A33: $82
    jr nz, jr_041_6A13                            ; $6A34: $20 $DD

    inc b                                         ; $6A36: $04

jr_041_6A37:
    add c                                         ; $6A37: $81
    jr nz, jr_041_6A17                            ; $6A38: $20 $DD

    inc c                                         ; $6A3A: $0C

jr_041_6A3B:
    add b                                         ; $6A3B: $80
    jr nz, jr_041_69BE                            ; $6A3C: $20 $80

    add sp, $04                                   ; $6A3E: $E8 $04
    adc a                                         ; $6A40: $8F
    nop                                           ; $6A41: $00
    add sp, -$04                                  ; $6A42: $E8 $FC
    adc a                                         ; $6A44: $8F
    nop                                           ; $6A45: $00
    add sp, -$0C                                  ; $6A46: $E8 $F4
    adc a                                         ; $6A48: $8F
    nop                                           ; $6A49: $00
    ldh [$EC], a                                  ; $6A4A: $E0 $EC
    adc c                                         ; $6A4C: $89
    jr nz, jr_041_6A2F                            ; $6A4D: $20 $E0

    db $F4                                        ; $6A4F: $F4
    adc b                                         ; $6A50: $88
    jr nz, jr_041_6A33                            ; $6A51: $20 $E0

jr_041_6A53:
    db $FC                                        ; $6A53: $FC
    add a                                         ; $6A54: $87
    jr nz, jr_041_6A37                            ; $6A55: $20 $E0

jr_041_6A57:
    inc b                                         ; $6A57: $04
    add [hl]                                      ; $6A58: $86
    jr nz, jr_041_6A3B                            ; $6A59: $20 $E0

jr_041_6A5B:
    inc c                                         ; $6A5B: $0C
    add l                                         ; $6A5C: $85
    jr nz, jr_041_69DF                            ; $6A5D: $20 $80

jr_041_6A5F:
    db $EB                                        ; $6A5F: $EB
    ld b, $8F                                     ; $6A60: $06 $8F
    nop                                           ; $6A62: $00
    db $EB                                        ; $6A63: $EB
    cp $8F                                        ; $6A64: $FE $8F
    nop                                           ; $6A66: $00
    db $EB                                        ; $6A67: $EB
    or $8F                                        ; $6A68: $F6 $8F
    nop                                           ; $6A6A: $00
    db $E3                                        ; $6A6B: $E3
    db $ED                                        ; $6A6C: $ED
    adc [hl]                                      ; $6A6D: $8E
    jr nz, jr_041_6A53                            ; $6A6E: $20 $E3

    push af                                       ; $6A70: $F5
    adc l                                         ; $6A71: $8D
    jr nz, jr_041_6A57                            ; $6A72: $20 $E3

    db $FD                                        ; $6A74: $FD
    adc h                                         ; $6A75: $8C
    jr nz, jr_041_6A5B                            ; $6A76: $20 $E3

    dec b                                         ; $6A78: $05
    adc e                                         ; $6A79: $8B
    jr nz, jr_041_6A5F                            ; $6A7A: $20 $E3

    dec c                                         ; $6A7C: $0D
    adc d                                         ; $6A7D: $8A
    jr nz, jr_041_6A00                            ; $6A7E: $20 $80

    db $ED                                        ; $6A80: $ED
    inc b                                         ; $6A81: $04
    adc a                                         ; $6A82: $8F
    nop                                           ; $6A83: $00
    db $ED                                        ; $6A84: $ED
    db $FC                                        ; $6A85: $FC
    adc a                                         ; $6A86: $8F
    nop                                           ; $6A87: $00
    db $ED                                        ; $6A88: $ED
    db $F4                                        ; $6A89: $F4
    adc a                                         ; $6A8A: $8F
    nop                                           ; $6A8B: $00
    push hl                                       ; $6A8C: $E5
    inc c                                         ; $6A8D: $0C
    add h                                         ; $6A8E: $84
    nop                                           ; $6A8F: $00
    push hl                                       ; $6A90: $E5
    inc b                                         ; $6A91: $04
    add e                                         ; $6A92: $83
    nop                                           ; $6A93: $00
    push hl                                       ; $6A94: $E5
    db $FC                                        ; $6A95: $FC
    add d                                         ; $6A96: $82
    nop                                           ; $6A97: $00
    push hl                                       ; $6A98: $E5
    db $F4                                        ; $6A99: $F4
    add c                                         ; $6A9A: $81
    nop                                           ; $6A9B: $00
    push hl                                       ; $6A9C: $E5
    db $EC                                        ; $6A9D: $EC
    add b                                         ; $6A9E: $80
    nop                                           ; $6A9F: $00
    add b                                         ; $6AA0: $80
    rst $28                                       ; $6AA1: $EF
    dec b                                         ; $6AA2: $05
    adc a                                         ; $6AA3: $8F
    nop                                           ; $6AA4: $00
    rst $28                                       ; $6AA5: $EF
    db $FD                                        ; $6AA6: $FD
    adc a                                         ; $6AA7: $8F
    nop                                           ; $6AA8: $00
    rst $28                                       ; $6AA9: $EF
    push af                                       ; $6AAA: $F5
    adc a                                         ; $6AAB: $8F
    nop                                           ; $6AAC: $00
    rst $20                                       ; $6AAD: $E7
    inc c                                         ; $6AAE: $0C
    adc c                                         ; $6AAF: $89
    nop                                           ; $6AB0: $00
    rst $20                                       ; $6AB1: $E7
    inc b                                         ; $6AB2: $04
    adc b                                         ; $6AB3: $88
    nop                                           ; $6AB4: $00
    rst $20                                       ; $6AB5: $E7
    db $FC                                        ; $6AB6: $FC
    add a                                         ; $6AB7: $87
    nop                                           ; $6AB8: $00
    rst $20                                       ; $6AB9: $E7
    db $F4                                        ; $6ABA: $F4
    add [hl]                                      ; $6ABB: $86
    nop                                           ; $6ABC: $00
    rst $20                                       ; $6ABD: $E7
    db $EC                                        ; $6ABE: $EC
    add l                                         ; $6ABF: $85
    nop                                           ; $6AC0: $00
    add b                                         ; $6AC1: $80
    ld a, [c]                                     ; $6AC2: $F2
    inc bc                                        ; $6AC3: $03
    adc a                                         ; $6AC4: $8F
    nop                                           ; $6AC5: $00

jr_041_6AC6:
    ld a, [c]                                     ; $6AC6: $F2
    di                                            ; $6AC7: $F3
    adc a                                         ; $6AC8: $8F
    nop                                           ; $6AC9: $00
    ld a, [c]                                     ; $6ACA: $F2
    ld sp, hl                                     ; $6ACB: $F9
    adc a                                         ; $6ACC: $8F
    nop                                           ; $6ACD: $00
    ld [$8E0C], a                                 ; $6ACE: $EA $0C $8E
    nop                                           ; $6AD1: $00
    ld [$8D04], a                                 ; $6AD2: $EA $04 $8D
    nop                                           ; $6AD5: $00
    ld [$8CFC], a                                 ; $6AD6: $EA $FC $8C
    nop                                           ; $6AD9: $00
    ld [$8BF4], a                                 ; $6ADA: $EA $F4 $8B
    nop                                           ; $6ADD: $00
    ld [$8AEC], a                                 ; $6ADE: $EA $EC $8A
    nop                                           ; $6AE1: $00
    add b                                         ; $6AE2: $80
    db $F4                                        ; $6AE3: $F4
    ld b, $8F                                     ; $6AE4: $06 $8F
    nop                                           ; $6AE6: $00
    db $F4                                        ; $6AE7: $F4
    cp $8F                                        ; $6AE8: $FE $8F
    nop                                           ; $6AEA: $00

jr_041_6AEB:
    db $F4                                        ; $6AEB: $F4
    db $F4                                        ; $6AEC: $F4
    adc a                                         ; $6AED: $8F
    nop                                           ; $6AEE: $00
    db $EC                                        ; $6AEF: $EC
    inc c                                         ; $6AF0: $0C
    adc c                                         ; $6AF1: $89
    nop                                           ; $6AF2: $00
    db $EC                                        ; $6AF3: $EC
    inc b                                         ; $6AF4: $04
    adc b                                         ; $6AF5: $88
    nop                                           ; $6AF6: $00
    db $EC                                        ; $6AF7: $EC
    db $FC                                        ; $6AF8: $FC
    add a                                         ; $6AF9: $87
    nop                                           ; $6AFA: $00
    db $EC                                        ; $6AFB: $EC
    db $F4                                        ; $6AFC: $F4
    add [hl]                                      ; $6AFD: $86
    nop                                           ; $6AFE: $00
    db $EC                                        ; $6AFF: $EC
    db $EC                                        ; $6B00: $EC
    add l                                         ; $6B01: $85
    nop                                           ; $6B02: $00
    add b                                         ; $6B03: $80
    or $08                                        ; $6B04: $F6 $08
    adc a                                         ; $6B06: $8F
    nop                                           ; $6B07: $00
    or $00                                        ; $6B08: $F6 $00
    adc a                                         ; $6B0A: $8F
    nop                                           ; $6B0B: $00
    or $F7                                        ; $6B0C: $F6 $F7
    adc a                                         ; $6B0E: $8F
    nop                                           ; $6B0F: $00
    xor $0C                                       ; $6B10: $EE $0C
    adc [hl]                                      ; $6B12: $8E
    nop                                           ; $6B13: $00
    xor $04                                       ; $6B14: $EE $04
    adc l                                         ; $6B16: $8D
    nop                                           ; $6B17: $00
    xor $FC                                       ; $6B18: $EE $FC
    adc h                                         ; $6B1A: $8C
    nop                                           ; $6B1B: $00
    xor $F4                                       ; $6B1C: $EE $F4
    adc e                                         ; $6B1E: $8B
    nop                                           ; $6B1F: $00
    xor $EC                                       ; $6B20: $EE $EC
    adc d                                         ; $6B22: $8A
    nop                                           ; $6B23: $00
    add b                                         ; $6B24: $80
    ld sp, hl                                     ; $6B25: $F9
    ld hl, sp-$71                                 ; $6B26: $F8 $8F
    nop                                           ; $6B28: $00
    ld sp, hl                                     ; $6B29: $F9
    nop                                           ; $6B2A: $00

jr_041_6B2B:
    adc a                                         ; $6B2B: $8F
    nop                                           ; $6B2C: $00

jr_041_6B2D:
    ld sp, hl                                     ; $6B2D: $F9
    ld [$008F], sp                                ; $6B2E: $08 $8F $00
    pop af                                        ; $6B31: $F1
    db $EC                                        ; $6B32: $EC

jr_041_6B33:
    add h                                         ; $6B33: $84
    jr nz, @-$0D                                  ; $6B34: $20 $F1

    db $F4                                        ; $6B36: $F4
    add e                                         ; $6B37: $83
    jr nz, jr_041_6B2B                            ; $6B38: $20 $F1

    db $FC                                        ; $6B3A: $FC
    add d                                         ; $6B3B: $82
    jr nz, @-$0D                                  ; $6B3C: $20 $F1

    inc b                                         ; $6B3E: $04
    add c                                         ; $6B3F: $81
    jr nz, jr_041_6B33                            ; $6B40: $20 $F1

    inc c                                         ; $6B42: $0C
    add b                                         ; $6B43: $80
    jr nz, jr_041_6AC6                            ; $6B44: $20 $80

    db $FC                                        ; $6B46: $FC
    dec b                                         ; $6B47: $05
    adc a                                         ; $6B48: $8F
    nop                                           ; $6B49: $00
    db $FC                                        ; $6B4A: $FC
    db $FD                                        ; $6B4B: $FD
    adc a                                         ; $6B4C: $8F
    nop                                           ; $6B4D: $00
    db $FC                                        ; $6B4E: $FC
    push af                                       ; $6B4F: $F5
    adc a                                         ; $6B50: $8F
    nop                                           ; $6B51: $00
    db $F4                                        ; $6B52: $F4
    dec b                                         ; $6B53: $05
    adc b                                         ; $6B54: $88
    nop                                           ; $6B55: $00
    db $F4                                        ; $6B56: $F4

jr_041_6B57:
    db $FD                                        ; $6B57: $FD
    add a                                         ; $6B58: $87
    nop                                           ; $6B59: $00

jr_041_6B5A:
    ei                                            ; $6B5A: $FB
    db $FC                                        ; $6B5B: $FC
    adc a                                         ; $6B5C: $8F
    nop                                           ; $6B5D: $00
    db $F4                                        ; $6B5E: $F4
    push af                                       ; $6B5F: $F5
    add a                                         ; $6B60: $87
    jr nz, jr_041_6B57                            ; $6B61: $20 $F4

    dec c                                         ; $6B63: $0D
    adc d                                         ; $6B64: $8A
    jr nz, jr_041_6B5A                            ; $6B65: $20 $F3

    db $ED                                        ; $6B67: $ED
    adc [hl]                                      ; $6B68: $8E
    jr nz, jr_041_6AEB                            ; $6B69: $20 $80

    cp $05                                        ; $6B6B: $FE $05
    adc a                                         ; $6B6D: $8F
    nop                                           ; $6B6E: $00
    cp $FD                                        ; $6B6F: $FE $FD
    adc a                                         ; $6B71: $8F
    nop                                           ; $6B72: $00
    cp $F4                                        ; $6B73: $FE $F4
    adc a                                         ; $6B75: $8F
    nop                                           ; $6B76: $00
    or $0D                                        ; $6B77: $F6 $0D
    add h                                         ; $6B79: $84
    nop                                           ; $6B7A: $00
    or $05                                        ; $6B7B: $F6 $05
    add e                                         ; $6B7D: $83
    nop                                           ; $6B7E: $00
    or $FD                                        ; $6B7F: $F6 $FD
    add d                                         ; $6B81: $82
    nop                                           ; $6B82: $00
    or $F5                                        ; $6B83: $F6 $F5
    add c                                         ; $6B85: $81
    nop                                           ; $6B86: $00
    or $ED                                        ; $6B87: $F6 $ED
    add b                                         ; $6B89: $80
    nop                                           ; $6B8A: $00
    add b                                         ; $6B8B: $80
    nop                                           ; $6B8C: $00
    ld b, $8F                                     ; $6B8D: $06 $8F
    nop                                           ; $6B8F: $00
    nop                                           ; $6B90: $00
    db $FD                                        ; $6B91: $FD
    adc a                                         ; $6B92: $8F
    nop                                           ; $6B93: $00
    nop                                           ; $6B94: $00

jr_041_6B95:
    db $F4                                        ; $6B95: $F4
    adc a                                         ; $6B96: $8F
    nop                                           ; $6B97: $00
    ld hl, sp-$13                                 ; $6B98: $F8 $ED
    add h                                         ; $6B9A: $84
    jr nz, jr_041_6B95                            ; $6B9B: $20 $F8

jr_041_6B9D:
    push af                                       ; $6B9D: $F5
    add e                                         ; $6B9E: $83
    jr nz, @-$06                                  ; $6B9F: $20 $F8

jr_041_6BA1:
    db $FD                                        ; $6BA1: $FD
    add d                                         ; $6BA2: $82
    jr nz, jr_041_6B9D                            ; $6BA3: $20 $F8

    dec b                                         ; $6BA5: $05
    add c                                         ; $6BA6: $81
    jr nz, jr_041_6BA1                            ; $6BA7: $20 $F8

    dec c                                         ; $6BA9: $0D
    add b                                         ; $6BAA: $80
    jr nz, jr_041_6B2D                            ; $6BAB: $20 $80

    ld [bc], a                                    ; $6BAD: $02
    ld b, $8F                                     ; $6BAE: $06 $8F
    nop                                           ; $6BB0: $00
    ld [bc], a                                    ; $6BB1: $02
    db $F4                                        ; $6BB2: $F4
    adc a                                         ; $6BB3: $8F
    nop                                           ; $6BB4: $00
    ld [bc], a                                    ; $6BB5: $02
    db $FD                                        ; $6BB6: $FD
    adc a                                         ; $6BB7: $8F
    nop                                           ; $6BB8: $00
    ld a, [$8E0D]                                 ; $6BB9: $FA $0D $8E
    nop                                           ; $6BBC: $00
    ld a, [$8D05]                                 ; $6BBD: $FA $05 $8D
    nop                                           ; $6BC0: $00
    ld a, [$8CFD]                                 ; $6BC1: $FA $FD $8C
    nop                                           ; $6BC4: $00
    ld a, [$8BF5]                                 ; $6BC5: $FA $F5 $8B
    nop                                           ; $6BC8: $00
    ld a, [$8AED]                                 ; $6BC9: $FA $ED $8A
    nop                                           ; $6BCC: $00
    add b                                         ; $6BCD: $80
    inc bc                                        ; $6BCE: $03
    db $FC                                        ; $6BCF: $FC
    adc a                                         ; $6BD0: $8F
    nop                                           ; $6BD1: $00
    ei                                            ; $6BD2: $FB
    inc b                                         ; $6BD3: $04
    adc c                                         ; $6BD4: $89
    nop                                           ; $6BD5: $00
    ei                                            ; $6BD6: $FB
    db $FC                                        ; $6BD7: $FC
    adc e                                         ; $6BD8: $8B
    nop                                           ; $6BD9: $00
    ei                                            ; $6BDA: $FB
    db $F4                                        ; $6BDB: $F4
    adc d                                         ; $6BDC: $8A
    nop                                           ; $6BDD: $00
    add b                                         ; $6BDE: $80
    ei                                            ; $6BDF: $FB
    ld hl, sp-$80                                 ; $6BE0: $F8 $80
    nop                                           ; $6BE2: $00
    ei                                            ; $6BE3: $FB
    nop                                           ; $6BE4: $00
    add h                                         ; $6BE5: $84
    nop                                           ; $6BE6: $00
    add b                                         ; $6BE7: $80

    db $FF, $00, $7B, $00, $FF, $F8, $7A, $00, $F7, $00, $79, $00, $F7, $F8, $78, $00
    db $80

    nop                                           ; $6BF9: $00
    nop                                           ; $6BFA: $00
    ld a, e                                       ; $6BFB: $7B
    nop                                           ; $6BFC: $00
    nop                                           ; $6BFD: $00
    ld hl, sp+$7A                                 ; $6BFE: $F8 $7A
    nop                                           ; $6C00: $00
    ld hl, sp+$00                                 ; $6C01: $F8 $00
    ld a, c                                       ; $6C03: $79
    nop                                           ; $6C04: $00
    ld hl, sp-$08                                 ; $6C05: $F8 $F8
    ld a, b                                       ; $6C07: $78
    nop                                           ; $6C08: $00
    add b                                         ; $6C09: $80
    db $E4                                        ; $6C0A: $E4
    db $FD                                        ; $6C0B: $FD
    sub b                                         ; $6C0C: $90
    nop                                           ; $6C0D: $00
    add b                                         ; $6C0E: $80
    push hl                                       ; $6C0F: $E5
    db $FD                                        ; $6C10: $FD
    sub c                                         ; $6C11: $91
    nop                                           ; $6C12: $00
    add b                                         ; $6C13: $80
    db $EC                                        ; $6C14: $EC
    db $FD                                        ; $6C15: $FD
    sub d                                         ; $6C16: $92

jr_041_6C17:
    ld h, b                                       ; $6C17: $60
    call c, $92FD                                 ; $6C18: $DC $FD $92
    nop                                           ; $6C1B: $00
    db $E4                                        ; $6C1C: $E4
    dec b                                         ; $6C1D: $05
    sub e                                         ; $6C1E: $93
    ld h, b                                       ; $6C1F: $60
    db $E4                                        ; $6C20: $E4

jr_041_6C21:
    push af                                       ; $6C21: $F5
    sub e                                         ; $6C22: $93
    nop                                           ; $6C23: $00
    db $E4                                        ; $6C24: $E4
    db $FD                                        ; $6C25: $FD
    sub h                                         ; $6C26: $94
    nop                                           ; $6C27: $00
    add b                                         ; $6C28: $80
    db $E4                                        ; $6C29: $E4
    db $FD                                        ; $6C2A: $FD
    sub l                                         ; $6C2B: $95
    nop                                           ; $6C2C: $00
    add b                                         ; $6C2D: $80
    db $E4                                        ; $6C2E: $E4
    nop                                           ; $6C2F: $00
    sub [hl]                                      ; $6C30: $96
    jr nz, jr_041_6C17                            ; $6C31: $20 $E4

    ld hl, sp-$6A                                 ; $6C33: $F8 $96
    nop                                           ; $6C35: $00
    add b                                         ; $6C36: $80
    push hl                                       ; $6C37: $E5
    nop                                           ; $6C38: $00
    sub a                                         ; $6C39: $97
    jr nz, jr_041_6C21                            ; $6C3A: $20 $E5

    ld hl, sp-$69                                 ; $6C3C: $F8 $97
    nop                                           ; $6C3E: $00
    add b                                         ; $6C3F: $80
    add sp, $00                                   ; $6C40: $E8 $00
    sbc e                                         ; $6C42: $9B
    nop                                           ; $6C43: $00
    add sp, -$08                                  ; $6C44: $E8 $F8
    sbc d                                         ; $6C46: $9A
    nop                                           ; $6C47: $00
    ldh [rP1], a                                  ; $6C48: $E0 $00
    sbc c                                         ; $6C4A: $99
    nop                                           ; $6C4B: $00
    ldh [$F8], a                                  ; $6C4C: $E0 $F8
    sbc b                                         ; $6C4E: $98
    nop                                           ; $6C4F: $00
    add b                                         ; $6C50: $80
    ldh a, [rP1]                                  ; $6C51: $F0 $00
    and c                                         ; $6C53: $A1
    nop                                           ; $6C54: $00
    ldh a, [$F8]                                  ; $6C55: $F0 $F8
    and b                                         ; $6C57: $A0
    nop                                           ; $6C58: $00
    add sp, $00                                   ; $6C59: $E8 $00
    sbc a                                         ; $6C5B: $9F
    nop                                           ; $6C5C: $00
    add sp, -$08                                  ; $6C5D: $E8 $F8
    sbc [hl]                                      ; $6C5F: $9E
    nop                                           ; $6C60: $00
    ldh [rP1], a                                  ; $6C61: $E0 $00
    sbc l                                         ; $6C63: $9D
    nop                                           ; $6C64: $00
    ldh [$F8], a                                  ; $6C65: $E0 $F8
    sbc h                                         ; $6C67: $9C
    nop                                           ; $6C68: $00
    add b                                         ; $6C69: $80
    ldh a, [rP1]                                  ; $6C6A: $F0 $00
    and l                                         ; $6C6C: $A5
    nop                                           ; $6C6D: $00
    ldh a, [$F8]                                  ; $6C6E: $F0 $F8
    and h                                         ; $6C70: $A4
    nop                                           ; $6C71: $00
    add sp, $00                                   ; $6C72: $E8 $00
    and e                                         ; $6C74: $A3
    nop                                           ; $6C75: $00
    add sp, -$08                                  ; $6C76: $E8 $F8
    and d                                         ; $6C78: $A2
    nop                                           ; $6C79: $00
    add b                                         ; $6C7A: $80
    db $EB                                        ; $6C7B: $EB
    nop                                           ; $6C7C: $00
    xor c                                         ; $6C7D: $A9
    nop                                           ; $6C7E: $00
    db $EB                                        ; $6C7F: $EB
    ld hl, sp-$58                                 ; $6C80: $F8 $A8
    nop                                           ; $6C82: $00
    db $E3                                        ; $6C83: $E3
    nop                                           ; $6C84: $00
    and a                                         ; $6C85: $A7
    nop                                           ; $6C86: $00
    db $E3                                        ; $6C87: $E3
    ld hl, sp-$5A                                 ; $6C88: $F8 $A6
    nop                                           ; $6C8A: $00
    add b                                         ; $6C8B: $80
    nop                                           ; $6C8C: $00
    nop                                           ; $6C8D: $00
    ld a, l                                       ; $6C8E: $7D
    nop                                           ; $6C8F: $00
    nop                                           ; $6C90: $00
    ld hl, sp+$7C                                 ; $6C91: $F8 $7C
    nop                                           ; $6C93: $00
    ld hl, sp+$00                                 ; $6C94: $F8 $00
    ld c, a                                       ; $6C96: $4F
    nop                                           ; $6C97: $00
    ld hl, sp-$08                                 ; $6C98: $F8 $F8
    ld c, [hl]                                    ; $6C9A: $4E
    nop                                           ; $6C9B: $00
    add b                                         ; $6C9C: $80
    db $FC                                        ; $6C9D: $FC
    nop                                           ; $6C9E: $00
    ld a, l                                       ; $6C9F: $7D
    nop                                           ; $6CA0: $00
    db $FC                                        ; $6CA1: $FC
    ld hl, sp+$7C                                 ; $6CA2: $F8 $7C
    nop                                           ; $6CA4: $00
    db $F4                                        ; $6CA5: $F4
    nop                                           ; $6CA6: $00
    ld c, a                                       ; $6CA7: $4F
    nop                                           ; $6CA8: $00
    db $F4                                        ; $6CA9: $F4
    ld hl, sp+$4E                                 ; $6CAA: $F8 $4E
    nop                                           ; $6CAC: $00
    add b                                         ; $6CAD: $80
    ld hl, sp-$02                                 ; $6CAE: $F8 $FE
    ld a, l                                       ; $6CB0: $7D
    nop                                           ; $6CB1: $00
    ld hl, sp-$0A                                 ; $6CB2: $F8 $F6
    ld a, h                                       ; $6CB4: $7C
    nop                                           ; $6CB5: $00
    ldh a, [$FE]                                  ; $6CB6: $F0 $FE
    ld c, a                                       ; $6CB8: $4F
    nop                                           ; $6CB9: $00
    ldh a, [$F6]                                  ; $6CBA: $F0 $F6
    ld c, [hl]                                    ; $6CBC: $4E
    nop                                           ; $6CBD: $00
    add b                                         ; $6CBE: $80
    db $F4                                        ; $6CBF: $F4
    cp $7D                                        ; $6CC0: $FE $7D
    nop                                           ; $6CC2: $00
    db $F4                                        ; $6CC3: $F4
    or $7C                                        ; $6CC4: $F6 $7C
    nop                                           ; $6CC6: $00
    db $EC                                        ; $6CC7: $EC
    cp $4F                                        ; $6CC8: $FE $4F
    nop                                           ; $6CCA: $00
    db $EC                                        ; $6CCB: $EC
    or $4E                                        ; $6CCC: $F6 $4E
    nop                                           ; $6CCE: $00
    add b                                         ; $6CCF: $80
    ldh a, [rP1]                                  ; $6CD0: $F0 $00
    ld a, l                                       ; $6CD2: $7D
    nop                                           ; $6CD3: $00
    ldh a, [$F8]                                  ; $6CD4: $F0 $F8
    ld a, h                                       ; $6CD6: $7C
    nop                                           ; $6CD7: $00
    add sp, $00                                   ; $6CD8: $E8 $00
    ld c, a                                       ; $6CDA: $4F
    nop                                           ; $6CDB: $00
    add sp, -$08                                  ; $6CDC: $E8 $F8
    ld c, [hl]                                    ; $6CDE: $4E
    nop                                           ; $6CDF: $00
    add b                                         ; $6CE0: $80
    db $EC                                        ; $6CE1: $EC
    nop                                           ; $6CE2: $00
    ld a, l                                       ; $6CE3: $7D
    nop                                           ; $6CE4: $00
    db $EC                                        ; $6CE5: $EC
    ld hl, sp+$7C                                 ; $6CE6: $F8 $7C
    nop                                           ; $6CE8: $00
    db $E4                                        ; $6CE9: $E4
    nop                                           ; $6CEA: $00
    ld c, a                                       ; $6CEB: $4F
    nop                                           ; $6CEC: $00
    db $E4                                        ; $6CED: $E4
    ld hl, sp+$4E                                 ; $6CEE: $F8 $4E
    nop                                           ; $6CF0: $00
    add b                                         ; $6CF1: $80
    add sp, -$02                                  ; $6CF2: $E8 $FE
    ld a, l                                       ; $6CF4: $7D
    nop                                           ; $6CF5: $00
    add sp, -$0A                                  ; $6CF6: $E8 $F6
    ld a, h                                       ; $6CF8: $7C
    nop                                           ; $6CF9: $00
    ldh [$FE], a                                  ; $6CFA: $E0 $FE
    ld c, a                                       ; $6CFC: $4F
    nop                                           ; $6CFD: $00
    ldh [$F6], a                                  ; $6CFE: $E0 $F6
    ld c, [hl]                                    ; $6D00: $4E
    nop                                           ; $6D01: $00
    add b                                         ; $6D02: $80
    db $E4                                        ; $6D03: $E4
    cp $7D                                        ; $6D04: $FE $7D
    nop                                           ; $6D06: $00
    db $E4                                        ; $6D07: $E4
    or $7C                                        ; $6D08: $F6 $7C
    nop                                           ; $6D0A: $00
    call c, $4FFE                                 ; $6D0B: $DC $FE $4F
    nop                                           ; $6D0E: $00
    call c, Call_041_4EF6                         ; $6D0F: $DC $F6 $4E
    nop                                           ; $6D12: $00
    add b                                         ; $6D13: $80
    ldh [$F8], a                                  ; $6D14: $E0 $F8
    ld a, a                                       ; $6D16: $7F
    ld h, b                                       ; $6D17: $60
    ldh [rP1], a                                  ; $6D18: $E0 $00
    ld a, [hl]                                    ; $6D1A: $7E
    ld h, b                                       ; $6D1B: $60
    ret c                                         ; $6D1C: $D8

    nop                                           ; $6D1D: $00
    ld a, a                                       ; $6D1E: $7F
    nop                                           ; $6D1F: $00
    ret c                                         ; $6D20: $D8

    ld hl, sp+$7E                                 ; $6D21: $F8 $7E
    nop                                           ; $6D23: $00
    add b                                         ; $6D24: $80
    add sp, -$08                                  ; $6D25: $E8 $F8
    ld e, h                                       ; $6D27: $5C
    nop                                           ; $6D28: $00
    ldh [rP1], a                                  ; $6D29: $E0 $00
    ld e, e                                       ; $6D2B: $5B
    nop                                           ; $6D2C: $00
    ldh [$F8], a                                  ; $6D2D: $E0 $F8
    ld e, d                                       ; $6D2F: $5A
    nop                                           ; $6D30: $00
    add b                                         ; $6D31: $80
    add sp, $00                                   ; $6D32: $E8 $00
    ld h, b                                       ; $6D34: $60
    nop                                           ; $6D35: $00
    add sp, -$08                                  ; $6D36: $E8 $F8
    ld e, a                                       ; $6D38: $5F
    nop                                           ; $6D39: $00
    ldh [rP1], a                                  ; $6D3A: $E0 $00
    ld e, [hl]                                    ; $6D3C: $5E
    nop                                           ; $6D3D: $00
    ldh [$F8], a                                  ; $6D3E: $E0 $F8
    ld e, l                                       ; $6D40: $5D
    nop                                           ; $6D41: $00
    add b                                         ; $6D42: $80
    add sp, $08                                   ; $6D43: $E8 $08
    ld h, [hl]                                    ; $6D45: $66
    nop                                           ; $6D46: $00
    add sp, $00                                   ; $6D47: $E8 $00
    ld h, l                                       ; $6D49: $65
    nop                                           ; $6D4A: $00
    add sp, -$08                                  ; $6D4B: $E8 $F8
    ld h, e                                       ; $6D4D: $63
    nop                                           ; $6D4E: $00
    ldh [rP1], a                                  ; $6D4F: $E0 $00
    ld h, d                                       ; $6D51: $62
    nop                                           ; $6D52: $00
    ldh [$F8], a                                  ; $6D53: $E0 $F8
    ld h, c                                       ; $6D55: $61
    nop                                           ; $6D56: $00
    add b                                         ; $6D57: $80
    add sp, $00                                   ; $6D58: $E8 $00
    ld h, h                                       ; $6D5A: $64
    nop                                           ; $6D5B: $00
    add sp, -$08                                  ; $6D5C: $E8 $F8
    ld h, e                                       ; $6D5E: $63
    nop                                           ; $6D5F: $00
    ldh [rP1], a                                  ; $6D60: $E0 $00
    ld h, d                                       ; $6D62: $62
    nop                                           ; $6D63: $00
    ldh [$F8], a                                  ; $6D64: $E0 $F8
    ld h, c                                       ; $6D66: $61
    nop                                           ; $6D67: $00
    add b                                         ; $6D68: $80
    add sp, $00                                   ; $6D69: $E8 $00
    ld l, d                                       ; $6D6B: $6A
    ld b, $E8                                     ; $6D6C: $06 $E8
    ld hl, sp+$69                                 ; $6D6E: $F8 $69
    ld b, $E0                                     ; $6D70: $06 $E0
    nop                                           ; $6D72: $00
    ld l, b                                       ; $6D73: $68
    ld b, $E0                                     ; $6D74: $06 $E0
    ld hl, sp+$67                                 ; $6D76: $F8 $67
    ld b, $80                                     ; $6D78: $06 $80
    add sp, $00                                   ; $6D7A: $E8 $00
    ld l, d                                       ; $6D7C: $6A
    ld b, $E8                                     ; $6D7D: $06 $E8
    ld hl, sp+$69                                 ; $6D7F: $F8 $69
    ld b, $E0                                     ; $6D81: $06 $E0
    nop                                           ; $6D83: $00
    ld l, h                                       ; $6D84: $6C
    ld b, $E0                                     ; $6D85: $06 $E0
    ld hl, sp+$6B                                 ; $6D87: $F8 $6B
    ld b, $80                                     ; $6D89: $06 $80
    ldh [rP1], a                                  ; $6D8B: $E0 $00
    ld [hl], b                                    ; $6D8D: $70
    ld b, $E0                                     ; $6D8E: $06 $E0
    ld hl, sp+$6F                                 ; $6D90: $F8 $6F
    ld b, $E8                                     ; $6D92: $06 $E8
    nop                                           ; $6D94: $00
    ld l, [hl]                                    ; $6D95: $6E
    ld b, $E8                                     ; $6D96: $06 $E8
    ld hl, sp+$6D                                 ; $6D98: $F8 $6D
    ld b, $80                                     ; $6D9A: $06 $80
    ldh [rP1], a                                  ; $6D9C: $E0 $00
    ld l, b                                       ; $6D9E: $68
    ld b, $E0                                     ; $6D9F: $06 $E0
    ld hl, sp+$67                                 ; $6DA1: $F8 $67
    ld b, $E8                                     ; $6DA3: $06 $E8
    nop                                           ; $6DA5: $00
    ld [hl], d                                    ; $6DA6: $72
    ld b, $E8                                     ; $6DA7: $06 $E8
    ld hl, sp+$71                                 ; $6DA9: $F8 $71
    ld b, $80                                     ; $6DAB: $06 $80
    nop                                           ; $6DAD: $00
    push af                                       ; $6DAE: $F5
    cp l                                          ; $6DAF: $BD
    ld [$FA80], sp                                ; $6DB0: $08 $80 $FA
    push af                                       ; $6DB3: $F5
    cp l                                          ; $6DB4: $BD
    ld [$0080], sp                                ; $6DB5: $08 $80 $00
    db $FD                                        ; $6DB8: $FD
    cp [hl]                                       ; $6DB9: $BE
    ld [$F5F6], sp                                ; $6DBA: $08 $F6 $F5
    cp l                                          ; $6DBD: $BD
    ld [$FA80], sp                                ; $6DBE: $08 $80 $FA
    db $FD                                        ; $6DC1: $FD
    cp [hl]                                       ; $6DC2: $BE
    ld [$F5F4], sp                                ; $6DC3: $08 $F4 $F5
    cp l                                          ; $6DC6: $BD
    ld [$0080], sp                                ; $6DC7: $08 $80 $00
    dec b                                         ; $6DCA: $05
    cp a                                          ; $6DCB: $BF
    ld [$FDF6], sp                                ; $6DCC: $08 $F6 $FD
    cp [hl]                                       ; $6DCF: $BE
    ld [$F5F3], sp                                ; $6DD0: $08 $F3 $F5
    cp l                                          ; $6DD3: $BD
    ld [$FA80], sp                                ; $6DD4: $08 $80 $FA
    dec b                                         ; $6DD7: $05
    cp a                                          ; $6DD8: $BF
    ld [$FDF4], sp                                ; $6DD9: $08 $F4 $FD
    cp [hl]                                       ; $6DDC: $BE
    ld [$F5F3], sp                                ; $6DDD: $08 $F3 $F5
    cp l                                          ; $6DE0: $BD
    ld [$F680], sp                                ; $6DE1: $08 $80 $F6
    dec b                                         ; $6DE4: $05
    cp a                                          ; $6DE5: $BF
    ld [$FDF3], sp                                ; $6DE6: $08 $F3 $FD
    cp [hl]                                       ; $6DE9: $BE
    ld [$F5F4], sp                                ; $6DEA: $08 $F4 $F5
    cp l                                          ; $6DED: $BD
    ld [$F480], sp                                ; $6DEE: $08 $80 $F4
    dec b                                         ; $6DF1: $05
    cp a                                          ; $6DF2: $BF
    ld [$FDF3], sp                                ; $6DF3: $08 $F3 $FD
    cp [hl]                                       ; $6DF6: $BE
    ld [$F5F6], sp                                ; $6DF7: $08 $F6 $F5
    cp l                                          ; $6DFA: $BD
    ld [$F380], sp                                ; $6DFB: $08 $80 $F3
    dec b                                         ; $6DFE: $05
    cp a                                          ; $6DFF: $BF
    ld [$FDF4], sp                                ; $6E00: $08 $F4 $FD
    cp [hl]                                       ; $6E03: $BE
    ld [$F5F9], sp                                ; $6E04: $08 $F9 $F5
    cp l                                          ; $6E07: $BD
    ld [$F380], sp                                ; $6E08: $08 $80 $F3
    dec b                                         ; $6E0B: $05
    cp a                                          ; $6E0C: $BF
    ld [$FDF6], sp                                ; $6E0D: $08 $F6 $FD
    cp [hl]                                       ; $6E10: $BE
    ld [$F5FC], sp                                ; $6E11: $08 $FC $F5
    cp l                                          ; $6E14: $BD
    ld [$F480], sp                                ; $6E15: $08 $80 $F4
    dec b                                         ; $6E18: $05
    cp a                                          ; $6E19: $BF
    ld [$FDF9], sp                                ; $6E1A: $08 $F9 $FD
    cp [hl]                                       ; $6E1D: $BE
    ld [$F500], sp                                ; $6E1E: $08 $00 $F5
    cp l                                          ; $6E21: $BD
    ld [$F680], sp                                ; $6E22: $08 $80 $F6
    dec b                                         ; $6E25: $05
    cp a                                          ; $6E26: $BF
    ld [$FDFC], sp                                ; $6E27: $08 $FC $FD
    cp [hl]                                       ; $6E2A: $BE
    ld [$F5FF], sp                                ; $6E2B: $08 $FF $F5
    cp l                                          ; $6E2E: $BD
    ld [$F980], sp                                ; $6E2F: $08 $80 $F9
    dec b                                         ; $6E32: $05
    cp a                                          ; $6E33: $BF
    ld [$FD00], sp                                ; $6E34: $08 $00 $FD
    cp [hl]                                       ; $6E37: $BE
    ld [$F500], sp                                ; $6E38: $08 $00 $F5
    cp l                                          ; $6E3B: $BD
    ld [$FC80], sp                                ; $6E3C: $08 $80 $FC
    dec b                                         ; $6E3F: $05
    cp a                                          ; $6E40: $BF
    ld [$FDFF], sp                                ; $6E41: $08 $FF $FD
    cp [hl]                                       ; $6E44: $BE
    ld [$F500], sp                                ; $6E45: $08 $00 $F5
    cp l                                          ; $6E48: $BD
    ld [$0080], sp                                ; $6E49: $08 $80 $00
    dec b                                         ; $6E4C: $05
    cp a                                          ; $6E4D: $BF
    ld [$FD00], sp                                ; $6E4E: $08 $00 $FD
    cp [hl]                                       ; $6E51: $BE
    ld [$F500], sp                                ; $6E52: $08 $00 $F5
    cp l                                          ; $6E55: $BD
    ld [$FF80], sp                                ; $6E56: $08 $80 $FF
    dec b                                         ; $6E59: $05

jr_041_6E5A:
    cp a                                          ; $6E5A: $BF
    ld [$FD00], sp                                ; $6E5B: $08 $00 $FD
    cp [hl]                                       ; $6E5E: $BE
    ld [$F500], sp                                ; $6E5F: $08 $00 $F5
    cp l                                          ; $6E62: $BD
    ld [$F080], sp                                ; $6E63: $08 $80 $F0
    nop                                           ; $6E66: $00
    ld b, h                                       ; $6E67: $44
    nop                                           ; $6E68: $00
    ldh a, [$F8]                                  ; $6E69: $F0 $F8
    ld b, e                                       ; $6E6B: $43
    nop                                           ; $6E6C: $00
    add sp, $00                                   ; $6E6D: $E8 $00
    ld b, d                                       ; $6E6F: $42
    nop                                           ; $6E70: $00
    add sp, -$08                                  ; $6E71: $E8 $F8
    ld b, c                                       ; $6E73: $41
    nop                                           ; $6E74: $00
    ldh [$F8], a                                  ; $6E75: $E0 $F8
    ld b, b                                       ; $6E77: $40
    jr nz, jr_041_6E5A                            ; $6E78: $20 $E0

    nop                                           ; $6E7A: $00
    ld b, b                                       ; $6E7B: $40
    nop                                           ; $6E7C: $00
    add b                                         ; $6E7D: $80
    add sp, $00                                   ; $6E7E: $E8 $00
    ld c, b                                       ; $6E80: $48
    ld [bc], a                                    ; $6E81: $02
    add sp, -$08                                  ; $6E82: $E8 $F8
    ld b, a                                       ; $6E84: $47
    ld [bc], a                                    ; $6E85: $02
    ldh [rP1], a                                  ; $6E86: $E0 $00
    ld b, [hl]                                    ; $6E88: $46
    ld [bc], a                                    ; $6E89: $02
    ldh [$F8], a                                  ; $6E8A: $E0 $F8
    ld b, l                                       ; $6E8C: $45
    ld [bc], a                                    ; $6E8D: $02
    add b                                         ; $6E8E: $80
    ldh [rP1], a                                  ; $6E8F: $E0 $00
    ld c, d                                       ; $6E91: $4A
    ld [bc], a                                    ; $6E92: $02
    ldh [$F8], a                                  ; $6E93: $E0 $F8
    ld c, c                                       ; $6E95: $49
    ld [bc], a                                    ; $6E96: $02
    add sp, $00                                   ; $6E97: $E8 $00
    ld c, b                                       ; $6E99: $48
    ld [bc], a                                    ; $6E9A: $02
    add sp, -$08                                  ; $6E9B: $E8 $F8
    ld b, a                                       ; $6E9D: $47
    ld [bc], a                                    ; $6E9E: $02
    add b                                         ; $6E9F: $80
    ldh [rP1], a                                  ; $6EA0: $E0 $00
    ld c, h                                       ; $6EA2: $4C
    ld [bc], a                                    ; $6EA3: $02
    ldh [$F8], a                                  ; $6EA4: $E0 $F8
    ld c, e                                       ; $6EA6: $4B
    ld [bc], a                                    ; $6EA7: $02
    add sp, $00                                   ; $6EA8: $E8 $00
    ld c, b                                       ; $6EAA: $48
    ld [bc], a                                    ; $6EAB: $02
    add sp, -$08                                  ; $6EAC: $E8 $F8
    ld b, a                                       ; $6EAE: $47
    ld [bc], a                                    ; $6EAF: $02
    add b                                         ; $6EB0: $80
    ldh [rP1], a                                  ; $6EB1: $E0 $00
    ld c, l                                       ; $6EB3: $4D
    ld [bc], a                                    ; $6EB4: $02
    ldh [$F8], a                                  ; $6EB5: $E0 $F8
    ld b, l                                       ; $6EB7: $45
    ld [bc], a                                    ; $6EB8: $02
    add sp, $00                                   ; $6EB9: $E8 $00
    ld c, b                                       ; $6EBB: $48
    ld [bc], a                                    ; $6EBC: $02
    add sp, -$08                                  ; $6EBD: $E8 $F8
    ld b, a                                       ; $6EBF: $47
    ld [bc], a                                    ; $6EC0: $02
    add b                                         ; $6EC1: $80

    db $4C, $FF, $00, $00, $00, $69

    nop                                           ; $6EC8: $00
    ld b, [hl]                                    ; $6EC9: $46
    jp nz, Jump_041_4C6E                          ; $6ECA: $C2 $6E $4C

    rrca                                          ; $6ECD: $0F
    nop                                           ; $6ECE: $00
    nop                                           ; $6ECF: $00
    ld de, $0169                                  ; $6ED0: $11 $69 $01
    nop                                           ; $6ED3: $00
    ld bc, $6911                                  ; $6ED4: $01 $11 $69
    rrca                                          ; $6ED7: $0F
    nop                                           ; $6ED8: $00
    nop                                           ; $6ED9: $00
    ld de, $0169                                  ; $6EDA: $11 $69 $01
    nop                                           ; $6EDD: $00
    rst $38                                       ; $6EDE: $FF
    ld de, $0069                                  ; $6EDF: $11 $69 $00
    ld b, [hl]                                    ; $6EE2: $46
    call z, Call_041_4D6E                         ; $6EE3: $CC $6E $4D
    ld [$0008], sp                                ; $6EE6: $08 $08 $00
    nop                                           ; $6EE9: $00
    ld e, $69                                     ; $6EEA: $1E $69
    cpl                                           ; $6EEC: $2F
    ld l, c                                       ; $6EED: $69
    ld b, b                                       ; $6EEE: $40
    ld l, c                                       ; $6EEF: $69
    cpl                                           ; $6EF0: $2F
    ld l, c                                       ; $6EF1: $69
    ld b, [hl]                                    ; $6EF2: $46
    push hl                                       ; $6EF3: $E5
    ld l, [hl]                                    ; $6EF4: $6E
    ld c, h                                       ; $6EF5: $4C
    stop                                          ; $6EF6: $10 $00
    nop                                           ; $6EF8: $00
    ld d, c                                       ; $6EF9: $51
    ld l, c                                       ; $6EFA: $69
    inc b                                         ; $6EFB: $04
    nop                                           ; $6EFC: $00
    nop                                           ; $6EFD: $00
    ld l, d                                       ; $6EFE: $6A
    ld l, c                                       ; $6EFF: $69
    ld bc, $0000                                  ; $6F00: $01 $00 $00
    add e                                         ; $6F03: $83
    ld l, c                                       ; $6F04: $69
    ld bc, $0000                                  ; $6F05: $01 $00 $00
    ld l, d                                       ; $6F08: $6A
    ld l, c                                       ; $6F09: $69
    ld bc, $0000                                  ; $6F0A: $01 $00 $00
    add e                                         ; $6F0D: $83
    ld l, c                                       ; $6F0E: $69
    ld bc, $0000                                  ; $6F0F: $01 $00 $00
    ld l, d                                       ; $6F12: $6A
    ld l, c                                       ; $6F13: $69
    ld bc, $0000                                  ; $6F14: $01 $00 $00
    add e                                         ; $6F17: $83
    ld l, c                                       ; $6F18: $69
    ld bc, $0000                                  ; $6F19: $01 $00 $00
    ld l, d                                       ; $6F1C: $6A
    ld l, c                                       ; $6F1D: $69
    ld bc, $0000                                  ; $6F1E: $01 $00 $00
    add e                                         ; $6F21: $83
    ld l, c                                       ; $6F22: $69
    ld bc, $0000                                  ; $6F23: $01 $00 $00
    ld l, d                                       ; $6F26: $6A
    ld l, c                                       ; $6F27: $69
    ld bc, $0000                                  ; $6F28: $01 $00 $00
    add e                                         ; $6F2B: $83
    ld l, c                                       ; $6F2C: $69
    ld bc, $0000                                  ; $6F2D: $01 $00 $00
    ld l, d                                       ; $6F30: $6A
    ld l, c                                       ; $6F31: $69
    ld bc, $0000                                  ; $6F32: $01 $00 $00
    add e                                         ; $6F35: $83
    ld l, c                                       ; $6F36: $69
    ld bc, $0000                                  ; $6F37: $01 $00 $00
    ld l, d                                       ; $6F3A: $6A
    ld l, c                                       ; $6F3B: $69
    ld bc, $0000                                  ; $6F3C: $01 $00 $00
    add e                                         ; $6F3F: $83
    ld l, c                                       ; $6F40: $69
    ld bc, $0000                                  ; $6F41: $01 $00 $00
    ld l, d                                       ; $6F44: $6A
    ld l, c                                       ; $6F45: $69
    ld bc, $0000                                  ; $6F46: $01 $00 $00
    add e                                         ; $6F49: $83
    ld l, c                                       ; $6F4A: $69
    ld bc, $0000                                  ; $6F4B: $01 $00 $00
    ld l, d                                       ; $6F4E: $6A
    ld l, c                                       ; $6F4F: $69
    ld bc, $0000                                  ; $6F50: $01 $00 $00
    add e                                         ; $6F53: $83
    ld l, c                                       ; $6F54: $69
    inc b                                         ; $6F55: $04
    nop                                           ; $6F56: $00
    nop                                           ; $6F57: $00
    ld l, d                                       ; $6F58: $6A
    ld l, c                                       ; $6F59: $69
    nop                                           ; $6F5A: $00
    ld b, [hl]                                    ; $6F5B: $46
    push af                                       ; $6F5C: $F5
    ld l, [hl]                                    ; $6F5D: $6E
    ld c, l                                       ; $6F5E: $4D
    jr nz, jr_041_6F65                            ; $6F5F: $20 $04

    nop                                           ; $6F61: $00
    nop                                           ; $6F62: $00
    sbc h                                         ; $6F63: $9C
    ld l, c                                       ; $6F64: $69

jr_041_6F65:
    xor c                                         ; $6F65: $A9
    ld l, c                                       ; $6F66: $69
    cp d                                          ; $6F67: $BA
    ld l, c                                       ; $6F68: $69
    db $DB                                        ; $6F69: $DB
    ld l, c                                       ; $6F6A: $69
    db $FC                                        ; $6F6B: $FC
    ld l, c                                       ; $6F6C: $69
    dec e                                         ; $6F6D: $1D
    ld l, d                                       ; $6F6E: $6A
    ld a, $6A                                     ; $6F6F: $3E $6A
    ld e, a                                       ; $6F71: $5F
    ld l, d                                       ; $6F72: $6A
    add b                                         ; $6F73: $80
    ld l, d                                       ; $6F74: $6A
    and c                                         ; $6F75: $A1
    ld l, d                                       ; $6F76: $6A
    jp nz, $E36A                                  ; $6F77: $C2 $6A $E3

    ld l, d                                       ; $6F7A: $6A
    inc b                                         ; $6F7B: $04
    ld l, e                                       ; $6F7C: $6B
    dec h                                         ; $6F7D: $25
    ld l, e                                       ; $6F7E: $6B
    ld b, [hl]                                    ; $6F7F: $46
    ld l, e                                       ; $6F80: $6B
    ld l, e                                       ; $6F81: $6B
    ld l, e                                       ; $6F82: $6B
    xor h                                         ; $6F83: $AC
    ld [hl+], a                                   ; $6F84: $22
    rst $00                                       ; $6F85: $C7
    db $01                                        ; $6F86: $01
    ld b, d                                       ; $6F87: $42

    db $4F, $01, $00, $FC, $E8, $6B, $01, $00, $00, $E8, $6B, $01, $00, $FD, $E8, $6B
    db $01, $00, $00, $E8, $6B, $01, $00, $FE, $E8, $6B, $01, $00, $00, $E8, $6B, $01
    db $00, $FF, $E8, $6B, $03, $00, $00, $E8, $6B, $01, $00, $01, $E8, $6B, $01, $00
    db $00, $E8, $6B, $01, $00, $02, $E8, $6B, $01, $00, $00, $E8, $6B, $01, $00, $03
    db $E8, $6B, $01, $00, $00, $E8, $6B, $01, $00, $04, $E8, $6B, $01, $00, $00, $E8
    db $6B, $00, $46, $88, $6F

    ld c, l                                       ; $6FDD: $4D
    inc d                                         ; $6FDE: $14
    inc b                                         ; $6FDF: $04
    nop                                           ; $6FE0: $00
    nop                                           ; $6FE1: $00
    ld a, [bc]                                    ; $6FE2: $0A
    ld l, h                                       ; $6FE3: $6C
    rrca                                          ; $6FE4: $0F
    ld l, h                                       ; $6FE5: $6C
    inc d                                         ; $6FE6: $14
    ld l, h                                       ; $6FE7: $6C
    add hl, hl                                    ; $6FE8: $29
    ld l, h                                       ; $6FE9: $6C
    ld l, $6C                                     ; $6FEA: $2E $6C
    scf                                           ; $6FEC: $37
    ld l, h                                       ; $6FED: $6C
    ld b, b                                       ; $6FEE: $40
    ld l, h                                       ; $6FEF: $6C
    ld d, c                                       ; $6FF0: $51
    ld l, h                                       ; $6FF1: $6C
    ld l, d                                       ; $6FF2: $6A
    ld l, h                                       ; $6FF3: $6C
    ld a, e                                       ; $6FF4: $7B
    ld l, h                                       ; $6FF5: $6C
    ld b, d                                       ; $6FF6: $42
    ld c, l                                       ; $6FF7: $4D
    ld c, $04                                     ; $6FF8: $0E $04
    nop                                           ; $6FFA: $00
    nop                                           ; $6FFB: $00
    adc h                                         ; $6FFC: $8C
    ld l, h                                       ; $6FFD: $6C
    sbc l                                         ; $6FFE: $9D
    ld l, h                                       ; $6FFF: $6C
    xor [hl]                                      ; $7000: $AE
    ld l, h                                       ; $7001: $6C
    cp a                                          ; $7002: $BF
    ld l, h                                       ; $7003: $6C
    ret nc                                        ; $7004: $D0

    ld l, h                                       ; $7005: $6C
    pop hl                                        ; $7006: $E1
    ld l, h                                       ; $7007: $6C
    ld a, [c]                                     ; $7008: $F2
    ld l, h                                       ; $7009: $6C
    ld c, h                                       ; $700A: $4C
    stop                                          ; $700B: $10 $00
    nop                                           ; $700D: $00
    inc bc                                        ; $700E: $03
    ld l, l                                       ; $700F: $6D
    inc b                                         ; $7010: $04
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    inc d                                         ; $7013: $14
    ld l, l                                       ; $7014: $6D
    nop                                           ; $7015: $00
    ld c, b                                       ; $7016: $48
    ld b, b                                       ; $7017: $40
    ld b, b                                       ; $7018: $40
    ld b, [hl]                                    ; $7019: $46
    rst $30                                       ; $701A: $F7
    ld l, a                                       ; $701B: $6F
    ld c, h                                       ; $701C: $4C
    jr nz, jr_041_701F                            ; $701D: $20 $00

jr_041_701F:
    nop                                           ; $701F: $00
    dec h                                         ; $7020: $25
    ld l, l                                       ; $7021: $6D
    ld [rRAMG], sp                                ; $7022: $08 $00 $00
    ld [hl-], a                                   ; $7025: $32
    ld l, l                                       ; $7026: $6D
    inc b                                         ; $7027: $04
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    ld b, e                                       ; $702A: $43
    ld l, l                                       ; $702B: $6D
    ld h, b                                       ; $702C: $60
    nop                                           ; $702D: $00
    nop                                           ; $702E: $00
    ld e, b                                       ; $702F: $58
    ld l, l                                       ; $7030: $6D
    nop                                           ; $7031: $00
    ld b, [hl]                                    ; $7032: $46
    inc e                                         ; $7033: $1C
    ld [hl], b                                    ; $7034: $70
    ld c, h                                       ; $7035: $4C
    ld d, b                                       ; $7036: $50
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    ld l, c                                       ; $7039: $69
    ld l, l                                       ; $703A: $6D
    inc b                                         ; $703B: $04
    nop                                           ; $703C: $00
    nop                                           ; $703D: $00
    ld a, d                                       ; $703E: $7A
    ld l, l                                       ; $703F: $6D
    inc b                                         ; $7040: $04
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    adc e                                         ; $7043: $8B
    ld l, l                                       ; $7044: $6D
    stop                                          ; $7045: $10 $00
    nop                                           ; $7047: $00
    sbc h                                         ; $7048: $9C
    ld l, l                                       ; $7049: $6D
    inc b                                         ; $704A: $04
    nop                                           ; $704B: $00
    nop                                           ; $704C: $00
    adc e                                         ; $704D: $8B
    ld l, l                                       ; $704E: $6D
    inc b                                         ; $704F: $04
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    ld a, d                                       ; $7052: $7A
    ld l, l                                       ; $7053: $6D
    nop                                           ; $7054: $00
    ld b, [hl]                                    ; $7055: $46
    dec [hl]                                      ; $7056: $35
    ld [hl], b                                    ; $7057: $70
    ld c, l                                       ; $7058: $4D
    jr nz, jr_041_705F                            ; $7059: $20 $04

    nop                                           ; $705B: $00
    nop                                           ; $705C: $00
    xor l                                         ; $705D: $AD
    ld l, l                                       ; $705E: $6D

jr_041_705F:
    or d                                          ; $705F: $B2
    ld l, l                                       ; $7060: $6D
    or a                                          ; $7061: $B7
    ld l, l                                       ; $7062: $6D
    ret nz                                        ; $7063: $C0

    ld l, l                                       ; $7064: $6D
    ret                                           ; $7065: $C9


    ld l, l                                       ; $7066: $6D
    sub $6D                                       ; $7067: $D6 $6D
    db $E3                                        ; $7069: $E3
    ld l, l                                       ; $706A: $6D
    ldh a, [$6D]                                  ; $706B: $F0 $6D
    db $FD                                        ; $706D: $FD
    ld l, l                                       ; $706E: $6D
    ld a, [bc]                                    ; $706F: $0A
    ld l, [hl]                                    ; $7070: $6E
    rla                                           ; $7071: $17
    ld l, [hl]                                    ; $7072: $6E
    inc h                                         ; $7073: $24
    ld l, [hl]                                    ; $7074: $6E
    ld sp, $3E6E                                  ; $7075: $31 $6E $3E
    ld l, [hl]                                    ; $7078: $6E
    ld c, e                                       ; $7079: $4B
    ld l, [hl]                                    ; $707A: $6E
    ld e, b                                       ; $707B: $58
    ld l, [hl]                                    ; $707C: $6E
    ld c, h                                       ; $707D: $4C
    ld b, b                                       ; $707E: $40
    nop                                           ; $707F: $00
    nop                                           ; $7080: $00
    ld c, e                                       ; $7081: $4B
    ld l, [hl]                                    ; $7082: $6E
    nop                                           ; $7083: $00
    xor h                                         ; $7084: $AC
    ld [hl+], a                                   ; $7085: $22
    rst $00                                       ; $7086: $C7
    db $01, $42
SCRIPT_Battle_Actor_Plague::
    db $4C
    rlca                                          ; $708A: $07
    nop                                           ; $708B: $00
    nop                                           ; $708C: $00
    ld h, l                                       ; $708D: $65
    ld l, [hl]                                    ; $708E: $6E
    ld bc, $0001                                  ; $708F: $01 $01 $00
    ld h, l                                       ; $7092: $65
    ld l, [hl]                                    ; $7093: $6E
    rrca                                          ; $7094: $0F
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    ld h, l                                       ; $7097: $65
    ld l, [hl]                                    ; $7098: $6E
    ld bc, $FFFF                                  ; $7099: $01 $FF $FF
    ld h, l                                       ; $709C: $65
    ld l, [hl]                                    ; $709D: $6E
    rlca                                          ; $709E: $07
    nop                                           ; $709F: $00
    nop                                           ; $70A0: $00
    ld h, l                                       ; $70A1: $65
    ld l, [hl]                                    ; $70A2: $6E
    ld bc, $00FF                                  ; $70A3: $01 $FF $00
    ld h, l                                       ; $70A6: $65
    ld l, [hl]                                    ; $70A7: $6E
    rrca                                          ; $70A8: $0F
    nop                                           ; $70A9: $00
    nop                                           ; $70AA: $00
    ld h, l                                       ; $70AB: $65
    ld l, [hl]                                    ; $70AC: $6E
    ld bc, $0101                                  ; $70AD: $01 $01 $01
    ld h, l                                       ; $70B0: $65
    ld l, [hl]                                    ; $70B1: $6E
    nop                                           ; $70B2: $00
    ld b, [hl]                                    ; $70B3: $46
    adc c                                         ; $70B4: $89
    ld [hl], b                                    ; $70B5: $70
SCRIPT_Battle_Actor_Stone::
    ld c, h                                       ; $70B6: $4C
    ld h, b                                       ; $70B7: $60
    nop                                           ; $70B8: $00
    nop                                           ; $70B9: $00
    ld a, [hl]                                    ; $70BA: $7E
    ld l, [hl]                                    ; $70BB: $6E
    ld [rRAMG], sp                                ; $70BC: $08 $00 $00
    adc a                                         ; $70BF: $8F
    ld l, [hl]                                    ; $70C0: $6E
    ld [rRAMG], sp                                ; $70C1: $08 $00 $00
    and b                                         ; $70C4: $A0
    ld l, [hl]                                    ; $70C5: $6E
    ld [rRAMG], sp                                ; $70C6: $08 $00 $00
    or c                                          ; $70C9: $B1
    ld l, [hl]                                    ; $70CA: $6E
    nop                                           ; $70CB: $00
    ld b, [hl]                                    ; $70CC: $46
    or [hl]                                       ; $70CD: $B6
    ld [hl], b                                    ; $70CE: $70
    nop                                           ; $70CF: $00
    nop                                           ; $70D0: $00
    nop                                           ; $70D1: $00
    nop                                           ; $70D2: $00
    nop                                           ; $70D3: $00
    nop                                           ; $70D4: $00
    nop                                           ; $70D5: $00