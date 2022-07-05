SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

jr_012_4000:
    ld b, e                                       ; $4000: $43
    rrca                                          ; $4001: $0F
    inc b                                         ; $4002: $04
    dec b                                         ; $4003: $05
    db $10                                        ; $4004: $10
    ld [de], a                                    ; $4005: $12
    ld de, $0240                                  ; $4006: $11 $40 $02
    dec c                                         ; $4009: $0D
    ld h, $00                                     ; $400A: $26 $00
    dec sp                                        ; $400C: $3B
    ld b, l                                       ; $400D: $45
    db $28, $AA                                   ; $400E: $28 $AA
    ld l, b                                       ; $4010: $68
    rlca                                          ; $4011: $07
    nop                                           ; $4012: $00
    ld l, e                                       ; $4013: $6B
    ld c, d                                       ; $4014: $4A
    add hl, bc                                    ; $4015: $09
    nop                                           ; $4016: $00
    jr nz, jr_012_4076                            ; $4017: $20 $5D

    ld d, b                                       ; $4019: $50
    ld b, b                                       ; $401A: $40
    ld [$0009], sp                                ; $401B: $08 $09 $00
    db $20, $B5                                   ; $401E: $20 $B5
    ld d, b                                       ; $4020: $50
    sbc e                                         ; $4021: $9B
    ld a, b                                       ; $4022: $78
    ld [hl], b                                    ; $4023: $70
    sbc a                                         ; $4024: $9F
    ld c, c                                       ; $4025: $49
    jr nz, jr_012_408B                            ; $4026: $20 $63

    ld h, c                                       ; $4028: $61
    ld l, [hl]                                    ; $4029: $6E

jr_012_402A:
    daa                                           ; $402A: $27
    ld [hl], h                                    ; $402B: $74
    jr nz, jr_012_409A                            ; $402C: $20 $6C

    ld h, l                                       ; $402E: $65
    ld h, c                                       ; $402F: $61
    halt                                          ; $4030: $76
    ld h, l                                       ; $4031: $65
    rst $38                                       ; $4032: $FF
    ld l, l                                       ; $4033: $6D
    ld a, c                                       ; $4034: $79
    jr nz, jr_012_40A6                            ; $4035: $20 $6F

    ld [hl], a                                    ; $4037: $77
    ld l, [hl]                                    ; $4038: $6E
    jr nz, jr_012_40AB                            ; $4039: $20 $70

    ld h, c                                       ; $403B: $61
    ld [hl], d                                    ; $403C: $72
    ld [hl], h                                    ; $403D: $74
    ld a, c                                       ; $403E: $79
    ld hl, $FDFE                                  ; $403F: $21 $FE $FD
    sbc d                                         ; $4042: $9A
    rlca                                          ; $4043: $07
    nop                                           ; $4044: $00
    add c                                         ; $4045: $81
    ld e, l                                       ; $4046: $5D
    add hl, bc                                    ; $4047: $09
    nop                                           ; $4048: $00
    jr nz, jr_012_4000                            ; $4049: $20 $B5

    ld d, b                                       ; $404B: $50
    ld b, d                                       ; $404C: $42
    ld [bc], a                                    ; $404D: $02
    nop                                           ; $404E: $00
    inc de                                        ; $404F: $13
    db $10                                        ; $4050: $10
    ld [de], a                                    ; $4051: $12
    ld b, l                                       ; $4052: $45
    rla                                           ; $4053: $17
    jr nc, jr_012_40C1                            ; $4054: $30 $6B

    ld [bc], a                                    ; $4056: $02
    nop                                           ; $4057: $00
    inc de                                        ; $4058: $13
    rra                                           ; $4059: $1F
    ld hl, $1745                                  ; $405A: $21 $45 $17
    jr nc, @+$6D                                  ; $405D: $30 $6B

    ld b, e                                       ; $405F: $43
    rrca                                          ; $4060: $0F
    inc b                                         ; $4061: $04
    dec b                                         ; $4062: $05
    db $10                                        ; $4063: $10
    ld [de], a                                    ; $4064: $12
    ld [hl], b                                    ; $4065: $70
    ld b, b                                       ; $4066: $40
    ld [bc], a                                    ; $4067: $02
    dec de                                        ; $4068: $1B
    ld [$002C], sp                                ; $4069: $08 $2C $00
    ld b, l                                       ; $406C: $45
    ld e, $72                                     ; $406D: $1E $72
    ld d, l                                       ; $406F: $55
    rlca                                          ; $4070: $07
    nop                                           ; $4071: $00
    ld l, e                                       ; $4072: $6B
    ld c, d                                       ; $4073: $4A
    add hl, bc                                    ; $4074: $09
    nop                                           ; $4075: $00

jr_012_4076:
    jr nz, @+$4F                                  ; $4076: $20 $4D

    ld d, b                                       ; $4078: $50
    ld b, b                                       ; $4079: $40
    ld [$0009], sp                                ; $407A: $08 $09 $00
    jr nz, jr_012_402A                            ; $407D: $20 $AB

    ld d, b                                       ; $407F: $50
    sbc e                                         ; $4080: $9B
    ld a, b                                       ; $4081: $78
    ld [hl], b                                    ; $4082: $70
    sbc a                                         ; $4083: $9F
    ld c, c                                       ; $4084: $49
    jr nz, jr_012_40EA                            ; $4085: $20 $63

    ld h, c                                       ; $4087: $61
    ld l, [hl]                                    ; $4088: $6E
    daa                                           ; $4089: $27
    ld [hl], h                                    ; $408A: $74

jr_012_408B:
    jr nz, jr_012_40F9                            ; $408B: $20 $6C

    ld h, l                                       ; $408D: $65
    ld h, c                                       ; $408E: $61
    halt                                          ; $408F: $76
    ld h, l                                       ; $4090: $65
    rst $38                                       ; $4091: $FF
    ld l, l                                       ; $4092: $6D
    ld a, c                                       ; $4093: $79
    jr nz, jr_012_4105                            ; $4094: $20 $6F

    ld [hl], a                                    ; $4096: $77
    ld l, [hl]                                    ; $4097: $6E
    jr nz, jr_012_410A                            ; $4098: $20 $70

jr_012_409A:
    ld h, c                                       ; $409A: $61
    ld [hl], d                                    ; $409B: $72
    ld [hl], h                                    ; $409C: $74
    ld a, c                                       ; $409D: $79
    ld hl, $FDFE                                  ; $409E: $21 $FE $FD
    sbc d                                         ; $40A1: $9A
    rlca                                          ; $40A2: $07
    nop                                           ; $40A3: $00
    add c                                         ; $40A4: $81
    ld e, l                                       ; $40A5: $5D

jr_012_40A6:
    add hl, bc                                    ; $40A6: $09

jr_012_40A7:
    nop                                           ; $40A7: $00
    jr nz, @-$53                                  ; $40A8: $20 $AB

    ld d, b                                       ; $40AA: $50

jr_012_40AB:
    ld b, d                                       ; $40AB: $42
    ld [bc], a                                    ; $40AC: $02
    daa                                           ; $40AD: $27
    nop                                           ; $40AE: $00
    dec d                                         ; $40AF: $15
    dec d                                         ; $40B0: $15
    ld b, l                                       ; $40B1: $45
    ld e, $86                                     ; $40B2: $1E $86
    ld c, e                                       ; $40B4: $4B
    ld [bc], a                                    ; $40B5: $02
    inc c                                         ; $40B6: $0C
    ld b, $18                                     ; $40B7: $06 $18
    dec bc                                        ; $40B9: $0B
    ld b, l                                       ; $40BA: $45
    ld e, $68                                     ; $40BB: $1E $68

jr_012_40BD:
    ld h, c                                       ; $40BD: $61
    ld [bc], a                                    ; $40BE: $02
    rla                                           ; $40BF: $17
    ld a, [bc]                                    ; $40C0: $0A

jr_012_40C1:
    inc e                                         ; $40C1: $1C
    rrca                                          ; $40C2: $0F

jr_012_40C3:
    ld b, l                                       ; $40C3: $45
    ld e, $D9                                     ; $40C4: $1E $D9
    ld l, c                                       ; $40C6: $69
    ld [bc], a                                    ; $40C7: $02
    dec e                                         ; $40C8: $1D
    ld b, $12                                     ; $40C9: $06 $12
    dec bc                                        ; $40CB: $0B
    ld b, l                                       ; $40CC: $45
    ld e, $90                                     ; $40CD: $1E $90
    ld e, e                                       ; $40CF: $5B

jr_012_40D0:
    rlca                                          ; $40D0: $07
    nop                                           ; $40D1: $00

jr_012_40D2:
    ld l, e                                       ; $40D2: $6B
    ld c, d                                       ; $40D3: $4A
    ld b, e                                       ; $40D4: $43
    rrca                                          ; $40D5: $0F
    ld bc, $A224                                  ; $40D6: $01 $24 $A2
    dec b                                         ; $40D9: $05

jr_012_40DA:
    inc b                                         ; $40DA: $04
    ld [de], a                                    ; $40DB: $12
    db $E4                                        ; $40DC: $E4
    ld b, b                                       ; $40DD: $40
    add hl, bc                                    ; $40DE: $09
    nop                                           ; $40DF: $00
    ld [de], a                                    ; $40E0: $12
    ld sp, hl                                     ; $40E1: $F9
    ld b, b                                       ; $40E2: $40
    ld b, d                                       ; $40E3: $42
    dec b                                         ; $40E4: $05
    inc bc                                        ; $40E5: $03
    and $63                                       ; $40E6: $E6 $63
    ld c, $0A                                     ; $40E8: $0E $0A

jr_012_40EA:
    sbc [hl]                                      ; $40EA: $9E
    pop de                                        ; $40EB: $D1
    nop                                           ; $40EC: $00
    ld [de], a                                    ; $40ED: $12

jr_012_40EE:
    add hl, hl                                    ; $40EE: $29
    ld b, c                                       ; $40EF: $41
    ld [hl+], a                                   ; $40F0: $22
    inc b                                         ; $40F1: $04
    ld b, b                                       ; $40F2: $40
    add hl, bc                                    ; $40F3: $09
    nop                                           ; $40F4: $00
    ld [de], a                                    ; $40F5: $12
    rrca                                          ; $40F6: $0F
    ld b, c                                       ; $40F7: $41
    ld b, d                                       ; $40F8: $42

jr_012_40F9:
    inc d                                         ; $40F9: $14
    jr nz, jr_012_40A7                            ; $40FA: $20 $AB

    ld d, b                                       ; $40FC: $50
    ld e, e                                       ; $40FD: $5B
    ld [de], a                                    ; $40FE: $12
    and d                                         ; $40FF: $A2
    ld c, e                                       ; $4100: $4B
    ld e, a                                       ; $4101: $5F
    dec d                                         ; $4102: $15
    jr nz, jr_012_40D2                            ; $4103: $20 $CD

jr_012_4105:
    ld c, a                                       ; $4105: $4F
    stop                                          ; $4106: $10 $00
    inc de                                        ; $4108: $13
    add c                                         ; $4109: $81

jr_012_410A:
    ld e, l                                       ; $410A: $5D
    ld b, l                                       ; $410B: $45
    jr nz, jr_012_40C3                            ; $410C: $20 $B5

    ld d, b                                       ; $410E: $50
    inc d                                         ; $410F: $14
    jr nz, jr_012_40BD                            ; $4110: $20 $AB

    ld d, b                                       ; $4112: $50
    ld e, e                                       ; $4113: $5B
    ld [de], a                                    ; $4114: $12
    and d                                         ; $4115: $A2
    ld c, e                                       ; $4116: $4B
    ld e, a                                       ; $4117: $5F
    inc d                                         ; $4118: $14
    jr nz, jr_012_40D0                            ; $4119: $20 $B5

    ld d, b                                       ; $411B: $50
    ld b, b                                       ; $411C: $40
    jr nz, jr_012_4134                            ; $411D: $20 $15

    jr nz, jr_012_40EE                            ; $411F: $20 $CD

    ld c, a                                       ; $4121: $4F
    db $10                                        ; $4122: $10
    jr nz, jr_012_40DA                            ; $4123: $20 $B5

    ld d, b                                       ; $4125: $50
    nop                                           ; $4126: $00
    nop                                           ; $4127: $00
    ld b, d                                       ; $4128: $42
    inc d                                         ; $4129: $14
    jr nz, @-$26                                  ; $412A: $20 $D8

    ld a, b                                       ; $412C: $78
    ld a, l                                       ; $412D: $7D
    jp c, $01C1                                   ; $412E: $DA $C1 $01

    ld b, b                                       ; $4131: $40
    jr nz, jr_012_4149                            ; $4132: $20 $15

jr_012_4134:
    jr nz, @-$66                                  ; $4134: $20 $98

    ld a, b                                       ; $4136: $78
    jr nc, jr_012_4159                            ; $4137: $30 $20

    ret c                                         ; $4139: $D8

    ld a, b                                       ; $413A: $78
    ld bc, $5B00                                  ; $413B: $01 $00 $5B
    ld [de], a                                    ; $413E: $12
    sbc d                                         ; $413F: $9A
    ld c, h                                       ; $4140: $4C
    ld e, a                                       ; $4141: $5F
    ld sp, $7612                                  ; $4142: $31 $12 $76
    ld h, c                                       ; $4145: $61
    ld [hl+], a                                   ; $4146: $22
    adc $40                                       ; $4147: $CE $40

jr_012_4149:
    ld b, l                                       ; $4149: $45
    ld [de], a                                    ; $414A: $12
    pop bc                                        ; $414B: $C1
    ld [hl], b                                    ; $414C: $70
    rlca                                          ; $414D: $07

jr_012_414E:
    nop                                           ; $414E: $00
    ld l, e                                       ; $414F: $6B
    ld c, d                                       ; $4150: $4A
    ld b, e                                       ; $4151: $43
    rrca                                          ; $4152: $0F
    ld bc, $A224                                  ; $4153: $01 $24 $A2
    dec b                                         ; $4156: $05
    inc b                                         ; $4157: $04
    ld [de], a                                    ; $4158: $12

jr_012_4159:
    ld h, c                                       ; $4159: $61
    ld b, c                                       ; $415A: $41
    add hl, bc                                    ; $415B: $09
    nop                                           ; $415C: $00
    ld [de], a                                    ; $415D: $12
    halt                                          ; $415E: $76
    ld b, c                                       ; $415F: $41
    ld b, d                                       ; $4160: $42

jr_012_4161:
    dec b                                         ; $4161: $05
    inc bc                                        ; $4162: $03
    and $63                                       ; $4163: $E6 $63
    dec bc                                        ; $4165: $0B
    rrca                                          ; $4166: $0F
    ld h, e                                       ; $4167: $63
    jp nc, $1200                                  ; $4168: $D2 $00 $12

jr_012_416B:
    and [hl]                                      ; $416B: $A6
    ld b, c                                       ; $416C: $41
    ld [hl+], a                                   ; $416D: $22
    inc b                                         ; $416E: $04

jr_012_416F:
    ld b, b                                       ; $416F: $40
    add hl, bc                                    ; $4170: $09
    nop                                           ; $4171: $00
    ld [de], a                                    ; $4172: $12
    adc h                                         ; $4173: $8C
    ld b, c                                       ; $4174: $41
    ld b, d                                       ; $4175: $42
    inc d                                         ; $4176: $14
    jr nz, @-$3F                                  ; $4177: $20 $BF

    ld d, b                                       ; $4179: $50
    ld e, e                                       ; $417A: $5B
    ld [de], a                                    ; $417B: $12
    and d                                         ; $417C: $A2
    ld c, e                                       ; $417D: $4B
    ld e, a                                       ; $417E: $5F
    dec d                                         ; $417F: $15
    jr nz, jr_012_416F                            ; $4180: $20 $ED

    ld c, a                                       ; $4182: $4F
    stop                                          ; $4183: $10 $00
    inc de                                        ; $4185: $13
    add c                                         ; $4186: $81
    ld e, l                                       ; $4187: $5D
    ld b, l                                       ; $4188: $45
    jr nz, @-$35                                  ; $4189: $20 $C9

jr_012_418B:
    ld d, b                                       ; $418B: $50
    inc d                                         ; $418C: $14
    jr nz, jr_012_414E                            ; $418D: $20 $BF

    ld d, b                                       ; $418F: $50
    ld e, e                                       ; $4190: $5B
    ld [de], a                                    ; $4191: $12
    and d                                         ; $4192: $A2
    ld c, e                                       ; $4193: $4B
    ld e, a                                       ; $4194: $5F

jr_012_4195:
    inc d                                         ; $4195: $14
    jr nz, jr_012_4161                            ; $4196: $20 $C9

    ld d, b                                       ; $4198: $50
    ld b, b                                       ; $4199: $40
    jr nz, jr_012_41B1                            ; $419A: $20 $15

    jr nz, jr_012_418B                            ; $419C: $20 $ED

    ld c, a                                       ; $419E: $4F
    db $10                                        ; $419F: $10
    jr nz, jr_012_416B                            ; $41A0: $20 $C9

    ld d, b                                       ; $41A2: $50
    nop                                           ; $41A3: $00
    nop                                           ; $41A4: $00
    ld b, d                                       ; $41A5: $42
    inc d                                         ; $41A6: $14
    jr nz, jr_012_4195                            ; $41A7: $20 $EC

    ld a, b                                       ; $41A9: $78
    ld a, l                                       ; $41AA: $7D
    jp c, $01C1                                   ; $41AB: $DA $C1 $01

    ld b, b                                       ; $41AE: $40
    jr nz, jr_012_41C6                            ; $41AF: $20 $15

jr_012_41B1:
    jr nz, jr_012_416B                            ; $41B1: $20 $B8

    ld a, b                                       ; $41B3: $78
    jr nc, jr_012_41D6                            ; $41B4: $30 $20

    db $EC                                        ; $41B6: $EC
    ld a, b                                       ; $41B7: $78
    ld bc, $5B00                                  ; $41B8: $01 $00 $5B
    ld [de], a                                    ; $41BB: $12
    sbc d                                         ; $41BC: $9A
    ld c, h                                       ; $41BD: $4C
    ld e, a                                       ; $41BE: $5F
    ld sp, $7612                                  ; $41BF: $31 $12 $76
    ld h, c                                       ; $41C2: $61
    ld [hl+], a                                   ; $41C3: $22
    adc $40                                       ; $41C4: $CE $40

jr_012_41C6:
    ld b, l                                       ; $41C6: $45
    ld [de], a                                    ; $41C7: $12
    pop bc                                        ; $41C8: $C1
    ld [hl], b                                    ; $41C9: $70
    rlca                                          ; $41CA: $07

jr_012_41CB:
    nop                                           ; $41CB: $00
    ld l, e                                       ; $41CC: $6B
    ld c, d                                       ; $41CD: $4A
    ld b, e                                       ; $41CE: $43
    rrca                                          ; $41CF: $0F
    ld bc, $A224                                  ; $41D0: $01 $24 $A2
    dec b                                         ; $41D3: $05
    inc b                                         ; $41D4: $04
    ld [de], a                                    ; $41D5: $12

jr_012_41D6:
    sbc $41                                       ; $41D6: $DE $41
    add hl, bc                                    ; $41D8: $09
    nop                                           ; $41D9: $00
    ld [de], a                                    ; $41DA: $12
    di                                            ; $41DB: $F3
    ld b, c                                       ; $41DC: $41
    ld b, d                                       ; $41DD: $42

jr_012_41DE:
    dec b                                         ; $41DE: $05
    inc bc                                        ; $41DF: $03
    and $63                                       ; $41E0: $E6 $63
    dec bc                                        ; $41E2: $0B
    ld e, $BB                                     ; $41E3: $1E $BB
    call nc, $1200                                ; $41E5: $D4 $00 $12

jr_012_41E8:
    inc hl                                        ; $41E8: $23
    ld b, d                                       ; $41E9: $42
    ld [hl+], a                                   ; $41EA: $22
    inc b                                         ; $41EB: $04

jr_012_41EC:
    ld b, b                                       ; $41EC: $40
    add hl, bc                                    ; $41ED: $09
    nop                                           ; $41EE: $00
    ld [de], a                                    ; $41EF: $12
    add hl, bc                                    ; $41F0: $09
    ld b, d                                       ; $41F1: $42
    ld b, d                                       ; $41F2: $42
    inc d                                         ; $41F3: $14
    jr nz, @-$3F                                  ; $41F4: $20 $BF

    ld d, b                                       ; $41F6: $50
    ld e, e                                       ; $41F7: $5B
    ld [de], a                                    ; $41F8: $12
    and d                                         ; $41F9: $A2
    ld c, e                                       ; $41FA: $4B
    ld e, a                                       ; $41FB: $5F
    dec d                                         ; $41FC: $15
    jr nz, jr_012_41EC                            ; $41FD: $20 $ED

    ld c, a                                       ; $41FF: $4F
    stop                                          ; $4200: $10 $00
    inc de                                        ; $4202: $13
    add c                                         ; $4203: $81
    ld e, l                                       ; $4204: $5D
    ld b, l                                       ; $4205: $45
    jr nz, @-$35                                  ; $4206: $20 $C9

jr_012_4208:
    ld d, b                                       ; $4208: $50
    inc d                                         ; $4209: $14
    jr nz, jr_012_41CB                            ; $420A: $20 $BF

    ld d, b                                       ; $420C: $50
    ld e, e                                       ; $420D: $5B
    ld [de], a                                    ; $420E: $12
    and d                                         ; $420F: $A2
    ld c, e                                       ; $4210: $4B
    ld e, a                                       ; $4211: $5F

jr_012_4212:
    inc d                                         ; $4212: $14
    jr nz, jr_012_41DE                            ; $4213: $20 $C9

    ld d, b                                       ; $4215: $50
    ld b, b                                       ; $4216: $40
    jr nz, jr_012_422E                            ; $4217: $20 $15

    jr nz, jr_012_4208                            ; $4219: $20 $ED

    ld c, a                                       ; $421B: $4F
    db $10                                        ; $421C: $10
    jr nz, jr_012_41E8                            ; $421D: $20 $C9

    ld d, b                                       ; $421F: $50
    nop                                           ; $4220: $00
    nop                                           ; $4221: $00
    ld b, d                                       ; $4222: $42
    inc d                                         ; $4223: $14
    jr nz, jr_012_4212                            ; $4224: $20 $EC

    ld a, b                                       ; $4226: $78
    ld a, l                                       ; $4227: $7D

jr_012_4228:
    jp c, $01C1                                   ; $4228: $DA $C1 $01

    ld b, b                                       ; $422B: $40
    jr nz, jr_012_4243                            ; $422C: $20 $15

jr_012_422E:
    jr nz, jr_012_41E8                            ; $422E: $20 $B8

jr_012_4230:
    ld a, b                                       ; $4230: $78
    jr nc, jr_012_4253                            ; $4231: $30 $20

    db $EC                                        ; $4233: $EC
    ld a, b                                       ; $4234: $78
    ld bc, $5B00                                  ; $4235: $01 $00 $5B
    ld [de], a                                    ; $4238: $12
    sbc d                                         ; $4239: $9A
    ld c, h                                       ; $423A: $4C
    ld e, a                                       ; $423B: $5F
    ld sp, $7612                                  ; $423C: $31 $12 $76
    ld h, c                                       ; $423F: $61
    ld [hl+], a                                   ; $4240: $22
    adc $40                                       ; $4241: $CE $40

jr_012_4243:
    ld b, l                                       ; $4243: $45
    ld [de], a                                    ; $4244: $12
    pop bc                                        ; $4245: $C1
    ld [hl], b                                    ; $4246: $70

jr_012_4247:
    rlca                                          ; $4247: $07
    nop                                           ; $4248: $00
    ld l, e                                       ; $4249: $6B
    ld c, d                                       ; $424A: $4A

jr_012_424B:
    ld b, e                                       ; $424B: $43
    rrca                                          ; $424C: $0F
    ld bc, $A224                                  ; $424D: $01 $24 $A2
    dec b                                         ; $4250: $05
    inc b                                         ; $4251: $04
    ld [de], a                                    ; $4252: $12

jr_012_4253:
    ld e, e                                       ; $4253: $5B
    ld b, d                                       ; $4254: $42

jr_012_4255:
    add hl, bc                                    ; $4255: $09
    nop                                           ; $4256: $00
    ld [de], a                                    ; $4257: $12
    ld [hl], b                                    ; $4258: $70
    ld b, d                                       ; $4259: $42
    ld b, d                                       ; $425A: $42
    dec b                                         ; $425B: $05
    inc bc                                        ; $425C: $03
    and $63                                       ; $425D: $E6 $63
    inc e                                         ; $425F: $1C
    ld [hl+], a                                   ; $4260: $22
    ld l, h                                       ; $4261: $6C
    push de                                       ; $4262: $D5
    nop                                           ; $4263: $00
    ld [de], a                                    ; $4264: $12
    and b                                         ; $4265: $A0
    ld b, d                                       ; $4266: $42
    ld [hl+], a                                   ; $4267: $22
    inc b                                         ; $4268: $04
    ld b, b                                       ; $4269: $40
    add hl, bc                                    ; $426A: $09
    nop                                           ; $426B: $00
    ld [de], a                                    ; $426C: $12
    add [hl]                                      ; $426D: $86
    ld b, d                                       ; $426E: $42
    ld b, d                                       ; $426F: $42
    inc d                                         ; $4270: $14
    jr nz, jr_012_4228                            ; $4271: $20 $B5

    ld d, b                                       ; $4273: $50
    ld e, e                                       ; $4274: $5B
    ld [de], a                                    ; $4275: $12
    and d                                         ; $4276: $A2
    ld c, e                                       ; $4277: $4B
    ld e, a                                       ; $4278: $5F
    dec d                                         ; $4279: $15
    jr nz, @-$4B                                  ; $427A: $20 $B3

    ld c, a                                       ; $427C: $4F
    stop                                          ; $427D: $10 $00
    inc de                                        ; $427F: $13
    add c                                         ; $4280: $81
    ld e, l                                       ; $4281: $5D
    ld b, l                                       ; $4282: $45
    jr nz, jr_012_4230                            ; $4283: $20 $AB

jr_012_4285:
    ld d, b                                       ; $4285: $50
    inc d                                         ; $4286: $14
    jr nz, @-$49                                  ; $4287: $20 $B5

    ld d, b                                       ; $4289: $50
    ld e, e                                       ; $428A: $5B
    ld [de], a                                    ; $428B: $12
    and d                                         ; $428C: $A2
    ld c, e                                       ; $428D: $4B
    ld e, a                                       ; $428E: $5F
    inc d                                         ; $428F: $14
    jr nz, @-$53                                  ; $4290: $20 $AB

    ld d, b                                       ; $4292: $50
    ld b, b                                       ; $4293: $40
    jr nz, jr_012_42AB                            ; $4294: $20 $15

    jr nz, jr_012_424B                            ; $4296: $20 $B3

    ld c, a                                       ; $4298: $4F
    db $10                                        ; $4299: $10
    jr nz, jr_012_4247                            ; $429A: $20 $AB

    ld d, b                                       ; $429C: $50
    nop                                           ; $429D: $00
    nop                                           ; $429E: $00
    ld b, d                                       ; $429F: $42
    inc d                                         ; $42A0: $14
    jr nz, jr_012_4285                            ; $42A1: $20 $E2

    ld a, b                                       ; $42A3: $78
    ld a, l                                       ; $42A4: $7D
    jp c, $01C1                                   ; $42A5: $DA $C1 $01

    ld b, b                                       ; $42A8: $40
    jr nz, jr_012_42C0                            ; $42A9: $20 $15

jr_012_42AB:
    jr nz, jr_012_4255                            ; $42AB: $20 $A8

    ld a, b                                       ; $42AD: $78
    jr nc, jr_012_42D0                            ; $42AE: $30 $20

    ld [c], a                                     ; $42B0: $E2
    ld a, b                                       ; $42B1: $78
    ld bc, $5B00                                  ; $42B2: $01 $00 $5B
    ld [de], a                                    ; $42B5: $12
    sbc d                                         ; $42B6: $9A
    ld c, h                                       ; $42B7: $4C
    ld e, a                                       ; $42B8: $5F

jr_012_42B9:
    ld sp, $7612                                  ; $42B9: $31 $12 $76
    ld h, c                                       ; $42BC: $61
    ld [hl+], a                                   ; $42BD: $22
    adc $40                                       ; $42BE: $CE $40

jr_012_42C0:
    ld b, l                                       ; $42C0: $45

jr_012_42C1:
    ld [de], a                                    ; $42C1: $12
    pop bc                                        ; $42C2: $C1
    ld [hl], b                                    ; $42C3: $70
    rlca                                          ; $42C4: $07
    nop                                           ; $42C5: $00
    ld l, e                                       ; $42C6: $6B
    ld c, d                                       ; $42C7: $4A
    ld b, e                                       ; $42C8: $43
    rrca                                          ; $42C9: $0F
    ld bc, $A224                                  ; $42CA: $01 $24 $A2
    dec b                                         ; $42CD: $05

jr_012_42CE:
    inc b                                         ; $42CE: $04

jr_012_42CF:
    ld [de], a                                    ; $42CF: $12

jr_012_42D0:
    ret c                                         ; $42D0: $D8

    ld b, d                                       ; $42D1: $42
    add hl, bc                                    ; $42D2: $09
    nop                                           ; $42D3: $00
    ld [de], a                                    ; $42D4: $12
    db $ED                                        ; $42D5: $ED

jr_012_42D6:
    ld b, d                                       ; $42D6: $42
    ld b, d                                       ; $42D7: $42

jr_012_42D8:
    dec b                                         ; $42D8: $05
    inc bc                                        ; $42D9: $03
    and $63                                       ; $42DA: $E6 $63
    inc e                                         ; $42DC: $1C
    inc d                                         ; $42DD: $14
    inc a                                         ; $42DE: $3C
    db $D3                                        ; $42DF: $D3
    nop                                           ; $42E0: $00
    ld [de], a                                    ; $42E1: $12
    dec e                                         ; $42E2: $1D
    ld b, e                                       ; $42E3: $43
    ld [hl+], a                                   ; $42E4: $22
    inc b                                         ; $42E5: $04
    ld b, b                                       ; $42E6: $40
    add hl, bc                                    ; $42E7: $09
    nop                                           ; $42E8: $00
    ld [de], a                                    ; $42E9: $12
    inc bc                                        ; $42EA: $03
    ld b, e                                       ; $42EB: $43
    ld b, d                                       ; $42EC: $42
    inc d                                         ; $42ED: $14
    jr nz, jr_012_42B9                            ; $42EE: $20 $C9

    ld d, b                                       ; $42F0: $50
    ld e, e                                       ; $42F1: $5B

jr_012_42F2:
    ld [de], a                                    ; $42F2: $12
    and d                                         ; $42F3: $A2
    ld c, e                                       ; $42F4: $4B
    ld e, a                                       ; $42F5: $5F
    dec d                                         ; $42F6: $15
    jr nz, jr_012_42D6                            ; $42F7: $20 $DD

jr_012_42F9:
    ld c, a                                       ; $42F9: $4F
    stop                                          ; $42FA: $10 $00
    inc de                                        ; $42FC: $13
    add c                                         ; $42FD: $81
    ld e, l                                       ; $42FE: $5D
    ld b, l                                       ; $42FF: $45
    jr nz, jr_012_42C1                            ; $4300: $20 $BF

    ld d, b                                       ; $4302: $50
    inc d                                         ; $4303: $14
    jr nz, jr_012_42CF                            ; $4304: $20 $C9

    ld d, b                                       ; $4306: $50
    ld e, e                                       ; $4307: $5B
    ld [de], a                                    ; $4308: $12
    and d                                         ; $4309: $A2
    ld c, e                                       ; $430A: $4B
    ld e, a                                       ; $430B: $5F
    inc d                                         ; $430C: $14
    jr nz, jr_012_42CE                            ; $430D: $20 $BF

    ld d, b                                       ; $430F: $50
    ld b, b                                       ; $4310: $40
    jr nz, jr_012_4328                            ; $4311: $20 $15

    jr nz, jr_012_42F2                            ; $4313: $20 $DD

jr_012_4315:
    ld c, a                                       ; $4315: $4F

jr_012_4316:
    db $10                                        ; $4316: $10
    jr nz, jr_012_42D8                            ; $4317: $20 $BF

    ld d, b                                       ; $4319: $50
    nop                                           ; $431A: $00
    nop                                           ; $431B: $00
    ld b, d                                       ; $431C: $42
    inc d                                         ; $431D: $14
    jr nz, jr_012_4316                            ; $431E: $20 $F6

    ld a, b                                       ; $4320: $78
    ld a, l                                       ; $4321: $7D
    jp c, $01C1                                   ; $4322: $DA $C1 $01

    ld b, b                                       ; $4325: $40
    jr nz, jr_012_433D                            ; $4326: $20 $15

jr_012_4328:
    jr nz, jr_012_42F2                            ; $4328: $20 $C8

    ld a, b                                       ; $432A: $78
    jr nc, @+$22                                  ; $432B: $30 $20

    or $78                                        ; $432D: $F6 $78
    ld bc, $5B00                                  ; $432F: $01 $00 $5B
    ld [de], a                                    ; $4332: $12
    sbc d                                         ; $4333: $9A
    ld c, h                                       ; $4334: $4C
    ld e, a                                       ; $4335: $5F
    ld sp, $7612                                  ; $4336: $31 $12 $76
    ld h, c                                       ; $4339: $61
    ld [hl+], a                                   ; $433A: $22
    adc $40                                       ; $433B: $CE $40

jr_012_433D:
    ld b, l                                       ; $433D: $45
    ld [de], a                                    ; $433E: $12
    pop bc                                        ; $433F: $C1
    ld [hl], b                                    ; $4340: $70
    rlca                                          ; $4341: $07
    nop                                           ; $4342: $00
    ld l, e                                       ; $4343: $6B
    ld c, d                                       ; $4344: $4A
    add hl, bc                                    ; $4345: $09
    nop                                           ; $4346: $00
    ld [de], a                                    ; $4347: $12
    ld c, e                                       ; $4348: $4B
    ld b, e                                       ; $4349: $43
    ld b, d                                       ; $434A: $42
    inc d                                         ; $434B: $14
    jr nz, jr_012_42F9                            ; $434C: $20 $AB

    ld d, b                                       ; $434E: $50
    ld e, e                                       ; $434F: $5B
    ld [de], a                                    ; $4350: $12
    ld hl, sp+$4C                                 ; $4351: $F8 $4C
    ld e, a                                       ; $4353: $5F
    dec d                                         ; $4354: $15
    jr nz, @-$31                                  ; $4355: $20 $CD

    ld c, a                                       ; $4357: $4F
    stop                                          ; $4358: $10 $00
    inc de                                        ; $435A: $13
    add c                                         ; $435B: $81
    ld e, l                                       ; $435C: $5D
    ld b, l                                       ; $435D: $45
    jr nz, jr_012_4315                            ; $435E: $20 $B5

    ld d, b                                       ; $4360: $50
    ld e, e                                       ; $4361: $5B
    ld [de], a                                    ; $4362: $12
    ld c, [hl]                                    ; $4363: $4E
    ld c, l                                       ; $4364: $4D
    ld e, a                                       ; $4365: $5F
    ld h, h                                       ; $4366: $64

jr_012_4367:
    and c                                         ; $4367: $A1
    ld c, d                                       ; $4368: $4A
    ld sp, $7612                                  ; $4369: $31 $12 $76
    ld h, c                                       ; $436C: $61
    ld [hl+], a                                   ; $436D: $22
    adc $40                                       ; $436E: $CE $40
    ld b, l                                       ; $4370: $45
    ld [de], a                                    ; $4371: $12
    ld d, l                                       ; $4372: $55
    ld [hl], c                                    ; $4373: $71
    rlca                                          ; $4374: $07
    nop                                           ; $4375: $00
    ld l, e                                       ; $4376: $6B
    ld c, d                                       ; $4377: $4A
    add hl, bc                                    ; $4378: $09
    nop                                           ; $4379: $00
    jr nz, @-$49                                  ; $437A: $20 $B5

    ld d, b                                       ; $437C: $50

jr_012_437D:
    dec b                                         ; $437D: $05
    inc bc                                        ; $437E: $03
    ld l, e                                       ; $437F: $6B
    ld c, d                                       ; $4380: $4A
    ld c, $0B                                     ; $4381: $0E $0B
    add $D1                                       ; $4383: $C6 $D1
    ld d, c                                       ; $4385: $51
    ld [de], a                                    ; $4386: $12
    sub [hl]                                      ; $4387: $96
    ld b, e                                       ; $4388: $43
    ld [hl+], a                                   ; $4389: $22
    inc b                                         ; $438A: $04
    ld b, b                                       ; $438B: $40
    dec bc                                        ; $438C: $0B
    inc bc                                        ; $438D: $03
    ld sp, $9112                                  ; $438E: $31 $12 $91
    ld h, b                                       ; $4391: $60
    ld [hl+], a                                   ; $4392: $22
    adc $40                                       ; $4393: $CE $40
    ld b, d                                       ; $4395: $42
    inc d                                         ; $4396: $14
    jr nz, jr_012_4367                            ; $4397: $20 $CE

    ld l, a                                       ; $4399: $6F
    ld e, e                                       ; $439A: $5B
    ld [de], a                                    ; $439B: $12
    or h                                          ; $439C: $B4
    ld b, e                                       ; $439D: $43
    ld e, a                                       ; $439E: $5F
    dec d                                         ; $439F: $15
    jr nz, @-$70                                  ; $43A0: $20 $8E

    ld l, a                                       ; $43A2: $6F
    jr nz, jr_012_43C5                            ; $43A3: $20 $20

    adc $6F                                       ; $43A5: $CE $6F
    nop                                           ; $43A7: $00
    nop                                           ; $43A8: $00
    ld sp, $9112                                  ; $43A9: $31 $12 $91
    ld h, b                                       ; $43AC: $60
    ld [hl+], a                                   ; $43AD: $22
    adc $40                                       ; $43AE: $CE $40
    ld b, l                                       ; $43B0: $45
    ld [de], a                                    ; $43B1: $12
    ld e, [hl]                                    ; $43B2: $5E
    ld [hl], b                                    ; $43B3: $70
    sbc a                                         ; $43B4: $9F
    ld d, d                                       ; $43B5: $52
    ld c, a                                       ; $43B6: $4F
    ld b, c                                       ; $43B7: $41
    ld d, d                                       ; $43B8: $52
    ld hl, $FE21                                  ; $43B9: $21 $21 $FE
    db $FD                                        ; $43BC: $FD
    sbc d                                         ; $43BD: $9A
    ld d, l                                       ; $43BE: $55
    ld b, d                                       ; $43BF: $42
    rlca                                          ; $43C0: $07
    nop                                           ; $43C1: $00
    ld l, e                                       ; $43C2: $6B
    ld c, d                                       ; $43C3: $4A
    add hl, bc                                    ; $43C4: $09

jr_012_43C5:
    nop                                           ; $43C5: $00
    jr nz, jr_012_437D                            ; $43C6: $20 $B5

    ld d, b                                       ; $43C8: $50
    ld l, e                                       ; $43C9: $6B
    ld a, [hl+]                                   ; $43CA: $2A
    inc c                                         ; $43CB: $0C
    ldh a, [rOBP0]                                ; $43CC: $F0 $48
    ld [hl], b                                    ; $43CE: $70
    add d                                         ; $43CF: $82
    nop                                           ; $43D0: $00
    dec b                                         ; $43D1: $05
    inc bc                                        ; $43D2: $03
    ld l, e                                       ; $43D3: $6B
    ld c, d                                       ; $43D4: $4A
    ld [de], a                                    ; $43D5: $12
    ld e, $C2                                     ; $43D6: $1E $C2
    call nc, $1227                                ; $43D8: $D4 $27 $12

jr_012_43DB:
    ld [$2243], a                                 ; $43DB: $EA $43 $22
    inc b                                         ; $43DE: $04
    ld b, b                                       ; $43DF: $40
    dec bc                                        ; $43E0: $0B
    inc bc                                        ; $43E1: $03
    ld sp, $A212                                  ; $43E2: $31 $12 $A2
    ld h, b                                       ; $43E5: $60
    ld [hl+], a                                   ; $43E6: $22
    adc $40                                       ; $43E7: $CE $40
    ld b, d                                       ; $43E9: $42
    inc d                                         ; $43EA: $14
    db $10                                        ; $43EB: $10
    add sp, $42                                   ; $43EC: $E8 $42
    ld e, e                                       ; $43EE: $5B
    ld [de], a                                    ; $43EF: $12
    dec c                                         ; $43F0: $0D
    ld b, h                                       ; $43F1: $44
    ld e, a                                       ; $43F2: $5F
    dec d                                         ; $43F3: $15
    db $10                                        ; $43F4: $10
    xor b                                         ; $43F5: $A8
    ld b, d                                       ; $43F6: $42
    jr nz, jr_012_4409                            ; $43F7: $20 $10

    add sp, $42                                   ; $43F9: $E8 $42
    nop                                           ; $43FB: $00
    nop                                           ; $43FC: $00
    add e                                         ; $43FD: $83
    stop                                          ; $43FE: $10 $00
    ld [bc], a                                    ; $4400: $02
    nop                                           ; $4401: $00
    ld sp, $A212                                  ; $4402: $31 $12 $A2
    ld h, b                                       ; $4405: $60
    ld [hl+], a                                   ; $4406: $22
    adc $40                                       ; $4407: $CE $40

jr_012_4409:
    ld b, l                                       ; $4409: $45
    ld [de], a                                    ; $440A: $12
    ld bc, $9F71                                  ; $440B: $01 $71 $9F
    ld b, d                                       ; $440E: $42
    ld c, h                                       ; $440F: $4C
    ld b, l                                       ; $4410: $45
    ld b, l                                       ; $4411: $45
    ld b, l                                       ; $4412: $45
    ld b, c                                       ; $4413: $41
    ld d, d                                       ; $4414: $52
    ld b, a                                       ; $4415: $47
    ld c, b                                       ; $4416: $48
    ld hl, $FE21                                  ; $4417: $21 $21 $FE
    db $FD                                        ; $441A: $FD
    sbc d                                         ; $441B: $9A
    ld d, l                                       ; $441C: $55
    ld b, d                                       ; $441D: $42
    rlca                                          ; $441E: $07
    nop                                           ; $441F: $00
    ld l, e                                       ; $4420: $6B
    ld c, d                                       ; $4421: $4A
    add hl, bc                                    ; $4422: $09
    nop                                           ; $4423: $00
    jr nz, jr_012_43DB                            ; $4424: $20 $B5

    ld d, b                                       ; $4426: $50
    ld l, e                                       ; $4427: $6B
    ld a, [hl+]                                   ; $4428: $2A
    inc c                                         ; $4429: $0C
    ldh a, [rOBP0]                                ; $442A: $F0 $48
    ld [hl], b                                    ; $442C: $70
    add d                                         ; $442D: $82
    nop                                           ; $442E: $00
    dec b                                         ; $442F: $05
    inc bc                                        ; $4430: $03
    ld l, e                                       ; $4431: $6B
    ld c, d                                       ; $4432: $4A
    inc bc                                        ; $4433: $03

jr_012_4434:
    rrca                                          ; $4434: $0F
    ld e, e                                       ; $4435: $5B
    jp nc, $1227                                  ; $4436: $D2 $27 $12

    ld c, b                                       ; $4439: $48
    ld b, h                                       ; $443A: $44
    ld [hl+], a                                   ; $443B: $22
    inc b                                         ; $443C: $04
    ld b, b                                       ; $443D: $40
    dec bc                                        ; $443E: $0B
    inc bc                                        ; $443F: $03
    ld sp, $A212                                  ; $4440: $31 $12 $A2
    ld h, b                                       ; $4443: $60
    ld [hl+], a                                   ; $4444: $22
    adc $40                                       ; $4445: $CE $40
    ld b, d                                       ; $4447: $42
    inc d                                         ; $4448: $14
    db $10                                        ; $4449: $10
    ld b, $43                                     ; $444A: $06 $43
    ld e, e                                       ; $444C: $5B
    ld [de], a                                    ; $444D: $12
    ld h, [hl]                                    ; $444E: $66
    ld b, h                                       ; $444F: $44
    ld e, a                                       ; $4450: $5F
    dec d                                         ; $4451: $15
    db $10                                        ; $4452: $10
    ret c                                         ; $4453: $D8

    ld b, d                                       ; $4454: $42
    jr nz, jr_012_4467                            ; $4455: $20 $10

    ld l, $43                                     ; $4457: $2E $43
    nop                                           ; $4459: $00
    nop                                           ; $445A: $00
    ld sp, $A212                                  ; $445B: $31 $12 $A2
    ld h, b                                       ; $445E: $60
    ld [hl+], a                                   ; $445F: $22
    adc $40                                       ; $4460: $CE $40
    ld b, l                                       ; $4462: $45
    ld [de], a                                    ; $4463: $12
    ld bc, $9F71                                  ; $4464: $01 $71 $9F

jr_012_4467:
    ld c, l                                       ; $4467: $4D
    ld d, d                                       ; $4468: $52
    ld e, c                                       ; $4469: $59
    ld d, l                                       ; $446A: $55
    ld d, l                                       ; $446B: $55
    ld d, l                                       ; $446C: $55
    ld d, l                                       ; $446D: $55
    ld d, l                                       ; $446E: $55
    ld c, e                                       ; $446F: $4B
    ld hl, $FE21                                  ; $4470: $21 $21 $FE
    db $FD                                        ; $4473: $FD
    sbc d                                         ; $4474: $9A
    ld d, l                                       ; $4475: $55
    ld b, d                                       ; $4476: $42
    rlca                                          ; $4477: $07
    nop                                           ; $4478: $00
    ld l, e                                       ; $4479: $6B
    ld c, d                                       ; $447A: $4A
    add hl, bc                                    ; $447B: $09
    nop                                           ; $447C: $00
    jr nz, jr_012_4434                            ; $447D: $20 $B5

    ld d, b                                       ; $447F: $50
    ld l, e                                       ; $4480: $6B
    daa                                           ; $4481: $27
    inc c                                         ; $4482: $0C
    add b                                         ; $4483: $80
    ld b, [hl]                                    ; $4484: $46

jr_012_4485:
    nop                                           ; $4485: $00
    add b                                         ; $4486: $80
    nop                                           ; $4487: $00
    dec b                                         ; $4488: $05
    inc bc                                        ; $4489: $03

jr_012_448A:
    ld l, e                                       ; $448A: $6B
    ld c, d                                       ; $448B: $4A
    ld [hl+], a                                   ; $448C: $22
    inc d                                         ; $448D: $14
    ld b, d                                       ; $448E: $42
    db $D3                                        ; $448F: $D3
    nop                                           ; $4490: $00
    ld [de], a                                    ; $4491: $12
    rst $28                                       ; $4492: $EF
    ld b, h                                       ; $4493: $44
    ld [hl+], a                                   ; $4494: $22
    inc b                                         ; $4495: $04
    ld b, b                                       ; $4496: $40
    dec b                                         ; $4497: $05
    inc b                                         ; $4498: $04
    ld l, e                                       ; $4499: $6B
    ld c, d                                       ; $449A: $4A
    rla                                           ; $449B: $17
    ld e, $C7                                     ; $449C: $1E $C7
    call nc, $1275                                ; $449E: $D4 $75 $12
    add hl, sp                                    ; $44A1: $39
    ld b, l                                       ; $44A2: $45
    ld [hl+], a                                   ; $44A3: $22
    inc b                                         ; $44A4: $04
    ld b, b                                       ; $44A5: $40
    dec b                                         ; $44A6: $05
    dec b                                         ; $44A7: $05
    ld l, e                                       ; $44A8: $6B
    ld c, d                                       ; $44A9: $4A
    inc hl                                        ; $44AA: $23
    ld hl, $D54B                                  ; $44AB: $21 $4B $D5
    and c                                         ; $44AE: $A1
    ld [de], a                                    ; $44AF: $12
    ld c, h                                       ; $44B0: $4C
    ld b, l                                       ; $44B1: $45
    ld [hl+], a                                   ; $44B2: $22
    inc b                                         ; $44B3: $04
    ld b, b                                       ; $44B4: $40
    dec bc                                        ; $44B5: $0B
    inc bc                                        ; $44B6: $03
    ld a, l                                       ; $44B7: $7D
    jp c, $04C1                                   ; $44B8: $DA $C1 $04

    ld e, a                                       ; $44BB: $5F
    dec b                                         ; $44BC: $05
    nop                                           ; $44BD: $00
    ld l, e                                       ; $44BE: $6B
    ld c, d                                       ; $44BF: $4A
    jr nz, jr_012_44DD                            ; $44C0: $20 $1B

    ld e, b                                       ; $44C2: $58
    call nc, $1200                                ; $44C3: $D4 $00 $12
    rst $10                                       ; $44C6: $D7
    ld b, h                                       ; $44C7: $44
    ld [hl+], a                                   ; $44C8: $22
    dec b                                         ; $44C9: $05

jr_012_44CA:
    ld b, b                                       ; $44CA: $40

jr_012_44CB:
    ld a, l                                       ; $44CB: $7D
    adc c                                         ; $44CC: $89
    pop bc                                        ; $44CD: $C1
    inc bc                                        ; $44CE: $03
    ld sp, $C412                                  ; $44CF: $31 $12 $C4
    ld h, b                                       ; $44D2: $60
    ld [hl+], a                                   ; $44D3: $22
    adc $40                                       ; $44D4: $CE $40
    ld b, d                                       ; $44D6: $42
    inc d                                         ; $44D7: $14
    jr nz, jr_012_4485                            ; $44D8: $20 $AB

    ld d, b                                       ; $44DA: $50
    ld e, a                                       ; $44DB: $5F
    dec d                                         ; $44DC: $15

jr_012_44DD:
    jr nz, jr_012_448A                            ; $44DD: $20 $AB

    ld d, b                                       ; $44DF: $50

jr_012_44E0:
    jr nz, jr_012_4502                            ; $44E0: $20 $20

    db $D3                                        ; $44E2: $D3
    ld d, b                                       ; $44E3: $50
    jr nz, jr_012_4506                            ; $44E4: $20 $20

    db $DD                                        ; $44E6: $DD
    ld d, b                                       ; $44E7: $50
    jr nz, jr_012_450A                            ; $44E8: $20 $20

    xor e                                         ; $44EA: $AB
    ld d, b                                       ; $44EB: $50
    nop                                           ; $44EC: $00
    nop                                           ; $44ED: $00
    ld b, d                                       ; $44EE: $42
    inc d                                         ; $44EF: $14
    jr nz, jr_012_44CA                            ; $44F0: $20 $D8

    ld a, b                                       ; $44F2: $78
    ld l, e                                       ; $44F3: $6B
    daa                                           ; $44F4: $27
    inc c                                         ; $44F5: $0C
    add b                                         ; $44F6: $80
    ld b, [hl]                                    ; $44F7: $46
    nop                                           ; $44F8: $00
    add b                                         ; $44F9: $80
    nop                                           ; $44FA: $00
    inc d                                         ; $44FB: $14
    jr nz, jr_012_44E0                            ; $44FC: $20 $E2

    ld a, b                                       ; $44FE: $78
    ld l, e                                       ; $44FF: $6B
    ld a, [hl+]                                   ; $4500: $2A
    inc c                                         ; $4501: $0C

jr_012_4502:
    ldh a, [rOBP0]                                ; $4502: $F0 $48
    ld [hl], b                                    ; $4504: $70
    add d                                         ; $4505: $82

jr_012_4506:
    nop                                           ; $4506: $00
    ld e, e                                       ; $4507: $5B
    ld [de], a                                    ; $4508: $12
    ld d, a                                       ; $4509: $57

jr_012_450A:
    ld b, l                                       ; $450A: $45
    ld e, a                                       ; $450B: $5F
    dec bc                                        ; $450C: $0B
    inc b                                         ; $450D: $04
    dec bc                                        ; $450E: $0B
    dec b                                         ; $450F: $05
    dec d                                         ; $4510: $15
    jr nz, jr_012_44CB                            ; $4511: $20 $B8

    ld a, b                                       ; $4513: $78
    ld [$A820], sp                                ; $4514: $08 $20 $A8
    ld a, b                                       ; $4517: $78
    inc h                                         ; $4518: $24
    jr nz, @-$1C                                  ; $4519: $20 $E2

    ld a, b                                       ; $451B: $78
    jr nz, jr_012_451E                            ; $451C: $20 $00

jr_012_451E:
    ld d, [hl]                                    ; $451E: $56
    ld bc, $2015                                  ; $451F: $01 $15 $20
    cp b                                          ; $4522: $B8
    ld a, b                                       ; $4523: $78
    ld [$A820], sp                                ; $4524: $08 $20 $A8
    ld a, b                                       ; $4527: $78
    ld [$E220], sp                                ; $4528: $08 $20 $E2
    ld a, b                                       ; $452B: $78
    nop                                           ; $452C: $00
    nop                                           ; $452D: $00
    ld sp, $C412                                  ; $452E: $31 $12 $C4
    ld h, b                                       ; $4531: $60
    ld [hl+], a                                   ; $4532: $22
    adc $40                                       ; $4533: $CE $40
    ld b, l                                       ; $4535: $45
    ld [de], a                                    ; $4536: $12
    pop bc                                        ; $4537: $C1
    ld [hl], b                                    ; $4538: $70

jr_012_4539:
    dec d                                         ; $4539: $15
    jr nz, jr_012_45A4                            ; $453A: $20 $68

    ld [hl], h                                    ; $453C: $74
    jr nz, jr_012_455F                            ; $453D: $20 $20

    jr c, jr_012_45B5                             ; $453F: $38 $74

    db $10                                        ; $4541: $10
    jr nz, jr_012_45AC                            ; $4542: $20 $68

    ld [hl], h                                    ; $4544: $74
    jr jr_012_4567                                ; $4545: $18 $20

    xor d                                         ; $4547: $AA
    ld [hl], h                                    ; $4548: $74
    nop                                           ; $4549: $00
    nop                                           ; $454A: $00
    ld b, d                                       ; $454B: $42
    dec d                                         ; $454C: $15
    db $10                                        ; $454D: $10
    and a                                         ; $454E: $A7
    ld b, [hl]                                    ; $454F: $46
    jr z, jr_012_4562                             ; $4550: $28 $10

    rrca                                          ; $4552: $0F
    ld b, a                                       ; $4553: $47
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    ld b, d                                       ; $4556: $42
    sbc a                                         ; $4557: $9F
    ld b, a                                       ; $4558: $47
    ld b, l                                       ; $4559: $45
    ld d, h                                       ; $455A: $54
    jr nz, jr_012_45A5                            ; $455B: $20 $48

    ld c, c                                       ; $455D: $49
    ld c, l                                       ; $455E: $4D

jr_012_455F:
    ld hl, $2121                                  ; $455F: $21 $21 $21

jr_012_4562:
    cp $FD                                        ; $4562: $FE $FD
    sbc d                                         ; $4564: $9A
    ld e, b                                       ; $4565: $58
    ld [bc], a                                    ; $4566: $02

Call_012_4567:
jr_012_4567:
    ld b, d                                       ; $4567: $42
    rlca                                          ; $4568: $07
    nop                                           ; $4569: $00
    ld l, e                                       ; $456A: $6B
    ld c, d                                       ; $456B: $4A
    add hl, bc                                    ; $456C: $09
    nop                                           ; $456D: $00
    jr nz, jr_012_4539                            ; $456E: $20 $C9

    ld d, b                                       ; $4570: $50
    ld l, e                                       ; $4571: $6B
    ld a, [hl+]                                   ; $4572: $2A
    inc c                                         ; $4573: $0C
    ldh a, [rOBP0]                                ; $4574: $F0 $48
    ld [hl], b                                    ; $4576: $70
    add d                                         ; $4577: $82
    nop                                           ; $4578: $00
    dec b                                         ; $4579: $05
    inc bc                                        ; $457A: $03
    ld l, e                                       ; $457B: $6B
    ld c, d                                       ; $457C: $4A
    inc hl                                        ; $457D: $23
    inc d                                         ; $457E: $14
    ld b, e                                       ; $457F: $43
    db $D3                                        ; $4580: $D3
    daa                                           ; $4581: $27
    ld [de], a                                    ; $4582: $12
    sub d                                         ; $4583: $92
    ld b, l                                       ; $4584: $45
    ld [hl+], a                                   ; $4585: $22
    inc b                                         ; $4586: $04
    ld b, b                                       ; $4587: $40
    dec bc                                        ; $4588: $0B
    inc bc                                        ; $4589: $03
    ld sp, $A212                                  ; $458A: $31 $12 $A2
    ld h, b                                       ; $458D: $60
    ld [hl+], a                                   ; $458E: $22
    adc $40                                       ; $458F: $CE $40
    ld b, d                                       ; $4591: $42
    inc d                                         ; $4592: $14
    db $10                                        ; $4593: $10
    db $FC                                        ; $4594: $FC
    ld b, d                                       ; $4595: $42
    ld e, e                                       ; $4596: $5B
    ld [de], a                                    ; $4597: $12
    or b                                          ; $4598: $B0
    ld b, l                                       ; $4599: $45
    ld e, a                                       ; $459A: $5F
    dec d                                         ; $459B: $15
    db $10                                        ; $459C: $10
    ret z                                         ; $459D: $C8

    ld b, d                                       ; $459E: $42
    jr nz, jr_012_45B1                            ; $459F: $20 $10

    db $FC                                        ; $45A1: $FC
    ld b, d                                       ; $45A2: $42
    nop                                           ; $45A3: $00

jr_012_45A4:
    nop                                           ; $45A4: $00

jr_012_45A5:
    ld sp, $A212                                  ; $45A5: $31 $12 $A2
    ld h, b                                       ; $45A8: $60
    ld [hl+], a                                   ; $45A9: $22
    adc $40                                       ; $45AA: $CE $40

jr_012_45AC:
    ld b, l                                       ; $45AC: $45
    ld [de], a                                    ; $45AD: $12
    ld bc, $9F71                                  ; $45AE: $01 $71 $9F

jr_012_45B1:
    ld d, a                                       ; $45B1: $57
    ld d, a                                       ; $45B2: $57
    ld c, a                                       ; $45B3: $4F
    ld c, a                                       ; $45B4: $4F

jr_012_45B5:
    ld b, c                                       ; $45B5: $41
    ld b, c                                       ; $45B6: $41
    ld d, d                                       ; $45B7: $52
    ld b, a                                       ; $45B8: $47
    ld hl, $2121                                  ; $45B9: $21 $21 $21
    cp $FD                                        ; $45BC: $FE $FD
    sbc d                                         ; $45BE: $9A
    ld d, l                                       ; $45BF: $55
    ld b, d                                       ; $45C0: $42
    rlca                                          ; $45C1: $07
    nop                                           ; $45C2: $00
    ld l, e                                       ; $45C3: $6B
    ld c, d                                       ; $45C4: $4A
    add hl, bc                                    ; $45C5: $09
    nop                                           ; $45C6: $00
    jr nz, @-$21                                  ; $45C7: $20 $DD

    ld d, b                                       ; $45C9: $50
    ld l, e                                       ; $45CA: $6B
    ld a, [hl+]                                   ; $45CB: $2A
    inc c                                         ; $45CC: $0C
    ldh a, [rOBP0]                                ; $45CD: $F0 $48
    ld [hl], b                                    ; $45CF: $70
    add d                                         ; $45D0: $82
    nop                                           ; $45D1: $00
    dec b                                         ; $45D2: $05
    inc bc                                        ; $45D3: $03
    ld l, e                                       ; $45D4: $6B
    ld c, d                                       ; $45D5: $4A
    inc hl                                        ; $45D6: $23
    db $10                                        ; $45D7: $10
    and e                                         ; $45D8: $A3
    jp nc, $1227                                  ; $45D9: $D2 $27 $12

    ldh a, [rLYC]                                 ; $45DC: $F0 $45
    ld [hl+], a                                   ; $45DE: $22
    dec b                                         ; $45DF: $05
    ld b, b                                       ; $45E0: $40
    ld e, e                                       ; $45E1: $5B
    ld [de], a                                    ; $45E2: $12
    dec b                                         ; $45E3: $05
    ld b, [hl]                                    ; $45E4: $46
    ld e, a                                       ; $45E5: $5F
    dec bc                                        ; $45E6: $0B
    inc bc                                        ; $45E7: $03
    ld sp, $A212                                  ; $45E8: $31 $12 $A2
    ld h, b                                       ; $45EB: $60
    ld [hl+], a                                   ; $45EC: $22
    adc $40                                       ; $45ED: $CE $40
    ld b, d                                       ; $45EF: $42
    dec d                                         ; $45F0: $15
    db $10                                        ; $45F1: $10
    xor b                                         ; $45F2: $A8
    ld b, d                                       ; $45F3: $42
    jr z, jr_012_4606                             ; $45F4: $28 $10

    db $10                                        ; $45F6: $10
    ld b, e                                       ; $45F7: $43
    nop                                           ; $45F8: $00
    nop                                           ; $45F9: $00
    ld sp, $A212                                  ; $45FA: $31 $12 $A2
    ld h, b                                       ; $45FD: $60
    ld [hl+], a                                   ; $45FE: $22
    adc $40                                       ; $45FF: $CE $40
    ld b, l                                       ; $4601: $45
    ld [de], a                                    ; $4602: $12
    ld bc, $9F71                                  ; $4603: $01 $71 $9F

jr_012_4606:
    ld d, h                                       ; $4606: $54
    ld c, a                                       ; $4607: $4F
    ld b, c                                       ; $4608: $41
    ld d, e                                       ; $4609: $53
    ld d, h                                       ; $460A: $54
    ld hl, $FE21                                  ; $460B: $21 $21 $FE
    db $FD                                        ; $460E: $FD
    sbc d                                         ; $460F: $9A
    ld d, l                                       ; $4610: $55
    ld b, d                                       ; $4611: $42
    sbc e                                         ; $4612: $9B
    add hl, bc                                    ; $4613: $09
    ld b, b                                       ; $4614: $40
    sbc a                                         ; $4615: $9F
    ld d, e                                       ; $4616: $53
    ld l, a                                       ; $4617: $6F
    ld [hl], d                                    ; $4618: $72
    ld [hl], d                                    ; $4619: $72
    ld a, c                                       ; $461A: $79
    ld l, $20                                     ; $461B: $2E $20
    ld d, a                                       ; $461D: $57
    ld h, l                                       ; $461E: $65
    rst $38                                       ; $461F: $FF
    ld [hl], e                                    ; $4620: $73
    ld [hl], h                                    ; $4621: $74
    ld h, c                                       ; $4622: $61
    ld [hl], d                                    ; $4623: $72
    ld [hl], h                                    ; $4624: $74
    ld h, l                                       ; $4625: $65
    ld h, h                                       ; $4626: $64
    jr nz, jr_012_46A0                            ; $4627: $20 $77

    ld l, c                                       ; $4629: $69
    ld [hl], h                                    ; $462A: $74
    ld l, b                                       ; $462B: $68
    ld l, a                                       ; $462C: $6F
    ld [hl], l                                    ; $462D: $75
    ld [hl], h                                    ; $462E: $74
    cp $79                                        ; $462F: $FE $79
    ld l, a                                       ; $4631: $6F
    ld [hl], l                                    ; $4632: $75
    inc l                                         ; $4633: $2C
    jr nz, jr_012_468A                            ; $4634: $20 $54

    ld l, a                                       ; $4636: $6F
    ld l, [hl]                                    ; $4637: $6E
    ld a, c                                       ; $4638: $79
    ld l, $FE                                     ; $4639: $2E $FE
    ld c, a                                       ; $463B: $4F
    ld l, [hl]                                    ; $463C: $6E
    ld h, e                                       ; $463D: $63
    ld h, l                                       ; $463E: $65
    jr nz, jr_012_46B5                            ; $463F: $20 $74

    ld l, b                                       ; $4641: $68
    ld h, l                                       ; $4642: $65
    rst $38                                       ; $4643: $FF
    ld [hl], b                                    ; $4644: $70
    ld [hl], d                                    ; $4645: $72
    ld h, l                                       ; $4646: $65
    ld [hl], b                                    ; $4647: $70
    ld h, c                                       ; $4648: $61
    ld [hl], d                                    ; $4649: $72
    ld h, c                                       ; $464A: $61
    ld [hl], h                                    ; $464B: $74
    ld l, c                                       ; $464C: $69
    ld l, a                                       ; $464D: $6F
    ld l, [hl]                                    ; $464E: $6E
    ld [hl], e                                    ; $464F: $73
    cp $77                                        ; $4650: $FE $77
    ld h, l                                       ; $4652: $65
    ld [hl], d                                    ; $4653: $72
    ld h, l                                       ; $4654: $65
    jr nz, jr_012_46C4                            ; $4655: $20 $6D

    ld h, c                                       ; $4657: $61
    ld h, h                                       ; $4658: $64
    ld h, l                                       ; $4659: $65
    jr nz, @+$63                                  ; $465A: $20 $61

    ld l, [hl]                                    ; $465C: $6E
    ld h, h                                       ; $465D: $64
    rst $38                                       ; $465E: $FF
    ld [hl], h                                    ; $465F: $74
    ld l, b                                       ; $4660: $68
    ld h, l                                       ; $4661: $65
    jr nz, @+$79                                  ; $4662: $20 $77

    ld l, b                                       ; $4664: $68
    ld l, a                                       ; $4665: $6F
    ld l, h                                       ; $4666: $6C
    ld h, l                                       ; $4667: $65
    jr nz, jr_012_46DE                            ; $4668: $20 $74

    ld l, a                                       ; $466A: $6F
    ld [hl], a                                    ; $466B: $77
    ld l, [hl]                                    ; $466C: $6E
    cp $67                                        ; $466D: $FE $67
    ld h, c                                       ; $466F: $61
    ld [hl], h                                    ; $4670: $74
    ld l, b                                       ; $4671: $68
    ld h, l                                       ; $4672: $65
    ld [hl], d                                    ; $4673: $72
    ld h, l                                       ; $4674: $65
    ld h, h                                       ; $4675: $64
    inc l                                         ; $4676: $2C
    rst $38                                       ; $4677: $FF
    ld [hl], a                                    ; $4678: $77
    ld h, l                                       ; $4679: $65
    jr nz, jr_012_46E6                            ; $467A: $20 $6A

    ld [hl], l                                    ; $467C: $75
    ld [hl], e                                    ; $467D: $73
    ld [hl], h                                    ; $467E: $74
    cp $63                                        ; $467F: $FE $63
    ld l, a                                       ; $4681: $6F
    ld [hl], l                                    ; $4682: $75
    ld l, h                                       ; $4683: $6C
    ld h, h                                       ; $4684: $64
    ld l, [hl]                                    ; $4685: $6E
    daa                                           ; $4686: $27
    ld [hl], h                                    ; $4687: $74
    jr nz, jr_012_4701                            ; $4688: $20 $77

jr_012_468A:
    ld h, c                                       ; $468A: $61
    ld l, c                                       ; $468B: $69
    ld [hl], h                                    ; $468C: $74
    ld hl, $41FE                                  ; $468D: $21 $FE $41
    ld l, [hl]                                    ; $4690: $6E
    ld a, c                                       ; $4691: $79
    ld [hl], a                                    ; $4692: $77
    ld h, c                                       ; $4693: $61
    ld a, c                                       ; $4694: $79
    inc l                                         ; $4695: $2C
    jr nz, jr_012_470C                            ; $4696: $20 $74

    ld h, c                                       ; $4698: $61
    ld l, e                                       ; $4699: $6B
    ld h, l                                       ; $469A: $65
    jr nz, @+$63                                  ; $469B: $20 $61

    rst $38                                       ; $469D: $FF
    ld l, h                                       ; $469E: $6C
    ld l, a                                       ; $469F: $6F

jr_012_46A0:
    ld l, a                                       ; $46A0: $6F
    ld l, e                                       ; $46A1: $6B
    jr nz, jr_012_4705                            ; $46A2: $20 $61

    ld [hl], d                                    ; $46A4: $72
    ld l, a                                       ; $46A5: $6F
    ld [hl], l                                    ; $46A6: $75
    ld l, [hl]                                    ; $46A7: $6E
    ld h, h                                       ; $46A8: $64
    jr nz, jr_012_471F                            ; $46A9: $20 $74

    ld l, b                                       ; $46AB: $68
    ld h, l                                       ; $46AC: $65
    cp $74                                        ; $46AD: $FE $74
    ld l, a                                       ; $46AF: $6F
    ld [hl], a                                    ; $46B0: $77
    ld l, [hl]                                    ; $46B1: $6E
    ld l, $20                                     ; $46B2: $2E $20
    ld d, a                                       ; $46B4: $57

jr_012_46B5:
    ld l, b                                       ; $46B5: $68
    ld h, l                                       ; $46B6: $65
    ld l, [hl]                                    ; $46B7: $6E
    rst $38                                       ; $46B8: $FF
    ld a, c                                       ; $46B9: $79
    ld l, a                                       ; $46BA: $6F
    ld [hl], l                                    ; $46BB: $75
    jr nz, jr_012_471F                            ; $46BC: $20 $61

    ld [hl], d                                    ; $46BE: $72
    ld h, l                                       ; $46BF: $65
    jr nz, @+$74                                  ; $46C0: $20 $72

    ld h, l                                       ; $46C2: $65
    ld h, c                                       ; $46C3: $61

jr_012_46C4:
    ld h, h                                       ; $46C4: $64
    ld a, c                                       ; $46C5: $79
    inc l                                         ; $46C6: $2C
    cp $77                                        ; $46C7: $FE $77
    ld h, l                                       ; $46C9: $65
    jr nz, @+$6A                                  ; $46CA: $20 $68

    ld h, c                                       ; $46CC: $61
    halt                                          ; $46CD: $76
    ld h, l                                       ; $46CE: $65
    jr nz, jr_012_4732                            ; $46CF: $20 $61

    rst $38                                       ; $46D1: $FF
    ld [hl], e                                    ; $46D2: $73
    ld [hl], l                                    ; $46D3: $75
    ld [hl], d                                    ; $46D4: $72
    ld [hl], b                                    ; $46D5: $70
    ld [hl], d                                    ; $46D6: $72
    ld l, c                                       ; $46D7: $69
    ld [hl], e                                    ; $46D8: $73
    ld h, l                                       ; $46D9: $65
    jr nz, jr_012_4742                            ; $46DA: $20 $66

    ld l, a                                       ; $46DC: $6F
    ld [hl], d                                    ; $46DD: $72

jr_012_46DE:
    cp $79                                        ; $46DE: $FE $79
    ld l, a                                       ; $46E0: $6F
    ld [hl], l                                    ; $46E1: $75
    ld l, $FE                                     ; $46E2: $2E $FE
    db $FD                                        ; $46E4: $FD
    sbc e                                         ; $46E5: $9B

jr_012_46E6:
    ld a, b                                       ; $46E6: $78
    ld [hl], b                                    ; $46E7: $70
    sbc a                                         ; $46E8: $9F
    jr nz, jr_012_473B                            ; $46E9: $20 $50

    ld h, c                                       ; $46EB: $61
    ld [hl], d                                    ; $46EC: $72
    ld [hl], h                                    ; $46ED: $74
    ld a, c                                       ; $46EE: $79
    jr nz, jr_012_475E                            ; $46EF: $20 $6D

    ld l, a                                       ; $46F1: $6F
    ld [hl], d                                    ; $46F2: $72
    ld h, l                                       ; $46F3: $65
    rst $38                                       ; $46F4: $FF
    jr nz, @+$49                                  ; $46F5: $20 $47

    ld l, a                                       ; $46F7: $6F
    jr nz, jr_012_4771                            ; $46F8: $20 $77

    ld l, c                                       ; $46FA: $69
    ld [hl], h                                    ; $46FB: $74
    ld l, b                                       ; $46FC: $68
    jr nz, @+$47                                  ; $46FD: $20 $45

    ld l, h                                       ; $46FF: $6C
    ld h, h                                       ; $4700: $64

jr_012_4701:
    ld h, l                                       ; $4701: $65
    ld [hl], d                                    ; $4702: $72
    db $FD                                        ; $4703: $FD
    sbc h                                         ; $4704: $9C

jr_012_4705:
    ld [bc], a                                    ; $4705: $02
    ld [de], a                                    ; $4706: $12
    inc c                                         ; $4707: $0C
    ld b, a                                       ; $4708: $47
    ld [de], a                                    ; $4709: $12
    ld b, h                                       ; $470A: $44
    ld b, a                                       ; $470B: $47

jr_012_470C:
    sbc c                                         ; $470C: $99
    sbc e                                         ; $470D: $9B
    ld a, b                                       ; $470E: $78
    ld [hl], b                                    ; $470F: $70
    sbc a                                         ; $4710: $9F
    ld d, h                                       ; $4711: $54
    ld l, b                                       ; $4712: $68
    ld h, c                                       ; $4713: $61
    ld l, [hl]                                    ; $4714: $6E
    ld l, e                                       ; $4715: $6B
    ld [hl], e                                    ; $4716: $73
    inc l                                         ; $4717: $2C
    jr nz, jr_012_477C                            ; $4718: $20 $62

    ld [hl], l                                    ; $471A: $75
    ld [hl], h                                    ; $471B: $74
    jr nz, jr_012_4767                            ; $471C: $20 $49

    daa                                           ; $471E: $27

jr_012_471F:
    ld l, l                                       ; $471F: $6D
    rst $38                                       ; $4720: $FF
    ld [hl], e                                    ; $4721: $73
    ld [hl], h                                    ; $4722: $74
    ld l, c                                       ; $4723: $69
    ld l, h                                       ; $4724: $6C
    ld l, h                                       ; $4725: $6C
    jr nz, jr_012_478B                            ; $4726: $20 $63

    ld l, b                                       ; $4728: $68
    ld h, l                                       ; $4729: $65
    ld h, e                                       ; $472A: $63
    ld l, e                                       ; $472B: $6B
    ld l, c                                       ; $472C: $69
    ld l, [hl]                                    ; $472D: $6E
    ld h, a                                       ; $472E: $67
    cp $74                                        ; $472F: $FE $74
    ld l, b                                       ; $4731: $68

jr_012_4732:
    ld h, l                                       ; $4732: $65
    jr nz, @+$72                                  ; $4733: $20 $70

    ld h, c                                       ; $4735: $61
    ld [hl], d                                    ; $4736: $72
    ld [hl], h                                    ; $4737: $74
    ld a, c                                       ; $4738: $79
    jr nz, jr_012_47AA                            ; $4739: $20 $6F

jr_012_473B:
    ld [hl], l                                    ; $473B: $75
    ld [hl], h                                    ; $473C: $74
    ld l, $FE                                     ; $473D: $2E $FE
    db $FD                                        ; $473F: $FD
    sbc d                                         ; $4740: $9A
    ld e, b                                       ; $4741: $58

jr_012_4742:
    ld bc, $9942                                  ; $4742: $01 $42 $99
    sbc e                                         ; $4745: $9B
    ld a, b                                       ; $4746: $78
    ld [hl], b                                    ; $4747: $70
    sbc a                                         ; $4748: $9F
    ld b, c                                       ; $4749: $41
    ld l, h                                       ; $474A: $6C
    ld [hl], d                                    ; $474B: $72
    ld l, c                                       ; $474C: $69
    ld h, a                                       ; $474D: $67
    ld l, b                                       ; $474E: $68
    ld [hl], h                                    ; $474F: $74
    inc l                                         ; $4750: $2C
    jr nz, jr_012_47BF                            ; $4751: $20 $6C

    ld h, l                                       ; $4753: $65
    ld [hl], h                                    ; $4754: $74
    daa                                           ; $4755: $27
    ld [hl], e                                    ; $4756: $73
    rst $38                                       ; $4757: $FF
    ld [hl], e                                    ; $4758: $73
    ld h, l                                       ; $4759: $65
    ld h, l                                       ; $475A: $65
    jr nz, jr_012_47D1                            ; $475B: $20 $74

    ld l, b                                       ; $475D: $68

jr_012_475E:
    ld h, l                                       ; $475E: $65
    cp $73                                        ; $475F: $FE $73
    ld [hl], l                                    ; $4761: $75
    ld [hl], d                                    ; $4762: $72
    ld [hl], b                                    ; $4763: $70
    ld [hl], d                                    ; $4764: $72
    ld l, c                                       ; $4765: $69
    ld [hl], e                                    ; $4766: $73

jr_012_4767:
    ld h, l                                       ; $4767: $65
    ld hl, $FDFE                                  ; $4768: $21 $FE $FD
    sbc e                                         ; $476B: $9B
    add hl, bc                                    ; $476C: $09
    ld b, b                                       ; $476D: $40
    sbc a                                         ; $476E: $9F
    ld c, a                                       ; $476F: $4F
    ld l, e                                       ; $4770: $6B

jr_012_4771:
    ld h, c                                       ; $4771: $61
    ld a, c                                       ; $4772: $79
    inc l                                         ; $4773: $2C
    jr nz, jr_012_47DC                            ; $4774: $20 $66

    ld l, a                                       ; $4776: $6F
    ld l, h                                       ; $4777: $6C
    ld l, h                                       ; $4778: $6C
    ld l, a                                       ; $4779: $6F
    ld [hl], a                                    ; $477A: $77
    rst $38                                       ; $477B: $FF

jr_012_477C:
    ld l, l                                       ; $477C: $6D
    ld h, l                                       ; $477D: $65
    ld l, $FE                                     ; $477E: $2E $FE
    db $FD                                        ; $4780: $FD
    sbc d                                         ; $4781: $9A
    ld e, b                                       ; $4782: $58
    ld bc, $0640                                  ; $4783: $01 $40 $06
    ld e, b                                       ; $4786: $58
    ld b, e                                       ; $4787: $43
    ld b, d                                       ; $4788: $42
    sbc e                                         ; $4789: $9B
    adc b                                         ; $478A: $88

jr_012_478B:
    ld c, h                                       ; $478B: $4C
    sbc a                                         ; $478C: $9F
    ld c, b                                       ; $478D: $48
    ld h, l                                       ; $478E: $65
    ld a, c                                       ; $478F: $79
    ld l, $2E                                     ; $4790: $2E $2E
    ld l, $20                                     ; $4792: $2E $20
    ld l, b                                       ; $4794: $68
    ld h, l                                       ; $4795: $65
    ld a, c                                       ; $4796: $79
    jr nz, jr_012_4812                            ; $4797: $20 $79

    ld l, a                                       ; $4799: $6F
    ld [hl], l                                    ; $479A: $75
    rst $38                                       ; $479B: $FF
    ld [hl], a                                    ; $479C: $77
    ld l, c                                       ; $479D: $69
    ld [hl], h                                    ; $479E: $74
    ld l, b                                       ; $479F: $68
    jr nz, @+$76                                  ; $47A0: $20 $74

    ld l, b                                       ; $47A2: $68
    ld h, l                                       ; $47A3: $65
    jr nz, jr_012_47ED                            ; $47A4: $20 $47

    ld l, h                                       ; $47A6: $6C
    ld a, c                                       ; $47A7: $79
    ld [hl], b                                    ; $47A8: $70
    ld l, b                                       ; $47A9: $68

jr_012_47AA:
    ld hl, $57FE                                  ; $47AA: $21 $FE $57
    ld h, c                                       ; $47AD: $61
    ld l, [hl]                                    ; $47AE: $6E
    ld l, [hl]                                    ; $47AF: $6E
    ld h, c                                       ; $47B0: $61
    jr nz, jr_012_4817                            ; $47B1: $20 $64

    ld h, c                                       ; $47B3: $61
    ld l, [hl]                                    ; $47B4: $6E
    ld h, e                                       ; $47B5: $63
    ld h, l                                       ; $47B6: $65
    ccf                                           ; $47B7: $3F
    cp $FD                                        ; $47B8: $FE $FD
    sbc e                                         ; $47BA: $9B
    ld a, b                                       ; $47BB: $78
    ld [hl], b                                    ; $47BC: $70
    sbc a                                         ; $47BD: $9F
    ld d, l                                       ; $47BE: $55

jr_012_47BF:
    ld l, l                                       ; $47BF: $6D
    ld l, l                                       ; $47C0: $6D
    ld l, l                                       ; $47C1: $6D
    ld l, l                                       ; $47C2: $6D
    ld l, $2E                                     ; $47C3: $2E $2E
    ld l, $2E                                     ; $47C5: $2E $2E
    cp $FD                                        ; $47C7: $FE $FD
    sbc c                                         ; $47C9: $99
    sbc a                                         ; $47CA: $9F
    jr nz, @+$4B                                  ; $47CB: $20 $49

    jr nz, jr_012_4836                            ; $47CD: $20 $67

    ld [hl], l                                    ; $47CF: $75
    ld h, l                                       ; $47D0: $65

jr_012_47D1:
    ld [hl], e                                    ; $47D1: $73
    ld [hl], e                                    ; $47D2: $73
    jr nz, jr_012_4848                            ; $47D3: $20 $73

    ld l, a                                       ; $47D5: $6F
    rst $38                                       ; $47D6: $FF
    jr nz, jr_012_4827                            ; $47D7: $20 $4E

    ld l, a                                       ; $47D9: $6F
    jr nz, jr_012_4850                            ; $47DA: $20 $74

jr_012_47DC:
    ld l, b                                       ; $47DC: $68
    ld h, c                                       ; $47DD: $61
    ld l, [hl]                                    ; $47DE: $6E
    ld l, e                                       ; $47DF: $6B
    ld [hl], e                                    ; $47E0: $73
    db $FD                                        ; $47E1: $FD
    sbc h                                         ; $47E2: $9C
    ld [bc], a                                    ; $47E3: $02
    ld [de], a                                    ; $47E4: $12
    ld [$1247], a                                 ; $47E5: $EA $47 $12
    ld l, e                                       ; $47E8: $6B
    ld c, b                                       ; $47E9: $48
    sbc c                                         ; $47EA: $99
    sbc e                                         ; $47EB: $9B
    ld a, b                                       ; $47EC: $78

jr_012_47ED:
    ld [hl], b                                    ; $47ED: $70
    sbc a                                         ; $47EE: $9F
    ld c, c                                       ; $47EF: $49
    jr nz, jr_012_4859                            ; $47F0: $20 $67

    ld [hl], l                                    ; $47F2: $75
    ld h, l                                       ; $47F3: $65
    ld [hl], e                                    ; $47F4: $73
    ld [hl], e                                    ; $47F5: $73
    jr nz, jr_012_486B                            ; $47F6: $20 $73

    ld l, a                                       ; $47F8: $6F
    ld l, $2E                                     ; $47F9: $2E $2E
    ld l, $FE                                     ; $47FB: $2E $FE
    db $FD                                        ; $47FD: $FD
    sbc e                                         ; $47FE: $9B
    adc b                                         ; $47FF: $88
    ld c, h                                       ; $4800: $4C
    sbc a                                         ; $4801: $9F
    ld d, a                                       ; $4802: $57
    ld h, l                                       ; $4803: $65
    ld l, h                                       ; $4804: $6C
    ld l, h                                       ; $4805: $6C
    jr nz, jr_012_4874                            ; $4806: $20 $6C

    ld h, l                                       ; $4808: $65
    ld [hl], h                                    ; $4809: $74
    daa                                           ; $480A: $27
    ld [hl], e                                    ; $480B: $73
    jr nz, jr_012_4881                            ; $480C: $20 $73

    ld h, l                                       ; $480E: $65
    ld h, l                                       ; $480F: $65
    rst $38                                       ; $4810: $FF
    ld [hl], a                                    ; $4811: $77

jr_012_4812:
    ld l, b                                       ; $4812: $68
    ld h, c                                       ; $4813: $61
    ld [hl], h                                    ; $4814: $74
    jr nz, jr_012_4890                            ; $4815: $20 $79

jr_012_4817:
    ld h, c                                       ; $4817: $61
    jr nz, jr_012_4881                            ; $4818: $20 $67

    ld l, a                                       ; $481A: $6F
    ld [hl], h                                    ; $481B: $74
    ld hl, $FDFE                                  ; $481C: $21 $FE $FD
    sbc d                                         ; $481F: $9A
    rra                                           ; $4820: $1F
    ld d, $07                                     ; $4821: $16 $07
    nop                                           ; $4823: $00
    ld l, e                                       ; $4824: $6B
    ld c, d                                       ; $4825: $4A
    add hl, bc                                    ; $4826: $09

jr_012_4827:
    nop                                           ; $4827: $00
    ld [de], a                                    ; $4828: $12
    nop                                           ; $4829: $00
    ld l, c                                       ; $482A: $69
    ld h, d                                       ; $482B: $62
    ld e, a                                       ; $482C: $5F
    rra                                           ; $482D: $1F
    db $10                                        ; $482E: $10
    sbc e                                         ; $482F: $9B
    ld a, b                                       ; $4830: $78
    ld [hl], b                                    ; $4831: $70

jr_012_4832:
    sbc a                                         ; $4832: $9F
    ld d, a                                       ; $4833: $57
    ld c, b                                       ; $4834: $48
    ld c, a                                       ; $4835: $4F

jr_012_4836:
    daa                                           ; $4836: $27
    ld d, e                                       ; $4837: $53
    jr nz, @+$44                                  ; $4838: $20 $42

    ld b, c                                       ; $483A: $41
    ld b, h                                       ; $483B: $44
    ld hl, $2121                                  ; $483C: $21 $21 $21
    cp $FD                                        ; $483F: $FE $FD
    sbc e                                         ; $4841: $9B
    adc b                                         ; $4842: $88
    ld c, h                                       ; $4843: $4C
    sbc a                                         ; $4844: $9F
    ld d, l                                       ; $4845: $55
    ld l, l                                       ; $4846: $6D
    ld l, l                                       ; $4847: $6D

jr_012_4848:
    ld l, l                                       ; $4848: $6D
    ld l, l                                       ; $4849: $6D
    ld l, $2E                                     ; $484A: $2E $2E
    ld l, $2E                                     ; $484C: $2E $2E
    rst $38                                       ; $484E: $FF
    ld a, c                                       ; $484F: $79

jr_012_4850:
    ld l, a                                       ; $4850: $6F
    ld [hl], l                                    ; $4851: $75
    jr nz, jr_012_48B5                            ; $4852: $20 $61

    ld [hl], d                                    ; $4854: $72
    ld h, l                                       ; $4855: $65
    ccf                                           ; $4856: $3F
    ccf                                           ; $4857: $3F
    ccf                                           ; $4858: $3F

jr_012_4859:
    ld l, $2E                                     ; $4859: $2E $2E
    ld l, $FE                                     ; $485B: $2E $FE
    db $FD                                        ; $485D: $FD
    sbc d                                         ; $485E: $9A
    ld e, b                                       ; $485F: $58
    ld bc, $0007                                  ; $4860: $01 $07 $00
    add c                                         ; $4863: $81
    ld e, l                                       ; $4864: $5D
    add hl, bc                                    ; $4865: $09
    nop                                           ; $4866: $00
    jr nz, jr_012_4832                            ; $4867: $20 $C9

    ld d, b                                       ; $4869: $50
    ld b, d                                       ; $486A: $42

jr_012_486B:
    sbc c                                         ; $486B: $99
    sbc e                                         ; $486C: $9B
    ld a, b                                       ; $486D: $78
    ld [hl], b                                    ; $486E: $70
    sbc a                                         ; $486F: $9F
    ld c, [hl]                                    ; $4870: $4E
    ld l, a                                       ; $4871: $6F
    jr nz, jr_012_48E8                            ; $4872: $20 $74

jr_012_4874:
    ld l, b                                       ; $4874: $68
    ld h, c                                       ; $4875: $61
    ld l, [hl]                                    ; $4876: $6E
    ld l, e                                       ; $4877: $6B
    ld [hl], e                                    ; $4878: $73
    ld l, $2E                                     ; $4879: $2E $2E
    ld l, $FE                                     ; $487B: $2E $FE
    db $FD                                        ; $487D: $FD
    sbc e                                         ; $487E: $9B
    adc b                                         ; $487F: $88
    ld c, h                                       ; $4880: $4C

jr_012_4881:
    sbc a                                         ; $4881: $9F
    ld d, e                                       ; $4882: $53
    ld [hl], b                                    ; $4883: $70
    ld l, a                                       ; $4884: $6F
    ld l, c                                       ; $4885: $69
    ld l, h                                       ; $4886: $6C
    ld [hl], e                                    ; $4887: $73
    ld [hl], b                                    ; $4888: $70
    ld l, a                                       ; $4889: $6F
    ld [hl], d                                    ; $488A: $72
    ld [hl], h                                    ; $488B: $74
    ld hl, $FDFE                                  ; $488C: $21 $FE $FD
    sbc d                                         ; $488F: $9A

jr_012_4890:
    ld e, b                                       ; $4890: $58
    ld bc, $9B42                                  ; $4891: $01 $42 $9B
    ld l, b                                       ; $4894: $68
    ld h, d                                       ; $4895: $62
    sbc a                                         ; $4896: $9F
    ld l, $2E                                     ; $4897: $2E $2E
    ld l, $67                                     ; $4899: $2E $67
    ld [hl], d                                    ; $489B: $72
    ld [hl], l                                    ; $489C: $75
    ld l, l                                       ; $489D: $6D
    ld h, d                                       ; $489E: $62
    ld l, h                                       ; $489F: $6C
    ld h, l                                       ; $48A0: $65
    ld l, $2E                                     ; $48A1: $2E $2E
    ld l, $FF                                     ; $48A3: $2E $FF
    ld e, c                                       ; $48A5: $59
    ld l, a                                       ; $48A6: $6F
    ld [hl], l                                    ; $48A7: $75
    jr nz, jr_012_4915                            ; $48A8: $20 $6B

    ld l, c                                       ; $48AA: $69
    ld h, h                                       ; $48AB: $64
    ld [hl], e                                    ; $48AC: $73
    jr nz, jr_012_4910                            ; $48AD: $20 $61

    ld l, [hl]                                    ; $48AF: $6E
    ld h, h                                       ; $48B0: $64
    cp $79                                        ; $48B1: $FE $79
    ld l, a                                       ; $48B3: $6F
    ld [hl], l                                    ; $48B4: $75

jr_012_48B5:
    ld [hl], d                                    ; $48B5: $72
    jr nz, jr_012_4924                            ; $48B6: $20 $6C

    ld l, a                                       ; $48B8: $6F
    ld [hl], l                                    ; $48B9: $75
    ld h, h                                       ; $48BA: $64
    rst $38                                       ; $48BB: $FF
    ld l, l                                       ; $48BC: $6D
    ld [hl], l                                    ; $48BD: $75
    ld [hl], e                                    ; $48BE: $73
    ld l, c                                       ; $48BF: $69
    ld h, e                                       ; $48C0: $63
    ld l, $FE                                     ; $48C1: $2E $FE
    ld c, e                                       ; $48C3: $4B
    ld h, l                                       ; $48C4: $65
    ld h, l                                       ; $48C5: $65
    ld [hl], b                                    ; $48C6: $70
    jr nz, jr_012_4932                            ; $48C7: $20 $69

    ld [hl], h                                    ; $48C9: $74
    jr nz, jr_012_4930                            ; $48CA: $20 $64

    ld l, a                                       ; $48CC: $6F
    ld [hl], a                                    ; $48CD: $77
    ld l, [hl]                                    ; $48CE: $6E
    ld hl, $FE21                                  ; $48CF: $21 $21 $FE
    db $FD                                        ; $48D2: $FD
    sbc d                                         ; $48D3: $9A
    ld e, b                                       ; $48D4: $58
    ld bc, $9B42                                  ; $48D5: $01 $42 $9B
    add hl, bc                                    ; $48D8: $09
    ld b, b                                       ; $48D9: $40
    sbc a                                         ; $48DA: $9F
    ld c, c                                       ; $48DB: $49
    jr nz, jr_012_4945                            ; $48DC: $20 $67

    ld [hl], l                                    ; $48DE: $75
    ld h, l                                       ; $48DF: $65
    ld [hl], e                                    ; $48E0: $73
    ld [hl], e                                    ; $48E1: $73
    jr nz, jr_012_492D                            ; $48E2: $20 $49

    rst $38                                       ; $48E4: $FF
    ld [hl], a                                    ; $48E5: $77
    ld h, c                                       ; $48E6: $61
    ld [hl], e                                    ; $48E7: $73

jr_012_48E8:
    jr nz, @+$79                                  ; $48E8: $20 $77

    ld [hl], d                                    ; $48EA: $72
    ld l, a                                       ; $48EB: $6F
    ld l, [hl]                                    ; $48EC: $6E
    ld h, a                                       ; $48ED: $67

jr_012_48EE:
    jr nz, jr_012_48EE                            ; $48EE: $20 $FE

    ld h, c                                       ; $48F0: $61
    ld h, d                                       ; $48F1: $62
    ld l, a                                       ; $48F2: $6F
    ld [hl], l                                    ; $48F3: $75
    ld [hl], h                                    ; $48F4: $74
    jr nz, jr_012_4970                            ; $48F5: $20 $79

    ld l, a                                       ; $48F7: $6F
    ld [hl], l                                    ; $48F8: $75
    inc l                                         ; $48F9: $2C
    rst $38                                       ; $48FA: $FF
    ld a, c                                       ; $48FB: $79
    ld l, a                                       ; $48FC: $6F
    ld [hl], l                                    ; $48FD: $75
    ld l, [hl]                                    ; $48FE: $6E
    ld h, a                                       ; $48FF: $67
    jr nz, jr_012_496F                            ; $4900: $20 $6D

    ld h, c                                       ; $4902: $61
    ld l, [hl]                                    ; $4903: $6E
    ld l, $2E                                     ; $4904: $2E $2E
    ld l, $FE                                     ; $4906: $2E $FE
    ld d, a                                       ; $4908: $57
    ld l, b                                       ; $4909: $68
    ld h, c                                       ; $490A: $61
    ld [hl], h                                    ; $490B: $74
    jr nz, @+$66                                  ; $490C: $20 $64

    ld l, c                                       ; $490E: $69
    ld h, h                                       ; $490F: $64

jr_012_4910:
    jr nz, @+$7B                                  ; $4910: $20 $79

    ld l, a                                       ; $4912: $6F
    ld [hl], l                                    ; $4913: $75
    rst $38                                       ; $4914: $FF

jr_012_4915:
    ld [hl], e                                    ; $4915: $73
    ld h, c                                       ; $4916: $61
    ld a, c                                       ; $4917: $79
    jr nz, jr_012_4993                            ; $4918: $20 $79

    ld l, a                                       ; $491A: $6F
    ld [hl], l                                    ; $491B: $75
    ld [hl], d                                    ; $491C: $72
    jr nz, jr_012_498D                            ; $491D: $20 $6E

    ld h, c                                       ; $491F: $61
    ld l, l                                       ; $4920: $6D
    ld h, l                                       ; $4921: $65
    cp $77                                        ; $4922: $FE $77

jr_012_4924:
    ld h, c                                       ; $4924: $61
    ld [hl], e                                    ; $4925: $73
    jr nz, jr_012_4989                            ; $4926: $20 $61

    ld h, a                                       ; $4928: $67
    ld h, c                                       ; $4929: $61
    ld l, c                                       ; $492A: $69
    ld l, [hl]                                    ; $492B: $6E
    ccf                                           ; $492C: $3F

jr_012_492D:
    cp $FD                                        ; $492D: $FE $FD
    sbc e                                         ; $492F: $9B

jr_012_4930:
    ld a, b                                       ; $4930: $78
    ld [hl], b                                    ; $4931: $70

jr_012_4932:
    ld e, b                                       ; $4932: $58
    inc c                                         ; $4933: $0C
    ld e, b                                       ; $4934: $58
    dec c                                         ; $4935: $0D
    ld e, b                                       ; $4936: $58
    ld c, $9F                                     ; $4937: $0E $9F
    ld c, l                                       ; $4939: $4D
    ld a, c                                       ; $493A: $79
    jr nz, jr_012_49AB                            ; $493B: $20 $6E

    ld h, c                                       ; $493D: $61
    ld l, l                                       ; $493E: $6D
    ld h, l                                       ; $493F: $65
    jr nz, jr_012_49AB                            ; $4940: $20 $69

    ld [hl], e                                    ; $4942: $73
    rst $38                                       ; $4943: $FF
    ld d, h                                       ; $4944: $54

jr_012_4945:
    ld l, a                                       ; $4945: $6F
    ld l, [hl]                                    ; $4946: $6E
    ld a, c                                       ; $4947: $79
    jr nz, jr_012_4994                            ; $4948: $20 $4A

    ld l, a                                       ; $494A: $6F
    ld l, [hl]                                    ; $494B: $6E
    ld h, l                                       ; $494C: $65
    ld [hl], e                                    ; $494D: $73
    ld l, $FE                                     ; $494E: $2E $FE
    db $FD                                        ; $4950: $FD
    sbc e                                         ; $4951: $9B
    add hl, bc                                    ; $4952: $09
    ld b, b                                       ; $4953: $40
    ld e, b                                       ; $4954: $58
    inc c                                         ; $4955: $0C
    ld e, b                                       ; $4956: $58
    dec c                                         ; $4957: $0D
    ld e, b                                       ; $4958: $58
    ld c, $9F                                     ; $4959: $0E $9F
    ld d, a                                       ; $495B: $57
    ld h, l                                       ; $495C: $65
    ld l, h                                       ; $495D: $6C
    ld l, h                                       ; $495E: $6C
    inc l                                         ; $495F: $2C
    jr nz, jr_012_49B6                            ; $4960: $20 $54

    ld l, a                                       ; $4962: $6F
    ld l, [hl]                                    ; $4963: $6E
    ld a, c                                       ; $4964: $79
    ld l, $2E                                     ; $4965: $2E $2E
    ld l, $FE                                     ; $4967: $2E $FE
    ld c, c                                       ; $4969: $49
    ld [hl], h                                    ; $496A: $74
    jr nz, jr_012_49E0                            ; $496B: $20 $73

    ld h, l                                       ; $496D: $65
    ld h, l                                       ; $496E: $65

jr_012_496F:
    ld l, l                                       ; $496F: $6D

jr_012_4970:
    ld [hl], e                                    ; $4970: $73
    jr nz, jr_012_49EA                            ; $4971: $20 $77

    ld h, l                                       ; $4973: $65
    rst $38                                       ; $4974: $FF
    ld l, a                                       ; $4975: $6F
    ld [hl], a                                    ; $4976: $77
    ld h, l                                       ; $4977: $65
    jr nz, jr_012_49F3                            ; $4978: $20 $79

    ld l, a                                       ; $497A: $6F
    ld [hl], l                                    ; $497B: $75
    jr nz, jr_012_49DF                            ; $497C: $20 $61

    ld l, [hl]                                    ; $497E: $6E
    cp $61                                        ; $497F: $FE $61
    ld [hl], b                                    ; $4981: $70
    ld l, a                                       ; $4982: $6F
    ld l, h                                       ; $4983: $6C
    ld l, a                                       ; $4984: $6F
    ld h, a                                       ; $4985: $67
    ld a, c                                       ; $4986: $79
    ld l, $FE                                     ; $4987: $2E $FE

jr_012_4989:
    ld c, c                                       ; $4989: $49
    jr nz, jr_012_49ED                            ; $498A: $20 $61

    ld l, l                                       ; $498C: $6D

jr_012_498D:
    jr nz, jr_012_4A02                            ; $498D: $20 $73

    ld [hl], l                                    ; $498F: $75
    ld [hl], d                                    ; $4990: $72
    ld h, l                                       ; $4991: $65
    rst $38                                       ; $4992: $FF

jr_012_4993:
    ld a, c                                       ; $4993: $79

jr_012_4994:
    ld l, a                                       ; $4994: $6F
    ld [hl], l                                    ; $4995: $75
    jr nz, jr_012_49F9                            ; $4996: $20 $61

    ld [hl], d                                    ; $4998: $72
    ld h, l                                       ; $4999: $65
    ld l, [hl]                                    ; $499A: $6E
    daa                                           ; $499B: $27
    ld [hl], h                                    ; $499C: $74
    cp $72                                        ; $499D: $FE $72
    ld h, l                                       ; $499F: $65
    ld [hl], e                                    ; $49A0: $73
    ld [hl], b                                    ; $49A1: $70
    ld l, a                                       ; $49A2: $6F
    ld l, [hl]                                    ; $49A3: $6E
    ld [hl], e                                    ; $49A4: $73
    ld l, c                                       ; $49A5: $69
    ld h, d                                       ; $49A6: $62
    ld l, h                                       ; $49A7: $6C
    ld h, l                                       ; $49A8: $65
    rst $38                                       ; $49A9: $FF
    ld h, [hl]                                    ; $49AA: $66

jr_012_49AB:
    ld l, a                                       ; $49AB: $6F
    ld [hl], d                                    ; $49AC: $72
    jr nz, jr_012_4A23                            ; $49AD: $20 $74

    ld l, b                                       ; $49AF: $68
    ld h, c                                       ; $49B0: $61
    ld [hl], h                                    ; $49B1: $74
    jr nz, jr_012_4A28                            ; $49B2: $20 $74

    ld l, b                                       ; $49B4: $68
    ld l, c                                       ; $49B5: $69

jr_012_49B6:
    ld l, [hl]                                    ; $49B6: $6E
    ld h, a                                       ; $49B7: $67
    cp $6F                                        ; $49B8: $FE $6F
    ld [hl], l                                    ; $49BA: $75
    ld [hl], h                                    ; $49BB: $74
    ld [hl], e                                    ; $49BC: $73
    ld l, c                                       ; $49BD: $69
    ld h, h                                       ; $49BE: $64
    ld h, l                                       ; $49BF: $65
    jr nz, jr_012_4A31                            ; $49C0: $20 $6F

    ld h, [hl]                                    ; $49C2: $66
    rst $38                                       ; $49C3: $FF
    ld [hl], h                                    ; $49C4: $74
    ld l, a                                       ; $49C5: $6F
    ld [hl], a                                    ; $49C6: $77
    ld l, [hl]                                    ; $49C7: $6E
    ld l, $2E                                     ; $49C8: $2E $2E
    ld l, $FE                                     ; $49CA: $2E $FE
    db $FD                                        ; $49CC: $FD
    sbc e                                         ; $49CD: $9B
    ld a, b                                       ; $49CE: $78
    ld [hl], b                                    ; $49CF: $70
    ld e, b                                       ; $49D0: $58
    inc c                                         ; $49D1: $0C
    ld e, b                                       ; $49D2: $58
    dec c                                         ; $49D3: $0D
    ld e, b                                       ; $49D4: $58
    ld c, $9F                                     ; $49D5: $0E $9F
    ld c, l                                       ; $49D7: $4D
    ld l, a                                       ; $49D8: $6F
    ld [hl], d                                    ; $49D9: $72
    ld h, c                                       ; $49DA: $61
    ld h, a                                       ; $49DB: $67
    jr nz, @+$6A                                  ; $49DC: $20 $68

    ld h, c                                       ; $49DE: $61

jr_012_49DF:
    ld [hl], e                                    ; $49DF: $73

jr_012_49E0:
    rst $38                                       ; $49E0: $FF
    ld h, d                                       ; $49E1: $62
    ld h, l                                       ; $49E2: $65
    ld h, l                                       ; $49E3: $65
    ld l, [hl]                                    ; $49E4: $6E
    jr nz, jr_012_4A4A                            ; $49E5: $20 $63

    ld [hl], d                                    ; $49E7: $72
    ld h, l                                       ; $49E8: $65
    ld h, c                                       ; $49E9: $61

jr_012_49EA:
    ld [hl], h                                    ; $49EA: $74
    ld l, c                                       ; $49EB: $69
    ld l, [hl]                                    ; $49EC: $6E

jr_012_49ED:
    ld h, a                                       ; $49ED: $67
    cp $74                                        ; $49EE: $FE $74
    ld l, b                                       ; $49F0: $68
    ld l, a                                       ; $49F1: $6F
    ld [hl], e                                    ; $49F2: $73

jr_012_49F3:
    ld h, l                                       ; $49F3: $65
    jr nz, jr_012_4A49                            ; $49F4: $20 $53

    ld l, b                                       ; $49F6: $68
    ld h, c                                       ; $49F7: $61
    ld h, h                                       ; $49F8: $64

jr_012_49F9:
    ld l, a                                       ; $49F9: $6F
    ld [hl], a                                    ; $49FA: $77
    rst $38                                       ; $49FB: $FF
    ld b, a                                       ; $49FC: $47
    ld h, l                                       ; $49FD: $65
    ld a, c                                       ; $49FE: $79
    ld [hl], e                                    ; $49FF: $73
    ld h, l                                       ; $4A00: $65
    ld [hl], d                                    ; $4A01: $72

jr_012_4A02:
    ld [hl], e                                    ; $4A02: $73
    jr nz, jr_012_4A66                            ; $4A03: $20 $61

    ld l, h                                       ; $4A05: $6C
    ld l, h                                       ; $4A06: $6C
    cp $6F                                        ; $4A07: $FE $6F
    halt                                          ; $4A09: $76
    ld h, l                                       ; $4A0A: $65
    ld [hl], d                                    ; $4A0B: $72
    jr nz, jr_012_4A82                            ; $4A0C: $20 $74

    ld l, b                                       ; $4A0E: $68
    ld h, l                                       ; $4A0F: $65
    rst $38                                       ; $4A10: $FF
    ld [hl], b                                    ; $4A11: $70
    ld l, h                                       ; $4A12: $6C
    ld h, c                                       ; $4A13: $61
    ld h, e                                       ; $4A14: $63
    ld h, l                                       ; $4A15: $65
    ld l, $FE                                     ; $4A16: $2E $FE
    db $FD                                        ; $4A18: $FD
    sbc e                                         ; $4A19: $9B
    add hl, de                                    ; $4A1A: $19
    ld c, [hl]                                    ; $4A1B: $4E
    ld e, b                                       ; $4A1C: $58
    inc b                                         ; $4A1D: $04
    sbc a                                         ; $4A1E: $9F
    ld c, l                                       ; $4A1F: $4D
    ld l, a                                       ; $4A20: $6F
    ld [hl], d                                    ; $4A21: $72
    ld h, c                                       ; $4A22: $61

jr_012_4A23:
    ld h, a                                       ; $4A23: $67
    ccf                                           ; $4A24: $3F
    ld hl, $FDFE                                  ; $4A25: $21 $FE $FD

jr_012_4A28:
    sbc e                                         ; $4A28: $9B
    ld l, b                                       ; $4A29: $68
    ld h, d                                       ; $4A2A: $62
    ld e, b                                       ; $4A2B: $58
    dec b                                         ; $4A2C: $05
    ld e, b                                       ; $4A2D: $58
    inc [hl]                                      ; $4A2E: $34
    sbc a                                         ; $4A2F: $9F
    ld d, e                                       ; $4A30: $53

jr_012_4A31:
    ld l, b                                       ; $4A31: $68
    ld h, c                                       ; $4A32: $61
    ld h, h                                       ; $4A33: $64
    ld l, a                                       ; $4A34: $6F
    ld [hl], a                                    ; $4A35: $77
    rst $38                                       ; $4A36: $FF
    ld b, a                                       ; $4A37: $47
    ld h, l                                       ; $4A38: $65
    ld a, c                                       ; $4A39: $79
    ld [hl], e                                    ; $4A3A: $73
    ld h, l                                       ; $4A3B: $65
    ld [hl], d                                    ; $4A3C: $72
    ld [hl], e                                    ; $4A3D: $73
    ccf                                           ; $4A3E: $3F
    cp $FD                                        ; $4A3F: $FE $FD
    sbc e                                         ; $4A41: $9B
    ret c                                         ; $4A42: $D8

    ld h, b                                       ; $4A43: $60
    ld e, b                                       ; $4A44: $58
    ld b, $58                                     ; $4A45: $06 $58
    ld a, $58                                     ; $4A47: $3E $58

jr_012_4A49:
    ccf                                           ; $4A49: $3F

jr_012_4A4A:
    ld e, b                                       ; $4A4A: $58
    ld b, b                                       ; $4A4B: $40
    sbc a                                         ; $4A4C: $9F
    ld d, a                                       ; $4A4D: $57
    ld l, b                                       ; $4A4E: $68
    ld h, c                                       ; $4A4F: $61
    ld [hl], h                                    ; $4A50: $74
    jr nz, jr_012_4AB7                            ; $4A51: $20 $64

    ld l, a                                       ; $4A53: $6F
    jr nz, @+$7B                                  ; $4A54: $20 $79

    ld l, a                                       ; $4A56: $6F
    ld [hl], l                                    ; $4A57: $75
    rst $38                                       ; $4A58: $FF
    ld l, e                                       ; $4A59: $6B
    ld l, [hl]                                    ; $4A5A: $6E
    ld l, a                                       ; $4A5B: $6F
    ld [hl], a                                    ; $4A5C: $77
    jr nz, jr_012_4ACE                            ; $4A5D: $20 $6F

    ld h, [hl]                                    ; $4A5F: $66
    jr nz, jr_012_4AD6                            ; $4A60: $20 $74

    ld l, b                                       ; $4A62: $68
    ld h, l                                       ; $4A63: $65
    ld [hl], e                                    ; $4A64: $73
    ld h, l                                       ; $4A65: $65

jr_012_4A66:
    cp $74                                        ; $4A66: $FE $74
    ld l, b                                       ; $4A68: $68
    ld l, c                                       ; $4A69: $69
    ld l, [hl]                                    ; $4A6A: $6E
    ld h, a                                       ; $4A6B: $67
    ld [hl], e                                    ; $4A6C: $73
    ccf                                           ; $4A6D: $3F
    cp $FD                                        ; $4A6E: $FE $FD
    sbc e                                         ; $4A70: $9B
    ld a, b                                       ; $4A71: $78
    ld [hl], b                                    ; $4A72: $70
    ld e, b                                       ; $4A73: $58
    inc c                                         ; $4A74: $0C
    ld e, b                                       ; $4A75: $58
    dec c                                         ; $4A76: $0D
    ld e, b                                       ; $4A77: $58
    ld c, $9F                                     ; $4A78: $0E $9F
    ld c, c                                       ; $4A7A: $49
    jr nz, jr_012_4AE8                            ; $4A7B: $20 $6B

    ld l, [hl]                                    ; $4A7D: $6E
    ld l, a                                       ; $4A7E: $6F
    ld [hl], a                                    ; $4A7F: $77
    rst $38                                       ; $4A80: $FF
    ld h, l                                       ; $4A81: $65

jr_012_4A82:
    ld l, [hl]                                    ; $4A82: $6E
    ld l, a                                       ; $4A83: $6F
    ld [hl], l                                    ; $4A84: $75
    ld h, a                                       ; $4A85: $67
    ld l, b                                       ; $4A86: $68
    jr nz, jr_012_4AFD                            ; $4A87: $20 $74

    ld l, a                                       ; $4A89: $6F
    cp $73                                        ; $4A8A: $FE $73
    ld [hl], h                                    ; $4A8C: $74
    ld l, a                                       ; $4A8D: $6F
    ld [hl], b                                    ; $4A8E: $70
    jr nz, jr_012_4B05                            ; $4A8F: $20 $74

    ld l, b                                       ; $4A91: $68
    ld h, l                                       ; $4A92: $65
    ld l, l                                       ; $4A93: $6D
    ld l, $2E                                     ; $4A94: $2E $2E
    ld l, $FE                                     ; $4A96: $2E $FE
    ld h, d                                       ; $4A98: $62
    ld [hl], l                                    ; $4A99: $75
    ld [hl], h                                    ; $4A9A: $74
    jr nz, @+$4B                                  ; $4A9B: $20 $49

    jr nz, jr_012_4B0D                            ; $4A9D: $20 $6E

    ld h, l                                       ; $4A9F: $65
    ld h, l                                       ; $4AA0: $65
    ld h, h                                       ; $4AA1: $64
    rst $38                                       ; $4AA2: $FF
    ld [hl], h                                    ; $4AA3: $74
    ld l, a                                       ; $4AA4: $6F
    jr nz, jr_012_4B0E                            ; $4AA5: $20 $67

    ld h, l                                       ; $4AA7: $65
    ld [hl], h                                    ; $4AA8: $74
    jr nz, jr_012_4B1A                            ; $4AA9: $20 $6F

    halt                                          ; $4AAB: $76
    ld h, l                                       ; $4AAC: $65
    ld [hl], d                                    ; $4AAD: $72
    cp $74                                        ; $4AAE: $FE $74
    ld l, b                                       ; $4AB0: $68
    ld h, c                                       ; $4AB1: $61
    ld [hl], h                                    ; $4AB2: $74
    jr nz, @+$6E                                  ; $4AB3: $20 $6C

    ld h, c                                       ; $4AB5: $61
    halt                                          ; $4AB6: $76

jr_012_4AB7:
    ld h, c                                       ; $4AB7: $61
    rst $38                                       ; $4AB8: $FF
    ld h, [hl]                                    ; $4AB9: $66
    ld l, h                                       ; $4ABA: $6C
    ld l, a                                       ; $4ABB: $6F
    ld [hl], a                                    ; $4ABC: $77
    ld l, $FE                                     ; $4ABD: $2E $FE
    db $FD                                        ; $4ABF: $FD
    sbc e                                         ; $4AC0: $9B
    add hl, bc                                    ; $4AC1: $09
    ld b, b                                       ; $4AC2: $40
    ld e, b                                       ; $4AC3: $58
    inc c                                         ; $4AC4: $0C
    ld e, b                                       ; $4AC5: $58
    dec c                                         ; $4AC6: $0D
    ld e, b                                       ; $4AC7: $58
    ld c, $9F                                     ; $4AC8: $0E $9F
    ld d, a                                       ; $4ACA: $57
    ld h, l                                       ; $4ACB: $65
    ld l, h                                       ; $4ACC: $6C
    ld l, h                                       ; $4ACD: $6C

jr_012_4ACE:
    ld l, $2E                                     ; $4ACE: $2E $2E
    ld l, $2E                                     ; $4AD0: $2E $2E
    cp $50                                        ; $4AD2: $FE $50
    ld h, l                                       ; $4AD4: $65
    ld [hl], d                                    ; $4AD5: $72

jr_012_4AD6:
    ld l, b                                       ; $4AD6: $68
    ld h, c                                       ; $4AD7: $61
    ld [hl], b                                    ; $4AD8: $70
    ld [hl], e                                    ; $4AD9: $73
    jr nz, jr_012_4B32                            ; $4ADA: $20 $56

    ld h, c                                       ; $4ADC: $61
    ld l, h                                       ; $4ADD: $6C
    ld l, e                                       ; $4ADE: $6B
    ld h, c                                       ; $4ADF: $61
    ld l, [hl]                                    ; $4AE0: $6E
    rst $38                                       ; $4AE1: $FF
    ld h, e                                       ; $4AE2: $63
    ld h, c                                       ; $4AE3: $61
    ld l, [hl]                                    ; $4AE4: $6E
    jr nz, jr_012_4B4F                            ; $4AE5: $20 $68

    ld h, l                                       ; $4AE7: $65

jr_012_4AE8:
    ld l, h                                       ; $4AE8: $6C
    ld [hl], b                                    ; $4AE9: $70
    jr nz, jr_012_4B65                            ; $4AEA: $20 $79

    ld l, a                                       ; $4AEC: $6F
    ld [hl], l                                    ; $4AED: $75
    ld l, $FE                                     ; $4AEE: $2E $FE
    ld c, b                                       ; $4AF0: $48
    ld h, l                                       ; $4AF1: $65
    jr nz, jr_012_4B5D                            ; $4AF2: $20 $69

    ld [hl], e                                    ; $4AF4: $73
    jr nz, jr_012_4B3A                            ; $4AF5: $20 $43

    ld h, c                                       ; $4AF7: $61
    ld l, h                                       ; $4AF8: $6C
    ld h, h                                       ; $4AF9: $64
    daa                                           ; $4AFA: $27
    ld [hl], e                                    ; $4AFB: $73
    rst $38                                       ; $4AFC: $FF

jr_012_4AFD:
    ld c, l                                       ; $4AFD: $4D
    ld h, c                                       ; $4AFE: $61
    ld [hl], e                                    ; $4AFF: $73
    ld [hl], h                                    ; $4B00: $74
    ld h, l                                       ; $4B01: $65
    ld [hl], d                                    ; $4B02: $72
    jr nz, jr_012_4B47                            ; $4B03: $20 $42

jr_012_4B05:
    ld [hl], d                                    ; $4B05: $72
    ld l, c                                       ; $4B06: $69
    ld h, h                                       ; $4B07: $64
    ld h, a                                       ; $4B08: $67
    ld h, l                                       ; $4B09: $65
    cp $42                                        ; $4B0A: $FE $42
    ld [hl], l                                    ; $4B0C: $75

jr_012_4B0D:
    ld l, c                                       ; $4B0D: $69

jr_012_4B0E:
    ld l, h                                       ; $4B0E: $6C
    ld h, h                                       ; $4B0F: $64
    ld h, l                                       ; $4B10: $65
    ld [hl], d                                    ; $4B11: $72
    ld l, $FE                                     ; $4B12: $2E $FE
    db $FD                                        ; $4B14: $FD
    sbc e                                         ; $4B15: $9B
    ld a, b                                       ; $4B16: $78
    ld [hl], b                                    ; $4B17: $70
    ld e, b                                       ; $4B18: $58
    inc c                                         ; $4B19: $0C

jr_012_4B1A:
    ld e, b                                       ; $4B1A: $58
    dec c                                         ; $4B1B: $0D
    ld e, b                                       ; $4B1C: $58
    ld c, $9F                                     ; $4B1D: $0E $9F
    ld c, c                                       ; $4B1F: $49
    jr nz, jr_012_4B89                            ; $4B20: $20 $67

    ld [hl], l                                    ; $4B22: $75
    ld h, l                                       ; $4B23: $65
    ld [hl], e                                    ; $4B24: $73
    ld [hl], e                                    ; $4B25: $73
    rst $38                                       ; $4B26: $FF
    ld c, c                                       ; $4B27: $49
    daa                                           ; $4B28: $27
    ld l, h                                       ; $4B29: $6C
    ld l, h                                       ; $4B2A: $6C
    jr nz, jr_012_4B94                            ; $4B2B: $20 $67

    ld l, c                                       ; $4B2D: $69
    halt                                          ; $4B2E: $76
    ld h, l                                       ; $4B2F: $65
    cp $68                                        ; $4B30: $FE $68

jr_012_4B32:
    ld l, c                                       ; $4B32: $69
    ld l, l                                       ; $4B33: $6D
    jr nz, jr_012_4B97                            ; $4B34: $20 $61

    jr nz, @+$76                                  ; $4B36: $20 $74

    ld [hl], d                                    ; $4B38: $72
    ld a, c                                       ; $4B39: $79

jr_012_4B3A:
    ld l, $FE                                     ; $4B3A: $2E $FE
    db $FD                                        ; $4B3C: $FD
    sbc e                                         ; $4B3D: $9B
    add hl, de                                    ; $4B3E: $19
    ld c, [hl]                                    ; $4B3F: $4E
    ld b, b                                       ; $4B40: $40
    ld b, $58                                     ; $4B41: $06 $58
    inc b                                         ; $4B43: $04
    sbc a                                         ; $4B44: $9F
    ld e, c                                       ; $4B45: $59
    ld l, a                                       ; $4B46: $6F

jr_012_4B47:
    ld [hl], l                                    ; $4B47: $75
    jr nz, @+$69                                  ; $4B48: $20 $67

    ld l, a                                       ; $4B4A: $6F
    jr nz, jr_012_4BA1                            ; $4B4B: $20 $54

    ld l, a                                       ; $4B4D: $6F
    ld l, [hl]                                    ; $4B4E: $6E

jr_012_4B4F:
    ld a, c                                       ; $4B4F: $79
    ld hl, $FDFE                                  ; $4B50: $21 $FE $FD
    sbc e                                         ; $4B53: $9B
    ld l, b                                       ; $4B54: $68
    ld h, d                                       ; $4B55: $62
    ld e, b                                       ; $4B56: $58
    inc [hl]                                      ; $4B57: $34
    ld e, b                                       ; $4B58: $58
    dec b                                         ; $4B59: $05
    sbc a                                         ; $4B5A: $9F
    ld d, h                                       ; $4B5B: $54
    ld l, b                                       ; $4B5C: $68

jr_012_4B5D:
    ld h, c                                       ; $4B5D: $61
    ld [hl], h                                    ; $4B5E: $74
    daa                                           ; $4B5F: $27
    ld [hl], e                                    ; $4B60: $73
    jr nz, jr_012_4BD7                            ; $4B61: $20 $74

    ld l, b                                       ; $4B63: $68
    ld h, l                                       ; $4B64: $65

jr_012_4B65:
    rst $38                                       ; $4B65: $FF
    ld [hl], e                                    ; $4B66: $73
    ld [hl], b                                    ; $4B67: $70
    ld l, c                                       ; $4B68: $69
    ld [hl], d                                    ; $4B69: $72
    ld l, c                                       ; $4B6A: $69
    ld [hl], h                                    ; $4B6B: $74
    ld hl, $FDFE                                  ; $4B6C: $21 $FE $FD
    sbc e                                         ; $4B6F: $9B
    ret c                                         ; $4B70: $D8

    ld h, b                                       ; $4B71: $60
    ld e, b                                       ; $4B72: $58
    ld b, $58                                     ; $4B73: $06 $58
    ld a, $58                                     ; $4B75: $3E $58
    ccf                                           ; $4B77: $3F
    ld e, b                                       ; $4B78: $58
    ld b, b                                       ; $4B79: $40
    sbc a                                         ; $4B7A: $9F
    ld b, c                                       ; $4B7B: $41
    ld l, [hl]                                    ; $4B7C: $6E
    ld h, h                                       ; $4B7D: $64
    ld l, $2E                                     ; $4B7E: $2E $2E
    ld l, $FE                                     ; $4B80: $2E $FE
    ld c, c                                       ; $4B82: $49
    daa                                           ; $4B83: $27
    ld l, l                                       ; $4B84: $6D
    jr nz, jr_012_4BF6                            ; $4B85: $20 $6F

    ld [hl], l                                    ; $4B87: $75
    ld [hl], h                                    ; $4B88: $74

jr_012_4B89:
    ld hl, $FDFE                                  ; $4B89: $21 $FE $FD
    sbc d                                         ; $4B8C: $9A
    ld b, b                                       ; $4B8D: $40
    ld b, $58                                     ; $4B8E: $06 $58
    ld a, [bc]                                    ; $4B90: $0A
    ld b, d                                       ; $4B91: $42
    sbc e                                         ; $4B92: $9B
    ld a, b                                       ; $4B93: $78

jr_012_4B94:
    ld [hl], b                                    ; $4B94: $70
    sbc a                                         ; $4B95: $9F
    ld d, a                                       ; $4B96: $57

jr_012_4B97:
    ld h, l                                       ; $4B97: $65
    ld l, c                                       ; $4B98: $69
    ld [hl], d                                    ; $4B99: $72
    ld h, h                                       ; $4B9A: $64
    ld l, $FE                                     ; $4B9B: $2E $FE
    db $FD                                        ; $4B9D: $FD
    sbc d                                         ; $4B9E: $9A
    ld e, b                                       ; $4B9F: $58
    dec bc                                        ; $4BA0: $0B

jr_012_4BA1:
    ld b, d                                       ; $4BA1: $42
    and [hl]                                      ; $4BA2: $A6
    inc h                                         ; $4BA3: $24
    and d                                         ; $4BA4: $A2
    dec bc                                        ; $4BA5: $0B
    ld bc, $A224                                  ; $4BA6: $01 $24 $A2
    dec b                                         ; $4BA9: $05
    ld bc, HeaderOldLicenseeCode                  ; $4BAA: $01 $4B $01
    inc h                                         ; $4BAD: $24
    and d                                         ; $4BAE: $A2
    ld [de], a                                    ; $4BAF: $12
    ld bc, $C900                                  ; $4BB0: $01 $00 $C9
    ld c, e                                       ; $4BB3: $4B
    ld [de], a                                    ; $4BB4: $12
    ld [bc], a                                    ; $4BB5: $02
    nop                                           ; $4BB6: $00
    rst $38                                       ; $4BB7: $FF
    ld c, e                                       ; $4BB8: $4B
    ld [de], a                                    ; $4BB9: $12
    inc bc                                        ; $4BBA: $03
    nop                                           ; $4BBB: $00
    ld a, [de]                                    ; $4BBC: $1A
    ld c, h                                       ; $4BBD: $4C
    ld [de], a                                    ; $4BBE: $12
    inc b                                         ; $4BBF: $04
    nop                                           ; $4BC0: $00
    ld c, d                                       ; $4BC1: $4A
    ld c, h                                       ; $4BC2: $4C
    ld [de], a                                    ; $4BC3: $12
    dec b                                         ; $4BC4: $05
    nop                                           ; $4BC5: $00
    ld a, e                                       ; $4BC6: $7B
    ld c, h                                       ; $4BC7: $4C
    rst $38                                       ; $4BC8: $FF
    sbc e                                         ; $4BC9: $9B
    ld a, b                                       ; $4BCA: $78
    ld [hl], b                                    ; $4BCB: $70
    sbc a                                         ; $4BCC: $9F
    ld c, c                                       ; $4BCD: $49
    jr nz, jr_012_4C33                            ; $4BCE: $20 $63

    ld h, c                                       ; $4BD0: $61
    ld l, [hl]                                    ; $4BD1: $6E
    daa                                           ; $4BD2: $27
    ld [hl], h                                    ; $4BD3: $74
    rst $38                                       ; $4BD4: $FF
    ld l, h                                       ; $4BD5: $6C
    ld h, l                                       ; $4BD6: $65

jr_012_4BD7:
    ld h, c                                       ; $4BD7: $61
    halt                                          ; $4BD8: $76
    ld h, l                                       ; $4BD9: $65
    jr nz, jr_012_4C53                            ; $4BDA: $20 $77

    ld l, b                                       ; $4BDC: $68
    ld l, c                                       ; $4BDD: $69
    ld l, h                                       ; $4BDE: $6C
    ld h, l                                       ; $4BDF: $65
    cp $74                                        ; $4BE0: $FE $74
    ld l, b                                       ; $4BE2: $68
    ld h, l                                       ; $4BE3: $65
    jr nz, jr_012_4C5A                            ; $4BE4: $20 $74

    ld l, a                                       ; $4BE6: $6F
    ld [hl], a                                    ; $4BE7: $77
    ld l, [hl]                                    ; $4BE8: $6E
    jr nz, @+$6B                                  ; $4BE9: $20 $69

    ld [hl], e                                    ; $4BEB: $73
    rst $38                                       ; $4BEC: $FF
    ld [hl], l                                    ; $4BED: $75
    ld l, [hl]                                    ; $4BEE: $6E
    ld h, h                                       ; $4BEF: $64
    ld h, l                                       ; $4BF0: $65
    ld [hl], d                                    ; $4BF1: $72
    jr nz, jr_012_4C55                            ; $4BF2: $20 $61

    ld [hl], h                                    ; $4BF4: $74
    ld [hl], h                                    ; $4BF5: $74

jr_012_4BF6:
    ld h, c                                       ; $4BF6: $61
    ld h, e                                       ; $4BF7: $63
    ld l, e                                       ; $4BF8: $6B
    ld hl, $FDFE                                  ; $4BF9: $21 $FE $FD
    sbc d                                         ; $4BFC: $9A
    ld d, l                                       ; $4BFD: $55
    ld b, d                                       ; $4BFE: $42
    sbc e                                         ; $4BFF: $9B
    ld a, b                                       ; $4C00: $78
    ld [hl], b                                    ; $4C01: $70
    sbc a                                         ; $4C02: $9F
    ld d, h                                       ; $4C03: $54
    ld l, b                                       ; $4C04: $68
    ld h, l                                       ; $4C05: $65
    ld a, c                                       ; $4C06: $79
    jr nz, @+$70                                  ; $4C07: $20 $6E

    ld h, l                                       ; $4C09: $65
    ld h, l                                       ; $4C0A: $65
    ld h, h                                       ; $4C0B: $64
    rst $38                                       ; $4C0C: $FF
    ld l, l                                       ; $4C0D: $6D
    ld a, c                                       ; $4C0E: $79
    jr nz, jr_012_4C79                            ; $4C0F: $20 $68

    ld h, l                                       ; $4C11: $65
    ld l, h                                       ; $4C12: $6C
    ld [hl], b                                    ; $4C13: $70
    ld hl, $FDFE                                  ; $4C14: $21 $FE $FD
    sbc d                                         ; $4C17: $9A
    ld d, l                                       ; $4C18: $55
    ld b, d                                       ; $4C19: $42
    sbc e                                         ; $4C1A: $9B
    ld a, b                                       ; $4C1B: $78
    ld [hl], b                                    ; $4C1C: $70
    sbc a                                         ; $4C1D: $9F
    ld d, h                                       ; $4C1E: $54
    ld l, b                                       ; $4C1F: $68
    ld l, c                                       ; $4C20: $69
    ld [hl], e                                    ; $4C21: $73
    jr nz, jr_012_4C98                            ; $4C22: $20 $74

    ld l, a                                       ; $4C24: $6F
    ld [hl], a                                    ; $4C25: $77
    ld l, [hl]                                    ; $4C26: $6E
    rst $38                                       ; $4C27: $FF
    ld [hl], a                                    ; $4C28: $77
    ld l, c                                       ; $4C29: $69
    ld l, h                                       ; $4C2A: $6C
    ld l, h                                       ; $4C2B: $6C
    jr nz, jr_012_4C90                            ; $4C2C: $20 $62

    ld h, l                                       ; $4C2E: $65
    cp $64                                        ; $4C2F: $FE $64
    ld h, l                                       ; $4C31: $65
    ld [hl], e                                    ; $4C32: $73

jr_012_4C33:
    ld [hl], h                                    ; $4C33: $74
    ld [hl], d                                    ; $4C34: $72
    ld l, a                                       ; $4C35: $6F
    ld a, c                                       ; $4C36: $79
    ld h, l                                       ; $4C37: $65
    ld h, h                                       ; $4C38: $64
    rst $38                                       ; $4C39: $FF
    ld [hl], a                                    ; $4C3A: $77
    ld l, c                                       ; $4C3B: $69
    ld [hl], h                                    ; $4C3C: $74
    ld l, b                                       ; $4C3D: $68
    ld l, a                                       ; $4C3E: $6F
    ld [hl], l                                    ; $4C3F: $75
    ld [hl], h                                    ; $4C40: $74
    jr nz, jr_012_4CB0                            ; $4C41: $20 $6D

    ld h, l                                       ; $4C43: $65
    ld l, $FE                                     ; $4C44: $2E $FE
    db $FD                                        ; $4C46: $FD
    sbc d                                         ; $4C47: $9A
    ld d, l                                       ; $4C48: $55
    ld b, d                                       ; $4C49: $42
    sbc e                                         ; $4C4A: $9B
    ld a, b                                       ; $4C4B: $78
    ld [hl], b                                    ; $4C4C: $70
    sbc a                                         ; $4C4D: $9F
    ld d, h                                       ; $4C4E: $54
    ld l, b                                       ; $4C4F: $68
    ld h, l                                       ; $4C50: $65
    ld [hl], d                                    ; $4C51: $72
    ld h, l                                       ; $4C52: $65

jr_012_4C53:
    jr nz, jr_012_4CB6                            ; $4C53: $20 $61

jr_012_4C55:
    ld [hl], d                                    ; $4C55: $72
    ld h, l                                       ; $4C56: $65
    rst $38                                       ; $4C57: $FF
    ld [hl], e                                    ; $4C58: $73
    ld [hl], h                                    ; $4C59: $74

jr_012_4C5A:
    ld l, c                                       ; $4C5A: $69
    ld l, h                                       ; $4C5B: $6C
    ld l, h                                       ; $4C5C: $6C
    jr nz, jr_012_4CC4                            ; $4C5D: $20 $65

    halt                                          ; $4C5F: $76
    ld l, c                                       ; $4C60: $69
    ld l, h                                       ; $4C61: $6C
    cp $4D                                        ; $4C62: $FE $4D
    ld h, c                                       ; $4C64: $61
    ld h, a                                       ; $4C65: $67
    ld l, c                                       ; $4C66: $69
    jr nz, jr_012_4CDB                            ; $4C67: $20 $72

    ld [hl], l                                    ; $4C69: $75
    ld l, [hl]                                    ; $4C6A: $6E
    ld l, [hl]                                    ; $4C6B: $6E
    ld l, c                                       ; $4C6C: $69
    ld l, [hl]                                    ; $4C6D: $6E
    ld h, a                                       ; $4C6E: $67
    rst $38                                       ; $4C6F: $FF
    ld l, h                                       ; $4C70: $6C
    ld l, a                                       ; $4C71: $6F
    ld l, a                                       ; $4C72: $6F
    ld [hl], e                                    ; $4C73: $73
    ld h, l                                       ; $4C74: $65
    ld hl, $FDFE                                  ; $4C75: $21 $FE $FD
    sbc d                                         ; $4C78: $9A

jr_012_4C79:
    ld d, l                                       ; $4C79: $55
    ld b, d                                       ; $4C7A: $42
    xor h                                         ; $4C7B: $AC
    inc h                                         ; $4C7C: $24
    and d                                         ; $4C7D: $A2
    nop                                           ; $4C7E: $00
    sbc a                                         ; $4C7F: $9F
    ld c, b                                       ; $4C80: $48
    ld h, l                                       ; $4C81: $65
    ld a, c                                       ; $4C82: $79
    jr nz, jr_012_4CC8                            ; $4C83: $20 $43

    ld l, a                                       ; $4C85: $6F
    ld [hl], a                                    ; $4C86: $77
    ld h, c                                       ; $4C87: $61
    ld [hl], d                                    ; $4C88: $72
    ld h, h                                       ; $4C89: $64
    ld hl, $FDFE                                  ; $4C8A: $21 $FE $FD
    sbc d                                         ; $4C8D: $9A
    ld l, e                                       ; $4C8E: $6B
    daa                                           ; $4C8F: $27

jr_012_4C90:
    inc c                                         ; $4C90: $0C
    add b                                         ; $4C91: $80
    ld b, [hl]                                    ; $4C92: $46
    nop                                           ; $4C93: $00
    add b                                         ; $4C94: $80
    nop                                           ; $4C95: $00
    dec bc                                        ; $4C96: $0B
    inc bc                                        ; $4C97: $03

jr_012_4C98:
    ld d, l                                       ; $4C98: $55
    ld b, d                                       ; $4C99: $42
    sbc a                                         ; $4C9A: $9F
    ld d, h                                       ; $4C9B: $54
    ld [hl], d                                    ; $4C9C: $72
    ld a, c                                       ; $4C9D: $79
    ld l, c                                       ; $4C9E: $69
    ld l, [hl]                                    ; $4C9F: $6E
    ld h, a                                       ; $4CA0: $67
    jr nz, @+$76                                  ; $4CA1: $20 $74

    ld l, a                                       ; $4CA3: $6F
    rst $38                                       ; $4CA4: $FF
    ld h, l                                       ; $4CA5: $65
    ld [hl], e                                    ; $4CA6: $73
    ld h, e                                       ; $4CA7: $63
    ld h, c                                       ; $4CA8: $61
    ld [hl], b                                    ; $4CA9: $70
    ld h, l                                       ; $4CAA: $65
    jr nz, jr_012_4D26                            ; $4CAB: $20 $79

    ld l, a                                       ; $4CAD: $6F
    ld [hl], l                                    ; $4CAE: $75
    ld [hl], d                                    ; $4CAF: $72

jr_012_4CB0:
    cp $66                                        ; $4CB0: $FE $66
    ld h, c                                       ; $4CB2: $61
    ld [hl], h                                    ; $4CB3: $74
    ld h, l                                       ; $4CB4: $65
    inc l                                         ; $4CB5: $2C

jr_012_4CB6:
    jr nz, jr_012_4D20                            ; $4CB6: $20 $68

    ld [hl], l                                    ; $4CB8: $75
    ld l, b                                       ; $4CB9: $68
    ccf                                           ; $4CBA: $3F
    cp $FD                                        ; $4CBB: $FE $FD
    sbc e                                         ; $4CBD: $9B
    ld a, b                                       ; $4CBE: $78
    ld [hl], b                                    ; $4CBF: $70
    sbc a                                         ; $4CC0: $9F
    ld d, a                                       ; $4CC1: $57
    ld l, b                                       ; $4CC2: $68
    ld h, c                                       ; $4CC3: $61

jr_012_4CC4:
    ld l, $2E                                     ; $4CC4: $2E $2E
    ld l, $2E                                     ; $4CC6: $2E $2E

jr_012_4CC8:
    ccf                                           ; $4CC8: $3F
    cp $57                                        ; $4CC9: $FE $57
    ld l, b                                       ; $4CCB: $68
    ld l, a                                       ; $4CCC: $6F
    jr nz, jr_012_4D30                            ; $4CCD: $20 $61

    ld [hl], d                                    ; $4CCF: $72
    ld h, l                                       ; $4CD0: $65
    jr nz, jr_012_4D4C                            ; $4CD1: $20 $79

    ld l, a                                       ; $4CD3: $6F
    ld [hl], l                                    ; $4CD4: $75
    ccf                                           ; $4CD5: $3F
    cp $FD                                        ; $4CD6: $FE $FD
    sbc d                                         ; $4CD8: $9A
    sbc a                                         ; $4CD9: $9F
    ld c, c                                       ; $4CDA: $49

jr_012_4CDB:
    daa                                           ; $4CDB: $27
    ld l, l                                       ; $4CDC: $6D
    jr nz, jr_012_4D58                            ; $4CDD: $20 $79

    ld l, a                                       ; $4CDF: $6F
    ld [hl], l                                    ; $4CE0: $75
    ld [hl], d                                    ; $4CE1: $72
    rst $38                                       ; $4CE2: $FF
    ld [hl], a                                    ; $4CE3: $77
    ld l, a                                       ; $4CE4: $6F
    ld [hl], d                                    ; $4CE5: $72
    ld [hl], e                                    ; $4CE6: $73
    ld [hl], h                                    ; $4CE7: $74
    cp $6E                                        ; $4CE8: $FE $6E
    ld l, c                                       ; $4CEA: $69
    ld h, a                                       ; $4CEB: $67
    ld l, b                                       ; $4CEC: $68
    ld [hl], h                                    ; $4CED: $74
    ld l, l                                       ; $4CEE: $6D
    ld h, c                                       ; $4CEF: $61
    ld [hl], d                                    ; $4CF0: $72
    ld h, l                                       ; $4CF1: $65
    ld l, $FE                                     ; $4CF2: $2E $FE
    db $FD                                        ; $4CF4: $FD
    sbc d                                         ; $4CF5: $9A
    ld d, l                                       ; $4CF6: $55
    ld b, d                                       ; $4CF7: $42
    ld b, a                                       ; $4CF8: $47
    ld [bc], a                                    ; $4CF9: $02
    ld [de], a                                    ; $4CFA: $12
    nop                                           ; $4CFB: $00
    ld c, l                                       ; $4CFC: $4D
    ld [de], a                                    ; $4CFD: $12
    inc e                                         ; $4CFE: $1C
    ld c, l                                       ; $4CFF: $4D
    sbc e                                         ; $4D00: $9B
    ld l, b                                       ; $4D01: $68
    ld h, d                                       ; $4D02: $62
    sbc a                                         ; $4D03: $9F
    ld b, a                                       ; $4D04: $47
    ld b, l                                       ; $4D05: $45
    ld d, h                                       ; $4D06: $54
    jr nz, jr_012_4D58                            ; $4D07: $20 $4F

    ld d, l                                       ; $4D09: $55
    ld d, h                                       ; $4D0A: $54
    rst $38                                       ; $4D0B: $FF
    ld e, c                                       ; $4D0C: $59
    ld c, a                                       ; $4D0D: $4F
    ld d, l                                       ; $4D0E: $55
    jr nz, jr_012_4D57                            ; $4D0F: $20 $46

    ld c, c                                       ; $4D11: $49
    ld b, l                                       ; $4D12: $45
    ld c, [hl]                                    ; $4D13: $4E
    ld b, h                                       ; $4D14: $44
    ld hl, $FE21                                  ; $4D15: $21 $21 $FE
    db $FD                                        ; $4D18: $FD
    sbc d                                         ; $4D19: $9A
    ld d, l                                       ; $4D1A: $55
    ld b, d                                       ; $4D1B: $42
    sbc e                                         ; $4D1C: $9B
    ld a, b                                       ; $4D1D: $78
    ld [hl], b                                    ; $4D1E: $70
    sbc a                                         ; $4D1F: $9F

jr_012_4D20:
    ld d, h                                       ; $4D20: $54
    ld l, b                                       ; $4D21: $68
    ld h, l                                       ; $4D22: $65
    jr nz, @+$66                                  ; $4D23: $20 $64

    ld l, a                                       ; $4D25: $6F

jr_012_4D26:
    ld l, a                                       ; $4D26: $6F
    ld [hl], d                                    ; $4D27: $72
    jr nz, jr_012_4D93                            ; $4D28: $20 $69

    ld [hl], e                                    ; $4D2A: $73
    rst $38                                       ; $4D2B: $FF
    ld h, d                                       ; $4D2C: $62
    ld h, c                                       ; $4D2D: $61
    ld [hl], d                                    ; $4D2E: $72
    ld [hl], d                                    ; $4D2F: $72

jr_012_4D30:
    ld l, c                                       ; $4D30: $69
    ld h, e                                       ; $4D31: $63
    ld h, c                                       ; $4D32: $61
    ld h, h                                       ; $4D33: $64
    ld h, l                                       ; $4D34: $65
    ld h, h                                       ; $4D35: $64
    cp $66                                        ; $4D36: $FE $66
    ld [hl], d                                    ; $4D38: $72
    ld l, a                                       ; $4D39: $6F
    ld l, l                                       ; $4D3A: $6D
    jr nz, jr_012_4DB1                            ; $4D3B: $20 $74

    ld l, b                                       ; $4D3D: $68
    ld h, l                                       ; $4D3E: $65
    rst $38                                       ; $4D3F: $FF
    ld l, c                                       ; $4D40: $69
    ld l, [hl]                                    ; $4D41: $6E
    ld [hl], e                                    ; $4D42: $73
    ld l, c                                       ; $4D43: $69
    ld h, h                                       ; $4D44: $64
    ld h, l                                       ; $4D45: $65
    ld l, $2E                                     ; $4D46: $2E $2E
    ld l, $FE                                     ; $4D48: $2E $FE
    db $FD                                        ; $4D4A: $FD
    sbc d                                         ; $4D4B: $9A

jr_012_4D4C:
    ld d, l                                       ; $4D4C: $55
    ld b, d                                       ; $4D4D: $42
    sbc a                                         ; $4D4E: $9F
    ld b, a                                       ; $4D4F: $47
    ld d, d                                       ; $4D50: $52
    ld b, c                                       ; $4D51: $41
    ld b, c                                       ; $4D52: $41
    ld b, c                                       ; $4D53: $41
    ld b, c                                       ; $4D54: $41
    ld b, c                                       ; $4D55: $41
    ld d, d                                       ; $4D56: $52

jr_012_4D57:
    ld d, d                                       ; $4D57: $52

jr_012_4D58:
    ld hl, $2121                                  ; $4D58: $21 $21 $21
    cp $FD                                        ; $4D5B: $FE $FD
    sbc d                                         ; $4D5D: $9A
    ld d, l                                       ; $4D5E: $55
    ld b, d                                       ; $4D5F: $42
    sbc e                                         ; $4D60: $9B
    ret c                                         ; $4D61: $D8

    ld h, b                                       ; $4D62: $60
    sbc a                                         ; $4D63: $9F
    ld d, h                                       ; $4D64: $54
    ld l, b                                       ; $4D65: $68
    ld h, c                                       ; $4D66: $61
    ld l, [hl]                                    ; $4D67: $6E
    ld l, e                                       ; $4D68: $6B
    ld [hl], e                                    ; $4D69: $73
    jr nz, jr_012_4DD2                            ; $4D6A: $20 $66

    ld l, a                                       ; $4D6C: $6F
    ld [hl], d                                    ; $4D6D: $72
    rst $38                                       ; $4D6E: $FF
    ld h, h                                       ; $4D6F: $64
    ld h, l                                       ; $4D70: $65
    ld h, [hl]                                    ; $4D71: $66
    ld h, l                                       ; $4D72: $65
    ld h, c                                       ; $4D73: $61
    ld [hl], h                                    ; $4D74: $74
    ld l, c                                       ; $4D75: $69
    ld l, [hl]                                    ; $4D76: $6E
    ld h, a                                       ; $4D77: $67
    jr nz, jr_012_4DEE                            ; $4D78: $20 $74

    ld l, b                                       ; $4D7A: $68
    ld h, l                                       ; $4D7B: $65
    cp $53                                        ; $4D7C: $FE $53
    ld l, b                                       ; $4D7E: $68
    ld h, c                                       ; $4D7F: $61
    ld h, h                                       ; $4D80: $64
    ld l, a                                       ; $4D81: $6F
    ld [hl], a                                    ; $4D82: $77
    jr nz, jr_012_4DD2                            ; $4D83: $20 $4D

    ld h, c                                       ; $4D85: $61
    ld h, a                                       ; $4D86: $67
    ld l, c                                       ; $4D87: $69
    ld l, $FE                                     ; $4D88: $2E $FE
    db $FD                                        ; $4D8A: $FD
    sbc d                                         ; $4D8B: $9A
    ld e, b                                       ; $4D8C: $58
    ld bc, $9B42                                  ; $4D8D: $01 $42 $9B
    ld l, b                                       ; $4D90: $68
    ld h, d                                       ; $4D91: $62
    sbc a                                         ; $4D92: $9F

jr_012_4D93:
    ld c, c                                       ; $4D93: $49
    jr nz, jr_012_4DF7                            ; $4D94: $20 $61

    ld l, l                                       ; $4D96: $6D
    jr nz, jr_012_4E0C                            ; $4D97: $20 $73

    ld l, a                                       ; $4D99: $6F
    jr nz, @+$68                                  ; $4D9A: $20 $66

    ld l, a                                       ; $4D9C: $6F
    ld l, a                                       ; $4D9D: $6F
    ld l, h                                       ; $4D9E: $6C
    ld l, c                                       ; $4D9F: $69
    ld [hl], e                                    ; $4DA0: $73
    ld l, b                                       ; $4DA1: $68
    rst $38                                       ; $4DA2: $FF
    ld h, [hl]                                    ; $4DA3: $66
    ld l, a                                       ; $4DA4: $6F
    ld [hl], d                                    ; $4DA5: $72
    jr nz, jr_012_4E0D                            ; $4DA6: $20 $65

    halt                                          ; $4DA8: $76
    ld h, l                                       ; $4DA9: $65
    ld [hl], d                                    ; $4DAA: $72
    cp $64                                        ; $4DAB: $FE $64
    ld l, a                                       ; $4DAD: $6F
    ld [hl], l                                    ; $4DAE: $75
    ld h, d                                       ; $4DAF: $62
    ld [hl], h                                    ; $4DB0: $74

jr_012_4DB1:
    ld l, c                                       ; $4DB1: $69
    ld l, [hl]                                    ; $4DB2: $6E
    ld h, a                                       ; $4DB3: $67
    jr nz, jr_012_4E2F                            ; $4DB4: $20 $79

    ld l, a                                       ; $4DB6: $6F
    ld [hl], l                                    ; $4DB7: $75
    ld l, $FE                                     ; $4DB8: $2E $FE
    db $FD                                        ; $4DBA: $FD
    sbc d                                         ; $4DBB: $9A
    ld e, b                                       ; $4DBC: $58
    ld bc, $9B42                                  ; $4DBD: $01 $42 $9B
    add hl, de                                    ; $4DC0: $19
    ld c, [hl]                                    ; $4DC1: $4E
    sbc a                                         ; $4DC2: $9F
    ld d, [hl]                                    ; $4DC3: $56
    ld h, c                                       ; $4DC4: $61
    ld l, h                                       ; $4DC5: $6C
    ld l, e                                       ; $4DC6: $6B
    ld h, c                                       ; $4DC7: $61
    ld l, [hl]                                    ; $4DC8: $6E
    jr nz, jr_012_4E36                            ; $4DC9: $20 $6B

    ld l, [hl]                                    ; $4DCB: $6E
    ld l, a                                       ; $4DCC: $6F
    ld [hl], a                                    ; $4DCD: $77
    ld [hl], e                                    ; $4DCE: $73
    rst $38                                       ; $4DCF: $FF
    ld h, l                                       ; $4DD0: $65
    halt                                          ; $4DD1: $76

jr_012_4DD2:
    ld h, l                                       ; $4DD2: $65
    ld [hl], d                                    ; $4DD3: $72
    ld a, c                                       ; $4DD4: $79
    ld [hl], h                                    ; $4DD5: $74
    ld l, b                                       ; $4DD6: $68
    ld l, c                                       ; $4DD7: $69
    ld l, [hl]                                    ; $4DD8: $6E
    ld h, a                                       ; $4DD9: $67
    ld hl, $59FE                                  ; $4DDA: $21 $FE $59
    ld l, a                                       ; $4DDD: $6F
    ld [hl], l                                    ; $4DDE: $75
    jr nz, jr_012_4E54                            ; $4DDF: $20 $73

    ld l, b                                       ; $4DE1: $68
    ld l, a                                       ; $4DE2: $6F
    ld [hl], l                                    ; $4DE3: $75
    ld l, h                                       ; $4DE4: $6C
    ld h, h                                       ; $4DE5: $64
    rst $38                                       ; $4DE6: $FF
    ld [hl], h                                    ; $4DE7: $74
    ld h, c                                       ; $4DE8: $61
    ld l, h                                       ; $4DE9: $6C
    ld l, e                                       ; $4DEA: $6B
    jr nz, jr_012_4E61                            ; $4DEB: $20 $74

    ld l, a                                       ; $4DED: $6F

jr_012_4DEE:
    jr nz, jr_012_4E58                            ; $4DEE: $20 $68

    ld l, c                                       ; $4DF0: $69
    ld l, l                                       ; $4DF1: $6D
    ld l, $FE                                     ; $4DF2: $2E $FE
    db $FD                                        ; $4DF4: $FD
    sbc d                                         ; $4DF5: $9A
    ld e, b                                       ; $4DF6: $58

jr_012_4DF7:
    ld bc, $9B42                                  ; $4DF7: $01 $42 $9B
    ret c                                         ; $4DFA: $D8

    ld h, b                                       ; $4DFB: $60
    sbc a                                         ; $4DFC: $9F
    ld c, h                                       ; $4DFD: $4C
    ld h, c                                       ; $4DFE: $61
    halt                                          ; $4DFF: $76
    ld h, c                                       ; $4E00: $61
    jr nz, jr_012_4E44                            ; $4E01: $20 $41

    ld [hl], d                                    ; $4E03: $72
    ld h, d                                       ; $4E04: $62
    ld l, a                                       ; $4E05: $6F
    ld l, h                                       ; $4E06: $6C
    ld l, h                                       ; $4E07: $6C
    ccf                                           ; $4E08: $3F
    cp $57                                        ; $4E09: $FE $57
    ld h, l                                       ; $4E0B: $65

jr_012_4E0C:
    ld [hl], d                                    ; $4E0C: $72

jr_012_4E0D:
    ld h, l                                       ; $4E0D: $65
    ld l, [hl]                                    ; $4E0E: $6E
    daa                                           ; $4E0F: $27
    ld [hl], h                                    ; $4E10: $74
    jr nz, jr_012_4E8C                            ; $4E11: $20 $79

    ld l, a                                       ; $4E13: $6F
    ld [hl], l                                    ; $4E14: $75
    rst $38                                       ; $4E15: $FF
    ld h, a                                       ; $4E16: $67
    ld l, a                                       ; $4E17: $6F
    ld l, c                                       ; $4E18: $69
    ld l, [hl]                                    ; $4E19: $6E
    ld h, a                                       ; $4E1A: $67
    jr nz, @+$76                                  ; $4E1B: $20 $74

    ld l, a                                       ; $4E1D: $6F
    jr nz, jr_012_4E82                            ; $4E1E: $20 $62

    ld [hl], l                                    ; $4E20: $75
    ld l, c                                       ; $4E21: $69
    ld l, h                                       ; $4E22: $6C
    ld h, h                                       ; $4E23: $64
    cp $61                                        ; $4E24: $FE $61
    jr nz, jr_012_4E8A                            ; $4E26: $20 $62

    ld [hl], d                                    ; $4E28: $72
    ld l, c                                       ; $4E29: $69
    ld h, h                                       ; $4E2A: $64
    ld h, a                                       ; $4E2B: $67
    ld h, l                                       ; $4E2C: $65
    jr nz, jr_012_4E9E                            ; $4E2D: $20 $6F

jr_012_4E2F:
    ld [hl], d                                    ; $4E2F: $72
    rst $38                                       ; $4E30: $FF
    ld [hl], e                                    ; $4E31: $73
    ld l, a                                       ; $4E32: $6F
    ld l, l                                       ; $4E33: $6D
    ld h, l                                       ; $4E34: $65
    ld [hl], h                                    ; $4E35: $74

jr_012_4E36:
    ld l, b                                       ; $4E36: $68
    ld l, c                                       ; $4E37: $69
    ld l, [hl]                                    ; $4E38: $6E
    ld h, a                                       ; $4E39: $67
    ccf                                           ; $4E3A: $3F
    cp $FD                                        ; $4E3B: $FE $FD
    sbc d                                         ; $4E3D: $9A
    ld e, b                                       ; $4E3E: $58
    ld bc, $9B42                                  ; $4E3F: $01 $42 $9B
    ld l, b                                       ; $4E42: $68
    ld h, d                                       ; $4E43: $62

jr_012_4E44:
    sbc a                                         ; $4E44: $9F
    ld c, h                                       ; $4E45: $4C
    ld h, c                                       ; $4E46: $61
    halt                                          ; $4E47: $76
    ld h, c                                       ; $4E48: $61
    jr nz, jr_012_4E8C                            ; $4E49: $20 $41

    ld [hl], d                                    ; $4E4B: $72
    ld h, d                                       ; $4E4C: $62
    ld l, a                                       ; $4E4D: $6F
    ld l, h                                       ; $4E4E: $6C
    ld l, h                                       ; $4E4F: $6C
    ld [hl], e                                    ; $4E50: $73
    rst $38                                       ; $4E51: $FF
    ld l, l                                       ; $4E52: $6D
    ld h, c                                       ; $4E53: $61

jr_012_4E54:
    ld l, e                                       ; $4E54: $6B
    ld h, l                                       ; $4E55: $65
    jr nz, jr_012_4EC4                            ; $4E56: $20 $6C

jr_012_4E58:
    ld l, a                                       ; $4E58: $6F
    ld a, c                                       ; $4E59: $79
    ld h, c                                       ; $4E5A: $61
    ld l, h                                       ; $4E5B: $6C
    cp $63                                        ; $4E5C: $FE $63
    ld l, a                                       ; $4E5E: $6F
    ld l, l                                       ; $4E5F: $6D
    ld [hl], b                                    ; $4E60: $70

jr_012_4E61:
    ld h, c                                       ; $4E61: $61
    ld l, [hl]                                    ; $4E62: $6E
    ld l, c                                       ; $4E63: $69
    ld l, a                                       ; $4E64: $6F
    ld l, [hl]                                    ; $4E65: $6E
    ld [hl], e                                    ; $4E66: $73
    ld l, $FE                                     ; $4E67: $2E $FE
    ld c, c                                       ; $4E69: $49
    ld h, [hl]                                    ; $4E6A: $66
    jr nz, jr_012_4EE6                            ; $4E6B: $20 $79

    ld l, a                                       ; $4E6D: $6F
    ld [hl], l                                    ; $4E6E: $75
    jr nz, @+$65                                  ; $4E6F: $20 $63

    ld h, c                                       ; $4E71: $61
    ld l, [hl]                                    ; $4E72: $6E
    rst $38                                       ; $4E73: $FF
    ld h, [hl]                                    ; $4E74: $66
    ld l, c                                       ; $4E75: $69
    ld l, [hl]                                    ; $4E76: $6E
    ld h, h                                       ; $4E77: $64
    jr nz, jr_012_4EEE                            ; $4E78: $20 $74

    ld l, b                                       ; $4E7A: $68
    ld h, l                                       ; $4E7B: $65
    ld l, l                                       ; $4E7C: $6D
    ld l, $FE                                     ; $4E7D: $2E $FE
    db $FD                                        ; $4E7F: $FD
    sbc d                                         ; $4E80: $9A
    ld e, b                                       ; $4E81: $58

jr_012_4E82:
    ld bc, $9B42                                  ; $4E82: $01 $42 $9B
    add hl, de                                    ; $4E85: $19
    ld c, [hl]                                    ; $4E86: $4E
    sbc a                                         ; $4E87: $9F
    ld c, b                                       ; $4E88: $48
    ld h, l                                       ; $4E89: $65

jr_012_4E8A:
    ld a, c                                       ; $4E8A: $79
    inc l                                         ; $4E8B: $2C

jr_012_4E8C:
    jr nz, jr_012_4EF2                            ; $4E8C: $20 $64

    ld l, c                                       ; $4E8E: $69
    ld h, h                                       ; $4E8F: $64
    jr nz, jr_012_4F0B                            ; $4E90: $20 $79

    ld l, a                                       ; $4E92: $6F
    ld [hl], l                                    ; $4E93: $75
    rst $38                                       ; $4E94: $FF
    ld l, e                                       ; $4E95: $6B
    ld l, [hl]                                    ; $4E96: $6E
    ld l, a                                       ; $4E97: $6F
    ld [hl], a                                    ; $4E98: $77
    ccf                                           ; $4E99: $3F
    cp $4C                                        ; $4E9A: $FE $4C
    ld h, c                                       ; $4E9C: $61
    halt                                          ; $4E9D: $76

jr_012_4E9E:
    ld h, c                                       ; $4E9E: $61
    jr nz, jr_012_4EE2                            ; $4E9F: $20 $41

    ld [hl], d                                    ; $4EA1: $72
    ld h, d                                       ; $4EA2: $62
    ld l, a                                       ; $4EA3: $6F
    ld l, h                                       ; $4EA4: $6C
    ld l, h                                       ; $4EA5: $6C
    ld [hl], e                                    ; $4EA6: $73
    rst $38                                       ; $4EA7: $FF
    ld l, h                                       ; $4EA8: $6C
    ld l, c                                       ; $4EA9: $69
    ld l, e                                       ; $4EAA: $6B
    ld h, l                                       ; $4EAB: $65
    jr nz, jr_012_4F22                            ; $4EAC: $20 $74

    ld l, b                                       ; $4EAE: $68
    ld h, l                                       ; $4EAF: $65
    jr nz, @+$75                                  ; $4EB0: $20 $73

    ld l, l                                       ; $4EB2: $6D
    ld h, l                                       ; $4EB3: $65
    ld l, h                                       ; $4EB4: $6C
    ld l, h                                       ; $4EB5: $6C
    cp $6F                                        ; $4EB6: $FE $6F
    ld h, [hl]                                    ; $4EB8: $66
    jr nz, jr_012_4F2F                            ; $4EB9: $20 $74

    ld l, b                                       ; $4EBB: $68
    ld l, a                                       ; $4EBC: $6F
    ld [hl], e                                    ; $4EBD: $73
    ld h, l                                       ; $4EBE: $65
    jr nz, jr_012_4F2D                            ; $4EBF: $20 $6C

    ld h, c                                       ; $4EC1: $61
    halt                                          ; $4EC2: $76
    ld h, c                                       ; $4EC3: $61

jr_012_4EC4:
    rst $38                                       ; $4EC4: $FF
    halt                                          ; $4EC5: $76
    ld h, l                                       ; $4EC6: $65
    ld l, [hl]                                    ; $4EC7: $6E
    ld [hl], h                                    ; $4EC8: $74
    ld [hl], e                                    ; $4EC9: $73
    jr nz, @+$50                                  ; $4ECA: $20 $4E

    ld l, a                                       ; $4ECC: $6F
    ld [hl], d                                    ; $4ECD: $72
    ld [hl], h                                    ; $4ECE: $74
    ld l, b                                       ; $4ECF: $68
    jr nz, jr_012_4F41                            ; $4ED0: $20 $6F

    ld h, [hl]                                    ; $4ED2: $66
    cp $68                                        ; $4ED3: $FE $68
    ld h, l                                       ; $4ED5: $65
    ld [hl], d                                    ; $4ED6: $72
    ld h, l                                       ; $4ED7: $65
    ld l, $FE                                     ; $4ED8: $2E $FE
    ld d, h                                       ; $4EDA: $54
    ld l, b                                       ; $4EDB: $68
    ld h, l                                       ; $4EDC: $65
    ld a, c                                       ; $4EDD: $79
    jr nz, jr_012_4F46                            ; $4EDE: $20 $66

    ld l, a                                       ; $4EE0: $6F
    ld l, h                                       ; $4EE1: $6C

jr_012_4EE2:
    ld l, h                                       ; $4EE2: $6C
    ld l, a                                       ; $4EE3: $6F
    ld [hl], a                                    ; $4EE4: $77
    rst $38                                       ; $4EE5: $FF

jr_012_4EE6:
    ld b, c                                       ; $4EE6: $41
    ld [hl], d                                    ; $4EE7: $72
    ld h, d                                       ; $4EE8: $62
    ld l, a                                       ; $4EE9: $6F
    ld l, h                                       ; $4EEA: $6C
    ld l, c                                       ; $4EEB: $69
    ld [hl], h                                    ; $4EEC: $74
    ld [hl], e                                    ; $4EED: $73

jr_012_4EEE:
    cp $61                                        ; $4EEE: $FE $61
    ld [hl], d                                    ; $4EF0: $72
    ld l, a                                       ; $4EF1: $6F

jr_012_4EF2:
    ld [hl], l                                    ; $4EF2: $75
    ld l, [hl]                                    ; $4EF3: $6E
    ld h, h                                       ; $4EF4: $64
    inc l                                         ; $4EF5: $2C
    jr nz, jr_012_4F64                            ; $4EF6: $20 $6C

    ld l, a                                       ; $4EF8: $6F
    ld l, a                                       ; $4EF9: $6F
    ld l, e                                       ; $4EFA: $6B
    ld l, c                                       ; $4EFB: $69
    ld l, [hl]                                    ; $4EFC: $6E
    ld h, a                                       ; $4EFD: $67
    rst $38                                       ; $4EFE: $FF
    ld h, [hl]                                    ; $4EFF: $66
    ld l, a                                       ; $4F00: $6F
    ld [hl], d                                    ; $4F01: $72
    jr nz, jr_012_4F69                            ; $4F02: $20 $65

    ld h, c                                       ; $4F04: $61
    ld [hl], e                                    ; $4F05: $73
    ld a, c                                       ; $4F06: $79
    jr nz, jr_012_4F79                            ; $4F07: $20 $70

    ld [hl], d                                    ; $4F09: $72
    ld h, l                                       ; $4F0A: $65

jr_012_4F0B:
    ld a, c                                       ; $4F0B: $79
    ld l, $FE                                     ; $4F0C: $2E $FE
    db $FD                                        ; $4F0E: $FD
    sbc d                                         ; $4F0F: $9A
    ld e, b                                       ; $4F10: $58
    ld bc, $9B42                                  ; $4F11: $01 $42 $9B
    ret c                                         ; $4F14: $D8

    ld h, b                                       ; $4F15: $60
    sbc a                                         ; $4F16: $9F
    ld c, b                                       ; $4F17: $48
    ld l, c                                       ; $4F18: $69
    ld l, $2E                                     ; $4F19: $2E $2E
    ld l, $FE                                     ; $4F1B: $2E $FE
    db $FD                                        ; $4F1D: $FD
    sbc a                                         ; $4F1E: $9F
    ld b, d                                       ; $4F1F: $42
    ld a, c                                       ; $4F20: $79
    ld h, l                                       ; $4F21: $65

jr_012_4F22:
    ld l, $2E                                     ; $4F22: $2E $2E
    ld l, $FE                                     ; $4F24: $2E $FE
    db $FD                                        ; $4F26: $FD
    sbc d                                         ; $4F27: $9A
    ld e, b                                       ; $4F28: $58
    ld bc, $9B42                                  ; $4F29: $01 $42 $9B
    ld l, b                                       ; $4F2C: $68

jr_012_4F2D:
    ld h, d                                       ; $4F2D: $62
    sbc a                                         ; $4F2E: $9F

jr_012_4F2F:
    ld b, h                                       ; $4F2F: $44
    ld l, a                                       ; $4F30: $6F
    ld l, [hl]                                    ; $4F31: $6E
    daa                                           ; $4F32: $27
    ld [hl], h                                    ; $4F33: $74
    jr nz, jr_012_4FAF                            ; $4F34: $20 $79

    ld l, a                                       ; $4F36: $6F
    ld [hl], l                                    ; $4F37: $75
    jr nz, jr_012_4FA2                            ; $4F38: $20 $68

    ld h, c                                       ; $4F3A: $61
    halt                                          ; $4F3B: $76
    ld h, l                                       ; $4F3C: $65
    rst $38                                       ; $4F3D: $FF
    ld [hl], e                                    ; $4F3E: $73
    ld l, a                                       ; $4F3F: $6F
    ld l, l                                       ; $4F40: $6D

jr_012_4F41:
    ld h, l                                       ; $4F41: $65
    ld [hl], h                                    ; $4F42: $74
    ld l, b                                       ; $4F43: $68
    ld l, c                                       ; $4F44: $69
    ld l, [hl]                                    ; $4F45: $6E

jr_012_4F46:
    ld h, a                                       ; $4F46: $67
    jr nz, jr_012_4FAE                            ; $4F47: $20 $65

    ld l, h                                       ; $4F49: $6C
    ld [hl], e                                    ; $4F4A: $73
    ld h, l                                       ; $4F4B: $65
    cp $74                                        ; $4F4C: $FE $74
    ld l, a                                       ; $4F4E: $6F
    jr nz, jr_012_4FB5                            ; $4F4F: $20 $64

    ld l, a                                       ; $4F51: $6F
    ccf                                           ; $4F52: $3F
    cp $FD                                        ; $4F53: $FE $FD
    sbc d                                         ; $4F55: $9A
    ld e, b                                       ; $4F56: $58
    ld bc, $9B42                                  ; $4F57: $01 $42 $9B
    add hl, de                                    ; $4F5A: $19
    ld c, [hl]                                    ; $4F5B: $4E
    sbc a                                         ; $4F5C: $9F
    ld d, a                                       ; $4F5D: $57
    ld l, b                                       ; $4F5E: $68
    ld h, c                                       ; $4F5F: $61
    ld [hl], h                                    ; $4F60: $74
    jr nz, @+$63                                  ; $4F61: $20 $61

    ld [hl], d                                    ; $4F63: $72

jr_012_4F64:
    ld h, l                                       ; $4F64: $65
    jr nz, jr_012_4FE0                            ; $4F65: $20 $79

    ld l, a                                       ; $4F67: $6F
    ld [hl], l                                    ; $4F68: $75

jr_012_4F69:
    rst $38                                       ; $4F69: $FF
    ld h, h                                       ; $4F6A: $64
    ld l, a                                       ; $4F6B: $6F
    ld l, c                                       ; $4F6C: $69
    ld l, [hl]                                    ; $4F6D: $6E
    ld h, a                                       ; $4F6E: $67
    jr nz, @+$6A                                  ; $4F6F: $20 $68

    ld h, l                                       ; $4F71: $65
    ld [hl], d                                    ; $4F72: $72
    ld h, l                                       ; $4F73: $65
    ccf                                           ; $4F74: $3F
    cp $FD                                        ; $4F75: $FE $FD
    sbc d                                         ; $4F77: $9A
    ld e, b                                       ; $4F78: $58

jr_012_4F79:
    ld bc, $9B42                                  ; $4F79: $01 $42 $9B
    ret c                                         ; $4F7C: $D8

    ld h, b                                       ; $4F7D: $60
    sbc a                                         ; $4F7E: $9F
    ld b, a                                       ; $4F7F: $47
    ld l, a                                       ; $4F80: $6F
    jr nz, jr_012_4FE4                            ; $4F81: $20 $61

    ld l, [hl]                                    ; $4F83: $6E
    ld h, h                                       ; $4F84: $64
    jr nz, @+$66                                  ; $4F85: $20 $64

    ld h, l                                       ; $4F87: $65
    ld h, c                                       ; $4F88: $61
    ld l, h                                       ; $4F89: $6C
    rst $38                                       ; $4F8A: $FF
    ld [hl], a                                    ; $4F8B: $77
    ld l, c                                       ; $4F8C: $69
    ld [hl], h                                    ; $4F8D: $74
    ld l, b                                       ; $4F8E: $68
    jr nz, jr_012_5005                            ; $4F8F: $20 $74

    ld l, b                                       ; $4F91: $68
    ld h, l                                       ; $4F92: $65
    cp $67                                        ; $4F93: $FE $67
    ld h, l                                       ; $4F95: $65
    ld a, c                                       ; $4F96: $79
    ld [hl], e                                    ; $4F97: $73
    ld h, l                                       ; $4F98: $65
    ld [hl], d                                    ; $4F99: $72
    ld l, $FE                                     ; $4F9A: $2E $FE
    ld c, [hl]                                    ; $4F9C: $4E
    ld c, a                                       ; $4F9D: $4F
    ld d, a                                       ; $4F9E: $57
    ld hl, $FDFE                                  ; $4F9F: $21 $FE $FD

jr_012_4FA2:
    sbc d                                         ; $4FA2: $9A
    ld e, b                                       ; $4FA3: $58
    ld bc, $9B42                                  ; $4FA4: $01 $42 $9B
    ld l, b                                       ; $4FA7: $68
    ld h, d                                       ; $4FA8: $62
    sbc a                                         ; $4FA9: $9F
    ld c, b                                       ; $4FAA: $48
    ld [hl], l                                    ; $4FAB: $75
    ld [hl], d                                    ; $4FAC: $72
    ld [hl], d                                    ; $4FAD: $72

jr_012_4FAE:
    ld a, c                                       ; $4FAE: $79

jr_012_4FAF:
    jr nz, jr_012_5026                            ; $4FAF: $20 $75

    ld [hl], b                                    ; $4FB1: $70
    ld hl, $FDFE                                  ; $4FB2: $21 $FE $FD

jr_012_4FB5:
    sbc d                                         ; $4FB5: $9A
    ld e, b                                       ; $4FB6: $58
    ld bc, $9B42                                  ; $4FB7: $01 $42 $9B
    add hl, de                                    ; $4FBA: $19
    ld c, [hl]                                    ; $4FBB: $4E
    sbc a                                         ; $4FBC: $9F
    ld b, c                                       ; $4FBD: $41
    ld [hl], d                                    ; $4FBE: $72
    ld h, l                                       ; $4FBF: $65
    ld l, [hl]                                    ; $4FC0: $6E
    daa                                           ; $4FC1: $27
    ld [hl], h                                    ; $4FC2: $74
    jr nz, jr_012_503E                            ; $4FC3: $20 $79

    ld l, a                                       ; $4FC5: $6F
    ld [hl], l                                    ; $4FC6: $75
    rst $38                                       ; $4FC7: $FF
    ld [hl], e                                    ; $4FC8: $73
    ld [hl], l                                    ; $4FC9: $75
    ld [hl], b                                    ; $4FCA: $70
    ld [hl], b                                    ; $4FCB: $70
    ld l, a                                       ; $4FCC: $6F
    ld [hl], e                                    ; $4FCD: $73
    ld h, l                                       ; $4FCE: $65
    ld h, h                                       ; $4FCF: $64
    jr nz, @+$76                                  ; $4FD0: $20 $74

    ld l, a                                       ; $4FD2: $6F
    cp $73                                        ; $4FD3: $FE $73
    ld [hl], h                                    ; $4FD5: $74
    ld l, a                                       ; $4FD6: $6F
    ld [hl], b                                    ; $4FD7: $70
    jr nz, jr_012_504E                            ; $4FD8: $20 $74

    ld l, b                                       ; $4FDA: $68
    ld h, c                                       ; $4FDB: $61
    ld [hl], h                                    ; $4FDC: $74
    rst $38                                       ; $4FDD: $FF
    ld h, a                                       ; $4FDE: $67
    ld h, l                                       ; $4FDF: $65

jr_012_4FE0:
    ld a, c                                       ; $4FE0: $79
    ld [hl], e                                    ; $4FE1: $73
    ld h, l                                       ; $4FE2: $65
    ld [hl], d                                    ; $4FE3: $72

jr_012_4FE4:
    ccf                                           ; $4FE4: $3F
    cp $FD                                        ; $4FE5: $FE $FD
    sbc d                                         ; $4FE7: $9A
    ld e, b                                       ; $4FE8: $58
    ld bc, $9B42                                  ; $4FE9: $01 $42 $9B
    ret c                                         ; $4FEC: $D8

    ld h, b                                       ; $4FED: $60
    sbc a                                         ; $4FEE: $9F
    ld d, [hl]                                    ; $4FEF: $56
    ld h, c                                       ; $4FF0: $61
    ld l, h                                       ; $4FF1: $6C
    ld l, e                                       ; $4FF2: $6B
    ld h, c                                       ; $4FF3: $61
    ld l, [hl]                                    ; $4FF4: $6E
    jr nz, jr_012_5060                            ; $4FF5: $20 $69

    ld [hl], e                                    ; $4FF7: $73
    jr nz, jr_012_506E                            ; $4FF8: $20 $74

    ld l, b                                       ; $4FFA: $68
    ld h, l                                       ; $4FFB: $65
    rst $38                                       ; $4FFC: $FF
    ld h, d                                       ; $4FFD: $62
    ld h, l                                       ; $4FFE: $65
    ld [hl], e                                    ; $4FFF: $73
    ld [hl], h                                    ; $5000: $74
    jr nz, jr_012_5065                            ; $5001: $20 $62

    ld [hl], d                                    ; $5003: $72
    ld l, c                                       ; $5004: $69

jr_012_5005:
    ld h, h                                       ; $5005: $64
    ld h, a                                       ; $5006: $67
    ld h, l                                       ; $5007: $65
    cp $62                                        ; $5008: $FE $62
    ld [hl], l                                    ; $500A: $75
    ld l, c                                       ; $500B: $69
    ld l, h                                       ; $500C: $6C
    ld h, h                                       ; $500D: $64
    ld h, l                                       ; $500E: $65
    ld [hl], d                                    ; $500F: $72
    jr nz, @+$6B                                  ; $5010: $20 $69

    ld l, [hl]                                    ; $5012: $6E
    rst $38                                       ; $5013: $FF
    ld l, a                                       ; $5014: $6F
    ld [hl], l                                    ; $5015: $75
    ld [hl], d                                    ; $5016: $72
    jr nz, jr_012_508D                            ; $5017: $20 $74

    ld l, a                                       ; $5019: $6F
    ld [hl], a                                    ; $501A: $77
    ld l, [hl]                                    ; $501B: $6E
    ld l, $FE                                     ; $501C: $2E $FE
    db $FD                                        ; $501E: $FD
    sbc d                                         ; $501F: $9A
    ld e, b                                       ; $5020: $58
    ld bc, $9B42                                  ; $5021: $01 $42 $9B
    ld l, b                                       ; $5024: $68
    ld h, d                                       ; $5025: $62

jr_012_5026:
    sbc a                                         ; $5026: $9F
    ld d, b                                       ; $5027: $50
    ld [hl], d                                    ; $5028: $72
    ld h, c                                       ; $5029: $61
    ld l, c                                       ; $502A: $69
    ld [hl], e                                    ; $502B: $73
    ld h, l                                       ; $502C: $65
    jr nz, jr_012_5085                            ; $502D: $20 $56

    ld h, c                                       ; $502F: $61
    ld l, h                                       ; $5030: $6C
    ld l, e                                       ; $5031: $6B
    ld h, c                                       ; $5032: $61
    ld l, [hl]                                    ; $5033: $6E
    ld hl, $FDFE                                  ; $5034: $21 $FE $FD
    sbc d                                         ; $5037: $9A
    ld e, b                                       ; $5038: $58
    ld bc, $9B42                                  ; $5039: $01 $42 $9B
    add hl, de                                    ; $503C: $19
    ld c, [hl]                                    ; $503D: $4E

jr_012_503E:
    sbc a                                         ; $503E: $9F
    ld d, [hl]                                    ; $503F: $56
    ld h, c                                       ; $5040: $61
    ld l, h                                       ; $5041: $6C
    ld l, e                                       ; $5042: $6B
    ld h, c                                       ; $5043: $61
    ld l, [hl]                                    ; $5044: $6E
    jr nz, jr_012_50B0                            ; $5045: $20 $69

    ld [hl], e                                    ; $5047: $73
    jr nz, jr_012_50AB                            ; $5048: $20 $61

    rst $38                                       ; $504A: $FF
    ld l, b                                       ; $504B: $68
    ld h, l                                       ; $504C: $65
    ld [hl], d                                    ; $504D: $72

jr_012_504E:
    ld l, a                                       ; $504E: $6F
    jr nz, jr_012_50BA                            ; $504F: $20 $69

    ld l, [hl]                                    ; $5051: $6E
    jr nz, jr_012_50C3                            ; $5052: $20 $6F

    ld [hl], l                                    ; $5054: $75
    ld [hl], d                                    ; $5055: $72
    cp $74                                        ; $5056: $FE $74
    ld l, a                                       ; $5058: $6F
    ld [hl], a                                    ; $5059: $77
    ld l, [hl]                                    ; $505A: $6E
    ld l, $FE                                     ; $505B: $2E $FE
    db $FD                                        ; $505D: $FD
    sbc d                                         ; $505E: $9A
    ld e, b                                       ; $505F: $58

jr_012_5060:
    ld bc, $9B42                                  ; $5060: $01 $42 $9B
    ret c                                         ; $5063: $D8

    ld h, b                                       ; $5064: $60

jr_012_5065:
    sbc a                                         ; $5065: $9F
    ld e, c                                       ; $5066: $59
    ld l, a                                       ; $5067: $6F
    ld [hl], l                                    ; $5068: $75
    jr nz, jr_012_50D0                            ; $5069: $20 $65

    ld [hl], e                                    ; $506B: $73
    ld h, e                                       ; $506C: $63
    ld h, c                                       ; $506D: $61

jr_012_506E:
    ld [hl], b                                    ; $506E: $70
    ld h, l                                       ; $506F: $65
    ld h, h                                       ; $5070: $64
    ld hl, $59FE                                  ; $5071: $21 $FE $59
    ld l, a                                       ; $5074: $6F
    ld [hl], l                                    ; $5075: $75
    jr nz, jr_012_50D9                            ; $5076: $20 $61

    ld [hl], d                                    ; $5078: $72
    ld h, l                                       ; $5079: $65
    jr nz, jr_012_50F0                            ; $507A: $20 $74

    ld l, b                                       ; $507C: $68
    ld h, l                                       ; $507D: $65
    rst $38                                       ; $507E: $FF
    ld l, l                                       ; $507F: $6D
    ld h, c                                       ; $5080: $61
    ld l, [hl]                                    ; $5081: $6E
    inc l                                         ; $5082: $2C
    jr nz, jr_012_50D9                            ; $5083: $20 $54

jr_012_5085:
    ld l, a                                       ; $5085: $6F
    ld l, [hl]                                    ; $5086: $6E
    ld a, c                                       ; $5087: $79
    ld hl, $FDFE                                  ; $5088: $21 $FE $FD
    sbc d                                         ; $508B: $9A
    ld e, b                                       ; $508C: $58

jr_012_508D:
    ld bc, $9B42                                  ; $508D: $01 $42 $9B
    ld l, b                                       ; $5090: $68
    ld h, d                                       ; $5091: $62
    sbc a                                         ; $5092: $9F
    ld d, b                                       ; $5093: $50
    ld [hl], d                                    ; $5094: $72
    ld h, c                                       ; $5095: $61
    ld l, c                                       ; $5096: $69
    ld [hl], e                                    ; $5097: $73
    ld h, l                                       ; $5098: $65
    jr nz, jr_012_50EF                            ; $5099: $20 $54

    ld c, a                                       ; $509B: $4F
    ld c, [hl]                                    ; $509C: $4E
    ld e, c                                       ; $509D: $59
    ld hl, $FDFE                                  ; $509E: $21 $FE $FD
    sbc d                                         ; $50A1: $9A
    ld e, b                                       ; $50A2: $58
    ld bc, $9B42                                  ; $50A3: $01 $42 $9B
    add hl, de                                    ; $50A6: $19
    ld c, [hl]                                    ; $50A7: $4E
    sbc a                                         ; $50A8: $9F
    ld d, h                                       ; $50A9: $54
    ld l, a                                       ; $50AA: $6F

jr_012_50AB:
    ld l, [hl]                                    ; $50AB: $6E
    ld a, c                                       ; $50AC: $79
    jr nz, jr_012_5118                            ; $50AD: $20 $69

    ld [hl], e                                    ; $50AF: $73

jr_012_50B0:
    jr nz, jr_012_5113                            ; $50B0: $20 $61

    rst $38                                       ; $50B2: $FF
    ld l, b                                       ; $50B3: $68
    ld h, l                                       ; $50B4: $65
    ld [hl], d                                    ; $50B5: $72
    ld l, a                                       ; $50B6: $6F
    jr nz, jr_012_5122                            ; $50B7: $20 $69

    ld l, [hl]                                    ; $50B9: $6E

jr_012_50BA:
    jr nz, @+$71                                  ; $50BA: $20 $6F

    ld [hl], l                                    ; $50BC: $75
    ld [hl], d                                    ; $50BD: $72
    cp $74                                        ; $50BE: $FE $74
    ld l, a                                       ; $50C0: $6F
    ld [hl], a                                    ; $50C1: $77
    ld l, [hl]                                    ; $50C2: $6E

jr_012_50C3:
    ld l, $FE                                     ; $50C3: $2E $FE
    db $FD                                        ; $50C5: $FD
    sbc d                                         ; $50C6: $9A
    ld e, b                                       ; $50C7: $58
    ld bc, $9B42                                  ; $50C8: $01 $42 $9B
    add hl, bc                                    ; $50CB: $09
    ld b, b                                       ; $50CC: $40
    sbc a                                         ; $50CD: $9F
    ld d, a                                       ; $50CE: $57
    ld h, l                                       ; $50CF: $65

jr_012_50D0:
    ld l, h                                       ; $50D0: $6C
    ld l, h                                       ; $50D1: $6C
    inc l                                         ; $50D2: $2C
    jr nz, jr_012_514C                            ; $50D3: $20 $77

    ld l, b                                       ; $50D5: $68
    ld h, c                                       ; $50D6: $61
    ld [hl], h                                    ; $50D7: $74
    rst $38                                       ; $50D8: $FF

jr_012_50D9:
    ld h, h                                       ; $50D9: $64
    ld l, c                                       ; $50DA: $69
    ld h, h                                       ; $50DB: $64
    jr nz, jr_012_5157                            ; $50DC: $20 $79

    ld l, a                                       ; $50DE: $6F
    ld [hl], l                                    ; $50DF: $75
    jr nz, jr_012_5148                            ; $50E0: $20 $66

    ld l, c                                       ; $50E2: $69
    ld l, [hl]                                    ; $50E3: $6E
    ld h, h                                       ; $50E4: $64
    ccf                                           ; $50E5: $3F
    cp $57                                        ; $50E6: $FE $57
    ld l, b                                       ; $50E8: $68
    ld l, a                                       ; $50E9: $6F
    daa                                           ; $50EA: $27
    ld [hl], e                                    ; $50EB: $73
    jr nz, jr_012_5162                            ; $50EC: $20 $74

    ld l, b                                       ; $50EE: $68

jr_012_50EF:
    ld l, c                                       ; $50EF: $69

jr_012_50F0:
    ld [hl], e                                    ; $50F0: $73
    ccf                                           ; $50F1: $3F
    cp $FD                                        ; $50F2: $FE $FD
    sbc d                                         ; $50F4: $9A
    ld e, b                                       ; $50F5: $58
    ld bc, $9B42                                  ; $50F6: $01 $42 $9B
    add hl, de                                    ; $50F9: $19
    ld c, [hl]                                    ; $50FA: $4E
    sbc a                                         ; $50FB: $9F
    ld d, h                                       ; $50FC: $54
    ld l, b                                       ; $50FD: $68
    ld h, l                                       ; $50FE: $65
    ld [hl], d                                    ; $50FF: $72
    ld h, l                                       ; $5100: $65
    daa                                           ; $5101: $27
    ld [hl], e                                    ; $5102: $73
    jr nz, jr_012_5179                            ; $5103: $20 $74

    ld l, b                                       ; $5105: $68
    ld l, c                                       ; $5106: $69
    ld [hl], e                                    ; $5107: $73
    rst $38                                       ; $5108: $FF
    ld l, b                                       ; $5109: $68
    ld [hl], l                                    ; $510A: $75
    ld h, a                                       ; $510B: $67
    ld h, l                                       ; $510C: $65
    jr nz, jr_012_5171                            ; $510D: $20 $62

    ld l, h                                       ; $510F: $6C
    ld h, c                                       ; $5110: $61
    ld h, e                                       ; $5111: $63
    ld l, e                                       ; $5112: $6B

jr_012_5113:
    cp $6D                                        ; $5113: $FE $6D
    ld h, c                                       ; $5115: $61
    ld [hl], e                                    ; $5116: $73
    ld [hl], e                                    ; $5117: $73

jr_012_5118:
    jr nz, jr_012_517D                            ; $5118: $20 $63

    ld l, a                                       ; $511A: $6F
    ld l, l                                       ; $511B: $6D
    ld l, c                                       ; $511C: $69
    ld l, [hl]                                    ; $511D: $6E
    ld h, a                                       ; $511E: $67
    rst $38                                       ; $511F: $FF
    ld l, a                                       ; $5120: $6F
    ld [hl], l                                    ; $5121: $75

jr_012_5122:
    ld [hl], h                                    ; $5122: $74
    jr nz, jr_012_5194                            ; $5123: $20 $6F

    ld h, [hl]                                    ; $5125: $66
    jr nz, jr_012_519C                            ; $5126: $20 $74

    ld l, b                                       ; $5128: $68
    ld h, l                                       ; $5129: $65
    cp $6C                                        ; $512A: $FE $6C
    ld h, c                                       ; $512C: $61
    halt                                          ; $512D: $76
    ld h, c                                       ; $512E: $61
    jr nz, jr_012_51A1                            ; $512F: $20 $70

    ld l, a                                       ; $5131: $6F
    ld l, a                                       ; $5132: $6F
    ld l, h                                       ; $5133: $6C
    jr nz, jr_012_51AB                            ; $5134: $20 $75

    ld [hl], b                                    ; $5136: $70
    rst $38                                       ; $5137: $FF
    ld [hl], h                                    ; $5138: $74
    ld l, b                                       ; $5139: $68
    ld h, l                                       ; $513A: $65
    ld [hl], d                                    ; $513B: $72
    ld h, l                                       ; $513C: $65
    ld hl, $FDFE                                  ; $513D: $21 $FE $FD
    sbc e                                         ; $5140: $9B
    ret c                                         ; $5141: $D8

    ld h, b                                       ; $5142: $60
    sbc a                                         ; $5143: $9F
    ld d, a                                       ; $5144: $57
    ld h, l                                       ; $5145: $65
    jr nz, jr_012_51AE                            ; $5146: $20 $66

jr_012_5148:
    ld l, a                                       ; $5148: $6F
    ld [hl], l                                    ; $5149: $75
    ld l, [hl]                                    ; $514A: $6E
    ld h, h                                       ; $514B: $64

jr_012_514C:
    jr nz, jr_012_51C2                            ; $514C: $20 $74

    ld l, b                                       ; $514E: $68
    ld l, c                                       ; $514F: $69
    ld [hl], e                                    ; $5150: $73
    rst $38                                       ; $5151: $FF
    ld l, e                                       ; $5152: $6B
    ld l, c                                       ; $5153: $69
    ld h, h                                       ; $5154: $64
    jr nz, jr_012_51BF                            ; $5155: $20 $68

jr_012_5157:
    ld h, c                                       ; $5157: $61
    ld l, [hl]                                    ; $5158: $6E
    ld h, a                                       ; $5159: $67
    ld l, c                                       ; $515A: $69
    ld l, [hl]                                    ; $515B: $6E
    ld h, a                                       ; $515C: $67
    cp $61                                        ; $515D: $FE $61
    ld [hl], d                                    ; $515F: $72
    ld l, a                                       ; $5160: $6F
    ld [hl], l                                    ; $5161: $75

jr_012_5162:
    ld l, [hl]                                    ; $5162: $6E
    ld h, h                                       ; $5163: $64
    jr nz, jr_012_51DD                            ; $5164: $20 $77

    ld l, b                                       ; $5166: $68
    ld h, l                                       ; $5167: $65
    ld [hl], d                                    ; $5168: $72
    ld h, l                                       ; $5169: $65
    rst $38                                       ; $516A: $FF
    ld l, c                                       ; $516B: $69
    ld [hl], h                                    ; $516C: $74
    jr nz, jr_012_51D0                            ; $516D: $20 $61

    ld [hl], b                                    ; $516F: $70
    ld [hl], b                                    ; $5170: $70

jr_012_5171:
    ld h, l                                       ; $5171: $65
    ld h, c                                       ; $5172: $61
    ld [hl], d                                    ; $5173: $72
    ld h, l                                       ; $5174: $65
    ld h, h                                       ; $5175: $64
    ld l, $FE                                     ; $5176: $2E $FE
    ld d, a                                       ; $5178: $57

jr_012_5179:
    ld h, l                                       ; $5179: $65
    daa                                           ; $517A: $27
    ld l, h                                       ; $517B: $6C
    ld l, h                                       ; $517C: $6C

jr_012_517D:
    jr nz, jr_012_51EB                            ; $517D: $20 $6C

    ld h, l                                       ; $517F: $65
    ld [hl], h                                    ; $5180: $74
    jr nz, jr_012_51FC                            ; $5181: $20 $79

    ld l, a                                       ; $5183: $6F
    ld [hl], l                                    ; $5184: $75
    rst $38                                       ; $5185: $FF
    ld l, b                                       ; $5186: $68
    ld h, c                                       ; $5187: $61
    ld l, [hl]                                    ; $5188: $6E
    ld h, h                                       ; $5189: $64
    ld l, h                                       ; $518A: $6C
    ld h, l                                       ; $518B: $65
    jr nz, jr_012_51F7                            ; $518C: $20 $69

    ld [hl], h                                    ; $518E: $74
    ld l, $20                                     ; $518F: $2E $20
    ld b, d                                       ; $5191: $42
    ld a, c                                       ; $5192: $79
    ld h, l                                       ; $5193: $65

jr_012_5194:
    ld hl, $FDFE                                  ; $5194: $21 $FE $FD
    sbc d                                         ; $5197: $9A
    ld e, b                                       ; $5198: $58
    ld [bc], a                                    ; $5199: $02
    ld b, d                                       ; $519A: $42
    sbc e                                         ; $519B: $9B

jr_012_519C:
    add hl, bc                                    ; $519C: $09
    ld b, b                                       ; $519D: $40
    sbc a                                         ; $519E: $9F
    ld c, c                                       ; $519F: $49
    daa                                           ; $51A0: $27

jr_012_51A1:
    ld l, h                                       ; $51A1: $6C
    ld l, h                                       ; $51A2: $6C
    jr nz, jr_012_5209                            ; $51A3: $20 $64

    ld h, l                                       ; $51A5: $65
    ld h, c                                       ; $51A6: $61
    ld l, h                                       ; $51A7: $6C
    jr nz, jr_012_5221                            ; $51A8: $20 $77

    ld l, c                                       ; $51AA: $69

jr_012_51AB:
    ld [hl], h                                    ; $51AB: $74
    ld l, b                                       ; $51AC: $68
    rst $38                                       ; $51AD: $FF

jr_012_51AE:
    ld a, c                                       ; $51AE: $79
    ld l, a                                       ; $51AF: $6F
    ld [hl], l                                    ; $51B0: $75
    jr nz, jr_012_521F                            ; $51B1: $20 $6C

    ld h, c                                       ; $51B3: $61
    ld [hl], h                                    ; $51B4: $74
    ld h, l                                       ; $51B5: $65
    ld [hl], d                                    ; $51B6: $72
    ld l, $20                                     ; $51B7: $2E $20
    ld c, c                                       ; $51B9: $49
    daa                                           ; $51BA: $27
    ld l, l                                       ; $51BB: $6D
    cp $67                                        ; $51BC: $FE $67
    ld l, a                                       ; $51BE: $6F

jr_012_51BF:
    ld l, c                                       ; $51BF: $69
    ld l, [hl]                                    ; $51C0: $6E
    ld h, a                                       ; $51C1: $67

jr_012_51C2:
    jr nz, jr_012_5238                            ; $51C2: $20 $74

    ld l, a                                       ; $51C4: $6F
    jr nz, jr_012_522F                            ; $51C5: $20 $68

    ld h, c                                       ; $51C7: $61
    halt                                          ; $51C8: $76
    ld h, l                                       ; $51C9: $65
    rst $38                                       ; $51CA: $FF
    ld h, c                                       ; $51CB: $61
    jr nz, jr_012_523A                            ; $51CC: $20 $6C

    ld l, a                                       ; $51CE: $6F
    ld l, a                                       ; $51CF: $6F

jr_012_51D0:
    ld l, e                                       ; $51D0: $6B
    jr nz, @+$63                                  ; $51D1: $20 $61

    ld [hl], h                                    ; $51D3: $74
    jr nz, jr_012_524A                            ; $51D4: $20 $74

    ld l, b                                       ; $51D6: $68
    ld l, c                                       ; $51D7: $69
    ld [hl], e                                    ; $51D8: $73
    cp $27                                        ; $51D9: $FE $27
    ld h, d                                       ; $51DB: $62
    ld l, h                                       ; $51DC: $6C

jr_012_51DD:
    ld h, c                                       ; $51DD: $61
    ld h, e                                       ; $51DE: $63
    ld l, e                                       ; $51DF: $6B
    jr nz, jr_012_524F                            ; $51E0: $20 $6D

    ld h, c                                       ; $51E2: $61
    ld [hl], e                                    ; $51E3: $73
    ld [hl], e                                    ; $51E4: $73
    daa                                           ; $51E5: $27
    ld l, $FE                                     ; $51E6: $2E $FE
    ld b, h                                       ; $51E8: $44
    ld l, a                                       ; $51E9: $6F
    ld l, [hl]                                    ; $51EA: $6E

jr_012_51EB:
    daa                                           ; $51EB: $27
    ld [hl], h                                    ; $51EC: $74
    jr nz, @+$7B                                  ; $51ED: $20 $79

    ld l, a                                       ; $51EF: $6F
    ld [hl], l                                    ; $51F0: $75
    jr nz, jr_012_5257                            ; $51F1: $20 $64

    ld h, c                                       ; $51F3: $61
    ld [hl], d                                    ; $51F4: $72
    ld h, l                                       ; $51F5: $65
    rst $38                                       ; $51F6: $FF

jr_012_51F7:
    ld h, a                                       ; $51F7: $67
    ld l, a                                       ; $51F8: $6F
    jr nz, jr_012_525C                            ; $51F9: $20 $61

    ld l, [hl]                                    ; $51FB: $6E

jr_012_51FC:
    ld a, c                                       ; $51FC: $79
    ld [hl], a                                    ; $51FD: $77
    ld l, b                                       ; $51FE: $68
    ld h, l                                       ; $51FF: $65
    ld [hl], d                                    ; $5200: $72
    ld h, l                                       ; $5201: $65
    ld hl, $FDFE                                  ; $5202: $21 $FE $FD
    sbc d                                         ; $5205: $9A
    ld e, b                                       ; $5206: $58
    inc bc                                        ; $5207: $03
    ld b, d                                       ; $5208: $42

jr_012_5209:
    sbc e                                         ; $5209: $9B
    add hl, de                                    ; $520A: $19
    ld c, [hl]                                    ; $520B: $4E
    sbc a                                         ; $520C: $9F
    ld b, l                                       ; $520D: $45
    ld b, l                                       ; $520E: $45
    ld b, l                                       ; $520F: $45
    ld b, l                                       ; $5210: $45
    ld c, e                                       ; $5211: $4B
    ld hl, $5320                                  ; $5212: $21 $20 $53
    ld c, b                                       ; $5215: $48
    ld b, c                                       ; $5216: $41
    ld b, h                                       ; $5217: $44
    ld c, a                                       ; $5218: $4F
    ld d, a                                       ; $5219: $57
    rst $38                                       ; $521A: $FF
    ld c, l                                       ; $521B: $4D
    ld b, c                                       ; $521C: $41
    ld b, a                                       ; $521D: $47
    ld c, c                                       ; $521E: $49

jr_012_521F:
    jr nz, jr_012_5262                            ; $521F: $20 $41

jr_012_5221:
    ld d, d                                       ; $5221: $52
    ld b, l                                       ; $5222: $45
    jr nz, jr_012_5271                            ; $5223: $20 $4C

    ld b, c                                       ; $5225: $41
    ld e, c                                       ; $5226: $59
    ld c, c                                       ; $5227: $49
    ld c, [hl]                                    ; $5228: $4E
    ld b, a                                       ; $5229: $47
    cp $57                                        ; $522A: $FE $57
    ld b, c                                       ; $522C: $41
    ld d, e                                       ; $522D: $53
    ld d, h                                       ; $522E: $54

jr_012_522F:
    ld b, l                                       ; $522F: $45
    jr nz, jr_012_5286                            ; $5230: $20 $54

    ld c, a                                       ; $5232: $4F
    jr nz, jr_012_5289                            ; $5233: $20 $54

    ld c, b                                       ; $5235: $48
    ld b, l                                       ; $5236: $45
    rst $38                                       ; $5237: $FF

jr_012_5238:
    ld d, h                                       ; $5238: $54
    ld c, a                                       ; $5239: $4F

jr_012_523A:
    ld d, a                                       ; $523A: $57
    ld c, [hl]                                    ; $523B: $4E
    ld hl, $4820                                  ; $523C: $21 $20 $48
    ld b, l                                       ; $523F: $45
    ld c, h                                       ; $5240: $4C
    ld d, b                                       ; $5241: $50
    ld hl, $FE21                                  ; $5242: $21 $21 $FE
    db $FD                                        ; $5245: $FD
    sbc d                                         ; $5246: $9A
    ld e, b                                       ; $5247: $58
    inc b                                         ; $5248: $04
    ld b, d                                       ; $5249: $42

jr_012_524A:
    sbc e                                         ; $524A: $9B
    add hl, de                                    ; $524B: $19
    ld c, [hl]                                    ; $524C: $4E
    sbc a                                         ; $524D: $9F
    ld d, d                                       ; $524E: $52

jr_012_524F:
    ld d, l                                       ; $524F: $55
    ld c, [hl]                                    ; $5250: $4E
    jr nz, jr_012_5299                            ; $5251: $20 $46

    ld c, a                                       ; $5253: $4F

jr_012_5254:
    ld d, d                                       ; $5254: $52
    jr nz, jr_012_52B0                            ; $5255: $20 $59

jr_012_5257:
    ld c, a                                       ; $5257: $4F
    ld d, l                                       ; $5258: $55
    ld d, d                                       ; $5259: $52
    rst $38                                       ; $525A: $FF
    ld c, h                                       ; $525B: $4C

jr_012_525C:
    ld c, c                                       ; $525C: $49
    ld c, c                                       ; $525D: $49
    ld c, c                                       ; $525E: $49
    ld c, c                                       ; $525F: $49
    ld c, c                                       ; $5260: $49
    ld c, c                                       ; $5261: $49

jr_012_5262:
    ld c, c                                       ; $5262: $49
    ld d, [hl]                                    ; $5263: $56
    ld b, l                                       ; $5264: $45
    ld d, e                                       ; $5265: $53
    ld hl, $2121                                  ; $5266: $21 $21 $21
    rst $38                                       ; $5269: $FF
    db $FD                                        ; $526A: $FD
    ld b, b                                       ; $526B: $40
    ld b, b                                       ; $526C: $40
    sbc d                                         ; $526D: $9A
    ld e, b                                       ; $526E: $58
    dec b                                         ; $526F: $05
    ld b, d                                       ; $5270: $42

jr_012_5271:
    sbc e                                         ; $5271: $9B
    add hl, bc                                    ; $5272: $09
    ld b, b                                       ; $5273: $40
    sbc a                                         ; $5274: $9F
    ld e, c                                       ; $5275: $59
    ld l, a                                       ; $5276: $6F
    ld [hl], l                                    ; $5277: $75
    jr nz, jr_012_52EF                            ; $5278: $20 $75

    ld l, [hl]                                    ; $527A: $6E
    ld l, h                                       ; $527B: $6C
    ld h, l                                       ; $527C: $65
    ld h, c                                       ; $527D: $61
    ld [hl], e                                    ; $527E: $73
    ld l, b                                       ; $527F: $68
    ld h, l                                       ; $5280: $65
    ld h, h                                       ; $5281: $64
    rst $38                                       ; $5282: $FF
    ld [hl], h                                    ; $5283: $74
    ld l, b                                       ; $5284: $68
    ld l, c                                       ; $5285: $69

jr_012_5286:
    ld [hl], e                                    ; $5286: $73
    jr nz, jr_012_52FE                            ; $5287: $20 $75

jr_012_5289:
    ld [hl], b                                    ; $5289: $70
    ld l, a                                       ; $528A: $6F
    ld l, [hl]                                    ; $528B: $6E
    jr nz, jr_012_5303                            ; $528C: $20 $75

    ld [hl], e                                    ; $528E: $73
    cp $79                                        ; $528F: $FE $79
    ld l, a                                       ; $5291: $6F
    ld [hl], l                                    ; $5292: $75
    jr nz, jr_012_52FB                            ; $5293: $20 $66

    ld l, c                                       ; $5295: $69
    ld h, l                                       ; $5296: $65
    ld l, [hl]                                    ; $5297: $6E
    ld h, h                                       ; $5298: $64

jr_012_5299:
    ld hl, $59FF                                  ; $5299: $21 $FF $59
    ld l, a                                       ; $529C: $6F
    ld [hl], l                                    ; $529D: $75
    daa                                           ; $529E: $27
    ld l, h                                       ; $529F: $6C
    ld l, h                                       ; $52A0: $6C
    jr nz, jr_012_5313                            ; $52A1: $20 $70

    ld h, c                                       ; $52A3: $61
    ld a, c                                       ; $52A4: $79
    jr nz, jr_012_530D                            ; $52A5: $20 $66

    ld l, a                                       ; $52A7: $6F
    ld [hl], d                                    ; $52A8: $72
    cp $74                                        ; $52A9: $FE $74
    ld l, b                                       ; $52AB: $68
    ld l, c                                       ; $52AC: $69
    ld [hl], e                                    ; $52AD: $73
    jr nz, jr_012_5313                            ; $52AE: $20 $63

jr_012_52B0:
    ld [hl], d                                    ; $52B0: $72
    ld l, c                                       ; $52B1: $69
    ld l, l                                       ; $52B2: $6D
    ld h, l                                       ; $52B3: $65
    ld hl, $FDFF                                  ; $52B4: $21 $FF $FD
    ld b, b                                       ; $52B7: $40
    jr nc, jr_012_5254                            ; $52B8: $30 $9A

    ld e, b                                       ; $52BA: $58
    ld b, $40                                     ; $52BB: $06 $40
    ld b, b                                       ; $52BD: $40
    ld e, b                                       ; $52BE: $58
    ld a, [bc]                                    ; $52BF: $0A
    ld b, d                                       ; $52C0: $42
    sbc e                                         ; $52C1: $9B
    jr z, jr_012_5339                             ; $52C2: $28 $75

    sbc a                                         ; $52C4: $9F
    ld c, c                                       ; $52C5: $49
    jr nz, jr_012_533A                            ; $52C6: $20 $72

    ld h, l                                       ; $52C8: $65
    ld h, c                                       ; $52C9: $61
    ld l, h                                       ; $52CA: $6C
    ld l, h                                       ; $52CB: $6C
    ld a, c                                       ; $52CC: $79
    jr nz, jr_012_5332                            ; $52CD: $20 $63

    ld h, c                                       ; $52CF: $61
    ld l, [hl]                                    ; $52D0: $6E
    daa                                           ; $52D1: $27
    ld [hl], h                                    ; $52D2: $74
    rst $38                                       ; $52D3: $FF
    ld h, d                                       ; $52D4: $62
    ld h, l                                       ; $52D5: $65
    ld l, h                                       ; $52D6: $6C
    ld l, c                                       ; $52D7: $69
    ld h, l                                       ; $52D8: $65
    halt                                          ; $52D9: $76
    ld h, l                                       ; $52DA: $65
    jr nz, jr_012_5351                            ; $52DB: $20 $74

    ld l, b                                       ; $52DD: $68
    ld h, c                                       ; $52DE: $61
    ld [hl], h                                    ; $52DF: $74
    cp $68                                        ; $52E0: $FE $68
    ld h, c                                       ; $52E2: $61
    ld [hl], b                                    ; $52E3: $70
    ld [hl], b                                    ; $52E4: $70
    ld h, l                                       ; $52E5: $65
    ld l, [hl]                                    ; $52E6: $6E
    ld h, l                                       ; $52E7: $65
    ld h, h                                       ; $52E8: $64
    ld l, $20                                     ; $52E9: $2E $20
    ld d, h                                       ; $52EB: $54
    ld l, b                                       ; $52EC: $68
    ld h, c                                       ; $52ED: $61
    ld [hl], h                                    ; $52EE: $74

jr_012_52EF:
    rst $38                                       ; $52EF: $FF
    ld l, b                                       ; $52F0: $68
    ld h, c                                       ; $52F1: $61
    ld [hl], e                                    ; $52F2: $73
    jr nz, jr_012_5343                            ; $52F3: $20 $4E

    ld b, l                                       ; $52F5: $45
    ld d, [hl]                                    ; $52F6: $56
    ld b, l                                       ; $52F7: $45
    ld d, d                                       ; $52F8: $52
    jr nz, jr_012_5340                            ; $52F9: $20 $45

jr_012_52FB:
    ld d, [hl]                                    ; $52FB: $56
    ld b, l                                       ; $52FC: $45
    ld d, d                                       ; $52FD: $52

jr_012_52FE:
    cp $68                                        ; $52FE: $FE $68
    ld h, c                                       ; $5300: $61
    ld [hl], b                                    ; $5301: $70
    ld [hl], b                                    ; $5302: $70

jr_012_5303:
    ld h, l                                       ; $5303: $65
    ld l, [hl]                                    ; $5304: $6E
    ld h, l                                       ; $5305: $65
    ld h, h                                       ; $5306: $64
    jr nz, jr_012_537D                            ; $5307: $20 $74

    ld l, a                                       ; $5309: $6F
    jr nz, jr_012_5379                            ; $530A: $20 $6D

    ld h, l                                       ; $530C: $65

jr_012_530D:
    rst $38                                       ; $530D: $FF
    ld h, d                                       ; $530E: $62
    ld h, l                                       ; $530F: $65
    ld h, [hl]                                    ; $5310: $66
    ld l, a                                       ; $5311: $6F
    ld [hl], d                                    ; $5312: $72

jr_012_5313:
    ld h, l                                       ; $5313: $65
    ld hl, $57FE                                  ; $5314: $21 $FE $57
    ld l, b                                       ; $5317: $68
    ld h, l                                       ; $5318: $65
    ld [hl], d                                    ; $5319: $72
    ld h, l                                       ; $531A: $65
    jr nz, @+$63                                  ; $531B: $20 $61

    ld [hl], d                                    ; $531D: $72
    ld h, l                                       ; $531E: $65
    jr nz, jr_012_539A                            ; $531F: $20 $79

    ld l, a                                       ; $5321: $6F
    ld [hl], l                                    ; $5322: $75
    rst $38                                       ; $5323: $FF
    ld h, a                                       ; $5324: $67
    ld l, a                                       ; $5325: $6F
    ld l, c                                       ; $5326: $69
    ld l, [hl]                                    ; $5327: $6E
    ld h, a                                       ; $5328: $67
    inc l                                         ; $5329: $2C
    jr nz, jr_012_538D                            ; $532A: $20 $61

    ld l, [hl]                                    ; $532C: $6E
    ld a, c                                       ; $532D: $79
    ld [hl], a                                    ; $532E: $77
    ld h, c                                       ; $532F: $61
    ld a, c                                       ; $5330: $79
    ccf                                           ; $5331: $3F

jr_012_5332:
    cp $FD                                        ; $5332: $FE $FD
    sbc e                                         ; $5334: $9B
    ld a, b                                       ; $5335: $78
    ld [hl], b                                    ; $5336: $70
    sbc a                                         ; $5337: $9F
    ld c, c                                       ; $5338: $49

jr_012_5339:
    daa                                           ; $5339: $27

jr_012_533A:
    ld l, l                                       ; $533A: $6D
    jr nz, jr_012_53A4                            ; $533B: $20 $67

    ld l, a                                       ; $533D: $6F
    ld l, c                                       ; $533E: $69
    ld l, [hl]                                    ; $533F: $6E

jr_012_5340:
    ld h, a                                       ; $5340: $67
    jr nz, jr_012_53B7                            ; $5341: $20 $74

jr_012_5343:
    ld l, a                                       ; $5343: $6F
    rst $38                                       ; $5344: $FF
    ld [hl], e                                    ; $5345: $73
    ld h, l                                       ; $5346: $65
    ld h, l                                       ; $5347: $65
    jr nz, jr_012_53BE                            ; $5348: $20 $74

    ld l, b                                       ; $534A: $68
    ld h, l                                       ; $534B: $65
    jr nz, @+$47                                  ; $534C: $20 $45

    ld l, h                                       ; $534E: $6C
    ld h, h                                       ; $534F: $64
    ld h, l                                       ; $5350: $65

jr_012_5351:
    ld [hl], d                                    ; $5351: $72
    inc l                                         ; $5352: $2C
    cp $FD                                        ; $5353: $FE $FD
    sbc e                                         ; $5355: $9B
    jr z, jr_012_53CD                             ; $5356: $28 $75

    sbc a                                         ; $5358: $9F
    ld e, c                                       ; $5359: $59
    dec l                                         ; $535A: $2D
    ld a, c                                       ; $535B: $79
    ld l, a                                       ; $535C: $6F
    ld [hl], l                                    ; $535D: $75
    daa                                           ; $535E: $27
    ld [hl], d                                    ; $535F: $72
    ld h, l                                       ; $5360: $65
    jr nz, @+$70                                  ; $5361: $20 $6E

    ld l, a                                       ; $5363: $6F
    ld [hl], h                                    ; $5364: $74
    ld l, $2E                                     ; $5365: $2E $2E
    ld l, $FE                                     ; $5367: $2E $FE
    ld h, a                                       ; $5369: $67
    ld l, a                                       ; $536A: $6F
    ld l, [hl]                                    ; $536B: $6E
    ld l, [hl]                                    ; $536C: $6E
    ld h, c                                       ; $536D: $61
    jr nz, jr_012_53E4                            ; $536E: $20 $74

    ld h, l                                       ; $5370: $65
    ld l, h                                       ; $5371: $6C
    ld l, h                                       ; $5372: $6C
    jr nz, jr_012_53DD                            ; $5373: $20 $68

    ld l, c                                       ; $5375: $69
    ld l, l                                       ; $5376: $6D
    rst $38                                       ; $5377: $FF
    ld h, c                                       ; $5378: $61

jr_012_5379:
    ld h, d                                       ; $5379: $62
    ld l, a                                       ; $537A: $6F
    ld [hl], l                                    ; $537B: $75
    ld [hl], h                                    ; $537C: $74

jr_012_537D:
    jr nz, jr_012_53F3                            ; $537D: $20 $74

    ld l, b                                       ; $537F: $68
    ld h, l                                       ; $5380: $65
    cp $62                                        ; $5381: $FE $62
    ld [hl], d                                    ; $5383: $72
    ld l, c                                       ; $5384: $69
    ld h, h                                       ; $5385: $64
    ld h, a                                       ; $5386: $67
    ld h, l                                       ; $5387: $65
    inc l                                         ; $5388: $2C
    jr nz, @+$63                                  ; $5389: $20 $61

    ld [hl], d                                    ; $538B: $72
    ld h, l                                       ; $538C: $65

jr_012_538D:
    rst $38                                       ; $538D: $FF
    ld a, c                                       ; $538E: $79
    ld l, a                                       ; $538F: $6F
    ld [hl], l                                    ; $5390: $75
    ccf                                           ; $5391: $3F
    cp $FD                                        ; $5392: $FE $FD
    sbc d                                         ; $5394: $9A
    ld e, b                                       ; $5395: $58
    ld bc, $9B42                                  ; $5396: $01 $42 $9B
    ld a, b                                       ; $5399: $78

jr_012_539A:
    ld [hl], b                                    ; $539A: $70
    sbc a                                         ; $539B: $9F
    ld c, a                                       ; $539C: $4F
    ld h, [hl]                                    ; $539D: $66
    jr nz, jr_012_5403                            ; $539E: $20 $63

    ld l, a                                       ; $53A0: $6F
    ld [hl], l                                    ; $53A1: $75
    ld [hl], d                                    ; $53A2: $72
    ld [hl], e                                    ; $53A3: $73

jr_012_53A4:
    ld h, l                                       ; $53A4: $65
    jr nz, @+$4B                                  ; $53A5: $20 $49

    rst $38                                       ; $53A7: $FF
    ld h, c                                       ; $53A8: $61
    ld l, l                                       ; $53A9: $6D
    ld hl, $4820                                  ; $53AA: $21 $20 $48
    ld l, a                                       ; $53AD: $6F
    ld [hl], a                                    ; $53AE: $77
    jr nz, @+$67                                  ; $53AF: $20 $65

    ld l, h                                       ; $53B1: $6C
    ld [hl], e                                    ; $53B2: $73
    ld h, l                                       ; $53B3: $65
    cp $61                                        ; $53B4: $FE $61
    ld l, l                                       ; $53B6: $6D

jr_012_53B7:
    jr nz, jr_012_5402                            ; $53B7: $20 $49

    jr nz, jr_012_5422                            ; $53B9: $20 $67

    ld l, a                                       ; $53BB: $6F
    ld l, c                                       ; $53BC: $69
    ld l, [hl]                                    ; $53BD: $6E

jr_012_53BE:
    ld h, a                                       ; $53BE: $67
    jr nz, jr_012_5435                            ; $53BF: $20 $74

    ld l, a                                       ; $53C1: $6F
    rst $38                                       ; $53C2: $FF
    ld h, a                                       ; $53C3: $67
    ld h, l                                       ; $53C4: $65
    ld [hl], h                                    ; $53C5: $74
    jr nz, jr_012_5430                            ; $53C6: $20 $68

    ld l, c                                       ; $53C8: $69
    ld [hl], e                                    ; $53C9: $73
    jr nz, jr_012_5434                            ; $53CA: $20 $68

    ld h, l                                       ; $53CC: $65

jr_012_53CD:
    ld l, h                                       ; $53CD: $6C
    ld [hl], b                                    ; $53CE: $70
    ccf                                           ; $53CF: $3F
    cp $FD                                        ; $53D0: $FE $FD
    sbc d                                         ; $53D2: $9A
    ld e, b                                       ; $53D3: $58
    ld [bc], a                                    ; $53D4: $02
    ld b, d                                       ; $53D5: $42
    sbc e                                         ; $53D6: $9B
    jr z, @+$77                                   ; $53D7: $28 $75

    sbc a                                         ; $53D9: $9F
    ld c, [hl]                                    ; $53DA: $4E
    dec l                                         ; $53DB: $2D
    ld c, [hl]                                    ; $53DC: $4E

jr_012_53DD:
    ld c, a                                       ; $53DD: $4F
    ld hl, $5920                                  ; $53DE: $21 $20 $59
    dec l                                         ; $53E1: $2D
    ld a, c                                       ; $53E2: $79
    ld l, a                                       ; $53E3: $6F

jr_012_53E4:
    ld [hl], l                                    ; $53E4: $75
    rst $38                                       ; $53E5: $FF
    ld h, e                                       ; $53E6: $63
    ld h, c                                       ; $53E7: $61
    ld l, [hl]                                    ; $53E8: $6E
    daa                                           ; $53E9: $27
    ld [hl], h                                    ; $53EA: $74
    ld hl, $4D20                                  ; $53EB: $21 $20 $4D
    ld a, c                                       ; $53EE: $79
    ld l, $2E                                     ; $53EF: $2E $2E
    ld l, $20                                     ; $53F1: $2E $20

jr_012_53F3:
    ld l, l                                       ; $53F3: $6D
    ld a, c                                       ; $53F4: $79
    cp $72                                        ; $53F5: $FE $72
    ld h, l                                       ; $53F7: $65
    ld [hl], b                                    ; $53F8: $70
    ld [hl], l                                    ; $53F9: $75
    ld [hl], h                                    ; $53FA: $74
    ld h, c                                       ; $53FB: $61
    ld [hl], h                                    ; $53FC: $74
    ld l, c                                       ; $53FD: $69
    ld l, a                                       ; $53FE: $6F
    ld l, [hl]                                    ; $53FF: $6E
    jr nz, jr_012_5479                            ; $5400: $20 $77

jr_012_5402:
    ld l, c                                       ; $5402: $69

jr_012_5403:
    ld l, h                                       ; $5403: $6C
    ld l, h                                       ; $5404: $6C
    rst $38                                       ; $5405: $FF
    ld h, d                                       ; $5406: $62
    ld h, l                                       ; $5407: $65
    jr nz, jr_012_547C                            ; $5408: $20 $72

    ld [hl], l                                    ; $540A: $75
    ld l, c                                       ; $540B: $69
    ld l, [hl]                                    ; $540C: $6E
    ld h, l                                       ; $540D: $65
    ld h, h                                       ; $540E: $64
    ld hl, $4920                                  ; $540F: $21 $20 $49
    daa                                           ; $5412: $27
    ld l, h                                       ; $5413: $6C
    ld l, h                                       ; $5414: $6C
    cp $6E                                        ; $5415: $FE $6E
    ld h, l                                       ; $5417: $65
    halt                                          ; $5418: $76
    ld h, l                                       ; $5419: $65
    ld [hl], d                                    ; $541A: $72
    jr nz, jr_012_5484                            ; $541B: $20 $67

    ld h, l                                       ; $541D: $65
    ld [hl], h                                    ; $541E: $74
    jr nz, @+$63                                  ; $541F: $20 $61

    rst $38                                       ; $5421: $FF

jr_012_5422:
    ld l, d                                       ; $5422: $6A
    ld l, a                                       ; $5423: $6F
    ld h, d                                       ; $5424: $62
    jr nz, jr_012_548F                            ; $5425: $20 $68

    ld h, l                                       ; $5427: $65
    ld [hl], d                                    ; $5428: $72
    ld h, l                                       ; $5429: $65
    jr nz, jr_012_548D                            ; $542A: $20 $61

    ld h, a                                       ; $542C: $67
    ld h, c                                       ; $542D: $61
    ld l, c                                       ; $542E: $69
    ld l, [hl]                                    ; $542F: $6E

jr_012_5430:
    ld hl, $FDFE                                  ; $5430: $21 $FE $FD
    sbc e                                         ; $5433: $9B

jr_012_5434:
    ld a, b                                       ; $5434: $78

jr_012_5435:
    ld [hl], b                                    ; $5435: $70
    sbc a                                         ; $5436: $9F
    ld d, e                                       ; $5437: $53
    ld l, a                                       ; $5438: $6F
    ld [hl], d                                    ; $5439: $72
    ld [hl], d                                    ; $543A: $72
    ld a, c                                       ; $543B: $79
    inc l                                         ; $543C: $2C
    jr nz, jr_012_54B3                            ; $543D: $20 $74

    ld l, b                                       ; $543F: $68
    ld h, l                                       ; $5440: $65
    ld [hl], d                                    ; $5441: $72
    ld h, l                                       ; $5442: $65
    daa                                           ; $5443: $27
    ld [hl], e                                    ; $5444: $73
    rst $38                                       ; $5445: $FF
    ld l, [hl]                                    ; $5446: $6E
    ld l, a                                       ; $5447: $6F
    ld [hl], h                                    ; $5448: $74
    ld l, b                                       ; $5449: $68
    ld l, c                                       ; $544A: $69
    ld l, [hl]                                    ; $544B: $6E
    ld h, a                                       ; $544C: $67
    jr nz, @+$4B                                  ; $544D: $20 $49

    jr nz, jr_012_54B4                            ; $544F: $20 $63

    ld h, c                                       ; $5451: $61
    ld l, [hl]                                    ; $5452: $6E
    cp $64                                        ; $5453: $FE $64
    ld l, a                                       ; $5455: $6F
    jr nz, @+$63                                  ; $5456: $20 $61

    ld h, d                                       ; $5458: $62
    ld l, a                                       ; $5459: $6F
    ld [hl], l                                    ; $545A: $75
    ld [hl], h                                    ; $545B: $74
    jr nz, jr_012_54D2                            ; $545C: $20 $74

    ld l, b                                       ; $545E: $68
    ld h, c                                       ; $545F: $61
    ld [hl], h                                    ; $5460: $74
    ld l, $FE                                     ; $5461: $2E $FE
    db $FD                                        ; $5463: $FD
    sbc d                                         ; $5464: $9A
    ld e, b                                       ; $5465: $58
    inc bc                                        ; $5466: $03
    ld b, d                                       ; $5467: $42
    sbc e                                         ; $5468: $9B
    ld a, b                                       ; $5469: $78
    ld [hl], b                                    ; $546A: $70
    sbc a                                         ; $546B: $9F
    ld c, b                                       ; $546C: $48
    ld h, l                                       ; $546D: $65
    ld a, c                                       ; $546E: $79
    ld hl, $4320                                  ; $546F: $21 $20 $43
    ld [hl], l                                    ; $5472: $75
    ld [hl], h                                    ; $5473: $74
    jr nz, @+$76                                  ; $5474: $20 $74

    ld l, b                                       ; $5476: $68
    ld h, c                                       ; $5477: $61
    ld [hl], h                                    ; $5478: $74

jr_012_5479:
    rst $38                                       ; $5479: $FF
    ld l, a                                       ; $547A: $6F
    ld [hl], l                                    ; $547B: $75

jr_012_547C:
    ld [hl], h                                    ; $547C: $74
    ld hl, $FDFE                                  ; $547D: $21 $FE $FD
    sbc e                                         ; $5480: $9B
    jr z, jr_012_54F8                             ; $5481: $28 $75

    sbc a                                         ; $5483: $9F

jr_012_5484:
    ld c, c                                       ; $5484: $49
    jr nz, jr_012_54EF                            ; $5485: $20 $68

    ld h, c                                       ; $5487: $61
    halt                                          ; $5488: $76
    ld h, l                                       ; $5489: $65
    jr nz, jr_012_54ED                            ; $548A: $20 $61

    ld l, [hl]                                    ; $548C: $6E

jr_012_548D:
    ld l, a                                       ; $548D: $6F
    ld [hl], h                                    ; $548E: $74

jr_012_548F:
    ld l, b                                       ; $548F: $68
    ld h, l                                       ; $5490: $65
    ld [hl], d                                    ; $5491: $72
    rst $38                                       ; $5492: $FF
    ld l, c                                       ; $5493: $69
    ld h, h                                       ; $5494: $64
    ld h, l                                       ; $5495: $65
    ld h, c                                       ; $5496: $61
    ld hl, $4820                                  ; $5497: $21 $20 $48
    ld h, l                                       ; $549A: $65
    ld h, c                                       ; $549B: $61
    ld [hl], d                                    ; $549C: $72
    jr nz, jr_012_550C                            ; $549D: $20 $6D

    ld h, l                                       ; $549F: $65
    rst $38                                       ; $54A0: $FF
    ld l, a                                       ; $54A1: $6F
    ld [hl], l                                    ; $54A2: $75
    ld [hl], h                                    ; $54A3: $74
    ld hl, $5020                                  ; $54A4: $21 $20 $50
    ld l, h                                       ; $54A7: $6C
    ld h, l                                       ; $54A8: $65
    ld h, c                                       ; $54A9: $61
    ld [hl], e                                    ; $54AA: $73
    ld h, l                                       ; $54AB: $65
    ld hl, $FE21                                  ; $54AC: $21 $21 $FE
    db $FD                                        ; $54AF: $FD
    sbc e                                         ; $54B0: $9B
    ld a, b                                       ; $54B1: $78
    ld [hl], b                                    ; $54B2: $70

jr_012_54B3:
    sbc a                                         ; $54B3: $9F

jr_012_54B4:
    ld b, [hl]                                    ; $54B4: $46
    ld l, c                                       ; $54B5: $69
    ld l, [hl]                                    ; $54B6: $6E
    ld h, l                                       ; $54B7: $65
    ld hl, $4A20                                  ; $54B8: $21 $20 $4A
    ld [hl], l                                    ; $54BB: $75
    ld [hl], e                                    ; $54BC: $73
    ld [hl], h                                    ; $54BD: $74
    jr nz, jr_012_552C                            ; $54BE: $20 $6C

    ld h, l                                       ; $54C0: $65
    ld [hl], h                                    ; $54C1: $74
    rst $38                                       ; $54C2: $FF
    ld h, a                                       ; $54C3: $67
    ld l, a                                       ; $54C4: $6F
    jr nz, jr_012_5536                            ; $54C5: $20 $6F

    ld h, [hl]                                    ; $54C7: $66
    jr nz, jr_012_5537                            ; $54C8: $20 $6D

    ld h, l                                       ; $54CA: $65
    ld hl, $FDFE                                  ; $54CB: $21 $FE $FD
    sbc d                                         ; $54CE: $9A
    ld e, b                                       ; $54CF: $58
    inc b                                         ; $54D0: $04
    ld b, d                                       ; $54D1: $42

jr_012_54D2:
    sbc e                                         ; $54D2: $9B
    jr z, jr_012_554A                             ; $54D3: $28 $75

    sbc a                                         ; $54D5: $9F
    ld c, c                                       ; $54D6: $49
    ld l, [hl]                                    ; $54D7: $6E
    jr nz, jr_012_5529                            ; $54D8: $20 $4F

    ld [hl], d                                    ; $54DA: $72
    ld l, a                                       ; $54DB: $6F
    ld [hl], h                                    ; $54DC: $74
    ld l, b                                       ; $54DD: $68
    ld h, l                                       ; $54DE: $65
    inc l                                         ; $54DF: $2C
    rst $38                                       ; $54E0: $FF
    ld [hl], h                                    ; $54E1: $74
    ld l, b                                       ; $54E2: $68
    ld h, l                                       ; $54E3: $65
    ld [hl], d                                    ; $54E4: $72
    ld h, l                                       ; $54E5: $65
    jr nz, jr_012_5551                            ; $54E6: $20 $69

    ld [hl], e                                    ; $54E8: $73
    jr nz, jr_012_554C                            ; $54E9: $20 $61

    cp $76                                        ; $54EB: $FE $76

jr_012_54ED:
    ld h, c                                       ; $54ED: $61
    ld [hl], l                                    ; $54EE: $75

jr_012_54EF:
    ld l, h                                       ; $54EF: $6C
    ld [hl], h                                    ; $54F0: $74
    jr nz, jr_012_5567                            ; $54F1: $20 $74

    ld l, b                                       ; $54F3: $68
    ld h, c                                       ; $54F4: $61
    ld [hl], h                                    ; $54F5: $74
    rst $38                                       ; $54F6: $FF
    ld h, e                                       ; $54F7: $63

jr_012_54F8:
    ld l, a                                       ; $54F8: $6F
    ld l, [hl]                                    ; $54F9: $6E
    ld [hl], h                                    ; $54FA: $74
    ld h, c                                       ; $54FB: $61
    ld l, c                                       ; $54FC: $69
    ld l, [hl]                                    ; $54FD: $6E
    ld [hl], e                                    ; $54FE: $73
    jr nz, jr_012_5575                            ; $54FF: $20 $74

    ld l, b                                       ; $5501: $68
    ld h, l                                       ; $5502: $65
    cp $6D                                        ; $5503: $FE $6D
    ld l, a                                       ; $5505: $6F
    ld [hl], e                                    ; $5506: $73
    ld [hl], h                                    ; $5507: $74
    jr nz, jr_012_5580                            ; $5508: $20 $76

    ld h, c                                       ; $550A: $61
    ld l, h                                       ; $550B: $6C

jr_012_550C:
    ld [hl], l                                    ; $550C: $75
    ld h, c                                       ; $550D: $61
    ld h, d                                       ; $550E: $62
    ld l, h                                       ; $550F: $6C
    ld h, l                                       ; $5510: $65
    rst $38                                       ; $5511: $FF
    ld [hl], h                                    ; $5512: $74
    ld [hl], d                                    ; $5513: $72
    ld h, l                                       ; $5514: $65
    ld h, c                                       ; $5515: $61
    ld [hl], e                                    ; $5516: $73
    ld [hl], l                                    ; $5517: $75
    ld [hl], d                                    ; $5518: $72
    ld h, l                                       ; $5519: $65
    jr nz, jr_012_558B                            ; $551A: $20 $6F

    ld h, [hl]                                    ; $551C: $66
    cp $43                                        ; $551D: $FE $43
    ld h, c                                       ; $551F: $61
    ld l, h                                       ; $5520: $6C
    ld h, h                                       ; $5521: $64
    ld l, $2E                                     ; $5522: $2E $2E
    ld l, $20                                     ; $5524: $2E $20
    ld h, c                                       ; $5526: $61
    jr nz, jr_012_5599                            ; $5527: $20 $70

jr_012_5529:
    ld h, c                                       ; $5529: $61
    ld l, c                                       ; $552A: $69
    ld [hl], d                                    ; $552B: $72

jr_012_552C:
    rst $38                                       ; $552C: $FF
    ld l, a                                       ; $552D: $6F
    ld h, [hl]                                    ; $552E: $66
    jr nz, jr_012_5572                            ; $552F: $20 $41

    ld h, a                                       ; $5531: $67
    ld h, c                                       ; $5532: $61
    ld h, h                                       ; $5533: $64
    ld l, a                                       ; $5534: $6F
    ld l, [hl]                                    ; $5535: $6E

jr_012_5536:
    daa                                           ; $5536: $27

jr_012_5537:
    ld [hl], e                                    ; $5537: $73
    cp $62                                        ; $5538: $FE $62
    ld l, a                                       ; $553A: $6F
    ld l, a                                       ; $553B: $6F
    ld [hl], h                                    ; $553C: $74
    ld [hl], e                                    ; $553D: $73
    ld hl, $FDFE                                  ; $553E: $21 $FE $FD
    sbc e                                         ; $5541: $9B
    ld a, b                                       ; $5542: $78
    ld [hl], b                                    ; $5543: $70
    sbc a                                         ; $5544: $9F
    ld b, [hl]                                    ; $5545: $46
    ld l, a                                       ; $5546: $6F
    ld l, a                                       ; $5547: $6F
    ld [hl], h                                    ; $5548: $74
    ld [hl], a                                    ; $5549: $77

jr_012_554A:
    ld h, l                                       ; $554A: $65
    ld h, c                                       ; $554B: $61

jr_012_554C:
    ld [hl], d                                    ; $554C: $72
    ccf                                           ; $554D: $3F
    cp $FD                                        ; $554E: $FE $FD
    sbc e                                         ; $5550: $9B

jr_012_5551:
    jr z, jr_012_55C8                             ; $5551: $28 $75

    sbc a                                         ; $5553: $9F
    ld c, [hl]                                    ; $5554: $4E
    ld l, a                                       ; $5555: $6F
    ld [hl], h                                    ; $5556: $74
    jr nz, @+$6C                                  ; $5557: $20 $6A

    ld [hl], l                                    ; $5559: $75
    ld [hl], e                                    ; $555A: $73
    ld [hl], h                                    ; $555B: $74
    jr nz, @+$63                                  ; $555C: $20 $61

    ld l, [hl]                                    ; $555E: $6E
    ld a, c                                       ; $555F: $79
    rst $38                                       ; $5560: $FF
    ld h, [hl]                                    ; $5561: $66
    ld l, a                                       ; $5562: $6F
    ld l, a                                       ; $5563: $6F
    ld [hl], h                                    ; $5564: $74
    ld [hl], a                                    ; $5565: $77
    ld h, l                                       ; $5566: $65

jr_012_5567:
    ld h, c                                       ; $5567: $61
    ld [hl], d                                    ; $5568: $72
    ld l, $20                                     ; $5569: $2E $20
    ld d, h                                       ; $556B: $54
    ld l, b                                       ; $556C: $68
    ld h, l                                       ; $556D: $65
    ld [hl], e                                    ; $556E: $73
    ld h, l                                       ; $556F: $65
    cp $62                                        ; $5570: $FE $62

jr_012_5572:
    ld l, a                                       ; $5572: $6F
    ld l, a                                       ; $5573: $6F
    ld [hl], h                                    ; $5574: $74

jr_012_5575:
    ld [hl], e                                    ; $5575: $73
    jr nz, jr_012_55D9                            ; $5576: $20 $61

    ld l, h                                       ; $5578: $6C
    ld l, h                                       ; $5579: $6C
    ld l, a                                       ; $557A: $6F
    ld [hl], a                                    ; $557B: $77
    jr nz, jr_012_55F2                            ; $557C: $20 $74

    ld l, b                                       ; $557E: $68
    ld h, l                                       ; $557F: $65

jr_012_5580:
    rst $38                                       ; $5580: $FF
    ld [hl], b                                    ; $5581: $70
    ld h, l                                       ; $5582: $65
    ld [hl], d                                    ; $5583: $72
    ld [hl], e                                    ; $5584: $73
    ld l, a                                       ; $5585: $6F
    ld l, [hl]                                    ; $5586: $6E
    jr nz, @+$79                                  ; $5587: $20 $77

    ld l, b                                       ; $5589: $68
    ld l, a                                       ; $558A: $6F

jr_012_558B:
    jr nz, @+$6B                                  ; $558B: $20 $69

    ld [hl], e                                    ; $558D: $73
    cp $77                                        ; $558E: $FE $77
    ld h, l                                       ; $5590: $65
    ld h, c                                       ; $5591: $61
    ld [hl], d                                    ; $5592: $72
    ld l, c                                       ; $5593: $69
    ld l, [hl]                                    ; $5594: $6E
    ld h, a                                       ; $5595: $67
    jr nz, @+$76                                  ; $5596: $20 $74

    ld l, b                                       ; $5598: $68

jr_012_5599:
    ld h, l                                       ; $5599: $65
    ld l, l                                       ; $559A: $6D
    jr nz, jr_012_5611                            ; $559B: $20 $74

    ld l, a                                       ; $559D: $6F
    rst $38                                       ; $559E: $FF
    ld l, d                                       ; $559F: $6A
    ld [hl], l                                    ; $55A0: $75
    ld l, l                                       ; $55A1: $6D
    ld [hl], b                                    ; $55A2: $70
    jr nz, @+$69                                  ; $55A3: $20 $67

    ld [hl], d                                    ; $55A5: $72
    ld h, l                                       ; $55A6: $65
    ld h, c                                       ; $55A7: $61
    ld [hl], h                                    ; $55A8: $74
    cp $64                                        ; $55A9: $FE $64
    ld l, c                                       ; $55AB: $69
    ld [hl], e                                    ; $55AC: $73
    ld [hl], h                                    ; $55AD: $74
    ld h, c                                       ; $55AE: $61
    ld l, [hl]                                    ; $55AF: $6E
    ld h, e                                       ; $55B0: $63
    ld h, l                                       ; $55B1: $65
    ld [hl], e                                    ; $55B2: $73
    ld hl, $57FF                                  ; $55B3: $21 $FF $57
    ld l, c                                       ; $55B6: $69
    ld [hl], h                                    ; $55B7: $74
    ld l, b                                       ; $55B8: $68
    jr nz, jr_012_562F                            ; $55B9: $20 $74

    ld l, b                                       ; $55BB: $68
    ld h, l                                       ; $55BC: $65
    ld l, l                                       ; $55BD: $6D
    jr nz, jr_012_5639                            ; $55BE: $20 $79

    ld l, a                                       ; $55C0: $6F
    ld [hl], l                                    ; $55C1: $75
    cp $73                                        ; $55C2: $FE $73
    ld l, b                                       ; $55C4: $68
    ld l, a                                       ; $55C5: $6F
    ld [hl], l                                    ; $55C6: $75
    ld l, h                                       ; $55C7: $6C

jr_012_55C8:
    ld h, h                                       ; $55C8: $64
    jr nz, jr_012_562D                            ; $55C9: $20 $62

    ld h, l                                       ; $55CB: $65
    jr nz, jr_012_562F                            ; $55CC: $20 $61

    ld h, d                                       ; $55CE: $62
    ld l, h                                       ; $55CF: $6C
    ld h, l                                       ; $55D0: $65
    rst $38                                       ; $55D1: $FF
    ld [hl], h                                    ; $55D2: $74
    ld l, a                                       ; $55D3: $6F
    jr nz, jr_012_5643                            ; $55D4: $20 $6D

    ld h, c                                       ; $55D6: $61
    ld l, e                                       ; $55D7: $6B
    ld h, l                                       ; $55D8: $65

jr_012_55D9:
    jr nz, jr_012_5644                            ; $55D9: $20 $69

    ld [hl], h                                    ; $55DB: $74
    cp $61                                        ; $55DC: $FE $61
    ld h, e                                       ; $55DE: $63
    ld [hl], d                                    ; $55DF: $72
    ld l, a                                       ; $55E0: $6F
    ld [hl], e                                    ; $55E1: $73
    ld [hl], e                                    ; $55E2: $73
    jr nz, jr_012_5659                            ; $55E3: $20 $74

    ld l, b                                       ; $55E5: $68
    ld h, l                                       ; $55E6: $65
    jr nz, jr_012_5659                            ; $55E7: $20 $70

    ld l, a                                       ; $55E9: $6F
    ld l, a                                       ; $55EA: $6F
    ld l, h                                       ; $55EB: $6C
    rst $38                                       ; $55EC: $FF
    ld l, a                                       ; $55ED: $6F
    ld h, [hl]                                    ; $55EE: $66
    jr nz, @+$6E                                  ; $55EF: $20 $6C

    ld h, c                                       ; $55F1: $61

jr_012_55F2:
    halt                                          ; $55F2: $76
    ld h, c                                       ; $55F3: $61
    ld hl, $FDFE                                  ; $55F4: $21 $FE $FD
    sbc e                                         ; $55F7: $9B
    ld a, b                                       ; $55F8: $78
    ld [hl], b                                    ; $55F9: $70
    sbc a                                         ; $55FA: $9F
    ld c, d                                       ; $55FB: $4A
    ld d, l                                       ; $55FC: $55
    ld c, l                                       ; $55FD: $4D
    ld d, b                                       ; $55FE: $50
    jr nz, @+$63                                  ; $55FF: $20 $61

    ld h, e                                       ; $5601: $63
    ld [hl], d                                    ; $5602: $72
    ld l, a                                       ; $5603: $6F
    ld [hl], e                                    ; $5604: $73
    ld [hl], e                                    ; $5605: $73
    ccf                                           ; $5606: $3F
    ld hl, $44FE                                  ; $5607: $21 $FE $44
    ld l, a                                       ; $560A: $6F
    jr nz, @+$4B                                  ; $560B: $20 $49

    jr nz, jr_012_567B                            ; $560D: $20 $6C

    ld l, a                                       ; $560F: $6F
    ld l, a                                       ; $5610: $6F

jr_012_5611:
    ld l, e                                       ; $5611: $6B
    rst $38                                       ; $5612: $FF
    ld h, e                                       ; $5613: $63
    ld [hl], d                                    ; $5614: $72
    ld h, c                                       ; $5615: $61
    ld a, d                                       ; $5616: $7A
    ld a, c                                       ; $5617: $79
    jr nz, jr_012_568E                            ; $5618: $20 $74

    ld l, a                                       ; $561A: $6F
    jr nz, jr_012_5696                            ; $561B: $20 $79

    ld l, a                                       ; $561D: $6F
    ld [hl], l                                    ; $561E: $75
    ccf                                           ; $561F: $3F
    ld hl, $FDFE                                  ; $5620: $21 $FE $FD
    sbc e                                         ; $5623: $9B
    jr z, jr_012_569B                             ; $5624: $28 $75

    sbc a                                         ; $5626: $9F
    ld c, c                                       ; $5627: $49
    jr nz, @+$6D                                  ; $5628: $20 $6B

    ld l, [hl]                                    ; $562A: $6E
    ld l, a                                       ; $562B: $6F
    ld [hl], a                                    ; $562C: $77

jr_012_562D:
    jr nz, jr_012_5698                            ; $562D: $20 $69

jr_012_562F:
    ld [hl], h                                    ; $562F: $74
    jr nz, jr_012_569F                            ; $5630: $20 $6D

    ld h, c                                       ; $5632: $61
    ld a, c                                       ; $5633: $79
    rst $38                                       ; $5634: $FF
    ld [hl], e                                    ; $5635: $73
    ld l, a                                       ; $5636: $6F
    ld [hl], l                                    ; $5637: $75
    ld l, [hl]                                    ; $5638: $6E

jr_012_5639:
    ld h, h                                       ; $5639: $64
    jr nz, jr_012_569D                            ; $563A: $20 $61

    jr nz, jr_012_56A0                            ; $563C: $20 $62

    ld l, c                                       ; $563E: $69
    ld [hl], h                                    ; $563F: $74
    cp $63                                        ; $5640: $FE $63
    ld [hl], d                                    ; $5642: $72

jr_012_5643:
    ld h, c                                       ; $5643: $61

jr_012_5644:
    ld a, d                                       ; $5644: $7A
    ld a, c                                       ; $5645: $79
    jr nz, jr_012_56AA                            ; $5646: $20 $62

    ld [hl], l                                    ; $5648: $75
    ld [hl], h                                    ; $5649: $74
    ld l, $2E                                     ; $564A: $2E $2E
    ld l, $FF                                     ; $564C: $2E $FF
    ld c, c                                       ; $564E: $49
    daa                                           ; $564F: $27
    ld l, l                                       ; $5650: $6D
    jr nz, jr_012_56C1                            ; $5651: $20 $6E

    ld l, a                                       ; $5653: $6F
    ld [hl], h                                    ; $5654: $74
    jr nz, jr_012_56C3                            ; $5655: $20 $6C

    ld a, c                                       ; $5657: $79
    ld l, c                                       ; $5658: $69

jr_012_5659:
    ld l, [hl]                                    ; $5659: $6E
    ld h, a                                       ; $565A: $67
    ld hl, $4AFE                                  ; $565B: $21 $FE $4A
    ld [hl], l                                    ; $565E: $75
    ld [hl], e                                    ; $565F: $73
    ld [hl], h                                    ; $5660: $74
    jr nz, @+$76                                  ; $5661: $20 $74

    ld [hl], d                                    ; $5663: $72
    ld [hl], l                                    ; $5664: $75
    ld [hl], e                                    ; $5665: $73
    ld [hl], h                                    ; $5666: $74
    jr nz, jr_012_56D6                            ; $5667: $20 $6D

    ld h, l                                       ; $5669: $65
    inc l                                         ; $566A: $2C
    rst $38                                       ; $566B: $FF
    ld a, c                                       ; $566C: $79
    ld l, a                                       ; $566D: $6F
    ld [hl], l                                    ; $566E: $75
    daa                                           ; $566F: $27
    ld l, h                                       ; $5670: $6C
    ld l, h                                       ; $5671: $6C
    jr nz, jr_012_56E7                            ; $5672: $20 $73

    ld h, l                                       ; $5674: $65
    ld h, l                                       ; $5675: $65
    ld hl, $FDFE                                  ; $5676: $21 $FE $FD
    sbc d                                         ; $5679: $9A
    ld e, b                                       ; $567A: $58

jr_012_567B:
    dec b                                         ; $567B: $05
    ld b, d                                       ; $567C: $42
    sbc e                                         ; $567D: $9B
    jr z, @+$77                                   ; $567E: $28 $75

    sbc a                                         ; $5680: $9F
    ld d, e                                       ; $5681: $53
    ld l, a                                       ; $5682: $6F
    jr nz, jr_012_56FC                            ; $5683: $20 $77

    ld l, b                                       ; $5685: $68
    ld h, c                                       ; $5686: $61
    ld [hl], h                                    ; $5687: $74
    jr nz, @+$66                                  ; $5688: $20 $64

    ld l, a                                       ; $568A: $6F
    jr nz, jr_012_5706                            ; $568B: $20 $79

    ld l, a                                       ; $568D: $6F

jr_012_568E:
    ld [hl], l                                    ; $568E: $75
    rst $38                                       ; $568F: $FF
    ld [hl], e                                    ; $5690: $73
    ld h, c                                       ; $5691: $61
    ld a, c                                       ; $5692: $79
    ccf                                           ; $5693: $3F
    cp $FD                                        ; $5694: $FE $FD

jr_012_5696:
    sbc d                                         ; $5696: $9A
    ld b, b                                       ; $5697: $40

jr_012_5698:
    ld b, b                                       ; $5698: $40
    sbc e                                         ; $5699: $9B
    ld a, b                                       ; $569A: $78

jr_012_569B:
    ld [hl], b                                    ; $569B: $70
    sbc a                                         ; $569C: $9F

jr_012_569D:
    ld c, a                                       ; $569D: $4F
    ld l, e                                       ; $569E: $6B

jr_012_569F:
    ld h, c                                       ; $569F: $61

jr_012_56A0:
    ld a, c                                       ; $56A0: $79
    inc l                                         ; $56A1: $2C
    jr nz, jr_012_56ED                            ; $56A2: $20 $49

    daa                                           ; $56A4: $27
    ld l, h                                       ; $56A5: $6C
    ld l, h                                       ; $56A6: $6C
    jr nz, jr_012_5710                            ; $56A7: $20 $67

    ld l, c                                       ; $56A9: $69

jr_012_56AA:
    halt                                          ; $56AA: $76
    ld h, l                                       ; $56AB: $65
    rst $38                                       ; $56AC: $FF
    ld a, c                                       ; $56AD: $79
    ld l, a                                       ; $56AE: $6F
    ld [hl], l                                    ; $56AF: $75
    jr nz, jr_012_5713                            ; $56B0: $20 $61

    ld l, [hl]                                    ; $56B2: $6E
    ld l, a                                       ; $56B3: $6F
    ld [hl], h                                    ; $56B4: $74
    ld l, b                                       ; $56B5: $68
    ld h, l                                       ; $56B6: $65
    ld [hl], d                                    ; $56B7: $72
    cp $63                                        ; $56B8: $FE $63
    ld l, b                                       ; $56BA: $68
    ld h, c                                       ; $56BB: $61
    ld l, [hl]                                    ; $56BC: $6E
    ld h, e                                       ; $56BD: $63
    ld h, l                                       ; $56BE: $65
    ld l, $20                                     ; $56BF: $2E $20

jr_012_56C1:
    ld d, e                                       ; $56C1: $53
    ld l, a                                       ; $56C2: $6F

jr_012_56C3:
    jr nz, jr_012_572D                            ; $56C3: $20 $68

    ld l, a                                       ; $56C5: $6F
    ld [hl], a                                    ; $56C6: $77
    rst $38                                       ; $56C7: $FF
    ld h, h                                       ; $56C8: $64
    ld l, a                                       ; $56C9: $6F
    jr nz, jr_012_5715                            ; $56CA: $20 $49

    jr nz, jr_012_5735                            ; $56CC: $20 $67

    ld h, l                                       ; $56CE: $65
    ld [hl], h                                    ; $56CF: $74
    jr nz, @+$76                                  ; $56D0: $20 $74

    ld l, b                                       ; $56D2: $68
    ld h, l                                       ; $56D3: $65
    ld [hl], e                                    ; $56D4: $73
    ld h, l                                       ; $56D5: $65

jr_012_56D6:
    cp $62                                        ; $56D6: $FE $62
    ld l, a                                       ; $56D8: $6F
    ld l, a                                       ; $56D9: $6F
    ld [hl], h                                    ; $56DA: $74
    ld [hl], e                                    ; $56DB: $73
    ccf                                           ; $56DC: $3F
    cp $FD                                        ; $56DD: $FE $FD
    sbc e                                         ; $56DF: $9B
    jr z, jr_012_5757                             ; $56E0: $28 $75

    sbc a                                         ; $56E2: $9F
    ld d, a                                       ; $56E3: $57
    ld h, l                                       ; $56E4: $65
    ld l, h                                       ; $56E5: $6C
    ld l, h                                       ; $56E6: $6C

jr_012_56E7:
    inc l                                         ; $56E7: $2C
    jr nz, jr_012_5756                            ; $56E8: $20 $6C

    ld l, c                                       ; $56EA: $69
    ld l, e                                       ; $56EB: $6B
    ld h, l                                       ; $56EC: $65

jr_012_56ED:
    jr nz, jr_012_5738                            ; $56ED: $20 $49

    rst $38                                       ; $56EF: $FF
    ld [hl], e                                    ; $56F0: $73
    ld h, c                                       ; $56F1: $61
    ld l, c                                       ; $56F2: $69
    ld h, h                                       ; $56F3: $64
    jr nz, jr_012_576A                            ; $56F4: $20 $74

    ld l, b                                       ; $56F6: $68
    ld h, l                                       ; $56F7: $65
    ld a, c                                       ; $56F8: $79
    daa                                           ; $56F9: $27
    ld [hl], d                                    ; $56FA: $72
    ld h, l                                       ; $56FB: $65

jr_012_56FC:
    jr nz, jr_012_5767                            ; $56FC: $20 $69

    ld l, [hl]                                    ; $56FE: $6E
    cp $61                                        ; $56FF: $FE $61
    jr nz, jr_012_5779                            ; $5701: $20 $76

    ld h, c                                       ; $5703: $61
    ld [hl], l                                    ; $5704: $75
    ld l, h                                       ; $5705: $6C

jr_012_5706:
    ld [hl], h                                    ; $5706: $74
    jr nz, jr_012_5772                            ; $5707: $20 $69

    ld l, [hl]                                    ; $5709: $6E
    rst $38                                       ; $570A: $FF
    ld c, a                                       ; $570B: $4F
    ld [hl], d                                    ; $570C: $72
    ld l, a                                       ; $570D: $6F
    ld [hl], h                                    ; $570E: $74
    ld l, b                                       ; $570F: $68

jr_012_5710:
    ld h, l                                       ; $5710: $65
    ld l, $20                                     ; $5711: $2E $20

jr_012_5713:
    ld e, c                                       ; $5713: $59
    ld l, a                                       ; $5714: $6F

jr_012_5715:
    ld [hl], l                                    ; $5715: $75
    daa                                           ; $5716: $27
    ld l, h                                       ; $5717: $6C
    ld l, h                                       ; $5718: $6C
    rst $38                                       ; $5719: $FF
    ld l, [hl]                                    ; $571A: $6E
    ld h, l                                       ; $571B: $65
    ld h, l                                       ; $571C: $65
    ld h, h                                       ; $571D: $64
    jr nz, jr_012_5781                            ; $571E: $20 $61

    jr nz, jr_012_578D                            ; $5720: $20 $6B

    ld h, l                                       ; $5722: $65
    ld a, c                                       ; $5723: $79
    jr nz, jr_012_579A                            ; $5724: $20 $74

    ld l, a                                       ; $5726: $6F
    cp $67                                        ; $5727: $FE $67
    ld h, l                                       ; $5729: $65
    ld [hl], h                                    ; $572A: $74
    jr nz, jr_012_5796                            ; $572B: $20 $69

jr_012_572D:
    ld l, [hl]                                    ; $572D: $6E
    inc l                                         ; $572E: $2C
    jr nz, jr_012_5793                            ; $572F: $20 $62

    ld [hl], l                                    ; $5731: $75
    ld [hl], h                                    ; $5732: $74
    rst $38                                       ; $5733: $FF
    ld c, c                                       ; $5734: $49

jr_012_5735:
    daa                                           ; $5735: $27
    ld l, h                                       ; $5736: $6C
    ld l, h                                       ; $5737: $6C

jr_012_5738:
    jr nz, jr_012_57AE                            ; $5738: $20 $74

    ld h, c                                       ; $573A: $61
    ld l, e                                       ; $573B: $6B
    ld h, l                                       ; $573C: $65
    jr nz, jr_012_57A2                            ; $573D: $20 $63

    ld h, c                                       ; $573F: $61
    ld [hl], d                                    ; $5740: $72
    ld h, l                                       ; $5741: $65
    cp $6F                                        ; $5742: $FE $6F
    ld h, [hl]                                    ; $5744: $66
    jr nz, jr_012_57BB                            ; $5745: $20 $74

    ld l, b                                       ; $5747: $68
    ld h, c                                       ; $5748: $61
    ld [hl], h                                    ; $5749: $74
    ld l, $FE                                     ; $574A: $2E $FE
    db $FD                                        ; $574C: $FD
    sbc d                                         ; $574D: $9A
    ld e, b                                       ; $574E: $58
    ld b, $42                                     ; $574F: $06 $42
    inc h                                         ; $5751: $24
    ld d, b                                       ; $5752: $50
    sbc e                                         ; $5753: $9B
    jr z, jr_012_57CB                             ; $5754: $28 $75

jr_012_5756:
    sbc a                                         ; $5756: $9F

jr_012_5757:
    ld c, a                                       ; $5757: $4F
    ld l, e                                       ; $5758: $6B
    ld h, c                                       ; $5759: $61
    ld a, c                                       ; $575A: $79
    inc l                                         ; $575B: $2C
    jr nz, jr_012_57C6                            ; $575C: $20 $68

    ld h, l                                       ; $575E: $65
    ld [hl], d                                    ; $575F: $72
    ld h, l                                       ; $5760: $65
    daa                                           ; $5761: $27
    ld [hl], e                                    ; $5762: $73
    rst $38                                       ; $5763: $FF
    ld [hl], h                                    ; $5764: $74
    ld l, b                                       ; $5765: $68
    ld h, l                                       ; $5766: $65

jr_012_5767:
    jr nz, jr_012_57D9                            ; $5767: $20 $70

    ld l, h                                       ; $5769: $6C

jr_012_576A:
    ld h, c                                       ; $576A: $61
    ld l, [hl]                                    ; $576B: $6E
    ld l, $2E                                     ; $576C: $2E $2E
    ld l, $FE                                     ; $576E: $2E $FE
    ld c, c                                       ; $5770: $49
    daa                                           ; $5771: $27

jr_012_5772:
    ld l, l                                       ; $5772: $6D
    jr nz, @+$69                                  ; $5773: $20 $67

    ld l, a                                       ; $5775: $6F
    ld l, c                                       ; $5776: $69
    ld l, [hl]                                    ; $5777: $6E
    ld h, a                                       ; $5778: $67

jr_012_5779:
    jr nz, jr_012_57EF                            ; $5779: $20 $74

    ld l, a                                       ; $577B: $6F
    rst $38                                       ; $577C: $FF
    ld h, e                                       ; $577D: $63
    ld h, c                                       ; $577E: $61
    ld [hl], l                                    ; $577F: $75
    ld [hl], e                                    ; $5780: $73

jr_012_5781:
    ld h, l                                       ; $5781: $65
    jr nz, jr_012_57E5                            ; $5782: $20 $61

    jr nz, jr_012_57F2                            ; $5784: $20 $6C

    ld l, c                                       ; $5786: $69
    ld [hl], h                                    ; $5787: $74
    ld [hl], h                                    ; $5788: $74
    ld l, h                                       ; $5789: $6C
    ld h, l                                       ; $578A: $65
    cp $64                                        ; $578B: $FE $64

jr_012_578D:
    ld l, c                                       ; $578D: $69
    ld [hl], e                                    ; $578E: $73
    ld [hl], h                                    ; $578F: $74
    ld [hl], l                                    ; $5790: $75
    ld [hl], d                                    ; $5791: $72
    ld h, d                                       ; $5792: $62

jr_012_5793:
    ld h, c                                       ; $5793: $61
    ld l, [hl]                                    ; $5794: $6E
    ld h, e                                       ; $5795: $63

jr_012_5796:
    ld h, l                                       ; $5796: $65
    jr nz, jr_012_5802                            ; $5797: $20 $69

    ld l, [hl]                                    ; $5799: $6E

jr_012_579A:
    rst $38                                       ; $579A: $FF
    ld [hl], h                                    ; $579B: $74
    ld l, b                                       ; $579C: $68
    ld h, l                                       ; $579D: $65
    jr nz, jr_012_5814                            ; $579E: $20 $74

    ld l, a                                       ; $57A0: $6F
    ld [hl], a                                    ; $57A1: $77

jr_012_57A2:
    ld l, [hl]                                    ; $57A2: $6E
    jr nz, @+$65                                  ; $57A3: $20 $63

    ld h, l                                       ; $57A5: $65
    ld l, [hl]                                    ; $57A6: $6E
    ld [hl], h                                    ; $57A7: $74
    ld h, l                                       ; $57A8: $65
    ld [hl], d                                    ; $57A9: $72
    cp $77                                        ; $57AA: $FE $77
    ld l, b                                       ; $57AC: $68
    ld l, c                                       ; $57AD: $69

jr_012_57AE:
    ld l, h                                       ; $57AE: $6C
    ld h, l                                       ; $57AF: $65
    jr nz, jr_012_582B                            ; $57B0: $20 $79

    ld l, a                                       ; $57B2: $6F
    ld [hl], l                                    ; $57B3: $75
    jr nz, jr_012_5829                            ; $57B4: $20 $73

    ld l, [hl]                                    ; $57B6: $6E
    ld h, l                                       ; $57B7: $65
    ld h, c                                       ; $57B8: $61
    ld l, e                                       ; $57B9: $6B
    rst $38                                       ; $57BA: $FF

jr_012_57BB:
    ld l, c                                       ; $57BB: $69
    ld l, [hl]                                    ; $57BC: $6E
    ld [hl], h                                    ; $57BD: $74
    ld l, a                                       ; $57BE: $6F
    jr nz, jr_012_5802                            ; $57BF: $20 $41

    ld [hl], e                                    ; $57C1: $73
    ld l, b                                       ; $57C2: $68
    ld h, a                                       ; $57C3: $67
    ld h, c                                       ; $57C4: $61
    ld [hl], d                                    ; $57C5: $72

jr_012_57C6:
    daa                                           ; $57C6: $27
    ld [hl], e                                    ; $57C7: $73
    cp $68                                        ; $57C8: $FE $68
    ld l, a                                       ; $57CA: $6F

jr_012_57CB:
    ld [hl], l                                    ; $57CB: $75
    ld [hl], e                                    ; $57CC: $73
    ld h, l                                       ; $57CD: $65
    jr nz, jr_012_5831                            ; $57CE: $20 $61

    ld l, [hl]                                    ; $57D0: $6E
    ld h, h                                       ; $57D1: $64
    jr nz, jr_012_583B                            ; $57D2: $20 $67

    ld [hl], d                                    ; $57D4: $72
    ld h, c                                       ; $57D5: $61
    ld h, d                                       ; $57D6: $62
    rst $38                                       ; $57D7: $FF
    ld [hl], h                                    ; $57D8: $74

jr_012_57D9:
    ld l, b                                       ; $57D9: $68
    ld h, l                                       ; $57DA: $65
    jr nz, @+$6D                                  ; $57DB: $20 $6B

    ld h, l                                       ; $57DD: $65
    ld a, c                                       ; $57DE: $79
    ld hl, $47FE                                  ; $57DF: $21 $FE $47
    ld l, a                                       ; $57E2: $6F
    ld l, a                                       ; $57E3: $6F
    ld h, h                                       ; $57E4: $64

jr_012_57E5:
    jr nz, jr_012_5853                            ; $57E5: $20 $6C

    ld [hl], l                                    ; $57E7: $75
    ld h, e                                       ; $57E8: $63
    ld l, e                                       ; $57E9: $6B
    ld hl, $FDFE                                  ; $57EA: $21 $FE $FD
    sbc d                                         ; $57ED: $9A
    ld e, b                                       ; $57EE: $58

jr_012_57EF:
    rlca                                          ; $57EF: $07
    ld b, d                                       ; $57F0: $42
    sbc e                                         ; $57F1: $9B

jr_012_57F2:
    ld a, b                                       ; $57F2: $78
    ld [hl], b                                    ; $57F3: $70
    sbc a                                         ; $57F4: $9F
    ld d, a                                       ; $57F5: $57
    ld c, b                                       ; $57F6: $48
    ld b, c                                       ; $57F7: $41
    ld d, h                                       ; $57F8: $54
    ccf                                           ; $57F9: $3F
    ld hl, $4D20                                  ; $57FA: $21 $20 $4D
    ld b, l                                       ; $57FD: $45
    ccf                                           ; $57FE: $3F
    rst $38                                       ; $57FF: $FF
    ld d, a                                       ; $5800: $57
    ld l, b                                       ; $5801: $68

jr_012_5802:
    ld a, c                                       ; $5802: $79
    jr nz, @+$6F                                  ; $5803: $20 $6D

    ld h, l                                       ; $5805: $65
    ccf                                           ; $5806: $3F
    ld hl, $FDFE                                  ; $5807: $21 $FE $FD
    sbc e                                         ; $580A: $9B
    jr z, jr_012_5882                             ; $580B: $28 $75

    sbc a                                         ; $580D: $9F
    ld e, c                                       ; $580E: $59
    ld l, a                                       ; $580F: $6F
    ld [hl], l                                    ; $5810: $75
    jr nz, jr_012_5876                            ; $5811: $20 $63

    ld h, c                                       ; $5813: $61

jr_012_5814:
    ld l, [hl]                                    ; $5814: $6E
    jr nz, jr_012_587B                            ; $5815: $20 $64

    ld l, a                                       ; $5817: $6F
    jr nz, jr_012_5883                            ; $5818: $20 $69

    ld [hl], h                                    ; $581A: $74
    ld hl, $49FE                                  ; $581B: $21 $FE $49
    jr nz, jr_012_5882                            ; $581E: $20 $62

    ld h, l                                       ; $5820: $65
    ld l, h                                       ; $5821: $6C
    ld l, c                                       ; $5822: $69
    ld h, l                                       ; $5823: $65
    halt                                          ; $5824: $76
    ld h, l                                       ; $5825: $65
    jr nz, @+$6B                                  ; $5826: $20 $69

    ld l, [hl]                                    ; $5828: $6E

jr_012_5829:
    rst $38                                       ; $5829: $FF
    ld a, c                                       ; $582A: $79

jr_012_582B:
    ld l, a                                       ; $582B: $6F
    ld [hl], l                                    ; $582C: $75
    ld hl, $FDFE                                  ; $582D: $21 $FE $FD
    sbc e                                         ; $5830: $9B

jr_012_5831:
    ld a, b                                       ; $5831: $78
    ld [hl], b                                    ; $5832: $70
    sbc a                                         ; $5833: $9F
    ld c, [hl]                                    ; $5834: $4E
    ld l, a                                       ; $5835: $6F
    inc l                                         ; $5836: $2C
    jr nz, jr_012_58AD                            ; $5837: $20 $74

    ld l, b                                       ; $5839: $68
    ld h, c                                       ; $583A: $61

jr_012_583B:
    ld [hl], h                                    ; $583B: $74
    daa                                           ; $583C: $27
    ld [hl], e                                    ; $583D: $73
    jr nz, jr_012_58AE                            ; $583E: $20 $6E

    ld l, a                                       ; $5840: $6F
    ld [hl], h                                    ; $5841: $74
    rst $38                                       ; $5842: $FF
    ld [hl], a                                    ; $5843: $77
    ld l, b                                       ; $5844: $68
    ld h, c                                       ; $5845: $61
    ld [hl], h                                    ; $5846: $74
    jr nz, @+$4B                                  ; $5847: $20 $49

    jr nz, jr_012_58B8                            ; $5849: $20 $6D

    ld h, l                                       ; $584B: $65
    ld h, c                                       ; $584C: $61
    ld l, [hl]                                    ; $584D: $6E
    ld [hl], h                                    ; $584E: $74
    ld hl, $FDFE                                  ; $584F: $21 $FE $FD
    sbc d                                         ; $5852: $9A

jr_012_5853:
    ld b, b                                       ; $5853: $40
    jr nz, jr_012_58AE                            ; $5854: $20 $58

    ld d, b                                       ; $5856: $50
    sbc e                                         ; $5857: $9B
    ld a, b                                       ; $5858: $78
    ld [hl], b                                    ; $5859: $70
    sbc a                                         ; $585A: $9F
    ld l, $2E                                     ; $585B: $2E $2E
    ld l, $2E                                     ; $585D: $2E $2E
    ld l, $2E                                     ; $585F: $2E $2E
    ld l, $2E                                     ; $5861: $2E $2E
    ld l, $FE                                     ; $5863: $2E $FE
    ld c, a                                       ; $5865: $4F
    ld l, b                                       ; $5866: $68
    jr nz, jr_012_58CF                            ; $5867: $20 $66

    ld l, a                                       ; $5869: $6F
    ld [hl], d                                    ; $586A: $72
    ld h, a                                       ; $586B: $67
    ld h, l                                       ; $586C: $65
    ld [hl], h                                    ; $586D: $74
    jr nz, jr_012_58D9                            ; $586E: $20 $69

    ld [hl], h                                    ; $5870: $74
    ld l, $2E                                     ; $5871: $2E $2E
    ld l, $FE                                     ; $5873: $2E $FE
    db $FD                                        ; $5875: $FD

jr_012_5876:
    sbc d                                         ; $5876: $9A
    ld e, b                                       ; $5877: $58
    ld [$9B42], sp                                ; $5878: $08 $42 $9B

jr_012_587B:
    jr z, jr_012_58F2                             ; $587B: $28 $75

    sbc a                                         ; $587D: $9F
    ld b, c                                       ; $587E: $41
    ld h, c                                       ; $587F: $61
    ld h, c                                       ; $5880: $61
    ld h, a                                       ; $5881: $67

jr_012_5882:
    ld l, b                                       ; $5882: $68

jr_012_5883:
    ld hl, $4620                                  ; $5883: $21 $20 $46
    ld l, c                                       ; $5886: $69
    ld [hl], d                                    ; $5887: $72
    ld h, l                                       ; $5888: $65
    ld hl, $FE21                                  ; $5889: $21 $21 $FE
    ld b, [hl]                                    ; $588C: $46
    ld c, c                                       ; $588D: $49
    ld d, d                                       ; $588E: $52
    ld b, l                                       ; $588F: $45
    ld hl, $2121                                  ; $5890: $21 $21 $21
    ld hl, $2121                                  ; $5893: $21 $21 $21
    cp $54                                        ; $5896: $FE $54
    ld l, b                                       ; $5898: $68
    ld h, l                                       ; $5899: $65
    ld [hl], d                                    ; $589A: $72
    ld h, l                                       ; $589B: $65
    daa                                           ; $589C: $27
    ld [hl], e                                    ; $589D: $73
    jr nz, jr_012_58E6                            ; $589E: $20 $46

    ld c, c                                       ; $58A0: $49
    ld d, d                                       ; $58A1: $52
    ld b, l                                       ; $58A2: $45
    rst $38                                       ; $58A3: $FF
    ld h, l                                       ; $58A4: $65
    halt                                          ; $58A5: $76
    ld h, l                                       ; $58A6: $65
    ld [hl], d                                    ; $58A7: $72
    ld a, c                                       ; $58A8: $79
    ld [hl], a                                    ; $58A9: $77
    ld l, b                                       ; $58AA: $68
    ld h, l                                       ; $58AB: $65
    ld [hl], d                                    ; $58AC: $72

jr_012_58AD:
    ld h, l                                       ; $58AD: $65

jr_012_58AE:
    ld hl, $FE21                                  ; $58AE: $21 $21 $FE
    ld c, [hl]                                    ; $58B1: $4E
    ld l, a                                       ; $58B2: $6F
    ld l, a                                       ; $58B3: $6F
    ld hl, $4F20                                  ; $58B4: $21 $20 $4F
    ld l, b                                       ; $58B7: $68

jr_012_58B8:
    inc l                                         ; $58B8: $2C
    jr nz, jr_012_592F                            ; $58B9: $20 $74

    ld l, b                                       ; $58BB: $68
    ld h, l                                       ; $58BC: $65
    rst $38                                       ; $58BD: $FF
    ld l, b                                       ; $58BE: $68
    ld [hl], l                                    ; $58BF: $75
    ld l, l                                       ; $58C0: $6D
    ld h, c                                       ; $58C1: $61
    ld l, [hl]                                    ; $58C2: $6E
    ld l, c                                       ; $58C3: $69
    ld [hl], h                                    ; $58C4: $74
    ld a, c                                       ; $58C5: $79
    ld hl, $5420                                  ; $58C6: $21 $20 $54
    ld l, b                                       ; $58C9: $68
    ld h, l                                       ; $58CA: $65
    cp $73                                        ; $58CB: $FE $73
    ld l, a                                       ; $58CD: $6F
    ld [hl], d                                    ; $58CE: $72

jr_012_58CF:
    ld [hl], d                                    ; $58CF: $72
    ld l, a                                       ; $58D0: $6F
    ld [hl], a                                    ; $58D1: $77
    ld hl, $2021                                  ; $58D2: $21 $21 $20
    ld c, c                                       ; $58D5: $49
    ld [hl], h                                    ; $58D6: $74
    daa                                           ; $58D7: $27
    ld [hl], e                                    ; $58D8: $73

jr_012_58D9:
    rst $38                                       ; $58D9: $FF
    ld [hl], e                                    ; $58DA: $73
    ld [hl], b                                    ; $58DB: $70
    ld [hl], d                                    ; $58DC: $72
    ld h, l                                       ; $58DD: $65
    ld h, c                                       ; $58DE: $61
    ld h, h                                       ; $58DF: $64
    ld l, c                                       ; $58E0: $69
    ld l, [hl]                                    ; $58E1: $6E
    ld h, a                                       ; $58E2: $67
    ld hl, $FE21                                  ; $58E3: $21 $21 $FE

jr_012_58E6:
    ld d, a                                       ; $58E6: $57
    ld h, l                                       ; $58E7: $65
    daa                                           ; $58E8: $27
    ld l, h                                       ; $58E9: $6C
    ld l, h                                       ; $58EA: $6C
    jr nz, jr_012_594E                            ; $58EB: $20 $61

    ld l, h                                       ; $58ED: $6C
    ld l, h                                       ; $58EE: $6C
    jr nz, jr_012_5953                            ; $58EF: $20 $62

    ld h, l                                       ; $58F1: $65

jr_012_58F2:
    cp $62                                        ; $58F2: $FE $62
    ld [hl], l                                    ; $58F4: $75
    ld [hl], d                                    ; $58F5: $72
    ld l, [hl]                                    ; $58F6: $6E
    ld [hl], h                                    ; $58F7: $74
    jr nz, jr_012_596E                            ; $58F8: $20 $74

    ld l, a                                       ; $58FA: $6F
    jr nz, @+$63                                  ; $58FB: $20 $61

    cp $63                                        ; $58FD: $FE $63
    ld l, c                                       ; $58FF: $69
    ld l, [hl]                                    ; $5900: $6E
    ld h, h                                       ; $5901: $64
    ld h, l                                       ; $5902: $65
    ld [hl], d                                    ; $5903: $72
    ld hl, $4F20                                  ; $5904: $21 $20 $4F
    ld [hl], l                                    ; $5907: $75
    ld [hl], d                                    ; $5908: $72
    rst $38                                       ; $5909: $FF
    ld h, [hl]                                    ; $590A: $66
    ld l, h                                       ; $590B: $6C
    ld h, l                                       ; $590C: $65
    ld [hl], e                                    ; $590D: $73
    ld l, b                                       ; $590E: $68
    jr nz, jr_012_5988                            ; $590F: $20 $77

    ld l, c                                       ; $5911: $69
    ld l, h                                       ; $5912: $6C
    ld l, h                                       ; $5913: $6C
    jr nz, jr_012_5978                            ; $5914: $20 $62

    ld h, l                                       ; $5916: $65
    cp $73                                        ; $5917: $FE $73
    ld h, l                                       ; $5919: $65
    ld h, c                                       ; $591A: $61
    ld [hl], d                                    ; $591B: $72
    ld h, l                                       ; $591C: $65
    ld h, h                                       ; $591D: $64
    jr nz, jr_012_5994                            ; $591E: $20 $74

    ld l, a                                       ; $5920: $6F
    jr nz, jr_012_5997                            ; $5921: $20 $74

    ld l, b                                       ; $5923: $68
    ld h, l                                       ; $5924: $65
    rst $38                                       ; $5925: $FF
    halt                                          ; $5926: $76
    ld h, l                                       ; $5927: $65
    ld [hl], d                                    ; $5928: $72
    ld a, c                                       ; $5929: $79
    jr nz, @+$64                                  ; $592A: $20 $62

    ld l, a                                       ; $592C: $6F
    ld l, [hl]                                    ; $592D: $6E
    ld h, l                                       ; $592E: $65

jr_012_592F:
    ld hl, $48FE                                  ; $592F: $21 $FE $48
    ld c, a                                       ; $5932: $4F
    ld d, h                                       ; $5933: $54
    jr nz, jr_012_597E                            ; $5934: $20 $48

    ld c, a                                       ; $5936: $4F
    ld d, h                                       ; $5937: $54
    jr nz, jr_012_5982                            ; $5938: $20 $48

    ld c, a                                       ; $593A: $4F
    ld d, h                                       ; $593B: $54
    ld hl, $FE21                                  ; $593C: $21 $21 $FE
    db $FD                                        ; $593F: $FD
    sbc e                                         ; $5940: $9B
    ld a, b                                       ; $5941: $78
    ld [hl], b                                    ; $5942: $70
    sbc a                                         ; $5943: $9F
    ld l, $2E                                     ; $5944: $2E $2E
    ld l, $74                                     ; $5946: $2E $74
    ld l, b                                       ; $5948: $68
    ld h, l                                       ; $5949: $65
    ld a, c                                       ; $594A: $79
    daa                                           ; $594B: $27
    ld [hl], d                                    ; $594C: $72
    ld h, l                                       ; $594D: $65

jr_012_594E:
    rst $38                                       ; $594E: $FF
    ld l, [hl]                                    ; $594F: $6E
    ld h, l                                       ; $5950: $65
    halt                                          ; $5951: $76
    ld h, l                                       ; $5952: $65

jr_012_5953:
    ld [hl], d                                    ; $5953: $72
    jr nz, jr_012_59BD                            ; $5954: $20 $67

    ld l, a                                       ; $5956: $6F
    ld l, c                                       ; $5957: $69
    ld l, [hl]                                    ; $5958: $6E
    ld h, a                                       ; $5959: $67
    jr nz, jr_012_59D0                            ; $595A: $20 $74

    ld l, a                                       ; $595C: $6F
    cp $62                                        ; $595D: $FE $62
    ld [hl], l                                    ; $595F: $75
    ld a, c                                       ; $5960: $79
    jr nz, jr_012_59D7                            ; $5961: $20 $74

    ld l, b                                       ; $5963: $68
    ld l, c                                       ; $5964: $69
    ld [hl], e                                    ; $5965: $73
    ld l, $2E                                     ; $5966: $2E $2E
    ld l, $FE                                     ; $5968: $2E $FE
    db $FD                                        ; $596A: $FD
    sbc d                                         ; $596B: $9A
    ld e, b                                       ; $596C: $58
    ld e, d                                       ; $596D: $5A

jr_012_596E:
    rra                                           ; $596E: $1F
    rla                                           ; $596F: $17
    ld b, b                                       ; $5970: $40
    ld b, b                                       ; $5971: $40
    sbc e                                         ; $5972: $9B
    add hl, bc                                    ; $5973: $09
    ld b, b                                       ; $5974: $40
    sbc a                                         ; $5975: $9F
    ld d, a                                       ; $5976: $57
    ld l, b                                       ; $5977: $68

jr_012_5978:
    ld h, c                                       ; $5978: $61
    ld [hl], h                                    ; $5979: $74
    ccf                                           ; $597A: $3F
    ld hl, $5720                                  ; $597B: $21 $20 $57

jr_012_597E:
    ld l, b                                       ; $597E: $68
    ld h, c                                       ; $597F: $61
    ld [hl], h                                    ; $5980: $74
    rst $38                                       ; $5981: $FF

jr_012_5982:
    ld l, c                                       ; $5982: $69
    ld [hl], e                                    ; $5983: $73
    jr nz, jr_012_59ED                            ; $5984: $20 $67

    ld l, a                                       ; $5986: $6F
    ld l, c                                       ; $5987: $69

jr_012_5988:
    ld l, [hl]                                    ; $5988: $6E
    ld h, a                                       ; $5989: $67
    jr nz, jr_012_59FB                            ; $598A: $20 $6F

    ld l, [hl]                                    ; $598C: $6E
    cp $6F                                        ; $598D: $FE $6F
    ld [hl], l                                    ; $598F: $75
    ld [hl], h                                    ; $5990: $74
    jr nz, jr_012_59FB                            ; $5991: $20 $68

    ld h, l                                       ; $5993: $65

jr_012_5994:
    ld [hl], d                                    ; $5994: $72
    ld h, l                                       ; $5995: $65
    ccf                                           ; $5996: $3F

jr_012_5997:
    ld hl, $FDFE                                  ; $5997: $21 $FE $FD
    sbc d                                         ; $599A: $9A
    ld b, b                                       ; $599B: $40
    ld b, b                                       ; $599C: $40
    ld e, b                                       ; $599D: $58
    add hl, bc                                    ; $599E: $09
    ld b, d                                       ; $599F: $42
    sbc e                                         ; $59A0: $9B
    ld a, b                                       ; $59A1: $78
    ld [hl], b                                    ; $59A2: $70
    sbc a                                         ; $59A3: $9F
    ld l, $2E                                     ; $59A4: $2E $2E
    ld l, $2E                                     ; $59A6: $2E $2E
    ld l, $2E                                     ; $59A8: $2E $2E
    ld l, $2E                                     ; $59AA: $2E $2E
    ld l, $FE                                     ; $59AC: $2E $FE
    ld d, l                                       ; $59AE: $55
    ld l, [hl]                                    ; $59AF: $6E
    ld h, d                                       ; $59B0: $62
    ld h, l                                       ; $59B1: $65
    ld l, h                                       ; $59B2: $6C
    ld l, c                                       ; $59B3: $69
    ld h, l                                       ; $59B4: $65
    halt                                          ; $59B5: $76
    ld h, c                                       ; $59B6: $61
    ld h, d                                       ; $59B7: $62
    ld l, h                                       ; $59B8: $6C
    ld h, l                                       ; $59B9: $65
    ld l, $FE                                     ; $59BA: $2E $FE
    db $FD                                        ; $59BC: $FD

jr_012_59BD:
    sbc d                                         ; $59BD: $9A
    ld e, b                                       ; $59BE: $58
    ld a, [bc]                                    ; $59BF: $0A
    ld b, d                                       ; $59C0: $42
    sbc e                                         ; $59C1: $9B
    jr z, jr_012_5A39                             ; $59C2: $28 $75

    sbc a                                         ; $59C4: $9F
    ld c, [hl]                                    ; $59C5: $4E
    ld l, a                                       ; $59C6: $6F
    inc l                                         ; $59C7: $2C
    jr nz, jr_012_5A33                            ; $59C8: $20 $69

    ld [hl], h                                    ; $59CA: $74
    daa                                           ; $59CB: $27
    ld [hl], e                                    ; $59CC: $73
    jr nz, jr_012_5A35                            ; $59CD: $20 $66

    ld l, c                                       ; $59CF: $69

jr_012_59D0:
    ld [hl], d                                    ; $59D0: $72
    ld h, l                                       ; $59D1: $65
    ld hl, $49FE                                  ; $59D2: $21 $FE $49
    jr nz, jr_012_5A44                            ; $59D5: $20 $6D

jr_012_59D7:
    ld h, l                                       ; $59D7: $65
    ld h, c                                       ; $59D8: $61
    ld l, [hl]                                    ; $59D9: $6E
    inc l                                         ; $59DA: $2C
    jr nz, jr_012_5A49                            ; $59DB: $20 $6C

    ld l, a                                       ; $59DD: $6F
    ld l, a                                       ; $59DE: $6F
    ld l, e                                       ; $59DF: $6B
    rst $38                                       ; $59E0: $FF
    ld h, c                                       ; $59E1: $61
    ld [hl], h                                    ; $59E2: $74
    jr nz, jr_012_5A4E                            ; $59E3: $20 $69

    ld [hl], h                                    ; $59E5: $74
    ld hl, $FDFE                                  ; $59E6: $21 $FE $FD
    sbc e                                         ; $59E9: $9B
    add hl, bc                                    ; $59EA: $09
    ld b, b                                       ; $59EB: $40
    sbc a                                         ; $59EC: $9F

jr_012_59ED:
    ld c, b                                       ; $59ED: $48
    ld l, a                                       ; $59EE: $6F
    ld [hl], a                                    ; $59EF: $77
    jr nz, jr_012_5A5F                            ; $59F0: $20 $6D

    ld h, c                                       ; $59F2: $61
    ld l, [hl]                                    ; $59F3: $6E
    ld a, c                                       ; $59F4: $79
    jr nz, jr_012_5A6B                            ; $59F5: $20 $74

    ld l, c                                       ; $59F7: $69
    ld l, l                                       ; $59F8: $6D
    ld h, l                                       ; $59F9: $65
    ld [hl], e                                    ; $59FA: $73

jr_012_59FB:
    rst $38                                       ; $59FB: $FF
    ld l, l                                       ; $59FC: $6D
    ld [hl], l                                    ; $59FD: $75
    ld [hl], e                                    ; $59FE: $73
    ld [hl], h                                    ; $59FF: $74
    jr nz, jr_012_5A4B                            ; $5A00: $20 $49

    jr nz, jr_012_5A69                            ; $5A02: $20 $65

    ld a, b                                       ; $5A04: $78
    ld [hl], b                                    ; $5A05: $70
    ld l, h                                       ; $5A06: $6C
    ld h, c                                       ; $5A07: $61
    ld l, c                                       ; $5A08: $69
    ld l, [hl]                                    ; $5A09: $6E
    cp $69                                        ; $5A0A: $FE $69
    ld [hl], h                                    ; $5A0C: $74
    jr nz, jr_012_5A83                            ; $5A0D: $20 $74

    ld l, a                                       ; $5A0F: $6F
    jr nz, jr_012_5A8B                            ; $5A10: $20 $79

    ld l, a                                       ; $5A12: $6F
    ld [hl], l                                    ; $5A13: $75
    ccf                                           ; $5A14: $3F
    ld hl, $49FF                                  ; $5A15: $21 $FF $49
    ld [hl], h                                    ; $5A18: $74
    jr nz, @+$6B                                  ; $5A19: $20 $69

    ld [hl], e                                    ; $5A1B: $73
    jr nz, @+$70                                  ; $5A1C: $20 $6E

    ld l, a                                       ; $5A1E: $6F
    ld [hl], h                                    ; $5A1F: $74
    ld l, b                                       ; $5A20: $68
    ld l, c                                       ; $5A21: $69
    ld l, [hl]                                    ; $5A22: $6E
    ld h, a                                       ; $5A23: $67
    cp $6D                                        ; $5A24: $FE $6D
    ld l, a                                       ; $5A26: $6F
    ld [hl], d                                    ; $5A27: $72
    ld h, l                                       ; $5A28: $65
    jr nz, jr_012_5A9F                            ; $5A29: $20 $74

    ld l, b                                       ; $5A2B: $68
    ld h, c                                       ; $5A2C: $61
    ld l, [hl]                                    ; $5A2D: $6E
    jr nz, jr_012_5A91                            ; $5A2E: $20 $61

    rst $38                                       ; $5A30: $FF
    ld [hl], e                                    ; $5A31: $73
    ld l, l                                       ; $5A32: $6D

jr_012_5A33:
    ld h, c                                       ; $5A33: $61
    ld l, h                                       ; $5A34: $6C

jr_012_5A35:
    ld l, h                                       ; $5A35: $6C
    jr nz, jr_012_5AA8                            ; $5A36: $20 $70

    ld l, a                                       ; $5A38: $6F

jr_012_5A39:
    ld l, a                                       ; $5A39: $6F
    ld l, h                                       ; $5A3A: $6C
    jr nz, jr_012_5AAC                            ; $5A3B: $20 $6F

    ld h, [hl]                                    ; $5A3D: $66
    cp $6D                                        ; $5A3E: $FE $6D
    ld h, c                                       ; $5A40: $61
    ld h, a                                       ; $5A41: $67
    ld l, l                                       ; $5A42: $6D
    ld h, c                                       ; $5A43: $61

jr_012_5A44:
    inc l                                         ; $5A44: $2C
    jr nz, jr_012_5ABB                            ; $5A45: $20 $74

    ld l, b                                       ; $5A47: $68
    ld h, l                                       ; $5A48: $65

jr_012_5A49:
    jr nz, @+$75                                  ; $5A49: $20 $73

jr_012_5A4B:
    ld h, c                                       ; $5A4B: $61
    ld l, l                                       ; $5A4C: $6D
    ld h, l                                       ; $5A4D: $65

jr_012_5A4E:
    rst $38                                       ; $5A4E: $FF
    ld l, a                                       ; $5A4F: $6F
    ld l, [hl]                                    ; $5A50: $6E
    ld h, l                                       ; $5A51: $65
    jr nz, jr_012_5AC8                            ; $5A52: $20 $74

    ld l, b                                       ; $5A54: $68
    ld h, c                                       ; $5A55: $61
    ld [hl], h                                    ; $5A56: $74
    jr nz, jr_012_5AC1                            ; $5A57: $20 $68

    ld h, c                                       ; $5A59: $61
    ld [hl], e                                    ; $5A5A: $73
    cp $62                                        ; $5A5B: $FE $62
    ld h, l                                       ; $5A5D: $65
    ld h, l                                       ; $5A5E: $65

jr_012_5A5F:
    ld l, [hl]                                    ; $5A5F: $6E
    jr nz, @+$6B                                  ; $5A60: $20 $69

    ld l, [hl]                                    ; $5A62: $6E
    jr nz, jr_012_5AD9                            ; $5A63: $20 $74

    ld l, b                                       ; $5A65: $68
    ld h, c                                       ; $5A66: $61
    ld [hl], h                                    ; $5A67: $74
    rst $38                                       ; $5A68: $FF

jr_012_5A69:
    ld [hl], e                                    ; $5A69: $73
    ld [hl], b                                    ; $5A6A: $70

jr_012_5A6B:
    ld l, a                                       ; $5A6B: $6F
    ld [hl], h                                    ; $5A6C: $74
    jr nz, jr_012_5AD5                            ; $5A6D: $20 $66

    ld l, a                                       ; $5A6F: $6F
    ld [hl], d                                    ; $5A70: $72
    jr nz, jr_012_5AE2                            ; $5A71: $20 $6F

    halt                                          ; $5A73: $76
    ld h, l                                       ; $5A74: $65
    ld [hl], d                                    ; $5A75: $72
    cp $34                                        ; $5A76: $FE $34
    jr nc, jr_012_5A9A                            ; $5A78: $30 $20

    ld a, c                                       ; $5A7A: $79
    ld h, l                                       ; $5A7B: $65
    ld h, c                                       ; $5A7C: $61
    ld [hl], d                                    ; $5A7D: $72
    ld [hl], e                                    ; $5A7E: $73
    ld hl, $FDFE                                  ; $5A7F: $21 $FE $FD
    sbc e                                         ; $5A82: $9B

jr_012_5A83:
    jr z, jr_012_5AFA                             ; $5A83: $28 $75

    sbc a                                         ; $5A85: $9F
    ld d, e                                       ; $5A86: $53
    ld [hl], b                                    ; $5A87: $70
    ld h, c                                       ; $5A88: $61
    ld [hl], d                                    ; $5A89: $72
    ld h, l                                       ; $5A8A: $65

jr_012_5A8B:
    jr nz, jr_012_5AFA                            ; $5A8B: $20 $6D

    ld h, l                                       ; $5A8D: $65
    jr nz, jr_012_5B09                            ; $5A8E: $20 $79

    ld l, a                                       ; $5A90: $6F

jr_012_5A91:
    ld [hl], l                                    ; $5A91: $75
    ld [hl], d                                    ; $5A92: $72
    rst $38                                       ; $5A93: $FF
    ld h, h                                       ; $5A94: $64
    ld l, a                                       ; $5A95: $6F
    ld h, a                                       ; $5A96: $67
    jr nz, jr_012_5AFA                            ; $5A97: $20 $61

    ld l, [hl]                                    ; $5A99: $6E

jr_012_5A9A:
    ld h, h                                       ; $5A9A: $64
    jr nz, jr_012_5B0D                            ; $5A9B: $20 $70

    ld l, a                                       ; $5A9D: $6F
    ld l, [hl]                                    ; $5A9E: $6E

jr_012_5A9F:
    ld a, c                                       ; $5A9F: $79
    cp $73                                        ; $5AA0: $FE $73
    ld l, b                                       ; $5AA2: $68
    ld l, a                                       ; $5AA3: $6F
    ld [hl], a                                    ; $5AA4: $77
    ld hl, $4920                                  ; $5AA5: $21 $20 $49

jr_012_5AA8:
    jr nz, jr_012_5B15                            ; $5AA8: $20 $6B

    ld l, [hl]                                    ; $5AAA: $6E
    ld l, a                                       ; $5AAB: $6F

jr_012_5AAC:
    ld [hl], a                                    ; $5AAC: $77
    rst $38                                       ; $5AAD: $FF
    ld [hl], a                                    ; $5AAE: $77
    ld l, b                                       ; $5AAF: $68
    ld h, c                                       ; $5AB0: $61
    ld [hl], h                                    ; $5AB1: $74
    jr nz, jr_012_5AFD                            ; $5AB2: $20 $49

    jr nz, jr_012_5B29                            ; $5AB4: $20 $73

    ld h, l                                       ; $5AB6: $65
    ld h, l                                       ; $5AB7: $65
    inc l                                         ; $5AB8: $2C
    jr nz, @+$63                                  ; $5AB9: $20 $61

jr_012_5ABB:
    ld l, [hl]                                    ; $5ABB: $6E
    ld h, h                                       ; $5ABC: $64
    cp $72                                        ; $5ABD: $FE $72
    ld l, c                                       ; $5ABF: $69
    ld h, a                                       ; $5AC0: $67

jr_012_5AC1:
    ld l, b                                       ; $5AC1: $68
    ld [hl], h                                    ; $5AC2: $74
    jr nz, jr_012_5B39                            ; $5AC3: $20 $74

    ld l, b                                       ; $5AC5: $68
    ld h, l                                       ; $5AC6: $65
    ld [hl], d                                    ; $5AC7: $72

jr_012_5AC8:
    ld h, l                                       ; $5AC8: $65
    inc l                                         ; $5AC9: $2C
    jr nz, jr_012_5B15                            ; $5ACA: $20 $49

    rst $38                                       ; $5ACC: $FF
    ld [hl], e                                    ; $5ACD: $73
    ld h, l                                       ; $5ACE: $65
    ld h, l                                       ; $5ACF: $65
    jr nz, jr_012_5B18                            ; $5AD0: $20 $46

    ld c, c                                       ; $5AD2: $49
    ld d, d                                       ; $5AD3: $52
    ld b, l                                       ; $5AD4: $45

jr_012_5AD5:
    ld hl, $FDFE                                  ; $5AD5: $21 $FE $FD
    sbc e                                         ; $5AD8: $9B

jr_012_5AD9:
    add hl, bc                                    ; $5AD9: $09
    ld b, b                                       ; $5ADA: $40
    sbc a                                         ; $5ADB: $9F
    ld c, a                                       ; $5ADC: $4F
    ld l, b                                       ; $5ADD: $68
    inc l                                         ; $5ADE: $2C
    jr nz, jr_012_5B47                            ; $5ADF: $20 $66

    ld l, a                                       ; $5AE1: $6F

jr_012_5AE2:
    ld [hl], d                                    ; $5AE2: $72
    jr nz, jr_012_5B48                            ; $5AE3: $20 $63

    ld [hl], d                                    ; $5AE5: $72
    ld a, c                                       ; $5AE6: $79
    ld l, c                                       ; $5AE7: $69
    ld l, [hl]                                    ; $5AE8: $6E
    ld h, a                                       ; $5AE9: $67
    rst $38                                       ; $5AEA: $FF
    ld l, a                                       ; $5AEB: $6F
    ld [hl], l                                    ; $5AEC: $75
    ld [hl], h                                    ; $5AED: $74
    jr nz, jr_012_5B5C                            ; $5AEE: $20 $6C

    ld l, a                                       ; $5AF0: $6F
    ld [hl], l                                    ; $5AF1: $75
    ld h, h                                       ; $5AF2: $64
    ld l, $2E                                     ; $5AF3: $2E $2E
    ld l, $FE                                     ; $5AF5: $2E $FE
    db $FD                                        ; $5AF7: $FD
    sbc d                                         ; $5AF8: $9A
    ld e, b                                       ; $5AF9: $58

jr_012_5AFA:
    dec bc                                        ; $5AFA: $0B
    ld b, d                                       ; $5AFB: $42
    sbc e                                         ; $5AFC: $9B

jr_012_5AFD:
    jr z, jr_012_5B74                             ; $5AFD: $28 $75

    sbc a                                         ; $5AFF: $9F
    ld c, a                                       ; $5B00: $4F
    ld c, b                                       ; $5B01: $48
    ld c, b                                       ; $5B02: $48
    ld c, b                                       ; $5B03: $48
    ld c, b                                       ; $5B04: $48
    ld hl, $2021                                  ; $5B05: $21 $21 $20
    ld c, c                                       ; $5B08: $49

jr_012_5B09:
    jr nz, jr_012_5B72                            ; $5B09: $20 $67

    ld h, l                                       ; $5B0B: $65
    ld [hl], h                                    ; $5B0C: $74

jr_012_5B0D:
    rst $38                                       ; $5B0D: $FF
    ld l, c                                       ; $5B0E: $69
    ld [hl], h                                    ; $5B0F: $74
    inc l                                         ; $5B10: $2C
    jr nz, jr_012_5B87                            ; $5B11: $20 $74

    ld l, b                                       ; $5B13: $68
    ld l, c                                       ; $5B14: $69

jr_012_5B15:
    ld [hl], e                                    ; $5B15: $73
    jr nz, jr_012_5B81                            ; $5B16: $20 $69

jr_012_5B18:
    ld [hl], e                                    ; $5B18: $73
    jr nz, jr_012_5B7C                            ; $5B19: $20 $61

    cp $70                                        ; $5B1B: $FE $70
    ld l, a                                       ; $5B1D: $6F
    ld l, a                                       ; $5B1E: $6F
    ld l, h                                       ; $5B1F: $6C
    jr nz, jr_012_5B91                            ; $5B20: $20 $6F

    ld h, [hl]                                    ; $5B22: $66
    jr nz, jr_012_5B92                            ; $5B23: $20 $6D

    ld h, c                                       ; $5B25: $61
    ld h, a                                       ; $5B26: $67
    ld l, l                                       ; $5B27: $6D
    ld h, c                                       ; $5B28: $61

jr_012_5B29:
    ld hl, $57FF                                  ; $5B29: $21 $FF $57
    ld h, l                                       ; $5B2C: $65
    ld l, h                                       ; $5B2D: $6C
    ld l, h                                       ; $5B2E: $6C
    jr nz, jr_012_5BA5                            ; $5B2F: $20 $74

    ld l, b                                       ; $5B31: $68
    ld h, c                                       ; $5B32: $61
    ld l, [hl]                                    ; $5B33: $6E
    ld l, e                                       ; $5B34: $6B
    ld [hl], e                                    ; $5B35: $73
    jr nz, jr_012_5BA5                            ; $5B36: $20 $6D

    ld a, c                                       ; $5B38: $79

jr_012_5B39:
    cp $6D                                        ; $5B39: $FE $6D
    ld h, c                                       ; $5B3B: $61
    ld l, [hl]                                    ; $5B3C: $6E
    jr nz, jr_012_5B80                            ; $5B3D: $20 $41

    ld [hl], e                                    ; $5B3F: $73
    ld l, b                                       ; $5B40: $68
    ld h, a                                       ; $5B41: $67
    ld h, c                                       ; $5B42: $61
    ld [hl], d                                    ; $5B43: $72
    ld hl, $4920                                  ; $5B44: $21 $20 $49

jr_012_5B47:
    rst $38                                       ; $5B47: $FF

jr_012_5B48:
    ld l, b                                       ; $5B48: $68
    ld h, c                                       ; $5B49: $61
    ld h, h                                       ; $5B4A: $64
    jr nz, jr_012_5BBB                            ; $5B4B: $20 $6E

    ld l, a                                       ; $5B4D: $6F
    jr nz, @+$6B                                  ; $5B4E: $20 $69

    ld h, h                                       ; $5B50: $64
    ld h, l                                       ; $5B51: $65
    ld h, c                                       ; $5B52: $61
    ld hl, $FDFE                                  ; $5B53: $21 $FE $FD
    ld e, b                                       ; $5B56: $58
    inc c                                         ; $5B57: $0C
    sbc e                                         ; $5B58: $9B
    add hl, bc                                    ; $5B59: $09
    ld b, b                                       ; $5B5A: $40
    sbc a                                         ; $5B5B: $9F

jr_012_5B5C:
    ccf                                           ; $5B5C: $3F
    ccf                                           ; $5B5D: $3F
    cp $55                                        ; $5B5E: $FE $55
    ld l, b                                       ; $5B60: $68
    ld l, $2E                                     ; $5B61: $2E $2E
    ld l, $FE                                     ; $5B63: $2E $FE
    ld a, c                                       ; $5B65: $79
    ld h, l                                       ; $5B66: $65
    ld h, c                                       ; $5B67: $61

Jump_012_5B68:
    ld l, b                                       ; $5B68: $68
    ld l, $20                                     ; $5B69: $2E $20
    ld d, e                                       ; $5B6B: $53
    ld [hl], l                                    ; $5B6C: $75
    ld [hl], d                                    ; $5B6D: $72
    ld h, l                                       ; $5B6E: $65
    ld l, $FE                                     ; $5B6F: $2E $FE
    db $FD                                        ; $5B71: $FD

jr_012_5B72:
    sbc d                                         ; $5B72: $9A
    ld e, b                                       ; $5B73: $58

jr_012_5B74:
    ld a, b                                       ; $5B74: $78
    ld b, d                                       ; $5B75: $42
    sbc e                                         ; $5B76: $9B
    add hl, bc                                    ; $5B77: $09
    ld b, b                                       ; $5B78: $40
    sbc a                                         ; $5B79: $9F
    ld d, e                                       ; $5B7A: $53
    ld l, b                                       ; $5B7B: $68

jr_012_5B7C:
    ld h, l                                       ; $5B7C: $65
    ld h, l                                       ; $5B7D: $65
    ld [hl], e                                    ; $5B7E: $73
    ld l, b                                       ; $5B7F: $68

jr_012_5B80:
    inc l                                         ; $5B80: $2C

jr_012_5B81:
    jr nz, jr_012_5BFA                            ; $5B81: $20 $77

    ld l, b                                       ; $5B83: $68
    ld h, c                                       ; $5B84: $61
    ld [hl], h                                    ; $5B85: $74
    rst $38                                       ; $5B86: $FF

jr_012_5B87:
    ld h, c                                       ; $5B87: $61
    jr nz, jr_012_5C01                            ; $5B88: $20 $77

    ld h, l                                       ; $5B8A: $65
    ld l, c                                       ; $5B8B: $69
    ld [hl], d                                    ; $5B8C: $72
    ld h, h                                       ; $5B8D: $64
    ld l, a                                       ; $5B8E: $6F
    ld l, $FE                                     ; $5B8F: $2E $FE

jr_012_5B91:
    db $FD                                        ; $5B91: $FD

jr_012_5B92:
    sbc d                                         ; $5B92: $9A
    ld e, b                                       ; $5B93: $58
    dec c                                         ; $5B94: $0D
    ld b, d                                       ; $5B95: $42
    sbc e                                         ; $5B96: $9B
    ret c                                         ; $5B97: $D8

    ld h, b                                       ; $5B98: $60
    sbc a                                         ; $5B99: $9F
    ld e, c                                       ; $5B9A: $59
    ld l, a                                       ; $5B9B: $6F
    ld [hl], l                                    ; $5B9C: $75
    jr nz, jr_012_5C0A                            ; $5B9D: $20 $6B

    ld l, [hl]                                    ; $5B9F: $6E
    ld l, a                                       ; $5BA0: $6F
    ld [hl], a                                    ; $5BA1: $77
    inc l                                         ; $5BA2: $2C
    jr nz, jr_012_5C0E                            ; $5BA3: $20 $69

jr_012_5BA5:
    ld [hl], h                                    ; $5BA5: $74
    rst $38                                       ; $5BA6: $FF
    ld h, h                                       ; $5BA7: $64
    ld l, a                                       ; $5BA8: $6F
    ld h, l                                       ; $5BA9: $65
    ld [hl], e                                    ; $5BAA: $73
    jr nz, jr_012_5C18                            ; $5BAB: $20 $6B

    ld l, c                                       ; $5BAD: $69
    ld l, [hl]                                    ; $5BAE: $6E
    ld h, h                                       ; $5BAF: $64
    jr nz, jr_012_5C21                            ; $5BB0: $20 $6F

    ld h, [hl]                                    ; $5BB2: $66
    cp $6C                                        ; $5BB3: $FE $6C
    ld l, a                                       ; $5BB5: $6F
    ld l, a                                       ; $5BB6: $6F
    ld l, e                                       ; $5BB7: $6B
    jr nz, jr_012_5C26                            ; $5BB8: $20 $6C

    ld l, c                                       ; $5BBA: $69

jr_012_5BBB:
    ld l, e                                       ; $5BBB: $6B
    ld h, l                                       ; $5BBC: $65
    jr nz, jr_012_5C25                            ; $5BBD: $20 $66

    ld l, c                                       ; $5BBF: $69
    ld [hl], d                                    ; $5BC0: $72
    ld h, l                                       ; $5BC1: $65
    rst $38                                       ; $5BC2: $FF
    ld l, c                                       ; $5BC3: $69
    ld h, [hl]                                    ; $5BC4: $66
    jr nz, jr_012_5C40                            ; $5BC5: $20 $79

    ld l, a                                       ; $5BC7: $6F
    ld [hl], l                                    ; $5BC8: $75
    jr nz, jr_012_5C37                            ; $5BC9: $20 $6C

    ld l, a                                       ; $5BCB: $6F
    ld l, a                                       ; $5BCC: $6F
    ld l, e                                       ; $5BCD: $6B
    cp $63                                        ; $5BCE: $FE $63
    ld l, h                                       ; $5BD0: $6C
    ld l, a                                       ; $5BD1: $6F
    ld [hl], e                                    ; $5BD2: $73
    ld h, l                                       ; $5BD3: $65
    jr nz, @+$67                                  ; $5BD4: $20 $65

    ld l, [hl]                                    ; $5BD6: $6E
    ld l, a                                       ; $5BD7: $6F
    ld [hl], l                                    ; $5BD8: $75
    ld h, a                                       ; $5BD9: $67
    ld l, b                                       ; $5BDA: $68
    ld l, $2E                                     ; $5BDB: $2E $2E
    ld l, $FE                                     ; $5BDD: $2E $FE
    db $FD                                        ; $5BDF: $FD
    sbc e                                         ; $5BE0: $9B
    add hl, de                                    ; $5BE1: $19
    ld c, [hl]                                    ; $5BE2: $4E
    sbc a                                         ; $5BE3: $9F
    ld c, b                                       ; $5BE4: $48
    ld h, l                                       ; $5BE5: $65
    ld a, c                                       ; $5BE6: $79
    inc l                                         ; $5BE7: $2C
    jr nz, jr_012_5C33                            ; $5BE8: $20 $49

    jr nz, @+$76                                  ; $5BEA: $20 $74

    ld l, b                                       ; $5BEC: $68
    ld l, c                                       ; $5BED: $69
    ld l, [hl]                                    ; $5BEE: $6E
    ld l, e                                       ; $5BEF: $6B
    rst $38                                       ; $5BF0: $FF
    ld a, c                                       ; $5BF1: $79
    ld l, a                                       ; $5BF2: $6F
    ld [hl], l                                    ; $5BF3: $75
    daa                                           ; $5BF4: $27
    ld [hl], d                                    ; $5BF5: $72
    ld h, l                                       ; $5BF6: $65
    jr nz, jr_012_5C6B                            ; $5BF7: $20 $72

    ld l, c                                       ; $5BF9: $69

jr_012_5BFA:
    ld h, a                                       ; $5BFA: $67
    ld l, b                                       ; $5BFB: $68
    ld [hl], h                                    ; $5BFC: $74
    ld hl, $FDFE                                  ; $5BFD: $21 $FE $FD
    sbc d                                         ; $5C00: $9A

jr_012_5C01:
    ld e, b                                       ; $5C01: $58
    ld c, $42                                     ; $5C02: $0E $42
    sbc e                                         ; $5C04: $9B
    add hl, bc                                    ; $5C05: $09
    ld b, b                                       ; $5C06: $40
    sbc a                                         ; $5C07: $9F
    ld c, a                                       ; $5C08: $4F
    ld l, b                                       ; $5C09: $68

jr_012_5C0A:
    inc l                                         ; $5C0A: $2C
    jr nz, jr_012_5C7E                            ; $5C0B: $20 $71

    ld [hl], l                                    ; $5C0D: $75

jr_012_5C0E:
    ld l, c                                       ; $5C0E: $69
    ld h, l                                       ; $5C0F: $65
    ld [hl], h                                    ; $5C10: $74
    jr nz, @+$7B                                  ; $5C11: $20 $79

    ld l, a                                       ; $5C13: $6F
    ld [hl], l                                    ; $5C14: $75
    ld l, $FE                                     ; $5C15: $2E $FE
    db $FD                                        ; $5C17: $FD

jr_012_5C18:
    sbc d                                         ; $5C18: $9A
    ld e, b                                       ; $5C19: $58
    rrca                                          ; $5C1A: $0F
    ld b, d                                       ; $5C1B: $42
    sbc e                                         ; $5C1C: $9B
    ret c                                         ; $5C1D: $D8

    ld h, b                                       ; $5C1E: $60
    sbc a                                         ; $5C1F: $9F
    ld c, b                                       ; $5C20: $48

jr_012_5C21:
    ld h, l                                       ; $5C21: $65
    ld a, c                                       ; $5C22: $79
    jr nz, @+$47                                  ; $5C23: $20 $45

jr_012_5C25:
    ld l, h                                       ; $5C25: $6C

jr_012_5C26:
    ld h, h                                       ; $5C26: $64
    ld h, l                                       ; $5C27: $65
    ld [hl], d                                    ; $5C28: $72
    ld hl, $FDFE                                  ; $5C29: $21 $FE $FD
    sbc d                                         ; $5C2C: $9A
    ld b, b                                       ; $5C2D: $40
    ld h, b                                       ; $5C2E: $60
    sbc e                                         ; $5C2F: $9B
    ret c                                         ; $5C30: $D8

    ld h, b                                       ; $5C31: $60
    sbc a                                         ; $5C32: $9F

jr_012_5C33:
    ld b, c                                       ; $5C33: $41
    ld d, e                                       ; $5C34: $53
    ld c, b                                       ; $5C35: $48
    ld b, a                                       ; $5C36: $47

jr_012_5C37:
    ld b, c                                       ; $5C37: $41
    ld d, d                                       ; $5C38: $52
    ld hl, $2121                                  ; $5C39: $21 $21 $21
    ld hl, $FDFE                                  ; $5C3C: $21 $FE $FD
    sbc d                                         ; $5C3F: $9A

jr_012_5C40:
    ld e, b                                       ; $5C40: $58
    ld bc, $9B42                                  ; $5C41: $01 $42 $9B
    add hl, bc                                    ; $5C44: $09
    ld b, b                                       ; $5C45: $40
    sbc a                                         ; $5C46: $9F
    ld c, c                                       ; $5C47: $49
    jr nz, @+$79                                  ; $5C48: $20 $77

    ld h, c                                       ; $5C4A: $61
    ld [hl], e                                    ; $5C4B: $73
    jr nz, jr_012_5CB3                            ; $5C4C: $20 $65

    ld h, c                                       ; $5C4E: $61
    ld [hl], h                                    ; $5C4F: $74
    ld l, c                                       ; $5C50: $69
    ld l, [hl]                                    ; $5C51: $6E
    ld h, a                                       ; $5C52: $67
    jr nz, jr_012_5CC2                            ; $5C53: $20 $6D

    ld a, c                                       ; $5C55: $79
    rst $38                                       ; $5C56: $FF
    ld [hl], b                                    ; $5C57: $70
    ld l, a                                       ; $5C58: $6F
    ld [hl], d                                    ; $5C59: $72
    ld [hl], d                                    ; $5C5A: $72
    ld l, c                                       ; $5C5B: $69
    ld h, h                                       ; $5C5C: $64
    ld h, a                                       ; $5C5D: $67
    ld h, l                                       ; $5C5E: $65
    ld hl, $2021                                  ; $5C5F: $21 $21 $20
    ld d, a                                       ; $5C62: $57
    ld l, b                                       ; $5C63: $68
    ld h, c                                       ; $5C64: $61
    ld [hl], h                                    ; $5C65: $74
    cp $69                                        ; $5C66: $FE $69
    ld [hl], e                                    ; $5C68: $73
    jr nz, jr_012_5CD4                            ; $5C69: $20 $69

jr_012_5C6B:
    ld [hl], h                                    ; $5C6B: $74
    ccf                                           ; $5C6C: $3F
    ld hl, $FDFE                                  ; $5C6D: $21 $FE $FD
    sbc d                                         ; $5C70: $9A
    ld e, b                                       ; $5C71: $58
    ld [bc], a                                    ; $5C72: $02
    ld b, d                                       ; $5C73: $42
    sbc e                                         ; $5C74: $9B
    add hl, de                                    ; $5C75: $19
    ld c, [hl]                                    ; $5C76: $4E
    sbc a                                         ; $5C77: $9F
    ld d, h                                       ; $5C78: $54
    ld l, b                                       ; $5C79: $68
    ld h, l                                       ; $5C7A: $65
    jr nz, jr_012_5CE4                            ; $5C7B: $20 $67

    ld h, l                                       ; $5C7D: $65

jr_012_5C7E:
    ld a, c                                       ; $5C7E: $79
    ld [hl], e                                    ; $5C7F: $73
    ld h, l                                       ; $5C80: $65
    ld [hl], d                                    ; $5C81: $72
    rst $38                                       ; $5C82: $FF
    ld l, c                                       ; $5C83: $69
    ld [hl], e                                    ; $5C84: $73
    jr nz, @+$69                                  ; $5C85: $20 $67

    ld l, a                                       ; $5C87: $6F
    ld l, [hl]                                    ; $5C88: $6E
    ld h, l                                       ; $5C89: $65
    ld hl, $5720                                  ; $5C8A: $21 $20 $57
    ld h, l                                       ; $5C8D: $65
    cp $66                                        ; $5C8E: $FE $66
    ld l, a                                       ; $5C90: $6F
    ld [hl], l                                    ; $5C91: $75
    ld l, [hl]                                    ; $5C92: $6E
    ld h, h                                       ; $5C93: $64
    jr nz, jr_012_5D0A                            ; $5C94: $20 $74

    ld l, b                                       ; $5C96: $68
    ld l, c                                       ; $5C97: $69
    ld [hl], e                                    ; $5C98: $73
    jr nz, jr_012_5D06                            ; $5C99: $20 $6B

    ld l, c                                       ; $5C9B: $69
    ld h, h                                       ; $5C9C: $64
    rst $38                                       ; $5C9D: $FF
    ld l, a                                       ; $5C9E: $6F
    ld [hl], l                                    ; $5C9F: $75
    ld [hl], h                                    ; $5CA0: $74
    jr nz, @+$64                                  ; $5CA1: $20 $62

    ld a, c                                       ; $5CA3: $79
    jr nz, jr_012_5D1D                            ; $5CA4: $20 $77

    ld l, b                                       ; $5CA6: $68
    ld h, l                                       ; $5CA7: $65
    ld [hl], d                                    ; $5CA8: $72
    ld h, l                                       ; $5CA9: $65
    cp $69                                        ; $5CAA: $FE $69
    ld [hl], h                                    ; $5CAC: $74
    jr nz, jr_012_5D26                            ; $5CAD: $20 $77

    ld h, c                                       ; $5CAF: $61
    ld [hl], e                                    ; $5CB0: $73
    ld l, $FE                                     ; $5CB1: $2E $FE

jr_012_5CB3:
    db $FD                                        ; $5CB3: $FD
    sbc e                                         ; $5CB4: $9B
    ret c                                         ; $5CB5: $D8

    ld h, b                                       ; $5CB6: $60
    sbc a                                         ; $5CB7: $9F
    ld d, a                                       ; $5CB8: $57
    ld h, l                                       ; $5CB9: $65
    jr nz, jr_012_5D30                            ; $5CBA: $20 $74

    ld [hl], d                                    ; $5CBC: $72
    ld [hl], l                                    ; $5CBD: $75
    ld [hl], e                                    ; $5CBE: $73
    ld [hl], h                                    ; $5CBF: $74
    jr nz, jr_012_5D36                            ; $5CC0: $20 $74

jr_012_5CC2:
    ld l, b                                       ; $5CC2: $68
    ld h, c                                       ; $5CC3: $61
    ld [hl], h                                    ; $5CC4: $74
    rst $38                                       ; $5CC5: $FF
    ld a, c                                       ; $5CC6: $79
    ld l, a                                       ; $5CC7: $6F
    ld [hl], l                                    ; $5CC8: $75
    jr nz, jr_012_5D42                            ; $5CC9: $20 $77

    ld l, c                                       ; $5CCB: $69
    ld l, h                                       ; $5CCC: $6C
    ld l, h                                       ; $5CCD: $6C
    jr nz, jr_012_5D38                            ; $5CCE: $20 $68

    ld h, c                                       ; $5CD0: $61
    ld l, [hl]                                    ; $5CD1: $6E
    ld h, h                                       ; $5CD2: $64
    ld l, h                                       ; $5CD3: $6C

jr_012_5CD4:
    ld h, l                                       ; $5CD4: $65
    cp $74                                        ; $5CD5: $FE $74
    ld l, b                                       ; $5CD7: $68
    ld l, c                                       ; $5CD8: $69
    ld [hl], e                                    ; $5CD9: $73
    ld l, $20                                     ; $5CDA: $2E $20
    ld b, d                                       ; $5CDC: $42
    ld a, c                                       ; $5CDD: $79
    ld h, l                                       ; $5CDE: $65
    ld hl, $FDFE                                  ; $5CDF: $21 $FE $FD
    sbc d                                         ; $5CE2: $9A
    ld e, b                                       ; $5CE3: $58

jr_012_5CE4:
    inc bc                                        ; $5CE4: $03
    ld b, d                                       ; $5CE5: $42
    sbc e                                         ; $5CE6: $9B
    add hl, bc                                    ; $5CE7: $09
    ld b, b                                       ; $5CE8: $40
    sbc a                                         ; $5CE9: $9F
    ld e, c                                       ; $5CEA: $59
    ld l, a                                       ; $5CEB: $6F
    ld [hl], l                                    ; $5CEC: $75
    jr nz, jr_012_5D62                            ; $5CED: $20 $73

    ld [hl], h                                    ; $5CEF: $74
    ld l, a                                       ; $5CF0: $6F
    ld [hl], b                                    ; $5CF1: $70
    ld [hl], b                                    ; $5CF2: $70
    ld h, l                                       ; $5CF3: $65
    ld h, h                                       ; $5CF4: $64
    jr nz, @+$6B                                  ; $5CF5: $20 $69

    ld [hl], h                                    ; $5CF7: $74
    ccf                                           ; $5CF8: $3F
    cp $FD                                        ; $5CF9: $FE $FD
    sbc d                                         ; $5CFB: $9A
    sbc e                                         ; $5CFC: $9B
    add hl, bc                                    ; $5CFD: $09
    ld b, b                                       ; $5CFE: $40
    sbc a                                         ; $5CFF: $9F
    ld l, $2E                                     ; $5D00: $2E $2E
    ld l, $2E                                     ; $5D02: $2E $2E
    ld l, $2E                                     ; $5D04: $2E $2E

jr_012_5D06:
    ld l, $2E                                     ; $5D06: $2E $2E
    ld l, $FE                                     ; $5D08: $2E $FE

jr_012_5D0A:
    ld c, c                                       ; $5D0A: $49
    daa                                           ; $5D0B: $27
    ld l, l                                       ; $5D0C: $6D
    ld l, $2E                                     ; $5D0D: $2E $2E
    ld l, $20                                     ; $5D0F: $2E $20
    ld [hl], e                                    ; $5D11: $73
    ld l, a                                       ; $5D12: $6F
    ld [hl], d                                    ; $5D13: $72
    ld [hl], d                                    ; $5D14: $72
    ld a, c                                       ; $5D15: $79
    ld l, $FE                                     ; $5D16: $2E $FE
    ld d, a                                       ; $5D18: $57
    ld h, l                                       ; $5D19: $65
    jr nz, jr_012_5D8F                            ; $5D1A: $20 $73

    ld l, b                                       ; $5D1C: $68

jr_012_5D1D:
    ld l, a                                       ; $5D1D: $6F
    ld [hl], l                                    ; $5D1E: $75
    ld l, h                                       ; $5D1F: $6C
    ld h, h                                       ; $5D20: $64
    jr nz, jr_012_5D91                            ; $5D21: $20 $6E

    ld l, a                                       ; $5D23: $6F
    ld [hl], h                                    ; $5D24: $74
    rst $38                                       ; $5D25: $FF

jr_012_5D26:
    ld l, b                                       ; $5D26: $68
    ld h, c                                       ; $5D27: $61
    halt                                          ; $5D28: $76
    ld h, l                                       ; $5D29: $65
    jr nz, jr_012_5D90                            ; $5D2A: $20 $64

    ld l, a                                       ; $5D2C: $6F
    ld [hl], l                                    ; $5D2D: $75
    ld h, d                                       ; $5D2E: $62
    ld [hl], h                                    ; $5D2F: $74

jr_012_5D30:
    ld h, l                                       ; $5D30: $65
    ld h, h                                       ; $5D31: $64
    cp $79                                        ; $5D32: $FE $79
    ld l, a                                       ; $5D34: $6F
    ld [hl], l                                    ; $5D35: $75

jr_012_5D36:
    ld l, $FE                                     ; $5D36: $2E $FE

jr_012_5D38:
    db $FD                                        ; $5D38: $FD
    sbc d                                         ; $5D39: $9A
    sbc e                                         ; $5D3A: $9B
    add hl, bc                                    ; $5D3B: $09
    ld b, b                                       ; $5D3C: $40
    sbc a                                         ; $5D3D: $9F
    ld d, b                                       ; $5D3E: $50
    ld l, h                                       ; $5D3F: $6C
    ld h, l                                       ; $5D40: $65
    ld h, c                                       ; $5D41: $61

jr_012_5D42:
    ld [hl], e                                    ; $5D42: $73
    ld h, l                                       ; $5D43: $65
    jr nz, jr_012_5DB2                            ; $5D44: $20 $6C

    ld h, l                                       ; $5D46: $65
    ld [hl], h                                    ; $5D47: $74
    jr nz, jr_012_5DBF                            ; $5D48: $20 $75

    ld [hl], e                                    ; $5D4A: $73
    rst $38                                       ; $5D4B: $FF
    ld l, l                                       ; $5D4C: $6D
    ld h, c                                       ; $5D4D: $61
    ld l, e                                       ; $5D4E: $6B
    ld h, l                                       ; $5D4F: $65
    jr nz, jr_012_5DC6                            ; $5D50: $20 $74

    ld l, b                                       ; $5D52: $68
    ld l, c                                       ; $5D53: $69
    ld [hl], e                                    ; $5D54: $73
    jr nz, jr_012_5DCC                            ; $5D55: $20 $75

    ld [hl], b                                    ; $5D57: $70
    cp $74                                        ; $5D58: $FE $74
    ld l, a                                       ; $5D5A: $6F
    jr nz, jr_012_5DD6                            ; $5D5B: $20 $79

    ld l, a                                       ; $5D5D: $6F
    ld [hl], l                                    ; $5D5E: $75
    ld l, $FE                                     ; $5D5F: $2E $FE
    db $FD                                        ; $5D61: $FD

jr_012_5D62:
    sbc d                                         ; $5D62: $9A
    ld e, b                                       ; $5D63: $58
    inc b                                         ; $5D64: $04
    sbc e                                         ; $5D65: $9B
    add hl, bc                                    ; $5D66: $09
    ld b, b                                       ; $5D67: $40
    sbc a                                         ; $5D68: $9F
    ld c, h                                       ; $5D69: $4C
    ld h, l                                       ; $5D6A: $65
    ld [hl], h                                    ; $5D6B: $74
    jr nz, jr_012_5DDB                            ; $5D6C: $20 $6D

    ld h, l                                       ; $5D6E: $65
    jr nz, @+$75                                  ; $5D6F: $20 $73

    ld h, l                                       ; $5D71: $65
    ld h, l                                       ; $5D72: $65
    ld l, $2E                                     ; $5D73: $2E $2E
    ld l, $FE                                     ; $5D75: $2E $FE
    ld [hl], a                                    ; $5D77: $77
    ld l, b                                       ; $5D78: $68
    ld h, c                                       ; $5D79: $61
    ld [hl], h                                    ; $5D7A: $74
    jr nz, jr_012_5DE0                            ; $5D7B: $20 $63

    ld h, c                                       ; $5D7D: $61
    ld l, [hl]                                    ; $5D7E: $6E
    jr nz, jr_012_5DF8                            ; $5D7F: $20 $77

    ld h, l                                       ; $5D81: $65
    rst $38                                       ; $5D82: $FF
    ld h, h                                       ; $5D83: $64
    ld l, a                                       ; $5D84: $6F
    ld l, $2E                                     ; $5D85: $2E $2E
    ld l, $FE                                     ; $5D87: $2E $FE
    db $FD                                        ; $5D89: $FD
    sbc d                                         ; $5D8A: $9A
    ld b, b                                       ; $5D8B: $40
    add b                                         ; $5D8C: $80
    ld e, b                                       ; $5D8D: $58
    dec b                                         ; $5D8E: $05

jr_012_5D8F:
    sbc e                                         ; $5D8F: $9B

jr_012_5D90:
    add hl, bc                                    ; $5D90: $09

jr_012_5D91:
    ld b, b                                       ; $5D91: $40
    sbc a                                         ; $5D92: $9F
    ld c, c                                       ; $5D93: $49
    daa                                           ; $5D94: $27
    halt                                          ; $5D95: $76
    ld h, l                                       ; $5D96: $65
    jr nz, jr_012_5E00                            ; $5D97: $20 $67

    ld l, a                                       ; $5D99: $6F
    ld [hl], h                                    ; $5D9A: $74
    jr nz, jr_012_5E06                            ; $5D9B: $20 $69

    ld [hl], h                                    ; $5D9D: $74
    ld hl, $57FE                                  ; $5D9E: $21 $FE $57
    ld h, l                                       ; $5DA1: $65
    daa                                           ; $5DA2: $27
    ld l, h                                       ; $5DA3: $6C
    ld l, h                                       ; $5DA4: $6C
    jr nz, jr_012_5E0F                            ; $5DA5: $20 $68

    ld h, c                                       ; $5DA7: $61
    halt                                          ; $5DA8: $76
    ld h, l                                       ; $5DA9: $65
    jr nz, jr_012_5E0D                            ; $5DAA: $20 $61

    rst $38                                       ; $5DAC: $FF
    ld h, e                                       ; $5DAD: $63
    ld h, l                                       ; $5DAE: $65
    ld l, h                                       ; $5DAF: $6C
    ld h, l                                       ; $5DB0: $65
    ld h, d                                       ; $5DB1: $62

jr_012_5DB2:
    ld [hl], d                                    ; $5DB2: $72
    ld h, c                                       ; $5DB3: $61
    ld [hl], h                                    ; $5DB4: $74
    ld l, c                                       ; $5DB5: $69
    ld l, a                                       ; $5DB6: $6F
    ld l, [hl]                                    ; $5DB7: $6E
    ld hl, $59FE                                  ; $5DB8: $21 $FE $59
    ld l, a                                       ; $5DBB: $6F
    ld [hl], l                                    ; $5DBC: $75
    daa                                           ; $5DBD: $27
    ld l, h                                       ; $5DBE: $6C

jr_012_5DBF:
    ld l, h                                       ; $5DBF: $6C
    jr nz, jr_012_5E24                            ; $5DC0: $20 $62

    ld h, l                                       ; $5DC2: $65
    jr nz, jr_012_5E34                            ; $5DC3: $20 $6F

    ld [hl], l                                    ; $5DC5: $75

jr_012_5DC6:
    ld [hl], d                                    ; $5DC6: $72
    rst $38                                       ; $5DC7: $FF
    ld h, a                                       ; $5DC8: $67
    ld [hl], l                                    ; $5DC9: $75
    ld h, l                                       ; $5DCA: $65
    ld [hl], e                                    ; $5DCB: $73

jr_012_5DCC:
    ld [hl], h                                    ; $5DCC: $74
    jr nz, jr_012_5E3E                            ; $5DCD: $20 $6F

    ld h, [hl]                                    ; $5DCF: $66
    jr nz, jr_012_5E3A                            ; $5DD0: $20 $68

    ld l, a                                       ; $5DD2: $6F
    ld l, [hl]                                    ; $5DD3: $6E
    ld l, a                                       ; $5DD4: $6F
    ld [hl], d                                    ; $5DD5: $72

jr_012_5DD6:
    ld hl, $FDFE                                  ; $5DD6: $21 $FE $FD
    sbc d                                         ; $5DD9: $9A
    sbc e                                         ; $5DDA: $9B

jr_012_5DDB:
    add hl, bc                                    ; $5DDB: $09
    ld b, b                                       ; $5DDC: $40
    sbc a                                         ; $5DDD: $9F
    ld c, a                                       ; $5DDE: $4F
    ld l, e                                       ; $5DDF: $6B

jr_012_5DE0:
    ld h, c                                       ; $5DE0: $61
    ld a, c                                       ; $5DE1: $79
    inc l                                         ; $5DE2: $2C
    jr nz, jr_012_5E53                            ; $5DE3: $20 $6E

    ld l, a                                       ; $5DE5: $6F
    ld [hl], a                                    ; $5DE6: $77
    jr nz, @+$76                                  ; $5DE7: $20 $74

    ld l, b                                       ; $5DE9: $68
    ld h, c                                       ; $5DEA: $61
    ld [hl], h                                    ; $5DEB: $74
    rst $38                                       ; $5DEC: $FF
    ld [hl], h                                    ; $5DED: $74
    ld l, b                                       ; $5DEE: $68
    ld h, c                                       ; $5DEF: $61
    ld [hl], h                                    ; $5DF0: $74
    daa                                           ; $5DF1: $27
    ld [hl], e                                    ; $5DF2: $73
    jr nz, jr_012_5E68                            ; $5DF3: $20 $73

    ld h, l                                       ; $5DF5: $65
    ld [hl], h                                    ; $5DF6: $74
    ld [hl], h                                    ; $5DF7: $74

jr_012_5DF8:
    ld l, h                                       ; $5DF8: $6C
    ld h, l                                       ; $5DF9: $65
    ld h, h                                       ; $5DFA: $64
    inc l                                         ; $5DFB: $2C
    cp $49                                        ; $5DFC: $FE $49
    jr nz, jr_012_5E6E                            ; $5DFE: $20 $6E

jr_012_5E00:
    ld h, l                                       ; $5E00: $65
    ld h, l                                       ; $5E01: $65
    ld h, h                                       ; $5E02: $64
    jr nz, jr_012_5E79                            ; $5E03: $20 $74

    ld l, a                                       ; $5E05: $6F

jr_012_5E06:
    jr nz, jr_012_5E6F                            ; $5E06: $20 $67

    ld l, a                                       ; $5E08: $6F
    rst $38                                       ; $5E09: $FF
    ld l, b                                       ; $5E0A: $68
    ld h, c                                       ; $5E0B: $61
    ld l, [hl]                                    ; $5E0C: $6E

jr_012_5E0D:
    ld h, h                                       ; $5E0D: $64
    ld l, h                                       ; $5E0E: $6C

jr_012_5E0F:
    ld h, l                                       ; $5E0F: $65
    jr nz, jr_012_5E86                            ; $5E10: $20 $74

    ld l, b                                       ; $5E12: $68
    ld h, l                                       ; $5E13: $65
    cp $70                                        ; $5E14: $FE $70
    ld [hl], d                                    ; $5E16: $72
    ld h, l                                       ; $5E17: $65
    ld [hl], b                                    ; $5E18: $70
    ld h, c                                       ; $5E19: $61
    ld [hl], d                                    ; $5E1A: $72
    ld h, c                                       ; $5E1B: $61
    ld [hl], h                                    ; $5E1C: $74
    ld l, c                                       ; $5E1D: $69
    ld l, a                                       ; $5E1E: $6F
    ld l, [hl]                                    ; $5E1F: $6E
    ld [hl], e                                    ; $5E20: $73
    ld l, $FE                                     ; $5E21: $2E $FE
    ld e, c                                       ; $5E23: $59

jr_012_5E24:
    ld l, a                                       ; $5E24: $6F
    ld [hl], l                                    ; $5E25: $75
    jr nz, jr_012_5E95                            ; $5E26: $20 $6D

    ld h, c                                       ; $5E28: $61
    ld a, c                                       ; $5E29: $79
    jr nz, jr_012_5E9F                            ; $5E2A: $20 $73

    ld [hl], h                                    ; $5E2C: $74
    ld h, c                                       ; $5E2D: $61
    ld a, c                                       ; $5E2E: $79
    rst $38                                       ; $5E2F: $FF
    ld l, b                                       ; $5E30: $68
    ld h, l                                       ; $5E31: $65
    ld [hl], d                                    ; $5E32: $72
    ld h, l                                       ; $5E33: $65

jr_012_5E34:
    jr nz, jr_012_5E9F                            ; $5E34: $20 $69

    ld l, [hl]                                    ; $5E36: $6E
    jr nz, jr_012_5EA6                            ; $5E37: $20 $6D

    ld a, c                                       ; $5E39: $79

jr_012_5E3A:
    jr nz, jr_012_5EA4                            ; $5E3A: $20 $68

    ld l, a                                       ; $5E3C: $6F
    ld l, l                                       ; $5E3D: $6D

jr_012_5E3E:
    ld h, l                                       ; $5E3E: $65
    cp $75                                        ; $5E3F: $FE $75
    ld l, [hl]                                    ; $5E41: $6E
    ld [hl], h                                    ; $5E42: $74
    ld l, c                                       ; $5E43: $69
    ld l, h                                       ; $5E44: $6C
    jr nz, jr_012_5EB0                            ; $5E45: $20 $69

    ld [hl], h                                    ; $5E47: $74
    daa                                           ; $5E48: $27
    ld [hl], e                                    ; $5E49: $73
    jr nz, jr_012_5EAD                            ; $5E4A: $20 $61

    ld l, h                                       ; $5E4C: $6C
    ld l, h                                       ; $5E4D: $6C
    rst $38                                       ; $5E4E: $FF
    ld [hl], d                                    ; $5E4F: $72
    ld h, l                                       ; $5E50: $65
    ld h, c                                       ; $5E51: $61
    ld h, h                                       ; $5E52: $64

jr_012_5E53:
    ld a, c                                       ; $5E53: $79
    ld l, $20                                     ; $5E54: $2E $20
    ld e, c                                       ; $5E56: $59
    ld l, a                                       ; $5E57: $6F
    ld [hl], l                                    ; $5E58: $75
    daa                                           ; $5E59: $27
    ld [hl], d                                    ; $5E5A: $72
    ld h, l                                       ; $5E5B: $65
    cp $70                                        ; $5E5C: $FE $70
    ld [hl], d                                    ; $5E5E: $72
    ld l, a                                       ; $5E5F: $6F
    ld h, d                                       ; $5E60: $62
    ld h, c                                       ; $5E61: $61
    ld h, d                                       ; $5E62: $62
    ld l, h                                       ; $5E63: $6C
    ld a, c                                       ; $5E64: $79
    jr nz, jr_012_5EDB                            ; $5E65: $20 $74

    ld l, c                                       ; $5E67: $69

jr_012_5E68:
    ld [hl], d                                    ; $5E68: $72
    ld h, l                                       ; $5E69: $65
    ld h, h                                       ; $5E6A: $64
    rst $38                                       ; $5E6B: $FF
    ld h, c                                       ; $5E6C: $61
    ld l, [hl]                                    ; $5E6D: $6E

jr_012_5E6E:
    ld a, c                                       ; $5E6E: $79

jr_012_5E6F:
    ld [hl], a                                    ; $5E6F: $77
    ld h, c                                       ; $5E70: $61
    ld a, c                                       ; $5E71: $79
    ld l, $FE                                     ; $5E72: $2E $FE
    db $FD                                        ; $5E74: $FD
    sbc d                                         ; $5E75: $9A
    ld e, b                                       ; $5E76: $58
    ld b, $42                                     ; $5E77: $06 $42

jr_012_5E79:
    xor h                                         ; $5E79: $AC
    or d                                          ; $5E7A: $B2
    and d                                         ; $5E7B: $A2
    ld bc, $6593                                  ; $5E7C: $01 $93 $65
    jp hl                                         ; $5E7F: $E9


    ld b, a                                       ; $5E80: $47
    ld c, a                                       ; $5E81: $4F
    ld h, h                                       ; $5E82: $64
    or $49                                        ; $5E83: $F6 $49
    ld h, [hl]                                    ; $5E85: $66

jr_012_5E86:
    ret nz                                        ; $5E86: $C0

    ld e, h                                       ; $5E87: $5C
    ld hl, $0005                                  ; $5E88: $21 $05 $00
    ld l, e                                       ; $5E8B: $6B
    ld c, d                                       ; $5E8C: $4A
    rrca                                          ; $5E8D: $0F
    ld bc, $D037                                  ; $5E8E: $01 $37 $D0
    nop                                           ; $5E91: $00
    ld [de], a                                    ; $5E92: $12
    rra                                           ; $5E93: $1F
    ld e, a                                       ; $5E94: $5F

jr_012_5E95:
    ld [hl+], a                                   ; $5E95: $22
    dec b                                         ; $5E96: $05
    ld b, b                                       ; $5E97: $40
    dec b                                         ; $5E98: $05
    ld [bc], a                                    ; $5E99: $02
    ld l, e                                       ; $5E9A: $6B
    ld c, d                                       ; $5E9B: $4A
    rrca                                          ; $5E9C: $0F
    nop                                           ; $5E9D: $00
    rrca                                          ; $5E9E: $0F

jr_012_5E9F:
    ret nc                                        ; $5E9F: $D0

    nop                                           ; $5EA0: $00
    ld [de], a                                    ; $5EA1: $12
    db $FC                                        ; $5EA2: $FC
    ld e, a                                       ; $5EA3: $5F

jr_012_5EA4:
    ld [hl+], a                                   ; $5EA4: $22
    dec b                                         ; $5EA5: $05

jr_012_5EA6:
    ld b, b                                       ; $5EA6: $40
    dec b                                         ; $5EA7: $05
    inc bc                                        ; $5EA8: $03
    ld l, e                                       ; $5EA9: $6B
    ld c, d                                       ; $5EAA: $4A
    rrca                                          ; $5EAB: $0F
    ld [bc], a                                    ; $5EAC: $02

jr_012_5EAD:
    ld e, a                                       ; $5EAD: $5F
    ret nc                                        ; $5EAE: $D0

    dec hl                                        ; $5EAF: $2B

jr_012_5EB0:
    ld [de], a                                    ; $5EB0: $12
    db $10                                        ; $5EB1: $10
    ld h, b                                       ; $5EB2: $60
    ld [hl+], a                                   ; $5EB3: $22
    dec b                                         ; $5EB4: $05
    ld b, b                                       ; $5EB5: $40
    dec b                                         ; $5EB6: $05
    inc b                                         ; $5EB7: $04
    ld l, e                                       ; $5EB8: $6B
    ld c, d                                       ; $5EB9: $4A
    rrca                                          ; $5EBA: $0F
    inc c                                         ; $5EBB: $0C
    rst $28                                       ; $5EBC: $EF
    pop de                                        ; $5EBD: $D1
    ld d, c                                       ; $5EBE: $51
    ld [de], a                                    ; $5EBF: $12
    jr nc, jr_012_5F22                            ; $5EC0: $30 $60

    ld [hl+], a                                   ; $5EC2: $22
    dec b                                         ; $5EC3: $05
    ld b, b                                       ; $5EC4: $40
    dec b                                         ; $5EC5: $05
    dec b                                         ; $5EC6: $05
    ld l, e                                       ; $5EC7: $6B
    ld c, d                                       ; $5EC8: $4A
    ld c, $01                                     ; $5EC9: $0E $01
    ld [hl], $D0                                  ; $5ECB: $36 $D0
    ld l, e                                       ; $5ECD: $6B
    ld [de], a                                    ; $5ECE: $12
    and e                                         ; $5ECF: $A3
    ld e, a                                       ; $5ED0: $5F
    ld [hl+], a                                   ; $5ED1: $22
    dec b                                         ; $5ED2: $05
    ld b, b                                       ; $5ED3: $40
    ld l, e                                       ; $5ED4: $6B
    dec hl                                        ; $5ED5: $2B
    dec bc                                        ; $5ED6: $0B
    ret nc                                        ; $5ED7: $D0

    ld c, c                                       ; $5ED8: $49
    nop                                           ; $5ED9: $00
    add b                                         ; $5EDA: $80

jr_012_5EDB:
    nop                                           ; $5EDB: $00
    ld l, e                                       ; $5EDC: $6B
    ld h, $0B                                     ; $5EDD: $26 $0B
    ld d, b                                       ; $5EDF: $50
    ld d, h                                       ; $5EE0: $54
    or b                                          ; $5EE1: $B0
    add d                                         ; $5EE2: $82

jr_012_5EE3:
    nop                                           ; $5EE3: $00
    ld l, e                                       ; $5EE4: $6B
    ld a, [de]                                    ; $5EE5: $1A
    inc c                                         ; $5EE6: $0C
    ldh a, [rOCPD]                                ; $5EE7: $F0 $6B
    db $10                                        ; $5EE9: $10
    add l                                         ; $5EEA: $85
    nop                                           ; $5EEB: $00
    ld l, e                                       ; $5EEC: $6B
    dec hl                                        ; $5EED: $2B
    dec bc                                        ; $5EEE: $0B

jr_012_5EEF:
    jr nz, jr_012_5F38                            ; $5EEF: $20 $47

jr_012_5EF1:
    or b                                          ; $5EF1: $B0
    add [hl]                                      ; $5EF2: $86
    nop                                           ; $5EF3: $00
    dec bc                                        ; $5EF4: $0B
    nop                                           ; $5EF5: $00
    dec bc                                        ; $5EF6: $0B
    ld [bc], a                                    ; $5EF7: $02
    dec bc                                        ; $5EF8: $0B
    inc bc                                        ; $5EF9: $03
    dec bc                                        ; $5EFA: $0B
    dec b                                         ; $5EFB: $05
    add d                                         ; $5EFC: $82

jr_012_5EFD:
    inc h                                         ; $5EFD: $24
    ld d, b                                       ; $5EFE: $50
    sub h                                         ; $5EFF: $94
    ld b, b                                       ; $5F00: $40
    db $10                                        ; $5F01: $10
    add e                                         ; $5F02: $83
    jr nz, jr_012_5F05                            ; $5F03: $20 $00

jr_012_5F05:
    ld bc, $0B00                                  ; $5F05: $01 $00 $0B
    inc b                                         ; $5F08: $04
    add e                                         ; $5F09: $83
    jr nz, jr_012_5F0C                            ; $5F0A: $20 $00

jr_012_5F0C:
    ld bc, $6200                                  ; $5F0C: $01 $00 $62
    ld a, [bc]                                    ; $5F0F: $0A
    ld l, [hl]                                    ; $5F10: $6E
    rrca                                          ; $5F11: $0F
    rra                                           ; $5F12: $1F

jr_012_5F13:
    nop                                           ; $5F13: $00
    halt                                          ; $5F14: $76
    jr nz, jr_012_5F26                            ; $5F15: $20 $0F

    ld [bc], a                                    ; $5F17: $02
    nop                                           ; $5F18: $00
    nop                                           ; $5F19: $00
    nop                                           ; $5F1A: $00
    nop                                           ; $5F1B: $00
    ld b, [hl]                                    ; $5F1C: $46
    add b                                         ; $5F1D: $80
    ld h, b                                       ; $5F1E: $60

jr_012_5F1F:
    dec d                                         ; $5F1F: $15
    jr nz, jr_012_5EEF                            ; $5F20: $20 $CD

jr_012_5F22:
    ld c, a                                       ; $5F22: $4F
    ld d, b                                       ; $5F23: $50
    jr nz, jr_012_5EDB                            ; $5F24: $20 $B5

jr_012_5F26:
    ld d, b                                       ; $5F26: $50
    nop                                           ; $5F27: $00
    nop                                           ; $5F28: $00
    ld h, b                                       ; $5F29: $60
    ld bc, $1040                                  ; $5F2A: $01 $40 $10

jr_012_5F2D:
    dec d                                         ; $5F2D: $15
    jr nz, jr_012_5EEF                            ; $5F2E: $20 $BF

    ld d, b                                       ; $5F30: $50
    db $10                                        ; $5F31: $10
    jr nz, jr_012_5EFD                            ; $5F32: $20 $C9

    ld d, b                                       ; $5F34: $50
    db $10                                        ; $5F35: $10
    jr nz, jr_012_5EE3                            ; $5F36: $20 $AB

jr_012_5F38:
    ld d, b                                       ; $5F38: $50
    db $10                                        ; $5F39: $10
    jr nz, jr_012_5EF1                            ; $5F3A: $20 $B5

    ld d, b                                       ; $5F3C: $50
    nop                                           ; $5F3D: $00

jr_012_5F3E:
    nop                                           ; $5F3E: $00
    ld h, d                                       ; $5F3F: $62
    inc bc                                        ; $5F40: $03

jr_012_5F41:
    dec d                                         ; $5F41: $15

jr_012_5F42:
    jr nz, jr_012_5F41                            ; $5F42: $20 $FD

    ld c, a                                       ; $5F44: $4F
    db $10                                        ; $5F45: $10

jr_012_5F46:
    jr nz, jr_012_5EFD                            ; $5F46: $20 $B5

    ld d, b                                       ; $5F48: $50
    inc b                                         ; $5F49: $04
    jr nz, jr_012_5F1F                            ; $5F4A: $20 $D3

    ld d, b                                       ; $5F4C: $50
    stop                                          ; $5F4D: $10 $00
    ld d, $20                                     ; $5F4F: $16 $20
    db $FD                                        ; $5F51: $FD

jr_012_5F52:
    ld c, a                                       ; $5F52: $4F
    stop                                          ; $5F53: $10 $00
    rst $38                                       ; $5F55: $FF

jr_012_5F56:
    nop                                           ; $5F56: $00
    dec d                                         ; $5F57: $15
    jr nz, jr_012_5F2D                            ; $5F58: $20 $D3

    ld d, b                                       ; $5F5A: $50
    inc b                                         ; $5F5B: $04
    jr nz, jr_012_5F13                            ; $5F5C: $20 $B5

    ld d, b                                       ; $5F5E: $50
    nop                                           ; $5F5F: $00
    nop                                           ; $5F60: $00
    add e                                         ; $5F61: $83
    stop                                          ; $5F62: $10 $00
    rst $38                                       ; $5F64: $FF
    nop                                           ; $5F65: $00
    ld h, d                                       ; $5F66: $62
    inc b                                         ; $5F67: $04
    dec d                                         ; $5F68: $15
    jr nz, jr_012_5F3E                            ; $5F69: $20 $D3

    ld d, b                                       ; $5F6B: $50
    jr nz, @+$22                                  ; $5F6C: $20 $20

jr_012_5F6E:
    or l                                          ; $5F6E: $B5
    ld d, b                                       ; $5F6F: $50
    db $10                                        ; $5F70: $10
    jr nz, jr_012_5F46                            ; $5F71: $20 $D3

    ld d, b                                       ; $5F73: $50
    jr nz, @+$22                                  ; $5F74: $20 $20

    or l                                          ; $5F76: $B5
    ld d, b                                       ; $5F77: $50
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00
    ld h, d                                       ; $5F7A: $62
    dec b                                         ; $5F7B: $05
    dec d                                         ; $5F7C: $15
    jr nz, jr_012_5F52                            ; $5F7D: $20 $D3

    ld d, b                                       ; $5F7F: $50
    inc b                                         ; $5F80: $04
    jr nz, jr_012_5F42                            ; $5F81: $20 $BF

    ld d, b                                       ; $5F83: $50
    inc b                                         ; $5F84: $04
    nop                                           ; $5F85: $00
    ld h, d                                       ; $5F86: $62
    ld b, $15                                     ; $5F87: $06 $15
    jr nz, @-$17                                  ; $5F89: $20 $E7

    ld d, b                                       ; $5F8B: $50
    ld [$AB20], sp                                ; $5F8C: $08 $20 $AB
    ld d, b                                       ; $5F8F: $50
    jr nc, @+$22                                  ; $5F90: $30 $20

    rst $20                                       ; $5F92: $E7
    ld d, b                                       ; $5F93: $50
    inc b                                         ; $5F94: $04
    jr nz, jr_012_5F56                            ; $5F95: $20 $BF

    ld d, b                                       ; $5F97: $50
    inc b                                         ; $5F98: $04
    jr nz, jr_012_5F6E                            ; $5F99: $20 $D3

    ld d, b                                       ; $5F9B: $50
    inc b                                         ; $5F9C: $04
    jr nz, @-$49                                  ; $5F9D: $20 $B5

    ld d, b                                       ; $5F9F: $50
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    ld b, d                                       ; $5FA2: $42
    dec d                                         ; $5FA3: $15
    ld de, $4491                                  ; $5FA4: $11 $91 $44
    ld d, b                                       ; $5FA7: $50
    ld de, $450B                                  ; $5FA8: $11 $0B $45
    nop                                           ; $5FAB: $00
    nop                                           ; $5FAC: $00
    ld h, d                                       ; $5FAD: $62
    ld bc, $125B                                  ; $5FAE: $01 $5B $12
    ld hl, sp+$50                                 ; $5FB1: $F8 $50
    ld h, b                                       ; $5FB3: $60
    ld bc, $1115                                  ; $5FB4: $01 $15 $11
    sub c                                         ; $5FB7: $91
    ld b, h                                       ; $5FB8: $44
    add b                                         ; $5FB9: $80
    ld de, $4501                                  ; $5FBA: $11 $01 $45
    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    ld h, b                                       ; $5FBF: $60
    ld [bc], a                                    ; $5FC0: $02
    ld b, b                                       ; $5FC1: $40
    jr nz, jr_012_5FD9                            ; $5FC2: $20 $15

    ld de, $44C1                                  ; $5FC4: $11 $C1 $44
    jr c, jr_012_5FDA                             ; $5FC7: $38 $11

    ld bc, $0845                                  ; $5FC9: $01 $45 $08
    nop                                           ; $5FCC: $00
    rra                                           ; $5FCD: $1F
    jr nz, jr_012_6026                            ; $5FCE: $20 $56

    inc bc                                        ; $5FD0: $03
    ld e, e                                       ; $5FD1: $5B
    ld [de], a                                    ; $5FD2: $12
    add hl, bc                                    ; $5FD3: $09
    ld d, d                                       ; $5FD4: $52
    ld h, d                                       ; $5FD5: $62
    inc b                                         ; $5FD6: $04
    ld e, e                                       ; $5FD7: $5B
    ld [de], a                                    ; $5FD8: $12

jr_012_5FD9:
    ld c, d                                       ; $5FD9: $4A

jr_012_5FDA:
    ld d, d                                       ; $5FDA: $52
    dec d                                         ; $5FDB: $15
    ld de, $44E1                                  ; $5FDC: $11 $E1 $44
    db $10                                        ; $5FDF: $10
    ld de, $44D1                                  ; $5FE0: $11 $D1 $44
    db $10                                        ; $5FE3: $10
    ld de, $44F1                                  ; $5FE4: $11 $F1 $44
    db $10                                        ; $5FE7: $10
    ld de, $44C1                                  ; $5FE8: $11 $C1 $44
    db $10                                        ; $5FEB: $10
    ld de, $44E1                                  ; $5FEC: $11 $E1 $44
    db $10                                        ; $5FEF: $10
    ld de, $44D1                                  ; $5FF0: $11 $D1 $44
    ld h, b                                       ; $5FF3: $60
    nop                                           ; $5FF4: $00
    add e                                         ; $5FF5: $83
    jr nz, jr_012_5FF8                            ; $5FF6: $20 $00

jr_012_5FF8:
    rst $38                                       ; $5FF8: $FF
    nop                                           ; $5FF9: $00
    add hl, de                                    ; $5FFA: $19
    ld b, d                                       ; $5FFB: $42
    dec d                                         ; $5FFC: $15
    ld de, $471C                                  ; $5FFD: $11 $1C $47
    ld d, b                                       ; $6000: $50
    ld de, $4796                                  ; $6001: $11 $96 $47
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    ld h, b                                       ; $6006: $60
    ld bc, $1115                                  ; $6007: $01 $15 $11
    inc c                                         ; $600A: $0C
    ld b, a                                       ; $600B: $47
    ld d, b                                       ; $600C: $50
    nop                                           ; $600D: $00
    add hl, de                                    ; $600E: $19
    ld b, d                                       ; $600F: $42
    dec d                                         ; $6010: $15
    db $10                                        ; $6011: $10

Jump_012_6012:
    pop hl                                        ; $6012: $E1
    ld e, e                                       ; $6013: $5B
    ld b, b                                       ; $6014: $40
    db $10                                        ; $6015: $10
    ld bc, $105C                                  ; $6016: $01 $5C $10
    db $10                                        ; $6019: $10
    ld e, e                                       ; $601A: $5B
    ld e, h                                       ; $601B: $5C
    nop                                           ; $601C: $00
    nop                                           ; $601D: $00
    ld h, b                                       ; $601E: $60
    ld bc, $1015                                  ; $601F: $01 $15 $10
    ld bc, $105C                                  ; $6022: $01 $5C $10
    db $10                                        ; $6025: $10

jr_012_6026:
    pop de                                        ; $6026: $D1
    ld e, e                                       ; $6027: $5B
    db $10                                        ; $6028: $10
    db $10                                        ; $6029: $10
    ld bc, $605C                                  ; $602A: $01 $5C $60
    nop                                           ; $602D: $00
    add hl, de                                    ; $602E: $19
    ld b, d                                       ; $602F: $42
    dec d                                         ; $6030: $15
    dec h                                         ; $6031: $25
    xor d                                         ; $6032: $AA
    ld d, b                                       ; $6033: $50
    ld b, b                                       ; $6034: $40
    dec h                                         ; $6035: $25
    ld a, [hl+]                                   ; $6036: $2A
    ld d, c                                       ; $6037: $51
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    ld e, e                                       ; $603A: $5B
    ld [de], a                                    ; $603B: $12
    jp z, Jump_012_6250                           ; $603C: $CA $50 $62

    ld [bc], a                                    ; $603F: $02
    ld d, [hl]                                    ; $6040: $56
    ld bc, $125B                                  ; $6041: $01 $5B $12
    sbc e                                         ; $6044: $9B
    ld d, c                                       ; $6045: $51
    ld h, d                                       ; $6046: $62
    inc bc                                        ; $6047: $03
    ld d, [hl]                                    ; $6048: $56
    ld [bc], a                                    ; $6049: $02
    dec d                                         ; $604A: $15
    dec h                                         ; $604B: $25
    xor d                                         ; $604C: $AA
    ld d, b                                       ; $604D: $50
    jr nz, jr_012_6075                            ; $604E: $20 $25

    jp z, $1050                                   ; $6050: $CA $50 $10

    dec h                                         ; $6053: $25
    xor d                                         ; $6054: $AA
    ld d, b                                       ; $6055: $50
    jr nz, jr_012_607D                            ; $6056: $20 $25

    inc [hl]                                      ; $6058: $34
    ld d, c                                       ; $6059: $51
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    ld h, d                                       ; $605C: $62
    inc b                                         ; $605D: $04
    dec d                                         ; $605E: $15
    dec h                                         ; $605F: $25
    ld [hl], b                                    ; $6060: $70
    ld d, c                                       ; $6061: $51
    db $10                                        ; $6062: $10
    dec h                                         ; $6063: $25
    ld h, [hl]                                    ; $6064: $66
    ld d, c                                       ; $6065: $51
    jr nz, jr_012_608D                            ; $6066: $20 $25

    inc [hl]                                      ; $6068: $34
    ld d, c                                       ; $6069: $51
    nop                                           ; $606A: $00
    nop                                           ; $606B: $00
    ld h, d                                       ; $606C: $62
    dec b                                         ; $606D: $05
    inc d                                         ; $606E: $14
    dec h                                         ; $606F: $25
    ld c, b                                       ; $6070: $48
    ld d, c                                       ; $6071: $51
    ld e, e                                       ; $6072: $5B
    ld [de], a                                    ; $6073: $12
    ld [hl], c                                    ; $6074: $71

jr_012_6075:
    ld d, d                                       ; $6075: $52
    ld h, d                                       ; $6076: $62
    ld b, $15                                     ; $6077: $06 $15
    dec h                                         ; $6079: $25
    ld [$3050], a                                 ; $607A: $EA $50 $30

jr_012_607D:
    nop                                           ; $607D: $00
    add hl, de                                    ; $607E: $19
    ld b, d                                       ; $607F: $42
    sub e                                         ; $6080: $93
    ld h, h                                       ; $6081: $64
    cpl                                           ; $6082: $2F
    ld c, d                                       ; $6083: $4A
    ld e, d                                       ; $6084: $5A
    ld [de], a                                    ; $6085: $12
    adc e                                         ; $6086: $8B
    ld h, b                                       ; $6087: $60
    ld b, [hl]                                    ; $6088: $46
    jp hl                                         ; $6089: $E9


    ld h, c                                       ; $608A: $61
    ld e, l                                       ; $608B: $5D
    rlca                                          ; $608C: $07

jr_012_608D:
    nop                                           ; $608D: $00
    add c                                         ; $608E: $81
    ld e, l                                       ; $608F: $5D
    ld b, d                                       ; $6090: $42
    sub e                                         ; $6091: $93
    ld h, h                                       ; $6092: $64
    ld l, b                                       ; $6093: $68
    ld c, d                                       ; $6094: $4A
    ld e, d                                       ; $6095: $5A
    ld [de], a                                    ; $6096: $12
    sbc h                                         ; $6097: $9C
    ld h, b                                       ; $6098: $60
    ld b, [hl]                                    ; $6099: $46
    add h                                         ; $609A: $84
    ld h, c                                       ; $609B: $61
    ld e, l                                       ; $609C: $5D
    rlca                                          ; $609D: $07
    nop                                           ; $609E: $00
    add c                                         ; $609F: $81
    ld e, l                                       ; $60A0: $5D
    ld b, d                                       ; $60A1: $42
    sub e                                         ; $60A2: $93
    ld h, h                                       ; $60A3: $64
    and c                                         ; $60A4: $A1
    ld c, d                                       ; $60A5: $4A
    ld e, d                                       ; $60A6: $5A
    ld [de], a                                    ; $60A7: $12
    xor l                                         ; $60A8: $AD
    ld h, b                                       ; $60A9: $60
    ld b, [hl]                                    ; $60AA: $46
    add h                                         ; $60AB: $84
    ld h, c                                       ; $60AC: $61
    ld e, l                                       ; $60AD: $5D
    xor a                                         ; $60AE: $AF
    dec h                                         ; $60AF: $25
    and c                                         ; $60B0: $A1
    inc b                                         ; $60B1: $04
    xor a                                         ; $60B2: $AF
    dec h                                         ; $60B3: $25

jr_012_60B4:
    and c                                         ; $60B4: $A1
    ld [$1259], sp                                ; $60B5: $08 $59 $12
    rst $10                                       ; $60B8: $D7
    ld h, h                                       ; $60B9: $64
    ld e, l                                       ; $60BA: $5D
    xor h                                         ; $60BB: $AC
    dec h                                         ; $60BC: $25
    and c                                         ; $60BD: $A1
    inc bc                                        ; $60BE: $03

jr_012_60BF:
    rlca                                          ; $60BF: $07
    nop                                           ; $60C0: $00
    add c                                         ; $60C1: $81
    ld e, l                                       ; $60C2: $5D
    ld b, d                                       ; $60C3: $42
    sub e                                         ; $60C4: $93
    dec b                                         ; $60C5: $05
    inc bc                                        ; $60C6: $03
    ld l, e                                       ; $60C7: $6B
    ld c, d                                       ; $60C8: $4A
    ld e, $1C                                     ; $60C9: $1E $1C
    ld a, [hl]                                    ; $60CB: $7E
    call nc, $1275                                ; $60CC: $D4 $75 $12
    rlca                                          ; $60CF: $07
    ld h, c                                       ; $60D0: $61
    ld [hl+], a                                   ; $60D1: $22
    inc b                                         ; $60D2: $04
    ld b, b                                       ; $60D3: $40
    dec b                                         ; $60D4: $05
    inc b                                         ; $60D5: $04
    ld l, e                                       ; $60D6: $6B
    ld c, d                                       ; $60D7: $4A
    inc hl                                        ; $60D8: $23
    inc e                                         ; $60D9: $1C
    add e                                         ; $60DA: $83
    call nc, $12A1                                ; $60DB: $D4 $A1 $12
    ld e, $61                                     ; $60DE: $1E $61
    ld [hl+], a                                   ; $60E0: $22
    inc b                                         ; $60E1: $04
    ld b, b                                       ; $60E2: $40
    dec bc                                        ; $60E3: $0B
    inc bc                                        ; $60E4: $03
    dec bc                                        ; $60E5: $0B
    inc b                                         ; $60E6: $04
    ld h, h                                       ; $60E7: $64
    or $49                                        ; $60E8: $F6 $49
    ld e, d                                       ; $60EA: $5A
    ld [de], a                                    ; $60EB: $12
    pop af                                        ; $60EC: $F1
    ld h, b                                       ; $60ED: $60
    ld b, [hl]                                    ; $60EE: $46
    add h                                         ; $60EF: $84
    ld h, c                                       ; $60F0: $61
    ld e, l                                       ; $60F1: $5D
    add hl, bc                                    ; $60F2: $09
    nop                                           ; $60F3: $00
    ld [de], a                                    ; $60F4: $12
    ld hl, sp+$60                                 ; $60F5: $F8 $60
    ld b, d                                       ; $60F7: $42
    dec d                                         ; $60F8: $15
    jr nz, @-$2B                                  ; $60F9: $20 $D3

    ld d, b                                       ; $60FB: $50
    jr nz, jr_012_611E                            ; $60FC: $20 $20

    db $DD                                        ; $60FE: $DD
    ld d, b                                       ; $60FF: $50
    jr nz, jr_012_6122                            ; $6100: $20 $20

    or l                                          ; $6102: $B5
    ld d, b                                       ; $6103: $50
    ld bc, $4200                                  ; $6104: $01 $00 $42
    dec d                                         ; $6107: $15
    jr nz, jr_012_60B4                            ; $6108: $20 $AA

    ld [hl], h                                    ; $610A: $74
    jr nz, jr_012_612D                            ; $610B: $20 $20

    sub [hl]                                      ; $610D: $96
    ld [hl], h                                    ; $610E: $74
    nop                                           ; $610F: $00
    nop                                           ; $6110: $00
    ld e, a                                       ; $6111: $5F
    dec d                                         ; $6112: $15
    jr nz, jr_012_60BF                            ; $6113: $20 $AA

    ld [hl], h                                    ; $6115: $74
    jr nz, jr_012_6138                            ; $6116: $20 $20

    ld c, b                                       ; $6118: $48
    ld [hl], h                                    ; $6119: $74
    ld b, b                                       ; $611A: $40
    nop                                           ; $611B: $00
    add hl, de                                    ; $611C: $19
    ld b, d                                       ; $611D: $42

jr_012_611E:
    dec d                                         ; $611E: $15
    db $10                                        ; $611F: $10
    rrca                                          ; $6120: $0F
    ld b, a                                       ; $6121: $47

jr_012_6122:
    jr nz, jr_012_6124                            ; $6122: $20 $00

jr_012_6124:
    ld e, e                                       ; $6124: $5B
    ld [de], a                                    ; $6125: $12
    ld d, b                                       ; $6126: $50
    ld h, c                                       ; $6127: $61
    inc d                                         ; $6128: $14
    db $10                                        ; $6129: $10
    ei                                            ; $612A: $FB
    ld b, [hl]                                    ; $612B: $46
    ld e, a                                       ; $612C: $5F

jr_012_612D:
    dec d                                         ; $612D: $15
    db $10                                        ; $612E: $10
    rrca                                          ; $612F: $0F
    ld b, a                                       ; $6130: $47
    jr nz, jr_012_6143                            ; $6131: $20 $10

    or a                                          ; $6133: $B7
    ld b, [hl]                                    ; $6134: $46
    ld b, b                                       ; $6135: $40
    ld [hl+], a                                   ; $6136: $22
    inc b                                         ; $6137: $04

jr_012_6138:
    ld b, b                                       ; $6138: $40
    ld bc, $5900                                  ; $6139: $01 $00 $59
    ld [de], a                                    ; $613C: $12
    rst $10                                       ; $613D: $D7
    ld h, h                                       ; $613E: $64
    ld e, l                                       ; $613F: $5D
    ld e, e                                       ; $6140: $5B
    ld [de], a                                    ; $6141: $12
    ld l, b                                       ; $6142: $68

jr_012_6143:
    ld h, c                                       ; $6143: $61
    ld e, a                                       ; $6144: $5F
    ld l, [hl]                                    ; $6145: $6E
    rrca                                          ; $6146: $0F
    rst $38                                       ; $6147: $FF

jr_012_6148:
    ld a, a                                       ; $6148: $7F
    halt                                          ; $6149: $76
    jr nz, jr_012_615B                            ; $614A: $20 $0F

    ld b, l                                       ; $614C: $45
    ld [de], a                                    ; $614D: $12
    ld h, c                                       ; $614E: $61
    ld l, c                                       ; $614F: $69
    sbc a                                         ; $6150: $9F
    ld c, b                                       ; $6151: $48
    ld h, l                                       ; $6152: $65
    daa                                           ; $6153: $27
    ld [hl], e                                    ; $6154: $73
    jr nz, jr_012_61CB                            ; $6155: $20 $74

    ld l, a                                       ; $6157: $6F
    ld l, a                                       ; $6158: $6F
    rst $38                                       ; $6159: $FF
    ld [hl], b                                    ; $615A: $70

jr_012_615B:
    ld l, a                                       ; $615B: $6F
    ld [hl], a                                    ; $615C: $77
    ld h, l                                       ; $615D: $65
    ld [hl], d                                    ; $615E: $72
    ld h, [hl]                                    ; $615F: $66
    ld [hl], l                                    ; $6160: $75
    ld l, h                                       ; $6161: $6C
    ld hl, $FDFE                                  ; $6162: $21 $FE $FD
    sbc d                                         ; $6165: $9A
    ld d, l                                       ; $6166: $55
    ld b, d                                       ; $6167: $42
    sbc a                                         ; $6168: $9F
    ld d, [hl]                                    ; $6169: $56
    ld c, c                                       ; $616A: $49
    ld b, e                                       ; $616B: $43
    ld d, h                                       ; $616C: $54
    ld c, a                                       ; $616D: $4F
    ld d, d                                       ; $616E: $52
    ld e, c                                       ; $616F: $59
    ld hl, $FDFE                                  ; $6170: $21 $FE $FD
    sbc d                                         ; $6173: $9A
    ld d, l                                       ; $6174: $55
    ld b, d                                       ; $6175: $42
    sub e                                         ; $6176: $93
    ld e, d                                       ; $6177: $5A
    ld [de], a                                    ; $6178: $12
    ld a, [hl]                                    ; $6179: $7E
    ld h, c                                       ; $617A: $61
    ld b, [hl]                                    ; $617B: $46

jr_012_617C:
    add h                                         ; $617C: $84
    ld h, c                                       ; $617D: $61
    ld e, l                                       ; $617E: $5D
    rlca                                          ; $617F: $07
    nop                                           ; $6180: $00
    add c                                         ; $6181: $81
    ld e, l                                       ; $6182: $5D
    ld b, d                                       ; $6183: $42
    ld h, l                                       ; $6184: $65
    jp hl                                         ; $6185: $E9


    ld b, a                                       ; $6186: $47
    ld c, a                                       ; $6187: $4F
    ld h, [hl]                                    ; $6188: $66
    ret nz                                        ; $6189: $C0

    ld e, h                                       ; $618A: $5C
    ld hl, $246B                                  ; $618B: $21 $6B $24
    inc c                                         ; $618E: $0C
    add b                                         ; $618F: $80
    ld b, c                                       ; $6190: $41
    db $10                                        ; $6191: $10
    add l                                         ; $6192: $85
    nop                                           ; $6193: $00
    ld l, e                                       ; $6194: $6B
    inc l                                         ; $6195: $2C
    inc c                                         ; $6196: $0C
    ret nz                                        ; $6197: $C0

    ld b, e                                       ; $6198: $43
    ld d, b                                       ; $6199: $50
    add a                                         ; $619A: $87
    nop                                           ; $619B: $00
    ld l, e                                       ; $619C: $6B
    ld e, $0C                                     ; $619D: $1E $0C
    sub b                                         ; $619F: $90
    ld c, e                                       ; $61A0: $4B
    db $10                                        ; $61A1: $10
    adc d                                         ; $61A2: $8A
    nop                                           ; $61A3: $00
    ld l, e                                       ; $61A4: $6B
    rrca                                          ; $61A5: $0F
    dec c                                         ; $61A6: $0D
    ld b, b                                       ; $61A7: $40
    ld l, c                                       ; $61A8: $69
    ldh a, [$8B]                                  ; $61A9: $F0 $8B
    nop                                           ; $61AB: $00
    ld l, e                                       ; $61AC: $6B
    inc b                                         ; $61AD: $04
    dec c                                         ; $61AE: $0D
    and b                                         ; $61AF: $A0
    ld c, e                                       ; $61B0: $4B
    ldh [$8C], a                                  ; $61B1: $E0 $8C
    nop                                           ; $61B3: $00
    ld l, e                                       ; $61B4: $6B
    add hl, hl                                    ; $61B5: $29
    dec bc                                        ; $61B6: $0B
    jr nc, jr_012_6208                            ; $61B7: $30 $4F

    jr nz, jr_012_6148                            ; $61B9: $20 $8D

    nop                                           ; $61BB: $00
    dec b                                         ; $61BC: $05
    nop                                           ; $61BD: $00
    ld l, e                                       ; $61BE: $6B
    ld c, d                                       ; $61BF: $4A
    rrca                                          ; $61C0: $0F
    ld bc, $D037                                  ; $61C1: $01 $37 $D0
    nop                                           ; $61C4: $00
    jr nz, jr_012_617C                            ; $61C5: $20 $B5

    ld d, b                                       ; $61C7: $50
    ld [hl+], a                                   ; $61C8: $22
    inc b                                         ; $61C9: $04
    ld b, b                                       ; $61CA: $40

jr_012_61CB:
    nop                                           ; $61CB: $00
    add d                                         ; $61CC: $82
    dec bc                                        ; $61CD: $0B
    nop                                           ; $61CE: $00
    dec bc                                        ; $61CF: $0B
    ld [hl+], a                                   ; $61D0: $22
    dec bc                                        ; $61D1: $0B

jr_012_61D2:
    ld h, $0B                                     ; $61D2: $26 $0B
    inc hl                                        ; $61D4: $23
    dec bc                                        ; $61D5: $0B
    jr z, jr_012_61E3                             ; $61D6: $28 $0B

    inc h                                         ; $61D8: $24
    dec bc                                        ; $61D9: $0B
    add hl, hl                                    ; $61DA: $29
    dec bc                                        ; $61DB: $0B
    dec h                                         ; $61DC: $25
    dec bc                                        ; $61DD: $0B
    daa                                           ; $61DE: $27
    ld l, a                                       ; $61DF: $6F
    rrca                                          ; $61E0: $0F
    rra                                           ; $61E1: $1F
    nop                                           ; $61E2: $00

jr_012_61E3:
    sub h                                         ; $61E3: $94
    halt                                          ; $61E4: $76
    jr nz, jr_012_61F6                            ; $61E5: $20 $0F

    ld d, e                                       ; $61E7: $53
    ld b, d                                       ; $61E8: $42
    dec b                                         ; $61E9: $05
    ld [hl+], a                                   ; $61EA: $22
    and h                                         ; $61EB: $A4
    ld h, l                                       ; $61EC: $65
    add hl, bc                                    ; $61ED: $09
    ld a, [bc]                                    ; $61EE: $0A
    sbc c                                         ; $61EF: $99
    pop de                                        ; $61F0: $D1
    ld [hl], l                                    ; $61F1: $75
    ld [de], a                                    ; $61F2: $12
    inc b                                         ; $61F3: $04
    ld h, e                                       ; $61F4: $63
    ld [de], a                                    ; $61F5: $12

jr_012_61F6:
    add hl, sp                                    ; $61F6: $39
    ld h, h                                       ; $61F7: $64
    dec b                                         ; $61F8: $05
    inc hl                                        ; $61F9: $23
    and h                                         ; $61FA: $A4
    ld h, l                                       ; $61FB: $65
    jr jr_012_620B                                ; $61FC: $18 $0D

    jr nz, jr_012_61D2                            ; $61FE: $20 $D2

    and c                                         ; $6200: $A1
    ld [de], a                                    ; $6201: $12
    dec d                                         ; $6202: $15
    ld h, e                                       ; $6203: $63
    ld [de], a                                    ; $6204: $12
    ld h, [hl]                                    ; $6205: $66
    ld h, h                                       ; $6206: $64
    dec b                                         ; $6207: $05

jr_012_6208:
    inc h                                         ; $6208: $24
    and h                                         ; $6209: $A4
    ld h, l                                       ; $620A: $65

jr_012_620B:
    rlca                                          ; $620B: $07
    dec d                                         ; $620C: $15
    ld c, a                                       ; $620D: $4F
    db $D3                                        ; $620E: $D3
    and c                                         ; $620F: $A1
    ld [de], a                                    ; $6210: $12
    nop                                           ; $6211: $00
    ld h, h                                       ; $6212: $64
    ld [de], a                                    ; $6213: $12
    add h                                         ; $6214: $84
    ld h, h                                       ; $6215: $64
    dec b                                         ; $6216: $05
    dec h                                         ; $6217: $25
    and h                                         ; $6218: $A4
    ld h, l                                       ; $6219: $65
    dec e                                         ; $621A: $1D
    inc hl                                        ; $621B: $23
    sub l                                         ; $621C: $95
    push de                                       ; $621D: $D5
    ld [hl], l                                    ; $621E: $75
    ld [de], a                                    ; $621F: $12
    inc b                                         ; $6220: $04
    ld h, e                                       ; $6221: $63
    ld [de], a                                    ; $6222: $12
    and d                                         ; $6223: $A2
    ld h, h                                       ; $6224: $64
    dec b                                         ; $6225: $05
    ld h, $ED                                     ; $6226: $26 $ED
    ld h, e                                       ; $6228: $63
    rlca                                          ; $6229: $07
    ld a, [bc]                                    ; $622A: $0A
    sub a                                         ; $622B: $97
    pop de                                        ; $622C: $D1
    jp nc, Jump_012_6412                          ; $622D: $D2 $12 $64

    ld h, d                                       ; $6230: $62
    ld [de], a                                    ; $6231: $12
    add d                                         ; $6232: $82
    ld h, d                                       ; $6233: $62
    dec b                                         ; $6234: $05
    daa                                           ; $6235: $27
    db $ED                                        ; $6236: $ED
    ld h, e                                       ; $6237: $63
    dec de                                        ; $6238: $1B
    inc hl                                        ; $6239: $23
    sub e                                         ; $623A: $93
    push de                                       ; $623B: $D5
    jp nc, Jump_012_6412                          ; $623C: $D2 $12 $64

    ld h, d                                       ; $623F: $62
    ld [de], a                                    ; $6240: $12
    add d                                         ; $6241: $82
    ld h, d                                       ; $6242: $62
    dec b                                         ; $6243: $05
    jr z, @+$6D                                   ; $6244: $28 $6B

    ld c, d                                       ; $6246: $4A
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    ret nc                                        ; $624A: $D0

    nop                                           ; $624B: $00
    ld [hl+], a                                   ; $624C: $22
    inc b                                         ; $624D: $04
    ld b, b                                       ; $624E: $40
    ld [hl+], a                                   ; $624F: $22

Jump_012_6250:
    inc b                                         ; $6250: $04
    ld b, b                                       ; $6251: $40
    dec b                                         ; $6252: $05
    add hl, hl                                    ; $6253: $29

Jump_012_6254:
    ld l, e                                       ; $6254: $6B
    ld c, d                                       ; $6255: $4A
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    ret nc                                        ; $6259: $D0

    nop                                           ; $625A: $00
    ld [hl+], a                                   ; $625B: $22
    inc b                                         ; $625C: $04
    ld b, b                                       ; $625D: $40
    ld [hl+], a                                   ; $625E: $22
    inc b                                         ; $625F: $04
    ld b, b                                       ; $6260: $40
    ld b, [hl]                                    ; $6261: $46
    add h                                         ; $6262: $84
    ld h, c                                       ; $6263: $61
    dec d                                         ; $6264: $15
    rrca                                          ; $6265: $0F
    dec hl                                        ; $6266: $2B
    ld a, h                                       ; $6267: $7C
    db $10                                        ; $6268: $10
    rrca                                          ; $6269: $0F
    inc bc                                        ; $626A: $03
    ld a, h                                       ; $626B: $7C
    db $10                                        ; $626C: $10
    rrca                                          ; $626D: $0F
    dec [hl]                                      ; $626E: $35
    ld a, h                                       ; $626F: $7C
    db $10                                        ; $6270: $10
    rrca                                          ; $6271: $0F
    dec hl                                        ; $6272: $2B
    ld a, h                                       ; $6273: $7C
    db $10                                        ; $6274: $10
    rrca                                          ; $6275: $0F
    inc bc                                        ; $6276: $03
    ld a, h                                       ; $6277: $7C
    db $10                                        ; $6278: $10
    rrca                                          ; $6279: $0F
    dec [hl]                                      ; $627A: $35
    ld a, h                                       ; $627B: $7C
    stop                                          ; $627C: $10 $00
    ld b, l                                       ; $627E: $45
    ld [de], a                                    ; $627F: $12
    ld h, h                                       ; $6280: $64
    ld h, d                                       ; $6281: $62
    ld e, e                                       ; $6282: $5B
    ld [de], a                                    ; $6283: $12
    and c                                         ; $6284: $A1
    ld h, d                                       ; $6285: $62
    ld b, l                                       ; $6286: $45
    rrca                                          ; $6287: $0F
    ccf                                           ; $6288: $3F
    ld a, h                                       ; $6289: $7C
    dec d                                         ; $628A: $15
    rrca                                          ; $628B: $0F
    dec [hl]                                      ; $628C: $35
    ld a, h                                       ; $628D: $7C
    ld bc, $4200                                  ; $628E: $01 $00 $42
    ld e, e                                       ; $6291: $5B
    ld [de], a                                    ; $6292: $12
    or c                                          ; $6293: $B1
    ld h, d                                       ; $6294: $62
    ld b, l                                       ; $6295: $45
    rrca                                          ; $6296: $0F
    ccf                                           ; $6297: $3F
    ld a, h                                       ; $6298: $7C
    ld e, e                                       ; $6299: $5B
    ld [de], a                                    ; $629A: $12

jr_012_629B:
    ldh [$62], a                                  ; $629B: $E0 $62
    ld b, l                                       ; $629D: $45
    rrca                                          ; $629E: $0F
    ccf                                           ; $629F: $3F
    ld a, h                                       ; $62A0: $7C
    sbc e                                         ; $62A1: $9B
    add hl, de                                    ; $62A2: $19
    ld c, [hl]                                    ; $62A3: $4E
    sbc a                                         ; $62A4: $9F
    ld c, b                                       ; $62A5: $48
    ld b, l                                       ; $62A6: $45
    ld c, h                                       ; $62A7: $4C
    ld d, b                                       ; $62A8: $50
    ld hl, $FE21                                  ; $62A9: $21 $21 $FE
    db $FD                                        ; $62AC: $FD
    sbc d                                         ; $62AD: $9A
    ld e, b                                       ; $62AE: $58
    ld bc, $9B42                                  ; $62AF: $01 $42 $9B
    add hl, de                                    ; $62B2: $19
    ld c, [hl]                                    ; $62B3: $4E
    sbc a                                         ; $62B4: $9F
    ld d, b                                       ; $62B5: $50
    ld l, h                                       ; $62B6: $6C
    ld h, l                                       ; $62B7: $65
    ld h, c                                       ; $62B8: $61
    ld [hl], e                                    ; $62B9: $73
    ld h, l                                       ; $62BA: $65
    jr nz, jr_012_6330                            ; $62BB: $20 $73

    ld [hl], h                                    ; $62BD: $74
    ld l, a                                       ; $62BE: $6F
    ld [hl], b                                    ; $62BF: $70
    rst $38                                       ; $62C0: $FF
    ld [hl], h                                    ; $62C1: $74
    ld l, b                                       ; $62C2: $68
    ld h, l                                       ; $62C3: $65
    jr nz, jr_012_6338                            ; $62C4: $20 $72

    ld h, l                                       ; $62C6: $65
    ld [hl], e                                    ; $62C7: $73
    ld [hl], h                                    ; $62C8: $74
    jr nz, @+$71                                  ; $62C9: $20 $6F

    ld h, [hl]                                    ; $62CB: $66
    cp $74                                        ; $62CC: $FE $74
    ld l, b                                       ; $62CE: $68
    ld h, l                                       ; $62CF: $65
    ld [hl], e                                    ; $62D0: $73
    ld h, l                                       ; $62D1: $65
    jr nz, @+$68                                  ; $62D2: $20 $66

    ld l, c                                       ; $62D4: $69
    ld h, l                                       ; $62D5: $65
    ld l, [hl]                                    ; $62D6: $6E
    ld h, h                                       ; $62D7: $64
    ld [hl], e                                    ; $62D8: $73
    ld hl, $FDFE                                  ; $62D9: $21 $FE $FD
    sbc d                                         ; $62DC: $9A
    ld e, b                                       ; $62DD: $58
    ld bc, $9B42                                  ; $62DE: $01 $42 $9B
    add hl, de                                    ; $62E1: $19
    ld c, [hl]                                    ; $62E2: $4E
    sbc a                                         ; $62E3: $9F
    ld d, a                                       ; $62E4: $57
    ld l, b                                       ; $62E5: $68
    ld a, c                                       ; $62E6: $79
    jr nz, jr_012_634A                            ; $62E7: $20 $61

    ld [hl], d                                    ; $62E9: $72
    ld h, l                                       ; $62EA: $65
    jr nz, jr_012_6361                            ; $62EB: $20 $74

    ld l, b                                       ; $62ED: $68
    ld h, l                                       ; $62EE: $65
    ld a, c                                       ; $62EF: $79
    rst $38                                       ; $62F0: $FF
    ld h, c                                       ; $62F1: $61
    ld [hl], h                                    ; $62F2: $74
    ld [hl], h                                    ; $62F3: $74
    ld h, c                                       ; $62F4: $61

jr_012_62F5:
    ld h, e                                       ; $62F5: $63
    ld l, e                                       ; $62F6: $6B
    ld l, c                                       ; $62F7: $69
    ld l, [hl]                                    ; $62F8: $6E
    ld h, a                                       ; $62F9: $67
    jr nz, jr_012_6371                            ; $62FA: $20 $75

    ld [hl], e                                    ; $62FC: $73
    ccf                                           ; $62FD: $3F
    cp $FD                                        ; $62FE: $FE $FD
    sbc d                                         ; $6300: $9A
    ld e, b                                       ; $6301: $58
    ld bc, $1542                                  ; $6302: $01 $42 $15
    jr nz, jr_012_635F                            ; $6305: $20 $58

    ld [hl], h                                    ; $6307: $74
    db $10                                        ; $6308: $10
    jr nz, jr_012_6373                            ; $6309: $20 $68

    ld [hl], h                                    ; $630B: $74
    db $10                                        ; $630C: $10
    jr nz, jr_012_629B                            ; $630D: $20 $8C

    ld [hl], h                                    ; $630F: $74
    jr nc, jr_012_6312                            ; $6310: $30 $00

jr_012_6312:
    ld b, [hl]                                    ; $6312: $46
    inc b                                         ; $6313: $04
    ld h, e                                       ; $6314: $63
    dec d                                         ; $6315: $15
    db $10                                        ; $6316: $10
    ei                                            ; $6317: $FB
    ld b, [hl]                                    ; $6318: $46
    jr nz, jr_012_631B                            ; $6319: $20 $00

jr_012_631B:
    dec b                                         ; $631B: $05
    jr z, jr_012_6389                             ; $631C: $28 $6B

    ld c, d                                       ; $631E: $4A
    jr jr_012_632E                                ; $631F: $18 $0D

    jr nz, jr_012_62F5                            ; $6321: $20 $D2

    adc $11                                       ; $6323: $CE $11
    ld l, c                                       ; $6325: $69
    ld a, l                                       ; $6326: $7D
    ld [hl+], a                                   ; $6327: $22
    dec b                                         ; $6328: $05
    ld b, b                                       ; $6329: $40
    dec d                                         ; $632A: $15

jr_012_632B:
    db $10                                        ; $632B: $10
    rst $00                                       ; $632C: $C7
    ld b, [hl]                                    ; $632D: $46

jr_012_632E:
    inc b                                         ; $632E: $04
    db $10                                        ; $632F: $10

jr_012_6330:
    rst $10                                       ; $6330: $D7
    ld b, [hl]                                    ; $6331: $46
    inc b                                         ; $6332: $04
    db $10                                        ; $6333: $10
    ei                                            ; $6334: $FB
    ld b, [hl]                                    ; $6335: $46
    inc d                                         ; $6336: $14
    nop                                           ; $6337: $00

jr_012_6338:
    dec b                                         ; $6338: $05
    jr z, jr_012_63A6                             ; $6339: $28 $6B

    ld c, d                                       ; $633B: $4A
    inc d                                         ; $633C: $14
    dec c                                         ; $633D: $0D
    inc e                                         ; $633E: $1C
    jp nc, $11BF                                  ; $633F: $D2 $BF $11

    dec h                                         ; $6342: $25
    ld a, l                                       ; $6343: $7D
    ld [hl+], a                                   ; $6344: $22
    dec b                                         ; $6345: $05
    ld b, b                                       ; $6346: $40
    dec d                                         ; $6347: $15
    db $10                                        ; $6348: $10
    rst $20                                       ; $6349: $E7

jr_012_634A:
    ld b, [hl]                                    ; $634A: $46
    jr nz, jr_012_635D                            ; $634B: $20 $10

    dec b                                         ; $634D: $05
    ld b, a                                       ; $634E: $47
    jr nz, jr_012_6351                            ; $634F: $20 $00

jr_012_6351:
    dec b                                         ; $6351: $05
    jr z, jr_012_63BF                             ; $6352: $28 $6B

    ld c, d                                       ; $6354: $4A
    jr jr_012_6364                                ; $6355: $18 $0D

    jr nz, jr_012_632B                            ; $6357: $20 $D2

    adc $11                                       ; $6359: $CE $11
    ld [hl], l                                    ; $635B: $75
    ld a, l                                       ; $635C: $7D

jr_012_635D:
    ld [hl+], a                                   ; $635D: $22
    dec b                                         ; $635E: $05

jr_012_635F:
    ld b, b                                       ; $635F: $40
    dec d                                         ; $6360: $15

jr_012_6361:
    db $10                                        ; $6361: $10
    rst $10                                       ; $6362: $D7
    ld b, [hl]                                    ; $6363: $46

jr_012_6364:
    inc b                                         ; $6364: $04
    db $10                                        ; $6365: $10
    rst $00                                       ; $6366: $C7
    ld b, [hl]                                    ; $6367: $46
    inc b                                         ; $6368: $04
    db $10                                        ; $6369: $10
    dec b                                         ; $636A: $05
    ld b, a                                       ; $636B: $47
    inc d                                         ; $636C: $14
    nop                                           ; $636D: $00
    dec b                                         ; $636E: $05
    jr z, jr_012_63DC                             ; $636F: $28 $6B

jr_012_6371:
    ld c, d                                       ; $6371: $4A
    inc e                                         ; $6372: $1C

jr_012_6373:
    dec c                                         ; $6373: $0D
    inc h                                         ; $6374: $24
    jp nc, $11BF                                  ; $6375: $D2 $BF $11

    dec h                                         ; $6378: $25
    ld a, l                                       ; $6379: $7D
    ld [hl+], a                                   ; $637A: $22
    dec b                                         ; $637B: $05
    ld b, b                                       ; $637C: $40
    dec d                                         ; $637D: $15
    db $10                                        ; $637E: $10
    rst $20                                       ; $637F: $E7
    ld b, [hl]                                    ; $6380: $46
    jr nz, @+$12                                  ; $6381: $20 $10

    dec l                                         ; $6383: $2D
    ld b, a                                       ; $6384: $47
    jr nz, jr_012_6397                            ; $6385: $20 $10

    or a                                          ; $6387: $B7
    ld b, [hl]                                    ; $6388: $46

jr_012_6389:
    jr nz, jr_012_638B                            ; $6389: $20 $00

jr_012_638B:
    dec d                                         ; $638B: $15
    db $10                                        ; $638C: $10
    dec b                                         ; $638D: $05
    ld b, a                                       ; $638E: $47
    jr nz, jr_012_6391                            ; $638F: $20 $00

jr_012_6391:
    dec b                                         ; $6391: $05
    jr z, jr_012_63FF                             ; $6392: $28 $6B

    ld c, d                                       ; $6394: $4A
    jr jr_012_63A8                                ; $6395: $18 $11

jr_012_6397:
    ret nz                                        ; $6397: $C0

    jp nc, $11CE                                  ; $6398: $D2 $CE $11

    ld [hl], l                                    ; $639B: $75
    ld a, l                                       ; $639C: $7D
    ld [hl+], a                                   ; $639D: $22
    dec b                                         ; $639E: $05
    ld b, b                                       ; $639F: $40
    dec d                                         ; $63A0: $15
    db $10                                        ; $63A1: $10
    rst $10                                       ; $63A2: $D7
    ld b, [hl]                                    ; $63A3: $46
    inc b                                         ; $63A4: $04
    db $10                                        ; $63A5: $10

jr_012_63A6:
    rst $00                                       ; $63A6: $C7
    ld b, [hl]                                    ; $63A7: $46

jr_012_63A8:
    inc b                                         ; $63A8: $04
    db $10                                        ; $63A9: $10
    dec b                                         ; $63AA: $05
    ld b, a                                       ; $63AB: $47
    inc c                                         ; $63AC: $0C
    nop                                           ; $63AD: $00
    dec b                                         ; $63AE: $05
    jr z, jr_012_641C                             ; $63AF: $28 $6B

    ld c, d                                       ; $63B1: $4A
    dec de                                        ; $63B2: $1B
    ld de, $D2C3                                  ; $63B3: $11 $C3 $D2
    cp a                                          ; $63B6: $BF
    ld de, $7D25                                  ; $63B7: $11 $25 $7D
    ld [hl+], a                                   ; $63BA: $22
    dec b                                         ; $63BB: $05
    ld b, b                                       ; $63BC: $40
    dec d                                         ; $63BD: $15
    db $10                                        ; $63BE: $10

jr_012_63BF:
    rst $20                                       ; $63BF: $E7
    ld b, [hl]                                    ; $63C0: $46
    jr nz, jr_012_63D3                            ; $63C1: $20 $10

    pop af                                        ; $63C3: $F1
    ld b, [hl]                                    ; $63C4: $46
    jr nz, jr_012_63C7                            ; $63C5: $20 $00

jr_012_63C7:
    dec b                                         ; $63C7: $05
    jr z, jr_012_6435                             ; $63C8: $28 $6B

    ld c, d                                       ; $63CA: $4A
    jr jr_012_63DE                                ; $63CB: $18 $11

    ret nz                                        ; $63CD: $C0

    jp nc, $11CE                                  ; $63CE: $D2 $CE $11

    adc l                                         ; $63D1: $8D
    ld a, l                                       ; $63D2: $7D

jr_012_63D3:
    ld [hl+], a                                   ; $63D3: $22
    dec b                                         ; $63D4: $05
    ld b, b                                       ; $63D5: $40
    dec d                                         ; $63D6: $15
    db $10                                        ; $63D7: $10
    or a                                          ; $63D8: $B7
    ld b, [hl]                                    ; $63D9: $46
    inc b                                         ; $63DA: $04
    db $10                                        ; $63DB: $10

jr_012_63DC:
    and a                                         ; $63DC: $A7
    ld b, [hl]                                    ; $63DD: $46

jr_012_63DE:
    inc b                                         ; $63DE: $04
    db $10                                        ; $63DF: $10
    pop af                                        ; $63E0: $F1
    ld b, [hl]                                    ; $63E1: $46
    inc b                                         ; $63E2: $04
    nop                                           ; $63E3: $00
    dec b                                         ; $63E4: $05
    jr z, jr_012_6452                             ; $63E5: $28 $6B

    ld c, d                                       ; $63E7: $4A
    jr jr_012_63FD                                ; $63E8: $18 $13

    db $10                                        ; $63EA: $10
    db $D3                                        ; $63EB: $D3
    cp a                                          ; $63EC: $BF
    ld de, $7D25                                  ; $63ED: $11 $25 $7D
    ld [hl+], a                                   ; $63F0: $22
    dec b                                         ; $63F1: $05
    ld b, b                                       ; $63F2: $40
    dec d                                         ; $63F3: $15
    db $10                                        ; $63F4: $10
    and a                                         ; $63F5: $A7
    ld b, [hl]                                    ; $63F6: $46
    jr nz, jr_012_6409                            ; $63F7: $20 $10

    rst $20                                       ; $63F9: $E7
    ld b, [hl]                                    ; $63FA: $46
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00

jr_012_63FD:
    ld b, [hl]                                    ; $63FD: $46
    dec d                                         ; $63FE: $15

jr_012_63FF:
    ld h, e                                       ; $63FF: $63
    dec d                                         ; $6400: $15
    db $10                                        ; $6401: $10
    dec b                                         ; $6402: $05
    ld b, a                                       ; $6403: $47
    ld h, b                                       ; $6404: $60
    nop                                           ; $6405: $00
    dec b                                         ; $6406: $05
    add hl, hl                                    ; $6407: $29
    ld l, e                                       ; $6408: $6B

jr_012_6409:
    ld c, d                                       ; $6409: $4A
    rlca                                          ; $640A: $07
    dec d                                         ; $640B: $15
    ld c, a                                       ; $640C: $4F
    db $D3                                        ; $640D: $D3
    adc $11                                       ; $640E: $CE $11
    ld [hl], l                                    ; $6410: $75
    ld a, l                                       ; $6411: $7D

Jump_012_6412:
    ld [hl+], a                                   ; $6412: $22
    dec b                                         ; $6413: $05
    ld b, b                                       ; $6414: $40
    dec d                                         ; $6415: $15
    db $10                                        ; $6416: $10
    rst $10                                       ; $6417: $D7
    ld b, [hl]                                    ; $6418: $46
    inc b                                         ; $6419: $04
    db $10                                        ; $641A: $10
    rst $00                                       ; $641B: $C7

jr_012_641C:
    ld b, [hl]                                    ; $641C: $46
    inc b                                         ; $641D: $04
    db $10                                        ; $641E: $10
    dec b                                         ; $641F: $05
    ld b, a                                       ; $6420: $47
    inc d                                         ; $6421: $14
    nop                                           ; $6422: $00
    dec b                                         ; $6423: $05
    add hl, hl                                    ; $6424: $29
    ld l, e                                       ; $6425: $6B
    ld c, d                                       ; $6426: $4A
    dec bc                                        ; $6427: $0B
    dec d                                         ; $6428: $15
    ld d, e                                       ; $6429: $53
    db $D3                                        ; $642A: $D3
    cp a                                          ; $642B: $BF
    ld de, $7D25                                  ; $642C: $11 $25 $7D
    ld [hl+], a                                   ; $642F: $22
    dec b                                         ; $6430: $05
    ld b, b                                       ; $6431: $40
    inc d                                         ; $6432: $14
    db $10                                        ; $6433: $10
    dec b                                         ; $6434: $05

jr_012_6435:
    ld b, a                                       ; $6435: $47
    ld b, [hl]                                    ; $6436: $46
    nop                                           ; $6437: $00
    ld h, h                                       ; $6438: $64
    and [hl]                                      ; $6439: $A6
    xor b                                         ; $643A: $A8
    and d                                         ; $643B: $A2
    dec bc                                        ; $643C: $0B
    ld bc, $A2A8                                  ; $643D: $01 $A8 $A2
    dec b                                         ; $6440: $05
    ld bc, $25AF                                  ; $6441: $01 $AF $25
    and c                                         ; $6444: $A1
    ld bc, $2605                                  ; $6445: $01 $05 $26
    db $ED                                        ; $6448: $ED
    ld h, e                                       ; $6449: $63
    rlca                                          ; $644A: $07
    ld a, [bc]                                    ; $644B: $0A
    sub a                                         ; $644C: $97
    pop de                                        ; $644D: $D1
    jp nc, $8A12                                  ; $644E: $D2 $12 $8A

    ld h, d                                       ; $6451: $62

jr_012_6452:
    ld [de], a                                    ; $6452: $12
    sub c                                         ; $6453: $91
    ld h, d                                       ; $6454: $62
    ld h, h                                       ; $6455: $64
    ld l, b                                       ; $6456: $68
    ld c, d                                       ; $6457: $4A
    ld sp, $7612                                  ; $6458: $31 $12 $76
    ld h, c                                       ; $645B: $61
    ld [hl+], a                                   ; $645C: $22
    adc $40                                       ; $645D: $CE $40
    ld e, c                                       ; $645F: $59
    ld [de], a                                    ; $6460: $12
    sub a                                         ; $6461: $97
    ld [hl], b                                    ; $6462: $70
    ld b, [hl]                                    ; $6463: $46
    rst $08                                       ; $6464: $CF
    ld h, h                                       ; $6465: $64
    and [hl]                                      ; $6466: $A6
    xor b                                         ; $6467: $A8
    and d                                         ; $6468: $A2
    dec bc                                        ; $6469: $0B
    ld bc, $A2A8                                  ; $646A: $01 $A8 $A2
    dec b                                         ; $646D: $05
    ld bc, $25AF                                  ; $646E: $01 $AF $25
    and c                                         ; $6471: $A1
    ld [bc], a                                    ; $6472: $02
    ld h, h                                       ; $6473: $64
    ld l, b                                       ; $6474: $68
    ld c, d                                       ; $6475: $4A
    ld sp, $7612                                  ; $6476: $31 $12 $76
    ld h, c                                       ; $6479: $61
    ld [hl+], a                                   ; $647A: $22
    adc $40                                       ; $647B: $CE $40
    ld e, c                                       ; $647D: $59
    ld [de], a                                    ; $647E: $12
    dec hl                                        ; $647F: $2B
    ld [hl], c                                    ; $6480: $71
    ld b, [hl]                                    ; $6481: $46
    rst $08                                       ; $6482: $CF
    ld h, h                                       ; $6483: $64
    and [hl]                                      ; $6484: $A6
    xor b                                         ; $6485: $A8
    and d                                         ; $6486: $A2
    dec bc                                        ; $6487: $0B
    ld bc, $A2A8                                  ; $6488: $01 $A8 $A2
    dec b                                         ; $648B: $05
    ld bc, $25AF                                  ; $648C: $01 $AF $25
    and c                                         ; $648F: $A1
    inc b                                         ; $6490: $04
    ld h, h                                       ; $6491: $64
    and c                                         ; $6492: $A1
    ld c, d                                       ; $6493: $4A
    ld sp, $7612                                  ; $6494: $31 $12 $76
    ld h, c                                       ; $6497: $61
    ld [hl+], a                                   ; $6498: $22
    adc $40                                       ; $6499: $CE $40
    ld e, c                                       ; $649B: $59
    ld [de], a                                    ; $649C: $12
    dec hl                                        ; $649D: $2B
    ld [hl], c                                    ; $649E: $71
    ld b, [hl]                                    ; $649F: $46
    rst $08                                       ; $64A0: $CF
    ld h, h                                       ; $64A1: $64
    and [hl]                                      ; $64A2: $A6
    xor b                                         ; $64A3: $A8
    and d                                         ; $64A4: $A2
    dec bc                                        ; $64A5: $0B
    ld bc, $A2A8                                  ; $64A6: $01 $A8 $A2
    dec b                                         ; $64A9: $05
    ld bc, $25AF                                  ; $64AA: $01 $AF $25
    and c                                         ; $64AD: $A1
    ld [$2705], sp                                ; $64AE: $08 $05 $27
    db $ED                                        ; $64B1: $ED
    ld h, e                                       ; $64B2: $63
    dec de                                        ; $64B3: $1B
    inc hl                                        ; $64B4: $23
    sub e                                         ; $64B5: $93
    push de                                       ; $64B6: $D5
    jp nc, $8A12                                  ; $64B7: $D2 $12 $8A

    ld h, d                                       ; $64BA: $62
    ld [de], a                                    ; $64BB: $12
    sbc c                                         ; $64BC: $99
    ld h, d                                       ; $64BD: $62
    ld h, h                                       ; $64BE: $64
    and c                                         ; $64BF: $A1
    ld c, d                                       ; $64C0: $4A
    ld sp, $7612                                  ; $64C1: $31 $12 $76
    ld h, c                                       ; $64C4: $61
    ld [hl+], a                                   ; $64C5: $22
    adc $40                                       ; $64C6: $CE $40
    ld e, c                                       ; $64C8: $59
    ld [de], a                                    ; $64C9: $12
    sub a                                         ; $64CA: $97
    ld [hl], b                                    ; $64CB: $70
    ld b, [hl]                                    ; $64CC: $46
    rst $08                                       ; $64CD: $CF
    ld h, h                                       ; $64CE: $64
    inc de                                        ; $64CF: $13
    ld l, e                                       ; $64D0: $6B
    ld c, d                                       ; $64D1: $4A
    inc d                                         ; $64D2: $14
    ld [hl+], a                                   ; $64D3: $22
    inc b                                         ; $64D4: $04
    ld b, b                                       ; $64D5: $40
    ld b, d                                       ; $64D6: $42
    ld l, e                                       ; $64D7: $6B
    dec hl                                        ; $64D8: $2B
    dec bc                                        ; $64D9: $0B
    db $10                                        ; $64DA: $10
    ld l, d                                       ; $64DB: $6A
    nop                                           ; $64DC: $00
    add b                                         ; $64DD: $80
    nop                                           ; $64DE: $00
    ld l, e                                       ; $64DF: $6B
    inc c                                         ; $64E0: $0C
    dec c                                         ; $64E1: $0D
    ld [hl], b                                    ; $64E2: $70
    ld l, l                                       ; $64E3: $6D
    nop                                           ; $64E4: $00
    add e                                         ; $64E5: $83
    nop                                           ; $64E6: $00
    dec b                                         ; $64E7: $05
    inc bc                                        ; $64E8: $03
    ld l, e                                       ; $64E9: $6B
    ld c, d                                       ; $64EA: $4A
    nop                                           ; $64EB: $00
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    ret nc                                        ; $64EE: $D0

    nop                                           ; $64EF: $00
    ld [hl+], a                                   ; $64F0: $22
    inc b                                         ; $64F1: $04

jr_012_64F2:
    ld b, b                                       ; $64F2: $40
    ld [hl+], a                                   ; $64F3: $22

jr_012_64F4:
    inc b                                         ; $64F4: $04
    ld b, b                                       ; $64F5: $40
    dec bc                                        ; $64F6: $0B
    inc bc                                        ; $64F7: $03
    ld b, e                                       ; $64F8: $43
    nop                                           ; $64F9: $00
    dec h                                         ; $64FA: $25
    and c                                         ; $64FB: $A1
    ld bc, $1012                                  ; $64FC: $01 $12 $10
    ld h, l                                       ; $64FF: $65
    dec b                                         ; $6500: $05
    ld [hl+], a                                   ; $6501: $22
    ld l, e                                       ; $6502: $6B
    ld c, d                                       ; $6503: $4A
    add hl, bc                                    ; $6504: $09
    ld a, [bc]                                    ; $6505: $0A
    sbc c                                         ; $6506: $99
    pop de                                        ; $6507: $D1
    ld [hl], l                                    ; $6508: $75
    ld [de], a                                    ; $6509: $12
    ld l, a                                       ; $650A: $6F
    ld h, l                                       ; $650B: $65
    ld [hl+], a                                   ; $650C: $22
    inc b                                         ; $650D: $04
    ld b, b                                       ; $650E: $40
    ld e, [hl]                                    ; $650F: $5E
    ld b, e                                       ; $6510: $43
    nop                                           ; $6511: $00
    dec h                                         ; $6512: $25
    and c                                         ; $6513: $A1
    ld [bc], a                                    ; $6514: $02
    ld [de], a                                    ; $6515: $12
    jr z, jr_012_657D                             ; $6516: $28 $65

    dec b                                         ; $6518: $05
    inc hl                                        ; $6519: $23
    ld l, e                                       ; $651A: $6B
    ld c, d                                       ; $651B: $4A
    jr jr_012_652B                                ; $651C: $18 $0D

    jr nz, jr_012_64F2                            ; $651E: $20 $D2

    and c                                         ; $6520: $A1
    ld [de], a                                    ; $6521: $12
    ld [c], a                                     ; $6522: $E2
    ld h, l                                       ; $6523: $65
    ld [hl+], a                                   ; $6524: $22
    inc b                                         ; $6525: $04
    ld b, b                                       ; $6526: $40
    ld e, [hl]                                    ; $6527: $5E
    ld b, e                                       ; $6528: $43
    nop                                           ; $6529: $00
    dec h                                         ; $652A: $25

jr_012_652B:
    and c                                         ; $652B: $A1
    inc b                                         ; $652C: $04
    ld [de], a                                    ; $652D: $12
    ld b, b                                       ; $652E: $40
    ld h, l                                       ; $652F: $65
    dec b                                         ; $6530: $05
    inc h                                         ; $6531: $24
    ld l, e                                       ; $6532: $6B
    ld c, d                                       ; $6533: $4A
    rlca                                          ; $6534: $07
    dec d                                         ; $6535: $15
    ld c, a                                       ; $6536: $4F
    db $D3                                        ; $6537: $D3
    and c                                         ; $6538: $A1
    ld [de], a                                    ; $6539: $12
    ld c, d                                       ; $653A: $4A
    ld h, [hl]                                    ; $653B: $66
    ld [hl+], a                                   ; $653C: $22
    inc b                                         ; $653D: $04
    ld b, b                                       ; $653E: $40
    ld e, [hl]                                    ; $653F: $5E

jr_012_6540:
    ld b, e                                       ; $6540: $43
    nop                                           ; $6541: $00

jr_012_6542:
    dec h                                         ; $6542: $25
    and c                                         ; $6543: $A1
    ld [$5812], sp                                ; $6544: $08 $12 $58
    ld h, l                                       ; $6547: $65
    dec b                                         ; $6548: $05
    dec h                                         ; $6549: $25
    ld l, e                                       ; $654A: $6B
    ld c, d                                       ; $654B: $4A
    dec e                                         ; $654C: $1D
    inc hl                                        ; $654D: $23
    sub l                                         ; $654E: $95
    push de                                       ; $654F: $D5

jr_012_6550:
    ld [hl], l                                    ; $6550: $75
    ld [de], a                                    ; $6551: $12
    ret nz                                        ; $6552: $C0

    ld h, [hl]                                    ; $6553: $66
    ld [hl+], a                                   ; $6554: $22
    inc b                                         ; $6555: $04
    ld b, b                                       ; $6556: $40
    ld e, [hl]                                    ; $6557: $5E
    ld a, l                                       ; $6558: $7D
    adc c                                         ; $6559: $89
    pop bc                                        ; $655A: $C1
    inc b                                         ; $655B: $04
    inc c                                         ; $655C: $0C
    inc bc                                        ; $655D: $03
    ld d, e                                       ; $655E: $53
    ld b, d                                       ; $655F: $42
    dec d                                         ; $6560: $15
    rrca                                          ; $6561: $0F
    dec [hl]                                      ; $6562: $35
    ld a, h                                       ; $6563: $7C
    ld bc, $4200                                  ; $6564: $01 $00 $42
    ld e, e                                       ; $6567: $5B
    ld [de], a                                    ; $6568: $12
    call c, Call_012_4567                         ; $6569: $DC $67 $45
    rrca                                          ; $656C: $0F
    ccf                                           ; $656D: $3F
    ld a, h                                       ; $656E: $7C
    inc d                                         ; $656F: $14
    jr nz, jr_012_64F4                            ; $6570: $20 $82

    ld [hl], h                                    ; $6572: $74
    ld a, l                                       ; $6573: $7D
    rra                                           ; $6574: $1F
    push bc                                       ; $6575: $C5
    inc b                                         ; $6576: $04
    ld e, e                                       ; $6577: $5B
    ld [de], a                                    ; $6578: $12
    ld b, l                                       ; $6579: $45
    ld h, a                                       ; $657A: $67
    ld e, a                                       ; $657B: $5F
    dec b                                         ; $657C: $05

jr_012_657D:
    inc bc                                        ; $657D: $03
    ld l, e                                       ; $657E: $6B
    ld c, d                                       ; $657F: $4A
    ld c, $0A                                     ; $6580: $0E $0A
    sbc [hl]                                      ; $6582: $9E
    pop de                                        ; $6583: $D1
    nop                                           ; $6584: $00
    ld [de], a                                    ; $6585: $12
    and d                                         ; $6586: $A2
    ld h, l                                       ; $6587: $65
    ld [hl+], a                                   ; $6588: $22
    inc b                                         ; $6589: $04
    ld b, b                                       ; $658A: $40
    dec d                                         ; $658B: $15
    jr nz, jr_012_6542                            ; $658C: $20 $B4

    ld [hl], h                                    ; $658E: $74
    db $10                                        ; $658F: $10
    jr nz, jr_012_6550                            ; $6590: $20 $BE

    ld [hl], h                                    ; $6592: $74
    db $10                                        ; $6593: $10
    jr nz, jr_012_6540                            ; $6594: $20 $AA

    ld [hl], h                                    ; $6596: $74
    ld [$8C20], sp                                ; $6597: $08 $20 $8C
    ld [hl], h                                    ; $659A: $74
    ld [$9620], sp                                ; $659B: $08 $20 $96
    ld [hl], h                                    ; $659E: $74
    nop                                           ; $659F: $00
    nop                                           ; $65A0: $00
    ld b, d                                       ; $65A1: $42
    inc d                                         ; $65A2: $14
    rrca                                          ; $65A3: $0F
    inc h                                         ; $65A4: $24
    ld l, l                                       ; $65A5: $6D
    dec d                                         ; $65A6: $15
    rrca                                          ; $65A7: $0F
    ldh a, [$6C]                                  ; $65A8: $F0 $6C
    inc hl                                        ; $65AA: $23
    rrca                                          ; $65AB: $0F
    ld [hl], l                                    ; $65AC: $75
    ld l, l                                       ; $65AD: $6D
    ld [$0500], sp                                ; $65AE: $08 $00 $05
    ld [hl+], a                                   ; $65B1: $22
    ld l, e                                       ; $65B2: $6B
    ld c, d                                       ; $65B3: $4A
    add hl, bc                                    ; $65B4: $09
    ld a, [bc]                                    ; $65B5: $0A
    sbc c                                         ; $65B6: $99
    pop de                                        ; $65B7: $D1
    cp a                                          ; $65B8: $BF
    ld de, $7D25                                  ; $65B9: $11 $25 $7D
    ld [hl+], a                                   ; $65BC: $22
    inc b                                         ; $65BD: $04
    ld b, b                                       ; $65BE: $40
    dec b                                         ; $65BF: $05
    ld h, $ED                                     ; $65C0: $26 $ED
    ld h, e                                       ; $65C2: $63
    rlca                                          ; $65C3: $07
    ld a, [bc]                                    ; $65C4: $0A
    sub a                                         ; $65C5: $97
    pop de                                        ; $65C6: $D1
    jp nc, Jump_012_6012                          ; $65C7: $D2 $12 $60

    ld h, l                                       ; $65CA: $65
    ld [de], a                                    ; $65CB: $12
    ld h, a                                       ; $65CC: $67
    ld h, l                                       ; $65CD: $65
    dec d                                         ; $65CE: $15
    rrca                                          ; $65CF: $0F
    ld a, h                                       ; $65D0: $7C
    ld l, l                                       ; $65D1: $6D
    inc b                                         ; $65D2: $04
    rrca                                          ; $65D3: $0F
    inc h                                         ; $65D4: $24
    ld l, l                                       ; $65D5: $6D
    jr nz, jr_012_65E7                            ; $65D6: $20 $0F

    ld l, $6D                                     ; $65D8: $2E $6D
    jr nz, jr_012_65DC                            ; $65DA: $20 $00

jr_012_65DC:
    xor a                                         ; $65DC: $AF
    dec h                                         ; $65DD: $25
    and c                                         ; $65DE: $A1
    ld bc, $4254                                  ; $65DF: $01 $54 $42
    inc d                                         ; $65E2: $14
    db $10                                        ; $65E3: $10
    ei                                            ; $65E4: $FB
    ld b, [hl]                                    ; $65E5: $46
    ld a, l                                       ; $65E6: $7D

jr_012_65E7:
    ld a, [hl-]                                   ; $65E7: $3A
    push bc                                       ; $65E8: $C5
    inc b                                         ; $65E9: $04
    ld e, e                                       ; $65EA: $5B
    ld [de], a                                    ; $65EB: $12
    ld l, a                                       ; $65EC: $6F
    ld h, a                                       ; $65ED: $67
    ld e, a                                       ; $65EE: $5F
    dec d                                         ; $65EF: $15
    db $10                                        ; $65F0: $10
    rst $20                                       ; $65F1: $E7
    ld b, [hl]                                    ; $65F2: $46
    db $10                                        ; $65F3: $10
    db $10                                        ; $65F4: $10
    dec l                                         ; $65F5: $2D
    ld b, a                                       ; $65F6: $47
    ld [$0F10], sp                                ; $65F7: $08 $10 $0F
    ld b, a                                       ; $65FA: $47
    ld [$0510], sp                                ; $65FB: $08 $10 $05
    ld b, a                                       ; $65FE: $47
    ld [$0500], sp                                ; $65FF: $08 $00 $05
    inc bc                                        ; $6602: $03
    ld l, e                                       ; $6603: $6B
    ld c, d                                       ; $6604: $4A

jr_012_6605:
    inc d                                         ; $6605: $14
    dec c                                         ; $6606: $0D
    inc e                                         ; $6607: $1C
    jp nc, $1200                                  ; $6608: $D2 $00 $12

    dec de                                        ; $660B: $1B
    ld h, [hl]                                    ; $660C: $66
    ld [hl+], a                                   ; $660D: $22
    dec b                                         ; $660E: $05
    ld b, b                                       ; $660F: $40
    dec d                                         ; $6610: $15
    db $10                                        ; $6611: $10
    dec b                                         ; $6612: $05
    ld b, a                                       ; $6613: $47
    db $10                                        ; $6614: $10
    db $10                                        ; $6615: $10
    ei                                            ; $6616: $FB
    ld b, [hl]                                    ; $6617: $46
    ld bc, $4200                                  ; $6618: $01 $00 $42
    inc d                                         ; $661B: $14
    rrca                                          ; $661C: $0F
    ld a, [de]                                    ; $661D: $1A
    ld l, l                                       ; $661E: $6D
    dec d                                         ; $661F: $15
    rrca                                          ; $6620: $0F
    nop                                           ; $6621: $00
    ld l, l                                       ; $6622: $6D
    inc d                                         ; $6623: $14
    nop                                           ; $6624: $00
    dec d                                         ; $6625: $15
    rrca                                          ; $6626: $0F
    add [hl]                                      ; $6627: $86
    ld l, l                                       ; $6628: $6D
    stop                                          ; $6629: $10 $00
    dec b                                         ; $662B: $05
    inc hl                                        ; $662C: $23
    ld l, e                                       ; $662D: $6B
    ld c, d                                       ; $662E: $4A
    jr jr_012_663E                                ; $662F: $18 $0D

    jr nz, jr_012_6605                            ; $6631: $20 $D2

    cp a                                          ; $6633: $BF
    ld de, $7D25                                  ; $6634: $11 $25 $7D
    ld [hl+], a                                   ; $6637: $22
    inc b                                         ; $6638: $04
    ld b, b                                       ; $6639: $40
    dec d                                         ; $663A: $15
    rrca                                          ; $663B: $0F
    add [hl]                                      ; $663C: $86
    ld l, l                                       ; $663D: $6D

jr_012_663E:
    ld [$1400], sp                                ; $663E: $08 $00 $14
    rrca                                          ; $6641: $0F
    ld a, [de]                                    ; $6642: $1A
    ld l, l                                       ; $6643: $6D
    xor a                                         ; $6644: $AF
    dec h                                         ; $6645: $25
    and c                                         ; $6646: $A1
    ld [bc], a                                    ; $6647: $02
    ld d, h                                       ; $6648: $54
    ld b, d                                       ; $6649: $42
    inc d                                         ; $664A: $14
    db $10                                        ; $664B: $10
    rst $20                                       ; $664C: $E7
    ld b, [hl]                                    ; $664D: $46
    ld a, l                                       ; $664E: $7D

jr_012_664F:
    ld d, l                                       ; $664F: $55
    push bc                                       ; $6650: $C5
    inc b                                         ; $6651: $04
    ld e, e                                       ; $6652: $5B
    ld [de], a                                    ; $6653: $12
    sbc a                                         ; $6654: $9F
    ld h, a                                       ; $6655: $67
    ld e, a                                       ; $6656: $5F
    dec b                                         ; $6657: $05
    inc bc                                        ; $6658: $03
    ld l, e                                       ; $6659: $6B
    ld c, d                                       ; $665A: $4A
    rlca                                          ; $665B: $07
    ld a, [de]                                    ; $665C: $1A
    rla                                           ; $665D: $17
    call nc, $1200                                ; $665E: $D4 $00 $12
    sub e                                         ; $6661: $93
    ld h, [hl]                                    ; $6662: $66
    ld [hl+], a                                   ; $6663: $22
    inc b                                         ; $6664: $04
    ld b, b                                       ; $6665: $40
    dec bc                                        ; $6666: $0B

jr_012_6667:
    inc bc                                        ; $6667: $03
    dec d                                         ; $6668: $15
    db $10                                        ; $6669: $10
    rst $20                                       ; $666A: $E7
    ld b, [hl]                                    ; $666B: $46
    jr jr_012_667E                                ; $666C: $18 $10

    ei                                            ; $666E: $FB
    ld b, [hl]                                    ; $666F: $46
    db $10                                        ; $6670: $10
    db $10                                        ; $6671: $10
    dec l                                         ; $6672: $2D
    ld b, a                                       ; $6673: $47
    inc c                                         ; $6674: $0C
    db $10                                        ; $6675: $10
    rrca                                          ; $6676: $0F
    ld b, a                                       ; $6677: $47
    inc c                                         ; $6678: $0C
    db $10                                        ; $6679: $10
    dec b                                         ; $667A: $05
    ld b, a                                       ; $667B: $47
    inc c                                         ; $667C: $0C
    db $10                                        ; $667D: $10

jr_012_667E:
    inc hl                                        ; $667E: $23
    ld b, a                                       ; $667F: $47
    inc c                                         ; $6680: $0C

jr_012_6681:
    db $10                                        ; $6681: $10
    dec b                                         ; $6682: $05
    ld b, a                                       ; $6683: $47
    inc c                                         ; $6684: $0C
    db $10                                        ; $6685: $10
    inc hl                                        ; $6686: $23

jr_012_6687:
    ld b, a                                       ; $6687: $47
    inc c                                         ; $6688: $0C
    db $10                                        ; $6689: $10
    add hl, de                                    ; $668A: $19
    ld b, a                                       ; $668B: $47
    inc c                                         ; $668C: $0C
    db $10                                        ; $668D: $10
    pop af                                        ; $668E: $F1
    ld b, [hl]                                    ; $668F: $46
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    ld b, d                                       ; $6692: $42

jr_012_6693:
    inc d                                         ; $6693: $14
    rrca                                          ; $6694: $0F
    db $10                                        ; $6695: $10
    ld l, l                                       ; $6696: $6D
    ld b, b                                       ; $6697: $40
    jr nz, jr_012_66AF                            ; $6698: $20 $15

    rrca                                          ; $669A: $0F
    ret nc                                        ; $669B: $D0

    ld l, h                                       ; $669C: $6C
    ld [hl+], a                                   ; $669D: $22
    nop                                           ; $669E: $00
    dec b                                         ; $669F: $05
    inc h                                         ; $66A0: $24

jr_012_66A1:
    ld l, e                                       ; $66A1: $6B
    ld c, d                                       ; $66A2: $4A

jr_012_66A3:
    rlca                                          ; $66A3: $07
    dec d                                         ; $66A4: $15
    ld c, a                                       ; $66A5: $4F
    db $D3                                        ; $66A6: $D3
    cp a                                          ; $66A7: $BF
    ld de, $7D25                                  ; $66A8: $11 $25 $7D
    ld [hl+], a                                   ; $66AB: $22
    inc b                                         ; $66AC: $04
    ld b, b                                       ; $66AD: $40
    ld b, b                                       ; $66AE: $40

jr_012_66AF:
    inc c                                         ; $66AF: $0C
    dec d                                         ; $66B0: $15
    rrca                                          ; $66B1: $0F
    db $10                                        ; $66B2: $10
    ld l, l                                       ; $66B3: $6D
    jr nz, jr_012_66C5                            ; $66B4: $20 $0F

    ld a, [de]                                    ; $66B6: $1A
    ld l, l                                       ; $66B7: $6D
    ld a, [bc]                                    ; $66B8: $0A
    nop                                           ; $66B9: $00
    xor a                                         ; $66BA: $AF
    dec h                                         ; $66BB: $25
    and c                                         ; $66BC: $A1
    inc b                                         ; $66BD: $04
    ld d, h                                       ; $66BE: $54
    ld b, d                                       ; $66BF: $42
    inc d                                         ; $66C0: $14
    jr nz, jr_012_664F                            ; $66C1: $20 $8C

    ld [hl], h                                    ; $66C3: $74
    ld a, l                                       ; $66C4: $7D

jr_012_66C5:
    ld [hl], b                                    ; $66C5: $70
    push bc                                       ; $66C6: $C5
    inc b                                         ; $66C7: $04
    inc d                                         ; $66C8: $14
    jr nz, @+$7A                                  ; $66C9: $20 $78

    ld [hl], h                                    ; $66CB: $74
    ld e, e                                       ; $66CC: $5B
    ld [de], a                                    ; $66CD: $12
    or l                                          ; $66CE: $B5
    ld h, a                                       ; $66CF: $67
    ld e, a                                       ; $66D0: $5F
    dec b                                         ; $66D1: $05
    inc bc                                        ; $66D2: $03
    ld l, e                                       ; $66D3: $6B
    ld c, d                                       ; $66D4: $4A
    dec e                                         ; $66D5: $1D
    rra                                           ; $66D6: $1F
    push af                                       ; $66D7: $F5
    call nc, $1200                                ; $66D8: $D4 $00 $12
    ld bc, $2267                                  ; $66DB: $01 $67 $22
    dec b                                         ; $66DE: $05
    ld b, b                                       ; $66DF: $40
    dec bc                                        ; $66E0: $0B
    inc bc                                        ; $66E1: $03
    dec d                                         ; $66E2: $15
    jr nz, jr_012_6667                            ; $66E3: $20 $82

    ld [hl], h                                    ; $66E5: $74
    ld h, b                                       ; $66E6: $60
    jr nz, jr_012_6693                            ; $66E7: $20 $AA

    ld [hl], h                                    ; $66E9: $74
    inc c                                         ; $66EA: $0C
    jr nz, jr_012_66A1                            ; $66EB: $20 $B4

    ld [hl], h                                    ; $66ED: $74
    inc c                                         ; $66EE: $0C
    jr nz, jr_012_6687                            ; $66EF: $20 $96

    ld [hl], h                                    ; $66F1: $74
    inc c                                         ; $66F2: $0C
    jr nz, jr_012_6681                            ; $66F3: $20 $8C

    ld [hl], h                                    ; $66F5: $74
    inc c                                         ; $66F6: $0C
    jr nz, jr_012_66A3                            ; $66F7: $20 $AA

    ld [hl], h                                    ; $66F9: $74
    inc c                                         ; $66FA: $0C
    jr nz, jr_012_6775                            ; $66FB: $20 $78

    ld [hl], h                                    ; $66FD: $74
    nop                                           ; $66FE: $00
    nop                                           ; $66FF: $00
    ld b, d                                       ; $6700: $42
    dec d                                         ; $6701: $15
    rrca                                          ; $6702: $0F
    ldh [$6C], a                                  ; $6703: $E0 $6C
    inc d                                         ; $6705: $14
    rrca                                          ; $6706: $0F
    ldh [$6C], a                                  ; $6707: $E0 $6C
    ld c, $00                                     ; $6709: $0E $00
    dec b                                         ; $670B: $05
    dec h                                         ; $670C: $25
    ld l, e                                       ; $670D: $6B
    ld c, d                                       ; $670E: $4A
    dec e                                         ; $670F: $1D
    inc hl                                        ; $6710: $23
    sub l                                         ; $6711: $95
    push de                                       ; $6712: $D5
    cp a                                          ; $6713: $BF
    ld de, $7D25                                  ; $6714: $11 $25 $7D
    ld [hl+], a                                   ; $6717: $22
    dec b                                         ; $6718: $05
    ld b, b                                       ; $6719: $40
    dec b                                         ; $671A: $05
    daa                                           ; $671B: $27
    db $ED                                        ; $671C: $ED
    ld h, e                                       ; $671D: $63
    dec de                                        ; $671E: $1B
    inc hl                                        ; $671F: $23
    sub e                                         ; $6720: $93
    push de                                       ; $6721: $D5
    jp nc, Jump_012_6012                          ; $6722: $D2 $12 $60

    ld h, l                                       ; $6725: $65
    ld [de], a                                    ; $6726: $12
    ld h, a                                       ; $6727: $67
    ld h, l                                       ; $6728: $65
    dec d                                         ; $6729: $15
    rrca                                          ; $672A: $0F
    ld a, [de]                                    ; $672B: $1A
    ld l, l                                       ; $672C: $6D
    db $10                                        ; $672D: $10
    rrca                                          ; $672E: $0F
    inc h                                         ; $672F: $24
    ld l, l                                       ; $6730: $6D
    ld [$380F], sp                                ; $6731: $08 $0F $38
    ld l, l                                       ; $6734: $6D
    ld [$420F], sp                                ; $6735: $08 $0F $42
    ld l, l                                       ; $6738: $6D
    db $10                                        ; $6739: $10
    rrca                                          ; $673A: $0F
    jr c, jr_012_67AA                             ; $673B: $38 $6D

    nop                                           ; $673D: $00
    nop                                           ; $673E: $00
    xor a                                         ; $673F: $AF
    dec h                                         ; $6740: $25
    and c                                         ; $6741: $A1
    ld [$4254], sp                                ; $6742: $08 $54 $42
    sbc e                                         ; $6745: $9B
    jr z, jr_012_67BD                             ; $6746: $28 $75

    sbc a                                         ; $6748: $9F
    ld c, c                                       ; $6749: $49
    jr nz, jr_012_67C3                            ; $674A: $20 $77

    ld l, c                                       ; $674C: $69
    ld l, h                                       ; $674D: $6C
    ld l, h                                       ; $674E: $6C
    rst $38                                       ; $674F: $FF
    ld [hl], b                                    ; $6750: $70
    ld [hl], d                                    ; $6751: $72
    ld l, a                                       ; $6752: $6F
    ld [hl], h                                    ; $6753: $74
    ld h, l                                       ; $6754: $65
    ld h, e                                       ; $6755: $63
    ld [hl], h                                    ; $6756: $74
    jr nz, jr_012_67D2                            ; $6757: $20 $79

    ld l, a                                       ; $6759: $6F
    ld [hl], l                                    ; $675A: $75
    ld [hl], d                                    ; $675B: $72
    cp $62                                        ; $675C: $FE $62
    ld h, c                                       ; $675E: $61
    ld h, e                                       ; $675F: $63
    ld l, e                                       ; $6760: $6B
    inc l                                         ; $6761: $2C
    jr nz, jr_012_67CA                            ; $6762: $20 $66

    ld [hl], d                                    ; $6764: $72
    ld l, c                                       ; $6765: $69
    ld h, l                                       ; $6766: $65
    ld l, [hl]                                    ; $6767: $6E
    ld h, h                                       ; $6768: $64
    ld hl, $FDFE                                  ; $6769: $21 $FE $FD
    sbc d                                         ; $676C: $9A
    ld d, l                                       ; $676D: $55
    ld b, d                                       ; $676E: $42
    sbc e                                         ; $676F: $9B
    jr z, @+$77                                   ; $6770: $28 $75

    sbc a                                         ; $6772: $9F
    ld d, b                                       ; $6773: $50
    ld [hl], d                                    ; $6774: $72

jr_012_6775:
    ld h, l                                       ; $6775: $65
    ld [hl], b                                    ; $6776: $70
    ld h, c                                       ; $6777: $61
    ld [hl], d                                    ; $6778: $72
    ld h, l                                       ; $6779: $65
    jr nz, jr_012_67E2                            ; $677A: $20 $66

    ld l, a                                       ; $677C: $6F
    ld [hl], d                                    ; $677D: $72
    rst $38                                       ; $677E: $FF
    ld [hl], h                                    ; $677F: $74
    ld h, l                                       ; $6780: $65
    ld [hl], d                                    ; $6781: $72
    ld l, l                                       ; $6782: $6D
    ld l, c                                       ; $6783: $69
    ld l, [hl]                                    ; $6784: $6E
    ld h, c                                       ; $6785: $61
    ld [hl], h                                    ; $6786: $74
    ld l, c                                       ; $6787: $69
    ld l, a                                       ; $6788: $6F
    ld l, [hl]                                    ; $6789: $6E
    inc l                                         ; $678A: $2C
    cp $53                                        ; $678B: $FE $53
    ld l, b                                       ; $678D: $68
    ld h, c                                       ; $678E: $61
    ld h, h                                       ; $678F: $64
    ld l, a                                       ; $6790: $6F
    ld [hl], a                                    ; $6791: $77
    jr nz, jr_012_67E1                            ; $6792: $20 $4D

    ld h, c                                       ; $6794: $61
    ld h, a                                       ; $6795: $67
    ld l, c                                       ; $6796: $69
    ld l, $2E                                     ; $6797: $2E $2E
    ld l, $FE                                     ; $6799: $2E $FE
    db $FD                                        ; $679B: $FD
    sbc d                                         ; $679C: $9A
    ld d, l                                       ; $679D: $55
    ld b, d                                       ; $679E: $42
    sbc e                                         ; $679F: $9B
    jr z, jr_012_6817                             ; $67A0: $28 $75

    sbc a                                         ; $67A2: $9F
    ld b, [hl]                                    ; $67A3: $46
    ld l, a                                       ; $67A4: $6F
    ld [hl], d                                    ; $67A5: $72
    jr nz, jr_012_681C                            ; $67A6: $20 $74

    ld l, b                                       ; $67A8: $68
    ld h, l                                       ; $67A9: $65

jr_012_67AA:
    rst $38                                       ; $67AA: $FF
    ld b, e                                       ; $67AB: $43
    ld h, c                                       ; $67AC: $61
    ld l, h                                       ; $67AD: $6C
    ld h, h                                       ; $67AE: $64
    ld hl, $FDFE                                  ; $67AF: $21 $FE $FD
    sbc d                                         ; $67B2: $9A
    ld d, l                                       ; $67B3: $55
    ld b, d                                       ; $67B4: $42
    sbc e                                         ; $67B5: $9B
    jr z, jr_012_682D                             ; $67B6: $28 $75

    sbc a                                         ; $67B8: $9F
    ld c, c                                       ; $67B9: $49
    ld [hl], h                                    ; $67BA: $74
    daa                                           ; $67BB: $27
    ld [hl], e                                    ; $67BC: $73

jr_012_67BD:
    jr nz, jr_012_6833                            ; $67BD: $20 $74

    ld l, c                                       ; $67BF: $69
    ld l, l                                       ; $67C0: $6D
    ld h, l                                       ; $67C1: $65
    rst $38                                       ; $67C2: $FF

jr_012_67C3:
    ld c, c                                       ; $67C3: $49
    jr nz, jr_012_682B                            ; $67C4: $20 $65

    ld l, [hl]                                    ; $67C6: $6E
    ld h, h                                       ; $67C7: $64
    jr nz, jr_012_683E                            ; $67C8: $20 $74

jr_012_67CA:
    ld l, b                                       ; $67CA: $68
    ld l, c                                       ; $67CB: $69
    ld [hl], e                                    ; $67CC: $73
    cp $73                                        ; $67CD: $FE $73
    ld [hl], h                                    ; $67CF: $74
    ld [hl], d                                    ; $67D0: $72
    ld [hl], l                                    ; $67D1: $75

jr_012_67D2:
    ld h, a                                       ; $67D2: $67
    ld h, a                                       ; $67D3: $67
    ld l, h                                       ; $67D4: $6C
    ld h, l                                       ; $67D5: $65
    ld l, $FE                                     ; $67D6: $2E $FE
    db $FD                                        ; $67D8: $FD
    sbc d                                         ; $67D9: $9A
    ld d, l                                       ; $67DA: $55
    ld b, d                                       ; $67DB: $42
    sbc e                                         ; $67DC: $9B
    add hl, de                                    ; $67DD: $19
    ld c, [hl]                                    ; $67DE: $4E
    sbc a                                         ; $67DF: $9F
    ld d, [hl]                                    ; $67E0: $56

jr_012_67E1:
    ld h, c                                       ; $67E1: $61

jr_012_67E2:
    ld l, h                                       ; $67E2: $6C
    ld l, e                                       ; $67E3: $6B
    ld h, c                                       ; $67E4: $61
    ld l, [hl]                                    ; $67E5: $6E
    jr nz, @+$75                                  ; $67E6: $20 $73

    ld h, c                                       ; $67E8: $61
    halt                                          ; $67E9: $76
    ld h, l                                       ; $67EA: $65
    ld h, h                                       ; $67EB: $64
    rst $38                                       ; $67EC: $FF
    ld l, l                                       ; $67ED: $6D
    ld a, c                                       ; $67EE: $79
    jr nz, @+$6E                                  ; $67EF: $20 $6C

    ld l, c                                       ; $67F1: $69
    ld h, [hl]                                    ; $67F2: $66
    ld h, l                                       ; $67F3: $65
    ld hl, $FDFE                                  ; $67F4: $21 $FE $FD
    sbc d                                         ; $67F7: $9A
    ld e, b                                       ; $67F8: $58
    ld bc, $9342                                  ; $67F9: $01 $42 $93
    ld h, l                                       ; $67FC: $65
    jp hl                                         ; $67FD: $E9


    ld b, a                                       ; $67FE: $47
    ld c, a                                       ; $67FF: $4F
    ld h, h                                       ; $6800: $64
    or $49                                        ; $6801: $F6 $49
    ld h, [hl]                                    ; $6803: $66
    ret nz                                        ; $6804: $C0

    ld e, h                                       ; $6805: $5C
    ld hl, $0005                                  ; $6806: $21 $05 $00
    add c                                         ; $6809: $81
    ld e, l                                       ; $680A: $5D
    jr jr_012_6829                                ; $680B: $18 $1C

    ld a, b                                       ; $680D: $78
    call nc, $2000                                ; $680E: $D4 $00 $20
    or l                                          ; $6811: $B5
    ld d, b                                       ; $6812: $50
    ld [hl+], a                                   ; $6813: $22
    dec b                                         ; $6814: $05
    ld b, b                                       ; $6815: $40
    dec bc                                        ; $6816: $0B

jr_012_6817:
    nop                                           ; $6817: $00
    dec b                                         ; $6818: $05
    inc bc                                        ; $6819: $03
    db $ED                                        ; $681A: $ED
    ld h, e                                       ; $681B: $63

jr_012_681C:
    jr nz, jr_012_683E                            ; $681C: $20 $20

    jr nz, @-$29                                  ; $681E: $20 $D5

    ld a, [de]                                    ; $6820: $1A
    db $10                                        ; $6821: $10
    or [hl]                                       ; $6822: $B6
    ld l, l                                       ; $6823: $6D
    ld [de], a                                    ; $6824: $12
    db $F4                                        ; $6825: $F4
    ld l, b                                       ; $6826: $68
    dec bc                                        ; $6827: $0B
    inc bc                                        ; $6828: $03

jr_012_6829:
    dec b                                         ; $6829: $05
    inc b                                         ; $682A: $04

jr_012_682B:
    db $ED                                        ; $682B: $ED
    ld h, e                                       ; $682C: $63

jr_012_682D:
    ld a, [bc]                                    ; $682D: $0A
    dec e                                         ; $682E: $1D
    sub d                                         ; $682F: $92
    call nc, $1241                                ; $6830: $D4 $41 $12

jr_012_6833:
    jp nc, $1268                                  ; $6833: $D2 $68 $12

    db $EC                                        ; $6836: $EC
    ld l, b                                       ; $6837: $68
    dec bc                                        ; $6838: $0B
    inc b                                         ; $6839: $04
    dec b                                         ; $683A: $05
    ld [$63ED], sp                                ; $683B: $08 $ED $63

jr_012_683E:
    add hl, bc                                    ; $683E: $09
    ld a, [de]                                    ; $683F: $1A
    add hl, de                                    ; $6840: $19
    call nc, $1200                                ; $6841: $D4 $00 $12
    xor e                                         ; $6844: $AB
    ld l, b                                       ; $6845: $68
    ld [de], a                                    ; $6846: $12
    cp l                                          ; $6847: $BD
    ld l, b                                       ; $6848: $68
    dec b                                         ; $6849: $05
    add hl, bc                                    ; $684A: $09
    adc $63                                       ; $684B: $CE $63
    ld bc, $2901                                  ; $684D: $01 $01 $29
    ret nc                                        ; $6850: $D0

    ld l, [hl]                                    ; $6851: $6E
    ld l, $E3                                     ; $6852: $2E $E3
    ld d, l                                       ; $6854: $55
    ld [hl+], a                                   ; $6855: $22
    dec b                                         ; $6856: $05
    ld b, b                                       ; $6857: $40
    dec b                                         ; $6858: $05
    ld a, [bc]                                    ; $6859: $0A
    adc $63                                       ; $685A: $CE $63
    ld bc, $2901                                  ; $685C: $01 $01 $29
    ret nc                                        ; $685F: $D0

    ld l, [hl]                                    ; $6860: $6E
    ld l, $E3                                     ; $6861: $2E $E3
    ld d, l                                       ; $6863: $55
    ld [hl+], a                                   ; $6864: $22
    dec b                                         ; $6865: $05
    ld b, b                                       ; $6866: $40
    dec b                                         ; $6867: $05
    dec bc                                        ; $6868: $0B
    adc $63                                       ; $6869: $CE $63
    ld bc, $2901                                  ; $686B: $01 $01 $29
    ret nc                                        ; $686E: $D0

    ld l, [hl]                                    ; $686F: $6E
    ld l, $E3                                     ; $6870: $2E $E3
    ld d, l                                       ; $6872: $55
    ld [hl+], a                                   ; $6873: $22
    dec b                                         ; $6874: $05
    ld b, b                                       ; $6875: $40
    dec bc                                        ; $6876: $0B
    ld [$090B], sp                                ; $6877: $08 $0B $09
    dec bc                                        ; $687A: $0B
    ld a, [bc]                                    ; $687B: $0A
    dec bc                                        ; $687C: $0B
    dec bc                                        ; $687D: $0B
    ld l, e                                       ; $687E: $6B
    ld a, [de]                                    ; $687F: $1A
    inc c                                         ; $6880: $0C
    ldh a, [rOCPD]                                ; $6881: $F0 $6B
    nop                                           ; $6883: $00
    add b                                         ; $6884: $80
    nop                                           ; $6885: $00
    ld l, e                                       ; $6886: $6B
    daa                                           ; $6887: $27
    inc c                                         ; $6888: $0C
    ld b, b                                       ; $6889: $40
    ld d, l                                       ; $688A: $55
    and b                                         ; $688B: $A0
    add c                                         ; $688C: $81
    nop                                           ; $688D: $00
    ld l, e                                       ; $688E: $6B
    dec l                                         ; $688F: $2D

jr_012_6890:
    inc c                                         ; $6890: $0C
    or b                                          ; $6891: $B0
    ld e, a                                       ; $6892: $5F
    db $10                                        ; $6893: $10
    add h                                         ; $6894: $84
    nop                                           ; $6895: $00

jr_012_6896:
    ld l, e                                       ; $6896: $6B
    ld b, $0D                                     ; $6897: $06 $0D
    ld [hl], b                                    ; $6899: $70
    ld e, e                                       ; $689A: $5B
    ldh [$86], a                                  ; $689B: $E0 $86
    nop                                           ; $689D: $00

jr_012_689E:
    nop                                           ; $689E: $00
    add d                                         ; $689F: $82

jr_012_68A0:
    rra                                           ; $68A0: $1F
    db $10                                        ; $68A1: $10
    sub h                                         ; $68A2: $94
    add b                                         ; $68A3: $80
    jr nz, jr_012_68C7                            ; $68A4: $20 $21

jr_012_68A6:
    ld hl, $09D5                                  ; $68A6: $21 $D5 $09
    jp $1442                                      ; $68A9: $C3 $42 $14


    dec h                                         ; $68AC: $25
    inc [hl]                                      ; $68AD: $34
    ld d, c                                       ; $68AE: $51
    ld h, d                                       ; $68AF: $62
    ld b, e                                       ; $68B0: $43
    ld l, [hl]                                    ; $68B1: $6E
    rrca                                          ; $68B2: $0F
    rst $38                                       ; $68B3: $FF
    ld a, a                                       ; $68B4: $7F
    halt                                          ; $68B5: $76
    jr nz, jr_012_68C7                            ; $68B6: $20 $0F

    ld b, l                                       ; $68B8: $45
    ld e, $F0                                     ; $68B9: $1E $F0
    ld c, e                                       ; $68BB: $4B
    ld b, d                                       ; $68BC: $42
    ld e, e                                       ; $68BD: $5B
    ld [de], a                                    ; $68BE: $12
    ld [de], a                                    ; $68BF: $12
    ld b, [hl]                                    ; $68C0: $46
    ld b, l                                       ; $68C1: $45
    dec h                                         ; $68C2: $25
    ld a, d                                       ; $68C3: $7A
    ld d, c                                       ; $68C4: $51
    inc d                                         ; $68C5: $14
    db $10                                        ; $68C6: $10

jr_012_68C7:
    ldh a, [rRP]                                  ; $68C7: $F0 $56
    ld b, d                                       ; $68C9: $42
    ld e, e                                       ; $68CA: $5B
    ld e, $FC                                     ; $68CB: $1E $FC
    ld b, c                                       ; $68CD: $41
    ld b, l                                       ; $68CE: $45
    db $10                                        ; $68CF: $10
    ld [hl+], a                                   ; $68D0: $22
    ld d, a                                       ; $68D1: $57
    dec d                                         ; $68D2: $15
    db $10                                        ; $68D3: $10
    add hl, de                                    ; $68D4: $19
    ld [hl], a                                    ; $68D5: $77
    jr c, jr_012_68E8                             ; $68D6: $38 $10

    jp hl                                         ; $68D8: $E9


    halt                                          ; $68D9: $76
    jr nz, @+$12                                  ; $68DA: $20 $10

    ld sp, hl                                     ; $68DC: $F9
    halt                                          ; $68DD: $76
    ld b, b                                       ; $68DE: $40
    db $10                                        ; $68DF: $10
    jp hl                                         ; $68E0: $E9


    halt                                          ; $68E1: $76
    jr nz, jr_012_68F4                            ; $68E2: $20 $10

    add hl, bc                                    ; $68E4: $09
    ld [hl], a                                    ; $68E5: $77
    jr c, jr_012_68E8                             ; $68E6: $38 $00

jr_012_68E8:
    ld b, l                                       ; $68E8: $45
    ld [de], a                                    ; $68E9: $12
    jp nc, Jump_012_5B68                          ; $68EA: $D2 $68 $5B

    ld [de], a                                    ; $68ED: $12
    sub e                                         ; $68EE: $93
    ld c, b                                       ; $68EF: $48
    ld b, l                                       ; $68F0: $45
    db $10                                        ; $68F1: $10
    cp c                                          ; $68F2: $B9
    ld [hl], a                                    ; $68F3: $77

jr_012_68F4:
    inc d                                         ; $68F4: $14
    db $10                                        ; $68F5: $10
    or [hl]                                       ; $68F6: $B6
    ld l, l                                       ; $68F7: $6D
    ld e, e                                       ; $68F8: $5B
    ld [de], a                                    ; $68F9: $12
    adc c                                         ; $68FA: $89
    ld b, a                                       ; $68FB: $47
    ld h, d                                       ; $68FC: $62
    ld bc, $4212                                  ; $68FD: $01 $12 $42
    dec d                                         ; $6900: $15
    jr nz, jr_012_697A                            ; $6901: $20 $77

    ld d, b                                       ; $6903: $50
    inc c                                         ; $6904: $0C
    jr nz, jr_012_6896                            ; $6905: $20 $8F

    ld d, h                                       ; $6907: $54
    inc c                                         ; $6908: $0C
    jr nz, jr_012_6890                            ; $6909: $20 $85

    ld d, h                                       ; $690B: $54
    inc c                                         ; $690C: $0C
    jr nz, jr_012_689E                            ; $690D: $20 $8F

jr_012_690F:
    ld d, h                                       ; $690F: $54
    inc c                                         ; $6910: $0C
    jr nz, @-$79                                  ; $6911: $20 $85

    ld d, h                                       ; $6913: $54
    inc c                                         ; $6914: $0C
    jr nz, jr_012_68A6                            ; $6915: $20 $8F

    ld d, h                                       ; $6917: $54
    inc c                                         ; $6918: $0C
    jr nz, jr_012_68A0                            ; $6919: $20 $85

    ld d, h                                       ; $691B: $54
    inc c                                         ; $691C: $0C
    jr nz, jr_012_6928                            ; $691D: $20 $09

    ld d, [hl]                                    ; $691F: $56
    jr nz, jr_012_6942                            ; $6920: $20 $20

    dec sp                                        ; $6922: $3B
    ld d, l                                       ; $6923: $55
    ld b, b                                       ; $6924: $40
    jr nz, jr_012_6982                            ; $6925: $20 $5B

    ld d, c                                       ; $6927: $51

jr_012_6928:
    jr nz, jr_012_694A                            ; $6928: $20 $20

    dec h                                         ; $692A: $25
    ld d, c                                       ; $692B: $51
    jr nz, jr_012_692E                            ; $692C: $20 $00

jr_012_692E:
    ld d, $20                                     ; $692E: $16 $20
    dec e                                         ; $6930: $1D
    ld d, b                                       ; $6931: $50
    ld b, b                                       ; $6932: $40
    nop                                           ; $6933: $00
    ld bc, $5A00                                  ; $6934: $01 $00 $5A
    ld [de], a                                    ; $6937: $12
    ld e, e                                       ; $6938: $5B
    ld l, c                                       ; $6939: $69

jr_012_693A:
    dec d                                         ; $693A: $15
    jr nz, @-$05                                  ; $693B: $20 $F9

    ld d, [hl]                                    ; $693D: $56
    jr nz, jr_012_6960                            ; $693E: $20 $20

    inc de                                        ; $6940: $13
    ld e, b                                       ; $6941: $58

jr_012_6942:
    jr nz, jr_012_6964                            ; $6942: $20 $20

    sbc c                                         ; $6944: $99
    ld d, h                                       ; $6945: $54
    dec d                                         ; $6946: $15
    jr nz, jr_012_690F                            ; $6947: $20 $C6

    ld d, h                                       ; $6949: $54

jr_012_694A:
    dec d                                         ; $694A: $15
    jr nz, jr_012_693A                            ; $694B: $20 $ED

    ld c, a                                       ; $694D: $4F
    jr jr_012_6970                                ; $694E: $18 $20

    ret                                           ; $6950: $C9


    ld d, b                                       ; $6951: $50
    jr c, jr_012_6974                             ; $6952: $38 $20

    add l                                         ; $6954: $85
    ld d, h                                       ; $6955: $54
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    ld e, b                                       ; $6958: $58
    ld e, a                                       ; $6959: $5F
    ld b, d                                       ; $695A: $42
    add e                                         ; $695B: $83
    ld b, b                                       ; $695C: $40
    nop                                           ; $695D: $00
    rst $38                                       ; $695E: $FF
    nop                                           ; $695F: $00

jr_012_6960:
    ld b, d                                       ; $6960: $42
    sub e                                         ; $6961: $93
    ld h, l                                       ; $6962: $65
    jp hl                                         ; $6963: $E9


jr_012_6964:
    ld b, a                                       ; $6964: $47
    ld c, a                                       ; $6965: $4F
    ld h, h                                       ; $6966: $64
    or $49                                        ; $6967: $F6 $49
    ld h, [hl]                                    ; $6969: $66
    ret nz                                        ; $696A: $C0

    ld e, h                                       ; $696B: $5C
    ld hl, $0005                                  ; $696C: $21 $05 $00
    ld l, e                                       ; $696F: $6B

jr_012_6970:
    ld c, d                                       ; $6970: $4A
    jr jr_012_6994                                ; $6971: $18 $21

    ld b, b                                       ; $6973: $40

jr_012_6974:
    push de                                       ; $6974: $D5
    nop                                           ; $6975: $00
    ld [de], a                                    ; $6976: $12
    ld b, e                                       ; $6977: $43
    ld l, d                                       ; $6978: $6A
    ld [hl+], a                                   ; $6979: $22

jr_012_697A:
    dec b                                         ; $697A: $05
    ld b, b                                       ; $697B: $40
    dec b                                         ; $697C: $05
    dec b                                         ; $697D: $05
    ld l, e                                       ; $697E: $6B
    ld c, d                                       ; $697F: $4A
    jr @+$21                                      ; $6980: $18 $1F

jr_012_6982:
    ldh a, [$D4]                                  ; $6982: $F0 $D4
    ld a, e                                       ; $6984: $7B
    ld [de], a                                    ; $6985: $12
    adc h                                         ; $6986: $8C
    ld l, d                                       ; $6987: $6A
    ld [hl+], a                                   ; $6988: $22
    dec b                                         ; $6989: $05
    ld b, b                                       ; $698A: $40
    dec b                                         ; $698B: $05
    ld [bc], a                                    ; $698C: $02
    ld l, e                                       ; $698D: $6B
    ld c, d                                       ; $698E: $4A
    rla                                           ; $698F: $17
    jr nz, jr_012_69A9                            ; $6990: $20 $17

    push de                                       ; $6992: $D5
    nop                                           ; $6993: $00

jr_012_6994:
    ld [de], a                                    ; $6994: $12
    and b                                         ; $6995: $A0
    ld l, d                                       ; $6996: $6A
    ld [hl+], a                                   ; $6997: $22
    dec b                                         ; $6998: $05
    ld b, b                                       ; $6999: $40
    dec b                                         ; $699A: $05
    inc bc                                        ; $699B: $03
    ld l, e                                       ; $699C: $6B
    ld c, d                                       ; $699D: $4A
    rla                                           ; $699E: $17
    ld hl, $D53F                                  ; $699F: $21 $3F $D5
    ld h, $12                                     ; $69A2: $26 $12
    jp hl                                         ; $69A4: $E9


    ld l, d                                       ; $69A5: $6A
    ld [hl+], a                                   ; $69A6: $22
    dec b                                         ; $69A7: $05
    ld b, b                                       ; $69A8: $40

jr_012_69A9:
    dec b                                         ; $69A9: $05
    inc b                                         ; $69AA: $04
    ld l, e                                       ; $69AB: $6B
    ld c, d                                       ; $69AC: $4A
    add hl, de                                    ; $69AD: $19
    ld hl, $D541                                  ; $69AE: $21 $41 $D5
    ld d, b                                       ; $69B1: $50
    ld [de], a                                    ; $69B2: $12
    ld a, [hl+]                                   ; $69B3: $2A
    ld l, e                                       ; $69B4: $6B
    ld [hl+], a                                   ; $69B5: $22
    dec b                                         ; $69B6: $05
    ld b, b                                       ; $69B7: $40
    dec b                                         ; $69B8: $05
    ld b, $CE                                     ; $69B9: $06 $CE
    ld h, e                                       ; $69BB: $63
    ld bc, $2901                                  ; $69BC: $01 $01 $29
    ret nc                                        ; $69BF: $D0

    sub l                                         ; $69C0: $95
    ld l, $E3                                     ; $69C1: $2E $E3
    ld d, l                                       ; $69C3: $55
    ld [hl+], a                                   ; $69C4: $22
    dec b                                         ; $69C5: $05
    ld b, b                                       ; $69C6: $40
    dec b                                         ; $69C7: $05
    rlca                                          ; $69C8: $07
    adc $63                                       ; $69C9: $CE $63
    ld bc, $2901                                  ; $69CB: $01 $01 $29
    ret nc                                        ; $69CE: $D0

    sub l                                         ; $69CF: $95
    ld l, $E3                                     ; $69D0: $2E $E3
    ld d, l                                       ; $69D2: $55
    ld [hl+], a                                   ; $69D3: $22
    dec b                                         ; $69D4: $05
    ld b, b                                       ; $69D5: $40
    dec b                                         ; $69D6: $05
    ld [$63CE], sp                                ; $69D7: $08 $CE $63
    ld bc, $2901                                  ; $69DA: $01 $01 $29
    ret nc                                        ; $69DD: $D0

    sub l                                         ; $69DE: $95
    ld l, $E3                                     ; $69DF: $2E $E3
    ld d, l                                       ; $69E1: $55
    ld [hl+], a                                   ; $69E2: $22
    dec b                                         ; $69E3: $05
    ld b, b                                       ; $69E4: $40
    dec bc                                        ; $69E5: $0B
    nop                                           ; $69E6: $00
    dec bc                                        ; $69E7: $0B
    ld [bc], a                                    ; $69E8: $02
    dec bc                                        ; $69E9: $0B
    inc bc                                        ; $69EA: $03
    dec bc                                        ; $69EB: $0B
    inc b                                         ; $69EC: $04
    dec bc                                        ; $69ED: $0B
    dec b                                         ; $69EE: $05
    dec bc                                        ; $69EF: $0B
    ld b, $0B                                     ; $69F0: $06 $0B
    rlca                                          ; $69F2: $07
    dec bc                                        ; $69F3: $0B
    ld [$266B], sp                                ; $69F4: $08 $6B $26
    inc c                                         ; $69F7: $0C
    sub b                                         ; $69F8: $90
    ld l, l                                       ; $69F9: $6D
    nop                                           ; $69FA: $00
    add b                                         ; $69FB: $80
    nop                                           ; $69FC: $00
    ld l, e                                       ; $69FD: $6B
    ld a, [hl+]                                   ; $69FE: $2A
    inc c                                         ; $69FF: $0C
    nop                                           ; $6A00: $00
    ld h, l                                       ; $6A01: $65
    ld h, b                                       ; $6A02: $60

jr_012_6A03:
    add d                                         ; $6A03: $82
    nop                                           ; $6A04: $00
    ld l, e                                       ; $6A05: $6B
    dec hl                                        ; $6A06: $2B
    dec bc                                        ; $6A07: $0B
    add b                                         ; $6A08: $80
    ld c, h                                       ; $6A09: $4C
    nop                                           ; $6A0A: $00
    add l                                         ; $6A0B: $85
    nop                                           ; $6A0C: $00
    ld l, e                                       ; $6A0D: $6B
    ld a, [de]                                    ; $6A0E: $1A
    inc c                                         ; $6A0F: $0C
    ldh a, [rOCPD]                                ; $6A10: $F0 $6B
    or b                                          ; $6A12: $B0
    add a                                         ; $6A13: $87
    nop                                           ; $6A14: $00

jr_012_6A15:
    ld l, e                                       ; $6A15: $6B
    ld b, $0D                                     ; $6A16: $06 $0D
    ld [hl], b                                    ; $6A18: $70
    ld e, e                                       ; $6A19: $5B
    ld d, b                                       ; $6A1A: $50

jr_012_6A1B:
    adc c                                         ; $6A1B: $89
    nop                                           ; $6A1C: $00
    add d                                         ; $6A1D: $82
    rra                                           ; $6A1E: $1F
    dec e                                         ; $6A1F: $1D
    ld l, a                                       ; $6A20: $6F
    rrca                                          ; $6A21: $0F
    rst $38                                       ; $6A22: $FF

jr_012_6A23:
    ld a, a                                       ; $6A23: $7F
    sub h                                         ; $6A24: $94
    halt                                          ; $6A25: $76
    jr nz, jr_012_6A37                            ; $6A26: $20 $0F

    ld h, d                                       ; $6A28: $62
    dec bc                                        ; $6A29: $0B
    dec b                                         ; $6A2A: $05

jr_012_6A2B:
    inc b                                         ; $6A2B: $04
    db $ED                                        ; $6A2C: $ED
    ld h, e                                       ; $6A2D: $63
    rra                                           ; $6A2E: $1F
    dec d                                         ; $6A2F: $15
    ld h, a                                       ; $6A30: $67
    db $D3                                        ; $6A31: $D3
    ld d, b                                       ; $6A32: $50
    ld [de], a                                    ; $6A33: $12
    ret z                                         ; $6A34: $C8

    ld l, a                                       ; $6A35: $6F
    ld [de], a                                    ; $6A36: $12

jr_012_6A37:
    ld e, b                                       ; $6A37: $58
    ld l, h                                       ; $6A38: $6C
    rlca                                          ; $6A39: $07
    nop                                           ; $6A3A: $00
    add c                                         ; $6A3B: $81
    ld e, l                                       ; $6A3C: $5D

jr_012_6A3D:
    add hl, bc                                    ; $6A3D: $09
    nop                                           ; $6A3E: $00
    jr nz, @-$49                                  ; $6A3F: $20 $B5

    ld d, b                                       ; $6A41: $50
    ld b, d                                       ; $6A42: $42
    inc d                                         ; $6A43: $14
    jr nz, @-$53                                  ; $6A44: $20 $AB

    ld d, b                                       ; $6A46: $50
    ld h, d                                       ; $6A47: $62
    inc b                                         ; $6A48: $04
    inc d                                         ; $6A49: $14
    jr nz, jr_012_6A15                            ; $6A4A: $20 $C9

    ld d, b                                       ; $6A4C: $50
    ld h, d                                       ; $6A4D: $62
    dec b                                         ; $6A4E: $05
    inc d                                         ; $6A4F: $14
    jr nz, @-$3F                                  ; $6A50: $20 $BF

    ld d, b                                       ; $6A52: $50
    ld h, d                                       ; $6A53: $62
    ld b, $14                                     ; $6A54: $06 $14
    jr nz, jr_012_6A03                            ; $6A56: $20 $AB

    ld d, b                                       ; $6A58: $50
    ld h, d                                       ; $6A59: $62
    inc b                                         ; $6A5A: $04
    inc d                                         ; $6A5B: $14
    jr nz, @-$35                                  ; $6A5C: $20 $C9

    ld d, b                                       ; $6A5E: $50

jr_012_6A5F:
    ld h, d                                       ; $6A5F: $62
    dec b                                         ; $6A60: $05
    inc d                                         ; $6A61: $14
    jr nz, jr_012_6A23                            ; $6A62: $20 $BF

    ld d, b                                       ; $6A64: $50
    ld h, d                                       ; $6A65: $62
    ld b, $14                                     ; $6A66: $06 $14
    jr nz, @-$17                                  ; $6A68: $20 $E7

    ld d, b                                       ; $6A6A: $50
    ld h, d                                       ; $6A6B: $62
    ld a, [bc]                                    ; $6A6C: $0A
    dec d                                         ; $6A6D: $15
    jr nz, jr_012_6A1B                            ; $6A6E: $20 $AB

    ld d, b                                       ; $6A70: $50
    db $10                                        ; $6A71: $10
    jr nz, jr_012_6A3D                            ; $6A72: $20 $C9

    ld d, b                                       ; $6A74: $50
    db $10                                        ; $6A75: $10
    jr nz, jr_012_6A5F                            ; $6A76: $20 $E7

    ld d, b                                       ; $6A78: $50
    db $10                                        ; $6A79: $10
    jr nz, @-$35                                  ; $6A7A: $20 $C9

    ld d, b                                       ; $6A7C: $50
    db $10                                        ; $6A7D: $10
    jr nz, jr_012_6A2B                            ; $6A7E: $20 $AB

    ld d, b                                       ; $6A80: $50
    jr nc, jr_012_6AA3                            ; $6A81: $30 $20

    or l                                          ; $6A83: $B5
    ld d, b                                       ; $6A84: $50
    nop                                           ; $6A85: $00
    nop                                           ; $6A86: $00
    ld e, e                                       ; $6A87: $5B
    ld [de], a                                    ; $6A88: $12
    sub d                                         ; $6A89: $92
    ld c, e                                       ; $6A8A: $4B
    ld b, d                                       ; $6A8B: $42
    dec d                                         ; $6A8C: $15
    dec h                                         ; $6A8D: $25
    inc [hl]                                      ; $6A8E: $34
    ld d, c                                       ; $6A8F: $51
    jr nz, jr_012_6A92                            ; $6A90: $20 $00

jr_012_6A92:
    ld e, e                                       ; $6A92: $5B
    ld [de], a                                    ; $6A93: $12
    rst $10                                       ; $6A94: $D7
    ld c, b                                       ; $6A95: $48
    ld h, d                                       ; $6A96: $62
    ld a, [bc]                                    ; $6A97: $0A
    dec d                                         ; $6A98: $15
    dec h                                         ; $6A99: $25
    xor d                                         ; $6A9A: $AA
    ld d, b                                       ; $6A9B: $50
    jr nc, jr_012_6A9E                            ; $6A9C: $30 $00

jr_012_6A9E:
    add hl, de                                    ; $6A9E: $19
    ld b, d                                       ; $6A9F: $42
    inc d                                         ; $6AA0: $14
    dec h                                         ; $6AA1: $25
    rst $28                                       ; $6AA2: $EF

jr_012_6AA3:
    ld d, e                                       ; $6AA3: $53
    ld h, d                                       ; $6AA4: $62
    inc c                                         ; $6AA5: $0C
    inc d                                         ; $6AA6: $14
    dec h                                         ; $6AA7: $25
    inc bc                                        ; $6AA8: $03
    ld d, h                                       ; $6AA9: $54
    ld h, d                                       ; $6AAA: $62
    inc c                                         ; $6AAB: $0C
    inc d                                         ; $6AAC: $14
    dec h                                         ; $6AAD: $25
    rst $28                                       ; $6AAE: $EF
    ld d, e                                       ; $6AAF: $53
    ld h, d                                       ; $6AB0: $62
    inc c                                         ; $6AB1: $0C
    inc d                                         ; $6AB2: $14
    dec h                                         ; $6AB3: $25
    inc bc                                        ; $6AB4: $03
    ld d, h                                       ; $6AB5: $54
    ld h, d                                       ; $6AB6: $62
    inc [hl]                                      ; $6AB7: $34
    inc d                                         ; $6AB8: $14
    dec h                                         ; $6AB9: $25
    rst $00                                       ; $6ABA: $C7
    ld d, e                                       ; $6ABB: $53
    ld h, d                                       ; $6ABC: $62
    ld a, $14                                     ; $6ABD: $3E $14
    dec h                                         ; $6ABF: $25
    rst $28                                       ; $6AC0: $EF
    ld d, e                                       ; $6AC1: $53
    ld h, d                                       ; $6AC2: $62
    inc c                                         ; $6AC3: $0C
    inc d                                         ; $6AC4: $14
    dec h                                         ; $6AC5: $25
    inc bc                                        ; $6AC6: $03
    ld d, h                                       ; $6AC7: $54
    ld h, d                                       ; $6AC8: $62
    inc c                                         ; $6AC9: $0C
    inc d                                         ; $6ACA: $14
    dec h                                         ; $6ACB: $25
    rst $28                                       ; $6ACC: $EF
    ld d, e                                       ; $6ACD: $53
    ld h, d                                       ; $6ACE: $62
    inc c                                         ; $6ACF: $0C
    inc d                                         ; $6AD0: $14
    dec h                                         ; $6AD1: $25
    inc bc                                        ; $6AD2: $03
    ld d, h                                       ; $6AD3: $54
    ld h, d                                       ; $6AD4: $62
    inc [hl]                                      ; $6AD5: $34
    inc d                                         ; $6AD6: $14
    dec h                                         ; $6AD7: $25
    rst $00                                       ; $6AD8: $C7
    ld d, e                                       ; $6AD9: $53
    ld h, d                                       ; $6ADA: $62
    ld a, $14                                     ; $6ADB: $3E $14
    dec h                                         ; $6ADD: $25
    inc bc                                        ; $6ADE: $03
    ld d, h                                       ; $6ADF: $54
    ld h, d                                       ; $6AE0: $62
    ld a, [bc]                                    ; $6AE1: $0A
    dec d                                         ; $6AE2: $15
    dec h                                         ; $6AE3: $25
    ld l, l                                       ; $6AE4: $6D
    ld d, e                                       ; $6AE5: $53
    ld h, b                                       ; $6AE6: $60
    nop                                           ; $6AE7: $00
    ld b, d                                       ; $6AE8: $42
    inc d                                         ; $6AE9: $14
    db $10                                        ; $6AEA: $10
    ld a, c                                       ; $6AEB: $79
    ld a, h                                       ; $6AEC: $7C
    ld h, d                                       ; $6AED: $62
    dec c                                         ; $6AEE: $0D
    inc d                                         ; $6AEF: $14
    db $10                                        ; $6AF0: $10
    ld h, l                                       ; $6AF1: $65
    ld a, h                                       ; $6AF2: $7C
    ld h, d                                       ; $6AF3: $62
    dec c                                         ; $6AF4: $0D
    inc d                                         ; $6AF5: $14
    db $10                                        ; $6AF6: $10
    ld a, c                                       ; $6AF7: $79
    ld a, h                                       ; $6AF8: $7C
    ld h, d                                       ; $6AF9: $62
    dec c                                         ; $6AFA: $0D
    inc d                                         ; $6AFB: $14
    db $10                                        ; $6AFC: $10
    ld h, l                                       ; $6AFD: $65
    ld a, h                                       ; $6AFE: $7C
    ld h, d                                       ; $6AFF: $62
    ccf                                           ; $6B00: $3F
    inc d                                         ; $6B01: $14
    db $10                                        ; $6B02: $10
    ld a, c                                       ; $6B03: $79
    ld a, h                                       ; $6B04: $7C
    ld h, d                                       ; $6B05: $62
    dec c                                         ; $6B06: $0D
    inc d                                         ; $6B07: $14
    db $10                                        ; $6B08: $10
    ld h, l                                       ; $6B09: $65
    ld a, h                                       ; $6B0A: $7C
    ld h, d                                       ; $6B0B: $62
    dec c                                         ; $6B0C: $0D
    inc d                                         ; $6B0D: $14
    db $10                                        ; $6B0E: $10
    ld a, c                                       ; $6B0F: $79
    ld a, h                                       ; $6B10: $7C
    ld h, d                                       ; $6B11: $62
    dec c                                         ; $6B12: $0D
    inc d                                         ; $6B13: $14
    db $10                                        ; $6B14: $10
    ld h, l                                       ; $6B15: $65
    ld a, h                                       ; $6B16: $7C
    ld h, d                                       ; $6B17: $62
    ccf                                           ; $6B18: $3F
    inc d                                         ; $6B19: $14
    db $10                                        ; $6B1A: $10
    ld b, a                                       ; $6B1B: $47
    ld a, h                                       ; $6B1C: $7C
    ld h, d                                       ; $6B1D: $62
    ld a, [bc]                                    ; $6B1E: $0A
    dec d                                         ; $6B1F: $15
    db $10                                        ; $6B20: $10
    rst $00                                       ; $6B21: $C7
    ld a, e                                       ; $6B22: $7B
    jr nc, jr_012_6B35                            ; $6B23: $30 $10

    rst $20                                       ; $6B25: $E7
    ld a, e                                       ; $6B26: $7B
    nop                                           ; $6B27: $00
    nop                                           ; $6B28: $00
    ld b, d                                       ; $6B29: $42
    inc d                                         ; $6B2A: $14
    ld de, $4A3F                                  ; $6B2B: $11 $3F $4A
    ld h, d                                       ; $6B2E: $62
    ld c, $14                                     ; $6B2F: $0E $14
    ld de, $4A2B                                  ; $6B31: $11 $2B $4A
    ld h, d                                       ; $6B34: $62

jr_012_6B35:
    ld c, $14                                     ; $6B35: $0E $14
    ld de, $4A3F                                  ; $6B37: $11 $3F $4A
    ld h, d                                       ; $6B3A: $62
    ld c, $14                                     ; $6B3B: $0E $14
    ld de, $4A2B                                  ; $6B3D: $11 $2B $4A
    ld h, d                                       ; $6B40: $62
    ld b, b                                       ; $6B41: $40
    inc d                                         ; $6B42: $14
    ld de, $4A3F                                  ; $6B43: $11 $3F $4A
    ld h, d                                       ; $6B46: $62
    ld c, $14                                     ; $6B47: $0E $14
    ld de, $4A2B                                  ; $6B49: $11 $2B $4A
    ld h, d                                       ; $6B4C: $62
    ld c, $14                                     ; $6B4D: $0E $14
    ld de, $4A3F                                  ; $6B4F: $11 $3F $4A
    ld h, d                                       ; $6B52: $62
    ld c, $14                                     ; $6B53: $0E $14
    ld de, $4A2B                                  ; $6B55: $11 $2B $4A
    ld h, d                                       ; $6B58: $62
    ld b, b                                       ; $6B59: $40
    inc d                                         ; $6B5A: $14
    ld de, $4A3F                                  ; $6B5B: $11 $3F $4A
    ld h, d                                       ; $6B5E: $62
    ld a, [bc]                                    ; $6B5F: $0A
    dec d                                         ; $6B60: $15
    ld de, $49A7                                  ; $6B61: $11 $A7 $49
    db $10                                        ; $6B64: $10
    ld de, $49B7                                  ; $6B65: $11 $B7 $49
    jr nz, jr_012_6B7B                            ; $6B68: $20 $11

    sub a                                         ; $6B6A: $97
    ld c, c                                       ; $6B6B: $49
    db $10                                        ; $6B6C: $10
    ld de, $49B7                                  ; $6B6D: $11 $B7 $49
    ld h, b                                       ; $6B70: $60
    nop                                           ; $6B71: $00
    dec b                                         ; $6B72: $05
    ld [bc], a                                    ; $6B73: $02
    db $ED                                        ; $6B74: $ED
    ld h, e                                       ; $6B75: $63
    dec bc                                        ; $6B76: $0B
    dec bc                                        ; $6B77: $0B
    jp $00D1                                      ; $6B78: $C3 $D1 $00


jr_012_6B7B:
    ld [de], a                                    ; $6B7B: $12
    ld h, h                                       ; $6B7C: $64
    ld l, a                                       ; $6B7D: $6F
    ld [de], a                                    ; $6B7E: $12
    ld c, b                                       ; $6B7F: $48
    ld l, h                                       ; $6B80: $6C
    dec b                                         ; $6B81: $05
    inc bc                                        ; $6B82: $03
    db $ED                                        ; $6B83: $ED
    ld h, e                                       ; $6B84: $63
    ld a, [bc]                                    ; $6B85: $0A
    dec de                                        ; $6B86: $1B
    ld b, d                                       ; $6B87: $42
    call nc, $1226                                ; $6B88: $D4 $26 $12
    sbc [hl]                                      ; $6B8B: $9E
    ld l, a                                       ; $6B8C: $6F
    ld [de], a                                    ; $6B8D: $12
    ld d, b                                       ; $6B8E: $50
    ld l, h                                       ; $6B8F: $6C
    inc d                                         ; $6B90: $14
    ld de, $4A2B                                  ; $6B91: $11 $2B $4A
    ld h, d                                       ; $6B94: $62
    dec bc                                        ; $6B95: $0B
    ld b, d                                       ; $6B96: $42
    sub e                                         ; $6B97: $93
    ld h, l                                       ; $6B98: $65
    jp hl                                         ; $6B99: $E9


    ld b, a                                       ; $6B9A: $47
    ld c, a                                       ; $6B9B: $4F
    ld h, h                                       ; $6B9C: $64
    or $49                                        ; $6B9D: $F6 $49
    ld h, [hl]                                    ; $6B9F: $66
    ret nz                                        ; $6BA0: $C0

    ld e, h                                       ; $6BA1: $5C
    ld hl, $0005                                  ; $6BA2: $21 $05 $00
    add c                                         ; $6BA5: $81
    ld e, l                                       ; $6BA6: $5D
    jr @+$23                                      ; $6BA7: $18 $21

    ld b, b                                       ; $6BA9: $40
    push de                                       ; $6BAA: $D5
    nop                                           ; $6BAB: $00
    jr nz, @-$49                                  ; $6BAC: $20 $B5

    ld d, b                                       ; $6BAE: $50
    ld [hl+], a                                   ; $6BAF: $22
    dec b                                         ; $6BB0: $05
    ld b, b                                       ; $6BB1: $40
    dec b                                         ; $6BB2: $05
    ld [bc], a                                    ; $6BB3: $02
    db $ED                                        ; $6BB4: $ED
    ld h, e                                       ; $6BB5: $63
    dec bc                                        ; $6BB6: $0B
    dec bc                                        ; $6BB7: $0B
    jp $00D1                                      ; $6BB8: $C3 $D1 $00


    ld [de], a                                    ; $6BBB: $12
    ld h, h                                       ; $6BBC: $64
    ld l, a                                       ; $6BBD: $6F
    ld [de], a                                    ; $6BBE: $12
    ld c, b                                       ; $6BBF: $48
    ld l, h                                       ; $6BC0: $6C
    dec b                                         ; $6BC1: $05
    inc bc                                        ; $6BC2: $03
    db $ED                                        ; $6BC3: $ED
    ld h, e                                       ; $6BC4: $63
    ld a, [bc]                                    ; $6BC5: $0A
    dec de                                        ; $6BC6: $1B
    ld b, d                                       ; $6BC7: $42
    call nc, $1226                                ; $6BC8: $D4 $26 $12
    sbc [hl]                                      ; $6BCB: $9E
    ld l, a                                       ; $6BCC: $6F
    ld [de], a                                    ; $6BCD: $12
    ld d, b                                       ; $6BCE: $50
    ld l, h                                       ; $6BCF: $6C
    dec b                                         ; $6BD0: $05
    inc b                                         ; $6BD1: $04
    db $ED                                        ; $6BD2: $ED
    ld h, e                                       ; $6BD3: $63
    rra                                           ; $6BD4: $1F
    dec d                                         ; $6BD5: $15
    ld h, a                                       ; $6BD6: $67
    db $D3                                        ; $6BD7: $D3
    ld d, b                                       ; $6BD8: $50
    ld [de], a                                    ; $6BD9: $12
    ret z                                         ; $6BDA: $C8

    ld l, a                                       ; $6BDB: $6F
    ld [de], a                                    ; $6BDC: $12
    ld e, b                                       ; $6BDD: $58
    ld l, h                                       ; $6BDE: $6C
    dec b                                         ; $6BDF: $05
    dec b                                         ; $6BE0: $05
    adc $63                                       ; $6BE1: $CE $63
    ld bc, $2901                                  ; $6BE3: $01 $01 $29
    ret nc                                        ; $6BE6: $D0

    sub l                                         ; $6BE7: $95
    ld l, $E3                                     ; $6BE8: $2E $E3
    ld d, l                                       ; $6BEA: $55
    ld [hl+], a                                   ; $6BEB: $22
    dec b                                         ; $6BEC: $05
    ld b, b                                       ; $6BED: $40
    dec b                                         ; $6BEE: $05
    ld b, $CE                                     ; $6BEF: $06 $CE
    ld h, e                                       ; $6BF1: $63
    ld bc, $2901                                  ; $6BF2: $01 $01 $29
    ret nc                                        ; $6BF5: $D0

    sub l                                         ; $6BF6: $95
    ld l, $E3                                     ; $6BF7: $2E $E3
    ld d, l                                       ; $6BF9: $55
    ld [hl+], a                                   ; $6BFA: $22
    dec b                                         ; $6BFB: $05
    ld b, b                                       ; $6BFC: $40
    dec b                                         ; $6BFD: $05
    rlca                                          ; $6BFE: $07
    adc $63                                       ; $6BFF: $CE $63
    ld bc, $2901                                  ; $6C01: $01 $01 $29
    ret nc                                        ; $6C04: $D0

    sub l                                         ; $6C05: $95
    ld l, $E3                                     ; $6C06: $2E $E3
    ld d, l                                       ; $6C08: $55
    ld [hl+], a                                   ; $6C09: $22
    dec b                                         ; $6C0A: $05
    ld b, b                                       ; $6C0B: $40
    dec bc                                        ; $6C0C: $0B
    nop                                           ; $6C0D: $00
    dec bc                                        ; $6C0E: $0B
    ld [bc], a                                    ; $6C0F: $02
    dec bc                                        ; $6C10: $0B
    inc bc                                        ; $6C11: $03
    dec bc                                        ; $6C12: $0B
    inc b                                         ; $6C13: $04
    dec bc                                        ; $6C14: $0B
    dec b                                         ; $6C15: $05
    dec bc                                        ; $6C16: $0B
    ld b, $0B                                     ; $6C17: $06 $0B
    rlca                                          ; $6C19: $07
    ld l, e                                       ; $6C1A: $6B
    ld h, $0C                                     ; $6C1B: $26 $0C
    sub b                                         ; $6C1D: $90
    ld l, l                                       ; $6C1E: $6D
    nop                                           ; $6C1F: $00
    add b                                         ; $6C20: $80
    nop                                           ; $6C21: $00
    ld l, e                                       ; $6C22: $6B
    ld a, [hl+]                                   ; $6C23: $2A
    inc c                                         ; $6C24: $0C
    nop                                           ; $6C25: $00
    ld h, l                                       ; $6C26: $65
    ld h, b                                       ; $6C27: $60
    add d                                         ; $6C28: $82
    nop                                           ; $6C29: $00
    ld l, e                                       ; $6C2A: $6B
    dec hl                                        ; $6C2B: $2B
    dec bc                                        ; $6C2C: $0B
    add b                                         ; $6C2D: $80
    ld c, h                                       ; $6C2E: $4C
    nop                                           ; $6C2F: $00
    add l                                         ; $6C30: $85
    nop                                           ; $6C31: $00
    ld l, e                                       ; $6C32: $6B
    ld a, [de]                                    ; $6C33: $1A
    inc c                                         ; $6C34: $0C
    ldh a, [rOCPD]                                ; $6C35: $F0 $6B
    or b                                          ; $6C37: $B0
    add a                                         ; $6C38: $87
    nop                                           ; $6C39: $00
    ld l, e                                       ; $6C3A: $6B
    ld b, $0D                                     ; $6C3B: $06 $0D
    ld [hl], b                                    ; $6C3D: $70
    ld e, e                                       ; $6C3E: $5B
    ld d, b                                       ; $6C3F: $50
    adc c                                         ; $6C40: $89
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    add d                                         ; $6C43: $82
    rra                                           ; $6C44: $1F
    dec e                                         ; $6C45: $1D
    sub h                                         ; $6C46: $94
    ld b, d                                       ; $6C47: $42
    ld e, e                                       ; $6C48: $5B
    ld [de], a                                    ; $6C49: $12
    ld h, b                                       ; $6C4A: $60
    ld c, l                                       ; $6C4B: $4D
    ld b, l                                       ; $6C4C: $45
    dec h                                         ; $6C4D: $25
    ld hl, $5B54                                  ; $6C4E: $21 $54 $5B
    ld [de], a                                    ; $6C51: $12
    adc a                                         ; $6C52: $8F
    ld c, l                                       ; $6C53: $4D
    ld b, l                                       ; $6C54: $45
    db $10                                        ; $6C55: $10
    sub a                                         ; $6C56: $97
    ld a, h                                       ; $6C57: $7C
    ld e, e                                       ; $6C58: $5B
    ld [de], a                                    ; $6C59: $12
    cp a                                          ; $6C5A: $BF
    ld c, l                                       ; $6C5B: $4D
    ld b, l                                       ; $6C5C: $45
    ld de, $4A67                                  ; $6C5D: $11 $67 $4A
    sub e                                         ; $6C60: $93
    ld h, l                                       ; $6C61: $65
    jp hl                                         ; $6C62: $E9


    ld b, a                                       ; $6C63: $47
    ld c, a                                       ; $6C64: $4F
    ld h, h                                       ; $6C65: $64
    or $49                                        ; $6C66: $F6 $49
    ld h, [hl]                                    ; $6C68: $66
    ret nz                                        ; $6C69: $C0

    ld e, h                                       ; $6C6A: $5C
    ld hl, $0005                                  ; $6C6B: $21 $05 $00
    add c                                         ; $6C6E: $81
    ld e, l                                       ; $6C6F: $5D
    ld c, $01                                     ; $6C70: $0E $01

jr_012_6C72:
    ld [hl], $D0                                  ; $6C72: $36 $D0
    nop                                           ; $6C74: $00
    jr nz, jr_012_6C72                            ; $6C75: $20 $FB

    ld d, b                                       ; $6C77: $50
    ld [hl+], a                                   ; $6C78: $22
    dec b                                         ; $6C79: $05
    ld b, b                                       ; $6C7A: $40
    dec b                                         ; $6C7B: $05
    ld [bc], a                                    ; $6C7C: $02
    db $ED                                        ; $6C7D: $ED
    ld h, e                                       ; $6C7E: $63
    dec de                                        ; $6C7F: $1B
    jr nz, jr_012_6C9D                            ; $6C80: $20 $1B

    push de                                       ; $6C82: $D5
    nop                                           ; $6C83: $00
    ld [de], a                                    ; $6C84: $12
    ld h, h                                       ; $6C85: $64
    ld l, a                                       ; $6C86: $6F
    ld [de], a                                    ; $6C87: $12
    add hl, bc                                    ; $6C88: $09
    ld l, l                                       ; $6C89: $6D
    dec b                                         ; $6C8A: $05
    inc bc                                        ; $6C8B: $03
    db $ED                                        ; $6C8C: $ED
    ld h, e                                       ; $6C8D: $63
    ld a, [bc]                                    ; $6C8E: $0A
    dec de                                        ; $6C8F: $1B
    ld b, d                                       ; $6C90: $42
    call nc, $1226                                ; $6C91: $D4 $26 $12
    sbc [hl]                                      ; $6C94: $9E
    ld l, a                                       ; $6C95: $6F
    ld [de], a                                    ; $6C96: $12
    ld de, $056D                                  ; $6C97: $11 $6D $05
    inc b                                         ; $6C9A: $04
    db $ED                                        ; $6C9B: $ED
    ld h, e                                       ; $6C9C: $63

jr_012_6C9D:
    rra                                           ; $6C9D: $1F
    dec d                                         ; $6C9E: $15
    ld h, a                                       ; $6C9F: $67
    db $D3                                        ; $6CA0: $D3
    ld d, b                                       ; $6CA1: $50
    ld [de], a                                    ; $6CA2: $12
    ret z                                         ; $6CA3: $C8

    ld l, a                                       ; $6CA4: $6F
    ld [de], a                                    ; $6CA5: $12
    add hl, de                                    ; $6CA6: $19
    ld l, l                                       ; $6CA7: $6D
    dec b                                         ; $6CA8: $05
    dec b                                         ; $6CA9: $05
    adc $63                                       ; $6CAA: $CE $63
    ld bc, $2901                                  ; $6CAC: $01 $01 $29
    ret nc                                        ; $6CAF: $D0

    sub l                                         ; $6CB0: $95
    ld l, $E3                                     ; $6CB1: $2E $E3
    ld d, l                                       ; $6CB3: $55
    ld [hl+], a                                   ; $6CB4: $22
    dec b                                         ; $6CB5: $05
    ld b, b                                       ; $6CB6: $40
    dec b                                         ; $6CB7: $05
    ld b, $CE                                     ; $6CB8: $06 $CE
    ld h, e                                       ; $6CBA: $63
    ld bc, $2901                                  ; $6CBB: $01 $01 $29
    ret nc                                        ; $6CBE: $D0

    sub l                                         ; $6CBF: $95
    ld l, $E3                                     ; $6CC0: $2E $E3
    ld d, l                                       ; $6CC2: $55
    ld [hl+], a                                   ; $6CC3: $22
    dec b                                         ; $6CC4: $05
    ld b, b                                       ; $6CC5: $40
    dec b                                         ; $6CC6: $05
    rlca                                          ; $6CC7: $07
    adc $63                                       ; $6CC8: $CE $63
    ld bc, $2901                                  ; $6CCA: $01 $01 $29
    ret nc                                        ; $6CCD: $D0

    sub l                                         ; $6CCE: $95
    ld l, $E3                                     ; $6CCF: $2E $E3
    ld d, l                                       ; $6CD1: $55
    ld [hl+], a                                   ; $6CD2: $22
    dec b                                         ; $6CD3: $05
    ld b, b                                       ; $6CD4: $40
    dec bc                                        ; $6CD5: $0B
    nop                                           ; $6CD6: $00
    dec bc                                        ; $6CD7: $0B
    ld [bc], a                                    ; $6CD8: $02
    dec bc                                        ; $6CD9: $0B
    inc bc                                        ; $6CDA: $03
    dec bc                                        ; $6CDB: $0B
    inc b                                         ; $6CDC: $04
    dec bc                                        ; $6CDD: $0B
    dec b                                         ; $6CDE: $05
    dec bc                                        ; $6CDF: $0B
    ld b, $0B                                     ; $6CE0: $06 $0B
    rlca                                          ; $6CE2: $07
    ld l, e                                       ; $6CE3: $6B
    ld h, $0C                                     ; $6CE4: $26 $0C
    sub b                                         ; $6CE6: $90
    ld l, l                                       ; $6CE7: $6D
    nop                                           ; $6CE8: $00
    add b                                         ; $6CE9: $80
    nop                                           ; $6CEA: $00
    ld l, e                                       ; $6CEB: $6B
    ld a, [hl+]                                   ; $6CEC: $2A
    inc c                                         ; $6CED: $0C
    nop                                           ; $6CEE: $00
    ld h, l                                       ; $6CEF: $65
    ld h, b                                       ; $6CF0: $60
    add d                                         ; $6CF1: $82
    nop                                           ; $6CF2: $00
    ld l, e                                       ; $6CF3: $6B
    dec hl                                        ; $6CF4: $2B
    dec bc                                        ; $6CF5: $0B
    add b                                         ; $6CF6: $80
    ld c, h                                       ; $6CF7: $4C
    nop                                           ; $6CF8: $00
    add l                                         ; $6CF9: $85
    nop                                           ; $6CFA: $00
    ld l, e                                       ; $6CFB: $6B
    ld b, $0D                                     ; $6CFC: $06 $0D
    ld [hl], b                                    ; $6CFE: $70
    ld e, e                                       ; $6CFF: $5B
    ld d, b                                       ; $6D00: $50
    adc c                                         ; $6D01: $89
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    add d                                         ; $6D04: $82
    rra                                           ; $6D05: $1F
    dec e                                         ; $6D06: $1D
    sub h                                         ; $6D07: $94
    ld b, d                                       ; $6D08: $42
    ld e, e                                       ; $6D09: $5B
    ld [de], a                                    ; $6D0A: $12
    ld sp, hl                                     ; $6D0B: $F9
    ld c, l                                       ; $6D0C: $4D
    ld b, l                                       ; $6D0D: $45
    dec h                                         ; $6D0E: $25
    ld hl, $5B54                                  ; $6D0F: $21 $54 $5B
    ld [de], a                                    ; $6D12: $12
    ld b, c                                       ; $6D13: $41
    ld c, [hl]                                    ; $6D14: $4E
    ld b, l                                       ; $6D15: $45
    db $10                                        ; $6D16: $10
    sub a                                         ; $6D17: $97
    ld a, h                                       ; $6D18: $7C
    ld e, e                                       ; $6D19: $5B
    ld [de], a                                    ; $6D1A: $12
    add h                                         ; $6D1B: $84
    ld c, [hl]                                    ; $6D1C: $4E
    ld b, l                                       ; $6D1D: $45
    ld de, $4A67                                  ; $6D1E: $11 $67 $4A
    sub e                                         ; $6D21: $93
    ld h, l                                       ; $6D22: $65
    jp hl                                         ; $6D23: $E9


    ld b, a                                       ; $6D24: $47
    ld c, a                                       ; $6D25: $4F
    ld h, h                                       ; $6D26: $64
    or $49                                        ; $6D27: $F6 $49
    ld h, [hl]                                    ; $6D29: $66
    ret nz                                        ; $6D2A: $C0

    ld e, h                                       ; $6D2B: $5C
    ld hl, $0005                                  ; $6D2C: $21 $05 $00
    add c                                         ; $6D2F: $81
    ld e, l                                       ; $6D30: $5D
    ld c, $01                                     ; $6D31: $0E $01

jr_012_6D33:
    ld [hl], $D0                                  ; $6D33: $36 $D0
    nop                                           ; $6D35: $00
    jr nz, jr_012_6D33                            ; $6D36: $20 $FB

    ld d, b                                       ; $6D38: $50
    ld [hl+], a                                   ; $6D39: $22
    dec b                                         ; $6D3A: $05
    ld b, b                                       ; $6D3B: $40
    dec b                                         ; $6D3C: $05
    ld [bc], a                                    ; $6D3D: $02
    db $ED                                        ; $6D3E: $ED
    ld h, e                                       ; $6D3F: $63
    dec de                                        ; $6D40: $1B
    jr nz, jr_012_6D5E                            ; $6D41: $20 $1B

    push de                                       ; $6D43: $D5
    nop                                           ; $6D44: $00
    ld [de], a                                    ; $6D45: $12
    ld h, h                                       ; $6D46: $64
    ld l, a                                       ; $6D47: $6F
    ld [de], a                                    ; $6D48: $12
    jp z, $056D                                   ; $6D49: $CA $6D $05

    inc bc                                        ; $6D4C: $03
    db $ED                                        ; $6D4D: $ED
    ld h, e                                       ; $6D4E: $63
    ld a, [bc]                                    ; $6D4F: $0A
    dec de                                        ; $6D50: $1B
    ld b, d                                       ; $6D51: $42
    call nc, $1226                                ; $6D52: $D4 $26 $12
    sbc [hl]                                      ; $6D55: $9E
    ld l, a                                       ; $6D56: $6F
    ld [de], a                                    ; $6D57: $12
    jp nc, $056D                                  ; $6D58: $D2 $6D $05

    inc b                                         ; $6D5B: $04
    db $ED                                        ; $6D5C: $ED
    ld h, e                                       ; $6D5D: $63

jr_012_6D5E:
    rra                                           ; $6D5E: $1F
    dec d                                         ; $6D5F: $15
    ld h, a                                       ; $6D60: $67
    db $D3                                        ; $6D61: $D3
    ld d, b                                       ; $6D62: $50
    ld [de], a                                    ; $6D63: $12
    ret z                                         ; $6D64: $C8

    ld l, a                                       ; $6D65: $6F
    ld [de], a                                    ; $6D66: $12
    jp c, $056D                                   ; $6D67: $DA $6D $05

    dec b                                         ; $6D6A: $05
    adc $63                                       ; $6D6B: $CE $63
    ld bc, $2901                                  ; $6D6D: $01 $01 $29
    ret nc                                        ; $6D70: $D0

    sub l                                         ; $6D71: $95
    ld l, $E3                                     ; $6D72: $2E $E3
    ld d, l                                       ; $6D74: $55
    ld [hl+], a                                   ; $6D75: $22
    dec b                                         ; $6D76: $05
    ld b, b                                       ; $6D77: $40
    dec b                                         ; $6D78: $05
    ld b, $CE                                     ; $6D79: $06 $CE
    ld h, e                                       ; $6D7B: $63
    ld bc, $2901                                  ; $6D7C: $01 $01 $29
    ret nc                                        ; $6D7F: $D0

    sub l                                         ; $6D80: $95
    ld l, $E3                                     ; $6D81: $2E $E3
    ld d, l                                       ; $6D83: $55
    ld [hl+], a                                   ; $6D84: $22
    dec b                                         ; $6D85: $05
    ld b, b                                       ; $6D86: $40
    dec b                                         ; $6D87: $05
    rlca                                          ; $6D88: $07
    adc $63                                       ; $6D89: $CE $63
    ld bc, $2901                                  ; $6D8B: $01 $01 $29
    ret nc                                        ; $6D8E: $D0

    sub l                                         ; $6D8F: $95
    ld l, $E3                                     ; $6D90: $2E $E3
    ld d, l                                       ; $6D92: $55
    ld [hl+], a                                   ; $6D93: $22
    dec b                                         ; $6D94: $05
    ld b, b                                       ; $6D95: $40
    dec bc                                        ; $6D96: $0B
    nop                                           ; $6D97: $00
    dec bc                                        ; $6D98: $0B
    ld [bc], a                                    ; $6D99: $02
    dec bc                                        ; $6D9A: $0B
    inc bc                                        ; $6D9B: $03
    dec bc                                        ; $6D9C: $0B
    inc b                                         ; $6D9D: $04
    dec bc                                        ; $6D9E: $0B
    dec b                                         ; $6D9F: $05
    dec bc                                        ; $6DA0: $0B
    ld b, $0B                                     ; $6DA1: $06 $0B
    rlca                                          ; $6DA3: $07
    ld l, e                                       ; $6DA4: $6B
    ld h, $0C                                     ; $6DA5: $26 $0C
    sub b                                         ; $6DA7: $90
    ld l, l                                       ; $6DA8: $6D
    nop                                           ; $6DA9: $00
    add b                                         ; $6DAA: $80
    nop                                           ; $6DAB: $00
    ld l, e                                       ; $6DAC: $6B
    ld a, [hl+]                                   ; $6DAD: $2A
    inc c                                         ; $6DAE: $0C
    nop                                           ; $6DAF: $00
    ld h, l                                       ; $6DB0: $65
    ld h, b                                       ; $6DB1: $60
    add d                                         ; $6DB2: $82
    nop                                           ; $6DB3: $00
    ld l, e                                       ; $6DB4: $6B
    dec hl                                        ; $6DB5: $2B
    dec bc                                        ; $6DB6: $0B
    add b                                         ; $6DB7: $80
    ld c, h                                       ; $6DB8: $4C
    nop                                           ; $6DB9: $00
    add l                                         ; $6DBA: $85
    nop                                           ; $6DBB: $00
    ld l, e                                       ; $6DBC: $6B
    ld b, $0D                                     ; $6DBD: $06 $0D
    ld [hl], b                                    ; $6DBF: $70
    ld e, e                                       ; $6DC0: $5B
    ld d, b                                       ; $6DC1: $50
    adc c                                         ; $6DC2: $89
    nop                                           ; $6DC3: $00
    nop                                           ; $6DC4: $00
    add d                                         ; $6DC5: $82
    rra                                           ; $6DC6: $1F
    dec e                                         ; $6DC7: $1D
    sub h                                         ; $6DC8: $94
    ld b, d                                       ; $6DC9: $42
    ld e, e                                       ; $6DCA: $5B
    ld [de], a                                    ; $6DCB: $12
    inc de                                        ; $6DCC: $13
    ld c, a                                       ; $6DCD: $4F
    ld b, l                                       ; $6DCE: $45
    dec h                                         ; $6DCF: $25
    ld hl, $5B54                                  ; $6DD0: $21 $54 $5B
    ld [de], a                                    ; $6DD3: $12
    dec hl                                        ; $6DD4: $2B
    ld c, a                                       ; $6DD5: $4F
    ld b, l                                       ; $6DD6: $45
    db $10                                        ; $6DD7: $10
    sub a                                         ; $6DD8: $97
    ld a, h                                       ; $6DD9: $7C
    ld e, e                                       ; $6DDA: $5B
    ld [de], a                                    ; $6DDB: $12
    ld e, c                                       ; $6DDC: $59
    ld c, a                                       ; $6DDD: $4F
    ld b, l                                       ; $6DDE: $45
    ld de, $4A67                                  ; $6DDF: $11 $67 $4A
    sub e                                         ; $6DE2: $93
    ld h, l                                       ; $6DE3: $65
    jp hl                                         ; $6DE4: $E9


    ld b, a                                       ; $6DE5: $47
    ld c, a                                       ; $6DE6: $4F
    ld h, h                                       ; $6DE7: $64
    or $49                                        ; $6DE8: $F6 $49
    ld h, [hl]                                    ; $6DEA: $66
    ret nz                                        ; $6DEB: $C0

    ld e, h                                       ; $6DEC: $5C
    ld hl, $0005                                  ; $6DED: $21 $05 $00
    add c                                         ; $6DF0: $81
    ld e, l                                       ; $6DF1: $5D
    ld c, $01                                     ; $6DF2: $0E $01

jr_012_6DF4:
    ld [hl], $D0                                  ; $6DF4: $36 $D0
    nop                                           ; $6DF6: $00
    jr nz, jr_012_6DF4                            ; $6DF7: $20 $FB

    ld d, b                                       ; $6DF9: $50
    ld [hl+], a                                   ; $6DFA: $22
    dec b                                         ; $6DFB: $05
    ld b, b                                       ; $6DFC: $40
    dec b                                         ; $6DFD: $05
    ld [bc], a                                    ; $6DFE: $02
    db $ED                                        ; $6DFF: $ED
    ld h, e                                       ; $6E00: $63
    dec de                                        ; $6E01: $1B
    jr nz, jr_012_6E1F                            ; $6E02: $20 $1B

    push de                                       ; $6E04: $D5
    nop                                           ; $6E05: $00
    ld [de], a                                    ; $6E06: $12
    ld h, h                                       ; $6E07: $64
    ld l, a                                       ; $6E08: $6F
    ld [de], a                                    ; $6E09: $12
    adc e                                         ; $6E0A: $8B
    ld l, [hl]                                    ; $6E0B: $6E
    dec b                                         ; $6E0C: $05
    inc bc                                        ; $6E0D: $03
    db $ED                                        ; $6E0E: $ED
    ld h, e                                       ; $6E0F: $63
    ld a, [bc]                                    ; $6E10: $0A
    dec de                                        ; $6E11: $1B
    ld b, d                                       ; $6E12: $42
    call nc, $1226                                ; $6E13: $D4 $26 $12
    sbc [hl]                                      ; $6E16: $9E
    ld l, a                                       ; $6E17: $6F
    ld [de], a                                    ; $6E18: $12
    sub e                                         ; $6E19: $93
    ld l, [hl]                                    ; $6E1A: $6E
    dec b                                         ; $6E1B: $05
    inc b                                         ; $6E1C: $04
    db $ED                                        ; $6E1D: $ED
    ld h, e                                       ; $6E1E: $63

jr_012_6E1F:
    rra                                           ; $6E1F: $1F
    dec d                                         ; $6E20: $15
    ld h, a                                       ; $6E21: $67
    db $D3                                        ; $6E22: $D3
    ld d, b                                       ; $6E23: $50
    ld [de], a                                    ; $6E24: $12
    ret z                                         ; $6E25: $C8

    ld l, a                                       ; $6E26: $6F
    ld [de], a                                    ; $6E27: $12
    sbc e                                         ; $6E28: $9B
    ld l, [hl]                                    ; $6E29: $6E
    dec b                                         ; $6E2A: $05
    dec b                                         ; $6E2B: $05
    adc $63                                       ; $6E2C: $CE $63
    ld bc, $2901                                  ; $6E2E: $01 $01 $29
    ret nc                                        ; $6E31: $D0

    sub l                                         ; $6E32: $95
    ld l, $E3                                     ; $6E33: $2E $E3
    ld d, l                                       ; $6E35: $55
    ld [hl+], a                                   ; $6E36: $22
    dec b                                         ; $6E37: $05
    ld b, b                                       ; $6E38: $40
    dec b                                         ; $6E39: $05
    ld b, $CE                                     ; $6E3A: $06 $CE
    ld h, e                                       ; $6E3C: $63
    ld bc, $2901                                  ; $6E3D: $01 $01 $29
    ret nc                                        ; $6E40: $D0

    sub l                                         ; $6E41: $95
    ld l, $E3                                     ; $6E42: $2E $E3
    ld d, l                                       ; $6E44: $55
    ld [hl+], a                                   ; $6E45: $22
    dec b                                         ; $6E46: $05
    ld b, b                                       ; $6E47: $40
    dec b                                         ; $6E48: $05
    rlca                                          ; $6E49: $07
    adc $63                                       ; $6E4A: $CE $63
    ld bc, $2901                                  ; $6E4C: $01 $01 $29
    ret nc                                        ; $6E4F: $D0

    sub l                                         ; $6E50: $95
    ld l, $E3                                     ; $6E51: $2E $E3
    ld d, l                                       ; $6E53: $55
    ld [hl+], a                                   ; $6E54: $22
    dec b                                         ; $6E55: $05
    ld b, b                                       ; $6E56: $40
    dec bc                                        ; $6E57: $0B
    nop                                           ; $6E58: $00
    dec bc                                        ; $6E59: $0B
    ld [bc], a                                    ; $6E5A: $02
    dec bc                                        ; $6E5B: $0B
    inc bc                                        ; $6E5C: $03
    dec bc                                        ; $6E5D: $0B
    inc b                                         ; $6E5E: $04
    dec bc                                        ; $6E5F: $0B
    dec b                                         ; $6E60: $05
    dec bc                                        ; $6E61: $0B
    ld b, $0B                                     ; $6E62: $06 $0B
    rlca                                          ; $6E64: $07
    ld l, e                                       ; $6E65: $6B
    ld h, $0C                                     ; $6E66: $26 $0C
    sub b                                         ; $6E68: $90
    ld l, l                                       ; $6E69: $6D
    nop                                           ; $6E6A: $00
    add b                                         ; $6E6B: $80
    nop                                           ; $6E6C: $00
    ld l, e                                       ; $6E6D: $6B
    ld a, [hl+]                                   ; $6E6E: $2A
    inc c                                         ; $6E6F: $0C
    nop                                           ; $6E70: $00
    ld h, l                                       ; $6E71: $65
    ld h, b                                       ; $6E72: $60
    add d                                         ; $6E73: $82
    nop                                           ; $6E74: $00
    ld l, e                                       ; $6E75: $6B
    dec hl                                        ; $6E76: $2B
    dec bc                                        ; $6E77: $0B
    add b                                         ; $6E78: $80
    ld c, h                                       ; $6E79: $4C
    nop                                           ; $6E7A: $00
    add l                                         ; $6E7B: $85
    nop                                           ; $6E7C: $00
    ld l, e                                       ; $6E7D: $6B
    ld b, $0D                                     ; $6E7E: $06 $0D
    ld [hl], b                                    ; $6E80: $70
    ld e, e                                       ; $6E81: $5B
    ld d, b                                       ; $6E82: $50
    adc c                                         ; $6E83: $89
    nop                                           ; $6E84: $00
    nop                                           ; $6E85: $00
    add d                                         ; $6E86: $82
    rra                                           ; $6E87: $1F
    dec e                                         ; $6E88: $1D
    sub h                                         ; $6E89: $94
    ld b, d                                       ; $6E8A: $42
    ld e, e                                       ; $6E8B: $5B
    ld [de], a                                    ; $6E8C: $12
    ld a, e                                       ; $6E8D: $7B
    ld c, a                                       ; $6E8E: $4F
    ld b, l                                       ; $6E8F: $45
    dec h                                         ; $6E90: $25
    ld hl, $5B54                                  ; $6E91: $21 $54 $5B
    ld [de], a                                    ; $6E94: $12
    and [hl]                                      ; $6E95: $A6
    ld c, a                                       ; $6E96: $4F
    ld b, l                                       ; $6E97: $45
    db $10                                        ; $6E98: $10
    sub a                                         ; $6E99: $97
    ld a, h                                       ; $6E9A: $7C
    ld e, e                                       ; $6E9B: $5B
    ld [de], a                                    ; $6E9C: $12
    cp c                                          ; $6E9D: $B9
    ld c, a                                       ; $6E9E: $4F
    ld b, l                                       ; $6E9F: $45
    ld de, $4A67                                  ; $6EA0: $11 $67 $4A
    sub e                                         ; $6EA3: $93
    ld h, l                                       ; $6EA4: $65
    jp hl                                         ; $6EA5: $E9


    ld b, a                                       ; $6EA6: $47
    ld c, a                                       ; $6EA7: $4F
    ld h, h                                       ; $6EA8: $64
    or $49                                        ; $6EA9: $F6 $49
    ld h, [hl]                                    ; $6EAB: $66
    ret nz                                        ; $6EAC: $C0

    ld e, h                                       ; $6EAD: $5C
    ld hl, $0005                                  ; $6EAE: $21 $05 $00
    add c                                         ; $6EB1: $81
    ld e, l                                       ; $6EB2: $5D
    ld c, $01                                     ; $6EB3: $0E $01

jr_012_6EB5:
    ld [hl], $D0                                  ; $6EB5: $36 $D0
    nop                                           ; $6EB7: $00
    jr nz, jr_012_6EB5                            ; $6EB8: $20 $FB

    ld d, b                                       ; $6EBA: $50
    ld [hl+], a                                   ; $6EBB: $22
    dec b                                         ; $6EBC: $05
    ld b, b                                       ; $6EBD: $40
    dec b                                         ; $6EBE: $05
    ld [bc], a                                    ; $6EBF: $02
    db $ED                                        ; $6EC0: $ED
    ld h, e                                       ; $6EC1: $63
    dec de                                        ; $6EC2: $1B
    jr nz, jr_012_6EE0                            ; $6EC3: $20 $1B

    push de                                       ; $6EC5: $D5
    nop                                           ; $6EC6: $00
    ld [de], a                                    ; $6EC7: $12
    ld h, h                                       ; $6EC8: $64
    ld l, a                                       ; $6EC9: $6F
    ld [de], a                                    ; $6ECA: $12
    ld c, h                                       ; $6ECB: $4C
    ld l, a                                       ; $6ECC: $6F
    dec b                                         ; $6ECD: $05
    inc bc                                        ; $6ECE: $03
    db $ED                                        ; $6ECF: $ED
    ld h, e                                       ; $6ED0: $63
    ld a, [bc]                                    ; $6ED1: $0A
    dec de                                        ; $6ED2: $1B
    ld b, d                                       ; $6ED3: $42
    call nc, $1226                                ; $6ED4: $D4 $26 $12
    sbc [hl]                                      ; $6ED7: $9E
    ld l, a                                       ; $6ED8: $6F
    ld [de], a                                    ; $6ED9: $12
    ld d, h                                       ; $6EDA: $54
    ld l, a                                       ; $6EDB: $6F
    dec b                                         ; $6EDC: $05
    inc b                                         ; $6EDD: $04
    db $ED                                        ; $6EDE: $ED
    ld h, e                                       ; $6EDF: $63

jr_012_6EE0:
    rra                                           ; $6EE0: $1F
    dec d                                         ; $6EE1: $15
    ld h, a                                       ; $6EE2: $67
    db $D3                                        ; $6EE3: $D3
    ld d, b                                       ; $6EE4: $50
    ld [de], a                                    ; $6EE5: $12
    ret z                                         ; $6EE6: $C8

    ld l, a                                       ; $6EE7: $6F
    ld [de], a                                    ; $6EE8: $12
    ld e, h                                       ; $6EE9: $5C
    ld l, a                                       ; $6EEA: $6F
    dec b                                         ; $6EEB: $05
    dec b                                         ; $6EEC: $05
    adc $63                                       ; $6EED: $CE $63
    ld bc, $2901                                  ; $6EEF: $01 $01 $29
    ret nc                                        ; $6EF2: $D0

    sub l                                         ; $6EF3: $95
    ld l, $E3                                     ; $6EF4: $2E $E3
    ld d, l                                       ; $6EF6: $55
    ld [hl+], a                                   ; $6EF7: $22
    dec b                                         ; $6EF8: $05
    ld b, b                                       ; $6EF9: $40
    dec b                                         ; $6EFA: $05
    ld b, $CE                                     ; $6EFB: $06 $CE
    ld h, e                                       ; $6EFD: $63
    ld bc, $2901                                  ; $6EFE: $01 $01 $29
    ret nc                                        ; $6F01: $D0

    sub l                                         ; $6F02: $95
    ld l, $E3                                     ; $6F03: $2E $E3
    ld d, l                                       ; $6F05: $55
    ld [hl+], a                                   ; $6F06: $22
    dec b                                         ; $6F07: $05
    ld b, b                                       ; $6F08: $40
    dec b                                         ; $6F09: $05
    rlca                                          ; $6F0A: $07
    adc $63                                       ; $6F0B: $CE $63
    ld bc, $2901                                  ; $6F0D: $01 $01 $29
    ret nc                                        ; $6F10: $D0

    sub l                                         ; $6F11: $95
    ld l, $E3                                     ; $6F12: $2E $E3
    ld d, l                                       ; $6F14: $55
    ld [hl+], a                                   ; $6F15: $22
    dec b                                         ; $6F16: $05
    ld b, b                                       ; $6F17: $40
    dec bc                                        ; $6F18: $0B
    nop                                           ; $6F19: $00
    dec bc                                        ; $6F1A: $0B
    ld [bc], a                                    ; $6F1B: $02
    dec bc                                        ; $6F1C: $0B
    inc bc                                        ; $6F1D: $03
    dec bc                                        ; $6F1E: $0B
    inc b                                         ; $6F1F: $04
    dec bc                                        ; $6F20: $0B
    dec b                                         ; $6F21: $05
    dec bc                                        ; $6F22: $0B
    ld b, $0B                                     ; $6F23: $06 $0B
    rlca                                          ; $6F25: $07
    ld l, e                                       ; $6F26: $6B
    ld h, $0C                                     ; $6F27: $26 $0C
    sub b                                         ; $6F29: $90
    ld l, l                                       ; $6F2A: $6D
    nop                                           ; $6F2B: $00
    add b                                         ; $6F2C: $80
    nop                                           ; $6F2D: $00
    ld l, e                                       ; $6F2E: $6B
    ld a, [hl+]                                   ; $6F2F: $2A
    inc c                                         ; $6F30: $0C
    nop                                           ; $6F31: $00
    ld h, l                                       ; $6F32: $65
    ld h, b                                       ; $6F33: $60
    add d                                         ; $6F34: $82
    nop                                           ; $6F35: $00
    ld l, e                                       ; $6F36: $6B
    dec hl                                        ; $6F37: $2B
    dec bc                                        ; $6F38: $0B
    add b                                         ; $6F39: $80
    ld c, h                                       ; $6F3A: $4C
    nop                                           ; $6F3B: $00
    add l                                         ; $6F3C: $85
    nop                                           ; $6F3D: $00
    ld l, e                                       ; $6F3E: $6B
    ld b, $0D                                     ; $6F3F: $06 $0D
    ld [hl], b                                    ; $6F41: $70
    ld e, e                                       ; $6F42: $5B
    ld d, b                                       ; $6F43: $50
    adc c                                         ; $6F44: $89
    nop                                           ; $6F45: $00
    nop                                           ; $6F46: $00
    add d                                         ; $6F47: $82
    rra                                           ; $6F48: $1F
    dec e                                         ; $6F49: $1D
    sub h                                         ; $6F4A: $94
    ld b, d                                       ; $6F4B: $42
    ld e, e                                       ; $6F4C: $5B
    ld [de], a                                    ; $6F4D: $12
    db $EB                                        ; $6F4E: $EB
    ld c, a                                       ; $6F4F: $4F
    ld b, l                                       ; $6F50: $45
    dec h                                         ; $6F51: $25
    ld hl, $5B54                                  ; $6F52: $21 $54 $5B
    ld [de], a                                    ; $6F55: $12
    inc hl                                        ; $6F56: $23
    ld d, b                                       ; $6F57: $50
    ld b, l                                       ; $6F58: $45
    db $10                                        ; $6F59: $10
    sub a                                         ; $6F5A: $97
    ld a, h                                       ; $6F5B: $7C
    ld e, e                                       ; $6F5C: $5B
    ld [de], a                                    ; $6F5D: $12
    dec sp                                        ; $6F5E: $3B
    ld d, b                                       ; $6F5F: $50
    ld b, l                                       ; $6F60: $45
    ld de, $4A67                                  ; $6F61: $11 $67 $4A
    dec d                                         ; $6F64: $15
    dec h                                         ; $6F65: $25
    ld l, l                                       ; $6F66: $6D
    ld d, e                                       ; $6F67: $53
    ld b, b                                       ; $6F68: $40
    dec h                                         ; $6F69: $25
    db $DB                                        ; $6F6A: $DB
    ld d, e                                       ; $6F6B: $53
    ld b, b                                       ; $6F6C: $40
    dec h                                         ; $6F6D: $25
    inc bc                                        ; $6F6E: $03
    ld d, h                                       ; $6F6F: $54
    ld b, b                                       ; $6F70: $40
    dec h                                         ; $6F71: $25
    rst $28                                       ; $6F72: $EF
    ld d, e                                       ; $6F73: $53
    ld b, b                                       ; $6F74: $40
    dec h                                         ; $6F75: $25
    dec a                                         ; $6F76: $3D
    ld d, e                                       ; $6F77: $53
    jr nz, jr_012_6F9F                            ; $6F78: $20 $25

    ld sp, hl                                     ; $6F7A: $F9
    ld d, e                                       ; $6F7B: $53
    ld b, b                                       ; $6F7C: $40
    dec h                                         ; $6F7D: $25
    push hl                                       ; $6F7E: $E5
    ld d, e                                       ; $6F7F: $53
    ld b, b                                       ; $6F80: $40
    dec h                                         ; $6F81: $25
    ld e, l                                       ; $6F82: $5D
    ld d, e                                       ; $6F83: $53
    ld b, b                                       ; $6F84: $40
    dec h                                         ; $6F85: $25
    ld sp, hl                                     ; $6F86: $F9
    ld d, e                                       ; $6F87: $53
    ld b, b                                       ; $6F88: $40
    dec h                                         ; $6F89: $25
    push hl                                       ; $6F8A: $E5
    ld d, e                                       ; $6F8B: $53
    ld b, b                                       ; $6F8C: $40
    dec h                                         ; $6F8D: $25
    ld c, l                                       ; $6F8E: $4D
    ld d, e                                       ; $6F8F: $53
    jr nz, @+$27                                  ; $6F90: $20 $25

    rst $00                                       ; $6F92: $C7
    ld d, e                                       ; $6F93: $53
    ld b, b                                       ; $6F94: $40
    dec h                                         ; $6F95: $25
    inc bc                                        ; $6F96: $03
    ld d, h                                       ; $6F97: $54
    ld b, b                                       ; $6F98: $40
    nop                                           ; $6F99: $00
    ld b, l                                       ; $6F9A: $45
    ld [de], a                                    ; $6F9B: $12
    ld h, h                                       ; $6F9C: $64
    ld l, a                                       ; $6F9D: $6F
    dec d                                         ; $6F9E: $15

jr_012_6F9F:
    db $10                                        ; $6F9F: $10
    ld e, e                                       ; $6FA0: $5B
    ld a, h                                       ; $6FA1: $7C
    ld b, b                                       ; $6FA2: $40
    db $10                                        ; $6FA3: $10
    rst $20                                       ; $6FA4: $E7
    ld a, e                                       ; $6FA5: $7B
    jr nc, jr_012_6FB8                            ; $6FA6: $30 $10

    ld d, c                                       ; $6FA8: $51
    ld a, h                                       ; $6FA9: $7C
    ld b, b                                       ; $6FAA: $40
    db $10                                        ; $6FAB: $10
    add e                                         ; $6FAC: $83
    ld a, h                                       ; $6FAD: $7C
    ld b, b                                       ; $6FAE: $40
    db $10                                        ; $6FAF: $10
    adc l                                         ; $6FB0: $8D
    ld a, h                                       ; $6FB1: $7C
    ld b, b                                       ; $6FB2: $40
    db $10                                        ; $6FB3: $10
    rst $30                                       ; $6FB4: $F7
    ld a, e                                       ; $6FB5: $7B
    jr nc, jr_012_6FC8                            ; $6FB6: $30 $10

jr_012_6FB8:
    ld h, l                                       ; $6FB8: $65
    ld a, h                                       ; $6FB9: $7C
    ld b, b                                       ; $6FBA: $40
    db $10                                        ; $6FBB: $10
    ld a, c                                       ; $6FBC: $79
    ld a, h                                       ; $6FBD: $7C
    ld b, b                                       ; $6FBE: $40
    db $10                                        ; $6FBF: $10
    ld l, a                                       ; $6FC0: $6F
    ld a, h                                       ; $6FC1: $7C
    ld b, b                                       ; $6FC2: $40
    nop                                           ; $6FC3: $00
    ld b, l                                       ; $6FC4: $45
    ld [de], a                                    ; $6FC5: $12
    sbc [hl]                                      ; $6FC6: $9E
    ld l, a                                       ; $6FC7: $6F

jr_012_6FC8:
    dec d                                         ; $6FC8: $15
    ld de, $49A7                                  ; $6FC9: $11 $A7 $49
    jr nc, @+$13                                  ; $6FCC: $30 $11

    dec hl                                        ; $6FCE: $2B
    ld c, d                                       ; $6FCF: $4A
    ld b, b                                       ; $6FD0: $40
    ld de, $49C7                                  ; $6FD1: $11 $C7 $49
    jr nc, @+$13                                  ; $6FD4: $30 $11

    dec [hl]                                      ; $6FD6: $35
    ld c, d                                       ; $6FD7: $4A
    ld b, b                                       ; $6FD8: $40
    ld de, $4A53                                  ; $6FD9: $11 $53 $4A
    ld b, b                                       ; $6FDC: $40
    ld de, $49B7                                  ; $6FDD: $11 $B7 $49
    jr nc, @+$13                                  ; $6FE0: $30 $11

    ld hl, $404A                                  ; $6FE2: $21 $4A $40
    ld de, $4A5D                                  ; $6FE5: $11 $5D $4A
    ld b, b                                       ; $6FE8: $40
    ld de, $4997                                  ; $6FE9: $11 $97 $49
    jr nc, jr_012_6FFF                            ; $6FEC: $30 $11

    ld hl, $404A                                  ; $6FEE: $21 $4A $40
    ld de, $4A5D                                  ; $6FF1: $11 $5D $4A
    ld b, b                                       ; $6FF4: $40
    nop                                           ; $6FF5: $00
    ld b, l                                       ; $6FF6: $45
    ld [de], a                                    ; $6FF7: $12
    ret z                                         ; $6FF8: $C8

    ld l, a                                       ; $6FF9: $6F
    dec d                                         ; $6FFA: $15
    db $10                                        ; $6FFB: $10
    and a                                         ; $6FFC: $A7
    ld [hl], d                                    ; $6FFD: $72
    ld b, b                                       ; $6FFE: $40

jr_012_6FFF:
    db $10                                        ; $6FFF: $10
    inc sp                                        ; $7000: $33
    ld [hl], d                                    ; $7001: $72
    ld b, b                                       ; $7002: $40
    db $10                                        ; $7003: $10
    and a                                         ; $7004: $A7
    ld [hl], d                                    ; $7005: $72
    ld b, b                                       ; $7006: $40
    db $10                                        ; $7007: $10
    inc de                                        ; $7008: $13
    ld [hl], d                                    ; $7009: $72
    db $10                                        ; $700A: $10
    db $10                                        ; $700B: $10
    and a                                         ; $700C: $A7
    ld [hl], d                                    ; $700D: $72
    ld b, b                                       ; $700E: $40
    db $10                                        ; $700F: $10
    rst $08                                       ; $7010: $CF
    ld [hl], d                                    ; $7011: $72
    ld b, b                                       ; $7012: $40
    db $10                                        ; $7013: $10
    cp e                                          ; $7014: $BB
    ld [hl], d                                    ; $7015: $72
    ld b, b                                       ; $7016: $40
    db $10                                        ; $7017: $10
    inc hl                                        ; $7018: $23
    ld [hl], d                                    ; $7019: $72
    jr nz, jr_012_702C                            ; $701A: $20 $10

    reti                                          ; $701C: $D9


    ld [hl], d                                    ; $701D: $72
    ld b, b                                       ; $701E: $40
    db $10                                        ; $701F: $10
    push bc                                       ; $7020: $C5
    ld [hl], d                                    ; $7021: $72
    ld b, b                                       ; $7022: $40
    db $10                                        ; $7023: $10
    inc de                                        ; $7024: $13
    ld [hl], d                                    ; $7025: $72
    db $10                                        ; $7026: $10
    db $10                                        ; $7027: $10
    and a                                         ; $7028: $A7
    ld [hl], d                                    ; $7029: $72
    ld b, b                                       ; $702A: $40
    db $10                                        ; $702B: $10

jr_012_702C:
    ld b, e                                       ; $702C: $43
    ld [hl], d                                    ; $702D: $72
    ld b, b                                       ; $702E: $40
    db $10                                        ; $702F: $10
    sbc l                                         ; $7030: $9D
    ld [hl], d                                    ; $7031: $72
    jr nz, jr_012_7044                            ; $7032: $20 $10

    rst $08                                       ; $7034: $CF
    ld [hl], d                                    ; $7035: $72
    jr nz, jr_012_7048                            ; $7036: $20 $10

    and a                                         ; $7038: $A7
    ld [hl], d                                    ; $7039: $72
    jr nz, jr_012_704C                            ; $703A: $20 $10

    cp e                                          ; $703C: $BB
    ld [hl], d                                    ; $703D: $72
    jr nz, jr_012_7050                            ; $703E: $20 $10

    sub e                                         ; $7040: $93
    ld [hl], d                                    ; $7041: $72
    jr nz, @+$12                                  ; $7042: $20 $10

jr_012_7044:
    push bc                                       ; $7044: $C5
    ld [hl], d                                    ; $7045: $72
    jr nz, jr_012_7058                            ; $7046: $20 $10

jr_012_7048:
    or c                                          ; $7048: $B1
    ld [hl], d                                    ; $7049: $72
    jr nz, jr_012_705C                            ; $704A: $20 $10

jr_012_704C:
    reti                                          ; $704C: $D9


    ld [hl], d                                    ; $704D: $72
    jr nz, jr_012_7050                            ; $704E: $20 $00

jr_012_7050:
    ld b, l                                       ; $7050: $45
    ld [de], a                                    ; $7051: $12

jr_012_7052:
    ld a, [$156F]                                 ; $7052: $FA $6F $15
    rrca                                          ; $7055: $0F
    ld sp, hl                                     ; $7056: $F9
    ld a, e                                       ; $7057: $7B

jr_012_7058:
    ld b, b                                       ; $7058: $40
    nop                                           ; $7059: $00
    ld b, l                                       ; $705A: $45
    ld [de], a                                    ; $705B: $12

jr_012_705C:
    ld d, h                                       ; $705C: $54
    ld [hl], b                                    ; $705D: $70
    ld [bc], a                                    ; $705E: $02
    nop                                           ; $705F: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    jr nc, jr_012_7052                            ; $7063: $30 $ED

    ld d, [hl]                                    ; $7065: $56
    jr nz, jr_012_708D                            ; $7066: $20 $25

    ld [bc], a                                    ; $7068: $02
    ld h, e                                       ; $7069: $63
    rrca                                          ; $706A: $0F
    ld c, h                                       ; $706B: $4C
    inc hl                                        ; $706C: $23
    ld b, b                                       ; $706D: $40
    dec hl                                        ; $706E: $2B
    xor d                                         ; $706F: $AA
    dec a                                         ; $7070: $3D
    db $D3                                        ; $7071: $D3
    rlca                                          ; $7072: $07
    nop                                           ; $7073: $00
    xor d                                         ; $7074: $AA
    ld a, $D3                                     ; $7075: $3E $D3
    rlca                                          ; $7077: $07
    ld h, h                                       ; $7078: $64
    ld l, $09                                     ; $7079: $2E $09
    ld b, d                                       ; $707B: $42
    dec c                                         ; $707C: $0D
    add hl, de                                    ; $707D: $19
    nop                                           ; $707E: $00
    dec hl                                        ; $707F: $2B
    ld l, $09                                     ; $7080: $2E $09
    jr z, jr_012_7091                             ; $7082: $28 $0D

    add hl, de                                    ; $7084: $19
    nop                                           ; $7085: $00
    dec hl                                        ; $7086: $2B
    jr z, @+$0B                                   ; $7087: $28 $09

    pop bc                                        ; $7089: $C1
    ld [hl], b                                    ; $708A: $70

jr_012_708B:
    db $10                                        ; $708B: $10
    dec hl                                        ; $708C: $2B

jr_012_708D:
    ld l, $09                                     ; $708D: $2E $09
    ld b, d                                       ; $708F: $42
    inc c                                         ; $7090: $0C

jr_012_7091:
    ld e, $00                                     ; $7091: $1E $00
    dec hl                                        ; $7093: $2B
    ld b, [hl]                                    ; $7094: $46
    adc l                                         ; $7095: $8D
    ld [hl], b                                    ; $7096: $70
    ld [bc], a                                    ; $7097: $02
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709A: $00
    nop                                           ; $709B: $00
    jr nc, jr_012_708B                            ; $709C: $30 $ED

    ld d, [hl]                                    ; $709E: $56
    jr nz, jr_012_70C6                            ; $709F: $20 $25

    ld [bc], a                                    ; $70A1: $02
    ld h, h                                       ; $70A2: $64
    db $10                                        ; $70A3: $10
    ld c, h                                       ; $70A4: $4C
    inc hl                                        ; $70A5: $23
    ld b, b                                       ; $70A6: $40
    dec hl                                        ; $70A7: $2B
    xor d                                         ; $70A8: $AA
    dec a                                         ; $70A9: $3D
    db $D3                                        ; $70AA: $D3
    rlca                                          ; $70AB: $07
    nop                                           ; $70AC: $00
    xor d                                         ; $70AD: $AA
    ld a, $D3                                     ; $70AE: $3E $D3
    rlca                                          ; $70B0: $07
    sub [hl]                                      ; $70B1: $96
    ld l, $09                                     ; $70B2: $2E $09
    ld de, $1C0E                                  ; $70B4: $11 $0E $1C
    nop                                           ; $70B7: $00
    dec hl                                        ; $70B8: $2B
    ld l, $09                                     ; $70B9: $2E $09
    jr z, jr_012_70CB                             ; $70BB: $28 $0E

    add hl, de                                    ; $70BD: $19
    nop                                           ; $70BE: $00
    dec hl                                        ; $70BF: $2B
    daa                                           ; $70C0: $27
    ld [bc], a                                    ; $70C1: $02
    nop                                           ; $70C2: $00
    nop                                           ; $70C3: $00
    nop                                           ; $70C4: $00
    nop                                           ; $70C5: $00

jr_012_70C6:
    jr nc, @-$11                                  ; $70C6: $30 $ED

    ld d, [hl]                                    ; $70C8: $56
    jr nz, @+$27                                  ; $70C9: $20 $25

jr_012_70CB:
    ld [bc], a                                    ; $70CB: $02
    ld h, l                                       ; $70CC: $65
    rrca                                          ; $70CD: $0F
    ld c, h                                       ; $70CE: $4C
    inc hl                                        ; $70CF: $23
    ld b, b                                       ; $70D0: $40
    dec hl                                        ; $70D1: $2B
    xor d                                         ; $70D2: $AA
    dec a                                         ; $70D3: $3D
    db $D3                                        ; $70D4: $D3
    rlca                                          ; $70D5: $07
    nop                                           ; $70D6: $00
    xor d                                         ; $70D7: $AA
    ld a, $D3                                     ; $70D8: $3E $D3
    rlca                                          ; $70DA: $07
    sub [hl]                                      ; $70DB: $96
    ld l, $09                                     ; $70DC: $2E $09
    ld [hl+], a                                   ; $70DE: $22
    dec c                                         ; $70DF: $0D
    ld a, [de]                                    ; $70E0: $1A
    nop                                           ; $70E1: $00
    dec hl                                        ; $70E2: $2B
    ld l, $09                                     ; $70E3: $2E $09
    ld c, [hl]                                    ; $70E5: $4E
    dec c                                         ; $70E6: $0D
    jr jr_012_70E9                                ; $70E7: $18 $00

jr_012_70E9:
    dec hl                                        ; $70E9: $2B
    cpl                                           ; $70EA: $2F
    add hl, bc                                    ; $70EB: $09
    ld d, e                                       ; $70EC: $53
    ld e, a                                       ; $70ED: $5F
    ld [$2E2B], sp                                ; $70EE: $08 $2B $2E
    add hl, bc                                    ; $70F1: $09
    jr @+$0F                                      ; $70F2: $18 $0D

    jr jr_012_70F6                                ; $70F4: $18 $00

jr_012_70F6:
    dec hl                                        ; $70F6: $2B
    cpl                                           ; $70F7: $2F
    add hl, bc                                    ; $70F8: $09
    ld [hl], l                                    ; $70F9: $75
    ld e, a                                       ; $70FA: $5F
    ld [$452B], sp                                ; $70FB: $08 $2B $45
    ld [de], a                                    ; $70FE: $12
    ld [$0270], a                                 ; $70FF: $EA $70 $02
    nop                                           ; $7102: $00
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    jr nc, @-$11                                  ; $7106: $30 $ED

    ld d, [hl]                                    ; $7108: $56
    jr nz, jr_012_7130                            ; $7109: $20 $25

    ld [bc], a                                    ; $710B: $02
    ld h, [hl]                                    ; $710C: $66
    rrca                                          ; $710D: $0F
    ld c, h                                       ; $710E: $4C
    inc hl                                        ; $710F: $23
    ld b, b                                       ; $7110: $40
    dec hl                                        ; $7111: $2B
    xor d                                         ; $7112: $AA
    dec a                                         ; $7113: $3D
    db $D3                                        ; $7114: $D3
    rlca                                          ; $7115: $07
    nop                                           ; $7116: $00
    xor d                                         ; $7117: $AA
    ld a, $D3                                     ; $7118: $3E $D3
    rlca                                          ; $711A: $07
    sub [hl]                                      ; $711B: $96
    ld l, $09                                     ; $711C: $2E $09
    ld de, $1E0D                                  ; $711E: $11 $0D $1E
    nop                                           ; $7121: $00
    dec hl                                        ; $7122: $2B
    ld l, $09                                     ; $7123: $2E $09
    ld c, [hl]                                    ; $7125: $4E
    db $10                                        ; $7126: $10
    jr nz, jr_012_7129                            ; $7127: $20 $00

jr_012_7129:
    dec hl                                        ; $7129: $2B
    daa                                           ; $712A: $27
    ld [bc], a                                    ; $712B: $02
    nop                                           ; $712C: $00
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    nop                                           ; $712F: $00

jr_012_7130:
    jr nc, @-$11                                  ; $7130: $30 $ED

    ld d, [hl]                                    ; $7132: $56
    jr nz, jr_012_715A                            ; $7133: $20 $25

    ld [bc], a                                    ; $7135: $02
    ld h, a                                       ; $7136: $67
    rrca                                          ; $7137: $0F
    ld c, h                                       ; $7138: $4C
    inc hl                                        ; $7139: $23
    ld b, b                                       ; $713A: $40
    dec hl                                        ; $713B: $2B
    xor d                                         ; $713C: $AA
    dec a                                         ; $713D: $3D
    db $D3                                        ; $713E: $D3
    rlca                                          ; $713F: $07
    nop                                           ; $7140: $00
    xor d                                         ; $7141: $AA
    ld a, $D3                                     ; $7142: $3E $D3
    rlca                                          ; $7144: $07
    sub [hl]                                      ; $7145: $96
    ld l, $09                                     ; $7146: $2E $09
    ld de, $1E0F                                  ; $7148: $11 $0F $1E
    nop                                           ; $714B: $00
    dec hl                                        ; $714C: $2B
    ld l, $09                                     ; $714D: $2E $09
    ld b, h                                       ; $714F: $44
    ld c, $1C                                     ; $7150: $0E $1C
    nop                                           ; $7152: $00
    dec hl                                        ; $7153: $2B
    daa                                           ; $7154: $27
    ld [bc], a                                    ; $7155: $02
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00

jr_012_715A:
    jr nc, @-$11                                  ; $715A: $30 $ED

    ld d, [hl]                                    ; $715C: $56
    jr nz, @+$27                                  ; $715D: $20 $25

    ld [bc], a                                    ; $715F: $02
    ld l, b                                       ; $7160: $68
    inc d                                         ; $7161: $14
    ld c, h                                       ; $7162: $4C
    inc hl                                        ; $7163: $23
    ld b, b                                       ; $7164: $40
    dec hl                                        ; $7165: $2B
    xor d                                         ; $7166: $AA
    dec a                                         ; $7167: $3D
    db $D3                                        ; $7168: $D3
    rlca                                          ; $7169: $07
    nop                                           ; $716A: $00
    xor d                                         ; $716B: $AA
    ld a, $D3                                     ; $716C: $3E $D3
    rlca                                          ; $716E: $07
    sub [hl]                                      ; $716F: $96
    ld l, $09                                     ; $7170: $2E $09
    ld [hl+], a                                   ; $7172: $22
    inc d                                         ; $7173: $14
    jr z, jr_012_7176                             ; $7174: $28 $00

jr_012_7176:
    dec hl                                        ; $7176: $2B
    ld l, $09                                     ; $7177: $2E $09
    jr z, jr_012_718D                             ; $7179: $28 $12

    inc hl                                        ; $717B: $23
    nop                                           ; $717C: $00
    dec hl                                        ; $717D: $2B
    daa                                           ; $717E: $27
    xor h                                         ; $717F: $AC
    or d                                          ; $7180: $B2
    and d                                         ; $7181: $A2
    ld bc, $044B                                  ; $7182: $01 $4B $04
    ld [de], a                                    ; $7185: $12
    dec bc                                        ; $7186: $0B
    nop                                           ; $7187: $00
    sub a                                         ; $7188: $97
    ld l, e                                       ; $7189: $6B
    ld [de], a                                    ; $718A: $12
    inc c                                         ; $718B: $0C
    nop                                           ; $718C: $00

jr_012_718D:
    ld h, b                                       ; $718D: $60
    ld l, h                                       ; $718E: $6C
    ld [de], a                                    ; $718F: $12
    dec c                                         ; $7190: $0D
    nop                                           ; $7191: $00
    and e                                         ; $7192: $A3
    ld l, [hl]                                    ; $7193: $6E
    ld [de], a                                    ; $7194: $12
    ld c, $00                                     ; $7195: $0E $00
    ld [c], a                                     ; $7197: $E2
    ld l, l                                       ; $7198: $6D
    ld [de], a                                    ; $7199: $12
    rrca                                          ; $719A: $0F
    nop                                           ; $719B: $00
    ld [c], a                                     ; $719C: $E2
    ld l, l                                       ; $719D: $6D
    ld [de], a                                    ; $719E: $12
    stop                                          ; $719F: $10 $00
    ei                                            ; $71A1: $FB
    ld h, a                                       ; $71A2: $67
    rst $38                                       ; $71A3: $FF
    ld b, e                                       ; $71A4: $43
    nop                                           ; $71A5: $00
    and l                                         ; $71A6: $A5
    and c                                         ; $71A7: $A1
    inc b                                         ; $71A8: $04
    ld [de], a                                    ; $71A9: $12
    ld hl, $936D                                  ; $71AA: $21 $6D $93
    ld h, l                                       ; $71AD: $65
    jp hl                                         ; $71AE: $E9


    ld b, a                                       ; $71AF: $47
    ld c, a                                       ; $71B0: $4F
    ld h, h                                       ; $71B1: $64
    or $49                                        ; $71B2: $F6 $49
    ld h, [hl]                                    ; $71B4: $66
    ret nz                                        ; $71B5: $C0

    ld e, h                                       ; $71B6: $5C
    ld hl, $0005                                  ; $71B7: $21 $05 $00
    add c                                         ; $71BA: $81
    ld e, l                                       ; $71BB: $5D
    ld c, $01                                     ; $71BC: $0E $01

jr_012_71BE:
    ld [hl], $D0                                  ; $71BE: $36 $D0
    nop                                           ; $71C0: $00
    jr nz, jr_012_71BE                            ; $71C1: $20 $FB

    ld d, b                                       ; $71C3: $50
    ld [hl+], a                                   ; $71C4: $22
    dec b                                         ; $71C5: $05
    ld b, b                                       ; $71C6: $40
    dec b                                         ; $71C7: $05
    ld [bc], a                                    ; $71C8: $02
    db $ED                                        ; $71C9: $ED
    ld h, e                                       ; $71CA: $63
    dec de                                        ; $71CB: $1B
    jr nz, jr_012_71E9                            ; $71CC: $20 $1B

    push de                                       ; $71CE: $D5
    nop                                           ; $71CF: $00
    ld [de], a                                    ; $71D0: $12
    ld h, h                                       ; $71D1: $64
    ld l, a                                       ; $71D2: $6F
    ld [de], a                                    ; $71D3: $12
    ld d, l                                       ; $71D4: $55
    ld [hl], d                                    ; $71D5: $72
    dec b                                         ; $71D6: $05
    inc bc                                        ; $71D7: $03
    db $ED                                        ; $71D8: $ED
    ld h, e                                       ; $71D9: $63
    ld a, [bc]                                    ; $71DA: $0A
    dec de                                        ; $71DB: $1B
    ld b, d                                       ; $71DC: $42
    call nc, $1226                                ; $71DD: $D4 $26 $12
    sbc [hl]                                      ; $71E0: $9E
    ld l, a                                       ; $71E1: $6F
    ld [de], a                                    ; $71E2: $12
    ld e, l                                       ; $71E3: $5D
    ld [hl], d                                    ; $71E4: $72
    dec b                                         ; $71E5: $05
    inc b                                         ; $71E6: $04
    db $ED                                        ; $71E7: $ED
    ld h, e                                       ; $71E8: $63

jr_012_71E9:
    rra                                           ; $71E9: $1F
    dec d                                         ; $71EA: $15
    ld h, a                                       ; $71EB: $67
    db $D3                                        ; $71EC: $D3
    ld d, b                                       ; $71ED: $50
    ld [de], a                                    ; $71EE: $12
    ret z                                         ; $71EF: $C8

    ld l, a                                       ; $71F0: $6F
    ld [de], a                                    ; $71F1: $12
    ld h, l                                       ; $71F2: $65
    ld [hl], d                                    ; $71F3: $72
    dec b                                         ; $71F4: $05
    dec b                                         ; $71F5: $05
    adc $63                                       ; $71F6: $CE $63
    ld bc, $2901                                  ; $71F8: $01 $01 $29
    ret nc                                        ; $71FB: $D0

    sub l                                         ; $71FC: $95
    ld l, $E3                                     ; $71FD: $2E $E3
    ld d, l                                       ; $71FF: $55
    ld [hl+], a                                   ; $7200: $22
    dec b                                         ; $7201: $05
    ld b, b                                       ; $7202: $40
    dec b                                         ; $7203: $05
    ld b, $CE                                     ; $7204: $06 $CE
    ld h, e                                       ; $7206: $63
    ld bc, $2901                                  ; $7207: $01 $01 $29
    ret nc                                        ; $720A: $D0

    sub l                                         ; $720B: $95
    ld l, $E3                                     ; $720C: $2E $E3
    ld d, l                                       ; $720E: $55
    ld [hl+], a                                   ; $720F: $22
    dec b                                         ; $7210: $05
    ld b, b                                       ; $7211: $40
    dec b                                         ; $7212: $05
    rlca                                          ; $7213: $07
    adc $63                                       ; $7214: $CE $63
    ld bc, $2901                                  ; $7216: $01 $01 $29
    ret nc                                        ; $7219: $D0

    sub l                                         ; $721A: $95
    ld l, $E3                                     ; $721B: $2E $E3
    ld d, l                                       ; $721D: $55
    ld [hl+], a                                   ; $721E: $22
    dec b                                         ; $721F: $05
    ld b, b                                       ; $7220: $40
    dec bc                                        ; $7221: $0B
    nop                                           ; $7222: $00
    dec bc                                        ; $7223: $0B
    ld [bc], a                                    ; $7224: $02
    dec bc                                        ; $7225: $0B
    inc bc                                        ; $7226: $03
    dec bc                                        ; $7227: $0B
    inc b                                         ; $7228: $04
    dec bc                                        ; $7229: $0B
    dec b                                         ; $722A: $05
    dec bc                                        ; $722B: $0B
    ld b, $0B                                     ; $722C: $06 $0B
    rlca                                          ; $722E: $07
    ld l, e                                       ; $722F: $6B
    ld h, $0C                                     ; $7230: $26 $0C
    sub b                                         ; $7232: $90
    ld l, l                                       ; $7233: $6D
    nop                                           ; $7234: $00
    add b                                         ; $7235: $80
    nop                                           ; $7236: $00
    ld l, e                                       ; $7237: $6B
    ld a, [hl+]                                   ; $7238: $2A
    inc c                                         ; $7239: $0C
    nop                                           ; $723A: $00
    ld h, l                                       ; $723B: $65
    ld h, b                                       ; $723C: $60
    add d                                         ; $723D: $82
    nop                                           ; $723E: $00
    ld l, e                                       ; $723F: $6B
    dec hl                                        ; $7240: $2B
    dec bc                                        ; $7241: $0B
    add b                                         ; $7242: $80
    ld c, h                                       ; $7243: $4C
    nop                                           ; $7244: $00
    add l                                         ; $7245: $85
    nop                                           ; $7246: $00
    ld l, e                                       ; $7247: $6B
    ld b, $0D                                     ; $7248: $06 $0D
    ld [hl], b                                    ; $724A: $70
    ld e, e                                       ; $724B: $5B
    ld d, b                                       ; $724C: $50
    adc c                                         ; $724D: $89
    nop                                           ; $724E: $00
    nop                                           ; $724F: $00
    add d                                         ; $7250: $82
    rra                                           ; $7251: $1F
    dec e                                         ; $7252: $1D
    sub h                                         ; $7253: $94
    ld b, d                                       ; $7254: $42
    ld e, e                                       ; $7255: $5B
    ld [de], a                                    ; $7256: $12
    ld h, d                                       ; $7257: $62
    ld d, b                                       ; $7258: $50
    ld b, l                                       ; $7259: $45
    dec h                                         ; $725A: $25
    ld hl, $5B54                                  ; $725B: $21 $54 $5B
    ld [de], a                                    ; $725E: $12
    adc a                                         ; $725F: $8F
    ld d, b                                       ; $7260: $50
    ld b, l                                       ; $7261: $45
    db $10                                        ; $7262: $10
    sub a                                         ; $7263: $97
    ld a, h                                       ; $7264: $7C
    ld e, e                                       ; $7265: $5B
    ld [de], a                                    ; $7266: $12
    and l                                         ; $7267: $A5
    ld d, b                                       ; $7268: $50
    ld b, l                                       ; $7269: $45
    ld de, $4A67                                  ; $726A: $11 $67 $4A
    dec d                                         ; $726D: $15
    dec h                                         ; $726E: $25
    ld l, l                                       ; $726F: $6D
    ld d, e                                       ; $7270: $53
    ld b, b                                       ; $7271: $40
    dec h                                         ; $7272: $25
    db $DB                                        ; $7273: $DB
    ld d, e                                       ; $7274: $53
    ld b, b                                       ; $7275: $40
    dec h                                         ; $7276: $25
    inc bc                                        ; $7277: $03
    ld d, h                                       ; $7278: $54
    ld b, b                                       ; $7279: $40
    dec h                                         ; $727A: $25
    rst $28                                       ; $727B: $EF
    ld d, e                                       ; $727C: $53
    ld b, b                                       ; $727D: $40
    dec h                                         ; $727E: $25
    dec a                                         ; $727F: $3D
    ld d, e                                       ; $7280: $53
    jr nz, jr_012_72A8                            ; $7281: $20 $25

    ld sp, hl                                     ; $7283: $F9
    ld d, e                                       ; $7284: $53
    ld b, b                                       ; $7285: $40
    dec h                                         ; $7286: $25
    push hl                                       ; $7287: $E5
    ld d, e                                       ; $7288: $53
    ld b, b                                       ; $7289: $40
    dec h                                         ; $728A: $25
    ld e, l                                       ; $728B: $5D
    ld d, e                                       ; $728C: $53
    ld b, b                                       ; $728D: $40
    dec h                                         ; $728E: $25
    ld sp, hl                                     ; $728F: $F9
    ld d, e                                       ; $7290: $53
    ld b, b                                       ; $7291: $40
    dec h                                         ; $7292: $25
    push hl                                       ; $7293: $E5
    ld d, e                                       ; $7294: $53
    ld b, b                                       ; $7295: $40
    dec h                                         ; $7296: $25
    ld c, l                                       ; $7297: $4D
    ld d, e                                       ; $7298: $53
    jr nz, @+$27                                  ; $7299: $20 $25

    rst $00                                       ; $729B: $C7
    ld d, e                                       ; $729C: $53
    ld b, b                                       ; $729D: $40
    dec h                                         ; $729E: $25
    inc bc                                        ; $729F: $03
    ld d, h                                       ; $72A0: $54
    ld b, b                                       ; $72A1: $40
    nop                                           ; $72A2: $00
    ld b, l                                       ; $72A3: $45
    ld [de], a                                    ; $72A4: $12
    ld l, l                                       ; $72A5: $6D
    ld [hl], d                                    ; $72A6: $72
    dec d                                         ; $72A7: $15

jr_012_72A8:
    db $10                                        ; $72A8: $10
    ld e, e                                       ; $72A9: $5B
    ld a, h                                       ; $72AA: $7C
    ld b, b                                       ; $72AB: $40
    db $10                                        ; $72AC: $10
    rst $20                                       ; $72AD: $E7
    ld a, e                                       ; $72AE: $7B
    jr nc, jr_012_72C1                            ; $72AF: $30 $10

    ld d, c                                       ; $72B1: $51
    ld a, h                                       ; $72B2: $7C
    ld b, b                                       ; $72B3: $40
    db $10                                        ; $72B4: $10
    add e                                         ; $72B5: $83
    ld a, h                                       ; $72B6: $7C
    ld b, b                                       ; $72B7: $40
    db $10                                        ; $72B8: $10
    adc l                                         ; $72B9: $8D
    ld a, h                                       ; $72BA: $7C
    ld b, b                                       ; $72BB: $40
    db $10                                        ; $72BC: $10
    rst $30                                       ; $72BD: $F7
    ld a, e                                       ; $72BE: $7B
    jr nc, jr_012_72D1                            ; $72BF: $30 $10

jr_012_72C1:
    ld h, l                                       ; $72C1: $65
    ld a, h                                       ; $72C2: $7C
    ld b, b                                       ; $72C3: $40
    db $10                                        ; $72C4: $10
    ld a, c                                       ; $72C5: $79
    ld a, h                                       ; $72C6: $7C
    ld b, b                                       ; $72C7: $40
    db $10                                        ; $72C8: $10
    ld l, a                                       ; $72C9: $6F
    ld a, h                                       ; $72CA: $7C
    ld b, b                                       ; $72CB: $40
    nop                                           ; $72CC: $00
    ld b, l                                       ; $72CD: $45
    ld [de], a                                    ; $72CE: $12
    and a                                         ; $72CF: $A7
    ld [hl], d                                    ; $72D0: $72

jr_012_72D1:
    dec d                                         ; $72D1: $15
    ld de, $49A7                                  ; $72D2: $11 $A7 $49
    jr nc, @+$13                                  ; $72D5: $30 $11

    dec hl                                        ; $72D7: $2B
    ld c, d                                       ; $72D8: $4A
    ld b, b                                       ; $72D9: $40
    ld de, $49C7                                  ; $72DA: $11 $C7 $49
    jr nc, @+$13                                  ; $72DD: $30 $11

    dec [hl]                                      ; $72DF: $35
    ld c, d                                       ; $72E0: $4A
    ld b, b                                       ; $72E1: $40
    ld de, $4A53                                  ; $72E2: $11 $53 $4A
    ld b, b                                       ; $72E5: $40
    ld de, $49B7                                  ; $72E6: $11 $B7 $49
    jr nc, @+$13                                  ; $72E9: $30 $11

    ld hl, $404A                                  ; $72EB: $21 $4A $40
    ld de, $4A5D                                  ; $72EE: $11 $5D $4A
    ld b, b                                       ; $72F1: $40
    ld de, $4997                                  ; $72F2: $11 $97 $49
    jr nc, jr_012_7308                            ; $72F5: $30 $11

    ld hl, $404A                                  ; $72F7: $21 $4A $40
    ld de, $4A5D                                  ; $72FA: $11 $5D $4A
    ld b, b                                       ; $72FD: $40
    nop                                           ; $72FE: $00
    ld b, l                                       ; $72FF: $45
    ld [de], a                                    ; $7300: $12
    pop de                                        ; $7301: $D1
    ld [hl], d                                    ; $7302: $72
    dec d                                         ; $7303: $15
    db $10                                        ; $7304: $10
    and a                                         ; $7305: $A7
    ld [hl], d                                    ; $7306: $72
    ld b, b                                       ; $7307: $40

jr_012_7308:
    db $10                                        ; $7308: $10
    inc sp                                        ; $7309: $33
    ld [hl], d                                    ; $730A: $72
    ld b, b                                       ; $730B: $40
    db $10                                        ; $730C: $10
    and a                                         ; $730D: $A7
    ld [hl], d                                    ; $730E: $72
    ld b, b                                       ; $730F: $40
    db $10                                        ; $7310: $10
    inc de                                        ; $7311: $13
    ld [hl], d                                    ; $7312: $72
    db $10                                        ; $7313: $10
    db $10                                        ; $7314: $10
    and a                                         ; $7315: $A7
    ld [hl], d                                    ; $7316: $72
    ld b, b                                       ; $7317: $40
    db $10                                        ; $7318: $10
    rst $08                                       ; $7319: $CF
    ld [hl], d                                    ; $731A: $72
    ld b, b                                       ; $731B: $40
    db $10                                        ; $731C: $10
    cp e                                          ; $731D: $BB
    ld [hl], d                                    ; $731E: $72
    ld b, b                                       ; $731F: $40
    db $10                                        ; $7320: $10
    inc hl                                        ; $7321: $23
    ld [hl], d                                    ; $7322: $72
    jr nz, jr_012_7335                            ; $7323: $20 $10

    reti                                          ; $7325: $D9


    ld [hl], d                                    ; $7326: $72
    ld b, b                                       ; $7327: $40
    db $10                                        ; $7328: $10
    push bc                                       ; $7329: $C5
    ld [hl], d                                    ; $732A: $72
    ld b, b                                       ; $732B: $40
    db $10                                        ; $732C: $10
    inc de                                        ; $732D: $13
    ld [hl], d                                    ; $732E: $72
    db $10                                        ; $732F: $10
    db $10                                        ; $7330: $10
    and a                                         ; $7331: $A7
    ld [hl], d                                    ; $7332: $72
    ld b, b                                       ; $7333: $40
    db $10                                        ; $7334: $10

jr_012_7335:
    ld b, e                                       ; $7335: $43
    ld [hl], d                                    ; $7336: $72
    ld b, b                                       ; $7337: $40
    db $10                                        ; $7338: $10
    sbc l                                         ; $7339: $9D
    ld [hl], d                                    ; $733A: $72
    jr nz, jr_012_734D                            ; $733B: $20 $10

    rst $08                                       ; $733D: $CF
    ld [hl], d                                    ; $733E: $72
    jr nz, jr_012_7351                            ; $733F: $20 $10

    and a                                         ; $7341: $A7
    ld [hl], d                                    ; $7342: $72
    jr nz, jr_012_7355                            ; $7343: $20 $10

    cp e                                          ; $7345: $BB
    ld [hl], d                                    ; $7346: $72
    jr nz, jr_012_7359                            ; $7347: $20 $10

    sub e                                         ; $7349: $93
    ld [hl], d                                    ; $734A: $72
    jr nz, jr_012_735D                            ; $734B: $20 $10

jr_012_734D:
    push bc                                       ; $734D: $C5
    ld [hl], d                                    ; $734E: $72
    jr nz, jr_012_7361                            ; $734F: $20 $10

jr_012_7351:
    or c                                          ; $7351: $B1
    ld [hl], d                                    ; $7352: $72
    jr nz, jr_012_7365                            ; $7353: $20 $10

jr_012_7355:
    reti                                          ; $7355: $D9


    ld [hl], d                                    ; $7356: $72
    jr nz, jr_012_7359                            ; $7357: $20 $00

jr_012_7359:
    ld b, l                                       ; $7359: $45
    ld [de], a                                    ; $735A: $12
    inc bc                                        ; $735B: $03
    ld [hl], e                                    ; $735C: $73

jr_012_735D:
    dec d                                         ; $735D: $15
    rrca                                          ; $735E: $0F
    ld sp, hl                                     ; $735F: $F9
    ld a, e                                       ; $7360: $7B

jr_012_7361:
    ld b, b                                       ; $7361: $40
    nop                                           ; $7362: $00
    ld b, l                                       ; $7363: $45
    ld [de], a                                    ; $7364: $12

jr_012_7365:
    ld e, l                                       ; $7365: $5D
    ld [hl], e                                    ; $7366: $73
    xor h                                         ; $7367: $AC
    or d                                          ; $7368: $B2
    and d                                         ; $7369: $A2
    ld bc, $6593                                  ; $736A: $01 $93 $65
    jp hl                                         ; $736D: $E9


    ld b, a                                       ; $736E: $47
    ld c, a                                       ; $736F: $4F
    ld h, h                                       ; $7370: $64
    or $49                                        ; $7371: $F6 $49
    ld h, [hl]                                    ; $7373: $66
    ret nz                                        ; $7374: $C0

    ld e, h                                       ; $7375: $5C
    ld hl, $0005                                  ; $7376: $21 $05 $00
    ld l, e                                       ; $7379: $6B
    ld c, d                                       ; $737A: $4A
    rrca                                          ; $737B: $0F
    nop                                           ; $737C: $00
    rrca                                          ; $737D: $0F
    ret nc                                        ; $737E: $D0

    nop                                           ; $737F: $00
    ld [de], a                                    ; $7380: $12
    cp $73                                        ; $7381: $FE $73
    ld [hl+], a                                   ; $7383: $22
    dec b                                         ; $7384: $05
    ld b, b                                       ; $7385: $40
    dec b                                         ; $7386: $05
    ld [bc], a                                    ; $7387: $02
    ld l, e                                       ; $7388: $6B
    ld c, d                                       ; $7389: $4A
    ld c, $00                                     ; $738A: $0E $00
    ld c, $D0                                     ; $738C: $0E $D0
    nop                                           ; $738E: $00
    ld [de], a                                    ; $738F: $12
    db $FC                                        ; $7390: $FC
    ld [hl], h                                    ; $7391: $74
    ld [hl+], a                                   ; $7392: $22
    dec b                                         ; $7393: $05
    ld b, b                                       ; $7394: $40
    dec b                                         ; $7395: $05
    inc bc                                        ; $7396: $03
    ld l, e                                       ; $7397: $6B
    ld c, d                                       ; $7398: $4A
    jr @+$1F                                      ; $7399: $18 $1D

    and b                                         ; $739B: $A0
    call nc, $122B                                ; $739C: $D4 $2B $12
    db $EC                                        ; $739F: $EC
    ld [hl], l                                    ; $73A0: $75
    ld [hl+], a                                   ; $73A1: $22
    dec b                                         ; $73A2: $05
    ld b, b                                       ; $73A3: $40
    dec b                                         ; $73A4: $05
    inc b                                         ; $73A5: $04
    adc $63                                       ; $73A6: $CE $63
    ld bc, $2901                                  ; $73A8: $01 $01 $29
    ret nc                                        ; $73AB: $D0

    sub l                                         ; $73AC: $95
    ld l, $E3                                     ; $73AD: $2E $E3
    ld d, l                                       ; $73AF: $55
    ld [hl+], a                                   ; $73B0: $22
    dec b                                         ; $73B1: $05
    ld b, b                                       ; $73B2: $40
    dec b                                         ; $73B3: $05
    dec b                                         ; $73B4: $05
    adc $63                                       ; $73B5: $CE $63
    ld bc, $2901                                  ; $73B7: $01 $01 $29
    ret nc                                        ; $73BA: $D0

    sub l                                         ; $73BB: $95
    ld l, $E3                                     ; $73BC: $2E $E3
    ld d, l                                       ; $73BE: $55
    ld [hl+], a                                   ; $73BF: $22
    dec b                                         ; $73C0: $05
    ld b, b                                       ; $73C1: $40
    dec b                                         ; $73C2: $05
    ld b, $CE                                     ; $73C3: $06 $CE
    ld h, e                                       ; $73C5: $63
    ld bc, $2901                                  ; $73C6: $01 $01 $29
    ret nc                                        ; $73C9: $D0

    sub l                                         ; $73CA: $95
    ld l, $E3                                     ; $73CB: $2E $E3
    ld d, l                                       ; $73CD: $55

jr_012_73CE:
    ld [hl+], a                                   ; $73CE: $22
    dec b                                         ; $73CF: $05
    ld b, b                                       ; $73D0: $40
    ld l, e                                       ; $73D1: $6B

jr_012_73D2:
    dec hl                                        ; $73D2: $2B
    dec bc                                        ; $73D3: $0B
    db $10                                        ; $73D4: $10
    ld l, d                                       ; $73D5: $6A
    nop                                           ; $73D6: $00
    add b                                         ; $73D7: $80
    nop                                           ; $73D8: $00
    ld l, e                                       ; $73D9: $6B
    ld a, [de]                                    ; $73DA: $1A
    inc c                                         ; $73DB: $0C
    ldh a, [rOCPD]                                ; $73DC: $F0 $6B
    or b                                          ; $73DE: $B0
    add d                                         ; $73DF: $82
    nop                                           ; $73E0: $00
    ld l, e                                       ; $73E1: $6B
    ld b, $0D                                     ; $73E2: $06 $0D

jr_012_73E4:
    ld [hl], b                                    ; $73E4: $70
    ld e, e                                       ; $73E5: $5B
    ld d, b                                       ; $73E6: $50
    adc c                                         ; $73E7: $89
    nop                                           ; $73E8: $00
    dec bc                                        ; $73E9: $0B
    nop                                           ; $73EA: $00
    dec bc                                        ; $73EB: $0B
    ld [bc], a                                    ; $73EC: $02
    dec bc                                        ; $73ED: $0B
    inc b                                         ; $73EE: $04
    dec bc                                        ; $73EF: $0B
    dec b                                         ; $73F0: $05
    dec bc                                        ; $73F1: $0B

jr_012_73F2:
    ld b, $82                                     ; $73F2: $06 $82
    rra                                           ; $73F4: $1F
    dec e                                         ; $73F5: $1D
    sub h                                         ; $73F6: $94
    ld h, b                                       ; $73F7: $60
    ld a, [bc]                                    ; $73F8: $0A
    ld b, l                                       ; $73F9: $45
    ld e, $49                                     ; $73FA: $1E $49
    ld l, d                                       ; $73FC: $6A
    ld b, d                                       ; $73FD: $42
    dec d                                         ; $73FE: $15
    jr nz, jr_012_73CE                            ; $73FF: $20 $CD

    ld c, a                                       ; $7401: $4F
    ld b, b                                       ; $7402: $40
    nop                                           ; $7403: $00
    ld d, $20                                     ; $7404: $16 $20
    call $A04F                                    ; $7406: $CD $4F $A0
    nop                                           ; $7409: $00
    ld bc, $DD20                                  ; $740A: $01 $20 $DD
    ld c, a                                       ; $740D: $4F
    ld h, b                                       ; $740E: $60
    rst $38                                       ; $740F: $FF
    nop                                           ; $7410: $00
    jr nz, jr_012_73D2                            ; $7411: $20 $BF

    ld d, b                                       ; $7413: $50
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00

jr_012_7416:
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    ld h, d                                       ; $7418: $62
    ld bc, $2015                                  ; $7419: $01 $15 $20
    rst $20                                       ; $741C: $E7
    ld d, b                                       ; $741D: $50
    inc b                                         ; $741E: $04
    jr nz, @-$53                                  ; $741F: $20 $AB

    ld d, b                                       ; $7421: $50
    inc b                                         ; $7422: $04
    jr nz, jr_012_7416                            ; $7423: $20 $F1

    ld d, b                                       ; $7425: $50

jr_012_7426:
    inc b                                         ; $7426: $04
    jr nz, jr_012_73F2                            ; $7427: $20 $C9

    ld d, b                                       ; $7429: $50
    nop                                           ; $742A: $00
    nop                                           ; $742B: $00
    ld e, e                                       ; $742C: $5B
    ld [de], a                                    ; $742D: $12
    sbc b                                         ; $742E: $98
    ld d, e                                       ; $742F: $53
    ld h, d                                       ; $7430: $62
    ld [bc], a                                    ; $7431: $02
    dec d                                         ; $7432: $15
    jr nz, jr_012_7426                            ; $7433: $20 $F1

    ld d, b                                       ; $7435: $50
    inc b                                         ; $7436: $04
    jr nz, jr_012_73E4                            ; $7437: $20 $AB

    ld d, b                                       ; $7439: $50
    inc b                                         ; $743A: $04
    jr nz, @-$17                                  ; $743B: $20 $E7

    ld d, b                                       ; $743D: $50

jr_012_743E:
    inc b                                         ; $743E: $04
    nop                                           ; $743F: $00
    ld d, $20                                     ; $7440: $16 $20
    call $A04F                                    ; $7442: $CD $4F $A0
    nop                                           ; $7445: $00
    ld bc, $CD20                                  ; $7446: $01 $20 $CD
    ld c, a                                       ; $7449: $4F
    ld h, b                                       ; $744A: $60
    nop                                           ; $744B: $00
    ld bc, $B520                                  ; $744C: $01 $20 $B5
    ld d, b                                       ; $744F: $50

jr_012_7450:
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    ld h, d                                       ; $7454: $62
    inc bc                                        ; $7455: $03
    ld d, $20                                     ; $7456: $16 $20
    db $ED                                        ; $7458: $ED
    ld c, a                                       ; $7459: $4F
    ld b, b                                       ; $745A: $40
    ld bc, $2000                                  ; $745B: $01 $00 $20
    dec sp                                        ; $745E: $3B
    ld d, l                                       ; $745F: $55
    ld b, b                                       ; $7460: $40
    nop                                           ; $7461: $00

jr_012_7462:
    nop                                           ; $7462: $00
    jr nz, @+$2F                                  ; $7463: $20 $2D

    ld d, b                                       ; $7465: $50
    db $10                                        ; $7466: $10
    rst $38                                       ; $7467: $FF
    nop                                           ; $7468: $00
    jr nz, jr_012_74A6                            ; $7469: $20 $3B

    ld d, l                                       ; $746B: $55
    jr nz, jr_012_746E                            ; $746C: $20 $00

jr_012_746E:
    nop                                           ; $746E: $00
    jr nz, @+$2F                                  ; $746F: $20 $2D

    ld d, b                                       ; $7471: $50

jr_012_7472:
    db $10                                        ; $7472: $10
    rst $38                                       ; $7473: $FF

jr_012_7474:
    nop                                           ; $7474: $00
    jr nz, @+$3D                                  ; $7475: $20 $3B

    ld d, l                                       ; $7477: $55
    jr nz, jr_012_747A                            ; $7478: $20 $00

jr_012_747A:
    nop                                           ; $747A: $00
    jr nz, @+$2F                                  ; $747B: $20 $2D

    ld d, b                                       ; $747D: $50
    db $10                                        ; $747E: $10
    rst $38                                       ; $747F: $FF
    nop                                           ; $7480: $00
    jr nz, jr_012_74BE                            ; $7481: $20 $3B

    ld d, l                                       ; $7483: $55
    jr nz, jr_012_7486                            ; $7484: $20 $00

jr_012_7486:
    nop                                           ; $7486: $00

jr_012_7487:
    nop                                           ; $7487: $00
    ld h, d                                       ; $7488: $62
    inc b                                         ; $7489: $04
    ld b, b                                       ; $748A: $40
    db $10                                        ; $748B: $10
    dec d                                         ; $748C: $15
    jr nz, @-$6D                                  ; $748D: $20 $91

    ld d, b                                       ; $748F: $50
    inc b                                         ; $7490: $04
    jr nz, @-$35                                  ; $7491: $20 $C9

    ld d, b                                       ; $7493: $50
    db $10                                        ; $7494: $10
    jr nz, jr_012_7474                            ; $7495: $20 $DD

    ld d, b                                       ; $7497: $50
    inc b                                         ; $7498: $04
    jr nz, jr_012_7450                            ; $7499: $20 $B5

    ld d, b                                       ; $749B: $50
    inc b                                         ; $749C: $04
    jr nz, jr_012_7472                            ; $749D: $20 $D3

    ld d, b                                       ; $749F: $50
    inc b                                         ; $74A0: $04
    jr nz, jr_012_7462                            ; $74A1: $20 $BF

    ld d, b                                       ; $74A3: $50

jr_012_74A4:
    nop                                           ; $74A4: $00
    nop                                           ; $74A5: $00

jr_012_74A6:
    ld h, d                                       ; $74A6: $62
    rlca                                          ; $74A7: $07
    ld b, b                                       ; $74A8: $40
    jr nc, jr_012_74C1                            ; $74A9: $30 $16

    jr nz, jr_012_743E                            ; $74AB: $20 $91

    ld d, b                                       ; $74AD: $50
    jr nz, @+$04                                  ; $74AE: $20 $02

    nop                                           ; $74B0: $00
    jr nz, jr_012_74A4                            ; $74B1: $20 $F1

    ld d, b                                       ; $74B3: $50
    nop                                           ; $74B4: $00
    nop                                           ; $74B5: $00
    nop                                           ; $74B6: $00
    nop                                           ; $74B7: $00
    ld e, e                                       ; $74B8: $5B
    ld [de], a                                    ; $74B9: $12

jr_012_74BA:
    pop af                                        ; $74BA: $F1
    ld d, a                                       ; $74BB: $57
    ld h, d                                       ; $74BC: $62
    ld d, b                                       ; $74BD: $50

jr_012_74BE:
    inc d                                         ; $74BE: $14
    jr nz, @-$49                                  ; $74BF: $20 $B5

jr_012_74C1:
    ld d, b                                       ; $74C1: $50
    ld h, d                                       ; $74C2: $62
    ld [$2040], sp                                ; $74C3: $08 $40 $20
    inc d                                         ; $74C6: $14
    jr nz, jr_012_74BA                            ; $74C7: $20 $F1

    ld d, b                                       ; $74C9: $50
    ld e, e                                       ; $74CA: $5B
    ld [de], a                                    ; $74CB: $12
    ld a, d                                       ; $74CC: $7A
    ld e, b                                       ; $74CD: $58
    ld h, d                                       ; $74CE: $62
    ld e, d                                       ; $74CF: $5A
    ld b, b                                       ; $74D0: $40
    db $10                                        ; $74D1: $10

jr_012_74D2:
    inc d                                         ; $74D2: $14
    jr nz, @-$35                                  ; $74D3: $20 $C9

    ld d, b                                       ; $74D5: $50
    ld a, h                                       ; $74D6: $7C
    jr jr_012_74F7                                ; $74D7: $18 $1E

    ld [bc], a                                    ; $74D9: $02
    dec bc                                        ; $74DA: $0B
    inc bc                                        ; $74DB: $03
    ld b, b                                       ; $74DC: $40
    ld b, b                                       ; $74DD: $40
    inc d                                         ; $74DE: $14
    jr nz, jr_012_74D2                            ; $74DF: $20 $F1

    ld d, b                                       ; $74E1: $50
    add e                                         ; $74E2: $83
    ld c, b                                       ; $74E3: $48
    cp $00                                        ; $74E4: $FE $00
    nop                                           ; $74E6: $00
    ld h, d                                       ; $74E7: $62
    add hl, bc                                    ; $74E8: $09
    ld b, b                                       ; $74E9: $40
    jr nz, jr_012_7547                            ; $74EA: $20 $5B

    ld [de], a                                    ; $74EC: $12
    and b                                         ; $74ED: $A0
    ld e, c                                       ; $74EE: $59
    ld h, d                                       ; $74EF: $62
    ld a, [bc]                                    ; $74F0: $0A
    ld b, b                                       ; $74F1: $40
    jr nz, jr_012_7509                            ; $74F2: $20 $15

    jr nz, jr_012_7487                            ; $74F4: $20 $91

    ld d, b                                       ; $74F6: $50

jr_012_74F7:
    ld d, b                                       ; $74F7: $50
    nop                                           ; $74F8: $00
    ld d, [hl]                                    ; $74F9: $56
    ld a, [bc]                                    ; $74FA: $0A
    ld b, d                                       ; $74FB: $42
    ld e, e                                       ; $74FC: $5B
    ld [de], a                                    ; $74FD: $12
    pop bc                                        ; $74FE: $C1
    ld d, d                                       ; $74FF: $52
    dec d                                         ; $7500: $15
    rrca                                          ; $7501: $0F
    ldh [$6C], a                                  ; $7502: $E0 $6C
    jr nz, @+$11                                  ; $7504: $20 $0F

    ld b, d                                       ; $7506: $42
    ld l, l                                       ; $7507: $6D
    db $10                                        ; $7508: $10

jr_012_7509:
    rrca                                          ; $7509: $0F
    ld l, $6D                                     ; $750A: $2E $6D
    db $10                                        ; $750C: $10
    rrca                                          ; $750D: $0F
    ld d, [hl]                                    ; $750E: $56
    ld l, l                                       ; $750F: $6D
    db $10                                        ; $7510: $10
    rrca                                          ; $7511: $0F
    ldh [$6C], a                                  ; $7512: $E0 $6C
    jr nz, @+$11                                  ; $7514: $20 $0F

    ld b, d                                       ; $7516: $42
    ld l, l                                       ; $7517: $6D
    db $10                                        ; $7518: $10
    rrca                                          ; $7519: $0F
    ldh [$6C], a                                  ; $751A: $E0 $6C
    jr nc, @+$11                                  ; $751C: $30 $0F

    nop                                           ; $751E: $00
    ld l, l                                       ; $751F: $6D
    ld [$100F], sp                                ; $7520: $08 $0F $10
    ld l, l                                       ; $7523: $6D
    jr @+$11                                      ; $7524: $18 $0F

    nop                                           ; $7526: $00
    ld l, l                                       ; $7527: $6D
    ld [$240F], sp                                ; $7528: $08 $0F $24
    ld l, l                                       ; $752B: $6D
    jr nz, jr_012_753D                            ; $752C: $20 $0F

    ldh a, [$6C]                                  ; $752E: $F0 $6C
    jr jr_012_7541                                ; $7530: $18 $0F

    or b                                          ; $7532: $B0
    ld l, h                                       ; $7533: $6C
    jr nc, jr_012_7545                            ; $7534: $30 $0F

    inc h                                         ; $7536: $24
    ld l, l                                       ; $7537: $6D
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    ld h, d                                       ; $753A: $62
    ld [bc], a                                    ; $753B: $02
    ld e, e                                       ; $753C: $5B

jr_012_753D:
    ld [de], a                                    ; $753D: $12
    sub $53                                       ; $753E: $D6 $53
    dec d                                         ; $7540: $15

jr_012_7541:
    rrca                                          ; $7541: $0F
    inc h                                         ; $7542: $24
    ld l, l                                       ; $7543: $6D
    db $10                                        ; $7544: $10

jr_012_7545:
    rrca                                          ; $7545: $0F
    ld c, h                                       ; $7546: $4C

jr_012_7547:
    ld l, l                                       ; $7547: $6D
    db $10                                        ; $7548: $10
    rrca                                          ; $7549: $0F
    ldh a, [$6C]                                  ; $754A: $F0 $6C
    db $10                                        ; $754C: $10
    rrca                                          ; $754D: $0F
    ldh [$6C], a                                  ; $754E: $E0 $6C
    jr nz, jr_012_7561                            ; $7550: $20 $0F

    ld d, [hl]                                    ; $7552: $56
    ld l, l                                       ; $7553: $6D
    db $10                                        ; $7554: $10
    rrca                                          ; $7555: $0F
    ldh [$6C], a                                  ; $7556: $E0 $6C
    jr nz, jr_012_7569                            ; $7558: $20 $0F

    ld b, d                                       ; $755A: $42
    ld l, l                                       ; $755B: $6D
    db $10                                        ; $755C: $10
    rrca                                          ; $755D: $0F
    ld l, $6D                                     ; $755E: $2E $6D
    db $10                                        ; $7560: $10

jr_012_7561:
    rrca                                          ; $7561: $0F
    nop                                           ; $7562: $00
    ld l, l                                       ; $7563: $6D
    ld [$1A0F], sp                                ; $7564: $08 $0F $1A
    ld l, l                                       ; $7567: $6D
    db $10                                        ; $7568: $10

jr_012_7569:
    rrca                                          ; $7569: $0F
    ldh [$6C], a                                  ; $756A: $E0 $6C
    jr @+$11                                      ; $756C: $18 $0F

    and b                                         ; $756E: $A0
    ld l, h                                       ; $756F: $6C
    jr nc, jr_012_7581                            ; $7570: $30 $0F

    ld a, [de]                                    ; $7572: $1A
    ld l, l                                       ; $7573: $6D
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    ld h, d                                       ; $7576: $62
    inc bc                                        ; $7577: $03
    dec d                                         ; $7578: $15
    rrca                                          ; $7579: $0F
    ld d, [hl]                                    ; $757A: $56
    ld l, l                                       ; $757B: $6D
    jr jr_012_758D                                ; $757C: $18 $0F

    ldh [$6C], a                                  ; $757E: $E0 $6C
    db $10                                        ; $7580: $10

jr_012_7581:
    rrca                                          ; $7581: $0F
    nop                                           ; $7582: $00
    ld l, l                                       ; $7583: $6D
    ld a, [de]                                    ; $7584: $1A
    rrca                                          ; $7585: $0F
    ld l, $6D                                     ; $7586: $2E $6D
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    ld e, e                                       ; $758A: $5B
    ld [de], a                                    ; $758B: $12
    ld l, b                                       ; $758C: $68

jr_012_758D:
    ld d, h                                       ; $758D: $54
    dec d                                         ; $758E: $15
    rrca                                          ; $758F: $0F
    ld l, $6D                                     ; $7590: $2E $6D
    ld b, b                                       ; $7592: $40
    rrca                                          ; $7593: $0F
    or b                                          ; $7594: $B0
    ld l, h                                       ; $7595: $6C
    db $10                                        ; $7596: $10
    rrca                                          ; $7597: $0F
    ld l, $6D                                     ; $7598: $2E $6D
    jr nz, jr_012_75AB                            ; $759A: $20 $0F

    or b                                          ; $759C: $B0
    ld l, h                                       ; $759D: $6C
    db $10                                        ; $759E: $10
    rrca                                          ; $759F: $0F
    ld l, $6D                                     ; $75A0: $2E $6D
    jr nz, jr_012_75B3                            ; $75A2: $20 $0F

    or b                                          ; $75A4: $B0
    ld l, h                                       ; $75A5: $6C
    db $10                                        ; $75A6: $10
    rrca                                          ; $75A7: $0F
    ld l, $6D                                     ; $75A8: $2E $6D
    nop                                           ; $75AA: $00

jr_012_75AB:
    nop                                           ; $75AB: $00
    ld h, d                                       ; $75AC: $62
    inc b                                         ; $75AD: $04
    ld b, b                                       ; $75AE: $40
    jr nz, @+$17                                  ; $75AF: $20 $15

    rrca                                          ; $75B1: $0F
    db $10                                        ; $75B2: $10

jr_012_75B3:
    ld l, l                                       ; $75B3: $6D
    db $10                                        ; $75B4: $10
    rrca                                          ; $75B5: $0F
    ld a, [de]                                    ; $75B6: $1A
    ld l, l                                       ; $75B7: $6D
    db $10                                        ; $75B8: $10
    rrca                                          ; $75B9: $0F
    inc h                                         ; $75BA: $24
    ld l, l                                       ; $75BB: $6D
    db $10                                        ; $75BC: $10
    rrca                                          ; $75BD: $0F
    ld l, $6D                                     ; $75BE: $2E $6D
    ld [$C00F], sp                                ; $75C0: $08 $0F $C0
    ld l, h                                       ; $75C3: $6C
    ld [$2E0F], sp                                ; $75C4: $08 $0F $2E
    ld l, l                                       ; $75C7: $6D
    nop                                           ; $75C8: $00
    nop                                           ; $75C9: $00
    ld e, e                                       ; $75CA: $5B
    ld [de], a                                    ; $75CB: $12
    jp nc, Jump_012_6254                          ; $75CC: $D2 $54 $62

    dec b                                         ; $75CF: $05
    ld e, e                                       ; $75D0: $5B
    ld [de], a                                    ; $75D1: $12
    ld a, l                                       ; $75D2: $7D
    ld d, [hl]                                    ; $75D3: $56
    ld h, d                                       ; $75D4: $62
    ld b, $5B                                     ; $75D5: $06 $5B
    ld [de], a                                    ; $75D7: $12
    ld d, c                                       ; $75D8: $51
    ld d, a                                       ; $75D9: $57
    ld h, d                                       ; $75DA: $62
    rlca                                          ; $75DB: $07
    dec d                                         ; $75DC: $15
    rrca                                          ; $75DD: $0F
    ret nc                                        ; $75DE: $D0

    ld l, h                                       ; $75DF: $6C
    ld [$000F], sp                                ; $75E0: $08 $0F $00
    ld l, l                                       ; $75E3: $6D
    ld b, b                                       ; $75E4: $40
    rrca                                          ; $75E5: $0F
    ret nc                                        ; $75E6: $D0

    ld l, h                                       ; $75E7: $6C
    ld d, b                                       ; $75E8: $50
    nop                                           ; $75E9: $00
    add hl, de                                    ; $75EA: $19
    ld b, d                                       ; $75EB: $42
    dec d                                         ; $75EC: $15
    dec h                                         ; $75ED: $25
    cp d                                          ; $75EE: $BA
    ld d, b                                       ; $75EF: $50
    jr nz, jr_012_7617                            ; $75F0: $20 $25

    ld c, b                                       ; $75F2: $48
    ld d, c                                       ; $75F3: $51
    db $10                                        ; $75F4: $10
    dec h                                         ; $75F5: $25
    ld a, $51                                     ; $75F6: $3E $51
    db $10                                        ; $75F8: $10
    dec h                                         ; $75F9: $25
    ld d, d                                       ; $75FA: $52
    ld d, c                                       ; $75FB: $51
    db $10                                        ; $75FC: $10
    dec h                                         ; $75FD: $25
    ld a, [bc]                                    ; $75FE: $0A
    ld d, c                                       ; $75FF: $51
    jr nc, jr_012_7627                            ; $7600: $30 $25

    ld [$5050], a                                 ; $7602: $EA $50 $50
    nop                                           ; $7605: $00
    add hl, de                                    ; $7606: $19
    ld b, d                                       ; $7607: $42
    xor h                                         ; $7608: $AC
    or d                                          ; $7609: $B2
    and d                                         ; $760A: $A2
    ld bc, $6593                                  ; $760B: $01 $93 $65
    jp hl                                         ; $760E: $E9


    ld b, a                                       ; $760F: $47
    ld c, a                                       ; $7610: $4F
    ld h, h                                       ; $7611: $64
    or $49                                        ; $7612: $F6 $49
    ld h, [hl]                                    ; $7614: $66
    ret nz                                        ; $7615: $C0

    ld e, h                                       ; $7616: $5C

jr_012_7617:
    ld hl, $0005                                  ; $7617: $21 $05 $00
    ld l, e                                       ; $761A: $6B
    ld c, d                                       ; $761B: $4A
    jr jr_012_763A                                ; $761C: $18 $1C

    ld a, b                                       ; $761E: $78
    call nc, $1200                                ; $761F: $D4 $00 $12
    sub h                                         ; $7622: $94
    halt                                          ; $7623: $76
    ld [hl+], a                                   ; $7624: $22
    dec b                                         ; $7625: $05
    ld b, b                                       ; $7626: $40

jr_012_7627:
    dec b                                         ; $7627: $05
    ld [bc], a                                    ; $7628: $02
    ld l, e                                       ; $7629: $6B
    ld c, d                                       ; $762A: $4A
    ld d, $09                                     ; $762B: $16 $09

jr_012_762D:
    ld a, [hl]                                    ; $762D: $7E
    pop de                                        ; $762E: $D1
    nop                                           ; $762F: $00
    ld [de], a                                    ; $7630: $12
    jp c, $2276                                   ; $7631: $DA $76 $22

    dec b                                         ; $7634: $05
    ld b, b                                       ; $7635: $40
    dec b                                         ; $7636: $05
    inc bc                                        ; $7637: $03
    ld l, e                                       ; $7638: $6B
    ld c, d                                       ; $7639: $4A

jr_012_763A:
    ld d, $08                                     ; $763A: $16 $08
    ld d, [hl]                                    ; $763C: $56
    pop de                                        ; $763D: $D1
    dec hl                                        ; $763E: $2B
    ld [de], a                                    ; $763F: $12
    dec de                                        ; $7640: $1B
    ld [hl], a                                    ; $7641: $77
    ld [hl+], a                                   ; $7642: $22
    dec b                                         ; $7643: $05
    ld b, b                                       ; $7644: $40
    dec b                                         ; $7645: $05
    inc b                                         ; $7646: $04
    ld l, e                                       ; $7647: $6B
    ld c, d                                       ; $7648: $4A
    inc de                                        ; $7649: $13
    ld b, $03                                     ; $764A: $06 $03
    pop de                                        ; $764C: $D1
    ld b, l                                       ; $764D: $45

jr_012_764E:
    ld de, $450B                                  ; $764E: $11 $0B $45
    ld [hl+], a                                   ; $7651: $22
    dec b                                         ; $7652: $05
    ld b, b                                       ; $7653: $40
    dec b                                         ; $7654: $05
    dec b                                         ; $7655: $05
    ld l, e                                       ; $7656: $6B
    ld c, d                                       ; $7657: $4A
    db $10                                        ; $7658: $10
    rlca                                          ; $7659: $07

jr_012_765A:
    jr z, jr_012_762D                             ; $765A: $28 $D1

    ld [hl], b                                    ; $765C: $70
    db $10                                        ; $765D: $10

jr_012_765E:
    sub a                                         ; $765E: $97
    ld e, h                                       ; $765F: $5C
    ld [hl+], a                                   ; $7660: $22
    dec b                                         ; $7661: $05
    ld b, b                                       ; $7662: $40
    ld l, e                                       ; $7663: $6B
    dec hl                                        ; $7664: $2B
    dec bc                                        ; $7665: $0B
    db $10                                        ; $7666: $10
    ld l, d                                       ; $7667: $6A
    nop                                           ; $7668: $00
    add b                                         ; $7669: $80
    nop                                           ; $766A: $00
    ld l, e                                       ; $766B: $6B
    ld a, [de]                                    ; $766C: $1A
    inc c                                         ; $766D: $0C
    ldh a, [rOCPD]                                ; $766E: $F0 $6B

jr_012_7670:
    or b                                          ; $7670: $B0
    add d                                         ; $7671: $82
    nop                                           ; $7672: $00
    ld l, e                                       ; $7673: $6B
    dec hl                                        ; $7674: $2B
    dec bc                                        ; $7675: $0B
    jr nz, jr_012_76BF                            ; $7676: $20 $47

    ld d, b                                       ; $7678: $50
    add h                                         ; $7679: $84
    nop                                           ; $767A: $00
    ld l, e                                       ; $767B: $6B

jr_012_767C:
    ld h, $0B                                     ; $767C: $26 $0B
    ld d, b                                       ; $767E: $50
    ld d, h                                       ; $767F: $54
    nop                                           ; $7680: $00
    add a                                         ; $7681: $87
    nop                                           ; $7682: $00
    dec bc                                        ; $7683: $0B
    nop                                           ; $7684: $00
    dec bc                                        ; $7685: $0B
    inc b                                         ; $7686: $04
    dec bc                                        ; $7687: $0B
    dec b                                         ; $7688: $05
    add d                                         ; $7689: $82
    rra                                           ; $768A: $1F
    dec e                                         ; $768B: $1D
    sub h                                         ; $768C: $94
    ld h, b                                       ; $768D: $60
    ld bc, $1E45                                  ; $768E: $01 $45 $1E
    ld [c], a                                     ; $7691: $E2
    ld d, l                                       ; $7692: $55
    ld b, d                                       ; $7693: $42
    dec d                                         ; $7694: $15
    jr nz, jr_012_76F4                            ; $7695: $20 $5D

    ld d, b                                       ; $7697: $50
    db $10                                        ; $7698: $10
    jr nz, @-$49                                  ; $7699: $20 $B5

    ld d, b                                       ; $769B: $50

jr_012_769C:
    db $10                                        ; $769C: $10
    jr nz, jr_012_765E                            ; $769D: $20 $BF

    ld d, b                                       ; $769F: $50
    db $10                                        ; $76A0: $10
    jr nz, jr_012_764E                            ; $76A1: $20 $AB

    ld d, b                                       ; $76A3: $50
    inc b                                         ; $76A4: $04
    jr nz, jr_012_7670                            ; $76A5: $20 $C9

    ld d, b                                       ; $76A7: $50
    db $10                                        ; $76A8: $10
    jr nz, jr_012_769C                            ; $76A9: $20 $F1

    ld d, b                                       ; $76AB: $50
    inc b                                         ; $76AC: $04
    jr nz, jr_012_765A                            ; $76AD: $20 $AB

    ld d, b                                       ; $76AF: $50
    db $10                                        ; $76B0: $10
    jr nz, @-$21                                  ; $76B1: $20 $DD

    ld c, a                                       ; $76B3: $4F
    jr nz, jr_012_76D6                            ; $76B4: $20 $20

    xor e                                         ; $76B6: $AB
    ld d, b                                       ; $76B7: $50
    nop                                           ; $76B8: $00
    nop                                           ; $76B9: $00
    dec bc                                        ; $76BA: $0B
    ld [bc], a                                    ; $76BB: $02
    dec bc                                        ; $76BC: $0B
    inc bc                                        ; $76BD: $03
    ld a, h                                       ; $76BE: $7C

jr_012_76BF:
    inc de                                        ; $76BF: $13
    add hl, bc                                    ; $76C0: $09
    inc b                                         ; $76C1: $04
    ld b, b                                       ; $76C2: $40
    jr nz, jr_012_76DE                            ; $76C3: $20 $19

    ld b, d                                       ; $76C5: $42
    dec d                                         ; $76C6: $15
    jr nz, jr_012_767C                            ; $76C7: $20 $B3

    ld c, a                                       ; $76C9: $4F
    jr nc, @+$22                                  ; $76CA: $30 $20

    xor e                                         ; $76CC: $AB
    ld d, b                                       ; $76CD: $50
    nop                                           ; $76CE: $00
    nop                                           ; $76CF: $00
    ld h, d                                       ; $76D0: $62
    inc c                                         ; $76D1: $0C
    dec d                                         ; $76D2: $15
    jr nz, @-$31                                  ; $76D3: $20 $CD

    ld c, a                                       ; $76D5: $4F

jr_012_76D6:
    ld b, b                                       ; $76D6: $40
    nop                                           ; $76D7: $00
    add hl, de                                    ; $76D8: $19
    ld b, d                                       ; $76D9: $42
    inc d                                         ; $76DA: $14
    rrca                                          ; $76DB: $0F
    inc h                                         ; $76DC: $24
    ld l, l                                       ; $76DD: $6D

jr_012_76DE:
    ld e, e                                       ; $76DE: $5B
    ld [de], a                                    ; $76DF: $12
    pop bc                                        ; $76E0: $C1
    ld e, c                                       ; $76E1: $59
    ld h, d                                       ; $76E2: $62
    dec bc                                        ; $76E3: $0B
    dec b                                         ; $76E4: $05
    nop                                           ; $76E5: $00
    ld l, e                                       ; $76E6: $6B
    ld c, d                                       ; $76E7: $4A
    dec d                                         ; $76E8: $15
    ld c, $45                                     ; $76E9: $0E $45
    jp nc, $1200                                  ; $76EB: $D2 $00 $12

    add $76                                       ; $76EE: $C6 $76
    ld [hl+], a                                   ; $76F0: $22
    dec b                                         ; $76F1: $05
    ld b, b                                       ; $76F2: $40
    dec bc                                        ; $76F3: $0B

jr_012_76F4:
    nop                                           ; $76F4: $00
    ld b, b                                       ; $76F5: $40
    jr nc, jr_012_770D                            ; $76F6: $30 $15

    rrca                                          ; $76F8: $0F
    ld a, [de]                                    ; $76F9: $1A
    ld l, l                                       ; $76FA: $6D
    db $10                                        ; $76FB: $10
    rrca                                          ; $76FC: $0F
    ld c, h                                       ; $76FD: $4C
    ld l, l                                       ; $76FE: $6D
    inc b                                         ; $76FF: $04
    rrca                                          ; $7700: $0F
    inc h                                         ; $7701: $24
    ld l, l                                       ; $7702: $6D
    inc b                                         ; $7703: $04
    rrca                                          ; $7704: $0F
    jr c, jr_012_7774                             ; $7705: $38 $6D

    inc b                                         ; $7707: $04
    rrca                                          ; $7708: $0F
    db $10                                        ; $7709: $10
    ld l, l                                       ; $770A: $6D
    nop                                           ; $770B: $00
    nop                                           ; $770C: $00

jr_012_770D:
    ld e, e                                       ; $770D: $5B
    ld [de], a                                    ; $770E: $12
    db $FC                                        ; $770F: $FC
    ld e, d                                       ; $7710: $5A
    ld h, d                                       ; $7711: $62
    inc c                                         ; $7712: $0C
    dec d                                         ; $7713: $15
    rrca                                          ; $7714: $0F
    and b                                         ; $7715: $A0
    ld l, h                                       ; $7716: $6C
    add b                                         ; $7717: $80
    nop                                           ; $7718: $00
    add hl, de                                    ; $7719: $19
    ld b, d                                       ; $771A: $42
    inc d                                         ; $771B: $14
    dec h                                         ; $771C: $25
    ld a, $51                                     ; $771D: $3E $51
    ld h, d                                       ; $771F: $62
    inc c                                         ; $7720: $0C
    inc d                                         ; $7721: $14
    dec h                                         ; $7722: $25
    inc [hl]                                      ; $7723: $34
    ld d, c                                       ; $7724: $51
    ld h, d                                       ; $7725: $62
    ld a, b                                       ; $7726: $78
    ld e, e                                       ; $7727: $5B
    ld [de], a                                    ; $7728: $12
    halt                                          ; $7729: $76
    ld e, e                                       ; $772A: $5B
    ld h, d                                       ; $772B: $62

jr_012_772C:
    dec c                                         ; $772C: $0D
    ld b, b                                       ; $772D: $40
    jr nz, jr_012_778B                            ; $772E: $20 $5B

    ld [de], a                                    ; $7730: $12
    sub [hl]                                      ; $7731: $96
    ld e, e                                       ; $7732: $5B
    ld h, d                                       ; $7733: $62
    ld c, $14                                     ; $7734: $0E $14
    dec h                                         ; $7736: $25
    ld a, $51                                     ; $7737: $3E $51
    ld e, e                                       ; $7739: $5B
    ld [de], a                                    ; $773A: $12
    inc b                                         ; $773B: $04
    ld e, h                                       ; $773C: $5C
    ld h, d                                       ; $773D: $62
    rrca                                          ; $773E: $0F
    ld b, b                                       ; $773F: $40
    db $10                                        ; $7740: $10
    ld d, [hl]                                    ; $7741: $56
    ld bc, $AC42                                  ; $7742: $01 $42 $AC
    or d                                          ; $7745: $B2
    and d                                         ; $7746: $A2
    ld bc, $6593                                  ; $7747: $01 $93 $65
    jp hl                                         ; $774A: $E9


    ld b, a                                       ; $774B: $47
    ld c, a                                       ; $774C: $4F
    ld h, h                                       ; $774D: $64
    or $49                                        ; $774E: $F6 $49
    ld h, [hl]                                    ; $7750: $66

jr_012_7751:
    ret nz                                        ; $7751: $C0

    ld e, h                                       ; $7752: $5C
    ld hl, $0005                                  ; $7753: $21 $05 $00
    ld l, e                                       ; $7756: $6B
    ld c, d                                       ; $7757: $4A
    rrca                                          ; $7758: $0F
    ld bc, $D037                                  ; $7759: $01 $37 $D0
    nop                                           ; $775C: $00
    jr nz, jr_012_772C                            ; $775D: $20 $CD

    ld c, a                                       ; $775F: $4F
    ld [hl+], a                                   ; $7760: $22
    dec b                                         ; $7761: $05
    ld b, b                                       ; $7762: $40
    dec b                                         ; $7763: $05
    ld [bc], a                                    ; $7764: $02
    ld l, e                                       ; $7765: $6B
    ld c, d                                       ; $7766: $4A
    rrca                                          ; $7767: $0F
    nop                                           ; $7768: $00
    rrca                                          ; $7769: $0F
    ret nc                                        ; $776A: $D0

    nop                                           ; $776B: $00
    ld de, $471C                                  ; $776C: $11 $1C $47
    ld [hl+], a                                   ; $776F: $22
    dec b                                         ; $7770: $05
    ld b, b                                       ; $7771: $40
    dec b                                         ; $7772: $05
    inc bc                                        ; $7773: $03

jr_012_7774:
    ld l, e                                       ; $7774: $6B
    ld c, d                                       ; $7775: $4A
    rrca                                          ; $7776: $0F
    ld [bc], a                                    ; $7777: $02
    ld e, a                                       ; $7778: $5F
    ret nc                                        ; $7779: $D0

    dec hl                                        ; $777A: $2B
    db $10                                        ; $777B: $10
    pop hl                                        ; $777C: $E1
    ld e, e                                       ; $777D: $5B
    ld [hl+], a                                   ; $777E: $22
    dec b                                         ; $777F: $05
    ld b, b                                       ; $7780: $40
    dec b                                         ; $7781: $05
    inc b                                         ; $7782: $04
    ld l, e                                       ; $7783: $6B
    ld c, d                                       ; $7784: $4A
    jr jr_012_77A3                                ; $7785: $18 $1C

    ld a, b                                       ; $7787: $78
    call nc, $1251                                ; $7788: $D4 $51 $12

jr_012_778B:
    jp nz, $2278                                  ; $778B: $C2 $78 $22

    dec b                                         ; $778E: $05
    ld b, b                                       ; $778F: $40
    dec b                                         ; $7790: $05
    dec b                                         ; $7791: $05
    ld l, e                                       ; $7792: $6B
    ld c, d                                       ; $7793: $4A
    ld c, $01                                     ; $7794: $0E $01
    ld [hl], $D0                                  ; $7796: $36 $D0
    ld l, e                                       ; $7798: $6B
    ld de, $4491                                  ; $7799: $11 $91 $44
    ld [hl+], a                                   ; $779C: $22
    dec b                                         ; $779D: $05
    ld b, b                                       ; $779E: $40
    ld l, e                                       ; $779F: $6B
    dec hl                                        ; $77A0: $2B
    dec bc                                        ; $77A1: $0B
    ret nc                                        ; $77A2: $D0

jr_012_77A3:
    ld c, c                                       ; $77A3: $49
    nop                                           ; $77A4: $00
    add b                                         ; $77A5: $80
    nop                                           ; $77A6: $00
    ld l, e                                       ; $77A7: $6B
    ld h, $0B                                     ; $77A8: $26 $0B
    ld d, b                                       ; $77AA: $50
    ld d, h                                       ; $77AB: $54
    or b                                          ; $77AC: $B0
    add d                                         ; $77AD: $82
    nop                                           ; $77AE: $00
    ld l, e                                       ; $77AF: $6B
    ld a, [de]                                    ; $77B0: $1A
    inc c                                         ; $77B1: $0C
    ldh a, [rOCPD]                                ; $77B2: $F0 $6B
    db $10                                        ; $77B4: $10
    add l                                         ; $77B5: $85
    nop                                           ; $77B6: $00
    ld l, e                                       ; $77B7: $6B
    dec hl                                        ; $77B8: $2B
    dec bc                                        ; $77B9: $0B
    jr nz, jr_012_7803                            ; $77BA: $20 $47

    or b                                          ; $77BC: $B0
    add [hl]                                      ; $77BD: $86
    nop                                           ; $77BE: $00
    dec bc                                        ; $77BF: $0B
    nop                                           ; $77C0: $00
    dec bc                                        ; $77C1: $0B
    ld [bc], a                                    ; $77C2: $02
    dec bc                                        ; $77C3: $0B
    inc bc                                        ; $77C4: $03
    dec bc                                        ; $77C5: $0B
    dec b                                         ; $77C6: $05
    add d                                         ; $77C7: $82
    rra                                           ; $77C8: $1F
    dec e                                         ; $77C9: $1D
    sub h                                         ; $77CA: $94
    ld b, b                                       ; $77CB: $40
    jr nz, jr_012_7751                            ; $77CC: $20 $83

    ld b, b                                       ; $77CE: $40
    nop                                           ; $77CF: $00
    ld bc, $7C00                                  ; $77D0: $01 $00 $7C
    add hl, de                                    ; $77D3: $19
    rra                                           ; $77D4: $1F
    inc b                                         ; $77D5: $04
    inc c                                         ; $77D6: $0C
    nop                                           ; $77D7: $00
    inc c                                         ; $77D8: $0C
    ld [bc], a                                    ; $77D9: $02
    inc c                                         ; $77DA: $0C
    inc bc                                        ; $77DB: $03
    inc c                                         ; $77DC: $0C
    dec b                                         ; $77DD: $05
    dec b                                         ; $77DE: $05
    nop                                           ; $77DF: $00
    ld l, e                                       ; $77E0: $6B
    ld c, d                                       ; $77E1: $4A
    ld c, $1F                                     ; $77E2: $0E $1F
    and $D4                                       ; $77E4: $E6 $D4
    nop                                           ; $77E6: $00
    ld [de], a                                    ; $77E7: $12

jr_012_77E8:
    ld [hl], $78                                  ; $77E8: $36 $78
    ld [hl+], a                                   ; $77EA: $22
    dec b                                         ; $77EB: $05
    ld b, b                                       ; $77EC: $40
    dec b                                         ; $77ED: $05
    ld [bc], a                                    ; $77EE: $02
    ld l, e                                       ; $77EF: $6B
    ld c, d                                       ; $77F0: $4A
    dec c                                         ; $77F1: $0D
    rra                                           ; $77F2: $1F
    push hl                                       ; $77F3: $E5
    call nc, $1200                                ; $77F4: $D4 $00 $12
    ld a, b                                       ; $77F7: $78
    ld a, b                                       ; $77F8: $78
    ld [hl+], a                                   ; $77F9: $22
    dec b                                         ; $77FA: $05
    ld b, b                                       ; $77FB: $40
    dec b                                         ; $77FC: $05
    inc bc                                        ; $77FD: $03
    ld l, e                                       ; $77FE: $6B
    ld c, d                                       ; $77FF: $4A
    rrca                                          ; $7800: $0F
    rra                                           ; $7801: $1F
    rst $20                                       ; $7802: $E7

jr_012_7803:
    call nc, $122B                                ; $7803: $D4 $2B $12
    and [hl]                                      ; $7806: $A6
    ld a, b                                       ; $7807: $78
    ld [hl+], a                                   ; $7808: $22
    dec b                                         ; $7809: $05
    ld b, b                                       ; $780A: $40
    dec b                                         ; $780B: $05
    dec b                                         ; $780C: $05
    ld l, e                                       ; $780D: $6B
    ld c, d                                       ; $780E: $4A
    ld c, $20                                     ; $780F: $0E $20
    ld c, $D5                                     ; $7811: $0E $D5
    ld l, e                                       ; $7813: $6B
    ld [de], a                                    ; $7814: $12
    sub d                                         ; $7815: $92
    ld a, b                                       ; $7816: $78
    ld [hl+], a                                   ; $7817: $22
    dec b                                         ; $7818: $05
    ld b, b                                       ; $7819: $40
    ld b, b                                       ; $781A: $40
    ld b, b                                       ; $781B: $40
    dec bc                                        ; $781C: $0B
    nop                                           ; $781D: $00
    dec bc                                        ; $781E: $0B
    ld [bc], a                                    ; $781F: $02
    dec bc                                        ; $7820: $0B
    inc bc                                        ; $7821: $03
    dec bc                                        ; $7822: $0B
    dec b                                         ; $7823: $05
    ld h, b                                       ; $7824: $60
    ld bc, $4040                                  ; $7825: $01 $40 $40

jr_012_7828:
    ld l, [hl]                                    ; $7828: $6E
    rrca                                          ; $7829: $0F
    rst $38                                       ; $782A: $FF
    ld a, a                                       ; $782B: $7F
    halt                                          ; $782C: $76
    jr nz, jr_012_783E                            ; $782D: $20 $0F

    ld b, b                                       ; $782F: $40
    ld h, b                                       ; $7830: $60
    ld b, l                                       ; $7831: $45
    ld e, $10                                     ; $7832: $1E $10
    ld l, b                                       ; $7834: $68
    ld b, d                                       ; $7835: $42
    dec d                                         ; $7836: $15
    jr nz, @-$11                                  ; $7837: $20 $ED

    ld c, a                                       ; $7839: $4F
    and b                                         ; $783A: $A0
    jr nz, jr_012_77E8                            ; $783B: $20 $AB

    ld d, b                                       ; $783D: $50

jr_012_783E:
    nop                                           ; $783E: $00
    nop                                           ; $783F: $00
    ld h, d                                       ; $7840: $62
    inc bc                                        ; $7841: $03
    ld b, b                                       ; $7842: $40
    jr nz, @+$17                                  ; $7843: $20 $15

    jr nz, @-$0D                                  ; $7845: $20 $F1

    ld d, b                                       ; $7847: $50
    ld [$C920], sp                                ; $7848: $08 $20 $C9
    ld d, b                                       ; $784B: $50
    jr nz, jr_012_786E                            ; $784C: $20 $20

    or l                                          ; $784E: $B5
    ld d, b                                       ; $784F: $50
    ld [$BF20], sp                                ; $7850: $08 $20 $BF
    ld d, b                                       ; $7853: $50
    jr nz, @+$22                                  ; $7854: $20 $20

    rst $20                                       ; $7856: $E7
    ld d, b                                       ; $7857: $50
    ld [$AB20], sp                                ; $7858: $08 $20 $AB
    ld d, b                                       ; $785B: $50
    nop                                           ; $785C: $00
    nop                                           ; $785D: $00
    ld h, d                                       ; $785E: $62
    ld b, $40                                     ; $785F: $06 $40
    ld [$2015], sp                                ; $7861: $08 $15 $20
    rst $20                                       ; $7864: $E7
    ld d, b                                       ; $7865: $50
    db $10                                        ; $7866: $10
    jr nz, jr_012_7828                            ; $7867: $20 $BF

    ld d, b                                       ; $7869: $50
    jr nc, @+$22                                  ; $786A: $30 $20

    rst $20                                       ; $786C: $E7
    ld d, b                                       ; $786D: $50

jr_012_786E:
    ld [$B320], sp                                ; $786E: $08 $20 $B3
    ld c, a                                       ; $7871: $4F
    jr nc, jr_012_7874                            ; $7872: $30 $00

jr_012_7874:
    ld d, [hl]                                    ; $7874: $56
    ld bc, $4219                                  ; $7875: $01 $19 $42
    dec d                                         ; $7878: $15
    ld de, $473C                                  ; $7879: $11 $3C $47
    and b                                         ; $787C: $A0
    ld de, $478C                                  ; $787D: $11 $8C $47
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    ld h, d                                       ; $7882: $62
    ld [bc], a                                    ; $7883: $02
    ld e, e                                       ; $7884: $5B
    ld [de], a                                    ; $7885: $12
    ld [hl], h                                    ; $7886: $74
    ld e, h                                       ; $7887: $5C
    ld h, d                                       ; $7888: $62
    inc bc                                        ; $7889: $03
    dec d                                         ; $788A: $15
    ld de, $472C                                  ; $788B: $11 $2C $47
    add b                                         ; $788E: $80
    nop                                           ; $788F: $00
    add hl, de                                    ; $7890: $19
    ld b, d                                       ; $7891: $42
    dec d                                         ; $7892: $15
    ld de, $44B1                                  ; $7893: $11 $B1 $44
    and b                                         ; $7896: $A0
    ld de, $4501                                  ; $7897: $11 $01 $45
    nop                                           ; $789A: $00
    nop                                           ; $789B: $00
    ld h, d                                       ; $789C: $62
    inc bc                                        ; $789D: $03
    dec d                                         ; $789E: $15
    ld de, $4491                                  ; $789F: $11 $91 $44
    ld h, b                                       ; $78A2: $60
    nop                                           ; $78A3: $00
    add hl, de                                    ; $78A4: $19
    ld b, d                                       ; $78A5: $42
    dec d                                         ; $78A6: $15
    db $10                                        ; $78A7: $10
    ld bc, $A05C                                  ; $78A8: $01 $5C $A0
    db $10                                        ; $78AB: $10
    ld d, c                                       ; $78AC: $51
    ld e, h                                       ; $78AD: $5C
    nop                                           ; $78AE: $00
    nop                                           ; $78AF: $00
    ld e, e                                       ; $78B0: $5B
    ld [de], a                                    ; $78B1: $12
    inc e                                         ; $78B2: $1C
    ld e, h                                       ; $78B3: $5C
    ld h, d                                       ; $78B4: $62
    ld bc, $040B                                  ; $78B5: $01 $0B $04
    ld h, d                                       ; $78B8: $62
    inc bc                                        ; $78B9: $03
    dec d                                         ; $78BA: $15
    db $10                                        ; $78BB: $10
    ld bc, $805C                                  ; $78BC: $01 $5C $80
    nop                                           ; $78BF: $00
    add hl, de                                    ; $78C0: $19
    ld b, d                                       ; $78C1: $42
    dec d                                         ; $78C2: $15
    dec h                                         ; $78C3: $25
    cp d                                          ; $78C4: $BA
    ld d, b                                       ; $78C5: $50
    db $10                                        ; $78C6: $10
    dec h                                         ; $78C7: $25
    inc [hl]                                      ; $78C8: $34
    ld d, c                                       ; $78C9: $51
    nop                                           ; $78CA: $00
    nop                                           ; $78CB: $00
    ld e, e                                       ; $78CC: $5B
    ld [de], a                                    ; $78CD: $12
    ld b, e                                       ; $78CE: $43
    ld e, h                                       ; $78CF: $5C
    ld h, d                                       ; $78D0: $62
    inc bc                                        ; $78D1: $03
    dec d                                         ; $78D2: $15
    dec h                                         ; $78D3: $25
    ld [hl], b                                    ; $78D4: $70
    ld d, c                                       ; $78D5: $51
    db $10                                        ; $78D6: $10
    dec h                                         ; $78D7: $25
    ld c, b                                       ; $78D8: $48
    ld d, c                                       ; $78D9: $51
    jr nz, @+$27                                  ; $78DA: $20 $25

    inc [hl]                                      ; $78DC: $34
    ld d, c                                       ; $78DD: $51
    ld [$3E25], sp                                ; $78DE: $08 $25 $3E
    ld d, c                                       ; $78E1: $51
    jr nz, jr_012_7909                            ; $78E2: $20 $25

    ld h, [hl]                                    ; $78E4: $66
    ld d, c                                       ; $78E5: $51
    db $10                                        ; $78E6: $10
    dec h                                         ; $78E7: $25
    inc [hl]                                      ; $78E8: $34
    ld d, c                                       ; $78E9: $51
    nop                                           ; $78EA: $00
    nop                                           ; $78EB: $00
    ld e, e                                       ; $78EC: $5B
    ld [de], a                                    ; $78ED: $12
    and $5C                                       ; $78EE: $E6 $5C
    ld h, d                                       ; $78F0: $62
    inc b                                         ; $78F1: $04
    dec d                                         ; $78F2: $15
    dec h                                         ; $78F3: $25
    jp c, $1050                                   ; $78F4: $DA $50 $10

    dec h                                         ; $78F7: $25
    ld c, b                                       ; $78F8: $48
    ld d, c                                       ; $78F9: $51
    db $10                                        ; $78FA: $10
    dec h                                         ; $78FB: $25
    ld a, [hl+]                                   ; $78FC: $2A
    ld d, c                                       ; $78FD: $51
    inc b                                         ; $78FE: $04
    dec h                                         ; $78FF: $25
    jp z, $2050                                   ; $7900: $CA $50 $20

    dec h                                         ; $7903: $25
    ld a, $51                                     ; $7904: $3E $51
    db $10                                        ; $7906: $10
    dec h                                         ; $7907: $25
    ld a, [hl+]                                   ; $7908: $2A

jr_012_7909:
    ld d, c                                       ; $7909: $51
    inc b                                         ; $790A: $04
    dec h                                         ; $790B: $25
    jp c, $2050                                   ; $790C: $DA $50 $20

    dec h                                         ; $790F: $25
    ld c, b                                       ; $7910: $48
    ld d, c                                       ; $7911: $51
    db $10                                        ; $7912: $10
    dec h                                         ; $7913: $25
    ld a, [hl+]                                   ; $7914: $2A
    ld d, c                                       ; $7915: $51
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    ld h, d                                       ; $7918: $62
    dec b                                         ; $7919: $05
    dec d                                         ; $791A: $15
    dec h                                         ; $791B: $25
    jp z, $1050                                   ; $791C: $CA $50 $10

    dec h                                         ; $791F: $25
    inc [hl]                                      ; $7920: $34
    ld d, c                                       ; $7921: $51
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    ld h, d                                       ; $7924: $62
    ld b, $15                                     ; $7925: $06 $15
    dec h                                         ; $7927: $25
    jp z, $8050                                   ; $7928: $CA $50 $80

    nop                                           ; $792B: $00
    add hl, de                                    ; $792C: $19
    ld b, d                                       ; $792D: $42
    sbc a                                         ; $792E: $9F
    ld d, h                                       ; $792F: $54
    ld l, a                                       ; $7930: $6F
    ld l, [hl]                                    ; $7931: $6E
    ld a, c                                       ; $7932: $79
    jr nz, jr_012_79A7                            ; $7933: $20 $72

    ld h, l                                       ; $7935: $65
    ld h, e                                       ; $7936: $63
    ld l, a                                       ; $7937: $6F
    halt                                          ; $7938: $76
    ld h, l                                       ; $7939: $65
    ld [hl], d                                    ; $793A: $72
    ld h, l                                       ; $793B: $65
    ld h, h                                       ; $793C: $64
    rst $38                                       ; $793D: $FF
    ld sp, $2030                                  ; $793E: $31 $30 $20
    ld b, l                                       ; $7941: $45
    ld l, [hl]                                    ; $7942: $6E
    ld h, l                                       ; $7943: $65
    ld [hl], d                                    ; $7944: $72
    ld h, a                                       ; $7945: $67
    ld a, c                                       ; $7946: $79
    ld hl, $FDFE                                  ; $7947: $21 $FE $FD
    sbc d                                         ; $794A: $9A
    adc b                                         ; $794B: $88
    nop                                           ; $794C: $00
    ld bc, $8701                                  ; $794D: $01 $01 $87
    dec b                                         ; $7950: $05
    dec b                                         ; $7951: $05
    ld a, [bc]                                    ; $7952: $0A
    ld b, d                                       ; $7953: $42
    sbc a                                         ; $7954: $9F
    ld d, h                                       ; $7955: $54
    ld l, a                                       ; $7956: $6F
    ld l, [hl]                                    ; $7957: $6E
    ld a, c                                       ; $7958: $79
    jr nz, jr_012_79CD                            ; $7959: $20 $72

    ld h, l                                       ; $795B: $65
    ld h, e                                       ; $795C: $63
    ld l, a                                       ; $795D: $6F
    halt                                          ; $795E: $76
    ld h, l                                       ; $795F: $65
    ld [hl], d                                    ; $7960: $72
    ld h, l                                       ; $7961: $65
    ld h, h                                       ; $7962: $64
    rst $38                                       ; $7963: $FF
    inc sp                                        ; $7964: $33
    jr nc, jr_012_7987                            ; $7965: $30 $20

    ld b, l                                       ; $7967: $45
    ld l, [hl]                                    ; $7968: $6E
    ld h, l                                       ; $7969: $65
    ld [hl], d                                    ; $796A: $72
    ld h, a                                       ; $796B: $67
    ld a, c                                       ; $796C: $79
    ld hl, $FDFE                                  ; $796D: $21 $FE $FD
    sbc d                                         ; $7970: $9A
    adc b                                         ; $7971: $88
    nop                                           ; $7972: $00
    ld [bc], a                                    ; $7973: $02
    ld bc, $0587                                  ; $7974: $01 $87 $05
    dec b                                         ; $7977: $05
    ld e, $42                                     ; $7978: $1E $42
    sbc a                                         ; $797A: $9F
    ld d, h                                       ; $797B: $54
    ld l, a                                       ; $797C: $6F
    ld l, [hl]                                    ; $797D: $6E
    ld a, c                                       ; $797E: $79
    jr nz, jr_012_79F3                            ; $797F: $20 $72

    ld h, l                                       ; $7981: $65
    ld h, e                                       ; $7982: $63
    ld l, a                                       ; $7983: $6F
    halt                                          ; $7984: $76
    ld h, l                                       ; $7985: $65
    ld [hl], d                                    ; $7986: $72

jr_012_7987:
    ld h, l                                       ; $7987: $65
    ld h, h                                       ; $7988: $64
    rst $38                                       ; $7989: $FF
    ld [hl], $35                                  ; $798A: $36 $35
    jr nz, jr_012_79D3                            ; $798C: $20 $45

    ld l, [hl]                                    ; $798E: $6E
    ld h, l                                       ; $798F: $65
    ld [hl], d                                    ; $7990: $72
    ld h, a                                       ; $7991: $67
    ld a, c                                       ; $7992: $79
    ld hl, $FDFE                                  ; $7993: $21 $FE $FD
    sbc d                                         ; $7996: $9A
    adc b                                         ; $7997: $88
    nop                                           ; $7998: $00
    inc bc                                        ; $7999: $03
    ld bc, $0587                                  ; $799A: $01 $87 $05
    dec b                                         ; $799D: $05
    ld b, c                                       ; $799E: $41
    ld b, d                                       ; $799F: $42
    sbc a                                         ; $79A0: $9F
    ld d, h                                       ; $79A1: $54
    ld l, a                                       ; $79A2: $6F
    ld l, [hl]                                    ; $79A3: $6E
    ld a, c                                       ; $79A4: $79
    daa                                           ; $79A5: $27
    ld [hl], e                                    ; $79A6: $73

jr_012_79A7:
    jr nz, jr_012_7A0E                            ; $79A7: $20 $65

    ld l, [hl]                                    ; $79A9: $6E
    ld h, l                                       ; $79AA: $65
    ld [hl], d                                    ; $79AB: $72
    ld h, a                                       ; $79AC: $67
    ld a, c                                       ; $79AD: $79
    rst $38                                       ; $79AE: $FF
    ld l, l                                       ; $79AF: $6D
    ld h, c                                       ; $79B0: $61
    ld a, b                                       ; $79B1: $78
    ld l, c                                       ; $79B2: $69
    ld l, l                                       ; $79B3: $6D
    ld [hl], l                                    ; $79B4: $75
    ld l, l                                       ; $79B5: $6D
    jr nz, jr_012_7A2F                            ; $79B6: $20 $77

    ld h, c                                       ; $79B8: $61
    ld [hl], e                                    ; $79B9: $73
    cp $72                                        ; $79BA: $FE $72
    ld h, c                                       ; $79BC: $61
    ld l, c                                       ; $79BD: $69
    ld [hl], e                                    ; $79BE: $73
    ld h, l                                       ; $79BF: $65
    ld h, h                                       ; $79C0: $64
    jr nz, jr_012_7A25                            ; $79C1: $20 $62

    ld a, c                                       ; $79C3: $79
    jr nz, jr_012_79FB                            ; $79C4: $20 $35

    ld hl, $FDFE                                  ; $79C6: $21 $FE $FD
    sbc d                                         ; $79C9: $9A
    adc b                                         ; $79CA: $88
    nop                                           ; $79CB: $00
    inc hl                                        ; $79CC: $23

jr_012_79CD:
    ld bc, $0687                                  ; $79CD: $01 $87 $06
    ld b, $05                                     ; $79D0: $06 $05
    ld b, d                                       ; $79D2: $42

_TODO_ELDRITCHAWL::
    ; Eldritch Awl
jr_012_79D3:
    ld b, e                                       ; $79D3: $43
    ld bc, $A2B2                                  ; $79D4: $01 $B2 $A2
    ld [de], a                                    ; $79D7: $12
    db $DB                                        ; $79D8: $DB
    ld a, c                                       ; $79D9: $79
    adc c                                         ; $79DA: $89
    sbc a                                         ; $79DB: $9F
    ld e, c                                       ; $79DC: $59
    ld l, a                                       ; $79DD: $6F
    ld [hl], l                                    ; $79DE: $75
    jr nz, jr_012_7A44                            ; $79DF: $20 $63

    ld h, c                                       ; $79E1: $61
    ld l, [hl]                                    ; $79E2: $6E
    daa                                           ; $79E3: $27
    ld [hl], h                                    ; $79E4: $74
    jr nz, jr_012_7A4C                            ; $79E5: $20 $65

    ld a, b                                       ; $79E7: $78
    ld l, c                                       ; $79E8: $69
    ld [hl], h                                    ; $79E9: $74
    rst $38                                       ; $79EA: $FF
    ld l, b                                       ; $79EB: $68
    ld h, l                                       ; $79EC: $65
    ld [hl], d                                    ; $79ED: $72
    ld h, l                                       ; $79EE: $65
    ld hl, $FDFE                                  ; $79EF: $21 $FE $FD
    sbc d                                         ; $79F2: $9A

jr_012_79F3:
    ld b, d                                       ; $79F3: $42
    nop                                           ; $79F4: $00
    inc hl                                        ; $79F5: $23
    ld bc, $0687                                  ; $79F6: $01 $87 $06
    ld b, $05                                     ; $79F9: $06 $05

jr_012_79FB:
    ld b, d                                       ; $79FB: $42
    ld b, e                                       ; $79FC: $43
    ld bc, $A3B1                                  ; $79FD: $01 $B1 $A3
    ld [de], a                                    ; $7A00: $12
    inc b                                         ; $7A01: $04
    ld a, d                                       ; $7A02: $7A
    adc c                                         ; $7A03: $89
    sbc [hl]                                      ; $7A04: $9E
    ld e, c                                       ; $7A05: $59
    ld l, a                                       ; $7A06: $6F
    ld [hl], l                                    ; $7A07: $75
    jr nz, jr_012_7A6D                            ; $7A08: $20 $63

    ld h, c                                       ; $7A0A: $61
    ld l, [hl]                                    ; $7A0B: $6E
    daa                                           ; $7A0C: $27
    ld [hl], h                                    ; $7A0D: $74

jr_012_7A0E:
    jr nz, jr_012_7A75                            ; $7A0E: $20 $65

    ld a, b                                       ; $7A10: $78
    ld l, c                                       ; $7A11: $69
    ld [hl], h                                    ; $7A12: $74
    rst $38                                       ; $7A13: $FF
    ld l, b                                       ; $7A14: $68
    ld h, l                                       ; $7A15: $65
    ld [hl], d                                    ; $7A16: $72
    ld h, l                                       ; $7A17: $65
    ld hl, $FDFE                                  ; $7A18: $21 $FE $FD
    sbc c                                         ; $7A1B: $99
    ld b, d                                       ; $7A1C: $42
    nop                                           ; $7A1D: $00
    nop                                           ; $7A1E: $00
    nop                                           ; $7A1F: $00
    nop                                           ; $7A20: $00
    nop                                           ; $7A21: $00
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    nop                                           ; $7A24: $00

jr_012_7A25:
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

jr_012_7A2F:
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

jr_012_7A44:
    nop                                           ; $7A44: $00
    nop                                           ; $7A45: $00
    nop                                           ; $7A46: $00
    nop                                           ; $7A47: $00
    nop                                           ; $7A48: $00
    nop                                           ; $7A49: $00
    nop                                           ; $7A4A: $00
    nop                                           ; $7A4B: $00

jr_012_7A4C:
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

jr_012_7A6D:
    nop                                           ; $7A6D: $00
    nop                                           ; $7A6E: $00
    nop                                           ; $7A6F: $00
    nop                                           ; $7A70: $00
    nop                                           ; $7A71: $00
    nop                                           ; $7A72: $00
    nop                                           ; $7A73: $00
    nop                                           ; $7A74: $00

jr_012_7A75:
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
