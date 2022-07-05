SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    db $02, $00, $1D, $1D, $04, $45, $2B, $63, $59, $02, $09, $02, $00, $09, $45, $28
    db $EF, $53

    ld b, e                                       ; $4012: $43
    nop                                           ; $4013: $00
    and l                                         ; $4014: $A5
    and c                                         ; $4015: $A1
    ld [bc], a                                    ; $4016: $02
    db $28, $99                                   ; $4017: $28 $99
    ld b, b                                       ; $4019: $40
    ld b, e                                       ; $401A: $43
    rrca                                          ; $401B: $0F
    inc b                                         ; $401C: $04
    dec b                                         ; $401D: $05
    inc bc                                        ; $401E: $03
    jr z, jr_028_407C                             ; $401F: $28 $5B

    ld b, b                                       ; $4021: $40
    sbc e                                         ; $4022: $9B
    sbc c                                         ; $4023: $99
    ld b, c                                       ; $4024: $41
    sbc a                                         ; $4025: $9F
    ld c, b                                       ; $4026: $48
    ld l, a                                       ; $4027: $6F
    ld [hl], a                                    ; $4028: $77
    jr nz, jr_028_408E                            ; $4029: $20 $63

    ld h, c                                       ; $402B: $61
    ld l, [hl]                                    ; $402C: $6E
    jr nz, jr_028_4078                            ; $402D: $20 $49

    rst $38                                       ; $402F: $FF
    ld [hl], a                                    ; $4030: $77
    ld l, a                                       ; $4031: $6F
    ld [hl], d                                    ; $4032: $72
    ld l, e                                       ; $4033: $6B
    jr nz, jr_028_40AA                            ; $4034: $20 $74

    ld l, b                                       ; $4036: $68
    ld l, c                                       ; $4037: $69
    ld [hl], e                                    ; $4038: $73
    jr nz, jr_028_40A5                            ; $4039: $20 $6A

    ld l, a                                       ; $403B: $6F
    ld h, d                                       ; $403C: $62
    ccf                                           ; $403D: $3F
    cp $4F                                        ; $403E: $FE $4F
    ld l, [hl]                                    ; $4040: $6E
    ld h, l                                       ; $4041: $65
    jr nz, @+$66                                  ; $4042: $20 $64

    ld h, c                                       ; $4044: $61
    ld a, c                                       ; $4045: $79
    jr nz, jr_028_40A9                            ; $4046: $20 $61

    ld [hl], h                                    ; $4048: $74
    rst $38                                       ; $4049: $FF
    ld h, c                                       ; $404A: $61
    jr nz, @+$76                                  ; $404B: $20 $74

    ld l, c                                       ; $404D: $69
    ld l, l                                       ; $404E: $6D
    ld h, l                                       ; $404F: $65
    ld l, $2E                                     ; $4050: $2E $2E
    ld l, $2E                                     ; $4052: $2E $2E
    ld l, $FE                                     ; $4054: $2E $FE
    db $FD                                        ; $4056: $FD
    sbc d                                         ; $4057: $9A
    ld e, b                                       ; $4058: $58
    ld bc, $9B42                                  ; $4059: $01 $42 $9B
    sbc c                                         ; $405C: $99
    ld b, c                                       ; $405D: $41
    sbc a                                         ; $405E: $9F
    ld c, c                                       ; $405F: $49
    jr nz, @+$66                                  ; $4060: $20 $64

    ld l, a                                       ; $4062: $6F
    ld l, [hl]                                    ; $4063: $6E
    daa                                           ; $4064: $27
    ld [hl], h                                    ; $4065: $74
    jr nz, @+$6E                                  ; $4066: $20 $6C

    ld l, c                                       ; $4068: $69
    ld l, e                                       ; $4069: $6B
    ld h, l                                       ; $406A: $65
    rst $38                                       ; $406B: $FF
    ld [hl], h                                    ; $406C: $74
    ld l, b                                       ; $406D: $68
    ld l, c                                       ; $406E: $69
    ld [hl], e                                    ; $406F: $73
    ld l, $2E                                     ; $4070: $2E $2E
    ld l, $FE                                     ; $4072: $2E $FE
    ld [hl], a                                    ; $4074: $77
    ld l, b                                       ; $4075: $68
    ld h, c                                       ; $4076: $61
    ld [hl], h                                    ; $4077: $74

jr_028_4078:
    jr nz, jr_028_40E3                            ; $4078: $20 $69

    ld [hl], e                                    ; $407A: $73
    rst $38                                       ; $407B: $FF

jr_028_407C:
    ld l, b                                       ; $407C: $68
    ld h, c                                       ; $407D: $61
    ld [hl], b                                    ; $407E: $70
    ld [hl], b                                    ; $407F: $70
    ld h, l                                       ; $4080: $65
    ld l, [hl]                                    ; $4081: $6E
    ld l, c                                       ; $4082: $69
    ld l, [hl]                                    ; $4083: $6E
    ld h, a                                       ; $4084: $67
    jr nz, jr_028_40F0                            ; $4085: $20 $69

    ld l, [hl]                                    ; $4087: $6E
    cp $74                                        ; $4088: $FE $74
    ld l, b                                       ; $408A: $68
    ld h, l                                       ; $408B: $65
    jr nz, jr_028_40F5                            ; $408C: $20 $67

jr_028_408E:
    ld l, h                                       ; $408E: $6C
    ld h, c                                       ; $408F: $61
    ld h, h                                       ; $4090: $64
    ld h, l                                       ; $4091: $65
    ccf                                           ; $4092: $3F
    cp $FD                                        ; $4093: $FE $FD
    sbc d                                         ; $4095: $9A
    ld e, b                                       ; $4096: $58
    ld bc, $9B42                                  ; $4097: $01 $42 $9B
    sbc c                                         ; $409A: $99
    ld b, c                                       ; $409B: $41
    sbc a                                         ; $409C: $9F
    ld d, h                                       ; $409D: $54
    ld l, b                                       ; $409E: $68
    ld h, l                                       ; $409F: $65
    ld [hl], d                                    ; $40A0: $72
    ld h, l                                       ; $40A1: $65
    jr nz, jr_028_4111                            ; $40A2: $20 $6D

    ld [hl], l                                    ; $40A4: $75

jr_028_40A5:
    ld [hl], e                                    ; $40A5: $73
    ld [hl], h                                    ; $40A6: $74
    jr nz, jr_028_410B                            ; $40A7: $20 $62

jr_028_40A9:
    ld h, l                                       ; $40A9: $65

jr_028_40AA:
    rst $38                                       ; $40AA: $FF
    ld h, c                                       ; $40AB: $61
    jr nz, jr_028_4125                            ; $40AC: $20 $77

    ld h, c                                       ; $40AE: $61
    ld a, c                                       ; $40AF: $79
    jr nz, jr_028_4126                            ; $40B0: $20 $74

    ld l, a                                       ; $40B2: $6F
    jr nz, jr_028_4128                            ; $40B3: $20 $73

    ld h, c                                       ; $40B5: $61
    halt                                          ; $40B6: $76
    ld h, l                                       ; $40B7: $65
    cp $4F                                        ; $40B8: $FE $4F
    ld [hl], d                                    ; $40BA: $72
    ld [hl], a                                    ; $40BB: $77
    ld l, c                                       ; $40BC: $69
    ld l, [hl]                                    ; $40BD: $6E
    ld l, $2E                                     ; $40BE: $2E $2E
    ld l, $FE                                     ; $40C0: $2E $FE
    db $FD                                        ; $40C2: $FD
    sbc d                                         ; $40C3: $9A
    ld e, b                                       ; $40C4: $58
    ld bc, $9342                                  ; $40C5: $01 $42 $93
    ld h, l                                       ; $40C8: $65
    dec de                                        ; $40C9: $1B
    ld b, e                                       ; $40CA: $43
    ld c, a                                       ; $40CB: $4F
    ld h, h                                       ; $40CC: $64
    dec sp                                        ; $40CD: $3B
    ld b, e                                       ; $40CE: $43
    ld h, [hl]                                    ; $40CF: $66
    ret nz                                        ; $40D0: $C0

    ld e, h                                       ; $40D1: $5C
    ld hl, $0005                                  ; $40D2: $21 $05 $00
    add c                                         ; $40D5: $81
    ld e, l                                       ; $40D6: $5D

jr_028_40D7:
    dec b                                         ; $40D7: $05
    dec b                                         ; $40D8: $05

jr_028_40D9:
    ld d, b                                       ; $40D9: $50
    ret nc                                        ; $40DA: $D0

    nop                                           ; $40DB: $00
    jr nz, jr_028_40D9                            ; $40DC: $20 $FB

    ld d, b                                       ; $40DE: $50
    ld [hl+], a                                   ; $40DF: $22
    dec b                                         ; $40E0: $05
    ld b, b                                       ; $40E1: $40
    dec b                                         ; $40E2: $05

jr_028_40E3:
    ld [bc], a                                    ; $40E3: $02
    dec b                                         ; $40E4: $05
    ld h, h                                       ; $40E5: $64
    add hl, bc                                    ; $40E6: $09
    inc e                                         ; $40E7: $1C
    xor l                                         ; $40E8: $AD
    pop de                                        ; $40E9: $D1
    ld [hl], $0F                                  ; $40EA: $36 $0F
    daa                                           ; $40EC: $27
    ld l, d                                       ; $40ED: $6A
    jr z, jr_028_4112                             ; $40EE: $28 $22

jr_028_40F0:
    ld b, c                                       ; $40F0: $41
    dec b                                         ; $40F1: $05
    inc bc                                        ; $40F2: $03
    ld l, e                                       ; $40F3: $6B
    ld c, d                                       ; $40F4: $4A

jr_028_40F5:
    inc bc                                        ; $40F5: $03
    dec de                                        ; $40F6: $1B
    sbc b                                         ; $40F7: $98
    pop de                                        ; $40F8: $D1
    nop                                           ; $40F9: $00
    jr z, jr_028_410B                             ; $40FA: $28 $0F

    ld b, d                                       ; $40FC: $42
    ld [hl+], a                                   ; $40FD: $22
    dec b                                         ; $40FE: $05
    ld b, b                                       ; $40FF: $40
    dec bc                                        ; $4100: $0B

jr_028_4101:
    nop                                           ; $4101: $00
    ld b, e                                       ; $4102: $43
    nop                                           ; $4103: $00
    dec h                                         ; $4104: $25
    and c                                         ; $4105: $A1
    ld [bc], a                                    ; $4106: $02
    jr z, jr_028_4115                             ; $4107: $28 $0C

    ld b, c                                       ; $4109: $41
    dec bc                                        ; $410A: $0B

jr_028_410B:
    ld [bc], a                                    ; $410B: $02
    ld l, e                                       ; $410C: $6B
    ld [hl], $0A                                  ; $410D: $36 $0A
    db $10                                        ; $410F: $10
    ld d, c                                       ; $4110: $51

jr_028_4111:
    nop                                           ; $4111: $00

jr_028_4112:
    add b                                         ; $4112: $80
    nop                                           ; $4113: $00
    ld l, e                                       ; $4114: $6B

jr_028_4115:
    jr nc, jr_028_4122                            ; $4115: $30 $0B

    db $10                                        ; $4117: $10
    ld h, a                                       ; $4118: $67
    ld h, b                                       ; $4119: $60
    add e                                         ; $411A: $83
    nop                                           ; $411B: $00
    nop                                           ; $411C: $00
    add d                                         ; $411D: $82
    rra                                           ; $411E: $1F
    ld a, [de]                                    ; $411F: $1A
    sub h                                         ; $4120: $94
    ld b, d                                       ; $4121: $42

jr_028_4122:
    inc d                                         ; $4122: $14
    rrca                                          ; $4123: $0F
    daa                                           ; $4124: $27

jr_028_4125:
    ld l, d                                       ; $4125: $6A

jr_028_4126:
    ld b, e                                       ; $4126: $43

jr_028_4127:
    rrca                                          ; $4127: $0F

jr_028_4128:
    inc bc                                        ; $4128: $03
    dec b                                         ; $4129: $05

jr_028_412A:
    nop                                           ; $412A: $00
    jr z, jr_028_4181                             ; $412B: $28 $54

    ld b, c                                       ; $412D: $41
    inc d                                         ; $412E: $14
    rrca                                          ; $412F: $0F
    dec e                                         ; $4130: $1D
    ld l, d                                       ; $4131: $6A
    ld e, e                                       ; $4132: $5B
    jr z, jr_028_4101                             ; $4133: $28 $CC

    ld b, d                                       ; $4135: $42
    ld e, h                                       ; $4136: $5C
    nop                                           ; $4137: $00
    ld [bc], a                                    ; $4138: $02
    rlca                                          ; $4139: $07
    nop                                           ; $413A: $00
    ld l, e                                       ; $413B: $6B
    ld c, d                                       ; $413C: $4A
    add hl, bc                                    ; $413D: $09
    nop                                           ; $413E: $00
    jr z, jr_028_412A                             ; $413F: $28 $E9

    ld b, c                                       ; $4141: $41
    dec d                                         ; $4142: $15
    rrca                                          ; $4143: $0F
    ret                                           ; $4144: $C9


    ld l, c                                       ; $4145: $69
    ld [$1600], sp                                ; $4146: $08 $00 $16
    rrca                                          ; $4149: $0F
    jp hl                                         ; $414A: $E9


    ld l, c                                       ; $414B: $69
    ld d, $FE                                     ; $414C: $16 $FE
    nop                                           ; $414E: $00
    nop                                           ; $414F: $00
    ld b, l                                       ; $4150: $45
    jr z, jr_028_40D7                             ; $4151: $28 $84

    ld b, c                                       ; $4153: $41
    inc d                                         ; $4154: $14
    rrca                                          ; $4155: $0F
    add hl, bc                                    ; $4156: $09
    ld l, d                                       ; $4157: $6A
    ld e, e                                       ; $4158: $5B
    jr z, jr_028_4127                             ; $4159: $28 $CC

    ld b, d                                       ; $415B: $42
    ld h, d                                       ; $415C: $62
    ld bc, $0F14                                  ; $415D: $01 $14 $0F
    dec e                                         ; $4160: $1D
    ld l, d                                       ; $4161: $6A
    ld e, h                                       ; $4162: $5C
    nop                                           ; $4163: $00
    ld [bc], a                                    ; $4164: $02
    rlca                                          ; $4165: $07
    nop                                           ; $4166: $00
    ld l, e                                       ; $4167: $6B
    ld c, d                                       ; $4168: $4A
    add hl, bc                                    ; $4169: $09
    nop                                           ; $416A: $00
    jr z, jr_028_416D                             ; $416B: $28 $00

jr_028_416D:
    ld b, d                                       ; $416D: $42
    ld d, $0F                                     ; $416E: $16 $0F
    jp hl                                         ; $4170: $E9


    ld l, c                                       ; $4171: $69
    ld [$00FE], sp                                ; $4172: $08 $FE $00
    nop                                           ; $4175: $00
    dec d                                         ; $4176: $15
    rrca                                          ; $4177: $0F
    ret                                           ; $4178: $C9


    ld l, c                                       ; $4179: $69
    ld [$1600], sp                                ; $417A: $08 $00 $16
    rrca                                          ; $417D: $0F
    jp hl                                         ; $417E: $E9


    ld l, c                                       ; $417F: $69
    inc c                                         ; $4180: $0C

jr_028_4181:
    cp $00                                        ; $4181: $FE $00
    nop                                           ; $4183: $00
    dec d                                         ; $4184: $15
    rrca                                          ; $4185: $0F
    dec e                                         ; $4186: $1D
    ld l, d                                       ; $4187: $6A
    jr nz, jr_028_418A                            ; $4188: $20 $00

jr_028_418A:
    ld e, h                                       ; $418A: $5C
    ld bc, $1502                                  ; $418B: $01 $02 $15
    rrca                                          ; $418E: $0F
    jp hl                                         ; $418F: $E9


    ld l, c                                       ; $4190: $69
    ld [$F90F], sp                                ; $4191: $08 $0F $F9
    ld l, c                                       ; $4194: $69
    inc b                                         ; $4195: $04
    rrca                                          ; $4196: $0F
    jp hl                                         ; $4197: $E9


    ld l, c                                       ; $4198: $69
    inc b                                         ; $4199: $04
    rrca                                          ; $419A: $0F
    ld sp, hl                                     ; $419B: $F9
    ld l, c                                       ; $419C: $69
    ld [$1D0F], sp                                ; $419D: $08 $0F $1D
    ld l, d                                       ; $41A0: $6A
    nop                                           ; $41A1: $00
    nop                                           ; $41A2: $00

jr_028_41A3:
    ld e, e                                       ; $41A3: $5B
    jr z, jr_028_41A3                             ; $41A4: $28 $FD

    ld b, d                                       ; $41A6: $42
    ld e, h                                       ; $41A7: $5C
    ld [bc], a                                    ; $41A8: $02
    inc bc                                        ; $41A9: $03
    dec d                                         ; $41AA: $15
    rrca                                          ; $41AB: $0F
    jp hl                                         ; $41AC: $E9


    ld l, c                                       ; $41AD: $69
    ld [$F90F], sp                                ; $41AE: $08 $0F $F9
    ld l, c                                       ; $41B1: $69
    ld [$1D0F], sp                                ; $41B2: $08 $0F $1D

jr_028_41B5:
    ld l, d                                       ; $41B5: $6A
    nop                                           ; $41B6: $00
    nop                                           ; $41B7: $00

jr_028_41B8:
    ld e, h                                       ; $41B8: $5C
    ld a, [bc]                                    ; $41B9: $0A
    inc bc                                        ; $41BA: $03

jr_028_41BB:
    dec d                                         ; $41BB: $15
    rrca                                          ; $41BC: $0F
    jp hl                                         ; $41BD: $E9


    ld l, c                                       ; $41BE: $69
    ld [$F90F], sp                                ; $41BF: $08 $0F $F9
    ld l, c                                       ; $41C2: $69
    inc b                                         ; $41C3: $04
    rrca                                          ; $41C4: $0F
    jp hl                                         ; $41C5: $E9


    ld l, c                                       ; $41C6: $69
    inc b                                         ; $41C7: $04
    rrca                                          ; $41C8: $0F
    ld sp, hl                                     ; $41C9: $F9
    ld l, c                                       ; $41CA: $69
    ld [$1D0F], sp                                ; $41CB: $08 $0F $1D
    ld l, d                                       ; $41CE: $6A
    nop                                           ; $41CF: $00
    nop                                           ; $41D0: $00
    ld e, h                                       ; $41D1: $5C
    inc c                                         ; $41D2: $0C
    ld [bc], a                                    ; $41D3: $02
    dec d                                         ; $41D4: $15
    rrca                                          ; $41D5: $0F
    jp hl                                         ; $41D6: $E9


    ld l, c                                       ; $41D7: $69
    ld b, b                                       ; $41D8: $40
    nop                                           ; $41D9: $00

jr_028_41DA:
    ld a, l                                       ; $41DA: $7D
    adc c                                         ; $41DB: $89
    pop bc                                        ; $41DC: $C1
    ld bc, $0007                                  ; $41DD: $01 $07 $00
    add c                                         ; $41E0: $81

jr_028_41E1:
    ld e, l                                       ; $41E1: $5D
    add hl, bc                                    ; $41E2: $09
    nop                                           ; $41E3: $00
    jr nz, @-$3F                                  ; $41E4: $20 $BF

    ld d, b                                       ; $41E6: $50
    add hl, de                                    ; $41E7: $19
    ld b, d                                       ; $41E8: $42
    dec d                                         ; $41E9: $15
    jr nz, jr_028_41B5                            ; $41EA: $20 $C9

    ld d, b                                       ; $41EC: $50
    inc b                                         ; $41ED: $04
    jr nz, jr_028_41E1                            ; $41EE: $20 $F1

    ld d, b                                       ; $41F0: $50
    ld [$AB20], sp                                ; $41F1: $08 $20 $AB
    ld d, b                                       ; $41F4: $50
    ld b, $20                                     ; $41F5: $06 $20
    rst $20                                       ; $41F7: $E7
    ld d, b                                       ; $41F8: $50
    inc b                                         ; $41F9: $04
    jr nz, jr_028_41BB                            ; $41FA: $20 $BF

    ld d, b                                       ; $41FC: $50
    nop                                           ; $41FD: $00
    nop                                           ; $41FE: $00
    ld b, d                                       ; $41FF: $42
    dec d                                         ; $4200: $15
    jr nz, jr_028_41B8                            ; $4201: $20 $B5

    ld d, b                                       ; $4203: $50
    inc b                                         ; $4204: $04
    jr nz, jr_028_41DA                            ; $4205: $20 $D3

    ld d, b                                       ; $4207: $50
    ld b, $20                                     ; $4208: $06 $20
    cp a                                          ; $420A: $BF
    ld d, b                                       ; $420B: $50
    nop                                           ; $420C: $00
    nop                                           ; $420D: $00
    ld b, d                                       ; $420E: $42
    dec d                                         ; $420F: $15
    ld c, $80                                     ; $4210: $0E $80
    ld h, e                                       ; $4212: $63
    jr nz, jr_028_4223                            ; $4213: $20 $0E

    xor $63                                       ; $4215: $EE $63
    nop                                           ; $4217: $00
    nop                                           ; $4218: $00
    ld e, h                                       ; $4219: $5C
    ld bc, $1502                                  ; $421A: $01 $02 $15
    ld c, $EE                                     ; $421D: $0E $EE
    ld h, e                                       ; $421F: $63
    ld [$160E], sp                                ; $4220: $08 $0E $16

jr_028_4223:
    ld h, h                                       ; $4223: $64
    ld [bc], a                                    ; $4224: $02
    ld c, $DA                                     ; $4225: $0E $DA
    ld h, e                                       ; $4227: $63
    ld [bc], a                                    ; $4228: $02
    ld c, $0C                                     ; $4229: $0E $0C
    ld h, h                                       ; $422B: $64
    inc b                                         ; $422C: $04
    ld c, $EE                                     ; $422D: $0E $EE
    ld h, e                                       ; $422F: $63
    inc b                                         ; $4230: $04
    ld c, $16                                     ; $4231: $0E $16
    ld h, h                                       ; $4233: $64
    ld [bc], a                                    ; $4234: $02
    ld c, $DA                                     ; $4235: $0E $DA
    ld h, e                                       ; $4237: $63
    ld [bc], a                                    ; $4238: $02
    ld c, $0C                                     ; $4239: $0E $0C
    ld h, h                                       ; $423B: $64
    inc b                                         ; $423C: $04
    ld c, $EE                                     ; $423D: $0E $EE
    ld h, e                                       ; $423F: $63
    nop                                           ; $4240: $00
    nop                                           ; $4241: $00
    ld e, h                                       ; $4242: $5C
    ld [bc], a                                    ; $4243: $02
    inc bc                                        ; $4244: $03
    dec d                                         ; $4245: $15
    ld c, $EE                                     ; $4246: $0E $EE
    ld h, e                                       ; $4248: $63
    ld b, $0E                                     ; $4249: $06 $0E
    ld d, $64                                     ; $424B: $16 $64
    ld [bc], a                                    ; $424D: $02
    ld c, $DA                                     ; $424E: $0E $DA
    ld h, e                                       ; $4250: $63
    ld [bc], a                                    ; $4251: $02
    ld c, $0C                                     ; $4252: $0E $0C
    ld h, h                                       ; $4254: $64
    ld [bc], a                                    ; $4255: $02
    ld c, $DA                                     ; $4256: $0E $DA
    ld h, e                                       ; $4258: $63
    ld [bc], a                                    ; $4259: $02
    ld c, $16                                     ; $425A: $0E $16
    ld h, h                                       ; $425C: $64
    ld [bc], a                                    ; $425D: $02
    ld c, $EE                                     ; $425E: $0E $EE
    ld h, e                                       ; $4260: $63
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    ld e, h                                       ; $4263: $5C
    inc bc                                        ; $4264: $03
    ld [bc], a                                    ; $4265: $02
    inc d                                         ; $4266: $14
    ld c, $3E                                     ; $4267: $0E $3E
    ld h, h                                       ; $4269: $64
    ld e, h                                       ; $426A: $5C
    inc b                                         ; $426B: $04
    ld [bc], a                                    ; $426C: $02
    inc d                                         ; $426D: $14
    ld c, $2A                                     ; $426E: $0E $2A
    ld h, h                                       ; $4270: $64
    ld e, h                                       ; $4271: $5C
    dec b                                         ; $4272: $05
    ld [bc], a                                    ; $4273: $02
    inc d                                         ; $4274: $14
    ld c, $3E                                     ; $4275: $0E $3E
    ld h, h                                       ; $4277: $64
    ld e, h                                       ; $4278: $5C
    ld b, $02                                     ; $4279: $06 $02
    inc d                                         ; $427B: $14
    ld c, $34                                     ; $427C: $0E $34
    ld h, h                                       ; $427E: $64
    ld e, h                                       ; $427F: $5C
    rlca                                          ; $4280: $07
    ld [bc], a                                    ; $4281: $02
    inc d                                         ; $4282: $14
    ld c, $20                                     ; $4283: $0E $20
    ld h, h                                       ; $4285: $64
    ld e, h                                       ; $4286: $5C
    ld [$1402], sp                                ; $4287: $08 $02 $14
    ld c, $2A                                     ; $428A: $0E $2A
    ld h, h                                       ; $428C: $64
    ld e, h                                       ; $428D: $5C
    add hl, bc                                    ; $428E: $09
    ld [bc], a                                    ; $428F: $02
    inc d                                         ; $4290: $14
    ld c, $3E                                     ; $4291: $0E $3E
    ld h, h                                       ; $4293: $64
    ld e, h                                       ; $4294: $5C
    ld a, [bc]                                    ; $4295: $0A
    inc bc                                        ; $4296: $03
    dec d                                         ; $4297: $15
    ld c, $EE                                     ; $4298: $0E $EE
    ld h, e                                       ; $429A: $63
    ld [$160E], sp                                ; $429B: $08 $0E $16
    ld h, h                                       ; $429E: $64
    ld [bc], a                                    ; $429F: $02
    ld c, $DA                                     ; $42A0: $0E $DA
    ld h, e                                       ; $42A2: $63
    ld [bc], a                                    ; $42A3: $02
    ld c, $0C                                     ; $42A4: $0E $0C
    ld h, h                                       ; $42A6: $64
    inc b                                         ; $42A7: $04
    ld c, $EE                                     ; $42A8: $0E $EE
    ld h, e                                       ; $42AA: $63
    inc b                                         ; $42AB: $04
    ld c, $16                                     ; $42AC: $0E $16
    ld h, h                                       ; $42AE: $64
    ld [bc], a                                    ; $42AF: $02
    ld c, $DA                                     ; $42B0: $0E $DA
    ld h, e                                       ; $42B2: $63
    ld [bc], a                                    ; $42B3: $02
    ld c, $0C                                     ; $42B4: $0E $0C
    ld h, h                                       ; $42B6: $64
    inc b                                         ; $42B7: $04
    ld c, $EE                                     ; $42B8: $0E $EE
    ld h, e                                       ; $42BA: $63
    nop                                           ; $42BB: $00
    nop                                           ; $42BC: $00
    ld e, h                                       ; $42BD: $5C
    dec bc                                        ; $42BE: $0B
    ld [bc], a                                    ; $42BF: $02
    dec d                                         ; $42C0: $15
    ld c, $B0                                     ; $42C1: $0E $B0
    ld h, e                                       ; $42C3: $63
    ld b, b                                       ; $42C4: $40
    nop                                           ; $42C5: $00
    xor a                                         ; $42C6: $AF
    dec h                                         ; $42C7: $25
    and c                                         ; $42C8: $A1
    ld [bc], a                                    ; $42C9: $02
    add hl, de                                    ; $42CA: $19
    ld b, d                                       ; $42CB: $42
    sbc e                                         ; $42CC: $9B
    sbc b                                         ; $42CD: $98
    ld [hl], e                                    ; $42CE: $73
    sbc a                                         ; $42CF: $9F
    ld c, b                                       ; $42D0: $48
    ld l, c                                       ; $42D1: $69
    jr nz, jr_028_4328                            ; $42D2: $20 $54

    ld l, a                                       ; $42D4: $6F
    ld l, [hl]                                    ; $42D5: $6E
    ld a, c                                       ; $42D6: $79
    ld l, $2E                                     ; $42D7: $2E $2E
    ld l, $FE                                     ; $42D9: $2E $FE
    db $FD                                        ; $42DB: $FD
    dec bc                                        ; $42DC: $0B
    inc bc                                        ; $42DD: $03
    ld e, b                                       ; $42DE: $58
    ld bc, $479F                                  ; $42DF: $01 $9F $47
    ld c, a                                       ; $42E2: $4F
    ld b, a                                       ; $42E3: $47
    ld c, a                                       ; $42E4: $4F
    ld d, d                                       ; $42E5: $52
    ccf                                           ; $42E6: $3F
    ld hl, $FDFE                                  ; $42E7: $21 $FE $FD
    sbc e                                         ; $42EA: $9B
    jr jr_028_433B                                ; $42EB: $18 $4E

    sbc a                                         ; $42ED: $9F
    ld c, c                                       ; $42EE: $49
    jr nz, jr_028_4352                            ; $42EF: $20 $61

    ld l, l                                       ; $42F1: $6D
    jr nz, jr_028_435C                            ; $42F2: $20 $68

    ld h, l                                       ; $42F4: $65
    ld hl, $FDFE                                  ; $42F5: $21 $FE $FD
    sbc d                                         ; $42F8: $9A
    ld e, h                                       ; $42F9: $5C
    nop                                           ; $42FA: $00
    ld [bc], a                                    ; $42FB: $02
    ld b, d                                       ; $42FC: $42
    sbc e                                         ; $42FD: $9B
    jr @+$50                                      ; $42FE: $18 $4E

    sbc a                                         ; $4300: $9F
    ld c, a                                       ; $4301: $4F
    ld [hl], a                                    ; $4302: $77
    ld hl, $4FFF                                  ; $4303: $21 $FF $4F
    ld d, a                                       ; $4306: $57
    ld hl, $53FE                                  ; $4307: $21 $FE $53
    ld [hl], h                                    ; $430A: $74
    ld l, a                                       ; $430B: $6F
    ld [hl], b                                    ; $430C: $70
    jr nz, jr_028_4383                            ; $430D: $20 $74

    ld l, b                                       ; $430F: $68
    ld h, c                                       ; $4310: $61
    ld [hl], h                                    ; $4311: $74
    ld hl, $FDFE                                  ; $4312: $21 $FE $FD
    sbc e                                         ; $4315: $9B
    sbc b                                         ; $4316: $98
    ld [hl], e                                    ; $4317: $73
    sbc a                                         ; $4318: $9F
    ld b, a                                       ; $4319: $47
    ld l, a                                       ; $431A: $6F
    ld h, a                                       ; $431B: $67
    ld l, a                                       ; $431C: $6F
    ld [hl], d                                    ; $431D: $72
    inc l                                         ; $431E: $2C
    rst $38                                       ; $431F: $FF
    ld a, c                                       ; $4320: $79
    ld l, a                                       ; $4321: $6F
    ld [hl], l                                    ; $4322: $75
    jr nz, jr_028_438E                            ; $4323: $20 $69

    ld h, h                                       ; $4325: $64
    ld l, c                                       ; $4326: $69
    ld l, a                                       ; $4327: $6F

jr_028_4328:
    ld [hl], h                                    ; $4328: $74
    ld hl, $57FE                                  ; $4329: $21 $FE $57
    ld h, l                                       ; $432C: $65
    jr nz, @+$79                                  ; $432D: $20 $77

    ld h, l                                       ; $432F: $65
    ld [hl], d                                    ; $4330: $72
    ld h, l                                       ; $4331: $65
    jr nz, jr_028_4395                            ; $4332: $20 $61

    ld l, h                                       ; $4334: $6C
    ld l, h                                       ; $4335: $6C
    rst $38                                       ; $4336: $FF
    ld [hl], a                                    ; $4337: $77
    ld l, a                                       ; $4338: $6F
    ld [hl], d                                    ; $4339: $72
    ld [hl], d                                    ; $433A: $72

jr_028_433B:
    ld l, c                                       ; $433B: $69
    ld h, l                                       ; $433C: $65
    ld h, h                                       ; $433D: $64
    cp $61                                        ; $433E: $FE $61
    ld h, d                                       ; $4340: $62
    ld l, a                                       ; $4341: $6F
    ld [hl], l                                    ; $4342: $75
    ld [hl], h                                    ; $4343: $74
    jr nz, jr_028_43BF                            ; $4344: $20 $79

    ld l, a                                       ; $4346: $6F
    ld [hl], l                                    ; $4347: $75
    ld hl, $59FE                                  ; $4348: $21 $FE $59
    ld l, a                                       ; $434B: $6F
    ld [hl], l                                    ; $434C: $75
    jr nz, jr_028_43C6                            ; $434D: $20 $77

    ld h, l                                       ; $434F: $65
    ld [hl], d                                    ; $4350: $72
    ld h, l                                       ; $4351: $65

jr_028_4352:
    jr nz, jr_028_43B5                            ; $4352: $20 $61

    ld l, h                                       ; $4354: $6C
    ld l, c                                       ; $4355: $69
    halt                                          ; $4356: $76
    ld h, l                                       ; $4357: $65
    rst $38                                       ; $4358: $FF
    ld h, c                                       ; $4359: $61
    ld l, h                                       ; $435A: $6C
    ld l, h                                       ; $435B: $6C

jr_028_435C:
    jr nz, jr_028_43D2                            ; $435C: $20 $74

    ld l, b                                       ; $435E: $68
    ld l, c                                       ; $435F: $69
    ld [hl], e                                    ; $4360: $73
    jr nz, jr_028_43D7                            ; $4361: $20 $74

    ld l, c                                       ; $4363: $69
    ld l, l                                       ; $4364: $6D
    ld h, l                                       ; $4365: $65
    cp $61                                        ; $4366: $FE $61
    ld l, [hl]                                    ; $4368: $6E
    ld h, h                                       ; $4369: $64
    jr nz, jr_028_43E5                            ; $436A: $20 $79

    ld l, a                                       ; $436C: $6F
    ld [hl], l                                    ; $436D: $75
    jr nz, jr_028_43DE                            ; $436E: $20 $6E

    ld h, l                                       ; $4370: $65
    halt                                          ; $4371: $76
    ld h, l                                       ; $4372: $65
    ld [hl], d                                    ; $4373: $72
    rst $38                                       ; $4374: $FF
    ld h, d                                       ; $4375: $62
    ld l, a                                       ; $4376: $6F
    ld [hl], h                                    ; $4377: $74
    ld l, b                                       ; $4378: $68
    ld h, l                                       ; $4379: $65
    ld [hl], d                                    ; $437A: $72
    ld h, l                                       ; $437B: $65
    ld h, h                                       ; $437C: $64
    jr nz, jr_028_43F3                            ; $437D: $20 $74

    ld l, a                                       ; $437F: $6F
    cp $63                                        ; $4380: $FE $63
    ld l, a                                       ; $4382: $6F

jr_028_4383:
    ld l, l                                       ; $4383: $6D
    ld h, l                                       ; $4384: $65
    jr nz, @+$64                                  ; $4385: $20 $62

    ld h, c                                       ; $4387: $61
    ld h, e                                       ; $4388: $63
    ld l, e                                       ; $4389: $6B
    ccf                                           ; $438A: $3F
    ld hl, $59FE                                  ; $438B: $21 $FE $59

jr_028_438E:
    ld l, a                                       ; $438E: $6F
    ld [hl], l                                    ; $438F: $75
    jr nz, jr_028_43DC                            ; $4390: $20 $4A

    ld b, l                                       ; $4392: $45
    ld d, d                                       ; $4393: $52
    ld c, e                                       ; $4394: $4B

jr_028_4395:
    ld hl, $FDFE                                  ; $4395: $21 $FE $FD
    sbc d                                         ; $4398: $9A
    ld e, h                                       ; $4399: $5C
    ld [bc], a                                    ; $439A: $02
    inc bc                                        ; $439B: $03
    sbc e                                         ; $439C: $9B
    jr jr_028_43ED                                ; $439D: $18 $4E

    sbc a                                         ; $439F: $9F
    ld c, a                                       ; $43A0: $4F
    ld d, l                                       ; $43A1: $55
    ld b, e                                       ; $43A2: $43
    ld c, b                                       ; $43A3: $48
    ld hl, $FE21                                  ; $43A4: $21 $21 $FE
    db $FD                                        ; $43A7: $FD
    sbc e                                         ; $43A8: $9B
    sbc b                                         ; $43A9: $98
    ld [hl], e                                    ; $43AA: $73
    sbc a                                         ; $43AB: $9F
    ld c, d                                       ; $43AC: $4A
    ld b, l                                       ; $43AD: $45
    ld d, d                                       ; $43AE: $52
    ld c, e                                       ; $43AF: $4B
    ld hl, $FE21                                  ; $43B0: $21 $21 $FE
    db $FD                                        ; $43B3: $FD
    sbc e                                         ; $43B4: $9B

jr_028_43B5:
    jr jr_028_4405                                ; $43B5: $18 $4E

    sbc a                                         ; $43B7: $9F
    ld c, c                                       ; $43B8: $49
    jr nz, @+$79                                  ; $43B9: $20 $77

    ld h, c                                       ; $43BB: $61
    ld [hl], e                                    ; $43BC: $73
    rst $38                                       ; $43BD: $FF
    ld l, c                                       ; $43BE: $69

jr_028_43BF:
    ld l, l                                       ; $43BF: $6D
    ld [hl], b                                    ; $43C0: $70
    ld [hl], d                                    ; $43C1: $72
    ld l, c                                       ; $43C2: $69
    ld [hl], e                                    ; $43C3: $73
    ld l, a                                       ; $43C4: $6F
    ld l, [hl]                                    ; $43C5: $6E

jr_028_43C6:
    ld h, l                                       ; $43C6: $65
    ld h, h                                       ; $43C7: $64
    ld hl, $54FE                                  ; $43C8: $21 $FE $54
    ld l, b                                       ; $43CB: $68
    ld l, c                                       ; $43CC: $69
    ld [hl], e                                    ; $43CD: $73
    jr nz, @+$6E                                  ; $43CE: $20 $6C

    ld l, c                                       ; $43D0: $69
    ld [hl], h                                    ; $43D1: $74

jr_028_43D2:
    ld [hl], h                                    ; $43D2: $74
    ld l, h                                       ; $43D3: $6C
    ld h, l                                       ; $43D4: $65
    rst $38                                       ; $43D5: $FF
    ld l, a                                       ; $43D6: $6F

jr_028_43D7:
    ld l, [hl]                                    ; $43D7: $6E
    ld h, l                                       ; $43D8: $65
    jr nz, jr_028_4452                            ; $43D9: $20 $77

    ld l, c                                       ; $43DB: $69

jr_028_43DC:
    ld [hl], h                                    ; $43DC: $74
    ld l, b                                       ; $43DD: $68

jr_028_43DE:
    jr nz, jr_028_4454                            ; $43DE: $20 $74

    ld l, b                                       ; $43E0: $68
    ld h, l                                       ; $43E1: $65
    cp $73                                        ; $43E2: $FE $73
    ld l, c                                       ; $43E4: $69

jr_028_43E5:
    ld l, h                                       ; $43E5: $6C
    ld l, h                                       ; $43E6: $6C
    ld a, c                                       ; $43E7: $79
    jr nz, jr_028_4452                            ; $43E8: $20 $68

    ld h, c                                       ; $43EA: $61
    ld l, c                                       ; $43EB: $69
    ld [hl], d                                    ; $43EC: $72

jr_028_43ED:
    rst $38                                       ; $43ED: $FF
    ld h, [hl]                                    ; $43EE: $66
    ld [hl], d                                    ; $43EF: $72
    ld h, l                                       ; $43F0: $65
    ld h, l                                       ; $43F1: $65
    ld h, h                                       ; $43F2: $64

jr_028_43F3:
    jr nz, jr_028_4462                            ; $43F3: $20 $6D

    ld h, l                                       ; $43F5: $65
    ld hl, $49FE                                  ; $43F6: $21 $FE $49
    jr nz, jr_028_4472                            ; $43F9: $20 $77

    ld h, l                                       ; $43FB: $65
    ld l, [hl]                                    ; $43FC: $6E
    ld [hl], h                                    ; $43FD: $74
    jr nz, jr_028_4462                            ; $43FE: $20 $62

    ld h, c                                       ; $4400: $61
    ld h, e                                       ; $4401: $63
    ld l, e                                       ; $4402: $6B
    rst $38                                       ; $4403: $FF
    ld [hl], h                                    ; $4404: $74

jr_028_4405:
    ld l, a                                       ; $4405: $6F
    jr nz, jr_028_447C                            ; $4406: $20 $74

    ld l, b                                       ; $4408: $68
    ld h, l                                       ; $4409: $65
    cp $55                                        ; $440A: $FE $55
    ld l, [hl]                                    ; $440C: $6E
    ld h, h                                       ; $440D: $64
    ld h, l                                       ; $440E: $65
    ld [hl], d                                    ; $440F: $72
    ld l, [hl]                                    ; $4410: $6E
    ld h, l                                       ; $4411: $65
    ld h, c                                       ; $4412: $61
    ld [hl], h                                    ; $4413: $74
    ld l, b                                       ; $4414: $68
    rst $38                                       ; $4415: $FF
    ld h, c                                       ; $4416: $61
    ld l, [hl]                                    ; $4417: $6E
    ld h, h                                       ; $4418: $64
    jr nz, @+$70                                  ; $4419: $20 $6E

    ld l, a                                       ; $441B: $6F
    ld h, d                                       ; $441C: $62
    ld l, a                                       ; $441D: $6F
    ld h, h                                       ; $441E: $64
    ld a, c                                       ; $441F: $79
    cp $77                                        ; $4420: $FE $77
    ld h, c                                       ; $4422: $61
    ld [hl], e                                    ; $4423: $73
    jr nz, @+$76                                  ; $4424: $20 $74

    ld l, b                                       ; $4426: $68
    ld h, l                                       ; $4427: $65
    ld [hl], d                                    ; $4428: $72
    ld h, l                                       ; $4429: $65
    ld hl, $FDFE                                  ; $442A: $21 $FE $FD
    sbc e                                         ; $442D: $9B
    sbc b                                         ; $442E: $98
    ld [hl], e                                    ; $442F: $73
    sbc a                                         ; $4430: $9F
    ld l, $2E                                     ; $4431: $2E $2E
    ld l, $72                                     ; $4433: $2E $72
    ld h, l                                       ; $4435: $65
    ld h, c                                       ; $4436: $61
    ld l, h                                       ; $4437: $6C
    ld l, h                                       ; $4438: $6C
    ld a, c                                       ; $4439: $79
    ccf                                           ; $443A: $3F
    cp $FD                                        ; $443B: $FE $FD
    ld e, h                                       ; $443D: $5C
    inc bc                                        ; $443E: $03
    ld [bc], a                                    ; $443F: $02
    sbc e                                         ; $4440: $9B
    jr @+$50                                      ; $4441: $18 $4E

    sbc a                                         ; $4443: $9F
    ld d, h                                       ; $4444: $54
    ld l, b                                       ; $4445: $68
    ld l, a                                       ; $4446: $6F
    ld [hl], l                                    ; $4447: $75
    ld h, a                                       ; $4448: $67
    ld l, b                                       ; $4449: $68
    jr nz, jr_028_44BB                            ; $444A: $20 $6F

    ld l, [hl]                                    ; $444C: $6E
    ld h, e                                       ; $444D: $63
    ld h, l                                       ; $444E: $65
    cp $FD                                        ; $444F: $FE $FD
    ld e, h                                       ; $4451: $5C

jr_028_4452:
    inc b                                         ; $4452: $04
    ld [bc], a                                    ; $4453: $02

jr_028_4454:
    sbc a                                         ; $4454: $9F
    ld h, l                                       ; $4455: $65
    ld l, [hl]                                    ; $4456: $6E
    ld h, e                                       ; $4457: $63
    ld h, c                                       ; $4458: $61
    ld [hl], e                                    ; $4459: $73
    ld h, l                                       ; $445A: $65
    ld h, h                                       ; $445B: $64
    jr nz, @+$6B                                  ; $445C: $20 $69

    ld l, [hl]                                    ; $445E: $6E
    rst $38                                       ; $445F: $FF
    ld [hl], e                                    ; $4460: $73
    ld [hl], h                                    ; $4461: $74

jr_028_4462:
    ld l, a                                       ; $4462: $6F
    ld l, [hl]                                    ; $4463: $6E
    ld h, l                                       ; $4464: $65
    inc l                                         ; $4465: $2C
    cp $FD                                        ; $4466: $FE $FD
    ld e, h                                       ; $4468: $5C
    dec b                                         ; $4469: $05
    ld [bc], a                                    ; $446A: $02
    sbc a                                         ; $446B: $9F
    ld c, c                                       ; $446C: $49
    jr nz, jr_028_44D0                            ; $446D: $20 $61

    ld l, l                                       ; $446F: $6D
    jr nz, @+$75                                  ; $4470: $20 $73

jr_028_4472:
    ld [hl], h                                    ; $4472: $74
    ld l, c                                       ; $4473: $69
    ld l, h                                       ; $4474: $6C
    ld l, h                                       ; $4475: $6C
    cp $61                                        ; $4476: $FE $61
    ld [hl], e                                    ; $4478: $73
    jr nz, jr_028_44EB                            ; $4479: $20 $70

    ld [hl], l                                    ; $447B: $75

jr_028_447C:
    ld l, l                                       ; $447C: $6D
    ld [hl], b                                    ; $447D: $70
    ld h, l                                       ; $447E: $65
    ld h, h                                       ; $447F: $64
    jr nz, jr_028_44E3                            ; $4480: $20 $61

    ld [hl], e                                    ; $4482: $73
    rst $38                                       ; $4483: $FF
    ld h, l                                       ; $4484: $65
    halt                                          ; $4485: $76
    ld h, l                                       ; $4486: $65
    ld [hl], d                                    ; $4487: $72
    ld hl, $FDFE                                  ; $4488: $21 $FE $FD
    ld e, h                                       ; $448B: $5C
    ld b, $02                                     ; $448C: $06 $02
    sbc a                                         ; $448E: $9F
    ld c, c                                       ; $448F: $49
    jr nz, jr_028_44F3                            ; $4490: $20 $61

    ld l, l                                       ; $4492: $6D
    jr nz, jr_028_4508                            ; $4493: $20 $73

    ld [hl], h                                    ; $4495: $74
    ld l, c                                       ; $4496: $69
    ld l, h                                       ; $4497: $6C
    ld l, h                                       ; $4498: $6C
    cp $74                                        ; $4499: $FE $74
    ld l, b                                       ; $449B: $68
    ld h, l                                       ; $449C: $65
    jr nz, jr_028_4507                            ; $449D: $20 $68

    ld h, l                                       ; $449F: $65
    ld [hl], d                                    ; $44A0: $72
    ld l, a                                       ; $44A1: $6F
    ld l, c                                       ; $44A2: $69
    ld h, e                                       ; $44A3: $63
    inc l                                         ; $44A4: $2C
    cp $FD                                        ; $44A5: $FE $FD
    ld e, h                                       ; $44A7: $5C
    rlca                                          ; $44A8: $07
    ld [bc], a                                    ; $44A9: $02
    sbc a                                         ; $44AA: $9F
    ld [hl], a                                    ; $44AB: $77
    ld l, a                                       ; $44AC: $6F
    ld l, [hl]                                    ; $44AD: $6E
    ld h, h                                       ; $44AE: $64
    ld h, l                                       ; $44AF: $65
    ld [hl], d                                    ; $44B0: $72
    ld h, [hl]                                    ; $44B1: $66
    ld [hl], l                                    ; $44B2: $75
    ld l, h                                       ; $44B3: $6C
    inc l                                         ; $44B4: $2C
    cp $FD                                        ; $44B5: $FE $FD
    ld e, h                                       ; $44B7: $5C
    ld [$9F02], sp                                ; $44B8: $08 $02 $9F

jr_028_44BB:
    ld [hl], e                                    ; $44BB: $73
    ld [hl], l                                    ; $44BC: $75
    ld [hl], b                                    ; $44BD: $70
    ld h, l                                       ; $44BE: $65
    ld [hl], d                                    ; $44BF: $72
    dec l                                         ; $44C0: $2D
    ld [hl], e                                    ; $44C1: $73
    ld h, l                                       ; $44C2: $65
    ld a, b                                       ; $44C3: $78
    ld a, c                                       ; $44C4: $79
    dec l                                         ; $44C5: $2D
    cp $FD                                        ; $44C6: $FE $FD
    ld e, h                                       ; $44C8: $5C
    add hl, bc                                    ; $44C9: $09
    ld [bc], a                                    ; $44CA: $02
    sbc e                                         ; $44CB: $9B
    sbc b                                         ; $44CC: $98
    ld [hl], e                                    ; $44CD: $73
    sbc a                                         ; $44CE: $9F
    ld c, a                                       ; $44CF: $4F

jr_028_44D0:
    ld l, b                                       ; $44D0: $68
    inc l                                         ; $44D1: $2C
    jr nz, jr_028_4547                            ; $44D2: $20 $73

    ld l, b                                       ; $44D4: $68
    ld [hl], l                                    ; $44D5: $75
    ld [hl], h                                    ; $44D6: $74
    rst $38                                       ; $44D7: $FF
    ld [hl], l                                    ; $44D8: $75
    ld [hl], b                                    ; $44D9: $70
    jr nz, jr_028_4523                            ; $44DA: $20 $47

    ld l, a                                       ; $44DC: $6F
    ld h, a                                       ; $44DD: $67
    ld l, a                                       ; $44DE: $6F
    ld [hl], d                                    ; $44DF: $72
    ld hl, $57FE                                  ; $44E0: $21 $FE $57

jr_028_44E3:
    ld h, l                                       ; $44E3: $65
    jr nz, jr_028_455D                            ; $44E4: $20 $77

    ld h, l                                       ; $44E6: $65
    ld [hl], d                                    ; $44E7: $72
    ld h, l                                       ; $44E8: $65
    ld l, $2E                                     ; $44E9: $2E $2E

jr_028_44EB:
    ld l, $FE                                     ; $44EB: $2E $FE
    ld c, c                                       ; $44ED: $49
    ld l, $2E                                     ; $44EE: $2E $2E
    ld l, $20                                     ; $44F0: $2E $20
    ld [hl], a                                    ; $44F2: $77

jr_028_44F3:
    ld h, c                                       ; $44F3: $61
    ld [hl], e                                    ; $44F4: $73
    ld l, $2E                                     ; $44F5: $2E $2E
    ld l, $FE                                     ; $44F7: $2E $FE
    ld h, h                                       ; $44F9: $64
    daa                                           ; $44FA: $27
    ld l, a                                       ; $44FB: $6F
    ld l, b                                       ; $44FC: $68
    inc l                                         ; $44FD: $2C
    rst $38                                       ; $44FE: $FF
    ld a, c                                       ; $44FF: $79
    ld l, a                                       ; $4500: $6F
    ld [hl], l                                    ; $4501: $75
    jr nz, jr_028_454D                            ; $4502: $20 $49

    ld b, h                                       ; $4504: $44
    ld c, c                                       ; $4505: $49
    ld c, a                                       ; $4506: $4F

jr_028_4507:
    ld d, h                                       ; $4507: $54

jr_028_4508:
    ld hl, $2121                                  ; $4508: $21 $21 $21
    cp $FD                                        ; $450B: $FE $FD
    ld e, h                                       ; $450D: $5C
    ld a, [bc]                                    ; $450E: $0A
    inc bc                                        ; $450F: $03
    sbc e                                         ; $4510: $9B
    jr @+$50                                      ; $4511: $18 $4E

    sbc a                                         ; $4513: $9F
    ld c, a                                       ; $4514: $4F
    ld d, a                                       ; $4515: $57
    ld hl, $4FFF                                  ; $4516: $21 $FF $4F
    ld d, a                                       ; $4519: $57
    ld d, a                                       ; $451A: $57
    ld hl, $FE21                                  ; $451B: $21 $21 $FE
    ld b, e                                       ; $451E: $43
    ld [hl], l                                    ; $451F: $75
    ld [hl], h                                    ; $4520: $74
    jr nz, jr_028_4597                            ; $4521: $20 $74

jr_028_4523:
    ld l, b                                       ; $4523: $68
    ld h, c                                       ; $4524: $61
    ld [hl], h                                    ; $4525: $74
    rst $38                                       ; $4526: $FF
    ld l, a                                       ; $4527: $6F
    ld [hl], l                                    ; $4528: $75
    ld [hl], h                                    ; $4529: $74
    ld hl, $FDFE                                  ; $452A: $21 $FE $FD
    sbc e                                         ; $452D: $9B
    sbc b                                         ; $452E: $98
    ld [hl], e                                    ; $452F: $73
    sbc a                                         ; $4530: $9F
    ld b, a                                       ; $4531: $47
    ld [hl], d                                    ; $4532: $72
    ld [hl], d                                    ; $4533: $72
    ld [hl], d                                    ; $4534: $72
    ld l, $2E                                     ; $4535: $2E $2E
    ld l, $FE                                     ; $4537: $2E $FE
    db $FD                                        ; $4539: $FD
    sbc e                                         ; $453A: $9B
    jr jr_028_458B                                ; $453B: $18 $4E

    sbc a                                         ; $453D: $9F
    ld b, a                                       ; $453E: $47
    ld l, a                                       ; $453F: $6F
    ld h, a                                       ; $4540: $67

jr_028_4541:
    ld l, a                                       ; $4541: $6F
    ld [hl], d                                    ; $4542: $72
    jr nz, jr_028_45AD                            ; $4543: $20 $68

    ld h, c                                       ; $4545: $61
    ld [hl], e                                    ; $4546: $73

jr_028_4547:
    cp $74                                        ; $4547: $FE $74
    ld l, a                                       ; $4549: $6F
    jr nz, jr_028_45B3                            ; $454A: $20 $67

    ld l, a                                       ; $454C: $6F

jr_028_454D:
    jr nz, jr_028_45BD                            ; $454D: $20 $6E

    ld l, a                                       ; $454F: $6F
    ld [hl], a                                    ; $4550: $77
    ld hl, $FDFE                                  ; $4551: $21 $FE $FD
    ld e, h                                       ; $4554: $5C
    dec bc                                        ; $4555: $0B
    ld [bc], a                                    ; $4556: $02
    sbc e                                         ; $4557: $9B
    sbc b                                         ; $4558: $98
    ld [hl], e                                    ; $4559: $73
    sbc a                                         ; $455A: $9F
    ld b, a                                       ; $455B: $47
    ld c, a                                       ; $455C: $4F

jr_028_455D:
    ld b, a                                       ; $455D: $47
    ld c, a                                       ; $455E: $4F
    ld d, d                                       ; $455F: $52
    ld hl, $59FE                                  ; $4560: $21 $FE $59
    ld l, a                                       ; $4563: $6F
    ld [hl], l                                    ; $4564: $75
    jr nz, jr_028_45CE                            ; $4565: $20 $67

    ld h, l                                       ; $4567: $65
    ld [hl], h                                    ; $4568: $74
    rst $38                                       ; $4569: $FF
    ld h, d                                       ; $456A: $62
    ld h, c                                       ; $456B: $61
    ld h, e                                       ; $456C: $63
    ld l, e                                       ; $456D: $6B
    jr nz, jr_028_45D8                            ; $456E: $20 $68

    ld h, l                                       ; $4570: $65
    ld [hl], d                                    ; $4571: $72
    ld h, l                                       ; $4572: $65
    ld hl, $FDFE                                  ; $4573: $21 $FE $FD
    sbc d                                         ; $4576: $9A
    ld e, h                                       ; $4577: $5C
    inc c                                         ; $4578: $0C
    ld [bc], a                                    ; $4579: $02
    ld b, d                                       ; $457A: $42
    sub e                                         ; $457B: $93
    ld h, l                                       ; $457C: $65
    dec de                                        ; $457D: $1B
    ld b, e                                       ; $457E: $43
    ld c, a                                       ; $457F: $4F
    ld h, h                                       ; $4580: $64
    dec sp                                        ; $4581: $3B
    ld b, e                                       ; $4582: $43
    ld h, [hl]                                    ; $4583: $66
    ret nz                                        ; $4584: $C0

    ld e, h                                       ; $4585: $5C
    ld hl, $0005                                  ; $4586: $21 $05 $00
    add c                                         ; $4589: $81
    ld e, l                                       ; $458A: $5D

jr_028_458B:
    dec b                                         ; $458B: $05
    dec b                                         ; $458C: $05

jr_028_458D:
    ld d, b                                       ; $458D: $50
    ret nc                                        ; $458E: $D0

    nop                                           ; $458F: $00
    jr nz, jr_028_458D                            ; $4590: $20 $FB

    ld d, b                                       ; $4592: $50
    ld [hl+], a                                   ; $4593: $22
    dec b                                         ; $4594: $05
    ld b, b                                       ; $4595: $40
    dec b                                         ; $4596: $05

jr_028_4597:
    ld [bc], a                                    ; $4597: $02
    dec b                                         ; $4598: $05
    ld h, h                                       ; $4599: $64
    add hl, bc                                    ; $459A: $09
    inc e                                         ; $459B: $1C
    xor l                                         ; $459C: $AD
    pop de                                        ; $459D: $D1
    nop                                           ; $459E: $00
    ld c, $EE                                     ; $459F: $0E $EE
    ld h, e                                       ; $45A1: $63
    jr z, @+$51                                   ; $45A2: $28 $4F

    ld b, [hl]                                    ; $45A4: $46
    dec b                                         ; $45A5: $05
    inc bc                                        ; $45A6: $03
    ld l, e                                       ; $45A7: $6B
    ld c, d                                       ; $45A8: $4A
    inc bc                                        ; $45A9: $03
    inc e                                         ; $45AA: $1C
    and a                                         ; $45AB: $A7
    pop de                                        ; $45AC: $D1

jr_028_45AD:
    ld [hl], $28                                  ; $45AD: $36 $28
    db $FD                                        ; $45AF: $FD
    ld b, a                                       ; $45B0: $47
    ld [hl+], a                                   ; $45B1: $22
    dec b                                         ; $45B2: $05

jr_028_45B3:
    ld b, b                                       ; $45B3: $40
    dec b                                         ; $45B4: $05
    inc b                                         ; $45B5: $04
    ld l, e                                       ; $45B6: $6B
    ld c, d                                       ; $45B7: $4A
    inc bc                                        ; $45B8: $03
    inc e                                         ; $45B9: $1C
    and a                                         ; $45BA: $A7
    pop de                                        ; $45BB: $D1
    ld h, [hl]                                    ; $45BC: $66

jr_028_45BD:
    jr z, jr_028_4541                             ; $45BD: $28 $82

    ld c, b                                       ; $45BF: $48
    ld [hl+], a                                   ; $45C0: $22
    dec b                                         ; $45C1: $05
    ld b, b                                       ; $45C2: $40
    dec b                                         ; $45C3: $05
    dec b                                         ; $45C4: $05
    db $ED                                        ; $45C5: $ED
    ld h, e                                       ; $45C6: $63
    dec b                                         ; $45C7: $05
    ld c, $D7                                     ; $45C8: $0E $D7
    ret nc                                        ; $45CA: $D0

    sub [hl]                                      ; $45CB: $96
    rrca                                          ; $45CC: $0F
    db $DB                                        ; $45CD: $DB

jr_028_45CE:
    ld h, b                                       ; $45CE: $60
    jr z, jr_028_45F9                             ; $45CF: $28 $28

    ld b, [hl]                                    ; $45D1: $46
    dec b                                         ; $45D2: $05
    ld b, $ED                                     ; $45D3: $06 $ED
    ld h, e                                       ; $45D5: $63
    inc b                                         ; $45D6: $04
    dec c                                         ; $45D7: $0D

jr_028_45D8:
    rst $00                                       ; $45D8: $C7
    ret nc                                        ; $45D9: $D0

    cp e                                          ; $45DA: $BB
    db $10                                        ; $45DB: $10
    ld c, $57                                     ; $45DC: $0E $57
    jr z, jr_028_4627                             ; $45DE: $28 $47

    ld b, [hl]                                    ; $45E0: $46
    ld l, e                                       ; $45E1: $6B
    ld [hl], $0A                                  ; $45E2: $36 $0A
    db $10                                        ; $45E4: $10
    ld d, c                                       ; $45E5: $51
    nop                                           ; $45E6: $00
    add b                                         ; $45E7: $80
    nop                                           ; $45E8: $00
    ld l, e                                       ; $45E9: $6B
    jr nc, jr_028_45F7                            ; $45EA: $30 $0B

    db $10                                        ; $45EC: $10
    ld h, a                                       ; $45ED: $67
    ld h, b                                       ; $45EE: $60
    add e                                         ; $45EF: $83
    nop                                           ; $45F0: $00
    ld l, e                                       ; $45F1: $6B
    jr nc, jr_028_45FE                            ; $45F2: $30 $0A

    ld [hl], b                                    ; $45F4: $70
    ld d, h                                       ; $45F5: $54
    ld h, b                                       ; $45F6: $60

jr_028_45F7:
    add [hl]                                      ; $45F7: $86
    nop                                           ; $45F8: $00

jr_028_45F9:
    ld l, e                                       ; $45F9: $6B
    dec h                                         ; $45FA: $25
    dec bc                                        ; $45FB: $0B
    and b                                         ; $45FC: $A0
    ld e, e                                       ; $45FD: $5B

jr_028_45FE:
    ld h, b                                       ; $45FE: $60
    adc c                                         ; $45FF: $89
    nop                                           ; $4600: $00
    ld l, e                                       ; $4601: $6B
    inc d                                         ; $4602: $14
    dec bc                                        ; $4603: $0B
    ldh [rLYC], a                                 ; $4604: $E0 $45
    or b                                          ; $4606: $B0
    adc e                                         ; $4607: $8B
    nop                                           ; $4608: $00
    dec bc                                        ; $4609: $0B
    nop                                           ; $460A: $00
    ld b, e                                       ; $460B: $43
    ld a, [bc]                                    ; $460C: $0A
    nop                                           ; $460D: $00
    dec h                                         ; $460E: $25
    and c                                         ; $460F: $A1

jr_028_4610:
    jr nz, @+$2A                                  ; $4610: $20 $28

    ld e, $46                                     ; $4612: $1E $46
    ld b, e                                       ; $4614: $43
    nop                                           ; $4615: $00
    dec h                                         ; $4616: $25
    and c                                         ; $4617: $A1
    ld b, b                                       ; $4618: $40
    jr z, jr_028_4639                             ; $4619: $28 $1E

    ld b, [hl]                                    ; $461B: $46
    dec bc                                        ; $461C: $0B
    ld [bc], a                                    ; $461D: $02
    dec bc                                        ; $461E: $0B
    dec b                                         ; $461F: $05
    dec bc                                        ; $4620: $0B
    ld b, $00                                     ; $4621: $06 $00
    add d                                         ; $4623: $82
    rra                                           ; $4624: $1F
    db $10                                        ; $4625: $10

jr_028_4626:
    sub h                                         ; $4626: $94

jr_028_4627:
    ld b, d                                       ; $4627: $42
    inc d                                         ; $4628: $14
    rrca                                          ; $4629: $0F
    db $DB                                        ; $462A: $DB
    ld h, b                                       ; $462B: $60
    ld b, e                                       ; $462C: $43
    nop                                           ; $462D: $00
    ld h, $A1                                     ; $462E: $26 $A1
    ld bc, $4028                                  ; $4630: $01 $28 $40
    ld b, [hl]                                    ; $4633: $46
    ld e, e                                       ; $4634: $5B
    jr z, jr_028_467B                             ; $4635: $28 $44

    ld c, h                                       ; $4637: $4C
    xor a                                         ; $4638: $AF

jr_028_4639:
    ld h, $A1                                     ; $4639: $26 $A1
    ld bc, $2845                                  ; $463B: $01 $45 $28
    ld b, h                                       ; $463E: $44
    ld b, [hl]                                    ; $463F: $46
    ld e, e                                       ; $4640: $5B
    jr z, jr_028_465F                             ; $4641: $28 $1C

    ld c, l                                       ; $4643: $4D
    ld h, d                                       ; $4644: $62
    ld bc, $5B12                                  ; $4645: $01 $12 $5B
    jr z, @-$0E                                   ; $4648: $28 $F0

    ld c, a                                       ; $464A: $4F
    ld b, l                                       ; $464B: $45
    db $10                                        ; $464C: $10
    ld [hl+], a                                   ; $464D: $22
    ld d, a                                       ; $464E: $57
    inc d                                         ; $464F: $14
    ld c, $D0                                     ; $4650: $0E $D0
    ld h, e                                       ; $4652: $63
    ld c, b                                       ; $4653: $48
    rlca                                          ; $4654: $07
    nop                                           ; $4655: $00
    ld l, e                                       ; $4656: $6B
    ld c, d                                       ; $4657: $4A
    ld c, e                                       ; $4658: $4B
    inc bc                                        ; $4659: $03

jr_028_465A:
    jr z, jr_028_465F                             ; $465A: $28 $03

    nop                                           ; $465C: $00
    ld l, a                                       ; $465D: $6F
    ld b, [hl]                                    ; $465E: $46

jr_028_465F:
    jr z, jr_028_4661                             ; $465F: $28 $00

jr_028_4661:
    nop                                           ; $4661: $00
    sub d                                         ; $4662: $92
    ld b, [hl]                                    ; $4663: $46
    jr z, jr_028_4667                             ; $4664: $28 $01

    nop                                           ; $4666: $00

jr_028_4667:
    ld a, a                                       ; $4667: $7F
    ld b, [hl]                                    ; $4668: $46
    jr z, jr_028_466D                             ; $4669: $28 $02

    nop                                           ; $466B: $00
    ld l, a                                       ; $466C: $6F

jr_028_466D:
    ld b, [hl]                                    ; $466D: $46
    rst $38                                       ; $466E: $FF
    add hl, bc                                    ; $466F: $09
    nop                                           ; $4670: $00
    jr nz, jr_028_4626                            ; $4671: $20 $B3

    ld c, a                                       ; $4673: $4F
    ld b, b                                       ; $4674: $40
    ld [$0009], sp                                ; $4675: $08 $09 $00
    jr nz, @-$49                                  ; $4678: $20 $B5

    ld d, b                                       ; $467A: $50

jr_028_467B:
    ld b, l                                       ; $467B: $45
    jr z, jr_028_4610                             ; $467C: $28 $92

    ld b, [hl]                                    ; $467E: $46
    add hl, bc                                    ; $467F: $09
    nop                                           ; $4680: $00
    jr nz, @-$4B                                  ; $4681: $20 $B3

    ld c, a                                       ; $4683: $4F
    ld b, b                                       ; $4684: $40
    db $10                                        ; $4685: $10
    add hl, bc                                    ; $4686: $09
    nop                                           ; $4687: $00
    jr nz, @-$11                                  ; $4688: $20 $ED

    ld c, a                                       ; $468A: $4F
    ld b, b                                       ; $468B: $40
    ld [$0009], sp                                ; $468C: $08 $09 $00
    jr nz, @-$49                                  ; $468F: $20 $B5

    ld d, b                                       ; $4691: $50
    ld e, e                                       ; $4692: $5B
    jr z, jr_028_465A                             ; $4693: $28 $C5

    ld c, b                                       ; $4695: $48
    ld h, d                                       ; $4696: $62
    ld bc, $285B                                  ; $4697: $01 $5B $28
    ld b, h                                       ; $469A: $44

jr_028_469B:
    ld c, c                                       ; $469B: $49
    dec d                                         ; $469C: $15
    ld c, $3E                                     ; $469D: $0E $3E
    ld h, h                                       ; $469F: $64
    db $10                                        ; $46A0: $10
    ld c, $34                                     ; $46A1: $0E $34
    ld h, h                                       ; $46A3: $64
    db $10                                        ; $46A4: $10
    ld c, $3E                                     ; $46A5: $0E $3E
    ld h, h                                       ; $46A7: $64
    db $10                                        ; $46A8: $10
    ld c, $34                                     ; $46A9: $0E $34
    ld h, h                                       ; $46AB: $64
    nop                                           ; $46AC: $00
    nop                                           ; $46AD: $00
    ld h, d                                       ; $46AE: $62
    ld [bc], a                                    ; $46AF: $02
    dec bc                                        ; $46B0: $0B
    inc bc                                        ; $46B1: $03
    dec d                                         ; $46B2: $15
    ld c, $DA                                     ; $46B3: $0E $DA
    ld h, e                                       ; $46B5: $63
    ld [bc], a                                    ; $46B6: $02
    ld c, $16                                     ; $46B7: $0E $16
    ld h, h                                       ; $46B9: $64
    ld [bc], a                                    ; $46BA: $02
    ld c, $EE                                     ; $46BB: $0E $EE
    ld h, e                                       ; $46BD: $63
    ld [bc], a                                    ; $46BE: $02
    ld c, $02                                     ; $46BF: $0E $02
    ld h, h                                       ; $46C1: $64
    ld [bc], a                                    ; $46C2: $02
    ld c, $D0                                     ; $46C3: $0E $D0
    ld h, e                                       ; $46C5: $63
    ld [bc], a                                    ; $46C6: $02
    ld c, $F8                                     ; $46C7: $0E $F8
    ld h, e                                       ; $46C9: $63
    ld [bc], a                                    ; $46CA: $02
    ld c, $E4                                     ; $46CB: $0E $E4
    ld h, e                                       ; $46CD: $63
    ld [bc], a                                    ; $46CE: $02
    ld c, $0C                                     ; $46CF: $0E $0C
    ld h, h                                       ; $46D1: $64
    ld [bc], a                                    ; $46D2: $02
    ld c, $DA                                     ; $46D3: $0E $DA
    ld h, e                                       ; $46D5: $63
    ld [bc], a                                    ; $46D6: $02
    nop                                           ; $46D7: $00
    add hl, bc                                    ; $46D8: $09
    nop                                           ; $46D9: $00

jr_028_46DA:
    jr nz, jr_028_469B                            ; $46DA: $20 $BF

    ld d, b                                       ; $46DC: $50
    dec d                                         ; $46DD: $15
    ld c, $16                                     ; $46DE: $0E $16
    ld h, h                                       ; $46E0: $64
    ld [bc], a                                    ; $46E1: $02
    ld c, $EE                                     ; $46E2: $0E $EE
    ld h, e                                       ; $46E4: $63
    ld [bc], a                                    ; $46E5: $02
    ld c, $02                                     ; $46E6: $0E $02
    ld h, h                                       ; $46E8: $64
    ld [bc], a                                    ; $46E9: $02
    ld c, $D0                                     ; $46EA: $0E $D0
    ld h, e                                       ; $46EC: $63
    ld [bc], a                                    ; $46ED: $02
    ld c, $F8                                     ; $46EE: $0E $F8
    ld h, e                                       ; $46F0: $63
    ld [bc], a                                    ; $46F1: $02
    ld c, $E4                                     ; $46F2: $0E $E4
    ld h, e                                       ; $46F4: $63
    ld [bc], a                                    ; $46F5: $02
    ld c, $0C                                     ; $46F6: $0E $0C
    ld h, h                                       ; $46F8: $64
    ld [bc], a                                    ; $46F9: $02
    ld c, $DA                                     ; $46FA: $0E $DA

jr_028_46FC:
    ld h, e                                       ; $46FC: $63
    ld [bc], a                                    ; $46FD: $02
    ld c, $16                                     ; $46FE: $0E $16
    ld h, h                                       ; $4700: $64
    ld [bc], a                                    ; $4701: $02
    ld c, $EE                                     ; $4702: $0E $EE
    ld h, e                                       ; $4704: $63
    ld [bc], a                                    ; $4705: $02
    ld c, $02                                     ; $4706: $0E $02
    ld h, h                                       ; $4708: $64
    ld [bc], a                                    ; $4709: $02
    ld c, $D0                                     ; $470A: $0E $D0
    ld h, e                                       ; $470C: $63
    ld [bc], a                                    ; $470D: $02
    ld c, $F8                                     ; $470E: $0E $F8
    ld h, e                                       ; $4710: $63
    ld [bc], a                                    ; $4711: $02
    ld c, $E4                                     ; $4712: $0E $E4
    ld h, e                                       ; $4714: $63
    ld [bc], a                                    ; $4715: $02
    ld c, $0C                                     ; $4716: $0E $0C
    ld h, h                                       ; $4718: $64

jr_028_4719:
    ld [bc], a                                    ; $4719: $02
    ld c, $DA                                     ; $471A: $0E $DA
    ld h, e                                       ; $471C: $63
    db $10                                        ; $471D: $10
    ld c, $E4                                     ; $471E: $0E $E4
    ld h, e                                       ; $4720: $63
    stop                                          ; $4721: $10 $00
    add hl, bc                                    ; $4723: $09
    nop                                           ; $4724: $00
    jr nz, jr_028_46DA                            ; $4725: $20 $B3

    ld c, a                                       ; $4727: $4F
    ld b, b                                       ; $4728: $40
    db $10                                        ; $4729: $10
    add hl, bc                                    ; $472A: $09
    nop                                           ; $472B: $00
    jr nz, @-$49                                  ; $472C: $20 $B5

    ld d, b                                       ; $472E: $50
    ld e, h                                       ; $472F: $5C
    nop                                           ; $4730: $00
    ld [bc], a                                    ; $4731: $02
    ld e, e                                       ; $4732: $5B
    jr z, jr_028_46FC                             ; $4733: $28 $C7

    ld c, c                                       ; $4735: $49
    ld h, d                                       ; $4736: $62
    inc b                                         ; $4737: $04
    ld e, h                                       ; $4738: $5C
    ld bc, $4002                                  ; $4739: $01 $02 $40
    inc c                                         ; $473C: $0C
    ld e, e                                       ; $473D: $5B
    jr z, @-$11                                   ; $473E: $28 $ED

    ld c, c                                       ; $4740: $49
    dec d                                         ; $4741: $15
    ld c, $0C                                     ; $4742: $0E $0C
    ld h, h                                       ; $4744: $64
    ld [bc], a                                    ; $4745: $02
    ld c, $DA                                     ; $4746: $0E $DA
    ld h, e                                       ; $4748: $63
    ld [bc], a                                    ; $4749: $02
    ld c, $16                                     ; $474A: $0E $16
    ld h, h                                       ; $474C: $64
    inc b                                         ; $474D: $04
    ld c, $E4                                     ; $474E: $0E $E4
    ld h, e                                       ; $4750: $63
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    ld e, h                                       ; $4753: $5C
    ld [bc], a                                    ; $4754: $02
    ld [bc], a                                    ; $4755: $02
    dec d                                         ; $4756: $15
    ld c, $0C                                     ; $4757: $0E $0C
    ld h, h                                       ; $4759: $64
    ld [bc], a                                    ; $475A: $02
    ld c, $DA                                     ; $475B: $0E $DA
    ld h, e                                       ; $475D: $63
    ld [bc], a                                    ; $475E: $02
    ld c, $16                                     ; $475F: $0E $16
    ld h, h                                       ; $4761: $64
    inc b                                         ; $4762: $04
    ld c, $E4                                     ; $4763: $0E $E4
    ld h, e                                       ; $4765: $63
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    ld h, d                                       ; $4768: $62
    dec b                                         ; $4769: $05
    ld e, h                                       ; $476A: $5C
    inc bc                                        ; $476B: $03
    ld [bc], a                                    ; $476C: $02
    ld b, b                                       ; $476D: $40
    inc b                                         ; $476E: $04
    dec d                                         ; $476F: $15
    ld c, $0C                                     ; $4770: $0E $0C
    ld h, h                                       ; $4772: $64
    ld [bc], a                                    ; $4773: $02
    ld c, $DA                                     ; $4774: $0E $DA
    ld h, e                                       ; $4776: $63
    ld [bc], a                                    ; $4777: $02
    ld c, $16                                     ; $4778: $0E $16
    ld h, h                                       ; $477A: $64
    inc b                                         ; $477B: $04
    ld c, $E4                                     ; $477C: $0E $E4
    ld h, e                                       ; $477E: $63
    nop                                           ; $477F: $00
    nop                                           ; $4780: $00
    ld e, e                                       ; $4781: $5B
    jr z, jr_028_4719                             ; $4782: $28 $95

    ld c, d                                       ; $4784: $4A
    ld h, d                                       ; $4785: $62
    ld b, $5B                                     ; $4786: $06 $5B
    jr z, jr_028_479B                             ; $4788: $28 $11

    ld c, e                                       ; $478A: $4B
    dec d                                         ; $478B: $15
    ld c, $34                                     ; $478C: $0E $34
    ld h, h                                       ; $478E: $64

jr_028_478F:
    db $10                                        ; $478F: $10
    ld c, $DA                                     ; $4790: $0E $DA
    ld h, e                                       ; $4792: $63
    inc b                                         ; $4793: $04
    ld c, $3E                                     ; $4794: $0E $3E
    ld h, h                                       ; $4796: $64
    db $10                                        ; $4797: $10
    ld c, $DA                                     ; $4798: $0E $DA
    ld h, e                                       ; $479A: $63

jr_028_479B:
    inc b                                         ; $479B: $04
    ld c, $34                                     ; $479C: $0E $34

jr_028_479E:
    ld h, h                                       ; $479E: $64
    stop                                          ; $479F: $10 $00
    ld h, d                                       ; $47A1: $62
    rlca                                          ; $47A2: $07
    ld e, h                                       ; $47A3: $5C
    inc b                                         ; $47A4: $04
    ld [bc], a                                    ; $47A5: $02
    ld b, b                                       ; $47A6: $40
    inc b                                         ; $47A7: $04
    dec d                                         ; $47A8: $15
    ld c, $0C                                     ; $47A9: $0E $0C
    ld h, h                                       ; $47AB: $64
    ld [bc], a                                    ; $47AC: $02
    ld c, $DA                                     ; $47AD: $0E $DA
    ld h, e                                       ; $47AF: $63
    ld [bc], a                                    ; $47B0: $02
    ld c, $16                                     ; $47B1: $0E $16
    ld h, h                                       ; $47B3: $64
    inc b                                         ; $47B4: $04
    ld c, $E4                                     ; $47B5: $0E $E4
    ld h, e                                       ; $47B7: $63
    nop                                           ; $47B8: $00
    nop                                           ; $47B9: $00
    ld e, e                                       ; $47BA: $5B
    jr z, @-$57                                   ; $47BB: $28 $A7

    ld c, e                                       ; $47BD: $4B
    ld h, d                                       ; $47BE: $62
    ld [$0E14], sp                                ; $47BF: $08 $14 $0E
    ret nc                                        ; $47C2: $D0

    ld h, e                                       ; $47C3: $63
    ld e, e                                       ; $47C4: $5B
    jr z, jr_028_478F                             ; $47C5: $28 $C8

    ld c, e                                       ; $47C7: $4B
    ld h, d                                       ; $47C8: $62

jr_028_47C9:
    add hl, bc                                    ; $47C9: $09
    ld e, h                                       ; $47CA: $5C
    dec b                                         ; $47CB: $05
    inc bc                                        ; $47CC: $03
    dec d                                         ; $47CD: $15

jr_028_47CE:
    ld c, $90                                     ; $47CE: $0E $90
    ld h, e                                       ; $47D0: $63
    ld [$B00E], sp                                ; $47D1: $08 $0E $B0
    ld h, e                                       ; $47D4: $63
    jr nz, jr_028_47E5                            ; $47D5: $20 $0E

    jp c, $0063                                   ; $47D7: $DA $63 $00

    nop                                           ; $47DA: $00
    add hl, bc                                    ; $47DB: $09
    nop                                           ; $47DC: $00
    jr nz, jr_028_479E                            ; $47DD: $20 $BF

    ld d, b                                       ; $47DF: $50
    ld e, e                                       ; $47E0: $5B
    jr z, jr_028_47CE                             ; $47E1: $28 $EB

    ld c, e                                       ; $47E3: $4B
    ld h, d                                       ; $47E4: $62

jr_028_47E5:
    ld a, [bc]                                    ; $47E5: $0A
    ld e, h                                       ; $47E6: $5C
    ld b, $03                                     ; $47E7: $06 $03
    dec d                                         ; $47E9: $15
    ld c, $EE                                     ; $47EA: $0E $EE
    ld h, e                                       ; $47EC: $63
    ld [$B00E], sp                                ; $47ED: $08 $0E $B0
    ld h, e                                       ; $47F0: $63
    jr nz, jr_028_4801                            ; $47F1: $20 $0E

    db $E4                                        ; $47F3: $E4
    ld h, e                                       ; $47F4: $63
    nop                                           ; $47F5: $00
    nop                                           ; $47F6: $00
    xor a                                         ; $47F7: $AF
    dec h                                         ; $47F8: $25
    and c                                         ; $47F9: $A1
    ld b, b                                       ; $47FA: $40
    add hl, de                                    ; $47FB: $19
    ld b, d                                       ; $47FC: $42
    dec d                                         ; $47FD: $15
    rrca                                          ; $47FE: $0F
    ld sp, hl                                     ; $47FF: $F9
    ld l, c                                       ; $4800: $69

jr_028_4801:
    jr jr_028_4803                                ; $4801: $18 $00

jr_028_4803:
    dec bc                                        ; $4803: $0B
    inc b                                         ; $4804: $04
    dec d                                         ; $4805: $15
    rrca                                          ; $4806: $0F
    cp c                                          ; $4807: $B9
    ld l, c                                       ; $4808: $69
    db $10                                        ; $4809: $10
    rrca                                          ; $480A: $0F
    daa                                           ; $480B: $27
    ld l, d                                       ; $480C: $6A
    jr nc, jr_028_480F                            ; $480D: $30 $00

jr_028_480F:
    ld e, e                                       ; $480F: $5B
    jr z, jr_028_47C9                             ; $4810: $28 $B7

    ld c, c                                       ; $4812: $49
    ld h, d                                       ; $4813: $62
    inc bc                                        ; $4814: $03
    ld e, h                                       ; $4815: $5C
    nop                                           ; $4816: $00
    ld [bc], a                                    ; $4817: $02
    ld e, h                                       ; $4818: $5C
    ld bc, $1502                                  ; $4819: $01 $02 $15
    rrca                                          ; $481C: $0F
    ld sp, hl                                     ; $481D: $F9
    ld l, c                                       ; $481E: $69
    inc c                                         ; $481F: $0C
    rrca                                          ; $4820: $0F
    jp hl                                         ; $4821: $E9


    ld l, c                                       ; $4822: $69
    inc b                                         ; $4823: $04
    rrca                                          ; $4824: $0F
    ld sp, hl                                     ; $4825: $F9
    ld l, c                                       ; $4826: $69
    inc b                                         ; $4827: $04
    rrca                                          ; $4828: $0F
    daa                                           ; $4829: $27
    ld l, d                                       ; $482A: $6A
    nop                                           ; $482B: $00
    nop                                           ; $482C: $00
    ld e, h                                       ; $482D: $5C
    ld [bc], a                                    ; $482E: $02
    ld [bc], a                                    ; $482F: $02
    dec d                                         ; $4830: $15
    rrca                                          ; $4831: $0F
    jp hl                                         ; $4832: $E9


    ld l, c                                       ; $4833: $69
    inc b                                         ; $4834: $04
    rrca                                          ; $4835: $0F
    daa                                           ; $4836: $27
    ld l, d                                       ; $4837: $6A
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    ld e, h                                       ; $483A: $5C
    inc bc                                        ; $483B: $03
    ld [bc], a                                    ; $483C: $02
    dec d                                         ; $483D: $15
    rrca                                          ; $483E: $0F
    ld sp, hl                                     ; $483F: $F9
    ld l, c                                       ; $4840: $69
    inc b                                         ; $4841: $04
    rrca                                          ; $4842: $0F
    jp hl                                         ; $4843: $E9


    ld l, c                                       ; $4844: $69
    inc b                                         ; $4845: $04
    rrca                                          ; $4846: $0F
    daa                                           ; $4847: $27
    ld l, d                                       ; $4848: $6A
    nop                                           ; $4849: $00
    nop                                           ; $484A: $00
    ld e, h                                       ; $484B: $5C
    inc b                                         ; $484C: $04
    ld [bc], a                                    ; $484D: $02
    dec d                                         ; $484E: $15
    rrca                                          ; $484F: $0F
    ld sp, hl                                     ; $4850: $F9
    ld l, c                                       ; $4851: $69
    inc b                                         ; $4852: $04
    rrca                                          ; $4853: $0F
    jp hl                                         ; $4854: $E9


    ld l, c                                       ; $4855: $69
    inc b                                         ; $4856: $04
    rrca                                          ; $4857: $0F
    daa                                           ; $4858: $27
    ld l, d                                       ; $4859: $6A
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    ld e, h                                       ; $485C: $5C
    dec b                                         ; $485D: $05
    inc bc                                        ; $485E: $03
    ld b, b                                       ; $485F: $40
    inc b                                         ; $4860: $04
    dec d                                         ; $4861: $15
    rrca                                          ; $4862: $0F
    dec sp                                        ; $4863: $3B
    ld l, d                                       ; $4864: $6A
    ld [$090F], sp                                ; $4865: $08 $0F $09
    ld l, d                                       ; $4868: $6A
    ld [$310F], sp                                ; $4869: $08 $0F $31
    ld l, d                                       ; $486C: $6A
    db $10                                        ; $486D: $10
    rrca                                          ; $486E: $0F
    dec e                                         ; $486F: $1D
    ld l, d                                       ; $4870: $6A
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    ld e, h                                       ; $4873: $5C
    ld b, $03                                     ; $4874: $06 $03
    dec d                                         ; $4876: $15
    rrca                                          ; $4877: $0F
    ret                                           ; $4878: $C9


    ld l, c                                       ; $4879: $69
    ld [$E90F], sp                                ; $487A: $08 $0F $E9
    ld l, c                                       ; $487D: $69
    ld b, b                                       ; $487E: $40
    nop                                           ; $487F: $00
    add hl, de                                    ; $4880: $19
    ld b, d                                       ; $4881: $42
    dec d                                         ; $4882: $15
    ld c, $13                                     ; $4883: $0E $13
    ld h, [hl]                                    ; $4885: $66
    jr nz, jr_028_4896                            ; $4886: $20 $0E

    add c                                         ; $4888: $81
    ld h, [hl]                                    ; $4889: $66
    nop                                           ; $488A: $00
    nop                                           ; $488B: $00
    ld e, h                                       ; $488C: $5C
    dec b                                         ; $488D: $05
    inc bc                                        ; $488E: $03
    ld b, b                                       ; $488F: $40
    jr z, @+$16                                   ; $4890: $28 $14

    ld c, $63                                     ; $4892: $0E $63
    ld h, [hl]                                    ; $4894: $66
    ld e, h                                       ; $4895: $5C

jr_028_4896:
    ld b, $03                                     ; $4896: $06 $03
    dec d                                         ; $4898: $15
    ld c, $81                                     ; $4899: $0E $81
    ld h, [hl]                                    ; $489B: $66
    db $10                                        ; $489C: $10
    ld c, $63                                     ; $489D: $0E $63
    ld h, [hl]                                    ; $489F: $66
    ld [$770E], sp                                ; $48A0: $08 $0E $77
    ld h, [hl]                                    ; $48A3: $66
    ld [$8B0E], sp                                ; $48A4: $08 $0E $8B
    ld h, [hl]                                    ; $48A7: $66
    ld [$770E], sp                                ; $48A8: $08 $0E $77
    ld h, [hl]                                    ; $48AB: $66
    jr nc, jr_028_48BC                            ; $48AC: $30 $0E

    ld b, e                                       ; $48AE: $43
    ld h, [hl]                                    ; $48AF: $66
    jr nz, jr_028_48C0                            ; $48B0: $20 $0E

    ld [hl], a                                    ; $48B2: $77
    ld h, [hl]                                    ; $48B3: $66
    nop                                           ; $48B4: $00

jr_028_48B5:
    nop                                           ; $48B5: $00
    add hl, bc                                    ; $48B6: $09
    nop                                           ; $48B7: $00
    jr nz, jr_028_48B5                            ; $48B8: $20 $FB

    ld d, b                                       ; $48BA: $50
    rlca                                          ; $48BB: $07

jr_028_48BC:
    nop                                           ; $48BC: $00
    add c                                         ; $48BD: $81
    ld e, l                                       ; $48BE: $5D
    ld a, l                                       ; $48BF: $7D

jr_028_48C0:
    adc c                                         ; $48C0: $89
    pop bc                                        ; $48C1: $C1
    ld [bc], a                                    ; $48C2: $02
    add hl, de                                    ; $48C3: $19
    ld b, d                                       ; $48C4: $42
    sbc e                                         ; $48C5: $9B
    jr jr_028_4916                                ; $48C6: $18 $4E

    sbc a                                         ; $48C8: $9F
    ld c, a                                       ; $48C9: $4F
    ld l, b                                       ; $48CA: $68
    inc l                                         ; $48CB: $2C
    jr nz, jr_028_4937                            ; $48CC: $20 $69

    ld [hl], h                                    ; $48CE: $74
    daa                                           ; $48CF: $27
    ld [hl], e                                    ; $48D0: $73
    jr nz, jr_028_494C                            ; $48D1: $20 $79

    ld l, a                                       ; $48D3: $6F
    ld [hl], l                                    ; $48D4: $75
    ld l, $FE                                     ; $48D5: $2E $FE
    ld e, c                                       ; $48D7: $59
    ld l, a                                       ; $48D8: $6F
    ld [hl], l                                    ; $48D9: $75
    jr nz, @+$6F                                  ; $48DA: $20 $6D

    ld h, c                                       ; $48DC: $61
    ld a, c                                       ; $48DD: $79
    jr nz, jr_028_4942                            ; $48DE: $20 $62

    ld h, l                                       ; $48E0: $65
    jr nz, jr_028_4957                            ; $48E1: $20 $74

    ld l, b                                       ; $48E3: $68
    ld h, l                                       ; $48E4: $65
    rst $38                                       ; $48E5: $FF
    ld b, a                                       ; $48E6: $47
    ld [hl], d                                    ; $48E7: $72
    ld h, l                                       ; $48E8: $65
    ld h, c                                       ; $48E9: $61
    ld [hl], h                                    ; $48EA: $74
    jr nz, jr_028_493A                            ; $48EB: $20 $4D

    ld h, c                                       ; $48ED: $61
    ld h, a                                       ; $48EE: $67
    ld [hl], l                                    ; $48EF: $75
    ld [hl], e                                    ; $48F0: $73
    inc l                                         ; $48F1: $2C
    cp $62                                        ; $48F2: $FE $62
    ld [hl], l                                    ; $48F4: $75
    ld [hl], h                                    ; $48F5: $74
    jr nz, jr_028_4941                            ; $48F6: $20 $49

    jr nz, jr_028_495B                            ; $48F8: $20 $61

    ld l, l                                       ; $48FA: $6D
    jr nz, jr_028_4971                            ; $48FB: $20 $74

    ld l, b                                       ; $48FD: $68
    ld h, l                                       ; $48FE: $65
    rst $38                                       ; $48FF: $FF
    ld b, a                                       ; $4900: $47
    ld [hl], d                                    ; $4901: $72
    ld h, l                                       ; $4902: $65
    ld h, c                                       ; $4903: $61
    ld [hl], h                                    ; $4904: $74
    ld h, l                                       ; $4905: $65
    ld [hl], d                                    ; $4906: $72
    jr nz, jr_028_4950                            ; $4907: $20 $47

    ld l, a                                       ; $4909: $6F
    ld h, a                                       ; $490A: $67
    ld l, a                                       ; $490B: $6F
    ld [hl], d                                    ; $490C: $72
    ld hl, $59FE                                  ; $490D: $21 $FE $59
    ld l, a                                       ; $4910: $6F
    ld [hl], l                                    ; $4911: $75
    jr nz, @+$63                                  ; $4912: $20 $61

    ld [hl], d                                    ; $4914: $72
    ld h, l                                       ; $4915: $65

jr_028_4916:
    jr nz, jr_028_498B                            ; $4916: $20 $73

    ld [hl], h                                    ; $4918: $74
    ld l, c                                       ; $4919: $69
    ld l, h                                       ; $491A: $6C
    ld l, h                                       ; $491B: $6C
    rst $38                                       ; $491C: $FF
    ld h, [hl]                                    ; $491D: $66
    ld l, h                                       ; $491E: $6C
    ld h, c                                       ; $491F: $61
    ld h, d                                       ; $4920: $62
    ld h, d                                       ; $4921: $62
    ld a, c                                       ; $4922: $79
    jr nz, jr_028_4986                            ; $4923: $20 $61

    ld [hl], e                                    ; $4925: $73
    jr nz, jr_028_4989                            ; $4926: $20 $61

    cp $6B                                        ; $4928: $FE $6B
    ld l, c                                       ; $492A: $69
    ld [hl], b                                    ; $492B: $70
    ld [hl], b                                    ; $492C: $70
    ld h, l                                       ; $492D: $65
    ld [hl], d                                    ; $492E: $72
    ld h, l                                       ; $492F: $65
    ld h, h                                       ; $4930: $64
    rst $38                                       ; $4931: $FF
    ld h, d                                       ; $4932: $62
    ld h, l                                       ; $4933: $65
    ld h, l                                       ; $4934: $65
    ld h, [hl]                                    ; $4935: $66
    ld [hl], e                                    ; $4936: $73

jr_028_4937:
    ld [hl], h                                    ; $4937: $74
    ld h, l                                       ; $4938: $65
    ld h, c                                       ; $4939: $61

jr_028_493A:
    ld l, e                                       ; $493A: $6B
    ld l, $2E                                     ; $493B: $2E $2E
    ld l, $FE                                     ; $493D: $2E $FE
    db $FD                                        ; $493F: $FD
    sbc d                                         ; $4940: $9A

jr_028_4941:
    ld e, b                                       ; $4941: $58

jr_028_4942:
    ld bc, $9B42                                  ; $4942: $01 $42 $9B
    jr jr_028_4995                                ; $4945: $18 $4E

    sbc a                                         ; $4947: $9F
    ld l, $2E                                     ; $4948: $2E $2E
    ld l, $61                                     ; $494A: $2E $61

jr_028_494C:
    ld l, [hl]                                    ; $494C: $6E
    ld h, h                                       ; $494D: $64
    jr nz, jr_028_4999                            ; $494E: $20 $49

jr_028_4950:
    jr nz, jr_028_49B3                            ; $4950: $20 $61

    ld l, l                                       ; $4952: $6D
    rst $38                                       ; $4953: $FF
    ld [hl], e                                    ; $4954: $73
    ld [hl], h                                    ; $4955: $74
    ld l, c                                       ; $4956: $69

jr_028_4957:
    ld l, h                                       ; $4957: $6C
    ld l, h                                       ; $4958: $6C
    jr nz, jr_028_49CD                            ; $4959: $20 $72

jr_028_495B:
    ld l, c                                       ; $495B: $69
    ld [hl], b                                    ; $495C: $70
    ld [hl], b                                    ; $495D: $70
    ld h, l                                       ; $495E: $65
    ld h, h                                       ; $495F: $64
    cp $6C                                        ; $4960: $FE $6C
    ld l, c                                       ; $4962: $69
    ld l, e                                       ; $4963: $6B
    ld h, l                                       ; $4964: $65
    jr nz, @+$72                                  ; $4965: $20 $70

    ld h, l                                       ; $4967: $65
    ld h, c                                       ; $4968: $61
    ld l, [hl]                                    ; $4969: $6E
    ld [hl], l                                    ; $496A: $75
    ld [hl], h                                    ; $496B: $74
    ld a, c                                       ; $496C: $79
    rst $38                                       ; $496D: $FF
    ld l, [hl]                                    ; $496E: $6E
    ld l, a                                       ; $496F: $6F
    ld [hl], l                                    ; $4970: $75

jr_028_4971:
    ld h, a                                       ; $4971: $67
    ld h, c                                       ; $4972: $61
    ld [hl], h                                    ; $4973: $74
    ld hl, $FE21                                  ; $4974: $21 $21 $FE
    ld c, c                                       ; $4977: $49
    jr nz, jr_028_49DB                            ; $4978: $20 $61

    ld l, l                                       ; $497A: $6D
    jr nz, jr_028_49F1                            ; $497B: $20 $74

    ld l, b                                       ; $497D: $68
    ld h, l                                       ; $497E: $65
    jr nz, @+$76                                  ; $497F: $20 $74

    ld [hl], d                                    ; $4981: $72
    ld [hl], l                                    ; $4982: $75
    ld h, l                                       ; $4983: $65
    rst $38                                       ; $4984: $FF
    ld l, l                                       ; $4985: $6D

jr_028_4986:
    ld h, c                                       ; $4986: $61
    ld [hl], e                                    ; $4987: $73
    ld [hl], h                                    ; $4988: $74

jr_028_4989:
    ld h, l                                       ; $4989: $65
    ld [hl], d                                    ; $498A: $72

jr_028_498B:
    jr nz, jr_028_49FC                            ; $498B: $20 $6F

    ld h, [hl]                                    ; $498D: $66
    jr nz, jr_028_49F1                            ; $498E: $20 $61

    ld l, h                                       ; $4990: $6C
    ld l, h                                       ; $4991: $6C
    cp $74                                        ; $4992: $FE $74
    ld l, b                                       ; $4994: $68

jr_028_4995:
    ld l, c                                       ; $4995: $69
    ld l, [hl]                                    ; $4996: $6E
    ld h, a                                       ; $4997: $67
    ld [hl], e                                    ; $4998: $73

jr_028_4999:
    jr nz, @+$6A                                  ; $4999: $20 $68

    ld h, l                                       ; $499B: $65
    ld [hl], d                                    ; $499C: $72
    ld l, a                                       ; $499D: $6F
    ld l, c                                       ; $499E: $69
    ld h, e                                       ; $499F: $63
    ld hl, $41FF                                  ; $49A0: $21 $FF $41
    jr nz, jr_028_4A1C                            ; $49A3: $20 $77

    ld l, c                                       ; $49A5: $69
    ld l, [hl]                                    ; $49A6: $6E
    ld l, [hl]                                    ; $49A7: $6E
    ld h, l                                       ; $49A8: $65
    ld [hl], d                                    ; $49A9: $72
    jr nz, jr_028_4A15                            ; $49AA: $20 $69

    ld [hl], e                                    ; $49AC: $73
    jr nz, jr_028_4A1C                            ; $49AD: $20 $6D

    ld h, l                                       ; $49AF: $65
    ld hl, $FDFE                                  ; $49B0: $21 $FE $FD

jr_028_49B3:
    sbc d                                         ; $49B3: $9A
    ld e, b                                       ; $49B4: $58
    ld [bc], a                                    ; $49B5: $02
    ld b, d                                       ; $49B6: $42
    sbc e                                         ; $49B7: $9B
    sbc b                                         ; $49B8: $98
    ld [hl], e                                    ; $49B9: $73
    sbc a                                         ; $49BA: $9F
    ld b, a                                       ; $49BB: $47
    ld l, a                                       ; $49BC: $6F
    ld h, a                                       ; $49BD: $67
    ld l, a                                       ; $49BE: $6F
    ld [hl], d                                    ; $49BF: $72
    ccf                                           ; $49C0: $3F
    cp $FD                                        ; $49C1: $FE $FD
    sbc d                                         ; $49C3: $9A
    ld e, b                                       ; $49C4: $58
    inc bc                                        ; $49C5: $03
    ld b, d                                       ; $49C6: $42
    sbc e                                         ; $49C7: $9B
    jr jr_028_4A18                                ; $49C8: $18 $4E

    sbc a                                         ; $49CA: $9F
    ld d, h                                       ; $49CB: $54
    ld l, b                                       ; $49CC: $68

jr_028_49CD:
    ld h, c                                       ; $49CD: $61
    ld [hl], h                                    ; $49CE: $74
    jr nz, @+$6B                                  ; $49CF: $20 $69

    ld [hl], e                                    ; $49D1: $73
    jr nz, jr_028_4A41                            ; $49D2: $20 $6D

    ld h, l                                       ; $49D4: $65
    ld hl, $FDFE                                  ; $49D5: $21 $FE $FD
    sbc d                                         ; $49D8: $9A
    ld b, b                                       ; $49D9: $40
    ld b, b                                       ; $49DA: $40

jr_028_49DB:
    sbc e                                         ; $49DB: $9B
    sbc b                                         ; $49DC: $98
    ld [hl], e                                    ; $49DD: $73
    sbc a                                         ; $49DE: $9F
    ld b, a                                       ; $49DF: $47
    ld l, a                                       ; $49E0: $6F
    ld h, a                                       ; $49E1: $67
    ld l, a                                       ; $49E2: $6F
    ld [hl], d                                    ; $49E3: $72
    ld l, $2E                                     ; $49E4: $2E $2E
    ld l, $FE                                     ; $49E6: $2E $FE
    db $FD                                        ; $49E8: $FD
    sbc d                                         ; $49E9: $9A
    ld e, b                                       ; $49EA: $58
    inc b                                         ; $49EB: $04
    ld b, d                                       ; $49EC: $42
    sbc e                                         ; $49ED: $9B
    jr jr_028_4A3E                                ; $49EE: $18 $4E

    sbc a                                         ; $49F0: $9F

jr_028_49F1:
    ld c, a                                       ; $49F1: $4F
    ld [hl], a                                    ; $49F2: $77
    ld hl, $4F20                                  ; $49F3: $21 $20 $4F
    ld d, a                                       ; $49F6: $57
    ld hl, $53FF                                  ; $49F7: $21 $FF $53
    ld [hl], h                                    ; $49FA: $74
    ld l, a                                       ; $49FB: $6F

jr_028_49FC:
    ld [hl], b                                    ; $49FC: $70
    jr nz, @+$76                                  ; $49FD: $20 $74

    ld l, b                                       ; $49FF: $68
    ld h, c                                       ; $4A00: $61
    ld [hl], h                                    ; $4A01: $74
    ld hl, $FDFE                                  ; $4A02: $21 $FE $FD
    sbc e                                         ; $4A05: $9B
    sbc b                                         ; $4A06: $98
    ld [hl], e                                    ; $4A07: $73
    sbc a                                         ; $4A08: $9F
    ld b, a                                       ; $4A09: $47
    ld l, a                                       ; $4A0A: $6F
    ld h, a                                       ; $4A0B: $67
    ld l, a                                       ; $4A0C: $6F
    ld [hl], d                                    ; $4A0D: $72
    inc l                                         ; $4A0E: $2C
    jr nz, jr_028_4A8A                            ; $4A0F: $20 $79

    ld l, a                                       ; $4A11: $6F
    ld [hl], l                                    ; $4A12: $75
    rst $38                                       ; $4A13: $FF
    ld l, c                                       ; $4A14: $69

jr_028_4A15:
    ld h, h                                       ; $4A15: $64
    ld l, c                                       ; $4A16: $69
    ld l, a                                       ; $4A17: $6F

jr_028_4A18:
    ld [hl], h                                    ; $4A18: $74
    ld hl, $5720                                  ; $4A19: $21 $20 $57

jr_028_4A1C:
    ld h, l                                       ; $4A1C: $65
    jr nz, jr_028_4A96                            ; $4A1D: $20 $77

    ld h, l                                       ; $4A1F: $65
    ld [hl], d                                    ; $4A20: $72
    ld h, l                                       ; $4A21: $65
    cp $61                                        ; $4A22: $FE $61
    ld l, h                                       ; $4A24: $6C
    ld l, h                                       ; $4A25: $6C
    jr nz, @+$79                                  ; $4A26: $20 $77

    ld l, a                                       ; $4A28: $6F
    ld [hl], d                                    ; $4A29: $72
    ld [hl], d                                    ; $4A2A: $72
    ld l, c                                       ; $4A2B: $69
    ld h, l                                       ; $4A2C: $65
    ld h, h                                       ; $4A2D: $64
    rst $38                                       ; $4A2E: $FF
    ld h, c                                       ; $4A2F: $61
    ld h, d                                       ; $4A30: $62
    ld l, a                                       ; $4A31: $6F
    ld [hl], l                                    ; $4A32: $75
    ld [hl], h                                    ; $4A33: $74
    jr nz, @+$7B                                  ; $4A34: $20 $79

    ld l, a                                       ; $4A36: $6F
    ld [hl], l                                    ; $4A37: $75
    ld hl, $5920                                  ; $4A38: $21 $20 $59
    ld l, a                                       ; $4A3B: $6F
    ld [hl], l                                    ; $4A3C: $75
    rst $38                                       ; $4A3D: $FF

jr_028_4A3E:
    ld [hl], a                                    ; $4A3E: $77
    ld h, l                                       ; $4A3F: $65
    ld [hl], d                                    ; $4A40: $72

jr_028_4A41:
    ld h, l                                       ; $4A41: $65
    jr nz, jr_028_4AA5                            ; $4A42: $20 $61

    ld l, h                                       ; $4A44: $6C
    ld l, c                                       ; $4A45: $69
    halt                                          ; $4A46: $76
    ld h, l                                       ; $4A47: $65
    jr nz, jr_028_4AAB                            ; $4A48: $20 $61

    ld l, h                                       ; $4A4A: $6C
    ld l, h                                       ; $4A4B: $6C
    cp $74                                        ; $4A4C: $FE $74
    ld l, b                                       ; $4A4E: $68
    ld l, c                                       ; $4A4F: $69
    ld [hl], e                                    ; $4A50: $73
    jr nz, @+$76                                  ; $4A51: $20 $74

    ld l, c                                       ; $4A53: $69
    ld l, l                                       ; $4A54: $6D
    ld h, l                                       ; $4A55: $65
    jr nz, jr_028_4AB9                            ; $4A56: $20 $61

    ld l, [hl]                                    ; $4A58: $6E
    ld h, h                                       ; $4A59: $64
    rst $38                                       ; $4A5A: $FF
    ld a, c                                       ; $4A5B: $79
    ld l, a                                       ; $4A5C: $6F
    ld [hl], l                                    ; $4A5D: $75
    jr nz, jr_028_4ACE                            ; $4A5E: $20 $6E

    ld h, l                                       ; $4A60: $65
    halt                                          ; $4A61: $76
    ld h, l                                       ; $4A62: $65
    ld [hl], d                                    ; $4A63: $72
    jr nz, jr_028_4ACB                            ; $4A64: $20 $65

    halt                                          ; $4A66: $76
    ld h, l                                       ; $4A67: $65
    ld l, [hl]                                    ; $4A68: $6E
    cp $62                                        ; $4A69: $FE $62
    ld l, a                                       ; $4A6B: $6F
    ld [hl], h                                    ; $4A6C: $74
    ld l, b                                       ; $4A6D: $68
    ld h, l                                       ; $4A6E: $65
    ld [hl], d                                    ; $4A6F: $72
    ld h, l                                       ; $4A70: $65
    ld h, h                                       ; $4A71: $64
    jr nz, jr_028_4AE8                            ; $4A72: $20 $74

    ld l, a                                       ; $4A74: $6F
    rst $38                                       ; $4A75: $FF
    ld h, e                                       ; $4A76: $63
    ld l, a                                       ; $4A77: $6F
    ld l, l                                       ; $4A78: $6D
    ld h, l                                       ; $4A79: $65
    jr nz, @+$64                                  ; $4A7A: $20 $62

    ld h, c                                       ; $4A7C: $61
    ld h, e                                       ; $4A7D: $63
    ld l, e                                       ; $4A7E: $6B
    ccf                                           ; $4A7F: $3F
    ld hl, $59FE                                  ; $4A80: $21 $FE $59
    ld l, a                                       ; $4A83: $6F
    ld [hl], l                                    ; $4A84: $75
    ld l, $2E                                     ; $4A85: $2E $2E
    ld l, $20                                     ; $4A87: $2E $20
    ld c, d                                       ; $4A89: $4A

jr_028_4A8A:
    ld b, l                                       ; $4A8A: $45
    ld d, d                                       ; $4A8B: $52
    ld c, e                                       ; $4A8C: $4B
    ld hl, $FE21                                  ; $4A8D: $21 $21 $FE
    db $FD                                        ; $4A90: $FD
    sbc d                                         ; $4A91: $9A
    ld e, b                                       ; $4A92: $58
    dec b                                         ; $4A93: $05
    ld b, d                                       ; $4A94: $42
    sbc e                                         ; $4A95: $9B

jr_028_4A96:
    jr jr_028_4AE6                                ; $4A96: $18 $4E

    sbc a                                         ; $4A98: $9F
    ld c, a                                       ; $4A99: $4F
    ld d, l                                       ; $4A9A: $55
    ld b, e                                       ; $4A9B: $43
    ld c, b                                       ; $4A9C: $48
    ld hl, $FDFE                                  ; $4A9D: $21 $FE $FD
    sbc e                                         ; $4AA0: $9B
    sbc b                                         ; $4AA1: $98
    ld [hl], e                                    ; $4AA2: $73
    sbc a                                         ; $4AA3: $9F
    ld c, d                                       ; $4AA4: $4A

jr_028_4AA5:
    ld b, l                                       ; $4AA5: $45
    ld d, d                                       ; $4AA6: $52
    ld c, e                                       ; $4AA7: $4B
    ld hl, $2121                                  ; $4AA8: $21 $21 $21

jr_028_4AAB:
    cp $FD                                        ; $4AAB: $FE $FD
    sbc e                                         ; $4AAD: $9B
    jr jr_028_4AFE                                ; $4AAE: $18 $4E

    sbc a                                         ; $4AB0: $9F
    ld c, c                                       ; $4AB1: $49
    jr nz, jr_028_4B18                            ; $4AB2: $20 $64

    ld l, c                                       ; $4AB4: $69
    ld h, h                                       ; $4AB5: $64
    jr nz, jr_028_4B1F                            ; $4AB6: $20 $67

    ld l, a                                       ; $4AB8: $6F

jr_028_4AB9:
    jr nz, jr_028_4B1D                            ; $4AB9: $20 $62

    ld h, c                                       ; $4ABB: $61
    ld h, e                                       ; $4ABC: $63
    ld l, e                                       ; $4ABD: $6B
    ld hl, $49FE                                  ; $4ABE: $21 $FE $49
    jr nz, jr_028_4B3A                            ; $4AC1: $20 $77

    ld h, l                                       ; $4AC3: $65
    ld l, [hl]                                    ; $4AC4: $6E
    ld [hl], h                                    ; $4AC5: $74
    jr nz, jr_028_4B2A                            ; $4AC6: $20 $62

    ld h, c                                       ; $4AC8: $61
    ld h, e                                       ; $4AC9: $63
    ld l, e                                       ; $4ACA: $6B

jr_028_4ACB:
    jr nz, jr_028_4B41                            ; $4ACB: $20 $74

    ld l, a                                       ; $4ACD: $6F

jr_028_4ACE:
    rst $38                                       ; $4ACE: $FF
    ld [hl], h                                    ; $4ACF: $74
    ld l, b                                       ; $4AD0: $68
    ld h, l                                       ; $4AD1: $65
    jr nz, jr_028_4B29                            ; $4AD2: $20 $55

    ld l, [hl]                                    ; $4AD4: $6E
    ld h, h                                       ; $4AD5: $64
    ld h, l                                       ; $4AD6: $65
    ld [hl], d                                    ; $4AD7: $72
    ld l, [hl]                                    ; $4AD8: $6E
    ld h, l                                       ; $4AD9: $65
    ld h, c                                       ; $4ADA: $61
    ld [hl], h                                    ; $4ADB: $74
    ld l, b                                       ; $4ADC: $68
    cp $61                                        ; $4ADD: $FE $61
    ld l, [hl]                                    ; $4ADF: $6E
    ld h, h                                       ; $4AE0: $64
    jr nz, jr_028_4B51                            ; $4AE1: $20 $6E

    ld l, a                                       ; $4AE3: $6F
    ld h, d                                       ; $4AE4: $62
    ld l, a                                       ; $4AE5: $6F

jr_028_4AE6:
    ld h, h                                       ; $4AE6: $64
    ld a, c                                       ; $4AE7: $79

jr_028_4AE8:
    jr nz, jr_028_4B61                            ; $4AE8: $20 $77

    ld h, c                                       ; $4AEA: $61
    ld [hl], e                                    ; $4AEB: $73
    rst $38                                       ; $4AEC: $FF
    ld [hl], h                                    ; $4AED: $74
    ld l, b                                       ; $4AEE: $68
    ld h, l                                       ; $4AEF: $65
    ld [hl], d                                    ; $4AF0: $72
    ld h, l                                       ; $4AF1: $65
    ld hl, $5220                                  ; $4AF2: $21 $20 $52
    ld h, l                                       ; $4AF5: $65
    ld h, c                                       ; $4AF6: $61
    ld l, h                                       ; $4AF7: $6C
    ld l, h                                       ; $4AF8: $6C
    ld a, c                                       ; $4AF9: $79
    ld hl, $FDFE                                  ; $4AFA: $21 $FE $FD
    sbc d                                         ; $4AFD: $9A

jr_028_4AFE:
    ld b, b                                       ; $4AFE: $40
    ld b, b                                       ; $4AFF: $40
    sbc e                                         ; $4B00: $9B
    sbc b                                         ; $4B01: $98
    ld [hl], e                                    ; $4B02: $73
    sbc a                                         ; $4B03: $9F
    ld d, d                                       ; $4B04: $52
    ld h, l                                       ; $4B05: $65
    ld h, c                                       ; $4B06: $61
    ld l, h                                       ; $4B07: $6C
    ld l, h                                       ; $4B08: $6C
    ld a, c                                       ; $4B09: $79
    ccf                                           ; $4B0A: $3F
    cp $FD                                        ; $4B0B: $FE $FD
    sbc d                                         ; $4B0D: $9A
    ld e, b                                       ; $4B0E: $58
    ld b, $42                                     ; $4B0F: $06 $42
    sbc e                                         ; $4B11: $9B
    jr jr_028_4B62                                ; $4B12: $18 $4E

    sbc a                                         ; $4B14: $9F
    ld e, c                                       ; $4B15: $59
    ld h, l                                       ; $4B16: $65
    ld [hl], e                                    ; $4B17: $73

jr_028_4B18:
    ld hl, $4220                                  ; $4B18: $21 $20 $42
    ld [hl], l                                    ; $4B1B: $75
    ld [hl], h                                    ; $4B1C: $74

jr_028_4B1D:
    jr nz, @+$6A                                  ; $4B1D: $20 $68

jr_028_4B1F:
    ld h, c                                       ; $4B1F: $61
    halt                                          ; $4B20: $76
    ld h, l                                       ; $4B21: $65
    rst $38                                       ; $4B22: $FF
    ld l, [hl]                                    ; $4B23: $6E
    ld l, a                                       ; $4B24: $6F
    jr nz, jr_028_4B8D                            ; $4B25: $20 $66

    ld h, l                                       ; $4B27: $65
    ld h, c                                       ; $4B28: $61

jr_028_4B29:
    ld [hl], d                                    ; $4B29: $72

jr_028_4B2A:
    inc l                                         ; $4B2A: $2C
    jr nz, jr_028_4B93                            ; $4B2B: $20 $66

    ld l, a                                       ; $4B2D: $6F
    ld [hl], d                                    ; $4B2E: $72
    jr nz, jr_028_4B7A                            ; $4B2F: $20 $49

    cp $61                                        ; $4B31: $FE $61
    ld l, l                                       ; $4B33: $6D
    jr nz, @+$75                                  ; $4B34: $20 $73

    ld [hl], h                                    ; $4B36: $74
    ld l, c                                       ; $4B37: $69
    ld l, h                                       ; $4B38: $6C
    ld l, h                                       ; $4B39: $6C

jr_028_4B3A:
    rst $38                                       ; $4B3A: $FF
    ld [hl], h                                    ; $4B3B: $74
    ld l, b                                       ; $4B3C: $68
    ld h, l                                       ; $4B3D: $65
    jr nz, jr_028_4BA7                            ; $4B3E: $20 $67

    ld [hl], d                                    ; $4B40: $72

jr_028_4B41:
    ld h, c                                       ; $4B41: $61
    ld h, e                                       ; $4B42: $63
    ld l, c                                       ; $4B43: $69
    ld l, a                                       ; $4B44: $6F
    ld [hl], l                                    ; $4B45: $75
    ld [hl], e                                    ; $4B46: $73
    inc l                                         ; $4B47: $2C
    cp $72                                        ; $4B48: $FE $72
    ld l, a                                       ; $4B4A: $6F
    ld h, e                                       ; $4B4B: $63
    ld l, e                                       ; $4B4C: $6B
    dec l                                         ; $4B4D: $2D
    ld l, b                                       ; $4B4E: $68
    ld h, c                                       ; $4B4F: $61
    ld [hl], d                                    ; $4B50: $72

jr_028_4B51:
    ld h, h                                       ; $4B51: $64
    inc l                                         ; $4B52: $2C
    cp $70                                        ; $4B53: $FE $70
    ld [hl], l                                    ; $4B55: $75
    ld l, l                                       ; $4B56: $6D
    ld [hl], b                                    ; $4B57: $70
    ld h, l                                       ; $4B58: $65
    ld h, h                                       ; $4B59: $64
    jr nz, @+$77                                  ; $4B5A: $20 $75

    ld [hl], b                                    ; $4B5C: $70
    jr nz, @+$6A                                  ; $4B5D: $20 $68

    ld [hl], l                                    ; $4B5F: $75
    ld l, [hl]                                    ; $4B60: $6E

jr_028_4B61:
    ld l, e                                       ; $4B61: $6B

jr_028_4B62:
    rst $38                                       ; $4B62: $FF
    ld l, a                                       ; $4B63: $6F
    ld h, [hl]                                    ; $4B64: $66
    dec l                                         ; $4B65: $2D
    cp $FD                                        ; $4B66: $FE $FD
    sbc e                                         ; $4B68: $9B
    sbc b                                         ; $4B69: $98
    ld [hl], e                                    ; $4B6A: $73
    sbc a                                         ; $4B6B: $9F
    ld c, a                                       ; $4B6C: $4F
    ld l, b                                       ; $4B6D: $68
    inc l                                         ; $4B6E: $2C
    jr nz, jr_028_4BE4                            ; $4B6F: $20 $73

    ld l, b                                       ; $4B71: $68
    ld [hl], l                                    ; $4B72: $75
    ld [hl], h                                    ; $4B73: $74
    jr nz, jr_028_4BEB                            ; $4B74: $20 $75

    ld [hl], b                                    ; $4B76: $70
    rst $38                                       ; $4B77: $FF
    ld b, a                                       ; $4B78: $47
    ld l, a                                       ; $4B79: $6F

jr_028_4B7A:
    ld h, a                                       ; $4B7A: $67
    ld l, a                                       ; $4B7B: $6F
    ld [hl], d                                    ; $4B7C: $72
    ld hl, $5720                                  ; $4B7D: $21 $20 $57
    ld h, l                                       ; $4B80: $65
    ld l, $2E                                     ; $4B81: $2E $2E
    ld l, $FE                                     ; $4B83: $2E $FE
    ld c, c                                       ; $4B85: $49
    ld l, $2E                                     ; $4B86: $2E $2E
    ld l, $20                                     ; $4B88: $2E $20
    ld [hl], a                                    ; $4B8A: $77
    ld h, c                                       ; $4B8B: $61
    ld [hl], e                                    ; $4B8C: $73

jr_028_4B8D:
    ld l, $2E                                     ; $4B8D: $2E $2E
    ld l, $FE                                     ; $4B8F: $2E $FE
    ld h, h                                       ; $4B91: $64
    daa                                           ; $4B92: $27

jr_028_4B93:
    ld l, a                                       ; $4B93: $6F
    ld l, b                                       ; $4B94: $68
    inc l                                         ; $4B95: $2C
    jr nz, jr_028_4C11                            ; $4B96: $20 $79

    ld l, a                                       ; $4B98: $6F
    ld [hl], l                                    ; $4B99: $75
    rst $38                                       ; $4B9A: $FF
    ld c, c                                       ; $4B9B: $49
    ld b, h                                       ; $4B9C: $44
    ld c, c                                       ; $4B9D: $49
    ld c, a                                       ; $4B9E: $4F
    ld d, h                                       ; $4B9F: $54
    ld hl, $FDFE                                  ; $4BA0: $21 $FE $FD
    sbc d                                         ; $4BA3: $9A
    ld e, b                                       ; $4BA4: $58
    rlca                                          ; $4BA5: $07
    ld b, d                                       ; $4BA6: $42

jr_028_4BA7:
    sbc e                                         ; $4BA7: $9B
    jr jr_028_4BF8                                ; $4BA8: $18 $4E

    sbc a                                         ; $4BAA: $9F
    ld c, a                                       ; $4BAB: $4F
    ld d, a                                       ; $4BAC: $57
    ld hl, $4F20                                  ; $4BAD: $21 $20 $4F
    ld d, a                                       ; $4BB0: $57
    ld d, a                                       ; $4BB1: $57
    ld hl, $FE21                                  ; $4BB2: $21 $21 $FE
    ld b, e                                       ; $4BB5: $43
    ld [hl], l                                    ; $4BB6: $75
    ld [hl], h                                    ; $4BB7: $74
    jr nz, jr_028_4C2E                            ; $4BB8: $20 $74

    ld l, b                                       ; $4BBA: $68
    ld h, c                                       ; $4BBB: $61
    ld [hl], h                                    ; $4BBC: $74
    jr nz, jr_028_4C2E                            ; $4BBD: $20 $6F

    ld [hl], l                                    ; $4BBF: $75
    ld [hl], h                                    ; $4BC0: $74
    ld hl, $FDFE                                  ; $4BC1: $21 $FE $FD
    sbc d                                         ; $4BC4: $9A
    ld e, b                                       ; $4BC5: $58
    ld [$9B42], sp                                ; $4BC6: $08 $42 $9B
    jr jr_028_4C19                                ; $4BC9: $18 $4E

    sbc a                                         ; $4BCB: $9F
    ld b, l                                       ; $4BCC: $45
    ld [hl], d                                    ; $4BCD: $72
    ld l, l                                       ; $4BCE: $6D
    inc l                                         ; $4BCF: $2C
    jr nz, jr_028_4C19                            ; $4BD0: $20 $47

    ld l, a                                       ; $4BD2: $6F
    ld h, a                                       ; $4BD3: $67
    ld l, a                                       ; $4BD4: $6F
    ld [hl], d                                    ; $4BD5: $72
    jr nz, jr_028_4C40                            ; $4BD6: $20 $68

    ld h, c                                       ; $4BD8: $61
    ld [hl], e                                    ; $4BD9: $73
    rst $38                                       ; $4BDA: $FF
    ld [hl], h                                    ; $4BDB: $74
    ld l, a                                       ; $4BDC: $6F
    jr nz, @+$69                                  ; $4BDD: $20 $67

    ld l, a                                       ; $4BDF: $6F
    jr nz, jr_028_4C50                            ; $4BE0: $20 $6E

    ld l, a                                       ; $4BE2: $6F
    ld [hl], a                                    ; $4BE3: $77

jr_028_4BE4:
    ld hl, $FDFE                                  ; $4BE4: $21 $FE $FD
    sbc d                                         ; $4BE7: $9A
    ld e, b                                       ; $4BE8: $58
    add hl, bc                                    ; $4BE9: $09
    ld b, d                                       ; $4BEA: $42

jr_028_4BEB:
    sbc e                                         ; $4BEB: $9B
    jr jr_028_4C3C                                ; $4BEC: $18 $4E

    sbc a                                         ; $4BEE: $9F
    ld e, c                                       ; $4BEF: $59
    ld l, a                                       ; $4BF0: $6F
    ld hl, $FDFE                                  ; $4BF1: $21 $FE $FD
    sbc e                                         ; $4BF4: $9B
    xor b                                         ; $4BF5: $A8
    ld c, a                                       ; $4BF6: $4F
    sbc a                                         ; $4BF7: $9F

jr_028_4BF8:
    ld c, [hl]                                    ; $4BF8: $4E
    ld l, c                                       ; $4BF9: $69
    ld h, e                                       ; $4BFA: $63
    ld h, l                                       ; $4BFB: $65
    jr nz, @+$76                                  ; $4BFC: $20 $74

    ld l, a                                       ; $4BFE: $6F
    jr nz, jr_028_4C74                            ; $4BFF: $20 $73

    ld h, l                                       ; $4C01: $65
    ld h, l                                       ; $4C02: $65
    rst $38                                       ; $4C03: $FF
    ld a, c                                       ; $4C04: $79
    ld l, a                                       ; $4C05: $6F
    ld [hl], l                                    ; $4C06: $75
    daa                                           ; $4C07: $27
    ld [hl], d                                    ; $4C08: $72
    ld h, l                                       ; $4C09: $65
    jr nz, jr_028_4C7B                            ; $4C0A: $20 $6F

    ld l, e                                       ; $4C0C: $6B
    ld h, c                                       ; $4C0D: $61
    ld a, c                                       ; $4C0E: $79
    ld l, $FE                                     ; $4C0F: $2E $FE

jr_028_4C11:
    db $FD                                        ; $4C11: $FD
    sbc e                                         ; $4C12: $9B
    sbc b                                         ; $4C13: $98
    ld [hl], e                                    ; $4C14: $73
    sbc a                                         ; $4C15: $9F
    ld b, a                                       ; $4C16: $47
    ld h, l                                       ; $4C17: $65
    ld [hl], h                                    ; $4C18: $74

jr_028_4C19:
    jr nz, jr_028_4C7D                            ; $4C19: $20 $62

    ld h, c                                       ; $4C1B: $61
    ld h, e                                       ; $4C1C: $63
    ld l, e                                       ; $4C1D: $6B
    jr nz, jr_028_4C88                            ; $4C1E: $20 $68

    ld h, l                                       ; $4C20: $65
    ld [hl], d                                    ; $4C21: $72
    ld h, l                                       ; $4C22: $65
    rst $38                                       ; $4C23: $FF
    ld b, a                                       ; $4C24: $47
    ld l, a                                       ; $4C25: $6F
    ld h, a                                       ; $4C26: $67
    ld l, a                                       ; $4C27: $6F
    ld [hl], d                                    ; $4C28: $72
    ld hl, $57FE                                  ; $4C29: $21 $FE $57
    ld h, l                                       ; $4C2C: $65
    daa                                           ; $4C2D: $27

jr_028_4C2E:
    ld [hl], d                                    ; $4C2E: $72
    ld h, l                                       ; $4C2F: $65
    jr nz, jr_028_4CA0                            ; $4C30: $20 $6E

    ld l, a                                       ; $4C32: $6F
    ld [hl], h                                    ; $4C33: $74
    jr nz, jr_028_4C9A                            ; $4C34: $20 $64

    ld l, a                                       ; $4C36: $6F
    ld l, [hl]                                    ; $4C37: $6E
    ld h, l                                       ; $4C38: $65
    rst $38                                       ; $4C39: $FF
    ld a, c                                       ; $4C3A: $79
    ld h, l                                       ; $4C3B: $65

jr_028_4C3C:
    ld [hl], h                                    ; $4C3C: $74
    ld hl, $FDFE                                  ; $4C3D: $21 $FE $FD

jr_028_4C40:
    sbc d                                         ; $4C40: $9A
    ld e, b                                       ; $4C41: $58
    ld a, [bc]                                    ; $4C42: $0A
    ld b, d                                       ; $4C43: $42
    sbc e                                         ; $4C44: $9B
    jr c, jr_028_4CB1                             ; $4C45: $38 $6A

    sbc a                                         ; $4C47: $9F
    ld d, a                                       ; $4C48: $57
    ld l, a                                       ; $4C49: $6F
    ld [hl], a                                    ; $4C4A: $77
    ld hl, $4920                                  ; $4C4B: $21 $20 $49
    jr nz, @+$65                                  ; $4C4E: $20 $63

jr_028_4C50:
    ld h, c                                       ; $4C50: $61
    ld l, [hl]                                    ; $4C51: $6E
    jr nz, @+$75                                  ; $4C52: $20 $73

    ld h, l                                       ; $4C54: $65
    ld h, l                                       ; $4C55: $65
    rst $38                                       ; $4C56: $FF
    ld [hl], h                                    ; $4C57: $74
    ld l, b                                       ; $4C58: $68
    ld h, l                                       ; $4C59: $65
    jr nz, jr_028_4CC1                            ; $4C5A: $20 $65

    ld l, [hl]                                    ; $4C5C: $6E
    ld [hl], h                                    ; $4C5D: $74
    ld l, c                                       ; $4C5E: $69
    ld [hl], d                                    ; $4C5F: $72
    ld h, l                                       ; $4C60: $65
    jr nz, jr_028_4CD7                            ; $4C61: $20 $74

    ld l, a                                       ; $4C63: $6F
    ld [hl], a                                    ; $4C64: $77
    ld l, [hl]                                    ; $4C65: $6E
    cp $66                                        ; $4C66: $FE $66
    ld [hl], d                                    ; $4C68: $72
    ld l, a                                       ; $4C69: $6F
    ld l, l                                       ; $4C6A: $6D
    jr nz, jr_028_4CD5                            ; $4C6B: $20 $68

    ld h, l                                       ; $4C6D: $65
    ld [hl], d                                    ; $4C6E: $72
    ld h, l                                       ; $4C6F: $65
    ld hl, $FDFE                                  ; $4C70: $21 $FE $FD
    sbc e                                         ; $4C73: $9B

jr_028_4C74:
    sbc c                                         ; $4C74: $99
    ld b, c                                       ; $4C75: $41
    sbc a                                         ; $4C76: $9F
    ld d, h                                       ; $4C77: $54
    ld l, b                                       ; $4C78: $68
    ld h, c                                       ; $4C79: $61
    ld [hl], h                                    ; $4C7A: $74

jr_028_4C7B:
    daa                                           ; $4C7B: $27
    ld [hl], e                                    ; $4C7C: $73

jr_028_4C7D:
    jr nz, jr_028_4CF6                            ; $4C7D: $20 $77

    ld l, b                                       ; $4C7F: $68
    ld h, c                                       ; $4C80: $61
    ld [hl], h                                    ; $4C81: $74
    rst $38                                       ; $4C82: $FF
    ld l, l                                       ; $4C83: $6D
    ld h, c                                       ; $4C84: $61
    ld l, e                                       ; $4C85: $6B
    ld h, l                                       ; $4C86: $65
    ld [hl], e                                    ; $4C87: $73

jr_028_4C88:
    jr nz, jr_028_4CF3                            ; $4C88: $20 $69

    ld [hl], h                                    ; $4C8A: $74
    jr nz, jr_028_4D00                            ; $4C8B: $20 $73

    ld [hl], l                                    ; $4C8D: $75
    ld h, e                                       ; $4C8E: $63
    ld l, b                                       ; $4C8F: $68
    cp $61                                        ; $4C90: $FE $61
    jr nz, jr_028_4CFB                            ; $4C92: $20 $67

    ld l, a                                       ; $4C94: $6F
    ld l, a                                       ; $4C95: $6F
    ld h, h                                       ; $4C96: $64
    jr nz, jr_028_4D0C                            ; $4C97: $20 $73

    ld [hl], h                                    ; $4C99: $74

jr_028_4C9A:
    ld h, c                                       ; $4C9A: $61
    ld [hl], h                                    ; $4C9B: $74
    ld l, c                                       ; $4C9C: $69
    ld l, a                                       ; $4C9D: $6F
    ld l, [hl]                                    ; $4C9E: $6E
    rst $38                                       ; $4C9F: $FF

jr_028_4CA0:
    ld h, [hl]                                    ; $4CA0: $66
    ld l, a                                       ; $4CA1: $6F
    ld [hl], d                                    ; $4CA2: $72
    jr nz, @+$6F                                  ; $4CA3: $20 $6D

    ld h, l                                       ; $4CA5: $65
    ld l, $2E                                     ; $4CA6: $2E $2E
    ld l, $FE                                     ; $4CA8: $2E $FE
    db $FD                                        ; $4CAA: $FD
    sbc d                                         ; $4CAB: $9A
    ld b, b                                       ; $4CAC: $40
    ld b, b                                       ; $4CAD: $40
    sbc e                                         ; $4CAE: $9B
    sbc c                                         ; $4CAF: $99
    ld b, c                                       ; $4CB0: $41

jr_028_4CB1:
    sbc a                                         ; $4CB1: $9F
    ld l, $2E                                     ; $4CB2: $2E $2E
    ld l, $2E                                     ; $4CB4: $2E $2E
    ld l, $2E                                     ; $4CB6: $2E $2E
    ld l, $2E                                     ; $4CB8: $2E $2E
    ld l, $FE                                     ; $4CBA: $2E $FE
    ld c, c                                       ; $4CBC: $49
    jr nz, jr_028_4D2C                            ; $4CBD: $20 $6D

    ld h, l                                       ; $4CBF: $65
    ld h, c                                       ; $4CC0: $61

jr_028_4CC1:
    ld l, [hl]                                    ; $4CC1: $6E
    ld l, $2E                                     ; $4CC2: $2E $2E
    ld l, $FE                                     ; $4CC4: $2E $FE
    ld l, $2E                                     ; $4CC6: $2E $2E
    ld l, $75                                     ; $4CC8: $2E $75
    ld l, b                                       ; $4CCA: $68
    inc l                                         ; $4CCB: $2C
    jr nz, jr_028_4D2F                            ; $4CCC: $20 $61

    ld [hl], d                                    ; $4CCE: $72
    ld h, l                                       ; $4CCF: $65
    ld l, $2E                                     ; $4CD0: $2E $2E
    ld l, $FE                                     ; $4CD2: $2E $FE
    ld a, c                                       ; $4CD4: $79

jr_028_4CD5:
    ld l, a                                       ; $4CD5: $6F
    ld [hl], l                                    ; $4CD6: $75

jr_028_4CD7:
    ld l, $2E                                     ; $4CD7: $2E $2E
    ld l, $20                                     ; $4CD9: $2E $20
    ld h, [hl]                                    ; $4CDB: $66
    ld [hl], d                                    ; $4CDC: $72
    ld h, l                                       ; $4CDD: $65
    ld h, l                                       ; $4CDE: $65
    dec l                                         ; $4CDF: $2D
    cp $FD                                        ; $4CE0: $FE $FD
    sbc e                                         ; $4CE2: $9B
    jr c, jr_028_4D4F                             ; $4CE3: $38 $6A

    sbc a                                         ; $4CE5: $9F
    ld c, a                                       ; $4CE6: $4F
    ld l, b                                       ; $4CE7: $68
    jr nz, @+$6E                                  ; $4CE8: $20 $6C

    ld l, a                                       ; $4CEA: $6F
    ld l, a                                       ; $4CEB: $6F
    ld l, e                                       ; $4CEC: $6B
    ld hl, $49FE                                  ; $4CED: $21 $FE $49
    jr nz, jr_028_4D65                            ; $4CF0: $20 $73

    ld h, l                                       ; $4CF2: $65

jr_028_4CF3:
    ld h, l                                       ; $4CF3: $65
    jr nz, jr_028_4D57                            ; $4CF4: $20 $61

jr_028_4CF6:
    jr nz, @+$6E                                  ; $4CF6: $20 $6C

    ld h, c                                       ; $4CF8: $61
    ld l, e                                       ; $4CF9: $6B
    ld h, l                                       ; $4CFA: $65

jr_028_4CFB:
    rst $38                                       ; $4CFB: $FF
    ld l, a                                       ; $4CFC: $6F
    halt                                          ; $4CFD: $76
    ld h, l                                       ; $4CFE: $65
    ld [hl], d                                    ; $4CFF: $72

jr_028_4D00:
    jr nz, jr_028_4D76                            ; $4D00: $20 $74

    ld l, b                                       ; $4D02: $68
    ld h, l                                       ; $4D03: $65
    ld [hl], d                                    ; $4D04: $72
    ld h, l                                       ; $4D05: $65
    ld hl, $FDFE                                  ; $4D06: $21 $FE $FD
    sbc e                                         ; $4D09: $9B
    sbc c                                         ; $4D0A: $99
    ld b, c                                       ; $4D0B: $41

jr_028_4D0C:
    sbc a                                         ; $4D0C: $9F
    ld l, $2E                                     ; $4D0D: $2E $2E
    ld l, $2E                                     ; $4D0F: $2E $2E
    ld l, $2E                                     ; $4D11: $2E $2E
    ld l, $2E                                     ; $4D13: $2E $2E
    ld l, $FE                                     ; $4D15: $2E $FE
    db $FD                                        ; $4D17: $FD
    sbc d                                         ; $4D18: $9A
    ld e, b                                       ; $4D19: $58
    ld bc, $9B42                                  ; $4D1A: $01 $42 $9B
    jr c, @+$6C                                   ; $4D1D: $38 $6A

    sbc a                                         ; $4D1F: $9F
    ld c, c                                       ; $4D20: $49
    ld [hl], h                                    ; $4D21: $74
    daa                                           ; $4D22: $27
    ld [hl], e                                    ; $4D23: $73
    jr nz, jr_028_4D99                            ; $4D24: $20 $73

    ld l, a                                       ; $4D26: $6F
    jr nz, jr_028_4D99                            ; $4D27: $20 $70

    ld [hl], d                                    ; $4D29: $72
    ld h, l                                       ; $4D2A: $65
    ld [hl], h                                    ; $4D2B: $74

jr_028_4D2C:
    ld [hl], h                                    ; $4D2C: $74

jr_028_4D2D:
    ld a, c                                       ; $4D2D: $79
    rst $38                                       ; $4D2E: $FF

jr_028_4D2F:
    ld [hl], l                                    ; $4D2F: $75
    ld [hl], b                                    ; $4D30: $70
    jr nz, jr_028_4D9B                            ; $4D31: $20 $68

    ld h, l                                       ; $4D33: $65
    ld [hl], d                                    ; $4D34: $72
    ld h, l                                       ; $4D35: $65
    ld hl, $FDFE                                  ; $4D36: $21 $FE $FD
    ld b, a                                       ; $4D39: $47
    inc bc                                        ; $4D3A: $03
    jr z, @+$46                                   ; $4D3B: $28 $44

    ld c, l                                       ; $4D3D: $4D
    jr z, @-$6D                                   ; $4D3E: $28 $91

    ld c, l                                       ; $4D40: $4D
    jr z, jr_028_4D2D                             ; $4D41: $28 $EA

    ld c, l                                       ; $4D43: $4D
    sbc e                                         ; $4D44: $9B
    sbc c                                         ; $4D45: $99
    ld b, c                                       ; $4D46: $41
    sbc a                                         ; $4D47: $9F
    ld e, c                                       ; $4D48: $59
    ld h, l                                       ; $4D49: $65
    ld [hl], e                                    ; $4D4A: $73
    ld l, $2E                                     ; $4D4B: $2E $2E
    ld l, $FE                                     ; $4D4D: $2E $FE

jr_028_4D4F:
    ld l, $2E                                     ; $4D4F: $2E $2E
    ld l, $2E                                     ; $4D51: $2E $2E
    ld l, $2E                                     ; $4D53: $2E $2E
    ld l, $2E                                     ; $4D55: $2E $2E

jr_028_4D57:
    ld l, $FE                                     ; $4D57: $2E $FE
    ld c, c                                       ; $4D59: $49
    jr nz, @+$6F                                  ; $4D5A: $20 $6D

    ld h, l                                       ; $4D5C: $65
    ld h, c                                       ; $4D5D: $61
    ld l, [hl]                                    ; $4D5E: $6E
    inc l                                         ; $4D5F: $2C
    jr nz, jr_028_4DC7                            ; $4D60: $20 $65

    ld [hl], d                                    ; $4D62: $72
    ld l, $2E                                     ; $4D63: $2E $2E

jr_028_4D65:
    ld l, $FE                                     ; $4D65: $2E $FE
    ld l, [hl]                                    ; $4D67: $6E
    ld l, a                                       ; $4D68: $6F
    ld [hl], h                                    ; $4D69: $74
    jr nz, jr_028_4DCD                            ; $4D6A: $20 $61

    ld [hl], e                                    ; $4D6C: $73
    ld l, $2E                                     ; $4D6D: $2E $2E
    ld l, $20                                     ; $4D6F: $2E $20
    ld [hl], l                                    ; $4D71: $75
    ld l, l                                       ; $4D72: $6D
    inc l                                         ; $4D73: $2C
    cp $70                                        ; $4D74: $FE $70

jr_028_4D76:
    ld [hl], d                                    ; $4D76: $72
    ld h, l                                       ; $4D77: $65
    ld [hl], h                                    ; $4D78: $74
    ld [hl], h                                    ; $4D79: $74
    ld a, c                                       ; $4D7A: $79
    jr nz, @+$63                                  ; $4D7B: $20 $61

    ld [hl], e                                    ; $4D7D: $73
    ld l, $2E                                     ; $4D7E: $2E $2E
    ld l, $FE                                     ; $4D80: $2E $FE
    ld l, $2E                                     ; $4D82: $2E $2E
    ld l, $2E                                     ; $4D84: $2E $2E
    ld l, $2E                                     ; $4D86: $2E $2E
    ld l, $2E                                     ; $4D88: $2E $2E
    ld l, $FE                                     ; $4D8A: $2E $FE
    db $FD                                        ; $4D8C: $FD
    ld b, l                                       ; $4D8D: $45
    jr z, @+$3B                                   ; $4D8E: $28 $39

    ld c, [hl]                                    ; $4D90: $4E
    sbc e                                         ; $4D91: $9B
    sbc c                                         ; $4D92: $99
    ld b, c                                       ; $4D93: $41
    sbc a                                         ; $4D94: $9F
    ld d, l                                       ; $4D95: $55
    ld l, b                                       ; $4D96: $68
    jr nz, jr_028_4E01                            ; $4D97: $20 $68

jr_028_4D99:
    ld [hl], l                                    ; $4D99: $75
    ld l, b                                       ; $4D9A: $68

jr_028_4D9B:
    ld l, $2E                                     ; $4D9B: $2E $2E
    ld l, $FE                                     ; $4D9D: $2E $FE
    ld l, $2E                                     ; $4D9F: $2E $2E
    ld l, $2E                                     ; $4DA1: $2E $2E
    ld l, $2E                                     ; $4DA3: $2E $2E
    ld l, $2E                                     ; $4DA5: $2E $2E
    ld l, $FE                                     ; $4DA7: $2E $FE
    ld c, a                                       ; $4DA9: $4F
    ld l, b                                       ; $4DAA: $68
    inc l                                         ; $4DAB: $2C
    jr nz, jr_028_4DF7                            ; $4DAC: $20 $49

    jr nz, @+$6F                                  ; $4DAE: $20 $6D

    ld h, l                                       ; $4DB0: $65
    ld h, c                                       ; $4DB1: $61
    ld l, [hl]                                    ; $4DB2: $6E
    ld l, $2E                                     ; $4DB3: $2E $2E
    ld l, $FE                                     ; $4DB5: $2E $FE
    ld c, c                                       ; $4DB7: $49
    ld [hl], h                                    ; $4DB8: $74
    ld l, $2E                                     ; $4DB9: $2E $2E
    ld l, $20                                     ; $4DBB: $2E $20
    ld [hl], b                                    ; $4DBD: $70
    ld h, c                                       ; $4DBE: $61
    ld l, h                                       ; $4DBF: $6C
    ld h, l                                       ; $4DC0: $65
    ld [hl], e                                    ; $4DC1: $73
    ld l, $2E                                     ; $4DC2: $2E $2E
    ld l, $FE                                     ; $4DC4: $2E $FE
    ld l, c                                       ; $4DC6: $69

jr_028_4DC7:
    ld l, [hl]                                    ; $4DC7: $6E
    jr nz, jr_028_4E2D                            ; $4DC8: $20 $63

    ld l, a                                       ; $4DCA: $6F
    ld l, l                                       ; $4DCB: $6D
    ld [hl], b                                    ; $4DCC: $70

jr_028_4DCD:
    dec l                                         ; $4DCD: $2D
    ld [hl], b                                    ; $4DCE: $70
    ld h, c                                       ; $4DCF: $61
    ld [hl], d                                    ; $4DD0: $72
    ld l, c                                       ; $4DD1: $69
    ld [hl], e                                    ; $4DD2: $73
    ld l, a                                       ; $4DD3: $6F
    ld l, [hl]                                    ; $4DD4: $6E
    cp $2E                                        ; $4DD5: $FE $2E
    ld l, $2E                                     ; $4DD7: $2E $2E
    ld [hl], h                                    ; $4DD9: $74
    ld l, a                                       ; $4DDA: $6F
    ld l, $2E                                     ; $4DDB: $2E $2E
    ld l, $20                                     ; $4DDD: $2E $20
    ld [hl], l                                    ; $4DDF: $75
    ld l, b                                       ; $4DE0: $68
    ld l, $2E                                     ; $4DE1: $2E $2E

jr_028_4DE3:
    ld l, $FE                                     ; $4DE3: $2E $FE
    db $FD                                        ; $4DE5: $FD
    ld b, l                                       ; $4DE6: $45
    jr z, jr_028_4E22                             ; $4DE7: $28 $39

    ld c, [hl]                                    ; $4DE9: $4E
    sbc e                                         ; $4DEA: $9B
    sbc c                                         ; $4DEB: $99
    ld b, c                                       ; $4DEC: $41
    sbc a                                         ; $4DED: $9F
    ld e, c                                       ; $4DEE: $59
    ld h, l                                       ; $4DEF: $65
    ld [hl], e                                    ; $4DF0: $73
    ld l, $20                                     ; $4DF1: $2E $20
    ld b, h                                       ; $4DF3: $44
    ld h, l                                       ; $4DF4: $65
    ld h, [hl]                                    ; $4DF5: $66
    ld l, c                                       ; $4DF6: $69

jr_028_4DF7:
    ld l, [hl]                                    ; $4DF7: $6E
    ld l, c                                       ; $4DF8: $69
    ld [hl], h                                    ; $4DF9: $74
    ld h, l                                       ; $4DFA: $65
    ld l, h                                       ; $4DFB: $6C
    ld a, c                                       ; $4DFC: $79
    rst $38                                       ; $4DFD: $FF
    ld a, c                                       ; $4DFE: $79
    ld h, l                                       ; $4DFF: $65
    ld [hl], e                                    ; $4E00: $73

jr_028_4E01:
    ld l, $2E                                     ; $4E01: $2E $2E
    ld l, $FE                                     ; $4E03: $2E $FE
    ld d, l                                       ; $4E05: $55
    ld l, b                                       ; $4E06: $68
    ld l, $2E                                     ; $4E07: $2E $2E
    ld l, $20                                     ; $4E09: $2E $20
    ld h, d                                       ; $4E0B: $62
    ld [hl], l                                    ; $4E0C: $75
    ld [hl], h                                    ; $4E0D: $74
    ld l, $2E                                     ; $4E0E: $2E $2E
    ld l, $FE                                     ; $4E10: $2E $FE
    ld [hl], h                                    ; $4E12: $74
    ld l, b                                       ; $4E13: $68
    ld h, l                                       ; $4E14: $65
    jr nz, jr_028_4E8D                            ; $4E15: $20 $76

    ld l, c                                       ; $4E17: $69
    ld h, l                                       ; $4E18: $65
    ld [hl], a                                    ; $4E19: $77
    ld l, $2E                                     ; $4E1A: $2E $2E
    ld l, $FE                                     ; $4E1C: $2E $FE
    ld h, [hl]                                    ; $4E1E: $66
    ld [hl], d                                    ; $4E1F: $72
    ld l, a                                       ; $4E20: $6F
    ld l, l                                       ; $4E21: $6D

jr_028_4E22:
    jr nz, jr_028_4E8C                            ; $4E22: $20 $68

    ld h, l                                       ; $4E24: $65
    ld [hl], d                                    ; $4E25: $72
    ld h, l                                       ; $4E26: $65
    ld l, $2E                                     ; $4E27: $2E $2E
    ld l, $FE                                     ; $4E29: $2E $FE
    ld l, $2E                                     ; $4E2B: $2E $2E

jr_028_4E2D:
    ld l, $75                                     ; $4E2D: $2E $75
    ld l, b                                       ; $4E2F: $68
    inc l                                         ; $4E30: $2C
    jr nz, jr_028_4E9C                            ; $4E31: $20 $69

    ld [hl], e                                    ; $4E33: $73
    ld l, $2E                                     ; $4E34: $2E $2E
    ld l, $FE                                     ; $4E36: $2E $FE
    db $FD                                        ; $4E38: $FD
    ld b, a                                       ; $4E39: $47
    inc bc                                        ; $4E3A: $03
    jr z, jr_028_4E81                             ; $4E3B: $28 $44

    ld c, [hl]                                    ; $4E3D: $4E
    jr z, jr_028_4DE3                             ; $4E3E: $28 $A3

    ld c, [hl]                                    ; $4E40: $4E
    jr z, @+$23                                   ; $4E41: $28 $21

    ld c, a                                       ; $4E43: $4F
    sbc e                                         ; $4E44: $9B
    jr c, jr_028_4EB1                             ; $4E45: $38 $6A

    sbc a                                         ; $4E47: $9F
    ld c, a                                       ; $4E48: $4F
    ld l, b                                       ; $4E49: $68
    jr nz, jr_028_4EB8                            ; $4E4A: $20 $6C

    ld l, a                                       ; $4E4C: $6F
    ld l, a                                       ; $4E4D: $6F
    ld l, e                                       ; $4E4E: $6B
    jr nz, jr_028_4EB2                            ; $4E4F: $20 $61

    ld [hl], h                                    ; $4E51: $74
    jr nz, jr_028_4EC8                            ; $4E52: $20 $74

    ld l, b                                       ; $4E54: $68
    ld h, l                                       ; $4E55: $65
    rst $38                                       ; $4E56: $FF
    ld b, [hl]                                    ; $4E57: $46
    ld l, c                                       ; $4E58: $69
    ld [hl], d                                    ; $4E59: $72
    ld h, h                                       ; $4E5A: $64
    ld [hl], e                                    ; $4E5B: $73
    daa                                           ; $4E5C: $27
    jr nz, jr_028_4ECD                            ; $4E5D: $20 $6E

    ld h, l                                       ; $4E5F: $65
    ld [hl], e                                    ; $4E60: $73
    ld [hl], h                                    ; $4E61: $74
    ld hl, $49FE                                  ; $4E62: $21 $FE $49
    jr nz, jr_028_4EDE                            ; $4E65: $20 $77

    ld l, a                                       ; $4E67: $6F
    ld l, [hl]                                    ; $4E68: $6E
    ld h, h                                       ; $4E69: $64
    ld h, l                                       ; $4E6A: $65
    ld [hl], d                                    ; $4E6B: $72
    jr nz, jr_028_4ED7                            ; $4E6C: $20 $69

    ld h, [hl]                                    ; $4E6E: $66
    rst $38                                       ; $4E6F: $FF
    ld [hl], h                                    ; $4E70: $74
    ld l, b                                       ; $4E71: $68
    ld h, l                                       ; $4E72: $65
    ld [hl], d                                    ; $4E73: $72
    ld h, l                                       ; $4E74: $65
    daa                                           ; $4E75: $27
    ld [hl], d                                    ; $4E76: $72
    ld h, l                                       ; $4E77: $65
    jr nz, @+$63                                  ; $4E78: $20 $61

    ld l, [hl]                                    ; $4E7A: $6E
    ld a, c                                       ; $4E7B: $79
    cp $62                                        ; $4E7C: $FE $62
    ld h, c                                       ; $4E7E: $61
    ld h, d                                       ; $4E7F: $62
    ld a, c                                       ; $4E80: $79

jr_028_4E81:
    jr nz, jr_028_4EC9                            ; $4E81: $20 $46

    ld l, c                                       ; $4E83: $69
    ld [hl], d                                    ; $4E84: $72
    ld h, h                                       ; $4E85: $64
    ld [hl], e                                    ; $4E86: $73
    jr nz, jr_028_4EF2                            ; $4E87: $20 $69

    ld l, [hl]                                    ; $4E89: $6E
    rst $38                                       ; $4E8A: $FF
    ld l, c                                       ; $4E8B: $69

jr_028_4E8C:
    ld [hl], h                                    ; $4E8C: $74

jr_028_4E8D:
    ccf                                           ; $4E8D: $3F
    cp $FD                                        ; $4E8E: $FE $FD
    sbc e                                         ; $4E90: $9B
    sbc c                                         ; $4E91: $99
    ld b, c                                       ; $4E92: $41
    sbc a                                         ; $4E93: $9F
    ld l, $2E                                     ; $4E94: $2E $2E
    ld l, $2E                                     ; $4E96: $2E $2E
    ld l, $2E                                     ; $4E98: $2E $2E
    ld l, $2E                                     ; $4E9A: $2E $2E

jr_028_4E9C:
    ld l, $FE                                     ; $4E9C: $2E $FE
    db $FD                                        ; $4E9E: $FD
    sbc d                                         ; $4E9F: $9A
    ld e, b                                       ; $4EA0: $58
    ld bc, $9B42                                  ; $4EA1: $01 $42 $9B
    jr c, jr_028_4F10                             ; $4EA4: $38 $6A

    sbc a                                         ; $4EA6: $9F
    ld c, c                                       ; $4EA7: $49
    jr nz, @+$79                                  ; $4EA8: $20 $77

    ld l, c                                       ; $4EAA: $69
    ld [hl], e                                    ; $4EAB: $73
    ld l, b                                       ; $4EAC: $68
    jr nz, jr_028_4EF8                            ; $4EAD: $20 $49

    jr nz, jr_028_4F15                            ; $4EAF: $20 $64

jr_028_4EB1:
    ld l, c                                       ; $4EB1: $69

jr_028_4EB2:
    ld h, h                                       ; $4EB2: $64
    ld l, [hl]                                    ; $4EB3: $6E
    daa                                           ; $4EB4: $27
    ld [hl], h                                    ; $4EB5: $74
    rst $38                                       ; $4EB6: $FF
    ld l, b                                       ; $4EB7: $68

jr_028_4EB8:
    ld h, c                                       ; $4EB8: $61
    halt                                          ; $4EB9: $76
    ld h, l                                       ; $4EBA: $65
    jr nz, @+$76                                  ; $4EBB: $20 $74

    ld l, a                                       ; $4EBD: $6F
    jr nz, jr_028_4F22                            ; $4EBE: $20 $62

    ld h, l                                       ; $4EC0: $65
    cp $74                                        ; $4EC1: $FE $74
    ld [hl], d                                    ; $4EC3: $72
    ld h, c                                       ; $4EC4: $61
    ld l, c                                       ; $4EC5: $69
    ld l, [hl]                                    ; $4EC6: $6E
    ld l, c                                       ; $4EC7: $69

jr_028_4EC8:
    ld l, [hl]                                    ; $4EC8: $6E

jr_028_4EC9:
    ld h, a                                       ; $4EC9: $67
    jr nz, jr_028_4F2D                            ; $4ECA: $20 $61

    ld l, h                                       ; $4ECC: $6C

jr_028_4ECD:
    ld l, h                                       ; $4ECD: $6C
    rst $38                                       ; $4ECE: $FF
    ld [hl], h                                    ; $4ECF: $74
    ld l, b                                       ; $4ED0: $68
    ld h, l                                       ; $4ED1: $65
    jr nz, jr_028_4F48                            ; $4ED2: $20 $74

    ld l, c                                       ; $4ED4: $69
    ld l, l                                       ; $4ED5: $6D
    ld h, l                                       ; $4ED6: $65

jr_028_4ED7:
    jr nz, jr_028_4F48                            ; $4ED7: $20 $6F

    ld [hl], d                                    ; $4ED9: $72
    jr nz, jr_028_4F25                            ; $4EDA: $20 $49

    cp $77                                        ; $4EDC: $FE $77

jr_028_4EDE:
    ld l, a                                       ; $4EDE: $6F
    ld [hl], l                                    ; $4EDF: $75
    ld l, h                                       ; $4EE0: $6C
    ld h, h                                       ; $4EE1: $64
    jr nz, jr_028_4F47                            ; $4EE2: $20 $63

    ld l, a                                       ; $4EE4: $6F
    ld l, l                                       ; $4EE5: $6D
    ld h, l                                       ; $4EE6: $65
    jr nz, jr_028_4F5E                            ; $4EE7: $20 $75

    ld [hl], b                                    ; $4EE9: $70
    rst $38                                       ; $4EEA: $FF
    ld l, b                                       ; $4EEB: $68
    ld h, l                                       ; $4EEC: $65
    ld [hl], d                                    ; $4EED: $72
    ld h, l                                       ; $4EEE: $65
    jr nz, jr_028_4F56                            ; $4EEF: $20 $65

    halt                                          ; $4EF1: $76

jr_028_4EF2:
    ld h, l                                       ; $4EF2: $65
    ld [hl], d                                    ; $4EF3: $72
    ld a, c                                       ; $4EF4: $79
    jr nz, @+$66                                  ; $4EF5: $20 $64

    ld h, c                                       ; $4EF7: $61

jr_028_4EF8:
    ld a, c                                       ; $4EF8: $79
    ld hl, $FDFE                                  ; $4EF9: $21 $FE $FD
    sbc e                                         ; $4EFC: $9B
    sbc c                                         ; $4EFD: $99
    ld b, c                                       ; $4EFE: $41
    sbc a                                         ; $4EFF: $9F
    ld l, $2E                                     ; $4F00: $2E $2E
    ld l, $74                                     ; $4F02: $2E $74
    ld l, b                                       ; $4F04: $68
    ld h, c                                       ; $4F05: $61
    ld [hl], h                                    ; $4F06: $74
    jr nz, jr_028_4F80                            ; $4F07: $20 $77

    ld l, a                                       ; $4F09: $6F
    ld [hl], l                                    ; $4F0A: $75
    ld l, h                                       ; $4F0B: $6C
    ld h, h                                       ; $4F0C: $64
    cp $62                                        ; $4F0D: $FE $62
    ld h, l                                       ; $4F0F: $65

jr_028_4F10:
    ld l, $2E                                     ; $4F10: $2E $2E
    ld l, $FE                                     ; $4F12: $2E $FE
    ld l, [hl]                                    ; $4F14: $6E

jr_028_4F15:
    ld l, c                                       ; $4F15: $69
    ld h, e                                       ; $4F16: $63
    ld h, l                                       ; $4F17: $65
    ld l, $2E                                     ; $4F18: $2E $2E
    ld l, $FE                                     ; $4F1A: $2E $FE
    db $FD                                        ; $4F1C: $FD
    sbc d                                         ; $4F1D: $9A
    ld e, b                                       ; $4F1E: $58
    ld bc, $9B42                                  ; $4F1F: $01 $42 $9B

jr_028_4F22:
    jr c, @+$6C                                   ; $4F22: $38 $6A

    sbc a                                         ; $4F24: $9F

jr_028_4F25:
    ld c, b                                       ; $4F25: $48
    ld h, l                                       ; $4F26: $65
    ld a, c                                       ; $4F27: $79
    ld hl, $4C20                                  ; $4F28: $21 $20 $4C
    ld l, c                                       ; $4F2B: $69
    ld [hl], e                                    ; $4F2C: $73

jr_028_4F2D:
    ld [hl], h                                    ; $4F2D: $74
    ld h, l                                       ; $4F2E: $65
    ld l, [hl]                                    ; $4F2F: $6E
    ld hl, $FDFE                                  ; $4F30: $21 $FE $FD
    sbc e                                         ; $4F33: $9B
    sbc c                                         ; $4F34: $99
    ld b, c                                       ; $4F35: $41
    sbc a                                         ; $4F36: $9F
    ld l, $2E                                     ; $4F37: $2E $2E
    ld l, $3F                                     ; $4F39: $2E $3F
    cp $FD                                        ; $4F3B: $FE $FD
    sbc e                                         ; $4F3D: $9B
    jr c, jr_028_4FAA                             ; $4F3E: $38 $6A

    sbc a                                         ; $4F40: $9F
    ld d, e                                       ; $4F41: $53
    ld l, a                                       ; $4F42: $6F
    jr nz, jr_028_4FB2                            ; $4F43: $20 $6D

    ld h, c                                       ; $4F45: $61
    ld l, [hl]                                    ; $4F46: $6E

Jump_028_4F47:
jr_028_4F47:
    ld a, c                                       ; $4F47: $79

jr_028_4F48:
    jr nz, @+$72                                  ; $4F48: $20 $70

    ld h, l                                       ; $4F4A: $65
    ld l, a                                       ; $4F4B: $6F
    ld [hl], b                                    ; $4F4C: $70
    ld l, h                                       ; $4F4D: $6C
    ld h, l                                       ; $4F4E: $65
    rst $38                                       ; $4F4F: $FF
    ld h, h                                       ; $4F50: $64
    ld l, a                                       ; $4F51: $6F
    ld [hl], a                                    ; $4F52: $77
    ld l, [hl]                                    ; $4F53: $6E
    jr nz, jr_028_4FCA                            ; $4F54: $20 $74

jr_028_4F56:
    ld l, b                                       ; $4F56: $68
    ld h, l                                       ; $4F57: $65
    ld [hl], d                                    ; $4F58: $72
    ld h, l                                       ; $4F59: $65
    jr nz, jr_028_4FBD                            ; $4F5A: $20 $61

    ld [hl], d                                    ; $4F5C: $72
    ld h, l                                       ; $4F5D: $65

jr_028_4F5E:
    cp $6C                                        ; $4F5E: $FE $6C
    ld h, c                                       ; $4F60: $61
    ld [hl], l                                    ; $4F61: $75
    ld h, a                                       ; $4F62: $67
    ld l, b                                       ; $4F63: $68
    ld l, c                                       ; $4F64: $69
    ld l, [hl]                                    ; $4F65: $6E
    ld h, a                                       ; $4F66: $67
    jr nz, jr_028_4FCA                            ; $4F67: $20 $61

    ld l, [hl]                                    ; $4F69: $6E
    ld h, h                                       ; $4F6A: $64
    rst $38                                       ; $4F6B: $FF
    ld l, b                                       ; $4F6C: $68
    ld h, c                                       ; $4F6D: $61
    halt                                          ; $4F6E: $76
    ld l, c                                       ; $4F6F: $69
    ld l, [hl]                                    ; $4F70: $6E
    ld h, a                                       ; $4F71: $67
    jr nz, jr_028_4FD5                            ; $4F72: $20 $61

    jr nz, @+$69                                  ; $4F74: $20 $67

    ld l, a                                       ; $4F76: $6F
    ld l, a                                       ; $4F77: $6F
    ld h, h                                       ; $4F78: $64
    cp $74                                        ; $4F79: $FE $74
    ld l, c                                       ; $4F7B: $69
    ld l, l                                       ; $4F7C: $6D
    ld h, l                                       ; $4F7D: $65
    ld l, $2E                                     ; $4F7E: $2E $2E

jr_028_4F80:
    ld l, $FE                                     ; $4F80: $2E $FE
    db $FD                                        ; $4F82: $FD
    sbc e                                         ; $4F83: $9B
    sbc c                                         ; $4F84: $99
    ld b, c                                       ; $4F85: $41
    sbc a                                         ; $4F86: $9F
    ld l, $2E                                     ; $4F87: $2E $2E
    ld l, $2E                                     ; $4F89: $2E $2E
    ld l, $2E                                     ; $4F8B: $2E $2E
    ld l, $2E                                     ; $4F8D: $2E $2E
    ld l, $FE                                     ; $4F8F: $2E $FE
    ld [hl], l                                    ; $4F91: $75
    ld l, b                                       ; $4F92: $68
    inc l                                         ; $4F93: $2C
    jr nz, jr_028_5003                            ; $4F94: $20 $6D

    ld h, c                                       ; $4F96: $61
    ld a, c                                       ; $4F97: $79
    ld h, d                                       ; $4F98: $62
    ld h, l                                       ; $4F99: $65
    ld l, $2E                                     ; $4F9A: $2E $2E
    ld l, $FE                                     ; $4F9C: $2E $FE
    ld [hl], a                                    ; $4F9E: $77
    ld h, l                                       ; $4F9F: $65
    jr nz, jr_028_5005                            ; $4FA0: $20 $63

    ld l, a                                       ; $4FA2: $6F
    ld [hl], l                                    ; $4FA3: $75
    ld l, h                                       ; $4FA4: $6C
    ld h, h                                       ; $4FA5: $64
    ld l, $2E                                     ; $4FA6: $2E $2E
    ld l, $FE                                     ; $4FA8: $2E $FE

jr_028_4FAA:
    db $FD                                        ; $4FAA: $FD
    sbc e                                         ; $4FAB: $9B
    jr c, jr_028_5018                             ; $4FAC: $38 $6A

    sbc a                                         ; $4FAE: $9F
    ld c, b                                       ; $4FAF: $48
    ld l, l                                       ; $4FB0: $6D
    ld l, l                                       ; $4FB1: $6D

jr_028_4FB2:
    ccf                                           ; $4FB2: $3F
    cp $FD                                        ; $4FB3: $FE $FD
    add hl, bc                                    ; $4FB5: $09
    ld b, $10                                     ; $4FB6: $06 $10
    ld a, [$9B56]                                 ; $4FB8: $FA $56 $9B
    sbc c                                         ; $4FBB: $99
    ld b, c                                       ; $4FBC: $41

jr_028_4FBD:
    sbc a                                         ; $4FBD: $9F
    ld d, l                                       ; $4FBE: $55
    ld c, b                                       ; $4FBF: $48
    ld c, b                                       ; $4FC0: $48
    ld c, b                                       ; $4FC1: $48
    ld c, b                                       ; $4FC2: $48
    ld l, $2E                                     ; $4FC3: $2E $2E
    ld l, $FE                                     ; $4FC5: $2E $FE
    ld l, [hl]                                    ; $4FC7: $6E
    ld h, l                                       ; $4FC8: $65
    halt                                          ; $4FC9: $76

jr_028_4FCA:
    ld h, l                                       ; $4FCA: $65
    ld [hl], d                                    ; $4FCB: $72
    jr nz, jr_028_503B                            ; $4FCC: $20 $6D

    ld l, c                                       ; $4FCE: $69
    ld l, [hl]                                    ; $4FCF: $6E
    ld h, h                                       ; $4FD0: $64
    inc l                                         ; $4FD1: $2C
    cp $66                                        ; $4FD2: $FE $66
    ld l, a                                       ; $4FD4: $6F

jr_028_4FD5:
    ld [hl], d                                    ; $4FD5: $72
    ld h, a                                       ; $4FD6: $67
    ld h, l                                       ; $4FD7: $65
    ld [hl], h                                    ; $4FD8: $74
    jr nz, jr_028_5044                            ; $4FD9: $20 $69

    ld [hl], h                                    ; $4FDB: $74
    ld l, $FE                                     ; $4FDC: $2E $FE
    db $FD                                        ; $4FDE: $FD
    sbc e                                         ; $4FDF: $9B
    jr c, jr_028_504C                             ; $4FE0: $38 $6A

    sbc a                                         ; $4FE2: $9F
    ccf                                           ; $4FE3: $3F
    ccf                                           ; $4FE4: $3F
    cp $FD                                        ; $4FE5: $FE $FD
    sbc d                                         ; $4FE7: $9A
    add hl, bc                                    ; $4FE8: $09
    ld b, $10                                     ; $4FE9: $06 $10
    ld c, $57                                     ; $4FEB: $0E $57
    ld e, b                                       ; $4FED: $58
    ld bc, $9B42                                  ; $4FEE: $01 $42 $9B
    sbc c                                         ; $4FF1: $99
    ld b, c                                       ; $4FF2: $41
    sbc a                                         ; $4FF3: $9F
    dec l                                         ; $4FF4: $2D
    ld h, e                                       ; $4FF5: $63
    ld l, a                                       ; $4FF6: $6F
    ld [hl], l                                    ; $4FF7: $75
    ld h, a                                       ; $4FF8: $67
    ld l, b                                       ; $4FF9: $68
    jr nz, jr_028_505F                            ; $4FFA: $20 $63

    ld l, a                                       ; $4FFC: $6F
    ld [hl], l                                    ; $4FFD: $75
    ld h, a                                       ; $4FFE: $67
    ld l, b                                       ; $4FFF: $68
    dec l                                         ; $5000: $2D
    cp $45                                        ; $5001: $FE $45

jr_028_5003:
    ld a, b                                       ; $5003: $78
    ld h, e                                       ; $5004: $63

jr_028_5005:
    ld [hl], l                                    ; $5005: $75
    ld [hl], e                                    ; $5006: $73
    ld h, l                                       ; $5007: $65
    jr nz, @+$6F                                  ; $5008: $20 $6D

    ld h, l                                       ; $500A: $65
    inc l                                         ; $500B: $2C
    rst $38                                       ; $500C: $FF
    ld h, d                                       ; $500D: $62
    ld [hl], l                                    ; $500E: $75
    ld [hl], h                                    ; $500F: $74
    jr nz, jr_028_5075                            ; $5010: $20 $63

    ld l, a                                       ; $5012: $6F
    ld [hl], l                                    ; $5013: $75
    ld l, h                                       ; $5014: $6C
    ld h, h                                       ; $5015: $64
    jr nz, @+$7B                                  ; $5016: $20 $79

jr_028_5018:
    ld l, a                                       ; $5018: $6F
    ld [hl], l                                    ; $5019: $75
    cp $70                                        ; $501A: $FE $70
    ld l, h                                       ; $501C: $6C
    ld h, l                                       ; $501D: $65
    ld h, c                                       ; $501E: $61
    ld [hl], e                                    ; $501F: $73
    ld h, l                                       ; $5020: $65
    jr nz, @+$68                                  ; $5021: $20 $66

    ld l, c                                       ; $5023: $69
    ld l, [hl]                                    ; $5024: $6E
    ld h, h                                       ; $5025: $64
    rst $38                                       ; $5026: $FF
    ld [hl], e                                    ; $5027: $73
    ld l, a                                       ; $5028: $6F
    ld l, l                                       ; $5029: $6D
    ld h, l                                       ; $502A: $65
    ld l, a                                       ; $502B: $6F
    ld l, [hl]                                    ; $502C: $6E
    ld h, l                                       ; $502D: $65
    jr nz, @+$67                                  ; $502E: $20 $65

    ld l, h                                       ; $5030: $6C
    ld [hl], e                                    ; $5031: $73
    ld h, l                                       ; $5032: $65
    cp $74                                        ; $5033: $FE $74
    ld l, a                                       ; $5035: $6F
    jr nz, @+$75                                  ; $5036: $20 $73

    ld [hl], h                                    ; $5038: $74
    ld [hl], d                                    ; $5039: $72
    ld l, c                                       ; $503A: $69

jr_028_503B:
    ld l, e                                       ; $503B: $6B
    ld h, l                                       ; $503C: $65
    jr nz, @+$77                                  ; $503D: $20 $75

    ld [hl], b                                    ; $503F: $70
    rst $38                                       ; $5040: $FF
    ld h, c                                       ; $5041: $61
    jr nz, @+$65                                  ; $5042: $20 $63

jr_028_5044:
    ld l, a                                       ; $5044: $6F
    ld l, [hl]                                    ; $5045: $6E
    halt                                          ; $5046: $76
    ld h, l                                       ; $5047: $65
    ld [hl], d                                    ; $5048: $72
    ld [hl], e                                    ; $5049: $73
    ld h, c                                       ; $504A: $61
    ld [hl], h                                    ; $504B: $74

jr_028_504C:
    ld l, c                                       ; $504C: $69
    ld l, a                                       ; $504D: $6F
    ld l, [hl]                                    ; $504E: $6E
    cp $77                                        ; $504F: $FE $77
    ld l, c                                       ; $5051: $69
    ld [hl], h                                    ; $5052: $74
    ld l, b                                       ; $5053: $68
    ccf                                           ; $5054: $3F
    jr nz, @+$4B                                  ; $5055: $20 $49

    daa                                           ; $5057: $27
    ld l, l                                       ; $5058: $6D
    jr nz, jr_028_50C6                            ; $5059: $20 $6B

    ld l, c                                       ; $505B: $69
    ld l, [hl]                                    ; $505C: $6E
    ld h, h                                       ; $505D: $64
    rst $38                                       ; $505E: $FF

jr_028_505F:
    ld l, a                                       ; $505F: $6F
    ld h, [hl]                                    ; $5060: $66
    ld l, $2E                                     ; $5061: $2E $2E
    ld l, $20                                     ; $5063: $2E $20
    ld h, d                                       ; $5065: $62
    ld [hl], l                                    ; $5066: $75
    ld [hl], e                                    ; $5067: $73
    ld a, c                                       ; $5068: $79
    ld l, $FE                                     ; $5069: $2E $FE
    db $FD                                        ; $506B: $FD
    sbc d                                         ; $506C: $9A
    ld e, b                                       ; $506D: $58
    db $01                                        ; $506E: $01
    ld b, d                                       ; $506F: $42

    db $4B, $04, $28, $19

    nop                                           ; $5074: $00

jr_028_5075:
    rst $00                                       ; $5075: $C7
    ld b, b                                       ; $5076: $40

    db $28, $1A

    nop                                           ; $5079: $00
    ld a, e                                       ; $507A: $7B
    ld b, l                                       ; $507B: $45

    db $FF, $93, $65, $1B, $43, $4F, $64, $3B, $43, $66, $C0, $5C, $21, $05, $00, $81
    db $5D, $05, $05, $50, $D0, $00, $20, $FB, $50, $22, $05, $40, $0B, $00, $05, $02
    db $ED, $63, $04, $0D, $C7, $D0, $00, $28, $B9, $50, $28, $C7, $50, $0B, $02, $6B
    db $30, $0B, $E0, $45, $00, $80, $00, $00, $82, $1F, $0F, $94, $42, $15, $10, $F0
    db $56, $C8, $10, $04, $57, $C8

    nop                                           ; $50C2: $00
    ld b, l                                       ; $50C3: $45
    jr z, @-$45                                   ; $50C4: $28 $B9

jr_028_50C6:
    ld d, b                                       ; $50C6: $50
    ld e, e                                       ; $50C7: $5B
    jr z, jr_028_50DC                             ; $50C8: $28 $12

    ld b, b                                       ; $50CA: $40
    ld b, l                                       ; $50CB: $45
    db $10                                        ; $50CC: $10
    ld [hl+], a                                   ; $50CD: $22
    ld d, a                                       ; $50CE: $57

    db $02, $02, $09, $09, $00, $45, $28, $70, $50

    ld [bc], a                                    ; $50D8: $02
    ld b, $0D                                     ; $50D9: $06 $0D
    inc bc                                        ; $50DB: $03

jr_028_50DC:
    add hl, bc                                    ; $50DC: $09
    ld b, l                                       ; $50DD: $45
    inc hl                                        ; $50DE: $23
    sbc $71                                       ; $50DF: $DE $71

    db $02, $07, $0D, $03, $09, $45, $23, $DE, $71

    sub e                                         ; $50EA: $93
    ld h, l                                       ; $50EB: $65
    ld a, [hl+]                                   ; $50EC: $2A

jr_028_50ED:
    ld b, e                                       ; $50ED: $43
    ld c, a                                       ; $50EE: $4F
    ld h, h                                       ; $50EF: $64
    ld b, h                                       ; $50F0: $44
    ld b, e                                       ; $50F1: $43
    ld h, [hl]                                    ; $50F2: $66
    ret nz                                        ; $50F3: $C0

    ld e, h                                       ; $50F4: $5C
    ld hl, $0005                                  ; $50F5: $21 $05 $00
    add c                                         ; $50F8: $81
    ld e, l                                       ; $50F9: $5D
    dec b                                         ; $50FA: $05
    dec b                                         ; $50FB: $05

jr_028_50FC:
    ld b, c                                       ; $50FC: $41
    ret nc                                        ; $50FD: $D0

    nop                                           ; $50FE: $00
    jr nz, jr_028_50FC                            ; $50FF: $20 $FB

    ld d, b                                       ; $5101: $50
    ld [hl+], a                                   ; $5102: $22
    dec b                                         ; $5103: $05
    ld b, b                                       ; $5104: $40
    dec bc                                        ; $5105: $0B
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    add d                                         ; $5108: $82
    rra                                           ; $5109: $1F
    ld a, [de]                                    ; $510A: $1A
    sub h                                         ; $510B: $94
    ld b, d                                       ; $510C: $42
    sub e                                         ; $510D: $93
    ld h, l                                       ; $510E: $65
    ld a, [hl+]                                   ; $510F: $2A
    ld b, e                                       ; $5110: $43
    ld c, a                                       ; $5111: $4F
    ld h, h                                       ; $5112: $64
    ld b, h                                       ; $5113: $44
    ld b, e                                       ; $5114: $43
    ld h, [hl]                                    ; $5115: $66
    ret nz                                        ; $5116: $C0

    ld e, h                                       ; $5117: $5C
    ld hl, $0005                                  ; $5118: $21 $05 $00
    add c                                         ; $511B: $81
    ld e, l                                       ; $511C: $5D
    dec b                                         ; $511D: $05
    dec b                                         ; $511E: $05

jr_028_511F:
    ld b, c                                       ; $511F: $41
    ret nc                                        ; $5120: $D0

    nop                                           ; $5121: $00
    jr nz, jr_028_511F                            ; $5122: $20 $FB

    ld d, b                                       ; $5124: $50
    ld [hl+], a                                   ; $5125: $22
    dec b                                         ; $5126: $05
    ld b, b                                       ; $5127: $40
    dec b                                         ; $5128: $05
    ld [bc], a                                    ; $5129: $02
    db $ED                                        ; $512A: $ED
    ld h, e                                       ; $512B: $63
    ld [bc], a                                    ; $512C: $02
    rlca                                          ; $512D: $07
    ld d, [hl]                                    ; $512E: $56
    ret nc                                        ; $512F: $D0

    nop                                           ; $5130: $00
    db $10                                        ; $5131: $10
    ld a, [$2859]                                 ; $5132: $FA $59 $28
    and b                                         ; $5135: $A0
    ld d, c                                       ; $5136: $51
    dec b                                         ; $5137: $05
    inc bc                                        ; $5138: $03
    db $ED                                        ; $5139: $ED
    ld h, e                                       ; $513A: $63
    rlca                                          ; $513B: $07
    rlca                                          ; $513C: $07
    ld e, e                                       ; $513D: $5B
    ret nc                                        ; $513E: $D0

    jr nc, jr_028_5169                            ; $513F: $30 $28

    ld h, d                                       ; $5141: $62
    ld d, c                                       ; $5142: $51
    jr z, jr_028_50ED                             ; $5143: $28 $A8

    ld d, c                                       ; $5145: $51
    ld l, e                                       ; $5146: $6B
    jr nc, jr_028_5154                            ; $5147: $30 $0B

    ldh [rHDMA1], a                               ; $5149: $E0 $51
    nop                                           ; $514B: $00
    add b                                         ; $514C: $80
    nop                                           ; $514D: $00
    ld l, e                                       ; $514E: $6B
    jr nc, jr_028_515B                            ; $514F: $30 $0A

    or b                                          ; $5151: $B0
    ld c, h                                       ; $5152: $4C
    nop                                           ; $5153: $00

jr_028_5154:
    add e                                         ; $5154: $83
    nop                                           ; $5155: $00
    dec bc                                        ; $5156: $0B
    nop                                           ; $5157: $00
    dec bc                                        ; $5158: $0B
    ld [bc], a                                    ; $5159: $02
    dec bc                                        ; $515A: $0B

jr_028_515B:
    inc bc                                        ; $515B: $03
    nop                                           ; $515C: $00
    add d                                         ; $515D: $82
    rra                                           ; $515E: $1F
    db $10                                        ; $515F: $10
    sub h                                         ; $5160: $94
    ld b, d                                       ; $5161: $42
    dec d                                         ; $5162: $15
    ld c, $65                                     ; $5163: $0E $65
    ld e, b                                       ; $5165: $58
    ld b, b                                       ; $5166: $40
    ld c, $18                                     ; $5167: $0E $18

jr_028_5169:
    ld e, c                                       ; $5169: $59
    jr nz, jr_028_517A                            ; $516A: $20 $0E

    inc l                                         ; $516C: $2C
    ld e, c                                       ; $516D: $59
    jr nz, jr_028_517E                            ; $516E: $20 $0E

    ld a, [$2058]                                 ; $5170: $FA $58 $20
    ld c, $C6                                     ; $5173: $0E $C6
    ld d, [hl]                                    ; $5175: $56
    jr nz, jr_028_5186                            ; $5176: $20 $0E

    ld [hl+], a                                   ; $5178: $22
    ld e, c                                       ; $5179: $59

jr_028_517A:
    jr nz, jr_028_518A                            ; $517A: $20 $0E

    ld c, $59                                     ; $517C: $0E $59

jr_028_517E:
    jr nz, jr_028_518E                            ; $517E: $20 $0E

    db $10                                        ; $5180: $10
    ld e, b                                       ; $5181: $58
    ld b, b                                       ; $5182: $40
    ld c, $0E                                     ; $5183: $0E $0E
    ld e, c                                       ; $5185: $59

jr_028_5186:
    jr nz, jr_028_5196                            ; $5186: $20 $0E

    ld [hl], $59                                  ; $5188: $36 $59

jr_028_518A:
    jr nz, jr_028_519A                            ; $518A: $20 $0E

    ld l, e                                       ; $518C: $6B
    ld d, a                                       ; $518D: $57

jr_028_518E:
    db $10                                        ; $518E: $10
    ld c, $04                                     ; $518F: $0E $04
    ld e, c                                       ; $5191: $59
    db $10                                        ; $5192: $10

jr_028_5193:
    ld c, $6B                                     ; $5193: $0E $6B
    ld d, a                                       ; $5195: $57

jr_028_5196:
    db $10                                        ; $5196: $10
    ld c, $04                                     ; $5197: $0E $04
    ld e, c                                       ; $5199: $59

jr_028_519A:
    ld b, b                                       ; $519A: $40

jr_028_519B:
    nop                                           ; $519B: $00
    ld b, l                                       ; $519C: $45
    jr z, @+$64                                   ; $519D: $28 $62

    ld d, c                                       ; $519F: $51
    ld e, e                                       ; $51A0: $5B
    jr z, @-$2A                                   ; $51A1: $28 $D4

    ld d, c                                       ; $51A3: $51
    ld b, l                                       ; $51A4: $45
    db $10                                        ; $51A5: $10
    ld c, $5A                                     ; $51A6: $0E $5A
    inc d                                         ; $51A8: $14
    ld c, $04                                     ; $51A9: $0E $04
    ld e, c                                       ; $51AB: $59
    ld b, e                                       ; $51AC: $43
    nop                                           ; $51AD: $00
    ld h, $A1                                     ; $51AE: $26 $A1
    ld [bc], a                                    ; $51B0: $02
    jr z, @-$32                                   ; $51B1: $28 $CC

    ld d, c                                       ; $51B3: $51
    ld b, e                                       ; $51B4: $43
    nop                                           ; $51B5: $00
    daa                                           ; $51B6: $27
    and c                                         ; $51B7: $A1

jr_028_51B8:
    inc b                                         ; $51B8: $04
    jr z, @-$3A                                   ; $51B9: $28 $C4

    ld d, c                                       ; $51BB: $51
    ld e, e                                       ; $51BC: $5B
    jr z, @+$4E                                   ; $51BD: $28 $4C

    ld d, d                                       ; $51BF: $52
    ld b, l                                       ; $51C0: $45
    jr z, jr_028_5193                             ; $51C1: $28 $D0

    ld d, c                                       ; $51C3: $51
    ld e, e                                       ; $51C4: $5B
    jr z, jr_028_51B8                             ; $51C5: $28 $F1

    ld d, d                                       ; $51C7: $52
    ld b, l                                       ; $51C8: $45
    jr z, jr_028_519B                             ; $51C9: $28 $D0

    ld d, c                                       ; $51CB: $51
    ld e, e                                       ; $51CC: $5B
    jr z, jr_028_5232                             ; $51CD: $28 $63

    ld d, e                                       ; $51CF: $53
    ld b, l                                       ; $51D0: $45
    ld c, $4A                                     ; $51D1: $0E $4A
    ld e, c                                       ; $51D3: $59
    sbc e                                         ; $51D4: $9B
    ld l, b                                       ; $51D5: $68
    ld h, d                                       ; $51D6: $62
    sbc a                                         ; $51D7: $9F
    ld d, h                                       ; $51D8: $54
    ld l, b                                       ; $51D9: $68
    ld h, c                                       ; $51DA: $61
    ld [hl], h                                    ; $51DB: $74
    jr nz, jr_028_5245                            ; $51DC: $20 $67

    ld [hl], l                                    ; $51DE: $75
    ld h, c                                       ; $51DF: $61
    ld [hl], d                                    ; $51E0: $72
    ld h, h                                       ; $51E1: $64
    jr nz, jr_028_5248                            ; $51E2: $20 $64

    ld l, a                                       ; $51E4: $6F
    ld [hl], a                                    ; $51E5: $77
    ld l, [hl]                                    ; $51E6: $6E
    rst $38                                       ; $51E7: $FF
    ld [hl], h                                    ; $51E8: $74
    ld l, b                                       ; $51E9: $68
    ld h, l                                       ; $51EA: $65
    ld [hl], d                                    ; $51EB: $72
    ld h, l                                       ; $51EC: $65
    jr nz, jr_028_5266                            ; $51ED: $20 $77

    ld l, c                                       ; $51EF: $69
    ld [hl], h                                    ; $51F0: $74
    ld l, b                                       ; $51F1: $68
    jr nz, jr_028_5268                            ; $51F2: $20 $74

    ld l, b                                       ; $51F4: $68
    ld h, l                                       ; $51F5: $65
    cp $63                                        ; $51F6: $FE $63
    ld [hl], l                                    ; $51F8: $75
    ld [hl], h                                    ; $51F9: $74
    ld h, l                                       ; $51FA: $65
    jr nz, jr_028_5264                            ; $51FB: $20 $67

    ld l, c                                       ; $51FD: $69
    ld [hl], d                                    ; $51FE: $72
    ld l, h                                       ; $51FF: $6C
    jr nz, jr_028_526B                            ; $5200: $20 $69

    ld [hl], e                                    ; $5202: $73
    jr nz, jr_028_5272                            ; $5203: $20 $6D

    ld a, c                                       ; $5205: $79
    rst $38                                       ; $5206: $FF
    ld [hl], e                                    ; $5207: $73
    ld l, a                                       ; $5208: $6F
    ld l, [hl]                                    ; $5209: $6E
    ld l, $20                                     ; $520A: $2E $20
    ld c, c                                       ; $520C: $49
    daa                                           ; $520D: $27
    ld l, l                                       ; $520E: $6D
    jr nz, jr_028_5284                            ; $520F: $20 $73

    ld l, a                                       ; $5211: $6F
    cp $70                                        ; $5212: $FE $70
    ld [hl], d                                    ; $5214: $72
    ld l, a                                       ; $5215: $6F
    ld [hl], l                                    ; $5216: $75
    ld h, h                                       ; $5217: $64
    jr nz, @+$71                                  ; $5218: $20 $6F

    ld h, [hl]                                    ; $521A: $66
    jr nz, jr_028_5285                            ; $521B: $20 $68

    ld l, c                                       ; $521D: $69
    ld l, l                                       ; $521E: $6D
    ld l, $FF                                     ; $521F: $2E $FF
    ld b, c                                       ; $5221: $41
    ld l, b                                       ; $5222: $68
    inc l                                         ; $5223: $2C
    jr nz, jr_028_528F                            ; $5224: $20 $69

    ld h, [hl]                                    ; $5226: $66
    jr nz, jr_028_5298                            ; $5227: $20 $6F

    ld l, [hl]                                    ; $5229: $6E
    ld l, h                                       ; $522A: $6C
    ld a, c                                       ; $522B: $79
    jr nz, jr_028_5277                            ; $522C: $20 $49

    cp $63                                        ; $522E: $FE $63
    ld l, a                                       ; $5230: $6F
    ld [hl], l                                    ; $5231: $75

jr_028_5232:
    ld l, h                                       ; $5232: $6C
    ld h, h                                       ; $5233: $64
    jr nz, jr_028_5298                            ; $5234: $20 $62

    ld h, l                                       ; $5236: $65
    jr nz, jr_028_52B2                            ; $5237: $20 $79

    ld l, a                                       ; $5239: $6F
    ld [hl], l                                    ; $523A: $75
    ld l, [hl]                                    ; $523B: $6E
    ld h, a                                       ; $523C: $67
    rst $38                                       ; $523D: $FF
    ld h, c                                       ; $523E: $61
    ld h, a                                       ; $523F: $67
    ld h, c                                       ; $5240: $61
    ld l, c                                       ; $5241: $69
    ld l, [hl]                                    ; $5242: $6E
    ld l, $2E                                     ; $5243: $2E $2E

jr_028_5245:
    ld l, $FE                                     ; $5245: $2E $FE
    db $FD                                        ; $5247: $FD

jr_028_5248:
    sbc d                                         ; $5248: $9A
    ld e, b                                       ; $5249: $58
    ld bc, $9B42                                  ; $524A: $01 $42 $9B
    ret c                                         ; $524D: $D8

    ld b, a                                       ; $524E: $47
    sbc a                                         ; $524F: $9F
    ld d, a                                       ; $5250: $57
    ld l, b                                       ; $5251: $68
    ld a, c                                       ; $5252: $79
    inc l                                         ; $5253: $2C
    jr nz, jr_028_52BF                            ; $5254: $20 $69

    ld h, [hl]                                    ; $5256: $66
    jr nz, jr_028_52C2                            ; $5257: $20 $69

    ld [hl], h                                    ; $5259: $74
    rst $38                                       ; $525A: $FF
    ld l, c                                       ; $525B: $69
    ld [hl], e                                    ; $525C: $73
    ld l, [hl]                                    ; $525D: $6E
    daa                                           ; $525E: $27
    ld [hl], h                                    ; $525F: $74
    jr nz, @+$51                                  ; $5260: $20 $4F

    ld [hl], d                                    ; $5262: $72
    ld [hl], a                                    ; $5263: $77

jr_028_5264:
    ld l, c                                       ; $5264: $69
    ld l, [hl]                                    ; $5265: $6E

jr_028_5266:
    ld l, $FE                                     ; $5266: $2E $FE

jr_028_5268:
    ld c, b                                       ; $5268: $48
    ld l, a                                       ; $5269: $6F
    ld [hl], a                                    ; $526A: $77

jr_028_526B:
    jr nz, jr_028_52CE                            ; $526B: $20 $61

    ld [hl], d                                    ; $526D: $72
    ld h, l                                       ; $526E: $65
    jr nz, jr_028_52EA                            ; $526F: $20 $79

    ld l, a                                       ; $5271: $6F

jr_028_5272:
    ld [hl], l                                    ; $5272: $75
    rst $38                                       ; $5273: $FF
    ld h, h                                       ; $5274: $64
    ld l, a                                       ; $5275: $6F
    ld l, c                                       ; $5276: $69

jr_028_5277:
    ld l, [hl]                                    ; $5277: $6E
    ld h, a                                       ; $5278: $67
    inc l                                         ; $5279: $2C
    jr nz, jr_028_52F5                            ; $527A: $20 $79

    ld l, a                                       ; $527C: $6F
    ld [hl], l                                    ; $527D: $75
    ld l, [hl]                                    ; $527E: $6E
    ld h, a                                       ; $527F: $67
    cp $66                                        ; $5280: $FE $66
    ld h, l                                       ; $5282: $65
    ld l, h                                       ; $5283: $6C

jr_028_5284:
    ld l, h                                       ; $5284: $6C

jr_028_5285:
    ld l, a                                       ; $5285: $6F
    ld [hl], a                                    ; $5286: $77
    ccf                                           ; $5287: $3F
    cp $FD                                        ; $5288: $FE $FD
    sbc e                                         ; $528A: $9B
    ld a, b                                       ; $528B: $78
    ld [hl], b                                    ; $528C: $70
    sbc a                                         ; $528D: $9F
    ld d, l                                       ; $528E: $55

jr_028_528F:
    ld l, l                                       ; $528F: $6D
    inc l                                         ; $5290: $2C
    jr nz, @+$6B                                  ; $5291: $20 $69

    ld [hl], h                                    ; $5293: $74
    jr nz, jr_028_52FF                            ; $5294: $20 $69

    ld [hl], e                                    ; $5296: $73
    ld l, [hl]                                    ; $5297: $6E

jr_028_5298:
    daa                                           ; $5298: $27
    ld [hl], h                                    ; $5299: $74
    rst $38                                       ; $529A: $FF
    ld c, a                                       ; $529B: $4F
    ld [hl], d                                    ; $529C: $72
    ld [hl], a                                    ; $529D: $77
    ld l, c                                       ; $529E: $69
    ld l, [hl]                                    ; $529F: $6E
    ld l, $FE                                     ; $52A0: $2E $FE
    db $FD                                        ; $52A2: $FD
    sbc e                                         ; $52A3: $9B
    ret c                                         ; $52A4: $D8

    ld b, a                                       ; $52A5: $47
    sbc a                                         ; $52A6: $9F
    ld b, l                                       ; $52A7: $45
    ld l, b                                       ; $52A8: $68
    ccf                                           ; $52A9: $3F
    jr nz, @+$59                                  ; $52AA: $20 $57

    ld l, b                                       ; $52AC: $68
    ld l, a                                       ; $52AD: $6F
    daa                                           ; $52AE: $27
    ld [hl], e                                    ; $52AF: $73
    jr nz, @+$69                                  ; $52B0: $20 $67

jr_028_52B2:
    ld l, a                                       ; $52B2: $6F
    ld [hl], h                                    ; $52B3: $74
    rst $38                                       ; $52B4: $FF
    ld l, l                                       ; $52B5: $6D
    ld a, c                                       ; $52B6: $79
    jr nz, jr_028_5323                            ; $52B7: $20 $6A

    ld h, l                                       ; $52B9: $65
    ld l, h                                       ; $52BA: $6C
    ld l, h                                       ; $52BB: $6C
    ld a, c                                       ; $52BC: $79
    ld h, d                                       ; $52BD: $62
    ld h, l                                       ; $52BE: $65

jr_028_52BF:
    ld h, c                                       ; $52BF: $61
    ld l, [hl]                                    ; $52C0: $6E
    ld [hl], e                                    ; $52C1: $73

jr_028_52C2:
    ccf                                           ; $52C2: $3F
    cp $FD                                        ; $52C3: $FE $FD
    sbc e                                         ; $52C5: $9B
    ld a, b                                       ; $52C6: $78
    ld [hl], b                                    ; $52C7: $70
    sbc a                                         ; $52C8: $9F
    ld c, a                                       ; $52C9: $4F
    ld l, b                                       ; $52CA: $68
    inc l                                         ; $52CB: $2C
    jr nz, jr_028_5335                            ; $52CC: $20 $67

jr_028_52CE:
    ld [hl], d                                    ; $52CE: $72
    ld h, l                                       ; $52CF: $65
    ld h, c                                       ; $52D0: $61
    ld [hl], h                                    ; $52D1: $74
    ld l, $2E                                     ; $52D2: $2E $2E
    ld l, $FE                                     ; $52D4: $2E $FE
    ld c, b                                       ; $52D6: $48
    ld h, l                                       ; $52D7: $65
    ld [hl], d                                    ; $52D8: $72
    ld h, l                                       ; $52D9: $65
    jr nz, jr_028_5353                            ; $52DA: $20 $77

    ld h, l                                       ; $52DC: $65
    jr nz, jr_028_5346                            ; $52DD: $20 $67

    ld l, a                                       ; $52DF: $6F
    rst $38                                       ; $52E0: $FF
    ld h, c                                       ; $52E1: $61
    ld h, a                                       ; $52E2: $67
    ld h, c                                       ; $52E3: $61
    ld l, c                                       ; $52E4: $69
    ld l, [hl]                                    ; $52E5: $6E
    ld l, $FE                                     ; $52E6: $2E $FE
    db $FD                                        ; $52E8: $FD
    sbc d                                         ; $52E9: $9A

jr_028_52EA:
    ld e, b                                       ; $52EA: $58
    ld bc, $27AF                                  ; $52EB: $01 $AF $27
    and c                                         ; $52EE: $A1
    ld [bc], a                                    ; $52EF: $02
    ld b, d                                       ; $52F0: $42
    sbc e                                         ; $52F1: $9B
    ret c                                         ; $52F2: $D8

    ld b, a                                       ; $52F3: $47
    sbc a                                         ; $52F4: $9F

jr_028_52F5:
    ld b, c                                       ; $52F5: $41
    ld l, b                                       ; $52F6: $68
    ld l, b                                       ; $52F7: $68
    ld l, b                                       ; $52F8: $68
    ld l, $2E                                     ; $52F9: $2E $2E
    ld l, $FE                                     ; $52FB: $2E $FE
    ld l, l                                       ; $52FD: $6D
    ld [hl], l                                    ; $52FE: $75

jr_028_52FF:
    ld l, [hl]                                    ; $52FF: $6E
    ld h, e                                       ; $5300: $63
    ld l, b                                       ; $5301: $68
    jr nz, jr_028_5371                            ; $5302: $20 $6D

    ld [hl], l                                    ; $5304: $75
    ld l, [hl]                                    ; $5305: $6E
    ld h, e                                       ; $5306: $63
    ld l, b                                       ; $5307: $68
    cp $6D                                        ; $5308: $FE $6D
    ld [hl], l                                    ; $530A: $75
    ld l, [hl]                                    ; $530B: $6E
    ld h, e                                       ; $530C: $63
    ld l, b                                       ; $530D: $68
    cp $2E                                        ; $530E: $FE $2E
    ld l, $2E                                     ; $5310: $2E $2E
    ld l, $2E                                     ; $5312: $2E $2E
    ld l, $2E                                     ; $5314: $2E $2E
    ld l, $2E                                     ; $5316: $2E $2E
    cp $6D                                        ; $5318: $FE $6D
    ld [hl], l                                    ; $531A: $75
    ld l, [hl]                                    ; $531B: $6E
    ld h, e                                       ; $531C: $63
    ld l, b                                       ; $531D: $68
    cp $FD                                        ; $531E: $FE $FD
    sbc e                                         ; $5320: $9B
    ld a, b                                       ; $5321: $78
    ld [hl], b                                    ; $5322: $70

jr_028_5323:
    sbc a                                         ; $5323: $9F
    ld b, [hl]                                    ; $5324: $46
    ld h, l                                       ; $5325: $65
    ld h, l                                       ; $5326: $65
    ld l, h                                       ; $5327: $6C
    ld l, c                                       ; $5328: $69
    ld l, [hl]                                    ; $5329: $6E
    ld h, a                                       ; $532A: $67
    rst $38                                       ; $532B: $FF
    ld h, d                                       ; $532C: $62
    ld h, l                                       ; $532D: $65
    ld [hl], h                                    ; $532E: $74
    ld [hl], h                                    ; $532F: $74
    ld h, l                                       ; $5330: $65
    ld [hl], d                                    ; $5331: $72
    ccf                                           ; $5332: $3F
    cp $FD                                        ; $5333: $FE $FD

jr_028_5335:
    sbc e                                         ; $5335: $9B
    ret c                                         ; $5336: $D8

    ld b, a                                       ; $5337: $47
    sbc a                                         ; $5338: $9F
    ld e, c                                       ; $5339: $59
    ld h, [hl]                                    ; $533A: $66
    ld h, [hl]                                    ; $533B: $66
    inc l                                         ; $533C: $2C
    jr nz, jr_028_53AC                            ; $533D: $20 $6D

    ld [hl], d                                    ; $533F: $72
    ld h, [hl]                                    ; $5340: $66
    ld h, [hl]                                    ; $5341: $66
    jr nz, jr_028_53B1                            ; $5342: $20 $6D

    ld [hl], l                                    ; $5344: $75
    ld [hl], l                                    ; $5345: $75

jr_028_5346:
    ld l, $FE                                     ; $5346: $2E $FE
    ld l, l                                       ; $5348: $6D
    ld [hl], l                                    ; $5349: $75
    ld l, [hl]                                    ; $534A: $6E
    ld h, e                                       ; $534B: $63
    ld l, b                                       ; $534C: $68
    jr nz, jr_028_53BC                            ; $534D: $20 $6D

    ld [hl], l                                    ; $534F: $75
    ld l, [hl]                                    ; $5350: $6E
    ld h, e                                       ; $5351: $63
    ld l, b                                       ; $5352: $68

jr_028_5353:
    cp $6D                                        ; $5353: $FE $6D
    ld [hl], l                                    ; $5355: $75
    ld l, [hl]                                    ; $5356: $6E
    ld h, e                                       ; $5357: $63
    ld l, b                                       ; $5358: $68
    cp $FD                                        ; $5359: $FE $FD
    sbc d                                         ; $535B: $9A
    ld e, b                                       ; $535C: $58
    ld bc, $26AF                                  ; $535D: $01 $AF $26
    and c                                         ; $5360: $A1
    ld [bc], a                                    ; $5361: $02
    ld b, d                                       ; $5362: $42
    sbc e                                         ; $5363: $9B
    ret c                                         ; $5364: $D8

    ld b, a                                       ; $5365: $47
    sbc a                                         ; $5366: $9F
    ld l, l                                       ; $5367: $6D
    ld [hl], l                                    ; $5368: $75
    ld l, [hl]                                    ; $5369: $6E
    ld h, e                                       ; $536A: $63
    ld l, b                                       ; $536B: $68
    jr nz, jr_028_53DB                            ; $536C: $20 $6D

    ld [hl], l                                    ; $536E: $75
    ld l, [hl]                                    ; $536F: $6E
    ld h, e                                       ; $5370: $63

jr_028_5371:
    ld l, b                                       ; $5371: $68
    cp $6D                                        ; $5372: $FE $6D
    ld [hl], l                                    ; $5374: $75
    ld l, [hl]                                    ; $5375: $6E
    ld h, e                                       ; $5376: $63
    ld l, b                                       ; $5377: $68
    cp $67                                        ; $5378: $FE $67
    ld [hl], l                                    ; $537A: $75
    ld l, h                                       ; $537B: $6C
    ld [hl], b                                    ; $537C: $70
    cp $4D                                        ; $537D: $FE $4D
    ld d, l                                       ; $537F: $55
    ld c, [hl]                                    ; $5380: $4E
    ld b, e                                       ; $5381: $43
    ld c, b                                       ; $5382: $48
    cp $6D                                        ; $5383: $FE $6D
    ld [hl], l                                    ; $5385: $75
    ld l, [hl]                                    ; $5386: $6E
    ld h, e                                       ; $5387: $63
    ld l, b                                       ; $5388: $68
    jr nz, jr_028_53F8                            ; $5389: $20 $6D

    ld [hl], l                                    ; $538B: $75
    ld l, [hl]                                    ; $538C: $6E
    ld h, e                                       ; $538D: $63
    ld l, b                                       ; $538E: $68
    cp $2E                                        ; $538F: $FE $2E
    ld l, $2E                                     ; $5391: $2E $2E
    ld l, $2E                                     ; $5393: $2E $2E
    ld l, $2E                                     ; $5395: $2E $2E
    ld l, $2E                                     ; $5397: $2E $2E
    cp $6D                                        ; $5399: $FE $6D
    ld [hl], l                                    ; $539B: $75
    ld l, [hl]                                    ; $539C: $6E
    ld h, e                                       ; $539D: $63
    ld l, b                                       ; $539E: $68
    cp $FD                                        ; $539F: $FE $FD
    sbc d                                         ; $53A1: $9A
    ld b, b                                       ; $53A2: $40
    ld b, b                                       ; $53A3: $40
    sbc e                                         ; $53A4: $9B
    ret c                                         ; $53A5: $D8

    ld b, a                                       ; $53A6: $47
    sbc a                                         ; $53A7: $9F
    ld l, l                                       ; $53A8: $6D
    ld [hl], l                                    ; $53A9: $75
    ld l, [hl]                                    ; $53AA: $6E
    ld h, e                                       ; $53AB: $63

jr_028_53AC:
    ld l, b                                       ; $53AC: $68
    cp $FD                                        ; $53AD: $FE $FD
    sbc e                                         ; $53AF: $9B
    ld a, b                                       ; $53B0: $78

jr_028_53B1:
    ld [hl], b                                    ; $53B1: $70
    sbc a                                         ; $53B2: $9F
    ld c, b                                       ; $53B3: $48
    ld h, l                                       ; $53B4: $65
    daa                                           ; $53B5: $27
    ld [hl], e                                    ; $53B6: $73
    jr nz, jr_028_542C                            ; $53B7: $20 $73

    ld [hl], h                                    ; $53B9: $74
    ld l, c                                       ; $53BA: $69
    ld l, h                                       ; $53BB: $6C

jr_028_53BC:
    ld l, h                                       ; $53BC: $6C
    rst $38                                       ; $53BD: $FF
    ld h, l                                       ; $53BE: $65
    ld h, c                                       ; $53BF: $61
    ld [hl], h                                    ; $53C0: $74
    ld l, c                                       ; $53C1: $69
    ld l, [hl]                                    ; $53C2: $6E
    ld h, a                                       ; $53C3: $67
    jr nz, jr_028_542E                            ; $53C4: $20 $68

    ld l, c                                       ; $53C6: $69
    ld [hl], e                                    ; $53C7: $73
    cp $6A                                        ; $53C8: $FE $6A
    ld h, l                                       ; $53CA: $65
    ld l, h                                       ; $53CB: $6C
    ld l, h                                       ; $53CC: $6C
    ld a, c                                       ; $53CD: $79
    ld h, d                                       ; $53CE: $62
    ld h, l                                       ; $53CF: $65
    ld h, c                                       ; $53D0: $61
    ld l, [hl]                                    ; $53D1: $6E
    ld [hl], e                                    ; $53D2: $73
    ld l, $FE                                     ; $53D3: $2E $FE
    db $FD                                        ; $53D5: $FD
    sbc e                                         ; $53D6: $9B
    ret c                                         ; $53D7: $D8

    ld b, a                                       ; $53D8: $47
    sbc a                                         ; $53D9: $9F
    ld c, l                                       ; $53DA: $4D

jr_028_53DB:
    ld [hl], d                                    ; $53DB: $72
    ld h, [hl]                                    ; $53DC: $66
    ld h, [hl]                                    ; $53DD: $66
    jr nz, jr_028_544D                            ; $53DE: $20 $6D

    ld [hl], l                                    ; $53E0: $75
    ld [hl], l                                    ; $53E1: $75
    ld l, $FE                                     ; $53E2: $2E $FE
    ld l, l                                       ; $53E4: $6D
    ld [hl], l                                    ; $53E5: $75
    ld l, [hl]                                    ; $53E6: $6E
    ld h, e                                       ; $53E7: $63
    ld l, b                                       ; $53E8: $68
    cp $FD                                        ; $53E9: $FE $FD
    sbc d                                         ; $53EB: $9A
    ld e, b                                       ; $53EC: $58
    db $01                                        ; $53ED: $01
    ld b, d                                       ; $53EE: $42

    db $4B, $04, $28, $19

    nop                                           ; $53F3: $00
    db $EA                                        ; $53F4: $EA
    ld d, b                                       ; $53F5: $50

    db $28, $1A

jr_028_53F8:
    nop                                           ; $53F8: $00
    dec c                                         ; $53F9: $0D
    ld d, c                                       ; $53FA: $51

    db $FF, $93, $65, $2A, $43, $4F, $64, $44, $43, $66, $C0, $5C, $21, $05, $00, $81
    db $5D, $05, $05, $41, $D0, $00, $20, $FB, $50, $22, $05, $40, $0B, $00, $00, $82
    db $1F, $0F, $94, $42, $02, $0C, $06, $11, $04, $45, $16, $F3, $6C

    ld [bc], a                                    ; $5428: $02
    ld [bc], a                                    ; $5429: $02
    inc b                                         ; $542A: $04
    ld a, [bc]                                    ; $542B: $0A

jr_028_542C:
    dec de                                        ; $542C: $1B
    ld b, l                                       ; $542D: $45

jr_028_542E:
    jr z, jr_028_54A8                             ; $542E: $28 $78

    ld d, l                                       ; $5430: $55

    db $A4, $24, $A3, $01, $00, $01, $9C, $D0

    ld b, d                                       ; $5439: $42
    sbc a                                         ; $543A: $9F
    ld d, h                                       ; $543B: $54
    ld l, b                                       ; $543C: $68
    ld l, c                                       ; $543D: $69
    ld [hl], e                                    ; $543E: $73
    jr nz, jr_028_54A3                            ; $543F: $20 $62

    ld h, l                                       ; $5441: $65
    ld h, h                                       ; $5442: $64
    jr nz, @+$75                                  ; $5443: $20 $73

    ld l, l                                       ; $5445: $6D
    ld h, l                                       ; $5446: $65
    ld l, h                                       ; $5447: $6C
    ld l, h                                       ; $5448: $6C
    ld [hl], e                                    ; $5449: $73
    rst $38                                       ; $544A: $FF
    ld l, h                                       ; $544B: $6C
    ld l, c                                       ; $544C: $69

jr_028_544D:
    ld l, e                                       ; $544D: $6B
    ld h, l                                       ; $544E: $65
    jr nz, jr_028_54C5                            ; $544F: $20 $74

    ld [hl], l                                    ; $5451: $75
    ld [hl], d                                    ; $5452: $72
    ld l, [hl]                                    ; $5453: $6E
    ld l, c                                       ; $5454: $69
    ld [hl], b                                    ; $5455: $70
    ld [hl], e                                    ; $5456: $73
    ld l, $FE                                     ; $5457: $2E $FE
    db $FD                                        ; $5459: $FD
    sbc d                                         ; $545A: $9A
    ld b, d                                       ; $545B: $42
    sbc a                                         ; $545C: $9F
    ld d, h                                       ; $545D: $54
    ld l, b                                       ; $545E: $68
    ld l, c                                       ; $545F: $69
    ld [hl], e                                    ; $5460: $73
    jr nz, jr_028_54C5                            ; $5461: $20 $62

    ld h, l                                       ; $5463: $65
    ld h, h                                       ; $5464: $64
    jr nz, jr_028_54D0                            ; $5465: $20 $69

    ld [hl], e                                    ; $5467: $73
    rst $38                                       ; $5468: $FF
    ld [hl], h                                    ; $5469: $74
    ld l, a                                       ; $546A: $6F
    ld l, a                                       ; $546B: $6F
    jr nz, jr_028_54E1                            ; $546C: $20 $73

    ld l, a                                       ; $546E: $6F
    ld h, [hl]                                    ; $546F: $66
    ld [hl], h                                    ; $5470: $74
    ld l, $FE                                     ; $5471: $2E $FE
    db $FD                                        ; $5473: $FD
    sbc d                                         ; $5474: $9A
    ld b, d                                       ; $5475: $42
    sbc a                                         ; $5476: $9F
    ld d, h                                       ; $5477: $54
    ld l, b                                       ; $5478: $68
    ld l, c                                       ; $5479: $69
    ld [hl], e                                    ; $547A: $73
    jr nz, jr_028_54DF                            ; $547B: $20 $62

    ld h, l                                       ; $547D: $65
    ld h, h                                       ; $547E: $64
    jr nz, jr_028_54EA                            ; $547F: $20 $69

    ld [hl], e                                    ; $5481: $73
    rst $38                                       ; $5482: $FF
    ld [hl], h                                    ; $5483: $74
    ld l, a                                       ; $5484: $6F
    ld l, a                                       ; $5485: $6F
    jr nz, jr_028_54F0                            ; $5486: $20 $68

    ld h, c                                       ; $5488: $61
    ld [hl], d                                    ; $5489: $72
    ld h, h                                       ; $548A: $64
    ld l, $FE                                     ; $548B: $2E $FE
    db $FD                                        ; $548D: $FD
    sbc d                                         ; $548E: $9A
    ld b, d                                       ; $548F: $42
    sbc e                                         ; $5490: $9B
    ret                                           ; $5491: $C9


    ld d, d                                       ; $5492: $52
    sbc a                                         ; $5493: $9F
    ld c, l                                       ; $5494: $4D
    ld b, l                                       ; $5495: $45
    ld d, a                                       ; $5496: $57
    cp $4D                                        ; $5497: $FE $4D
    ld d, d                                       ; $5499: $52
    ld c, a                                       ; $549A: $4F
    ld d, a                                       ; $549B: $57
    cp $4D                                        ; $549C: $FE $4D
    ld b, l                                       ; $549E: $45
    ld c, a                                       ; $549F: $4F
    ld d, a                                       ; $54A0: $57
    cp $4D                                        ; $54A1: $FE $4D

jr_028_54A3:
    ld b, l                                       ; $54A3: $45
    ld d, a                                       ; $54A4: $57
    ld d, a                                       ; $54A5: $57
    cp $4D                                        ; $54A6: $FE $4D

jr_028_54A8:
    ld b, l                                       ; $54A8: $45
    ld d, a                                       ; $54A9: $57
    ld d, a                                       ; $54AA: $57
    cp $4D                                        ; $54AB: $FE $4D
    ld b, l                                       ; $54AD: $45
    ld d, d                                       ; $54AE: $52
    ld c, a                                       ; $54AF: $4F
    ld d, a                                       ; $54B0: $57
    cp $4D                                        ; $54B1: $FE $4D
    ld b, l                                       ; $54B3: $45
    dec l                                         ; $54B4: $2D
    ld c, a                                       ; $54B5: $4F
    ld d, a                                       ; $54B6: $57
    cp $4D                                        ; $54B7: $FE $4D
    ld c, a                                       ; $54B9: $4F
    ld d, a                                       ; $54BA: $57
    cp $FD                                        ; $54BB: $FE $FD
    sbc e                                         ; $54BD: $9B
    ld a, b                                       ; $54BE: $78
    ld [hl], b                                    ; $54BF: $70
    sbc a                                         ; $54C0: $9F
    ld b, c                                       ; $54C1: $41
    ld c, b                                       ; $54C2: $48
    ld c, b                                       ; $54C3: $48
    ld c, b                                       ; $54C4: $48

jr_028_54C5:
    ld c, b                                       ; $54C5: $48
    ld hl, $5320                                  ; $54C6: $21 $20 $53
    ld d, h                                       ; $54C9: $54
    ld c, a                                       ; $54CA: $4F
    ld d, b                                       ; $54CB: $50
    ld hl, $FE21                                  ; $54CC: $21 $21 $FE
    db $FD                                        ; $54CF: $FD

jr_028_54D0:
    sbc d                                         ; $54D0: $9A
    ld b, d                                       ; $54D1: $42
    ld b, e                                       ; $54D2: $43
    inc de                                        ; $54D3: $13
    inc b                                         ; $54D4: $04
    dec b                                         ; $54D5: $05
    add hl, de                                    ; $54D6: $19
    jr z, jr_028_54DE                             ; $54D7: $28 $05

    ld d, l                                       ; $54D9: $55
    sbc e                                         ; $54DA: $9B
    ld a, b                                       ; $54DB: $78
    ld [hl], b                                    ; $54DC: $70
    sbc a                                         ; $54DD: $9F

jr_028_54DE:
    ld c, b                                       ; $54DE: $48

jr_028_54DF:
    ld l, l                                       ; $54DF: $6D
    ld l, l                                       ; $54E0: $6D

jr_028_54E1:
    ld l, l                                       ; $54E1: $6D
    inc l                                         ; $54E2: $2C
    jr nz, jr_028_5546                            ; $54E3: $20 $61

    ld l, h                                       ; $54E5: $6C
    ld l, h                                       ; $54E6: $6C
    jr nz, jr_028_5558                            ; $54E7: $20 $6F

    ld h, [hl]                                    ; $54E9: $66

jr_028_54EA:
    rst $38                                       ; $54EA: $FF
    ld d, b                                       ; $54EB: $50
    ld l, a                                       ; $54EC: $6F
    ld h, c                                       ; $54ED: $61

jr_028_54EE:
    ld h, h                                       ; $54EE: $64
    daa                                           ; $54EF: $27

jr_028_54F0:
    ld [hl], e                                    ; $54F0: $73
    jr nz, jr_028_555D                            ; $54F1: $20 $6A

    ld h, c                                       ; $54F3: $61
    ld [hl], d                                    ; $54F4: $72
    ld [hl], e                                    ; $54F5: $73
    cp $61                                        ; $54F6: $FE $61
    ld [hl], d                                    ; $54F8: $72
    ld h, l                                       ; $54F9: $65
    jr nz, jr_028_5561                            ; $54FA: $20 $65

    ld l, l                                       ; $54FC: $6D
    ld [hl], b                                    ; $54FD: $70
    ld [hl], h                                    ; $54FE: $74
    ld a, c                                       ; $54FF: $79
    ld l, $FE                                     ; $5500: $2E $FE
    db $FD                                        ; $5502: $FD
    sbc d                                         ; $5503: $9A
    ld b, d                                       ; $5504: $42
    sbc a                                         ; $5505: $9F
    ld c, d                                       ; $5506: $4A
    ld h, c                                       ; $5507: $61
    ld [hl], d                                    ; $5508: $72
    ld [hl], e                                    ; $5509: $73
    jr nz, jr_028_557B                            ; $550A: $20 $6F

    ld h, [hl]                                    ; $550C: $66
    rst $38                                       ; $550D: $FF
    ld l, d                                       ; $550E: $6A
    ld h, l                                       ; $550F: $65
    ld l, h                                       ; $5510: $6C
    ld l, h                                       ; $5511: $6C

jr_028_5512:
    ld a, c                                       ; $5512: $79
    ld h, d                                       ; $5513: $62
    ld h, l                                       ; $5514: $65

jr_028_5515:
    ld h, c                                       ; $5515: $61
    ld l, [hl]                                    ; $5516: $6E
    ld [hl], e                                    ; $5517: $73
    ld l, $FE                                     ; $5518: $2E $FE
    db $FD                                        ; $551A: $FD
    sbc e                                         ; $551B: $9B
    ld a, b                                       ; $551C: $78
    ld [hl], b                                    ; $551D: $70
    sbc a                                         ; $551E: $9F
    ld b, l                                       ; $551F: $45
    ld [hl], a                                    ; $5520: $77
    ld [hl], a                                    ; $5521: $77
    inc l                                         ; $5522: $2C

jr_028_5523:
    jr nz, jr_028_5599                            ; $5523: $20 $74

    ld l, b                                       ; $5525: $68
    ld h, l                                       ; $5526: $65
    ld a, c                                       ; $5527: $79
    daa                                           ; $5528: $27
    ld [hl], d                                    ; $5529: $72
    ld h, l                                       ; $552A: $65
    rst $38                                       ; $552B: $FF
    ld h, c                                       ; $552C: $61
    ld l, h                                       ; $552D: $6C
    ld l, h                                       ; $552E: $6C
    jr nz, jr_028_559D                            ; $552F: $20 $6C

    ld l, c                                       ; $5531: $69
    ld h, e                                       ; $5532: $63
    ld l, a                                       ; $5533: $6F
    ld [hl], d                                    ; $5534: $72
    ld l, c                                       ; $5535: $69
    ld h, e                                       ; $5536: $63
    ld h, l                                       ; $5537: $65
    cp $6F                                        ; $5538: $FE $6F
    ld l, [hl]                                    ; $553A: $6E
    ld h, l                                       ; $553B: $65
    ld [hl], e                                    ; $553C: $73
    ld l, $FE                                     ; $553D: $2E $FE
    db $FD                                        ; $553F: $FD
    sbc d                                         ; $5540: $9A
    ld b, d                                       ; $5541: $42
    ld [bc], a                                    ; $5542: $02
    inc b                                         ; $5543: $04
    ld [bc], a                                    ; $5544: $02
    dec de                                        ; $5545: $1B

jr_028_5546:
    ld a, [bc]                                    ; $5546: $0A
    ld b, l                                       ; $5547: $45
    jr z, jr_028_55A2                             ; $5548: $28 $58

    ld e, b                                       ; $554A: $58
    ld [bc], a                                    ; $554B: $02
    inc b                                         ; $554C: $04
    ld [$1A00], sp                                ; $554D: $08 $00 $1A
    ld b, l                                       ; $5550: $45
    jr z, jr_028_54EE                             ; $5551: $28 $9B

    ld d, l                                       ; $5553: $55
    ld [bc], a                                    ; $5554: $02
    ld [$1A04], sp                                ; $5555: $08 $04 $1A

jr_028_5558:
    nop                                           ; $5558: $00
    ld b, l                                       ; $5559: $45
    jr z, @+$7A                                   ; $555A: $28 $78

    ld d, l                                       ; $555C: $55

jr_028_555D:
    ld [bc], a                                    ; $555D: $02
    daa                                           ; $555E: $27
    inc b                                         ; $555F: $04
    ld a, [de]                                    ; $5560: $1A

jr_028_5561:
    nop                                           ; $5561: $00
    ld b, l                                       ; $5562: $45
    jr z, jr_028_5523                             ; $5563: $28 $BE

    ld d, l                                       ; $5565: $55
    ld [bc], a                                    ; $5566: $02
    inc b                                         ; $5567: $04
    nop                                           ; $5568: $00
    dec de                                        ; $5569: $1B
    ld [bc], a                                    ; $556A: $02
    ld b, l                                       ; $556B: $45
    jr z, jr_028_5515                             ; $556C: $28 $A7

    ld e, [hl]                                    ; $556E: $5E
    ld [bc], a                                    ; $556F: $02
    inc b                                         ; $5570: $04
    daa                                           ; $5571: $27
    nop                                           ; $5572: $00
    ld a, [de]                                    ; $5573: $1A
    ld b, l                                       ; $5574: $45
    jr z, jr_028_5512                             ; $5575: $28 $9B

    ld d, l                                       ; $5577: $55
    sub e                                         ; $5578: $93
    ld h, l                                       ; $5579: $65
    ld c, b                                       ; $557A: $48

jr_028_557B:
    ld b, e                                       ; $557B: $43
    ld c, a                                       ; $557C: $4F
    ld h, h                                       ; $557D: $64
    ld e, d                                       ; $557E: $5A
    ld b, e                                       ; $557F: $43
    ld h, [hl]                                    ; $5580: $66
    ret nz                                        ; $5581: $C0

    ld e, h                                       ; $5582: $5C
    ld hl, $0005                                  ; $5583: $21 $05 $00
    add c                                         ; $5586: $81
    ld e, l                                       ; $5587: $5D
    ld c, $11                                     ; $5588: $0E $11

jr_028_558A:
    ret                                           ; $558A: $C9


    ret nc                                        ; $558B: $D0

    nop                                           ; $558C: $00
    jr nz, jr_028_558A                            ; $558D: $20 $FB

    ld d, b                                       ; $558F: $50
    ld [hl+], a                                   ; $5590: $22
    dec b                                         ; $5591: $05
    ld b, b                                       ; $5592: $40
    dec bc                                        ; $5593: $0B
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    add d                                         ; $5596: $82
    rra                                           ; $5597: $1F
    dec de                                        ; $5598: $1B

jr_028_5599:
    sub h                                         ; $5599: $94
    ld b, d                                       ; $559A: $42
    sub e                                         ; $559B: $93
    ld h, l                                       ; $559C: $65

jr_028_559D:
    ld d, a                                       ; $559D: $57
    ld b, e                                       ; $559E: $43
    ld c, a                                       ; $559F: $4F
    ld h, h                                       ; $55A0: $64
    ld h, e                                       ; $55A1: $63

jr_028_55A2:
    ld b, e                                       ; $55A2: $43
    ld h, [hl]                                    ; $55A3: $66
    ret nz                                        ; $55A4: $C0

    ld e, h                                       ; $55A5: $5C
    ld hl, $0005                                  ; $55A6: $21 $05 $00
    add c                                         ; $55A9: $81
    ld e, l                                       ; $55AA: $5D
    ld c, $11                                     ; $55AB: $0E $11

jr_028_55AD:
    ld h, b                                       ; $55AD: $60
    db $D3                                        ; $55AE: $D3
    nop                                           ; $55AF: $00
    jr nz, jr_028_55AD                            ; $55B0: $20 $FB

    ld d, b                                       ; $55B2: $50
    ld [hl+], a                                   ; $55B3: $22
    dec b                                         ; $55B4: $05
    ld b, b                                       ; $55B5: $40
    dec bc                                        ; $55B6: $0B
    nop                                           ; $55B7: $00
    nop                                           ; $55B8: $00
    add d                                         ; $55B9: $82
    rra                                           ; $55BA: $1F
    dec de                                        ; $55BB: $1B
    sub h                                         ; $55BC: $94
    ld b, d                                       ; $55BD: $42
    sub e                                         ; $55BE: $93
    ld h, l                                       ; $55BF: $65
    ld c, b                                       ; $55C0: $48
    ld b, e                                       ; $55C1: $43
    ld c, a                                       ; $55C2: $4F
    ld h, h                                       ; $55C3: $64
    ld l, h                                       ; $55C4: $6C
    ld b, e                                       ; $55C5: $43
    ld h, [hl]                                    ; $55C6: $66
    ret nz                                        ; $55C7: $C0

    ld e, h                                       ; $55C8: $5C
    ld hl, $0005                                  ; $55C9: $21 $05 $00
    add c                                         ; $55CC: $81
    ld e, l                                       ; $55CD: $5D
    ld c, $11                                     ; $55CE: $0E $11

jr_028_55D0:
    ret                                           ; $55D0: $C9


    ret nc                                        ; $55D1: $D0

    nop                                           ; $55D2: $00
    jr nz, jr_028_55D0                            ; $55D3: $20 $FB

    ld d, b                                       ; $55D5: $50
    ld [hl+], a                                   ; $55D6: $22
    dec b                                         ; $55D7: $05
    ld b, b                                       ; $55D8: $40
    dec bc                                        ; $55D9: $0B
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    add d                                         ; $55DC: $82
    rra                                           ; $55DD: $1F
    dec de                                        ; $55DE: $1B
    sub h                                         ; $55DF: $94
    ld b, d                                       ; $55E0: $42
    sub e                                         ; $55E1: $93
    ld h, l                                       ; $55E2: $65
    add hl, sp                                    ; $55E3: $39
    ld b, e                                       ; $55E4: $43
    ld c, a                                       ; $55E5: $4F
    ld h, h                                       ; $55E6: $64
    ld d, c                                       ; $55E7: $51
    ld b, e                                       ; $55E8: $43
    ld l, c                                       ; $55E9: $69
    ld [hl], l                                    ; $55EA: $75
    ld b, e                                       ; $55EB: $43
    ld h, [hl]                                    ; $55EC: $66
    ret nz                                        ; $55ED: $C0

    ld e, h                                       ; $55EE: $5C
    ld hl, $0005                                  ; $55EF: $21 $05 $00
    add c                                         ; $55F2: $81
    ld e, l                                       ; $55F3: $5D
    ld c, $11                                     ; $55F4: $0E $11

jr_028_55F6:
    ld h, d                                       ; $55F6: $62
    pop de                                        ; $55F7: $D1
    nop                                           ; $55F8: $00
    jr nz, jr_028_55F6                            ; $55F9: $20 $FB

    ld d, b                                       ; $55FB: $50
    ld [hl+], a                                   ; $55FC: $22
    dec b                                         ; $55FD: $05
    ld b, b                                       ; $55FE: $40
    dec b                                         ; $55FF: $05
    ld [bc], a                                    ; $5600: $02
    db $ED                                        ; $5601: $ED
    ld h, e                                       ; $5602: $63
    ld de, $3D0F                                  ; $5603: $11 $0F $3D
    pop de                                        ; $5606: $D1
    nop                                           ; $5607: $00
    ld c, $04                                     ; $5608: $0E $04

jr_028_560A:
    ld d, h                                       ; $560A: $54
    jr z, jr_028_564E                             ; $560B: $28 $41

    ld d, [hl]                                    ; $560D: $56
    dec b                                         ; $560E: $05
    inc bc                                        ; $560F: $03
    db $ED                                        ; $5610: $ED
    ld h, e                                       ; $5611: $63
    ld c, $0C                                     ; $5612: $0E $0C
    cp $D0                                        ; $5614: $FE $D0
    jr nc, @+$11                                  ; $5616: $30 $0F

    ld e, a                                       ; $5618: $5F
    ld e, c                                       ; $5619: $59
    jr z, jr_028_5679                             ; $561A: $28 $5D

    ld d, [hl]                                    ; $561C: $56
    ld l, e                                       ; $561D: $6B
    jr nc, jr_028_562A                            ; $561E: $30 $0A

    or b                                          ; $5620: $B0
    ld c, b                                       ; $5621: $48
    nop                                           ; $5622: $00
    add b                                         ; $5623: $80
    nop                                           ; $5624: $00
    ld l, e                                       ; $5625: $6B
    jr nc, jr_028_5633                            ; $5626: $30 $0B

    or b                                          ; $5628: $B0
    ld d, [hl]                                    ; $5629: $56

jr_028_562A:
    nop                                           ; $562A: $00
    add e                                         ; $562B: $83
    nop                                           ; $562C: $00
    dec bc                                        ; $562D: $0B
    nop                                           ; $562E: $00
    dec bc                                        ; $562F: $0B
    ld [bc], a                                    ; $5630: $02
    dec bc                                        ; $5631: $0B
    inc bc                                        ; $5632: $03

jr_028_5633:
    ld a, [hl]                                    ; $5633: $7E
    cp e                                          ; $5634: $BB
    ret nc                                        ; $5635: $D0

    ld bc, $B702                                  ; $5636: $01 $02 $B7
    ret nc                                        ; $5639: $D0

    add hl, bc                                    ; $563A: $09
    inc bc                                        ; $563B: $03
    add d                                         ; $563C: $82
    rra                                           ; $563D: $1F
    ld a, [de]                                    ; $563E: $1A
    sub h                                         ; $563F: $94
    ld b, d                                       ; $5640: $42
    inc d                                         ; $5641: $14
    ld c, $04                                     ; $5642: $0E $04
    ld d, h                                       ; $5644: $54
    ld b, e                                       ; $5645: $43
    nop                                           ; $5646: $00
    dec h                                         ; $5647: $25
    and c                                         ; $5648: $A1
    ld [$5528], sp                                ; $5649: $08 $28 $55
    ld d, [hl]                                    ; $564C: $56
    ld e, e                                       ; $564D: $5B

jr_028_564E:
    jr z, jr_028_56B5                             ; $564E: $28 $65

    ld d, [hl]                                    ; $5650: $56
    ld b, l                                       ; $5651: $45
    ld c, $35                                     ; $5652: $0E $35
    ld d, l                                       ; $5654: $55
    ld e, e                                       ; $5655: $5B
    jr z, jr_028_560A                             ; $5656: $28 $B2

    ld d, a                                       ; $5658: $57
    ld b, l                                       ; $5659: $45
    ld c, $35                                     ; $565A: $0E $35
    ld d, l                                       ; $565C: $55
    ld e, e                                       ; $565D: $5B
    jr z, @-$0F                                   ; $565E: $28 $EF

    ld d, a                                       ; $5660: $57
    ld b, l                                       ; $5661: $45
    rrca                                          ; $5662: $0F
    and l                                         ; $5663: $A5
    ld e, c                                       ; $5664: $59
    sbc e                                         ; $5665: $9B
    ld c, b                                       ; $5666: $48
    ld b, [hl]                                    ; $5667: $46
    sbc a                                         ; $5668: $9F
    ld d, a                                       ; $5669: $57
    ld h, l                                       ; $566A: $65
    ld l, h                                       ; $566B: $6C
    ld l, h                                       ; $566C: $6C
    inc l                                         ; $566D: $2C
    jr nz, @+$56                                  ; $566E: $20 $54

    ld l, a                                       ; $5670: $6F
    ld l, [hl]                                    ; $5671: $6E
    ld a, c                                       ; $5672: $79
    inc l                                         ; $5673: $2C
    jr nz, jr_028_56BF                            ; $5674: $20 $49

    daa                                           ; $5676: $27
    ld l, l                                       ; $5677: $6D
    rst $38                                       ; $5678: $FF

jr_028_5679:
    halt                                          ; $5679: $76
    ld h, l                                       ; $567A: $65
    ld [hl], d                                    ; $567B: $72
    ld a, c                                       ; $567C: $79
    jr nz, jr_028_56F2                            ; $567D: $20 $73

    ld l, a                                       ; $567F: $6F
    ld [hl], d                                    ; $5680: $72
    ld [hl], d                                    ; $5681: $72
    ld a, c                                       ; $5682: $79
    cp $61                                        ; $5683: $FE $61
    ld h, d                                       ; $5685: $62
    ld l, a                                       ; $5686: $6F
    ld [hl], l                                    ; $5687: $75
    ld [hl], h                                    ; $5688: $74
    jr nz, jr_028_56EC                            ; $5689: $20 $61

    ld l, h                                       ; $568B: $6C
    ld l, h                                       ; $568C: $6C
    jr nz, jr_028_5703                            ; $568D: $20 $74

    ld l, b                                       ; $568F: $68
    ld l, c                                       ; $5690: $69
    ld [hl], e                                    ; $5691: $73
    ld l, $FE                                     ; $5692: $2E $FE
    ld d, a                                       ; $5694: $57
    ld h, l                                       ; $5695: $65
    jr nz, jr_028_570F                            ; $5696: $20 $77

    ld h, l                                       ; $5698: $65
    ld [hl], d                                    ; $5699: $72
    ld h, l                                       ; $569A: $65
    jr nz, jr_028_56FE                            ; $569B: $20 $61

    ld l, h                                       ; $569D: $6C
    ld l, h                                       ; $569E: $6C
    jr nz, jr_028_5714                            ; $569F: $20 $73

    ld l, a                                       ; $56A1: $6F
    rst $38                                       ; $56A2: $FF
    ld l, b                                       ; $56A3: $68
    ld h, c                                       ; $56A4: $61
    ld [hl], b                                    ; $56A5: $70
    ld [hl], b                                    ; $56A6: $70
    ld a, c                                       ; $56A7: $79
    jr nz, jr_028_571E                            ; $56A8: $20 $74

    ld l, a                                       ; $56AA: $6F
    jr nz, @+$6A                                  ; $56AB: $20 $68

    ld h, l                                       ; $56AD: $65
    ld h, c                                       ; $56AE: $61
    ld [hl], d                                    ; $56AF: $72
    cp $6F                                        ; $56B0: $FE $6F
    ld h, [hl]                                    ; $56B2: $66
    jr nz, jr_028_56F6                            ; $56B3: $20 $41

jr_028_56B5:
    ld h, a                                       ; $56B5: $67
    ld [hl], d                                    ; $56B6: $72
    ld h, c                                       ; $56B7: $61
    ld l, l                                       ; $56B8: $6D
    daa                                           ; $56B9: $27
    ld [hl], e                                    ; $56BA: $73
    rst $38                                       ; $56BB: $FF
    ld h, h                                       ; $56BC: $64
    ld h, l                                       ; $56BD: $65
    ld h, [hl]                                    ; $56BE: $66

jr_028_56BF:
    ld h, l                                       ; $56BF: $65
    ld h, c                                       ; $56C0: $61
    ld [hl], h                                    ; $56C1: $74
    inc l                                         ; $56C2: $2C
    jr nz, jr_028_5727                            ; $56C3: $20 $62

    ld [hl], l                                    ; $56C5: $75
    ld [hl], h                                    ; $56C6: $74
    cp $4F                                        ; $56C7: $FE $4F
    ld [hl], d                                    ; $56C9: $72
    ld [hl], a                                    ; $56CA: $77
    ld l, c                                       ; $56CB: $69
    ld l, [hl]                                    ; $56CC: $6E
    jr nz, jr_028_573F                            ; $56CD: $20 $70

    ld h, c                                       ; $56CF: $61
    ld [hl], e                                    ; $56D0: $73
    ld [hl], e                                    ; $56D1: $73
    ld h, l                                       ; $56D2: $65
    ld h, h                                       ; $56D3: $64
    rst $38                                       ; $56D4: $FF
    ld h, c                                       ; $56D5: $61
    ld [hl], a                                    ; $56D6: $77
    ld h, c                                       ; $56D7: $61
    ld a, c                                       ; $56D8: $79
    jr nz, jr_028_574E                            ; $56D9: $20 $73

    ld l, b                                       ; $56DB: $68
    ld l, a                                       ; $56DC: $6F
    ld [hl], d                                    ; $56DD: $72
    ld [hl], h                                    ; $56DE: $74
    ld l, h                                       ; $56DF: $6C
    ld a, c                                       ; $56E0: $79
    cp $61                                        ; $56E1: $FE $61
    ld h, [hl]                                    ; $56E3: $66
    ld [hl], h                                    ; $56E4: $74
    ld h, l                                       ; $56E5: $65
    ld [hl], d                                    ; $56E6: $72
    jr nz, jr_028_5760                            ; $56E7: $20 $77

    ld h, l                                       ; $56E9: $65
    jr nz, jr_028_5754                            ; $56EA: $20 $68

jr_028_56EC:
    ld h, l                                       ; $56EC: $65
    ld h, c                                       ; $56ED: $61
    ld [hl], d                                    ; $56EE: $72
    ld h, h                                       ; $56EF: $64
    rst $38                                       ; $56F0: $FF
    ld [hl], h                                    ; $56F1: $74

jr_028_56F2:
    ld l, b                                       ; $56F2: $68
    ld h, l                                       ; $56F3: $65
    jr nz, jr_028_5764                            ; $56F4: $20 $6E

jr_028_56F6:
    ld h, l                                       ; $56F6: $65
    ld [hl], a                                    ; $56F7: $77
    ld [hl], e                                    ; $56F8: $73
    ld l, $FE                                     ; $56F9: $2E $FE
    ld d, h                                       ; $56FB: $54
    ld l, b                                       ; $56FC: $68
    ld h, c                                       ; $56FD: $61

jr_028_56FE:
    ld [hl], h                                    ; $56FE: $74
    jr nz, jr_028_5764                            ; $56FF: $20 $63

    ld l, a                                       ; $5701: $6F
    ld [hl], l                                    ; $5702: $75

jr_028_5703:
    ld l, h                                       ; $5703: $6C
    ld h, h                                       ; $5704: $64
    jr nz, jr_028_5775                            ; $5705: $20 $6E

    ld l, a                                       ; $5707: $6F
    ld [hl], h                                    ; $5708: $74
    rst $38                                       ; $5709: $FF
    ld h, d                                       ; $570A: $62
    ld h, l                                       ; $570B: $65
    jr nz, jr_028_5777                            ; $570C: $20 $69

    ld h, a                                       ; $570E: $67

jr_028_570F:
    ld l, [hl]                                    ; $570F: $6E
    ld l, a                                       ; $5710: $6F
    ld [hl], d                                    ; $5711: $72
    ld h, l                                       ; $5712: $65
    ld h, h                                       ; $5713: $64

jr_028_5714:
    ld l, $FE                                     ; $5714: $2E $FE
    db $FD                                        ; $5716: $FD
    sbc e                                         ; $5717: $9B
    ld a, b                                       ; $5718: $78
    ld [hl], b                                    ; $5719: $70
    sbc a                                         ; $571A: $9F
    ld c, c                                       ; $571B: $49
    jr nz, jr_028_5793                            ; $571C: $20 $75

jr_028_571E:
    ld l, [hl]                                    ; $571E: $6E
    ld h, h                                       ; $571F: $64
    ld h, l                                       ; $5720: $65
    ld [hl], d                                    ; $5721: $72
    ld [hl], e                                    ; $5722: $73
    ld [hl], h                                    ; $5723: $74
    ld h, c                                       ; $5724: $61
    ld l, [hl]                                    ; $5725: $6E
    ld h, h                                       ; $5726: $64

jr_028_5727:
    ld l, $FF                                     ; $5727: $2E $FF
    ld c, c                                       ; $5729: $49
    jr nz, @+$75                                  ; $572A: $20 $73

    ld l, b                                       ; $572C: $68
    ld l, a                                       ; $572D: $6F
    ld [hl], l                                    ; $572E: $75
    ld l, h                                       ; $572F: $6C
    ld h, h                                       ; $5730: $64
    cp $70                                        ; $5731: $FE $70
    ld [hl], d                                    ; $5733: $72
    ld l, a                                       ; $5734: $6F
    ld h, d                                       ; $5735: $62
    ld h, c                                       ; $5736: $61
    ld h, d                                       ; $5737: $62
    ld l, h                                       ; $5738: $6C
    ld a, c                                       ; $5739: $79
    jr nz, @+$6E                                  ; $573A: $20 $6C

    ld h, l                                       ; $573C: $65
    ld h, c                                       ; $573D: $61
    halt                                          ; $573E: $76

jr_028_573F:
    ld h, l                                       ; $573F: $65
    rst $38                                       ; $5740: $FF
    ld l, [hl]                                    ; $5741: $6E
    ld l, a                                       ; $5742: $6F
    ld [hl], a                                    ; $5743: $77
    ld l, $FE                                     ; $5744: $2E $FE
    db $FD                                        ; $5746: $FD
    sbc e                                         ; $5747: $9B
    ld c, b                                       ; $5748: $48
    ld b, [hl]                                    ; $5749: $46
    sbc a                                         ; $574A: $9F
    ld e, c                                       ; $574B: $59
    ld h, l                                       ; $574C: $65
    ld [hl], e                                    ; $574D: $73

jr_028_574E:
    inc l                                         ; $574E: $2C
    jr nz, @+$71                                  ; $574F: $20 $6F

    ld h, [hl]                                    ; $5751: $66
    jr nz, jr_028_57B7                            ; $5752: $20 $63

jr_028_5754:
    ld l, a                                       ; $5754: $6F
    ld [hl], l                                    ; $5755: $75
    ld [hl], d                                    ; $5756: $72
    ld [hl], e                                    ; $5757: $73
    ld h, l                                       ; $5758: $65
    ld l, $FE                                     ; $5759: $2E $FE
    db $FD                                        ; $575B: $FD
    sbc e                                         ; $575C: $9B
    ld a, b                                       ; $575D: $78
    ld [hl], b                                    ; $575E: $70
    sbc a                                         ; $575F: $9F

jr_028_5760:
    ld b, a                                       ; $5760: $47
    ld l, a                                       ; $5761: $6F
    ld l, a                                       ; $5762: $6F
    ld h, h                                       ; $5763: $64

jr_028_5764:
    ld h, d                                       ; $5764: $62
    ld a, c                                       ; $5765: $79
    ld h, l                                       ; $5766: $65
    inc l                                         ; $5767: $2C
    jr nz, jr_028_57AF                            ; $5768: $20 $45

    ld l, c                                       ; $576A: $69
    ld h, h                                       ; $576B: $64
    ld l, a                                       ; $576C: $6F
    ld l, [hl]                                    ; $576D: $6E
    ld l, $FE                                     ; $576E: $2E $FE
    db $FD                                        ; $5770: $FD
    sbc e                                         ; $5771: $9B
    ld c, b                                       ; $5772: $48
    ld b, [hl]                                    ; $5773: $46
    sbc a                                         ; $5774: $9F

jr_028_5775:
    ld b, [hl]                                    ; $5775: $46
    ld h, c                                       ; $5776: $61

jr_028_5777:
    ld [hl], d                                    ; $5777: $72
    ld h, l                                       ; $5778: $65
    ld [hl], a                                    ; $5779: $77
    ld h, l                                       ; $577A: $65
    ld l, h                                       ; $577B: $6C
    ld l, h                                       ; $577C: $6C
    inc l                                         ; $577D: $2C
    jr nz, jr_028_57D4                            ; $577E: $20 $54

    ld l, a                                       ; $5780: $6F
    ld l, [hl]                                    ; $5781: $6E
    ld a, c                                       ; $5782: $79
    ld l, $FE                                     ; $5783: $2E $FE
    ld c, l                                       ; $5785: $4D
    ld h, c                                       ; $5786: $61
    ld a, c                                       ; $5787: $79
    jr nz, jr_028_57F9                            ; $5788: $20 $6F

    ld [hl], l                                    ; $578A: $75
    ld [hl], d                                    ; $578B: $72
    jr nz, @+$72                                  ; $578C: $20 $70

    ld h, c                                       ; $578E: $61
    ld [hl], h                                    ; $578F: $74
    ld l, b                                       ; $5790: $68
    ld [hl], e                                    ; $5791: $73
    rst $38                                       ; $5792: $FF

jr_028_5793:
    ld h, e                                       ; $5793: $63
    ld [hl], d                                    ; $5794: $72
    ld l, a                                       ; $5795: $6F
    ld [hl], e                                    ; $5796: $73
    ld [hl], e                                    ; $5797: $73
    jr nz, jr_028_57FB                            ; $5798: $20 $61

    ld h, a                                       ; $579A: $67
    ld h, c                                       ; $579B: $61
    ld l, c                                       ; $579C: $69
    ld l, [hl]                                    ; $579D: $6E
    cp $73                                        ; $579E: $FE $73
    ld l, a                                       ; $57A0: $6F
    ld l, l                                       ; $57A1: $6D
    ld h, l                                       ; $57A2: $65
    jr nz, @+$66                                  ; $57A3: $20 $64

    ld h, c                                       ; $57A5: $61
    ld a, c                                       ; $57A6: $79
    ld l, $FE                                     ; $57A7: $2E $FE
    db $FD                                        ; $57A9: $FD
    sbc d                                         ; $57AA: $9A
    ld e, b                                       ; $57AB: $58
    ld bc, $25AF                                  ; $57AC: $01 $AF $25

jr_028_57AF:
    and c                                         ; $57AF: $A1
    ld [$9B42], sp                                ; $57B0: $08 $42 $9B
    ld c, b                                       ; $57B3: $48
    ld b, [hl]                                    ; $57B4: $46
    sbc a                                         ; $57B5: $9F
    ld b, [hl]                                    ; $57B6: $46

jr_028_57B7:
    ld h, c                                       ; $57B7: $61
    ld [hl], d                                    ; $57B8: $72
    ld h, l                                       ; $57B9: $65
    ld [hl], a                                    ; $57BA: $77
    ld h, l                                       ; $57BB: $65
    ld l, h                                       ; $57BC: $6C
    ld l, h                                       ; $57BD: $6C
    inc l                                         ; $57BE: $2C
    jr nz, @+$56                                  ; $57BF: $20 $54

    ld l, a                                       ; $57C1: $6F
    ld l, [hl]                                    ; $57C2: $6E
    ld a, c                                       ; $57C3: $79
    ld l, $FE                                     ; $57C4: $2E $FE
    ld c, l                                       ; $57C6: $4D
    ld h, c                                       ; $57C7: $61
    ld a, c                                       ; $57C8: $79
    jr nz, @+$71                                  ; $57C9: $20 $6F

    ld [hl], l                                    ; $57CB: $75
    ld [hl], d                                    ; $57CC: $72
    jr nz, jr_028_583F                            ; $57CD: $20 $70

    ld h, c                                       ; $57CF: $61
    ld [hl], h                                    ; $57D0: $74
    ld l, b                                       ; $57D1: $68
    ld [hl], e                                    ; $57D2: $73
    rst $38                                       ; $57D3: $FF

jr_028_57D4:
    ld h, e                                       ; $57D4: $63
    ld [hl], d                                    ; $57D5: $72
    ld l, a                                       ; $57D6: $6F
    ld [hl], e                                    ; $57D7: $73
    ld [hl], e                                    ; $57D8: $73
    jr nz, jr_028_583C                            ; $57D9: $20 $61

    ld h, a                                       ; $57DB: $67
    ld h, c                                       ; $57DC: $61
    ld l, c                                       ; $57DD: $69
    ld l, [hl]                                    ; $57DE: $6E
    cp $73                                        ; $57DF: $FE $73
    ld l, a                                       ; $57E1: $6F
    ld l, l                                       ; $57E2: $6D
    ld h, l                                       ; $57E3: $65
    jr nz, jr_028_584A                            ; $57E4: $20 $64

    ld h, c                                       ; $57E6: $61
    ld a, c                                       ; $57E7: $79
    ld l, $FE                                     ; $57E8: $2E $FE
    db $FD                                        ; $57EA: $FD
    sbc d                                         ; $57EB: $9A
    ld e, b                                       ; $57EC: $58
    ld bc, $9B42                                  ; $57ED: $01 $42 $9B
    jr @+$69                                      ; $57F0: $18 $67

    sbc a                                         ; $57F2: $9F
    ld d, e                                       ; $57F3: $53
    ld l, a                                       ; $57F4: $6F
    ld [hl], d                                    ; $57F5: $72
    ld [hl], d                                    ; $57F6: $72
    ld a, c                                       ; $57F7: $79
    inc l                                         ; $57F8: $2C

jr_028_57F9:
    jr nz, @+$64                                  ; $57F9: $20 $62

jr_028_57FB:
    ld [hl], l                                    ; $57FB: $75
    ld [hl], h                                    ; $57FC: $74
    jr nz, @+$76                                  ; $57FD: $20 $74

    ld l, b                                       ; $57FF: $68
    ld h, l                                       ; $5800: $65
    rst $38                                       ; $5801: $FF
    ld c, c                                       ; $5802: $49
    ld l, [hl]                                    ; $5803: $6E
    ld l, [hl]                                    ; $5804: $6E
    jr nz, @+$6B                                  ; $5805: $20 $69

    ld [hl], e                                    ; $5807: $73
    jr nz, jr_028_586D                            ; $5808: $20 $63

    ld l, h                                       ; $580A: $6C
    ld l, a                                       ; $580B: $6F
    ld [hl], e                                    ; $580C: $73
    ld h, l                                       ; $580D: $65
    ld h, h                                       ; $580E: $64
    ld l, $FE                                     ; $580F: $2E $FE
    db $FD                                        ; $5811: $FD
    sbc d                                         ; $5812: $9A
    ld e, b                                       ; $5813: $58
    ld bc, $9342                                  ; $5814: $01 $42 $93
    ld h, l                                       ; $5817: $65
    add hl, sp                                    ; $5818: $39
    ld b, e                                       ; $5819: $43
    ld c, a                                       ; $581A: $4F
    ld h, h                                       ; $581B: $64
    ld d, c                                       ; $581C: $51
    ld b, e                                       ; $581D: $43
    ld l, c                                       ; $581E: $69
    ld [hl], l                                    ; $581F: $75
    ld b, e                                       ; $5820: $43
    ld h, [hl]                                    ; $5821: $66
    ret nz                                        ; $5822: $C0

    ld e, h                                       ; $5823: $5C
    ld hl, $0005                                  ; $5824: $21 $05 $00
    add c                                         ; $5827: $81
    ld e, l                                       ; $5828: $5D
    ld c, $11                                     ; $5829: $0E $11

jr_028_582B:
    ld h, d                                       ; $582B: $62
    pop de                                        ; $582C: $D1
    nop                                           ; $582D: $00
    jr nz, jr_028_582B                            ; $582E: $20 $FB

    ld d, b                                       ; $5830: $50
    ld [hl+], a                                   ; $5831: $22
    dec b                                         ; $5832: $05
    ld b, b                                       ; $5833: $40
    dec bc                                        ; $5834: $0B
    nop                                           ; $5835: $00
    ld a, [hl]                                    ; $5836: $7E
    cp e                                          ; $5837: $BB
    ret nc                                        ; $5838: $D0

    ld bc, $B702                                  ; $5839: $01 $02 $B7

jr_028_583C:
    ret nc                                        ; $583C: $D0

    add hl, bc                                    ; $583D: $09
    inc bc                                        ; $583E: $03

jr_028_583F:
    add d                                         ; $583F: $82
    rra                                           ; $5840: $1F
    db $10                                        ; $5841: $10
    sub h                                         ; $5842: $94
    ld b, d                                       ; $5843: $42
    dec b                                         ; $5844: $05
    nop                                           ; $5845: $00
    add c                                         ; $5846: $81
    ld e, l                                       ; $5847: $5D
    rrca                                          ; $5848: $0F
    rla                                           ; $5849: $17

jr_028_584A:
    db $DB                                        ; $584A: $DB
    pop de                                        ; $584B: $D1
    nop                                           ; $584C: $00
    jr nz, jr_028_584A                            ; $584D: $20 $FB

    ld d, b                                       ; $584F: $50
    ld [hl+], a                                   ; $5850: $22
    dec b                                         ; $5851: $05
    ld b, b                                       ; $5852: $40
    ld [bc], a                                    ; $5853: $02
    rrca                                          ; $5854: $0F
    ld c, $17                                     ; $5855: $0E $17
    dec b                                         ; $5857: $05

    db $AC, $B2, $A2, $01, $4B, $04, $28, $02, $00, $DF, $5B

    jr z, @+$1B                                   ; $5863: $28 $19

    nop                                           ; $5865: $00
    pop hl                                        ; $5866: $E1
    ld d, l                                       ; $5867: $55
    jr z, @+$1C                                   ; $5868: $28 $1A

    nop                                           ; $586A: $00
    ld d, $58                                     ; $586B: $16 $58

jr_028_586D:
    rst $38                                       ; $586D: $FF

    db $93, $65, $39, $43, $4F, $64, $51, $43, $69, $75, $43, $66, $C0, $5C, $21, $05
    db $00, $81, $5D, $0E, $11, $62, $D1, $00, $20, $FB, $50, $22, $05, $40, $0B, $00
    db $05, $02, $ED, $63, $07, $0D, $0B, $D1, $00, $0F, $5F, $59, $28, $10, $59, $0B
    db $02, $6B, $30, $0B, $B0, $56, $00, $80, $00, $00, $82, $1F, $1B, $94, $42, $93
    db $65, $39, $43, $4F, $64, $51, $43, $69, $75, $43, $66, $C0, $5C, $21, $6F, $0F
    db $FF, $7F, $05, $00, $6B, $4A, $11, $05, $75, $D0, $00, $28, $FE, $58, $22, $05
    db $40, $0B, $00, $05, $02, $ED, $63, $07, $0D, $0B, $D1, $00, $0F, $5F, $59, $28
    db $10, $59, $0B, $02, $6B, $30, $0B, $B0, $56, $00, $80, $00, $82, $1F, $1B, $94
    db $76, $20, $0F, $5C, $00, $02, $07, $00, $81, $5D, $09, $00, $20, $BF, $50, $42
    db $15, $20, $D9, $5A, $40, $20, $E3, $5A, $20, $20, $0B, $5B, $10, $00, $5C, $00
    db $02

    ld b, d                                       ; $590F: $42

    db $5B, $28, $18, $59, $45, $0F, $A5, $59, $43, $13, $04, $05, $04, $28, $43, $5A

    ld b, e                                       ; $5920: $43
    nop                                           ; $5921: $00
    and l                                         ; $5922: $A5
    and c                                         ; $5923: $A1
    ld [bc], a                                    ; $5924: $02
    jr z, jr_028_59A0                             ; $5925: $28 $79

    ld e, c                                       ; $5927: $59
    sbc e                                         ; $5928: $9B
    jr jr_028_5992                                ; $5929: $18 $67

    sbc a                                         ; $592B: $9F
    ld c, c                                       ; $592C: $49
    jr nz, jr_028_5997                            ; $592D: $20 $68

    ld h, l                                       ; $592F: $65
    ld h, c                                       ; $5930: $61
    ld [hl], d                                    ; $5931: $72
    jr nz, jr_028_5983                            ; $5932: $20 $4F

    ld [hl], d                                    ; $5934: $72
    ld [hl], a                                    ; $5935: $77
    ld l, c                                       ; $5936: $69
    ld l, [hl]                                    ; $5937: $6E
    rst $38                                       ; $5938: $FF
    ld l, b                                       ; $5939: $68
    ld h, c                                       ; $593A: $61
    ld [hl], e                                    ; $593B: $73
    jr nz, jr_028_59A6                            ; $593C: $20 $68

    ld l, c                                       ; $593E: $69
    ld [hl], e                                    ; $593F: $73
    cp $61                                        ; $5940: $FE $61
    ld [hl], b                                    ; $5942: $70
    ld [hl], b                                    ; $5943: $70
    ld h, l                                       ; $5944: $65
    ld [hl], h                                    ; $5945: $74
    ld l, c                                       ; $5946: $69
    ld [hl], h                                    ; $5947: $74
    ld h, l                                       ; $5948: $65
    jr nz, jr_028_59AD                            ; $5949: $20 $62

    ld h, c                                       ; $594B: $61
    ld h, e                                       ; $594C: $63
    ld l, e                                       ; $594D: $6B
    ld l, $FE                                     ; $594E: $2E $FE
    ld c, c                                       ; $5950: $49
    daa                                           ; $5951: $27
    ld l, h                                       ; $5952: $6C
    ld l, h                                       ; $5953: $6C

jr_028_5954:
    jr nz, jr_028_59BE                            ; $5954: $20 $68

    ld h, c                                       ; $5956: $61
    halt                                          ; $5957: $76
    ld h, l                                       ; $5958: $65
    jr nz, @+$76                                  ; $5959: $20 $74

    ld l, a                                       ; $595B: $6F
    rst $38                                       ; $595C: $FF
    ld h, e                                       ; $595D: $63
    ld l, a                                       ; $595E: $6F
    ld l, a                                       ; $595F: $6F
    ld l, e                                       ; $5960: $6B
    jr nz, jr_028_59D6                            ; $5961: $20 $73

    ld l, a                                       ; $5963: $6F
    ld l, l                                       ; $5964: $6D
    ld h, l                                       ; $5965: $65
    ld [hl], h                                    ; $5966: $74
    ld l, b                                       ; $5967: $68
    ld l, c                                       ; $5968: $69
    ld l, [hl]                                    ; $5969: $6E
    ld h, a                                       ; $596A: $67
    cp $73                                        ; $596B: $FE $73
    ld [hl], b                                    ; $596D: $70
    ld h, l                                       ; $596E: $65
    ld h, e                                       ; $596F: $63
    ld l, c                                       ; $5970: $69
    ld h, c                                       ; $5971: $61
    ld l, h                                       ; $5972: $6C
    ld hl, $FDFE                                  ; $5973: $21 $FE $FD
    ld b, [hl]                                    ; $5976: $46
    ld b, e                                       ; $5977: $43
    ld e, d                                       ; $5978: $5A
    ld b, e                                       ; $5979: $43
    ld bc, $A2AE                                  ; $597A: $01 $AE $A2
    jr z, jr_028_5954                             ; $597D: $28 $D5

    ld e, c                                       ; $597F: $59
    xor a                                         ; $5980: $AF
    xor b                                         ; $5981: $A8
    and c                                         ; $5982: $A1

jr_028_5983:
    inc b                                         ; $5983: $04
    sbc e                                         ; $5984: $9B
    jr @+$69                                      ; $5985: $18 $67

    sbc a                                         ; $5987: $9F
    ld c, a                                       ; $5988: $4F
    ld [hl], d                                    ; $5989: $72
    ld [hl], a                                    ; $598A: $77
    ld l, c                                       ; $598B: $69
    ld l, [hl]                                    ; $598C: $6E
    jr nz, jr_028_59FD                            ; $598D: $20 $6E

    ld h, l                                       ; $598F: $65
    ld h, l                                       ; $5990: $65
    ld h, h                                       ; $5991: $64

jr_028_5992:
    ld [hl], e                                    ; $5992: $73
    rst $38                                       ; $5993: $FF
    ld l, b                                       ; $5994: $68
    ld h, l                                       ; $5995: $65
    ld l, h                                       ; $5996: $6C

jr_028_5997:
    ld [hl], b                                    ; $5997: $70
    ld l, $2E                                     ; $5998: $2E $2E
    ld l, $FE                                     ; $599A: $2E $FE
    ld c, l                                       ; $599C: $4D
    ld h, c                                       ; $599D: $61
    ld a, c                                       ; $599E: $79
    ld h, d                                       ; $599F: $62

jr_028_59A0:
    ld h, l                                       ; $59A0: $65
    jr nz, jr_028_5A17                            ; $59A1: $20 $74

    ld l, b                                       ; $59A3: $68
    ld h, l                                       ; $59A4: $65
    rst $38                                       ; $59A5: $FF

jr_028_59A6:
    ld d, e                                       ; $59A6: $53
    ld h, l                                       ; $59A7: $65
    ld h, l                                       ; $59A8: $65
    ld [hl], d                                    ; $59A9: $72
    jr nz, jr_028_5A1B                            ; $59AA: $20 $6F

    ld l, [hl]                                    ; $59AC: $6E

jr_028_59AD:
    cp $74                                        ; $59AD: $FE $74
    ld l, b                                       ; $59AF: $68
    ld h, l                                       ; $59B0: $65
    jr nz, jr_028_5A1F                            ; $59B1: $20 $6C

    ld h, c                                       ; $59B3: $61
    ld l, e                                       ; $59B4: $6B
    ld h, l                                       ; $59B5: $65
    rst $38                                       ; $59B6: $FF
    ld l, e                                       ; $59B7: $6B
    ld l, [hl]                                    ; $59B8: $6E
    ld l, a                                       ; $59B9: $6F
    ld [hl], a                                    ; $59BA: $77
    ld [hl], e                                    ; $59BB: $73
    jr nz, jr_028_5A1F                            ; $59BC: $20 $61

jr_028_59BE:
    jr nz, jr_028_5A37                            ; $59BE: $20 $77

    ld h, c                                       ; $59C0: $61
    ld a, c                                       ; $59C1: $79
    cp $74                                        ; $59C2: $FE $74
    ld l, a                                       ; $59C4: $6F
    jr nz, jr_028_5A2A                            ; $59C5: $20 $63

    ld [hl], l                                    ; $59C7: $75
    ld [hl], d                                    ; $59C8: $72
    ld h, l                                       ; $59C9: $65
    jr nz, jr_028_5A34                            ; $59CA: $20 $68

    ld l, c                                       ; $59CC: $69
    ld l, l                                       ; $59CD: $6D
    ld hl, $FDFE                                  ; $59CE: $21 $FE $FD
    ld b, l                                       ; $59D1: $45
    jr z, jr_028_5A17                             ; $59D2: $28 $43

    ld e, d                                       ; $59D4: $5A
    sbc e                                         ; $59D5: $9B

jr_028_59D6:
    jr jr_028_5A3F                                ; $59D6: $18 $67

    sbc a                                         ; $59D8: $9F
    ld d, h                                       ; $59D9: $54
    ld l, a                                       ; $59DA: $6F
    ld l, [hl]                                    ; $59DB: $6E
    ld a, c                                       ; $59DC: $79
    ld hl, $59FE                                  ; $59DD: $21 $FE $59
    ld l, a                                       ; $59E0: $6F
    ld [hl], l                                    ; $59E1: $75
    daa                                           ; $59E2: $27
    ld [hl], d                                    ; $59E3: $72
    ld h, l                                       ; $59E4: $65
    jr nz, @+$76                                  ; $59E5: $20 $74

    ld l, b                                       ; $59E7: $68
    ld l, c                                       ; $59E8: $69
    ld l, [hl]                                    ; $59E9: $6E
    rst $38                                       ; $59EA: $FF
    ld h, c                                       ; $59EB: $61
    ld [hl], e                                    ; $59EC: $73
    jr nz, @+$63                                  ; $59ED: $20 $61

    jr nz, @+$74                                  ; $59EF: $20 $72

    ld h, c                                       ; $59F1: $61
    ld l, c                                       ; $59F2: $69
    ld l, h                                       ; $59F3: $6C
    ld hl, $57FE                                  ; $59F4: $21 $FE $57
    ld l, b                                       ; $59F7: $68
    ld a, c                                       ; $59F8: $79
    jr nz, @+$66                                  ; $59F9: $20 $64

    ld l, a                                       ; $59FB: $6F
    ld l, [hl]                                    ; $59FC: $6E

jr_028_59FD:
    daa                                           ; $59FD: $27
    ld [hl], h                                    ; $59FE: $74
    jr nz, @+$7B                                  ; $59FF: $20 $79

    ld l, a                                       ; $5A01: $6F
    ld [hl], l                                    ; $5A02: $75
    rst $38                                       ; $5A03: $FF
    ld h, l                                       ; $5A04: $65
    ld h, c                                       ; $5A05: $61
    ld [hl], h                                    ; $5A06: $74
    jr nz, @+$6F                                  ; $5A07: $20 $6D

    ld l, a                                       ; $5A09: $6F
    ld [hl], d                                    ; $5A0A: $72
    ld h, l                                       ; $5A0B: $65
    ccf                                           ; $5A0C: $3F
    cp $FD                                        ; $5A0D: $FE $FD
    sbc e                                         ; $5A0F: $9B
    ld a, b                                       ; $5A10: $78
    ld [hl], b                                    ; $5A11: $70
    sbc a                                         ; $5A12: $9F
    ld c, c                                       ; $5A13: $49
    ld h, [hl]                                    ; $5A14: $66
    jr nz, @+$67                                  ; $5A15: $20 $65

jr_028_5A17:
    halt                                          ; $5A17: $76
    ld h, l                                       ; $5A18: $65
    ld [hl], d                                    ; $5A19: $72
    ld a, c                                       ; $5A1A: $79

jr_028_5A1B:
    ld l, a                                       ; $5A1B: $6F
    ld l, [hl]                                    ; $5A1C: $6E
    ld h, l                                       ; $5A1D: $65
    rst $38                                       ; $5A1E: $FF

jr_028_5A1F:
    ld h, e                                       ; $5A1F: $63
    ld l, a                                       ; $5A20: $6F
    ld l, a                                       ; $5A21: $6F
    ld l, e                                       ; $5A22: $6B
    ld h, l                                       ; $5A23: $65
    ld h, h                                       ; $5A24: $64
    jr nz, @+$6E                                  ; $5A25: $20 $6C

    ld l, c                                       ; $5A27: $69
    ld l, e                                       ; $5A28: $6B
    ld h, l                                       ; $5A29: $65

jr_028_5A2A:
    cp $79                                        ; $5A2A: $FE $79
    ld l, a                                       ; $5A2C: $6F
    ld [hl], l                                    ; $5A2D: $75
    inc l                                         ; $5A2E: $2C
    jr nz, @+$6F                                  ; $5A2F: $20 $6D

    ld h, c                                       ; $5A31: $61
    ld a, c                                       ; $5A32: $79
    ld h, d                                       ; $5A33: $62

jr_028_5A34:
    ld h, l                                       ; $5A34: $65
    rst $38                                       ; $5A35: $FF
    ld c, c                                       ; $5A36: $49

jr_028_5A37:
    jr nz, @+$79                                  ; $5A37: $20 $77

    ld l, a                                       ; $5A39: $6F
    ld [hl], l                                    ; $5A3A: $75
    ld l, h                                       ; $5A3B: $6C
    ld h, h                                       ; $5A3C: $64
    ld l, $FE                                     ; $5A3D: $2E $FE

jr_028_5A3F:
    db $FD                                        ; $5A3F: $FD
    ld b, [hl]                                    ; $5A40: $46
    ld b, e                                       ; $5A41: $43
    ld e, d                                       ; $5A42: $5A

    db $9B, $18, $67, $9F, $57, $6F, $75, $6C, $64, $20, $79, $6F, $75, $20, $6C, $69
    db $6B, $65, $FF, $74, $6F, $20, $72, $65, $63, $6F, $72, $64, $20, $79, $6F, $75
    db $72, $FE, $6A, $6F, $75, $72, $6E, $65, $79, $20, $61, $6E, $64, $FF, $72, $65
    db $63, $6F, $76, $65, $72, $20, $6C, $6F, $73, $74, $FE, $65, $6E, $65, $72, $67
    db $79, $3F, $FE, $FD, $99, $9B, $78, $70, $9F, $20, $59, $65, $73, $FF, $20, $4E
    db $6F, $FD, $9C, $02, $28, $9D, $5A

    jr z, @-$3C                                   ; $5A9A: $28 $C2

    ld e, d                                       ; $5A9C: $5A

    db $96, $28, $44, $58, $99, $9B, $18, $67, $9F, $47, $6F, $6F, $64, $6E, $69, $67
    db $68, $74, $21, $FE, $FD, $9A, $6E, $0F, $FF, $7F, $76, $20, $0F, $92, $01, $40
    db $40, $45, $28, $AD, $58

    sbc c                                         ; $5AC2: $99
    sbc e                                         ; $5AC3: $9B
    jr @+$69                                      ; $5AC4: $18 $67

    sbc a                                         ; $5AC6: $9F
    ld c, b                                       ; $5AC7: $48
    ld h, c                                       ; $5AC8: $61
    halt                                          ; $5AC9: $76
    ld h, l                                       ; $5ACA: $65
    jr nz, @+$63                                  ; $5ACB: $20 $61

    jr nz, @+$70                                  ; $5ACD: $20 $6E

    ld l, c                                       ; $5ACF: $69
    ld h, e                                       ; $5AD0: $63
    ld h, l                                       ; $5AD1: $65
    rst $38                                       ; $5AD2: $FF
    ld h, h                                       ; $5AD3: $64
    ld h, c                                       ; $5AD4: $61
    ld a, c                                       ; $5AD5: $79
    ld hl, $FDFE                                  ; $5AD6: $21 $FE $FD
    sbc d                                         ; $5AD9: $9A
    ld e, b                                       ; $5ADA: $58
    ld bc, $9B42                                  ; $5ADB: $01 $42 $9B
    jr @+$69                                      ; $5ADE: $18 $67

    sbc a                                         ; $5AE0: $9F
    ld b, h                                       ; $5AE1: $44
    ld l, a                                       ; $5AE2: $6F
    ld l, [hl]                                    ; $5AE3: $6E
    daa                                           ; $5AE4: $27
    ld [hl], h                                    ; $5AE5: $74
    jr nz, @+$69                                  ; $5AE6: $20 $67

    ld l, a                                       ; $5AE8: $6F
    jr nz, @+$6B                                  ; $5AE9: $20 $69

    ld l, [hl]                                    ; $5AEB: $6E
    rst $38                                       ; $5AEC: $FF
    ld [hl], h                                    ; $5AED: $74
    ld l, b                                       ; $5AEE: $68
    ld h, l                                       ; $5AEF: $65
    ld [hl], d                                    ; $5AF0: $72
    ld h, l                                       ; $5AF1: $65
    ld hl, $FDFE                                  ; $5AF2: $21 $FE $FD
    sbc d                                         ; $5AF5: $9A
    ld e, h                                       ; $5AF6: $5C
    nop                                           ; $5AF7: $00
    ld [bc], a                                    ; $5AF8: $02
    ld b, d                                       ; $5AF9: $42

    db $43, $0F, $01, $24, $A2, $05, $03

    jr z, @+$45                                   ; $5B01: $28 $43

    ld e, d                                       ; $5B03: $5A

    db $9B, $78, $70, $9F, $41, $72, $65, $20, $79, $6F, $75, $20, $74, $68, $65, $FF
    db $69, $6E, $6E, $6B, $65, $65, $70, $65, $72, $3F, $FE, $FD, $9B, $18, $67, $9F
    db $54, $68, $61, $74, $27, $73, $20, $6D, $65, $2E, $FF, $50, $6F, $61, $64, $27
    db $73, $20, $74, $68, $65, $FE, $6E, $61, $6D, $65, $2E, $20, $59, $6F, $75, $20
    db $77, $61, $6E, $74, $FF, $74, $6F, $20, $73, $74, $61, $79, $20, $68, $65, $72
    db $65, $3F, $FE, $41, $6C, $6C, $20, $74, $72, $61, $76, $65, $6C, $65, $72, $73
    db $FF, $61, $72, $65, $20, $77, $65, $6C, $63, $6F, $6D, $65, $2E, $FE, $FD, $9B
    db $78, $70, $9F, $4E, $6F, $20, $74, $68, $61, $6E, $6B, $73, $2E, $FE, $FD, $9B
    db $18, $67, $9F, $57, $65, $6C, $6C, $2C, $20, $61, $74, $20, $6C, $65, $61, $73
    db $74, $FF, $68, $61, $76, $65, $20, $73, $6F, $6D, $65, $20, $6F, $66, $20, $6D
    db $79, $FE, $6A, $65, $6C, $6C, $79, $62, $65, $61, $6E, $73, $FF, $62, $65, $66
    db $6F, $72, $65, $20, $79, $6F, $75, $20, $67, $6F, $2E, $FE, $FD, $9A, $9F, $2D
    db $54, $6F, $6E, $79, $20, $67, $6F, $74, $FF, $6A, $65, $6C, $6C, $79, $62, $65
    db $61, $6E, $73, $21, $2D, $FE, $FD, $9A, $58, $01, $42, $43, $10, $01, $24, $A2
    db $05, $02, $28, $6E, $58, $93, $65, $39, $43, $4F, $64, $51, $43, $69, $75, $43
    db $66, $C0, $5C, $21, $05, $00, $81, $5D, $0E, $11, $62, $D1, $00, $20, $FB, $50
    db $22, $05, $40, $0B, $00, $05, $02, $ED, $63, $07, $0D, $0B, $D1, $00, $0F, $5F
    db $59, $28, $27, $5C, $0B, $02, $6B, $30, $0B, $B0, $56, $00, $80, $00, $82, $1F
    db $1B, $94, $42, $14, $0F, $5F, $59, $5B, $28, $FA, $5A, $40, $04, $AC, $24, $A2
    db $03, $45, $0F, $A5, $59

    ld b, d                                       ; $5C39: $42
    ld a, l                                       ; $5C3A: $7D
    cp a                                          ; $5C3B: $BF
    pop bc                                        ; $5C3C: $C1
    ld [bc], a                                    ; $5C3D: $02
    add hl, bc                                    ; $5C3E: $09
    ld [bc], a                                    ; $5C3F: $02
    rrca                                          ; $5C40: $0F
    ld l, c                                       ; $5C41: $69
    ld e, c                                       ; $5C42: $59
    ld e, e                                       ; $5C43: $5B
    jr z, @-$21                                   ; $5C44: $28 $DD

    ld e, d                                       ; $5C46: $5A
    ld e, h                                       ; $5C47: $5C
    nop                                           ; $5C48: $00
    ld [bc], a                                    ; $5C49: $02

jr_028_5C4A:
    ld a, l                                       ; $5C4A: $7D
    adc c                                         ; $5C4B: $89
    pop bc                                        ; $5C4C: $C1
    ld [bc], a                                    ; $5C4D: $02
    add hl, bc                                    ; $5C4E: $09
    ld [bc], a                                    ; $5C4F: $02
    rrca                                          ; $5C50: $0F
    ld e, a                                       ; $5C51: $5F
    ld e, c                                       ; $5C52: $59
    ld b, d                                       ; $5C53: $42

    db $02, $03, $0D, $09, $05, $45, $16, $F3, $6C

    ld [bc], a                                    ; $5C5D: $02
    nop                                           ; $5C5E: $00
    inc b                                         ; $5C5F: $04
    ld [bc], a                                    ; $5C60: $02
    dec de                                        ; $5C61: $1B
    ld b, l                                       ; $5C62: $45
    jr z, @-$40                                   ; $5C63: $28 $BE

    ld d, l                                       ; $5C65: $55

    db $43, $13, $04, $05, $19, $28, $6F, $5C

    ld b, d                                       ; $5C6E: $42

    db $5B, $28, $65, $5D, $42

    ld b, e                                       ; $5C74: $43
    db $10                                        ; $5C75: $10
    inc b                                         ; $5C76: $04
    dec b                                         ; $5C77: $05
    ld a, [de]                                    ; $5C78: $1A
    jr z, jr_028_5C4A                             ; $5C79: $28 $CF

    ld e, h                                       ; $5C7B: $5C
    ld b, e                                       ; $5C7C: $43
    db $10                                        ; $5C7D: $10
    ld bc, $A225                                  ; $5C7E: $01 $25 $A2
    dec b                                         ; $5C81: $05
    ld b, $28                                     ; $5C82: $06 $28
    rst $08                                       ; $5C84: $CF
    ld e, h                                       ; $5C85: $5C
    sbc e                                         ; $5C86: $9B
    adc c                                         ; $5C87: $89
    ld c, h                                       ; $5C88: $4C
    sbc a                                         ; $5C89: $9F
    ld d, d                                       ; $5C8A: $52
    ld b, c                                       ; $5C8B: $41
    ld d, d                                       ; $5C8C: $52
    ld b, c                                       ; $5C8D: $41
    ld d, d                                       ; $5C8E: $52
    ld b, c                                       ; $5C8F: $41
    ld d, d                                       ; $5C90: $52
    ld b, c                                       ; $5C91: $41
    ld d, d                                       ; $5C92: $52
    ld b, c                                       ; $5C93: $41
    ld b, c                                       ; $5C94: $41
    ld b, c                                       ; $5C95: $41
    ld hl, $2121                                  ; $5C96: $21 $21 $21
    cp $FD                                        ; $5C99: $FE $FD
    sbc e                                         ; $5C9B: $9B
    ld a, b                                       ; $5C9C: $78
    ld [hl], b                                    ; $5C9D: $70
    sbc a                                         ; $5C9E: $9F
    ld b, c                                       ; $5C9F: $41
    ld b, c                                       ; $5CA0: $41
    ld b, c                                       ; $5CA1: $41
    ld b, c                                       ; $5CA2: $41
    ld b, c                                       ; $5CA3: $41
    ld b, c                                       ; $5CA4: $41
    ld b, c                                       ; $5CA5: $41
    ld b, c                                       ; $5CA6: $41
    ld c, b                                       ; $5CA7: $48
    ld c, b                                       ; $5CA8: $48
    ld hl, $2121                                  ; $5CA9: $21 $21 $21
    cp $FD                                        ; $5CAC: $FE $FD
    sbc d                                         ; $5CAE: $9A
    sbc a                                         ; $5CAF: $9F
    dec l                                         ; $5CB0: $2D
    ld d, a                                       ; $5CB1: $57
    ld l, a                                       ; $5CB2: $6F
    ld [hl], d                                    ; $5CB3: $72
    halt                                          ; $5CB4: $76
    ld h, l                                       ; $5CB5: $65
    ld l, h                                       ; $5CB6: $6C
    ld l, c                                       ; $5CB7: $69
    ld l, [hl]                                    ; $5CB8: $6E
    ld h, l                                       ; $5CB9: $65
    rst $38                                       ; $5CBA: $FF
    jr nz, jr_028_5D23                            ; $5CBB: $20 $66

    ld l, a                                       ; $5CBD: $6F
    ld [hl], l                                    ; $5CBE: $75
    ld l, [hl]                                    ; $5CBF: $6E
    ld h, h                                       ; $5CC0: $64
    ld hl, $FE2D                                  ; $5CC1: $21 $2D $FE
    db $FD                                        ; $5CC4: $FD
    sbc d                                         ; $5CC5: $9A
    xor h                                         ; $5CC6: $AC
    dec h                                         ; $5CC7: $25
    and d                                         ; $5CC8: $A2
    nop                                           ; $5CC9: $00
    xor a                                         ; $5CCA: $AF
    daa                                           ; $5CCB: $27
    and c                                         ; $5CCC: $A1
    ld [$9F42], sp                                ; $5CCD: $08 $42 $9F
    ld b, l                                       ; $5CD0: $45
    ld l, l                                       ; $5CD1: $6D
    ld [hl], b                                    ; $5CD2: $70
    ld [hl], h                                    ; $5CD3: $74
    ld a, c                                       ; $5CD4: $79
    ld hl, $4E20                                  ; $5CD5: $21 $20 $4E
    ld l, a                                       ; $5CD8: $6F
    ld l, a                                       ; $5CD9: $6F
    ld l, a                                       ; $5CDA: $6F
    ld l, a                                       ; $5CDB: $6F
    ld hl, $FDFE                                  ; $5CDC: $21 $FE $FD
    sbc d                                         ; $5CDF: $9A
    ld b, d                                       ; $5CE0: $42
    sbc e                                         ; $5CE1: $9B
    ld e, c                                       ; $5CE2: $59
    ld d, h                                       ; $5CE3: $54
    sbc a                                         ; $5CE4: $9F
    ld c, l                                       ; $5CE5: $4D
    ld c, a                                       ; $5CE6: $4F
    ld c, a                                       ; $5CE7: $4F
    ld hl, $FDFE                                  ; $5CE8: $21 $FE $FD
    sbc d                                         ; $5CEB: $9A
    ld b, d                                       ; $5CEC: $42
    sbc a                                         ; $5CED: $9F
    ld d, e                                       ; $5CEE: $53
    ld [hl], l                                    ; $5CEF: $75
    ld [hl], b                                    ; $5CF0: $70
    ld h, l                                       ; $5CF1: $65
    ld [hl], d                                    ; $5CF2: $72
    ld l, [hl]                                    ; $5CF3: $6E
    ld h, c                                       ; $5CF4: $61
    ld [hl], h                                    ; $5CF5: $74
    ld [hl], l                                    ; $5CF6: $75
    ld [hl], d                                    ; $5CF7: $72
    ld h, c                                       ; $5CF8: $61
    ld l, h                                       ; $5CF9: $6C
    rst $38                                       ; $5CFA: $FF
    ld d, b                                       ; $5CFB: $50
    ld l, b                                       ; $5CFC: $68
    ld h, l                                       ; $5CFD: $65
    ld l, [hl]                                    ; $5CFE: $6E
    ld l, a                                       ; $5CFF: $6F
    ld l, l                                       ; $5D00: $6D
    ld h, l                                       ; $5D01: $65
    ld l, [hl]                                    ; $5D02: $6E
    ld h, c                                       ; $5D03: $61
    ld a, [hl-]                                   ; $5D04: $3A
    cp $41                                        ; $5D05: $FE $41
    jr nz, @+$6F                                  ; $5D07: $20 $6D

    ld a, c                                       ; $5D09: $79
    ld [hl], e                                    ; $5D0A: $73
    ld [hl], h                                    ; $5D0B: $74
    ld h, l                                       ; $5D0C: $65
    ld [hl], d                                    ; $5D0D: $72
    ld l, c                                       ; $5D0E: $69
    ld l, a                                       ; $5D0F: $6F

jr_028_5D10:
    ld [hl], l                                    ; $5D10: $75
    ld [hl], e                                    ; $5D11: $73
    rst $38                                       ; $5D12: $FF
    ld h, c                                       ; $5D13: $61
    ld l, [hl]                                    ; $5D14: $6E
    ld l, c                                       ; $5D15: $69
    ld l, l                                       ; $5D16: $6D
    ld h, c                                       ; $5D17: $61
    ld l, h                                       ; $5D18: $6C
    jr nz, @+$6B                                  ; $5D19: $20 $69

    ld [hl], e                                    ; $5D1B: $73
    cp $73                                        ; $5D1C: $FE $73
    ld l, b                                       ; $5D1E: $68
    ld l, a                                       ; $5D1F: $6F
    ld [hl], a                                    ; $5D20: $77
    ld l, c                                       ; $5D21: $69
    ld l, [hl]                                    ; $5D22: $6E

jr_028_5D23:
    ld h, a                                       ; $5D23: $67
    jr nz, @+$77                                  ; $5D24: $20 $75

    ld [hl], b                                    ; $5D26: $70
    rst $38                                       ; $5D27: $FF
    ld l, c                                       ; $5D28: $69
    ld l, [hl]                                    ; $5D29: $6E
    jr nz, @+$72                                  ; $5D2A: $20 $70

    ld h, c                                       ; $5D2C: $61
    ld l, c                                       ; $5D2D: $69
    ld l, [hl]                                    ; $5D2E: $6E
    ld [hl], h                                    ; $5D2F: $74
    ld l, c                                       ; $5D30: $69
    ld l, [hl]                                    ; $5D31: $6E
    ld h, a                                       ; $5D32: $67
    ld [hl], e                                    ; $5D33: $73
    cp $61                                        ; $5D34: $FE $61
    ld l, h                                       ; $5D36: $6C
    ld l, h                                       ; $5D37: $6C
    jr nz, @+$63                                  ; $5D38: $20 $61

    ld [hl], d                                    ; $5D3A: $72
    ld l, a                                       ; $5D3B: $6F
    ld [hl], l                                    ; $5D3C: $75
    ld l, [hl]                                    ; $5D3D: $6E
    ld h, h                                       ; $5D3E: $64
    rst $38                                       ; $5D3F: $FF
    ld [hl], h                                    ; $5D40: $74
    ld l, b                                       ; $5D41: $68
    ld h, l                                       ; $5D42: $65
    jr nz, @+$79                                  ; $5D43: $20 $77

    ld l, a                                       ; $5D45: $6F
    ld [hl], d                                    ; $5D46: $72
    ld l, h                                       ; $5D47: $6C
    ld h, h                                       ; $5D48: $64
    ld hl, $4920                                  ; $5D49: $21 $20 $49
    ld [hl], e                                    ; $5D4C: $73
    cp $69                                        ; $5D4D: $FE $69
    ld [hl], h                                    ; $5D4F: $74
    jr nz, jr_028_5DB3                            ; $5D50: $20 $61

    ld l, [hl]                                    ; $5D52: $6E
    jr nz, @+$51                                  ; $5D53: $20 $4F

    ld c, l                                       ; $5D55: $4D
    ld b, l                                       ; $5D56: $45
    ld c, [hl]                                    ; $5D57: $4E
    ccf                                           ; $5D58: $3F
    cp $FD                                        ; $5D59: $FE $FD
    sbc d                                         ; $5D5B: $9A
    ld b, d                                       ; $5D5C: $42

    db $A4, $45, $A3, $02

    ld [bc], a                                    ; $5D61: $02
    db $10                                        ; $5D62: $10
    dec l                                         ; $5D63: $2D
    ret nc                                        ; $5D64: $D0

    db $07, $00, $6B, $4A, $09, $00, $20, $BF, $50, $9B, $B8, $44, $9F, $57, $65, $6C
    db $63, $6F, $6D, $65, $21, $FE, $FD, $9A, $90

    jr z, jr_028_5D10                             ; $5D7E: $28 $90

    ld e, l                                       ; $5D80: $5D

    db $0D, $00, $04, $01, $0F, $00, $02, $23, $00, $0D, $14, $00, $0B, $05, $00, $9B
    db $B8, $44, $9F, $48, $61, $76, $65, $20, $61, $20, $67, $6F, $6F, $64, $FF, $64
    db $61, $79, $21, $FE, $FD, $9A, $07, $00, $81, $5D, $42

    sub e                                         ; $5DAC: $93
    ld h, l                                       ; $5DAD: $65
    ld h, [hl]                                    ; $5DAE: $66
    ld b, e                                       ; $5DAF: $43
    ld c, a                                       ; $5DB0: $4F
    ld h, h                                       ; $5DB1: $64
    sub d                                         ; $5DB2: $92

jr_028_5DB3:
    ld b, e                                       ; $5DB3: $43
    ld l, c                                       ; $5DB4: $69
    sbc e                                         ; $5DB5: $9B
    ld b, e                                       ; $5DB6: $43
    ld h, [hl]                                    ; $5DB7: $66
    ret nz                                        ; $5DB8: $C0

    ld e, h                                       ; $5DB9: $5C
    ld hl, $0005                                  ; $5DBA: $21 $05 $00
    add c                                         ; $5DBD: $81
    ld e, l                                       ; $5DBE: $5D
    dec b                                         ; $5DBF: $05
    add hl, bc                                    ; $5DC0: $09

jr_028_5DC1:
    ld l, b                                       ; $5DC1: $68

jr_028_5DC2:
    ret nc                                        ; $5DC2: $D0

    nop                                           ; $5DC3: $00
    jr nz, jr_028_5DC1                            ; $5DC4: $20 $FB

    ld d, b                                       ; $5DC6: $50
    ld [hl+], a                                   ; $5DC7: $22
    dec b                                         ; $5DC8: $05
    ld b, b                                       ; $5DC9: $40
    dec b                                         ; $5DCA: $05
    ld [bc], a                                    ; $5DCB: $02
    db $ED                                        ; $5DCC: $ED
    ld h, e                                       ; $5DCD: $63
    inc bc                                        ; $5DCE: $03
    dec b                                         ; $5DCF: $05
    ld a, [hl-]                                   ; $5DD0: $3A
    ret nc                                        ; $5DD1: $D0

    nop                                           ; $5DD2: $00
    db $10                                        ; $5DD3: $10
    add b                                         ; $5DD4: $80
    ld h, e                                       ; $5DD5: $63
    jr z, jr_028_5DC2                             ; $5DD6: $28 $EA

    ld e, l                                       ; $5DD8: $5D
    ld l, e                                       ; $5DD9: $6B
    jr nc, jr_028_5DE7                            ; $5DDA: $30 $0B

    jr nz, jr_028_5E1E                            ; $5DDC: $20 $40

    nop                                           ; $5DDE: $00

jr_028_5DDF:
    add b                                         ; $5DDF: $80
    nop                                           ; $5DE0: $00
    dec bc                                        ; $5DE1: $0B
    nop                                           ; $5DE2: $00
    dec bc                                        ; $5DE3: $0B
    ld [bc], a                                    ; $5DE4: $02
    add d                                         ; $5DE5: $82
    sub h                                         ; $5DE6: $94

jr_028_5DE7:
    rra                                           ; $5DE7: $1F
    ld a, [de]                                    ; $5DE8: $1A
    ld b, d                                       ; $5DE9: $42
    ld e, e                                       ; $5DEA: $5B
    jr z, jr_028_5DDF                             ; $5DEB: $28 $F2

    ld e, l                                       ; $5DED: $5D
    ld b, l                                       ; $5DEE: $45
    db $10                                        ; $5DEF: $10
    add $63                                       ; $5DF0: $C6 $63
    sbc e                                         ; $5DF2: $9B
    cp b                                          ; $5DF3: $B8
    ld b, h                                       ; $5DF4: $44
    sbc a                                         ; $5DF5: $9F
    ld c, c                                       ; $5DF6: $49
    daa                                           ; $5DF7: $27
    ld l, l                                       ; $5DF8: $6D
    jr nz, jr_028_5E69                            ; $5DF9: $20 $6E

    ld l, a                                       ; $5DFB: $6F
    ld [hl], h                                    ; $5DFC: $74
    jr nz, jr_028_5E72                            ; $5DFD: $20 $73

    ld h, l                                       ; $5DFF: $65
    ld l, h                                       ; $5E00: $6C
    ld l, h                                       ; $5E01: $6C
    ld l, c                                       ; $5E02: $69
    ld l, [hl]                                    ; $5E03: $6E
    ld h, a                                       ; $5E04: $67
    rst $38                                       ; $5E05: $FF
    ld h, c                                       ; $5E06: $61
    ld l, [hl]                                    ; $5E07: $6E
    ld a, c                                       ; $5E08: $79
    ld [hl], h                                    ; $5E09: $74
    ld l, b                                       ; $5E0A: $68
    ld l, c                                       ; $5E0B: $69
    ld l, [hl]                                    ; $5E0C: $6E
    ld h, a                                       ; $5E0D: $67
    jr nz, jr_028_5E84                            ; $5E0E: $20 $74

    ld l, a                                       ; $5E10: $6F
    ld h, h                                       ; $5E11: $64
    ld h, c                                       ; $5E12: $61
    ld a, c                                       ; $5E13: $79
    ld l, $FE                                     ; $5E14: $2E $FE
    ld b, d                                       ; $5E16: $42
    ld a, c                                       ; $5E17: $79
    ld h, l                                       ; $5E18: $65
    ld l, $FE                                     ; $5E19: $2E $FE
    db $FD                                        ; $5E1B: $FD
    sbc e                                         ; $5E1C: $9B
    ld a, b                                       ; $5E1D: $78

jr_028_5E1E:
    ld [hl], b                                    ; $5E1E: $70
    sbc a                                         ; $5E1F: $9F
    ld b, c                                       ; $5E20: $41
    ld [hl], d                                    ; $5E21: $72
    ld h, l                                       ; $5E22: $65
    jr nz, jr_028_5E9E                            ; $5E23: $20 $79

    ld l, a                                       ; $5E25: $6F
    ld [hl], l                                    ; $5E26: $75
    jr nz, jr_028_5E9C                            ; $5E27: $20 $73

    ld [hl], l                                    ; $5E29: $75
    ld [hl], d                                    ; $5E2A: $72
    ld h, l                                       ; $5E2B: $65
    ccf                                           ; $5E2C: $3F
    cp $49                                        ; $5E2D: $FE $49
    jr nz, jr_028_5E94                            ; $5E2F: $20 $63

    ld l, a                                       ; $5E31: $6F
    ld [hl], l                                    ; $5E32: $75
    ld l, h                                       ; $5E33: $6C
    ld h, h                                       ; $5E34: $64
    jr nz, @+$74                                  ; $5E35: $20 $72

    ld h, l                                       ; $5E37: $65
    ld h, c                                       ; $5E38: $61
    ld l, h                                       ; $5E39: $6C
    ld l, h                                       ; $5E3A: $6C
    ld a, c                                       ; $5E3B: $79
    rst $38                                       ; $5E3C: $FF
    ld [hl], l                                    ; $5E3D: $75
    ld [hl], e                                    ; $5E3E: $73
    ld h, l                                       ; $5E3F: $65
    jr nz, @+$75                                  ; $5E40: $20 $73

    ld l, a                                       ; $5E42: $6F
    ld l, l                                       ; $5E43: $6D
    ld h, l                                       ; $5E44: $65
    dec l                                         ; $5E45: $2D
    cp $FD                                        ; $5E46: $FE $FD
    sbc e                                         ; $5E48: $9B
    cp b                                          ; $5E49: $B8
    ld b, h                                       ; $5E4A: $44
    sbc a                                         ; $5E4B: $9F
    ld b, d                                       ; $5E4C: $42
    ld e, c                                       ; $5E4D: $59
    ld e, c                                       ; $5E4E: $59
    ld e, c                                       ; $5E4F: $59
    ld e, c                                       ; $5E50: $59
    ld b, l                                       ; $5E51: $45
    ld hl, $2121                                  ; $5E52: $21 $21 $21
    ld hl, $2121                                  ; $5E55: $21 $21 $21
    cp $FD                                        ; $5E58: $FE $FD
    sbc e                                         ; $5E5A: $9B
    ld a, b                                       ; $5E5B: $78
    ld [hl], b                                    ; $5E5C: $70
    sbc a                                         ; $5E5D: $9F
    ld c, a                                       ; $5E5E: $4F
    ld l, e                                       ; $5E5F: $6B
    ld h, c                                       ; $5E60: $61
    ld a, c                                       ; $5E61: $79
    inc l                                         ; $5E62: $2C
    jr nz, @+$4B                                  ; $5E63: $20 $49

    jr nz, @+$69                                  ; $5E65: $20 $67

    ld h, l                                       ; $5E67: $65
    ld [hl], h                                    ; $5E68: $74

jr_028_5E69:
    jr nz, @+$76                                  ; $5E69: $20 $74

    ld l, b                                       ; $5E6B: $68
    ld h, l                                       ; $5E6C: $65
    rst $38                                       ; $5E6D: $FF
    ld [hl], b                                    ; $5E6E: $70
    ld l, a                                       ; $5E6F: $6F
    ld l, c                                       ; $5E70: $69
    ld l, [hl]                                    ; $5E71: $6E

jr_028_5E72:
    ld [hl], h                                    ; $5E72: $74
    inc l                                         ; $5E73: $2C
    jr nz, @+$6C                                  ; $5E74: $20 $6A

    ld h, l                                       ; $5E76: $65
    ld h, l                                       ; $5E77: $65
    ld a, d                                       ; $5E78: $7A
    ld l, $2E                                     ; $5E79: $2E $2E
    ld l, $FE                                     ; $5E7B: $2E $FE
    db $FD                                        ; $5E7D: $FD
    sbc d                                         ; $5E7E: $9A
    ld e, b                                       ; $5E7F: $58
    ld bc, $9342                                  ; $5E80: $01 $42 $93
    ld h, l                                       ; $5E83: $65

jr_028_5E84:
    ld h, [hl]                                    ; $5E84: $66
    ld b, e                                       ; $5E85: $43
    ld c, a                                       ; $5E86: $4F
    ld h, h                                       ; $5E87: $64
    sub d                                         ; $5E88: $92
    ld b, e                                       ; $5E89: $43
    ld l, c                                       ; $5E8A: $69
    sbc e                                         ; $5E8B: $9B
    ld b, e                                       ; $5E8C: $43
    ld h, [hl]                                    ; $5E8D: $66
    ret nz                                        ; $5E8E: $C0

    ld e, h                                       ; $5E8F: $5C
    ld hl, $0005                                  ; $5E90: $21 $05 $00
    add c                                         ; $5E93: $81

jr_028_5E94:
    ld e, l                                       ; $5E94: $5D
    dec b                                         ; $5E95: $05
    add hl, bc                                    ; $5E96: $09

jr_028_5E97:
    ld l, b                                       ; $5E97: $68
    ret nc                                        ; $5E98: $D0

    nop                                           ; $5E99: $00
    jr nz, jr_028_5E97                            ; $5E9A: $20 $FB

jr_028_5E9C:
    ld d, b                                       ; $5E9C: $50
    ld [hl+], a                                   ; $5E9D: $22

jr_028_5E9E:
    dec b                                         ; $5E9E: $05
    ld b, b                                       ; $5E9F: $40
    dec bc                                        ; $5EA0: $0B
    nop                                           ; $5EA1: $00
    add d                                         ; $5EA2: $82
    sub h                                         ; $5EA3: $94
    rra                                           ; $5EA4: $1F
    db $10                                        ; $5EA5: $10
    ld b, d                                       ; $5EA6: $42

    db $4B, $04, $28, $19

    nop                                           ; $5EAB: $00
    xor h                                         ; $5EAC: $AC
    ld e, l                                       ; $5EAD: $5D

    db $28, $1A

    nop                                           ; $5EB0: $00
    add d                                         ; $5EB1: $82
    ld e, [hl]                                    ; $5EB2: $5E

    db $FF, $93, $65, $66, $43, $4F, $64, $92, $43, $69, $9B, $43, $66, $C0, $5C, $21
    db $05, $00, $81, $5D, $05, $09, $68, $D0, $00, $20, $FB, $50, $22, $05, $40, $05
    db $02, $ED, $63, $01, $05, $38, $D0, $00, $10, $94, $63, $28, $F3, $5E, $6B, $30
    db $0B, $20, $40, $00, $80, $00, $0B, $00, $0B, $02, $00, $82, $94, $1F, $16, $42

    inc d                                         ; $5EF3: $14
    db $10                                        ; $5EF4: $10
    add b                                         ; $5EF5: $80
    ld h, e                                       ; $5EF6: $63
    ld e, e                                       ; $5EF7: $5B

jr_028_5EF8:
    jr z, jr_028_5EF8                             ; $5EF8: $28 $FE

    ld e, [hl]                                    ; $5EFA: $5E
    ld h, d                                       ; $5EFB: $62
    ld bc, $9B12                                  ; $5EFC: $01 $12 $9B
    cp b                                          ; $5EFF: $B8
    ld b, h                                       ; $5F00: $44
    sbc a                                         ; $5F01: $9F
    ld d, h                                       ; $5F02: $54
    ld l, b                                       ; $5F03: $68
    ld l, c                                       ; $5F04: $69
    ld [hl], e                                    ; $5F05: $73
    jr nz, jr_028_5F71                            ; $5F06: $20 $69

    ld [hl], e                                    ; $5F08: $73
    jr nz, jr_028_5F6C                            ; $5F09: $20 $61

    ld l, [hl]                                    ; $5F0B: $6E
    rst $38                                       ; $5F0C: $FF
    ld h, l                                       ; $5F0D: $65
    ld l, l                                       ; $5F0E: $6D
    ld [hl], b                                    ; $5F0F: $70
    ld l, h                                       ; $5F10: $6C
    ld l, a                                       ; $5F11: $6F
    ld a, c                                       ; $5F12: $79
    ld h, l                                       ; $5F13: $65
    ld h, l                                       ; $5F14: $65
    cp $6F                                        ; $5F15: $FE $6F
    ld l, [hl]                                    ; $5F17: $6E
    ld l, h                                       ; $5F18: $6C
    ld a, c                                       ; $5F19: $79
    jr nz, jr_028_5F7D                            ; $5F1A: $20 $61

    ld [hl], d                                    ; $5F1C: $72
    ld h, l                                       ; $5F1D: $65
    ld h, c                                       ; $5F1E: $61
    ld hl, $FDFE                                  ; $5F1F: $21 $FE $FD
    sbc d                                         ; $5F22: $9A
    ld e, b                                       ; $5F23: $58
    ld bc, $0242                                  ; $5F24: $01 $42 $02
    inc b                                         ; $5F27: $04
    inc d                                         ; $5F28: $14
    rrca                                          ; $5F29: $0F
    rlca                                          ; $5F2A: $07
    ld b, l                                       ; $5F2B: $45
    inc de                                        ; $5F2C: $13
    push de                                       ; $5F2D: $D5
    ld d, e                                       ; $5F2E: $53
    and h                                         ; $5F2F: $A4
    cpl                                           ; $5F30: $2F
    and e                                         ; $5F31: $A3
    jr nz, jr_028_5F34                            ; $5F32: $20 $00

jr_028_5F34:
    jr z, jr_028_5F9E                             ; $5F34: $28 $68

    ret nc                                        ; $5F36: $D0

    sub e                                         ; $5F37: $93
    ld h, l                                       ; $5F38: $65
    ld a, [de]                                    ; $5F39: $1A
    ld b, h                                       ; $5F3A: $44
    ld c, a                                       ; $5F3B: $4F
    ld h, h                                       ; $5F3C: $64
    add $44                                       ; $5F3D: $C6 $44
    ld l, c                                       ; $5F3F: $69
    bit 0, h                                      ; $5F40: $CB $44
    ld h, [hl]                                    ; $5F42: $66
    ret nz                                        ; $5F43: $C0

    ld e, h                                       ; $5F44: $5C
    ld hl, $0005                                  ; $5F45: $21 $05 $00
    add c                                         ; $5F48: $81
    ld e, l                                       ; $5F49: $5D
    dec b                                         ; $5F4A: $05
    dec bc                                        ; $5F4B: $0B

jr_028_5F4C:
    or l                                          ; $5F4C: $B5
    ret nc                                        ; $5F4D: $D0

    nop                                           ; $5F4E: $00
    jr nz, jr_028_5F4C                            ; $5F4F: $20 $FB

    ld d, b                                       ; $5F51: $50
    ld [hl+], a                                   ; $5F52: $22
    dec b                                         ; $5F53: $05
    ld b, b                                       ; $5F54: $40
    dec bc                                        ; $5F55: $0B
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    add d                                         ; $5F58: $82
    rra                                           ; $5F59: $1F
    add hl, de                                    ; $5F5A: $19
    sub h                                         ; $5F5B: $94
    ld b, d                                       ; $5F5C: $42
    ld bc, $030F                                  ; $5F5D: $01 $0F $03
    ld b, l                                       ; $5F60: $45
    ld d, $71                                     ; $5F61: $16 $71
    ld a, h                                       ; $5F63: $7C
    ld e, e                                       ; $5F64: $5B
    jr z, jr_028_5FB7                             ; $5F65: $28 $50

    ld h, b                                       ; $5F67: $60
    ld b, d                                       ; $5F68: $42
    ld e, e                                       ; $5F69: $5B
    jr z, jr_028_5FBB                             ; $5F6A: $28 $4F

jr_028_5F6C:
    ld h, c                                       ; $5F6C: $61
    ld b, d                                       ; $5F6D: $42
    ld e, e                                       ; $5F6E: $5B
    jr z, jr_028_5FEE                             ; $5F6F: $28 $7D

jr_028_5F71:
    ld h, d                                       ; $5F71: $62
    ld b, d                                       ; $5F72: $42
    ld e, e                                       ; $5F73: $5B
    jr z, jr_028_5F34                             ; $5F74: $28 $BE

    ld h, b                                       ; $5F76: $60
    ld b, d                                       ; $5F77: $42
    ld e, e                                       ; $5F78: $5B
    jr z, jr_028_5F92                             ; $5F79: $28 $17

    ld h, e                                       ; $5F7B: $63
    ld b, d                                       ; $5F7C: $42

jr_028_5F7D:
    ld e, e                                       ; $5F7D: $5B
    jr z, @-$18                                   ; $5F7E: $28 $E6

    ld h, c                                       ; $5F80: $61
    ld b, d                                       ; $5F81: $42
    sbc e                                         ; $5F82: $9B
    ld e, c                                       ; $5F83: $59
    ld d, h                                       ; $5F84: $54
    sbc a                                         ; $5F85: $9F

jr_028_5F86:
    ld b, d                                       ; $5F86: $42
    ld c, h                                       ; $5F87: $4C
    ld b, l                                       ; $5F88: $45
    ld b, l                                       ; $5F89: $45
    ld b, l                                       ; $5F8A: $45
    ld b, c                                       ; $5F8B: $41
    ld d, d                                       ; $5F8C: $52
    ld b, a                                       ; $5F8D: $47
    ld c, b                                       ; $5F8E: $48
    ld hl, $FDFE                                  ; $5F8F: $21 $FE $FD

jr_028_5F92:
    sbc d                                         ; $5F92: $9A
    ld b, d                                       ; $5F93: $42
    sub e                                         ; $5F94: $93
    ld h, l                                       ; $5F95: $65
    add hl, hl                                    ; $5F96: $29
    ld b, h                                       ; $5F97: $44
    ld c, a                                       ; $5F98: $4F
    ld h, h                                       ; $5F99: $64
    ret nc                                        ; $5F9A: $D0

    ld b, h                                       ; $5F9B: $44
    ld l, c                                       ; $5F9C: $69
    push de                                       ; $5F9D: $D5

jr_028_5F9E:
    ld b, h                                       ; $5F9E: $44
    ld h, [hl]                                    ; $5F9F: $66
    ret nz                                        ; $5FA0: $C0

    ld e, h                                       ; $5FA1: $5C
    ld hl, $0005                                  ; $5FA2: $21 $05 $00
    add c                                         ; $5FA5: $81
    ld e, l                                       ; $5FA6: $5D
    dec b                                         ; $5FA7: $05
    dec b                                         ; $5FA8: $05

jr_028_5FA9:
    ld e, d                                       ; $5FA9: $5A
    ret nc                                        ; $5FAA: $D0

    nop                                           ; $5FAB: $00
    jr nz, jr_028_5FA9                            ; $5FAC: $20 $FB

    ld d, b                                       ; $5FAE: $50
    ld [hl+], a                                   ; $5FAF: $22
    dec b                                         ; $5FB0: $05
    ld b, b                                       ; $5FB1: $40
    dec b                                         ; $5FB2: $05
    ld [bc], a                                    ; $5FB3: $02
    ld l, e                                       ; $5FB4: $6B
    ld c, d                                       ; $5FB5: $4A
    ld [bc], a                                    ; $5FB6: $02

jr_028_5FB7:
    inc bc                                        ; $5FB7: $03
    dec [hl]                                      ; $5FB8: $35
    ret nc                                        ; $5FB9: $D0

    nop                                           ; $5FBA: $00

jr_028_5FBB:
    jr nz, jr_028_5F86                            ; $5FBB: $20 $C9

    ld h, [hl]                                    ; $5FBD: $66
    ld [hl+], a                                   ; $5FBE: $22

jr_028_5FBF:
    inc b                                         ; $5FBF: $04
    ld b, b                                       ; $5FC0: $40
    dec b                                         ; $5FC1: $05
    inc bc                                        ; $5FC2: $03
    ld l, e                                       ; $5FC3: $6B
    ld c, d                                       ; $5FC4: $4A
    ld b, $06                                     ; $5FC5: $06 $06
    ld l, h                                       ; $5FC7: $6C
    ret nc                                        ; $5FC8: $D0

    dec de                                        ; $5FC9: $1B
    ld de, $7A41                                  ; $5FCA: $11 $41 $7A
    ld [hl+], a                                   ; $5FCD: $22
    dec b                                         ; $5FCE: $05
    ld b, b                                       ; $5FCF: $40
    dec b                                         ; $5FD0: $05
    inc b                                         ; $5FD1: $04
    ld l, e                                       ; $5FD2: $6B
    ld c, d                                       ; $5FD3: $4A
    ld [$6E06], sp                                ; $5FD4: $08 $06 $6E
    ret nc                                        ; $5FD7: $D0

    dec sp                                        ; $5FD8: $3B
    ld de, $7A37                                  ; $5FD9: $11 $37 $7A
    ld [hl+], a                                   ; $5FDC: $22
    dec b                                         ; $5FDD: $05
    ld b, b                                       ; $5FDE: $40
    dec b                                         ; $5FDF: $05
    dec b                                         ; $5FE0: $05
    ld l, e                                       ; $5FE1: $6B
    ld c, d                                       ; $5FE2: $4A
    ld a, [bc]                                    ; $5FE3: $0A
    dec b                                         ; $5FE4: $05
    ld e, a                                       ; $5FE5: $5F
    ret nc                                        ; $5FE6: $D0

    dec h                                         ; $5FE7: $25
    ld de, $796E                                  ; $5FE8: $11 $6E $79
    ld [hl+], a                                   ; $5FEB: $22
    dec b                                         ; $5FEC: $05
    ld b, b                                       ; $5FED: $40

jr_028_5FEE:
    dec b                                         ; $5FEE: $05
    ld b, $6B                                     ; $5FEF: $06 $6B
    ld c, d                                       ; $5FF1: $4A
    ld [$B20A], sp                                ; $5FF2: $08 $0A $B2
    ret nc                                        ; $5FF5: $D0

    ld b, d                                       ; $5FF6: $42
    ld de, $7A64                                  ; $5FF7: $11 $64 $7A
    ld [hl+], a                                   ; $5FFA: $22
    dec b                                         ; $5FFB: $05
    ld b, b                                       ; $5FFC: $40
    dec b                                         ; $5FFD: $05
    rlca                                          ; $5FFE: $07
    ld l, e                                       ; $5FFF: $6B
    ld c, d                                       ; $6000: $4A
    ld a, [bc]                                    ; $6001: $0A
    ld a, [bc]                                    ; $6002: $0A
    or h                                          ; $6003: $B4
    ret nc                                        ; $6004: $D0

    scf                                           ; $6005: $37
    ld de, $7A5A                                  ; $6006: $11 $5A $7A
    ld [hl+], a                                   ; $6009: $22
    dec b                                         ; $600A: $05
    ld b, b                                       ; $600B: $40
    ld l, e                                       ; $600C: $6B
    dec de                                        ; $600D: $1B
    inc h                                         ; $600E: $24
    ld b, b                                       ; $600F: $40
    ld b, e                                       ; $6010: $43
    nop                                           ; $6011: $00
    add b                                         ; $6012: $80
    nop                                           ; $6013: $00
    ld l, e                                       ; $6014: $6B
    ld a, [bc]                                    ; $6015: $0A
    daa                                           ; $6016: $27
    ld h, b                                       ; $6017: $60
    ld d, a                                       ; $6018: $57
    or b                                          ; $6019: $B0
    add c                                         ; $601A: $81
    nop                                           ; $601B: $00
    ld l, e                                       ; $601C: $6B
    ld [de], a                                    ; $601D: $12
    inc h                                         ; $601E: $24
    ret nz                                        ; $601F: $C0

    ld h, h                                       ; $6020: $64
    ld d, b                                       ; $6021: $50
    add d                                         ; $6022: $82
    nop                                           ; $6023: $00
    ld l, e                                       ; $6024: $6B
    inc b                                         ; $6025: $04
    daa                                           ; $6026: $27
    nop                                           ; $6027: $00
    ld e, b                                       ; $6028: $58
    ld [hl], b                                    ; $6029: $70
    add e                                         ; $602A: $83
    nop                                           ; $602B: $00
    ld l, e                                       ; $602C: $6B
    rlca                                          ; $602D: $07
    daa                                           ; $602E: $27
    ld [hl], b                                    ; $602F: $70
    ld e, b                                       ; $6030: $58
    or b                                          ; $6031: $B0
    add e                                         ; $6032: $83
    nop                                           ; $6033: $00
    ld l, e                                       ; $6034: $6B
    inc bc                                        ; $6035: $03
    daa                                           ; $6036: $27
    ld b, b                                       ; $6037: $40
    ld e, b                                       ; $6038: $58
    jr nz, jr_028_5FBF                            ; $6039: $20 $84

    nop                                           ; $603B: $00
    dec bc                                        ; $603C: $0B
    nop                                           ; $603D: $00
    dec bc                                        ; $603E: $0B
    ld [bc], a                                    ; $603F: $02
    dec bc                                        ; $6040: $0B
    inc bc                                        ; $6041: $03
    dec bc                                        ; $6042: $0B
    inc b                                         ; $6043: $04
    dec bc                                        ; $6044: $0B
    dec b                                         ; $6045: $05
    dec bc                                        ; $6046: $0B
    ld b, $0B                                     ; $6047: $06 $0B
    rlca                                          ; $6049: $07
    nop                                           ; $604A: $00
    add d                                         ; $604B: $82
    rra                                           ; $604C: $1F
    dec h                                         ; $604D: $25
    sub h                                         ; $604E: $94
    ld b, d                                       ; $604F: $42
    sbc e                                         ; $6050: $9B
    add hl, sp                                    ; $6051: $39
    ld d, c                                       ; $6052: $51
    sbc a                                         ; $6053: $9F
    ld e, c                                       ; $6054: $59
    ld l, a                                       ; $6055: $6F
    ld [hl], l                                    ; $6056: $75
    jr nz, jr_028_60BC                            ; $6057: $20 $63

    ld h, c                                       ; $6059: $61
    ld l, [hl]                                    ; $605A: $6E
    jr nz, jr_028_60CC                            ; $605B: $20 $6F

    ld l, [hl]                                    ; $605D: $6E
    ld l, h                                       ; $605E: $6C
    ld a, c                                       ; $605F: $79
    rst $38                                       ; $6060: $FF
    ld h, d                                       ; $6061: $62
    ld [hl], l                                    ; $6062: $75
    ld a, c                                       ; $6063: $79
    jr nz, @+$76                                  ; $6064: $20 $74

    ld l, b                                       ; $6066: $68
    ld h, l                                       ; $6067: $65
    ld [hl], e                                    ; $6068: $73
    ld h, l                                       ; $6069: $65
    cp $72                                        ; $606A: $FE $72
    ld h, c                                       ; $606C: $61
    ld [hl], d                                    ; $606D: $72
    ld h, l                                       ; $606E: $65
    jr nz, @+$6B                                  ; $606F: $20 $69

    ld [hl], h                                    ; $6071: $74
    ld h, l                                       ; $6072: $65
    ld l, l                                       ; $6073: $6D
    ld [hl], e                                    ; $6074: $73
    ld [hl], e                                    ; $6075: $73
    ld [hl], e                                    ; $6076: $73
    rst $38                                       ; $6077: $FF
    ld [hl], a                                    ; $6078: $77
    ld l, c                                       ; $6079: $69
    ld [hl], h                                    ; $607A: $74
    ld l, b                                       ; $607B: $68
    jr nz, jr_028_60F7                            ; $607C: $20 $79

    ld l, a                                       ; $607E: $6F
    ld [hl], l                                    ; $607F: $75
    ld [hl], d                                    ; $6080: $72
    cp $74                                        ; $6081: $FE $74
    ld l, c                                       ; $6083: $69
    ld h, e                                       ; $6084: $63
    ld l, e                                       ; $6085: $6B
    ld h, l                                       ; $6086: $65
    ld [hl], h                                    ; $6087: $74
    ld [hl], e                                    ; $6088: $73
    ld [hl], e                                    ; $6089: $73
    ld [hl], e                                    ; $608A: $73
    ld l, $FE                                     ; $608B: $2E $FE
    ld e, c                                       ; $608D: $59
    ld h, l                                       ; $608E: $65
    ld [hl], e                                    ; $608F: $73
    ld [hl], e                                    ; $6090: $73
    ld l, $2E                                     ; $6091: $2E $2E
    ld l, $FE                                     ; $6093: $2E $FE
    ld d, e                                       ; $6095: $53
    ld [hl], e                                    ; $6096: $73
    ld [hl], e                                    ; $6097: $73
    ld [hl], a                                    ; $6098: $77
    ld h, l                                       ; $6099: $65
    ld h, l                                       ; $609A: $65
    ld [hl], h                                    ; $609B: $74
    ld l, $2E                                     ; $609C: $2E $2E
    ld l, $FE                                     ; $609E: $2E $FE
    ld h, h                                       ; $60A0: $64
    ld h, l                                       ; $60A1: $65
    ld l, h                                       ; $60A2: $6C
    ld l, c                                       ; $60A3: $69
    ld h, e                                       ; $60A4: $63
    ld l, c                                       ; $60A5: $69
    ld l, a                                       ; $60A6: $6F
    ld [hl], l                                    ; $60A7: $75
    ld [hl], e                                    ; $60A8: $73
    ld [hl], e                                    ; $60A9: $73
    ld l, $2E                                     ; $60AA: $2E $2E
    ld l, $FE                                     ; $60AC: $2E $FE
    ld [hl], h                                    ; $60AE: $74
    ld l, c                                       ; $60AF: $69
    ld h, e                                       ; $60B0: $63
    ld l, e                                       ; $60B1: $6B
    ld h, l                                       ; $60B2: $65
    ld [hl], h                                    ; $60B3: $74
    ld [hl], e                                    ; $60B4: $73
    ld [hl], e                                    ; $60B5: $73
    ld [hl], e                                    ; $60B6: $73
    ld l, $2E                                     ; $60B7: $2E $2E
    ld l, $FE                                     ; $60B9: $2E $FE
    db $FD                                        ; $60BB: $FD

jr_028_60BC:
    sbc d                                         ; $60BC: $9A
    ld b, d                                       ; $60BD: $42
    sbc a                                         ; $60BE: $9F
    ld b, d                                       ; $60BF: $42
    ld l, h                                       ; $60C0: $6C
    ld h, c                                       ; $60C1: $61
    ld [hl], e                                    ; $60C2: $73
    ld [hl], h                                    ; $60C3: $74
    jr nz, jr_028_611B                            ; $60C4: $20 $55

    ld [hl], d                                    ; $60C6: $72
    ld l, [hl]                                    ; $60C7: $6E
    rst $38                                       ; $60C8: $FF
    ld h, e                                       ; $60C9: $63
    ld l, a                                       ; $60CA: $6F
    ld [hl], e                                    ; $60CB: $73

jr_028_60CC:
    ld [hl], h                                    ; $60CC: $74
    ld [hl], e                                    ; $60CD: $73
    jr nz, @+$33                                  ; $60CE: $20 $31

jr_028_60D0:
    jr nc, jr_028_60D0                            ; $60D0: $30 $FE

    ld d, h                                       ; $60D2: $54
    ld l, c                                       ; $60D3: $69
    ld h, e                                       ; $60D4: $63
    ld l, e                                       ; $60D5: $6B
    ld h, l                                       ; $60D6: $65
    ld [hl], h                                    ; $60D7: $74
    ld [hl], e                                    ; $60D8: $73
    ld l, $FF                                     ; $60D9: $2E $FF
    ld b, d                                       ; $60DB: $42
    ld [hl], l                                    ; $60DC: $75
    ld a, c                                       ; $60DD: $79
    jr nz, jr_028_614F                            ; $60DE: $20 $6F

    ld l, [hl]                                    ; $60E0: $6E
    ld h, l                                       ; $60E1: $65
    ccf                                           ; $60E2: $3F
    cp $FD                                        ; $60E3: $FE $FD
    sbc c                                         ; $60E5: $99
    sbc a                                         ; $60E6: $9F

jr_028_60E7:
    jr nz, jr_028_6142                            ; $60E7: $20 $59

    ld h, l                                       ; $60E9: $65
    ld [hl], e                                    ; $60EA: $73
    rst $38                                       ; $60EB: $FF

jr_028_60EC:
    jr nz, jr_028_613C                            ; $60EC: $20 $4E

    ld l, a                                       ; $60EE: $6F
    db $FD                                        ; $60EF: $FD
    sbc h                                         ; $60F0: $9C
    ld [bc], a                                    ; $60F1: $02
    jr z, jr_028_60EC                             ; $60F2: $28 $F8

    ld h, b                                       ; $60F4: $60
    jr z, jr_028_6144                             ; $60F5: $28 $4D

jr_028_60F7:
    ld h, c                                       ; $60F7: $61
    sbc c                                         ; $60F8: $99
    ld b, e                                       ; $60F9: $43
    inc de                                        ; $60FA: $13
    ld bc, $A3D2                                  ; $60FB: $01 $D2 $A3
    dec b                                         ; $60FE: $05
    ld a, [bc]                                    ; $60FF: $0A
    jr z, jr_028_612C                             ; $6100: $28 $2A

    ld h, c                                       ; $6102: $61
    sbc a                                         ; $6103: $9F
    ld d, h                                       ; $6104: $54
    ld l, a                                       ; $6105: $6F
    ld l, [hl]                                    ; $6106: $6E
    ld a, c                                       ; $6107: $79
    jr nz, jr_028_6171                            ; $6108: $20 $67

    ld l, a                                       ; $610A: $6F
    ld [hl], h                                    ; $610B: $74
    jr nz, jr_028_616F                            ; $610C: $20 $61

    rst $38                                       ; $610E: $FF
    ld b, d                                       ; $610F: $42
    ld l, h                                       ; $6110: $6C
    ld h, c                                       ; $6111: $61

jr_028_6112:
    ld [hl], e                                    ; $6112: $73
    ld [hl], h                                    ; $6113: $74
    jr nz, jr_028_616B                            ; $6114: $20 $55

    ld [hl], d                                    ; $6116: $72
    ld l, [hl]                                    ; $6117: $6E
    ld hl, $FDFE                                  ; $6118: $21 $FE $FD

jr_028_611B:
    add a                                         ; $611B: $87
    nop                                           ; $611C: $00
    ld a, [hl+]                                   ; $611D: $2A
    ld bc, $0088                                  ; $611E: $01 $88 $00
    dec hl                                        ; $6121: $2B
    ld a, [bc]                                    ; $6122: $0A
    sbc a                                         ; $6123: $9F
    rst $38                                       ; $6124: $FF
    db $FD                                        ; $6125: $FD
    ld b, l                                       ; $6126: $45
    jr z, jr_028_60E7                             ; $6127: $28 $BE

    ld h, b                                       ; $6129: $60
    sbc a                                         ; $612A: $9F
    ld e, c                                       ; $612B: $59

jr_028_612C:
    ld l, a                                       ; $612C: $6F
    ld [hl], l                                    ; $612D: $75
    jr nz, @+$66                                  ; $612E: $20 $64

    ld l, a                                       ; $6130: $6F
    ld l, [hl]                                    ; $6131: $6E
    daa                                           ; $6132: $27
    ld [hl], h                                    ; $6133: $74
    rst $38                                       ; $6134: $FF
    ld l, b                                       ; $6135: $68
    ld h, c                                       ; $6136: $61
    halt                                          ; $6137: $76
    ld h, l                                       ; $6138: $65
    jr nz, @+$67                                  ; $6139: $20 $65

    ld l, [hl]                                    ; $613B: $6E

jr_028_613C:
    ld l, a                                       ; $613C: $6F
    ld [hl], l                                    ; $613D: $75
    ld h, a                                       ; $613E: $67
    ld l, b                                       ; $613F: $68
    cp $54                                        ; $6140: $FE $54

jr_028_6142:
    ld l, c                                       ; $6142: $69
    ld h, e                                       ; $6143: $63

jr_028_6144:
    ld l, e                                       ; $6144: $6B
    ld h, l                                       ; $6145: $65
    ld [hl], h                                    ; $6146: $74
    ld [hl], e                                    ; $6147: $73
    ld hl, $FDFE                                  ; $6148: $21 $FE $FD
    sbc d                                         ; $614B: $9A
    ld b, d                                       ; $614C: $42
    sbc d                                         ; $614D: $9A
    ld b, d                                       ; $614E: $42

jr_028_614F:
    sbc a                                         ; $614F: $9F
    inc sp                                        ; $6150: $33
    jr nz, jr_028_619B                            ; $6151: $20 $48

    ld h, l                                       ; $6153: $65
    ld h, c                                       ; $6154: $61
    ld h, h                                       ; $6155: $64
    ld h, l                                       ; $6156: $65
    ld h, h                                       ; $6157: $64
    jr nz, jr_028_619D                            ; $6158: $20 $43

    ld l, a                                       ; $615A: $6F
    ld l, c                                       ; $615B: $69
    ld l, [hl]                                    ; $615C: $6E
    rst $38                                       ; $615D: $FF
    ld h, e                                       ; $615E: $63
    ld l, a                                       ; $615F: $6F
    ld [hl], e                                    ; $6160: $73
    ld [hl], h                                    ; $6161: $74
    ld [hl], e                                    ; $6162: $73
    jr nz, jr_028_6196                            ; $6163: $20 $31

    cp $54                                        ; $6165: $FE $54
    ld l, c                                       ; $6167: $69
    ld h, e                                       ; $6168: $63
    ld l, e                                       ; $6169: $6B
    ld h, l                                       ; $616A: $65

jr_028_616B:
    ld [hl], h                                    ; $616B: $74
    ld l, $FF                                     ; $616C: $2E $FF

jr_028_616E:
    ld b, d                                       ; $616E: $42

jr_028_616F:
    ld [hl], l                                    ; $616F: $75
    ld a, c                                       ; $6170: $79

jr_028_6171:
    jr nz, jr_028_61E2                            ; $6171: $20 $6F

    ld l, [hl]                                    ; $6173: $6E
    ld h, l                                       ; $6174: $65
    ccf                                           ; $6175: $3F
    cp $FD                                        ; $6176: $FE $FD
    sbc c                                         ; $6178: $99
    sbc a                                         ; $6179: $9F
    jr nz, jr_028_61D5                            ; $617A: $20 $59

    ld h, l                                       ; $617C: $65
    ld [hl], e                                    ; $617D: $73
    rst $38                                       ; $617E: $FF
    jr nz, jr_028_61CF                            ; $617F: $20 $4E

    ld l, a                                       ; $6181: $6F
    db $FD                                        ; $6182: $FD
    sbc h                                         ; $6183: $9C
    ld [bc], a                                    ; $6184: $02
    jr z, jr_028_6112                             ; $6185: $28 $8B

    ld h, c                                       ; $6187: $61
    jr z, jr_028_616E                             ; $6188: $28 $E4

    ld h, c                                       ; $618A: $61
    sbc c                                         ; $618B: $99
    ld b, e                                       ; $618C: $43
    inc de                                        ; $618D: $13
    ld bc, $A3D2                                  ; $618E: $01 $D2 $A3
    dec b                                         ; $6191: $05
    ld bc, $C128                                  ; $6192: $01 $28 $C1
    ld h, c                                       ; $6195: $61

jr_028_6196:
    sbc a                                         ; $6196: $9F
    ld d, h                                       ; $6197: $54
    ld l, a                                       ; $6198: $6F
    ld l, [hl]                                    ; $6199: $6E
    ld a, c                                       ; $619A: $79

jr_028_619B:
    jr nz, @+$69                                  ; $619B: $20 $67

jr_028_619D:
    ld l, a                                       ; $619D: $6F
    ld [hl], h                                    ; $619E: $74
    jr nz, jr_028_6202                            ; $619F: $20 $61

    rst $38                                       ; $61A1: $FF
    inc sp                                        ; $61A2: $33
    jr nz, jr_028_61ED                            ; $61A3: $20 $48

    ld h, l                                       ; $61A5: $65
    ld h, c                                       ; $61A6: $61
    ld h, h                                       ; $61A7: $64
    ld h, l                                       ; $61A8: $65
    ld h, h                                       ; $61A9: $64
    jr nz, @+$45                                  ; $61AA: $20 $43

    ld l, a                                       ; $61AC: $6F
    ld l, c                                       ; $61AD: $69
    ld l, [hl]                                    ; $61AE: $6E
    ld hl, $FDFE                                  ; $61AF: $21 $FE $FD
    add a                                         ; $61B2: $87
    nop                                           ; $61B3: $00
    inc b                                         ; $61B4: $04
    ld bc, $0088                                  ; $61B5: $01 $88 $00
    dec hl                                        ; $61B8: $2B
    ld bc, $FF9F                                  ; $61B9: $01 $9F $FF
    db $FD                                        ; $61BC: $FD
    ld b, l                                       ; $61BD: $45
    jr z, jr_028_620F                             ; $61BE: $28 $4F

    ld h, c                                       ; $61C0: $61
    sbc a                                         ; $61C1: $9F
    ld e, c                                       ; $61C2: $59
    ld l, a                                       ; $61C3: $6F
    ld [hl], l                                    ; $61C4: $75
    jr nz, @+$66                                  ; $61C5: $20 $64

    ld l, a                                       ; $61C7: $6F
    ld l, [hl]                                    ; $61C8: $6E
    daa                                           ; $61C9: $27
    ld [hl], h                                    ; $61CA: $74
    rst $38                                       ; $61CB: $FF
    ld l, b                                       ; $61CC: $68
    ld h, c                                       ; $61CD: $61
    halt                                          ; $61CE: $76

jr_028_61CF:
    ld h, l                                       ; $61CF: $65
    jr nz, @+$67                                  ; $61D0: $20 $65

    ld l, [hl]                                    ; $61D2: $6E
    ld l, a                                       ; $61D3: $6F
    ld [hl], l                                    ; $61D4: $75

jr_028_61D5:
    ld h, a                                       ; $61D5: $67
    ld l, b                                       ; $61D6: $68
    cp $54                                        ; $61D7: $FE $54
    ld l, c                                       ; $61D9: $69
    ld h, e                                       ; $61DA: $63
    ld l, e                                       ; $61DB: $6B
    ld h, l                                       ; $61DC: $65
    ld [hl], h                                    ; $61DD: $74
    ld [hl], e                                    ; $61DE: $73
    ld hl, $FDFE                                  ; $61DF: $21 $FE $FD

jr_028_61E2:
    sbc d                                         ; $61E2: $9A
    ld b, d                                       ; $61E3: $42
    sbc d                                         ; $61E4: $9A
    ld b, d                                       ; $61E5: $42
    sbc a                                         ; $61E6: $9F
    ld b, d                                       ; $61E7: $42
    ld h, c                                       ; $61E8: $61
    ld l, h                                       ; $61E9: $6C
    ld h, c                                       ; $61EA: $61
    ld l, [hl]                                    ; $61EB: $6E
    ld h, e                                       ; $61EC: $63

jr_028_61ED:
    ld h, l                                       ; $61ED: $65
    jr nz, jr_028_6243                            ; $61EE: $20 $53

    ld h, e                                       ; $61F0: $63
    ld h, c                                       ; $61F1: $61
    ld l, h                                       ; $61F2: $6C
    ld h, l                                       ; $61F3: $65
    rst $38                                       ; $61F4: $FF
    ld h, e                                       ; $61F5: $63
    ld l, a                                       ; $61F6: $6F
    ld [hl], e                                    ; $61F7: $73
    ld [hl], h                                    ; $61F8: $74
    ld [hl], e                                    ; $61F9: $73
    jr nz, jr_028_622D                            ; $61FA: $20 $31

    cp $54                                        ; $61FC: $FE $54
    ld l, c                                       ; $61FE: $69
    ld h, e                                       ; $61FF: $63
    ld l, e                                       ; $6200: $6B
    ld h, l                                       ; $6201: $65

jr_028_6202:
    ld [hl], h                                    ; $6202: $74
    ld l, $FF                                     ; $6203: $2E $FF
    ld b, d                                       ; $6205: $42
    ld [hl], l                                    ; $6206: $75
    ld a, c                                       ; $6207: $79
    jr nz, jr_028_6279                            ; $6208: $20 $6F

    ld l, [hl]                                    ; $620A: $6E
    ld h, l                                       ; $620B: $65
    ccf                                           ; $620C: $3F
    cp $FD                                        ; $620D: $FE $FD

jr_028_620F:
    sbc c                                         ; $620F: $99
    sbc a                                         ; $6210: $9F
    jr nz, jr_028_626C                            ; $6211: $20 $59

    ld h, l                                       ; $6213: $65
    ld [hl], e                                    ; $6214: $73
    rst $38                                       ; $6215: $FF
    jr nz, jr_028_6266                            ; $6216: $20 $4E

    ld l, a                                       ; $6218: $6F
    db $FD                                        ; $6219: $FD
    sbc h                                         ; $621A: $9C
    ld [bc], a                                    ; $621B: $02
    jr z, jr_028_6240                             ; $621C: $28 $22

    ld h, d                                       ; $621E: $62
    jr z, jr_028_629C                             ; $621F: $28 $7B

    ld h, d                                       ; $6221: $62
    sbc c                                         ; $6222: $99
    ld b, e                                       ; $6223: $43
    inc de                                        ; $6224: $13
    ld bc, $A3D2                                  ; $6225: $01 $D2 $A3
    dec b                                         ; $6228: $05
    ld bc, $5828                                  ; $6229: $01 $28 $58
    ld h, d                                       ; $622C: $62

jr_028_622D:
    sbc a                                         ; $622D: $9F
    ld d, h                                       ; $622E: $54
    ld l, a                                       ; $622F: $6F
    ld l, [hl]                                    ; $6230: $6E
    ld a, c                                       ; $6231: $79
    jr nz, jr_028_629B                            ; $6232: $20 $67

    ld l, a                                       ; $6234: $6F
    ld [hl], h                                    ; $6235: $74
    jr nz, jr_028_6299                            ; $6236: $20 $61

    rst $38                                       ; $6238: $FF
    ld b, d                                       ; $6239: $42
    ld h, c                                       ; $623A: $61
    ld l, h                                       ; $623B: $6C
    ld h, c                                       ; $623C: $61

jr_028_623D:
    ld l, [hl]                                    ; $623D: $6E
    ld h, e                                       ; $623E: $63
    ld h, l                                       ; $623F: $65

jr_028_6240:
    jr nz, @+$55                                  ; $6240: $20 $53

    ld h, e                                       ; $6242: $63

jr_028_6243:
    ld h, c                                       ; $6243: $61
    ld l, h                                       ; $6244: $6C
    ld h, l                                       ; $6245: $65
    ld hl, $FDFE                                  ; $6246: $21 $FE $FD
    add a                                         ; $6249: $87
    nop                                           ; $624A: $00
    dec b                                         ; $624B: $05
    ld bc, $0088                                  ; $624C: $01 $88 $00
    dec hl                                        ; $624F: $2B
    ld bc, $FF9F                                  ; $6250: $01 $9F $FF
    db $FD                                        ; $6253: $FD
    ld b, l                                       ; $6254: $45
    jr z, jr_028_623D                             ; $6255: $28 $E6

    ld h, c                                       ; $6257: $61
    sbc a                                         ; $6258: $9F
    ld e, c                                       ; $6259: $59
    ld l, a                                       ; $625A: $6F
    ld [hl], l                                    ; $625B: $75
    jr nz, jr_028_62C2                            ; $625C: $20 $64

    ld l, a                                       ; $625E: $6F
    ld l, [hl]                                    ; $625F: $6E
    daa                                           ; $6260: $27
    ld [hl], h                                    ; $6261: $74
    rst $38                                       ; $6262: $FF
    ld l, b                                       ; $6263: $68
    ld h, c                                       ; $6264: $61
    halt                                          ; $6265: $76

jr_028_6266:
    ld h, l                                       ; $6266: $65
    jr nz, jr_028_62CE                            ; $6267: $20 $65

    ld l, [hl]                                    ; $6269: $6E
    ld l, a                                       ; $626A: $6F
    ld [hl], l                                    ; $626B: $75

jr_028_626C:
    ld h, a                                       ; $626C: $67
    ld l, b                                       ; $626D: $68
    cp $54                                        ; $626E: $FE $54
    ld l, c                                       ; $6270: $69
    ld h, e                                       ; $6271: $63

jr_028_6272:
    ld l, e                                       ; $6272: $6B
    ld h, l                                       ; $6273: $65
    ld [hl], h                                    ; $6274: $74
    ld [hl], e                                    ; $6275: $73
    ld hl, $FDFE                                  ; $6276: $21 $FE $FD

jr_028_6279:
    sbc d                                         ; $6279: $9A
    ld b, d                                       ; $627A: $42
    sbc d                                         ; $627B: $9A
    ld b, d                                       ; $627C: $42
    sbc a                                         ; $627D: $9F
    ld b, d                                       ; $627E: $42
    ld [hl], l                                    ; $627F: $75
    ld h, e                                       ; $6280: $63
    ld l, e                                       ; $6281: $6B
    ld h, l                                       ; $6282: $65
    ld [hl], h                                    ; $6283: $74
    jr nz, jr_028_62F5                            ; $6284: $20 $6F

    daa                                           ; $6286: $27
    jr nz, @+$52                                  ; $6287: $20 $50

    ld l, c                                       ; $6289: $69
    ld l, [hl]                                    ; $628A: $6E
    ld l, e                                       ; $628B: $6B
    rst $38                                       ; $628C: $FF
    ld h, e                                       ; $628D: $63
    ld l, a                                       ; $628E: $6F
    ld [hl], e                                    ; $628F: $73
    ld [hl], h                                    ; $6290: $74
    ld [hl], e                                    ; $6291: $73
    jr nz, jr_028_62C9                            ; $6292: $20 $35

    cp $54                                        ; $6294: $FE $54
    ld l, c                                       ; $6296: $69
    ld h, e                                       ; $6297: $63
    ld l, e                                       ; $6298: $6B

jr_028_6299:
    ld h, l                                       ; $6299: $65
    ld [hl], h                                    ; $629A: $74

jr_028_629B:
    ld [hl], e                                    ; $629B: $73

jr_028_629C:
    ld l, $FF                                     ; $629C: $2E $FF
    ld b, d                                       ; $629E: $42
    ld [hl], l                                    ; $629F: $75
    ld a, c                                       ; $62A0: $79
    jr nz, @+$71                                  ; $62A1: $20 $6F

    ld l, [hl]                                    ; $62A3: $6E
    ld h, l                                       ; $62A4: $65
    ccf                                           ; $62A5: $3F
    cp $FD                                        ; $62A6: $FE $FD
    sbc c                                         ; $62A8: $99
    sbc a                                         ; $62A9: $9F
    jr nz, jr_028_6305                            ; $62AA: $20 $59

    ld h, l                                       ; $62AC: $65
    ld [hl], e                                    ; $62AD: $73
    rst $38                                       ; $62AE: $FF
    jr nz, jr_028_62FF                            ; $62AF: $20 $4E

    ld l, a                                       ; $62B1: $6F
    db $FD                                        ; $62B2: $FD
    sbc h                                         ; $62B3: $9C
    ld [bc], a                                    ; $62B4: $02
    jr z, jr_028_6272                             ; $62B5: $28 $BB

jr_028_62B7:
    ld h, d                                       ; $62B7: $62
    jr z, jr_028_62CF                             ; $62B8: $28 $15

    ld h, e                                       ; $62BA: $63
    sbc c                                         ; $62BB: $99
    ld b, e                                       ; $62BC: $43
    inc de                                        ; $62BD: $13
    ld bc, $A3D2                                  ; $62BE: $01 $D2 $A3
    dec b                                         ; $62C1: $05

jr_028_62C2:
    dec b                                         ; $62C2: $05
    jr z, jr_028_62B7                             ; $62C3: $28 $F2

    ld h, d                                       ; $62C5: $62
    sbc a                                         ; $62C6: $9F
    ld d, h                                       ; $62C7: $54
    ld l, a                                       ; $62C8: $6F

jr_028_62C9:
    ld l, [hl]                                    ; $62C9: $6E
    ld a, c                                       ; $62CA: $79
    jr nz, jr_028_6334                            ; $62CB: $20 $67

    ld l, a                                       ; $62CD: $6F

jr_028_62CE:
    ld [hl], h                                    ; $62CE: $74

jr_028_62CF:
    jr nz, jr_028_6332                            ; $62CF: $20 $61

    rst $38                                       ; $62D1: $FF
    ld b, d                                       ; $62D2: $42
    ld [hl], l                                    ; $62D3: $75
    ld h, e                                       ; $62D4: $63
    ld l, e                                       ; $62D5: $6B
    ld h, l                                       ; $62D6: $65
    ld [hl], h                                    ; $62D7: $74
    jr nz, jr_028_6349                            ; $62D8: $20 $6F

    daa                                           ; $62DA: $27
    jr nz, jr_028_632D                            ; $62DB: $20 $50

    ld l, c                                       ; $62DD: $69
    ld l, [hl]                                    ; $62DE: $6E

jr_028_62DF:
    ld l, e                                       ; $62DF: $6B
    ld hl, $FDFE                                  ; $62E0: $21 $FE $FD
    add a                                         ; $62E3: $87
    nop                                           ; $62E4: $00
    ld b, $01                                     ; $62E5: $06 $01
    adc b                                         ; $62E7: $88
    nop                                           ; $62E8: $00
    dec hl                                        ; $62E9: $2B
    dec b                                         ; $62EA: $05
    sbc a                                         ; $62EB: $9F
    rst $38                                       ; $62EC: $FF
    db $FD                                        ; $62ED: $FD
    ld b, l                                       ; $62EE: $45
    jr z, jr_028_636E                             ; $62EF: $28 $7D

    ld h, d                                       ; $62F1: $62
    sbc a                                         ; $62F2: $9F
    ld e, c                                       ; $62F3: $59
    ld l, a                                       ; $62F4: $6F

jr_028_62F5:
    ld [hl], l                                    ; $62F5: $75
    jr nz, jr_028_635C                            ; $62F6: $20 $64

    ld l, a                                       ; $62F8: $6F
    ld l, [hl]                                    ; $62F9: $6E
    daa                                           ; $62FA: $27
    ld [hl], h                                    ; $62FB: $74
    rst $38                                       ; $62FC: $FF
    ld l, b                                       ; $62FD: $68
    ld h, c                                       ; $62FE: $61

jr_028_62FF:
    halt                                          ; $62FF: $76
    ld h, l                                       ; $6300: $65
    jr nz, jr_028_6368                            ; $6301: $20 $65

    ld l, [hl]                                    ; $6303: $6E
    ld l, a                                       ; $6304: $6F

jr_028_6305:
    ld [hl], l                                    ; $6305: $75
    ld h, a                                       ; $6306: $67
    ld l, b                                       ; $6307: $68
    cp $54                                        ; $6308: $FE $54
    ld l, c                                       ; $630A: $69
    ld h, e                                       ; $630B: $63
    ld l, e                                       ; $630C: $6B
    ld h, l                                       ; $630D: $65
    ld [hl], h                                    ; $630E: $74
    ld [hl], e                                    ; $630F: $73
    ld hl, $FDFE                                  ; $6310: $21 $FE $FD
    sbc d                                         ; $6313: $9A
    ld b, d                                       ; $6314: $42
    sbc d                                         ; $6315: $9A
    ld b, d                                       ; $6316: $42
    sbc a                                         ; $6317: $9F
    ld d, b                                       ; $6318: $50
    ld l, h                                       ; $6319: $6C
    ld l, a                                       ; $631A: $6F
    ld h, h                                       ; $631B: $64
    jr nz, jr_028_6371                            ; $631C: $20 $53

    ld [hl], b                                    ; $631E: $70
    ld l, [hl]                                    ; $631F: $6E
    ld h, l                                       ; $6320: $65
    ld [hl], a                                    ; $6321: $77
    rst $38                                       ; $6322: $FF
    ld h, e                                       ; $6323: $63
    ld l, a                                       ; $6324: $6F
    ld [hl], e                                    ; $6325: $73
    ld [hl], h                                    ; $6326: $74
    ld [hl], e                                    ; $6327: $73
    jr nz, jr_028_635F                            ; $6328: $20 $35

    cp $54                                        ; $632A: $FE $54
    ld l, c                                       ; $632C: $69

jr_028_632D:
    ld h, e                                       ; $632D: $63
    ld l, e                                       ; $632E: $6B
    ld h, l                                       ; $632F: $65
    ld [hl], h                                    ; $6330: $74
    ld [hl], e                                    ; $6331: $73

jr_028_6332:
    ld l, $FF                                     ; $6332: $2E $FF

jr_028_6334:
    ld b, d                                       ; $6334: $42
    ld [hl], l                                    ; $6335: $75
    ld a, c                                       ; $6336: $79
    jr nz, jr_028_63A8                            ; $6337: $20 $6F

    ld l, [hl]                                    ; $6339: $6E
    ld h, l                                       ; $633A: $65
    ccf                                           ; $633B: $3F
    cp $FD                                        ; $633C: $FE $FD
    sbc c                                         ; $633E: $99
    sbc a                                         ; $633F: $9F
    jr nz, @+$5B                                  ; $6340: $20 $59

    ld h, l                                       ; $6342: $65
    ld [hl], e                                    ; $6343: $73
    rst $38                                       ; $6344: $FF
    jr nz, jr_028_6395                            ; $6345: $20 $4E

    ld l, a                                       ; $6347: $6F
    db $FD                                        ; $6348: $FD

jr_028_6349:
    sbc h                                         ; $6349: $9C
    ld [bc], a                                    ; $634A: $02
    jr z, jr_028_639E                             ; $634B: $28 $51

    ld h, e                                       ; $634D: $63
    jr z, @-$57                                   ; $634E: $28 $A7

    ld h, e                                       ; $6350: $63
    sbc c                                         ; $6351: $99
    ld b, e                                       ; $6352: $43
    inc de                                        ; $6353: $13
    ld bc, $A3D2                                  ; $6354: $01 $D2 $A3
    dec b                                         ; $6357: $05
    dec b                                         ; $6358: $05
    jr z, jr_028_62DF                             ; $6359: $28 $84

    ld h, e                                       ; $635B: $63

jr_028_635C:
    sbc a                                         ; $635C: $9F
    ld d, h                                       ; $635D: $54
    ld l, a                                       ; $635E: $6F

jr_028_635F:
    ld l, [hl]                                    ; $635F: $6E
    ld a, c                                       ; $6360: $79
    jr nz, jr_028_63CA                            ; $6361: $20 $67

    ld l, a                                       ; $6363: $6F
    ld [hl], h                                    ; $6364: $74
    jr nz, jr_028_63C8                            ; $6365: $20 $61

    rst $38                                       ; $6367: $FF

jr_028_6368:
    ld d, b                                       ; $6368: $50
    ld l, h                                       ; $6369: $6C
    ld l, a                                       ; $636A: $6F
    ld h, h                                       ; $636B: $64
    jr nz, jr_028_63C1                            ; $636C: $20 $53

jr_028_636E:
    ld [hl], b                                    ; $636E: $70
    ld l, [hl]                                    ; $636F: $6E
    ld h, l                                       ; $6370: $65

jr_028_6371:
    ld [hl], a                                    ; $6371: $77
    ld hl, $FDFE                                  ; $6372: $21 $FE $FD
    add a                                         ; $6375: $87
    nop                                           ; $6376: $00
    rlca                                          ; $6377: $07
    ld bc, $0088                                  ; $6378: $01 $88 $00
    dec hl                                        ; $637B: $2B
    dec b                                         ; $637C: $05
    sbc a                                         ; $637D: $9F
    rst $38                                       ; $637E: $FF
    db $FD                                        ; $637F: $FD
    ld b, l                                       ; $6380: $45
    jr z, jr_028_639A                             ; $6381: $28 $17

    ld h, e                                       ; $6383: $63
    sbc a                                         ; $6384: $9F
    ld e, c                                       ; $6385: $59
    ld l, a                                       ; $6386: $6F
    ld [hl], l                                    ; $6387: $75
    jr nz, jr_028_63EE                            ; $6388: $20 $64

    ld l, a                                       ; $638A: $6F
    ld l, [hl]                                    ; $638B: $6E
    daa                                           ; $638C: $27
    ld [hl], h                                    ; $638D: $74
    rst $38                                       ; $638E: $FF

jr_028_638F:
    ld l, b                                       ; $638F: $68
    ld h, c                                       ; $6390: $61
    halt                                          ; $6391: $76
    ld h, l                                       ; $6392: $65
    jr nz, jr_028_63FA                            ; $6393: $20 $65

jr_028_6395:
    ld l, [hl]                                    ; $6395: $6E
    ld l, a                                       ; $6396: $6F
    ld [hl], l                                    ; $6397: $75
    ld h, a                                       ; $6398: $67
    ld l, b                                       ; $6399: $68

jr_028_639A:
    cp $54                                        ; $639A: $FE $54
    ld l, c                                       ; $639C: $69
    ld h, e                                       ; $639D: $63

jr_028_639E:
    ld l, e                                       ; $639E: $6B
    ld h, l                                       ; $639F: $65
    ld [hl], h                                    ; $63A0: $74
    ld [hl], e                                    ; $63A1: $73
    ld hl, $FDFE                                  ; $63A2: $21 $FE $FD
    sbc d                                         ; $63A5: $9A
    ld b, d                                       ; $63A6: $42
    sbc d                                         ; $63A7: $9A

jr_028_63A8:
    ld b, d                                       ; $63A8: $42
    ld [bc], a                                    ; $63A9: $02
    ld h, $0D                                     ; $63AA: $26 $0D
    dec sp                                        ; $63AC: $3B
    nop                                           ; $63AD: $00
    ld b, l                                       ; $63AE: $45
    ld [de], a                                    ; $63AF: $12
    ld a, a                                       ; $63B0: $7F
    ld [hl], c                                    ; $63B1: $71
    ld b, l                                       ; $63B2: $45
    jr z, jr_028_638F                             ; $63B3: $28 $DA

    ld l, c                                       ; $63B5: $69
    xor h                                         ; $63B6: $AC
    or d                                          ; $63B7: $B2
    and d                                         ; $63B8: $A2
    nop                                           ; $63B9: $00
    sub [hl]                                      ; $63BA: $96
    jr z, @-$48                                   ; $63BB: $28 $B6

    ld h, e                                       ; $63BD: $63
    xor c                                         ; $63BE: $A9
    rrca                                          ; $63BF: $0F
    nop                                           ; $63C0: $00

jr_028_63C1:
    ld bc, $1C0E                                  ; $63C1: $01 $0E $1C
    ld b, l                                       ; $63C4: $45
    rra                                           ; $63C5: $1F
    ld b, c                                       ; $63C6: $41
    ld h, d                                       ; $63C7: $62

jr_028_63C8:
    sbc e                                         ; $63C8: $9B
    ld a, b                                       ; $63C9: $78

jr_028_63CA:
    ld [hl], b                                    ; $63CA: $70
    sbc a                                         ; $63CB: $9F
    ld d, h                                       ; $63CC: $54
    ld l, b                                       ; $63CD: $68
    ld l, c                                       ; $63CE: $69
    ld [hl], e                                    ; $63CF: $73
    jr nz, jr_028_643B                            ; $63D0: $20 $69

    ld [hl], e                                    ; $63D2: $73
    jr nz, @+$76                                  ; $63D3: $20 $74

    ld l, a                                       ; $63D5: $6F
    ld l, a                                       ; $63D6: $6F
    rst $38                                       ; $63D7: $FF
    ld h, [hl]                                    ; $63D8: $66
    ld h, c                                       ; $63D9: $61
    ld [hl], d                                    ; $63DA: $72
    jr nz, jr_028_6451                            ; $63DB: $20 $74

    ld l, a                                       ; $63DD: $6F
    jr nz, jr_028_644A                            ; $63DE: $20 $6A

    ld [hl], l                                    ; $63E0: $75
    ld l, l                                       ; $63E1: $6D
    ld [hl], b                                    ; $63E2: $70
    cp $74                                        ; $63E3: $FE $74
    ld l, b                                       ; $63E5: $68
    ld h, l                                       ; $63E6: $65
    ld [hl], d                                    ; $63E7: $72
    ld h, l                                       ; $63E8: $65
    jr nz, jr_028_6458                            ; $63E9: $20 $6D

    ld [hl], l                                    ; $63EB: $75
    ld [hl], e                                    ; $63EC: $73
    ld [hl], h                                    ; $63ED: $74

jr_028_63EE:
    jr nz, jr_028_6452                            ; $63EE: $20 $62

    ld h, l                                       ; $63F0: $65
    rst $38                                       ; $63F1: $FF
    ld h, c                                       ; $63F2: $61
    jr nz, jr_028_6457                            ; $63F3: $20 $62

    ld h, l                                       ; $63F5: $65
    ld [hl], h                                    ; $63F6: $74
    ld [hl], h                                    ; $63F7: $74
    ld h, l                                       ; $63F8: $65
    ld [hl], d                                    ; $63F9: $72

jr_028_63FA:
    jr nz, jr_028_6473                            ; $63FA: $20 $77

    ld h, c                                       ; $63FC: $61
    ld a, c                                       ; $63FD: $79
    cp $61                                        ; $63FE: $FE $61
    ld h, e                                       ; $6400: $63
    ld [hl], d                                    ; $6401: $72
    ld l, a                                       ; $6402: $6F
    ld [hl], e                                    ; $6403: $73
    ld [hl], e                                    ; $6404: $73
    jr nz, @+$76                                  ; $6405: $20 $74

    ld l, b                                       ; $6407: $68
    ld l, c                                       ; $6408: $69
    ld [hl], e                                    ; $6409: $73
    ld l, $2E                                     ; $640A: $2E $2E
    ld l, $FE                                     ; $640C: $2E $FE
    db $FD                                        ; $640E: $FD
    sbc d                                         ; $640F: $9A
    ld e, b                                       ; $6410: $58
    ld b, $42                                     ; $6411: $06 $42
    sbc e                                         ; $6413: $9B
    ld a, b                                       ; $6414: $78
    ld [hl], b                                    ; $6415: $70
    sbc a                                         ; $6416: $9F
    ld c, h                                       ; $6417: $4C
    ld l, c                                       ; $6418: $69
    ld l, e                                       ; $6419: $6B
    ld h, l                                       ; $641A: $65
    jr nz, jr_028_6491                            ; $641B: $20 $74

    ld l, b                                       ; $641D: $68
    ld h, c                                       ; $641E: $61
    ld [hl], h                                    ; $641F: $74
    ld hl, $FDFF                                  ; $6420: $21 $FF $FD
    sbc d                                         ; $6423: $9A
    ld e, b                                       ; $6424: $58
    ld bc, $9B42                                  ; $6425: $01 $42 $9B
    cp b                                          ; $6428: $B8
    ld e, l                                       ; $6429: $5D
    sbc a                                         ; $642A: $9F
    ld c, l                                       ; $642B: $4D
    ld h, c                                       ; $642C: $61
    ld h, a                                       ; $642D: $67
    ld l, [hl]                                    ; $642E: $6E
    ld l, c                                       ; $642F: $69
    ld h, [hl]                                    ; $6430: $66
    ld l, c                                       ; $6431: $69
    ld h, e                                       ; $6432: $63
    ld h, l                                       ; $6433: $65
    ld l, [hl]                                    ; $6434: $6E
    ld [hl], h                                    ; $6435: $74
    ld l, $FF                                     ; $6436: $2E $FF
    ld d, h                                       ; $6438: $54
    ld l, b                                       ; $6439: $68
    ld h, l                                       ; $643A: $65

jr_028_643B:
    jr nz, jr_028_64A9                            ; $643B: $20 $6C

    ld h, c                                       ; $643D: $61
    halt                                          ; $643E: $76
    ld h, c                                       ; $643F: $61
    cp $66                                        ; $6440: $FE $66
    ld l, h                                       ; $6442: $6C
    ld l, a                                       ; $6443: $6F
    ld [hl], a                                    ; $6444: $77
    ld l, c                                       ; $6445: $69
    ld l, [hl]                                    ; $6446: $6E
    ld h, a                                       ; $6447: $67
    jr nz, jr_028_64AB                            ; $6448: $20 $61

jr_028_644A:
    ld [hl], d                                    ; $644A: $72
    ld l, a                                       ; $644B: $6F
    ld [hl], l                                    ; $644C: $75
    ld l, [hl]                                    ; $644D: $6E
    ld h, h                                       ; $644E: $64
    rst $38                                       ; $644F: $FF
    ld l, c                                       ; $6450: $69

jr_028_6451:
    ld [hl], h                                    ; $6451: $74

jr_028_6452:
    jr nz, jr_028_64BD                            ; $6452: $20 $69

    ld l, [hl]                                    ; $6454: $6E
    ld [hl], e                                    ; $6455: $73
    ld [hl], l                                    ; $6456: $75

jr_028_6457:
    ld [hl], d                                    ; $6457: $72

jr_028_6458:
    ld h, l                                       ; $6458: $65
    ld [hl], e                                    ; $6459: $73
    jr nz, @+$76                                  ; $645A: $20 $74

    ld l, b                                       ; $645C: $68
    ld h, c                                       ; $645D: $61
    ld [hl], h                                    ; $645E: $74
    cp $6E                                        ; $645F: $FE $6E
    ld l, a                                       ; $6461: $6F
    ld h, d                                       ; $6462: $62
    ld l, a                                       ; $6463: $6F
    ld h, h                                       ; $6464: $64
    ld a, c                                       ; $6465: $79
    jr nz, jr_028_64DF                            ; $6466: $20 $77

    ld l, c                                       ; $6468: $69
    ld l, h                                       ; $6469: $6C
    ld l, h                                       ; $646A: $6C
    rst $38                                       ; $646B: $FF
    ld [hl], e                                    ; $646C: $73
    ld [hl], h                                    ; $646D: $74
    ld l, a                                       ; $646E: $6F
    ld [hl], b                                    ; $646F: $70
    jr nz, jr_028_64E6                            ; $6470: $20 $74

    ld l, b                                       ; $6472: $68

jr_028_6473:
    ld l, c                                       ; $6473: $69
    ld [hl], e                                    ; $6474: $73
    jr nz, jr_028_64E6                            ; $6475: $20 $6F

    ld l, [hl]                                    ; $6477: $6E
    ld h, l                                       ; $6478: $65
    ld hl, $FDFE                                  ; $6479: $21 $FE $FD
    ld e, b                                       ; $647C: $58
    ld bc, $429A                                  ; $647D: $01 $9A $42
    sbc e                                         ; $6480: $9B
    cp b                                          ; $6481: $B8
    ld e, l                                       ; $6482: $5D
    sbc a                                         ; $6483: $9F
    ld c, [hl]                                    ; $6484: $4E
    ld l, a                                       ; $6485: $6F
    ld [hl], h                                    ; $6486: $74
    jr nz, @+$67                                  ; $6487: $20 $65

    halt                                          ; $6489: $76
    ld h, l                                       ; $648A: $65
    ld l, [hl]                                    ; $648B: $6E
    jr nz, jr_028_6507                            ; $648C: $20 $79

    ld l, a                                       ; $648E: $6F
    ld [hl], l                                    ; $648F: $75
    inc l                                         ; $6490: $2C

jr_028_6491:
    rst $38                                       ; $6491: $FF
    ld [hl], e                                    ; $6492: $73
    ld l, a                                       ; $6493: $6F
    dec l                                         ; $6494: $2D
    ld h, e                                       ; $6495: $63
    ld h, c                                       ; $6496: $61
    ld l, h                                       ; $6497: $6C
    ld l, h                                       ; $6498: $6C
    ld h, l                                       ; $6499: $65
    ld h, h                                       ; $649A: $64
    jr nz, @+$49                                  ; $649B: $20 $47

    ld [hl], d                                    ; $649D: $72
    ld h, l                                       ; $649E: $65
    ld h, c                                       ; $649F: $61
    ld [hl], h                                    ; $64A0: $74
    cp $4D                                        ; $64A1: $FE $4D
    ld h, c                                       ; $64A3: $61
    ld h, a                                       ; $64A4: $67
    ld [hl], l                                    ; $64A5: $75
    ld [hl], e                                    ; $64A6: $73
    jr nz, jr_028_64F4                            ; $64A7: $20 $4B

jr_028_64A9:
    ld a, c                                       ; $64A9: $79
    ld [hl], d                                    ; $64AA: $72

jr_028_64AB:
    ld l, a                                       ; $64AB: $6F
    ld [hl], e                                    ; $64AC: $73
    ld hl, $FDFE                                  ; $64AD: $21 $FE $FD
    sbc d                                         ; $64B0: $9A
    ld e, b                                       ; $64B1: $58
    ld [bc], a                                    ; $64B2: $02
    sbc e                                         ; $64B3: $9B
    cp b                                          ; $64B4: $B8
    ld e, l                                       ; $64B5: $5D
    sbc a                                         ; $64B6: $9F
    ld e, c                                       ; $64B7: $59
    ld l, a                                       ; $64B8: $6F
    ld [hl], l                                    ; $64B9: $75
    jr nz, @+$6A                                  ; $64BA: $20 $68

    ld h, c                                       ; $64BC: $61

jr_028_64BD:
    halt                                          ; $64BD: $76
    ld h, l                                       ; $64BE: $65
    jr nz, jr_028_652F                            ; $64BF: $20 $6E

    ld l, a                                       ; $64C1: $6F
    ld [hl], h                                    ; $64C2: $74
    rst $38                                       ; $64C3: $FF
    ld h, d                                       ; $64C4: $62
    ld h, l                                       ; $64C5: $65
    ld h, l                                       ; $64C6: $65
    ld l, [hl]                                    ; $64C7: $6E
    jr nz, jr_028_652F                            ; $64C8: $20 $65

    halt                                          ; $64CA: $76
    ld h, l                                       ; $64CB: $65
    ld l, [hl]                                    ; $64CC: $6E
    jr nz, jr_028_6530                            ; $64CD: $20 $61

    cp $73                                        ; $64CF: $FE $73
    ld l, l                                       ; $64D1: $6D
    ld h, c                                       ; $64D2: $61
    ld l, h                                       ; $64D3: $6C
    ld l, h                                       ; $64D4: $6C
    jr nz, jr_028_653A                            ; $64D5: $20 $63

    ld l, b                                       ; $64D7: $68
    ld h, c                                       ; $64D8: $61
    ld l, h                                       ; $64D9: $6C
    ld l, h                                       ; $64DA: $6C
    ld h, l                                       ; $64DB: $65
    ld l, [hl]                                    ; $64DC: $6E
    ld h, a                                       ; $64DD: $67
    ld h, l                                       ; $64DE: $65

jr_028_64DF:
    rst $38                                       ; $64DF: $FF
    ld h, [hl]                                    ; $64E0: $66
    ld l, a                                       ; $64E1: $6F
    ld [hl], d                                    ; $64E2: $72
    jr nz, jr_028_6552                            ; $64E3: $20 $6D

    ld h, l                                       ; $64E5: $65

jr_028_64E6:
    ld l, $20                                     ; $64E6: $2E $20
    ld d, h                                       ; $64E8: $54
    ld [hl], d                                    ; $64E9: $72
    ld [hl], l                                    ; $64EA: $75
    ld l, h                                       ; $64EB: $6C
    ld a, c                                       ; $64EC: $79
    cp $70                                        ; $64ED: $FE $70
    ld h, c                                       ; $64EF: $61
    ld [hl], h                                    ; $64F0: $74
    ld l, b                                       ; $64F1: $68
    ld h, l                                       ; $64F2: $65
    ld [hl], h                                    ; $64F3: $74

jr_028_64F4:
    ld l, c                                       ; $64F4: $69
    ld h, e                                       ; $64F5: $63
    ld l, $FE                                     ; $64F6: $2E $FE
    ld b, d                                       ; $64F8: $42
    ld [hl], l                                    ; $64F9: $75
    ld [hl], h                                    ; $64FA: $74
    jr nz, jr_028_6546                            ; $64FB: $20 $49

    jr nz, jr_028_6563                            ; $64FD: $20 $64

    ld l, a                                       ; $64FF: $6F
    jr nz, jr_028_6575                            ; $6500: $20 $73

    ld l, a                                       ; $6502: $6F
    rst $38                                       ; $6503: $FF
    ld l, b                                       ; $6504: $68
    ld h, c                                       ; $6505: $61
    ld [hl], h                                    ; $6506: $74

jr_028_6507:
    ld h, l                                       ; $6507: $65
    jr nz, jr_028_657E                            ; $6508: $20 $74

    ld l, a                                       ; $650A: $6F
    jr nz, jr_028_6571                            ; $650B: $20 $64

    ld l, c                                       ; $650D: $69
    ld [hl], d                                    ; $650E: $72
    ld [hl], h                                    ; $650F: $74
    ld a, c                                       ; $6510: $79
    cp $6D                                        ; $6511: $FE $6D
    ld a, c                                       ; $6513: $79
    jr nz, jr_028_657E                            ; $6514: $20 $68

    ld h, c                                       ; $6516: $61
    ld l, [hl]                                    ; $6517: $6E
    ld h, h                                       ; $6518: $64
    ld [hl], e                                    ; $6519: $73
    jr nz, jr_028_6593                            ; $651A: $20 $77

    ld l, c                                       ; $651C: $69
    ld [hl], h                                    ; $651D: $74
    ld l, b                                       ; $651E: $68
    rst $38                                       ; $651F: $FF
    ld [hl], h                                    ; $6520: $74
    ld l, b                                       ; $6521: $68
    ld h, l                                       ; $6522: $65
    jr nz, jr_028_6587                            ; $6523: $20 $62

    ld l, h                                       ; $6525: $6C
    ld l, a                                       ; $6526: $6F
    ld l, a                                       ; $6527: $6F
    ld h, h                                       ; $6528: $64
    jr nz, jr_028_659A                            ; $6529: $20 $6F

    ld h, [hl]                                    ; $652B: $66
    cp $6F                                        ; $652C: $FE $6F
    ld [hl], h                                    ; $652E: $74

jr_028_652F:
    ld l, b                                       ; $652F: $68

jr_028_6530:
    ld h, l                                       ; $6530: $65
    ld [hl], d                                    ; $6531: $72
    ld [hl], e                                    ; $6532: $73
    ld l, $FE                                     ; $6533: $2E $FE
    ld d, e                                       ; $6535: $53
    ld l, a                                       ; $6536: $6F
    jr nz, @+$74                                  ; $6537: $20 $72

    ld h, c                                       ; $6539: $61

jr_028_653A:
    ld [hl], h                                    ; $653A: $74
    ld l, b                                       ; $653B: $68
    ld h, l                                       ; $653C: $65
    ld [hl], d                                    ; $653D: $72
    jr nz, jr_028_65B4                            ; $653E: $20 $74

    ld l, b                                       ; $6540: $68
    ld h, c                                       ; $6541: $61
    ld l, [hl]                                    ; $6542: $6E
    rst $38                                       ; $6543: $FF
    ld h, d                                       ; $6544: $62
    ld l, h                                       ; $6545: $6C

jr_028_6546:
    ld l, a                                       ; $6546: $6F
    ld [hl], a                                    ; $6547: $77
    ld l, c                                       ; $6548: $69
    ld l, [hl]                                    ; $6549: $6E
    ld h, a                                       ; $654A: $67
    jr nz, jr_028_65C6                            ; $654B: $20 $79

    ld l, a                                       ; $654D: $6F
    ld [hl], l                                    ; $654E: $75
    jr nz, jr_028_65C5                            ; $654F: $20 $74

    ld l, a                                       ; $6551: $6F

jr_028_6552:
    cp $62                                        ; $6552: $FE $62
    ld l, c                                       ; $6554: $69
    ld [hl], h                                    ; $6555: $74
    ld [hl], e                                    ; $6556: $73
    inc l                                         ; $6557: $2C
    jr nz, jr_028_65A3                            ; $6558: $20 $49

    daa                                           ; $655A: $27
    ld l, h                                       ; $655B: $6C
    ld l, h                                       ; $655C: $6C
    jr nz, jr_028_65C6                            ; $655D: $20 $67

    ld l, c                                       ; $655F: $69
    halt                                          ; $6560: $76
    ld h, l                                       ; $6561: $65
    rst $38                                       ; $6562: $FF

jr_028_6563:
    ld a, c                                       ; $6563: $79
    ld l, a                                       ; $6564: $6F
    ld [hl], l                                    ; $6565: $75
    jr nz, jr_028_65C9                            ; $6566: $20 $61

    jr nz, jr_028_65D8                            ; $6568: $20 $6E

    ld l, c                                       ; $656A: $69
    ld h, e                                       ; $656B: $63
    ld h, l                                       ; $656C: $65
    inc l                                         ; $656D: $2C
    jr nz, jr_028_65D8                            ; $656E: $20 $68

    ld l, a                                       ; $6570: $6F

jr_028_6571:
    ld [hl], h                                    ; $6571: $74
    cp $62                                        ; $6572: $FE $62
    ld h, c                                       ; $6574: $61

jr_028_6575:
    ld [hl], h                                    ; $6575: $74
    ld l, b                                       ; $6576: $68
    jr nz, jr_028_65E2                            ; $6577: $20 $69

    ld l, [hl]                                    ; $6579: $6E
    ld [hl], e                                    ; $657A: $73
    ld [hl], h                                    ; $657B: $74
    ld h, l                                       ; $657C: $65
    ld h, c                                       ; $657D: $61

jr_028_657E:
    ld h, h                                       ; $657E: $64
    ld l, $FE                                     ; $657F: $2E $FE
    db $FD                                        ; $6581: $FD
    sbc d                                         ; $6582: $9A
    ld e, b                                       ; $6583: $58
    inc bc                                        ; $6584: $03
    ld b, d                                       ; $6585: $42
    sbc e                                         ; $6586: $9B

jr_028_6587:
    add hl, de                                    ; $6587: $19
    ld c, [hl]                                    ; $6588: $4E
    sbc a                                         ; $6589: $9F
    ld c, c                                       ; $658A: $49
    ld [hl], h                                    ; $658B: $74
    daa                                           ; $658C: $27
    ld [hl], e                                    ; $658D: $73
    jr nz, jr_028_6603                            ; $658E: $20 $73

    ld [hl], h                                    ; $6590: $74
    ld [hl], d                                    ; $6591: $72
    ld l, a                                       ; $6592: $6F

jr_028_6593:
    ld l, [hl]                                    ; $6593: $6E
    ld h, a                                       ; $6594: $67
    ld h, l                                       ; $6595: $65
    ld [hl], d                                    ; $6596: $72
    rst $38                                       ; $6597: $FF
    ld l, c                                       ; $6598: $69
    ld l, [hl]                                    ; $6599: $6E

jr_028_659A:
    jr nz, jr_028_6610                            ; $659A: $20 $74

    ld l, b                                       ; $659C: $68
    ld l, c                                       ; $659D: $69
    ld [hl], e                                    ; $659E: $73
    cp $64                                        ; $659F: $FE $64
    ld l, c                                       ; $65A1: $69
    ld [hl], d                                    ; $65A2: $72

jr_028_65A3:
    ld h, l                                       ; $65A3: $65
    ld h, e                                       ; $65A4: $63
    ld [hl], h                                    ; $65A5: $74
    ld l, c                                       ; $65A6: $69
    ld l, a                                       ; $65A7: $6F
    ld l, [hl]                                    ; $65A8: $6E
    ld hl, $FDFE                                  ; $65A9: $21 $FE $FD
    sbc d                                         ; $65AC: $9A
    ld e, b                                       ; $65AD: $58
    inc b                                         ; $65AE: $04
    ld b, d                                       ; $65AF: $42
    sbc e                                         ; $65B0: $9B
    cp b                                          ; $65B1: $B8
    ld e, l                                       ; $65B2: $5D
    sbc a                                         ; $65B3: $9F

jr_028_65B4:
    ld c, b                                       ; $65B4: $48
    ld [hl], l                                    ; $65B5: $75
    ld l, b                                       ; $65B6: $68
    ccf                                           ; $65B7: $3F
    cp $FD                                        ; $65B8: $FE $FD
    sbc d                                         ; $65BA: $9A
    ld e, b                                       ; $65BB: $58
    dec b                                         ; $65BC: $05
    ld b, d                                       ; $65BD: $42
    sbc e                                         ; $65BE: $9B
    cp b                                          ; $65BF: $B8
    ld e, l                                       ; $65C0: $5D
    sbc a                                         ; $65C1: $9F
    ld b, h                                       ; $65C2: $44
    ld h, c                                       ; $65C3: $61
    ld l, l                                       ; $65C4: $6D

jr_028_65C5:
    ld l, [hl]                                    ; $65C5: $6E

jr_028_65C6:
    inc l                                         ; $65C6: $2C
    jr nz, jr_028_6612                            ; $65C7: $20 $49

jr_028_65C9:
    jr nz, jr_028_662E                            ; $65C9: $20 $63

    ld h, c                                       ; $65CB: $61
    ld l, [hl]                                    ; $65CC: $6E
    daa                                           ; $65CD: $27
    ld [hl], h                                    ; $65CE: $74
    rst $38                                       ; $65CF: $FF
    ld l, h                                       ; $65D0: $6C
    ld h, l                                       ; $65D1: $65
    ld [hl], h                                    ; $65D2: $74
    jr nz, jr_028_6649                            ; $65D3: $20 $74

    ld l, b                                       ; $65D5: $68
    ld h, l                                       ; $65D6: $65
    ld l, l                                       ; $65D7: $6D

jr_028_65D8:
    jr nz, jr_028_664D                            ; $65D8: $20 $73

    ld h, l                                       ; $65DA: $65
    ld h, l                                       ; $65DB: $65
    jr nz, @+$6F                                  ; $65DC: $20 $6D

    ld h, l                                       ; $65DE: $65
    cp $6E                                        ; $65DF: $FE $6E
    ld l, a                                       ; $65E1: $6F

jr_028_65E2:
    ld [hl], a                                    ; $65E2: $77
    ld l, $2E                                     ; $65E3: $2E $2E
    ld l, $20                                     ; $65E5: $2E $20
    ld [hl], h                                    ; $65E7: $74
    ld l, b                                       ; $65E8: $68
    ld l, c                                       ; $65E9: $69
    ld [hl], e                                    ; $65EA: $73
    jr nz, @+$6B                                  ; $65EB: $20 $69

    ld [hl], e                                    ; $65ED: $73
    rst $38                                       ; $65EE: $FF
    ld c, [hl]                                    ; $65EF: $4E
    ld c, a                                       ; $65F0: $4F
    ld d, h                                       ; $65F1: $54
    jr nz, jr_028_6663                            ; $65F2: $20 $6F

    halt                                          ; $65F4: $76
    ld h, l                                       ; $65F5: $65
    ld [hl], d                                    ; $65F6: $72
    inc l                                         ; $65F7: $2C
    cp $4B                                        ; $65F8: $FE $4B
    ld a, c                                       ; $65FA: $79
    ld [hl], d                                    ; $65FB: $72
    ld l, a                                       ; $65FC: $6F
    ld [hl], e                                    ; $65FD: $73
    ld l, $FE                                     ; $65FE: $2E $FE
    db $FD                                        ; $6600: $FD
    sbc d                                         ; $6601: $9A
    ld e, b                                       ; $6602: $58

jr_028_6603:
    ld b, $42                                     ; $6603: $06 $42
    sbc e                                         ; $6605: $9B
    add hl, de                                    ; $6606: $19
    ld c, [hl]                                    ; $6607: $4E
    sbc a                                         ; $6608: $9F
    ld d, h                                       ; $6609: $54
    ld l, b                                       ; $660A: $68
    ld h, c                                       ; $660B: $61
    ld [hl], h                                    ; $660C: $74
    jr nz, jr_028_667C                            ; $660D: $20 $6D

    ld [hl], l                                    ; $660F: $75

jr_028_6610:
    ld [hl], e                                    ; $6610: $73
    ld [hl], h                                    ; $6611: $74

jr_028_6612:
    jr nz, jr_028_6676                            ; $6612: $20 $62

    ld h, l                                       ; $6614: $65
    rst $38                                       ; $6615: $FF
    ld [hl], a                                    ; $6616: $77
    ld l, b                                       ; $6617: $68
    ld h, c                                       ; $6618: $61
    ld [hl], h                                    ; $6619: $74
    daa                                           ; $661A: $27
    ld [hl], e                                    ; $661B: $73
    jr nz, @+$65                                  ; $661C: $20 $63

    ld h, c                                       ; $661E: $61
    ld [hl], l                                    ; $661F: $75
    ld [hl], e                                    ; $6620: $73
    ld l, c                                       ; $6621: $69
    ld l, [hl]                                    ; $6622: $6E
    ld h, a                                       ; $6623: $67
    cp $69                                        ; $6624: $FE $69
    ld [hl], h                                    ; $6626: $74
    ld hl, $FDFE                                  ; $6627: $21 $FE $FD
    sbc d                                         ; $662A: $9A
    ld e, b                                       ; $662B: $58
    rlca                                          ; $662C: $07
    ld b, d                                       ; $662D: $42

jr_028_662E:
    sbc e                                         ; $662E: $9B
    ret c                                         ; $662F: $D8

    ld h, b                                       ; $6630: $60
    sbc a                                         ; $6631: $9F
    ld d, a                                       ; $6632: $57
    ld l, b                                       ; $6633: $68
    ld h, c                                       ; $6634: $61
    ld [hl], h                                    ; $6635: $74
    jr nz, jr_028_6699                            ; $6636: $20 $61

    ld [hl], d                                    ; $6638: $72
    ld h, l                                       ; $6639: $65
    jr nz, jr_028_66B5                            ; $663A: $20 $79

    ld l, a                                       ; $663C: $6F
    ld [hl], l                                    ; $663D: $75
    rst $38                                       ; $663E: $FF
    ld h, h                                       ; $663F: $64
    ld l, a                                       ; $6640: $6F
    ld l, c                                       ; $6641: $69
    ld l, [hl]                                    ; $6642: $6E
    ld h, a                                       ; $6643: $67
    jr nz, jr_028_66AE                            ; $6644: $20 $68

    ld h, l                                       ; $6646: $65
    ld [hl], d                                    ; $6647: $72
    ld h, l                                       ; $6648: $65

jr_028_6649:
    ccf                                           ; $6649: $3F
    cp $FD                                        ; $664A: $FE $FD
    ld e, b                                       ; $664C: $58

jr_028_664D:
    ld [$199B], sp                                ; $664D: $08 $9B $19
    ld c, [hl]                                    ; $6650: $4E
    sbc a                                         ; $6651: $9F
    ld d, a                                       ; $6652: $57
    ld l, b                                       ; $6653: $68
    ld l, a                                       ; $6654: $6F
    jr nz, jr_028_66B8                            ; $6655: $20 $61

    ld [hl], d                                    ; $6657: $72
    ld h, l                                       ; $6658: $65
    jr nz, jr_028_66D4                            ; $6659: $20 $79

    ld l, a                                       ; $665B: $6F
    ld [hl], l                                    ; $665C: $75
    rst $38                                       ; $665D: $FF
    ld h, c                                       ; $665E: $61
    ld l, [hl]                                    ; $665F: $6E
    ld a, c                                       ; $6660: $79
    ld [hl], a                                    ; $6661: $77
    ld h, c                                       ; $6662: $61

jr_028_6663:
    ld a, c                                       ; $6663: $79
    ccf                                           ; $6664: $3F
    cp $FD                                        ; $6665: $FE $FD
    sbc e                                         ; $6667: $9B
    add hl, de                                    ; $6668: $19
    ld c, [hl]                                    ; $6669: $4E
    sbc a                                         ; $666A: $9F
    ld c, c                                       ; $666B: $49
    jr nz, jr_028_66D2                            ; $666C: $20 $64

    ld l, a                                       ; $666E: $6F
    ld l, [hl]                                    ; $666F: $6E
    daa                                           ; $6670: $27
    ld [hl], h                                    ; $6671: $74
    rst $38                                       ; $6672: $FF
    ld [hl], d                                    ; $6673: $72
    ld h, l                                       ; $6674: $65
    ld h, e                                       ; $6675: $63

jr_028_6676:
    ld l, a                                       ; $6676: $6F
    ld h, a                                       ; $6677: $67
    ld l, [hl]                                    ; $6678: $6E
    ld l, c                                       ; $6679: $69
    ld a, d                                       ; $667A: $7A
    ld h, l                                       ; $667B: $65

jr_028_667C:
    cp $68                                        ; $667C: $FE $68
    ld l, c                                       ; $667E: $69
    ld l, l                                       ; $667F: $6D
    ld l, $2E                                     ; $6680: $2E $2E
    ld l, $FE                                     ; $6682: $2E $FE
    db $FD                                        ; $6684: $FD
    ld e, b                                       ; $6685: $58
    add hl, bc                                    ; $6686: $09
    sbc e                                         ; $6687: $9B
    ld a, b                                       ; $6688: $78
    ld [hl], b                                    ; $6689: $70
    sbc a                                         ; $668A: $9F
    ld c, c                                       ; $668B: $49
    daa                                           ; $668C: $27
    ld l, l                                       ; $668D: $6D
    jr nz, jr_028_66E4                            ; $668E: $20 $54

    ld l, a                                       ; $6690: $6F
    ld l, [hl]                                    ; $6691: $6E
    ld a, c                                       ; $6692: $79
    ld l, $FE                                     ; $6693: $2E $FE
    db $FD                                        ; $6695: $FD
    sbc e                                         ; $6696: $9B
    add hl, de                                    ; $6697: $19
    ld c, [hl]                                    ; $6698: $4E

jr_028_6699:
    sbc a                                         ; $6699: $9F
    ld b, h                                       ; $669A: $44
    ld l, c                                       ; $669B: $69
    ld h, h                                       ; $669C: $64
    jr nz, jr_028_6718                            ; $669D: $20 $79

    ld l, a                                       ; $669F: $6F
    ld [hl], l                                    ; $66A0: $75
    jr nz, jr_028_6707                            ; $66A1: $20 $64

    ld l, a                                       ; $66A3: $6F
    rst $38                                       ; $66A4: $FF
    ld [hl], h                                    ; $66A5: $74
    ld l, b                                       ; $66A6: $68
    ld l, c                                       ; $66A7: $69
    ld [hl], e                                    ; $66A8: $73
    ccf                                           ; $66A9: $3F
    cp $FD                                        ; $66AA: $FE $FD
    sbc e                                         ; $66AC: $9B
    ld a, b                                       ; $66AD: $78

jr_028_66AE:
    ld [hl], b                                    ; $66AE: $70
    sbc a                                         ; $66AF: $9F
    ld c, [hl]                                    ; $66B0: $4E
    ld l, a                                       ; $66B1: $6F
    inc l                                         ; $66B2: $2C
    jr nz, jr_028_671E                            ; $66B3: $20 $69

jr_028_66B5:
    ld [hl], h                                    ; $66B5: $74
    jr nz, jr_028_672F                            ; $66B6: $20 $77

jr_028_66B8:
    ld h, c                                       ; $66B8: $61
    ld [hl], e                                    ; $66B9: $73
    cp $4D                                        ; $66BA: $FE $4D
    ld l, a                                       ; $66BC: $6F
    ld [hl], d                                    ; $66BD: $72
    ld h, c                                       ; $66BE: $61
    ld h, a                                       ; $66BF: $67
    ld hl, $4820                                  ; $66C0: $21 $20 $48
    ld h, l                                       ; $66C3: $65
    rst $38                                       ; $66C4: $FF
    ld l, d                                       ; $66C5: $6A
    ld [hl], l                                    ; $66C6: $75
    ld [hl], e                                    ; $66C7: $73
    ld [hl], h                                    ; $66C8: $74
    ld l, $2E                                     ; $66C9: $2E $2E
    ld l, $FE                                     ; $66CB: $2E $FE
    db $FD                                        ; $66CD: $FD
    sbc d                                         ; $66CE: $9A
    ld e, b                                       ; $66CF: $58
    ld a, [bc]                                    ; $66D0: $0A
    ld b, d                                       ; $66D1: $42

jr_028_66D2:
    sbc e                                         ; $66D2: $9B
    ret c                                         ; $66D3: $D8

jr_028_66D4:
    ld h, b                                       ; $66D4: $60
    sbc a                                         ; $66D5: $9F
    ld d, a                                       ; $66D6: $57
    ld l, b                                       ; $66D7: $68
    ld l, a                                       ; $66D8: $6F
    ccf                                           ; $66D9: $3F
    jr nz, jr_028_6725                            ; $66DA: $20 $49

    jr nz, jr_028_674D                            ; $66DC: $20 $6F

    ld l, [hl]                                    ; $66DE: $6E
    ld l, h                                       ; $66DF: $6C
    ld a, c                                       ; $66E0: $79
    jr nz, @+$75                                  ; $66E1: $20 $73

    ld h, l                                       ; $66E3: $65

jr_028_66E4:
    ld h, l                                       ; $66E4: $65
    rst $38                                       ; $66E5: $FF
    ld a, c                                       ; $66E6: $79
    ld l, a                                       ; $66E7: $6F
    ld [hl], l                                    ; $66E8: $75
    jr nz, @+$6A                                  ; $66E9: $20 $68

    ld h, l                                       ; $66EB: $65
    ld [hl], d                                    ; $66EC: $72
    ld h, l                                       ; $66ED: $65
    ld l, $FE                                     ; $66EE: $2E $FE
    db $FD                                        ; $66F0: $FD
    sbc e                                         ; $66F1: $9B
    add hl, de                                    ; $66F2: $19
    ld c, [hl]                                    ; $66F3: $4E
    sbc a                                         ; $66F4: $9F
    ld e, c                                       ; $66F5: $59
    ld l, a                                       ; $66F6: $6F
    ld [hl], l                                    ; $66F7: $75
    jr nz, jr_028_6766                            ; $66F8: $20 $6C

    ld l, c                                       ; $66FA: $69
    ld h, c                                       ; $66FB: $61
    ld [hl], d                                    ; $66FC: $72
    ld l, $20                                     ; $66FD: $2E $20
    ld e, c                                       ; $66FF: $59
    ld l, a                                       ; $6700: $6F
    ld [hl], l                                    ; $6701: $75
    rst $38                                       ; $6702: $FF
    ld l, l                                       ; $6703: $6D
    ld [hl], l                                    ; $6704: $75
    ld [hl], e                                    ; $6705: $73
    ld [hl], h                                    ; $6706: $74

jr_028_6707:
    jr nz, jr_028_6771                            ; $6707: $20 $68

    ld h, c                                       ; $6709: $61
    halt                                          ; $670A: $76
    ld h, l                                       ; $670B: $65
    jr nz, jr_028_6772                            ; $670C: $20 $64

    ld l, a                                       ; $670E: $6F
    ld l, [hl]                                    ; $670F: $6E
    ld h, l                                       ; $6710: $65
    cp $69                                        ; $6711: $FE $69
    ld [hl], h                                    ; $6713: $74
    ld hl, $FDFE                                  ; $6714: $21 $FE $FD
    ld e, b                                       ; $6717: $58

jr_028_6718:
    dec bc                                        ; $6718: $0B
    sbc e                                         ; $6719: $9B
    add hl, de                                    ; $671A: $19
    ld c, [hl]                                    ; $671B: $4E
    sbc a                                         ; $671C: $9F
    ld c, h                                       ; $671D: $4C

jr_028_671E:
    ld h, l                                       ; $671E: $65
    ld [hl], h                                    ; $671F: $74
    daa                                           ; $6720: $27
    ld [hl], e                                    ; $6721: $73
    jr nz, jr_028_6798                            ; $6722: $20 $74

    ld h, c                                       ; $6724: $61

jr_028_6725:
    ld l, e                                       ; $6725: $6B
    ld h, l                                       ; $6726: $65
    jr nz, jr_028_6791                            ; $6727: $20 $68

    ld l, c                                       ; $6729: $69
    ld l, l                                       ; $672A: $6D
    rst $38                                       ; $672B: $FF
    ld h, d                                       ; $672C: $62
    ld h, c                                       ; $672D: $61
    ld h, e                                       ; $672E: $63

jr_028_672F:
    ld l, e                                       ; $672F: $6B
    jr nz, jr_028_67A6                            ; $6730: $20 $74

    ld l, a                                       ; $6732: $6F
    jr nz, jr_028_67A9                            ; $6733: $20 $74

    ld l, a                                       ; $6735: $6F
    ld [hl], a                                    ; $6736: $77
    ld l, [hl]                                    ; $6737: $6E
    ld l, $FE                                     ; $6738: $2E $FE
    ld d, h                                       ; $673A: $54
    ld l, b                                       ; $673B: $68
    ld h, l                                       ; $673C: $65
    jr nz, jr_028_6784                            ; $673D: $20 $45

    ld l, h                                       ; $673F: $6C
    ld h, h                                       ; $6740: $64
    ld h, l                                       ; $6741: $65
    ld [hl], d                                    ; $6742: $72
    jr nz, @+$79                                  ; $6743: $20 $77

    ld l, c                                       ; $6745: $69
    ld l, h                                       ; $6746: $6C
    ld l, h                                       ; $6747: $6C
    rst $38                                       ; $6748: $FF
    ld l, e                                       ; $6749: $6B
    ld l, [hl]                                    ; $674A: $6E
    ld l, a                                       ; $674B: $6F
    ld [hl], a                                    ; $674C: $77

jr_028_674D:
    jr nz, jr_028_67C6                            ; $674D: $20 $77

    ld l, b                                       ; $674F: $68
    ld h, c                                       ; $6750: $61
    ld [hl], h                                    ; $6751: $74
    jr nz, jr_028_67C8                            ; $6752: $20 $74

    ld l, a                                       ; $6754: $6F
    jr nz, jr_028_67BB                            ; $6755: $20 $64

    ld l, a                                       ; $6757: $6F
    cp $77                                        ; $6758: $FE $77
    ld l, c                                       ; $675A: $69
    ld [hl], h                                    ; $675B: $74
    ld l, b                                       ; $675C: $68
    jr nz, jr_028_67C7                            ; $675D: $20 $68

    ld l, c                                       ; $675F: $69
    ld l, l                                       ; $6760: $6D
    ld l, $FE                                     ; $6761: $2E $FE
    db $FD                                        ; $6763: $FD
    sbc d                                         ; $6764: $9A
    ld e, b                                       ; $6765: $58

jr_028_6766:
    inc c                                         ; $6766: $0C
    ld b, d                                       ; $6767: $42
    sbc e                                         ; $6768: $9B
    jr z, @+$77                                   ; $6769: $28 $75

    sbc a                                         ; $676B: $9F
    ld c, c                                       ; $676C: $49
    ld [hl], h                                    ; $676D: $74
    jr nz, jr_028_67DC                            ; $676E: $20 $6C

    ld l, a                                       ; $6770: $6F

jr_028_6771:
    ld l, a                                       ; $6771: $6F

jr_028_6772:
    ld l, e                                       ; $6772: $6B
    ld [hl], e                                    ; $6773: $73
    jr nz, jr_028_67DD                            ; $6774: $20 $67

    ld l, a                                       ; $6776: $6F
    ld l, a                                       ; $6777: $6F
    ld h, h                                       ; $6778: $64
    inc l                                         ; $6779: $2C
    rst $38                                       ; $677A: $FF
    ld d, h                                       ; $677B: $54
    ld l, a                                       ; $677C: $6F
    ld l, [hl]                                    ; $677D: $6E
    ld a, c                                       ; $677E: $79
    inc l                                         ; $677F: $2C
    jr nz, jr_028_67F0                            ; $6780: $20 $6E

    ld l, a                                       ; $6782: $6F
    ld [hl], a                                    ; $6783: $77

jr_028_6784:
    jr nz, @+$7B                                  ; $6784: $20 $79

    ld l, a                                       ; $6786: $6F
    ld [hl], l                                    ; $6787: $75
    cp $63                                        ; $6788: $FE $63
    ld h, c                                       ; $678A: $61
    ld l, [hl]                                    ; $678B: $6E
    dec l                                         ; $678C: $2D
    dec l                                         ; $678D: $2D
    cp $FD                                        ; $678E: $FE $FD
    sbc d                                         ; $6790: $9A

jr_028_6791:
    ld e, b                                       ; $6791: $58
    ld [bc], a                                    ; $6792: $02
    ld b, d                                       ; $6793: $42
    sbc e                                         ; $6794: $9B
    jr z, @+$77                                   ; $6795: $28 $75

    sbc a                                         ; $6797: $9F

jr_028_6798:
    ld d, l                                       ; $6798: $55
    ld l, b                                       ; $6799: $68
    jr nz, jr_028_67EB                            ; $679A: $20 $4F

    ld l, b                                       ; $679C: $68
    ld l, $2E                                     ; $679D: $2E $2E
    ld l, $FE                                     ; $679F: $2E $FE
    db $FD                                        ; $67A1: $FD
    sbc d                                         ; $67A2: $9A
    ld e, b                                       ; $67A3: $58
    dec b                                         ; $67A4: $05
    ld b, d                                       ; $67A5: $42

jr_028_67A6:
    sbc e                                         ; $67A6: $9B
    jr z, jr_028_681E                             ; $67A7: $28 $75

jr_028_67A9:
    sbc a                                         ; $67A9: $9F
    ld c, a                                       ; $67AA: $4F
    ld l, a                                       ; $67AB: $6F
    ld [hl], b                                    ; $67AC: $70
    ld [hl], e                                    ; $67AD: $73
    ld l, $FE                                     ; $67AE: $2E $FE
    db $FD                                        ; $67B0: $FD
    sbc e                                         ; $67B1: $9B
    ld a, b                                       ; $67B2: $78
    ld [hl], b                                    ; $67B3: $70
    sbc a                                         ; $67B4: $9F
    ld l, $2E                                     ; $67B5: $2E $2E
    ld l, $2E                                     ; $67B7: $2E $2E
    ld l, $2E                                     ; $67B9: $2E $2E

jr_028_67BB:
    ld l, $2E                                     ; $67BB: $2E $2E
    ld l, $2E                                     ; $67BD: $2E $2E
    rst $38                                       ; $67BF: $FF
    db $FD                                        ; $67C0: $FD
    sbc e                                         ; $67C1: $9B
    jr z, jr_028_6839                             ; $67C2: $28 $75

    sbc a                                         ; $67C4: $9F
    ld c, c                                       ; $67C5: $49

jr_028_67C6:
    daa                                           ; $67C6: $27

jr_028_67C7:
    ld l, l                                       ; $67C7: $6D

jr_028_67C8:
    jr nz, jr_028_683D                            ; $67C8: $20 $73

    ld l, a                                       ; $67CA: $6F
    rst $38                                       ; $67CB: $FF
    ld h, l                                       ; $67CC: $65
    ld l, l                                       ; $67CD: $6D
    ld h, d                                       ; $67CE: $62
    ld h, c                                       ; $67CF: $61
    ld [hl], d                                    ; $67D0: $72
    ld [hl], d                                    ; $67D1: $72
    ld h, c                                       ; $67D2: $61
    ld [hl], e                                    ; $67D3: $73
    ld [hl], e                                    ; $67D4: $73
    ld h, l                                       ; $67D5: $65
    ld h, h                                       ; $67D6: $64
    ld l, $FE                                     ; $67D7: $2E $FE
    ld c, b                                       ; $67D9: $48
    ld h, l                                       ; $67DA: $65
    ld [hl], d                                    ; $67DB: $72

jr_028_67DC:
    ld h, l                                       ; $67DC: $65

jr_028_67DD:
    daa                                           ; $67DD: $27
    ld [hl], e                                    ; $67DE: $73
    jr nz, jr_028_685A                            ; $67DF: $20 $79

    ld l, a                                       ; $67E1: $6F
    ld [hl], l                                    ; $67E2: $75
    ld [hl], d                                    ; $67E3: $72
    rst $38                                       ; $67E4: $FF
    ld [hl], d                                    ; $67E5: $72
    ld l, c                                       ; $67E6: $69
    ld l, [hl]                                    ; $67E7: $6E
    ld h, a                                       ; $67E8: $67
    jr nz, jr_028_684D                            ; $67E9: $20 $62

jr_028_67EB:
    ld h, c                                       ; $67EB: $61
    ld h, e                                       ; $67EC: $63
    ld l, e                                       ; $67ED: $6B
    ld l, $FE                                     ; $67EE: $2E $FE

jr_028_67F0:
    db $FD                                        ; $67F0: $FD
    sbc d                                         ; $67F1: $9A
    ld e, b                                       ; $67F2: $58
    inc b                                         ; $67F3: $04
    ld b, d                                       ; $67F4: $42
    sbc e                                         ; $67F5: $9B

jr_028_67F6:
    jr z, @+$77                                   ; $67F6: $28 $75

    sbc a                                         ; $67F8: $9F
    ld d, h                                       ; $67F9: $54
    ld l, a                                       ; $67FA: $6F
    ld l, [hl]                                    ; $67FB: $6E
    ld a, c                                       ; $67FC: $79
    ld hl, $5720                                  ; $67FD: $21 $20 $57
    ld h, c                                       ; $6800: $61
    ld l, c                                       ; $6801: $69
    ld [hl], h                                    ; $6802: $74
    ld hl, $FDFE                                  ; $6803: $21 $FE $FD
    sbc d                                         ; $6806: $9A

jr_028_6807:
    ld e, b                                       ; $6807: $58
    dec c                                         ; $6808: $0D
    ld b, d                                       ; $6809: $42
    sbc e                                         ; $680A: $9B
    jr z, jr_028_6882                             ; $680B: $28 $75

    sbc a                                         ; $680D: $9F
    ld d, h                                       ; $680E: $54
    ld l, a                                       ; $680F: $6F
    ld l, [hl]                                    ; $6810: $6E
    ld a, c                                       ; $6811: $79
    ld hl, $48FE                                  ; $6812: $21 $FE $48
    ld l, a                                       ; $6815: $6F
    ld l, h                                       ; $6816: $6C
    ld h, h                                       ; $6817: $64
    jr nz, jr_028_688F                            ; $6818: $20 $75

    ld [hl], b                                    ; $681A: $70
    ld hl, $FDFE                                  ; $681B: $21 $FE $FD

jr_028_681E:
    sbc d                                         ; $681E: $9A
    ld e, b                                       ; $681F: $58
    dec c                                         ; $6820: $0D
    ld b, d                                       ; $6821: $42
    sbc e                                         ; $6822: $9B
    jr z, jr_028_689A                             ; $6823: $28 $75

    sbc a                                         ; $6825: $9F
    ld e, c                                       ; $6826: $59
    ld l, a                                       ; $6827: $6F
    ld [hl], l                                    ; $6828: $75
    daa                                           ; $6829: $27
    halt                                          ; $682A: $76
    ld h, l                                       ; $682B: $65
    jr nz, jr_028_6895                            ; $682C: $20 $67

    ld l, a                                       ; $682E: $6F
    ld [hl], h                                    ; $682F: $74
    rst $38                                       ; $6830: $FF
    ld [hl], h                                    ; $6831: $74
    ld l, b                                       ; $6832: $68
    ld h, l                                       ; $6833: $65
    jr nz, @+$43                                  ; $6834: $20 $41

    ld [hl], d                                    ; $6836: $72
    ld h, d                                       ; $6837: $62
    ld l, a                                       ; $6838: $6F

jr_028_6839:
    ld l, h                                       ; $6839: $6C
    ccf                                           ; $683A: $3F
    cp $FD                                        ; $683B: $FE $FD

jr_028_683D:
    sbc e                                         ; $683D: $9B
    ld a, b                                       ; $683E: $78
    ld [hl], b                                    ; $683F: $70
    sbc a                                         ; $6840: $9F
    ld e, c                                       ; $6841: $59
    ld [hl], l                                    ; $6842: $75
    ld [hl], b                                    ; $6843: $70
    inc l                                         ; $6844: $2C
    jr nz, @+$6A                                  ; $6845: $20 $68

    ld h, l                                       ; $6847: $65
    ld [hl], d                                    ; $6848: $72
    ld h, l                                       ; $6849: $65
    rst $38                                       ; $684A: $FF
    ld a, c                                       ; $684B: $79

jr_028_684C:
    ld l, a                                       ; $684C: $6F

jr_028_684D:
    ld [hl], l                                    ; $684D: $75
    jr nz, jr_028_68B7                            ; $684E: $20 $67

    ld l, a                                       ; $6850: $6F
    ld l, $FE                                     ; $6851: $2E $FE
    db $FD                                        ; $6853: $FD
    sbc d                                         ; $6854: $9A
    ld e, b                                       ; $6855: $58
    ld bc, $0242                                  ; $6856: $01 $42 $02
    nop                                           ; $6859: $00

jr_028_685A:
    nop                                           ; $685A: $00
    nop                                           ; $685B: $00
    nop                                           ; $685C: $00
    jr nc, jr_028_684C                            ; $685D: $30 $ED

    ld d, [hl]                                    ; $685F: $56
    inc c                                         ; $6860: $0C
    ld b, a                                       ; $6861: $47
    inc b                                         ; $6862: $04
    jr z, jr_028_68D4                             ; $6863: $28 $6F

    ld l, b                                       ; $6865: $68
    jr z, @+$7F                                   ; $6866: $28 $7D

    ld l, b                                       ; $6868: $68
    jr z, jr_028_67F6                             ; $6869: $28 $8B

    ld l, b                                       ; $686B: $68
    jr z, jr_028_6807                             ; $686C: $28 $99

    ld l, b                                       ; $686E: $68
    dec h                                         ; $686F: $25
    ld [bc], a                                    ; $6870: $02
    ld l, h                                       ; $6871: $6C
    ld [de], a                                    ; $6872: $12
    ld c, h                                       ; $6873: $4C
    inc hl                                        ; $6874: $23
    ld b, b                                       ; $6875: $40
    ld l, $09                                     ; $6876: $2E $09
    inc bc                                        ; $6878: $03
    ld [de], a                                    ; $6879: $12
    inc hl                                        ; $687A: $23
    ld bc, $2527                                  ; $687B: $01 $27 $25
    ld [bc], a                                    ; $687E: $02
    ld l, h                                       ; $687F: $6C
    inc de                                        ; $6880: $13
    ld c, h                                       ; $6881: $4C

jr_028_6882:
    inc hl                                        ; $6882: $23
    ld b, b                                       ; $6883: $40
    ld l, $09                                     ; $6884: $2E $09
    ld d, $13                                     ; $6886: $16 $13
    ld h, $01                                     ; $6888: $26 $01
    daa                                           ; $688A: $27
    dec h                                         ; $688B: $25
    ld [bc], a                                    ; $688C: $02
    ld l, h                                       ; $688D: $6C
    inc d                                         ; $688E: $14

jr_028_688F:
    ld c, h                                       ; $688F: $4C
    inc hl                                        ; $6890: $23
    ld b, b                                       ; $6891: $40
    ld l, $09                                     ; $6892: $2E $09
    rla                                           ; $6894: $17

jr_028_6895:
    inc d                                         ; $6895: $14
    add hl, hl                                    ; $6896: $29
    ld bc, $2527                                  ; $6897: $01 $27 $25

jr_028_689A:
    ld [bc], a                                    ; $689A: $02
    ld l, h                                       ; $689B: $6C
    dec d                                         ; $689C: $15
    ld c, h                                       ; $689D: $4C
    inc hl                                        ; $689E: $23
    ld b, b                                       ; $689F: $40
    ld l, $09                                     ; $68A0: $2E $09
    rra                                           ; $68A2: $1F
    dec d                                         ; $68A3: $15
    dec hl                                        ; $68A4: $2B
    ld bc, $0127                                  ; $68A5: $01 $27 $01
    dec de                                        ; $68A8: $1B
    ld h, $AC                                     ; $68A9: $26 $AC
    or d                                          ; $68AB: $B2
    and d                                         ; $68AC: $A2
    ld bc, $044B                                  ; $68AD: $01 $4B $04
    jr z, jr_028_68BD                             ; $68B0: $28 $0B

    nop                                           ; $68B2: $00
    ld h, c                                       ; $68B3: $61
    ld l, c                                       ; $68B4: $69
    jr z, @+$0E                                   ; $68B5: $28 $0C

jr_028_68B7:
    nop                                           ; $68B7: $00
    ld h, c                                       ; $68B8: $61
    ld l, c                                       ; $68B9: $69
    jr z, jr_028_68CA                             ; $68BA: $28 $0E

    nop                                           ; $68BC: $00

jr_028_68BD:
    ret nz                                        ; $68BD: $C0

    ld l, b                                       ; $68BE: $68
    rst $38                                       ; $68BF: $FF
    sub e                                         ; $68C0: $93
    ld h, l                                       ; $68C1: $65
    jp c, Jump_028_4F47                           ; $68C2: $DA $47 $4F

    ld h, h                                       ; $68C5: $64
    jp hl                                         ; $68C6: $E9


    ld c, c                                       ; $68C7: $49
    ld h, [hl]                                    ; $68C8: $66
    ret nz                                        ; $68C9: $C0

jr_028_68CA:
    ld e, h                                       ; $68CA: $5C
    ld hl, $0005                                  ; $68CB: $21 $05 $00
    add c                                         ; $68CE: $81
    ld e, l                                       ; $68CF: $5D
    inc bc                                        ; $68D0: $03
    ld [de], a                                    ; $68D1: $12

jr_028_68D2:
    add a                                         ; $68D2: $87
    db $D3                                        ; $68D3: $D3

jr_028_68D4:
    nop                                           ; $68D4: $00
    jr nz, jr_028_68D2                            ; $68D5: $20 $FB

    ld d, b                                       ; $68D7: $50
    ld [hl+], a                                   ; $68D8: $22
    dec b                                         ; $68D9: $05
    ld b, b                                       ; $68DA: $40
    dec b                                         ; $68DB: $05
    add hl, bc                                    ; $68DC: $09
    adc $63                                       ; $68DD: $CE $63
    ld bc, $3301                                  ; $68DF: $01 $01 $33
    ret nc                                        ; $68E2: $D0

    xor b                                         ; $68E3: $A8
    ld l, $E3                                     ; $68E4: $2E $E3
    ld d, l                                       ; $68E6: $55
    ld [hl+], a                                   ; $68E7: $22
    dec b                                         ; $68E8: $05
    ld b, b                                       ; $68E9: $40
    dec b                                         ; $68EA: $05
    ld a, [bc]                                    ; $68EB: $0A
    adc $63                                       ; $68EC: $CE $63
    ld bc, $3301                                  ; $68EE: $01 $01 $33
    ret nc                                        ; $68F1: $D0

    xor b                                         ; $68F2: $A8
    ld l, $E3                                     ; $68F3: $2E $E3
    ld d, l                                       ; $68F5: $55
    ld [hl+], a                                   ; $68F6: $22
    dec b                                         ; $68F7: $05
    ld b, b                                       ; $68F8: $40
    dec b                                         ; $68F9: $05
    dec bc                                        ; $68FA: $0B
    adc $63                                       ; $68FB: $CE $63
    ld bc, $3301                                  ; $68FD: $01 $01 $33
    ret nc                                        ; $6900: $D0

    xor b                                         ; $6901: $A8
    ld l, $E3                                     ; $6902: $2E $E3
    ld d, l                                       ; $6904: $55
    ld [hl+], a                                   ; $6905: $22
    dec b                                         ; $6906: $05
    ld b, b                                       ; $6907: $40
    ld l, e                                       ; $6908: $6B
    ld b, $0D                                     ; $6909: $06 $0D
    ld [hl], b                                    ; $690B: $70
    ld e, e                                       ; $690C: $5B
    add b                                         ; $690D: $80
    adc d                                         ; $690E: $8A
    nop                                           ; $690F: $00
    dec bc                                        ; $6910: $0B
    nop                                           ; $6911: $00
    dec bc                                        ; $6912: $0B
    add hl, bc                                    ; $6913: $09
    dec bc                                        ; $6914: $0B
    ld a, [bc]                                    ; $6915: $0A
    dec bc                                        ; $6916: $0B
    dec bc                                        ; $6917: $0B
    nop                                           ; $6918: $00
    add d                                         ; $6919: $82
    rra                                           ; $691A: $1F
    ld hl, $1343                                  ; $691B: $21 $43 $13
    inc b                                         ; $691E: $04
    dec b                                         ; $691F: $05
    ld c, $28                                     ; $6920: $0E $28
    dec l                                         ; $6922: $2D
    ld l, c                                       ; $6923: $69
    ld a, [hl]                                    ; $6924: $7E
    inc b                                         ; $6925: $04
    ret nc                                        ; $6926: $D0

    inc b                                         ; $6927: $04
    add hl, bc                                    ; $6928: $09
    ld sp, $15D4                                  ; $6929: $31 $D4 $15
    rla                                           ; $692C: $17
    ld l, b                                       ; $692D: $68
    ld l, c                                       ; $692E: $69
    ld e, h                                       ; $692F: $5C
    ld [hl], e                                    ; $6930: $73
    jp nc, Jump_028_7A7B                          ; $6931: $D2 $7B $7A

    ld b, e                                       ; $6934: $43
    ld de, $0504                                  ; $6935: $11 $04 $05
    rrca                                          ; $6938: $0F
    jr z, jr_028_6989                             ; $6939: $28 $4E

    ld l, c                                       ; $693B: $69
    ld a, a                                       ; $693C: $7F
    rlca                                          ; $693D: $07
    ret nc                                        ; $693E: $D0

    rlca                                          ; $693F: $07
    inc de                                        ; $6940: $13
    dec d                                         ; $6941: $15
    ret nc                                        ; $6942: $D0

    nop                                           ; $6943: $00
    dec d                                         ; $6944: $15
    ld a, a                                       ; $6945: $7F
    dec e                                         ; $6946: $1D
    ret nc                                        ; $6947: $D0

    inc bc                                        ; $6948: $03
    inc b                                         ; $6949: $04
    scf                                           ; $694A: $37
    db $D3                                        ; $694B: $D3
    db $10                                        ; $694C: $10
    rla                                           ; $694D: $17
    ld b, e                                       ; $694E: $43
    inc de                                        ; $694F: $13
    inc b                                         ; $6950: $04
    dec b                                         ; $6951: $05
    db $10                                        ; $6952: $10
    jr z, jr_028_69B4                             ; $6953: $28 $5F

    ld l, c                                       ; $6955: $69
    ld a, a                                       ; $6956: $7F
    ld a, [hl]                                    ; $6957: $7E
    call nc, $0D09                                ; $6958: $D4 $09 $0D
    ld b, c                                       ; $695B: $41
    pop de                                        ; $695C: $D1
    ld b, $15                                     ; $695D: $06 $15
    sub h                                         ; $695F: $94
    ld b, d                                       ; $6960: $42
    sub e                                         ; $6961: $93
    ld h, l                                       ; $6962: $65
    jp c, Jump_028_4F47                           ; $6963: $DA $47 $4F

    ld h, h                                       ; $6966: $64
    jp hl                                         ; $6967: $E9


    ld c, c                                       ; $6968: $49
    ld h, [hl]                                    ; $6969: $66
    ret nz                                        ; $696A: $C0

    ld e, h                                       ; $696B: $5C
    ld hl, $0005                                  ; $696C: $21 $05 $00
    add c                                         ; $696F: $81
    ld e, l                                       ; $6970: $5D
    inc bc                                        ; $6971: $03
    ld [de], a                                    ; $6972: $12

jr_028_6973:
    add a                                         ; $6973: $87
    db $D3                                        ; $6974: $D3
    nop                                           ; $6975: $00
    jr nz, jr_028_6973                            ; $6976: $20 $FB

    ld d, b                                       ; $6978: $50
    ld [hl+], a                                   ; $6979: $22
    dec b                                         ; $697A: $05
    ld b, b                                       ; $697B: $40
    dec b                                         ; $697C: $05
    add hl, bc                                    ; $697D: $09
    adc $63                                       ; $697E: $CE $63
    ld bc, $3301                                  ; $6980: $01 $01 $33
    ret nc                                        ; $6983: $D0

    xor b                                         ; $6984: $A8
    ld l, $E3                                     ; $6985: $2E $E3
    ld d, l                                       ; $6987: $55
    ld [hl+], a                                   ; $6988: $22

jr_028_6989:
    dec b                                         ; $6989: $05
    ld b, b                                       ; $698A: $40
    dec b                                         ; $698B: $05
    ld a, [bc]                                    ; $698C: $0A
    adc $63                                       ; $698D: $CE $63
    ld bc, $3301                                  ; $698F: $01 $01 $33
    ret nc                                        ; $6992: $D0

    xor b                                         ; $6993: $A8

jr_028_6994:
    ld l, $E3                                     ; $6994: $2E $E3
    ld d, l                                       ; $6996: $55
    ld [hl+], a                                   ; $6997: $22
    dec b                                         ; $6998: $05
    ld b, b                                       ; $6999: $40
    dec b                                         ; $699A: $05
    dec bc                                        ; $699B: $0B
    adc $63                                       ; $699C: $CE $63
    ld bc, $3301                                  ; $699E: $01 $01 $33
    ret nc                                        ; $69A1: $D0

    xor b                                         ; $69A2: $A8
    ld l, $E3                                     ; $69A3: $2E $E3
    ld d, l                                       ; $69A5: $55
    ld [hl+], a                                   ; $69A6: $22
    dec b                                         ; $69A7: $05
    ld b, b                                       ; $69A8: $40
    ld l, e                                       ; $69A9: $6B
    ld b, $0D                                     ; $69AA: $06 $0D
    ld [hl], b                                    ; $69AC: $70
    ld e, e                                       ; $69AD: $5B
    add b                                         ; $69AE: $80

jr_028_69AF:
    adc d                                         ; $69AF: $8A
    nop                                           ; $69B0: $00
    dec bc                                        ; $69B1: $0B
    nop                                           ; $69B2: $00
    dec bc                                        ; $69B3: $0B

jr_028_69B4:
    add hl, bc                                    ; $69B4: $09

jr_028_69B5:
    dec bc                                        ; $69B5: $0B
    ld a, [bc]                                    ; $69B6: $0A
    dec bc                                        ; $69B7: $0B
    dec bc                                        ; $69B8: $0B
    nop                                           ; $69B9: $00
    add d                                         ; $69BA: $82
    rra                                           ; $69BB: $1F
    ld hl, $6968                                  ; $69BC: $21 $68 $69
    ld e, h                                       ; $69BF: $5C
    ld [hl], e                                    ; $69C0: $73
    jp nc, Jump_028_7A7B                          ; $69C1: $D2 $7B $7A

    ld a, a                                       ; $69C4: $7F
    rlca                                          ; $69C5: $07
    ret nc                                        ; $69C6: $D0

    rlca                                          ; $69C7: $07
    inc de                                        ; $69C8: $13
    dec d                                         ; $69C9: $15
    ret nc                                        ; $69CA: $D0

    nop                                           ; $69CB: $00
    dec d                                         ; $69CC: $15
    ld a, a                                       ; $69CD: $7F
    dec e                                         ; $69CE: $1D
    ret nc                                        ; $69CF: $D0

    inc bc                                        ; $69D0: $03
    inc b                                         ; $69D1: $04
    scf                                           ; $69D2: $37
    db $D3                                        ; $69D3: $D3
    db $10                                        ; $69D4: $10
    rla                                           ; $69D5: $17
    rra                                           ; $69D6: $1F
    ld hl, $4294                                  ; $69D7: $21 $94 $42
    rlca                                          ; $69DA: $07

jr_028_69DB:
    nop                                           ; $69DB: $00
    ld l, e                                       ; $69DC: $6B
    ld c, d                                       ; $69DD: $4A
    add hl, bc                                    ; $69DE: $09
    nop                                           ; $69DF: $00
    jr nz, jr_028_69AF                            ; $69E0: $20 $CD

    ld c, a                                       ; $69E2: $4F
    ld b, b                                       ; $69E3: $40
    ld [$0009], sp                                ; $69E4: $08 $09 $00
    jr nz, jr_028_6994                            ; $69E7: $20 $AB

    ld d, b                                       ; $69E9: $50
    ld e, e                                       ; $69EA: $5B
    jr z, jr_028_69B5                             ; $69EB: $28 $C8

    ld h, e                                       ; $69ED: $63
    ld h, d                                       ; $69EE: $62
    ld b, $83                                     ; $69EF: $06 $83
    inc a                                         ; $69F1: $3C
    ld [bc], a                                    ; $69F2: $02
    cp $46                                        ; $69F3: $FE $46
    nop                                           ; $69F5: $00
    rst $38                                       ; $69F6: $FF
    jr nz, jr_028_69F9                            ; $69F7: $20 $00

jr_028_69F9:
    nop                                           ; $69F9: $00
    nop                                           ; $69FA: $00
    ld a, l                                       ; $69FB: $7D
    adc c                                         ; $69FC: $89
    pop bc                                        ; $69FD: $C1
    ld [bc], a                                    ; $69FE: $02
    ld e, e                                       ; $69FF: $5B
    jr z, @+$15                                   ; $6A00: $28 $13

    ld h, h                                       ; $6A02: $64
    ld h, d                                       ; $6A03: $62
    ld bc, $0007                                  ; $6A04: $01 $07 $00
    add c                                         ; $6A07: $81
    ld e, l                                       ; $6A08: $5D
    ld b, d                                       ; $6A09: $42
    xor h                                         ; $6A0A: $AC
    or d                                          ; $6A0B: $B2
    and d                                         ; $6A0C: $A2
    ld bc, $2896                                  ; $6A0D: $01 $96 $28
    and a                                         ; $6A10: $A7
    ld l, b                                       ; $6A11: $68
    sub e                                         ; $6A12: $93
    ld h, l                                       ; $6A13: $65
    jp c, Jump_028_4F47                           ; $6A14: $DA $47 $4F

    ld h, h                                       ; $6A17: $64
    jp hl                                         ; $6A18: $E9


    ld c, c                                       ; $6A19: $49
    ld h, [hl]                                    ; $6A1A: $66
    ret nz                                        ; $6A1B: $C0

    ld e, h                                       ; $6A1C: $5C
    ld hl, $6968                                  ; $6A1D: $21 $68 $69
    ld e, h                                       ; $6A20: $5C
    ld [hl], e                                    ; $6A21: $73
    jp nc, Jump_028_7A7B                          ; $6A22: $D2 $7B $7A

    dec b                                         ; $6A25: $05
    nop                                           ; $6A26: $00
    ld l, e                                       ; $6A27: $6B
    ld c, d                                       ; $6A28: $4A
    jr @+$22                                      ; $6A29: $18 $20

    ld e, b                                       ; $6A2B: $58
    sub $00                                       ; $6A2C: $D6 $00
    jr nz, jr_028_69DB                            ; $6A2E: $20 $AB

    ld d, b                                       ; $6A30: $50
    ld [hl+], a                                   ; $6A31: $22
    dec b                                         ; $6A32: $05
    ld b, b                                       ; $6A33: $40
    dec b                                         ; $6A34: $05
    ld [bc], a                                    ; $6A35: $02
    ld l, e                                       ; $6A36: $6B
    ld c, d                                       ; $6A37: $4A
    jr jr_028_6A58                                ; $6A38: $18 $1E

    db $F4                                        ; $6A3A: $F4
    push de                                       ; $6A3B: $D5
    nop                                           ; $6A3C: $00
    jr z, jr_028_6A42                             ; $6A3D: $28 $03

    ld l, h                                       ; $6A3F: $6C
    ld [hl+], a                                   ; $6A40: $22
    dec b                                         ; $6A41: $05

jr_028_6A42:
    ld b, b                                       ; $6A42: $40
    dec b                                         ; $6A43: $05
    inc bc                                        ; $6A44: $03
    ld l, e                                       ; $6A45: $6B
    ld c, d                                       ; $6A46: $4A
    ld d, $22                                     ; $6A47: $16 $22
    cp d                                          ; $6A49: $BA
    sub $00                                       ; $6A4A: $D6 $00
    jr z, @-$13                                   ; $6A4C: $28 $EB

    ld l, h                                       ; $6A4E: $6C
    ld [hl+], a                                   ; $6A4F: $22
    dec b                                         ; $6A50: $05

jr_028_6A51:
    ld b, b                                       ; $6A51: $40
    dec b                                         ; $6A52: $05
    inc b                                         ; $6A53: $04
    ld l, e                                       ; $6A54: $6B
    ld c, d                                       ; $6A55: $4A
    add hl, de                                    ; $6A56: $19

jr_028_6A57:
    inc hl                                        ; $6A57: $23

jr_028_6A58:
    rst $28                                       ; $6A58: $EF
    sub $29                                       ; $6A59: $D6 $29
    jr z, jr_028_6A57                             ; $6A5B: $28 $FA

    ld l, h                                       ; $6A5D: $6C
    ld [hl+], a                                   ; $6A5E: $22
    dec b                                         ; $6A5F: $05
    ld b, b                                       ; $6A60: $40
    dec b                                         ; $6A61: $05
    dec b                                         ; $6A62: $05
    ld l, e                                       ; $6A63: $6B
    ld c, d                                       ; $6A64: $4A
    rla                                           ; $6A65: $17
    ld [hl+], a                                   ; $6A66: $22
    cp e                                          ; $6A67: $BB
    sub $4F                                       ; $6A68: $D6 $4F
    jr z, jr_028_6AB7                             ; $6A6A: $28 $4B

    ld l, l                                       ; $6A6C: $6D
    ld [hl+], a                                   ; $6A6D: $22
    dec b                                         ; $6A6E: $05
    ld b, b                                       ; $6A6F: $40
    dec b                                         ; $6A70: $05
    ld b, $6B                                     ; $6A71: $06 $6B
    ld c, d                                       ; $6A73: $4A
    jr jr_028_6A99                                ; $6A74: $18 $23

    xor $D6                                       ; $6A76: $EE $D6
    ld a, d                                       ; $6A78: $7A
    jr z, jr_028_6AE9                             ; $6A79: $28 $6E

    ld l, l                                       ; $6A7B: $6D
    ld [hl+], a                                   ; $6A7C: $22
    dec b                                         ; $6A7D: $05
    ld b, b                                       ; $6A7E: $40
    dec b                                         ; $6A7F: $05
    rlca                                          ; $6A80: $07
    ld l, e                                       ; $6A81: $6B
    ld c, d                                       ; $6A82: $4A
    jr @+$1F                                      ; $6A83: $18 $1D

    jp nz, $A5D5                                  ; $6A85: $C2 $D5 $A5

    ld de, $73BD                                  ; $6A88: $11 $BD $73
    ld [hl+], a                                   ; $6A8B: $22
    dec b                                         ; $6A8C: $05
    ld b, b                                       ; $6A8D: $40
    dec b                                         ; $6A8E: $05
    ld [$4A6B], sp                                ; $6A8F: $08 $6B $4A
    jr jr_028_6AB4                                ; $6A92: $18 $20

    ld e, b                                       ; $6A94: $58
    sub $3D                                       ; $6A95: $D6 $3D
    jr z, jr_028_6A51                             ; $6A97: $28 $B8

jr_028_6A99:
    ld l, e                                       ; $6A99: $6B
    ld [hl+], a                                   ; $6A9A: $22
    dec b                                         ; $6A9B: $05
    ld b, b                                       ; $6A9C: $40
    dec b                                         ; $6A9D: $05
    add hl, bc                                    ; $6A9E: $09
    adc $63                                       ; $6A9F: $CE $63
    ld bc, $3301                                  ; $6AA1: $01 $01 $33
    ret nc                                        ; $6AA4: $D0

    xor l                                         ; $6AA5: $AD
    ld l, $E3                                     ; $6AA6: $2E $E3
    ld d, l                                       ; $6AA8: $55
    ld [hl+], a                                   ; $6AA9: $22
    dec b                                         ; $6AAA: $05
    ld b, b                                       ; $6AAB: $40
    dec b                                         ; $6AAC: $05
    ld a, [bc]                                    ; $6AAD: $0A
    adc $63                                       ; $6AAE: $CE $63
    ld bc, $3301                                  ; $6AB0: $01 $01 $33
    ret nc                                        ; $6AB3: $D0

jr_028_6AB4:
    xor l                                         ; $6AB4: $AD
    ld l, $E3                                     ; $6AB5: $2E $E3

jr_028_6AB7:
    ld d, l                                       ; $6AB7: $55
    ld [hl+], a                                   ; $6AB8: $22
    dec b                                         ; $6AB9: $05
    ld b, b                                       ; $6ABA: $40
    dec b                                         ; $6ABB: $05
    dec bc                                        ; $6ABC: $0B
    adc $63                                       ; $6ABD: $CE $63
    ld bc, $3301                                  ; $6ABF: $01 $01 $33
    ret nc                                        ; $6AC2: $D0

    xor l                                         ; $6AC3: $AD
    ld l, $E3                                     ; $6AC4: $2E $E3
    ld d, l                                       ; $6AC6: $55
    ld [hl+], a                                   ; $6AC7: $22
    dec b                                         ; $6AC8: $05
    ld b, b                                       ; $6AC9: $40
    ld l, e                                       ; $6ACA: $6B
    add hl, hl                                    ; $6ACB: $29
    ld a, [bc]                                    ; $6ACC: $0A
    ld [hl], b                                    ; $6ACD: $70
    ld l, e                                       ; $6ACE: $6B
    nop                                           ; $6ACF: $00
    add b                                         ; $6AD0: $80
    nop                                           ; $6AD1: $00
    ld l, e                                       ; $6AD2: $6B
    dec c                                         ; $6AD3: $0D
    ld a, [bc]                                    ; $6AD4: $0A
    nop                                           ; $6AD5: $00
    ld l, [hl]                                    ; $6AD6: $6E
    nop                                           ; $6AD7: $00
    add e                                         ; $6AD8: $83
    nop                                           ; $6AD9: $00
    ld l, e                                       ; $6ADA: $6B
    jr z, jr_028_6AEA                             ; $6ADB: $28 $0D

    ret nz                                        ; $6ADD: $C0

    ld h, [hl]                                    ; $6ADE: $66
    ret nc                                        ; $6ADF: $D0

    add e                                         ; $6AE0: $83
    nop                                           ; $6AE1: $00
    ld l, e                                       ; $6AE2: $6B
    dec hl                                        ; $6AE3: $2B
    dec bc                                        ; $6AE4: $0B
    ret nc                                        ; $6AE5: $D0

    ld c, c                                       ; $6AE6: $49
    and b                                         ; $6AE7: $A0
    add a                                         ; $6AE8: $87

jr_028_6AE9:
    nop                                           ; $6AE9: $00

jr_028_6AEA:
    ld l, e                                       ; $6AEA: $6B
    ld [$600D], sp                                ; $6AEB: $08 $0D $60
    ld c, l                                       ; $6AEE: $4D
    ld d, b                                       ; $6AEF: $50
    adc d                                         ; $6AF0: $8A
    nop                                           ; $6AF1: $00
    ld l, e                                       ; $6AF2: $6B
    ld b, $0D                                     ; $6AF3: $06 $0D
    ld [hl], b                                    ; $6AF5: $70
    ld e, e                                       ; $6AF6: $5B
    ret nc                                        ; $6AF7: $D0

    adc d                                         ; $6AF8: $8A
    nop                                           ; $6AF9: $00
    dec bc                                        ; $6AFA: $0B
    ld [bc], a                                    ; $6AFB: $02
    dec bc                                        ; $6AFC: $0B
    ld [$090B], sp                                ; $6AFD: $08 $0B $09
    dec bc                                        ; $6B00: $0B
    ld a, [bc]                                    ; $6B01: $0A
    dec bc                                        ; $6B02: $0B
    dec bc                                        ; $6B03: $0B

jr_028_6B04:
    add h                                         ; $6B04: $84
    jr jr_028_6B24                                ; $6B05: $18 $1D

    ld l, a                                       ; $6B07: $6F
    rrca                                          ; $6B08: $0F
    rst $38                                       ; $6B09: $FF
    ld a, a                                       ; $6B0A: $7F
    rra                                           ; $6B0B: $1F
    jr @-$6A                                      ; $6B0C: $18 $94

    halt                                          ; $6B0E: $76
    and b                                         ; $6B0F: $A0
    rrca                                          ; $6B10: $0F
    ld h, b                                       ; $6B11: $60
    inc b                                         ; $6B12: $04
    rra                                           ; $6B13: $1F
    ld hl, $296B                                  ; $6B14: $21 $6B $29
    dec bc                                        ; $6B17: $0B
    jr nc, jr_028_6B69                            ; $6B18: $30 $4F

    nop                                           ; $6B1A: $00
    add b                                         ; $6B1B: $80

jr_028_6B1C:
    nop                                           ; $6B1C: $00
    ld l, e                                       ; $6B1D: $6B
    ld h, $0B                                     ; $6B1E: $26 $0B
    ld d, b                                       ; $6B20: $50
    ld d, h                                       ; $6B21: $54
    sub b                                         ; $6B22: $90
    add d                                         ; $6B23: $82

jr_028_6B24:
    nop                                           ; $6B24: $00
    ld l, e                                       ; $6B25: $6B
    dec hl                                        ; $6B26: $2B
    dec bc                                        ; $6B27: $0B
    jr nz, jr_028_6B71                            ; $6B28: $20 $47

jr_028_6B2A:
    ldh a, [$84]                                  ; $6B2A: $F0 $84
    nop                                           ; $6B2C: $00
    ld h, d                                       ; $6B2D: $62
    inc c                                         ; $6B2E: $0C
    ld b, b                                       ; $6B2F: $40
    ld d, b                                       ; $6B30: $50
    ld b, l                                       ; $6B31: $45
    ld [de], a                                    ; $6B32: $12
    ld a, c                                       ; $6B33: $79
    ld e, [hl]                                    ; $6B34: $5E
    ld b, d                                       ; $6B35: $42
    dec d                                         ; $6B36: $15
    jr nz, jr_028_6BB4                            ; $6B37: $20 $7B

    ld d, [hl]                                    ; $6B39: $56
    inc d                                         ; $6B3A: $14
    jr nz, jr_028_6B68                            ; $6B3B: $20 $2B

    ld d, l                                       ; $6B3D: $55
    ld [$8520], sp                                ; $6B3E: $08 $20 $85

jr_028_6B41:
    ld d, h                                       ; $6B41: $54
    ld b, b                                       ; $6B42: $40
    jr nz, jr_028_6B04                            ; $6B43: $20 $BF

    ld d, b                                       ; $6B45: $50
    db $10                                        ; $6B46: $10
    jr nz, jr_028_6B1C                            ; $6B47: $20 $D3

    ld d, b                                       ; $6B49: $50
    ld [$B520], sp                                ; $6B4A: $08 $20 $B5
    ld d, b                                       ; $6B4D: $50
    ld [$DD20], sp                                ; $6B4E: $08 $20 $DD
    ld d, b                                       ; $6B51: $50

jr_028_6B52:
    ld [$C920], sp                                ; $6B52: $08 $20 $C9
    ld d, b                                       ; $6B55: $50
    ld [$F120], sp                                ; $6B56: $08 $20 $F1

jr_028_6B59:
    ld d, b                                       ; $6B59: $50
    nop                                           ; $6B5A: $00
    nop                                           ; $6B5B: $00
    ld h, b                                       ; $6B5C: $60

jr_028_6B5D:
    inc b                                         ; $6B5D: $04
    dec d                                         ; $6B5E: $15
    jr nz, jr_028_6B2A                            ; $6B5F: $20 $C9

    ld d, b                                       ; $6B61: $50
    db $10                                        ; $6B62: $10
    jr nz, jr_028_6B52                            ; $6B63: $20 $ED

jr_028_6B65:
    ld c, a                                       ; $6B65: $4F
    jr nz, jr_028_6B88                            ; $6B66: $20 $20

jr_028_6B68:
    xor e                                         ; $6B68: $AB

jr_028_6B69:
    ld d, b                                       ; $6B69: $50
    ld b, [hl]                                    ; $6B6A: $46

jr_028_6B6B:
    nop                                           ; $6B6B: $00
    dec bc                                        ; $6B6C: $0B
    inc bc                                        ; $6B6D: $03
    dec bc                                        ; $6B6E: $0B
    inc b                                         ; $6B6F: $04
    dec bc                                        ; $6B70: $0B

jr_028_6B71:
    dec b                                         ; $6B71: $05
    dec bc                                        ; $6B72: $0B
    ld b, $83                                     ; $6B73: $06 $83
    jr nz, jr_028_6B77                            ; $6B75: $20 $00

jr_028_6B77:
    ld bc, $6000                                  ; $6B77: $01 $00 $60
    ld b, $15                                     ; $6B7A: $06 $15
    jr nz, jr_028_6B65                            ; $6B7C: $20 $E7

    ld d, b                                       ; $6B7E: $50
    inc b                                         ; $6B7F: $04
    jr nz, jr_028_6B41                            ; $6B80: $20 $BF

    ld d, b                                       ; $6B82: $50
    inc b                                         ; $6B83: $04
    jr nz, jr_028_6B59                            ; $6B84: $20 $D3

    ld d, b                                       ; $6B86: $50
    inc b                                         ; $6B87: $04

jr_028_6B88:
    jr nz, @-$49                                  ; $6B88: $20 $B5

    ld d, b                                       ; $6B8A: $50
    jr nz, jr_028_6BAD                            ; $6B8B: $20 $20

    cp a                                          ; $6B8D: $BF
    ld d, b                                       ; $6B8E: $50
    jr nz, jr_028_6BB1                            ; $6B8F: $20 $20

    or l                                          ; $6B91: $B5
    ld d, b                                       ; $6B92: $50
    jr nz, @+$22                                  ; $6B93: $20 $20

    ret                                           ; $6B95: $C9


    ld d, b                                       ; $6B96: $50
    jr nz, jr_028_6BB9                            ; $6B97: $20 $20

    or l                                          ; $6B99: $B5
    ld d, b                                       ; $6B9A: $50
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    ld h, b                                       ; $6B9D: $60
    rlca                                          ; $6B9E: $07
    inc d                                         ; $6B9F: $14
    jr nz, jr_028_6B6B                            ; $6BA0: $20 $C9

    ld d, b                                       ; $6BA2: $50
    ld h, d                                       ; $6BA3: $62
    dec bc                                        ; $6BA4: $0B
    dec d                                         ; $6BA5: $15

jr_028_6BA6:
    jr nz, jr_028_6B5D                            ; $6BA6: $20 $B5

    ld d, b                                       ; $6BA8: $50
    ld [$BF20], sp                                ; $6BA9: $08 $20 $BF
    ld d, b                                       ; $6BAC: $50

jr_028_6BAD:
    nop                                           ; $6BAD: $00
    nop                                           ; $6BAE: $00
    ld h, d                                       ; $6BAF: $62
    inc c                                         ; $6BB0: $0C

jr_028_6BB1:
    ld b, b                                       ; $6BB1: $40
    jr jr_028_6BC8                                ; $6BB2: $18 $14

jr_028_6BB4:
    jr nz, jr_028_6BD3                            ; $6BB4: $20 $1D

    ld d, b                                       ; $6BB6: $50
    ld b, d                                       ; $6BB7: $42
    inc d                                         ; $6BB8: $14

jr_028_6BB9:
    jr nz, jr_028_6BA6                            ; $6BB9: $20 $EB

    ld e, l                                       ; $6BBB: $5D
    ld h, b                                       ; $6BBC: $60
    ld bc, $2014                                  ; $6BBD: $01 $14 $20
    add hl, hl                                    ; $6BC0: $29
    ld e, [hl]                                    ; $6BC1: $5E
    ld b, b                                       ; $6BC2: $40
    ld c, b                                       ; $6BC3: $48
    dec bc                                        ; $6BC4: $0B
    nop                                           ; $6BC5: $00
    ld h, b                                       ; $6BC6: $60
    ld [bc], a                                    ; $6BC7: $02

jr_028_6BC8:
    inc c                                         ; $6BC8: $0C
    nop                                           ; $6BC9: $00

jr_028_6BCA:
    dec b                                         ; $6BCA: $05
    nop                                           ; $6BCB: $00
    ld l, e                                       ; $6BCC: $6B
    ld c, d                                       ; $6BCD: $4A
    jr @+$1E                                      ; $6BCE: $18 $1C

    sub b                                         ; $6BD0: $90
    push de                                       ; $6BD1: $D5
    nop                                           ; $6BD2: $00

jr_028_6BD3:
    jr z, jr_028_6C0B                             ; $6BD3: $28 $36

    ld l, e                                       ; $6BD5: $6B
    ld [hl+], a                                   ; $6BD6: $22
    dec b                                         ; $6BD7: $05
    ld b, b                                       ; $6BD8: $40
    inc d                                         ; $6BD9: $14
    jr nz, jr_028_6BF1                            ; $6BDA: $20 $15

    ld e, [hl]                                    ; $6BDC: $5E
    ld h, d                                       ; $6BDD: $62
    inc bc                                        ; $6BDE: $03
    dec d                                         ; $6BDF: $15
    jr nz, jr_028_6BE7                            ; $6BE0: $20 $05

    ld e, [hl]                                    ; $6BE2: $5E
    jr nz, jr_028_6C05                            ; $6BE3: $20 $20

    push af                                       ; $6BE5: $F5
    ld e, l                                       ; $6BE6: $5D

jr_028_6BE7:
    ld b, b                                       ; $6BE7: $40
    jr nz, jr_028_6BEF                            ; $6BE8: $20 $05

    ld e, [hl]                                    ; $6BEA: $5E

jr_028_6BEB:
    ld l, $20                                     ; $6BEB: $2E $20
    push af                                       ; $6BED: $F5
    ld e, l                                       ; $6BEE: $5D

jr_028_6BEF:
    nop                                           ; $6BEF: $00
    nop                                           ; $6BF0: $00

jr_028_6BF1:
    ld h, b                                       ; $6BF1: $60
    inc bc                                        ; $6BF2: $03
    inc d                                         ; $6BF3: $14
    jr nz, jr_028_6BEB                            ; $6BF4: $20 $F5

    ld e, l                                       ; $6BF6: $5D
    ld h, d                                       ; $6BF7: $62
    dec b                                         ; $6BF8: $05
    dec bc                                        ; $6BF9: $0B
    nop                                           ; $6BFA: $00
    inc d                                         ; $6BFB: $14
    jr nz, jr_028_6C6A                            ; $6BFC: $20 $6C

jr_028_6BFE:
    ld e, [hl]                                    ; $6BFE: $5E
    ld h, d                                       ; $6BFF: $62
    ld b, $19                                     ; $6C00: $06 $19
    ld b, d                                       ; $6C02: $42
    dec d                                         ; $6C03: $15
    rrca                                          ; $6C04: $0F

jr_028_6C05:
    sub a                                         ; $6C05: $97
    ld c, b                                       ; $6C06: $48
    ld b, b                                       ; $6C07: $40
    rrca                                          ; $6C08: $0F
    rst $20                                       ; $6C09: $E7
    ld c, b                                       ; $6C0A: $48

jr_028_6C0B:
    db $10                                        ; $6C0B: $10
    rrca                                          ; $6C0C: $0F
    sub a                                         ; $6C0D: $97
    ld c, b                                       ; $6C0E: $48
    ld b, b                                       ; $6C0F: $40
    nop                                           ; $6C10: $00
    dec bc                                        ; $6C11: $0B
    rlca                                          ; $6C12: $07
    add e                                         ; $6C13: $83
    jr nc, jr_028_6C16                            ; $6C14: $30 $00

jr_028_6C16:
    db $FC                                        ; $6C16: $FC
    nop                                           ; $6C17: $00
    ld b, b                                       ; $6C18: $40
    db $10                                        ; $6C19: $10
    ld e, d                                       ; $6C1A: $5A
    jr z, jr_028_6BB9                             ; $6C1B: $28 $9C

    ld l, l                                       ; $6C1D: $6D
    ld a, a                                       ; $6C1E: $7F
    add hl, de                                    ; $6C1F: $19
    ret nc                                        ; $6C20: $D0

    inc bc                                        ; $6C21: $03
    inc de                                        ; $6C22: $13
    rla                                           ; $6C23: $17
    ret nc                                        ; $6C24: $D0

    nop                                           ; $6C25: $00
    rla                                           ; $6C26: $17
    dec de                                        ; $6C27: $1B
    db $10                                        ; $6C28: $10
    ld b, b                                       ; $6C29: $40
    ld b, b                                       ; $6C2A: $40
    ld e, d                                       ; $6C2B: $5A
    jr z, jr_028_6BCA                             ; $6C2C: $28 $9C

    ld l, l                                       ; $6C2E: $6D
    ld a, a                                       ; $6C2F: $7F

jr_028_6C30:
    db $10                                        ; $6C30: $10
    ret nc                                        ; $6C31: $D0

    dec b                                         ; $6C32: $05
    inc de                                        ; $6C33: $13
    ld d, $D0                                     ; $6C34: $16 $D0
    nop                                           ; $6C36: $00
    ld d, $1B                                     ; $6C37: $16 $1B
    db $10                                        ; $6C39: $10
    ld b, b                                       ; $6C3A: $40
    ld b, b                                       ; $6C3B: $40
    ld e, d                                       ; $6C3C: $5A
    jr z, @-$62                                   ; $6C3D: $28 $9C

    ld l, l                                       ; $6C3F: $6D
    ld a, a                                       ; $6C40: $7F
    rlca                                          ; $6C41: $07
    ret nc                                        ; $6C42: $D0

    rlca                                          ; $6C43: $07
    inc de                                        ; $6C44: $13
    dec d                                         ; $6C45: $15
    ret nc                                        ; $6C46: $D0

    nop                                           ; $6C47: $00
    dec d                                         ; $6C48: $15
    ld b, b                                       ; $6C49: $40
    ld [$285A], sp                                ; $6C4A: $08 $5A $28
    adc c                                         ; $6C4D: $89
    ld l, l                                       ; $6C4E: $6D
    ld b, b                                       ; $6C4F: $40
    jr nz, jr_028_6CD1                            ; $6C50: $20 $7F

    dec e                                         ; $6C52: $1D
    ret nc                                        ; $6C53: $D0

    inc bc                                        ; $6C54: $03
    inc b                                         ; $6C55: $04
    scf                                           ; $6C56: $37
    db $D3                                        ; $6C57: $D3
    db $10                                        ; $6C58: $10
    rla                                           ; $6C59: $17
    ld b, b                                       ; $6C5A: $40
    ld [hl], b                                    ; $6C5B: $70
    add e                                         ; $6C5C: $83
    ld b, h                                       ; $6C5D: $44
    nop                                           ; $6C5E: $00
    inc b                                         ; $6C5F: $04
    nop                                           ; $6C60: $00
    ld e, e                                       ; $6C61: $5B
    jr z, jr_028_6C8B                             ; $6C62: $28 $27

    ld h, h                                       ; $6C64: $64
    ld d, [hl]                                    ; $6C65: $56

jr_028_6C66:
    ld bc, $0162                                  ; $6C66: $01 $62 $01
    ld d, [hl]                                    ; $6C69: $56

jr_028_6C6A:
    ld [bc], a                                    ; $6C6A: $02
    ld b, b                                       ; $6C6B: $40
    jr nz, jr_028_6C83                            ; $6C6C: $20 $15

    rrca                                          ; $6C6E: $0F
    rst $10                                       ; $6C6F: $D7
    ld c, b                                       ; $6C70: $48
    db $10                                        ; $6C71: $10
    rrca                                          ; $6C72: $0F
    or a                                          ; $6C73: $B7
    ld c, b                                       ; $6C74: $48
    ld [$7D0F], sp                                ; $6C75: $08 $0F $7D
    ld c, b                                       ; $6C78: $48
    nop                                           ; $6C79: $00
    nop                                           ; $6C7A: $00
    ld e, e                                       ; $6C7B: $5B
    jr z, jr_028_6BFE                             ; $6C7C: $28 $80

    ld h, h                                       ; $6C7E: $64
    ld h, d                                       ; $6C7F: $62
    ld [bc], a                                    ; $6C80: $02
    dec d                                         ; $6C81: $15
    rrca                                          ; $6C82: $0F

jr_028_6C83:
    rst $30                                       ; $6C83: $F7
    ld c, b                                       ; $6C84: $48
    ld l, $0F                                     ; $6C85: $2E $0F
    ld a, l                                       ; $6C87: $7D
    ld c, b                                       ; $6C88: $48
    nop                                           ; $6C89: $00
    nop                                           ; $6C8A: $00

jr_028_6C8B:
    ld h, d                                       ; $6C8B: $62
    inc bc                                        ; $6C8C: $03
    ld d, $0F                                     ; $6C8D: $16 $0F
    and a                                         ; $6C8F: $A7
    ld c, b                                       ; $6C90: $48
    jr nz, jr_028_6C93                            ; $6C91: $20 $00

jr_028_6C93:
    nop                                           ; $6C93: $00
    rrca                                          ; $6C94: $0F
    ld h, a                                       ; $6C95: $67
    ld c, c                                       ; $6C96: $49
    ld b, b                                       ; $6C97: $40

jr_028_6C98:
    nop                                           ; $6C98: $00
    nop                                           ; $6C99: $00
    rrca                                          ; $6C9A: $0F
    ld [hl], a                                    ; $6C9B: $77
    ld c, c                                       ; $6C9C: $49
    ld l, $00                                     ; $6C9D: $2E $00

jr_028_6C9F:
    rst $38                                       ; $6C9F: $FF
    rrca                                          ; $6CA0: $0F
    ld h, a                                       ; $6CA1: $67
    ld c, c                                       ; $6CA2: $49
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    ld e, e                                       ; $6CA7: $5B
    jr z, jr_028_6C30                             ; $6CA8: $28 $86

    ld h, l                                       ; $6CAA: $65
    ld h, d                                       ; $6CAB: $62
    inc b                                         ; $6CAC: $04
    ld d, [hl]                                    ; $6CAD: $56
    inc bc                                        ; $6CAE: $03
    inc d                                         ; $6CAF: $14
    rrca                                          ; $6CB0: $0F
    add a                                         ; $6CB1: $87
    ld c, c                                       ; $6CB2: $49
    ld e, e                                       ; $6CB3: $5B
    jr z, jr_028_6C66                             ; $6CB4: $28 $B0

    ld h, l                                       ; $6CB6: $65
    ld h, d                                       ; $6CB7: $62
    dec b                                         ; $6CB8: $05
    dec d                                         ; $6CB9: $15
    rrca                                          ; $6CBA: $0F
    and c                                         ; $6CBB: $A1
    ld c, c                                       ; $6CBC: $49
    db $10                                        ; $6CBD: $10
    rrca                                          ; $6CBE: $0F
    sub a                                         ; $6CBF: $97
    ld c, b                                       ; $6CC0: $48
    ld [$C70F], sp                                ; $6CC1: $08 $0F $C7
    ld c, b                                       ; $6CC4: $48
    ld [$A70F], sp                                ; $6CC5: $08 $0F $A7
    ld c, b                                       ; $6CC8: $48
    jr nz, jr_028_6CDA                            ; $6CC9: $20 $0F

    ld a, l                                       ; $6CCB: $7D
    ld c, b                                       ; $6CCC: $48
    jr nz, jr_028_6CDE                            ; $6CCD: $20 $0F

    and a                                         ; $6CCF: $A7
    ld c, b                                       ; $6CD0: $48

jr_028_6CD1:
    jr nz, @+$11                                  ; $6CD1: $20 $0F

    ld a, l                                       ; $6CD3: $7D
    ld c, b                                       ; $6CD4: $48
    jr nz, jr_028_6CD7                            ; $6CD5: $20 $00

jr_028_6CD7:
    ld e, e                                       ; $6CD7: $5B
    jr z, jr_028_6C98                             ; $6CD8: $28 $BE

jr_028_6CDA:
    ld h, l                                       ; $6CDA: $65
    ld h, d                                       ; $6CDB: $62
    ld b, $15                                     ; $6CDC: $06 $15

jr_028_6CDE:
    rrca                                          ; $6CDE: $0F
    xor e                                         ; $6CDF: $AB
    ld c, c                                       ; $6CE0: $49
    stop                                          ; $6CE1: $10 $00
    ld e, d                                       ; $6CE3: $5A
    jr z, jr_028_6C9F                             ; $6CE4: $28 $B9

    ld l, l                                       ; $6CE6: $6D
    ld d, [hl]                                    ; $6CE7: $56
    inc b                                         ; $6CE8: $04
    add hl, de                                    ; $6CE9: $19
    ld b, d                                       ; $6CEA: $42
    dec d                                         ; $6CEB: $15
    rrca                                          ; $6CEC: $0F
    xor a                                         ; $6CED: $AF
    ld a, e                                       ; $6CEE: $7B
    jr z, jr_028_6D00                             ; $6CEF: $28 $0F

    rst $28                                       ; $6CF1: $EF
    ld a, e                                       ; $6CF2: $7B
    nop                                           ; $6CF3: $00
    nop                                           ; $6CF4: $00
    ld e, e                                       ; $6CF5: $5B
    jr z, jr_028_6CFD                             ; $6CF6: $28 $05

    ld h, [hl]                                    ; $6CF8: $66
    ld b, d                                       ; $6CF9: $42
    dec d                                         ; $6CFA: $15
    db $10                                        ; $6CFB: $10
    pop de                                        ; $6CFC: $D1

jr_028_6CFD:
    ld e, e                                       ; $6CFD: $5B
    ld d, b                                       ; $6CFE: $50
    db $10                                        ; $6CFF: $10

jr_028_6D00:
    ld d, c                                       ; $6D00: $51
    ld e, h                                       ; $6D01: $5C
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    ld h, d                                       ; $6D04: $62
    rlca                                          ; $6D05: $07
    inc d                                         ; $6D06: $14
    db $10                                        ; $6D07: $10
    ld h, l                                       ; $6D08: $65
    ld e, h                                       ; $6D09: $5C
    ld e, e                                       ; $6D0A: $5B

jr_028_6D0B:
    jr z, jr_028_6D3B                             ; $6D0B: $28 $2E

    ld h, [hl]                                    ; $6D0D: $66
    ld h, d                                       ; $6D0E: $62
    add hl, bc                                    ; $6D0F: $09
    dec d                                         ; $6D10: $15
    db $10                                        ; $6D11: $10
    adc l                                         ; $6D12: $8D
    ld e, h                                       ; $6D13: $5C
    ld [$5B10], sp                                ; $6D14: $08 $10 $5B
    ld e, h                                       ; $6D17: $5C
    jr nz, jr_028_6D2A                            ; $6D18: $20 $10

    adc l                                         ; $6D1A: $8D
    ld e, h                                       ; $6D1B: $5C
    ld [$6510], sp                                ; $6D1C: $08 $10 $65
    ld e, h                                       ; $6D1F: $5C
    ld [$7910], sp                                ; $6D20: $08 $10 $79
    ld e, h                                       ; $6D23: $5C
    ld [$5110], sp                                ; $6D24: $08 $10 $51
    ld e, h                                       ; $6D27: $5C
    jr nz, jr_028_6D3A                            ; $6D28: $20 $10

jr_028_6D2A:
    ld a, c                                       ; $6D2A: $79
    ld e, h                                       ; $6D2B: $5C
    ld [$6510], sp                                ; $6D2C: $08 $10 $65
    ld e, h                                       ; $6D2F: $5C
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    ld h, d                                       ; $6D32: $62
    ld a, [bc]                                    ; $6D33: $0A
    ld d, [hl]                                    ; $6D34: $56
    rlca                                          ; $6D35: $07
    ld e, e                                       ; $6D36: $5B
    jr z, jr_028_6D0B                             ; $6D37: $28 $D2

    ld h, [hl]                                    ; $6D39: $66

jr_028_6D3A:
    ld h, d                                       ; $6D3A: $62

jr_028_6D3B:
    inc c                                         ; $6D3B: $0C
    dec d                                         ; $6D3C: $15
    db $10                                        ; $6D3D: $10
    pop af                                        ; $6D3E: $F1
    ld e, e                                       ; $6D3F: $5B
    inc b                                         ; $6D40: $04
    db $10                                        ; $6D41: $10
    ld e, e                                       ; $6D42: $5B
    ld e, h                                       ; $6D43: $5C
    inc d                                         ; $6D44: $14
    db $10                                        ; $6D45: $10
    pop hl                                        ; $6D46: $E1
    ld e, e                                       ; $6D47: $5B
    nop                                           ; $6D48: $00
    nop                                           ; $6D49: $00
    ld b, d                                       ; $6D4A: $42
    dec d                                         ; $6D4B: $15
    ld de, $4481                                  ; $6D4C: $11 $81 $44
    ld b, b                                       ; $6D4F: $40
    ld de, $4501                                  ; $6D50: $11 $01 $45
    nop                                           ; $6D53: $00
    nop                                           ; $6D54: $00
    ld h, d                                       ; $6D55: $62
    ld [$0656], sp                                ; $6D56: $08 $56 $06
    inc d                                         ; $6D59: $14
    ld de, $451F                                  ; $6D5A: $11 $1F $45
    ld h, d                                       ; $6D5D: $62
    inc c                                         ; $6D5E: $0C
    dec d                                         ; $6D5F: $15
    ld de, $44B1                                  ; $6D60: $11 $B1 $44
    inc b                                         ; $6D63: $04
    ld de, $450B                                  ; $6D64: $11 $0B $45
    inc d                                         ; $6D67: $14
    ld de, $4491                                  ; $6D68: $11 $91 $44
    nop                                           ; $6D6B: $00
    nop                                           ; $6D6C: $00
    ld b, d                                       ; $6D6D: $42
    dec d                                         ; $6D6E: $15
    ld de, $474C                                  ; $6D6F: $11 $4C $47
    jr nz, @+$13                                  ; $6D72: $20 $11

    adc h                                         ; $6D74: $8C
    ld b, a                                       ; $6D75: $47
    nop                                           ; $6D76: $00
    nop                                           ; $6D77: $00
    ld h, d                                       ; $6D78: $62
    inc c                                         ; $6D79: $0C
    dec d                                         ; $6D7A: $15
    ld de, $470C                                  ; $6D7B: $11 $0C $47
    ld [$9611], sp                                ; $6D7E: $08 $11 $96
    ld b, a                                       ; $6D81: $47
    db $10                                        ; $6D82: $10
    ld de, $471C                                  ; $6D83: $11 $1C $47
    nop                                           ; $6D86: $00
    nop                                           ; $6D87: $00
    ld b, d                                       ; $6D88: $42
    dec de                                        ; $6D89: $1B
    rrca                                          ; $6D8A: $0F
    add e                                         ; $6D8B: $83
    inc bc                                        ; $6D8C: $03
    cp $00                                        ; $6D8D: $FE $00
    inc bc                                        ; $6D8F: $03
    nop                                           ; $6D90: $00
    cp $02                                        ; $6D91: $FE $02
    inc bc                                        ; $6D93: $03
    nop                                           ; $6D94: $00
    ld [bc], a                                    ; $6D95: $02
    nop                                           ; $6D96: $00
    inc bc                                        ; $6D97: $03
    nop                                           ; $6D98: $00
    ld b, [hl]                                    ; $6D99: $46
    adc c                                         ; $6D9A: $89
    ld l, l                                       ; $6D9B: $6D
    dec de                                        ; $6D9C: $1B
    rrca                                          ; $6D9D: $0F
    add e                                         ; $6D9E: $83
    ld bc, $00FD                                  ; $6D9F: $01 $FD $00
    ld bc, $FD00                                  ; $6DA2: $01 $00 $FD
    inc bc                                        ; $6DA5: $03
    ld bc, $0100                                  ; $6DA6: $01 $00 $01
    nop                                           ; $6DA9: $00
    inc bc                                        ; $6DAA: $03
    ld [bc], a                                    ; $6DAB: $02
    rst $38                                       ; $6DAC: $FF
    nop                                           ; $6DAD: $00
    ld [bc], a                                    ; $6DAE: $02
    nop                                           ; $6DAF: $00
    rst $38                                       ; $6DB0: $FF
    ld [bc], a                                    ; $6DB1: $02
    ld bc, $0200                                  ; $6DB2: $01 $00 $02
    nop                                           ; $6DB5: $00
    ld bc, $4200                                  ; $6DB6: $01 $00 $42
    dec de                                        ; $6DB9: $1B
    rrca                                          ; $6DBA: $0F
    add e                                         ; $6DBB: $83
    ld bc, $00FD                                  ; $6DBC: $01 $FD $00
    ld bc, $FD00                                  ; $6DBF: $01 $00 $FD
    inc bc                                        ; $6DC2: $03
    ld bc, $0100                                  ; $6DC3: $01 $00 $01
    nop                                           ; $6DC6: $00
    inc bc                                        ; $6DC7: $03
    ld [bc], a                                    ; $6DC8: $02
    rst $38                                       ; $6DC9: $FF
    nop                                           ; $6DCA: $00
    ld [bc], a                                    ; $6DCB: $02
    nop                                           ; $6DCC: $00
    rst $38                                       ; $6DCD: $FF
    ld [bc], a                                    ; $6DCE: $02
    ld bc, $0200                                  ; $6DCF: $01 $00 $02
    nop                                           ; $6DD2: $00
    ld bc, $1B00                                  ; $6DD3: $01 $00 $1B
    db $10                                        ; $6DD6: $10
    ld b, d                                       ; $6DD7: $42
    xor h                                         ; $6DD8: $AC
    or d                                          ; $6DD9: $B2

jr_028_6DDA:
    and d                                         ; $6DDA: $A2
    ld bc, $AC93                                  ; $6DDB: $01 $93 $AC
    xor l                                         ; $6DDE: $AD
    and d                                         ; $6DDF: $A2
    ld bc, $DA65                                  ; $6DE0: $01 $65 $DA
    ld b, a                                       ; $6DE3: $47
    ld c, a                                       ; $6DE4: $4F
    ld h, h                                       ; $6DE5: $64
    jp hl                                         ; $6DE6: $E9


    ld c, c                                       ; $6DE7: $49
    ld h, [hl]                                    ; $6DE8: $66
    ret nz                                        ; $6DE9: $C0

    ld e, h                                       ; $6DEA: $5C
    ld hl, $0005                                  ; $6DEB: $21 $05 $00
    ld l, e                                       ; $6DEE: $6B
    ld c, d                                       ; $6DEF: $4A
    ld a, [de]                                    ; $6DF0: $1A
    inc h                                         ; $6DF1: $24
    ld [hl+], a                                   ; $6DF2: $22
    rst $10                                       ; $6DF3: $D7
    nop                                           ; $6DF4: $00
    jr z, jr_028_6E38                             ; $6DF5: $28 $41

    ld l, a                                       ; $6DF7: $6F
    ld [hl+], a                                   ; $6DF8: $22
    dec b                                         ; $6DF9: $05
    ld b, b                                       ; $6DFA: $40
    dec b                                         ; $6DFB: $05
    ld [bc], a                                    ; $6DFC: $02
    ld l, e                                       ; $6DFD: $6B
    ld c, d                                       ; $6DFE: $4A
    jr jr_028_6E25                                ; $6DFF: $18 $24

    jr nz, jr_028_6DDA                            ; $6E01: $20 $D7

    nop                                           ; $6E03: $00
    jr z, @+$6E                                   ; $6E04: $28 $6C

    ld l, a                                       ; $6E06: $6F
    ld [hl+], a                                   ; $6E07: $22
    dec b                                         ; $6E08: $05
    ld b, b                                       ; $6E09: $40
    dec b                                         ; $6E0A: $05
    inc bc                                        ; $6E0B: $03
    ld l, e                                       ; $6E0C: $6B
    ld c, d                                       ; $6E0D: $4A
    rla                                           ; $6E0E: $17
    dec de                                        ; $6E0F: $1B
    ld e, l                                       ; $6E10: $5D
    push de                                       ; $6E11: $D5
    jr nc, @+$2A                                  ; $6E12: $30 $28

    rra                                           ; $6E14: $1F
    ld [hl], c                                    ; $6E15: $71
    ld [hl+], a                                   ; $6E16: $22
    dec b                                         ; $6E17: $05
    ld b, b                                       ; $6E18: $40
    dec b                                         ; $6E19: $05
    inc b                                         ; $6E1A: $04
    adc $63                                       ; $6E1B: $CE $63
    ld bc, $3301                                  ; $6E1D: $01 $01 $33
    ret nc                                        ; $6E20: $D0

    jp nc, $E32E                                  ; $6E21: $D2 $2E $E3

    ld d, l                                       ; $6E24: $55

jr_028_6E25:
    ld [hl+], a                                   ; $6E25: $22
    dec b                                         ; $6E26: $05
    ld b, b                                       ; $6E27: $40
    dec b                                         ; $6E28: $05
    dec b                                         ; $6E29: $05
    adc $63                                       ; $6E2A: $CE $63
    ld bc, $3301                                  ; $6E2C: $01 $01 $33
    ret nc                                        ; $6E2F: $D0

    jp nc, $E32E                                  ; $6E30: $D2 $2E $E3

    ld d, l                                       ; $6E33: $55
    ld [hl+], a                                   ; $6E34: $22
    dec b                                         ; $6E35: $05
    ld b, b                                       ; $6E36: $40
    dec b                                         ; $6E37: $05

jr_028_6E38:
    ld b, $CE                                     ; $6E38: $06 $CE
    ld h, e                                       ; $6E3A: $63
    ld bc, $3301                                  ; $6E3B: $01 $01 $33
    ret nc                                        ; $6E3E: $D0

    jp nc, $E32E                                  ; $6E3F: $D2 $2E $E3

    ld d, l                                       ; $6E42: $55
    ld [hl+], a                                   ; $6E43: $22
    dec b                                         ; $6E44: $05
    ld b, b                                       ; $6E45: $40
    dec b                                         ; $6E46: $05
    rlca                                          ; $6E47: $07
    ld l, e                                       ; $6E48: $6B
    ld c, d                                       ; $6E49: $4A
    jr @+$1D                                      ; $6E4A: $18 $1B

    ld e, [hl]                                    ; $6E4C: $5E
    push de                                       ; $6E4D: $D5
    ld d, l                                       ; $6E4E: $55
    jr z, jr_028_6E8A                             ; $6E4F: $28 $39

    ld l, a                                       ; $6E51: $6F
    ld [hl+], a                                   ; $6E52: $22
    dec b                                         ; $6E53: $05
    ld b, b                                       ; $6E54: $40
    dec b                                         ; $6E55: $05
    ld [$4A6B], sp                                ; $6E56: $08 $6B $4A
    add hl, de                                    ; $6E59: $19
    dec de                                        ; $6E5A: $1B
    ld e, a                                       ; $6E5B: $5F
    push de                                       ; $6E5C: $D5
    ld d, l                                       ; $6E5D: $55
    jr z, jr_028_6E99                             ; $6E5E: $28 $39

    ld l, a                                       ; $6E60: $6F
    ld [hl+], a                                   ; $6E61: $22
    dec b                                         ; $6E62: $05
    ld b, b                                       ; $6E63: $40
    ld d, b                                       ; $6E64: $50
    ld a, h                                       ; $6E65: $7C
    jp nz, $4646                                  ; $6E66: $C2 $46 $46

    ld l, l                                       ; $6E69: $6D
    ld b, b                                       ; $6E6A: $40
    ld c, d                                       ; $6E6B: $4A
    ld [hl], e                                    ; $6E6C: $73
    dec b                                         ; $6E6D: $05
    ld a, [bc]                                    ; $6E6E: $0A
    ld l, e                                       ; $6E6F: $6B
    ld c, d                                       ; $6E70: $4A
    jr jr_028_6E8B                                ; $6E71: $18 $18

    ret z                                         ; $6E73: $C8

    call nc, $2855                                ; $6E74: $D4 $55 $28
    add hl, sp                                    ; $6E77: $39
    ld l, a                                       ; $6E78: $6F
    ld [hl+], a                                   ; $6E79: $22
    dec b                                         ; $6E7A: $05
    ld b, b                                       ; $6E7B: $40
    dec b                                         ; $6E7C: $05
    dec bc                                        ; $6E7D: $0B
    ld l, e                                       ; $6E7E: $6B
    ld c, d                                       ; $6E7F: $4A
    rla                                           ; $6E80: $17
    dec de                                        ; $6E81: $1B
    ld e, l                                       ; $6E82: $5D

jr_028_6E83:
    push de                                       ; $6E83: $D5
    ld d, l                                       ; $6E84: $55
    jr z, jr_028_6EC0                             ; $6E85: $28 $39

    ld l, a                                       ; $6E87: $6F
    ld [hl+], a                                   ; $6E88: $22
    dec b                                         ; $6E89: $05

jr_028_6E8A:
    ld b, b                                       ; $6E8A: $40

jr_028_6E8B:
    dec b                                         ; $6E8B: $05
    inc c                                         ; $6E8C: $0C
    ld l, e                                       ; $6E8D: $6B
    ld c, d                                       ; $6E8E: $4A
    ld a, [de]                                    ; $6E8F: $1A
    ld a, [de]                                    ; $6E90: $1A
    ld l, $D5                                     ; $6E91: $2E $D5
    ld d, l                                       ; $6E93: $55
    jr z, jr_028_6ECF                             ; $6E94: $28 $39

    ld l, a                                       ; $6E96: $6F
    ld [hl+], a                                   ; $6E97: $22
    dec b                                         ; $6E98: $05

jr_028_6E99:
    ld b, b                                       ; $6E99: $40
    dec b                                         ; $6E9A: $05
    dec c                                         ; $6E9B: $0D
    ld l, e                                       ; $6E9C: $6B
    ld c, d                                       ; $6E9D: $4A
    add hl, de                                    ; $6E9E: $19
    add hl, de                                    ; $6E9F: $19
    ei                                            ; $6EA0: $FB
    call nc, $2855                                ; $6EA1: $D4 $55 $28
    add hl, sp                                    ; $6EA4: $39
    ld l, a                                       ; $6EA5: $6F
    ld [hl+], a                                   ; $6EA6: $22
    dec b                                         ; $6EA7: $05
    ld b, b                                       ; $6EA8: $40
    dec b                                         ; $6EA9: $05
    ld c, $6B                                     ; $6EAA: $0E $6B
    ld c, d                                       ; $6EAC: $4A
    jr jr_028_6ECB                                ; $6EAD: $18 $1C

    sub b                                         ; $6EAF: $90
    push de                                       ; $6EB0: $D5
    ld d, l                                       ; $6EB1: $55
    jr z, jr_028_6EED                             ; $6EB2: $28 $39

    ld l, a                                       ; $6EB4: $6F
    ld [hl+], a                                   ; $6EB5: $22
    dec b                                         ; $6EB6: $05
    ld b, b                                       ; $6EB7: $40
    dec b                                         ; $6EB8: $05
    rrca                                          ; $6EB9: $0F
    ld l, e                                       ; $6EBA: $6B
    ld c, d                                       ; $6EBB: $4A
    add hl, de                                    ; $6EBC: $19
    dec de                                        ; $6EBD: $1B
    ld e, a                                       ; $6EBE: $5F
    push de                                       ; $6EBF: $D5

jr_028_6EC0:
    ld d, l                                       ; $6EC0: $55
    jr z, jr_028_6EFC                             ; $6EC1: $28 $39

    ld l, a                                       ; $6EC3: $6F
    ld [hl+], a                                   ; $6EC4: $22
    dec b                                         ; $6EC5: $05
    ld b, b                                       ; $6EC6: $40
    dec b                                         ; $6EC7: $05
    db $10                                        ; $6EC8: $10
    ld l, e                                       ; $6EC9: $6B
    ld c, d                                       ; $6ECA: $4A

jr_028_6ECB:
    add hl, de                                    ; $6ECB: $19
    inc e                                         ; $6ECC: $1C
    sub c                                         ; $6ECD: $91
    push de                                       ; $6ECE: $D5

jr_028_6ECF:
    ld d, l                                       ; $6ECF: $55
    jr z, jr_028_6F0B                             ; $6ED0: $28 $39

    ld l, a                                       ; $6ED2: $6F
    ld [hl+], a                                   ; $6ED3: $22
    dec b                                         ; $6ED4: $05
    ld b, b                                       ; $6ED5: $40
    ld d, b                                       ; $6ED6: $50
    ld d, h                                       ; $6ED7: $54
    jp $4646                                      ; $6ED8: $C3 $46 $46


    sbc d                                         ; $6EDB: $9A
    ld b, b                                       ; $6EDC: $40
    ccf                                           ; $6EDD: $3F
    ld [hl], h                                    ; $6EDE: $74
    ld l, e                                       ; $6EDF: $6B
    jr nc, jr_028_6EED                            ; $6EE0: $30 $0B

    db $10                                        ; $6EE2: $10
    ld l, d                                       ; $6EE3: $6A
    nop                                           ; $6EE4: $00
    add b                                         ; $6EE5: $80
    nop                                           ; $6EE6: $00
    ld l, e                                       ; $6EE7: $6B
    dec h                                         ; $6EE8: $25
    dec c                                         ; $6EE9: $0D
    jr nz, jr_028_6F45                            ; $6EEA: $20 $59

    nop                                           ; $6EEC: $00

jr_028_6EED:
    add e                                         ; $6EED: $83
    nop                                           ; $6EEE: $00
    ld l, e                                       ; $6EEF: $6B
    ld b, $0D                                     ; $6EF0: $06 $0D
    ld [hl], b                                    ; $6EF2: $70

jr_028_6EF3:
    ld e, e                                       ; $6EF3: $5B
    jr nz, jr_028_6E83                            ; $6EF4: $20 $8D

    nop                                           ; $6EF6: $00

jr_028_6EF7:
    ld l, e                                       ; $6EF7: $6B
    jr jr_028_6F07                                ; $6EF8: $18 $0D

    ldh [rLYC], a                                 ; $6EFA: $E0 $45

jr_028_6EFC:
    ld d, b                                       ; $6EFC: $50
    add l                                         ; $6EFD: $85
    nop                                           ; $6EFE: $00

jr_028_6EFF:
    ld l, e                                       ; $6EFF: $6B
    dec l                                         ; $6F00: $2D
    ld b, c                                       ; $6F01: $41
    ret nz                                        ; $6F02: $C0

jr_028_6F03:
    ld d, [hl]                                    ; $6F03: $56
    ret nc                                        ; $6F04: $D0

    add [hl]                                      ; $6F05: $86
    nop                                           ; $6F06: $00

jr_028_6F07:
    ld l, e                                       ; $6F07: $6B
    jr c, @+$51                                   ; $6F08: $38 $4F

    rrca                                          ; $6F0A: $0F

jr_028_6F0B:
    ld e, d                                       ; $6F0B: $5A
    and b                                         ; $6F0C: $A0
    adc c                                         ; $6F0D: $89
    nop                                           ; $6F0E: $00
    dec bc                                        ; $6F0F: $0B
    nop                                           ; $6F10: $00
    dec bc                                        ; $6F11: $0B
    ld [bc], a                                    ; $6F12: $02
    dec bc                                        ; $6F13: $0B
    inc b                                         ; $6F14: $04
    dec bc                                        ; $6F15: $0B
    dec b                                         ; $6F16: $05
    dec bc                                        ; $6F17: $0B
    ld b, $84                                     ; $6F18: $06 $84
    add hl, de                                    ; $6F1A: $19

jr_028_6F1B:
    ld e, $1F                                     ; $6F1B: $1E $1F

jr_028_6F1D:
    ld hl, $6968                                  ; $6F1D: $21 $68 $69
    ld e, h                                       ; $6F20: $5C
    ld [hl], e                                    ; $6F21: $73
    jp nc, Jump_028_7A7B                          ; $6F22: $D2 $7B $7A

    ld a, a                                       ; $6F25: $7F
    rlca                                          ; $6F26: $07
    ret nc                                        ; $6F27: $D0

    rlca                                          ; $6F28: $07
    inc de                                        ; $6F29: $13
    dec d                                         ; $6F2A: $15
    ret nc                                        ; $6F2B: $D0

    nop                                           ; $6F2C: $00
    dec d                                         ; $6F2D: $15
    ld a, a                                       ; $6F2E: $7F
    dec e                                         ; $6F2F: $1D
    ret nc                                        ; $6F30: $D0

jr_028_6F31:
    inc bc                                        ; $6F31: $03
    inc b                                         ; $6F32: $04
    scf                                           ; $6F33: $37
    db $D3                                        ; $6F34: $D3
    db $10                                        ; $6F35: $10
    rla                                           ; $6F36: $17
    sub h                                         ; $6F37: $94
    ld b, d                                       ; $6F38: $42
    inc d                                         ; $6F39: $14
    ld de, $7D51                                  ; $6F3A: $11 $51 $7D
    ld b, b                                       ; $6F3D: $40
    ld b, b                                       ; $6F3E: $40
    add hl, de                                    ; $6F3F: $19
    ld b, d                                       ; $6F40: $42
    dec d                                         ; $6F41: $15
    jr nz, jr_028_6EF7                            ; $6F42: $20 $B3

    ld c, a                                       ; $6F44: $4F

jr_028_6F45:
    ld d, b                                       ; $6F45: $50
    jr nz, jr_028_6EF3                            ; $6F46: $20 $AB

    ld d, b                                       ; $6F48: $50
    nop                                           ; $6F49: $00
    nop                                           ; $6F4A: $00
    ld h, b                                       ; $6F4B: $60
    rlca                                          ; $6F4C: $07
    dec d                                         ; $6F4D: $15
    jr nz, jr_028_6F03                            ; $6F4E: $20 $B3

    ld c, a                                       ; $6F50: $4F
    db $10                                        ; $6F51: $10
    jr nz, jr_028_6EFF                            ; $6F52: $20 $AB

    ld d, b                                       ; $6F54: $50
    nop                                           ; $6F55: $00
    nop                                           ; $6F56: $00
    ld h, b                                       ; $6F57: $60
    ld b, $15                                     ; $6F58: $06 $15
    jr nz, jr_028_6F1B                            ; $6F5A: $20 $BF

    ld d, b                                       ; $6F5C: $50
    nop                                           ; $6F5D: $00
    nop                                           ; $6F5E: $00
    ld h, b                                       ; $6F5F: $60
    ld [hl-], a                                   ; $6F60: $32
    dec d                                         ; $6F61: $15
    jr nz, jr_028_6F31                            ; $6F62: $20 $CD

    ld c, a                                       ; $6F64: $4F
    ld h, b                                       ; $6F65: $60
    jr nz, jr_028_6F1D                            ; $6F66: $20 $B5

    ld d, b                                       ; $6F68: $50
    nop                                           ; $6F69: $00
    nop                                           ; $6F6A: $00
    ld b, d                                       ; $6F6B: $42
    dec d                                         ; $6F6C: $15
    rrca                                          ; $6F6D: $0F
    sub b                                         ; $6F6E: $90
    ld l, h                                       ; $6F6F: $6C
    ld d, b                                       ; $6F70: $50
    rrca                                          ; $6F71: $0F
    db $10                                        ; $6F72: $10
    ld l, l                                       ; $6F73: $6D
    jr nc, jr_028_6F85                            ; $6F74: $30 $0F

    or b                                          ; $6F76: $B0
    ld l, h                                       ; $6F77: $6C
    db $10                                        ; $6F78: $10
    rrca                                          ; $6F79: $0F
    sub b                                         ; $6F7A: $90
    ld l, h                                       ; $6F7B: $6C
    db $10                                        ; $6F7C: $10
    rrca                                          ; $6F7D: $0F
    ret nz                                        ; $6F7E: $C0

    ld l, h                                       ; $6F7F: $6C
    nop                                           ; $6F80: $00
    nop                                           ; $6F81: $00
    ld a, [hl]                                    ; $6F82: $7E
    sub b                                         ; $6F83: $90
    pop de                                        ; $6F84: $D1

jr_028_6F85:
    inc b                                         ; $6F85: $04
    ld bc, $D5C1                                  ; $6F86: $01 $C1 $D5
    dec e                                         ; $6F89: $1D
    rla                                           ; $6F8A: $17
    dec d                                         ; $6F8B: $15
    rrca                                          ; $6F8C: $0F
    or b                                          ; $6F8D: $B0
    ld l, h                                       ; $6F8E: $6C
    jr nz, @+$11                                  ; $6F8F: $20 $0F

    ld b, d                                       ; $6F91: $42
    ld l, l                                       ; $6F92: $6D
    jr nc, jr_028_6F95                            ; $6F93: $30 $00

jr_028_6F95:
    ld d, [hl]                                    ; $6F95: $56
    rlca                                          ; $6F96: $07
    ld a, h                                       ; $6F97: $7C
    add hl, de                                    ; $6F98: $19
    dec de                                        ; $6F99: $1B
    ld [bc], a                                    ; $6F9A: $02
    dec bc                                        ; $6F9B: $0B
    inc bc                                        ; $6F9C: $03
    ld h, b                                       ; $6F9D: $60
    ld bc, $007E                                  ; $6F9E: $01 $7E $00
    ret nc                                        ; $6FA1: $D0

    inc b                                         ; $6FA2: $04
    ld bc, $D431                                  ; $6FA3: $01 $31 $D4
    dec d                                         ; $6FA6: $15
    rla                                           ; $6FA7: $17
    ld e, l                                       ; $6FA8: $5D
    ld a, [hl]                                    ; $6FA9: $7E
    ld [hl-], a                                   ; $6FAA: $32
    ret nc                                        ; $6FAB: $D0

    inc b                                         ; $6FAC: $04
    ld bc, $D463                                  ; $6FAD: $01 $63 $D4
    ld d, $17                                     ; $6FB0: $16 $17
    ld e, l                                       ; $6FB2: $5D
    ld a, [hl]                                    ; $6FB3: $7E
    ld h, h                                       ; $6FB4: $64
    ret nc                                        ; $6FB5: $D0

    inc b                                         ; $6FB6: $04
    ld bc, $D495                                  ; $6FB7: $01 $95 $D4
    rla                                           ; $6FBA: $17
    rla                                           ; $6FBB: $17
    ld e, l                                       ; $6FBC: $5D
    ld a, [hl]                                    ; $6FBD: $7E
    sub [hl]                                      ; $6FBE: $96
    ret nc                                        ; $6FBF: $D0

    inc b                                         ; $6FC0: $04
    ld bc, $D4C7                                  ; $6FC1: $01 $C7 $D4
    jr jr_028_6FDD                                ; $6FC4: $18 $17

    ld e, l                                       ; $6FC6: $5D
    ld a, [hl]                                    ; $6FC7: $7E
    ret z                                         ; $6FC8: $C8

    ret nc                                        ; $6FC9: $D0

    inc b                                         ; $6FCA: $04
    ld bc, $D4F9                                  ; $6FCB: $01 $F9 $D4
    add hl, de                                    ; $6FCE: $19
    rla                                           ; $6FCF: $17
    ld e, l                                       ; $6FD0: $5D
    ld a, [hl]                                    ; $6FD1: $7E
    ld a, [$04D0]                                 ; $6FD2: $FA $D0 $04
    ld bc, $D52B                                  ; $6FD5: $01 $2B $D5
    ld a, [de]                                    ; $6FD8: $1A
    rla                                           ; $6FD9: $17
    ld e, l                                       ; $6FDA: $5D
    ld a, [hl]                                    ; $6FDB: $7E
    inc l                                         ; $6FDC: $2C

jr_028_6FDD:
    pop de                                        ; $6FDD: $D1
    inc b                                         ; $6FDE: $04
    ld bc, $D55D                                  ; $6FDF: $01 $5D $D5
    dec de                                        ; $6FE2: $1B
    rla                                           ; $6FE3: $17
    ld e, l                                       ; $6FE4: $5D
    ld a, [hl]                                    ; $6FE5: $7E
    ld e, [hl]                                    ; $6FE6: $5E
    pop de                                        ; $6FE7: $D1
    inc b                                         ; $6FE8: $04
    ld bc, $D58F                                  ; $6FE9: $01 $8F $D5
    inc e                                         ; $6FEC: $1C
    rla                                           ; $6FED: $17
    ld h, b                                       ; $6FEE: $60
    ld l, $15                                     ; $6FEF: $2E $15
    rrca                                          ; $6FF1: $0F
    ret nz                                        ; $6FF2: $C0

    ld l, h                                       ; $6FF3: $6C
    jr z, @+$11                                   ; $6FF4: $28 $0F

    sub b                                         ; $6FF6: $90
    ld l, h                                       ; $6FF7: $6C
    ld d, b                                       ; $6FF8: $50
    rrca                                          ; $6FF9: $0F
    ret nz                                        ; $6FFA: $C0

    ld l, h                                       ; $6FFB: $6C
    ld [$1A0F], sp                                ; $6FFC: $08 $0F $1A
    ld l, l                                       ; $6FFF: $6D
    jr nz, @+$11                                  ; $7000: $20 $0F

    ld b, d                                       ; $7002: $42
    ld l, l                                       ; $7003: $6D
    jr nz, @+$11                                  ; $7004: $20 $0F

    inc h                                         ; $7006: $24
    ld l, l                                       ; $7007: $6D
    jr nz, @+$11                                  ; $7008: $20 $0F

    ld d, [hl]                                    ; $700A: $56
    ld l, l                                       ; $700B: $6D
    jr nz, @+$11                                  ; $700C: $20 $0F

    ld b, d                                       ; $700E: $42
    ld l, l                                       ; $700F: $6D
    jr nz, @+$11                                  ; $7010: $20 $0F

    ld a, [de]                                    ; $7012: $1A
    ld l, l                                       ; $7013: $6D
    jr nz, @+$11                                  ; $7014: $20 $0F

    ret nc                                        ; $7016: $D0

    ld l, h                                       ; $7017: $6C
    ld [$E00F], sp                                ; $7018: $08 $0F $E0
    ld l, h                                       ; $701B: $6C
    ld [$D00F], sp                                ; $701C: $08 $0F $D0
    ld l, h                                       ; $701F: $6C
    ld [$E00F], sp                                ; $7020: $08 $0F $E0
    ld l, h                                       ; $7023: $6C
    ld [$1A0F], sp                                ; $7024: $08 $0F $1A
    ld l, l                                       ; $7027: $6D
    jr nc, jr_028_702A                            ; $7028: $30 $00

jr_028_702A:
    ld e, e                                       ; $702A: $5B
    jr z, jr_028_7095                             ; $702B: $28 $68

    ld h, a                                       ; $702D: $67
    ld h, d                                       ; $702E: $62
    ld [bc], a                                    ; $702F: $02
    ld e, d                                       ; $7030: $5A
    jr z, jr_028_703B                             ; $7031: $28 $08

    ld [hl], d                                    ; $7033: $72
    dec bc                                        ; $7034: $0B
    ld a, [bc]                                    ; $7035: $0A
    dec bc                                        ; $7036: $0B
    add hl, bc                                    ; $7037: $09
    dec de                                        ; $7038: $1B
    inc b                                         ; $7039: $04
    ld a, [hl]                                    ; $703A: $7E

jr_028_703B:
    sbc d                                         ; $703B: $9A
    ret nc                                        ; $703C: $D0

    inc b                                         ; $703D: $04
    ld bc, $D4C7                                  ; $703E: $01 $C7 $D4
    jr jr_028_705A                                ; $7041: $18 $17

    ld h, b                                       ; $7043: $60
    dec b                                         ; $7044: $05
    inc d                                         ; $7045: $14
    rrca                                          ; $7046: $0F
    jr c, @+$6F                                   ; $7047: $38 $6D

    ld e, e                                       ; $7049: $5B
    jr z, @-$6A                                   ; $704A: $28 $94

    ld h, a                                       ; $704C: $67
    ld e, d                                       ; $704D: $5A
    jr z, jr_028_7058                             ; $704E: $28 $08

    ld [hl], d                                    ; $7050: $72
    ld h, d                                       ; $7051: $62
    dec b                                         ; $7052: $05
    inc d                                         ; $7053: $14
    rrca                                          ; $7054: $0F
    ldh [$6C], a                                  ; $7055: $E0 $6C
    ld b, b                                       ; $7057: $40

jr_028_7058:
    ld a, [bc]                                    ; $7058: $0A
    dec bc                                        ; $7059: $0B

jr_028_705A:
    dec bc                                        ; $705A: $0B
    dec de                                        ; $705B: $1B
    inc b                                         ; $705C: $04
    ld b, b                                       ; $705D: $40
    ld e, $5A                                     ; $705E: $1E $5A
    jr z, @+$0A                                   ; $7060: $28 $08

    ld [hl], d                                    ; $7062: $72
    dec bc                                        ; $7063: $0B
    inc c                                         ; $7064: $0C
    dec de                                        ; $7065: $1B
    inc b                                         ; $7066: $04
    dec d                                         ; $7067: $15
    rrca                                          ; $7068: $0F
    ldh a, [$6C]                                  ; $7069: $F0 $6C
    ld [$1500], sp                                ; $706B: $08 $00 $15
    rrca                                          ; $706E: $0F
    db $10                                        ; $706F: $10
    ld l, l                                       ; $7070: $6D
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    ld b, b                                       ; $7073: $40
    ld [$0D0B], sp                                ; $7074: $08 $0B $0D
    dec de                                        ; $7077: $1B
    inc b                                         ; $7078: $04
    ld b, b                                       ; $7079: $40
    db $10                                        ; $707A: $10
    dec bc                                        ; $707B: $0B
    add hl, bc                                    ; $707C: $09
    dec de                                        ; $707D: $1B
    inc b                                         ; $707E: $04
    ld b, b                                       ; $707F: $40
    db $10                                        ; $7080: $10
    ld e, d                                       ; $7081: $5A
    jr z, jr_028_708C                             ; $7082: $28 $08

    ld [hl], d                                    ; $7084: $72
    dec bc                                        ; $7085: $0B
    ld c, $0B                                     ; $7086: $0E $0B
    rrca                                          ; $7088: $0F
    dec de                                        ; $7089: $1B
    inc b                                         ; $708A: $04
    ld a, [hl]                                    ; $708B: $7E

jr_028_708C:
    ld h, d                                       ; $708C: $62
    pop de                                        ; $708D: $D1

jr_028_708E:
    inc b                                         ; $708E: $04
    ld bc, $D58F                                  ; $708F: $01 $8F $D5
    inc e                                         ; $7092: $1C
    rla                                           ; $7093: $17
    ld a, [hl]                                    ; $7094: $7E

jr_028_7095:
    call z, $04D0                                 ; $7095: $CC $D0 $04
    ld bc, $D4F9                                  ; $7098: $01 $F9 $D4
    add hl, de                                    ; $709B: $19
    rla                                           ; $709C: $17
    ld e, d                                       ; $709D: $5A
    jr z, jr_028_70A8                             ; $709E: $28 $08

    ld [hl], d                                    ; $70A0: $72
    ld b, b                                       ; $70A1: $40
    db $10                                        ; $70A2: $10
    dec bc                                        ; $70A3: $0B
    db $10                                        ; $70A4: $10
    dec de                                        ; $70A5: $1B
    inc b                                         ; $70A6: $04
    ld b, b                                       ; $70A7: $40

jr_028_70A8:
    ld [de], a                                    ; $70A8: $12
    dec bc                                        ; $70A9: $0B
    rlca                                          ; $70AA: $07
    dec bc                                        ; $70AB: $0B
    ld [$041B], sp                                ; $70AC: $08 $1B $04
    ld b, b                                       ; $70AF: $40
    ld a, [bc]                                    ; $70B0: $0A
    ld a, [hl]                                    ; $70B1: $7E
    cp $D0                                        ; $70B2: $FE $D0
    inc b                                         ; $70B4: $04
    ld bc, $D52B                                  ; $70B5: $01 $2B $D5
    ld a, [de]                                    ; $70B8: $1A
    rla                                           ; $70B9: $17
    ld a, [hl]                                    ; $70BA: $7E
    jr nc, jr_028_708E                            ; $70BB: $30 $D1

    inc b                                         ; $70BD: $04
    ld bc, $D55D                                  ; $70BE: $01 $5D $D5
    dec de                                        ; $70C1: $1B
    rla                                           ; $70C2: $17
    dec bc                                        ; $70C3: $0B
    add hl, bc                                    ; $70C4: $09
    ld b, b                                       ; $70C5: $40
    inc hl                                        ; $70C6: $23
    dec d                                         ; $70C7: $15
    rrca                                          ; $70C8: $0F
    ld l, $6D                                     ; $70C9: $2E $6D
    jr @+$11                                      ; $70CB: $18 $0F

    db $10                                        ; $70CD: $10
    ld l, l                                       ; $70CE: $6D
    nop                                           ; $70CF: $00
    nop                                           ; $70D0: $00
    ld b, b                                       ; $70D1: $40
    jr c, jr_028_70E8                             ; $70D2: $38 $14

    rrca                                          ; $70D4: $0F
    ld l, $6D                                     ; $70D5: $2E $6D
    add e                                         ; $70D7: $83
    jr nz, jr_028_70DA                            ; $70D8: $20 $00

jr_028_70DA:
    ld bc, $5600                                  ; $70DA: $01 $00 $56
    ld b, $5B                                     ; $70DD: $06 $5B
    jr z, @-$58                                   ; $70DF: $28 $A6

    ld h, a                                       ; $70E1: $67
    ld h, d                                       ; $70E2: $62
    inc b                                         ; $70E3: $04
    dec d                                         ; $70E4: $15
    rrca                                          ; $70E5: $0F
    nop                                           ; $70E6: $00
    ld l, l                                       ; $70E7: $6D

jr_028_70E8:
    db $10                                        ; $70E8: $10
    rrca                                          ; $70E9: $0F
    ld l, $6D                                     ; $70EA: $2E $6D
    stop                                          ; $70EC: $10 $00
    ld d, [hl]                                    ; $70EE: $56
    ld [hl-], a                                   ; $70EF: $32
    dec d                                         ; $70F0: $15
    rrca                                          ; $70F1: $0F
    ld l, $6D                                     ; $70F2: $2E $6D
    db $10                                        ; $70F4: $10
    rrca                                          ; $70F5: $0F

jr_028_70F6:
    ld d, [hl]                                    ; $70F6: $56
    ld l, l                                       ; $70F7: $6D
    db $10                                        ; $70F8: $10
    rrca                                          ; $70F9: $0F
    ld a, [de]                                    ; $70FA: $1A
    ld l, l                                       ; $70FB: $6D
    stop                                          ; $70FC: $10 $00
    ld e, e                                       ; $70FE: $5B
    jr z, jr_028_70F6                             ; $70FF: $28 $F5

    ld h, a                                       ; $7101: $67
    ld h, d                                       ; $7102: $62
    dec c                                         ; $7103: $0D
    dec d                                         ; $7104: $15
    rrca                                          ; $7105: $0F
    ldh [$6C], a                                  ; $7106: $E0 $6C
    ld [$1A0F], sp                                ; $7108: $08 $0F $1A
    ld l, l                                       ; $710B: $6D
    jr jr_028_710E                                ; $710C: $18 $00

jr_028_710E:
    ld e, e                                       ; $710E: $5B
    jr z, jr_028_711B                             ; $710F: $28 $0A

    ld l, b                                       ; $7111: $68
    ld h, d                                       ; $7112: $62
    dec c                                         ; $7113: $0D
    dec d                                         ; $7114: $15
    rrca                                          ; $7115: $0F
    ldh [$6C], a                                  ; $7116: $E0 $6C
    ld b, b                                       ; $7118: $40
    nop                                           ; $7119: $00
    ld b, l                                       ; $711A: $45

jr_028_711B:
    ld [de], a                                    ; $711B: $12
    ld h, a                                       ; $711C: $67
    ld [hl], e                                    ; $711D: $73
    ld b, d                                       ; $711E: $42
    dec d                                         ; $711F: $15
    dec h                                         ; $7120: $25
    inc d                                         ; $7121: $14
    ld c, c                                       ; $7122: $49
    jr z, jr_028_7125                             ; $7123: $28 $00

jr_028_7125:
    dec d                                         ; $7125: $15
    dec h                                         ; $7126: $25
    ld b, $49                                     ; $7127: $06 $49
    inc a                                         ; $7129: $3C
    nop                                           ; $712A: $00
    dec d                                         ; $712B: $15
    dec h                                         ; $712C: $25
    inc d                                         ; $712D: $14
    ld c, c                                       ; $712E: $49
    jr z, jr_028_7131                             ; $712F: $28 $00

jr_028_7131:
    inc d                                         ; $7131: $14
    dec h                                         ; $7132: $25
    ld c, h                                       ; $7133: $4C
    ld c, c                                       ; $7134: $49
    ld b, b                                       ; $7135: $40
    db $10                                        ; $7136: $10
    add e                                         ; $7137: $83
    jr nc, jr_028_713A                            ; $7138: $30 $00

jr_028_713A:
    rst $38                                       ; $713A: $FF
    nop                                           ; $713B: $00
    ld b, b                                       ; $713C: $40
    jr nz, jr_028_7154                            ; $713D: $20 $15

    dec h                                         ; $713F: $25
    inc d                                         ; $7140: $14
    ld c, c                                       ; $7141: $49
    jr z, jr_028_7144                             ; $7142: $28 $00

jr_028_7144:
    ld d, [hl]                                    ; $7144: $56
    ld bc, $2515                                  ; $7145: $01 $15 $25
    jr nc, jr_028_7193                            ; $7148: $30 $49

    jr nc, @+$27                                  ; $714A: $30 $25

    ld a, $49                                     ; $714C: $3E $49
    db $10                                        ; $714E: $10
    dec h                                         ; $714F: $25
    ld [hl+], a                                   ; $7150: $22
    ld c, c                                       ; $7151: $49
    jr nc, jr_028_7179                            ; $7152: $30 $25

jr_028_7154:
    jr nc, @+$4B                                  ; $7154: $30 $49

    ld [$5300], sp                                ; $7156: $08 $00 $53
    dec d                                         ; $7159: $15
    dec h                                         ; $715A: $25
    jr nc, jr_028_71A6                            ; $715B: $30 $49

    jr z, @+$27                                   ; $715D: $28 $25

    ld a, $49                                     ; $715F: $3E $49
    db $10                                        ; $7161: $10
    dec h                                         ; $7162: $25
    ld [hl+], a                                   ; $7163: $22
    ld c, c                                       ; $7164: $49
    jr nc, jr_028_718C                            ; $7165: $30 $25

    jr nc, jr_028_71B2                            ; $7167: $30 $49

    ld [$5300], sp                                ; $7169: $08 $00 $53
    dec d                                         ; $716C: $15
    dec h                                         ; $716D: $25
    jr nc, @+$4B                                  ; $716E: $30 $49

    jr z, jr_028_7172                             ; $7170: $28 $00

jr_028_7172:
    inc d                                         ; $7172: $14
    dec h                                         ; $7173: $25
    ld a, $49                                     ; $7174: $3E $49
    add e                                         ; $7176: $83
    stop                                          ; $7177: $10 $00

jr_028_7179:
    ld bc, $1500                                  ; $7179: $01 $00 $15
    dec h                                         ; $717C: $25
    ld [hl+], a                                   ; $717D: $22
    ld c, c                                       ; $717E: $49
    jr nc, jr_028_71A6                            ; $717F: $30 $25

    jr nc, @+$4B                                  ; $7181: $30 $49

    ld [$5300], sp                                ; $7183: $08 $00 $53
    dec d                                         ; $7186: $15
    dec h                                         ; $7187: $25
    jr nc, jr_028_71D3                            ; $7188: $30 $49

    jr z, jr_028_718C                             ; $718A: $28 $00

jr_028_718C:
    inc d                                         ; $718C: $14
    dec h                                         ; $718D: $25
    ld a, $49                                     ; $718E: $3E $49
    add e                                         ; $7190: $83
    stop                                          ; $7191: $10 $00

jr_028_7193:
    ld bc, $1500                                  ; $7193: $01 $00 $15
    dec h                                         ; $7196: $25
    ld [hl+], a                                   ; $7197: $22
    ld c, c                                       ; $7198: $49
    jr nc, jr_028_71C0                            ; $7199: $30 $25

    jr nc, jr_028_71E6                            ; $719B: $30 $49

    ld [$5300], sp                                ; $719D: $08 $00 $53
    dec d                                         ; $71A0: $15
    dec h                                         ; $71A1: $25
    jr nc, jr_028_71ED                            ; $71A2: $30 $49

    jr z, jr_028_71A6                             ; $71A4: $28 $00

jr_028_71A6:
    inc d                                         ; $71A6: $14
    dec h                                         ; $71A7: $25
    ld a, $49                                     ; $71A8: $3E $49
    add e                                         ; $71AA: $83
    stop                                          ; $71AB: $10 $00
    ld bc, $1500                                  ; $71AD: $01 $00 $15
    dec h                                         ; $71B0: $25
    ld [hl+], a                                   ; $71B1: $22

jr_028_71B2:
    ld c, c                                       ; $71B2: $49
    jr nc, @+$27                                  ; $71B3: $30 $25

    jr nc, jr_028_7200                            ; $71B5: $30 $49

    ld [$5300], sp                                ; $71B7: $08 $00 $53
    dec d                                         ; $71BA: $15
    dec h                                         ; $71BB: $25
    jr nc, jr_028_7207                            ; $71BC: $30 $49

    jr z, @+$27                                   ; $71BE: $28 $25

jr_028_71C0:
    ld a, $49                                     ; $71C0: $3E $49
    db $10                                        ; $71C2: $10
    dec h                                         ; $71C3: $25
    ld [hl+], a                                   ; $71C4: $22
    ld c, c                                       ; $71C5: $49
    jr nc, jr_028_71ED                            ; $71C6: $30 $25

    jr nc, jr_028_7213                            ; $71C8: $30 $49

    ld [$5300], sp                                ; $71CA: $08 $00 $53
    dec d                                         ; $71CD: $15
    dec h                                         ; $71CE: $25
    jr nc, jr_028_721A                            ; $71CF: $30 $49

    jr z, jr_028_71F8                             ; $71D1: $28 $25

jr_028_71D3:
    ld a, $49                                     ; $71D3: $3E $49
    db $10                                        ; $71D5: $10
    dec h                                         ; $71D6: $25
    ld [hl+], a                                   ; $71D7: $22
    ld c, c                                       ; $71D8: $49
    jr nc, jr_028_7200                            ; $71D9: $30 $25

    jr nc, @+$4B                                  ; $71DB: $30 $49

    ld [$5300], sp                                ; $71DD: $08 $00 $53
    dec d                                         ; $71E0: $15
    dec h                                         ; $71E1: $25
    jr nc, jr_028_722D                            ; $71E2: $30 $49

    jr c, jr_028_720B                             ; $71E4: $38 $25

jr_028_71E6:
    inc d                                         ; $71E6: $14
    ld c, c                                       ; $71E7: $49
    inc c                                         ; $71E8: $0C
    dec h                                         ; $71E9: $25
    ld c, h                                       ; $71EA: $4C
    ld c, c                                       ; $71EB: $49
    db $10                                        ; $71EC: $10

jr_028_71ED:
    dec h                                         ; $71ED: $25
    ld [hl+], a                                   ; $71EE: $22
    ld c, c                                       ; $71EF: $49
    inc hl                                        ; $71F0: $23
    dec h                                         ; $71F1: $25
    inc d                                         ; $71F2: $14

jr_028_71F3:
    ld c, c                                       ; $71F3: $49
    db $10                                        ; $71F4: $10

jr_028_71F5:
    dec h                                         ; $71F5: $25
    ld b, $49                                     ; $71F6: $06 $49

jr_028_71F8:
    jr nz, jr_028_721F                            ; $71F8: $20 $25

    ld b, $49                                     ; $71FA: $06 $49
    jr z, jr_028_71FE                             ; $71FC: $28 $00

jr_028_71FE:
    inc d                                         ; $71FE: $14
    dec h                                         ; $71FF: $25

jr_028_7200:
    and a                                         ; $7200: $A7
    ld c, c                                       ; $7201: $49
    ld b, b                                       ; $7202: $40
    jr nc, jr_028_725B                            ; $7203: $30 $56

    ld l, $19                                     ; $7205: $2E $19

jr_028_7207:
    ld b, d                                       ; $7207: $42
    add e                                         ; $7208: $83
    ld [bc], a                                    ; $7209: $02
    inc bc                                        ; $720A: $03

jr_028_720B:
    nop                                           ; $720B: $00
    inc b                                         ; $720C: $04
    db $FD                                        ; $720D: $FD
    nop                                           ; $720E: $00
    ld [bc], a                                    ; $720F: $02
    inc bc                                        ; $7210: $03
    nop                                           ; $7211: $00
    ld [bc], a                                    ; $7212: $02

jr_028_7213:
    nop                                           ; $7213: $00
    inc bc                                        ; $7214: $03
    inc b                                         ; $7215: $04
    nop                                           ; $7216: $00
    db $FD                                        ; $7217: $FD
    ld [bc], a                                    ; $7218: $02
    nop                                           ; $7219: $00

jr_028_721A:
    inc bc                                        ; $721A: $03
    nop                                           ; $721B: $00
    ld d, [hl]                                    ; $721C: $56
    dec b                                         ; $721D: $05
    ld b, d                                       ; $721E: $42

jr_028_721F:
    xor h                                         ; $721F: $AC
    or d                                          ; $7220: $B2
    and d                                         ; $7221: $A2
    ld bc, $6593                                  ; $7222: $01 $93 $65
    jp c, Jump_028_4F47                           ; $7225: $DA $47 $4F

    ld h, h                                       ; $7228: $64
    jp hl                                         ; $7229: $E9


    ld c, c                                       ; $722A: $49
    ld h, [hl]                                    ; $722B: $66
    ret nz                                        ; $722C: $C0

jr_028_722D:
    ld e, h                                       ; $722D: $5C
    ld hl, $0005                                  ; $722E: $21 $05 $00
    ld l, e                                       ; $7231: $6B
    ld c, d                                       ; $7232: $4A
    jr jr_028_7251                                ; $7233: $18 $1C

    sub b                                         ; $7235: $90
    push de                                       ; $7236: $D5
    nop                                           ; $7237: $00
    jr z, jr_028_71F3                             ; $7238: $28 $B9

    ld [hl], d                                    ; $723A: $72
    ld [hl+], a                                   ; $723B: $22
    dec b                                         ; $723C: $05
    ld b, b                                       ; $723D: $40
    dec b                                         ; $723E: $05
    ld [bc], a                                    ; $723F: $02
    ld l, e                                       ; $7240: $6B
    ld c, d                                       ; $7241: $4A
    ld d, $24                                     ; $7242: $16 $24
    ld e, $D7                                     ; $7244: $1E $D7
    nop                                           ; $7246: $00

jr_028_7247:
    jr z, @+$58                                   ; $7247: $28 $56

    ld [hl], e                                    ; $7249: $73
    ld [hl+], a                                   ; $724A: $22
    dec b                                         ; $724B: $05
    ld b, b                                       ; $724C: $40
    dec b                                         ; $724D: $05
    inc bc                                        ; $724E: $03
    ld l, e                                       ; $724F: $6B
    ld c, d                                       ; $7250: $4A

jr_028_7251:
    add hl, de                                    ; $7251: $19
    dec h                                         ; $7252: $25
    ld d, e                                       ; $7253: $53
    rst $10                                       ; $7254: $D7
    dec hl                                        ; $7255: $2B
    jr z, jr_028_71F5                             ; $7256: $28 $9D

    ld [hl], e                                    ; $7258: $73
    ld [hl+], a                                   ; $7259: $22
    dec b                                         ; $725A: $05

jr_028_725B:
    ld b, b                                       ; $725B: $40
    dec b                                         ; $725C: $05
    inc b                                         ; $725D: $04
    ld l, e                                       ; $725E: $6B
    ld c, d                                       ; $725F: $4A
    rla                                           ; $7260: $17
    inc h                                         ; $7261: $24
    rra                                           ; $7262: $1F
    rst $10                                       ; $7263: $D7
    ld d, c                                       ; $7264: $51
    jr z, jr_028_7247                             ; $7265: $28 $E0

    ld [hl], e                                    ; $7267: $73
    ld [hl+], a                                   ; $7268: $22
    dec b                                         ; $7269: $05
    ld b, b                                       ; $726A: $40
    dec b                                         ; $726B: $05
    dec b                                         ; $726C: $05
    ld l, e                                       ; $726D: $6B
    ld c, d                                       ; $726E: $4A
    jr jr_028_7296                                ; $726F: $18 $25

    ld d, d                                       ; $7271: $52
    rst $10                                       ; $7272: $D7
    ld a, d                                       ; $7273: $7A
    jr z, jr_028_7279                             ; $7274: $28 $03

    ld [hl], h                                    ; $7276: $74
    ld [hl+], a                                   ; $7277: $22
    dec b                                         ; $7278: $05

jr_028_7279:
    ld b, b                                       ; $7279: $40
    ld l, e                                       ; $727A: $6B
    dec hl                                        ; $727B: $2B
    dec bc                                        ; $727C: $0B
    jr nz, jr_028_72C6                            ; $727D: $20 $47

    nop                                           ; $727F: $00
    add b                                         ; $7280: $80
    nop                                           ; $7281: $00
    ld l, e                                       ; $7282: $6B
    ld h, $0B                                     ; $7283: $26 $0B
    ld d, b                                       ; $7285: $50
    ld d, h                                       ; $7286: $54
    or b                                          ; $7287: $B0
    add d                                         ; $7288: $82

jr_028_7289:
    nop                                           ; $7289: $00
    ld l, e                                       ; $728A: $6B
    add hl, hl                                    ; $728B: $29
    dec bc                                        ; $728C: $0B
    jr nc, jr_028_72DE                            ; $728D: $30 $4F

    db $10                                        ; $728F: $10
    add l                                         ; $7290: $85
    nop                                           ; $7291: $00
    ld l, e                                       ; $7292: $6B
    dec hl                                        ; $7293: $2B
    dec bc                                        ; $7294: $0B
    ret nc                                        ; $7295: $D0

jr_028_7296:
    ld c, c                                       ; $7296: $49
    and b                                         ; $7297: $A0
    add a                                         ; $7298: $87
    nop                                           ; $7299: $00
    dec bc                                        ; $729A: $0B
    nop                                           ; $729B: $00
    add d                                         ; $729C: $82
    rra                                           ; $729D: $1F
    ld hl, $0F6F                                  ; $729E: $21 $6F $0F

jr_028_72A1:
    rst $38                                       ; $72A1: $FF
    ld a, a                                       ; $72A2: $7F
    ld a, [hl]                                    ; $72A3: $7E
    inc b                                         ; $72A4: $04
    ret nc                                        ; $72A5: $D0

    inc b                                         ; $72A6: $04
    add hl, bc                                    ; $72A7: $09
    ld sp, $15D4                                  ; $72A8: $31 $D4 $15
    rla                                           ; $72AB: $17
    sub h                                         ; $72AC: $94
    halt                                          ; $72AD: $76
    jr nz, jr_028_72BF                            ; $72AE: $20 $0F

    ld h, b                                       ; $72B0: $60
    ld a, [bc]                                    ; $72B1: $0A
    ld b, b                                       ; $72B2: $40
    ld d, b                                       ; $72B3: $50
    ld b, l                                       ; $72B4: $45
    ld [de], a                                    ; $72B5: $12
    ld b, h                                       ; $72B6: $44
    ld [hl], a                                    ; $72B7: $77
    ld b, d                                       ; $72B8: $42
    dec d                                         ; $72B9: $15
    jr nz, jr_028_7289                            ; $72BA: $20 $CD

    ld c, a                                       ; $72BC: $4F

jr_028_72BD:
    jr nz, @+$22                                  ; $72BD: $20 $20

jr_028_72BF:
    xor e                                         ; $72BF: $AB
    ld d, b                                       ; $72C0: $50

jr_028_72C1:
    ld h, b                                       ; $72C1: $60
    nop                                           ; $72C2: $00

jr_028_72C3:
    dec bc                                        ; $72C3: $0B
    ld [bc], a                                    ; $72C4: $02
    dec bc                                        ; $72C5: $0B

jr_028_72C6:
    inc bc                                        ; $72C6: $03
    dec bc                                        ; $72C7: $0B
    inc b                                         ; $72C8: $04
    dec bc                                        ; $72C9: $0B
    dec b                                         ; $72CA: $05
    add e                                         ; $72CB: $83
    ld h, b                                       ; $72CC: $60
    nop                                           ; $72CD: $00
    ld bc, $6200                                  ; $72CE: $01 $00 $62
    ld bc, $2083                                  ; $72D1: $01 $83 $20
    nop                                           ; $72D4: $00

jr_028_72D5:
    rst $38                                       ; $72D5: $FF
    nop                                           ; $72D6: $00
    ld d, $20                                     ; $72D7: $16 $20
    pop af                                        ; $72D9: $F1
    ld d, b                                       ; $72DA: $50
    ld [$FF00], sp                                ; $72DB: $08 $00 $FF

jr_028_72DE:
    jr nz, @-$35                                  ; $72DE: $20 $C9

    ld d, b                                       ; $72E0: $50

jr_028_72E1:
    ld [$FF00], sp                                ; $72E1: $08 $00 $FF
    jr nz, jr_028_72C3                            ; $72E4: $20 $DD

    ld d, b                                       ; $72E6: $50
    ld [rRAMG], sp                                ; $72E7: $08 $00 $00
    jr nz, jr_028_72A1                            ; $72EA: $20 $B5

    ld d, b                                       ; $72EC: $50
    ld d, b                                       ; $72ED: $50
    nop                                           ; $72EE: $00

jr_028_72EF:
    nop                                           ; $72EF: $00
    jr nz, @-$21                                  ; $72F0: $20 $DD

    ld d, b                                       ; $72F2: $50
    inc b                                         ; $72F3: $04
    nop                                           ; $72F4: $00

jr_028_72F5:
    nop                                           ; $72F5: $00
    jr nz, jr_028_72C1                            ; $72F6: $20 $C9

    ld d, b                                       ; $72F8: $50
    nop                                           ; $72F9: $00
    nop                                           ; $72FA: $00
    nop                                           ; $72FB: $00
    nop                                           ; $72FC: $00
    ld h, b                                       ; $72FD: $60
    ld bc, $4040                                  ; $72FE: $01 $40 $40
    dec d                                         ; $7301: $15
    jr nz, jr_028_72E1                            ; $7302: $20 $DD

    ld d, b                                       ; $7304: $50
    inc b                                         ; $7305: $04
    jr nz, jr_028_72BD                            ; $7306: $20 $B5

    ld d, b                                       ; $7308: $50
    nop                                           ; $7309: $00
    nop                                           ; $730A: $00
    ld h, d                                       ; $730B: $62
    inc bc                                        ; $730C: $03
    ld b, b                                       ; $730D: $40

jr_028_730E:
    ld b, b                                       ; $730E: $40
    dec d                                         ; $730F: $15
    jr nz, @-$2B                                  ; $7310: $20 $D3

    ld d, b                                       ; $7312: $50

jr_028_7313:
    inc b                                         ; $7313: $04
    jr nz, jr_028_72D5                            ; $7314: $20 $BF

    ld d, b                                       ; $7316: $50

jr_028_7317:
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00

jr_028_7319:
    ld h, b                                       ; $7319: $60
    ld [bc], a                                    ; $731A: $02
    ld b, b                                       ; $731B: $40
    ld b, b                                       ; $731C: $40
    dec d                                         ; $731D: $15
    jr nz, @-$17                                  ; $731E: $20 $E7

    ld d, b                                       ; $7320: $50
    inc b                                         ; $7321: $04
    jr nz, @-$53                                  ; $7322: $20 $AB

    ld d, b                                       ; $7324: $50
    inc b                                         ; $7325: $04
    jr nz, jr_028_7319                            ; $7326: $20 $F1

    ld d, b                                       ; $7328: $50
    inc b                                         ; $7329: $04
    jr nz, jr_028_72F5                            ; $732A: $20 $C9

    ld d, b                                       ; $732C: $50
    nop                                           ; $732D: $00
    nop                                           ; $732E: $00
    ld h, b                                       ; $732F: $60
    inc bc                                        ; $7330: $03
    ld b, b                                       ; $7331: $40
    ld b, b                                       ; $7332: $40
    dec d                                         ; $7333: $15
    jr nz, jr_028_7313                            ; $7334: $20 $DD

    ld d, b                                       ; $7336: $50
    inc b                                         ; $7337: $04
    jr nz, jr_028_72EF                            ; $7338: $20 $B5

    ld d, b                                       ; $733A: $50
    nop                                           ; $733B: $00
    nop                                           ; $733C: $00
    ld h, b                                       ; $733D: $60
    inc b                                         ; $733E: $04
    ld b, b                                       ; $733F: $40
    ld b, b                                       ; $7340: $40
    dec d                                         ; $7341: $15
    jr nz, jr_028_7317                            ; $7342: $20 $D3

    ld d, b                                       ; $7344: $50
    inc b                                         ; $7345: $04
    jr nz, @-$3F                                  ; $7346: $20 $BF

    ld d, b                                       ; $7348: $50
    nop                                           ; $7349: $00
    nop                                           ; $734A: $00
    ld h, d                                       ; $734B: $62
    rlca                                          ; $734C: $07
    ld b, b                                       ; $734D: $40
    jr jr_028_7364                                ; $734E: $18 $14

    jr nz, @+$1F                                  ; $7350: $20 $1D

    ld d, b                                       ; $7352: $50
    ld d, [hl]                                    ; $7353: $56
    ld a, [bc]                                    ; $7354: $0A
    ld b, d                                       ; $7355: $42
    dec d                                         ; $7356: $15
    ld de, $4481                                  ; $7357: $11 $81 $44
    jr nz, jr_028_736D                            ; $735A: $20 $11

    ld bc, $4045                                  ; $735C: $01 $45 $40
    ld de, $4533                                  ; $735F: $11 $33 $45
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00

jr_028_7364:
    ld e, e                                       ; $7364: $5B
    jr z, @+$50                                   ; $7365: $28 $4E

    ld [hl], h                                    ; $7367: $74
    ld h, d                                       ; $7368: $62
    ld bc, $1115                                  ; $7369: $01 $15 $11
    pop bc                                        ; $736C: $C1

jr_028_736D:
    ld b, h                                       ; $736D: $44
    jr nz, jr_028_7381                            ; $736E: $20 $11

jr_028_7370:
    ld bc, $0045                                  ; $7370: $01 $45 $00
    nop                                           ; $7373: $00
    ld h, d                                       ; $7374: $62
    inc bc                                        ; $7375: $03
    dec d                                         ; $7376: $15
    ld de, $44F1                                  ; $7377: $11 $F1 $44
    ld [$1F11], sp                                ; $737A: $08 $11 $1F
    ld b, l                                       ; $737D: $45
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    ld e, e                                       ; $7380: $5B

jr_028_7381:
    jr z, jr_028_7370                             ; $7381: $28 $ED

    ld [hl], h                                    ; $7383: $74
    ld h, d                                       ; $7384: $62
    dec b                                         ; $7385: $05
    ld d, [hl]                                    ; $7386: $56
    inc bc                                        ; $7387: $03
    ld e, e                                       ; $7388: $5B
    jr z, jr_028_730E                             ; $7389: $28 $83

    ld [hl], l                                    ; $738B: $75
    ld h, d                                       ; $738C: $62
    rlca                                          ; $738D: $07
    dec d                                         ; $738E: $15
    ld de, $44B1                                  ; $738F: $11 $B1 $44
    inc b                                         ; $7392: $04
    ld de, $450B                                  ; $7393: $11 $0B $45
    inc d                                         ; $7396: $14
    ld de, $4491                                  ; $7397: $11 $91 $44
    nop                                           ; $739A: $00
    nop                                           ; $739B: $00
    ld b, d                                       ; $739C: $42
    dec d                                         ; $739D: $15
    db $10                                        ; $739E: $10
    pop de                                        ; $739F: $D1
    ld e, e                                       ; $73A0: $5B
    jr nz, jr_028_73B3                            ; $73A1: $20 $10

    ld d, c                                       ; $73A3: $51
    ld e, h                                       ; $73A4: $5C
    db $10                                        ; $73A5: $10
    db $10                                        ; $73A6: $10
    pop de                                        ; $73A7: $D1
    ld e, e                                       ; $73A8: $5B
    db $10                                        ; $73A9: $10
    db $10                                        ; $73AA: $10
    ld d, c                                       ; $73AB: $51
    ld e, h                                       ; $73AC: $5C
    jr nz, jr_028_73BF                            ; $73AD: $20 $10

    adc l                                         ; $73AF: $8D
    ld e, h                                       ; $73B0: $5C
    nop                                           ; $73B1: $00
    nop                                           ; $73B2: $00

jr_028_73B3:
    ld h, d                                       ; $73B3: $62
    ld bc, $1015                                  ; $73B4: $01 $15 $10
    pop de                                        ; $73B7: $D1
    ld e, e                                       ; $73B8: $5B
    ld b, b                                       ; $73B9: $40
    db $10                                        ; $73BA: $10
    ld d, c                                       ; $73BB: $51
    ld e, h                                       ; $73BC: $5C
    jr nz, jr_028_73CF                            ; $73BD: $20 $10

jr_028_73BF:
    ld h, l                                       ; $73BF: $65
    ld e, h                                       ; $73C0: $5C
    nop                                           ; $73C1: $00
    nop                                           ; $73C2: $00
    ld e, e                                       ; $73C3: $5B
    jr z, @+$73                                   ; $73C4: $28 $71

    ld [hl], h                                    ; $73C6: $74
    ld h, d                                       ; $73C7: $62
    inc b                                         ; $73C8: $04
    ld d, [hl]                                    ; $73C9: $56
    ld [bc], a                                    ; $73CA: $02
    ld e, e                                       ; $73CB: $5B
    jr z, @+$31                                   ; $73CC: $28 $2F

    ld [hl], l                                    ; $73CE: $75

jr_028_73CF:
    ld h, d                                       ; $73CF: $62
    rlca                                          ; $73D0: $07
    dec d                                         ; $73D1: $15
    db $10                                        ; $73D2: $10
    pop af                                        ; $73D3: $F1
    ld e, e                                       ; $73D4: $5B
    inc b                                         ; $73D5: $04
    db $10                                        ; $73D6: $10
    ld e, e                                       ; $73D7: $5B
    ld e, h                                       ; $73D8: $5C
    inc d                                         ; $73D9: $14
    db $10                                        ; $73DA: $10
    pop hl                                        ; $73DB: $E1
    ld e, e                                       ; $73DC: $5B
    nop                                           ; $73DD: $00
    nop                                           ; $73DE: $00
    ld b, d                                       ; $73DF: $42
    dec d                                         ; $73E0: $15
    rrca                                          ; $73E1: $0F
    ld l, a                                       ; $73E2: $6F
    ld a, e                                       ; $73E3: $7B
    jr nc, jr_028_73F5                            ; $73E4: $30 $0F

jr_028_73E6:
    rst $28                                       ; $73E6: $EF
    ld a, e                                       ; $73E7: $7B
    db $10                                        ; $73E8: $10
    rrca                                          ; $73E9: $0F
    dec hl                                        ; $73EA: $2B
    ld a, h                                       ; $73EB: $7C
    nop                                           ; $73EC: $00
    nop                                           ; $73ED: $00
    ld h, d                                       ; $73EE: $62
    ld bc, $0F15                                  ; $73EF: $01 $15 $0F
    rst $28                                       ; $73F2: $EF
    ld a, e                                       ; $73F3: $7B
    db $10                                        ; $73F4: $10

jr_028_73F5:
    rrca                                          ; $73F5: $0F
    xor a                                         ; $73F6: $AF
    ld a, e                                       ; $73F7: $7B
    db $10                                        ; $73F8: $10
    rrca                                          ; $73F9: $0F
    ld l, a                                       ; $73FA: $6F
    ld a, e                                       ; $73FB: $7B
    jr nz, @+$11                                  ; $73FC: $20 $0F

    rst $28                                       ; $73FE: $EF
    ld a, e                                       ; $73FF: $7B
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    ld b, d                                       ; $7402: $42
    dec d                                         ; $7403: $15
    ld de, $478C                                  ; $7404: $11 $8C $47
    db $10                                        ; $7407: $10
    ld de, $474C                                  ; $7408: $11 $4C $47
    ld [$0C11], sp                                ; $740B: $08 $11 $0C
    ld b, a                                       ; $740E: $47
    db $10                                        ; $740F: $10
    ld de, $47BE                                  ; $7410: $11 $BE $47
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    ld h, d                                       ; $7415: $62
    ld bc, $1115                                  ; $7416: $01 $15 $11
    ld c, h                                       ; $7419: $4C
    ld b, a                                       ; $741A: $47
    db $10                                        ; $741B: $10
    ld de, $470C                                  ; $741C: $11 $0C $47
    db $10                                        ; $741F: $10
    ld de, $478C                                  ; $7420: $11 $8C $47
    db $10                                        ; $7423: $10
    ld de, $470C                                  ; $7424: $11 $0C $47
    db $10                                        ; $7427: $10
    ld de, $478C                                  ; $7428: $11 $8C $47
    nop                                           ; $742B: $00
    nop                                           ; $742C: $00
    ld h, d                                       ; $742D: $62
    ld [bc], a                                    ; $742E: $02
    ld d, [hl]                                    ; $742F: $56
    ld bc, $285B                                  ; $7430: $01 $5B $28
    or e                                          ; $7433: $B3
    ld [hl], h                                    ; $7434: $74
    ld h, d                                       ; $7435: $62
    ld b, $56                                     ; $7436: $06 $56
    inc b                                         ; $7438: $04
    ld e, e                                       ; $7439: $5B
    jr z, jr_028_73E6                             ; $743A: $28 $AA

    ld [hl], l                                    ; $743C: $75
    ld h, d                                       ; $743D: $62
    rlca                                          ; $743E: $07
    dec d                                         ; $743F: $15
    ld de, $470C                                  ; $7440: $11 $0C $47
    inc b                                         ; $7443: $04
    ld de, $4796                                  ; $7444: $11 $96 $47
    inc d                                         ; $7447: $14
    ld de, $471C                                  ; $7448: $11 $1C $47
    nop                                           ; $744B: $00
    nop                                           ; $744C: $00
    ld b, d                                       ; $744D: $42
    sbc e                                         ; $744E: $9B
    add hl, de                                    ; $744F: $19
    ld c, [hl]                                    ; $7450: $4E
    sbc a                                         ; $7451: $9F
    ld c, h                                       ; $7452: $4C
    ld l, a                                       ; $7453: $6F
    ld l, a                                       ; $7454: $6F
    ld l, e                                       ; $7455: $6B
    ld hl, $54FE                                  ; $7456: $21 $FE $54
    ld l, b                                       ; $7459: $68
    ld h, l                                       ; $745A: $65
    jr nz, jr_028_74C4                            ; $745B: $20 $67

    ld h, l                                       ; $745D: $65
    ld a, c                                       ; $745E: $79
    ld [hl], e                                    ; $745F: $73
    ld h, l                                       ; $7460: $65
    ld [hl], d                                    ; $7461: $72
    rst $38                                       ; $7462: $FF
    ld l, c                                       ; $7463: $69
    ld [hl], e                                    ; $7464: $73
    jr nz, @+$69                                  ; $7465: $20 $67

    ld l, a                                       ; $7467: $6F
    ld l, [hl]                                    ; $7468: $6E
    ld h, l                                       ; $7469: $65
    ld hl, $FDFE                                  ; $746A: $21 $FE $FD
    sbc d                                         ; $746D: $9A
    ld e, b                                       ; $746E: $58
    ld bc, $9B42                                  ; $746F: $01 $42 $9B
    ret c                                         ; $7472: $D8

    ld h, b                                       ; $7473: $60
    sbc a                                         ; $7474: $9F
    ld b, h                                       ; $7475: $44
    ld l, c                                       ; $7476: $69
    ld h, h                                       ; $7477: $64
    jr nz, jr_028_74F3                            ; $7478: $20 $79

    ld l, a                                       ; $747A: $6F
    ld [hl], l                                    ; $747B: $75
    jr nz, jr_028_74E2                            ; $747C: $20 $64

    ld l, a                                       ; $747E: $6F
    rst $38                                       ; $747F: $FF
    dec l                                         ; $7480: $2D
    ld h, c                                       ; $7481: $61
    ld l, b                                       ; $7482: $68
    ld h, l                                       ; $7483: $65
    ld [hl], d                                    ; $7484: $72
    ld [hl], d                                    ; $7485: $72
    ld [hl], d                                    ; $7486: $72
    ld [hl], d                                    ; $7487: $72
    ld l, l                                       ; $7488: $6D
    ld hl, $2D21                                  ; $7489: $21 $21 $2D
    cp $2D                                        ; $748C: $FE $2D
    ld h, d                                       ; $748E: $62
    ld l, h                                       ; $748F: $6C
    ld h, l                                       ; $7490: $65
    ld h, e                                       ; $7491: $63
    ld l, e                                       ; $7492: $6B
    dec l                                         ; $7493: $2D
    cp $50                                        ; $7494: $FE $50
    ld h, c                                       ; $7496: $61
    ld [hl], d                                    ; $7497: $72
    ld h, h                                       ; $7498: $64
    ld l, a                                       ; $7499: $6F
    ld l, [hl]                                    ; $749A: $6E
    jr nz, @+$6F                                  ; $749B: $20 $6D

    ld h, l                                       ; $749D: $65
    ld l, $FE                                     ; $749E: $2E $FE
    ld e, c                                       ; $74A0: $59
    ld l, a                                       ; $74A1: $6F
    ld [hl], l                                    ; $74A2: $75
    jr nz, jr_028_7509                            ; $74A3: $20 $64

    ld l, c                                       ; $74A5: $69
    ld h, h                                       ; $74A6: $64
    jr nz, jr_028_751D                            ; $74A7: $20 $74

    ld l, b                                       ; $74A9: $68
    ld l, c                                       ; $74AA: $69
    ld [hl], e                                    ; $74AB: $73
    ccf                                           ; $74AC: $3F
    cp $FD                                        ; $74AD: $FE $FD
    sbc d                                         ; $74AF: $9A
    ld e, b                                       ; $74B0: $58
    ld [bc], a                                    ; $74B1: $02
    ld b, d                                       ; $74B2: $42
    sbc e                                         ; $74B3: $9B
    add hl, de                                    ; $74B4: $19
    ld c, [hl]                                    ; $74B5: $4E
    sbc a                                         ; $74B6: $9F
    ld c, a                                       ; $74B7: $4F
    ld h, [hl]                                    ; $74B8: $66
    jr nz, jr_028_751E                            ; $74B9: $20 $63

    ld l, a                                       ; $74BB: $6F
    ld [hl], l                                    ; $74BC: $75
    ld [hl], d                                    ; $74BD: $72
    ld [hl], e                                    ; $74BE: $73
    ld h, l                                       ; $74BF: $65
    jr nz, @+$6A                                  ; $74C0: $20 $68

    ld h, l                                       ; $74C2: $65
    rst $38                                       ; $74C3: $FF

jr_028_74C4:
    ld h, h                                       ; $74C4: $64
    ld l, c                                       ; $74C5: $69
    ld h, h                                       ; $74C6: $64
    ld hl, $4820                                  ; $74C7: $21 $20 $48
    ld h, l                                       ; $74CA: $65
    daa                                           ; $74CB: $27
    ld [hl], e                                    ; $74CC: $73
    jr nz, jr_028_7543                            ; $74CD: $20 $74

    ld l, b                                       ; $74CF: $68
    ld h, l                                       ; $74D0: $65
    cp $6F                                        ; $74D1: $FE $6F
    ld l, [hl]                                    ; $74D3: $6E
    ld l, h                                       ; $74D4: $6C
    ld a, c                                       ; $74D5: $79
    jr nz, jr_028_7547                            ; $74D6: $20 $6F

    ld l, [hl]                                    ; $74D8: $6E
    ld h, l                                       ; $74D9: $65
    jr nz, @+$6A                                  ; $74DA: $20 $68

    ld h, l                                       ; $74DC: $65
    ld [hl], d                                    ; $74DD: $72
    ld h, l                                       ; $74DE: $65
    inc l                                         ; $74DF: $2C
    rst $38                                       ; $74E0: $FF
    ld [hl], d                                    ; $74E1: $72

jr_028_74E2:
    ld l, c                                       ; $74E2: $69
    ld h, a                                       ; $74E3: $67
    ld l, b                                       ; $74E4: $68
    ld [hl], h                                    ; $74E5: $74
    ccf                                           ; $74E6: $3F
    cp $FD                                        ; $74E7: $FE $FD
    sbc d                                         ; $74E9: $9A
    ld e, b                                       ; $74EA: $58
    inc bc                                        ; $74EB: $03
    ld b, d                                       ; $74EC: $42
    sbc e                                         ; $74ED: $9B
    add hl, de                                    ; $74EE: $19
    ld c, [hl]                                    ; $74EF: $4E
    sbc a                                         ; $74F0: $9F
    ld d, a                                       ; $74F1: $57
    ld l, a                                       ; $74F2: $6F

jr_028_74F3:
    ld [hl], a                                    ; $74F3: $77
    ld hl, $5420                                  ; $74F4: $21 $20 $54
    ld l, b                                       ; $74F7: $68
    ld h, c                                       ; $74F8: $61
    ld [hl], h                                    ; $74F9: $74
    jr nz, jr_028_7570                            ; $74FA: $20 $74

    ld l, b                                       ; $74FC: $68
    ld l, c                                       ; $74FD: $69
    ld l, [hl]                                    ; $74FE: $6E
    ld h, a                                       ; $74FF: $67
    rst $38                                       ; $7500: $FF
    ld [hl], a                                    ; $7501: $77
    ld h, c                                       ; $7502: $61
    ld [hl], e                                    ; $7503: $73
    jr nz, @+$6A                                  ; $7504: $20 $68

    ld [hl], l                                    ; $7506: $75
    ld h, a                                       ; $7507: $67
    ld h, l                                       ; $7508: $65

jr_028_7509:
    ld hl, $4820                                  ; $7509: $21 $20 $48
    ld l, a                                       ; $750C: $6F
    ld [hl], a                                    ; $750D: $77
    cp $64                                        ; $750E: $FE $64
    ld l, c                                       ; $7510: $69
    ld h, h                                       ; $7511: $64
    jr nz, jr_028_758D                            ; $7512: $20 $79

    ld l, a                                       ; $7514: $6F
    ld [hl], l                                    ; $7515: $75
    jr nz, jr_028_7585                            ; $7516: $20 $6D

    ld h, c                                       ; $7518: $61
    ld l, [hl]                                    ; $7519: $6E
    ld h, c                                       ; $751A: $61
    ld h, a                                       ; $751B: $67
    ld h, l                                       ; $751C: $65

jr_028_751D:
    rst $38                                       ; $751D: $FF

jr_028_751E:
    ld [hl], h                                    ; $751E: $74
    ld l, a                                       ; $751F: $6F
    jr nz, jr_028_7595                            ; $7520: $20 $73

    ld [hl], h                                    ; $7522: $74
    ld l, a                                       ; $7523: $6F
    ld [hl], b                                    ; $7524: $70
    jr nz, jr_028_7590                            ; $7525: $20 $69

    ld [hl], h                                    ; $7527: $74
    ccf                                           ; $7528: $3F
    cp $FD                                        ; $7529: $FE $FD
    sbc d                                         ; $752B: $9A
    ld e, b                                       ; $752C: $58
    inc b                                         ; $752D: $04
    ld b, d                                       ; $752E: $42
    sbc e                                         ; $752F: $9B
    ret c                                         ; $7530: $D8

    ld h, b                                       ; $7531: $60
    sbc a                                         ; $7532: $9F
    ld d, a                                       ; $7533: $57
    ld l, b                                       ; $7534: $68
    ld l, a                                       ; $7535: $6F
    jr nz, @+$65                                  ; $7536: $20 $63

    ld h, c                                       ; $7538: $61
    ld [hl], d                                    ; $7539: $72
    ld h, l                                       ; $753A: $65
    ld [hl], e                                    ; $753B: $73
    jr nz, jr_028_75A6                            ; $753C: $20 $68

    ld l, a                                       ; $753E: $6F
    ld [hl], a                                    ; $753F: $77
    rst $38                                       ; $7540: $FF
    ld l, b                                       ; $7541: $68
    ld h, l                                       ; $7542: $65

jr_028_7543:
    jr nz, @+$66                                  ; $7543: $20 $64

    ld l, c                                       ; $7545: $69
    ld h, h                                       ; $7546: $64

jr_028_7547:
    jr nz, jr_028_75B2                            ; $7547: $20 $69

    ld [hl], h                                    ; $7549: $74
    ccf                                           ; $754A: $3F
    jr nz, jr_028_75A1                            ; $754B: $20 $54

    ld l, b                                       ; $754D: $68
    ld h, l                                       ; $754E: $65
    cp $69                                        ; $754F: $FE $69
    ld l, l                                       ; $7551: $6D
    ld [hl], b                                    ; $7552: $70
    ld l, a                                       ; $7553: $6F
    ld [hl], d                                    ; $7554: $72
    ld [hl], h                                    ; $7555: $74
    ld h, c                                       ; $7556: $61
    ld l, [hl]                                    ; $7557: $6E
    ld [hl], h                                    ; $7558: $74
    jr nz, jr_028_75CF                            ; $7559: $20 $74

    ld l, b                                       ; $755B: $68
    ld l, c                                       ; $755C: $69
    ld l, [hl]                                    ; $755D: $6E
    ld h, a                                       ; $755E: $67
    rst $38                                       ; $755F: $FF
    ld l, c                                       ; $7560: $69
    ld [hl], e                                    ; $7561: $73
    jr nz, jr_028_75D8                            ; $7562: $20 $74

    ld l, b                                       ; $7564: $68
    ld h, c                                       ; $7565: $61
    ld [hl], h                                    ; $7566: $74
    jr nz, jr_028_75E0                            ; $7567: $20 $77

    ld h, l                                       ; $7569: $65
    daa                                           ; $756A: $27
    ld [hl], d                                    ; $756B: $72
    ld h, l                                       ; $756C: $65
    cp $61                                        ; $756D: $FE $61
    ld l, h                                       ; $756F: $6C

jr_028_7570:
    ld l, h                                       ; $7570: $6C
    jr nz, jr_028_75E6                            ; $7571: $20 $73

    ld [hl], h                                    ; $7573: $74
    ld l, c                                       ; $7574: $69
    ld l, h                                       ; $7575: $6C
    ld l, h                                       ; $7576: $6C
    jr nz, jr_028_75E1                            ; $7577: $20 $68

    ld h, l                                       ; $7579: $65
    ld [hl], d                                    ; $757A: $72
    ld h, l                                       ; $757B: $65
    ld hl, $FDFE                                  ; $757C: $21 $FE $FD
    sbc d                                         ; $757F: $9A
    ld e, b                                       ; $7580: $58
    dec b                                         ; $7581: $05
    ld b, d                                       ; $7582: $42
    sbc e                                         ; $7583: $9B
    add hl, de                                    ; $7584: $19

jr_028_7585:
    ld c, [hl]                                    ; $7585: $4E
    sbc a                                         ; $7586: $9F
    ld d, a                                       ; $7587: $57
    ld h, l                                       ; $7588: $65
    jr nz, jr_028_7602                            ; $7589: $20 $77

    ld h, l                                       ; $758B: $65
    ld [hl], d                                    ; $758C: $72

jr_028_758D:
    ld h, l                                       ; $758D: $65
    jr nz, jr_028_7607                            ; $758E: $20 $77

jr_028_7590:
    ld [hl], d                                    ; $7590: $72
    ld l, a                                       ; $7591: $6F
    ld l, [hl]                                    ; $7592: $6E
    ld h, a                                       ; $7593: $67
    rst $38                                       ; $7594: $FF

jr_028_7595:
    ld h, c                                       ; $7595: $61
    ld h, d                                       ; $7596: $62
    ld l, a                                       ; $7597: $6F
    ld [hl], l                                    ; $7598: $75
    ld [hl], h                                    ; $7599: $74
    jr nz, jr_028_7615                            ; $759A: $20 $79

    ld l, a                                       ; $759C: $6F
    ld [hl], l                                    ; $759D: $75
    inc l                                         ; $759E: $2C
    jr nz, jr_028_760E                            ; $759F: $20 $6D

jr_028_75A1:
    ld h, c                                       ; $75A1: $61
    ld l, [hl]                                    ; $75A2: $6E
    ld l, $FE                                     ; $75A3: $2E $FE
    db $FD                                        ; $75A5: $FD

jr_028_75A6:
    sbc d                                         ; $75A6: $9A
    ld e, b                                       ; $75A7: $58
    ld b, $42                                     ; $75A8: $06 $42
    sbc e                                         ; $75AA: $9B
    add hl, de                                    ; $75AB: $19
    ld c, [hl]                                    ; $75AC: $4E
    sbc a                                         ; $75AD: $9F
    ld c, h                                       ; $75AE: $4C
    ld h, l                                       ; $75AF: $65
    ld [hl], h                                    ; $75B0: $74
    daa                                           ; $75B1: $27

jr_028_75B2:
    ld [hl], e                                    ; $75B2: $73
    jr nz, jr_028_7629                            ; $75B3: $20 $74

    ld h, c                                       ; $75B5: $61
    ld l, e                                       ; $75B6: $6B
    ld h, l                                       ; $75B7: $65
    jr nz, jr_028_7622                            ; $75B8: $20 $68

    ld l, c                                       ; $75BA: $69
    ld l, l                                       ; $75BB: $6D
    rst $38                                       ; $75BC: $FF
    ld [hl], h                                    ; $75BD: $74
    ld l, a                                       ; $75BE: $6F
    jr nz, jr_028_7635                            ; $75BF: $20 $74

    ld l, b                                       ; $75C1: $68
    ld h, l                                       ; $75C2: $65
    jr nz, jr_028_762A                            ; $75C3: $20 $65

    ld l, h                                       ; $75C5: $6C
    ld h, h                                       ; $75C6: $64
    ld h, l                                       ; $75C7: $65
    ld [hl], d                                    ; $75C8: $72
    ld l, $FE                                     ; $75C9: $2E $FE
    ld c, b                                       ; $75CB: $48
    ld h, l                                       ; $75CC: $65
    jr nz, jr_028_7646                            ; $75CD: $20 $77

jr_028_75CF:
    ld l, c                                       ; $75CF: $69
    ld l, h                                       ; $75D0: $6C
    ld l, h                                       ; $75D1: $6C
    jr nz, jr_028_7636                            ; $75D2: $20 $62

    ld h, l                                       ; $75D4: $65
    jr nz, jr_028_764D                            ; $75D5: $20 $76

    ld h, l                                       ; $75D7: $65

jr_028_75D8:
    ld [hl], d                                    ; $75D8: $72
    ld a, c                                       ; $75D9: $79
    rst $38                                       ; $75DA: $FF
    ld [hl], b                                    ; $75DB: $70
    ld l, h                                       ; $75DC: $6C
    ld h, l                                       ; $75DD: $65
    ld h, c                                       ; $75DE: $61
    ld [hl], e                                    ; $75DF: $73

jr_028_75E0:
    ld h, l                                       ; $75E0: $65

jr_028_75E1:
    ld h, h                                       ; $75E1: $64
    ld hl, $FDFE                                  ; $75E2: $21 $FE $FD
    sbc d                                         ; $75E5: $9A

jr_028_75E6:
    ld e, b                                       ; $75E6: $58
    rlca                                          ; $75E7: $07
    ld b, d                                       ; $75E8: $42
    nop                                           ; $75E9: $00
    nop                                           ; $75EA: $00
    nop                                           ; $75EB: $00
    nop                                           ; $75EC: $00
    nop                                           ; $75ED: $00
    nop                                           ; $75EE: $00
    nop                                           ; $75EF: $00
    nop                                           ; $75F0: $00
    nop                                           ; $75F1: $00
    nop                                           ; $75F2: $00
    nop                                           ; $75F3: $00
    nop                                           ; $75F4: $00
    nop                                           ; $75F5: $00
    nop                                           ; $75F6: $00
    nop                                           ; $75F7: $00
    nop                                           ; $75F8: $00
    nop                                           ; $75F9: $00
    nop                                           ; $75FA: $00
    nop                                           ; $75FB: $00
    nop                                           ; $75FC: $00
    nop                                           ; $75FD: $00
    nop                                           ; $75FE: $00
    nop                                           ; $75FF: $00
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00

jr_028_7602:
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00

jr_028_7607:
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    nop                                           ; $760A: $00
    nop                                           ; $760B: $00
    nop                                           ; $760C: $00
    nop                                           ; $760D: $00

jr_028_760E:
    nop                                           ; $760E: $00
    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00

jr_028_7615:
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    nop                                           ; $761A: $00
    nop                                           ; $761B: $00
    nop                                           ; $761C: $00
    nop                                           ; $761D: $00
    nop                                           ; $761E: $00
    nop                                           ; $761F: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00

jr_028_7622:
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00

jr_028_7629:
    nop                                           ; $7629: $00

jr_028_762A:
    nop                                           ; $762A: $00
    nop                                           ; $762B: $00
    nop                                           ; $762C: $00
    nop                                           ; $762D: $00
    nop                                           ; $762E: $00
    nop                                           ; $762F: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00

jr_028_7635:
    nop                                           ; $7635: $00

jr_028_7636:
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763A: $00
    nop                                           ; $763B: $00
    nop                                           ; $763C: $00
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    nop                                           ; $7644: $00
    nop                                           ; $7645: $00

jr_028_7646:
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    nop                                           ; $764B: $00
    nop                                           ; $764C: $00

jr_028_764D:
    nop                                           ; $764D: $00
    nop                                           ; $764E: $00
    nop                                           ; $764F: $00
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765A: $00
    nop                                           ; $765B: $00
    nop                                           ; $765C: $00
    nop                                           ; $765D: $00
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766A: $00
    nop                                           ; $766B: $00
    nop                                           ; $766C: $00
    nop                                           ; $766D: $00
    nop                                           ; $766E: $00
    nop                                           ; $766F: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767A: $00
    nop                                           ; $767B: $00
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768A: $00
    nop                                           ; $768B: $00
    nop                                           ; $768C: $00
    nop                                           ; $768D: $00
    nop                                           ; $768E: $00
    nop                                           ; $768F: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    nop                                           ; $76A2: $00
    nop                                           ; $76A3: $00
    nop                                           ; $76A4: $00
    nop                                           ; $76A5: $00
    nop                                           ; $76A6: $00
    nop                                           ; $76A7: $00
    nop                                           ; $76A8: $00
    nop                                           ; $76A9: $00
    nop                                           ; $76AA: $00
    nop                                           ; $76AB: $00
    nop                                           ; $76AC: $00
    nop                                           ; $76AD: $00
    nop                                           ; $76AE: $00
    nop                                           ; $76AF: $00
    nop                                           ; $76B0: $00
    nop                                           ; $76B1: $00
    nop                                           ; $76B2: $00
    nop                                           ; $76B3: $00
    nop                                           ; $76B4: $00
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
    nop                                           ; $76C0: $00
    nop                                           ; $76C1: $00
    nop                                           ; $76C2: $00
    nop                                           ; $76C3: $00
    nop                                           ; $76C4: $00
    nop                                           ; $76C5: $00
    nop                                           ; $76C6: $00
    nop                                           ; $76C7: $00
    nop                                           ; $76C8: $00
    nop                                           ; $76C9: $00
    nop                                           ; $76CA: $00
    nop                                           ; $76CB: $00
    nop                                           ; $76CC: $00
    nop                                           ; $76CD: $00
    nop                                           ; $76CE: $00
    nop                                           ; $76CF: $00
    nop                                           ; $76D0: $00
    nop                                           ; $76D1: $00
    nop                                           ; $76D2: $00
    nop                                           ; $76D3: $00
    nop                                           ; $76D4: $00
    nop                                           ; $76D5: $00
    nop                                           ; $76D6: $00
    nop                                           ; $76D7: $00
    nop                                           ; $76D8: $00
    nop                                           ; $76D9: $00
    nop                                           ; $76DA: $00
    nop                                           ; $76DB: $00
    nop                                           ; $76DC: $00
    nop                                           ; $76DD: $00
    nop                                           ; $76DE: $00
    nop                                           ; $76DF: $00
    nop                                           ; $76E0: $00
    nop                                           ; $76E1: $00
    nop                                           ; $76E2: $00
    nop                                           ; $76E3: $00
    nop                                           ; $76E4: $00
    nop                                           ; $76E5: $00
    nop                                           ; $76E6: $00
    nop                                           ; $76E7: $00
    nop                                           ; $76E8: $00
    nop                                           ; $76E9: $00
    nop                                           ; $76EA: $00
    nop                                           ; $76EB: $00
    nop                                           ; $76EC: $00
    nop                                           ; $76ED: $00
    nop                                           ; $76EE: $00
    nop                                           ; $76EF: $00
    nop                                           ; $76F0: $00
    nop                                           ; $76F1: $00
    nop                                           ; $76F2: $00
    nop                                           ; $76F3: $00
    nop                                           ; $76F4: $00
    nop                                           ; $76F5: $00
    nop                                           ; $76F6: $00
    nop                                           ; $76F7: $00
    nop                                           ; $76F8: $00
    nop                                           ; $76F9: $00
    nop                                           ; $76FA: $00
    nop                                           ; $76FB: $00
    nop                                           ; $76FC: $00
    nop                                           ; $76FD: $00
    nop                                           ; $76FE: $00
    nop                                           ; $76FF: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    nop                                           ; $7704: $00
    nop                                           ; $7705: $00
    nop                                           ; $7706: $00
    nop                                           ; $7707: $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    nop                                           ; $770A: $00
    nop                                           ; $770B: $00
    nop                                           ; $770C: $00
    nop                                           ; $770D: $00
    nop                                           ; $770E: $00
    nop                                           ; $770F: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771A: $00
    nop                                           ; $771B: $00
    nop                                           ; $771C: $00
    nop                                           ; $771D: $00
    nop                                           ; $771E: $00
    nop                                           ; $771F: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772A: $00
    nop                                           ; $772B: $00
    nop                                           ; $772C: $00
    nop                                           ; $772D: $00
    nop                                           ; $772E: $00
    nop                                           ; $772F: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773A: $00
    nop                                           ; $773B: $00
    nop                                           ; $773C: $00
    nop                                           ; $773D: $00
    nop                                           ; $773E: $00
    nop                                           ; $773F: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774A: $00
    nop                                           ; $774B: $00
    nop                                           ; $774C: $00
    nop                                           ; $774D: $00
    nop                                           ; $774E: $00
    nop                                           ; $774F: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775A: $00
    nop                                           ; $775B: $00
    nop                                           ; $775C: $00
    nop                                           ; $775D: $00
    nop                                           ; $775E: $00
    nop                                           ; $775F: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776A: $00
    nop                                           ; $776B: $00
    nop                                           ; $776C: $00
    nop                                           ; $776D: $00
    nop                                           ; $776E: $00
    nop                                           ; $776F: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777A: $00
    nop                                           ; $777B: $00
    nop                                           ; $777C: $00
    nop                                           ; $777D: $00
    nop                                           ; $777E: $00
    nop                                           ; $777F: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778A: $00
    nop                                           ; $778B: $00
    nop                                           ; $778C: $00
    nop                                           ; $778D: $00
    nop                                           ; $778E: $00
    nop                                           ; $778F: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    nop                                           ; $7798: $00
    nop                                           ; $7799: $00
    nop                                           ; $779A: $00
    nop                                           ; $779B: $00
    nop                                           ; $779C: $00
    nop                                           ; $779D: $00
    nop                                           ; $779E: $00
    nop                                           ; $779F: $00
    nop                                           ; $77A0: $00
    nop                                           ; $77A1: $00
    nop                                           ; $77A2: $00
    nop                                           ; $77A3: $00
    nop                                           ; $77A4: $00
    nop                                           ; $77A5: $00
    nop                                           ; $77A6: $00
    nop                                           ; $77A7: $00
    nop                                           ; $77A8: $00
    nop                                           ; $77A9: $00
    nop                                           ; $77AA: $00
    nop                                           ; $77AB: $00
    nop                                           ; $77AC: $00
    nop                                           ; $77AD: $00
    nop                                           ; $77AE: $00
    nop                                           ; $77AF: $00
    nop                                           ; $77B0: $00
    nop                                           ; $77B1: $00
    nop                                           ; $77B2: $00
    nop                                           ; $77B3: $00
    nop                                           ; $77B4: $00
    nop                                           ; $77B5: $00
    nop                                           ; $77B6: $00
    nop                                           ; $77B7: $00
    nop                                           ; $77B8: $00
    nop                                           ; $77B9: $00
    nop                                           ; $77BA: $00
    nop                                           ; $77BB: $00
    nop                                           ; $77BC: $00
    nop                                           ; $77BD: $00
    nop                                           ; $77BE: $00
    nop                                           ; $77BF: $00
    nop                                           ; $77C0: $00
    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    nop                                           ; $77C3: $00
    nop                                           ; $77C4: $00
    nop                                           ; $77C5: $00
    nop                                           ; $77C6: $00
    nop                                           ; $77C7: $00
    nop                                           ; $77C8: $00
    nop                                           ; $77C9: $00
    nop                                           ; $77CA: $00
    nop                                           ; $77CB: $00
    nop                                           ; $77CC: $00
    nop                                           ; $77CD: $00
    nop                                           ; $77CE: $00
    nop                                           ; $77CF: $00
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
    nop                                           ; $77DC: $00
    nop                                           ; $77DD: $00
    nop                                           ; $77DE: $00
    nop                                           ; $77DF: $00
    nop                                           ; $77E0: $00
    nop                                           ; $77E1: $00
    nop                                           ; $77E2: $00
    nop                                           ; $77E3: $00
    nop                                           ; $77E4: $00
    nop                                           ; $77E5: $00
    nop                                           ; $77E6: $00
    nop                                           ; $77E7: $00
    nop                                           ; $77E8: $00
    nop                                           ; $77E9: $00
    nop                                           ; $77EA: $00
    nop                                           ; $77EB: $00
    nop                                           ; $77EC: $00
    nop                                           ; $77ED: $00
    nop                                           ; $77EE: $00
    nop                                           ; $77EF: $00
    nop                                           ; $77F0: $00
    nop                                           ; $77F1: $00
    nop                                           ; $77F2: $00
    nop                                           ; $77F3: $00
    nop                                           ; $77F4: $00
    nop                                           ; $77F5: $00
    nop                                           ; $77F6: $00
    nop                                           ; $77F7: $00
    nop                                           ; $77F8: $00
    nop                                           ; $77F9: $00
    nop                                           ; $77FA: $00
    nop                                           ; $77FB: $00
    nop                                           ; $77FC: $00
    nop                                           ; $77FD: $00
    nop                                           ; $77FE: $00
    nop                                           ; $77FF: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780A: $00
    nop                                           ; $780B: $00
    nop                                           ; $780C: $00
    nop                                           ; $780D: $00
    nop                                           ; $780E: $00
    nop                                           ; $780F: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781A: $00
    nop                                           ; $781B: $00
    nop                                           ; $781C: $00
    nop                                           ; $781D: $00
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782A: $00
    nop                                           ; $782B: $00
    nop                                           ; $782C: $00
    nop                                           ; $782D: $00
    nop                                           ; $782E: $00
    nop                                           ; $782F: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    nop                                           ; $783A: $00
    nop                                           ; $783B: $00
    nop                                           ; $783C: $00
    nop                                           ; $783D: $00
    nop                                           ; $783E: $00
    nop                                           ; $783F: $00
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    nop                                           ; $7845: $00
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    nop                                           ; $7848: $00
    nop                                           ; $7849: $00
    nop                                           ; $784A: $00
    nop                                           ; $784B: $00
    nop                                           ; $784C: $00
    nop                                           ; $784D: $00
    nop                                           ; $784E: $00
    nop                                           ; $784F: $00
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785A: $00
    nop                                           ; $785B: $00
    nop                                           ; $785C: $00
    nop                                           ; $785D: $00
    nop                                           ; $785E: $00
    nop                                           ; $785F: $00
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    nop                                           ; $786A: $00
    nop                                           ; $786B: $00
    nop                                           ; $786C: $00
    nop                                           ; $786D: $00
    nop                                           ; $786E: $00
    nop                                           ; $786F: $00
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    nop                                           ; $7874: $00
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    nop                                           ; $7877: $00
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787A: $00
    nop                                           ; $787B: $00
    nop                                           ; $787C: $00
    nop                                           ; $787D: $00
    nop                                           ; $787E: $00
    nop                                           ; $787F: $00
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    nop                                           ; $7883: $00
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    nop                                           ; $7889: $00
    nop                                           ; $788A: $00
    nop                                           ; $788B: $00
    nop                                           ; $788C: $00
    nop                                           ; $788D: $00
    nop                                           ; $788E: $00
    nop                                           ; $788F: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    nop                                           ; $7893: $00
    nop                                           ; $7894: $00
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    nop                                           ; $789A: $00
    nop                                           ; $789B: $00
    nop                                           ; $789C: $00
    nop                                           ; $789D: $00
    nop                                           ; $789E: $00
    nop                                           ; $789F: $00
    nop                                           ; $78A0: $00
    nop                                           ; $78A1: $00
    nop                                           ; $78A2: $00
    nop                                           ; $78A3: $00
    nop                                           ; $78A4: $00
    nop                                           ; $78A5: $00
    nop                                           ; $78A6: $00
    nop                                           ; $78A7: $00
    nop                                           ; $78A8: $00
    nop                                           ; $78A9: $00
    nop                                           ; $78AA: $00
    nop                                           ; $78AB: $00
    nop                                           ; $78AC: $00
    nop                                           ; $78AD: $00
    nop                                           ; $78AE: $00
    nop                                           ; $78AF: $00
    nop                                           ; $78B0: $00
    nop                                           ; $78B1: $00
    nop                                           ; $78B2: $00
    nop                                           ; $78B3: $00
    nop                                           ; $78B4: $00
    nop                                           ; $78B5: $00
    nop                                           ; $78B6: $00
    nop                                           ; $78B7: $00
    nop                                           ; $78B8: $00
    nop                                           ; $78B9: $00
    nop                                           ; $78BA: $00
    nop                                           ; $78BB: $00
    nop                                           ; $78BC: $00
    nop                                           ; $78BD: $00
    nop                                           ; $78BE: $00
    nop                                           ; $78BF: $00
    nop                                           ; $78C0: $00
    nop                                           ; $78C1: $00
    nop                                           ; $78C2: $00
    nop                                           ; $78C3: $00
    nop                                           ; $78C4: $00
    nop                                           ; $78C5: $00
    nop                                           ; $78C6: $00
    nop                                           ; $78C7: $00
    nop                                           ; $78C8: $00
    nop                                           ; $78C9: $00
    nop                                           ; $78CA: $00
    nop                                           ; $78CB: $00
    nop                                           ; $78CC: $00
    nop                                           ; $78CD: $00
    nop                                           ; $78CE: $00
    nop                                           ; $78CF: $00
    nop                                           ; $78D0: $00
    nop                                           ; $78D1: $00
    nop                                           ; $78D2: $00
    nop                                           ; $78D3: $00
    nop                                           ; $78D4: $00
    nop                                           ; $78D5: $00
    nop                                           ; $78D6: $00
    nop                                           ; $78D7: $00
    nop                                           ; $78D8: $00
    nop                                           ; $78D9: $00
    nop                                           ; $78DA: $00
    nop                                           ; $78DB: $00
    nop                                           ; $78DC: $00
    nop                                           ; $78DD: $00
    nop                                           ; $78DE: $00
    nop                                           ; $78DF: $00
    nop                                           ; $78E0: $00
    nop                                           ; $78E1: $00
    nop                                           ; $78E2: $00
    nop                                           ; $78E3: $00
    nop                                           ; $78E4: $00
    nop                                           ; $78E5: $00
    nop                                           ; $78E6: $00
    nop                                           ; $78E7: $00
    nop                                           ; $78E8: $00
    nop                                           ; $78E9: $00
    nop                                           ; $78EA: $00
    nop                                           ; $78EB: $00
    nop                                           ; $78EC: $00
    nop                                           ; $78ED: $00
    nop                                           ; $78EE: $00
    nop                                           ; $78EF: $00
    nop                                           ; $78F0: $00
    nop                                           ; $78F1: $00
    nop                                           ; $78F2: $00
    nop                                           ; $78F3: $00
    nop                                           ; $78F4: $00
    nop                                           ; $78F5: $00
    nop                                           ; $78F6: $00
    nop                                           ; $78F7: $00
    nop                                           ; $78F8: $00
    nop                                           ; $78F9: $00
    nop                                           ; $78FA: $00
    nop                                           ; $78FB: $00
    nop                                           ; $78FC: $00
    nop                                           ; $78FD: $00
    nop                                           ; $78FE: $00
    nop                                           ; $78FF: $00
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    nop                                           ; $790A: $00
    nop                                           ; $790B: $00
    nop                                           ; $790C: $00
    nop                                           ; $790D: $00
    nop                                           ; $790E: $00
    nop                                           ; $790F: $00
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    nop                                           ; $7915: $00
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
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    nop                                           ; $792A: $00
    nop                                           ; $792B: $00
    nop                                           ; $792C: $00
    nop                                           ; $792D: $00
    nop                                           ; $792E: $00
    nop                                           ; $792F: $00
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    nop                                           ; $7936: $00
    nop                                           ; $7937: $00
    nop                                           ; $7938: $00
    nop                                           ; $7939: $00
    nop                                           ; $793A: $00
    nop                                           ; $793B: $00
    nop                                           ; $793C: $00
    nop                                           ; $793D: $00
    nop                                           ; $793E: $00
    nop                                           ; $793F: $00
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794A: $00
    nop                                           ; $794B: $00
    nop                                           ; $794C: $00
    nop                                           ; $794D: $00
    nop                                           ; $794E: $00
    nop                                           ; $794F: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    nop                                           ; $795A: $00
    nop                                           ; $795B: $00
    nop                                           ; $795C: $00
    nop                                           ; $795D: $00
    nop                                           ; $795E: $00
    nop                                           ; $795F: $00
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796A: $00
    nop                                           ; $796B: $00
    nop                                           ; $796C: $00
    nop                                           ; $796D: $00
    nop                                           ; $796E: $00
    nop                                           ; $796F: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    nop                                           ; $797A: $00
    nop                                           ; $797B: $00
    nop                                           ; $797C: $00
    nop                                           ; $797D: $00
    nop                                           ; $797E: $00
    nop                                           ; $797F: $00
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    nop                                           ; $798A: $00
    nop                                           ; $798B: $00
    nop                                           ; $798C: $00
    nop                                           ; $798D: $00
    nop                                           ; $798E: $00
    nop                                           ; $798F: $00
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    nop                                           ; $799A: $00
    nop                                           ; $799B: $00
    nop                                           ; $799C: $00
    nop                                           ; $799D: $00
    nop                                           ; $799E: $00
    nop                                           ; $799F: $00
    nop                                           ; $79A0: $00
    nop                                           ; $79A1: $00
    nop                                           ; $79A2: $00
    nop                                           ; $79A3: $00
    nop                                           ; $79A4: $00
    nop                                           ; $79A5: $00
    nop                                           ; $79A6: $00
    nop                                           ; $79A7: $00
    nop                                           ; $79A8: $00
    nop                                           ; $79A9: $00
    nop                                           ; $79AA: $00
    nop                                           ; $79AB: $00
    nop                                           ; $79AC: $00
    nop                                           ; $79AD: $00
    nop                                           ; $79AE: $00
    nop                                           ; $79AF: $00
    nop                                           ; $79B0: $00
    nop                                           ; $79B1: $00
    nop                                           ; $79B2: $00
    nop                                           ; $79B3: $00
    nop                                           ; $79B4: $00
    nop                                           ; $79B5: $00
    nop                                           ; $79B6: $00
    nop                                           ; $79B7: $00
    nop                                           ; $79B8: $00
    nop                                           ; $79B9: $00
    nop                                           ; $79BA: $00
    nop                                           ; $79BB: $00
    nop                                           ; $79BC: $00
    nop                                           ; $79BD: $00
    nop                                           ; $79BE: $00
    nop                                           ; $79BF: $00
    nop                                           ; $79C0: $00
    nop                                           ; $79C1: $00
    nop                                           ; $79C2: $00
    nop                                           ; $79C3: $00
    nop                                           ; $79C4: $00
    nop                                           ; $79C5: $00
    nop                                           ; $79C6: $00
    nop                                           ; $79C7: $00
    nop                                           ; $79C8: $00
    nop                                           ; $79C9: $00
    nop                                           ; $79CA: $00
    nop                                           ; $79CB: $00
    nop                                           ; $79CC: $00
    nop                                           ; $79CD: $00
    nop                                           ; $79CE: $00
    nop                                           ; $79CF: $00
    nop                                           ; $79D0: $00
    nop                                           ; $79D1: $00
    nop                                           ; $79D2: $00
    nop                                           ; $79D3: $00
    nop                                           ; $79D4: $00
    nop                                           ; $79D5: $00
    nop                                           ; $79D6: $00
    nop                                           ; $79D7: $00
    nop                                           ; $79D8: $00
    nop                                           ; $79D9: $00
    nop                                           ; $79DA: $00
    nop                                           ; $79DB: $00
    nop                                           ; $79DC: $00
    nop                                           ; $79DD: $00
    nop                                           ; $79DE: $00
    nop                                           ; $79DF: $00
    nop                                           ; $79E0: $00
    nop                                           ; $79E1: $00
    nop                                           ; $79E2: $00
    nop                                           ; $79E3: $00
    nop                                           ; $79E4: $00
    nop                                           ; $79E5: $00
    nop                                           ; $79E6: $00
    nop                                           ; $79E7: $00
    nop                                           ; $79E8: $00
    nop                                           ; $79E9: $00
    nop                                           ; $79EA: $00
    nop                                           ; $79EB: $00
    nop                                           ; $79EC: $00
    nop                                           ; $79ED: $00
    nop                                           ; $79EE: $00
    nop                                           ; $79EF: $00
    nop                                           ; $79F0: $00
    nop                                           ; $79F1: $00
    nop                                           ; $79F2: $00
    nop                                           ; $79F3: $00
    nop                                           ; $79F4: $00
    nop                                           ; $79F5: $00
    nop                                           ; $79F6: $00
    nop                                           ; $79F7: $00
    nop                                           ; $79F8: $00
    nop                                           ; $79F9: $00
    nop                                           ; $79FA: $00
    nop                                           ; $79FB: $00
    nop                                           ; $79FC: $00
    nop                                           ; $79FD: $00
    nop                                           ; $79FE: $00
    nop                                           ; $79FF: $00
    nop                                           ; $7A00: $00
    nop                                           ; $7A01: $00
    nop                                           ; $7A02: $00
    nop                                           ; $7A03: $00
    nop                                           ; $7A04: $00
    nop                                           ; $7A05: $00
    nop                                           ; $7A06: $00
    nop                                           ; $7A07: $00
    nop                                           ; $7A08: $00
    nop                                           ; $7A09: $00
    nop                                           ; $7A0A: $00
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

Jump_028_7A7B:
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
